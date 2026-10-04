Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/nrjac?download=true
inline.NumInlined: 168
inline.NumDeleted: 79
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZNSt10filesystem7__cxx114pathC2IA59_cS1_EERKT_NS1_6formatE:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !61
  %i.k = load ptr, ptr %0, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !23
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
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !25   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.p) #11
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.o, %bb.h ], [ %i.o, %bb.i ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.s = load i64, ptr %i.c, align 8, !tbaa !23
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b) #11
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.f = load i64, ptr %i.d, align 8, !tbaa !23
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false), !tbaa !13
  store double 1.000000e+00, ptr %4, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false), !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 32
  store double 1.000000e+00, ptr %i.q, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 16, i1 false), !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 64
  store double 1.000000e+00, ptr %i.s, align 8, !tbaa !13
  %i.t = load double, ptr %0, align 8, !tbaa !13  ; 2 uses
  store double %i.t, ptr %2, align 8, !tbaa !13
  store double %i.t, ptr %i.m, align 8, !tbaa !13
  store double 0.000000e+00, ptr %i.n, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load double, ptr %i.u, align 8, !tbaa !13 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store double %i.v, ptr %i.w, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  store double %i.v, ptr %i.x, align 8, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  store double 0.000000e+00, ptr %i.y, align 8, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aa = load double, ptr %i.z, align 8, !tbaa !13 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store double %i.aa, ptr %i.ab, align 8, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  store double %i.aa, ptr %i.ac, align 8, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  store double 0.000000e+00, ptr %i.ad, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  br label %.loopexit201.1.i

.loopexit201.1.i:                                 ; preds = %.preheader202.i, %bb.g
  %.0152241.i = phi i32 [ 1, %bb.g ], [ %i.es, %.preheader202.i ] ; 3 uses
  %.0153240.i = phi i32 [ 0, %bb.g ], [ %.3156.i.peel, %.preheader202.i ] ; 2 uses
  %i.ag = load <2 x double>, ptr %i.ae, align 8, !tbaa !13
  %i.ah = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ag) ; 2 uses
  %shift = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.ah, %shift
  %i.ai = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.aj = load double, ptr %i.af, align 8, !tbaa !13
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

.loopexit.i.peel.begin:                           ; preds = %bb.u, %bb.v, %.preheader.i, %.lr.ph235.i
  %7 = phi i64 [ %indvars.iv.i, %.lr.ph235.i ], [ 2, %.preheader.i ], [ 2, %bb.v ], [ 2, %bb.u ] ; 11 uses
  %8 = phi i32 [ %.1154238.i, %.lr.ph235.i ], [ %i.it, %.preheader.i ], [ %.1154238.i, %bb.v ], [ %.1154238.i, %bb.u ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %7 ; 3 uses
  %i.as = load double, ptr %i.ar, align 8, !tbaa !13 ; 4 uses
  %i.at = tail call noundef double @llvm.fabs.f64(double %i.as) ; 2 uses
  %i.au = fmul double %i.at, 1.000000e+02         ; 3 uses
  br i1 %i.aq, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.loopexit.i.peel.begin
  %i.av = load double, ptr %i.ew, align 8, !tbaa !13
  %i.aw = tail call noundef double @llvm.fabs.f64(double %i.av) ; 2 uses
  %i.ax = fadd double %i.au, %i.aw
  %i.ay = fcmp oeq double %i.ax, %i.aw
  br i1 %i.ay, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %7
  %i.ba = load double, ptr %i.az, align 8, !tbaa !13
  %i.bb = tail call noundef double @llvm.fabs.f64(double %i.ba) ; 2 uses
  %i.bc = fadd double %i.au, %i.bb
  %i.bd = fcmp oeq double %i.bc, %i.bb
  br i1 %i.bd, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %.loopexit.i.peel.begin
  %i.be = fcmp ogt double %i.at, %.0160.i
  br i1 %i.be, label %bb.l, label %.loopexit.i.peel.next

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %7 ; 3 uses
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !13
  %i.bh = load double, ptr %i.ew, align 8, !tbaa !13
  %i.bi = fsub double %i.bg, %i.bh                ; 3 uses
  %i.bj = tail call noundef double @llvm.fabs.f64(double %i.bi) ; 2 uses
  %i.bk = fadd double %i.au, %i.bj
  %i.bl = fcmp oeq double %i.bk, %i.bj
  br i1 %i.bl, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = fmul double %i.bi, 5.000000e-01
  %i.bn = fdiv double %i.bm, %i.as                ; 4 uses
  %i.bo = tail call noundef double @llvm.fabs.f64(double %i.bn)
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.bn, double %i.bn, double 1.000000e+00)
  %sqrt.i.peel = tail call double @llvm.sqrt.f64(double %i.bp)
  %i.bq = fadd double %i.bo, %sqrt.i.peel
  %i.br = fdiv double 1.000000e+00, %i.bq         ; 2 uses
  %i.bs = fcmp olt double %i.bn, 0.000000e+00
  %i.bt = fneg double %i.br
  %spec.select.i.peel = select i1 %i.bs, double %i.bt, double %i.br
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bu = fdiv double %i.as, %i.bi
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0159.i.peel = phi double [ %i.bu, %bb.n ], [ %spec.select.i.peel, %bb.m ] ; 4 uses
  %i.bv = tail call double @llvm.fmuladd.f64(double %.0159.i.peel, double %.0159.i.peel, double 1.000000e+00)
  %sqrt199.i.peel = tail call double @llvm.sqrt.f64(double %i.bv)
  %i.bw = fdiv double 1.000000e+00, %sqrt199.i.peel ; 2 uses
  %i.bx = fmul double %.0159.i.peel, %i.bw        ; 11 uses
  %i.by = fadd double %i.bw, 1.000000e+00
  %i.bz = fdiv double %i.bx, %i.by                ; 12 uses
  %i.ca = fmul double %i.as, %.0159.i.peel        ; 4 uses
  %i.cb = load double, ptr %i.ex, align 8, !tbaa !13
  %i.cc = fsub double %i.cb, %i.ca
  store double %i.cc, ptr %i.ex, align 8, !tbaa !13
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %7 ; 2 uses
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !13
  %i.cf = fadd double %i.ca, %i.ce
  store double %i.cf, ptr %i.cd, align 8, !tbaa !13
  %i.cg = load double, ptr %i.ew, align 8, !tbaa !13
  %i.ch = fsub double %i.cg, %i.ca
  store double %i.ch, ptr %i.ew, align 8, !tbaa !13
  %i.ci = load double, ptr %i.bf, align 8, !tbaa !13
  %i.cj = fadd double %i.ca, %i.ci
  store double %i.cj, ptr %i.bf, align 8, !tbaa !13
  store double 0.000000e+00, ptr %i.ar, align 8, !tbaa !13
  br i1 %i.eu, label %.lr.ph215.split.i.peel, label %.preheader200.i.peel

.lr.ph215.split.i.peel:                           ; preds = %bb.o
  %i.ck = fneg double %i.bx
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %7 ; 2 uses
  %i.cm = load double, ptr %i.ae, align 8, !tbaa !13 ; 3 uses
  %i.cn = load double, ptr %i.cl, align 8, !tbaa !13 ; 3 uses
  %i.co = tail call double @llvm.fmuladd.f64(double %i.cm, double %i.bz, double %i.cn)
  %i.cp = tail call double @llvm.fmuladd.f64(double %i.ck, double %i.co, double %i.cm)
  store double %i.cp, ptr %i.ae, align 8, !tbaa !13
  %i.cq = fneg double %i.cn
  %i.cr = tail call double @llvm.fmuladd.f64(double %i.cq, double %i.bz, double %i.cm)
  %i.cs = tail call double @llvm.fmuladd.f64(double %i.bx, double %i.cr, double %i.cn)
  store double %i.cs, ptr %i.cl, align 8, !tbaa !13
  br label %.preheader200.i.peel

.preheader200.i.peel:                             ; preds = %.lr.ph215.split.i.peel, %bb.o
  %i.ct = icmp samesign ult i64 %indvars.iv.next264.i, %7
  br i1 %i.ct, label %.lr.ph220.split.i.peel, label %bb.p

.lr.ph220.split.i.peel:                           ; preds = %.preheader200.i.peel
  %.promoted222.i.peel = load double, ptr %i.af, align 8, !tbaa !13 ; 3 uses
  %.promoted.i.peel = load double, ptr %i.ey, align 8, !tbaa !13 ; 3 uses
  %i.cu = fneg double %i.bx
  %i.cv = tail call double @llvm.fmuladd.f64(double %.promoted.i.peel, double %i.bz, double %.promoted222.i.peel)
  %i.cw = tail call double @llvm.fmuladd.f64(double %i.cu, double %i.cv, double %.promoted.i.peel)
  %i.cx = fneg double %.promoted222.i.peel
  %i.cy = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.bz, double %.promoted.i.peel)
  %i.cz = tail call double @llvm.fmuladd.f64(double %i.bx, double %i.cy, double %.promoted222.i.peel)
  store double %i.cw, ptr %i.ey, align 8, !tbaa !13
  store double %i.cz, ptr %i.af, align 8, !tbaa !13
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph220.split.i.peel, %.preheader200.i.peel
  %.not.i.peel = icmp eq i64 %7, 2
  br i1 %.not.i.peel, label %..preheader_crit_edge.i.peel, label %.lr.ph230.i.peel

.lr.ph230.i.peel:                                 ; preds = %bb.p
  %i.da = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %7
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 2 uses
  %i.dc = fneg double %i.bx                       ; 2 uses
  %i.dd = load double, ptr %i.ez, align 8, !tbaa !13 ; 3 uses
  %i.de = load double, ptr %i.db, align 8, !tbaa !13 ; 3 uses
  %i.df = tail call double @llvm.fmuladd.f64(double %i.dd, double %i.bz, double %i.de)
  %i.dg = tail call double @llvm.fmuladd.f64(double %i.dc, double %i.df, double %i.dd)
  store double %i.dg, ptr %i.ez, align 8, !tbaa !13
  %i.dh = fneg double %i.de
  %i.di = tail call double @llvm.fmuladd.f64(double %i.dh, double %i.bz, double %i.dd)
  %i.dj = tail call double @llvm.fmuladd.f64(double %i.bx, double %i.di, double %i.de)
  store double %i.dj, ptr %i.db, align 8, !tbaa !13
  br label %.preheader.i.peel

..preheader_crit_edge.i.peel:                     ; preds = %bb.p
  %.pre.i.peel = fneg double %i.bx
  br label %.preheader.i.peel

.preheader.i.peel:                                ; preds = %..preheader_crit_edge.i.peel, %.lr.ph230.i.peel
  %.pre-phi.i.peel = phi double [ %.pre.i.peel, %..preheader_crit_edge.i.peel ], [ %i.dc, %.lr.ph230.i.peel ] ; 3 uses
  %i.dk = load double, ptr %i.fa, align 8, !tbaa !13 ; 3 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %7 ; 2 uses
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !13 ; 3 uses
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.dk, double %i.bz, double %i.dm)
  %i.do = tail call double @llvm.fmuladd.f64(double %.pre-phi.i.peel, double %i.dn, double %i.dk)
  store double %i.do, ptr %i.fa, align 8, !tbaa !13
  %i.dp = fneg double %i.dm
  %i.dq = tail call double @llvm.fmuladd.f64(double %i.dp, double %i.bz, double %i.dk)
  %i.dr = tail call double @llvm.fmuladd.f64(double %i.bx, double %i.dq, double %i.dm)
  store double %i.dr, ptr %i.dl, align 8, !tbaa !13
  %i.ds = load double, ptr %i.fb, align 8, !tbaa !13 ; 3 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %7 ; 2 uses
  %i.du = load double, ptr %i.dt, align 8, !tbaa !13 ; 3 uses
  %i.dv = tail call double @llvm.fmuladd.f64(double %i.ds, double %i.bz, double %i.du)
  %i.dw = tail call double @llvm.fmuladd.f64(double %.pre-phi.i.peel, double %i.dv, double %i.ds)
  store double %i.dw, ptr %i.fb, align 8, !tbaa !13
  %i.dx = fneg double %i.du
  %i.dy = tail call double @llvm.fmuladd.f64(double %i.dx, double %i.bz, double %i.ds)
  %i.dz = tail call double @llvm.fmuladd.f64(double %i.bx, double %i.dy, double %i.du)
  store double %i.dz, ptr %i.dt, align 8, !tbaa !13
  %i.ea = load double, ptr %i.fc, align 8, !tbaa !13 ; 3 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %7 ; 2 uses
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !13 ; 3 uses
  %i.ed = tail call double @llvm.fmuladd.f64(double %i.ea, double %i.bz, double %i.ec)
  %i.ee = tail call double @llvm.fmuladd.f64(double %.pre-phi.i.peel, double %i.ed, double %i.ea)
  store double %i.ee, ptr %i.fc, align 8, !tbaa !13
  %i.ef = fneg double %i.ec
  %i.eg = tail call double @llvm.fmuladd.f64(double %i.ef, double %i.bz, double %i.ea)
  %i.eh = tail call double @llvm.fmuladd.f64(double %i.bx, double %i.eg, double %i.ec)
  store double %i.eh, ptr %i.eb, align 8, !tbaa !13
  %i.ei = add nsw i32 %8, 1
  br label %.loopexit.i.peel.next

bb.q:                                             ; preds = %bb.j
  store double 0.000000e+00, ptr %i.ar, align 8, !tbaa !13
  br label %.loopexit.i.peel.next

.loopexit.i.peel.next:                            ; preds = %bb.q, %.preheader.i.peel, %bb.k
  %.3156.i.peel = phi i32 [ %8, %bb.q ], [ %i.ei, %.preheader.i.peel ], [ %8, %bb.k ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %i.eu, label %.preheader202.i, label %.lr.ph235.i, !llvm.loop !62

.preheader202.i:                                  ; preds = %.loopexit.i.peel.next
  %i.ej = load double, ptr %i.n, align 8, !tbaa !13
  %i.ek = load double, ptr %i.m, align 8, !tbaa !13
  %i.el = fadd double %i.ej, %i.ek                ; 2 uses
  store double %i.el, ptr %i.m, align 8, !tbaa !13
  store double %i.el, ptr %2, align 8, !tbaa !13
  store double 0.000000e+00, ptr %i.n, align 8, !tbaa !13
  %i.em = load double, ptr %i.y, align 8, !tbaa !13
  %i.en = load double, ptr %i.x, align 8, !tbaa !13
  %i.eo = fadd double %i.em, %i.en                ; 2 uses
  store double %i.eo, ptr %i.x, align 8, !tbaa !13
  store double %i.eo, ptr %i.w, align 8, !tbaa !13
  store double 0.000000e+00, ptr %i.y, align 8, !tbaa !13
  %i.ep = load double, ptr %i.ad, align 8, !tbaa !13
  %i.eq = load double, ptr %i.ac, align 8, !tbaa !13
  %i.er = fadd double %i.ep, %i.eq                ; 2 uses
  store double %i.er, ptr %i.ac, align 8, !tbaa !13
  store double %i.er, ptr %i.ab, align 8, !tbaa !13
  store double 0.000000e+00, ptr %i.ad, align 8, !tbaa !13
  %i.es = add nuw nsw i32 %.0152241.i, 1          ; 2 uses
  %exitcond270.not.i = icmp eq i32 %i.es, 51
  br i1 %exitcond270.not.i, label %bb.ab, label %.loopexit201.1.i, !llvm.loop !63

.lr.ph235.i:                                      ; preds = %.loopexit.i.peel.next, %bb.h
  %i.et = phi i1 [ false, %.loopexit.i.peel.next ], [ true, %bb.h ]
  %indvar = phi i64 [ 1, %.loopexit.i.peel.next ], [ 0, %bb.h ] ; 7 uses
  %i.eu = phi i1 [ true, %.loopexit.i.peel.next ], [ false, %bb.h ] ; 3 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.loopexit.i.peel.next ], [ 1, %bb.h ] ; 13 uses
  %.1154238.i = phi i32 [ %.3156.i.peel, %.loopexit.i.peel.next ], [ %.0153240.i, %bb.h ] ; 4 uses
  %indvars.iv.next264.i = add nuw nsw i64 %indvar, 1 ; 2 uses
  %i.ev = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %indvar ; 4 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvar ; 8 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvar ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 16 ; 4 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvar ; 4 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvar ; 4 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvar ; 4 uses
  br i1 %i.et, label %bb.r, label %.loopexit.i.peel.begin

bb.r:                                             ; preds = %.lr.ph235.i
  %9 = icmp samesign ugt i64 %indvars.iv.i, %indvars.iv.next264.i
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv.i ; 3 uses
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !13 ; 4 uses
  %i.ff = tail call noundef double @llvm.fabs.f64(double %i.fe) ; 2 uses
  %i.fg = fmul double %i.ff, 1.000000e+02         ; 3 uses
  br i1 %i.aq, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.fh = load double, ptr %i.ew, align 8, !tbaa !13
  %i.fi = tail call noundef double @llvm.fabs.f64(double %i.fh) ; 2 uses
  %i.fj = fadd double %i.fg, %i.fi
  %i.fk = fcmp oeq double %i.fj, %i.fi
  br i1 %i.fk, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !13
  %i.fn = tail call noundef double @llvm.fabs.f64(double %i.fm) ; 2 uses
  %i.fo = fadd double %i.fg, %i.fn
  %i.fp = fcmp oeq double %i.fo, %i.fn
  br i1 %i.fp, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store double 0.000000e+00, ptr %i.fd, align 8, !tbaa !13
  br label %.loopexit.i.peel.begin

bb.v:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.fq = fcmp ogt double %i.ff, %.0160.i
  br i1 %i.fq, label %bb.w, label %.loopexit.i.peel.begin

bb.w:                                             ; preds = %bb.v
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i ; 3 uses
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !13
  %i.ft = load double, ptr %i.ew, align 8, !tbaa !13
  %i.fu = fsub double %i.fs, %i.ft                ; 3 uses
  %i.fv = tail call noundef double @llvm.fabs.f64(double %i.fu) ; 2 uses
  %i.fw = fadd double %i.fg, %i.fv
  %i.fx = fcmp oeq double %i.fw, %i.fv
  br i1 %i.fx, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fy = fdiv double %i.fe, %i.fu
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.fz = fmul double %i.fu, 5.000000e-01
  %i.ga = fdiv double %i.fz, %i.fe                ; 4 uses
  %i.gb = tail call noundef double @llvm.fabs.f64(double %i.ga)
  %i.gc = tail call double @llvm.fmuladd.f64(double %i.ga, double %i.ga, double 1.000000e+00)
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.gc)
  %i.gd = fadd double %i.gb, %sqrt.i
  %i.ge = fdiv double 1.000000e+00, %i.gd         ; 2 uses
  %i.gf = fcmp olt double %i.ga, 0.000000e+00
  %i.gg = fneg double %i.ge
  %spec.select.i = select i1 %i.gf, double %i.gg, double %i.ge
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0159.i = phi double [ %i.fy, %bb.x ], [ %spec.select.i, %bb.y ] ; 4 uses
  %i.gh = tail call double @llvm.fmuladd.f64(double %.0159.i, double %.0159.i, double 1.000000e+00)
  %sqrt199.i = tail call double @llvm.sqrt.f64(double %i.gh)
  %i.gi = fdiv double 1.000000e+00, %sqrt199.i    ; 2 uses
  %i.gj = fmul double %.0159.i, %i.gi             ; 11 uses
  %i.gk = fadd double %i.gi, 1.000000e+00
  %i.gl = fdiv double %i.gj, %i.gk                ; 12 uses
  %i.gm = fmul double %i.fe, %.0159.i             ; 4 uses
  %i.gn = load double, ptr %i.ex, align 8, !tbaa !13
  %i.go = fsub double %i.gn, %i.gm
  store double %i.go, ptr %i.ex, align 8, !tbaa !13
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i ; 2 uses
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !13
  %i.gr = fadd double %i.gm, %i.gq
  store double %i.gr, ptr %i.gp, align 8, !tbaa !13
  %i.gs = load double, ptr %i.ew, align 8, !tbaa !13
  %i.gt = fsub double %i.gs, %i.gm
  store double %i.gt, ptr %i.ew, align 8, !tbaa !13
  %i.gu = load double, ptr %i.fr, align 8, !tbaa !13
  %i.gv = fadd double %i.gm, %i.gu
  store double %i.gv, ptr %i.fr, align 8, !tbaa !13
  store double 0.000000e+00, ptr %i.fd, align 8, !tbaa !13
  br i1 %i.eu, label %.lr.ph215.split.i, label %.preheader200.i

.lr.ph215.split.i:                                ; preds = %bb.z
  %i.gw = fneg double %i.gj
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i ; 2 uses
  %i.gy = load double, ptr %i.ae, align 8, !tbaa !13 ; 3 uses
  %i.gz = load double, ptr %i.gx, align 8, !tbaa !13 ; 3 uses
  %i.ha = tail call double @llvm.fmuladd.f64(double %i.gy, double %i.gl, double %i.gz)
  %i.hb = tail call double @llvm.fmuladd.f64(double %i.gw, double %i.ha, double %i.gy)
  store double %i.hb, ptr %i.ae, align 8, !tbaa !13
  %i.hc = fneg double %i.gz
  %i.hd = tail call double @llvm.fmuladd.f64(double %i.hc, double %i.gl, double %i.gy)
  %i.he = tail call double @llvm.fmuladd.f64(double %i.gj, double %i.hd, double %i.gz)
  store double %i.he, ptr %i.gx, align 8, !tbaa !13
  br label %.preheader200.i

.preheader200.i:                                  ; preds = %.lr.ph215.split.i, %bb.z
  br i1 %9, label %.lr.ph220.split.i, label %bb.aa

.lr.ph220.split.i:                                ; preds = %.preheader200.i
  %.promoted222.i = load double, ptr %i.af, align 8, !tbaa !13 ; 3 uses
  %.promoted.i = load double, ptr %i.ey, align 8, !tbaa !13 ; 3 uses
  %i.hf = fneg double %i.gj
  %i.hg = tail call double @llvm.fmuladd.f64(double %.promoted.i, double %i.gl, double %.promoted222.i)
  %i.hh = tail call double @llvm.fmuladd.f64(double %i.hf, double %i.hg, double %.promoted.i)
  %i.hi = fneg double %.promoted222.i
  %i.hj = tail call double @llvm.fmuladd.f64(double %i.hi, double %i.gl, double %.promoted.i)
  %i.hk = tail call double @llvm.fmuladd.f64(double %i.gj, double %i.hj, double %.promoted222.i)
  store double %i.hh, ptr %i.ey, align 8, !tbaa !13
  store double %i.hk, ptr %i.af, align 8, !tbaa !13
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph220.split.i, %.preheader200.i
  %.not.i = icmp eq i64 %indvars.iv.i, 2
  br i1 %.not.i, label %..preheader_crit_edge.i, label %.lr.ph230.i

..preheader_crit_edge.i:                          ; preds = %bb.aa
  %.pre.i = fneg double %i.gj
  br label %.preheader.i

.lr.ph230.i:                                      ; preds = %bb.aa
  %i.hl = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %indvars.iv.i
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16 ; 2 uses
  %i.hn = fneg double %i.gj                       ; 2 uses
  %i.ho = load double, ptr %i.ez, align 8, !tbaa !13 ; 3 uses
  %i.hp = load double, ptr %i.hm, align 8, !tbaa !13 ; 3 uses
  %i.hq = tail call double @llvm.fmuladd.f64(double %i.ho, double %i.gl, double %i.hp)
  %i.hr = tail call double @llvm.fmuladd.f64(double %i.hn, double %i.hq, double %i.ho)
  store double %i.hr, ptr %i.ez, align 8, !tbaa !13
  %i.hs = fneg double %i.hp
  %i.ht = tail call double @llvm.fmuladd.f64(double %i.hs, double %i.gl, double %i.ho)
  %i.hu = tail call double @llvm.fmuladd.f64(double %i.gj, double %i.ht, double %i.hp)
  store double %i.hu, ptr %i.hm, align 8, !tbaa !13
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph230.i, %..preheader_crit_edge.i
  %.pre-phi.i = phi double [ %.pre.i, %..preheader_crit_edge.i ], [ %i.hn, %.lr.ph230.i ] ; 3 uses
  %i.hv = load double, ptr %i.fa, align 8, !tbaa !13 ; 3 uses
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i ; 2 uses
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !13 ; 3 uses
  %i.hy = tail call double @llvm.fmuladd.f64(double %i.hv, double %i.gl, double %i.hx)
  %i.hz = tail call double @llvm.fmuladd.f64(double %.pre-phi.i, double %i.hy, double %i.hv)
  store double %i.hz, ptr %i.fa, align 8, !tbaa !13
  %i.ia = fneg double %i.hx
  %i.ib = tail call double @llvm.fmuladd.f64(double %i.ia, double %i.gl, double %i.hv)
  %i.ic = tail call double @llvm.fmuladd.f64(double %i.gj, double %i.ib, double %i.hx)
  store double %i.ic, ptr %i.hw, align 8, !tbaa !13
  %i.id = load double, ptr %i.fb, align 8, !tbaa !13 ; 3 uses
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.i ; 2 uses
  %i.if = load double, ptr %i.ie, align 8, !tbaa !13 ; 3 uses
  %i.ig = tail call double @llvm.fmuladd.f64(double %i.id, double %i.gl, double %i.if)
  %i.ih = tail call double @llvm.fmuladd.f64(double %.pre-phi.i, double %i.ig, double %i.id)
  store double %i.ih, ptr %i.fb, align 8, !tbaa !13
  %i.ii = fneg double %i.if
  %i.ij = tail call double @llvm.fmuladd.f64(double %i.ii, double %i.gl, double %i.id)
  %i.ik = tail call double @llvm.fmuladd.f64(double %i.gj, double %i.ij, double %i.if)
  store double %i.ik, ptr %i.ie, align 8, !tbaa !13
  %i.il = load double, ptr %i.fc, align 8, !tbaa !13 ; 3 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i ; 2 uses
  %i.in = load double, ptr %i.im, align 8, !tbaa !13 ; 3 uses
  %i.io = tail call double @llvm.fmuladd.f64(double %i.il, double %i.gl, double %i.in)
  %i.ip = tail call double @llvm.fmuladd.f64(double %.pre-phi.i, double %i.io, double %i.il)
  store double %i.ip, ptr %i.fc, align 8, !tbaa !13
  %i.iq = fneg double %i.in
  %i.ir = tail call double @llvm.fmuladd.f64(double %i.iq, double %i.gl, double %i.il)
  %i.is = tail call double @llvm.fmuladd.f64(double %i.gj, double %i.ir, double %i.in)
  store double %i.is, ptr %i.im, align 8, !tbaa !13
  %i.it = add nsw i32 %.1154238.i, 1
  br label %.loopexit.i.peel.begin

bb.ab:                                            ; preds = %.preheader202.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @_ZNSt10filesystem7__cxx114pathC2IA59_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 1 dereferenceable(59) @.str.1, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef 177, ptr noundef nonnull @.str.3) #12
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.iu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  resume { ptr, i32 } %i.iu

_ZL6jacobiIN3gmx8ArrayRefINS0_11BasicVectorIdEEEEEiT_iPdS5_.exit: ; preds = %.loopexit201.1.i
  tail call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 103, ptr noundef nonnull %i.n)
  tail call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 104, ptr noundef nonnull %i.m)
  ret i32 %.0153240.i
}

; Function Attrs: noreturn
declare void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef i32 @_Z9m_inv_genPKfiPf(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = sext i32 %1 to i64                       ; 7 uses
  %i.c = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 206, i64 noundef range(i64 -2147483648, 2147483648) %i.b, i64 noundef 8) ; 15 uses
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.lr.ph.preheader, label %.preheader97.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 15 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.f = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 209, i64 noundef range(i64 -2147483648, 2147483648) %i.b, i64 noundef 8)
  store ptr %i.f, ptr %i.e, align 8, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph102.preheader, label %.lr.ph, !llvm.loop !64

.lr.ph102.preheader:                              ; preds = %.lr.ph
  %i.g = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 211, i64 noundef range(i64 -2147483648, 2147483648) %i.b, i64 noundef 8) ; 6 uses
  %wide.trip.count139 = zext nneg i32 %1 to i64
  br label %.lr.ph102

.lr.ph102:                                        ; preds = %.lr.ph102.preheader, %.lr.ph102
  %indvars.iv136 = phi i64 [ 0, %.lr.ph102.preheader ], [ %indvars.iv.next137, %.lr.ph102 ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv136
  %i.i = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 214, i64 noundef range(i64 -2147483648, 2147483648) %i.b, i64 noundef 8)
  store ptr %i.i, ptr %i.h, align 8, !tbaa !11
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1 ; 2 uses
  %exitcond140.not = icmp eq i64 %indvars.iv.next137, %wide.trip.count139
  br i1 %exitcond140.not, label %.preheader98.preheader, label %.lr.ph102, !llvm.loop !65

.preheader97.thread:                              ; preds = %bb.a
  %i.j = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 211, i64 noundef range(i64 -2147483648, 2147483648) %i.b, i64 noundef 8) ; 2 uses
  %i.k = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 216, i64 noundef range(i64 -2147483648, 2147483648) %i.b, i64 noundef 8) ; 2 uses
  call void @_Z6jacobiPPdiS_S0_Pi(ptr noundef %i.c, i32 noundef %1, ptr noundef %i.k, ptr noundef %i.j, ptr noundef nonnull %i.a)
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 261, ptr noundef %i.k)
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 266, ptr noundef %i.j)
  br label %._crit_edge133

.preheader98.preheader:                           ; preds = %.lr.ph102
  %i.l = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 216, i64 noundef range(i64 -2147483648, 2147483648) %i.b, i64 noundef 8) ; 14 uses
  %i.m = zext nneg i32 %1 to i64                  ; 3 uses
  %min.iters.check = icmp ult i32 %1, 4
  %min.iters.check203 = icmp ult i32 %1, 16
  %i.n = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.n, 0
  %n.vec207 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n211 = icmp eq i64 %n.vec207, %wide.trip.count
  br label %iter.check

iter.check:                                       ; preds = %.preheader98.preheader, %._crit_edge106
  %indvars.iv146 = phi i64 [ 0, %.preheader98.preheader ], [ %indvars.iv.next147, %._crit_edge106 ] ; 3 uses
  %i.o = mul nuw nsw i64 %indvars.iv146, %i.m
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv146
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !11   ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.o ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check203, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %wide.load = load <4 x float>, ptr %i.r, align 4, !tbaa !82
  %wide.load204 = load <4 x float>, ptr %i.s, align 4, !tbaa !82
  %wide.load205 = load <4 x float>, ptr %i.t, align 4, !tbaa !82
  %wide.load206 = load <4 x float>, ptr %i.u, align 4, !tbaa !82
  %i.v = fpext <4 x float> %wide.load to <4 x double>
  %i.w = fpext <4 x float> %wide.load204 to <4 x double>
  %i.x = fpext <4 x float> %wide.load205 to <4 x double>
  %i.y = fpext <4 x float> %wide.load206 to <4 x double>
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  store <4 x double> %i.v, ptr %i.z, align 8, !tbaa !13
  store <4 x double> %i.w, ptr %i.aa, align 8, !tbaa !13
  store <4 x double> %i.x, ptr %i.ab, align 8, !tbaa !13
  store <4 x double> %i.y, ptr %i.ac, align 8, !tbaa !13
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !66

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge106, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !83

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index208 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next210, %vec.epilog.vector.body ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index208
  %wide.load209 = load <4 x float>, ptr %i.ae, align 4, !tbaa !82
  %i.af = fpext <4 x float> %wide.load209 to <4 x double>
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index208
  store <4 x double> %i.af, ptr %i.ag, align 8, !tbaa !13
  %index.next210 = add nuw i64 %index208, 4       ; 2 uses
  %i.ah = icmp eq i64 %index.next210, %n.vec207
  br i1 %i.ah, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !67

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n211, label %._crit_edge106, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv141.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec207, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.lr.ph110.preheader:                              ; preds = %._crit_edge106
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.ai = icmp ult i32 %1, 8
  br i1 %i.ai, label %.lr.ph110.epil.preheader, label %.lr.ph110.preheader.new

.lr.ph110.preheader.new:                          ; preds = %.lr.ph110.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %.lr.ph110

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv141 = phi i64 [ %indvars.iv.next142, %vec.epilog.scalar.ph ], [ %indvars.iv141.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv141
  %i.aj = load float, ptr %gep, align 4, !tbaa !82
  %i.ak = fpext float %i.aj to double
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv141
  store double %i.ak, ptr %i.al, align 8, !tbaa !13
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1 ; 2 uses
  %exitcond145.not = icmp eq i64 %indvars.iv.next142, %i.m
  br i1 %exitcond145.not, label %._crit_edge106, label %vec.epilog.scalar.ph, !llvm.loop !68

._crit_edge106:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 2 uses
  %exitcond150.not = icmp eq i64 %indvars.iv.next147, %i.m
  br i1 %exitcond150.not, label %.lr.ph110.preheader, label %iter.check, !llvm.loop !69

.lr.ph110:                                        ; preds = %.lr.ph110, %.lr.ph110.preheader.new
  %indvars.iv151 = phi i64 [ 0, %.lr.ph110.preheader.new ], [ %indvars.iv.next152.7, %.lr.ph110 ] ; 10 uses
  %.077108 = phi double [ 0.000000e+00, %.lr.ph110.preheader.new ], [ %i.ch, %.lr.ph110 ]
  %niter = phi i64 [ 0, %.lr.ph110.preheader.new ], [ %niter.next.7, %.lr.ph110 ]
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv151
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !11
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv151
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !13
  %i.aq = tail call noundef double @llvm.fabs.f64(double %i.ap)
  %i.ar = fadd double %.077108, %i.aq
  %indvars.iv.next152 = or disjoint i64 %indvars.iv151, 1 ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next152
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !11
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.next152
  %i.av = load double, ptr %i.au, align 8, !tbaa !13
  %i.aw = tail call noundef double @llvm.fabs.f64(double %i.av)
  %i.ax = fadd double %i.ar, %i.aw
  %indvars.iv.next152.1 = or disjoint i64 %indvars.iv151, 2 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next152.1
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !11
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.next152.1
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !13
  %i.bc = tail call noundef double @llvm.fabs.f64(double %i.bb)
  %i.bd = fadd double %i.ax, %i.bc
  %indvars.iv.next152.2 = or disjoint i64 %indvars.iv151, 3 ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next152.2
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !11
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next152.2
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !13
  %i.bi = tail call noundef double @llvm.fabs.f64(double %i.bh)
  %i.bj = fadd double %i.bd, %i.bi
  %indvars.iv.next152.3 = or disjoint i64 %indvars.iv151, 4 ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next152.3
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !11
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.next152.3
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !13
  %i.bo = tail call noundef double @llvm.fabs.f64(double %i.bn)
  %i.bp = fadd double %i.bj, %i.bo
  %indvars.iv.next152.4 = or disjoint i64 %indvars.iv151, 5 ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next152.4
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !11
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next152.4
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !13
  %i.bu = tail call noundef double @llvm.fabs.f64(double %i.bt)
  %i.bv = fadd double %i.bp, %i.bu
  %indvars.iv.next152.5 = or disjoint i64 %indvars.iv151, 6 ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next152.5
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !11
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv.next152.5
  %i.bz = load double, ptr %i.by, align 8, !tbaa !13
  %i.ca = tail call noundef double @llvm.fabs.f64(double %i.bz)
  %i.cb = fadd double %i.bv, %i.ca
  %indvars.iv.next152.6 = or disjoint i64 %indvars.iv151, 7 ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next152.6
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !11
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv.next152.6
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !13
  %i.cg = tail call noundef double @llvm.fabs.f64(double %i.cf)
  %i.ch = fadd double %i.cb, %i.cg                ; 3 uses
  %indvars.iv.next152.7 = add nuw nsw i64 %indvars.iv151, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %iter.check232.unr-lcssa, label %.lr.ph110, !llvm.loop !70

iter.check232.unr-lcssa:                          ; preds = %.lr.ph110
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %iter.check232, label %.lr.ph110.epil.preheader

.lr.ph110.epil.preheader:                         ; preds = %iter.check232.unr-lcssa, %.lr.ph110.preheader
  %indvars.iv151.epil.init = phi i64 [ 0, %.lr.ph110.preheader ], [ %indvars.iv.next152.7, %iter.check232.unr-lcssa ]
  %.077108.epil.init = phi double [ 0.000000e+00, %.lr.ph110.preheader ], [ %i.ch, %iter.check232.unr-lcssa ]
  %lcmp.mod257 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod257)
  br label %.lr.ph110.epil

.lr.ph110.epil:                                   ; preds = %.lr.ph110.epil, %.lr.ph110.epil.preheader
  %indvars.iv151.epil = phi i64 [ %indvars.iv151.epil.init, %.lr.ph110.epil.preheader ], [ %indvars.iv.next152.epil, %.lr.ph110.epil ] ; 3 uses
  %.077108.epil = phi double [ %.077108.epil.init, %.lr.ph110.epil.preheader ], [ %i.cn, %.lr.ph110.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph110.epil.preheader ], [ %epil.iter.next, %.lr.ph110.epil ]
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv151.epil
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !11
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %indvars.iv151.epil
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !13
  %i.cm = tail call noundef double @llvm.fabs.f64(double %i.cl)
  %i.cn = fadd double %.077108.epil, %i.cm        ; 2 uses
  %indvars.iv.next152.epil = add nuw nsw i64 %indvars.iv151.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %iter.check232, label %.lr.ph110.epil, !llvm.loop !71

iter.check232:                                    ; preds = %.lr.ph110.epil, %iter.check232.unr-lcssa
  %.lcssa255 = phi double [ %i.ch, %iter.check232.unr-lcssa ], [ %i.cn, %.lr.ph110.epil ]
  %i.co = fmul double %.lcssa255, f0x3EB0C6F7A0B5ED8D
  %i.cp = uitofp nneg i32 %1 to double
  %i.cq = fdiv double %i.co, %i.cp                ; 3 uses
  call void @_Z6jacobiPPdiS_S0_Pi(ptr noundef nonnull %i.c, i32 noundef %1, ptr noundef %i.l, ptr noundef %i.g, ptr noundef nonnull %i.a)
  %wide.trip.count159 = zext nneg i32 %1 to i64
  %min.iters.check212 = icmp ult i32 %1, 4
  br i1 %min.iters.check212, label %.lr.ph115.preheader, label %vector.main.loop.iter.check213

vector.main.loop.iter.check213:                   ; preds = %iter.check232
  %min.iters.check214 = icmp ult i32 %1, 16
  br i1 %min.iters.check214, label %vec.epilog.ph236, label %vector.ph215

vector.ph215:                                     ; preds = %vector.main.loop.iter.check213
  %i.cr = and i64 %wide.trip.count, 12
  %n.vec216 = and i64 %wide.trip.count, 2147483632 ; 4 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.cq, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body217

vector.body217:                                   ; preds = %vector.ph215, %vector.body217
  %index218 = phi i64 [ 0, %vector.ph215 ], [ %index.next226, %vector.body217 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph215 ], [ %i.dq, %vector.body217 ]
  %vec.phi219 = phi <4 x i32> [ zeroinitializer, %vector.ph215 ], [ %i.dr, %vector.body217 ]
  %vec.phi220 = phi <4 x i32> [ zeroinitializer, %vector.ph215 ], [ %i.ds, %vector.body217 ]
  %vec.phi221 = phi <4 x i32> [ zeroinitializer, %vector.ph215 ], [ %i.dt, %vector.body217 ]
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index218 ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 32 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 64 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 96 ; 2 uses
  %wide.load222 = load <4 x double>, ptr %i.cs, align 8, !tbaa !13 ; 2 uses
  %wide.load223 = load <4 x double>, ptr %i.ct, align 8, !tbaa !13 ; 2 uses
  %wide.load224 = load <4 x double>, ptr %i.cu, align 8, !tbaa !13 ; 2 uses
  %wide.load225 = load <4 x double>, ptr %i.cv, align 8, !tbaa !13 ; 2 uses
  %i.cw = call <4 x double> @llvm.fabs.v4f64(<4 x double> %wide.load222)
  %i.cx = call <4 x double> @llvm.fabs.v4f64(<4 x double> %wide.load223)
  %i.cy = call <4 x double> @llvm.fabs.v4f64(<4 x double> %wide.load224)
  %i.cz = call <4 x double> @llvm.fabs.v4f64(<4 x double> %wide.load225)
  %i.da = fcmp olt <4 x double> %i.cw, %broadcast.splat ; 2 uses
  %i.db = fcmp olt <4 x double> %i.cx, %broadcast.splat ; 2 uses
  %i.dc = fcmp olt <4 x double> %i.cy, %broadcast.splat ; 2 uses
  %i.dd = fcmp olt <4 x double> %i.cz, %broadcast.splat ; 2 uses
  %i.de = fdiv <4 x double> splat (double 1.000000e+00), %wide.load222
  %i.df = fdiv <4 x double> splat (double 1.000000e+00), %wide.load223
  %i.dg = fdiv <4 x double> splat (double 1.000000e+00), %wide.load224
  %i.dh = fdiv <4 x double> splat (double 1.000000e+00), %wide.load225
  %i.di = select <4 x i1> %i.da, <4 x double> zeroinitializer, <4 x double> %i.de
  %i.dj = select <4 x i1> %i.db, <4 x double> zeroinitializer, <4 x double> %i.df
  %i.dk = select <4 x i1> %i.dc, <4 x double> zeroinitializer, <4 x double> %i.dg
  %i.dl = select <4 x i1> %i.dd, <4 x double> zeroinitializer, <4 x double> %i.dh
  %i.dm = zext <4 x i1> %i.da to <4 x i32>
  %i.dn = zext <4 x i1> %i.db to <4 x i32>
  %i.do = zext <4 x i1> %i.dc to <4 x i32>
  %i.dp = zext <4 x i1> %i.dd to <4 x i32>
  %i.dq = add <4 x i32> %vec.phi, %i.dm           ; 2 uses
  %i.dr = add <4 x i32> %vec.phi219, %i.dn        ; 2 uses
  %i.ds = add <4 x i32> %vec.phi220, %i.do        ; 2 uses
  %i.dt = add <4 x i32> %vec.phi221, %i.dp        ; 2 uses
  store <4 x double> %i.di, ptr %i.cs, align 8, !tbaa !13
  store <4 x double> %i.dj, ptr %i.ct, align 8, !tbaa !13
  store <4 x double> %i.dk, ptr %i.cu, align 8, !tbaa !13
  store <4 x double> %i.dl, ptr %i.cv, align 8, !tbaa !13
  %index.next226 = add nuw i64 %index218, 16      ; 2 uses
  %i.du = icmp eq i64 %index.next226, %n.vec216
  br i1 %i.du, label %middle.block227, label %vector.body217, !llvm.loop !72

middle.block227:                                  ; preds = %vector.body217
  %bin.rdx = add <4 x i32> %i.dr, %i.dq
  %bin.rdx228 = add <4 x i32> %i.ds, %bin.rdx
  %bin.rdx229 = add <4 x i32> %i.dt, %bin.rdx228
  %i.dv = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx229) ; 3 uses
  %cmp.n230 = icmp eq i64 %n.vec216, %wide.trip.count
  br i1 %cmp.n230, label %.preheader95.preheader, label %vec.epilog.iter.check234

vec.epilog.iter.check234:                         ; preds = %middle.block227
  %min.epilog.iters.check235 = icmp eq i64 %i.cr, 0
  br i1 %min.epilog.iters.check235, label %.lr.ph115.preheader, label %vec.epilog.ph236, !prof !83

vec.epilog.ph236:                                 ; preds = %vector.main.loop.iter.check213, %vec.epilog.iter.check234
  %vec.epilog.resume.val231 = phi i64 [ %n.vec216, %vec.epilog.iter.check234 ], [ 0, %vector.main.loop.iter.check213 ]
  %bc.merge.rdx = phi i32 [ %i.dv, %vec.epilog.iter.check234 ], [ 0, %vector.main.loop.iter.check213 ]
  %n.vec237 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %i.dw = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  %broadcast.splatinsert238 = insertelement <4 x double> poison, double %i.cq, i64 0
  %broadcast.splat239 = shufflevector <4 x double> %broadcast.splatinsert238, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body240

vec.epilog.vector.body240:                        ; preds = %vec.epilog.vector.body240, %vec.epilog.ph236
  %index241 = phi i64 [ %vec.epilog.resume.val231, %vec.epilog.ph236 ], [ %index.next244, %vec.epilog.vector.body240 ] ; 2 uses
  %vec.phi242 = phi <4 x i32> [ %i.dw, %vec.epilog.ph236 ], [ %i.ed, %vec.epilog.vector.body240 ]
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index241 ; 2 uses
  %wide.load243 = load <4 x double>, ptr %i.dx, align 8, !tbaa !13 ; 2 uses
  %i.dy = call <4 x double> @llvm.fabs.v4f64(<4 x double> %wide.load243)
  %i.dz = fcmp olt <4 x double> %i.dy, %broadcast.splat239 ; 2 uses
  %i.ea = fdiv <4 x double> splat (double 1.000000e+00), %wide.load243
  %i.eb = select <4 x i1> %i.dz, <4 x double> zeroinitializer, <4 x double> %i.ea
  %i.ec = zext <4 x i1> %i.dz to <4 x i32>
  %i.ed = add <4 x i32> %vec.phi242, %i.ec        ; 2 uses
  store <4 x double> %i.eb, ptr %i.dx, align 8, !tbaa !13
  %index.next244 = add nuw i64 %index241, 4       ; 2 uses
  %i.ee = icmp eq i64 %index.next244, %n.vec237
  br i1 %i.ee, label %vec.epilog.middle.block245, label %vec.epilog.vector.body240, !llvm.loop !73

vec.epilog.middle.block245:                       ; preds = %vec.epilog.vector.body240
  %i.ef = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ed) ; 2 uses
  %cmp.n246 = icmp eq i64 %n.vec237, %wide.trip.count
  br i1 %cmp.n246, label %.preheader95.preheader, label %.lr.ph115.preheader

.lr.ph115.preheader:                              ; preds = %iter.check232, %vec.epilog.iter.check234, %vec.epilog.middle.block245
  %indvars.iv156.ph = phi i64 [ 0, %iter.check232 ], [ %n.vec216, %vec.epilog.iter.check234 ], [ %n.vec237, %vec.epilog.middle.block245 ]
  %.074112.ph = phi i32 [ 0, %iter.check232 ], [ %i.dv, %vec.epilog.iter.check234 ], [ %i.ef, %vec.epilog.middle.block245 ]
  br label %.lr.ph115

.preheader95.preheader:                           ; preds = %.lr.ph115, %middle.block227, %vec.epilog.middle.block245
  %.175.lcssa = phi i32 [ %i.ef, %vec.epilog.middle.block245 ], [ %i.dv, %middle.block227 ], [ %.175, %.lr.ph115 ]
  %i.eg = zext nneg i32 %1 to i64                 ; 3 uses
  %xtraiter258 = and i64 %wide.trip.count, 7      ; 3 uses
  %i.eh = icmp ult i32 %1, 8
  %unroll_iter263 = and i64 %wide.trip.count, 2147483640
  %lcmp.mod260.not = icmp eq i64 %xtraiter258, 0
  %lcmp.mod262 = icmp ne i64 %xtraiter258, 0
  br label %.preheader95

.lr.ph115:                                        ; preds = %.lr.ph115.preheader, %.lr.ph115
  %indvars.iv156 = phi i64 [ %indvars.iv.next157, %.lr.ph115 ], [ %indvars.iv156.ph, %.lr.ph115.preheader ] ; 2 uses
  %.074112 = phi i32 [ %.175, %.lr.ph115 ], [ %.074112.ph, %.lr.ph115.preheader ]
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv156 ; 2 uses
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !13 ; 2 uses
  %i.ek = call noundef double @llvm.fabs.f64(double %i.ej)
  %i.el = fcmp olt double %i.ek, %i.cq            ; 2 uses
  %i.em = fdiv double 1.000000e+00, %i.ej
  %.sink = select i1 %i.el, double 0.000000e+00, double %i.em
  %i.en = zext i1 %i.el to i32
  %.175 = add nuw nsw i32 %.074112, %i.en         ; 2 uses
  store double %.sink, ptr %i.ei, align 8, !tbaa !13
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1 ; 2 uses
  %exitcond160.not = icmp eq i64 %indvars.iv.next157, %wide.trip.count159
  br i1 %exitcond160.not, label %.preheader95.preheader, label %.lr.ph115, !llvm.loop !74

.preheader95:                                     ; preds = %.preheader95.preheader, %._crit_edge123.split.us
  %indvars.iv171 = phi i64 [ 0, %.preheader95.preheader ], [ %indvars.iv.next172, %._crit_edge123.split.us ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv171
  %i.ep = mul nuw nsw i64 %indvars.iv171, %i.eg
  %i.eq = load ptr, ptr %i.eo, align 8, !tbaa !11 ; 9 uses
  %invariant.gep200 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ep
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge120.us, %.preheader95
  %indvars.iv166 = phi i64 [ %indvars.iv.next167, %._crit_edge120.us ], [ 0, %.preheader95 ] ; 3 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv166
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !11 ; 9 uses
  br i1 %i.eh, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv161 = phi i64 [ %indvars.iv.next162.7, %.preheader.us.new ], [ 0, %.preheader.us ] ; 11 uses
  %.076117.us = phi double [ %i.he, %.preheader.us.new ], [ 0.000000e+00, %.preheader.us ]
  %niter264 = phi i64 [ %niter264.next.7, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv161
  %i.eu = load double, ptr %i.et, align 8, !tbaa !13
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv161
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !13
  %i.ex = fmul double %i.eu, %i.ew
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv161
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !13
  %i.fa = call double @llvm.fmuladd.f64(double %i.ex, double %i.ez, double %.076117.us)
  %indvars.iv.next162 = or disjoint i64 %indvars.iv161, 1 ; 3 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next162
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !13
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv.next162
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !13
  %i.ff = fmul double %i.fc, %i.fe
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv.next162
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !13
  %i.fi = call double @llvm.fmuladd.f64(double %i.ff, double %i.fh, double %i.fa)
  %indvars.iv.next162.1 = or disjoint i64 %indvars.iv161, 2 ; 3 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next162.1
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !13
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv.next162.1
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !13
  %i.fn = fmul double %i.fk, %i.fm
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv.next162.1
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !13
  %i.fq = call double @llvm.fmuladd.f64(double %i.fn, double %i.fp, double %i.fi)
  %indvars.iv.next162.2 = or disjoint i64 %indvars.iv161, 3 ; 3 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next162.2
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !13
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv.next162.2
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !13
  %i.fv = fmul double %i.fs, %i.fu
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv.next162.2
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !13
  %i.fy = call double @llvm.fmuladd.f64(double %i.fv, double %i.fx, double %i.fq)
  %indvars.iv.next162.3 = or disjoint i64 %indvars.iv161, 4 ; 3 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next162.3
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !13
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv.next162.3
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !13
  %i.gd = fmul double %i.ga, %i.gc
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv.next162.3
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !13
  %i.gg = call double @llvm.fmuladd.f64(double %i.gd, double %i.gf, double %i.fy)
  %indvars.iv.next162.4 = or disjoint i64 %indvars.iv161, 5 ; 3 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next162.4
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !13
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv.next162.4
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !13
  %i.gl = fmul double %i.gi, %i.gk
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv.next162.4
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !13
  %i.go = call double @llvm.fmuladd.f64(double %i.gl, double %i.gn, double %i.gg)
  %indvars.iv.next162.5 = or disjoint i64 %indvars.iv161, 6 ; 3 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next162.5
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !13
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv.next162.5
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !13
  %i.gt = fmul double %i.gq, %i.gs
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv.next162.5
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !13
  %i.gw = call double @llvm.fmuladd.f64(double %i.gt, double %i.gv, double %i.go)
  %indvars.iv.next162.6 = or disjoint i64 %indvars.iv161, 7 ; 3 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next162.6
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !13
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv.next162.6
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !13
  %i.hb = fmul double %i.gy, %i.ha
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv.next162.6
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !13
  %i.he = call double @llvm.fmuladd.f64(double %i.hb, double %i.hd, double %i.gw) ; 3 uses
  %indvars.iv.next162.7 = add nuw nsw i64 %indvars.iv161, 8 ; 2 uses
  %niter264.next.7 = add nuw i64 %niter264, 8     ; 2 uses
  %niter264.ncmp.7 = icmp eq i64 %niter264.next.7, %unroll_iter263
  br i1 %niter264.ncmp.7, label %._crit_edge120.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !75

._crit_edge120.us.unr-lcssa:                      ; preds = %.preheader.us.new
  br i1 %lcmp.mod260.not, label %._crit_edge120.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge120.us.unr-lcssa, %.preheader.us
  %indvars.iv161.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next162.7, %._crit_edge120.us.unr-lcssa ]
  %.076117.us.epil.init = phi double [ 0.000000e+00, %.preheader.us ], [ %i.he, %._crit_edge120.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod262)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv161.epil = phi i64 [ %indvars.iv161.epil.init, %.epil.preheader ], [ %indvars.iv.next162.epil, %bb.b ] ; 4 uses
  %.076117.us.epil = phi double [ %.076117.us.epil.init, %.epil.preheader ], [ %i.hm, %bb.b ]
  %epil.iter259 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter259.next, %bb.b ]
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv161.epil
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !13
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv161.epil
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !13
  %i.hj = fmul double %i.hg, %i.hi
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv161.epil
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !13
  %i.hm = call double @llvm.fmuladd.f64(double %i.hj, double %i.hl, double %.076117.us.epil) ; 2 uses
  %indvars.iv.next162.epil = add nuw nsw i64 %indvars.iv161.epil, 1
  %epil.iter259.next = add i64 %epil.iter259, 1   ; 2 uses
  %epil.iter259.cmp.not = icmp eq i64 %epil.iter259.next, %xtraiter258
  br i1 %epil.iter259.cmp.not, label %._crit_edge120.us, label %bb.b, !llvm.loop !76

._crit_edge120.us:                                ; preds = %bb.b, %._crit_edge120.us.unr-lcssa
  %.lcssa = phi double [ %i.he, %._crit_edge120.us.unr-lcssa ], [ %i.hm, %bb.b ]
  %i.hn = fptrunc double %.lcssa to float
  %gep201 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep200, i64 %indvars.iv166
  store float %i.hn, ptr %gep201, align 4, !tbaa !82
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %exitcond170.not = icmp eq i64 %indvars.iv.next167, %i.eg
  br i1 %exitcond170.not, label %._crit_edge123.split.us, label %.preheader.us, !llvm.loop !77

._crit_edge123.split.us:                          ; preds = %._crit_edge120.us
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 2 uses
  %exitcond175.not = icmp eq i64 %indvars.iv.next172, %i.eg
  br i1 %exitcond175.not, label %._crit_edge125.split, label %.preheader95, !llvm.loop !78

._crit_edge125.split:                             ; preds = %._crit_edge123.split.us
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 261, ptr noundef nonnull %i.l)
  %wide.trip.count179 = zext nneg i32 %1 to i64
  br label %.lr.ph128

.lr.ph128:                                        ; preds = %._crit_edge125.split, %.lr.ph128
  %indvars.iv176 = phi i64 [ 0, %._crit_edge125.split ], [ %indvars.iv.next177, %.lr.ph128 ] ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv176
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !11
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 264, ptr noundef %i.hp)
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1 ; 2 uses
  %exitcond180.not = icmp eq i64 %indvars.iv.next177, %wide.trip.count179
  br i1 %exitcond180.not, label %.lr.ph132.preheader, label %.lr.ph128, !llvm.loop !79

.lr.ph132.preheader:                              ; preds = %.lr.ph128
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 266, ptr noundef nonnull %i.g)
  %wide.trip.count184 = zext nneg i32 %1 to i64
  br label %.lr.ph132

.lr.ph132:                                        ; preds = %.lr.ph132.preheader, %.lr.ph132
  %indvars.iv181 = phi i64 [ 0, %.lr.ph132.preheader ], [ %indvars.iv.next182, %.lr.ph132 ] ; 2 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv181
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !11
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 269, ptr noundef %i.hr)
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1 ; 2 uses
  %exitcond185.not = icmp eq i64 %indvars.iv.next182, %wide.trip.count184
  br i1 %exitcond185.not, label %._crit_edge133, label %.lr.ph132, !llvm.loop !80

._crit_edge133:                                   ; preds = %.lr.ph132, %.preheader97.thread
  %.074.lcssa191195198 = phi i32 [ 0, %.preheader97.thread ], [ %.175.lcssa, %.lr.ph132 ]
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 271, ptr noundef %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.074.lcssa191195198
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fabs.v4f64(<4 x double>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #2

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { noreturn }
attributes #13 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 double", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"double", !5, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = !{!"p1 omnipotent char", !9, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !18, i64 0}
!20 = !{!"long", !5, i64 0}
!21 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !19, i64 0, !20, i64 8, !5, i64 16}
!22 = !{!21, !18, i64 0}
!23 = !{!5, !5, i64 0}
!24 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !9, i64 0}
!25 = !{!24, !24, i64 0}
!26 = distinct !{!26, !14}
!27 = distinct !{!27, !15}
!28 = distinct !{!28, !15}
!29 = distinct !{!29, !14}
!30 = distinct !{!30, !14}
!31 = distinct !{!31, !15}
!32 = distinct !{!32, !14}
!33 = distinct !{!33, !14}
!34 = distinct !{!34, i1 false, !"LVerDomain"}
!35 = distinct !{!35, !34}
!36 = distinct !{!36, !34}
!37 = distinct !{!37, !34}
!38 = distinct !{!38, !14, !16, !17}
!39 = distinct !{!39, !15}
!40 = distinct !{!40, !14}
!41 = distinct !{!41, i1 false, !"LVerDomain"}
!42 = distinct !{!42, !41}
!43 = distinct !{!43, !41}
!44 = distinct !{!44, !14, !16, !17}
!45 = distinct !{!45, !15}
!46 = distinct !{!46, !14}
!47 = distinct !{!47, !14, !16}
!48 = distinct !{!48, !14}
!49 = distinct !{!49, !14}
!50 = distinct !{!50, !14, !16}
!51 = distinct !{!51, !14}
!52 = !{!35}
!53 = !{!36}
!54 = !{!37, !35}
!55 = !{!37}
!56 = !{!42}
!57 = !{!43}
!58 = !{!6, !6, i64 0}
!59 = !{!19, !18, i64 0}
!60 = !{!20, !20, i64 0}
!61 = !{!21, !20, i64 8}
!62 = distinct !{!62, !14}
!63 = distinct !{!63, !14}
!64 = distinct !{!64, !14}
!65 = distinct !{!65, !14}
!66 = distinct !{!66, !14, !16, !17}
!67 = distinct !{!67, !14, !16, !17}
!68 = distinct !{!68, !14, !17, !16}
!69 = distinct !{!69, !14}
!70 = distinct !{!70, !14}
!71 = distinct !{!71, !15}
!72 = distinct !{!72, !14, !16, !17}
!73 = distinct !{!73, !14, !16, !17}
!74 = distinct !{!74, !14, !17, !16}
!75 = distinct !{!75, !14}
!76 = distinct !{!76, !15}
!77 = distinct !{!77, !14}
!78 = distinct !{!78, !14}
!79 = distinct !{!79, !14}
!80 = distinct !{!80, !14}
!81 = !{!"float", !5, i64 0}
!82 = !{!81, !81, i64 0}
!83 = !{!"branch_weights", i32 4, i32 12}
end_hunk_0
