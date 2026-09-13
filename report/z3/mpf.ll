Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/mpf?download=true
inline.NumInlined: 1714
inline.NumDeleted: 282
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN11mpf_manager6to_mpzERK3mpfR11mpz_managerILb0EER3mpz:bb.a
  %i.s = xor i32 %i.q, -1
  tail call void @_ZN11mpz_managerILb0EE13machine_div2kER3mpzj(ptr noundef nonnull align 8 dereferenceable(600) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %i.s)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.t = add nsw i32 %i.q, 1
  tail call void @_ZN11mpz_managerILb0EE5mul2kER3mpzj(ptr noundef nonnull align 8 dereferenceable(600) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %i.t)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void
}

declare void @_ZN11mpz_managerILb0EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11mpf_manager10to_sbv_mpqE17mpf_rounding_modeRK3mpfR15_scoped_numeralI11mpq_managerILb0EEE(ptr noundef nonnull align 8 dereferenceable(840) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.mpz, align 8                 ; 6 uses
  %5 = alloca %class.scoped_mpf, align 8          ; 11 uses
  %6 = alloca %class._scoped_numeral.0, align 8   ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::allocator", align 1    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %0, ptr %5, align 8, !tbaa !67
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store i32 0, ptr %i.b, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 4 uses
  %i.d = load i8, ptr %i.c, align 4
  %i.e = and i8 %i.d, -4                          ; 2 uses
  store i8 %i.e, ptr %i.c, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 0, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48, !nonnull !49, !align !50 ; 2 uses
  store ptr %i.h, ptr %6, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 12 uses
  store i32 0, ptr %i.i, align 8, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 7 uses
  %i.k = load i8, ptr %i.j, align 4
  %i.l = and i8 %i.k, -4
  store i8 %i.l, ptr %i.j, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr null, ptr %i.m, align 8, !tbaa !18
  %i.n = load i32, ptr %2, align 8
  store i32 %i.n, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  store i64 %i.p, ptr %i.q, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.t = load i8, ptr %i.s, align 4
  %i.u = and i8 %i.t, 1
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.w = load i32, ptr %i.r, align 8, !tbaa !14
  store i32 %i.w, ptr %i.b, align 8, !tbaa !14
  store i8 %i.e, ptr %i.c, align 4
  br label %_ZN11mpf_manager3setER3mpfRKS0_.exit

bb.c:                                             ; preds = %bb.a
  invoke void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.r)
          to label %_ZN11mpf_manager3setER3mpfRKS0_.exit unwind label %bb.h

_ZN11mpf_manager3setER3mpfRKS0_.exit:             ; preds = %bb.b, %bb.c
  invoke void @_ZN11mpf_manager6unpackER3mpfb(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i1 noundef zeroext true)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %_ZN11mpf_manager3setER3mpfRKS0_.exit
  %i.x = load i64, ptr %i.q, align 8, !tbaa !17   ; 2 uses
  %i.y = icmp sgt i64 %i.x, 2147483646
  br i1 %i.y, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.z = call ptr @__cxa_allocate_exception(i64 40) #23 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.z, align 8, !tbaa !74
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 3 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !61
  %i.ac = load ptr, ptr %7, align 8, !tbaa !64    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !65 ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 16
  call void @llvm.assume(i1 %i.ah)
  %i.ai = add nuw nsw i64 %i.ag, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ab, ptr noundef nonnull align 8 dereferenceable(1) %i.ad, i64 %i.ai, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !64
  %i.aj = load i64, ptr %i.ad, align 8, !tbaa !58
  store i64 %i.aj, ptr %i.ab, align 8, !tbaa !58
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre74 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !65
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ak = phi i64 [ %i.ag, %bb.g ], [ %.pre74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %i.ak, ptr %i.am, align 8, !tbaa !65
  store ptr %i.ad, ptr %7, align 8, !tbaa !64
  store i64 0, ptr %i.al, align 8, !tbaa !65
  store i8 0, ptr %i.ad, align 8, !tbaa !58
  invoke void @__cxa_throw(ptr nonnull %i.z, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #25
          to label %bb.ad unwind label %bb.i

bb.h:                                             ; preds = %bb.m, %bb.c, %_ZN11mpf_manager3setER3mpfRKS0_.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.i:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %i.ap = load ptr, ptr %7, align 8, !tbaa !64    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.ad
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %bb.i
  %i.ar = load i64, ptr %i.ad, align 8, !tbaa !58
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.ac

bb.j:                                             ; preds = %bb.e
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @__cxa_free_exception(ptr %i.z) #23
  br label %bb.ac

bb.k:                                             ; preds = %bb.d
  %i.au = load i8, ptr %i.c, align 4
  %i.av = and i8 %i.au, 1
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ax = load i32, ptr %i.b, align 8, !tbaa !14
  store i32 %i.ax, ptr %i.i, align 8, !tbaa !14
  %i.ay = load i8, ptr %i.j, align 4
  %i.az = and i8 %i.ay, -2
  store i8 %i.az, ptr %i.j, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit

bb.m:                                             ; preds = %bb.k
  %i.ba = load ptr, ptr %i.g, align 8, !tbaa !48, !nonnull !49, !align !50
  invoke void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %._ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit_crit_edge unwind label %bb.h

._ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit_crit_edge: ; preds = %bb.m
  %.pre = load i64, ptr %i.q, align 8, !tbaa !17
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit

_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit:       ; preds = %._ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit_crit_edge, %bb.l
  %i.bb = phi i64 [ %.pre, %._ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit_crit_edge ], [ %i.x, %bb.l ]
  %i.bc = load i32, ptr %i.a, align 8
  %i.bd = lshr i32 %i.bc, 15
  %i.be = and i32 %i.bd, 65535
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = sub nsw i64 %i.bb, %i.bf                ; 2 uses
  %i.bh = add nsw i64 %i.bg, 1                    ; 2 uses
  %i.bi = icmp slt i64 %i.bg, -1
  br i1 %i.bi, label %.lr.ph.preheader, label %bb.v

.lr.ph.preheader:                                 ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit
  %i.bj = load i8, ptr %i.j, align 4
  %i.bk = and i8 %i.bj, 1
  %i.bl = icmp eq i8 %i.bk, 0
  %i.bm = load ptr, ptr %i.m, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.0.in.in.in.i.i = select i1 %i.bl, ptr %i.i, ptr %i.bn
  %.028.in.in63 = load i32, ptr %.0.in.in.in.i.i, align 4, !tbaa !19
  %.028.in64 = trunc i32 %.028.in.in63 to i1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.n
  %.028.in69 = phi i1 [ %.028.in, %bb.n ], [ %.028.in64, %.lr.ph.preheader ] ; 5 uses
  %.02668 = phi i1 [ %i.bu, %bb.n ], [ false, %.lr.ph.preheader ]
  %.02767 = phi i1 [ %.028.in69, %bb.n ], [ false, %.lr.ph.preheader ]
  %.02966 = phi i64 [ %i.bv, %bb.n ], [ %i.bh, %.lr.ph.preheader ]
  %i.bo = load ptr, ptr %i.g, align 8, !tbaa !48, !nonnull !49, !align !50
  invoke void @_ZN11mpz_managerILb0EE13machine_div2kER3mpzj(ptr noundef nonnull align 8 dereferenceable(600) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i32 noundef 1)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %.lr.ph
  %i.bp = load i8, ptr %i.j, align 4
  %i.bq = and i8 %i.bp, 1
  %i.br = icmp eq i8 %i.bq, 0
  %i.bs = load ptr, ptr %i.m, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.0.in.in.in.i.i49 = select i1 %i.br, ptr %i.i, ptr %i.bt
  %i.bu = or i1 %.02767, %.02668                  ; 4 uses
  %i.bv = add nsw i64 %.02966, 1                  ; 2 uses
  %.028.in.in = load i32, ptr %.0.in.in.in.i.i49, align 4, !tbaa !19
  %.028.in = trunc i32 %.028.in.in to i1          ; 2 uses
  %.not = icmp eq i64 %i.bv, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !91

bb.o:                                             ; preds = %bb.z, %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i, %bb.x, %bb.v
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.p:                                             ; preds = %.lr.ph
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

._crit_edge:                                      ; preds = %bb.n
  switch i32 %1, label %bb.q [
    i32 0, label %.split59
    i32 1, label %bb.t
    i32 2, label %.split58
    i32 3, label %.split
    i32 4, label %.critedge
  ]

.split59:                                         ; preds = %._crit_edge
  %i.by = select i1 %.028.in, i1 true, i1 %i.bu
  %i.bz = select i1 %.028.in69, i1 %i.by, i1 false
  br i1 %i.bz, label %bb.u, label %.critedge

.split58:                                         ; preds = %._crit_edge
  %i.ca = load i32, ptr %2, align 8
  %.not39 = icmp sgt i32 %i.ca, -1
  %i.cb = select i1 %.028.in69, i1 true, i1 %i.bu
  %i.cc = select i1 %.not39, i1 %i.cb, i1 false
  br i1 %i.cc, label %bb.u, label %.critedge

.split:                                           ; preds = %._crit_edge
  %i.cd = load i32, ptr %2, align 8
  %i.ce = icmp slt i32 %i.cd, 0
  %i.cf = select i1 %.028.in69, i1 true, i1 %i.bu
  %i.cg = select i1 %i.ce, i1 %i.cf, i1 false
  br i1 %i.cg, label %bb.u, label %.critedge

bb.q:                                             ; preds = %._crit_edge
  invoke void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.2, i32 noundef 1213, ptr noundef nonnull @.str.3)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  invoke void @_Z18invoke_exit_actionj(i32 noundef 114)
          to label %.critedge unwind label %bb.s

bb.s:                                             ; preds = %bb.u, %bb.r, %bb.q
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.t:                                             ; preds = %._crit_edge
  br i1 %.028.in69, label %bb.u, label %.critedge

bb.u:                                             ; preds = %.split59, %.split58, %.split, %bb.t
  %i.ci = load ptr, ptr %i.g, align 8, !tbaa !48, !nonnull !49, !align !50
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store i32 1, ptr %4, align 8, !tbaa !14
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 4
  %i.cl = and i8 %i.ck, -4
  store i8 %i.cl, ptr %i.cj, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.cm, align 8, !tbaa !18
  invoke void @_ZN11mpz_managerILb0EE3addERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %_ZN11mpz_managerILb0EE3incER3mpz.exit unwind label %bb.s

_ZN11mpz_managerILb0EE3incER3mpz.exit:            ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.critedge

bb.v:                                             ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit
  %i.cn = load ptr, ptr %i.g, align 8, !tbaa !48, !nonnull !49, !align !50
  %i.co = trunc i64 %i.bh to i32
  invoke void @_ZN11mpz_managerILb0EE5mul2kER3mpzj(ptr noundef nonnull align 8 dereferenceable(600) %i.cn, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i32 noundef %i.co)
          to label %.critedge unwind label %bb.o

.critedge:                                        ; preds = %.split59, %.split58, %.split, %_ZN11mpz_managerILb0EE3incER3mpz.exit, %._crit_edge, %bb.t, %bb.r, %bb.v
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.cq = load i8, ptr %i.j, align 4
  %i.cr = and i8 %i.cq, 1
  %i.cs = icmp eq i8 %i.cr, 0
  br i1 %i.cs, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.critedge
  %i.ct = load i32, ptr %i.i, align 8, !tbaa !14
  store i32 %i.ct, ptr %i.cp, align 8, !tbaa !14
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 4
  %i.cw = and i8 %i.cv, -2
  store i8 %i.cw, ptr %i.cu, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i

bb.x:                                             ; preds = %.critedge
  invoke void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.cp, ptr noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i unwind label %bb.o

_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i:     ; preds = %bb.x, %bb.w
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cx)
          to label %bb.y unwind label %bb.o

bb.y:                                             ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i
  store i32 1, ptr %i.cx, align 8, !tbaa !14
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 4
  %i.da = and i8 %i.cz, -2
  store i8 %i.da, ptr %i.cy, align 4
  %i.db = load i32, ptr %2, align 8
  %.not40 = icmp sgt i32 %i.db, -1
  br i1 %.not40, label %_ZN11mpq_managerILb0EE3negER3mpq.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN11mpz_managerILb0EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.cp)
          to label %_ZN11mpq_managerILb0EE3negER3mpq.exit unwind label %bb.o

_ZN11mpq_managerILb0EE3negER3mpq.exit:            ; preds = %bb.z, %bb.y
  %i.dc = load ptr, ptr %6, align 8, !tbaa !55, !nonnull !49, !align !50
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.dc, ptr noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %_ZN15_scoped_numeralI11mpz_managerILb0EEED2Ev.exit unwind label %bb.aa

bb.aa:                                            ; preds = %_ZN11mpq_managerILb0EE3negER3mpq.exit
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
  %i.de = extractvalue { ptr, i32 } %i.dd, 0
  call void @__clang_call_terminate(ptr %i.de) #24
  unreachable

_ZN15_scoped_numeralI11mpz_managerILb0EEED2Ev.exit: ; preds = %_ZN11mpq_managerILb0EE3negER3mpq.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.df = load ptr, ptr %5, align 8, !tbaa !72, !nonnull !49, !align !50
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 728
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !48, !nonnull !49, !align !50
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.dh, ptr noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_ZN15_scoped_numeralI11mpf_managerED2Ev.exit unwind label %bb.ab

bb.ab:                                            ; preds = %_ZN15_scoped_numeralI11mpz_managerILb0EEED2Ev.exit
  %i.di = landingpad { ptr, i32 }
          catch ptr null
  %i.dj = extractvalue { ptr, i32 } %i.di, 0
  call void @__clang_call_terminate(ptr %i.dj) #24
  unreachable

_ZN15_scoped_numeralI11mpf_managerED2Ev.exit:     ; preds = %_ZN15_scoped_numeralI11mpz_managerILb0EEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.o, %bb.p, %bb.s, %bb.j, %bb.h
  %.pn44.pn = phi { ptr, i32 } [ %i.at, %bb.j ], [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.an, %bb.h ], [ %i.bw, %bb.o ], [ %i.ch, %bb.s ], [ %i.bx, %bb.p ]
  call void @_ZN15_scoped_numeralI11mpz_managerILb0EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @_ZN15_scoped_numeralI11mpf_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %.pn44.pn

bb.ad:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN17default_exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %0, align 8, !tbaa !74
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !58
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #23
  ret void
}

end_hunk_0
