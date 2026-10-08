Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvartypes?download=true
inline.NumInlined: 1130
inline.NumDeleted: 326
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN12colvarmodule8rotation21calc_optimal_rotationERKSt6vectorINS_7rvectorESaIS2_EES6_:bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !81
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = sub i64 %i.bf, %i.bg
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bh) #19
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.bi = load ptr, ptr %3, align 8, !tbaa !80    ; 3 uses
  %.not.i.i.i10 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorIdSaIdEED2Ev.exit11, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !81
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bi to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bn) #19
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit11

_ZNSt6vectorIdSaIdEED2Ev.exit11:                  ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit13

bb.i:                                             ; preds = %bb.d
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %4, align 8, !tbaa !80    ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIdSaIdEED2Ev.exit13, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !81
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.bq to i64
  %i.bv = sub i64 %i.bt, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bv) #19
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit13

_ZNSt6vectorIdSaIdEED2Ev.exit13:                  ; preds = %bb.j, %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.h ], [ %i.bp, %bb.i ], [ %i.bp, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.bw = load ptr, ptr %3, align 8, !tbaa !80    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIdSaIdEED2Ev.exit15, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit13
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !81
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bw to i64
  %i.cb = sub i64 %i.bz, %i.ca
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.cb) #19
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit15

_ZNSt6vectorIdSaIdEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit13, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %.pn

bb.l:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit11, %_ZN12colvarmodule8rotation24build_correlation_matrixERKSt6vectorINS_7rvectorESaIS2_EES6_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN12colvarmodule8rotation26calc_optimal_rotation_implEv(ptr noundef nonnull align 8 dereferenceable(568) initializes((72, 200)) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.colvarmodule::matrix2d", align 8 ; 19 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 28 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 24 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.d = load double, ptr %0, align 8, !tbaa !63  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load double, ptr %i.e, align 8, !tbaa !64 ; 4 uses
  %i.g = fadd double %i.d, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.i = load double, ptr %i.h, align 8, !tbaa !61 ; 4 uses
  %i.j = fadd double %i.g, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  store double %i.j, ptr %i.k, align 8, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !65 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !66 ; 2 uses
  %i.p = fsub double %i.m, %i.o                   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  store double %i.p, ptr %i.q, align 8, !tbaa !55
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double %i.p, ptr %i.r, align 8, !tbaa !55
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load double, ptr %i.s, align 8, !tbaa !67 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.v = load double, ptr %i.u, align 8, !tbaa !68 ; 2 uses
  %i.w = fsub double %i.v, %i.t                   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  store double %i.w, ptr %i.x, align 8, !tbaa !55
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88
  store double %i.w, ptr %i.y, align 8, !tbaa !55
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !69 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !70 ; 2 uses
  %i.ad = fsub double %i.aa, %i.ac                ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 168
  store double %i.ad, ptr %i.ae, align 8, !tbaa !55
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96
  store double %i.ad, ptr %i.af, align 8, !tbaa !55
  %i.ag = fsub double %i.d, %i.f
  %i.ah = fsub double %i.ag, %i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 112
  store double %i.ah, ptr %i.ai, align 8, !tbaa !55
  %i.aj = fadd double %i.aa, %i.ac                ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 144
  store double %i.aj, ptr %i.ak, align 8, !tbaa !55
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 120
  store double %i.aj, ptr %i.al, align 8, !tbaa !55
  %i.am = fadd double %i.t, %i.v                  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 176
  store double %i.am, ptr %i.an, align 8, !tbaa !55
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 128
  store double %i.am, ptr %i.ao, align 8, !tbaa !55
  %i.ap = fsub double %i.f, %i.d
  %i.aq = fsub double %i.ap, %i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 152
  store double %i.aq, ptr %i.ar, align 8, !tbaa !55
  %i.as = fadd double %i.m, %i.o                  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 184
  store double %i.as, ptr %i.at, align 8, !tbaa !55
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 160
  store double %i.as, ptr %i.au, align 8, !tbaa !55
  %i.av = fneg double %i.d
  %i.aw = fsub double %i.av, %i.f
  %i.ax = fadd double %i.aw, %i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 192
  store double %i.ax, ptr %i.ay, align 8, !tbaa !55
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.az, ptr noundef nonnull align 8 dereferenceable(128) %i.k, i64 128, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !53, !range !78, !noundef !77
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.b, label %bb.z

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  store i64 4, ptr %1, align 8, !tbaa !97
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 4, ptr %i.bd, align 8, !tbaa !98
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.be, i8 0, i64 72, i1 false)
  invoke void @_ZN12colvarmodule8matrix2dIdE6resizeEmm(ptr noundef nonnull align 8 dereferenceable(88) %1, i64 noundef 4, i64 noundef 4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !99 ; 3 uses
  %i.bj = load ptr, ptr %i.be, align 8, !tbaa !80 ; 5 uses
  %i.bk = ptrtoint ptr %i.bi to i64               ; 3 uses
  %i.bl = ptrtoint ptr %i.bj to i64               ; 4 uses
  %i.bm = sub i64 %i.bk, %i.bl                    ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !81
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = sub i64 %i.bp, %i.bl
  %i.br = icmp ugt i64 %i.bm, %i.bq
  br i1 %i.br, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.bs = icmp ugt i64 %i.bm, 9223372036854775800
  br i1 %i.bs, label %bb.e, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #20
          to label %.noexc529 unwind label %bb.h

.noexc529:                                        ; preds = %bb.e
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.d
  %i.bt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bm) #21
          to label %.noexc530 unwind label %bb.h  ; 3 uses

.noexc530:                                        ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.bu = add i64 %i.bk, -8
  %i.bv = sub i64 %i.bu, %i.bl
  %i.bw = and i64 %i.bv, -8
  %i.bx = add i64 %i.bw, 8
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bt, i8 0, i64 %i.bx, i1 false), !tbaa !55
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bm ; 2 uses
  %i.bz = load ptr, ptr %i.be, align 8, !tbaa !80 ; 3 uses
  %i.ca = load ptr, ptr %i.bn, align 8, !tbaa !81
  store ptr %i.bt, ptr %i.be, align 8, !tbaa !80
  store ptr %i.by, ptr %i.bh, align 8, !tbaa !99
  store ptr %i.by, ptr %i.bn, align 8, !tbaa !81
  %.not.i.i.i.i528 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i528, label %_ZN12colvarmodule8matrix2dIdEC2Emm.exit, label %bb.f

bb.f:                                             ; preds = %.noexc530
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.bz to i64
  %i.cd = sub i64 %i.cb, %i.cc
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.cd) #19
  br label %_ZN12colvarmodule8matrix2dIdEC2Emm.exit

bb.g:                                             ; preds = %bb.c
  %i.ce = icmp eq ptr %i.bi, %i.bj
  br i1 %i.ce, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.i, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.i.loopexit

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.i.loopexit:   ; preds = %bb.g
  %i.cf = add i64 %i.bk, -8
  %i.cg = sub i64 %i.cf, %i.bl
  %i.ch = and i64 %i.cg, -8
  %i.ci = add i64 %i.ch, 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.bj, i8 0, i64 %i.ci, i1 false), !tbaa !55
  %39 = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bm
  br label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.i:            ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.i.loopexit, %bb.g
  %.0.i.i.i = phi ptr [ %i.bj, %bb.g ], [ %39, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.i.loopexit ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.bi, %.0.i.i.i
  br i1 %.not.i.i, label %_ZN12colvarmodule8matrix2dIdEC2Emm.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.i
  store ptr %.0.i.i.i, ptr %i.bh, align 8, !tbaa !99
  br label %_ZN12colvarmodule8matrix2dIdEC2Emm.exit

bb.h:                                             ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i, %bb.e, %bb.b
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ck = load ptr, ptr %i.bg, align 8, !tbaa !100 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPdSaIS0_EED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !101
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %i.ck to i64
  %i.cp = sub i64 %i.cn, %i.co
  call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.cp) #19
  br label %_ZNSt6vectorIPdSaIS0_EED2Ev.exit.i

_ZNSt6vectorIPdSaIS0_EED2Ev.exit.i:               ; preds = %bb.i, %bb.h
  %i.cq = load ptr, ptr %i.bf, align 8, !tbaa !102 ; 3 uses
  %.not.i.i.i4.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i4.i, label %_ZNSt6vectorIN12colvarmodule8matrix2dIdE3rowESaIS3_EED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPdSaIS0_EED2Ev.exit.i
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !103
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = ptrtoint ptr %i.cq to i64
  %i.cv = sub i64 %i.ct, %i.cu
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.cv) #19
  br label %_ZNSt6vectorIN12colvarmodule8matrix2dIdE3rowESaIS3_EED2Ev.exit.i

_ZNSt6vectorIN12colvarmodule8matrix2dIdE3rowESaIS3_EED2Ev.exit.i: ; preds = %bb.j, %_ZNSt6vectorIPdSaIS0_EED2Ev.exit.i
  %i.cw = load ptr, ptr %i.be, align 8, !tbaa !80 ; 3 uses
  %.not.i.i.i5.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i5.i, label %common.resume, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN12colvarmodule8matrix2dIdE3rowESaIS3_EED2Ev.exit.i
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !81
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = ptrtoint ptr %i.cw to i64
  %i.db = sub i64 %i.cz, %i.da
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.db) #19
  br label %common.resume

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit525, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit493, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit490, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit463, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, %_ZNSt6vectorIN12colvarmodule8matrix2dIdE3rowESaIS3_EED2Ev.exit.i, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.cj, %_ZNSt6vectorIN12colvarmodule8matrix2dIdE3rowESaIS3_EED2Ev.exit.i ], [ %i.cj, %bb.k ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125 ], [ %.pn59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136 ], [ %.pn90.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit525 ], [ %.pn88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit493 ], [ %.pn79.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit490 ], [ %.pn71.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit463 ], [ %.pn63.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439 ], [ %.pn61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415 ], [ %.pn95, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159 ], [ %i.nh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165 ]
  resume { ptr, i32 } %common.resume.op

_ZN12colvarmodule8matrix2dIdEC2Emm.exit:          ; preds = %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.i, %bb.f, %.noexc530
  %i.dc = load ptr, ptr %i.bf, align 8, !tbaa !102 ; 4 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !317 ; 4 uses
  %i.de = load double, ptr %i.az, align 8, !tbaa !55
  store double %i.de, ptr %i.dd, align 8, !tbaa !55
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.dg = load double, ptr %i.df, align 8, !tbaa !55
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store double %i.dg, ptr %i.dh, align 8, !tbaa !55
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.dj = load double, ptr %i.di, align 8, !tbaa !55
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store double %i.dj, ptr %i.dk, align 8, !tbaa !55
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !55
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  store double %i.dm, ptr %i.dn, align 8, !tbaa !55
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !317 ; 4 uses
  %i.dr = load double, ptr %i.do, align 8, !tbaa !55
  store double %i.dr, ptr %i.dq, align 8, !tbaa !55
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !55
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store double %i.dt, ptr %i.du, align 8, !tbaa !55
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !55
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  store double %i.dw, ptr %i.dx, align 8, !tbaa !55
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !55
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  store double %i.dz, ptr %i.ea, align 8, !tbaa !55
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !317 ; 4 uses
  %i.ee = load double, ptr %i.eb, align 8, !tbaa !55
  store double %i.ee, ptr %i.ed, align 8, !tbaa !55
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !55
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store double %i.eg, ptr %i.eh, align 8, !tbaa !55
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !55
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store double %i.ej, ptr %i.ek, align 8, !tbaa !55
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.em = load double, ptr %i.el, align 8, !tbaa !55
  %i.en = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  store double %i.em, ptr %i.en, align 8, !tbaa !55
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dc, i64 48
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !317 ; 4 uses
  %i.er = load double, ptr %i.eo, align 8, !tbaa !55
  store double %i.er, ptr %i.eq, align 8, !tbaa !55
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.et = load double, ptr %i.es, align 8, !tbaa !55
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store double %i.et, ptr %i.eu, align 8, !tbaa !55
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !55
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store double %i.ew, ptr %i.ex, align 8, !tbaa !55
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !55
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  store double %i.ez, ptr %i.fa, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.fb = load i64, ptr @_ZN12colvarmodule8cv_widthE, align 8, !tbaa !24
  %i.fc = load i64, ptr @_ZN12colvarmodule7cv_precE, align 8, !tbaa !24
  invoke void @_ZN12colvarmodule6to_strB5cxx11ERKNS_8matrix2dIdEEmm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 noundef %i.fb, i64 noundef %i.fc)
          to label %bb.l unwind label %bb.v

bb.l:                                             ; preds = %_ZN12colvarmodule8matrix2dIdEC2Emm.exit
  %i.fd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.24, i64 noundef 8)
          to label %.noexc unwind label %bb.w     ; 6 uses

.noexc:                                           ; preds = %bb.l
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.fe, ptr %3, align 8, !tbaa !33, !alias.scope !318
  %i.ff = load ptr, ptr %i.fd, align 8, !tbaa !40 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 16 ; 5 uses
  %i.fh = icmp eq ptr %i.ff, %i.fg
  br i1 %i.fh, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.m:                                             ; preds = %.noexc
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !35 ; 3 uses
  %i.fk = icmp ult i64 %i.fj, 16
  call void @llvm.assume(i1 %i.fk)
  %i.fl = add nuw nsw i64 %i.fj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fe, ptr noundef nonnull align 8 dereferenceable(1) %i.fg, i64 %i.fl, i1 false)
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.ff, ptr %3, align 8, !tbaa !40, !alias.scope !318
  %i.fm = load i64, ptr %i.fg, align 8, !tbaa !36
  store i64 %i.fm, ptr %i.fe, align 8, !tbaa !36, !alias.scope !318
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !35
  br label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.m
  %i.fn = phi i64 [ %i.fj, %bb.m ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.fn, ptr %i.fp, align 8, !tbaa !35, !alias.scope !318
  store ptr %i.fg, ptr %i.fd, align 8, !tbaa !40
  store i64 0, ptr %i.fo, align 8, !tbaa !35
  store i8 0, ptr %i.fg, align 8, !tbaa !36
  call void @llvm.experimental.noalias.scope.decl(metadata !319)
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !35, !noalias !319
  %i.fr = icmp eq i64 %i.fq, 4611686018427387903
  br i1 %i.fr, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #20
          to label %.noexc103 unwind label %bb.x

.noexc103:                                        ; preds = %bb.o
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.n
  %i.fs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.11, i64 noundef 1)
          to label %.noexc104 unwind label %bb.x  ; 6 uses

.noexc104:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.ft, ptr %2, align 8, !tbaa !33, !alias.scope !319
  %i.fu = load ptr, ptr %i.fs, align 8, !tbaa !40 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 16 ; 5 uses
  %i.fw = icmp eq ptr %i.fu, %i.fv
  br i1 %i.fw, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

bb.p:                                             ; preds = %.noexc104
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !35 ; 3 uses
  %i.fz = icmp ult i64 %i.fy, 16
  call void @llvm.assume(i1 %i.fz)
  %i.ga = add nuw nsw i64 %i.fy, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ft, ptr noundef nonnull align 8 dereferenceable(1) %i.fv, i64 %i.ga, i1 false)
  br label %bb.q

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %.noexc104
  store ptr %i.fu, ptr %2, align 8, !tbaa !40, !alias.scope !319
  %i.gb = load i64, ptr %i.fv, align 8, !tbaa !36
  store i64 %i.gb, ptr %i.ft, align 8, !tbaa !36, !alias.scope !319
  %.phi.trans.insert.i101 = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %.pre.i102 = load i64, ptr %.phi.trans.insert.i101, align 8, !tbaa !35
  br label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100, %bb.p
  %i.gc = phi i64 [ %i.fy, %bb.p ], [ %.pre.i102, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100 ]
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.gc, ptr %i.ge, align 8, !tbaa !35, !alias.scope !319
  store ptr %i.fv, ptr %i.fs, align 8, !tbaa !40
  store i64 0, ptr %i.gd, align 8, !tbaa !35
  store i8 0, ptr %i.fv, align 8, !tbaa !36
  invoke void @_ZN12colvarmodule3logERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 10)
          to label %bb.r unwind label %bb.y

bb.r:                                             ; preds = %bb.q
  %i.gf = load ptr, ptr %2, align 8, !tbaa !40    ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.ft
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %bb.r
  %i.gh = load i64, ptr %i.ft, align 8, !tbaa !36
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gi) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105
  %i.gj = load ptr, ptr %3, align 8, !tbaa !40    ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.fe
  br i1 %i.gk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.gl = load i64, ptr %i.fe, align 8, !tbaa !36
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gm) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106
  %i.gn = load ptr, ptr %4, align 8, !tbaa !40    ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.gp = icmp eq ptr %i.gn, %i.go
  br i1 %i.gp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108
  %i.gq = load i64, ptr %i.go, align 8, !tbaa !36
  %i.gr = add i64 %i.gq, 1
  call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gr) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
end_hunk_0
