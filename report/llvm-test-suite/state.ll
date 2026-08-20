inline.NumInlined: 698
inline.NumDeleted: 221
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5State10rezone_allEiiSt6vectorIiSaIiEE:bb.a
  store ptr %i.o, ptr %i.p, align 8, !tbaa !89
  %i.q = icmp samesign ugt i64 %i.h, 4
  br i1 %i.q, label %bb.d, label %bb.e, !prof !91

bb.d:                                             ; preds = %bb.c
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.m, ptr align 4 %i.e, i64 %i.h, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.r = icmp eq i64 %i.h, 4
  br i1 %i.r, label %bb.f, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %i.e, align 4, !tbaa !4
  store i32 %i.s, ptr %i.m, align 4, !tbaa !4
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %.thread6, %bb.d, %bb.e, %bb.f
  %i.t = phi ptr [ %i.p, %bb.d ], [ %i.p, %bb.e ], [ %i.p, %bb.f ], [ %i.k, %.thread6 ] ; 2 uses
  %i.u = phi ptr [ %i.o, %bb.d ], [ %i.o, %bb.e ], [ %i.o, %bb.f ], [ %i.j, %.thread6 ]
  %i.v = phi ptr [ %i.n, %bb.d ], [ %i.n, %bb.e ], [ %i.n, %bb.f ], [ %i.i, %.thread6 ]
  store ptr %i.u, ptr %i.v, align 8, !tbaa !65
  invoke void @_ZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlus(ptr noundef nonnull align 8 dereferenceable(2288) %i.b, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %5, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.w = load ptr, ptr %5, align 8, !tbaa !64     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !89
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = sub i64 %i.y, %i.z
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.g, %bb.h
  %i.ab = call noundef ptr @_ZN10MallocPlus14get_memory_ptrEPKc(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull @.str)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !52
  %i.ad = call noundef ptr @_ZN10MallocPlus14get_memory_ptrEPKc(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull @.str.1)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !53
  %i.af = call noundef ptr @_ZN10MallocPlus14get_memory_ptrEPKc(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull @.str.2)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !54
  %.sroa.0.0.copyload = load i64, ptr %4, align 8, !tbaa !63
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !63
  %i.ah = call double @cpu_timer_stop(i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !70
  %i.ak = fadd double %i.ah, %i.aj
  store double %i.ak, ptr %i.ai, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %5, align 8, !tbaa !64    ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorIiSaIiEED2Ev.exit5, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = load ptr, ptr %i.t, align 8, !tbaa !89
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = sub i64 %i.ao, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.aq) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit5

_ZNSt6vectorIiSaIiEED2Ev.exit5:                   ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %i.al
}

declare void @_ZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlus(ptr noundef nonnull align 8 dereferenceable(2288), i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5State22calc_finite_differenceEd(ptr noundef nonnull align 8 dereferenceable(368) %0, double noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %struct.timeval, align 8            ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @cpu_timer_start(ptr noundef nonnull %2)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1160
  %i.f = load i64, ptr %i.e, align 8, !tbaa !34   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 1176 ; 5 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !63
  %i.i = icmp ult i64 %i.h, %i.f
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %i.f, ptr %i.g, align 8, !tbaa !63
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @_ZN5State25apply_boundary_conditionsEv(ptr noundef nonnull align 8 dereferenceable(368) %0)
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !19   ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1368
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !59   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 1376
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !60   ; 11 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 1384
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !61   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 1392
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !62   ; 11 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 1352
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !57   ; 25 uses
  %i.u = load i64, ptr %i.g, align 8, !tbaa !63
  %i.v = call noundef ptr @_ZN10MallocPlus13memory_mallocEmmPKci(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %i.u, i64 noundef 8, ptr noundef nonnull @.str.3, i32 noundef 16)
  store ptr %i.v, ptr @_ZZN5State22calc_finite_differenceEdE5H_new, align 8, !tbaa !92
  %i.w = load i64, ptr %i.g, align 8, !tbaa !63
  %i.x = call noundef ptr @_ZN10MallocPlus13memory_mallocEmmPKci(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %i.w, i64 noundef 8, ptr noundef nonnull @.str.4, i32 noundef 16)
  store ptr %i.x, ptr @_ZZN5State22calc_finite_differenceEdE5U_new, align 8, !tbaa !92
  %i.y = load i64, ptr %i.g, align 8, !tbaa !63
  %i.z = call noundef ptr @_ZN10MallocPlus13memory_mallocEmmPKci(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %i.y, i64 noundef 8, ptr noundef nonnull @.str.5, i32 noundef 16)
  store ptr %i.z, ptr @_ZZN5State22calc_finite_differenceEdE5V_new, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !19
  call void @_ZN4Mesh10get_boundsERiS0_(ptr noundef nonnull align 8 dereferenceable(2288) %i.aa, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %i.ab = load i32, ptr %i.a, align 4, !tbaa !4   ; 2 uses
  %i.ac = load i32, ptr %i.b, align 4, !tbaa !4   ; 2 uses
  %i.ad = icmp slt i32 %i.ab, %i.ac
  br i1 %i.ad, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 1072
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 1048
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !52 ; 25 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !53 ; 17 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !54 ; 17 uses
  %i.am = load ptr, ptr %i.af, align 8, !tbaa !67 ; 3 uses
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !67 ; 3 uses
  %i.ao = fmul double %1, 5.000000e-01            ; 5 uses
  %i.ap = load ptr, ptr @_ZZN5State22calc_finite_differenceEdE5H_new, align 8, !tbaa !92
  %i.aq = load ptr, ptr @_ZZN5State22calc_finite_differenceEdE5U_new, align 8, !tbaa !92
  %i.ar = load ptr, ptr @_ZZN5State22calc_finite_differenceEdE5V_new, align 8, !tbaa !92
  %i.as = sext i32 %i.ab to i64
  %wide.trip.count = sext i32 %i.ac to i64
  %i.at = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.au = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> zeroinitializer ; 11 uses
  br label %bb.d

._crit_edge:                                      ; preds = %bb.bh, %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !52
  %i.ax = load ptr, ptr @_ZZN5State22calc_finite_differenceEdE5H_new, align 8, !tbaa !92
  %i.ay = call noundef ptr @_ZN10MallocPlus14memory_replaceEPvS0_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.aw, ptr noundef %i.ax)
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !52
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !53
  %i.bb = load ptr, ptr @_ZZN5State22calc_finite_differenceEdE5U_new, align 8, !tbaa !92
  %i.bc = call noundef ptr @_ZN10MallocPlus14memory_replaceEPvS0_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.ba, ptr noundef %i.bb)
  store ptr %i.bc, ptr %i.az, align 8, !tbaa !53
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !54
  %i.bf = load ptr, ptr @_ZZN5State22calc_finite_differenceEdE5V_new, align 8, !tbaa !92
  %i.bg = call noundef ptr @_ZN10MallocPlus14memory_replaceEPvS0_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.be, ptr noundef %i.bf)
  store ptr %i.bg, ptr %i.bd, align 8, !tbaa !54
  %.sroa.0.0.copyload = load i64, ptr %2, align 8, !tbaa !63
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !63
  %i.bh = call double @cpu_timer_stop(i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !70
  %i.bk = fadd double %i.bh, %i.bj
  store double %i.bk, ptr %i.bi, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.bh
  %indvars.iv = phi i64 [ %i.as, %.lr.ph ], [ %indvars.iv.next, %bb.bh ] ; 12 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.t, i64 %indvars.iv
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !4  ; 16 uses
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !4
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !4
  %i.br = getelementptr inbounds [4 x i8], ptr %i.r, i64 %indvars.iv
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !4
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !4
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %indvars.iv
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !70 ; 17 uses
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %indvars.iv
  %i.by = load double, ptr %i.bx, align 8, !tbaa !70 ; 10 uses
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.al, i64 %indvars.iv
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !70 ; 14 uses
  %i.cb = sext i32 %i.bo to i64                   ; 6 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !4
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.cb
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !70 ; 5 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.cb
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !70 ; 6 uses
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.cb
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !70
  %i.ck = sext i32 %i.bq to i64                   ; 6 uses
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !4
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ck
  %i.co = load double, ptr %i.cn, align 8, !tbaa !70 ; 8 uses
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ck
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !70 ; 6 uses
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.ck
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !70 ; 2 uses
  %i.ct = sext i32 %i.bs to i64                   ; 6 uses
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !4
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ct
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !70 ; 9 uses
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ct
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !70 ; 2 uses
  %i.da = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.ct
  %i.db = load double, ptr %i.da, align 8, !tbaa !70 ; 9 uses
  %i.dc = sext i32 %i.bu to i64                   ; 6 uses
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !4
  %i.df = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.dc
  %i.dg = load double, ptr %i.df, align 8, !tbaa !70 ; 9 uses
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.dc
  %i.di = load double, ptr %i.dh, align 8, !tbaa !70 ; 2 uses
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.dc
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !70 ; 9 uses
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.cb
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !4  ; 3 uses
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.ck
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !4  ; 3 uses
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.ct
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !4  ; 3 uses
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.dc
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !4  ; 3 uses
  %i.dt = sext i32 %i.cd to i64                   ; 4 uses
  %i.du = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.dt
  %i.dv = load double, ptr %i.du, align 8, !tbaa !70 ; 2 uses
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.dt
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !70 ; 2 uses
  %i.dy = sext i32 %i.cm to i64                   ; 4 uses
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.dy
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !70 ; 2 uses
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.dy
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !70 ; 2 uses
  %i.ed = sext i32 %i.cv to i64                   ; 4 uses
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ed
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !70 ; 2 uses
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.ed
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !70 ; 2 uses
  %i.ei = sext i32 %i.de to i64                   ; 4 uses
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ei
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !70 ; 2 uses
  %i.el = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.ei
  %i.em = load double, ptr %i.el, align 8, !tbaa !70 ; 2 uses
  %i.en = sext i32 %i.bm to i64                   ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.en
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !70 ; 13 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.en
  %i.er = load double, ptr %i.eq, align 8, !tbaa !70 ; 13 uses
  %i.es = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.cb ; 4 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !4  ; 3 uses
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.eu
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !70 ; 9 uses
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.ck ; 4 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !4  ; 2 uses
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ez
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !70 ; 7 uses
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.ct ; 5 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !4  ; 2 uses
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.fe
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !70 ; 10 uses
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.dc ; 5 uses
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !4  ; 2 uses
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.fj
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !70 ; 11 uses
  %i.fm = icmp slt i32 %i.bm, %i.et               ; 2 uses
  br i1 %i.fm, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.fn = sext i32 %i.dm to i64                   ; 4 uses
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.fn
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !70 ; 2 uses
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.fn
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !70 ; 3 uses
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.fn
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !70
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.fn
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !4
  %i.fw = sext i32 %i.fv to i64                   ; 3 uses
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.fw
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !70
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.fw
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !70
  %i.gb = insertelement <2 x double> poison, double %i.fr, i64 0
  %i.gc = insertelement <2 x double> %i.gb, double %i.fp, i64 1
  %i.gd = insertelement <2 x double> poison, double %i.ft, i64 0
  %i.ge = insertelement <2 x double> %i.gd, double %i.fr, i64 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.01172 = phi i64 [ %i.fw, %bb.e ], [ 0, %bb.d ] ; 4 uses
  %.01171 = phi double [ %i.fp, %bb.e ], [ 0.000000e+00, %bb.d ] ; 6 uses
  %.01170 = phi double [ %i.fr, %bb.e ], [ 0.000000e+00, %bb.d ] ; 3 uses
  %.01167 = phi double [ %i.fy, %bb.e ], [ 0.000000e+00, %bb.d ] ; 2 uses
  %.01165 = phi double [ %i.ga, %bb.e ], [ 0.000000e+00, %bb.d ] ; 2 uses
  %i.gf = phi <2 x double> [ %i.gc, %bb.e ], [ zeroinitializer, %bb.d ] ; 2 uses
  %i.gg = phi <2 x double> [ %i.ge, %bb.e ], [ zeroinitializer, %bb.d ] ; 3 uses
  %i.gh = icmp slt i32 %i.bm, %i.ey               ; 4 uses
  br i1 %i.gh, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.gi = sext i32 %i.do to i64                   ; 4 uses
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.gi
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !70 ; 2 uses
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.gi
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !70 ; 3 uses
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.gi
  %i.go = load double, ptr %i.gn, align 8, !tbaa !70
  %i.gp = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.gi
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !4
  %i.gr = sext i32 %i.gq to i64                   ; 3 uses
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.gr
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !70
  %i.gu = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.gr
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !70
  %i.gw = insertelement <2 x double> poison, double %i.gm, i64 0
  %i.gx = insertelement <2 x double> %i.gw, double %i.gk, i64 1
  %i.gy = insertelement <2 x double> poison, double %i.go, i64 0
  %i.gz = insertelement <2 x double> %i.gy, double %i.gm, i64 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.01164 = phi i64 [ %i.gr, %bb.g ], [ 0, %bb.f ] ; 4 uses
  %.01163 = phi double [ %i.gk, %bb.g ], [ 0.000000e+00, %bb.f ] ; 6 uses
  %.01162 = phi double [ %i.gm, %bb.g ], [ 0.000000e+00, %bb.f ] ; 3 uses
  %.01159 = phi double [ %i.gt, %bb.g ], [ 0.000000e+00, %bb.f ] ; 2 uses
  %.01157 = phi double [ %i.gv, %bb.g ], [ 0.000000e+00, %bb.f ] ; 2 uses
  %i.ha = phi <2 x double> [ %i.gx, %bb.g ], [ zeroinitializer, %bb.f ] ; 2 uses
  %i.hb = phi <2 x double> [ %i.gz, %bb.g ], [ zeroinitializer, %bb.f ] ; 3 uses
  %i.hc = icmp slt i32 %i.bm, %i.fi               ; 2 uses
  br i1 %i.hc, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.hd = sext i32 %i.ds to i64                   ; 4 uses
  %i.he = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.hd
  %i.hf = load double, ptr %i.he, align 8, !tbaa !70 ; 2 uses
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.hd
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !70 ; 2 uses
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.hd
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !70 ; 3 uses
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.hd
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !4
  %i.hm = sext i32 %i.hl to i64                   ; 3 uses
  %i.hn = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.hm
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !70
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.hm
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !70
  %i.hr = insertelement <2 x double> poison, double %i.hj, i64 0
  %i.hs = insertelement <2 x double> %i.hr, double %i.hf, i64 1
  %i.ht = insertelement <2 x double> poison, double %i.hh, i64 0
  %i.hu = insertelement <2 x double> %i.ht, double %i.hj, i64 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.01156 = phi i64 [ %i.hm, %bb.i ], [ 0, %bb.h ] ; 4 uses
  %.01155 = phi double [ %i.hf, %bb.i ], [ 0.000000e+00, %bb.h ] ; 6 uses
  %.01154 = phi double [ %i.hh, %bb.i ], [ 0.000000e+00, %bb.h ]
  %.01153 = phi double [ %i.hj, %bb.i ], [ 0.000000e+00, %bb.h ] ; 3 uses
  %.01151 = phi double [ %i.ho, %bb.i ], [ 0.000000e+00, %bb.h ] ; 2 uses
  %.01149 = phi double [ %i.hq, %bb.i ], [ 0.000000e+00, %bb.h ] ; 2 uses
  %i.hv = phi <2 x double> [ %i.hs, %bb.i ], [ zeroinitializer, %bb.h ] ; 2 uses
  %i.hw = phi <2 x double> [ %i.hu, %bb.i ], [ zeroinitializer, %bb.h ] ; 2 uses
  %i.hx = icmp slt i32 %i.bm, %i.fd               ; 2 uses
  br i1 %i.hx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.hy = sext i32 %i.dq to i64                   ; 4 uses
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.hy
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !70 ; 2 uses
  %i.ib = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.hy
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !70 ; 2 uses
  %i.id = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.hy
  %i.ie = load double, ptr %i.id, align 8, !tbaa !70 ; 3 uses
  %i.if = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.hy
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !4
  %i.ih = sext i32 %i.ig to i64                   ; 3 uses
  %i.ii = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ih
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !70
  %i.ik = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.ih
  %i.il = load double, ptr %i.ik, align 8, !tbaa !70
  %i.im = insertelement <2 x double> poison, double %i.ie, i64 0
  %i.in = insertelement <2 x double> %i.im, double %i.ia, i64 1
  %i.io = insertelement <2 x double> poison, double %i.ic, i64 0
  %i.ip = insertelement <2 x double> %i.io, double %i.ie, i64 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.01148 = phi i64 [ %i.ih, %bb.k ], [ 0, %bb.j ] ; 4 uses
  %.01147 = phi double [ %i.ia, %bb.k ], [ 0.000000e+00, %bb.j ] ; 6 uses
  %.01146 = phi double [ %i.ic, %bb.k ], [ 0.000000e+00, %bb.j ]
  %.01145 = phi double [ %i.ie, %bb.k ], [ 0.000000e+00, %bb.j ] ; 3 uses
  %.01143 = phi double [ %i.ij, %bb.k ], [ 0.000000e+00, %bb.j ] ; 2 uses
  %.01142 = phi double [ %i.il, %bb.k ], [ 0.000000e+00, %bb.j ] ; 2 uses
  %i.iq = phi <2 x double> [ %i.in, %bb.k ], [ zeroinitializer, %bb.j ] ; 2 uses
  %i.ir = phi <2 x double> [ %i.ip, %bb.k ], [ zeroinitializer, %bb.j ] ; 2 uses
  %i.is = fmul double %i.ew, %i.ew                ; 3 uses
  %i.it = insertelement <2 x double> poison, double %i.ep, i64 0 ; 9 uses
  %i.iu = insertelement <2 x double> %i.it, double %i.fg, i64 1 ; 3 uses
  %i.iv = fmul <2 x double> %i.iu, %i.iu          ; 12 uses
  %i.iw = shufflevector <2 x double> %i.iv, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.ix = insertelement <2 x double> poison, double %i.by, i64 0 ; 3 uses
  %i.iy = insertelement <2 x double> %i.ix, double %i.bw, i64 1 ; 2 uses
  %i.iz = insertelement <2 x double> poison, double %i.ew, i64 0 ; 3 uses
  %i.ja = shufflevector <2 x double> %i.iz, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jb = fmul <2 x double> %i.iy, %i.ja          ; 3 uses
  %i.jc = fdiv double %i.ew, %i.ep                ; 2 uses
  %i.jd = fcmp olt double %i.jc, 1.000000e+00
  %.sroa.speculated35.i = select i1 %i.jd, double %i.jc, double 1.000000e+00 ; 2 uses
  %i.je = fmul double %i.ch, %i.ew
  %i.jf = fdiv double %i.ep, %i.ew                ; 2 uses
  %i.jg = fcmp olt double %i.jf, 1.000000e+00
  %.sroa.speculated30.i = select i1 %i.jg, double %i.jf, double 1.000000e+00 ; 3 uses
  %i.jh = insertelement <2 x double> %i.iw, double %i.is, i64 0
  %i.ji = insertelement <2 x double> %i.iv, double %i.is, i64 1
  %i.jj = fdiv <2 x double> %i.jh, %i.ji          ; 2 uses
  %i.jk = fcmp olt <2 x double> %i.jj, splat (double 5.000000e-01)
  %i.jl = select <2 x i1> %i.jk, <2 x double> %i.jj, <2 x double> splat (double 5.000000e-01) ; 2 uses
  %foldExtExtBinop = fmul <2 x double> %i.iv, %i.jl
  %i.jm = extractelement <2 x double> %i.jl, i64 1
  %i.jn = fmul double %i.is, %i.jm
  %i.jo = insertelement <2 x double> poison, double %i.ch, i64 0 ; 2 uses
  %i.jp = insertelement <2 x double> %i.jo, double %i.by, i64 1 ; 3 uses
  %i.jq = fmul <2 x double> %i.jp, %i.jp
  %i.jr = insertelement <2 x double> poison, double %i.cf, i64 0 ; 2 uses
  %i.js = insertelement <2 x double> %i.jr, double %i.bw, i64 1 ; 4 uses
  %i.jt = fmul <2 x double> %i.js, %i.js
  %i.ju = fdiv <2 x double> %i.jq, %i.js
  %i.jv = fmul <2 x double> %i.jt, splat (double 4.900000e+00) ; 2 uses
  %i.jw = fadd <2 x double> %i.jv, %i.ju          ; 2 uses
  %i.jx = extractelement <2 x double> %i.jw, i64 0
  %i.jy = fmul double %i.jx, %i.ew
  %i.jz = insertelement <2 x double> poison, double %i.cj, i64 0 ; 2 uses
  %i.ka = insertelement <2 x double> %i.jz, double %i.ca, i64 1
  %i.kb = fmul <2 x double> %i.jp, %i.ka
  %i.kc = fdiv <2 x double> %i.kb, %i.js          ; 2 uses
  %i.kd = extractelement <2 x double> %i.kc, i64 1 ; 2 uses
  %i.ke = fmul double %i.kd, %i.ep                ; 3 uses
  %i.kf = insertelement <2 x double> poison, double %i.ca, i64 0 ; 2 uses
  %i.kg = insertelement <2 x double> %i.kf, double %i.ke, i64 1 ; 2 uses
  %i.kh = insertelement <2 x double> %i.iz, double %.sroa.speculated35.i, i64 1
  %i.ki = fmul <2 x double> %i.kg, %i.kh          ; 4 uses
  %i.kj = extractelement <2 x double> %i.kc, i64 0
  %i.kk = fmul double %i.kj, %i.ew
  %i.kl = fmul double %i.fb, %i.fb                ; 3 uses
  %i.km = insertelement <2 x double> poison, double %i.cq, i64 0 ; 3 uses
  %i.kn = insertelement <2 x double> %i.km, double %i.co, i64 1
  %i.ko = shufflevector <2 x double> %i.it, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  %i.kp = fmul <2 x double> %i.kn, %i.ko
  %i.kq = insertelement <2 x double> poison, double %i.fb, i64 0 ; 2 uses
  %i.kr = shufflevector <2 x double> %i.kq, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ks = fmul <2 x double> %i.iy, %i.kr          ; 2 uses
  %i.kt = fdiv double %i.ep, %i.fb                ; 2 uses
  %i.ku = fcmp olt double %i.kt, 1.000000e+00
  %.sroa.speculated35.i1191 = select i1 %i.ku, double %i.kt, double 1.000000e+00 ; 3 uses
  %i.kv = fdiv double %i.fb, %i.ep                ; 2 uses
  %i.kw = fcmp olt double %i.kv, 1.000000e+00
  %.sroa.speculated30.i1192 = select i1 %i.kw, double %i.kv, double 1.000000e+00 ; 2 uses
  %i.kx = insertelement <2 x double> %i.iv, double %i.kl, i64 1
  %i.ky = insertelement <2 x double> %i.iw, double %i.kl, i64 0
  %i.kz = fdiv <2 x double> %i.kx, %i.ky          ; 2 uses
  %i.la = fcmp olt <2 x double> %i.kz, splat (double 5.000000e-01)
  %i.lb = select <2 x i1> %i.la, <2 x double> %i.kz, <2 x double> splat (double 5.000000e-01) ; 2 uses
  %i.lc = extractelement <2 x double> %i.lb, i64 0
  %i.ld = fmul double %i.kl, %i.lc
  %shift = shufflevector <2 x double> %i.lb, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1342 = fmul <2 x double> %i.iv, %shift
  %i.le = shufflevector <2 x double> %i.km, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lf = insertelement <2 x double> %i.km, double %i.cs, i64 1
  %i.lg = fmul <2 x double> %i.le, %i.lf
  %i.lh = fmul double %i.co, %i.co
  %i.li = fmul double %i.lh, 4.900000e+00
  %i.lj = shufflevector <2 x double> %i.jw, <2 x double> %i.ix, <2 x i32> <i32 1, i32 2>
  %i.lk = fmul <2 x double> %i.lj, %i.ko          ; 2 uses
  %i.ll = insertelement <2 x double> poison, double %.sroa.speculated35.i, i64 0
  %i.lm = shufflevector <2 x double> %i.ll, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ln = fmul <2 x double> %i.lk, %i.lm          ; 3 uses
  %i.lo = shufflevector <2 x double> %i.it, <2 x double> %foldExtExtBinop, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.lp = insertelement <2 x double> %i.iz, double %i.jn, i64 1
  %i.lq = fadd <2 x double> %i.lo, %i.lp          ; 7 uses
  %i.lr = insertelement <2 x double> %i.jo, double %i.jy, i64 1
  %i.ls = insertelement <2 x double> %i.lo, double %.sroa.speculated30.i, i64 1
  %i.lt = fmul <2 x double> %i.lr, %i.ls          ; 2 uses
  %i.lu = insertelement <2 x double> %i.jz, double %i.kk, i64 1
  %i.lv = insertelement <2 x double> %i.it, double %.sroa.speculated30.i, i64 1 ; 3 uses
  %i.lw = fmul <2 x double> %i.lu, %i.lv          ; 2 uses
  %i.lx = fadd <2 x double> %i.ki, %i.lw
  %i.ly = fsub <2 x double> %i.ki, %i.lw
  %i.lz = shufflevector <2 x double> %i.lx, <2 x double> %i.ly, <2 x i32> <i32 0, i32 3>
  %i.ma = fdiv <2 x double> %i.lz, %i.lq          ; 2 uses
  %i.mb = insertelement <2 x double> %i.jr, double %i.je, i64 1
  %i.mc = fmul <2 x double> %i.mb, %i.lv          ; 2 uses
  %i.md = shufflevector <2 x double> %i.jb, <2 x double> %i.ln, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.me = fadd <2 x double> %i.md, %i.mc
  %i.mf = fsub <2 x double> %i.md, %i.mc
  %i.mg = shufflevector <2 x double> %i.me, <2 x double> %i.mf, <2 x i32> <i32 0, i32 3>
  %i.mh = fdiv <2 x double> %i.mg, %i.lq          ; 2 uses
  %i.mi = shufflevector <2 x double> %i.jb, <2 x double> %i.ln, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.mj = fadd <2 x double> %i.mi, %i.lt
  %i.mk = fsub <2 x double> %i.mi, %i.lt
  %i.ml = shufflevector <2 x double> %i.mj, <2 x double> %i.mk, <2 x i32> <i32 0, i32 3>
  %i.mm = fdiv <2 x double> %i.ml, %i.lq          ; 2 uses
  %i.mn = insertelement <2 x double> poison, double %.sroa.speculated30.i1192, i64 0
  %i.mo = shufflevector <2 x double> %i.mn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mp = fmul <2 x double> %i.lk, %i.mo          ; 2 uses
  %i.mq = insertelement <2 x double> poison, double %i.co, i64 0
  %i.mr = shufflevector <2 x double> %i.mq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ms = fdiv <2 x double> %i.lg, %i.mr          ; 2 uses
  %i.mt = extractelement <2 x double> %i.ms, i64 0
  %i.mu = fadd double %i.li, %i.mt
  %i.mv = extractelement <2 x double> %i.ms, i64 1
  %i.mw = fmul double %i.mv, %i.fb
  %i.mx = insertelement <2 x double> %i.it, double %i.ld, i64 1 ; 2 uses
  %i.my = shufflevector <2 x double> %i.kq, <2 x double> %foldExtExtBinop1342, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.mz = fadd <2 x double> %i.mx, %i.my          ; 6 uses
  %i.na = fadd <2 x double> %i.kp, %i.ks
  %i.nb = shufflevector <2 x double> %i.mz, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.nc = fdiv <2 x double> %i.na, %i.nb          ; 3 uses
  %i.nd = insertelement <2 x double> poison, double %i.mu, i64 0
  %i.ne = insertelement <2 x double> %i.nd, double %i.cq, i64 1
  %i.nf = fmul <2 x double> %i.ne, %i.kr
  %i.ng = insertelement <2 x double> poison, double %.sroa.speculated35.i1191, i64 0
  %i.nh = shufflevector <2 x double> %i.ng, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ni = fmul <2 x double> %i.nf, %i.nh
  %i.nj = fsub <2 x double> %i.ni, %i.mp
  %i.nk = shufflevector <2 x double> %i.mz, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.nl = fdiv <2 x double> %i.nj, %i.nk          ; 3 uses
  %i.nm = insertelement <2 x double> %i.my, double %.sroa.speculated30.i1192, i64 1
  %i.nn = fmul <2 x double> %i.kg, %i.nm          ; 4 uses
  %i.no = insertelement <2 x double> poison, double %i.cs, i64 0
  %i.np = insertelement <2 x double> %i.no, double %i.mw, i64 1
  %i.nq = insertelement <2 x double> %i.it, double %.sroa.speculated35.i1191, i64 1
  %i.nr = fmul <2 x double> %i.np, %i.nq          ; 2 uses
  %i.ns = fadd <2 x double> %i.nr, %i.nn
  %i.nt = fsub <2 x double> %i.nr, %i.nn
  %i.nu = shufflevector <2 x double> %i.ns, <2 x double> %i.nt, <2 x i32> <i32 0, i32 3>
  %i.nv = fdiv <2 x double> %i.nu, %i.mz          ; 2 uses
  %i.nw = insertelement <2 x double> poison, double %i.fl, i64 0 ; 4 uses
  %i.nx = insertelement <2 x double> %i.nw, double %i.er, i64 1 ; 2 uses
  %i.ny = fmul <2 x double> %i.nx, %i.nx          ; 9 uses
  %i.nz = insertelement <2 x double> %i.kf, double %i.bw, i64 1 ; 2 uses
  %i.oa = shufflevector <2 x double> %i.nw, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ob = fmul <2 x double> %i.nz, %i.oa          ; 3 uses
  %i.oc = fmul double %i.dg, %i.er
  %i.od = extractelement <2 x double> %i.ob, i64 1
  %i.oe = fadd double %i.oc, %i.od
  %i.of = fadd double %i.er, %i.fl                ; 3 uses
  %i.og = fdiv double %i.oe, %i.of
  %3 = fmul double %i.ca, %i.er                   ; 2 uses
  %i.oh = fdiv double %i.fl, %i.er                ; 2 uses
  %i.oi = fcmp olt double %i.oh, 1.000000e+00
  %.sroa.speculated35.i1203 = select i1 %i.oi, double %i.oh, double 1.000000e+00 ; 3 uses
  %i.oj = fmul double %3, %.sroa.speculated35.i1203
  %i.ok = fmul double %i.dk, %i.fl
  %i.ol = fdiv double %i.er, %i.fl                ; 2 uses
  %i.om = fcmp olt double %i.ol, 1.000000e+00
  %.sroa.speculated30.i1204 = select i1 %i.om, double %i.ol, double 1.000000e+00 ; 3 uses
  %i.on = fmul double %i.ok, %.sroa.speculated30.i1204
  %i.oo = fsub double %i.oj, %i.on
  %i.op = shufflevector <2 x double> %i.ny, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.oq = fdiv <2 x double> %i.op, %i.ny          ; 2 uses
  %i.or = fcmp olt <2 x double> %i.oq, splat (double 5.000000e-01)
  %i.os = select <2 x i1> %i.or, <2 x double> %i.oq, <2 x double> splat (double 5.000000e-01)
  %i.ot = fmul <2 x double> %i.ny, %i.os          ; 2 uses
  %i.ou = fmul double %i.by, %i.fl                ; 2 uses
  %i.ov = fmul double %i.di, %i.er
  %i.ow = fadd double %i.ov, %i.ou
  %i.ox = fmul double %i.di, %i.dk
  %i.oy = insertelement <2 x double> poison, double %i.ox, i64 0
  %i.oz = insertelement <2 x double> %i.oy, double %i.ow, i64 1
  %i.pa = insertelement <2 x double> poison, double %i.dg, i64 0
  %i.pb = insertelement <2 x double> %i.pa, double %i.of, i64 1
  %i.pc = fdiv <2 x double> %i.oz, %i.pb          ; 2 uses
  %i.pd = fmul double %i.kd, %i.er                ; 2 uses
  %i.pe = fmul double %i.pd, %.sroa.speculated35.i1203
  %i.pf = extractelement <2 x double> %i.pc, i64 0
  %i.pg = fmul double %i.pf, %i.fl
  %i.ph = fmul double %i.pg, %.sroa.speculated30.i1204
  %i.pi = fmul double %i.dk, %i.dk
  %i.pj = fsub double %i.pe, %i.ph
  %i.pk = insertelement <2 x double> poison, double %i.pj, i64 0
  %i.pl = insertelement <2 x double> %i.pk, double %i.pi, i64 1
  %i.pm = fmul double %i.dg, %i.dg
  %i.pn = fmul double %i.pm, 4.900000e+00
  %i.po = fmul double %i.dk, %i.er
  %i.pp = extractelement <2 x double> %i.ob, i64 0
  %i.pq = fadd double %i.po, %i.pp
  %i.pr = fmul double %i.ca, %i.ca
  %i.ps = insertelement <2 x double> poison, double %i.pr, i64 0
  %i.pt = insertelement <2 x double> %i.ps, double %i.pq, i64 1
  %i.pu = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.pv = insertelement <2 x double> %i.pu, double %i.of, i64 1
  %i.pw = fdiv <2 x double> %i.pt, %i.pv          ; 3 uses
  %shift1344 = shufflevector <2 x double> %i.jv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1345 = fadd <2 x double> %shift1344, %i.pw ; 3 uses
  %i.px = insertelement <2 x double> poison, double %i.fg, i64 0 ; 3 uses
  %i.py = shufflevector <2 x double> %i.px, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.pz = fmul <2 x double> %i.nz, %i.py          ; 3 uses
  %i.qa = shufflevector <2 x double> %i.ot, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.qb = insertelement <2 x double> %i.qa, double %i.er, i64 1 ; 2 uses
  %i.qc = insertelement <2 x double> %i.ot, double %i.fg, i64 1
  %i.qd = fadd <2 x double> %i.qb, %i.qc          ; 5 uses
  %i.qe = extractelement <2 x double> %i.qd, i64 0
  %i.qf = fdiv double %i.oo, %i.qe
  %i.qg = insertelement <2 x double> %i.qd, double %i.dg, i64 1
  %i.qh = fdiv <2 x double> %i.pl, %i.qg          ; 2 uses
  %i.qi = extractelement <2 x double> %i.qh, i64 1
  %i.qj = fadd double %i.pn, %i.qi
  %i.qk = fmul double %i.qj, %i.fl
  %i.ql = fmul double %i.qk, %.sroa.speculated30.i1204
  %i.qm = insertelement <2 x double> %i.qb, double %.sroa.speculated35.i1203, i64 0
  %i.qn = insertelement <2 x double> %i.pz, double %i.ql, i64 0 ; 2 uses
  %i.qo = insertelement <2 x double> poison, double %i.er, i64 0 ; 2 uses
  %4 = insertelement <2 x double> %i.qo, double %i.fg, i64 1
  %i.qp = insertelement <2 x double> %i.px, double %i.er, i64 1 ; 2 uses
  %5 = fdiv <2 x double> %4, %i.qp                ; 2 uses
  %6 = shufflevector <2 x double> %i.ny, <2 x double> %i.iv, <2 x i32> <i32 1, i32 3>
  %7 = shufflevector <2 x double> %i.iv, <2 x double> %i.ny, <2 x i32> <i32 1, i32 3>
  %i.qq = fdiv <2 x double> %6, %7                ; 2 uses
  %8 = fcmp olt <2 x double> %i.qq, splat (double 5.000000e-01)
  %9 = select <2 x i1> %8, <2 x double> %i.qq, <2 x double> splat (double 5.000000e-01) ; 2 uses
  %10 = fmul double %i.cz, %i.db
  %11 = insertelement <2 x double> poison, double %i.cz, i64 0
  %12 = insertelement <2 x double> %i.ix, double %i.pd, i64 1
  %13 = fmul double %i.cx, %i.cx
  %14 = fmul double %13, 4.900000e+00
  %15 = fmul double %i.db, %i.er
  %16 = extractelement <2 x double> %i.pz, i64 0
  %17 = fadd double %15, %16
  %18 = fmul double %i.db, %i.db
  %19 = insertelement <2 x double> poison, double %18, i64 0
  %20 = insertelement <2 x double> %19, double %17, i64 1
  %21 = insertelement <2 x double> %i.qd, double %i.cx, i64 0
  %22 = fdiv <2 x double> %20, %21                ; 2 uses
  %23 = extractelement <2 x double> %22, i64 0
  %24 = fadd double %14, %23
  %i.qr = insertelement <2 x double> poison, double %i.db, i64 0
  %i.qs = shufflevector <2 x double> %i.qr, <2 x double> %foldExtExtBinop1345, <2 x i32> <i32 0, i32 2>
  %i.qt = fmul <2 x double> %i.qs, %i.qp          ; 2 uses
  %25 = shufflevector <2 x double> %i.qt, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %26 = insertelement <2 x double> %25, double %i.cx, i64 1
  %27 = fmul <2 x double> %26, %i.qm              ; 2 uses
  %28 = fsub <2 x double> %27, %i.qn
  %29 = fadd <2 x double> %27, %i.qn
  %30 = shufflevector <2 x double> %28, <2 x double> %29, <2 x i32> <i32 0, i32 3>
  %31 = fdiv <2 x double> %30, %i.qd              ; 3 uses
  %32 = fcmp olt <2 x double> %5, splat (double 1.000000e+00)
  %33 = select <2 x i1> %32, <2 x double> %5, <2 x double> splat (double 1.000000e+00) ; 5 uses
  %34 = extractelement <2 x double> %33, i64 1
  %35 = fmul double %3, %34
  %36 = insertelement <2 x double> %33, double %i.fg, i64 0
  %37 = fmul <2 x double> %12, %36                ; 3 uses
  %38 = fmul <2 x double> %i.qt, %33              ; 2 uses
  %shift1352.a = shufflevector <2 x double> %i.iv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1348 = fmul <2 x double> %shift1352.a, %9
  %foldExtExtBinop1353.a = fmul <2 x double> %i.ny, %9
  %shift1355 = shufflevector <2 x double> %foldExtExtBinop1353.a, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1356 = fadd <2 x double> %foldExtExtBinop1348, %shift1355 ; 3 uses
  %39 = extractelement <2 x double> %38, i64 0
  %40 = fsub double %39, %35
  %41 = insertelement <2 x double> poison, double %40, i64 0
  %42 = insertelement <2 x double> %41, double %10, i64 1
  %i.qu = insertelement <2 x double> %foldExtExtBinop1356, double %i.cx, i64 1
  %i.qv = fdiv <2 x double> %42, %i.qu            ; 2 uses
  %i.qw = extractelement <2 x double> %i.qv, i64 1
  %i.qx = fmul double %i.qw, %i.fg
  %i.qy = insertelement <2 x double> %11, double %i.qx, i64 1
  %43 = shufflevector <2 x double> %i.qo, <2 x double> %33, <2 x i32> <i32 0, i32 2>
  %i.qz = fmul <2 x double> %i.qy, %43            ; 2 uses
  %i.ra = fadd <2 x double> %i.qz, %37
  %i.rb = fsub <2 x double> %i.qz, %37
  %i.rc = shufflevector <2 x double> %i.ra, <2 x double> %i.rb, <2 x i32> <i32 0, i32 3>
  %i.rd = shufflevector <2 x double> %i.qd, <2 x double> %foldExtExtBinop1356, <2 x i32> <i32 1, i32 2>
  %i.re = fdiv <2 x double> %i.rc, %i.rd          ; 2 uses
  %i.rf = fmul double %24, %i.fg
  %i.rg = extractelement <2 x double> %33, i64 0
  %i.rh = fmul double %i.rf, %i.rg
  %44 = extractelement <2 x double> %38, i64 1
  %i.ri = fsub double %i.rh, %44
  %i.rj = insertelement <2 x double> poison, double %i.ri, i64 0
  %i.rk = shufflevector <2 x double> %i.ma, <2 x double> %i.nl, <2 x i32> <i32 1, i32 2>
  %i.rl = fmul <2 x double> %i.au, %i.rk
  %i.rm = shufflevector <2 x double> %i.mm, <2 x double> %i.nl, <2 x i32> <i32 1, i32 2>
  %i.rn = fmul <2 x double> %i.au, %i.rm
  %i.ro = shufflevector <2 x double> %i.ma, <2 x double> %i.nc, <2 x i32> <i32 0, i32 2>
  %i.rp = fsub <2 x double> %i.ro, %i.rl          ; 3 uses
  %i.rq = shufflevector <2 x double> %i.mh, <2 x double> %i.nl, <2 x i32> <i32 1, i32 3>
  %i.rr = fmul <2 x double> %i.au, %i.rq
  %i.rs = shufflevector <2 x double> %i.mh, <2 x double> %i.nc, <2 x i32> <i32 0, i32 3>
  %i.rt = fsub <2 x double> %i.rs, %i.rr          ; 8 uses
  %i.ru = shufflevector <2 x double> %i.mm, <2 x double> %i.nc, <2 x i32> <i32 0, i32 2>
  %i.rv = fsub <2 x double> %i.ru, %i.rn          ; 5 uses
  %i.rw = extractelement <2 x double> %i.rv, i64 0 ; 2 uses
  %foldExtExtBinop1358 = fmul <2 x double> %i.rv, %i.rv
  %i.rx = shufflevector <2 x double> %i.rj, <2 x double> %foldExtExtBinop1358, <2 x i32> <i32 0, i32 2>
  %i.ry = shufflevector <2 x double> %foldExtExtBinop1356, <2 x double> %i.rt, <2 x i32> <i32 0, i32 2>
  %i.rz = fdiv <2 x double> %i.rx, %i.ry          ; 2 uses
  %i.sa = extractelement <2 x double> %i.rt, i64 0 ; 2 uses
  %foldExtExtBinop1360 = fmul <2 x double> %i.rt, %i.rt
  %i.sb = extractelement <2 x double> %foldExtExtBinop1360, i64 0
  %i.sc = fmul double %i.sb, 4.900000e+00
  %i.sd = extractelement <2 x double> %i.rz, i64 1
  %i.se = fadd double %i.sd, %i.sc                ; 2 uses
  %i.sf = fmul <2 x double> %i.rp, %i.rv
  %i.sg = fdiv <2 x double> %i.sf, %i.rt          ; 3 uses
  %i.sh = extractelement <2 x double> %i.sg, i64 1
  %i.si = shufflevector <2 x double> %i.nv, <2 x double> %i.qh, <2 x i32> <i32 1, i32 2>
  %i.sj = fmul <2 x double> %i.au, %i.si
  %i.sk = shufflevector <2 x double> %i.nv, <2 x double> %i.pc, <2 x i32> <i32 0, i32 3>
  %i.sl = fsub <2 x double> %i.sk, %i.sj
  %i.sm = shufflevector <2 x double> %i.qv, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.sn = insertelement <2 x double> %i.sm, double %i.qf, i64 0
  %i.so = fmul <2 x double> %i.au, %i.sn
  %i.sp = insertelement <2 x double> %31, double %i.og, i64 0
  %i.sq = fsub <2 x double> %i.sp, %i.so          ; 5 uses
  %i.sr = shufflevector <2 x double> %31, <2 x double> %i.re, <2 x i32> <i32 0, i32 3>
  %i.ss = fmul <2 x double> %i.au, %i.sr
  %i.st = shufflevector <2 x double> %31, <2 x double> %i.rz, <2 x i32> <i32 0, i32 2>
  %i.su = fmul <2 x double> %i.au, %i.st
  %i.sv = shufflevector <2 x double> %i.pw, <2 x double> %i.re, <2 x i32> <i32 1, i32 2>
  %i.sw = fsub <2 x double> %i.sv, %i.ss
  %i.sx = shufflevector <2 x double> %i.pw, <2 x double> %22, <2 x i32> <i32 1, i32 3>
  %i.sy = fsub <2 x double> %i.sx, %i.su          ; 5 uses
  %i.sz = shufflevector <2 x double> %i.rp, <2 x double> %i.sy, <2 x i32> <i32 1, i32 2>
  %i.ta = fmul <2 x double> %i.sz, %i.sl
  %i.tb = shufflevector <2 x double> %i.rt, <2 x double> %i.sq, <2 x i32> <i32 1, i32 2>
  %i.tc = fdiv <2 x double> %i.ta, %i.tb          ; 3 uses
  %i.td = shufflevector <2 x double> %i.rt, <2 x double> %i.sq, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.te = fmul <2 x double> %i.td, %i.td          ; 2 uses
  %i.tf = extractelement <2 x double> %i.te, i64 0
  %i.tg = fmul double %i.tf, 4.900000e+00
  %i.th = fadd double %i.sh, %i.tg                ; 2 uses
  %i.ti = extractelement <2 x double> %i.te, i64 1
  %i.tj = fmul double %i.ti, 4.900000e+00
  %i.tk = fmul <2 x double> %i.sy, %i.sw
  %i.tl = fdiv <2 x double> %i.tk, %i.sq          ; 2 uses
  %i.tm = extractelement <2 x double> %i.tl, i64 0
  %i.tn = fadd double %i.tm, %i.tj                ; 2 uses
  %i.to = extractelement <2 x double> %i.sy, i64 1 ; 5 uses
  %i.tp = fmul double %i.to, %i.to
  %i.tq = extractelement <2 x double> %i.sq, i64 1 ; 5 uses
  %i.tr = fdiv double %i.tp, %i.tq
  %i.ts = fmul double %i.tq, %i.tq
  %i.tt = fmul double %i.ts, 4.900000e+00
  %i.tu = fadd double %i.tr, %i.tt                ; 2 uses
  %i.tv = extractelement <2 x double> %i.sg, i64 0
  br i1 %i.fm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.tw = fmul <2 x double> %i.ko, %i.gf
  %i.tx = shufflevector <2 x double> %i.gg, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ty = fmul <2 x double> %i.tx, %i.gg
  %i.tz = fmul double %.01171, %.01171
  %i.ua = fmul double %i.tz, 4.900000e+00
  %i.ub = fadd <2 x double> %i.jb, %i.tw
  %i.uc = shufflevector <2 x double> %i.lq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ud = fdiv <2 x double> %i.ub, %i.uc
  %i.ue = shufflevector <2 x double> %i.gf, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.uf = insertelement <2 x double> poison, double %.sroa.speculated30.i, i64 0
  %i.ug = shufflevector <2 x double> %i.uf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.uh = shufflevector <2 x double> %i.lq, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ui = insertelement <2 x double> poison, double %.01171, i64 0
  %i.uj = shufflevector <2 x double> %i.ui, <2 x double> poison, <2 x i32> zeroinitializer
  %i.uk = fdiv <2 x double> %i.ty, %i.uj          ; 2 uses
  %i.ul = extractelement <2 x double> %i.uk, i64 1
  %i.um = fadd double %i.ua, %i.ul
  %i.un = insertelement <2 x double> %i.ue, double %i.um, i64 0
  %i.uo = fmul <2 x double> %i.ja, %i.un
  %i.up = fmul <2 x double> %i.ug, %i.uo
  %i.uq = fsub <2 x double> %i.ln, %i.up
  %i.ur = fdiv <2 x double> %i.uq, %i.uh
  %i.us = fmul <2 x double> %i.au, %i.ur
  %i.ut = fsub <2 x double> %i.ud, %i.us          ; 7 uses
  %i.uu = extractelement <2 x double> %i.uk, i64 0
  %i.uv = fmul double %i.ew, %i.uu
  %i.uw = insertelement <2 x double> %i.gg, double %i.uv, i64 1
  %i.ux = fmul <2 x double> %i.lv, %i.uw          ; 2 uses
  %i.uy = fadd <2 x double> %i.ki, %i.ux
  %i.uz = fsub <2 x double> %i.ki, %i.ux
  %i.va = shufflevector <2 x double> %i.uy, <2 x double> %i.uz, <2 x i32> <i32 0, i32 3>
  %i.vb = fdiv <2 x double> %i.va, %i.lq          ; 2 uses
  %i.vc = extractelement <2 x double> %i.vb, i64 1
  %i.vd = fmul double %i.ao, %i.vc
  %i.ve = extractelement <2 x double> %i.vb, i64 0
  %i.vf = fsub double %i.ve, %i.vd
  %foldExtExtBinop1362 = fadd <2 x double> %i.rv, %i.ut
  %i.vg = extractelement <2 x double> %foldExtExtBinop1362, i64 0
  %i.vh = fmul double %i.vg, 5.000000e-01
  %foldExtExtBinop1364.a = fmul <2 x double> %i.ut, %i.ut
  %i.vi = extractelement <2 x double> %foldExtExtBinop1364.a, i64 1
  %i.vj = fmul double %i.vi, 4.900000e+00
  %i.vk = shufflevector <2 x double> %i.ut, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vl = insertelement <2 x double> %i.ut, double %i.vf, i64 1
  %i.vm = fmul <2 x double> %i.vk, %i.vl
  %i.vn = shufflevector <2 x double> %i.ut, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.vo = fdiv <2 x double> %i.vm, %i.vn          ; 2 uses
  %i.vp = extractelement <2 x double> %i.vo, i64 0
  %i.vq = fadd double %i.vj, %i.vp
  %i.vr = fadd double %i.se, %i.vq
  %i.vs = fmul double %i.vr, 5.000000e-01
  %shift1366 = shufflevector <2 x double> %i.vo, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1367 = fadd <2 x double> %i.sg, %shift1366
  %i.vt = extractelement <2 x double> %foldExtExtBinop1367, i64 0
  %i.vu = fmul double %i.vt, 5.000000e-01
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.01141 = phi double [ %i.vh, %bb.m ], [ %i.rw, %bb.l ]
  %.01140 = phi double [ %i.vs, %bb.m ], [ %i.se, %bb.l ]
  %.01139 = phi double [ %i.vu, %bb.m ], [ %i.tv, %bb.l ]
  %i.vv = phi <2 x double> [ %i.ut, %bb.m ], [ zeroinitializer, %bb.l ] ; 4 uses
  %i.vw = extractelement <2 x double> %i.rp, i64 1 ; 3 uses
  %i.vx = extractelement <2 x double> %i.tc, i64 0
  br i1 %i.gh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.vy = fmul <2 x double> %i.ko, %i.ha
  %i.vz = shufflevector <2 x double> %i.hb, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.wa = fmul <2 x double> %i.vz, %i.hb
  %i.wb = fmul double %.01163, %.01163
  %i.wc = fmul double %i.wb, 4.900000e+00
  %i.wd = fadd <2 x double> %i.ks, %i.vy
  %i.we = fdiv <2 x double> %i.wd, %i.nb
  %i.wf = shufflevector <2 x double> %i.ha, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.wg = shufflevector <2 x double> %i.mz, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.wh = insertelement <2 x double> poison, double %.01163, i64 0
  %i.wi = shufflevector <2 x double> %i.wh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wj = fdiv <2 x double> %i.wa, %i.wi          ; 2 uses
  %i.wk = extractelement <2 x double> %i.wj, i64 1
  %i.wl = fadd double %i.wc, %i.wk
  %i.wm = insertelement <2 x double> %i.wf, double %i.wl, i64 0
  %i.wn = fmul <2 x double> %i.kr, %i.wm
  %i.wo = fmul <2 x double> %i.nh, %i.wn
  %i.wp = fsub <2 x double> %i.wo, %i.mp
  %i.wq = fdiv <2 x double> %i.wp, %i.wg
  %i.wr = fmul <2 x double> %i.au, %i.wq
  %i.ws = fsub <2 x double> %i.we, %i.wr          ; 7 uses
  %i.wt = extractelement <2 x double> %i.wj, i64 0
  %i.wu = fmul double %i.fb, %i.wt
  %i.wv = insertelement <2 x double> %i.mx, double %.sroa.speculated35.i1191, i64 1
  %i.ww = insertelement <2 x double> %i.hb, double %i.wu, i64 1
  %i.wx = fmul <2 x double> %i.wv, %i.ww          ; 2 uses
  %i.wy = fadd <2 x double> %i.wx, %i.nn
  %i.wz = fsub <2 x double> %i.wx, %i.nn
  %i.xa = shufflevector <2 x double> %i.wy, <2 x double> %i.wz, <2 x i32> <i32 0, i32 3>
  %i.xb = fdiv <2 x double> %i.xa, %i.mz          ; 2 uses
  %i.xc = extractelement <2 x double> %i.xb, i64 1
  %i.xd = fmul double %i.ao, %i.xc
  %i.xe = extractelement <2 x double> %i.xb, i64 0
  %i.xf = fsub double %i.xe, %i.xd
  %i.xg = extractelement <2 x double> %i.ws, i64 0
  %i.xh = fadd double %i.vw, %i.xg
  %i.xi = fmul double %i.xh, 5.000000e-01
  %foldExtExtBinop1369.a = fmul <2 x double> %i.ws, %i.ws
  %i.xj = extractelement <2 x double> %foldExtExtBinop1369.a, i64 1
  %i.xk = fmul double %i.xj, 4.900000e+00
  %i.xl = shufflevector <2 x double> %i.ws, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xm = insertelement <2 x double> %i.ws, double %i.xf, i64 1
  %i.xn = fmul <2 x double> %i.xl, %i.xm
  %i.xo = shufflevector <2 x double> %i.ws, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.xp = fdiv <2 x double> %i.xn, %i.xo          ; 2 uses
  %i.xq = extractelement <2 x double> %i.xp, i64 0
  %i.xr = fadd double %i.xk, %i.xq
  %i.xs = fadd double %i.th, %i.xr
  %i.xt = fmul double %i.xs, 5.000000e-01
  %shift1371.a = shufflevector <2 x double> %i.xp, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1372.a = fadd <2 x double> %i.tc, %shift1371.a
  %i.xu = extractelement <2 x double> %foldExtExtBinop1372.a, i64 0
  %i.xv = fmul double %i.xu, 5.000000e-01
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.01138 = phi double [ %i.xi, %bb.o ], [ %i.vw, %bb.n ]
  %.01137 = phi double [ %i.xt, %bb.o ], [ %i.th, %bb.n ]
  %.01136 = phi double [ %i.xv, %bb.o ], [ %i.vx, %bb.n ]
  %i.xw = phi <2 x double> [ %i.ws, %bb.o ], [ zeroinitializer, %bb.n ] ; 4 uses
  %i.xx = extractelement <2 x double> %i.tc, i64 1 ; 2 uses
  %i.xy = extractelement <2 x double> %i.sy, i64 0 ; 2 uses
  br i1 %i.hc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.xz = fmul <2 x double> %i.ko, %i.hv
  %i.ya = insertelement <2 x double> %foldExtExtBinop1345, double %i.ca, i64 1
  %i.yb = fmul <2 x double> %i.ya, %i.ko
  %i.yc = insertelement <2 x double> %i.nw, double %i.ep, i64 1
  %i.yd = insertelement <2 x double> %i.it, double %i.fl, i64 1
  %i.ye = fdiv <2 x double> %i.yc, %i.yd          ; 2 uses
  %i.yf = shufflevector <2 x double> %i.iv, <2 x double> %i.ny, <2 x i32> <i32 0, i32 2>
  %i.yg = shufflevector <2 x double> %i.ny, <2 x double> %i.iv, <2 x i32> <i32 0, i32 2>
  %i.yh = fdiv <2 x double> %i.yf, %i.yg          ; 2 uses
  %i.yi = fcmp olt <2 x double> %i.yh, splat (double 5.000000e-01)
  %i.yj = select <2 x i1> %i.yi, <2 x double> %i.yh, <2 x double> splat (double 5.000000e-01) ; 2 uses
  %shift1374 = shufflevector <2 x double> %i.yj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1375 = fmul <2 x double> %i.iv, %shift1374
  %foldExtExtBinop1377.a = fmul <2 x double> %i.ny, %i.yj
  %i.yk = shufflevector <2 x double> %i.hw, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.yl = fmul <2 x double> %i.yk, %i.hw
  %i.ym = shufflevector <2 x double> %i.it, <2 x double> %foldExtExtBinop1375, <2 x i32> <i32 0, i32 2>
  %i.yn = shufflevector <2 x double> %i.nw, <2 x double> %foldExtExtBinop1377.a, <2 x i32> <i32 0, i32 2>
  %i.yo = fadd <2 x double> %i.ym, %i.yn          ; 3 uses
  %i.yp = fcmp olt <2 x double> %i.ye, splat (double 1.000000e+00)
  %i.yq = select <2 x i1> %i.yp, <2 x double> %i.ye, <2 x double> splat (double 1.000000e+00) ; 3 uses
  %i.yr = insertelement <2 x double> poison, double %i.ke, i64 0
  %i.ys = fmul double %i.ep, %.01154
  %i.yt = fadd double %i.ou, %i.ys
  %i.yu = insertelement <2 x double> poison, double %i.yt, i64 0
  %i.yv = insertelement <2 x double> poison, double %.01155, i64 0
  %i.yw = shufflevector <2 x double> %i.yv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.yx = fdiv <2 x double> %i.yl, %i.yw          ; 2 uses
  %i.yy = extractelement <2 x double> %i.yx, i64 0
  %i.yz = fmul double %i.fl, %i.yy
  %i.za = insertelement <2 x double> %i.yr, double %i.yz, i64 1
  %i.zb = fmul <2 x double> %i.za, %i.yq          ; 2 uses
  %shift1379 = shufflevector <2 x double> %i.zb, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1380 = fsub <2 x double> %i.zb, %shift1379
  %i.zc = shufflevector <2 x double> %i.yu, <2 x double> %foldExtExtBinop1380, <2 x i32> <i32 0, i32 2>
  %i.zd = fdiv <2 x double> %i.zc, %i.yo          ; 2 uses
  %i.ze = extractelement <2 x double> %i.zd, i64 1
  %i.zf = fmul double %i.ao, %i.ze
  %i.zg = extractelement <2 x double> %i.zd, i64 0
  %i.zh = fsub double %i.zg, %i.zf
  %i.zi = fmul double %.01155, %.01155
  %i.zj = fmul double %i.zi, 4.900000e+00
  %i.zk = extractelement <2 x double> %i.yx, i64 1
  %i.zl = fadd double %i.zj, %i.zk
  %i.zm = fadd <2 x double> %i.ob, %i.xz
  %i.zn = shufflevector <2 x double> %i.yo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.zo = fdiv <2 x double> %i.zm, %i.zn
  %i.zp = shufflevector <2 x double> %i.yq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.zq = fmul <2 x double> %i.yb, %i.zp
  %i.zr = shufflevector <2 x double> %i.hv, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.zs = insertelement <2 x double> %i.zr, double %i.zl, i64 0
  %i.zt = fmul <2 x double> %i.oa, %i.zs
  %i.zu = shufflevector <2 x double> %i.yq, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.zv = fmul <2 x double> %i.zu, %i.zt
  %i.zw = fsub <2 x double> %i.zq, %i.zv
  %i.zx = shufflevector <2 x double> %i.yo, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.zy = fdiv <2 x double> %i.zw, %i.zx
  %i.zz = fmul <2 x double> %i.au, %i.zy
  %i.aaa = fsub <2 x double> %i.zo, %i.zz         ; 6 uses
  %foldExtExtBinop1382 = fadd <2 x double> %i.sy, %i.aaa
  %i.aab = extractelement <2 x double> %foldExtExtBinop1382, i64 0
  %i.aac = fmul double %i.aab, 5.000000e-01
  %i.aad = shufflevector <2 x double> %i.aaa, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aae = insertelement <2 x double> %i.aad, double %i.zh, i64 0
  %i.aaf = fmul <2 x double> %i.aae, %i.aad
  %i.aag = shufflevector <2 x double> %i.aaa, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aah = fdiv <2 x double> %i.aaf, %i.aag       ; 2 uses
  %i.aai = extractelement <2 x double> %i.aah, i64 0
  %i.aaj = fadd double %i.xx, %i.aai
  %i.aak = fmul double %i.aaj, 5.000000e-01
  %foldExtExtBinop1384.a = fmul <2 x double> %i.aaa, %i.aaa
  %i.aal = extractelement <2 x double> %foldExtExtBinop1384.a, i64 1
  %i.aam = fmul double %i.aal, 4.900000e+00
  %i.aan = extractelement <2 x double> %i.aah, i64 1
  %i.aao = fadd double %i.aam, %i.aan
  %i.aap = fadd double %i.tn, %i.aao
  %i.aaq = fmul double %i.aap, 5.000000e-01
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.01135 = phi double [ %i.aac, %bb.q ], [ %i.xy, %bb.p ]
  %.01134 = phi double [ %i.aak, %bb.q ], [ %i.xx, %bb.p ]
  %.01133 = phi double [ %i.aaq, %bb.q ], [ %i.tn, %bb.p ]
  %i.aar = phi <2 x double> [ %i.aaa, %bb.q ], [ zeroinitializer, %bb.p ] ; 4 uses
  %i.aas = extractelement <2 x double> %i.tl, i64 1 ; 2 uses
  br i1 %i.hx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.aat = fmul <2 x double> %i.ko, %i.iq
  %i.aau = insertelement <2 x double> %i.px, double %i.ep, i64 1
  %i.aav = fdiv <2 x double> %i.iu, %i.aau        ; 2 uses
  %i.aaw = insertelement <2 x double> %foldExtExtBinop1345, double %i.ca, i64 1
  %i.aax = fmul <2 x double> %i.aaw, %i.ko
  %i.aay = fdiv <2 x double> %i.iv, %i.iw         ; 2 uses
  %i.aaz = fcmp olt <2 x double> %i.aay, splat (double 5.000000e-01)
  %i.aba = select <2 x i1> %i.aaz, <2 x double> %i.aay, <2 x double> splat (double 5.000000e-01)
  %i.abb = fmul <2 x double> %i.iw, %i.aba        ; 2 uses
  %i.abc = shufflevector <2 x double> %i.ir, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.abd = fmul <2 x double> %i.abc, %i.ir
  %i.abe = shufflevector <2 x double> %i.it, <2 x double> %i.abb, <2 x i32> <i32 0, i32 2>
  %i.abf = insertelement <2 x double> %i.abb, double %i.fg, i64 0
  %i.abg = fadd <2 x double> %i.abe, %i.abf       ; 3 uses
  %i.abh = fcmp olt <2 x double> %i.aav, splat (double 1.000000e+00)
  %i.abi = select <2 x i1> %i.abh, <2 x double> %i.aav, <2 x double> splat (double 1.000000e+00) ; 3 uses
  %i.abj = fmul double %i.ep, %.01146
  %i.abk = extractelement <2 x double> %37, i64 0
  %i.abl = fadd double %i.abk, %i.abj
  %i.abm = insertelement <2 x double> poison, double %i.abl, i64 0
  %i.abn = insertelement <2 x double> poison, double %.01147, i64 0
  %i.abo = shufflevector <2 x double> %i.abn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.abp = fdiv <2 x double> %i.abd, %i.abo       ; 2 uses
  %i.abq = extractelement <2 x double> %i.abp, i64 0
  %i.abr = fmul double %i.fg, %i.abq
  %i.abs = insertelement <2 x double> poison, double %i.abr, i64 0
  %i.abt = insertelement <2 x double> %i.abs, double %i.ke, i64 1
  %i.abu = fmul <2 x double> %i.abi, %i.abt       ; 2 uses
  %shift1386 = shufflevector <2 x double> %i.abu, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1387 = fsub <2 x double> %i.abu, %shift1386
  %i.abv = shufflevector <2 x double> %i.abm, <2 x double> %foldExtExtBinop1387, <2 x i32> <i32 0, i32 2>
  %i.abw = fdiv <2 x double> %i.abv, %i.abg       ; 2 uses
  %i.abx = extractelement <2 x double> %i.abw, i64 1
  %i.aby = fmul double %i.ao, %i.abx
  %i.abz = extractelement <2 x double> %i.abw, i64 0
  %i.aca = fsub double %i.abz, %i.aby
  %i.acb = fmul double %.01147, %.01147
  %i.acc = fmul double %i.acb, 4.900000e+00
  %i.acd = extractelement <2 x double> %i.abp, i64 1
  %i.ace = fadd double %i.acc, %i.acd
  %i.acf = fadd <2 x double> %i.pz, %i.aat
  %i.acg = shufflevector <2 x double> %i.abg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ach = fdiv <2 x double> %i.acf, %i.acg
  %i.aci = shufflevector <2 x double> %i.iq, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.acj = insertelement <2 x double> %i.aci, double %i.ace, i64 0
  %i.ack = fmul <2 x double> %i.py, %i.acj
  %i.acl = shufflevector <2 x double> %i.abi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.acm = fmul <2 x double> %i.acl, %i.ack
  %i.acn = shufflevector <2 x double> %i.abi, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aco = fmul <2 x double> %i.aax, %i.acn
  %i.acp = fsub <2 x double> %i.acm, %i.aco
  %i.acq = shufflevector <2 x double> %i.abg, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.acr = fdiv <2 x double> %i.acp, %i.acq
  %i.acs = fmul <2 x double> %i.au, %i.acr
  %i.act = fsub <2 x double> %i.ach, %i.acs       ; 6 uses
  %i.acu = extractelement <2 x double> %i.act, i64 0
  %i.acv = fadd double %i.to, %i.acu
  %i.acw = fmul double %i.acv, 5.000000e-01
  %i.acx = shufflevector <2 x double> %i.act, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.acy = insertelement <2 x double> %i.acx, double %i.aca, i64 0
  %i.acz = fmul <2 x double> %i.acy, %i.acx
  %i.ada = shufflevector <2 x double> %i.act, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.adb = fdiv <2 x double> %i.acz, %i.ada       ; 2 uses
  %i.adc = extractelement <2 x double> %i.adb, i64 0
  %i.add = fadd double %i.aas, %i.adc
  %i.ade = fmul double %i.add, 5.000000e-01
  %foldExtExtBinop1389 = fmul <2 x double> %i.act, %i.act
  %i.adf = extractelement <2 x double> %foldExtExtBinop1389, i64 1
  %i.adg = fmul double %i.adf, 4.900000e+00
  %i.adh = extractelement <2 x double> %i.adb, i64 1
  %i.adi = fadd double %i.adg, %i.adh
  %i.adj = fadd double %i.tu, %i.adi
  %i.adk = fmul double %i.adj, 5.000000e-01
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.01132 = phi double [ %i.acw, %bb.s ], [ %i.to, %bb.r ]
  %.01131 = phi double [ %i.ade, %bb.s ], [ %i.aas, %bb.r ]
  %.01130 = phi double [ %i.adk, %bb.s ], [ %i.tu, %bb.r ]
  %i.adl = phi <2 x double> [ %i.act, %bb.s ], [ zeroinitializer, %bb.r ] ; 4 uses
  %i.adm = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.dt
  %i.adn = load i32, ptr %i.adm, align 4, !tbaa !4
  %i.ado = icmp slt i32 %i.et, %i.adn
  br i1 %i.ado, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.adp = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.dt
  %i.adq = load i32, ptr %i.adp, align 4, !tbaa !4
  %i.adr = sext i32 %i.adq to i64                 ; 2 uses
  %i.ads = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.adr
  %i.adt = load double, ptr %i.ads, align 8, !tbaa !70
  %i.adu = fadd double %i.dv, %i.adt
  %i.adv = fmul double %i.adu, 5.000000e-01
  %i.adw = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.adr
  %i.adx = load double, ptr %i.adw, align 8, !tbaa !70
  %i.ady = fadd double %i.dx, %i.adx
  %i.adz = fmul double %i.ady, 5.000000e-01
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.01180 = phi double [ %i.adv, %bb.u ], [ %i.dv, %bb.t ]
  %.01179 = phi double [ %i.adz, %bb.u ], [ %i.dx, %bb.t ]
  %i.aea = fadd double %i.co, %.01163
  %i.aeb = fmul double %i.aea, 5.000000e-01
  %i.aec = fadd double %i.cq, %.01162
  %i.aed = fmul double %i.aec, 5.000000e-01
  %.01121 = select i1 %i.gh, double %i.aeb, double %i.co
  %.01120 = select i1 %i.gh, double %i.aed, double %i.cq
  %i.aee = extractelement <2 x double> %i.lq, i64 0
  %i.aef = fmul double %i.aee, 5.000000e-01       ; 4 uses
  %i.aeg = fdiv double %i.rw, %i.sa
  %i.aeh = call double @llvm.fabs.f64(double %i.aeg) ; 2 uses
  %i.aei = fmul double %i.sa, 9.800000e+00        ; 2 uses
  %i.aej = call double @sqrt(double noundef %i.aei) #21, !tbaa !4
  %i.aek = fadd double %i.aeh, %i.aej
  %i.ael = fsub double %i.bw, %i.cf               ; 5 uses
  %i.aem = fsub double %i.cf, %.01180
  %i.aen = fsub double %.01121, %i.bw             ; 2 uses
  %i.aeo = fmul double %i.aek, 5.000000e-01
  %i.aep = fmul double %1, %i.aeo
  %i.aeq = fdiv double %i.aep, %i.aef             ; 2 uses
  %i.aer = fsub double 1.000000e+00, %i.aeq
  %i.aes = fmul double %i.aeq, %i.aer
  %i.aet = fmul double %i.ael, %i.ael             ; 2 uses
  %i.aeu = fcmp olt double %i.aet, 1.000000e-30
  %.sroa.speculated28.i = select i1 %i.aeu, double 1.000000e-30, double %i.aet
  %i.aev = fdiv double 1.000000e+00, %.sroa.speculated28.i ; 2 uses
  %i.aew = fmul double %i.ael, %i.aen
  %i.aex = fmul double %i.aev, %i.aew             ; 2 uses
  %i.aey = fmul double %i.ael, %i.aem
  %i.aez = fmul double %i.aev, %i.aey             ; 2 uses
  %i.afa = fmul double %i.aes, 5.000000e-01
  %i.afb = fcmp olt double %i.aex, 1.000000e+00
  %.sroa.speculated23.i = select i1 %i.afb, double %i.aex, double 1.000000e+00 ; 2 uses
  %i.afc = fcmp olt double %i.aez, %.sroa.speculated23.i
  %.sroa.speculated18.i = select i1 %i.afc, double %i.aez, double %.sroa.speculated23.i ; 2 uses
  %i.afd = fcmp olt double %.sroa.speculated18.i, 0.000000e+00
  %.sroa.speculated.i1275 = select i1 %i.afd, double 0.000000e+00, double %.sroa.speculated18.i
  %i.afe = fsub double 1.000000e+00, %.sroa.speculated.i1275
  %i.aff = fmul double %i.afe, %i.afa
  %i.afg = fmul double %i.ael, %i.aff             ; 2 uses
  %i.afh = load i32, ptr %i.es, align 4, !tbaa !4
  %i.afi = icmp slt i32 %i.bm, %i.afh
  br i1 %i.afi, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.afj = sext i32 %i.dm to i64
  %i.afk = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.afj
  %i.afl = load i32, ptr %i.afk, align 4, !tbaa !4
  %i.afm = getelementptr inbounds [4 x i8], ptr %i.t, i64 %.01172
  %i.afn = load i32, ptr %i.afm, align 4, !tbaa !4
  %i.afo = icmp slt i32 %i.afl, %i.afn
  br i1 %i.afo, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.afp = getelementptr inbounds [4 x i8], ptr %i.r, i64 %.01172
  %i.afq = load i32, ptr %i.afp, align 4, !tbaa !4
  %i.afr = sext i32 %i.afq to i64
  %i.afs = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.afr
  %i.aft = load double, ptr %i.afs, align 8, !tbaa !70
  %i.afu = fadd double %.01167, %i.aft
  %i.afv = fmul double %i.afu, 5.000000e-01
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.11168 = phi double [ %i.afv, %bb.x ], [ %.01167, %bb.w ]
  %i.afw = extractelement <2 x double> %i.vv, i64 0
  %i.afx = extractelement <2 x double> %i.vv, i64 1 ; 2 uses
  %i.afy = fdiv double %i.afw, %i.afx
  %i.afz = call double @llvm.fabs.f64(double %i.afy)
  %i.aga = fmul double %i.afx, 9.800000e+00
  %i.agb = call double @sqrt(double noundef %i.aga) #21, !tbaa !4
  %i.agc = fadd double %i.afz, %i.agb
  %i.agd = fsub double %i.bw, %.01171             ; 5 uses
  %i.age = fsub double %.01171, %.11168
  %i.agf = fmul double %i.agc, 5.000000e-01
  %i.agg = fmul double %1, %i.agf
  %i.agh = fdiv double %i.agg, %i.aef             ; 2 uses
  %i.agi = fsub double 1.000000e+00, %i.agh
  %i.agj = fmul double %i.agh, %i.agi
  %i.agk = fmul double %i.agd, %i.agd             ; 2 uses
  %i.agl = fcmp olt double %i.agk, 1.000000e-30
  %.sroa.speculated28.i1276 = select i1 %i.agl, double 1.000000e-30, double %i.agk
  %i.agm = fdiv double 1.000000e+00, %.sroa.speculated28.i1276 ; 2 uses
  %i.agn = fmul double %i.agd, %i.aen
  %i.ago = fmul double %i.agm, %i.agn             ; 2 uses
  %i.agp = fmul double %i.agd, %i.age
  %i.agq = fmul double %i.agm, %i.agp             ; 2 uses
  %i.agr = fmul double %i.agj, 5.000000e-01
  %i.ags = fcmp olt double %i.ago, 1.000000e+00
  %.sroa.speculated23.i1277 = select i1 %i.ags, double %i.ago, double 1.000000e+00 ; 2 uses
  %i.agt = fcmp olt double %i.agq, %.sroa.speculated23.i1277
  %.sroa.speculated18.i1278 = select i1 %i.agt, double %i.agq, double %.sroa.speculated23.i1277 ; 2 uses
  %i.agu = fcmp olt double %.sroa.speculated18.i1278, 0.000000e+00
  %.sroa.speculated.i1279 = select i1 %i.agu, double 0.000000e+00, double %.sroa.speculated18.i1278
  %i.agv = fsub double 1.000000e+00, %.sroa.speculated.i1279
  %i.agw = fmul double %i.agr, %i.agv
  %i.agx = fmul double %i.agd, %i.agw
  %i.agy = fadd double %i.afg, %i.agx
  %i.agz = fmul double %i.agy, 5.000000e-01
  %i.aha = fmul double %i.agz, 5.000000e-01
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  %.01119 = phi double [ %i.aha, %bb.y ], [ %i.afg, %bb.v ]
  %i.ahb = load i32, ptr %i.ex, align 4, !tbaa !4
  %i.ahc = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.dy
  %i.ahd = load i32, ptr %i.ahc, align 4, !tbaa !4
  %i.ahe = icmp slt i32 %i.ahb, %i.ahd
  br i1 %i.ahe, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ahf = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.dy
  %i.ahg = load i32, ptr %i.ahf, align 4, !tbaa !4
  %i.ahh = sext i32 %i.ahg to i64                 ; 2 uses
  %i.ahi = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ahh
  %i.ahj = load double, ptr %i.ahi, align 8, !tbaa !70
  %i.ahk = fadd double %i.ea, %i.ahj
end_hunk_0
