Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/dynamic_tree?download=true
inline.NumInlined: 171
inline.NumDeleted: 36
loop-unroll.NumUnrolled: 1
begin_hunk_0_@b3DynamicTree_RayCast:bb.a

_mm_load_sd.exit.i:                               ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(12) %i.o, i64 12, i1 false), !tbaa.struct !48
  %.not1203 = icmp eq ptr %6, inttoptr (i64 -8 to ptr)
  br i1 %.not1203, label %bb.f, label %b3LoadV.exit, !prof !10, !nosanitize !9

bb.f:                                             ; preds = %_mm_load_sd.exit.i
  %i.p = ptrtoint ptr %6 to i64, !nosanitize !9   ; 2 uses
  %i.q = add i64 %i.p, 8, !nosanitize !9
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @221, i64 %i.p, i64 %i.q) #11, !nosanitize !9
  unreachable, !nosanitize !9

b3LoadV.exit:                                     ; preds = %_mm_load_sd.exit.i
  %i.r = load double, ptr %6, align 8             ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.t = insertelement <2 x double> poison, double %i.r, i64 0
  %i.u = bitcast <2 x double> %i.t to <4 x float>
  %i.v = load float, ptr %i.s, align 8, !tbaa !24 ; 12 uses
  %i.w = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.v, i64 0
  %i.x = shufflevector <4 x float> %i.u, <4 x float> %i.w, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %.not1204 = icmp eq ptr %7, inttoptr (i64 -8 to ptr)
  %i.y = bitcast double %i.r to <2 x float>       ; 12 uses
  br i1 %.not1204, label %bb.g, label %b3LoadV.exit158, !prof !10, !nosanitize !9

bb.g:                                             ; preds = %b3LoadV.exit
  %i.z = ptrtoint ptr %7 to i64, !nosanitize !9   ; 2 uses
  %i.aa = add i64 %i.z, 8, !nosanitize !9
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @221, i64 %i.z, i64 %i.aa) #11, !nosanitize !9
  unreachable, !nosanitize !9

b3LoadV.exit158:                                  ; preds = %b3LoadV.exit
  %i.ab = load double, ptr %7, align 8            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ad = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.ae = bitcast <2 x double> %i.ad to <4 x float>
  %i.af = load float, ptr %i.ac, align 8, !tbaa !24 ; 3 uses
  %i.ag = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.af, i64 0
  %i.ah = shufflevector <4 x float> %i.ae, <4 x float> %i.ag, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aj = bitcast double %i.ab to <2 x float>     ; 2 uses
  %i.ak = load float, ptr %i.ai, align 4, !tbaa !81 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load i32, ptr %i.al, align 8, !tbaa !19 ; 4 uses
  %i.an = ptrtoint ptr %i.a to i64, !nosanitize !9 ; 7 uses
  store i32 %i.am, ptr %i.a, align 16, !tbaa !47
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !23
  %.fr555 = freeze ptr %i.ap                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %8, ptr noundef nonnull align 4 dereferenceable(28) %1, i64 28, i1 false), !tbaa.struct !82
  %i.aq = ptrtoint ptr %.fr555 to i64             ; 10 uses
  %.not556 = icmp eq ptr %.fr555, null
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.au = icmp ult ptr %i.ar, inttoptr (i64 -8 to ptr)
  %i.av = shufflevector <4 x float> %i.ah, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.aw = shufflevector <4 x float> %i.ah, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 3>
  %i.ax = fsub <4 x float> zeroinitializer, %i.ah
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.az = getelementptr i8, ptr %4, i64 -8
  %i.ba = getelementptr i8, ptr %4, i64 -4
  br i1 %.not556, label %.split526.us.preheader, label %.split526.preheader, !prof !10

.split526.preheader:                              ; preds = %b3LoadV.exit158
  %i.bb = fmul float %i.af, %i.ak
  %i.bc = fadd float %i.v, %i.bb                  ; 4 uses
  %i.bd = fcmp ogt float %i.v, %i.bc
  %i.be = select i1 %i.bd, float %i.v, float %i.bc
  %i.bf = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bh = fmul <2 x float> %i.bg, %i.aj
  %i.bi = fadd <2 x float> %i.bh, %i.y            ; 4 uses
  %i.bj = fcmp olt <2 x float> %i.bi, %i.y
  %i.bk = select <2 x i1> %i.bj, <2 x float> %i.y, <2 x float> %i.bi
  %i.bl = fcmp ogt <2 x float> %i.bi, %i.y
  %i.bm = select <2 x i1> %i.bl, <2 x float> %i.y, <2 x float> %i.bi
  %i.bn = fcmp olt float %i.v, %i.bc
  %i.bo = select i1 %i.bn, float %i.v, float %i.bc
  %i.bp = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bq = insertelement <2 x float> %i.bp, float %i.v, i64 0 ; 2 uses
  %i.br = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  br label %bb.i

.split526.us.preheader:                           ; preds = %b3LoadV.exit158
  %i.bs = icmp eq i32 %i.am, -1
  br i1 %i.bs, label %.split546.us, label %bb.h, !llvm.loop !78

bb.h:                                             ; preds = %.split526.us.preheader
  %i.bt = sext i32 %i.am to i64
  %i.bu = mul nsw i64 %i.bt, 48                   ; 2 uses
  %i.bv = icmp eq i32 %i.am, 0
  %i.bw = icmp uge i64 %i.bu, %i.aq, !nosanitize !9
  %i.bx = and i1 %i.bv, %i.bw
  br i1 %i.bx, label %.split543.us, label %.split536.us, !prof !20, !nosanitize !9

.split543.us:                                     ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  br label %.split543

bb.i:                                             ; preds = %.backedge, %.split526.preheader
  %.0525 = phi float [ %.6847, %.backedge ], [ %i.ak, %.split526.preheader ] ; 10 uses
  %.0126524 = phi i32 [ %.5131846, %.backedge ], [ 1, %.split526.preheader ] ; 4 uses
  %.sroa.0.0523 = phi <2 x float> [ %.sroa.0.3845, %.backedge ], [ %i.bm, %.split526.preheader ] ; 10 uses
  %.sroa.6.0522 = phi float [ %.sroa.6.3844, %.backedge ], [ %i.bo, %.split526.preheader ] ; 9 uses
  %.sroa.9.0521 = phi <2 x float> [ %.sroa.9.3843, %.backedge ], [ %i.bk, %.split526.preheader ] ; 9 uses
  %.sroa.13.0520 = phi float [ %.sroa.13.3842, %.backedge ], [ %i.be, %.split526.preheader ] ; 9 uses
  %.sroa.0217.0519 = phi i32 [ %.sroa.0217.1840, %.backedge ], [ 0, %.split526.preheader ] ; 3 uses
  %.sroa.4.0518 = phi i32 [ %.sroa.4.2838, %.backedge ], [ 0, %.split526.preheader ] ; 9 uses
  %i.by = add nsw i32 %.0126524, -1               ; 8 uses
  %i.bz = zext nneg i32 %i.by to i64              ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bz ; 3 uses
  %i.cb = shl nuw nsw i64 %i.bz, 2
  %i.cc = add i64 %i.cb, %i.an, !nosanitize !9    ; 2 uses
  %.not = icmp ult i64 %i.cc, %i.an, !nosanitize !9
  br i1 %.not, label %.split530.us, label %bb.j, !prof !10, !nosanitize !9

.split530.us:                                     ; preds = %bb.i
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @84, i64 %i.an, i64 %i.cc) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.j:                                             ; preds = %bb.i
  %i.cd = load i32, ptr %i.ca, align 4, !tbaa !47 ; 4 uses
  %i.ce = icmp eq i32 %i.cd, -1
  br i1 %i.ce, label %.backedge, label %bb.k, !llvm.loop !78

bb.k:                                             ; preds = %bb.j
  %i.cf = sext i32 %i.cd to i64                   ; 2 uses
  %i.cg = getelementptr inbounds [48 x i8], ptr %.fr555, i64 %i.cf ; 7 uses
  %i.ch = mul nsw i64 %i.cf, 48
  %i.ci = add i64 %i.ch, %i.aq, !nosanitize !9    ; 3 uses
  %i.cj = icmp ne i64 %i.ci, 0
  %i.ck = icmp uge i64 %i.ci, %i.aq, !nosanitize !9
  %i.cl = icmp slt i32 %i.cd, 0
  %i.cm = xor i1 %i.cl, %i.ck
  %i.cn = and i1 %i.cj, %i.cm, !nosanitize !9
  br i1 %i.cn, label %bb.l, label %.split536.us, !prof !20, !nosanitize !9

.split536.us:                                     ; preds = %bb.k, %bb.h
  %.us-phi538 = phi i64 [ %i.bu, %bb.h ], [ %i.ci, %bb.k ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @85, i64 %i.aq, i64 %.us-phi538) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.l:                                             ; preds = %bb.k
  %i.co = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.0217.0519, i32 1), !nosanitize !9 ; 2 uses
  %i.cp = extractvalue { i32, i1 } %i.co, 1, !nosanitize !9
  br i1 %i.cp, label %.split540.us, label %bb.m, !prof !10, !nosanitize !9

.split540.us:                                     ; preds = %bb.l
  %i.cq = zext nneg i32 %.sroa.0217.0519 to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @86, i64 %i.cq, i64 1) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.m:                                             ; preds = %bb.l
  %i.cr = extractvalue { i32, i1 } %i.co, 0, !nosanitize !9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  %i.cs = ptrtoint ptr %i.cg to i64, !nosanitize !9 ; 2 uses
  %i.ct = and i64 %i.cs, 7, !nosanitize !9
  %i.cu = icmp eq i64 %i.ct, 0, !nosanitize !9
  br i1 %i.cu, label %bb.n, label %.split543, !prof !20, !nosanitize !9

.split543:                                        ; preds = %bb.m, %.split543.us
  %.us-phi544 = phi i64 [ 0, %.split543.us ], [ %i.cs, %bb.m ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @87, i64 %.us-phi544) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i64 24, i1 false), !tbaa.struct !33
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !38
  %i.cx = and i64 %i.cw, %2                       ; 2 uses
  br i1 %3, label %.split, label %bb.o

.split:                                           ; preds = %bb.n
  %.not241 = icmp eq i64 %i.cx, %2
  br i1 %.not241, label %bb.p, label %.backedge.sink.split, !llvm.loop !78

bb.o:                                             ; preds = %bb.n
  %i.cy = icmp eq i64 %i.cx, 0
  br i1 %i.cy, label %.backedge.sink.split, label %bb.p, !llvm.loop !78

bb.p:                                             ; preds = %.split, %bb.o
  %i.cz = load float, ptr %i.as, align 16
  %.sroa.0.4.vec.extract = extractelement <2 x float> %.sroa.0.0523, i64 1
  %i.da = fcmp uge float %i.cz, %.sroa.0.4.vec.extract
  %i.db = load float, ptr %i.at, align 4          ; 2 uses
  %i.dc = fcmp uge float %i.db, %.sroa.6.0522
  %i.dd = load <4 x float>, ptr %9, align 16      ; 2 uses
  %i.de = shufflevector <2 x float> %.sroa.9.0521, <2 x float> %.sroa.0.0523, <4 x i32> <i32 0, i32 1, i32 poison, i32 2>
  %i.df = insertelement <4 x float> %i.de, float %.sroa.13.0520, i64 2 ; 2 uses
  %i.dg = fcmp ule <4 x float> %i.dd, %i.df
  %i.dh = fcmp uge <4 x float> %i.dd, %i.df
  %i.di = shufflevector <4 x i1> %i.dg, <4 x i1> %i.dh, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.dj = freeze <4 x i1> %i.di
  %i.dk = bitcast <4 x i1> %i.dj to i4
  %i.dl = icmp eq i4 %i.dk, -1
  %.fr = freeze i1 %i.da
  %op.rdx = and i1 %i.dl, %.fr
  %op.rdx1205 = select i1 %op.rdx, i1 %i.dc, i1 false
  br i1 %op.rdx1205, label %b3LoadV.exit172, label %.backedge.sink.split, !llvm.loop !78

b3LoadV.exit172:                                  ; preds = %bb.p
  br i1 %i.au, label %b3LoadV.exit174, label %bb.q, !prof !20, !nosanitize !9

bb.q:                                             ; preds = %b3LoadV.exit172
  %i.dm = ptrtoint ptr %i.ar to i64, !nosanitize !9 ; 2 uses
  %i.dn = add i64 %i.dm, 8, !nosanitize !9
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @221, i64 %i.dm, i64 %i.dn) #11, !nosanitize !9
  unreachable, !nosanitize !9

b3LoadV.exit174:                                  ; preds = %b3LoadV.exit172
  %i.do = load double, ptr %i.ar, align 4, !tbaa !24
  %i.dp = load <2 x double>, ptr %9, align 16     ; 2 uses
  %i.dq = bitcast <2 x double> %i.dp to <4 x float>
  %bc828 = bitcast <2 x double> %i.dp to <4 x float>
  %i.dr = shufflevector <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x float> %bc828, <4 x i32> <i32 6, i32 1, i32 poison, i32 poison>
  %i.ds = shufflevector <4 x float> %i.dq, <4 x float> %i.dr, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dt = insertelement <2 x double> poison, double %i.do, i64 0
  %i.du = bitcast <2 x double> %i.dt to <4 x float>
  %i.dv = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.db, i64 0
  %i.dw = shufflevector <4 x float> %i.du, <4 x float> %i.dv, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.dx = fadd <4 x float> %i.ds, %i.dw
  %i.dy = fmul <4 x float> %i.dx, splat (float 5.000000e-01) ; 2 uses
  %i.dz = fsub <4 x float> %i.dw, %i.dy           ; 2 uses
  %i.ea = fsub <4 x float> %i.x, %i.dy            ; 2 uses
  %i.eb = shufflevector <4 x float> %i.ea, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.ec = shufflevector <4 x float> %i.ea, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 3>
  %i.ed = fmul <4 x float> %i.av, %i.ec
  %i.ee = fmul <4 x float> %i.aw, %i.eb
  %i.ef = fsub <4 x float> %i.ed, %i.ee           ; 2 uses
  %i.eg = fsub <4 x float> zeroinitializer, %i.ef
  %i.eh = call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.eg, <4 x float> %i.ef)
  %i.ei = call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ax, <4 x float> %i.ah) ; 2 uses
  %i.ej = shufflevector <4 x float> %i.ei, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.ek = shufflevector <4 x float> %i.ei, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 3>
  %i.el = shufflevector <4 x float> %i.dz, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.em = shufflevector <4 x float> %i.dz, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 3>
  %i.en = fmul <4 x float> %i.ej, %i.em
  %i.eo = fmul <4 x float> %i.ek, %i.el
  %i.ep = fadd <4 x float> %i.en, %i.eo
  %i.eq = fsub <4 x float> %i.eh, %i.ep
  %i.er = fcmp ole <4 x float> %i.eq, zeroinitializer
  %i.es = bitcast <4 x i1> %i.er to i4
  %i.et = and i4 %i.es, 7
  %i.eu = icmp eq i4 %i.et, 7
  br i1 %i.eu, label %b3IsLeaf.exit, label %.backedge.sink.split, !llvm.loop !78

b3IsLeaf.exit:                                    ; preds = %b3LoadV.exit174
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cg, i64 46
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !40
  %i.ex = and i16 %i.ew, 4
  %.not252 = icmp eq i16 %i.ex, 0
  br i1 %.not252, label %bb.z, label %bb.r

bb.r:                                             ; preds = %b3IsLeaf.exit
  store float %.0525, ptr %i.ay, align 4, !tbaa !81
  %i.ey = load i32, ptr %i.az, align 4, !nosanitize !9
  %i.ez = icmp eq i32 %i.ey, -1056584962, !nosanitize !9
  br i1 %i.ez, label %bb.s, label %bb.u, !nosanitize !9

bb.s:                                             ; preds = %bb.r
  %i.fa = load i32, ptr %i.ba, align 8, !nosanitize !9
  %i.fb = icmp eq i32 %i.fa, 1388381788, !nosanitize !9
  br i1 %i.fb, label %bb.u, label %bb.t, !prof !20, !nosanitize !9

bb.t:                                             ; preds = %bb.s
  %i.fc = ptrtoint ptr %4 to i64, !nosanitize !9
  call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @90, i64 %i.fc) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.u:                                             ; preds = %bb.s, %bb.r
  %i.fd = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !24
  %i.ff = call float %4(ptr noundef nonnull %8, i32 noundef %i.cd, i64 noundef %i.fe, ptr noundef %5) #12 ; 6 uses
  %i.fg = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.4.0518, i32 1), !nosanitize !9 ; 2 uses
  %i.fh = extractvalue { i32, i1 } %i.fg, 1, !nosanitize !9
  br i1 %i.fh, label %bb.v, label %bb.w, !prof !10, !nosanitize !9

bb.v:                                             ; preds = %bb.u
  %i.fi = zext nneg i32 %.sroa.4.0518 to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @91, i64 %i.fi, i64 1) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.w:                                             ; preds = %bb.u
  %i.fj = extractvalue { i32, i1 } %i.fg, 0, !nosanitize !9 ; 3 uses
  %i.fk = fcmp oeq float %i.ff, 0.000000e+00
  br i1 %i.fk, label %bb.ao, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fl = fcmp ule float %i.ff, 0.000000e+00
  %i.fm = fcmp ugt float %i.ff, %.0525
  %or.cond = select i1 %i.fl, i1 true, i1 %i.fm
  br i1 %or.cond, label %.backedge.sink.split, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fn = insertelement <2 x float> poison, float %i.ff, i64 0
  %i.fo = shufflevector <2 x float> %i.fn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fp = fmul <2 x float> %i.fo, %i.aj
  %i.fq = fmul float %i.ff, %i.af
  %i.fr = fadd float %i.v, %i.fq                  ; 4 uses
  %i.fs = fcmp olt float %i.v, %i.fr
  %i.ft = select i1 %i.fs, float %i.v, float %i.fr
  %i.fu = fadd <2 x float> %i.fp, %i.y            ; 4 uses
  %i.fv = fcmp ogt <2 x float> %i.fu, %i.y
  %i.fw = select <2 x i1> %i.fv, <2 x float> %i.y, <2 x float> %i.fu
  %i.fx = fcmp olt <2 x float> %i.fu, %i.y
  %i.fy = select <2 x i1> %i.fx, <2 x float> %i.y, <2 x float> %i.fu
  %i.fz = fcmp ogt float %i.v, %i.fr
  %i.ga = select i1 %i.fz, float %i.v, float %i.fr
  br label %.backedge.sink.split

bb.z:                                             ; preds = %b3IsLeaf.exit
  %.not154 = icmp eq i32 %.0126524, 1024
  br i1 %.not154, label %.backedge.sink.split, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gb = getelementptr inbounds nuw i8, ptr %i.cg, i64 32 ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !24 ; 3 uses
  %i.gd = sext i32 %i.gc to i64                   ; 2 uses
  %i.ge = getelementptr inbounds [48 x i8], ptr %.fr555, i64 %i.gd ; 5 uses
  %i.gf = mul nsw i64 %i.gd, 48
  %i.gg = add i64 %i.gf, %i.aq, !nosanitize !9    ; 3 uses
  %i.gh = icmp ne i64 %i.gg, 0
  %i.gi = icmp uge i64 %i.gg, %i.aq, !nosanitize !9
  %i.gj = icmp slt i32 %i.gc, 0
  %i.gk = xor i1 %i.gj, %i.gi
  %i.gl = and i1 %i.gh, %i.gk, !nosanitize !9
  br i1 %i.gl, label %bb.ac, label %bb.ab, !prof !20, !nosanitize !9

bb.ab:                                            ; preds = %bb.aa
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @92, i64 %i.aq, i64 %i.gg) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ac:                                            ; preds = %bb.aa
  %i.gm = ptrtoint ptr %i.ge to i64, !nosanitize !9 ; 2 uses
  %i.gn = and i64 %i.gm, 7, !nosanitize !9
  %i.go = icmp eq i64 %i.gn, 0, !nosanitize !9
  br i1 %i.go, label %bb.ae, label %bb.ad, !prof !20, !nosanitize !9

bb.ad:                                            ; preds = %bb.ac
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @93, i64 %i.gm) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ae:                                            ; preds = %bb.ac
  %.sroa.0219.0.copyload = load <2 x float>, ptr %i.ge, align 8 ; 2 uses
  %.sroa.4220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %.sroa.4220.0.copyload = load float, ptr %.sroa.4220.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ge, i64 12
  %.sroa.5.0.copyload = load <2 x float>, ptr %.sroa.5.0..sroa_idx, align 4 ; 2 uses
  %.sroa.6221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ge, i64 20
  %.sroa.6221.0.copyload = load float, ptr %.sroa.6221.0..sroa_idx, align 4
  %foldExtExtBinop = fadd <2 x float> %.sroa.0219.0.copyload, %.sroa.5.0.copyload
  %i.gp = extractelement <2 x float> %foldExtExtBinop, i64 1
  %foldExtExtBinop1207 = fadd <2 x float> %.sroa.0219.0.copyload, %.sroa.5.0.copyload
  %i.gq = fadd float %.sroa.4220.0.copyload, %.sroa.6221.0.copyload
  %i.gr = fmul float %i.gp, 5.000000e-01
  %i.gs = insertelement <2 x float> poison, float %i.gq, i64 0
  %i.gt = shufflevector <2 x float> %i.gs, <2 x float> %foldExtExtBinop1207, <2 x i32> <i32 0, i32 2>
  %i.gu = fmul <2 x float> %i.gt, splat (float 5.000000e-01)
  %i.gv = getelementptr inbounds nuw i8, ptr %i.cg, i64 36 ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !24 ; 3 uses
  %i.gx = sext i32 %i.gw to i64                   ; 2 uses
  %i.gy = getelementptr inbounds [48 x i8], ptr %.fr555, i64 %i.gx ; 5 uses
  %i.gz = mul nsw i64 %i.gx, 48
  %i.ha = add i64 %i.gz, %i.aq, !nosanitize !9    ; 3 uses
  %i.hb = icmp ne i64 %i.ha, 0
  %i.hc = icmp uge i64 %i.ha, %i.aq, !nosanitize !9
  %i.hd = icmp slt i32 %i.gw, 0
  %i.he = xor i1 %i.hd, %i.hc
  %i.hf = and i1 %i.hb, %i.he, !nosanitize !9
  br i1 %i.hf, label %bb.ag, label %bb.af, !prof !20, !nosanitize !9

bb.af:                                            ; preds = %bb.ae
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @94, i64 %i.aq, i64 %i.ha) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ag:                                            ; preds = %bb.ae
  %i.hg = ptrtoint ptr %i.gy to i64, !nosanitize !9 ; 2 uses
  %i.hh = and i64 %i.hg, 7, !nosanitize !9
  %i.hi = icmp eq i64 %i.hh, 0, !nosanitize !9
  br i1 %i.hi, label %bb.ai, label %bb.ah, !prof !20, !nosanitize !9

bb.ah:                                            ; preds = %bb.ag
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @95, i64 %i.hg) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ai:                                            ; preds = %bb.ag
  %.sroa.0222.0.copyload = load <2 x float>, ptr %i.gy, align 8 ; 2 uses
  %.sroa.4223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %.sroa.4223.0.copyload = load float, ptr %.sroa.4223.0..sroa_idx, align 8
  %.sroa.5224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gy, i64 12
  %.sroa.5224.0.copyload = load <2 x float>, ptr %.sroa.5224.0..sroa_idx, align 4 ; 2 uses
  %.sroa.6225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gy, i64 20
  %.sroa.6225.0.copyload = load float, ptr %.sroa.6225.0..sroa_idx, align 4
  %foldExtExtBinop1209 = fadd <2 x float> %.sroa.0222.0.copyload, %.sroa.5224.0.copyload
  %i.hj = extractelement <2 x float> %foldExtExtBinop1209, i64 1
  %i.hk = fmul float %i.hj, 5.000000e-01
  %i.hl = fsub <2 x float> %i.bq, %i.gu           ; 2 uses
end_hunk_0
begin_hunk_1_@b3DynamicTree_BoxCast:bb.a
  store float %i.v, ptr %.sroa.2156.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.x = bitcast <2 x float> %i.u to double
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 4 dereferenceable(12) %i.w, i64 12, i1 false), !tbaa.struct !48
  %.not1522 = icmp eq ptr %6, inttoptr (i64 -8 to ptr)
  br i1 %.not1522, label %bb.f, label %b3LoadV.exit, !prof !10, !nosanitize !9

bb.f:                                             ; preds = %_mm_load_sd.exit.i
  %i.y = ptrtoint ptr %6 to i64, !nosanitize !9   ; 2 uses
  %i.z = add i64 %i.y, 8, !nosanitize !9
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @221, i64 %i.y, i64 %i.z) #11, !nosanitize !9
  unreachable, !nosanitize !9

b3LoadV.exit:                                     ; preds = %_mm_load_sd.exit.i
  %i.aa = bitcast <2 x float> %i.q to double
  %i.ab = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.ac = bitcast <2 x double> %i.ab to <4 x float>
  %i.ad = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.r, i64 0
  %i.ae = shufflevector <4 x float> %i.ac, <4 x float> %i.ad, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %.not1523 = icmp eq ptr %8, inttoptr (i64 -8 to ptr)
  br i1 %.not1523, label %bb.g, label %b3LoadV.exit225, !prof !10, !nosanitize !9

bb.g:                                             ; preds = %b3LoadV.exit
  %i.af = ptrtoint ptr %8 to i64, !nosanitize !9  ; 2 uses
  %i.ag = add i64 %i.af, 8, !nosanitize !9
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @221, i64 %i.af, i64 %i.ag) #11, !nosanitize !9
  unreachable, !nosanitize !9

b3LoadV.exit225:                                  ; preds = %b3LoadV.exit
  %i.ah = load double, ptr %8, align 8, !tbaa !24
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aj = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.ak = bitcast <2 x double> %i.aj to <4 x float>
  %i.al = load float, ptr %i.ai, align 8, !tbaa !24
  %i.am = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.al, i64 0
  %i.an = shufflevector <4 x float> %i.ak, <4 x float> %i.am, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 4 uses
  %.not1524 = icmp eq ptr %7, inttoptr (i64 -8 to ptr)
  br i1 %.not1524, label %bb.h, label %b3LoadV.exit227, !prof !10, !nosanitize !9

bb.h:                                             ; preds = %b3LoadV.exit225
  %i.ao = ptrtoint ptr %7 to i64, !nosanitize !9  ; 2 uses
  %i.ap = add i64 %i.ao, 8, !nosanitize !9
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @221, i64 %i.ao, i64 %i.ap) #11, !nosanitize !9
  unreachable, !nosanitize !9

b3LoadV.exit227:                                  ; preds = %b3LoadV.exit225
  %i.aq = insertelement <2 x double> poison, double %i.x, i64 0
  %i.ar = bitcast <2 x double> %i.aq to <4 x float>
  %i.as = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.v, i64 0
  %i.at = shufflevector <4 x float> %i.ar, <4 x float> %i.as, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.av = load float, ptr %i.au, align 4, !tbaa !86 ; 3 uses
  %.sroa.0139.0.copyload = load <2 x float>, ptr %i.w, align 4
  %.sroa.2140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.2140.0.copyload = load float, ptr %.sroa.2140.0..sroa_idx, align 4
  %i.aw = fmul float %i.av, %.sroa.2140.0.copyload ; 2 uses
  %i.ax = fadd float %.sroa.7.0.copyload, %i.aw   ; 2 uses
  %i.ay = fcmp olt float %.sroa.7.0.copyload, %i.ax
  %i.az = select i1 %i.ay, float %.sroa.7.0.copyload, float %i.ax
  %i.ba = fadd float %.sroa.15.0.copyload, %i.aw  ; 2 uses
  %i.bb = insertelement <2 x float> poison, float %i.av, i64 0
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bd = fmul <2 x float> %i.bc, %.sroa.0139.0.copyload ; 2 uses
  %i.be = fadd <2 x float> %.sroa.0332.0.copyload, %i.bd ; 2 uses
  %i.bf = fcmp olt <2 x float> %.sroa.0332.0.copyload, %i.be
  %i.bg = select <2 x i1> %i.bf, <2 x float> %.sroa.0332.0.copyload, <2 x float> %i.be
  %i.bh = fadd <2 x float> %.sroa.11.0.copyload, %i.bd ; 2 uses
  %i.bi = fcmp ogt <2 x float> %.sroa.11.0.copyload, %i.bh
  %i.bj = select <2 x i1> %i.bi, <2 x float> %.sroa.11.0.copyload, <2 x float> %i.bh
  %i.bk = fcmp ogt float %.sroa.15.0.copyload, %i.ba
  %i.bl = select i1 %i.bk, float %.sroa.15.0.copyload, float %i.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %9, ptr noundef nonnull align 4 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !87
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !23 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !19
  %i.bq = ptrtoint ptr %i.a to i64, !nosanitize !9 ; 7 uses
  store i32 %i.bp, ptr %i.a, align 16, !tbaa !47
  %i.br = ptrtoint ptr %i.bn to i64               ; 9 uses
  %i.bs = icmp ne ptr %i.bn, null                 ; 2 uses
  %i.bt = shufflevector <4 x float> %i.an, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.bu = shufflevector <4 x float> %i.an, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 3>
  %i.bv = fsub <4 x float> zeroinitializer, %i.an
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 36
  %i.bx = getelementptr i8, ptr %4, i64 -8
  %i.by = getelementptr i8, ptr %4, i64 -4
  %i.bz = insertelement <2 x float> poison, float %i.r, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.i

bb.i:                                             ; preds = %b3AABB_Overlaps.exit.thread, %b3LoadV.exit227
  %.0756 = phi float [ %i.av, %b3LoadV.exit227 ], [ %.6, %b3AABB_Overlaps.exit.thread ] ; 10 uses
  %.0176755 = phi i32 [ 1, %b3LoadV.exit227 ], [ %.5181, %b3AABB_Overlaps.exit.thread ] ; 4 uses
  %.sroa.0.0754 = phi <2 x float> [ %i.bg, %b3LoadV.exit227 ], [ %.sroa.0.2, %b3AABB_Overlaps.exit.thread ] ; 10 uses
  %.sroa.6.0753 = phi float [ %i.az, %b3LoadV.exit227 ], [ %.sroa.6.2, %b3AABB_Overlaps.exit.thread ] ; 9 uses
  %.sroa.9.0752 = phi <2 x float> [ %i.bj, %b3LoadV.exit227 ], [ %.sroa.9.2, %b3AABB_Overlaps.exit.thread ] ; 9 uses
  %.sroa.13.0751 = phi float [ %i.bl, %b3LoadV.exit227 ], [ %.sroa.13.2, %b3AABB_Overlaps.exit.thread ] ; 9 uses
  %.sroa.0339.0750 = phi i32 [ 0, %b3LoadV.exit227 ], [ %.sroa.0339.1, %b3AABB_Overlaps.exit.thread ] ; 3 uses
  %.sroa.4.0749 = phi i32 [ 0, %b3LoadV.exit227 ], [ %.sroa.4.1, %b3AABB_Overlaps.exit.thread ] ; 9 uses
  %i.cb = add nsw i32 %.0176755, -1               ; 8 uses
  %i.cc = zext nneg i32 %i.cb to i64              ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cc ; 3 uses
  %i.ce = shl nuw nsw i64 %i.cc, 2
  %i.cf = add i64 %i.ce, %i.bq, !nosanitize !9    ; 2 uses
  %.not = icmp ult i64 %i.cf, %i.bq, !nosanitize !9
  br i1 %.not, label %bb.j, label %bb.k, !prof !10, !nosanitize !9

bb.j:                                             ; preds = %bb.i
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @101, i64 %i.bq, i64 %i.cf) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.k:                                             ; preds = %bb.i
  %i.cg = load i32, ptr %i.cd, align 4, !tbaa !47 ; 4 uses
  %i.ch = icmp eq i32 %i.cg, -1
  br i1 %i.ch, label %b3AABB_Overlaps.exit.thread, label %bb.l, !llvm.loop !83

bb.l:                                             ; preds = %bb.k
  %i.ci = sext i32 %i.cg to i64                   ; 2 uses
  %i.cj = getelementptr inbounds [48 x i8], ptr %i.bn, i64 %i.ci ; 13 uses
  %i.ck = mul nsw i64 %i.ci, 48
  %i.cl = add i64 %i.ck, %i.br, !nosanitize !9    ; 3 uses
  %i.cm = icmp eq i64 %i.cl, 0
  %i.cn = xor i1 %i.bs, %i.cm
  %i.co = icmp uge i64 %i.cl, %i.br, !nosanitize !9
  %i.cp = icmp slt i32 %i.cg, 0
  %i.cq = xor i1 %i.cp, %i.co
  %i.cr = and i1 %i.cn, %i.cq, !nosanitize !9
  br i1 %i.cr, label %bb.n, label %bb.m, !prof !20, !nosanitize !9

bb.m:                                             ; preds = %bb.l
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @102, i64 %i.br, i64 %i.cl) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.n:                                             ; preds = %bb.l
  %i.cs = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.0339.0750, i32 1), !nosanitize !9 ; 2 uses
  %i.ct = extractvalue { i32, i1 } %i.cs, 1, !nosanitize !9
  br i1 %i.ct, label %bb.o, label %bb.p, !prof !10, !nosanitize !9

bb.o:                                             ; preds = %bb.n
  %i.cu = zext nneg i32 %.sroa.0339.0750 to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @103, i64 %i.cu, i64 1) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.p:                                             ; preds = %bb.n
  %i.cv = extractvalue { i32, i1 } %i.cs, 0, !nosanitize !9 ; 9 uses
  %i.cw = ptrtoint ptr %i.cj to i64, !nosanitize !9 ; 5 uses
  %i.cx = and i64 %i.cw, 7, !nosanitize !9
  %i.cy = icmp eq i64 %i.cx, 0, !nosanitize !9
  %i.cz = and i1 %i.bs, %i.cy                     ; 2 uses
  br i1 %3, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  br i1 %i.cz, label %.split, label %bb.r, !prof !20, !nosanitize !9

bb.r:                                             ; preds = %bb.q
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @104, i64 %i.cw) #11, !nosanitize !9
  unreachable, !nosanitize !9

.split:                                           ; preds = %bb.q
  %i.da = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.db = load i64, ptr %i.da, align 8, !tbaa !38
  %i.dc = and i64 %i.db, %2
  %.not379 = icmp eq i64 %i.dc, %2
  br i1 %.not379, label %bb.v, label %b3AABB_Overlaps.exit.thread, !llvm.loop !83

bb.s:                                             ; preds = %bb.p
  br i1 %i.cz, label %bb.u, label %bb.t, !prof !20, !nosanitize !9

bb.t:                                             ; preds = %bb.s
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @105, i64 %i.cw) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.u:                                             ; preds = %bb.s
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !38
  %i.df = and i64 %i.de, %2
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %b3AABB_Overlaps.exit.thread, label %bb.v, !llvm.loop !83

bb.v:                                             ; preds = %bb.u, %.split
  %.sroa.6343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 12 ; 3 uses
  %.sroa.7344.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %.sroa.7344.0.copyload = load float, ptr %.sroa.7344.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 20
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 4 ; 2 uses
  %.sroa.0.4.vec.extract = extractelement <2 x float> %.sroa.0.0754, i64 1
  %i.dh = fcmp uge float %.sroa.7344.0.copyload, %.sroa.0.4.vec.extract
  %i.di = fcmp uge float %.sroa.8.0.copyload, %.sroa.6.0753
  %i.dj = load <4 x float>, ptr %i.cj, align 8    ; 3 uses
  %i.dk = shufflevector <2 x float> %.sroa.9.0752, <2 x float> %.sroa.0.0754, <4 x i32> <i32 0, i32 1, i32 poison, i32 2>
  %i.dl = insertelement <4 x float> %i.dk, float %.sroa.13.0751, i64 2 ; 2 uses
  %i.dm = fcmp ule <4 x float> %i.dj, %i.dl
  %i.dn = fcmp uge <4 x float> %i.dj, %i.dl
  %i.do = shufflevector <4 x i1> %i.dm, <4 x i1> %i.dn, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.dp = freeze <4 x i1> %i.do
  %i.dq = bitcast <4 x i1> %i.dp to i4
  %i.dr = icmp eq i4 %i.dq, -1
  %.fr = freeze i1 %i.dh
  %op.rdx = and i1 %i.dr, %.fr
  %op.rdx1525 = select i1 %op.rdx, i1 %i.di, i1 false
  br i1 %op.rdx1525, label %_mm_load_sd.exit.i258, label %b3AABB_Overlaps.exit.thread, !llvm.loop !83

_mm_load_sd.exit.i258:                            ; preds = %bb.v
  %i.ds = add i64 %i.cw, 8, !nosanitize !9        ; 2 uses
  %i.dt = icmp ne i64 %i.ds, 0, !nosanitize !9
  %i.du = icmp ult ptr %i.cj, inttoptr (i64 -8 to ptr)
  %i.dv = and i1 %i.du, %i.dt, !nosanitize !9
  br i1 %i.dv, label %b3LoadV.exit259, label %bb.w, !prof !20, !nosanitize !9

bb.w:                                             ; preds = %_mm_load_sd.exit.i258
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @221, i64 %i.cw, i64 %i.ds) #11, !nosanitize !9
  unreachable, !nosanitize !9

b3LoadV.exit259:                                  ; preds = %_mm_load_sd.exit.i258
  %i.dw = icmp ult ptr %.sroa.6343.0..sroa_idx, inttoptr (i64 -8 to ptr)
  br i1 %i.dw, label %b3LoadV.exit261, label %bb.x, !prof !20, !nosanitize !9

bb.x:                                             ; preds = %b3LoadV.exit259
  %i.dx = ptrtoint ptr %.sroa.6343.0..sroa_idx to i64, !nosanitize !9 ; 2 uses
  %i.dy = add i64 %i.dx, 8, !nosanitize !9
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @221, i64 %i.dx, i64 %i.dy) #11, !nosanitize !9
  unreachable, !nosanitize !9

b3LoadV.exit261:                                  ; preds = %b3LoadV.exit259
  %i.dz = load double, ptr %.sroa.6343.0..sroa_idx, align 4, !tbaa !24
  %i.ea = load double, ptr %i.cj, align 8, !tbaa !24
  %i.eb = insertelement <2 x double> poison, double %i.ea, i64 0
  %i.ec = bitcast <2 x double> %i.eb to <4 x float>
  %i.ed = shufflevector <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x float> %i.dj, <4 x i32> <i32 6, i32 1, i32 poison, i32 poison>
  %i.ee = shufflevector <4 x float> %i.ec, <4 x float> %i.ed, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ef = fsub <4 x float> %i.ee, %i.at
  %i.eg = insertelement <2 x double> poison, double %i.dz, i64 0
  %i.eh = bitcast <2 x double> %i.eg to <4 x float>
  %i.ei = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.8.0.copyload, i64 0
  %i.ej = shufflevector <4 x float> %i.eh, <4 x float> %i.ei, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ek = fadd <4 x float> %i.at, %i.ej           ; 2 uses
  %i.el = fadd <4 x float> %i.ef, %i.ek
  %i.em = fmul <4 x float> %i.el, splat (float 5.000000e-01) ; 2 uses
  %i.en = fsub <4 x float> %i.ek, %i.em           ; 2 uses
  %i.eo = fsub <4 x float> %i.ae, %i.em           ; 2 uses
  %i.ep = shufflevector <4 x float> %i.eo, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.eq = shufflevector <4 x float> %i.eo, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 3>
  %i.er = fmul <4 x float> %i.bt, %i.eq
  %i.es = fmul <4 x float> %i.bu, %i.ep
  %i.et = fsub <4 x float> %i.er, %i.es           ; 2 uses
  %i.eu = fsub <4 x float> zeroinitializer, %i.et
  %i.ev = call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.eu, <4 x float> %i.et)
  %i.ew = call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.bv, <4 x float> %i.an) ; 2 uses
  %i.ex = shufflevector <4 x float> %i.ew, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.ey = shufflevector <4 x float> %i.ew, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 3>
  %i.ez = shufflevector <4 x float> %i.en, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.fa = shufflevector <4 x float> %i.en, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 3>
  %i.fb = fmul <4 x float> %i.ex, %i.fa
  %i.fc = fmul <4 x float> %i.ey, %i.ez
  %i.fd = fadd <4 x float> %i.fb, %i.fc
  %i.fe = fsub <4 x float> %i.ev, %i.fd
  %i.ff = fcmp ole <4 x float> %i.fe, zeroinitializer
  %i.fg = bitcast <4 x i1> %i.ff to i4
  %i.fh = and i4 %i.fg, 7
  %i.fi = icmp eq i4 %i.fh, 7
  br i1 %i.fi, label %b3IsLeaf.exit, label %b3AABB_Overlaps.exit.thread, !llvm.loop !83

b3IsLeaf.exit:                                    ; preds = %b3LoadV.exit261
  %i.fj = getelementptr inbounds nuw i8, ptr %i.cj, i64 46
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !40
  %i.fl = and i16 %i.fk, 4
  %.not389 = icmp eq i16 %i.fl, 0
  br i1 %.not389, label %bb.ag, label %bb.y

bb.y:                                             ; preds = %b3IsLeaf.exit
  store float %.0756, ptr %i.bw, align 4, !tbaa !86
  %i.fm = load i32, ptr %i.bx, align 4, !nosanitize !9
  %i.fn = icmp eq i32 %i.fm, -1056584962, !nosanitize !9
  br i1 %i.fn, label %bb.z, label %bb.ab, !nosanitize !9

bb.z:                                             ; preds = %bb.y
  %i.fo = load i32, ptr %i.by, align 8, !nosanitize !9
  %i.fp = icmp eq i32 %i.fo, -1733199055, !nosanitize !9
  br i1 %i.fp, label %bb.ab, label %bb.aa, !prof !20, !nosanitize !9

bb.aa:                                            ; preds = %bb.z
  %i.fq = ptrtoint ptr %4 to i64, !nosanitize !9
  call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @107, i64 %i.fq) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ab:                                            ; preds = %bb.z, %bb.y
  %i.fr = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !24
  %i.ft = call float %4(ptr noundef nonnull %9, i32 noundef %i.cg, i64 noundef %i.fs, ptr noundef %5) #12 ; 6 uses
  %i.fu = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.4.0749, i32 1), !nosanitize !9 ; 2 uses
  %i.fv = extractvalue { i32, i1 } %i.fu, 1, !nosanitize !9
  br i1 %i.fv, label %bb.ac, label %bb.ad, !prof !10, !nosanitize !9

bb.ac:                                            ; preds = %bb.ab
  %i.fw = zext nneg i32 %.sroa.4.0749 to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @108, i64 %i.fw, i64 1) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ad:                                            ; preds = %bb.ab
  %i.fx = extractvalue { i32, i1 } %i.fu, 0, !nosanitize !9 ; 3 uses
  %i.fy = fcmp une float %i.ft, 0.000000e+00
  br i1 %i.fy, label %bb.ae, label %.thread

bb.ae:                                            ; preds = %bb.ad
  %i.fz = fcmp ogt float %i.ft, 0.000000e+00
  %i.ga = fcmp olt float %i.ft, %.0756
  %or.cond = select i1 %i.fz, i1 %i.ga, i1 false
  br i1 %or.cond, label %bb.af, label %b3AABB_Overlaps.exit.thread

bb.af:                                            ; preds = %bb.ae
  %.sroa.060.0.copyload = load <2 x float>, ptr %i.w, align 4
  %.sroa.261.0.copyload = load float, ptr %.sroa.2140.0..sroa_idx, align 4
  %i.gb = fmul float %i.ft, %.sroa.261.0.copyload ; 2 uses
  %i.gc = fadd float %.sroa.7.0.copyload, %i.gb   ; 2 uses
  %i.gd = fcmp olt float %.sroa.7.0.copyload, %i.gc
  %i.ge = select i1 %i.gd, float %.sroa.7.0.copyload, float %i.gc
  %i.gf = fadd float %.sroa.15.0.copyload, %i.gb  ; 2 uses
  %i.gg = insertelement <2 x float> poison, float %i.ft, i64 0
  %i.gh = shufflevector <2 x float> %i.gg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gi = fmul <2 x float> %i.gh, %.sroa.060.0.copyload ; 2 uses
  %i.gj = fadd <2 x float> %.sroa.0332.0.copyload, %i.gi ; 2 uses
  %i.gk = fcmp olt <2 x float> %.sroa.0332.0.copyload, %i.gj
  %i.gl = select <2 x i1> %i.gk, <2 x float> %.sroa.0332.0.copyload, <2 x float> %i.gj
  %i.gm = fadd <2 x float> %.sroa.11.0.copyload, %i.gi ; 2 uses
  %i.gn = fcmp ogt <2 x float> %.sroa.11.0.copyload, %i.gm
  %i.go = select <2 x i1> %i.gn, <2 x float> %.sroa.11.0.copyload, <2 x float> %i.gm
  %i.gp = fcmp ogt float %.sroa.15.0.copyload, %i.gf
  %i.gq = select i1 %i.gp, float %.sroa.15.0.copyload, float %i.gf
  br label %b3AABB_Overlaps.exit.thread

bb.ag:                                            ; preds = %b3IsLeaf.exit
  %.not207 = icmp eq i32 %.0176755, 1024
  br i1 %.not207, label %b3AABB_Overlaps.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gr = getelementptr inbounds nuw i8, ptr %i.cj, i64 32 ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !24 ; 3 uses
  %i.gt = sext i32 %i.gs to i64                   ; 2 uses
  %i.gu = getelementptr inbounds [48 x i8], ptr %i.bn, i64 %i.gt ; 5 uses
  %i.gv = mul nsw i64 %i.gt, 48
  %i.gw = add i64 %i.gv, %i.br, !nosanitize !9    ; 3 uses
  %i.gx = icmp ne i64 %i.gw, 0
  %i.gy = icmp uge i64 %i.gw, %i.br, !nosanitize !9
  %i.gz = icmp slt i32 %i.gs, 0
  %i.ha = xor i1 %i.gz, %i.gy
  %i.hb = and i1 %i.gx, %i.ha, !nosanitize !9
  br i1 %i.hb, label %bb.aj, label %bb.ai, !prof !20, !nosanitize !9

bb.ai:                                            ; preds = %bb.ah
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @109, i64 %i.br, i64 %i.gw) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.aj:                                            ; preds = %bb.ah
  %i.hc = ptrtoint ptr %i.gu to i64, !nosanitize !9 ; 2 uses
  %i.hd = and i64 %i.hc, 7, !nosanitize !9
  %i.he = icmp eq i64 %i.hd, 0, !nosanitize !9
  br i1 %i.he, label %bb.al, label %bb.ak, !prof !20, !nosanitize !9

bb.ak:                                            ; preds = %bb.aj
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @110, i64 %i.hc) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.al:                                            ; preds = %bb.aj
  %.sroa.0345.0.copyload = load <2 x float>, ptr %i.gu, align 8
  %.sroa.4346.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %.sroa.4346.0.copyload = load float, ptr %.sroa.4346.0..sroa_idx, align 8
  %.sroa.5347.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gu, i64 12
  %.sroa.5347.0.copyload = load <2 x float>, ptr %.sroa.5347.0..sroa_idx, align 4
  %.sroa.6348.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gu, i64 20
  %.sroa.6348.0.copyload = load float, ptr %.sroa.6348.0..sroa_idx, align 4
  %i.hf = fadd <2 x float> %.sroa.0345.0.copyload, %.sroa.5347.0.copyload
  %i.hg = fadd float %.sroa.4346.0.copyload, %.sroa.6348.0.copyload
  %i.hh = fmul <2 x float> %i.hf, splat (float 5.000000e-01)
  %i.hi = fmul float %i.hg, 5.000000e-01
  %i.hj = getelementptr inbounds nuw i8, ptr %i.cj, i64 36 ; 2 uses
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !24 ; 3 uses
  %i.hl = sext i32 %i.hk to i64                   ; 2 uses
  %i.hm = getelementptr inbounds [48 x i8], ptr %i.bn, i64 %i.hl ; 5 uses
  %i.hn = mul nsw i64 %i.hl, 48
  %i.ho = add i64 %i.hn, %i.br, !nosanitize !9    ; 3 uses
  %i.hp = icmp ne i64 %i.ho, 0
  %i.hq = icmp uge i64 %i.ho, %i.br, !nosanitize !9
  %i.hr = icmp slt i32 %i.hk, 0
  %i.hs = xor i1 %i.hr, %i.hq
  %i.ht = and i1 %i.hp, %i.hs, !nosanitize !9
  br i1 %i.ht, label %bb.an, label %bb.am, !prof !20, !nosanitize !9

bb.am:                                            ; preds = %bb.al
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @111, i64 %i.br, i64 %i.ho) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.an:                                            ; preds = %bb.al
  %i.hu = ptrtoint ptr %i.hm to i64, !nosanitize !9 ; 2 uses
  %i.hv = and i64 %i.hu, 7, !nosanitize !9
  %i.hw = icmp eq i64 %i.hv, 0, !nosanitize !9
  br i1 %i.hw, label %bb.ap, label %bb.ao, !prof !20, !nosanitize !9

bb.ao:                                            ; preds = %bb.an
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @112, i64 %i.hu) #11, !nosanitize !9
end_hunk_1
