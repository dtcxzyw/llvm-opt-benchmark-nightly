Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/state?download=true
inline.NumInlined: 698
inline.NumDeleted: 221
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5State13state_reorderESt6vectorIiSaIiEE:bb.a
  %i.k = load ptr, ptr %1, align 8, !tbaa !66
  %i.l = tail call noundef ptr @_ZN10MallocPlus14memory_reorderEPdPi(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.j, ptr noundef nonnull %i.k)
  store ptr %i.l, ptr %i.i, align 8, !tbaa !56
  ret void
}

declare noundef ptr @_ZN10MallocPlus14memory_reorderEPdPi(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5State10rezone_allEiiSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(368) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %struct.timeval, align 8            ; 6 uses
  %5 = alloca %"class.std::vector", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @cpu_timer_start(ptr noundef nonnull %4)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67   ; 2 uses
  %i.e = load ptr, ptr %3, align 8, !tbaa !66     ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %i.h, 9223372036854775804
  br i1 %i.i, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !111

.noexc.i.i:                                       ; preds = %bb.b
  call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #23
  %.pre = load ptr, ptr %3, align 8, !tbaa !72    ; 2 uses
  %.pre6 = load ptr, ptr %i.c, align 8, !tbaa !72
  %.pre7 = ptrtoint ptr %.pre6 to i64
  %.pre8 = ptrtoint ptr %.pre to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi9 = phi i64 [ %.pre8, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.g, %bb.a ]
  %.pre-phi = phi i64 [ %.pre7, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.f, %bb.a ]
  %i.k = phi ptr [ %.pre, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.l = phi ptr [ %i.j, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 5 uses
  store ptr %i.l, ptr %5, align 8, !tbaa !66
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.h
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !74
  %i.p = sub i64 %.pre-phi, %.pre-phi9            ; 4 uses
  %i.q = icmp sgt i64 %i.p, 4
  br i1 %i.q, label %bb.d, label %bb.e, !prof !112

bb.d:                                             ; preds = %bb.c
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.l, ptr align 4 %i.k, i64 %i.p, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.r = icmp eq i64 %i.p, 4
  br i1 %i.r, label %bb.f, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %i.k, align 4, !tbaa !9
  store i32 %i.s, ptr %i.l, align 4, !tbaa !9
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.t = getelementptr inbounds i8, ptr %i.l, i64 %i.p
  store ptr %i.t, ptr %i.m, align 8, !tbaa !67
  invoke void @_ZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlus(ptr noundef nonnull align 8 dereferenceable(2288) %i.b, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %5, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.u = load ptr, ptr %5, align 8, !tbaa !66     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !74
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.y) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.g, %bb.h
  %i.z = call noundef ptr @_ZN10MallocPlus14get_memory_ptrEPKc(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull @.str)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !54
  %i.ab = call noundef ptr @_ZN10MallocPlus14get_memory_ptrEPKc(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull @.str.1)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !55
  %i.ad = call noundef ptr @_ZN10MallocPlus14get_memory_ptrEPKc(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull @.str.2)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !56
  %.sroa.0.0.copyload = load i64, ptr %4, align 8, !tbaa !65
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !65
  %i.af = call double @cpu_timer_stop(i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !71
  %i.ai = fadd double %i.af, %i.ah
  store double %i.ai, ptr %i.ag, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %5, align 8, !tbaa !66    ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorIiSaIiEED2Ev.exit5, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = load ptr, ptr %i.o, align 8, !tbaa !74
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = sub i64 %i.am, %i.an
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ao) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit5

_ZNSt6vectorIiSaIiEED2Ev.exit5:                   ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %i.aj
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1160
  %i.f = load i64, ptr %i.e, align 8, !tbaa !53   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 1176 ; 5 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !65
  %i.i = icmp ult i64 %i.h, %i.f
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %i.f, ptr %i.g, align 8, !tbaa !65
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @_ZN5State25apply_boundary_conditionsEv(ptr noundef nonnull align 8 dereferenceable(368) %0)
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !35   ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1368
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !61   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 1376
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !62   ; 11 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 1384
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !63   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 1392
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !64   ; 11 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 1352
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !59   ; 25 uses
  %i.u = load i64, ptr %i.g, align 8, !tbaa !65
  %i.v = call noundef ptr @_ZN10MallocPlus13memory_mallocEmmPKci(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %i.u, i64 noundef 8, ptr noundef nonnull @.str.3, i32 noundef 16)
  store ptr %i.v, ptr @_ZZN5State22calc_finite_differenceEdE5H_new, align 8, !tbaa !75
  %i.w = load i64, ptr %i.g, align 8, !tbaa !65
  %i.x = call noundef ptr @_ZN10MallocPlus13memory_mallocEmmPKci(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %i.w, i64 noundef 8, ptr noundef nonnull @.str.4, i32 noundef 16)
  store ptr %i.x, ptr @_ZZN5State22calc_finite_differenceEdE5U_new, align 8, !tbaa !75
  %i.y = load i64, ptr %i.g, align 8, !tbaa !65
  %i.z = call noundef ptr @_ZN10MallocPlus13memory_mallocEmmPKci(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %i.y, i64 noundef 8, ptr noundef nonnull @.str.5, i32 noundef 16)
  store ptr %i.z, ptr @_ZZN5State22calc_finite_differenceEdE5V_new, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !35
  call void @_ZN4Mesh10get_boundsERiS0_(ptr noundef nonnull align 8 dereferenceable(2288) %i.aa, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %i.ab = load i32, ptr %i.a, align 4, !tbaa !9   ; 2 uses
  %i.ac = load i32, ptr %i.b, align 4, !tbaa !9   ; 2 uses
  %i.ad = icmp slt i32 %i.ab, %i.ac
  br i1 %i.ad, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 1072
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 1048
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !54 ; 25 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !55 ; 17 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !56 ; 17 uses
  %i.am = load ptr, ptr %i.af, align 8, !tbaa !69 ; 3 uses
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !69 ; 3 uses
  %i.ao = fmul double %1, 5.000000e-01            ; 5 uses
  %i.ap = load ptr, ptr @_ZZN5State22calc_finite_differenceEdE5H_new, align 8, !tbaa !75
  %i.aq = load ptr, ptr @_ZZN5State22calc_finite_differenceEdE5U_new, align 8, !tbaa !75
  %i.ar = load ptr, ptr @_ZZN5State22calc_finite_differenceEdE5V_new, align 8, !tbaa !75
  %i.as = sext i32 %i.ab to i64
  %wide.trip.count = sext i32 %i.ac to i64
  %i.at = insertelement <2 x double> poison, double %i.ao, i64 0 ; 2 uses
  %i.au = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> zeroinitializer ; 10 uses
  br label %bb.d

._crit_edge:                                      ; preds = %bb.bh, %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !54
  %i.ax = load ptr, ptr @_ZZN5State22calc_finite_differenceEdE5H_new, align 8, !tbaa !75
  %i.ay = call noundef ptr @_ZN10MallocPlus14memory_replaceEPvS0_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.aw, ptr noundef %i.ax)
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !54
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !55
  %i.bb = load ptr, ptr @_ZZN5State22calc_finite_differenceEdE5U_new, align 8, !tbaa !75
  %i.bc = call noundef ptr @_ZN10MallocPlus14memory_replaceEPvS0_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.ba, ptr noundef %i.bb)
  store ptr %i.bc, ptr %i.az, align 8, !tbaa !55
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !56
  %i.bf = load ptr, ptr @_ZZN5State22calc_finite_differenceEdE5V_new, align 8, !tbaa !75
  %i.bg = call noundef ptr @_ZN10MallocPlus14memory_replaceEPvS0_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.be, ptr noundef %i.bf)
  store ptr %i.bg, ptr %i.bd, align 8, !tbaa !56
  %.sroa.0.0.copyload = load i64, ptr %2, align 8, !tbaa !65
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !65
  %i.bh = call double @cpu_timer_stop(i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !71
  %i.bk = fadd double %i.bh, %i.bj
  store double %i.bk, ptr %i.bi, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.bh
  %indvars.iv = phi i64 [ %i.as, %.lr.ph ], [ %indvars.iv.next, %bb.bh ] ; 12 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.t, i64 %indvars.iv
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !9  ; 16 uses
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !9
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !9
  %i.br = getelementptr inbounds [4 x i8], ptr %i.r, i64 %indvars.iv
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !9
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !9
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %indvars.iv
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !71 ; 17 uses
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %indvars.iv
  %i.by = load double, ptr %i.bx, align 8, !tbaa !71 ; 10 uses
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.al, i64 %indvars.iv
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !71 ; 13 uses
  %i.cb = sext i32 %i.bo to i64                   ; 6 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !9
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.cb
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !71 ; 8 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.cb
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !71 ; 7 uses
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.cb
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !71
  %i.ck = sext i32 %i.bq to i64                   ; 6 uses
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !9
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ck
  %i.co = load double, ptr %i.cn, align 8, !tbaa !71 ; 9 uses
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ck
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !71 ; 9 uses
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.ck
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !71 ; 2 uses
  %i.ct = sext i32 %i.bs to i64                   ; 6 uses
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !9
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ct
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !71 ; 8 uses
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ct
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !71 ; 2 uses
  %i.da = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.ct
  %i.db = load double, ptr %i.da, align 8, !tbaa !71 ; 9 uses
  %i.dc = sext i32 %i.bu to i64                   ; 6 uses
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !9
  %i.df = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.dc
  %i.dg = load double, ptr %i.df, align 8, !tbaa !71 ; 9 uses
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.dc
  %i.di = load double, ptr %i.dh, align 8, !tbaa !71 ; 2 uses
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.dc
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !71 ; 9 uses
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.cb
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !9  ; 3 uses
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.ck
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !9  ; 3 uses
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.ct
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !9  ; 3 uses
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.dc
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !9  ; 3 uses
  %i.dt = sext i32 %i.cd to i64                   ; 4 uses
  %i.du = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.dt
  %i.dv = load double, ptr %i.du, align 8, !tbaa !71 ; 2 uses
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.dt
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !71 ; 2 uses
  %i.dy = sext i32 %i.cm to i64                   ; 4 uses
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.dy
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !71 ; 2 uses
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.dy
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !71 ; 2 uses
  %i.ed = sext i32 %i.cv to i64                   ; 4 uses
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ed
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !71 ; 2 uses
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.ed
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !71 ; 2 uses
  %i.ei = sext i32 %i.de to i64                   ; 4 uses
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ei
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !71 ; 2 uses
  %i.el = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.ei
  %i.em = load double, ptr %i.el, align 8, !tbaa !71 ; 2 uses
  %i.en = sext i32 %i.bm to i64                   ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.en
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !71 ; 16 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.en
  %i.er = load double, ptr %i.eq, align 8, !tbaa !71 ; 13 uses
  %i.es = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.cb ; 4 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !9  ; 3 uses
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.eu
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !71 ; 10 uses
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.ck ; 4 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !9  ; 2 uses
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ez
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !71 ; 9 uses
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.ct ; 5 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !9  ; 2 uses
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.fe
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !71 ; 8 uses
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.dc ; 5 uses
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !9  ; 2 uses
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.fj
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !71 ; 11 uses
  %i.fm = icmp slt i32 %i.bm, %i.et               ; 2 uses
  br i1 %i.fm, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.fn = sext i32 %i.dm to i64                   ; 4 uses
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.fn
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !71 ; 2 uses
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.fn
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !71 ; 3 uses
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.fn
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !71
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.fn
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !9
  %i.fw = sext i32 %i.fv to i64                   ; 3 uses
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.fw
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !71
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.fw
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !71
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
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !71 ; 2 uses
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.gi
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !71 ; 3 uses
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.gi
  %i.go = load double, ptr %i.gn, align 8, !tbaa !71
  %i.gp = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.gi
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !9
  %i.gr = sext i32 %i.gq to i64                   ; 3 uses
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.gr
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !71
  %i.gu = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.gr
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !71
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
  %i.hf = load double, ptr %i.he, align 8, !tbaa !71 ; 2 uses
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.hd
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !71
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.hd
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !71 ; 3 uses
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.hd
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !9
  %i.hm = sext i32 %i.hl to i64                   ; 3 uses
  %i.hn = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.hm
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !71
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.hm
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !71
  %i.hr = insertelement <2 x double> poison, double %i.hj, i64 0
  %i.hs = insertelement <2 x double> %i.hr, double %i.hf, i64 1
  %i.ht = insertelement <2 x double> poison, double %i.hh, i64 0
  %i.hu = insertelement <2 x double> %i.ht, double %i.hj, i64 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.01156 = phi i64 [ %i.hm, %bb.i ], [ 0, %bb.h ] ; 4 uses
  %.01155 = phi double [ %i.hf, %bb.i ], [ 0.000000e+00, %bb.h ] ; 6 uses
  %.01153 = phi double [ %i.hj, %bb.i ], [ 0.000000e+00, %bb.h ] ; 3 uses
  %.01151 = phi double [ %i.ho, %bb.i ], [ 0.000000e+00, %bb.h ] ; 2 uses
  %.01149 = phi double [ %i.hq, %bb.i ], [ 0.000000e+00, %bb.h ] ; 2 uses
  %i.hv = phi <2 x double> [ %i.hs, %bb.i ], [ zeroinitializer, %bb.h ] ; 2 uses
  %i.hw = phi <2 x double> [ %i.hu, %bb.i ], [ zeroinitializer, %bb.h ] ; 3 uses
  %i.hx = icmp slt i32 %i.bm, %i.fd               ; 2 uses
  br i1 %i.hx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.hy = sext i32 %i.dq to i64                   ; 4 uses
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.hy
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !71 ; 2 uses
  %i.ib = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.hy
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !71
  %i.id = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.hy
  %i.ie = load double, ptr %i.id, align 8, !tbaa !71 ; 3 uses
  %i.if = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.hy
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !9
  %i.ih = sext i32 %i.ig to i64                   ; 3 uses
  %i.ii = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ih
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !71
  %i.ik = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.ih
  %i.il = load double, ptr %i.ik, align 8, !tbaa !71
  %i.im = insertelement <2 x double> poison, double %i.ie, i64 0
  %i.in = insertelement <2 x double> %i.im, double %i.ia, i64 1
  %i.io = insertelement <2 x double> poison, double %i.ic, i64 0
  %i.ip = insertelement <2 x double> %i.io, double %i.ie, i64 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.01148 = phi i64 [ %i.ih, %bb.k ], [ 0, %bb.j ] ; 4 uses
  %.01147 = phi double [ %i.ia, %bb.k ], [ 0.000000e+00, %bb.j ] ; 6 uses
  %.01145 = phi double [ %i.ie, %bb.k ], [ 0.000000e+00, %bb.j ] ; 3 uses
  %.01143 = phi double [ %i.ij, %bb.k ], [ 0.000000e+00, %bb.j ] ; 2 uses
  %.01142 = phi double [ %i.il, %bb.k ], [ 0.000000e+00, %bb.j ] ; 2 uses
  %i.iq = phi <2 x double> [ %i.in, %bb.k ], [ zeroinitializer, %bb.j ] ; 2 uses
  %i.ir = phi <2 x double> [ %i.ip, %bb.k ], [ zeroinitializer, %bb.j ] ; 3 uses
  %i.is = fmul double %i.ew, %i.ew                ; 2 uses
  %i.it = insertelement <2 x double> poison, double %i.ep, i64 0 ; 8 uses
  %i.iu = insertelement <2 x double> %i.it, double %i.fg, i64 1 ; 3 uses
  %i.iv = fmul <2 x double> %i.iu, %i.iu          ; 10 uses
  %i.iw = shufflevector <2 x double> %i.iv, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.ix = insertelement <2 x double> poison, double %i.by, i64 0 ; 3 uses
  %i.iy = insertelement <2 x double> %i.ix, double %i.bw, i64 1 ; 2 uses
  %i.iz = insertelement <2 x double> poison, double %i.ew, i64 0 ; 2 uses
  %i.ja = shufflevector <2 x double> %i.iz, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jb = fmul <2 x double> %i.iy, %i.ja          ; 3 uses
  %3 = fmul double %i.cf, %i.ep
  %4 = extractelement <2 x double> %i.jb, i64 1
  %i.jc = insertelement <2 x double> %i.it, double %i.ew, i64 1
  %i.jd = insertelement <2 x double> %i.iz, double %i.ep, i64 1
  %i.je = fdiv <2 x double> %i.jc, %i.jd          ; 2 uses
  %i.jf = fmul double %i.ch, %i.ew
  %i.jg = insertelement <2 x double> %i.iw, double %i.is, i64 0
  %i.jh = insertelement <2 x double> %i.iv, double %i.is, i64 1 ; 2 uses
  %i.ji = fdiv <2 x double> %i.jg, %i.jh          ; 2 uses
  %i.jj = fcmp olt <2 x double> %i.ji, splat (double 5.000000e-01)
  %i.jk = select <2 x i1> %i.jj, <2 x double> %i.ji, <2 x double> splat (double 5.000000e-01)
  %i.jl = fmul <2 x double> %i.jh, %i.jk          ; 2 uses
  %i.jm = insertelement <2 x double> poison, double %i.ch, i64 0
  %i.jn = insertelement <2 x double> %i.jm, double %i.by, i64 1 ; 3 uses
  %i.jo = fmul <2 x double> %i.jn, %i.jn
  %5 = fmul double %i.cf, %i.cf
  %6 = fmul double %5, 4.900000e+00
  %i.jp = insertelement <2 x double> poison, double %i.cf, i64 0
  %7 = insertelement <2 x double> %i.jp, double %i.bw, i64 1 ; 2 uses
  %i.jq = fdiv <2 x double> %i.jo, %7
  %8 = insertelement <2 x double> poison, double %i.bw, i64 0 ; 2 uses
  %9 = insertelement <2 x double> %8, double %i.cx, i64 1 ; 2 uses
  %10 = fmul <2 x double> %9, %9
  %i.jr = extractelement <2 x double> %i.jb, i64 0
  %i.js = insertelement <2 x double> poison, double %i.cj, i64 0 ; 2 uses
  %i.jt = insertelement <2 x double> %i.js, double %i.ca, i64 1
  %i.ju = fmul <2 x double> %i.jn, %i.jt
  %i.jv = fdiv <2 x double> %i.ju, %7             ; 2 uses
  %i.jw = extractelement <2 x double> %i.jv, i64 1 ; 2 uses
  %i.jx = fmul double %i.jw, %i.ep                ; 3 uses
  %i.jy = extractelement <2 x double> %i.jv, i64 0
  %i.jz = fmul double %i.jy, %i.ew
  %i.ka = fmul double %i.fb, %i.fb                ; 3 uses
  %i.kb = insertelement <2 x double> poison, double %i.fb, i64 0 ; 3 uses
  %i.kc = shufflevector <2 x double> %i.kb, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kd = fmul <2 x double> %i.iy, %i.kc          ; 3 uses
  %i.ke = fmul double %i.cq, %i.fb
  %i.kf = insertelement <2 x double> %i.kb, double %i.ep, i64 1
  %i.kg = insertelement <2 x double> %i.it, double %i.fb, i64 1
  %i.kh = fdiv <2 x double> %i.kf, %i.kg          ; 2 uses
  %i.ki = insertelement <2 x double> %i.iv, double %i.ka, i64 1
  %i.kj = insertelement <2 x double> %i.iw, double %i.ka, i64 0
  %i.kk = fdiv <2 x double> %i.ki, %i.kj          ; 2 uses
  %i.kl = fcmp olt <2 x double> %i.kk, splat (double 5.000000e-01)
  %i.km = select <2 x i1> %i.kl, <2 x double> %i.kk, <2 x double> splat (double 5.000000e-01) ; 2 uses
  %11 = extractelement <2 x double> %i.km, i64 0
  %12 = fmul double %i.ka, %11
  %shift = shufflevector <2 x double> %i.km, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.kn = fmul <2 x double> %i.iv, %shift
  %i.ko = fmul double %i.co, %i.co
  %i.kp = fmul double %i.ko, 4.900000e+00
  %i.kq = extractelement <2 x double> %i.kd, i64 0
  %i.kr = shufflevector <2 x double> %i.it, <2 x double> poison, <2 x i32> zeroinitializer ; 7 uses
  %i.ks = fcmp olt <2 x double> %i.je, splat (double 1.000000e+00)
  %i.kt = select <2 x i1> %i.ks, <2 x double> %i.je, <2 x double> splat (double 1.000000e+00) ; 4 uses
  %i.ku = extractelement <2 x double> %i.kt, i64 0 ; 2 uses
  %13 = fmul double %i.jf, %i.ku
  %i.kv = shufflevector <2 x double> %i.kt, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.kw = fmul double %i.ch, %i.ep
  %i.kx = fadd double %i.kw, %i.jr
  %i.ky = insertelement <2 x double> poison, double %i.ca, i64 0 ; 3 uses
  %14 = insertelement <2 x double> %i.ky, double %i.jx, i64 1 ; 2 uses
  %i.kz = insertelement <2 x double> %i.kt, double %i.ew, i64 0
  %i.la = fmul <2 x double> %14, %i.kz            ; 4 uses
  %i.lb = shufflevector <2 x double> %i.jl, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.lc = insertelement <2 x double> %i.lb, double %i.ep, i64 0
  %i.ld = insertelement <2 x double> %i.jl, double %i.ew, i64 0
  %i.le = fadd <2 x double> %i.lc, %i.ld          ; 7 uses
  %15 = fadd double %3, %4
  %16 = fmul double %i.cq, %i.cq
  %17 = insertelement <2 x double> poison, double %16, i64 0
  %18 = insertelement <2 x double> %17, double %15, i64 1
  %19 = shufflevector <2 x double> %i.le, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %20 = insertelement <2 x double> %19, double %i.co, i64 0
  %i.lf = fdiv <2 x double> %18, %20              ; 2 uses
  %21 = extractelement <2 x double> %i.lf, i64 0
  %22 = fadd double %i.kp, %21
  %23 = fmul double %22, %i.fb
  %i.lg = insertelement <2 x double> %i.js, double %i.jz, i64 1
  %24 = shufflevector <2 x double> %i.kt, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %25 = insertelement <2 x double> %24, double %i.ep, i64 0 ; 2 uses
  %26 = fmul <2 x double> %i.lg, %25              ; 2 uses
  %27 = fadd <2 x double> %i.la, %26
  %28 = fsub <2 x double> %i.la, %26
  %29 = shufflevector <2 x double> %27, <2 x double> %28, <2 x i32> <i32 0, i32 3>
  %30 = fdiv <2 x double> %29, %i.le              ; 2 uses
  %i.lh = insertelement <2 x double> poison, double %i.kx, i64 0
  %31 = fcmp olt <2 x double> %i.kh, splat (double 1.000000e+00)
  %32 = select <2 x i1> %31, <2 x double> %i.kh, <2 x double> splat (double 1.000000e+00) ; 4 uses
  %i.li = extractelement <2 x double> %32, i64 1
  %33 = shufflevector <2 x double> %32, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lj = fmul double %i.cq, %i.cs
  %34 = insertelement <2 x double> %19, double %i.co, i64 1
  %35 = insertelement <2 x double> %i.it, double %12, i64 1
  %i.lk = shufflevector <2 x double> %i.kb, <2 x double> %i.kn, <2 x i32> <i32 0, i32 2>
  %i.ll = fadd <2 x double> %35, %i.lk            ; 7 uses
  %i.lm = insertelement <2 x double> poison, double %i.co, i64 0
  %i.ln = insertelement <2 x double> %i.lm, double %i.ke, i64 1
  %36 = insertelement <2 x double> %32, double %i.ep, i64 0 ; 3 uses
  %37 = fmul <2 x double> %i.ln, %36              ; 2 uses
  %i.lo = fmul double %i.cq, %i.ep
  %i.lp = fadd double %i.lo, %i.kq
  %i.lq = fmul double %23, %i.li
  %i.lr = insertelement <2 x double> poison, double %i.lp, i64 0
  %i.ls = insertelement <2 x double> %33, double %i.fb, i64 0
  %i.lt = fmul <2 x double> %14, %i.ls            ; 4 uses
  %i.lu = insertelement <2 x double> poison, double %i.cs, i64 0
  %i.lv = insertelement <2 x double> poison, double %i.fl, i64 0 ; 4 uses
  %i.lw = insertelement <2 x double> %i.lv, double %i.er, i64 1 ; 2 uses
  %i.lx = fmul <2 x double> %i.lw, %i.lw          ; 8 uses
  %i.ly = insertelement <2 x double> %i.ky, double %i.bw, i64 1 ; 2 uses
  %i.lz = shufflevector <2 x double> %i.lv, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ma = fmul <2 x double> %i.ly, %i.lz          ; 3 uses
  %i.mb = fmul double %i.dg, %i.er
  %i.mc = extractelement <2 x double> %i.ma, i64 1
  %i.md = fadd double %i.mb, %i.mc
  %i.me = fadd double %i.er, %i.fl                ; 3 uses
  %i.mf = fdiv double %i.md, %i.me
  %38 = insertelement <2 x double> %i.ky, double %i.db, i64 1
  %39 = insertelement <2 x double> poison, double %i.er, i64 0
  %40 = insertelement <2 x double> %39, double %i.fg, i64 1 ; 3 uses
  %41 = fmul <2 x double> %38, %40                ; 2 uses
  %i.mg = fdiv double %i.fl, %i.er                ; 2 uses
  %i.mh = fcmp olt double %i.mg, 1.000000e+00
  %.sroa.speculated35.i1203 = select i1 %i.mh, double %i.mg, double 1.000000e+00 ; 3 uses
  %42 = extractelement <2 x double> %41, i64 0
  %i.mi = fmul double %42, %.sroa.speculated35.i1203
  %i.mj = fmul double %i.dk, %i.fl
  %i.mk = fdiv double %i.er, %i.fl                ; 2 uses
  %i.ml = fcmp olt double %i.mk, 1.000000e+00
  %.sroa.speculated30.i1204 = select i1 %i.ml, double %i.mk, double 1.000000e+00 ; 3 uses
  %i.mm = fmul double %i.mj, %.sroa.speculated30.i1204
  %i.mn = fsub double %i.mi, %i.mm
  %i.mo = shufflevector <2 x double> %i.lx, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.mp = fdiv <2 x double> %i.mo, %i.lx          ; 2 uses
  %i.mq = fcmp olt <2 x double> %i.mp, splat (double 5.000000e-01)
  %i.mr = select <2 x i1> %i.mq, <2 x double> %i.mp, <2 x double> splat (double 5.000000e-01)
  %i.ms = fmul <2 x double> %i.lx, %i.mr          ; 2 uses
  %i.mt = fmul double %i.by, %i.fl                ; 2 uses
  %i.mu = fmul double %i.di, %i.er
  %i.mv = fmul double %i.di, %i.dk
  %i.mw = fadd double %i.mu, %i.mt
  %i.mx = insertelement <2 x double> poison, double %i.mv, i64 0
  %i.my = insertelement <2 x double> %i.mx, double %i.mw, i64 1
  %i.mz = insertelement <2 x double> poison, double %i.dg, i64 0
  %i.na = insertelement <2 x double> %i.mz, double %i.me, i64 1
  %i.nb = fdiv <2 x double> %i.my, %i.na          ; 2 uses
  %i.nc = fmul double %i.jw, %i.er                ; 2 uses
  %i.nd = fmul double %i.nc, %.sroa.speculated35.i1203
  %i.ne = extractelement <2 x double> %i.nb, i64 0
  %i.nf = fmul double %i.ne, %i.fl
  %i.ng = fmul double %i.nf, %.sroa.speculated30.i1204
  %i.nh = fsub double %i.nd, %i.ng
  %i.ni = fmul double %i.dk, %i.dk
  %i.nj = insertelement <2 x double> poison, double %i.nh, i64 0
  %i.nk = insertelement <2 x double> %i.nj, double %i.ni, i64 1
  %i.nl = fmul double %i.dg, %i.dg
  %i.nm = fmul double %i.nl, 4.900000e+00
  %i.nn = fmul double %i.dk, %i.er
  %i.no = extractelement <2 x double> %i.ma, i64 0
  %i.np = fmul double %i.ca, %i.ca
  %i.nq = fadd double %i.nn, %i.no
  %i.nr = insertelement <2 x double> poison, double %i.np, i64 0
  %i.ns = insertelement <2 x double> %i.nr, double %i.nq, i64 1
  %i.nt = insertelement <2 x double> %8, double %i.me, i64 1
  %i.nu = fdiv <2 x double> %i.ns, %i.nt          ; 3 uses
  %i.nv = insertelement <2 x double> poison, double %i.fg, i64 0 ; 4 uses
  %i.nw = shufflevector <2 x double> %i.nv, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.nx = fmul <2 x double> %i.ly, %i.nw          ; 3 uses
  %i.ny = shufflevector <2 x double> %i.ms, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.nz = insertelement <2 x double> %i.ny, double %i.er, i64 1 ; 2 uses
  %i.oa = insertelement <2 x double> %i.ms, double %i.fg, i64 1
  %i.ob = fadd <2 x double> %i.nz, %i.oa          ; 5 uses
  %i.oc = extractelement <2 x double> %i.ob, i64 0
  %i.od = fdiv double %i.mn, %i.oc
  %i.oe = insertelement <2 x double> %i.ob, double %i.dg, i64 1
  %i.of = fdiv <2 x double> %i.nk, %i.oe          ; 2 uses
  %i.og = extractelement <2 x double> %i.of, i64 1
  %i.oh = fadd double %i.nm, %i.og
  %i.oi = fmul double %i.oh, %i.fl
  %i.oj = fmul double %i.oi, %.sroa.speculated30.i1204
  %i.ok = insertelement <2 x double> %i.nz, double %.sroa.speculated35.i1203, i64 0
  %i.ol = insertelement <2 x double> %i.nx, double %i.oj, i64 0 ; 2 uses
  %i.om = insertelement <2 x double> %i.nv, double %i.er, i64 1
  %43 = fdiv <2 x double> %i.om, %40              ; 2 uses
  %44 = fcmp olt <2 x double> %43, splat (double 1.000000e+00)
  %45 = select <2 x i1> %44, <2 x double> %43, <2 x double> splat (double 1.000000e+00) ; 4 uses
  %46 = fmul <2 x double> %41, %45                ; 2 uses
  %i.on = shufflevector <2 x double> %i.lx, <2 x double> %i.iv, <2 x i32> <i32 1, i32 3>
  %i.oo = shufflevector <2 x double> %i.iv, <2 x double> %i.lx, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.op = fdiv <2 x double> %i.on, %i.oo          ; 2 uses
  %i.oq = fcmp olt <2 x double> %i.op, splat (double 5.000000e-01)
  %i.or = select <2 x i1> %i.oq, <2 x double> %i.op, <2 x double> splat (double 5.000000e-01)
  %47 = fmul <2 x double> %i.oo, %i.or            ; 2 uses
  %shift1342 = shufflevector <2 x double> %47, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1343 = fadd <2 x double> %47, %shift1342 ; 3 uses
  %i.os = fmul double %i.cz, %i.db
  %48 = shufflevector <2 x double> %46, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %49 = fsub <2 x double> %48, %46
  %50 = insertelement <2 x double> %49, double %i.os, i64 1
  %51 = insertelement <2 x double> %foldExtExtBinop1343, double %i.cx, i64 1
  %52 = fdiv <2 x double> %50, %51
  %i.ot = insertelement <2 x double> %i.at, double %i.fg, i64 1
  %53 = fmul <2 x double> %i.ot, %52              ; 2 uses
  %i.ou = insertelement <2 x double> %53, double %i.cz, i64 0
  %54 = insertelement <2 x double> %45, double %i.er, i64 0
  %55 = fmul <2 x double> %i.ou, %54              ; 2 uses
  %i.ov = insertelement <2 x double> %i.ix, double %i.nc, i64 1
  %i.ow = shufflevector <2 x double> %i.nv, <2 x double> %45, <2 x i32> <i32 0, i32 2>
  %i.ox = fmul <2 x double> %i.ov, %i.ow          ; 3 uses
  %56 = fadd <2 x double> %55, %i.ox
  %57 = fsub <2 x double> %55, %i.ox
  %58 = shufflevector <2 x double> %56, <2 x double> %57, <2 x i32> <i32 0, i32 3>
  %59 = shufflevector <2 x double> %i.ob, <2 x double> %foldExtExtBinop1343, <2 x i32> <i32 1, i32 2>
  %60 = fdiv <2 x double> %58, %59                ; 2 uses
  %61 = fmul double %i.db, %i.er
  %62 = extractelement <2 x double> %i.nx, i64 0
  %63 = fmul double %i.db, %i.db
  %64 = fadd double %61, %62
  %65 = insertelement <2 x double> poison, double %63, i64 0
  %66 = insertelement <2 x double> %65, double %64, i64 1
  %i.oy = insertelement <2 x double> %i.ob, double %i.cx, i64 0
  %67 = fdiv <2 x double> %66, %i.oy              ; 2 uses
  %i.oz = fmul <2 x double> %10, splat (double 4.900000e+00) ; 2 uses
  %68 = shufflevector <2 x double> %i.oz, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %69 = insertelement <2 x double> %68, double %6, i64 0
  %70 = fadd <2 x double> %69, %i.jq              ; 2 uses
  %71 = extractelement <2 x double> %70, i64 0
  %72 = fmul double %71, %i.ew
  %73 = fmul double %72, %i.ku
  %74 = shufflevector <2 x double> %70, <2 x double> %i.ix, <2 x i32> <i32 1, i32 2>
  %foldExtExtBinop1345 = fmul <2 x double> %74, %i.kr ; 2 uses
  %75 = fmul <2 x double> %foldExtExtBinop1345, %i.kv ; 3 uses
  %76 = extractelement <2 x double> %75, i64 1
  %i.pa = extractelement <2 x double> %75, i64 0
  %i.pb = fsub double %i.pa, %73
  %i.pc = insertelement <2 x double> %i.lh, double %i.pb, i64 1
  %77 = fdiv <2 x double> %i.pc, %i.le            ; 2 uses
  %78 = shufflevector <2 x double> %77, <2 x double> %i.lf, <2 x i32> <i32 0, i32 3>
  %79 = fmul <2 x double> %foldExtExtBinop1345, %33 ; 3 uses
  %i.pd = extractelement <2 x double> %79, i64 0
  %80 = fsub double %76, %13
  %81 = insertelement <2 x double> poison, double %80, i64 0
  %i.pe = insertelement <2 x double> %81, double %i.lj, i64 1
  %82 = fdiv <2 x double> %i.pe, %34              ; 2 uses
  %83 = shufflevector <2 x double> %77, <2 x double> %82, <2 x i32> <i32 1, i32 2>
  %84 = fmul <2 x double> %i.au, %83
  %i.pf = fsub <2 x double> %78, %84              ; 8 uses
  %85 = extractelement <2 x double> %i.pf, i64 1  ; 4 uses
  %86 = extractelement <2 x double> %i.pf, i64 0  ; 2 uses
  %87 = extractelement <2 x double> %82, i64 1
  %i.pg = fmul double %87, %i.fb
  %88 = shufflevector <2 x double> %i.kd, <2 x double> %79, <2 x i32> <i32 1, i32 3> ; 2 uses
  %89 = fadd <2 x double> %37, %88
  %90 = fsub <2 x double> %37, %88
  %91 = shufflevector <2 x double> %89, <2 x double> %90, <2 x i32> <i32 0, i32 3>
  %92 = fdiv <2 x double> %91, %i.ll              ; 2 uses
  %93 = fsub double %i.lq, %i.pd
  %94 = insertelement <2 x double> %i.lr, double %93, i64 1
  %95 = fdiv <2 x double> %94, %i.ll              ; 2 uses
  %96 = insertelement <2 x double> %i.lu, double %i.pg, i64 1
  %i.ph = fmul <2 x double> %96, %36              ; 2 uses
  %97 = fadd <2 x double> %i.ph, %i.lt
  %i.pi = fsub <2 x double> %i.ph, %i.lt
  %98 = shufflevector <2 x double> %97, <2 x double> %i.pi, <2 x i32> <i32 0, i32 3>
  %99 = fdiv <2 x double> %98, %i.ll              ; 2 uses
  %i.pj = shufflevector <2 x double> %i.nu, <2 x double> %67, <2 x i32> <i32 0, i32 2>
  %100 = fadd <2 x double> %i.oz, %i.pj           ; 3 uses
  %101 = fmul <2 x double> %100, %40              ; 2 uses
  %102 = insertelement <2 x double> %101, double %i.cx, i64 1
  %103 = fmul <2 x double> %102, %i.ok            ; 2 uses
  %104 = fsub <2 x double> %103, %i.ol
  %105 = fadd <2 x double> %103, %i.ol
  %106 = shufflevector <2 x double> %104, <2 x double> %105, <2 x i32> <i32 0, i32 3>
  %i.pk = fdiv <2 x double> %106, %i.ob           ; 3 uses
  %shift1348 = shufflevector <2 x double> %i.pk, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1349 = fsub <2 x double> %shift1348, %53 ; 4 uses
  %i.pl = extractelement <2 x double> %foldExtExtBinop1349, i64 0 ; 3 uses
  %107 = fmul <2 x double> %101, %45              ; 2 uses
  %shift1351 = shufflevector <2 x double> %107, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1352 = fsub <2 x double> %shift1351, %107
  %i.pm = fmul <2 x double> %i.pf, %i.pf
  %108 = shufflevector <2 x double> %foldExtExtBinop1352, <2 x double> %i.pm, <2 x i32> <i32 0, i32 2>
  %109 = shufflevector <2 x double> %foldExtExtBinop1343, <2 x double> %i.pf, <2 x i32> <i32 0, i32 3>
  %110 = fdiv <2 x double> %108, %109             ; 2 uses
  %111 = fmul double %85, %85
  %112 = fmul double %111, 4.900000e+00
  %113 = extractelement <2 x double> %110, i64 1
  %114 = fadd double %113, %112                   ; 2 uses
  %115 = shufflevector <2 x double> %30, <2 x double> %95, <2 x i32> <i32 1, i32 3>
  %i.pn = fmul <2 x double> %i.au, %115
  %116 = shufflevector <2 x double> %30, <2 x double> %95, <2 x i32> <i32 0, i32 2>
  %i.po = fsub <2 x double> %116, %i.pn           ; 4 uses
  %i.pp = shufflevector <2 x double> %i.pf, <2 x double> %i.po, <2 x i32> <i32 0, i32 3>
  %i.pq = fmul <2 x double> %i.pp, %i.po
  %117 = shufflevector <2 x double> %92, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %118 = insertelement <2 x double> %117, double %i.od, i64 1
  %i.pr = fmul <2 x double> %i.au, %118
  %119 = insertelement <2 x double> %92, double %i.mf, i64 1
  %i.ps = fsub <2 x double> %119, %i.pr           ; 7 uses
  %120 = shufflevector <2 x double> %99, <2 x double> %i.of, <2 x i32> <i32 1, i32 2>
  %121 = fmul <2 x double> %i.au, %120
  %122 = shufflevector <2 x double> %99, <2 x double> %i.nb, <2 x i32> <i32 0, i32 3>
  %123 = fsub <2 x double> %122, %121
  %i.pt = shufflevector <2 x double> %i.pf, <2 x double> %i.ps, <2 x i32> <i32 1, i32 2>
  %i.pu = fdiv <2 x double> %i.pq, %i.pt          ; 3 uses
  %124 = extractelement <2 x double> %i.pu, i64 1
  %i.pv = fmul <2 x double> %i.ps, %i.ps          ; 2 uses
  %i.pw = extractelement <2 x double> %i.pv, i64 0
  %i.px = fmul double %i.pw, 4.900000e+00
  %i.py = fadd double %124, %i.px                 ; 2 uses
  %i.pz = extractelement <2 x double> %i.pv, i64 1
  %i.qa = fmul double %i.pz, 4.900000e+00
  %125 = shufflevector <2 x double> %i.pk, <2 x double> %60, <2 x i32> <i32 0, i32 3>
  %126 = fmul <2 x double> %i.au, %125
  %127 = shufflevector <2 x double> %i.pk, <2 x double> %110, <2 x i32> <i32 0, i32 2>
  %128 = fmul <2 x double> %i.au, %127
  %129 = shufflevector <2 x double> %i.nu, <2 x double> %60, <2 x i32> <i32 1, i32 2>
  %130 = fsub <2 x double> %129, %126
  %131 = shufflevector <2 x double> %i.nu, <2 x double> %67, <2 x i32> <i32 1, i32 3>
  %132 = fsub <2 x double> %131, %128             ; 5 uses
  %133 = shufflevector <2 x double> %i.po, <2 x double> %132, <2 x i32> <i32 1, i32 2>
  %134 = fmul <2 x double> %133, %123
  %135 = fdiv <2 x double> %134, %i.ps            ; 3 uses
  %i.qb = fmul <2 x double> %132, %130
  %136 = shufflevector <2 x double> %i.ps, <2 x double> %foldExtExtBinop1349, <2 x i32> <i32 1, i32 2>
  %i.qc = fdiv <2 x double> %i.qb, %136           ; 2 uses
  %i.qd = extractelement <2 x double> %i.qc, i64 0
  %i.qe = fadd double %i.qd, %i.qa                ; 2 uses
  %i.qf = extractelement <2 x double> %132, i64 1 ; 5 uses
  %i.qg = fmul double %i.qf, %i.qf
  %137 = fdiv double %i.qg, %i.pl
  %foldExtExtBinop1356 = fmul <2 x double> %foldExtExtBinop1349, %foldExtExtBinop1349
  %138 = extractelement <2 x double> %foldExtExtBinop1356, i64 0
  %i.qh = fmul double %138, 4.900000e+00
  %i.qi = fadd double %137, %i.qh                 ; 2 uses
  %i.qj = extractelement <2 x double> %i.pu, i64 0
  br i1 %i.fm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.qk = fmul <2 x double> %i.kr, %i.gf
  %i.ql = shufflevector <2 x double> %i.gg, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.qm = fmul <2 x double> %i.ql, %i.gg
  %i.qn = fmul double %.01171, %.01171
  %i.qo = fmul double %i.qn, 4.900000e+00
  %i.qp = fadd <2 x double> %i.jb, %i.qk
  %i.qq = shufflevector <2 x double> %i.le, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qr = fdiv <2 x double> %i.qp, %i.qq
  %i.qs = shufflevector <2 x double> %i.gf, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.qt = shufflevector <2 x double> %i.le, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.qu = insertelement <2 x double> poison, double %.01171, i64 0
  %i.qv = shufflevector <2 x double> %i.qu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qw = fdiv <2 x double> %i.qm, %i.qv          ; 2 uses
  %i.qx = extractelement <2 x double> %i.qw, i64 1
  %i.qy = fadd double %i.qo, %i.qx
  %i.qz = insertelement <2 x double> %i.qs, double %i.qy, i64 0
  %i.ra = fmul <2 x double> %i.ja, %i.qz
  %i.rb = fmul <2 x double> %24, %i.ra
  %i.rc = fsub <2 x double> %75, %i.rb
  %i.rd = fdiv <2 x double> %i.rc, %i.qt
  %i.re = fmul <2 x double> %i.au, %i.rd
  %i.rf = fsub <2 x double> %i.qr, %i.re          ; 7 uses
  %i.rg = extractelement <2 x double> %i.qw, i64 0
  %i.rh = fmul double %i.ew, %i.rg
  %i.ri = insertelement <2 x double> %i.gg, double %i.rh, i64 1
  %i.rj = fmul <2 x double> %25, %i.ri            ; 2 uses
  %i.rk = fadd <2 x double> %i.la, %i.rj
  %i.rl = fsub <2 x double> %i.la, %i.rj
  %i.rm = shufflevector <2 x double> %i.rk, <2 x double> %i.rl, <2 x i32> <i32 0, i32 3>
  %i.rn = fdiv <2 x double> %i.rm, %i.le          ; 2 uses
  %i.ro = extractelement <2 x double> %i.rn, i64 1
  %i.rp = fmul double %i.ao, %i.ro
  %i.rq = extractelement <2 x double> %i.rn, i64 0
  %i.rr = fsub double %i.rq, %i.rp
  %foldExtExtBinop1354 = fadd <2 x double> %i.pf, %i.rf
  %i.rs = extractelement <2 x double> %foldExtExtBinop1354, i64 0
  %i.rt = fmul double %i.rs, 5.000000e-01
  %foldExtExtBinop1356.a = fmul <2 x double> %i.rf, %i.rf
  %i.ru = extractelement <2 x double> %foldExtExtBinop1356.a, i64 1
  %i.rv = fmul double %i.ru, 4.900000e+00
  %i.rw = shufflevector <2 x double> %i.rf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rx = insertelement <2 x double> %i.rf, double %i.rr, i64 1
  %i.ry = fmul <2 x double> %i.rw, %i.rx
  %i.rz = shufflevector <2 x double> %i.rf, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.sa = fdiv <2 x double> %i.ry, %i.rz          ; 2 uses
  %i.sb = extractelement <2 x double> %i.sa, i64 0
  %i.sc = fadd double %i.rv, %i.sb
  %i.sd = fadd double %114, %i.sc
  %i.se = fmul double %i.sd, 5.000000e-01
  %shift1358 = shufflevector <2 x double> %i.sa, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1359 = fadd <2 x double> %i.pu, %shift1358
  %i.sf = extractelement <2 x double> %foldExtExtBinop1359, i64 0
  %i.sg = fmul double %i.sf, 5.000000e-01
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.01141 = phi double [ %i.rt, %bb.m ], [ %86, %bb.l ]
  %.01140 = phi double [ %i.se, %bb.m ], [ %114, %bb.l ]
  %.01139 = phi double [ %i.sg, %bb.m ], [ %i.qj, %bb.l ]
  %i.sh = phi <2 x double> [ %i.rf, %bb.m ], [ zeroinitializer, %bb.l ] ; 4 uses
  %i.si = extractelement <2 x double> %i.po, i64 1 ; 3 uses
  %i.sj = extractelement <2 x double> %135, i64 0
  br i1 %i.gh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.sk = fmul <2 x double> %i.kr, %i.ha
  %i.sl = shufflevector <2 x double> %i.hb, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.sm = fmul <2 x double> %i.sl, %i.hb
  %i.sn = fmul double %.01163, %.01163
  %i.so = fmul double %i.sn, 4.900000e+00
  %i.sp = fadd <2 x double> %i.kd, %i.sk
  %i.sq = shufflevector <2 x double> %i.ll, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sr = fdiv <2 x double> %i.sp, %i.sq
  %i.ss = shufflevector <2 x double> %i.ha, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.st = shufflevector <2 x double> %32, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.su = shufflevector <2 x double> %i.ll, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.sv = insertelement <2 x double> poison, double %.01163, i64 0
  %i.sw = shufflevector <2 x double> %i.sv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sx = fdiv <2 x double> %i.sm, %i.sw          ; 2 uses
  %i.sy = extractelement <2 x double> %i.sx, i64 1
  %i.sz = fadd double %i.so, %i.sy
  %i.ta = insertelement <2 x double> %i.ss, double %i.sz, i64 0
  %i.tb = fmul <2 x double> %i.kc, %i.ta
  %i.tc = fmul <2 x double> %i.st, %i.tb
  %i.td = fsub <2 x double> %i.tc, %79
  %i.te = fdiv <2 x double> %i.td, %i.su
  %i.tf = fmul <2 x double> %i.au, %i.te
  %i.tg = fsub <2 x double> %i.sr, %i.tf          ; 7 uses
  %i.th = extractelement <2 x double> %i.sx, i64 0
  %i.ti = fmul double %i.fb, %i.th
  %i.tj = insertelement <2 x double> %i.hb, double %i.ti, i64 1
  %i.tk = fmul <2 x double> %36, %i.tj            ; 2 uses
  %i.tl = fadd <2 x double> %i.tk, %i.lt
  %i.tm = fsub <2 x double> %i.tk, %i.lt
  %i.tn = shufflevector <2 x double> %i.tl, <2 x double> %i.tm, <2 x i32> <i32 0, i32 3>
  %i.to = fdiv <2 x double> %i.tn, %i.ll          ; 2 uses
  %i.tp = extractelement <2 x double> %i.to, i64 1
  %i.tq = fmul double %i.ao, %i.tp
  %i.tr = extractelement <2 x double> %i.to, i64 0
  %i.ts = fsub double %i.tr, %i.tq
  %i.tt = extractelement <2 x double> %i.tg, i64 0
  %i.tu = fadd double %i.si, %i.tt
  %i.tv = fmul double %i.tu, 5.000000e-01
  %foldExtExtBinop1361 = fmul <2 x double> %i.tg, %i.tg
  %i.tw = extractelement <2 x double> %foldExtExtBinop1361, i64 1
  %i.tx = fmul double %i.tw, 4.900000e+00
  %i.ty = shufflevector <2 x double> %i.tg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tz = insertelement <2 x double> %i.tg, double %i.ts, i64 1
  %i.ua = fmul <2 x double> %i.ty, %i.tz
  %i.ub = shufflevector <2 x double> %i.tg, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.uc = fdiv <2 x double> %i.ua, %i.ub          ; 2 uses
  %i.ud = extractelement <2 x double> %i.uc, i64 0
  %i.ue = fadd double %i.tx, %i.ud
  %i.uf = fadd double %i.py, %i.ue
  %i.ug = fmul double %i.uf, 5.000000e-01
  %shift1363 = shufflevector <2 x double> %i.uc, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1364 = fadd <2 x double> %135, %shift1363
  %i.uh = extractelement <2 x double> %foldExtExtBinop1364, i64 0
  %i.ui = fmul double %i.uh, 5.000000e-01
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.01138 = phi double [ %i.tv, %bb.o ], [ %i.si, %bb.n ]
  %.01137 = phi double [ %i.ug, %bb.o ], [ %i.py, %bb.n ]
  %.01136 = phi double [ %i.ui, %bb.o ], [ %i.sj, %bb.n ]
  %i.uj = phi <2 x double> [ %i.tg, %bb.o ], [ zeroinitializer, %bb.n ] ; 4 uses
  %i.uk = extractelement <2 x double> %135, i64 1 ; 2 uses
  %i.ul = extractelement <2 x double> %132, i64 0 ; 2 uses
  br i1 %i.hc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.um = fmul <2 x double> %i.kr, %i.hv
  %i.un = insertelement <2 x double> %100, double %i.ca, i64 1
  %i.uo = fmul <2 x double> %i.un, %i.kr
  %i.up = insertelement <2 x double> %i.it, double %i.fl, i64 1
  %i.uq = insertelement <2 x double> %i.lv, double %i.ep, i64 1
  %i.ur = fdiv <2 x double> %i.up, %i.uq          ; 2 uses
  %i.us = shufflevector <2 x double> %i.iv, <2 x double> %i.lx, <2 x i32> <i32 0, i32 2>
  %i.ut = shufflevector <2 x double> %i.lx, <2 x double> %i.iv, <2 x i32> <i32 0, i32 2>
  %i.uu = fdiv <2 x double> %i.us, %i.ut          ; 2 uses
  %i.uv = fcmp olt <2 x double> %i.uu, splat (double 5.000000e-01)
  %i.uw = select <2 x i1> %i.uv, <2 x double> %i.uu, <2 x double> splat (double 5.000000e-01) ; 2 uses
  %shift1366 = shufflevector <2 x double> %i.uw, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1367 = fmul <2 x double> %i.iv, %shift1366
  %foldExtExtBinop1369 = fmul <2 x double> %i.lx, %i.uw
  %i.ux = shufflevector <2 x double> %i.hw, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.uy = fmul <2 x double> %i.ux, %i.hw
  %i.uz = insertelement <2 x double> poison, double %.01155, i64 0
  %i.va = shufflevector <2 x double> %i.uz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vb = fdiv <2 x double> %i.uy, %i.va          ; 2 uses
  %i.vc = extractelement <2 x double> %i.vb, i64 0
  %i.vd = fmul double %i.fl, %i.vc
  %i.ve = fmul double %.01155, %.01155
  %i.vf = fmul double %i.ve, 4.900000e+00
  %i.vg = extractelement <2 x double> %i.vb, i64 1
  %i.vh = fadd double %i.vf, %i.vg
  %i.vi = fcmp olt <2 x double> %i.ur, splat (double 1.000000e+00)
  %i.vj = select <2 x i1> %i.vi, <2 x double> %i.ur, <2 x double> splat (double 1.000000e+00) ; 4 uses
  %i.vk = extractelement <2 x double> %i.vj, i64 0
  %i.vl = fmul double %i.vk, %i.vd
  %i.vm = shufflevector <2 x double> %i.it, <2 x double> %foldExtExtBinop1367, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.vn = shufflevector <2 x double> %i.lv, <2 x double> %foldExtExtBinop1369, <2 x i32> <i32 0, i32 2>
  %i.vo = fadd <2 x double> %i.vm, %i.vn          ; 3 uses
  %i.vp = insertelement <2 x double> %i.vm, double %i.jx, i64 1
  %i.vq = shufflevector <2 x double> %i.hw, <2 x double> %i.vj, <2 x i32> <i32 0, i32 3>
  %i.vr = fmul <2 x double> %i.vp, %i.vq          ; 2 uses
  %i.vs = insertelement <2 x double> poison, double %i.mt, i64 0
  %i.vt = insertelement <2 x double> %i.vs, double %i.vl, i64 1 ; 2 uses
  %i.vu = fadd <2 x double> %i.vr, %i.vt
  %i.vv = fsub <2 x double> %i.vr, %i.vt
  %i.vw = shufflevector <2 x double> %i.vu, <2 x double> %i.vv, <2 x i32> <i32 0, i32 3>
  %i.vx = fdiv <2 x double> %i.vw, %i.vo          ; 2 uses
  %i.vy = extractelement <2 x double> %i.vx, i64 1
  %i.vz = fmul double %i.ao, %i.vy
  %i.wa = extractelement <2 x double> %i.vx, i64 0
  %i.wb = fsub double %i.wa, %i.vz
  %i.wc = fadd <2 x double> %i.ma, %i.um
  %i.wd = shufflevector <2 x double> %i.vo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.we = fdiv <2 x double> %i.wc, %i.wd
  %i.wf = shufflevector <2 x double> %i.vj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.wg = fmul <2 x double> %i.uo, %i.wf
  %i.wh = shufflevector <2 x double> %i.hv, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.wi = insertelement <2 x double> %i.wh, double %i.vh, i64 0
  %i.wj = fmul <2 x double> %i.lz, %i.wi
  %i.wk = shufflevector <2 x double> %i.vj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wl = fmul <2 x double> %i.wk, %i.wj
  %i.wm = fsub <2 x double> %i.wg, %i.wl
  %i.wn = shufflevector <2 x double> %i.vo, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.wo = fdiv <2 x double> %i.wm, %i.wn
  %i.wp = fmul <2 x double> %i.au, %i.wo
  %i.wq = fsub <2 x double> %i.we, %i.wp          ; 6 uses
  %foldExtExtBinop1371 = fadd <2 x double> %132, %i.wq
  %i.wr = extractelement <2 x double> %foldExtExtBinop1371, i64 0
  %i.ws = fmul double %i.wr, 5.000000e-01
  %i.wt = shufflevector <2 x double> %i.wq, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.wu = insertelement <2 x double> %i.wt, double %i.wb, i64 0
  %i.wv = fmul <2 x double> %i.wu, %i.wt
  %i.ww = shufflevector <2 x double> %i.wq, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.wx = fdiv <2 x double> %i.wv, %i.ww          ; 2 uses
  %i.wy = extractelement <2 x double> %i.wx, i64 0
  %i.wz = fadd double %i.uk, %i.wy
  %i.xa = fmul double %i.wz, 5.000000e-01
  %foldExtExtBinop1373 = fmul <2 x double> %i.wq, %i.wq
  %i.xb = extractelement <2 x double> %foldExtExtBinop1373, i64 1
  %i.xc = fmul double %i.xb, 4.900000e+00
  %i.xd = extractelement <2 x double> %i.wx, i64 1
  %i.xe = fadd double %i.xc, %i.xd
  %i.xf = fadd double %i.qe, %i.xe
  %i.xg = fmul double %i.xf, 5.000000e-01
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.01135 = phi double [ %i.ws, %bb.q ], [ %i.ul, %bb.p ]
  %.01134 = phi double [ %i.xa, %bb.q ], [ %i.uk, %bb.p ]
  %.01133 = phi double [ %i.xg, %bb.q ], [ %i.qe, %bb.p ]
  %i.xh = phi <2 x double> [ %i.wq, %bb.q ], [ zeroinitializer, %bb.p ] ; 4 uses
  %i.xi = extractelement <2 x double> %i.qc, i64 1 ; 2 uses
  br i1 %i.hx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.xj = fmul <2 x double> %i.kr, %i.iq
  %i.xk = insertelement <2 x double> %i.nv, double %i.ep, i64 1
  %i.xl = fdiv <2 x double> %i.xk, %i.iu          ; 2 uses
  %i.xm = insertelement <2 x double> %100, double %i.ca, i64 1
  %i.xn = fmul <2 x double> %i.xm, %i.kr
  %i.xo = fdiv <2 x double> %i.iv, %i.iw          ; 2 uses
  %i.xp = fcmp olt <2 x double> %i.xo, splat (double 5.000000e-01)
  %i.xq = select <2 x i1> %i.xp, <2 x double> %i.xo, <2 x double> splat (double 5.000000e-01)
  %i.xr = fmul <2 x double> %i.iw, %i.xq          ; 2 uses
  %i.xs = shufflevector <2 x double> %i.ir, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.xt = fmul <2 x double> %i.xs, %i.ir
  %i.xu = insertelement <2 x double> poison, double %.01147, i64 0
  %i.xv = shufflevector <2 x double> %i.xu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xw = fdiv <2 x double> %i.xt, %i.xv          ; 2 uses
  %i.xx = extractelement <2 x double> %i.xw, i64 0
  %i.xy = fmul double %i.fg, %i.xx
  %i.xz = fmul double %.01147, %.01147
  %i.ya = fmul double %i.xz, 4.900000e+00
  %i.yb = extractelement <2 x double> %i.xw, i64 1
  %i.yc = fadd double %i.ya, %i.yb
  %i.yd = fcmp olt <2 x double> %i.xl, splat (double 1.000000e+00)
  %i.ye = select <2 x i1> %i.yd, <2 x double> %i.xl, <2 x double> splat (double 1.000000e+00) ; 4 uses
  %i.yf = extractelement <2 x double> %i.ye, i64 0
  %i.yg = fmul double %i.jx, %i.yf
  %i.yh = shufflevector <2 x double> %i.it, <2 x double> %i.xr, <2 x i32> <i32 0, i32 2>
  %i.yi = insertelement <2 x double> %i.xr, double %i.fg, i64 0
  %i.yj = fadd <2 x double> %i.yh, %i.yi          ; 3 uses
  %i.yk = insertelement <2 x double> %i.ye, double %i.ep, i64 0
  %i.yl = insertelement <2 x double> %i.ir, double %i.xy, i64 1
  %i.ym = fmul <2 x double> %i.yk, %i.yl          ; 2 uses
  %i.yn = insertelement <2 x double> %i.ox, double %i.yg, i64 1 ; 2 uses
  %i.yo = fadd <2 x double> %i.ym, %i.yn
  %i.yp = fsub <2 x double> %i.ym, %i.yn
  %i.yq = shufflevector <2 x double> %i.yo, <2 x double> %i.yp, <2 x i32> <i32 0, i32 3>
  %i.yr = fdiv <2 x double> %i.yq, %i.yj          ; 2 uses
  %i.ys = extractelement <2 x double> %i.yr, i64 1
  %i.yt = fmul double %i.ao, %i.ys
  %i.yu = extractelement <2 x double> %i.yr, i64 0
  %i.yv = fsub double %i.yu, %i.yt
  %i.yw = fadd <2 x double> %i.nx, %i.xj
  %i.yx = shufflevector <2 x double> %i.yj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.yy = fdiv <2 x double> %i.yw, %i.yx
  %i.yz = shufflevector <2 x double> %i.iq, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.za = insertelement <2 x double> %i.yz, double %i.yc, i64 0
  %i.zb = fmul <2 x double> %i.nw, %i.za
  %i.zc = shufflevector <2 x double> %i.ye, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.zd = fmul <2 x double> %i.zc, %i.zb
  %i.ze = shufflevector <2 x double> %i.ye, <2 x double> poison, <2 x i32> zeroinitializer
  %i.zf = fmul <2 x double> %i.xn, %i.ze
  %i.zg = fsub <2 x double> %i.zd, %i.zf
  %i.zh = shufflevector <2 x double> %i.yj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.zi = fdiv <2 x double> %i.zg, %i.zh
  %i.zj = fmul <2 x double> %i.au, %i.zi
  %i.zk = fsub <2 x double> %i.yy, %i.zj          ; 6 uses
  %i.zl = extractelement <2 x double> %i.zk, i64 0
  %i.zm = fadd double %i.qf, %i.zl
  %i.zn = fmul double %i.zm, 5.000000e-01
  %i.zo = shufflevector <2 x double> %i.zk, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.zp = insertelement <2 x double> %i.zo, double %i.yv, i64 0
  %i.zq = fmul <2 x double> %i.zp, %i.zo
  %i.zr = shufflevector <2 x double> %i.zk, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.zs = fdiv <2 x double> %i.zq, %i.zr          ; 2 uses
  %i.zt = extractelement <2 x double> %i.zs, i64 0
  %i.zu = fadd double %i.xi, %i.zt
  %i.zv = fmul double %i.zu, 5.000000e-01
  %foldExtExtBinop1375 = fmul <2 x double> %i.zk, %i.zk
  %i.zw = extractelement <2 x double> %foldExtExtBinop1375, i64 1
  %i.zx = fmul double %i.zw, 4.900000e+00
  %i.zy = extractelement <2 x double> %i.zs, i64 1
  %i.zz = fadd double %i.zx, %i.zy
  %i.aaa = fadd double %i.qi, %i.zz
  %i.aab = fmul double %i.aaa, 5.000000e-01
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.01132 = phi double [ %i.zn, %bb.s ], [ %i.qf, %bb.r ]
  %.01131 = phi double [ %i.zv, %bb.s ], [ %i.xi, %bb.r ]
  %.01130 = phi double [ %i.aab, %bb.s ], [ %i.qi, %bb.r ]
  %i.aac = phi <2 x double> [ %i.zk, %bb.s ], [ zeroinitializer, %bb.r ] ; 4 uses
  %i.aad = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.dt
  %i.aae = load i32, ptr %i.aad, align 4, !tbaa !9
  %i.aaf = icmp slt i32 %i.et, %i.aae
  br i1 %i.aaf, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.aag = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.dt
  %i.aah = load i32, ptr %i.aag, align 4, !tbaa !9
  %i.aai = sext i32 %i.aah to i64                 ; 2 uses
  %i.aaj = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.aai
  %i.aak = load double, ptr %i.aaj, align 8, !tbaa !71
  %i.aal = fadd double %i.dv, %i.aak
  %i.aam = fmul double %i.aal, 5.000000e-01
  %i.aan = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.aai
  %i.aao = load double, ptr %i.aan, align 8, !tbaa !71
  %i.aap = fadd double %i.dx, %i.aao
  %i.aaq = fmul double %i.aap, 5.000000e-01
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.01180 = phi double [ %i.aam, %bb.u ], [ %i.dv, %bb.t ]
  %.01179 = phi double [ %i.aaq, %bb.u ], [ %i.dx, %bb.t ]
  %i.aar = fadd double %i.co, %.01163
  %i.aas = fmul double %i.aar, 5.000000e-01
  %i.aat = fadd double %i.cq, %.01162
  %i.aau = fmul double %i.aat, 5.000000e-01
  %.01121 = select i1 %i.gh, double %i.aas, double %i.co
  %.01120 = select i1 %i.gh, double %i.aau, double %i.cq
  %i.aav = extractelement <2 x double> %i.le, i64 0
  %i.aaw = fmul double %i.aav, 5.000000e-01       ; 4 uses
  %i.aax = fdiv double %86, %85
  %i.aay = call double @llvm.fabs.f64(double %i.aax) ; 2 uses
  %i.aaz = fmul double %85, 9.800000e+00          ; 2 uses
  %i.aba = call double @sqrt(double noundef %i.aaz) #21, !tbaa !9
  %i.abb = fadd double %i.aay, %i.aba
  %i.abc = fsub double %i.bw, %i.cf               ; 5 uses
  %i.abd = fsub double %i.cf, %.01180
  %i.abe = fsub double %.01121, %i.bw             ; 2 uses
  %i.abf = fmul double %i.abb, 5.000000e-01
  %i.abg = fmul double %1, %i.abf
  %i.abh = fdiv double %i.abg, %i.aaw             ; 2 uses
  %i.abi = fsub double 1.000000e+00, %i.abh
  %i.abj = fmul double %i.abh, %i.abi
  %i.abk = fmul double %i.abc, %i.abc             ; 2 uses
  %i.abl = fcmp olt double %i.abk, 1.000000e-30
  %.sroa.speculated28.i = select i1 %i.abl, double 1.000000e-30, double %i.abk
  %i.abm = fdiv double 1.000000e+00, %.sroa.speculated28.i ; 2 uses
  %i.abn = fmul double %i.abc, %i.abe
  %i.abo = fmul double %i.abm, %i.abn             ; 2 uses
  %i.abp = fmul double %i.abc, %i.abd
  %i.abq = fmul double %i.abm, %i.abp             ; 2 uses
  %i.abr = fmul double %i.abj, 5.000000e-01
  %i.abs = fcmp olt double %i.abo, 1.000000e+00
  %.sroa.speculated23.i = select i1 %i.abs, double %i.abo, double 1.000000e+00 ; 2 uses
  %i.abt = fcmp olt double %i.abq, %.sroa.speculated23.i
  %.sroa.speculated18.i = select i1 %i.abt, double %i.abq, double %.sroa.speculated23.i ; 2 uses
  %i.abu = fcmp olt double %.sroa.speculated18.i, 0.000000e+00
  %.sroa.speculated.i1275 = select i1 %i.abu, double 0.000000e+00, double %.sroa.speculated18.i
  %i.abv = fsub double 1.000000e+00, %.sroa.speculated.i1275
  %i.abw = fmul double %i.abv, %i.abr
  %i.abx = fmul double %i.abc, %i.abw             ; 2 uses
  %i.aby = load i32, ptr %i.es, align 4, !tbaa !9
  %i.abz = icmp slt i32 %i.bm, %i.aby
  br i1 %i.abz, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.aca = sext i32 %i.dm to i64
  %i.acb = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.aca
  %i.acc = load i32, ptr %i.acb, align 4, !tbaa !9
  %i.acd = getelementptr inbounds [4 x i8], ptr %i.t, i64 %.01172
  %i.ace = load i32, ptr %i.acd, align 4, !tbaa !9
  %i.acf = icmp slt i32 %i.acc, %i.ace
  br i1 %i.acf, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.acg = getelementptr inbounds [4 x i8], ptr %i.r, i64 %.01172
  %i.ach = load i32, ptr %i.acg, align 4, !tbaa !9
  %i.aci = sext i32 %i.ach to i64
  %i.acj = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.aci
  %i.ack = load double, ptr %i.acj, align 8, !tbaa !71
  %i.acl = fadd double %.01167, %i.ack
  %i.acm = fmul double %i.acl, 5.000000e-01
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.11168 = phi double [ %i.acm, %bb.x ], [ %.01167, %bb.w ]
  %i.acn = extractelement <2 x double> %i.sh, i64 0
  %i.aco = extractelement <2 x double> %i.sh, i64 1 ; 2 uses
  %i.acp = fdiv double %i.acn, %i.aco
  %i.acq = call double @llvm.fabs.f64(double %i.acp)
  %i.acr = fmul double %i.aco, 9.800000e+00
  %i.acs = call double @sqrt(double noundef %i.acr) #21, !tbaa !9
  %i.act = fadd double %i.acq, %i.acs
  %i.acu = fsub double %i.bw, %.01171             ; 5 uses
  %i.acv = fsub double %.01171, %.11168
  %i.acw = fmul double %i.act, 5.000000e-01
  %i.acx = fmul double %1, %i.acw
  %i.acy = fdiv double %i.acx, %i.aaw             ; 2 uses
  %i.acz = fsub double 1.000000e+00, %i.acy
  %i.ada = fmul double %i.acy, %i.acz
  %i.adb = fmul double %i.acu, %i.acu             ; 2 uses
  %i.adc = fcmp olt double %i.adb, 1.000000e-30
  %.sroa.speculated28.i1276 = select i1 %i.adc, double 1.000000e-30, double %i.adb
  %i.add = fdiv double 1.000000e+00, %.sroa.speculated28.i1276 ; 2 uses
  %i.ade = fmul double %i.acu, %i.abe
  %i.adf = fmul double %i.add, %i.ade             ; 2 uses
  %i.adg = fmul double %i.acu, %i.acv
  %i.adh = fmul double %i.add, %i.adg             ; 2 uses
  %i.adi = fmul double %i.ada, 5.000000e-01
  %i.adj = fcmp olt double %i.adf, 1.000000e+00
  %.sroa.speculated23.i1277 = select i1 %i.adj, double %i.adf, double 1.000000e+00 ; 2 uses
  %i.adk = fcmp olt double %i.adh, %.sroa.speculated23.i1277
  %.sroa.speculated18.i1278 = select i1 %i.adk, double %i.adh, double %.sroa.speculated23.i1277 ; 2 uses
  %i.adl = fcmp olt double %.sroa.speculated18.i1278, 0.000000e+00
  %.sroa.speculated.i1279 = select i1 %i.adl, double 0.000000e+00, double %.sroa.speculated18.i1278
  %i.adm = fsub double 1.000000e+00, %.sroa.speculated.i1279
  %i.adn = fmul double %i.adi, %i.adm
  %i.ado = fmul double %i.acu, %i.adn
  %i.adp = fadd double %i.abx, %i.ado
  %i.adq = fmul double %i.adp, 5.000000e-01
  %i.adr = fmul double %i.adq, 5.000000e-01
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  %.01119 = phi double [ %i.adr, %bb.y ], [ %i.abx, %bb.v ]
  %i.ads = load i32, ptr %i.ex, align 4, !tbaa !9
  %i.adt = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.dy
  %i.adu = load i32, ptr %i.adt, align 4, !tbaa !9
  %i.adv = icmp slt i32 %i.ads, %i.adu
  br i1 %i.adv, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.adw = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.dy
  %i.adx = load i32, ptr %i.adw, align 4, !tbaa !9
  %i.ady = sext i32 %i.adx to i64                 ; 2 uses
  %i.adz = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ady
  %i.aea = load double, ptr %i.adz, align 8, !tbaa !71
  %i.aeb = fadd double %i.ea, %i.aea
  %i.aec = fmul double %i.aeb, 5.000000e-01
  %i.aed = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ady
  %i.aee = load double, ptr %i.aed, align 8, !tbaa !71
  %i.aef = fadd double %i.ec, %i.aee
  %i.aeg = fmul double %i.aef, 5.000000e-01
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.01178 = phi double [ %i.aec, %bb.aa ], [ %i.ea, %bb.z ]
  %.01177 = phi double [ %i.aeg, %bb.aa ], [ %i.ec, %bb.z ]
  %i.aeh = load i32, ptr %i.es, align 4, !tbaa !9
  %i.aei = icmp slt i32 %i.bm, %i.aeh             ; 2 uses
  %i.aej = fadd double %i.cf, %.01171
  %i.aek = fmul double %i.aej, 5.000000e-01
  %i.ael = fadd double %i.ch, %.01170
  %i.aem = fmul double %i.ael, 5.000000e-01
  %.01118 = select i1 %i.aei, double %i.aek, double %i.cf
  %.01117 = select i1 %i.aei, double %i.aem, double %i.ch
  %i.aen = extractelement <2 x double> %i.ll, i64 0
  %i.aeo = fmul double %i.aen, 5.000000e-01       ; 4 uses
  %i.aep = extractelement <2 x double> %i.ps, i64 0 ; 2 uses
  %i.aeq = fdiv double %i.si, %i.aep
  %i.aer = call double @llvm.fabs.f64(double %i.aeq) ; 2 uses
  %i.aes = fmul double %i.aep, 9.800000e+00       ; 2 uses
  %i.aet = call double @sqrt(double noundef %i.aes) #21, !tbaa !9
  %i.aeu = fadd double %i.aer, %i.aet
  %i.aev = fsub double %i.co, %i.bw               ; 5 uses
  %i.aew = fsub double %i.bw, %.01118             ; 2 uses
  %i.aex = fsub double %.01178, %i.co
  %i.aey = fmul double %i.aeu, 5.000000e-01
  %i.aez = fmul double %1, %i.aey
  %i.afa = fdiv double %i.aez, %i.aeo             ; 2 uses
  %i.afb = fsub double 1.000000e+00, %i.afa
  %i.afc = fmul double %i.afa, %i.afb
  %i.afd = fmul double %i.aev, %i.aev             ; 2 uses
  %i.afe = fcmp olt double %i.afd, 1.000000e-30
  %.sroa.speculated28.i1280 = select i1 %i.afe, double 1.000000e-30, double %i.afd
  %i.aff = fdiv double 1.000000e+00, %.sroa.speculated28.i1280 ; 2 uses
  %i.afg = fmul double %i.aev, %i.aex
  %i.afh = fmul double %i.aff, %i.afg             ; 2 uses
  %i.afi = fmul double %i.aev, %i.aew
  %i.afj = fmul double %i.aff, %i.afi             ; 2 uses
  %i.afk = fmul double %i.afc, 5.000000e-01
  %i.afl = fcmp olt double %i.afh, 1.000000e+00
  %.sroa.speculated23.i1281 = select i1 %i.afl, double %i.afh, double 1.000000e+00 ; 2 uses
  %i.afm = fcmp olt double %i.afj, %.sroa.speculated23.i1281
  %.sroa.speculated18.i1282 = select i1 %i.afm, double %i.afj, double %.sroa.speculated23.i1281 ; 2 uses
  %i.afn = fcmp olt double %.sroa.speculated18.i1282, 0.000000e+00
  %.sroa.speculated.i1283 = select i1 %i.afn, double 0.000000e+00, double %.sroa.speculated18.i1282
  %i.afo = fsub double 1.000000e+00, %.sroa.speculated.i1283
  %i.afp = fmul double %i.afk, %i.afo
  %i.afq = fmul double %i.aev, %i.afp             ; 2 uses
  %i.afr = load i32, ptr %i.ex, align 4, !tbaa !9
  %i.afs = icmp slt i32 %i.bm, %i.afr
  br i1 %i.afs, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.aft = sext i32 %i.do to i64
  %i.afu = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.aft
  %i.afv = load i32, ptr %i.afu, align 4, !tbaa !9
  %i.afw = getelementptr inbounds [4 x i8], ptr %i.t, i64 %.01164
  %i.afx = load i32, ptr %i.afw, align 4, !tbaa !9
  %i.afy = icmp slt i32 %i.afv, %i.afx
  br i1 %i.afy, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.afz = getelementptr inbounds [4 x i8], ptr %i.r, i64 %.01164
  %i.aga = load i32, ptr %i.afz, align 4, !tbaa !9
  %i.agb = sext i32 %i.aga to i64
  %i.agc = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.agb
  %i.agd = load double, ptr %i.agc, align 8, !tbaa !71
  %i.age = fadd double %.01159, %i.agd
  %i.agf = fmul double %i.age, 5.000000e-01
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.11160 = phi double [ %i.agf, %bb.ad ], [ %.01159, %bb.ac ]
  %i.agg = extractelement <2 x double> %i.uj, i64 0
  %i.agh = extractelement <2 x double> %i.uj, i64 1 ; 2 uses
  %i.agi = fdiv double %i.agg, %i.agh
  %i.agj = call double @llvm.fabs.f64(double %i.agi)
  %i.agk = fmul double %i.agh, 9.800000e+00
  %i.agl = call double @sqrt(double noundef %i.agk) #21, !tbaa !9
  %i.agm = fadd double %i.agj, %i.agl
  %i.agn = fsub double %.01163, %i.bw             ; 5 uses
  %i.ago = fsub double %.11160, %.01163
  %i.agp = fmul double %i.agm, 5.000000e-01
  %i.agq = fmul double %1, %i.agp
  %i.agr = fdiv double %i.agq, %i.aeo             ; 2 uses
  %i.ags = fsub double 1.000000e+00, %i.agr
  %i.agt = fmul double %i.agr, %i.ags
  %i.agu = fmul double %i.agn, %i.agn             ; 2 uses
  %i.agv = fcmp olt double %i.agu, 1.000000e-30
  %.sroa.speculated28.i1284 = select i1 %i.agv, double 1.000000e-30, double %i.agu
  %i.agw = fdiv double 1.000000e+00, %.sroa.speculated28.i1284 ; 2 uses
  %i.agx = fmul double %i.agn, %i.ago
  %i.agy = fmul double %i.agw, %i.agx             ; 2 uses
  %i.agz = fmul double %i.agn, %i.aew
  %i.aha = fmul double %i.agw, %i.agz             ; 2 uses
  %i.ahb = fmul double %i.agt, 5.000000e-01
  %i.ahc = fcmp olt double %i.agy, 1.000000e+00
  %.sroa.speculated23.i1285 = select i1 %i.ahc, double %i.agy, double 1.000000e+00 ; 2 uses
  %i.ahd = fcmp olt double %i.aha, %.sroa.speculated23.i1285
  %.sroa.speculated18.i1286 = select i1 %i.ahd, double %i.aha, double %.sroa.speculated23.i1285 ; 2 uses
  %i.ahe = fcmp olt double %.sroa.speculated18.i1286, 0.000000e+00
  %.sroa.speculated.i1287 = select i1 %i.ahe, double 0.000000e+00, double %.sroa.speculated18.i1286
  %i.ahf = fsub double 1.000000e+00, %.sroa.speculated.i1287
  %i.ahg = fmul double %i.ahb, %i.ahf
  %i.ahh = fmul double %i.agn, %i.ahg
  %i.ahi = fadd double %i.afq, %i.ahh
  %i.ahj = fmul double %i.ahi, 5.000000e-01
  %i.ahk = fmul double %i.ahj, 5.000000e-01
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ab
  %.01116 = phi double [ %i.ahk, %bb.ae ], [ %i.afq, %bb.ab ]
  %i.ahl = call double @sqrt(double noundef %i.aaz) #21, !tbaa !9
  %i.ahm = fadd double %i.aay, %i.ahl
  %i.ahn = fsub double %i.by, %i.ch               ; 5 uses
  %i.aho = fsub double %i.ch, %.01179
  %i.ahp = fsub double %.01120, %i.by             ; 2 uses
  %i.ahq = fmul double %i.ahm, 5.000000e-01
  %i.ahr = fmul double %1, %i.ahq
  %i.ahs = fdiv double %i.ahr, %i.aaw             ; 2 uses
  %i.aht = fsub double 1.000000e+00, %i.ahs
  %i.ahu = fmul double %i.ahs, %i.aht
  %i.ahv = fmul double %i.ahn, %i.ahn             ; 2 uses
  %i.ahw = fcmp olt double %i.ahv, 1.000000e-30
  %.sroa.speculated28.i1288 = select i1 %i.ahw, double 1.000000e-30, double %i.ahv
  %i.ahx = fdiv double 1.000000e+00, %.sroa.speculated28.i1288 ; 2 uses
  %i.ahy = fmul double %i.ahn, %i.ahp
  %i.ahz = fmul double %i.ahx, %i.ahy             ; 2 uses
  %i.aia = fmul double %i.ahn, %i.aho
  %i.aib = fmul double %i.ahx, %i.aia             ; 2 uses
  %i.aic = fmul double %i.ahu, 5.000000e-01
  %i.aid = fcmp olt double %i.ahz, 1.000000e+00
  %.sroa.speculated23.i1289 = select i1 %i.aid, double %i.ahz, double 1.000000e+00 ; 2 uses
  %i.aie = fcmp olt double %i.aib, %.sroa.speculated23.i1289
  %.sroa.speculated18.i1290 = select i1 %i.aie, double %i.aib, double %.sroa.speculated23.i1289 ; 2 uses
  %i.aif = fcmp olt double %.sroa.speculated18.i1290, 0.000000e+00
  %.sroa.speculated.i1291 = select i1 %i.aif, double 0.000000e+00, double %.sroa.speculated18.i1290
  %i.aig = fsub double 1.000000e+00, %.sroa.speculated.i1291
  %i.aih = fmul double %i.aig, %i.aic
  %i.aii = fmul double %i.ahn, %i.aih             ; 2 uses
  %i.aij = load i32, ptr %i.es, align 4, !tbaa !9
  %i.aik = icmp slt i32 %i.bm, %i.aij
  br i1 %i.aik, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.ail = sext i32 %i.dm to i64
  %i.aim = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.ail
  %i.ain = load i32, ptr %i.aim, align 4, !tbaa !9
  %i.aio = getelementptr inbounds [4 x i8], ptr %i.t, i64 %.01172
  %i.aip = load i32, ptr %i.aio, align 4, !tbaa !9
  %i.aiq = icmp slt i32 %i.ain, %i.aip
  br i1 %i.aiq, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.air = getelementptr inbounds [4 x i8], ptr %i.r, i64 %.01172
  %i.ais = load i32, ptr %i.air, align 4, !tbaa !9
  %i.ait = sext i32 %i.ais to i64
  %i.aiu = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ait
  %i.aiv = load double, ptr %i.aiu, align 8, !tbaa !71
  %i.aiw = fadd double %.01165, %i.aiv
  %i.aix = fmul double %i.aiw, 5.000000e-01
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.11166 = phi double [ %i.aix, %bb.ah ], [ %.01165, %bb.ag ]
  %i.aiy = extractelement <2 x double> %i.sh, i64 0
  %i.aiz = extractelement <2 x double> %i.sh, i64 1 ; 2 uses
  %i.aja = fdiv double %i.aiy, %i.aiz
  %i.ajb = call double @llvm.fabs.f64(double %i.aja)
  %i.ajc = fmul double %i.aiz, 9.800000e+00
  %i.ajd = call double @sqrt(double noundef %i.ajc) #21, !tbaa !9
  %i.aje = fadd double %i.ajb, %i.ajd
  %i.ajf = fsub double %i.by, %.01170             ; 5 uses
  %i.ajg = fsub double %.01170, %.11166
  %i.ajh = fmul double %i.aje, 5.000000e-01
  %i.aji = fmul double %1, %i.ajh
  %i.ajj = fdiv double %i.aji, %i.aaw             ; 2 uses
  %i.ajk = fsub double 1.000000e+00, %i.ajj
  %i.ajl = fmul double %i.ajj, %i.ajk
  %i.ajm = fmul double %i.ajf, %i.ajf             ; 2 uses
  %i.ajn = fcmp olt double %i.ajm, 1.000000e-30
  %.sroa.speculated28.i1292 = select i1 %i.ajn, double 1.000000e-30, double %i.ajm
  %i.ajo = fdiv double 1.000000e+00, %.sroa.speculated28.i1292 ; 2 uses
  %i.ajp = fmul double %i.ajf, %i.ahp
  %i.ajq = fmul double %i.ajo, %i.ajp             ; 2 uses
  %i.ajr = fmul double %i.ajf, %i.ajg
  %i.ajs = fmul double %i.ajo, %i.ajr             ; 2 uses
  %i.ajt = fmul double %i.ajl, 5.000000e-01
  %i.aju = fcmp olt double %i.ajq, 1.000000e+00
  %.sroa.speculated23.i1293 = select i1 %i.aju, double %i.ajq, double 1.000000e+00 ; 2 uses
  %i.ajv = fcmp olt double %i.ajs, %.sroa.speculated23.i1293
  %.sroa.speculated18.i1294 = select i1 %i.ajv, double %i.ajs, double %.sroa.speculated23.i1293 ; 2 uses
  %i.ajw = fcmp olt double %.sroa.speculated18.i1294, 0.000000e+00
  %.sroa.speculated.i1295 = select i1 %i.ajw, double 0.000000e+00, double %.sroa.speculated18.i1294
  %i.ajx = fsub double 1.000000e+00, %.sroa.speculated.i1295
  %i.ajy = fmul double %i.ajt, %i.ajx
  %i.ajz = fmul double %i.ajf, %i.ajy
  %i.aka = fadd double %i.aii, %i.ajz
  %i.akb = fmul double %i.aka, 5.000000e-01
  %i.akc = fmul double %i.akb, 5.000000e-01
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.af
  %.01115 = phi double [ %i.akc, %bb.ai ], [ %i.aii, %bb.af ]
  %i.akd = call double @sqrt(double noundef %i.aes) #21, !tbaa !9
  %i.ake = fadd double %i.aer, %i.akd
  %i.akf = fsub double %i.cq, %i.by               ; 5 uses
  %i.akg = fsub double %i.by, %.01117             ; 2 uses
  %i.akh = fsub double %.01177, %i.cq
  %i.aki = fmul double %i.ake, 5.000000e-01
  %i.akj = fmul double %1, %i.aki
  %i.akk = fdiv double %i.akj, %i.aeo             ; 2 uses
  %i.akl = fsub double 1.000000e+00, %i.akk
  %i.akm = fmul double %i.akk, %i.akl
  %i.akn = fmul double %i.akf, %i.akf             ; 2 uses
  %i.ako = fcmp olt double %i.akn, 1.000000e-30
  %.sroa.speculated28.i1296 = select i1 %i.ako, double 1.000000e-30, double %i.akn
  %i.akp = fdiv double 1.000000e+00, %.sroa.speculated28.i1296 ; 2 uses
  %i.akq = fmul double %i.akf, %i.akh
  %i.akr = fmul double %i.akp, %i.akq             ; 2 uses
  %i.aks = fmul double %i.akf, %i.akg
  %i.akt = fmul double %i.akp, %i.aks             ; 2 uses
  %i.aku = fmul double %i.akm, 5.000000e-01
  %i.akv = fcmp olt double %i.akr, 1.000000e+00
  %.sroa.speculated23.i1297 = select i1 %i.akv, double %i.akr, double 1.000000e+00 ; 2 uses
  %i.akw = fcmp olt double %i.akt, %.sroa.speculated23.i1297
  %.sroa.speculated18.i1298 = select i1 %i.akw, double %i.akt, double %.sroa.speculated23.i1297 ; 2 uses
  %i.akx = fcmp olt double %.sroa.speculated18.i1298, 0.000000e+00
  %.sroa.speculated.i1299 = select i1 %i.akx, double 0.000000e+00, double %.sroa.speculated18.i1298
  %i.aky = fsub double 1.000000e+00, %.sroa.speculated.i1299
  %i.akz = fmul double %i.aky, %i.aku
  %i.ala = fmul double %i.akf, %i.akz             ; 2 uses
  %i.alb = load i32, ptr %i.ex, align 4, !tbaa !9
  %i.alc = icmp slt i32 %i.bm, %i.alb
  br i1 %i.alc, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.ald = sext i32 %i.do to i64
  %i.ale = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.ald
  %i.alf = load i32, ptr %i.ale, align 4, !tbaa !9
  %i.alg = getelementptr inbounds [4 x i8], ptr %i.t, i64 %.01164
  %i.alh = load i32, ptr %i.alg, align 4, !tbaa !9
  %i.ali = icmp slt i32 %i.alf, %i.alh
  br i1 %i.ali, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.alj = getelementptr inbounds [4 x i8], ptr %i.r, i64 %.01164
  %i.alk = load i32, ptr %i.alj, align 4, !tbaa !9
  %i.all = sext i32 %i.alk to i64
  %i.alm = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.all
  %i.aln = load double, ptr %i.alm, align 8, !tbaa !71
  %i.alo = fadd double %.01157, %i.aln
  %i.alp = fmul double %i.alo, 5.000000e-01
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.11158 = phi double [ %i.alp, %bb.al ], [ %.01157, %bb.ak ]
  %i.alq = extractelement <2 x double> %i.uj, i64 0
  %i.alr = extractelement <2 x double> %i.uj, i64 1 ; 2 uses
  %i.als = fdiv double %i.alq, %i.alr
  %i.alt = call double @llvm.fabs.f64(double %i.als)
  %i.alu = fmul double %i.alr, 9.800000e+00
  %i.alv = call double @sqrt(double noundef %i.alu) #21, !tbaa !9
  %i.alw = fadd double %i.alt, %i.alv
  %i.alx = fsub double %.01162, %i.by             ; 5 uses
  %i.aly = fsub double %.11158, %.01162
  %i.alz = fmul double %i.alw, 5.000000e-01
  %i.ama = fmul double %1, %i.alz
  %i.amb = fdiv double %i.ama, %i.aeo             ; 2 uses
  %i.amc = fsub double 1.000000e+00, %i.amb
  %i.amd = fmul double %i.amb, %i.amc
  %i.ame = fmul double %i.alx, %i.alx             ; 2 uses
  %i.amf = fcmp olt double %i.ame, 1.000000e-30
  %.sroa.speculated28.i1300 = select i1 %i.amf, double 1.000000e-30, double %i.ame
  %i.amg = fdiv double 1.000000e+00, %.sroa.speculated28.i1300 ; 2 uses
  %i.amh = fmul double %i.alx, %i.aly
  %i.ami = fmul double %i.amg, %i.amh             ; 2 uses
  %i.amj = fmul double %i.alx, %i.akg
  %i.amk = fmul double %i.amg, %i.amj             ; 2 uses
  %i.aml = fmul double %i.amd, 5.000000e-01
  %i.amm = fcmp olt double %i.ami, 1.000000e+00
  %.sroa.speculated23.i1301 = select i1 %i.amm, double %i.ami, double 1.000000e+00 ; 2 uses
  %i.amn = fcmp olt double %i.amk, %.sroa.speculated23.i1301
  %.sroa.speculated18.i1302 = select i1 %i.amn, double %i.amk, double %.sroa.speculated23.i1301 ; 2 uses
  %i.amo = fcmp olt double %.sroa.speculated18.i1302, 0.000000e+00
  %.sroa.speculated.i1303 = select i1 %i.amo, double 0.000000e+00, double %.sroa.speculated18.i1302
  %i.amp = fsub double 1.000000e+00, %.sroa.speculated.i1303
  %i.amq = fmul double %i.aml, %i.amp
  %i.amr = fmul double %i.alx, %i.amq
  %i.ams = fadd double %i.ala, %i.amr
  %i.amt = fmul double %i.ams, 5.000000e-01
  %i.amu = fmul double %i.amt, 5.000000e-01
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.aj
  %.01114 = phi double [ %i.amu, %bb.am ], [ %i.ala, %bb.aj ]
  %i.amv = load i32, ptr %i.fh, align 4, !tbaa !9
  %i.amw = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.ei
  %i.amx = load i32, ptr %i.amw, align 4, !tbaa !9
  %i.amy = icmp slt i32 %i.amv, %i.amx
  br i1 %i.amy, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.amz = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.ei
  %i.ana = load i32, ptr %i.amz, align 4, !tbaa !9
  %i.anb = sext i32 %i.ana to i64                 ; 2 uses
  %i.anc = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.anb
  %i.and = load double, ptr %i.anc, align 8, !tbaa !71
  %i.ane = fadd double %i.ek, %i.and
  %i.anf = fmul double %i.ane, 5.000000e-01
  %i.ang = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.anb
  %i.anh = load double, ptr %i.ang, align 8, !tbaa !71
  %i.ani = fadd double %i.em, %i.anh
  %i.anj = fmul double %i.ani, 5.000000e-01
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.01174 = phi double [ %i.anf, %bb.ao ], [ %i.ek, %bb.an ]
  %.01173 = phi double [ %i.anj, %bb.ao ], [ %i.em, %bb.an ]
  %i.ank = load i32, ptr %i.fc, align 4, !tbaa !9
  %i.anl = icmp slt i32 %i.bm, %i.ank             ; 2 uses
  %i.anm = fadd double %i.cx, %.01147
  %i.ann = fmul double %i.anm, 5.000000e-01
  %i.ano = fadd double %i.db, %.01145
  %i.anp = fmul double %i.ano, 5.000000e-01
  %.01113 = select i1 %i.anl, double %i.ann, double %i.cx
  %.01112 = select i1 %i.anl, double %i.anp, double %i.db
  %i.anq = fadd double %i.ep, %i.fl
  %i.anr = fmul double %i.anq, 5.000000e-01       ; 4 uses
  %i.ans = extractelement <2 x double> %i.ps, i64 1 ; 2 uses
  %i.ant = fdiv double %i.ul, %i.ans
  %i.anu = call double @llvm.fabs.f64(double %i.ant) ; 2 uses
  %i.anv = fmul double %i.ans, 9.800000e+00       ; 2 uses
  %i.anw = call double @sqrt(double noundef %i.anv) #21, !tbaa !9
  %i.anx = fadd double %i.anu, %i.anw
  %i.any = fsub double %i.bw, %i.dg               ; 5 uses
  %i.anz = fsub double %i.dg, %.01174
  %i.aoa = fsub double %.01113, %i.bw             ; 2 uses
  %i.aob = fmul double %i.anx, 5.000000e-01
  %i.aoc = fmul double %1, %i.aob
  %i.aod = fdiv double %i.aoc, %i.anr             ; 2 uses
  %i.aoe = fsub double 1.000000e+00, %i.aod
  %i.aof = fmul double %i.aod, %i.aoe
  %i.aog = fmul double %i.any, %i.any             ; 2 uses
  %i.aoh = fcmp olt double %i.aog, 1.000000e-30
  %.sroa.speculated28.i1304 = select i1 %i.aoh, double 1.000000e-30, double %i.aog
  %i.aoi = fdiv double 1.000000e+00, %.sroa.speculated28.i1304 ; 2 uses
  %i.aoj = fmul double %i.any, %i.aoa
  %i.aok = fmul double %i.aoi, %i.aoj             ; 2 uses
  %i.aol = fmul double %i.any, %i.anz
  %i.aom = fmul double %i.aoi, %i.aol             ; 2 uses
  %i.aon = fmul double %i.aof, 5.000000e-01
  %i.aoo = fcmp olt double %i.aok, 1.000000e+00
  %.sroa.speculated23.i1305 = select i1 %i.aoo, double %i.aok, double 1.000000e+00 ; 2 uses
  %i.aop = fcmp olt double %i.aom, %.sroa.speculated23.i1305
  %.sroa.speculated18.i1306 = select i1 %i.aop, double %i.aom, double %.sroa.speculated23.i1305 ; 2 uses
  %i.aoq = fcmp olt double %.sroa.speculated18.i1306, 0.000000e+00
  %.sroa.speculated.i1307 = select i1 %i.aoq, double 0.000000e+00, double %.sroa.speculated18.i1306
  %i.aor = fsub double 1.000000e+00, %.sroa.speculated.i1307
  %i.aos = fmul double %i.aon, %i.aor
  %i.aot = fmul double %i.any, %i.aos             ; 2 uses
  %i.aou = load i32, ptr %i.fh, align 4, !tbaa !9
  %i.aov = icmp slt i32 %i.bm, %i.aou
  br i1 %i.aov, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.aow = sext i32 %i.ds to i64
  %i.aox = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.aow
  %i.aoy = load i32, ptr %i.aox, align 4, !tbaa !9
  %i.aoz = getelementptr inbounds [4 x i8], ptr %i.t, i64 %.01156
  %i.apa = load i32, ptr %i.aoz, align 4, !tbaa !9
  %i.apb = icmp slt i32 %i.aoy, %i.apa
  br i1 %i.apb, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.apc = getelementptr inbounds [4 x i8], ptr %i.n, i64 %.01156
  %i.apd = load i32, ptr %i.apc, align 4, !tbaa !9
  %i.ape = sext i32 %i.apd to i64
  %i.apf = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ape
  %i.apg = load double, ptr %i.apf, align 8, !tbaa !71
  %i.aph = fadd double %.01151, %i.apg
  %i.api = fmul double %i.aph, 5.000000e-01
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.11152 = phi double [ %i.api, %bb.ar ], [ %.01151, %bb.aq ]
  %i.apj = extractelement <2 x double> %i.xh, i64 0
  %i.apk = extractelement <2 x double> %i.xh, i64 1 ; 2 uses
  %i.apl = fdiv double %i.apj, %i.apk
  %i.apm = call double @llvm.fabs.f64(double %i.apl)
  %i.apn = fmul double %i.apk, 9.800000e+00
  %i.apo = call double @sqrt(double noundef %i.apn) #21, !tbaa !9
  %i.app = fadd double %i.apm, %i.apo
  %i.apq = fsub double %i.bw, %.01155             ; 5 uses
  %i.apr = fsub double %.01155, %.11152
  %i.aps = fmul double %i.app, 5.000000e-01
  %i.apt = fmul double %1, %i.aps
  %i.apu = fdiv double %i.apt, %i.anr             ; 2 uses
  %i.apv = fsub double 1.000000e+00, %i.apu
  %i.apw = fmul double %i.apu, %i.apv
  %i.apx = fmul double %i.apq, %i.apq             ; 2 uses
  %i.apy = fcmp olt double %i.apx, 1.000000e-30
  %.sroa.speculated28.i1308 = select i1 %i.apy, double 1.000000e-30, double %i.apx
  %i.apz = fdiv double 1.000000e+00, %.sroa.speculated28.i1308 ; 2 uses
  %i.aqa = fmul double %i.apq, %i.aoa
  %i.aqb = fmul double %i.apz, %i.aqa             ; 2 uses
  %i.aqc = fmul double %i.apq, %i.apr
  %i.aqd = fmul double %i.apz, %i.aqc             ; 2 uses
  %i.aqe = fmul double %i.apw, 5.000000e-01
  %i.aqf = fcmp olt double %i.aqb, 1.000000e+00
  %.sroa.speculated23.i1309 = select i1 %i.aqf, double %i.aqb, double 1.000000e+00 ; 2 uses
  %i.aqg = fcmp olt double %i.aqd, %.sroa.speculated23.i1309
  %.sroa.speculated18.i1310 = select i1 %i.aqg, double %i.aqd, double %.sroa.speculated23.i1309 ; 2 uses
  %i.aqh = fcmp olt double %.sroa.speculated18.i1310, 0.000000e+00
  %.sroa.speculated.i1311 = select i1 %i.aqh, double 0.000000e+00, double %.sroa.speculated18.i1310
  %i.aqi = fsub double 1.000000e+00, %.sroa.speculated.i1311
  %i.aqj = fmul double %i.aqe, %i.aqi
  %i.aqk = fmul double %i.apq, %i.aqj
  %i.aql = fadd double %i.aot, %i.aqk
  %i.aqm = fmul double %i.aql, 5.000000e-01
  %i.aqn = fmul double %i.aqm, 5.000000e-01
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ap
  %.01111 = phi double [ %i.aqn, %bb.as ], [ %i.aot, %bb.ap ]
  %i.aqo = load i32, ptr %i.fc, align 4, !tbaa !9
  %i.aqp = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.ed
  %i.aqq = load i32, ptr %i.aqp, align 4, !tbaa !9
  %i.aqr = icmp slt i32 %i.aqo, %i.aqq
  br i1 %i.aqr, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.aqs = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.ed
  %i.aqt = load i32, ptr %i.aqs, align 4, !tbaa !9
  %i.aqu = sext i32 %i.aqt to i64                 ; 2 uses
  %i.aqv = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.aqu
  %i.aqw = load double, ptr %i.aqv, align 8, !tbaa !71
  %i.aqx = fadd double %i.ef, %i.aqw
  %i.aqy = fmul double %i.aqx, 5.000000e-01
  %i.aqz = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.aqu
  %i.ara = load double, ptr %i.aqz, align 8, !tbaa !71
  %i.arb = fadd double %i.eh, %i.ara
  %i.arc = fmul double %i.arb, 5.000000e-01
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.01176 = phi double [ %i.aqy, %bb.au ], [ %i.ef, %bb.at ]
  %.01175 = phi double [ %i.arc, %bb.au ], [ %i.eh, %bb.at ]
  %i.ard = load i32, ptr %i.fh, align 4, !tbaa !9
  %i.are = icmp slt i32 %i.bm, %i.ard             ; 2 uses
  %i.arf = fadd double %i.dg, %.01155
  %i.arg = fmul double %i.arf, 5.000000e-01
  %i.arh = fadd double %i.dk, %.01153
  %i.ari = fmul double %i.arh, 5.000000e-01
  %.01110 = select i1 %i.are, double %i.arg, double %i.dg
  %.01109 = select i1 %i.are, double %i.ari, double %i.dk
  %i.arj = fadd double %i.ep, %i.fg
  %i.ark = fmul double %i.arj, 5.000000e-01       ; 4 uses
  %i.arl = fdiv double %i.qf, %i.pl
  %i.arm = call double @llvm.fabs.f64(double %i.arl) ; 2 uses
  %i.arn = fmul double %i.pl, 9.800000e+00        ; 2 uses
  %i.aro = call double @sqrt(double noundef %i.arn) #21, !tbaa !9
  %i.arp = fadd double %i.arm, %i.aro
  %i.arq = fsub double %i.cx, %i.bw               ; 5 uses
  %i.arr = fsub double %i.bw, %.01110             ; 2 uses
  %i.ars = fsub double %.01176, %i.cx
  %i.art = fmul double %i.arp, 5.000000e-01
  %i.aru = fmul double %1, %i.art
  %i.arv = fdiv double %i.aru, %i.ark             ; 2 uses
  %i.arw = fsub double 1.000000e+00, %i.arv
  %i.arx = fmul double %i.arv, %i.arw
  %i.ary = fmul double %i.arq, %i.arq             ; 2 uses
  %i.arz = fcmp olt double %i.ary, 1.000000e-30
  %.sroa.speculated28.i1312 = select i1 %i.arz, double 1.000000e-30, double %i.ary
  %i.asa = fdiv double 1.000000e+00, %.sroa.speculated28.i1312 ; 2 uses
  %i.asb = fmul double %i.arq, %i.ars
  %i.asc = fmul double %i.asa, %i.asb             ; 2 uses
  %i.asd = fmul double %i.arq, %i.arr
  %i.ase = fmul double %i.asa, %i.asd             ; 2 uses
  %i.asf = fmul double %i.arx, 5.000000e-01
  %i.asg = fcmp olt double %i.asc, 1.000000e+00
  %.sroa.speculated23.i1313 = select i1 %i.asg, double %i.asc, double 1.000000e+00 ; 2 uses
  %i.ash = fcmp olt double %i.ase, %.sroa.speculated23.i1313
  %.sroa.speculated18.i1314 = select i1 %i.ash, double %i.ase, double %.sroa.speculated23.i1313 ; 2 uses
  %i.asi = fcmp olt double %.sroa.speculated18.i1314, 0.000000e+00
  %.sroa.speculated.i1315 = select i1 %i.asi, double 0.000000e+00, double %.sroa.speculated18.i1314
  %i.asj = fsub double 1.000000e+00, %.sroa.speculated.i1315
  %i.ask = fmul double %i.asf, %i.asj
  %i.asl = fmul double %i.arq, %i.ask             ; 2 uses
  %i.asm = load i32, ptr %i.fc, align 4, !tbaa !9
  %i.asn = icmp slt i32 %i.bm, %i.asm
  br i1 %i.asn, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  %i.aso = sext i32 %i.dq to i64
  %i.asp = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.aso
  %i.asq = load i32, ptr %i.asp, align 4, !tbaa !9
  %i.asr = getelementptr inbounds [4 x i8], ptr %i.t, i64 %.01148
  %i.ass = load i32, ptr %i.asr, align 4, !tbaa !9
  %i.ast = icmp slt i32 %i.asq, %i.ass
  br i1 %i.ast, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.asu = getelementptr inbounds [4 x i8], ptr %i.n, i64 %.01148
  %i.asv = load i32, ptr %i.asu, align 4, !tbaa !9
  %i.asw = sext i32 %i.asv to i64
  %i.asx = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.asw
  %i.asy = load double, ptr %i.asx, align 8, !tbaa !71
  %i.asz = fadd double %.01143, %i.asy
  %i.ata = fmul double %i.asz, 5.000000e-01
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.11144 = phi double [ %i.ata, %bb.ax ], [ %.01143, %bb.aw ]
  %i.atb = extractelement <2 x double> %i.aac, i64 0
  %i.atc = extractelement <2 x double> %i.aac, i64 1 ; 2 uses
  %i.atd = fdiv double %i.atb, %i.atc
  %i.ate = call double @llvm.fabs.f64(double %i.atd)
  %i.atf = fmul double %i.atc, 9.800000e+00
  %i.atg = call double @sqrt(double noundef %i.atf) #21, !tbaa !9
  %i.ath = fadd double %i.ate, %i.atg
  %i.ati = fsub double %.01147, %i.bw             ; 5 uses
  %i.atj = fsub double %.11144, %.01147
  %i.atk = fmul double %i.ath, 5.000000e-01
  %i.atl = fmul double %1, %i.atk
  %i.atm = fdiv double %i.atl, %i.ark             ; 2 uses
  %i.atn = fsub double 1.000000e+00, %i.atm
  %i.ato = fmul double %i.atm, %i.atn
  %i.atp = fmul double %i.ati, %i.ati             ; 2 uses
  %i.atq = fcmp olt double %i.atp, 1.000000e-30
  %.sroa.speculated28.i1316 = select i1 %i.atq, double 1.000000e-30, double %i.atp
  %i.atr = fdiv double 1.000000e+00, %.sroa.speculated28.i1316 ; 2 uses
  %i.ats = fmul double %i.ati, %i.atj
  %i.att = fmul double %i.atr, %i.ats             ; 2 uses
  %i.atu = fmul double %i.ati, %i.arr
  %i.atv = fmul double %i.atr, %i.atu             ; 2 uses
  %i.atw = fmul double %i.ato, 5.000000e-01
  %i.atx = fcmp olt double %i.att, 1.000000e+00
  %.sroa.speculated23.i1317 = select i1 %i.atx, double %i.att, double 1.000000e+00 ; 2 uses
  %i.aty = fcmp olt double %i.atv, %.sroa.speculated23.i1317
  %.sroa.speculated18.i1318 = select i1 %i.aty, double %i.atv, double %.sroa.speculated23.i1317 ; 2 uses
  %i.atz = fcmp olt double %.sroa.speculated18.i1318, 0.000000e+00
  %.sroa.speculated.i1319 = select i1 %i.atz, double 0.000000e+00, double %.sroa.speculated18.i1318
  %i.aua = fsub double 1.000000e+00, %.sroa.speculated.i1319
  %i.aub = fmul double %i.atw, %i.aua
  %i.auc = fmul double %i.ati, %i.aub
  %i.aud = fadd double %i.asl, %i.auc
  %i.aue = fmul double %i.aud, 5.000000e-01
  %i.auf = fmul double %i.aue, 5.000000e-01
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.av
  %.01108 = phi double [ %i.auf, %bb.ay ], [ %i.asl, %bb.av ]
  %i.aug = call double @sqrt(double noundef %i.anv) #21, !tbaa !9
  %i.auh = fadd double %i.anu, %i.aug
  %i.aui = fsub double %i.ca, %i.dk               ; 5 uses
  %i.auj = fsub double %i.dk, %.01173
  %i.auk = fsub double %.01112, %i.ca             ; 2 uses
  %i.aul = fmul double %i.auh, 5.000000e-01
  %i.aum = fmul double %1, %i.aul
  %i.aun = fdiv double %i.aum, %i.anr             ; 2 uses
  %i.auo = fsub double 1.000000e+00, %i.aun
  %i.aup = fmul double %i.aun, %i.auo
  %i.auq = fmul double %i.aui, %i.aui             ; 2 uses
  %i.aur = fcmp olt double %i.auq, 1.000000e-30
  %.sroa.speculated28.i1320 = select i1 %i.aur, double 1.000000e-30, double %i.auq
  %i.aus = fdiv double 1.000000e+00, %.sroa.speculated28.i1320 ; 2 uses
  %i.aut = fmul double %i.aui, %i.auk
  %i.auu = fmul double %i.aus, %i.aut             ; 2 uses
  %i.auv = fmul double %i.aui, %i.auj
  %i.auw = fmul double %i.aus, %i.auv             ; 2 uses
  %i.aux = fmul double %i.aup, 5.000000e-01
  %i.auy = fcmp olt double %i.auu, 1.000000e+00
  %.sroa.speculated23.i1321 = select i1 %i.auy, double %i.auu, double 1.000000e+00 ; 2 uses
  %i.auz = fcmp olt double %i.auw, %.sroa.speculated23.i1321
  %.sroa.speculated18.i1322 = select i1 %i.auz, double %i.auw, double %.sroa.speculated23.i1321 ; 2 uses
  %i.ava = fcmp olt double %.sroa.speculated18.i1322, 0.000000e+00
  %.sroa.speculated.i1323 = select i1 %i.ava, double 0.000000e+00, double %.sroa.speculated18.i1322
  %i.avb = fsub double 1.000000e+00, %.sroa.speculated.i1323
  %i.avc = fmul double %i.avb, %i.aux
  %i.avd = fmul double %i.aui, %i.avc             ; 2 uses
  %i.ave = load i32, ptr %i.fh, align 4, !tbaa !9
  %i.avf = icmp slt i32 %i.bm, %i.ave
  br i1 %i.avf, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bb.az
  %i.avg = sext i32 %i.ds to i64
  %i.avh = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.avg
  %i.avi = load i32, ptr %i.avh, align 4, !tbaa !9
  %i.avj = getelementptr inbounds [4 x i8], ptr %i.t, i64 %.01156
  %i.avk = load i32, ptr %i.avj, align 4, !tbaa !9
  %i.avl = icmp slt i32 %i.avi, %i.avk
  br i1 %i.avl, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.avm = getelementptr inbounds [4 x i8], ptr %i.n, i64 %.01156
  %i.avn = load i32, ptr %i.avm, align 4, !tbaa !9
  %i.avo = sext i32 %i.avn to i64
  %i.avp = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.avo
  %i.avq = load double, ptr %i.avp, align 8, !tbaa !71
  %i.avr = fadd double %.01149, %i.avq
  %i.avs = fmul double %i.avr, 5.000000e-01
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.11150 = phi double [ %i.avs, %bb.bb ], [ %.01149, %bb.ba ]
  %i.avt = extractelement <2 x double> %i.xh, i64 0
  %i.avu = extractelement <2 x double> %i.xh, i64 1 ; 2 uses
  %i.avv = fdiv double %i.avt, %i.avu
  %i.avw = call double @llvm.fabs.f64(double %i.avv)
  %i.avx = fmul double %i.avu, 9.800000e+00
  %i.avy = call double @sqrt(double noundef %i.avx) #21, !tbaa !9
  %i.avz = fadd double %i.avw, %i.avy
  %i.awa = fsub double %i.ca, %.01153             ; 5 uses
  %i.awb = fsub double %.01153, %.11150
  %i.awc = fmul double %i.avz, 5.000000e-01
  %i.awd = fmul double %1, %i.awc
  %i.awe = fdiv double %i.awd, %i.anr             ; 2 uses
  %i.awf = fsub double 1.000000e+00, %i.awe
  %i.awg = fmul double %i.awe, %i.awf
  %i.awh = fmul double %i.awa, %i.awa             ; 2 uses
  %i.awi = fcmp olt double %i.awh, 1.000000e-30
  %.sroa.speculated28.i1324 = select i1 %i.awi, double 1.000000e-30, double %i.awh
  %i.awj = fdiv double 1.000000e+00, %.sroa.speculated28.i1324 ; 2 uses
  %i.awk = fmul double %i.awa, %i.auk
  %i.awl = fmul double %i.awj, %i.awk             ; 2 uses
  %i.awm = fmul double %i.awa, %i.awb
  %i.awn = fmul double %i.awj, %i.awm             ; 2 uses
  %i.awo = fmul double %i.awg, 5.000000e-01
  %i.awp = fcmp olt double %i.awl, 1.000000e+00
  %.sroa.speculated23.i1325 = select i1 %i.awp, double %i.awl, double 1.000000e+00 ; 2 uses
  %i.awq = fcmp olt double %i.awn, %.sroa.speculated23.i1325
  %.sroa.speculated18.i1326 = select i1 %i.awq, double %i.awn, double %.sroa.speculated23.i1325 ; 2 uses
  %i.awr = fcmp olt double %.sroa.speculated18.i1326, 0.000000e+00
  %.sroa.speculated.i1327 = select i1 %i.awr, double 0.000000e+00, double %.sroa.speculated18.i1326
  %i.aws = fsub double 1.000000e+00, %.sroa.speculated.i1327
  %i.awt = fmul double %i.awo, %i.aws
  %i.awu = fmul double %i.awa, %i.awt
  %i.awv = fadd double %i.avd, %i.awu
  %i.aww = fmul double %i.awv, 5.000000e-01
  %i.awx = fmul double %i.aww, 5.000000e-01
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.az
  %.01107 = phi double [ %i.awx, %bb.bc ], [ %i.avd, %bb.az ]
  %i.awy = call double @sqrt(double noundef %i.arn) #21, !tbaa !9
  %i.awz = fadd double %i.arm, %i.awy
  %i.axa = fsub double %i.db, %i.ca               ; 5 uses
  %i.axb = fsub double %i.ca, %.01109             ; 2 uses
  %i.axc = fsub double %.01175, %i.db
  %i.axd = fmul double %i.awz, 5.000000e-01
  %i.axe = fmul double %1, %i.axd
  %i.axf = fdiv double %i.axe, %i.ark             ; 2 uses
  %i.axg = fsub double 1.000000e+00, %i.axf
  %i.axh = fmul double %i.axf, %i.axg
  %i.axi = fmul double %i.axa, %i.axa             ; 2 uses
  %i.axj = fcmp olt double %i.axi, 1.000000e-30
  %.sroa.speculated28.i1328 = select i1 %i.axj, double 1.000000e-30, double %i.axi
  %i.axk = fdiv double 1.000000e+00, %.sroa.speculated28.i1328 ; 2 uses
  %i.axl = fmul double %i.axa, %i.axc
  %i.axm = fmul double %i.axk, %i.axl             ; 2 uses
end_hunk_0
