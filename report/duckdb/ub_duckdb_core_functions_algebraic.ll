Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_core_functions_algebraic?download=true
inline.NumInlined: 3036
inline.NumDeleted: 743
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 68
loop-unroll.NumUnrolled: 79
begin_hunk_0_@_ZN6duckdb17AggregateExecutor17BinaryScatterLoopINS_9CorrStateEddNS_13CorrOperationEEEvPKT0_RNS_18AggregateInputDataEPKT1_PPT_mRKNS_15SelectionVectorESH_SH_RNS_12ValidityMaskESJ_:bb.a
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !621

bb.g:                                             ; preds = %.lr.ph60, %_ZNK6duckdb15SelectionVector9get_indexEm.exit48
  %.03259 = phi i64 [ 0, %.lr.ph60 ], [ %i.fb, %_ZNK6duckdb15SelectionVector9get_indexEm.exit48 ] ; 7 uses
  br i1 %.not.i43, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit44, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.03259
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !20
  %i.cn = zext i32 %i.cm to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit44

_ZNK6duckdb15SelectionVector9get_indexEm.exit44:  ; preds = %bb.g, %bb.h
  %i.co = phi i64 [ %i.cn, %bb.h ], [ %.03259, %bb.g ]
  br i1 %.not.i45, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit46, label %bb.i

bb.i:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit44
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.03259
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !20
  %i.cr = zext i32 %i.cq to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit46

_ZNK6duckdb15SelectionVector9get_indexEm.exit46:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit44, %bb.i
  %i.cs = phi i64 [ %i.cr, %bb.i ], [ %.03259, %_ZNK6duckdb15SelectionVector9get_indexEm.exit44 ]
  br i1 %.not.i47, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit48, label %bb.j

bb.j:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit46
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.03259
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !20
  %i.cv = zext i32 %i.cu to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit48

_ZNK6duckdb15SelectionVector9get_indexEm.exit48:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit46, %bb.j
  %i.cw = phi i64 [ %i.cv, %bb.j ], [ %.03259, %_ZNK6duckdb15SelectionVector9get_indexEm.exit46 ]
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.cw
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !145 ; 10 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.co
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cs
  %i.db = load i64, ptr %i.cy, align 8, !tbaa !147
  %i.dc = add i64 %i.db, 1                        ; 2 uses
  store i64 %i.dc, ptr %i.cy, align 8, !tbaa !147
  %i.dd = uitofp i64 %i.dc to double
  %i.de = load double, ptr %i.da, align 8, !tbaa !65
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  %i.dg = load double, ptr %i.cz, align 8, !tbaa !65 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cy, i64 24 ; 2 uses
  %i.di = load double, ptr %i.dh, align 8, !tbaa !148
  %i.dj = load <2 x double>, ptr %i.df, align 8, !tbaa !65 ; 2 uses
  %i.dk = insertelement <2 x double> poison, double %i.de, i64 0
  %i.dl = insertelement <2 x double> %i.dk, double %i.dg, i64 1 ; 3 uses
  %i.dm = fsub <2 x double> %i.dl, %i.dj          ; 2 uses
  %i.dn = insertelement <2 x double> poison, double %i.dd, i64 0
  %i.do = shufflevector <2 x double> %i.dn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dp = fdiv <2 x double> %i.dm, %i.do
  %i.dq = fadd <2 x double> %i.dj, %i.dp          ; 2 uses
  %i.dr = extractelement <2 x double> %i.dq, i64 1
  %i.ds = fsub double %i.dg, %i.dr
  %i.dt = extractelement <2 x double> %i.dm, i64 0
  %i.du = tail call double @llvm.fmuladd.f64(double %i.dt, double %i.ds, double %i.di)
  store <2 x double> %i.dq, ptr %i.df, align 8, !tbaa !65
  store double %i.du, ptr %i.dh, align 8, !tbaa !148
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cy, i64 32 ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !150
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cy, i64 40 ; 2 uses
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !151
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cy, i64 48 ; 2 uses
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !152
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cy, i64 56 ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !150
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cy, i64 64 ; 2 uses
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !151
  %i.ef = insertelement <2 x i64> poison, i64 %i.dw, i64 0
  %i.eg = insertelement <2 x i64> %i.ef, i64 %i.ec, i64 1
  %i.eh = add <2 x i64> %i.eg, splat (i64 1)      ; 3 uses
  %i.ei = extractelement <2 x i64> %i.eh, i64 0
  store i64 %i.ei, ptr %i.dv, align 8, !tbaa !150
  %i.ej = insertelement <2 x double> poison, double %i.dy, i64 0
  %i.ek = insertelement <2 x double> %i.ej, double %i.ee, i64 1 ; 2 uses
  %i.el = fsub <2 x double> %i.dl, %i.ek          ; 2 uses
  %i.em = uitofp <2 x i64> %i.eh to <2 x double>
  %i.en = fdiv <2 x double> %i.el, %i.em
  %i.eo = extractelement <2 x i64> %i.eh, i64 1
  store i64 %i.eo, ptr %i.eb, align 8, !tbaa !150
  %i.ep = fadd <2 x double> %i.ek, %i.en          ; 3 uses
  %i.eq = fsub <2 x double> %i.dl, %i.ep
  %i.er = fmul <2 x double> %i.el, %i.eq
  %i.es = extractelement <2 x double> %i.ep, i64 0
  store double %i.es, ptr %i.dx, align 8, !tbaa !151
  %i.et = getelementptr inbounds nuw i8, ptr %i.cy, i64 72 ; 2 uses
  %i.eu = load double, ptr %i.et, align 8, !tbaa !152
  %i.ev = insertelement <2 x double> poison, double %i.ea, i64 0
  %i.ew = insertelement <2 x double> %i.ev, double %i.eu, i64 1
  %i.ex = fadd <2 x double> %i.ew, %i.er          ; 2 uses
  %i.ey = extractelement <2 x double> %i.ex, i64 0
  store double %i.ey, ptr %i.dz, align 8, !tbaa !152
  %i.ez = extractelement <2 x double> %i.ep, i64 1
  store double %i.ez, ptr %i.ed, align 8, !tbaa !151
  %i.fa = extractelement <2 x double> %i.ex, i64 1
  store double %i.fa, ptr %i.et, align 8, !tbaa !152
  %i.fb = add nuw i64 %.03259, 1                  ; 2 uses
  %exitcond64.not = icmp eq i64 %i.fb, %4
  br i1 %exitcond64.not, label %.loopexit, label %bb.g, !llvm.loop !622

.loopexit:                                        ; preds = %bb.f, %_ZNK6duckdb15SelectionVector9get_indexEm.exit48, %.preheader56, %.preheader
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #18

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !128
  %i.d = icmp eq i8 %i.c, 12
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 12, ptr %i.a, align 1, !tbaa !95
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeERKS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.h = load ptr, ptr %1, align 8, !tbaa !34     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.h) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #22
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13CorrOperation7CombineINS_9CorrStateES0_EEvRKT_RS3_RNS_18AggregateInputDataE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(17) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !147    ; 3 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !153
  br label %_ZN6duckdb14CovarOperation7CombineINS_10CovarStateENS_13CorrOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit

bb.c:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8, !tbaa !147    ; 3 uses
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %_ZN6duckdb14CovarOperation7CombineINS_10CovarStateENS_13CorrOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = add i64 %i.c, %i.a                       ; 2 uses
  %3 = uitofp i64 %i.a to double                  ; 2 uses
  %4 = uitofp i64 %i.c to double                  ; 2 uses
  %i.e = uitofp i64 %i.d to double                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load double, ptr %i.h, align 8, !tbaa !148
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !148
  %i.l = fadd double %i.i, %i.k
  %i.m = load <2 x double>, ptr %i.f, align 8, !tbaa !65 ; 2 uses
  %i.n = load <2 x double>, ptr %i.g, align 8, !tbaa !65 ; 2 uses
  %5 = insertelement <2 x double> poison, double %3, i64 0
  %6 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %i.o = fmul <2 x double> %i.n, %6
  %7 = insertelement <2 x double> poison, double %4, i64 0
  %i.p = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.p, <2 x double> %i.m, <2 x double> %i.o)
  %i.r = insertelement <2 x double> poison, double %i.e, i64 0
  %i.s = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer
  %i.t = fdiv <2 x double> %i.q, %i.s
  %i.u = fsub <2 x double> %i.n, %i.m             ; 2 uses
  %shift = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop18 = fmul <2 x double> %i.u, %shift
  %8 = extractelement <2 x double> %foldExtExtBinop18, i64 0
  %9 = fmul double %8, %4
  %10 = fmul double %9, %3
  %i.v = fdiv double %10, %i.e
  %i.w = fadd double %i.l, %i.v
  store double %i.w, ptr %i.j, align 8, !tbaa !148
  store <2 x double> %i.t, ptr %i.g, align 8, !tbaa !65
  store i64 %i.d, ptr %1, align 8, !tbaa !147
  br label %_ZN6duckdb14CovarOperation7CombineINS_10CovarStateENS_13CorrOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit

_ZN6duckdb14CovarOperation7CombineINS_10CovarStateENS_13CorrOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !150  ; 3 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb14CovarOperation7CombineINS_10CovarStateENS_13CorrOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !tbaa.struct !154
  br label %_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_13CorrOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit

bb.f:                                             ; preds = %_ZN6duckdb14CovarOperation7CombineINS_10CovarStateENS_13CorrOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit
  %i.ab = load i64, ptr %i.x, align 8, !tbaa !150 ; 3 uses
  %.not.i9 = icmp eq i64 %i.ab, 0
  br i1 %.not.i9, label %_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_13CorrOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = add i64 %i.ab, %i.z                     ; 2 uses
  %i.ad = uitofp i64 %i.z to double
  %i.ae = uitofp i64 %i.ab to double              ; 2 uses
  %i.af = uitofp i64 %i.ac to double              ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !151
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !151 ; 2 uses
  %i.ak = fsub double %i.ah, %i.aj                ; 3 uses
  %i.al = fdiv double %i.ae, %i.af
  %i.am = tail call double @llvm.fma.f64(double %i.al, double %i.ak, double %i.aj)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ao = load double, ptr %i.an, align 8, !tbaa !152
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !152
  %i.ar = fadd double %i.ao, %i.aq
  %i.as = fmul double %i.ak, %i.ak
  %i.at = fmul double %i.as, %i.ae
  %i.au = fmul double %i.at, %i.ad
  %i.av = fdiv double %i.au, %i.af
  %i.aw = fadd double %i.ar, %i.av
  store double %i.aw, ptr %i.ap, align 8, !tbaa !152
  store double %i.am, ptr %i.ai, align 8, !tbaa !151
  store i64 %i.ac, ptr %i.y, align 8, !tbaa !150
  br label %_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_13CorrOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit

_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_13CorrOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !150 ; 3 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_13CorrOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false), !tbaa.struct !154
  br label %_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_13CorrOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit11

bb.i:                                             ; preds = %_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_13CorrOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit
  %i.bb = load i64, ptr %i.ax, align 8, !tbaa !150 ; 3 uses
  %.not.i10 = icmp eq i64 %i.bb, 0
  br i1 %.not.i10, label %_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_13CorrOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit11, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = add i64 %i.bb, %i.az                    ; 2 uses
  %i.bd = uitofp i64 %i.az to double
  %i.be = uitofp i64 %i.bb to double              ; 2 uses
  %i.bf = uitofp i64 %i.bc to double              ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !151
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !151 ; 2 uses
  %i.bk = fsub double %i.bh, %i.bj                ; 3 uses
  %i.bl = fdiv double %i.be, %i.bf
  %i.bm = tail call double @llvm.fma.f64(double %i.bl, double %i.bk, double %i.bj)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !152
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !152
  %i.br = fadd double %i.bo, %i.bq
  %i.bs = fmul double %i.bk, %i.bk
  %i.bt = fmul double %i.bs, %i.be
  %i.bu = fmul double %i.bt, %i.bd
  %i.bv = fdiv double %i.bu, %i.bf
  %i.bw = fadd double %i.br, %i.bv
  store double %i.bw, ptr %i.bp, align 8, !tbaa !152
  store double %i.bm, ptr %i.bi, align 8, !tbaa !151
  store i64 %i.bc, ptr %i.ay, align 8, !tbaa !150
  br label %_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_13CorrOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit11

_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_13CorrOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit11: ; preds = %bb.h, %bb.i, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPKNS_9CorrStateEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !61
  %i.e = icmp eq i8 %i.d, 8
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 8, ptr %i.a, align 1, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.g = load i8, ptr %i.c, align 1, !tbaa !61
  store i8 %i.g, ptr %i.b, align 1, !tbaa !95
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.j = load ptr, ptr %1, align 8, !tbaa !34     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.j) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #22
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPNS_9CorrStateEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !61
  %i.e = icmp eq i8 %i.d, 8
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 8, ptr %i.a, align 1, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.g = load i8, ptr %i.c, align 1, !tbaa !61
  store i8 %i.g, ptr %i.b, align 1, !tbaa !95
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e
end_hunk_0
begin_hunk_1_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_113KahanAvgStateEdNS2_21KahanAverageOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

..loopexit_crit_edge.i30.i.loopexit57.unr-lcssa:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i
  %lcmp.mod78.not = icmp eq i64 %xtraiter74, 0
  br i1 %lcmp.mod78.not, label %..loopexit_crit_edge.i30.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader: ; preds = %..loopexit_crit_edge.i30.i.loopexit57.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader
  %.epil.init = phi double [ %.promoted8.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader ], [ %i.hj, %..loopexit_crit_edge.i30.i.loopexit57.unr-lcssa ] ; 2 uses
  %.epil.init77 = phi double [ %.promoted6.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader ], [ %i.hl, %..loopexit_crit_edge.i30.i.loopexit57.unr-lcssa ]
  %.04.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader ], [ %i.hm, %..loopexit_crit_edge.i30.i.loopexit57.unr-lcssa ]
  %lcmp.mod81 = trunc i64 %4 to i1
  call void @llvm.assume(i1 %lcmp.mod81)
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i.epil.init
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !20, !noalias !1118
  %i.hx = zext i32 %i.hw to i64
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.hx
  %.val.i29.i.epil = load double, ptr %i.hy, align 8, !tbaa !65, !alias.scope !1116, !noalias !1117
  %i.hz = fsub double %.val.i29.i.epil, %.epil.init77 ; 2 uses
  %i.ia = fadd double %.epil.init, %i.hz          ; 2 uses
  %i.ib = fsub double %i.ia, %.epil.init
  %i.ic = fsub double %i.ib, %i.hz
  br label %..loopexit_crit_edge.i30.i

..loopexit_crit_edge.i30.i:                       ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader, %..loopexit_crit_edge.i30.i.loopexit57.unr-lcssa, %..loopexit_crit_edge.i30.i.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil
  %.us-phi.i.i = phi double [ %i.hr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil ], [ %i.fw, %..loopexit_crit_edge.i30.i.loopexit.unr-lcssa ], [ %i.hj, %..loopexit_crit_edge.i30.i.loopexit57.unr-lcssa ], [ %i.ia, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader ]
  %.us-phi10.i.i = phi double [ %i.ht, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil ], [ %i.fy, %..loopexit_crit_edge.i30.i.loopexit.unr-lcssa ], [ %i.hl, %..loopexit_crit_edge.i30.i.loopexit57.unr-lcssa ], [ %i.ic, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader ]
  %.us-phi11.i.i = add i64 %.promoted.i28.i, %4
  store i64 %.us-phi11.i.i, ptr %3, align 8, !tbaa !165, !alias.scope !1117, !noalias !1116
  store double %.us-phi10.i.i, ptr %i.ex, align 8, !tbaa !65, !alias.scope !1117, !noalias !1116
  store double %.us-phi.i.i, ptr %i.ew, align 8, !tbaa !65, !alias.scope !1117, !noalias !1116
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_113KahanAvgStateEdNS2_21KahanAverageOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_113KahanAvgStateEdNS2_21KahanAverageOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i: ; preds = %bb.l, %bb.j, %..loopexit_crit_edge.i30.i, %.preheader.i27.i, %.preheader1.i.i
  %i.id = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !44 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ie, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_113KahanAvgStateEdNS2_21KahanAverageOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8 ; 4 uses
  %i.ig = load atomic i64, ptr %i.if acquire, align 8 ; 2 uses
  %i.ih = icmp eq i64 %i.ig, 4294967297
  %i.ii = trunc i64 %i.ig to i32                  ; 2 uses
  br i1 %i.ih, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.if, align 8, !tbaa !50
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ie, i64 12
  store i32 0, ptr %i.ij, align 4, !tbaa !51
  %i.ik = load ptr, ptr %i.ie, align 8, !tbaa !41
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %i.im = load ptr, ptr %i.il, align 8
  call void %i.im(ptr noundef nonnull align 8 dereferenceable(16) %i.ie) #22, !inline_history !1111
  %i.in = load ptr, ptr %i.ie, align 8, !tbaa !41
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 24
  %i.ip = load ptr, ptr %i.io, align 8
  call void %i.ip(ptr noundef nonnull align 8 dereferenceable(16) %i.ie) #22, !inline_history !1111
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.iq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.iq, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ir = add nsw i32 %i.ii, -1
  store i32 %i.ir, ptr %i.if, align 8, !tbaa !20
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.is = atomicrmw volatile add ptr %i.if, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ii, %bb.p ], [ %i.is, %bb.q ]
  %i.it = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.it, label %bb.r, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, !prof !52

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ie) #22
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i:         ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.n, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_113KahanAvgStateEdNS2_21KahanAverageOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.iu = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !44 ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.iv, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8 ; 4 uses
  %i.ix = load atomic i64, ptr %i.iw acquire, align 8 ; 2 uses
  %i.iy = icmp eq i64 %i.ix, 4294967297
  %i.iz = trunc i64 %i.ix to i32                  ; 2 uses
  br i1 %i.iy, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.iw, align 8, !tbaa !50
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iv, i64 12
  store i32 0, ptr %i.ja, align 4, !tbaa !51
  %i.jb = load ptr, ptr %i.iv, align 8, !tbaa !41
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8
  call void %i.jd(ptr noundef nonnull align 8 dereferenceable(16) %i.iv) #22, !inline_history !1112
  %i.je = load ptr, ptr %i.iv, align 8, !tbaa !41
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 24
  %i.jg = load ptr, ptr %i.jf, align 8
  call void %i.jg(ptr noundef nonnull align 8 dereferenceable(16) %i.iv) #22, !inline_history !1112
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

bb.u:                                             ; preds = %bb.s
  %i.jh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i2.i.i = icmp eq i8 %i.jh, 0
  br i1 %.not.i.i.i.i.i2.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ji = add nsw i32 %i.iz, -1
  store i32 %i.ji, ptr %i.iw, align 8, !tbaa !20
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

bb.w:                                             ; preds = %bb.u
  %i.jj = atomicrmw volatile add ptr %i.iw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i4.i.i = phi i32 [ %i.iz, %bb.v ], [ %i.jj, %bb.w ]
  %i.jk = icmp eq i32 %.0.i.i.i.i.i.i4.i.i, 1
  br i1 %i.jk, label %bb.x, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, !prof !52

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.iv) #22
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i:       ; preds = %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i, %bb.t, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_113KahanAvgStateEdNS2_21KahanAverageOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit

bb.y:                                             ; preds = %bb.g, %bb.f
  %i.jl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %i.jl

_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_113KahanAvgStateEdNS2_21KahanAverageOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit: ; preds = %.loopexit.i.i, %.loopexit.us.i.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, %bb.c, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZN6duckdb17AggregateFunction9StateSizeINS_10CovarStateEEEmRKS0_(ptr noundef nonnull align 8 dereferenceable(368) %0) #5 comdat align 2 {
bb.a:
  ret i64 32
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction15StateInitializeINS_10CovarStateENS_17CovarPopOperationELNS_23AggregateDestructorTypeE0EEEvRKS0_Ph(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef %1) #5 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction19BinaryScatterUpdateINS_10CovarStateEddNS_17CovarPopOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmRS4_m(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(17) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN6duckdb17AggregateExecutor13BinaryScatterINS_10CovarStateEddNS_17CovarPopOperationEEEvRNS_18AggregateInputDataERNS_6VectorES7_S7_m(ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction12StateCombineINS_10CovarStateENS_17CovarPopOperationEEEvRNS_6VectorES5_RNS_18AggregateInputDataEm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(17) %2, i64 noundef %3) #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPKNS_10CovarStateEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPNS_10CovarStateEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !96
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_10CovarStateENS_17CovarPopOperationEEEvRNS_6VectorES5_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN6duckdb14CovarOperation7CombineINS_10CovarStateENS_17CovarPopOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i
  %.09.i = phi i64 [ %i.af, %_ZN6duckdb14CovarOperation7CombineINS_10CovarStateENS_17CovarPopOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i ], [ 0, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.09.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !167  ; 4 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.09.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !167  ; 5 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !147  ; 3 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !tbaa.struct !153
  br label %_ZN6duckdb14CovarOperation7CombineINS_10CovarStateENS_17CovarPopOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.k = load i64, ptr %i.f, align 8, !tbaa !147  ; 3 uses
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %_ZN6duckdb14CovarOperation7CombineINS_10CovarStateENS_17CovarPopOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add i64 %i.k, %i.i                       ; 2 uses
  %4 = uitofp i64 %i.i to double                  ; 2 uses
  %5 = uitofp i64 %i.k to double                  ; 2 uses
  %i.m = uitofp i64 %i.l to double                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.q = load double, ptr %i.p, align 8, !tbaa !148
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !148
  %i.t = fadd double %i.q, %i.s
  %i.u = load <2 x double>, ptr %i.n, align 8, !tbaa !65 ; 2 uses
  %i.v = load <2 x double>, ptr %i.o, align 8, !tbaa !65 ; 2 uses
  %6 = insertelement <2 x double> poison, double %4, i64 0
  %7 = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = fmul <2 x double> %i.v, %7
  %8 = insertelement <2 x double> poison, double %5, i64 0
  %i.x = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer
  %i.y = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> %i.u, <2 x double> %i.w)
  %i.z = insertelement <2 x double> poison, double %i.m, i64 0
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = fdiv <2 x double> %i.y, %i.aa
  %i.ac = fsub <2 x double> %i.v, %i.u            ; 2 uses
  %shift = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop7 = fmul <2 x double> %i.ac, %shift
  %9 = extractelement <2 x double> %foldExtExtBinop7, i64 0
  %10 = fmul double %9, %5
  %11 = fmul double %10, %4
  %i.ad = fdiv double %11, %i.m
  %i.ae = fadd double %i.t, %i.ad
  store double %i.ae, ptr %i.r, align 8, !tbaa !148
  store <2 x double> %i.ab, ptr %i.o, align 8, !tbaa !65
  store i64 %i.l, ptr %i.h, align 8, !tbaa !147
  br label %_ZN6duckdb14CovarOperation7CombineINS_10CovarStateENS_17CovarPopOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i

_ZN6duckdb14CovarOperation7CombineINS_10CovarStateENS_17CovarPopOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.af = add nuw i64 %.09.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.af, %3
  br i1 %exitcond.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_10CovarStateENS_17CovarPopOperationEEEvRNS_6VectorES5_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i, !llvm.loop !1119

_ZN6duckdb17AggregateExecutor7CombineINS_10CovarStateENS_17CovarPopOperationEEEvRNS_6VectorES5_RNS_18AggregateInputDataEm.exit: ; preds = %_ZN6duckdb14CovarOperation7CombineINS_10CovarStateENS_17CovarPopOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction13StateFinalizeINS_10CovarStateEdNS_17CovarPopOperationEEEvRNS_6VectorERNS_18AggregateInputDataES5_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb17AggregateExecutor8FinalizeINS_10CovarStateEdNS_17CovarPopOperationEEEvRNS_6VectorERNS_18AggregateInputDataES5_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction12BinaryUpdateINS_10CovarStateEddNS_17CovarPopOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(17) %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN6duckdb17AggregateExecutor12BinaryUpdateINS_10CovarStateEddNS_17CovarPopOperationEEEvRNS_18AggregateInputDataERNS_6VectorES7_Phm(ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef %3, i64 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateExecutor13BinaryScatterINS_10CovarStateEddNS_17CovarPopOperationEEEvRNS_18AggregateInputDataERNS_6VectorES7_S7_m(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %6 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %7 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %6)
          to label %bb.b unwind label %bb.at

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.c unwind label %bb.au

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.d unwind label %bb.av

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %6)
          to label %bb.e unwind label %bb.av

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.f unwind label %bb.av

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.g unwind label %bb.av

bb.g:                                             ; preds = %bb.f
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %6)
          to label %bb.h unwind label %bb.av

bb.h:                                             ; preds = %bb.g
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !114
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !114
  %i.g = load ptr, ptr %5, align 8, !tbaa !112
  %i.h = load ptr, ptr %6, align 8, !tbaa !112
  %i.i = load ptr, ptr %7, align 8, !tbaa !112
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16
  invoke void @_ZN6duckdb17AggregateExecutor17BinaryScatterLoopINS_10CovarStateEddNS_17CovarPopOperationEEEvPKT0_RNS_18AggregateInputDataEPKT1_PPT_mRKNS_15SelectionVectorESH_SH_RNS_12ValidityMaskESJ_(ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %bb.i unwind label %bb.av

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !44   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.n, align 8, !tbaa !50
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !51
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !41
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #22, !inline_history !6
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !41
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #22, !inline_history !6
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.l:                                             ; preds = %bb.j
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.n, align 8, !tbaa !20
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.aa = atomicrmw volatile add ptr %i.n, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.q, %bb.m ], [ %i.aa, %bb.n ]
  %i.ab = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ab, label %bb.o, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !52

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #22
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.k, %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !44 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.ae, align 8, !tbaa !50
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !51
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !41
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !7
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !41
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !7
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !20
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.t:                                             ; preds = %bb.r
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.ah, %bb.s ], [ %i.ar, %bb.t ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.as, label %bb.u, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !52

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !44 ; 8 uses
  %.not.i.i.i.i.i14 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i14, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i18, label %bb.v

bb.v:                                             ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %i.aw = load atomic i64, ptr %i.av acquire, align 8 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 4294967297
  %i.ay = trunc i64 %i.aw to i32                  ; 2 uses
  br i1 %i.ax, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.av, align 8, !tbaa !50
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %i.az, align 4, !tbaa !51
end_hunk_1
begin_hunk_2_@_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_10CovarStateEddNS_17CovarPopOperationEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESG_RNS_12ValidityMaskESI_:bb.a
  %exitcond96.not = icmp eq i64 %i.db, %4
  br i1 %exitcond96.not, label %..loopexit_crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us, !llvm.loop !1124

.lr.ph54.split:                                   ; preds = %.lr.ph54
  br i1 %.not.i37, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us64, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36

_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us64: ; preds = %.lr.ph54.split, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us64
  %i.dc = phi double [ %i.dy, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us64 ], [ %.promoted59, %.lr.ph54.split ]
  %i.dd = phi i64 [ %i.dk, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us64 ], [ %.promoted, %.lr.ph54.split ]
  %.053.us65 = phi i64 [ %i.dz, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us64 ], [ 0, %.lr.ph54.split ] ; 3 uses
  %i.de = phi <2 x double> [ %i.du, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us64 ], [ %i.cc, %.lr.ph54.split ] ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %.053.us65
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !20
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dh
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.053.us65
  %i.dk = add i64 %i.dd, 1                        ; 2 uses
  %i.dl = uitofp i64 %i.dk to double
  %i.dm = load double, ptr %i.dj, align 8, !tbaa !65
  %i.dn = load double, ptr %i.di, align 8, !tbaa !65 ; 2 uses
  %i.do = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.dp = insertelement <2 x double> %i.do, double %i.dn, i64 1
  %i.dq = fsub <2 x double> %i.dp, %i.de          ; 2 uses
  %i.dr = insertelement <2 x double> poison, double %i.dl, i64 0
  %i.ds = shufflevector <2 x double> %i.dr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dt = fdiv <2 x double> %i.dq, %i.ds
  %i.du = fadd <2 x double> %i.de, %i.dt          ; 3 uses
  %i.dv = extractelement <2 x double> %i.du, i64 1
  %i.dw = fsub double %i.dn, %i.dv
  %i.dx = extractelement <2 x double> %i.dq, i64 0
  %i.dy = tail call double @llvm.fmuladd.f64(double %i.dx, double %i.dw, double %i.dc) ; 2 uses
  %i.dz = add nuw i64 %.053.us65, 1               ; 2 uses
  %exitcond95.not = icmp eq i64 %i.dz, %4
  br i1 %exitcond95.not, label %..loopexit_crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us64, !llvm.loop !1124

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.k
  %.02647 = phi i64 [ %i.fo, %bb.k ], [ 0, %.lr.ph.split ] ; 5 uses
  br i1 %.not.i28, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.split
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.02647
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !20
  %i.ec = zext i32 %i.eb to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %.lr.ph.split.split, %bb.i
  %i.ed = phi i64 [ %i.ec, %bb.i ], [ %.02647, %.lr.ph.split.split ] ; 3 uses
  br i1 %.not.i29, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit30, label %bb.j

bb.j:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.02647
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !20
  %i.eg = zext i32 %i.ef to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit30

_ZNK6duckdb15SelectionVector9get_indexEm.exit30:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %bb.j
  %i.eh = phi i64 [ %i.eg, %bb.j ], [ %.02647, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 3 uses
  %i.ei = lshr i64 %i.ed, 6
  %i.ej = and i64 %i.ed, 63
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ei
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !63
  %i.em = shl nuw i64 1, %i.ej
  %i.en = and i64 %i.el, %i.em
  %.not = icmp eq i64 %i.en, 0
  br i1 %.not, label %bb.k, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit30
  %i.eo = lshr i64 %i.eh, 6
  %i.ep = and i64 %i.eh, 63
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %.fr, i64 %i.eo
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !63
  %i.es = shl nuw i64 1, %i.ep
  %i.et = and i64 %i.er, %i.es
  %.not44 = icmp eq i64 %i.et, 0
  br i1 %.not44, label %bb.k, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit34.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit34.thread: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ed
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.eh
  %i.ew = load i64, ptr %3, align 8, !tbaa !147
  %i.ex = add i64 %i.ew, 1                        ; 2 uses
  store i64 %i.ex, ptr %3, align 8, !tbaa !147
  %i.ey = uitofp i64 %i.ex to double
  %i.ez = load double, ptr %i.ev, align 8, !tbaa !65
  %i.fa = load double, ptr %i.eu, align 8, !tbaa !65 ; 2 uses
  %i.fb = load double, ptr %i.f, align 8, !tbaa !148
  %i.fc = load <2 x double>, ptr %i.e, align 8, !tbaa !65 ; 2 uses
  %i.fd = insertelement <2 x double> poison, double %i.ez, i64 0
  %i.fe = insertelement <2 x double> %i.fd, double %i.fa, i64 1
  %i.ff = fsub <2 x double> %i.fe, %i.fc          ; 2 uses
  %i.fg = insertelement <2 x double> poison, double %i.ey, i64 0
  %i.fh = shufflevector <2 x double> %i.fg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fi = fdiv <2 x double> %i.ff, %i.fh
  %i.fj = fadd <2 x double> %i.fc, %i.fi          ; 2 uses
  %i.fk = extractelement <2 x double> %i.fj, i64 1
  %i.fl = fsub double %i.fa, %i.fk
  %i.fm = extractelement <2 x double> %i.ff, i64 0
  %i.fn = tail call double @llvm.fmuladd.f64(double %i.fm, double %i.fl, double %i.fb)
  store <2 x double> %i.fj, ptr %i.e, align 8, !tbaa !65
  store double %i.fn, ptr %i.f, align 8, !tbaa !148
  br label %bb.k

bb.k:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit30, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit34.thread
  %i.fo = add nuw i64 %.02647, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.fo, %4
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split.split, !llvm.loop !1123

_ZNK6duckdb15SelectionVector9get_indexEm.exit36:  ; preds = %.lr.ph54.split, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36
  %i.fp = phi double [ %i.go, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36 ], [ %.promoted59, %.lr.ph54.split ]
  %i.fq = phi i64 [ %i.ga, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36 ], [ %.promoted, %.lr.ph54.split ]
  %.053 = phi i64 [ %i.gp, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36 ], [ 0, %.lr.ph54.split ] ; 3 uses
  %i.fr = phi <2 x double> [ %i.gk, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36 ], [ %i.cc, %.lr.ph54.split ] ; 2 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %.053
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !20
  %i.fu = zext i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %.053
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !20
  %i.fx = zext i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fu
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.fx
  %i.ga = add i64 %i.fq, 1                        ; 2 uses
  %i.gb = uitofp i64 %i.ga to double
  %i.gc = load double, ptr %i.fz, align 8, !tbaa !65
  %i.gd = load double, ptr %i.fy, align 8, !tbaa !65 ; 2 uses
  %i.ge = insertelement <2 x double> poison, double %i.gc, i64 0
  %i.gf = insertelement <2 x double> %i.ge, double %i.gd, i64 1
  %i.gg = fsub <2 x double> %i.gf, %i.fr          ; 2 uses
  %i.gh = insertelement <2 x double> poison, double %i.gb, i64 0
  %i.gi = shufflevector <2 x double> %i.gh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gj = fdiv <2 x double> %i.gg, %i.gi
  %i.gk = fadd <2 x double> %i.fr, %i.gj          ; 3 uses
  %i.gl = extractelement <2 x double> %i.gk, i64 1
  %i.gm = fsub double %i.gd, %i.gl
  %i.gn = extractelement <2 x double> %i.gg, i64 0
  %i.go = tail call double @llvm.fmuladd.f64(double %i.gn, double %i.gm, double %i.fp) ; 2 uses
  %i.gp = add nuw i64 %.053, 1                    ; 2 uses
  %exitcond94.not = icmp eq i64 %i.gp, %4
  br i1 %exitcond94.not, label %..loopexit_crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36, !llvm.loop !1124

..loopexit_crit_edge:                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit36, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us64, %_ZNK6duckdb15SelectionVector9get_indexEm.exit38.us
  %.us-phi = phi double [ %i.da, %_ZNK6duckdb15SelectionVector9get_indexEm.exit38.us ], [ %i.dy, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us64 ], [ %i.go, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36 ]
  %i.gq = phi <2 x double> [ %i.cw, %_ZNK6duckdb15SelectionVector9get_indexEm.exit38.us ], [ %i.du, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us64 ], [ %i.gk, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36 ]
  %.us-phi63 = add i64 %.promoted, %4
  store i64 %.us-phi63, ptr %3, align 8, !tbaa !147
  store <2 x double> %i.gq, ptr %i.ca, align 8, !tbaa !65
  store double %.us-phi, ptr %i.cb, align 8, !tbaa !148
  br label %.loopexit

.loopexit:                                        ; preds = %bb.k, %bb.g, %bb.d, %.preheader45, %.preheader, %..loopexit_crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction15StateInitializeINS_10CovarStateENS_18CovarSampOperationELNS_23AggregateDestructorTypeE0EEEvRKS0_Ph(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef %1) #5 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction19BinaryScatterUpdateINS_10CovarStateEddNS_18CovarSampOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmRS4_m(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(17) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN6duckdb17AggregateExecutor13BinaryScatterINS_10CovarStateEddNS_18CovarSampOperationEEEvRNS_18AggregateInputDataERNS_6VectorES7_S7_m(ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction12StateCombineINS_10CovarStateENS_18CovarSampOperationEEEvRNS_6VectorES5_RNS_18AggregateInputDataEm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(17) %2, i64 noundef %3) #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPKNS_10CovarStateEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPNS_10CovarStateEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !96
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_10CovarStateENS_18CovarSampOperationEEEvRNS_6VectorES5_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN6duckdb14CovarOperation7CombineINS_10CovarStateENS_18CovarSampOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i
  %.09.i = phi i64 [ %i.af, %_ZN6duckdb14CovarOperation7CombineINS_10CovarStateENS_18CovarSampOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i ], [ 0, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.09.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !167  ; 4 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.09.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !167  ; 5 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !147  ; 3 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !tbaa.struct !153
  br label %_ZN6duckdb14CovarOperation7CombineINS_10CovarStateENS_18CovarSampOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.k = load i64, ptr %i.f, align 8, !tbaa !147  ; 3 uses
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %_ZN6duckdb14CovarOperation7CombineINS_10CovarStateENS_18CovarSampOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add i64 %i.k, %i.i                       ; 2 uses
  %4 = uitofp i64 %i.i to double                  ; 2 uses
  %5 = uitofp i64 %i.k to double                  ; 2 uses
  %i.m = uitofp i64 %i.l to double                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.q = load double, ptr %i.p, align 8, !tbaa !148
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !148
  %i.t = fadd double %i.q, %i.s
  %i.u = load <2 x double>, ptr %i.n, align 8, !tbaa !65 ; 2 uses
  %i.v = load <2 x double>, ptr %i.o, align 8, !tbaa !65 ; 2 uses
  %6 = insertelement <2 x double> poison, double %4, i64 0
  %7 = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = fmul <2 x double> %i.v, %7
  %8 = insertelement <2 x double> poison, double %5, i64 0
  %i.x = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer
  %i.y = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> %i.u, <2 x double> %i.w)
  %i.z = insertelement <2 x double> poison, double %i.m, i64 0
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = fdiv <2 x double> %i.y, %i.aa
  %i.ac = fsub <2 x double> %i.v, %i.u            ; 2 uses
  %shift = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop7 = fmul <2 x double> %i.ac, %shift
  %9 = extractelement <2 x double> %foldExtExtBinop7, i64 0
  %10 = fmul double %9, %5
  %11 = fmul double %10, %4
  %i.ad = fdiv double %11, %i.m
  %i.ae = fadd double %i.t, %i.ad
  store double %i.ae, ptr %i.r, align 8, !tbaa !148
  store <2 x double> %i.ab, ptr %i.o, align 8, !tbaa !65
  store i64 %i.l, ptr %i.h, align 8, !tbaa !147
  br label %_ZN6duckdb14CovarOperation7CombineINS_10CovarStateENS_18CovarSampOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i

_ZN6duckdb14CovarOperation7CombineINS_10CovarStateENS_18CovarSampOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.af = add nuw i64 %.09.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.af, %3
  br i1 %exitcond.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_10CovarStateENS_18CovarSampOperationEEEvRNS_6VectorES5_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i, !llvm.loop !1125

_ZN6duckdb17AggregateExecutor7CombineINS_10CovarStateENS_18CovarSampOperationEEEvRNS_6VectorES5_RNS_18AggregateInputDataEm.exit: ; preds = %_ZN6duckdb14CovarOperation7CombineINS_10CovarStateENS_18CovarSampOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction13StateFinalizeINS_10CovarStateEdNS_18CovarSampOperationEEEvRNS_6VectorERNS_18AggregateInputDataES5_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb17AggregateExecutor8FinalizeINS_10CovarStateEdNS_18CovarSampOperationEEEvRNS_6VectorERNS_18AggregateInputDataES5_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction12BinaryUpdateINS_10CovarStateEddNS_18CovarSampOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(17) %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN6duckdb17AggregateExecutor12BinaryUpdateINS_10CovarStateEddNS_18CovarSampOperationEEEvRNS_18AggregateInputDataERNS_6VectorES7_Phm(ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef %3, i64 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateExecutor13BinaryScatterINS_10CovarStateEddNS_18CovarSampOperationEEEvRNS_18AggregateInputDataERNS_6VectorES7_S7_m(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %6 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %7 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %6)
          to label %bb.b unwind label %bb.at

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.c unwind label %bb.au

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.d unwind label %bb.av

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %6)
          to label %bb.e unwind label %bb.av

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.f unwind label %bb.av

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.g unwind label %bb.av

bb.g:                                             ; preds = %bb.f
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %6)
          to label %bb.h unwind label %bb.av

bb.h:                                             ; preds = %bb.g
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !114
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !114
  %i.g = load ptr, ptr %5, align 8, !tbaa !112
  %i.h = load ptr, ptr %6, align 8, !tbaa !112
  %i.i = load ptr, ptr %7, align 8, !tbaa !112
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16
  invoke void @_ZN6duckdb17AggregateExecutor17BinaryScatterLoopINS_10CovarStateEddNS_18CovarSampOperationEEEvPKT0_RNS_18AggregateInputDataEPKT1_PPT_mRKNS_15SelectionVectorESH_SH_RNS_12ValidityMaskESJ_(ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %bb.i unwind label %bb.av

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !44   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.n, align 8, !tbaa !50
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !51
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !41
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #22, !inline_history !6
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !41
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #22, !inline_history !6
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.l:                                             ; preds = %bb.j
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.n, align 8, !tbaa !20
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.aa = atomicrmw volatile add ptr %i.n, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.q, %bb.m ], [ %i.aa, %bb.n ]
  %i.ab = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ab, label %bb.o, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !52

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #22
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.k, %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !44 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.ae, align 8, !tbaa !50
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !51
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !41
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !7
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !41
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !7
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !20
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.t:                                             ; preds = %bb.r
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.ah, %bb.s ], [ %i.ar, %bb.t ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.as, label %bb.u, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !52

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !44 ; 8 uses
  %.not.i.i.i.i.i14 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i14, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i18, label %bb.v

bb.v:                                             ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %i.aw = load atomic i64, ptr %i.av acquire, align 8 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 4294967297
  %i.ay = trunc i64 %i.aw to i32                  ; 2 uses
  br i1 %i.ax, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.av, align 8, !tbaa !50
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %i.az, align 4, !tbaa !51
end_hunk_2
