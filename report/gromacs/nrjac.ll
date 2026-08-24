Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/nrjac?download=true
inline.NumInlined: 168
inline.NumDeleted: 79
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_Z6jacobiPPdiS_S0_Pi:bb.a

bb.q:                                             ; preds = %bb.p, %_ZL6jacobiIPPdEiT_iS0_S2_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: noreturn
declare void @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef, ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathC2IA59_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(59) %1, i8 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(59) %1) #11 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 %i.b, ptr %i.a, align 8, !tbaa !54
  %i.d = icmp ugt i64 %i.b, 15
  br i1 %i.d, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !56
  %i.f = load i64, ptr %i.a, align 8, !tbaa !54
  store i64 %i.f, ptr %i.c, align 8, !tbaa !58
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.g = phi ptr [ %i.e, %.noexc.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.b, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !58
  store i8 %i.h, ptr %i.g, align 1, !tbaa !58
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !59
  %i.k = load ptr, ptr %0, align 8, !tbaa !56
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !60   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.p) #11
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.o, %bb.h ], [ %i.o, %bb.i ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !56     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.s = load i64, ptr %i.c, align 8, !tbaa !58
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b) #11
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !56     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.f = load i64, ptr %i.d, align 8, !tbaa !58
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

declare noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

declare void @_Z9save_freePKcS0_iPv(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define noundef i32 @_Z6jacobiN3gmx8ArrayRefINS_11BasicVectorIdEEEENS0_IdEES3_(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp eq i64 %i.c, 72
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZ6jacobiN3gmx8ArrayRefINS_11BasicVectorIdEEEENS0_IdEES3_ENK3$_0clEv", ptr noundef nonnull @.str.1, i32 noundef 194) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %3 to i64
  %i.f = ptrtoint ptr %2 to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp eq i64 %i.g, 24
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZ6jacobiN3gmx8ArrayRefINS_11BasicVectorIdEEEENS0_IdEES3_ENK3$_0clEv", ptr noundef nonnull @.str.1, i32 noundef 195) #12
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = ptrtoint ptr %5 to i64
  %i.j = ptrtoint ptr %4 to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = icmp eq i64 %i.k, 72
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZ6jacobiN3gmx8ArrayRefINS_11BasicVectorIdEEEENS0_IdEES3_ENK3$_0clEv", ptr noundef nonnull @.str.1, i32 noundef 196) #12
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.m = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 75, i64 noundef 3, i64 noundef 8) ; 6 uses
  %i.n = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 76, i64 noundef 3, i64 noundef 8) ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false), !tbaa !12
  store double 1.000000e+00, ptr %4, align 8, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false), !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 32
  store double 1.000000e+00, ptr %i.q, align 8, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 16, i1 false), !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 64
  store double 1.000000e+00, ptr %i.s, align 8, !tbaa !12
  %i.t = load double, ptr %0, align 8, !tbaa !12  ; 2 uses
  store double %i.t, ptr %2, align 8, !tbaa !12
  store double %i.t, ptr %i.m, align 8, !tbaa !12
  store double 0.000000e+00, ptr %i.n, align 8, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load double, ptr %i.u, align 8, !tbaa !12 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store double %i.v, ptr %i.w, align 8, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  store double %i.v, ptr %i.x, align 8, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  store double 0.000000e+00, ptr %i.y, align 8, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aa = load double, ptr %i.z, align 8, !tbaa !12 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store double %i.aa, ptr %i.ab, align 8, !tbaa !12
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  store double %i.aa, ptr %i.ac, align 8, !tbaa !12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  store double 0.000000e+00, ptr %i.ad, align 8, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  br label %.loopexit201.1.i

.loopexit201.1.i:                                 ; preds = %.preheader202.i, %bb.g
  %.0152241.i = phi i32 [ 1, %bb.g ], [ %i.eu, %.preheader202.i ] ; 3 uses
  %.0153240.i = phi i32 [ 0, %bb.g ], [ %.3156.i.peel, %.preheader202.i ] ; 2 uses
  %i.ag = load <2 x double>, ptr %i.ae, align 8, !tbaa !12
  %i.ah = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ag) ; 2 uses
  %shift = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.ah, %shift
  %i.ai = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.aj = load double, ptr %i.af, align 8, !tbaa !12
  %i.ak = tail call noundef double @llvm.fabs.f64(double %i.aj)
  %i.al = fadd double %i.ai, %i.ak                ; 2 uses
  %i.am = fcmp oeq double %i.al, 0.000000e+00
  br i1 %i.am, label %_ZL6jacobiIN3gmx8ArrayRefINS0_11BasicVectorIdEEEEEiT_iPdS5_.exit, label %bb.h

bb.h:                                             ; preds = %.loopexit201.1.i
  %i.an = icmp samesign ult i32 %.0152241.i, 4
  %i.ao = fmul double %i.al, 2.000000e-01
  %i.ap = fdiv double %i.ao, 9.000000e+00
  %.0160.i = select i1 %i.an, double %i.ap, double 0.000000e+00 ; 2 uses
  %i.aq = icmp samesign ugt i32 %.0152241.i, 4    ; 2 uses
  br label %.lr.ph235.i

.loopexit.i.peel.begin:                           ; preds = %bb.ad, %.lr.ph235.i
  %i.ar = phi i64 [ %indvars.iv.i, %.lr.ph235.i ], [ 2, %bb.ad ] ; 11 uses
  %i.as = phi i32 [ %.1154238.i, %.lr.ph235.i ], [ %.3156.i, %bb.ad ] ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.ar ; 3 uses
  %i.au = load double, ptr %i.at, align 8, !tbaa !12 ; 4 uses
  %i.av = tail call noundef double @llvm.fabs.f64(double %i.au) ; 2 uses
  %i.aw = fmul double %i.av, 1.000000e+02         ; 3 uses
  br i1 %i.aq, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.loopexit.i.peel.begin
  %i.ax = load double, ptr %i.ey, align 8, !tbaa !12
  %i.ay = tail call noundef double @llvm.fabs.f64(double %i.ax) ; 2 uses
  %i.az = fadd double %i.aw, %i.ay
  %i.ba = fcmp oeq double %i.az, %i.ay
  br i1 %i.ba, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ar
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !12
  %i.bd = tail call noundef double @llvm.fabs.f64(double %i.bc) ; 2 uses
  %i.be = fadd double %i.aw, %i.bd
  %i.bf = fcmp oeq double %i.be, %i.bd
  br i1 %i.bf, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %.loopexit.i.peel.begin
  %i.bg = fcmp ogt double %i.av, %.0160.i
  br i1 %i.bg, label %bb.l, label %.loopexit.i.peel.next

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ar ; 3 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !12
  %i.bj = load double, ptr %i.ey, align 8, !tbaa !12
  %i.bk = fsub double %i.bi, %i.bj                ; 3 uses
  %i.bl = tail call noundef double @llvm.fabs.f64(double %i.bk) ; 2 uses
  %i.bm = fadd double %i.aw, %i.bl
  %i.bn = fcmp oeq double %i.bm, %i.bl
  br i1 %i.bn, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bo = fmul double %i.bk, 5.000000e-01
  %i.bp = fdiv double %i.bo, %i.au                ; 4 uses
  %i.bq = tail call noundef double @llvm.fabs.f64(double %i.bp)
  %i.br = tail call double @llvm.fmuladd.f64(double %i.bp, double %i.bp, double 1.000000e+00)
  %sqrt.i.peel = tail call double @llvm.sqrt.f64(double %i.br)
  %i.bs = fadd double %i.bq, %sqrt.i.peel
  %i.bt = fdiv double 1.000000e+00, %i.bs         ; 2 uses
  %i.bu = fcmp olt double %i.bp, 0.000000e+00
  br i1 %i.bu, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bv = fneg double %i.bt
  br label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.bw = fdiv double %i.au, %i.bk
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.0159.i.peel = phi double [ %i.bw, %bb.o ], [ %i.bv, %bb.n ], [ %i.bt, %bb.m ] ; 4 uses
  %i.bx = tail call double @llvm.fmuladd.f64(double %.0159.i.peel, double %.0159.i.peel, double 1.000000e+00)
  %sqrt199.i.peel = tail call double @llvm.sqrt.f64(double %i.bx)
  %i.by = fdiv double 1.000000e+00, %sqrt199.i.peel ; 2 uses
  %i.bz = fmul double %.0159.i.peel, %i.by        ; 11 uses
  %i.ca = fadd double %i.by, 1.000000e+00
  %i.cb = fdiv double %i.bz, %i.ca                ; 12 uses
  %i.cc = fmul double %i.au, %.0159.i.peel        ; 4 uses
  %i.cd = load double, ptr %i.ez, align 8, !tbaa !12
  %i.ce = fsub double %i.cd, %i.cc
  store double %i.ce, ptr %i.ez, align 8, !tbaa !12
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ar ; 2 uses
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !12
  %i.ch = fadd double %i.cc, %i.cg
  store double %i.ch, ptr %i.cf, align 8, !tbaa !12
  %i.ci = load double, ptr %i.ey, align 8, !tbaa !12
  %i.cj = fsub double %i.ci, %i.cc
  store double %i.cj, ptr %i.ey, align 8, !tbaa !12
  %i.ck = load double, ptr %i.bh, align 8, !tbaa !12
  %i.cl = fadd double %i.cc, %i.ck
  store double %i.cl, ptr %i.bh, align 8, !tbaa !12
  store double 0.000000e+00, ptr %i.at, align 8, !tbaa !12
  br i1 %i.ew, label %.lr.ph215.split.i.peel, label %.preheader200.i.peel

.lr.ph215.split.i.peel:                           ; preds = %bb.p
  %i.cm = fneg double %i.bz
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ar ; 2 uses
  %i.co = load double, ptr %i.ae, align 8, !tbaa !12 ; 3 uses
  %i.cp = load double, ptr %i.cn, align 8, !tbaa !12 ; 3 uses
  %i.cq = tail call double @llvm.fmuladd.f64(double %i.co, double %i.cb, double %i.cp)
  %i.cr = tail call double @llvm.fmuladd.f64(double %i.cm, double %i.cq, double %i.co)
  store double %i.cr, ptr %i.ae, align 8, !tbaa !12
  %i.cs = fneg double %i.cp
  %i.ct = tail call double @llvm.fmuladd.f64(double %i.cs, double %i.cb, double %i.co)
  %i.cu = tail call double @llvm.fmuladd.f64(double %i.bz, double %i.ct, double %i.cp)
  store double %i.cu, ptr %i.cn, align 8, !tbaa !12
  br label %.preheader200.i.peel

.preheader200.i.peel:                             ; preds = %.lr.ph215.split.i.peel, %bb.p
  %i.cv = icmp samesign ult i64 %indvars.iv.next264.i, %i.ar
  br i1 %i.cv, label %.lr.ph220.split.i.peel, label %bb.q

.lr.ph220.split.i.peel:                           ; preds = %.preheader200.i.peel
  %.promoted222.i.peel = load double, ptr %i.af, align 8, !tbaa !12 ; 3 uses
  %.promoted.i.peel = load double, ptr %i.fa, align 8, !tbaa !12 ; 3 uses
  %i.cw = fneg double %i.bz
  %i.cx = tail call double @llvm.fmuladd.f64(double %.promoted.i.peel, double %i.cb, double %.promoted222.i.peel)
  %i.cy = tail call double @llvm.fmuladd.f64(double %i.cw, double %i.cx, double %.promoted.i.peel)
  %i.cz = fneg double %.promoted222.i.peel
  %i.da = tail call double @llvm.fmuladd.f64(double %i.cz, double %i.cb, double %.promoted.i.peel)
  %i.db = tail call double @llvm.fmuladd.f64(double %i.bz, double %i.da, double %.promoted222.i.peel)
  store double %i.cy, ptr %i.fa, align 8, !tbaa !12
  store double %i.db, ptr %i.af, align 8, !tbaa !12
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph220.split.i.peel, %.preheader200.i.peel
  %.not.i.peel = icmp eq i64 %i.ar, 2
  br i1 %.not.i.peel, label %..preheader_crit_edge.i.peel, label %.lr.ph230.i.peel

.lr.ph230.i.peel:                                 ; preds = %bb.q
  %i.dc = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.ar
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 2 uses
  %i.de = fneg double %i.bz                       ; 2 uses
  %i.df = load double, ptr %i.fb, align 8, !tbaa !12 ; 3 uses
  %i.dg = load double, ptr %i.dd, align 8, !tbaa !12 ; 3 uses
  %i.dh = tail call double @llvm.fmuladd.f64(double %i.df, double %i.cb, double %i.dg)
  %i.di = tail call double @llvm.fmuladd.f64(double %i.de, double %i.dh, double %i.df)
  store double %i.di, ptr %i.fb, align 8, !tbaa !12
  %i.dj = fneg double %i.dg
  %i.dk = tail call double @llvm.fmuladd.f64(double %i.dj, double %i.cb, double %i.df)
  %i.dl = tail call double @llvm.fmuladd.f64(double %i.bz, double %i.dk, double %i.dg)
  store double %i.dl, ptr %i.dd, align 8, !tbaa !12
  br label %.preheader.i.peel

..preheader_crit_edge.i.peel:                     ; preds = %bb.q
  %.pre.i.peel = fneg double %i.bz
  br label %.preheader.i.peel

.preheader.i.peel:                                ; preds = %..preheader_crit_edge.i.peel, %.lr.ph230.i.peel
  %.pre-phi.i.peel = phi double [ %.pre.i.peel, %..preheader_crit_edge.i.peel ], [ %i.de, %.lr.ph230.i.peel ] ; 3 uses
  %i.dm = load double, ptr %i.fc, align 8, !tbaa !12 ; 3 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ar ; 2 uses
  %i.do = load double, ptr %i.dn, align 8, !tbaa !12 ; 3 uses
  %i.dp = tail call double @llvm.fmuladd.f64(double %i.dm, double %i.cb, double %i.do)
  %i.dq = tail call double @llvm.fmuladd.f64(double %.pre-phi.i.peel, double %i.dp, double %i.dm)
  store double %i.dq, ptr %i.fc, align 8, !tbaa !12
  %i.dr = fneg double %i.do
  %i.ds = tail call double @llvm.fmuladd.f64(double %i.dr, double %i.cb, double %i.dm)
  %i.dt = tail call double @llvm.fmuladd.f64(double %i.bz, double %i.ds, double %i.do)
  store double %i.dt, ptr %i.dn, align 8, !tbaa !12
  %i.du = load double, ptr %i.fd, align 8, !tbaa !12 ; 3 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ar ; 2 uses
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !12 ; 3 uses
  %i.dx = tail call double @llvm.fmuladd.f64(double %i.du, double %i.cb, double %i.dw)
  %i.dy = tail call double @llvm.fmuladd.f64(double %.pre-phi.i.peel, double %i.dx, double %i.du)
end_hunk_0
