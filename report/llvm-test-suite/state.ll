inline.NumInlined: 698
inline.NumDeleted: 221
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5State13state_reorderESt6vectorIiSaIiEE:bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53
  %i.g = load ptr, ptr %1, align 8, !tbaa !64
  %i.h = tail call noundef ptr @_ZN10MallocPlus14memory_reorderEPdPi(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.f, ptr noundef nonnull %i.g)
  store ptr %i.h, ptr %i.e, align 8, !tbaa !53
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !54
  %i.k = load ptr, ptr %1, align 8, !tbaa !64
  %i.l = tail call noundef ptr @_ZN10MallocPlus14memory_reorderEPdPi(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.j, ptr noundef nonnull %i.k)
  store ptr %i.l, ptr %i.i, align 8, !tbaa !54
  ret void
}

declare noundef ptr @_ZN10MallocPlus14memory_reorderEPdPi(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5State10rezone_allEiiSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(368) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %struct.timeval, align 8            ; 6 uses
  %5 = alloca %"class.std::vector", align 8       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @cpu_timer_start(ptr noundef nonnull %4)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !65   ; 2 uses
  %i.e = load ptr, ptr %3, align 8, !tbaa !64     ; 4 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %.thread6, label %bb.b

.thread6:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = getelementptr inbounds i8, ptr null, i64 %i.h ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store ptr %i.j, ptr %i.k, align 8, !tbaa !89
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %i.h, 9223372036854775804
  br i1 %i.l, label %.noexc.i.i, label %bb.c, !prof !90

.noexc.i.i:                                       ; preds = %bb.b
  call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.m = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #23 ; 5 uses
  store ptr %i.m, ptr %5, align 8, !tbaa !64
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !65
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.h ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
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
  %i.ao = fmul double %1, 5.000000e-01            ; 6 uses
  %i.ap = load ptr, ptr @_ZZN5State22calc_finite_differenceEdE5H_new, align 8, !tbaa !92
  %i.aq = load ptr, ptr @_ZZN5State22calc_finite_differenceEdE5U_new, align 8, !tbaa !92
  %i.ar = load ptr, ptr @_ZZN5State22calc_finite_differenceEdE5V_new, align 8, !tbaa !92
  %i.as = sext i32 %i.ab to i64
  %wide.trip.count = sext i32 %i.ac to i64
  %i.at = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.au = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> zeroinitializer ; 10 uses
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
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !70 ; 19 uses
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %indvars.iv
  %i.by = load double, ptr %i.bx, align 8, !tbaa !70 ; 11 uses
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.al, i64 %indvars.iv
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !70 ; 14 uses
  %i.cb = sext i32 %i.bo to i64                   ; 6 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !4
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.cb
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !70 ; 7 uses
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
  %i.er = load double, ptr %i.eq, align 8, !tbaa !70 ; 14 uses
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
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !70 ; 9 uses
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.dc ; 5 uses
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !4  ; 2 uses
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.fj
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !70 ; 12 uses
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
  %.01180 = phi double [ %i.ga, %bb.e ], [ 0.000000e+00, %bb.d ] ; 2 uses
  %.01155 = phi double [ %i.fy, %bb.e ], [ 0.000000e+00, %bb.d ] ; 2 uses
  %.01153 = phi double [ %i.fr, %bb.e ], [ 0.000000e+00, %bb.d ] ; 3 uses
  %.01152 = phi double [ %i.fp, %bb.e ], [ 0.000000e+00, %bb.d ] ; 6 uses
  %.01151 = phi i64 [ %i.fw, %bb.e ], [ 0, %bb.d ] ; 4 uses
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
  %.01179 = phi i64 [ %i.gr, %bb.g ], [ 0, %bb.f ] ; 4 uses
  %.01178 = phi double [ %i.gk, %bb.g ], [ 0.000000e+00, %bb.f ] ; 6 uses
  %.01177 = phi double [ %i.gm, %bb.g ], [ 0.000000e+00, %bb.f ] ; 3 uses
  %.01174 = phi double [ %i.gt, %bb.g ], [ 0.000000e+00, %bb.f ] ; 2 uses
  %.01172 = phi double [ %i.gv, %bb.g ], [ 0.000000e+00, %bb.f ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5State22calc_finite_differenceEd:bb.a
  %.sroa.speculated25.i = select i1 %i.ji, double %i.jh, double 5.000000e-01
  %i.jj = fmul double %i.iw, %.sroa.speculated25.i
  %i.jk = fdiv double %i.iw, %i.is                ; 2 uses
  %i.jl = fcmp olt double %i.jk, 5.000000e-01
  %.sroa.speculated.i = select i1 %i.jl, double %i.jk, double 5.000000e-01
  %i.jm = fmul double %i.is, %.sroa.speculated.i
  %i.jn = insertelement <2 x double> poison, double %i.ch, i64 0 ; 2 uses
  %i.jo = insertelement <2 x double> %i.jn, double %i.by, i64 1 ; 3 uses
  %i.jp = fmul <2 x double> %i.jo, %i.jo
  %i.jq = fmul double %i.cf, %i.cf
  %i.jr = fmul double %i.jq, 4.900000e+00
  %i.js = insertelement <2 x double> poison, double %i.cf, i64 0 ; 2 uses
  %i.jt = insertelement <2 x double> %i.js, double %i.bw, i64 1 ; 2 uses
  %i.ju = fdiv <2 x double> %i.jp, %i.jt          ; 2 uses
  %i.jv = extractelement <2 x double> %i.ju, i64 0
  %i.jw = fadd double %i.jr, %i.jv
  %i.jx = fmul double %i.bw, %i.bw
  %i.jy = fmul double %i.jx, 4.900000e+00         ; 2 uses
  %i.jz = extractelement <2 x double> %i.ju, i64 1
  %i.ka = fadd double %i.jy, %i.jz
  %i.kb = fmul double %i.jw, %i.ew
  %i.kc = insertelement <2 x double> poison, double %i.cj, i64 0 ; 2 uses
  %i.kd = insertelement <2 x double> %i.kc, double %i.ca, i64 1
  %i.ke = fmul <2 x double> %i.jo, %i.kd
  %i.kf = fdiv <2 x double> %i.ke, %i.jt          ; 2 uses
  %i.kg = extractelement <2 x double> %i.kf, i64 1 ; 2 uses
  %i.kh = fmul double %i.kg, %i.ep                ; 3 uses
  %i.ki = insertelement <2 x double> poison, double %i.ca, i64 0 ; 2 uses
  %i.kj = insertelement <2 x double> %i.ki, double %i.kh, i64 1 ; 2 uses
  %i.kk = insertelement <2 x double> %i.iz, double %.sroa.speculated35.i, i64 1
  %i.kl = fmul <2 x double> %i.kj, %i.kk          ; 4 uses
  %i.km = extractelement <2 x double> %i.kf, i64 0
  %i.kn = fmul double %i.km, %i.ew
  %i.ko = fmul double %i.fb, %i.fb                ; 3 uses
  %i.kp = insertelement <2 x double> poison, double %i.cq, i64 0 ; 3 uses
  %i.kq = insertelement <2 x double> %i.kp, double %i.co, i64 1
  %i.kr = shufflevector <2 x double> %i.it, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  %i.ks = fmul <2 x double> %i.kq, %i.kr
  %i.kt = insertelement <2 x double> poison, double %i.fb, i64 0 ; 2 uses
  %i.ku = shufflevector <2 x double> %i.kt, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.kv = fmul <2 x double> %i.iy, %i.ku          ; 2 uses
  %i.kw = fdiv double %i.ep, %i.fb                ; 2 uses
  %i.kx = fcmp olt double %i.kw, 1.000000e+00
  %.sroa.speculated35.i1191 = select i1 %i.kx, double %i.kw, double 1.000000e+00 ; 3 uses
  %i.ky = fdiv double %i.fb, %i.ep                ; 2 uses
  %i.kz = fcmp olt double %i.ky, 1.000000e+00
  %.sroa.speculated30.i1192 = select i1 %i.kz, double %i.ky, double 1.000000e+00 ; 2 uses
  %i.la = fdiv double %i.iw, %i.ko                ; 2 uses
  %i.lb = fcmp olt double %i.la, 5.000000e-01
  %.sroa.speculated25.i1193 = select i1 %i.lb, double %i.la, double 5.000000e-01
  %i.lc = fmul double %i.ko, %.sroa.speculated25.i1193
  %i.ld = fdiv double %i.ko, %i.iw                ; 2 uses
  %i.le = fcmp olt double %i.ld, 5.000000e-01
  %.sroa.speculated.i1194 = select i1 %i.le, double %i.ld, double 5.000000e-01
  %i.lf = fmul double %i.iw, %.sroa.speculated.i1194
  %i.lg = shufflevector <2 x double> %i.kp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lh = insertelement <2 x double> %i.kp, double %i.cs, i64 1
  %i.li = fmul <2 x double> %i.lg, %i.lh
  %i.lj = fmul double %i.co, %i.co
  %i.lk = fmul double %i.lj, 4.900000e+00
  %i.ll = insertelement <2 x double> poison, double %i.ka, i64 0
  %i.lm = insertelement <2 x double> %i.ll, double %i.by, i64 1
  %i.ln = fmul <2 x double> %i.lm, %i.kr          ; 2 uses
  %i.lo = insertelement <2 x double> poison, double %.sroa.speculated35.i, i64 0
  %i.lp = shufflevector <2 x double> %i.lo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lq = fmul <2 x double> %i.ln, %i.lp          ; 3 uses
  %i.lr = insertelement <2 x double> %i.it, double %i.jj, i64 1 ; 2 uses
  %i.ls = insertelement <2 x double> %i.iz, double %i.jm, i64 1
  %i.lt = fadd <2 x double> %i.lr, %i.ls          ; 7 uses
  %i.lu = insertelement <2 x double> %i.jn, double %i.kb, i64 1
  %i.lv = insertelement <2 x double> %i.lr, double %.sroa.speculated30.i, i64 1
  %i.lw = fmul <2 x double> %i.lu, %i.lv          ; 2 uses
  %i.lx = insertelement <2 x double> %i.kc, double %i.kn, i64 1
  %i.ly = insertelement <2 x double> %i.it, double %.sroa.speculated30.i, i64 1 ; 3 uses
  %i.lz = fmul <2 x double> %i.lx, %i.ly          ; 2 uses
  %i.ma = fadd <2 x double> %i.kl, %i.lz
  %i.mb = fsub <2 x double> %i.kl, %i.lz
  %i.mc = shufflevector <2 x double> %i.ma, <2 x double> %i.mb, <2 x i32> <i32 0, i32 3>
  %i.md = fdiv <2 x double> %i.mc, %i.lt          ; 2 uses
  %i.me = insertelement <2 x double> %i.js, double %i.je, i64 1
  %i.mf = fmul <2 x double> %i.me, %i.ly          ; 2 uses
  %i.mg = shufflevector <2 x double> %i.jb, <2 x double> %i.lq, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.mh = fadd <2 x double> %i.mg, %i.mf
  %i.mi = fsub <2 x double> %i.mg, %i.mf
  %i.mj = shufflevector <2 x double> %i.mh, <2 x double> %i.mi, <2 x i32> <i32 0, i32 3>
  %i.mk = fdiv <2 x double> %i.mj, %i.lt          ; 2 uses
  %i.ml = shufflevector <2 x double> %i.jb, <2 x double> %i.lq, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.mm = fadd <2 x double> %i.ml, %i.lw
  %i.mn = fsub <2 x double> %i.ml, %i.lw
  %i.mo = shufflevector <2 x double> %i.mm, <2 x double> %i.mn, <2 x i32> <i32 0, i32 3>
  %i.mp = fdiv <2 x double> %i.mo, %i.lt          ; 2 uses
  %i.mq = shufflevector <2 x double> %i.mp, <2 x double> %i.mk, <2 x i32> <i32 1, i32 3>
  %i.mr = fmul <2 x double> %i.au, %i.mq
  %i.ms = shufflevector <2 x double> %i.mp, <2 x double> %i.mk, <2 x i32> <i32 0, i32 2>
  %i.mt = fsub <2 x double> %i.ms, %i.mr          ; 8 uses
  %i.mu = extractelement <2 x double> %i.mt, i64 1 ; 4 uses
  %i.mv = extractelement <2 x double> %i.mt, i64 0 ; 2 uses
  %i.mw = insertelement <2 x double> poison, double %.sroa.speculated30.i1192, i64 0
  %i.mx = shufflevector <2 x double> %i.mw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.my = fmul <2 x double> %i.ln, %i.mx          ; 2 uses
  %i.mz = insertelement <2 x double> poison, double %i.co, i64 0
  %i.na = shufflevector <2 x double> %i.mz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nb = fdiv <2 x double> %i.li, %i.na          ; 2 uses
  %i.nc = extractelement <2 x double> %i.nb, i64 0
  %i.nd = fadd double %i.lk, %i.nc
  %i.ne = extractelement <2 x double> %i.nb, i64 1
  %i.nf = fmul double %i.ne, %i.fb
  %i.ng = insertelement <2 x double> %i.it, double %i.lc, i64 1 ; 2 uses
  %i.nh = insertelement <2 x double> %i.kt, double %i.lf, i64 1 ; 2 uses
  %i.ni = fadd <2 x double> %i.ng, %i.nh          ; 6 uses
  %i.nj = fadd <2 x double> %i.ks, %i.kv
  %i.nk = shufflevector <2 x double> %i.ni, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.nl = fdiv <2 x double> %i.nj, %i.nk          ; 2 uses
  %i.nm = insertelement <2 x double> poison, double %i.nd, i64 0
  %i.nn = insertelement <2 x double> %i.nm, double %i.cq, i64 1
  %i.no = fmul <2 x double> %i.nn, %i.ku
  %i.np = insertelement <2 x double> poison, double %.sroa.speculated35.i1191, i64 0
  %i.nq = shufflevector <2 x double> %i.np, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.nr = fmul <2 x double> %i.no, %i.nq
  %i.ns = fsub <2 x double> %i.nr, %i.my
  %i.nt = shufflevector <2 x double> %i.ni, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.nu = fdiv <2 x double> %i.ns, %i.nt          ; 2 uses
  %i.nv = insertelement <2 x double> %i.nh, double %.sroa.speculated30.i1192, i64 1
  %i.nw = fmul <2 x double> %i.kj, %i.nv          ; 4 uses
  %i.nx = insertelement <2 x double> poison, double %i.cs, i64 0
  %i.ny = insertelement <2 x double> %i.nx, double %i.nf, i64 1
  %i.nz = insertelement <2 x double> %i.it, double %.sroa.speculated35.i1191, i64 1
  %i.oa = fmul <2 x double> %i.ny, %i.nz          ; 2 uses
  %i.ob = fadd <2 x double> %i.oa, %i.nw
  %i.oc = fsub <2 x double> %i.oa, %i.nw
  %i.od = shufflevector <2 x double> %i.ob, <2 x double> %i.oc, <2 x i32> <i32 0, i32 3>
  %i.oe = fdiv <2 x double> %i.od, %i.ni          ; 2 uses
  %i.of = fmul double %i.fl, %i.fl                ; 6 uses
  %i.og = fmul double %i.er, %i.er                ; 6 uses
  %i.oh = insertelement <2 x double> %i.ki, double %i.bw, i64 1 ; 2 uses
  %i.oi = insertelement <2 x double> poison, double %i.fl, i64 0 ; 4 uses
  %i.oj = shufflevector <2 x double> %i.oi, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ok = fmul <2 x double> %i.oh, %i.oj          ; 3 uses
  %i.ol = fmul double %i.ca, %i.er                ; 2 uses
  %i.om = fdiv double %i.fl, %i.er                ; 2 uses
  %i.on = fcmp olt double %i.om, 1.000000e+00
  %.sroa.speculated35.i1203 = select i1 %i.on, double %i.om, double 1.000000e+00 ; 3 uses
  %i.oo = fmul double %i.dk, %i.fl
  %i.op = fdiv double %i.er, %i.fl                ; 2 uses
  %i.oq = fcmp olt double %i.op, 1.000000e+00
  %.sroa.speculated30.i1204 = select i1 %i.oq, double %i.op, double 1.000000e+00 ; 3 uses
  %i.or = fmul double %i.oo, %.sroa.speculated30.i1204
  %i.os = fdiv double %i.of, %i.og                ; 2 uses
  %i.ot = fcmp olt double %i.os, 5.000000e-01
  %.sroa.speculated25.i1205 = select i1 %i.ot, double %i.os, double 5.000000e-01
  %i.ou = fmul double %i.og, %.sroa.speculated25.i1205
  %i.ov = fdiv double %i.og, %i.of                ; 2 uses
  %i.ow = fcmp olt double %i.ov, 5.000000e-01
  %.sroa.speculated.i1206 = select i1 %i.ow, double %i.ov, double 5.000000e-01
  %i.ox = fmul double %i.of, %.sroa.speculated.i1206
  %i.oy = insertelement <2 x double> poison, double %i.dg, i64 0
  %i.oz = insertelement <2 x double> %i.oy, double %i.ol, i64 1
  %i.pa = insertelement <2 x double> poison, double %i.er, i64 0 ; 2 uses
  %i.pb = insertelement <2 x double> %i.pa, double %.sroa.speculated35.i1203, i64 1 ; 2 uses
  %i.pc = fmul <2 x double> %i.oz, %i.pb          ; 2 uses
  %i.pd = shufflevector <2 x double> %i.ok, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.pe = insertelement <2 x double> %i.pd, double %i.or, i64 1 ; 2 uses
  %i.pf = fadd <2 x double> %i.pc, %i.pe
  %i.pg = fsub <2 x double> %i.pc, %i.pe
  %i.ph = shufflevector <2 x double> %i.pf, <2 x double> %i.pg, <2 x i32> <i32 0, i32 3>
  %i.pi = insertelement <2 x double> %i.pb, double %i.ou, i64 1
  %i.pj = insertelement <2 x double> %i.oi, double %i.ox, i64 1
  %i.pk = fadd <2 x double> %i.pi, %i.pj          ; 3 uses
  %i.pl = fdiv <2 x double> %i.ph, %i.pk          ; 2 uses
  %i.pm = fmul double %i.by, %i.fl                ; 2 uses
  %i.pn = fmul double %i.di, %i.er
  %i.po = fadd double %i.pn, %i.pm
  %i.pp = fmul double %i.di, %i.dk
  %i.pq = insertelement <2 x double> poison, double %i.pp, i64 0
  %i.pr = insertelement <2 x double> %i.pq, double %i.po, i64 1
  %i.ps = shufflevector <2 x double> %i.pk, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.pt = insertelement <2 x double> %i.ps, double %i.dg, i64 0
  %i.pu = fdiv <2 x double> %i.pr, %i.pt          ; 2 uses
  %i.pv = fmul double %i.kg, %i.er                ; 2 uses
  %i.pw = fmul double %i.pv, %.sroa.speculated35.i1203
  %i.px = extractelement <2 x double> %i.pu, i64 0
  %i.py = fmul double %i.px, %i.fl
  %i.pz = fmul double %i.py, %.sroa.speculated30.i1204
  %i.qa = fmul double %i.dk, %i.dk
  %i.qb = fsub double %i.pw, %i.pz
  %i.qc = insertelement <2 x double> poison, double %i.qb, i64 0
  %i.qd = insertelement <2 x double> %i.qc, double %i.qa, i64 1
  %i.qe = insertelement <2 x double> %i.ps, double %i.dg, i64 1
  %i.qf = fdiv <2 x double> %i.qd, %i.qe          ; 2 uses
  %i.qg = fmul double %i.dg, %i.dg
  %i.qh = fmul double %i.qg, 4.900000e+00
  %i.qi = extractelement <2 x double> %i.qf, i64 1
  %i.qj = fadd double %i.qh, %i.qi
  %i.qk = fmul double %i.dk, %i.er
  %i.ql = extractelement <2 x double> %i.ok, i64 0
  %i.qm = fadd double %i.qk, %i.ql
  %i.qn = fmul double %i.ca, %i.ca
  %i.qo = insertelement <2 x double> poison, double %i.qn, i64 0
  %i.qp = insertelement <2 x double> %i.qo, double %i.qm, i64 1
  %i.qq = insertelement <2 x double> %i.ps, double %i.bw, i64 0
  %i.qr = fdiv <2 x double> %i.qp, %i.qq          ; 3 uses
  %i.qs = extractelement <2 x double> %i.qr, i64 0
  %i.qt = fadd double %i.jy, %i.qs                ; 3 uses
  %i.qu = fmul double %i.qt, %i.er                ; 2 uses
  %i.qv = fmul double %i.qj, %i.fl
  %i.qw = fmul double %i.qv, %.sroa.speculated30.i1204
  %i.qx = insertelement <2 x double> poison, double %i.fg, i64 0 ; 4 uses
  %i.qy = shufflevector <2 x double> %i.qx, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.qz = fmul <2 x double> %i.oh, %i.qy          ; 3 uses
  %i.ra = insertelement <2 x double> poison, double %i.qu, i64 0
  %i.rb = insertelement <2 x double> %i.ra, double %i.cx, i64 1
  %i.rc = insertelement <2 x double> poison, double %.sroa.speculated35.i1203, i64 0
  %i.rd = insertelement <2 x double> %i.rc, double %i.er, i64 1
  %i.re = fmul <2 x double> %i.rb, %i.rd          ; 2 uses
  %i.rf = insertelement <2 x double> %i.qz, double %i.qw, i64 0 ; 2 uses
  %i.rg = fsub <2 x double> %i.re, %i.rf
  %i.rh = fadd <2 x double> %i.re, %i.rf
  %i.ri = shufflevector <2 x double> %i.rg, <2 x double> %i.rh, <2 x i32> <i32 0, i32 3>
  %i.rj = fmul double %i.db, %i.fg
  %i.rk = fdiv double %i.er, %i.fg                ; 2 uses
  %i.rl = fcmp olt double %i.rk, 1.000000e+00
  %.sroa.speculated35.i1215 = select i1 %i.rl, double %i.rk, double 1.000000e+00 ; 3 uses
  %i.rm = fmul double %i.rj, %.sroa.speculated35.i1215
  %i.rn = fdiv double %i.fg, %i.er                ; 2 uses
  %i.ro = fcmp olt double %i.rn, 1.000000e+00
  %.sroa.speculated30.i1216 = select i1 %i.ro, double %i.rn, double 1.000000e+00 ; 3 uses
  %i.rp = fmul double %i.ol, %.sroa.speculated30.i1216
  %i.rq = extractelement <2 x double> %i.iv, i64 1 ; 4 uses
  %i.rr = fdiv double %i.og, %i.rq                ; 2 uses
  %i.rs = fcmp olt double %i.rr, 5.000000e-01
  %.sroa.speculated25.i1217 = select i1 %i.rs, double %i.rr, double 5.000000e-01
  %i.rt = fmul double %i.rq, %.sroa.speculated25.i1217
  %i.ru = fdiv double %i.rq, %i.og                ; 2 uses
  %i.rv = fcmp olt double %i.ru, 5.000000e-01
  %.sroa.speculated.i1218 = select i1 %i.rv, double %i.ru, double 5.000000e-01
  %i.rw = fmul double %i.og, %.sroa.speculated.i1218
  %i.rx = fmul double %i.cz, %i.db
  %i.ry = fsub double %i.rm, %i.rp
  %i.rz = insertelement <2 x double> poison, double %i.ry, i64 0
  %i.sa = insertelement <2 x double> %i.rz, double %i.rx, i64 1
  %i.sb = insertelement <2 x double> %i.pa, double %i.rt, i64 1 ; 2 uses
  %i.sc = insertelement <2 x double> %i.qx, double %i.rw, i64 1 ; 2 uses
  %i.sd = fadd <2 x double> %i.sb, %i.sc          ; 4 uses
  %i.se = shufflevector <2 x double> %i.pk, <2 x double> %i.sd, <2 x i32> <i32 1, i32 2>
  %i.sf = fdiv <2 x double> %i.ri, %i.se          ; 3 uses
  %i.sg = extractelement <2 x double> %i.sf, i64 1
  %i.sh = shufflevector <2 x double> %i.sd, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.si = insertelement <2 x double> %i.sh, double %i.cx, i64 1
  %i.sj = fdiv <2 x double> %i.sa, %i.si          ; 2 uses
  %i.sk = extractelement <2 x double> %i.sj, i64 0
  %i.sl = fmul double %i.ao, %i.sk
  %i.sm = fsub double %i.sg, %i.sl                ; 6 uses
  %i.sn = extractelement <2 x double> %i.sj, i64 1
  %i.so = fmul double %i.sn, %i.fg
  %i.sp = insertelement <2 x double> poison, double %i.cz, i64 0
  %i.sq = insertelement <2 x double> %i.sp, double %i.so, i64 1
  %i.sr = insertelement <2 x double> %i.sb, double %.sroa.speculated35.i1215, i64 1
  %i.ss = fmul <2 x double> %i.sq, %i.sr          ; 2 uses
  %i.st = insertelement <2 x double> %i.ix, double %i.pv, i64 1
  %i.su = insertelement <2 x double> %i.sc, double %.sroa.speculated30.i1216, i64 1
  %i.sv = fmul <2 x double> %i.st, %i.su          ; 3 uses
  %i.sw = fadd <2 x double> %i.ss, %i.sv
  %i.sx = fsub <2 x double> %i.ss, %i.sv
  %i.sy = shufflevector <2 x double> %i.sw, <2 x double> %i.sx, <2 x i32> <i32 0, i32 3>
  %i.sz = fdiv <2 x double> %i.sy, %i.sd          ; 2 uses
  %i.ta = fmul double %i.cx, %i.cx
  %i.tb = fmul double %i.ta, 4.900000e+00
  %i.tc = fmul double %i.db, %i.er
  %i.td = extractelement <2 x double> %i.qz, i64 0
  %i.te = fadd double %i.tc, %i.td
  %i.tf = fmul double %i.db, %i.db
  %i.tg = insertelement <2 x double> poison, double %i.tf, i64 0
  %i.th = insertelement <2 x double> %i.tg, double %i.te, i64 1
  %i.ti = insertelement <2 x double> %i.sh, double %i.cx, i64 0
  %i.tj = fdiv <2 x double> %i.th, %i.ti          ; 2 uses
  %i.tk = extractelement <2 x double> %i.tj, i64 0
  %i.tl = fadd double %i.tb, %i.tk
  %i.tm = fmul double %i.tl, %i.fg
  %i.tn = fmul double %i.tm, %.sroa.speculated35.i1215
  %i.to = fmul double %i.qu, %.sroa.speculated30.i1216
  %foldExtExtBinop = fmul <2 x double> %i.mt, %i.mt
  %i.tp = fsub double %i.tn, %i.to
  %i.tq = insertelement <2 x double> poison, double %i.tp, i64 0
  %i.tr = shufflevector <2 x double> %i.tq, <2 x double> %foldExtExtBinop, <2 x i32> <i32 0, i32 2>
  %i.ts = shufflevector <2 x double> %i.sd, <2 x double> %i.mt, <2 x i32> <i32 1, i32 3>
  %i.tt = fdiv <2 x double> %i.tr, %i.ts          ; 2 uses
  %i.tu = fmul double %i.mu, %i.mu
  %i.tv = fmul double %i.tu, 4.900000e+00
  %i.tw = extractelement <2 x double> %i.tt, i64 1
  %i.tx = fadd double %i.tw, %i.tv                ; 2 uses
  %i.ty = shufflevector <2 x double> %i.md, <2 x double> %i.nu, <2 x i32> <i32 1, i32 2>
  %i.tz = fmul <2 x double> %i.au, %i.ty
  %i.ua = shufflevector <2 x double> %i.md, <2 x double> %i.nl, <2 x i32> <i32 0, i32 2>
  %i.ub = fsub <2 x double> %i.ua, %i.tz          ; 4 uses
  %i.uc = shufflevector <2 x double> %i.mt, <2 x double> %i.ub, <2 x i32> <i32 0, i32 3>
  %i.ud = fmul <2 x double> %i.uc, %i.ub
  %i.ue = shufflevector <2 x double> %i.nu, <2 x double> %i.pl, <2 x i32> <i32 1, i32 3>
  %i.uf = fmul <2 x double> %i.au, %i.ue
  %i.ug = shufflevector <2 x double> %i.nl, <2 x double> %i.pl, <2 x i32> <i32 1, i32 2>
  %i.uh = fsub <2 x double> %i.ug, %i.uf          ; 7 uses
  %i.ui = shufflevector <2 x double> %i.oe, <2 x double> %i.qf, <2 x i32> <i32 1, i32 2>
  %i.uj = fmul <2 x double> %i.au, %i.ui
  %i.uk = shufflevector <2 x double> %i.oe, <2 x double> %i.pu, <2 x i32> <i32 0, i32 3>
  %i.ul = fsub <2 x double> %i.uk, %i.uj
  %i.um = shufflevector <2 x double> %i.mt, <2 x double> %i.uh, <2 x i32> <i32 1, i32 2>
  %i.un = fdiv <2 x double> %i.ud, %i.um          ; 3 uses
  %i.uo = extractelement <2 x double> %i.uh, i64 0 ; 2 uses
  %foldExtExtBinop1341 = fmul <2 x double> %i.uh, %i.uh
  %i.up = extractelement <2 x double> %foldExtExtBinop1341, i64 0
  %i.uq = fmul double %i.up, 4.900000e+00
  %i.ur = extractelement <2 x double> %i.un, i64 1
  %i.us = fadd double %i.ur, %i.uq                ; 2 uses
  %i.ut = extractelement <2 x double> %i.uh, i64 1 ; 4 uses
  %i.uu = fmul double %i.ut, %i.ut
  %i.uv = fmul double %i.uu, 4.900000e+00
  %3 = shufflevector <2 x double> %i.sf, <2 x double> %i.sz, <2 x i32> <i32 0, i32 3>
  %4 = fmul <2 x double> %i.au, %3
  %i.uw = shufflevector <2 x double> %i.sf, <2 x double> %i.tt, <2 x i32> <i32 0, i32 2>
  %i.ux = fmul <2 x double> %i.au, %i.uw
  %5 = shufflevector <2 x double> %i.qr, <2 x double> %i.sz, <2 x i32> <i32 1, i32 2>
  %6 = fsub <2 x double> %5, %4
  %i.uy = shufflevector <2 x double> %i.qr, <2 x double> %i.tj, <2 x i32> <i32 1, i32 3>
  %i.uz = fsub <2 x double> %i.uy, %i.ux          ; 5 uses
  %i.va = shufflevector <2 x double> %i.ub, <2 x double> %i.uz, <2 x i32> <i32 1, i32 2>
  %i.vb = fmul <2 x double> %i.va, %i.ul
  %i.vc = fdiv <2 x double> %i.vb, %i.uh          ; 3 uses
  %i.vd = fmul <2 x double> %i.uz, %6
  %i.ve = shufflevector <2 x double> %i.uh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.vf = insertelement <2 x double> %i.ve, double %i.sm, i64 1
  %i.vg = fdiv <2 x double> %i.vd, %i.vf          ; 2 uses
  %i.vh = extractelement <2 x double> %i.vg, i64 0
  %i.vi = fadd double %i.vh, %i.uv                ; 2 uses
  %i.vj = extractelement <2 x double> %i.uz, i64 1 ; 5 uses
  %i.vk = fmul double %i.vj, %i.vj
  %i.vl = fdiv double %i.vk, %i.sm
  %i.vm = fmul double %i.sm, %i.sm
  %i.vn = fmul double %i.vm, 4.900000e+00
  %i.vo = fadd double %i.vl, %i.vn                ; 2 uses
  %i.vp = extractelement <2 x double> %i.un, i64 0
  br i1 %i.fm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.vq = fmul <2 x double> %i.kr, %i.gf
  %i.vr = shufflevector <2 x double> %i.gg, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.vs = fmul <2 x double> %i.gg, %i.vr
  %i.vt = fmul double %.01152, %.01152
  %i.vu = fmul double %i.vt, 4.900000e+00
  %i.vv = fadd <2 x double> %i.jb, %i.vq
  %i.vw = shufflevector <2 x double> %i.lt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vx = fdiv <2 x double> %i.vv, %i.vw
  %i.vy = shufflevector <2 x double> %i.gf, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.vz = insertelement <2 x double> poison, double %.sroa.speculated30.i, i64 0
  %i.wa = shufflevector <2 x double> %i.vz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wb = shufflevector <2 x double> %i.lt, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.wc = insertelement <2 x double> poison, double %.01152, i64 0
  %i.wd = shufflevector <2 x double> %i.wc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.we = fdiv <2 x double> %i.vs, %i.wd          ; 2 uses
  %i.wf = extractelement <2 x double> %i.we, i64 1
  %i.wg = fadd double %i.wf, %i.vu
  %i.wh = insertelement <2 x double> %i.vy, double %i.wg, i64 0
  %i.wi = fmul <2 x double> %i.ja, %i.wh
  %i.wj = fmul <2 x double> %i.wa, %i.wi
  %i.wk = fsub <2 x double> %i.lq, %i.wj
  %i.wl = fdiv <2 x double> %i.wk, %i.wb
  %i.wm = fmul <2 x double> %i.au, %i.wl
  %i.wn = fsub <2 x double> %i.vx, %i.wm          ; 7 uses
  %i.wo = extractelement <2 x double> %i.we, i64 0
  %i.wp = fmul double %i.ew, %i.wo
  %i.wq = insertelement <2 x double> %i.gg, double %i.wp, i64 1
  %i.wr = fmul <2 x double> %i.ly, %i.wq          ; 2 uses
  %i.ws = fadd <2 x double> %i.kl, %i.wr
  %i.wt = fsub <2 x double> %i.kl, %i.wr
  %i.wu = shufflevector <2 x double> %i.ws, <2 x double> %i.wt, <2 x i32> <i32 0, i32 3>
  %i.wv = fdiv <2 x double> %i.wu, %i.lt          ; 2 uses
  %i.ww = extractelement <2 x double> %i.wv, i64 1
  %i.wx = fmul double %i.ao, %i.ww
  %i.wy = extractelement <2 x double> %i.wv, i64 0
  %i.wz = fsub double %i.wy, %i.wx
  %foldExtExtBinop1343 = fadd <2 x double> %i.mt, %i.wn
  %i.xa = extractelement <2 x double> %foldExtExtBinop1343, i64 0
  %i.xb = fmul double %i.xa, 5.000000e-01
  %foldExtExtBinop1345 = fmul <2 x double> %i.wn, %i.wn
  %i.xc = extractelement <2 x double> %foldExtExtBinop1345, i64 1
  %i.xd = fmul double %i.xc, 4.900000e+00
  %i.xe = insertelement <2 x double> %i.wn, double %i.wz, i64 1
  %i.xf = shufflevector <2 x double> %i.wn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xg = fmul <2 x double> %i.xe, %i.xf
  %i.xh = shufflevector <2 x double> %i.wn, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.xi = fdiv <2 x double> %i.xg, %i.xh          ; 2 uses
  %i.xj = extractelement <2 x double> %i.xi, i64 0
  %i.xk = fadd double %i.xd, %i.xj
  %i.xl = fadd double %i.tx, %i.xk
  %i.xm = fmul double %i.xl, 5.000000e-01
  %shift = shufflevector <2 x double> %i.xi, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1347 = fadd <2 x double> %i.un, %shift
  %i.xn = extractelement <2 x double> %foldExtExtBinop1347, i64 0
  %i.xo = fmul double %i.xn, 5.000000e-01
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.01143 = phi double [ %i.xb, %bb.m ], [ %i.mv, %bb.l ]
  %.01142 = phi double [ %i.xm, %bb.m ], [ %i.tx, %bb.l ]
  %.01141 = phi double [ %i.xo, %bb.m ], [ %i.vp, %bb.l ]
  %i.xp = phi <2 x double> [ %i.wn, %bb.m ], [ zeroinitializer, %bb.l ] ; 4 uses
  %i.xq = extractelement <2 x double> %i.ub, i64 1 ; 3 uses
  %i.xr = extractelement <2 x double> %i.vc, i64 0
  br i1 %i.gh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.xs = fmul <2 x double> %i.kr, %i.ha
  %i.xt = shufflevector <2 x double> %i.hb, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.xu = fmul <2 x double> %i.xt, %i.hb
  %i.xv = fmul double %.01178, %.01178
  %i.xw = fmul double %i.xv, 4.900000e+00
  %i.xx = fadd <2 x double> %i.kv, %i.xs
  %i.xy = fdiv <2 x double> %i.xx, %i.nk
  %i.xz = shufflevector <2 x double> %i.ha, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ya = shufflevector <2 x double> %i.ni, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.yb = insertelement <2 x double> poison, double %.01178, i64 0
  %i.yc = shufflevector <2 x double> %i.yb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.yd = fdiv <2 x double> %i.xu, %i.yc          ; 2 uses
  %i.ye = extractelement <2 x double> %i.yd, i64 1
  %i.yf = fadd double %i.xw, %i.ye
  %i.yg = insertelement <2 x double> %i.xz, double %i.yf, i64 0
  %i.yh = fmul <2 x double> %i.ku, %i.yg
  %i.yi = fmul <2 x double> %i.nq, %i.yh
  %i.yj = fsub <2 x double> %i.yi, %i.my
  %i.yk = fdiv <2 x double> %i.yj, %i.ya
  %i.yl = fmul <2 x double> %i.au, %i.yk
  %i.ym = fsub <2 x double> %i.xy, %i.yl          ; 7 uses
  %i.yn = extractelement <2 x double> %i.yd, i64 0
  %i.yo = fmul double %i.fb, %i.yn
  %i.yp = insertelement <2 x double> %i.ng, double %.sroa.speculated35.i1191, i64 1
  %i.yq = insertelement <2 x double> %i.hb, double %i.yo, i64 1
  %i.yr = fmul <2 x double> %i.yp, %i.yq          ; 2 uses
  %i.ys = fadd <2 x double> %i.yr, %i.nw
  %i.yt = fsub <2 x double> %i.yr, %i.nw
  %i.yu = shufflevector <2 x double> %i.ys, <2 x double> %i.yt, <2 x i32> <i32 0, i32 3>
  %i.yv = fdiv <2 x double> %i.yu, %i.ni          ; 2 uses
  %i.yw = extractelement <2 x double> %i.yv, i64 1
  %i.yx = fmul double %i.ao, %i.yw
  %i.yy = extractelement <2 x double> %i.yv, i64 0
  %i.yz = fsub double %i.yy, %i.yx
  %i.za = extractelement <2 x double> %i.ym, i64 0
  %i.zb = fadd double %i.xq, %i.za
  %i.zc = fmul double %i.zb, 5.000000e-01
  %foldExtExtBinop1349 = fmul <2 x double> %i.ym, %i.ym
  %i.zd = extractelement <2 x double> %foldExtExtBinop1349, i64 1
  %i.ze = fmul double %i.zd, 4.900000e+00
  %i.zf = shufflevector <2 x double> %i.ym, <2 x double> poison, <2 x i32> zeroinitializer
  %i.zg = insertelement <2 x double> %i.ym, double %i.yz, i64 1
  %i.zh = fmul <2 x double> %i.zf, %i.zg
  %i.zi = shufflevector <2 x double> %i.ym, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.zj = fdiv <2 x double> %i.zh, %i.zi          ; 2 uses
  %i.zk = extractelement <2 x double> %i.zj, i64 0
  %i.zl = fadd double %i.ze, %i.zk
  %i.zm = fadd double %i.us, %i.zl
  %i.zn = fmul double %i.zm, 5.000000e-01
  %shift1351 = shufflevector <2 x double> %i.zj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1352 = fadd <2 x double> %i.vc, %shift1351
  %i.zo = extractelement <2 x double> %foldExtExtBinop1352, i64 0
  %i.zp = fmul double %i.zo, 5.000000e-01
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.01140 = phi double [ %i.zc, %bb.o ], [ %i.xq, %bb.n ]
  %.01139 = phi double [ %i.zn, %bb.o ], [ %i.us, %bb.n ]
  %.01138 = phi double [ %i.zp, %bb.o ], [ %i.xr, %bb.n ]
  %i.zq = phi <2 x double> [ %i.ym, %bb.o ], [ zeroinitializer, %bb.n ] ; 4 uses
  %i.zr = extractelement <2 x double> %i.vc, i64 1 ; 2 uses
  %i.zs = extractelement <2 x double> %i.uz, i64 0 ; 2 uses
  br i1 %i.hc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.zt = fmul <2 x double> %i.kr, %i.hv
  %i.zu = insertelement <2 x double> poison, double %i.qt, i64 0
  %i.zv = insertelement <2 x double> %i.zu, double %i.ca, i64 1
  %i.zw = fmul <2 x double> %i.zv, %i.kr
  %i.zx = insertelement <2 x double> %i.oi, double %i.ep, i64 1
  %i.zy = insertelement <2 x double> %i.it, double %i.fl, i64 1
  %i.zz = fdiv <2 x double> %i.zx, %i.zy          ; 2 uses
  %i.aaa = insertelement <2 x double> %i.iv, double %i.of, i64 1
  %i.aab = shufflevector <2 x double> %i.iv, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.aac = insertelement <2 x double> %i.aab, double %i.of, i64 0
  %i.aad = fdiv <2 x double> %i.aaa, %i.aac       ; 3 uses
  %i.aae = fcmp olt <2 x double> %i.aad, splat (double 5.000000e-01) ; 2 uses
  %i.aaf = extractelement <2 x i1> %i.aae, i64 1
  %i.aag = extractelement <2 x double> %i.aad, i64 1
  %.sroa.speculated25.i1253 = select i1 %i.aaf, double %i.aag, double 5.000000e-01
  %i.aah = fmul double %i.iw, %.sroa.speculated25.i1253
  %i.aai = extractelement <2 x i1> %i.aae, i64 0
  %i.aaj = extractelement <2 x double> %i.aad, i64 0
  %.sroa.speculated.i1254 = select i1 %i.aai, double %i.aaj, double 5.000000e-01
  %i.aak = fmul double %i.of, %.sroa.speculated.i1254
  %i.aal = shufflevector <2 x double> %i.hw, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aam = fmul <2 x double> %i.aal, %i.hw
  %i.aan = insertelement <2 x double> %i.it, double %i.aah, i64 1
  %i.aao = insertelement <2 x double> %i.oi, double %i.aak, i64 1
  %i.aap = fadd <2 x double> %i.aan, %i.aao       ; 3 uses
  %i.aaq = fcmp olt <2 x double> %i.zz, splat (double 1.000000e+00)
  %i.aar = select <2 x i1> %i.aaq, <2 x double> %i.zz, <2 x double> splat (double 1.000000e+00) ; 3 uses
  %i.aas = insertelement <2 x double> poison, double %i.kh, i64 0
  %i.aat = fmul double %i.ep, %.01169
  %i.aau = fadd double %i.pm, %i.aat
  %i.aav = insertelement <2 x double> poison, double %i.aau, i64 0
  %i.aaw = insertelement <2 x double> poison, double %.01170, i64 0
  %i.aax = shufflevector <2 x double> %i.aaw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aay = fdiv <2 x double> %i.aam, %i.aax       ; 2 uses
  %i.aaz = extractelement <2 x double> %i.aay, i64 0
  %i.aba = fmul double %i.fl, %i.aaz
  %i.abb = insertelement <2 x double> %i.aas, double %i.aba, i64 1
  %i.abc = fmul <2 x double> %i.abb, %i.aar       ; 2 uses
  %shift1354 = shufflevector <2 x double> %i.abc, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1355 = fsub <2 x double> %i.abc, %shift1354
  %i.abd = shufflevector <2 x double> %i.aav, <2 x double> %foldExtExtBinop1355, <2 x i32> <i32 0, i32 2>
  %i.abe = fdiv <2 x double> %i.abd, %i.aap       ; 2 uses
  %i.abf = extractelement <2 x double> %i.abe, i64 1
  %i.abg = fmul double %i.ao, %i.abf
  %i.abh = extractelement <2 x double> %i.abe, i64 0
  %i.abi = fsub double %i.abh, %i.abg
  %i.abj = fmul double %.01170, %.01170
  %i.abk = fmul double %i.abj, 4.900000e+00
  %i.abl = extractelement <2 x double> %i.aay, i64 1
  %i.abm = fadd double %i.abk, %i.abl
  %i.abn = fadd <2 x double> %i.ok, %i.zt
  %i.abo = shufflevector <2 x double> %i.aap, <2 x double> poison, <2 x i32> zeroinitializer
  %i.abp = fdiv <2 x double> %i.abn, %i.abo
end_hunk_1
