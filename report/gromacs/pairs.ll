Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pairs?download=true
inline.NumInlined: 420
inline.NumDeleted: 165
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZNSt10filesystem7__cxx114pathC2IA68_cS1_EERKT_NS1_6formatE:bb.a
  store i64 %i.b, ptr %i.a, align 8, !tbaa !208
  %i.d = icmp ugt i64 %i.b, 15
  br i1 %i.d, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !210
  %i.f = load i64, ptr %i.a, align 8, !tbaa !208
  store i64 %i.f, ptr %i.c, align 8, !tbaa !181
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.g = phi ptr [ %i.e, %.noexc.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.b, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !181
  store i8 %i.h, ptr %i.g, align 1, !tbaa !181
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !208  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !212
  %i.k = load ptr, ptr %0, align 8, !tbaa !210
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
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
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !213  ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.p) #18
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.o, %bb.h ], [ %i.o, %bb.i ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !210    ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.s = load i64, ptr %i.c, align 8, !tbaa !181
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !213  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b) #18
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !210    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.f = load i64, ptr %i.d, align 8, !tbaa !181
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL14warning_rlimitPA3_KfiiPiff(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, float noundef %4, float noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_Z6glatnrPKii(ptr noundef %3, i32 noundef %1)
  %i.b = tail call noundef i32 @_Z6glatnrPKii(ptr noundef %3, i32 noundef %2)
  %i.c = fpext float %4 to double                 ; 2 uses
  %i.d = fpext float %5 to double
  tail call void (ptr, ...) @_Z11gmx_warningPKcz(ptr noundef nonnull @.str.3, i32 noundef %i.a, i32 noundef %i.b, double noundef %i.c, double noundef %i.d)
  %i.e = load ptr, ptr @debug, align 8, !tbaa !215 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr inbounds [12 x i8], ptr %0, i64 %i.f ; 3 uses
  %i.h = load float, ptr %i.g, align 4, !tbaa !172
  %i.i = fpext float %i.h to double
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.k = load float, ptr %i.j, align 4, !tbaa !172
  %i.l = fpext float %i.k to double
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.n = load float, ptr %i.m, align 4, !tbaa !172
  %i.o = fpext float %i.n to double
  %i.p = sext i32 %2 to i64
  %i.q = getelementptr inbounds [12 x i8], ptr %0, i64 %i.p ; 2 uses
  %i.r = load float, ptr %i.q, align 4, !tbaa !172
  %i.s = fpext float %i.r to double
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.u = load <2 x float>, ptr %i.t, align 4, !tbaa !172
  %i.v = fpext <2 x float> %i.u to <2 x double>   ; 2 uses
  %i.w = tail call noundef i32 @_Z6glatnrPKii(ptr noundef %3, i32 noundef %1)
  %i.x = tail call noundef i32 @_Z6glatnrPKii(ptr noundef %3, i32 noundef %2)
  %i.y = extractelement <2 x double> %i.v, i64 0
  %i.z = extractelement <2 x double> %i.v, i64 1
  %i.aa = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.4, double noundef %i.i, double noundef %i.l, double noundef %i.o, double noundef %i.s, double noundef %i.y, double noundef %i.z, i32 noundef %i.w, i32 noundef %i.x, double noundef %i.c) #18 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define internal fastcc noundef float @_ZL27free_energy_evaluate_singleIL18KernelSoftcoreType2EEfffRKN19interaction_const_t18SoftCoreParametersEfPKfffffffffS6_S6_S6_S6_S6_S6_S6_PfS7_S7_(float noundef %0, float noundef %1, ptr nofree noundef readonly captures(none) %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, float noundef %9, ptr nofree noundef nonnull readonly captures(none) %10, ptr nofree noundef nonnull readonly captures(none) %11, ptr nofree noundef nonnull readonly captures(none) %12, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %13, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %14, ptr nofree noundef captures(none) %15) unnamed_addr #10 {
.preheader1:
  %i.a = tail call noundef float @sqrtf(float noundef %0) #18 ; 4 uses
  %i.b = fmul float %0, %0                        ; 3 uses
  %i.c = fmul float %0, %i.b
  %i.d = fdiv float 1.000000e+00, %i.c            ; 3 uses
  %i.e = fmul float %1, %i.a                      ; 2 uses
  %i.f = fptosi float %i.e to i32                 ; 2 uses
  %i.g = sitofp i32 %i.f to float                 ; 2 uses
  %i.h = fsub float %i.e, %i.g                    ; 14 uses
  %i.i = fmul float %i.h, %i.h                    ; 6 uses
  %i.j = fmul float %3, %i.g
  %i.k = fptosi float %i.j to i32
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %2, i64 %i.l ; 5 uses
  %i.n = getelementptr i8, ptr %i.m, i64 4        ; 2 uses
  %i.o = getelementptr i8, ptr %i.m, i64 8        ; 2 uses
  %i.p = getelementptr i8, ptr %i.m, i64 12       ; 2 uses
  %i.q = mul nsw i32 %i.f, 12
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr [4 x i8], ptr %2, i64 %i.r ; 8 uses
  %i.t = getelementptr i8, ptr %i.s, i64 16       ; 2 uses
  %i.u = getelementptr i8, ptr %i.s, i64 20       ; 2 uses
  %i.v = getelementptr i8, ptr %i.s, i64 24       ; 2 uses
  %i.w = getelementptr i8, ptr %i.s, i64 28       ; 2 uses
  %i.x = getelementptr i8, ptr %i.s, i64 32       ; 2 uses
  %i.y = getelementptr i8, ptr %i.s, i64 36       ; 2 uses
  %i.z = getelementptr i8, ptr %i.s, i64 40       ; 2 uses
  %i.aa = getelementptr i8, ptr %i.s, i64 44      ; 2 uses
  %i.ab = fmul float %i.d, %i.a
  %i.ac = fmul float %1, %i.ab                    ; 2 uses
  %i.ad = fcmp une float %4, 0.000000e+00
  %i.ae = fcmp une float %5, 0.000000e+00
  %or.cond = or i1 %i.ad, %i.ae
  %i.af = fcmp une float %6, 0.000000e+00
  %or.cond29 = or i1 %or.cond, %i.af
  br i1 %or.cond29, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.preheader1
  %i.ag = load float, ptr %i.m, align 4, !tbaa !172
  %i.ah = load float, ptr %i.n, align 4, !tbaa !172
  %i.ai = load float, ptr %i.o, align 4, !tbaa !172
  %i.aj = fmul float %i.h, %i.ai                  ; 2 uses
  %i.ak = load float, ptr %i.p, align 4, !tbaa !172
  %i.al = fmul float %i.i, %i.ak                  ; 2 uses
  %i.am = fadd float %i.ah, %i.aj
  %i.an = fadd float %i.am, %i.al                 ; 2 uses
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.h, float %i.an, float %i.ag)
  %i.ap = fadd float %i.aj, %i.an
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.al, float 2.000000e+00, float %i.ap)
  %16 = fmul float %4, %i.ao
  %i.ar = fneg float %4
  %i.as = fmul float %i.aq, %i.ar
  %i.at = fmul float %i.a, %i.as
  %i.au = fmul float %i.d, %i.at
  %i.av = fmul float %1, %i.au
  %i.aw = load float, ptr %i.t, align 4, !tbaa !172
  %i.ax = load float, ptr %i.u, align 4, !tbaa !172
  %i.ay = load float, ptr %i.v, align 4, !tbaa !172
  %i.az = fmul float %i.h, %i.ay                  ; 2 uses
  %i.ba = load float, ptr %i.w, align 4, !tbaa !172
  %i.bb = fmul float %i.i, %i.ba                  ; 2 uses
  %i.bc = fadd float %i.ax, %i.az
  %i.bd = fadd float %i.bc, %i.bb                 ; 2 uses
  %i.be = tail call float @llvm.fmuladd.f32(float %i.h, float %i.bd, float %i.aw)
  %i.bf = fadd float %i.az, %i.bd
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bb, float 2.000000e+00, float %i.bf)
  %i.bh = fmul float %5, %i.be
  %i.bi = fneg float %5
  %i.bj = fmul float %i.bg, %i.bi
  %i.bk = load float, ptr %i.x, align 4, !tbaa !172
  %i.bl = load float, ptr %i.y, align 4, !tbaa !172
  %i.bm = load float, ptr %i.z, align 4, !tbaa !172
  %i.bn = fmul float %i.h, %i.bm                  ; 2 uses
  %i.bo = load float, ptr %i.aa, align 4, !tbaa !172
  %i.bp = fmul float %i.i, %i.bo                  ; 2 uses
  %i.bq = fadd float %i.bl, %i.bn
  %i.br = fadd float %i.bq, %i.bp                 ; 2 uses
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.h, float %i.br, float %i.bk)
  %i.bt = fadd float %i.bn, %i.br
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.bp, float 2.000000e+00, float %i.bt)
  %i.bv = tail call float @llvm.fmuladd.f32(float %6, float %i.bs, float %i.bh)
  %i.bw = fneg float %6
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.bu, float %i.bj)
  %i.by = fmul float %i.ac, %i.bx
  br label %bb.b

bb.b:                                             ; preds = %.preheader1, %bb.a
  %.sroa.018.0 = phi float [ %i.by, %bb.a ], [ 0.000000e+00, %.preheader1 ]
  %.sroa.016.0 = phi float [ %i.av, %bb.a ], [ 0.000000e+00, %.preheader1 ]
  %.sroa.015.0 = phi float [ %16, %bb.a ], [ 0.000000e+00, %.preheader1 ] ; 2 uses
  %.sroa.0.0 = phi float [ %i.bv, %bb.a ], [ 0.000000e+00, %.preheader1 ] ; 2 uses
  %i.bz = fcmp une float %7, 0.000000e+00
  %i.ca = fcmp une float %8, 0.000000e+00
  %or.cond30 = or i1 %i.bz, %i.ca
  %i.cb = fcmp une float %9, 0.000000e+00
  %or.cond31 = or i1 %or.cond30, %i.cb
  br i1 %or.cond31, label %bb.c, label %.preheader.preheader

bb.c:                                             ; preds = %bb.b
  %i.cc = load float, ptr %i.m, align 4, !tbaa !172
  %i.cd = load float, ptr %i.n, align 4, !tbaa !172
  %i.ce = load float, ptr %i.o, align 4, !tbaa !172
  %i.cf = fmul float %i.h, %i.ce                  ; 2 uses
  %i.cg = load float, ptr %i.p, align 4, !tbaa !172
  %i.ch = fmul float %i.i, %i.cg                  ; 2 uses
  %i.ci = fadd float %i.cd, %i.cf
  %i.cj = fadd float %i.ci, %i.ch                 ; 2 uses
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.h, float %i.cj, float %i.cc)
  %i.cl = fadd float %i.cf, %i.cj
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.ch, float 2.000000e+00, float %i.cl)
  %17 = fmul float %7, %i.ck
  %i.cn = fneg float %7
  %i.co = fmul float %i.cm, %i.cn
  %i.cp = fmul float %i.a, %i.co
  %i.cq = fmul float %i.d, %i.cp
  %i.cr = fmul float %1, %i.cq
  %i.cs = load float, ptr %i.t, align 4, !tbaa !172
  %i.ct = load float, ptr %i.u, align 4, !tbaa !172
  %i.cu = load float, ptr %i.v, align 4, !tbaa !172
  %i.cv = fmul float %i.h, %i.cu                  ; 2 uses
  %i.cw = load float, ptr %i.w, align 4, !tbaa !172
  %i.cx = fmul float %i.i, %i.cw                  ; 2 uses
  %i.cy = fadd float %i.ct, %i.cv
  %i.cz = fadd float %i.cy, %i.cx                 ; 2 uses
  %i.da = tail call float @llvm.fmuladd.f32(float %i.h, float %i.cz, float %i.cs)
  %i.db = fadd float %i.cv, %i.cz
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.cx, float 2.000000e+00, float %i.db)
  %i.dd = fmul float %8, %i.da
  %i.de = fneg float %8
  %i.df = fmul float %i.dc, %i.de
  %i.dg = load float, ptr %i.x, align 4, !tbaa !172
  %i.dh = load float, ptr %i.y, align 4, !tbaa !172
  %i.di = load float, ptr %i.z, align 4, !tbaa !172
  %i.dj = fmul float %i.h, %i.di                  ; 2 uses
  %i.dk = load float, ptr %i.aa, align 4, !tbaa !172
  %i.dl = fmul float %i.i, %i.dk                  ; 2 uses
  %i.dm = fadd float %i.dh, %i.dj
  %i.dn = fadd float %i.dm, %i.dl                 ; 2 uses
  %i.do = tail call float @llvm.fmuladd.f32(float %i.h, float %i.dn, float %i.dg)
  %i.dp = fadd float %i.dj, %i.dn
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.dl, float 2.000000e+00, float %i.dp)
  %i.dr = tail call float @llvm.fmuladd.f32(float %9, float %i.do, float %i.dd)
  %i.ds = fneg float %9
  %i.dt = tail call float @llvm.fmuladd.f32(float %i.ds, float %i.dq, float %i.df)
  %i.du = fmul float %i.ac, %i.dt
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.b, %bb.c
  %.sroa.619.0 = phi float [ %i.du, %bb.c ], [ 0.000000e+00, %bb.b ]
  %.sroa.517.0 = phi float [ %i.cr, %bb.c ], [ 0.000000e+00, %bb.b ]
  %.sroa.5.0 = phi float [ %17, %bb.c ], [ 0.000000e+00, %bb.b ] ; 2 uses
  %.sroa.6.0 = phi float [ %i.dr, %bb.c ], [ 0.000000e+00, %bb.b ] ; 2 uses
  %i.dv = load float, ptr %10, align 4, !tbaa !172 ; 2 uses
  %i.dw = tail call float @llvm.fmuladd.f32(float %i.dv, float %.sroa.015.0, float 0.000000e+00)
  %i.dx = load float, ptr %11, align 4, !tbaa !172 ; 2 uses
  %i.dy = tail call float @llvm.fmuladd.f32(float %i.dx, float %.sroa.0.0, float 0.000000e+00)
  %i.dz = fmul float %i.dx, %.sroa.018.0
  %18 = tail call float @llvm.fmuladd.f32(float %i.dv, float %.sroa.016.0, float %i.dz)
  %19 = tail call float @llvm.fmuladd.f32(float %18, float %i.b, float 0.000000e+00)
  %20 = load float, ptr %12, align 4, !tbaa !172  ; 2 uses
  %i.ea = tail call float @llvm.fmuladd.f32(float %.sroa.015.0, float %20, float 0.000000e+00)
  %i.eb = tail call float @llvm.fmuladd.f32(float %.sroa.0.0, float %20, float 0.000000e+00)
  %i.ec = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !172 ; 2 uses
  %i.ee = tail call float @llvm.fmuladd.f32(float %i.ed, float %.sroa.5.0, float %i.dw)
  %i.ef = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !172 ; 2 uses
  %i.eh = tail call float @llvm.fmuladd.f32(float %i.eg, float %.sroa.6.0, float %i.dy)
  %i.ei = fmul float %i.eg, %.sroa.619.0
  %i.ej = tail call float @llvm.fmuladd.f32(float %i.ed, float %.sroa.517.0, float %i.ei)
  %i.ek = tail call float @llvm.fmuladd.f32(float %i.ej, float %i.b, float %19)
  %i.el = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.em = load float, ptr %i.el, align 4, !tbaa !172 ; 2 uses
  %21 = tail call float @llvm.fmuladd.f32(float %.sroa.5.0, float %i.em, float %i.ea)
  %i.en = tail call float @llvm.fmuladd.f32(float %.sroa.6.0, float %i.em, float %i.eb)
  %22 = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %23 = load float, ptr %22, align 4, !tbaa !172
  %24 = fadd float %21, %23
  store float %24, ptr %22, align 4, !tbaa !172
  %25 = getelementptr inbounds nuw i8, ptr %15, i64 12 ; 2 uses
  %26 = load float, ptr %25, align 4, !tbaa !172
  %27 = fadd float %i.en, %26
  store float %27, ptr %25, align 4, !tbaa !172
  store float %i.ee, ptr %13, align 4, !tbaa !172
  store float %i.eh, ptr %14, align 4, !tbaa !172
  ret float %i.ek
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define internal fastcc noundef float @_ZL27free_energy_evaluate_singleIL18KernelSoftcoreType0EEfffRKN19interaction_const_t18SoftCoreParametersEfPKfffffffffS6_S6_S6_S6_S6_S6_S6_PfS7_S7_(float noundef %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(36) %1, float noundef %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, float noundef %9, float noundef %10, ptr nofree noundef nonnull readonly captures(none) %11, ptr nofree noundef nonnull readonly captures(none) %12, ptr nofree noundef nonnull readonly captures(none) %13, ptr nofree noundef nonnull readonly captures(none) %14, ptr nofree noundef nonnull readonly captures(none) %15, ptr nofree noundef nonnull readonly captures(none) %16, ptr nofree noundef nonnull readonly captures(none) %17, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %18, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %19, ptr nofree noundef captures(none) %20) unnamed_addr #10 {
bb.a:
  %i.a = fmul float %0, %0                        ; 3 uses
  %i.b = fmul float %0, %i.a                      ; 4 uses
  %i.c = fcmp olt float %0, 0.000000e+00
  br i1 %i.c, label %cdce.call, label %cdce.end, !prof !217

cdce.call:                                        ; preds = %bb.a
  %i.d = tail call noundef float @sqrtf(float noundef %0) #18 ; 0 uses
  br label %cdce.end

cdce.end:                                         ; preds = %bb.a, %cdce.call
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = fcmp ogt float %6, 0.000000e+00
  %i.h = fcmp ogt float %7, 0.000000e+00
  %or.cond255 = and i1 %i.g, %i.h
  br i1 %or.cond255, label %bb.b, label %bb.c

bb.b:                                             ; preds = %cdce.end
  %i.i = fmul nnan float %7, 5.000000e-01
  %i.j = fdiv float %i.i, %6                      ; 2 uses
  %i.k = load float, ptr %i.f, align 4, !tbaa !218 ; 2 uses
  %i.l = fcmp olt float %i.j, %i.k
  %spec.store.select = select i1 %i.l, float %i.k, float %i.j
  br label %bb.d

bb.c:                                             ; preds = %cdce.end
  %i.m = load float, ptr %i.e, align 4, !tbaa !219
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.0236.0 = phi float [ %spec.store.select, %bb.b ], [ %i.m, %bb.c ] ; 4 uses
  %i.n = fcmp ogt float %9, 0.000000e+00
  %i.o = fcmp ogt float %10, 0.000000e+00
  %or.cond256 = and i1 %i.n, %i.o
  br i1 %or.cond256, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load float, ptr %i.e, align 4, !tbaa !219
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.q = fmul nnan float %10, 5.000000e-01
  %i.r = fdiv float %i.q, %9                      ; 2 uses
  %i.s = load float, ptr %i.f, align 4, !tbaa !218 ; 2 uses
  %i.t = fcmp olt float %i.r, %i.s
  %spec.store.select.1 = select i1 %i.t, float %i.s, float %i.r
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.6237.0 = phi float [ %spec.store.select.1, %bb.f ], [ %i.p, %bb.e ] ; 4 uses
  %i.u = fcmp ogt float %7, 0.000000e+00
  %i.v = fcmp ogt float %10, 0.000000e+00
  %or.cond = and i1 %i.u, %i.v                    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.x = load float, ptr %1, align 4
  %i.y = load float, ptr %i.w, align 4
  %.0207 = select i1 %or.cond, float 0.000000e+00, float %i.y ; 4 uses
  %.0206 = select i1 %or.cond, float 0.000000e+00, float %i.x ; 4 uses
  %i.z = fcmp une float %5, 0.000000e+00
  %i.aa = fcmp une float %6, 0.000000e+00
  %or.cond257 = or i1 %i.z, %i.aa
  %i.ab = fcmp une float %7, 0.000000e+00
  %or.cond258 = or i1 %or.cond257, %i.ab
  br i1 %or.cond258, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = load float, ptr %14, align 4, !tbaa !172
  %i.ad = fmul float %.0207, %i.ac
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.ad, float %.sroa.0236.0, float %i.b)
  %i.af = fdiv float 1.000000e+00, %i.ae          ; 2 uses
  %i.ag = tail call noundef float @cbrtf(float noundef %i.af) #21
  %i.ah = tail call noundef float @sqrtf(float noundef %i.ag) #18
  %i.ai = fneg float %5
  %i.aj = load float, ptr %15, align 4, !tbaa !172
  %i.ak = fmul float %.0206, %i.aj
  %i.al = tail call float @llvm.fmuladd.f32(float %i.ak, float %.sroa.0236.0, float %i.b)
  %i.am = fneg float %6
  %i.an = fneg float %7
  %i.ao = fdiv float 1.000000e+00, %i.al          ; 2 uses
  %i.ap = tail call noundef float @cbrtf(float noundef %i.ao) #21
  %i.aq = tail call noundef float @sqrtf(float noundef %i.ap) #18
  %i.ar = fdiv float 1.000000e+00, %i.aq          ; 2 uses
  %i.as = fdiv float 1.000000e+00, %i.ah          ; 2 uses
  %i.at = fmul float %2, %i.as                    ; 2 uses
  %i.au = fptosi float %i.at to i32
  %i.av = sitofp i32 %i.au to float               ; 2 uses
  %i.aw = fsub float %i.at, %i.av                 ; 4 uses
  %i.ax = fmul float %i.aw, %i.aw
  %i.ay = fmul float %4, %i.av
  %i.az = fptosi float %i.ay to i32
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ba ; 4 uses
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !172
  %i.bd = getelementptr i8, ptr %i.bb, i64 4
  %i.be = load float, ptr %i.bd, align 4, !tbaa !172
  %i.bf = getelementptr i8, ptr %i.bb, i64 8
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !172
  %i.bh = fmul float %i.bg, %i.aw                 ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bb, i64 12
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !172
  %i.bk = fmul float %i.bj, %i.ax                 ; 2 uses
  %i.bl = fadd float %i.be, %i.bh
  %i.bm = fadd float %i.bl, %i.bk                 ; 2 uses
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.bm, float %i.bc)
  %i.bo = fadd float %i.bh, %i.bm
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bk, float 2.000000e+00, float %i.bo)
  %i.bq = fmul float %5, %i.bn
  %i.br = fmul float %i.bp, %i.ai
  %i.bs = fmul float %i.ar, %i.ao
  %i.bt = fmul float %i.as, %i.br
  %i.bu = fmul float %2, %i.bs
  %i.bv = fmul float %i.af, %i.bt
  %i.bw = fmul float %2, %i.bv
  %i.bx = fmul float %2, %i.ar                    ; 2 uses
  %i.by = fptosi float %i.bx to i32               ; 2 uses
  %i.bz = sitofp i32 %i.by to float
  %i.ca = fsub float %i.bx, %i.bz                 ; 6 uses
  %i.cb = fmul float %i.ca, %i.ca                 ; 2 uses
  %i.cc = mul nsw i32 %i.by, 12
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr [4 x i8], ptr %3, i64 %i.cd ; 8 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 16
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !172
  %i.ch = getelementptr i8, ptr %i.ce, i64 20
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !172
  %i.cj = getelementptr i8, ptr %i.ce, i64 24
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !172
  %i.cl = fmul float %i.ck, %i.ca                 ; 2 uses
  %i.cm = getelementptr i8, ptr %i.ce, i64 28
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !172
  %i.co = fmul float %i.cn, %i.cb                 ; 2 uses
  %i.cp = fadd float %i.ci, %i.cl
  %i.cq = fadd float %i.cp, %i.co                 ; 2 uses
  %i.cr = tail call float @llvm.fmuladd.f32(float %i.ca, float %i.cq, float %i.cg)
  %i.cs = fadd float %i.cl, %i.cq
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.co, float 2.000000e+00, float %i.cs)
  %i.cu = fmul float %6, %i.cr
  %i.cv = fmul float %i.ct, %i.am
  %i.cw = getelementptr i8, ptr %i.ce, i64 32
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !172
  %i.cy = getelementptr i8, ptr %i.ce, i64 36
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !172
  %i.da = getelementptr i8, ptr %i.ce, i64 40
  %i.db = load float, ptr %i.da, align 4, !tbaa !172
  %i.dc = fmul float %i.ca, %i.db                 ; 2 uses
  %i.dd = getelementptr i8, ptr %i.ce, i64 44
  %i.de = load float, ptr %i.dd, align 4, !tbaa !172
  %i.df = fmul float %i.cb, %i.de                 ; 2 uses
  %i.dg = fadd float %i.cz, %i.dc
  %i.dh = fadd float %i.dg, %i.df                 ; 2 uses
  %i.di = tail call float @llvm.fmuladd.f32(float %i.ca, float %i.dh, float %i.cx)
  %i.dj = fadd float %i.dc, %i.dh
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.df, float 2.000000e+00, float %i.dj)
  %i.dl = tail call float @llvm.fmuladd.f32(float %7, float %i.di, float %i.cu)
  %i.dm = tail call float @llvm.fmuladd.f32(float %i.an, float %i.dk, float %i.cv)
  %i.dn = fmul float %i.bu, %i.dm
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.sroa.0230.0 = phi float [ %i.dn, %bb.h ], [ 0.000000e+00, %bb.g ] ; 2 uses
  %.sroa.0228.0 = phi float [ %i.bw, %bb.h ], [ 0.000000e+00, %bb.g ] ; 2 uses
  %.sroa.0227.0 = phi float [ %i.bq, %bb.h ], [ 0.000000e+00, %bb.g ] ; 2 uses
  %.sroa.0.0 = phi float [ %i.dl, %bb.h ], [ 0.000000e+00, %bb.g ] ; 2 uses
  %i.do = fcmp une float %8, 0.000000e+00
  %i.dp = fcmp une float %9, 0.000000e+00
  %or.cond259 = or i1 %i.do, %i.dp
  %i.dq = fcmp une float %10, 0.000000e+00
  %or.cond260 = or i1 %or.cond259, %i.dq
  br i1 %or.cond260, label %bb.j, label %.preheader.preheader

bb.j:                                             ; preds = %bb.i
  %i.dr = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !172
  %i.dt = fmul float %.0207, %i.ds
  %i.du = tail call float @llvm.fmuladd.f32(float %i.dt, float %.sroa.6237.0, float %i.b)
  %i.dv = fdiv float 1.000000e+00, %i.du          ; 2 uses
  %i.dw = tail call noundef float @cbrtf(float noundef %i.dv) #21
  %i.dx = tail call noundef float @sqrtf(float noundef %i.dw) #18
  %i.dy = fneg float %8
  %i.dz = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !172
  %i.eb = fmul float %.0206, %i.ea
  %i.ec = tail call float @llvm.fmuladd.f32(float %i.eb, float %.sroa.6237.0, float %i.b)
  %i.ed = fneg float %9
  %i.ee = fneg float %10
  %i.ef = fdiv float 1.000000e+00, %i.ec          ; 2 uses
  %i.eg = tail call noundef float @cbrtf(float noundef %i.ef) #21
  %i.eh = tail call noundef float @sqrtf(float noundef %i.eg) #18
  %i.ei = fdiv float 1.000000e+00, %i.eh          ; 2 uses
  %i.ej = fdiv float 1.000000e+00, %i.dx          ; 2 uses
  %i.ek = fmul float %2, %i.ej                    ; 2 uses
  %i.el = fptosi float %i.ek to i32
  %i.em = sitofp i32 %i.el to float               ; 2 uses
  %i.en = fsub float %i.ek, %i.em                 ; 4 uses
  %i.eo = fmul float %i.en, %i.en
  %i.ep = fmul float %4, %i.em
  %i.eq = fptosi float %i.ep to i32
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds [4 x i8], ptr %3, i64 %i.er ; 4 uses
  %i.et = load float, ptr %i.es, align 4, !tbaa !172
  %i.eu = getelementptr i8, ptr %i.es, i64 4
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !172
  %i.ew = getelementptr i8, ptr %i.es, i64 8
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !172
  %i.ey = fmul float %i.ex, %i.en                 ; 2 uses
  %i.ez = getelementptr i8, ptr %i.es, i64 12
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !172
  %i.fb = fmul float %i.fa, %i.eo                 ; 2 uses
  %i.fc = fadd float %i.ev, %i.ey
  %i.fd = fadd float %i.fc, %i.fb                 ; 2 uses
  %i.fe = tail call float @llvm.fmuladd.f32(float %i.en, float %i.fd, float %i.et)
  %i.ff = fadd float %i.ey, %i.fd
  %i.fg = tail call float @llvm.fmuladd.f32(float %i.fb, float 2.000000e+00, float %i.ff)
  %i.fh = fmul float %8, %i.fe
  %i.fi = fmul float %i.fg, %i.dy
  %i.fj = fmul float %i.ei, %i.ef
  %i.fk = fmul float %i.ej, %i.fi
  %i.fl = fmul float %2, %i.fj
  %i.fm = fmul float %i.dv, %i.fk
  %i.fn = fmul float %2, %i.fm
  %i.fo = fmul float %2, %i.ei                    ; 2 uses
  %i.fp = fptosi float %i.fo to i32               ; 2 uses
  %i.fq = sitofp i32 %i.fp to float
  %i.fr = fsub float %i.fo, %i.fq                 ; 6 uses
  %i.fs = fmul float %i.fr, %i.fr                 ; 2 uses
  %i.ft = mul nsw i32 %i.fp, 12
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr [4 x i8], ptr %3, i64 %i.fu ; 8 uses
  %i.fw = getelementptr i8, ptr %i.fv, i64 16
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !172
  %i.fy = getelementptr i8, ptr %i.fv, i64 20
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !172
  %i.ga = getelementptr i8, ptr %i.fv, i64 24
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !172
  %i.gc = fmul float %i.gb, %i.fr                 ; 2 uses
  %i.gd = getelementptr i8, ptr %i.fv, i64 28
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !172
  %i.gf = fmul float %i.ge, %i.fs                 ; 2 uses
  %i.gg = fadd float %i.fz, %i.gc
  %i.gh = fadd float %i.gg, %i.gf                 ; 2 uses
  %i.gi = tail call float @llvm.fmuladd.f32(float %i.fr, float %i.gh, float %i.fx)
  %i.gj = fadd float %i.gc, %i.gh
  %i.gk = tail call float @llvm.fmuladd.f32(float %i.gf, float 2.000000e+00, float %i.gj)
  %i.gl = fmul float %9, %i.gi
  %i.gm = fmul float %i.gk, %i.ed
  %i.gn = getelementptr i8, ptr %i.fv, i64 32
  %i.go = load float, ptr %i.gn, align 4, !tbaa !172
  %i.gp = getelementptr i8, ptr %i.fv, i64 36
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !172
  %i.gr = getelementptr i8, ptr %i.fv, i64 40
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !172
  %i.gt = fmul float %i.fr, %i.gs                 ; 2 uses
  %i.gu = getelementptr i8, ptr %i.fv, i64 44
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !172
  %i.gw = fmul float %i.fs, %i.gv                 ; 2 uses
  %i.gx = fadd float %i.gq, %i.gt
  %i.gy = fadd float %i.gx, %i.gw                 ; 2 uses
  %i.gz = tail call float @llvm.fmuladd.f32(float %i.fr, float %i.gy, float %i.go)
  %i.ha = fadd float %i.gt, %i.gy
  %i.hb = tail call float @llvm.fmuladd.f32(float %i.gw, float 2.000000e+00, float %i.ha)
  %i.hc = tail call float @llvm.fmuladd.f32(float %10, float %i.gz, float %i.gl)
  %i.hd = tail call float @llvm.fmuladd.f32(float %i.ee, float %i.hb, float %i.gm)
  %i.he = fmul float %i.fl, %i.hd
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.i, %bb.j
  %.sroa.6231.0 = phi float [ %i.he, %bb.j ], [ 0.000000e+00, %bb.i ] ; 2 uses
  %.sroa.5229.0 = phi float [ %i.fn, %bb.j ], [ 0.000000e+00, %bb.i ] ; 2 uses
  %.sroa.5.0 = phi float [ %i.fh, %bb.j ], [ 0.000000e+00, %bb.i ] ; 2 uses
  %.sroa.6.0 = phi float [ %i.hc, %bb.j ], [ 0.000000e+00, %bb.i ] ; 2 uses
  %21 = load float, ptr %13, align 4, !tbaa !172  ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.hg = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.hh = getelementptr inbounds nuw i8, ptr %13, i64 4
  %22 = load float, ptr %i.hh, align 4, !tbaa !172 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %16, i64 4
  %i.hj = getelementptr inbounds nuw i8, ptr %17, i64 4
  %i.hk = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.hl = load float, ptr %i.hf, align 4, !tbaa !172 ; 3 uses
  %i.hm = load float, ptr %11, align 4, !tbaa !172 ; 3 uses
  %i.hn = tail call float @llvm.fmuladd.f32(float %i.hm, float %.sroa.0227.0, float 0.000000e+00)
  %i.ho = load float, ptr %i.hg, align 4, !tbaa !172 ; 3 uses
  %i.hp = load float, ptr %12, align 4, !tbaa !172 ; 3 uses
  %i.hq = tail call float @llvm.fmuladd.f32(float %i.hp, float %.sroa.0.0, float 0.000000e+00)
  %i.hr = fmul float %i.hp, %.sroa.0230.0
  %i.hs = tail call float @llvm.fmuladd.f32(float %i.hm, float %.sroa.0228.0, float %i.hr)
  %i.ht = tail call float @llvm.fmuladd.f32(float %i.hs, float %i.a, float 0.000000e+00)
  %i.hu = tail call float @llvm.fmuladd.f32(float %.sroa.0.0, float %21, float 0.000000e+00)
  %i.hv = tail call float @llvm.fmuladd.f32(float %.sroa.0227.0, float %21, float 0.000000e+00)
  %i.hw = fmul float %.0206, %i.hp
  %i.hx = fmul float %.0207, %i.hm
  %i.hy = load float, ptr %i.hi, align 4, !tbaa !172
  %i.hz = load float, ptr %16, align 4, !tbaa !172
  %i.ia = load float, ptr %i.hj, align 4, !tbaa !172
  %i.ib = load float, ptr %17, align 4, !tbaa !172
  %i.ic = fmul float %i.hw, %i.ib
  %i.id = fmul float %i.hx, %i.hz
  %i.ie = fmul float %.sroa.0230.0, %i.ic
  %i.if = fmul float %.sroa.0228.0, %i.id
  %i.ig = tail call float @llvm.fmuladd.f32(float %i.ie, float %.sroa.0236.0, float %i.hu)
  %i.ih = tail call float @llvm.fmuladd.f32(float %i.if, float %.sroa.0236.0, float %i.hv)
  %i.ii = tail call float @llvm.fmuladd.f32(float %i.hl, float %.sroa.5.0, float %i.hn)
  %i.ij = tail call float @llvm.fmuladd.f32(float %i.ho, float %.sroa.6.0, float %i.hq)
  %i.ik = fmul float %i.ho, %.sroa.6231.0
  %i.il = tail call float @llvm.fmuladd.f32(float %i.hl, float %.sroa.5229.0, float %i.ik)
  %i.im = tail call float @llvm.fmuladd.f32(float %i.il, float %i.a, float %i.ht)
  %i.in = tail call float @llvm.fmuladd.f32(float %.sroa.6.0, float %22, float %i.ig)
  %i.io = tail call float @llvm.fmuladd.f32(float %.sroa.5.0, float %22, float %i.ih)
  %i.ip = fmul float %.0206, %i.ho
  %i.iq = fmul float %.0207, %i.hl
  %i.ir = fmul float %i.ip, %i.ia
  %i.is = fmul float %i.iq, %i.hy
  %i.it = fmul float %.sroa.6231.0, %i.ir
  %i.iu = fmul float %.sroa.5229.0, %i.is
  %i.iv = tail call float @llvm.fmuladd.f32(float %i.it, float %.sroa.6237.0, float %i.in)
  %i.iw = tail call float @llvm.fmuladd.f32(float %i.iu, float %.sroa.6237.0, float %i.io)
  %i.ix = load <2 x float>, ptr %i.hk, align 4, !tbaa !172
  %i.iy = insertelement <2 x float> poison, float %i.iw, i64 0
  %i.iz = insertelement <2 x float> %i.iy, float %i.iv, i64 1
  %i.ja = fadd <2 x float> %i.iz, %i.ix
  store <2 x float> %i.ja, ptr %i.hk, align 4, !tbaa !172
  store float %i.ii, ptr %18, align 4, !tbaa !172
  store float %i.ij, ptr %19, align 4, !tbaa !172
  ret float %i.im
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define internal fastcc noundef float @_ZL27free_energy_evaluate_singleIL18KernelSoftcoreType1EEfffRKN19interaction_const_t18SoftCoreParametersEfPKfffffffffS6_S6_S6_S6_S6_S6_S6_PfS7_S7_(float noundef %0, float noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(36) %2, float noundef %3, ptr nofree noundef readonly captures(none) %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, float noundef %9, float noundef %10, float noundef %11, float noundef %12, ptr nofree noundef nonnull readonly captures(none) %13, ptr nofree noundef nonnull readonly captures(none) %14, ptr nofree noundef nonnull readonly captures(none) %15, ptr nofree noundef nonnull writeonly captures(none) %16, ptr nofree noundef nonnull writeonly captures(none) %17, ptr nofree noundef captures(none) %18) unnamed_addr #11 {
bb.a:
  %.sroa.076 = alloca float, align 4              ; 4 uses
  %.sroa.477 = alloca float, align 4              ; 4 uses
  %.sroa.072 = alloca float, align 4              ; 4 uses
  %.sroa.673 = alloca float, align 4              ; 4 uses
  %.sroa.063 = alloca float, align 4              ; 4 uses
  %.sroa.6 = alloca float, align 4                ; 4 uses
  %.sroa.053 = alloca float, align 4              ; 4 uses
  %.sroa.454 = alloca float, align 4              ; 4 uses
  %.sroa.049 = alloca float, align 4              ; 4 uses
  %.sroa.450 = alloca float, align 4              ; 4 uses
  %.sroa.045 = alloca float, align 4              ; 4 uses
  %.sroa.446 = alloca float, align 4              ; 4 uses
  %.sroa.041 = alloca float, align 4              ; 4 uses
  %.sroa.442 = alloca float, align 4              ; 4 uses
  %.sroa.037 = alloca float, align 4              ; 4 uses
  %.sroa.438 = alloca float, align 4              ; 4 uses
  %.sroa.033 = alloca float, align 4              ; 4 uses
  %.sroa.434 = alloca float, align 4              ; 4 uses
  %.sroa.0 = alloca float, align 4                ; 4 uses
  %.sroa.4 = alloca float, align 4                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.076)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.477)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.072)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.673)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.063)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.053)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.454)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.049)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.450)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.045)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.446)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.041)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.442)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.037)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.438)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.033)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.434)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  store float %6, ptr %.sroa.076, align 4, !tbaa !172
  store float %9, ptr %.sroa.477, align 4, !tbaa !172
  store float %7, ptr %.sroa.072, align 4, !tbaa !172
  store float %10, ptr %.sroa.673, align 4, !tbaa !172
  store float %8, ptr %.sroa.063, align 4, !tbaa !172
  store float %11, ptr %.sroa.6, align 4, !tbaa !172
  %i.a = tail call noundef float @sqrtf(float noundef %0) #18 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.c = load float, ptr %i.b, align 4            ; 2 uses
  %i.d = fcmp ogt float %7, 0.000000e+00
  %i.e = fcmp ogt float %8, 0.000000e+00
  %or.cond26 = and i1 %i.d, %i.e
  %i.f = fmul nnan float %8, 5.000000e-01
  %i.g = fdiv float %i.f, %7
  %storemerge = select i1 %or.cond26, float %i.g, float %i.c
  store float %storemerge, ptr %.sroa.0, align 4, !tbaa !172
  %i.h = fcmp ogt float %10, 0.000000e+00
  %i.i = fcmp ogt float %11, 0.000000e+00
  %or.cond27 = and i1 %i.h, %i.i
  %i.j = fmul nnan float %11, 5.000000e-01
  %i.k = fdiv float %i.j, %10
  %.sink28 = select i1 %or.cond27, float %i.k, float %i.c
  store float %.sink28, ptr %.sroa.4, align 4, !tbaa !172
  %i.l = fmul float %0, %0                        ; 3 uses
  %i.m = fmul float %0, %i.l
  %i.n = fcmp ogt float %8, 0.000000e+00
  %i.o = fcmp ogt float %11, 0.000000e+00
  %or.cond = and i1 %i.n, %i.o                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.q = load float, ptr %i.p, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.s = load float, ptr %i.r, align 4
  %.0295 = select i1 %or.cond, float 0.000000e+00, float %i.s
  %.0294 = select i1 %or.cond, float 0.000000e+00, float %i.q
  %i.t = fdiv float 1.000000e+00, %i.m            ; 4 uses
  %i.u = fcmp une float %12, 0.000000e+00
  %i.v = fmul float %3, %i.a                      ; 2 uses
  %i.w = fptosi float %i.v to i32                 ; 2 uses
  %i.x = sitofp i32 %i.w to float                 ; 2 uses
  %i.y = fsub float %i.v, %i.x                    ; 6 uses
  %i.z = fmul float %i.y, %i.y
  %i.aa = fmul float %5, %i.x
  %i.ab = fptosi float %i.aa to i32
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ac ; 3 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 4
  %i.af = getelementptr i8, ptr %i.ad, i64 8
  %i.ag = mul nsw i32 %i.w, 12
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr [4 x i8], ptr %4, i64 %i.ah ; 6 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 16
  %i.ak = getelementptr i8, ptr %i.ai, i64 20
  %i.al = getelementptr i8, ptr %i.ai, i64 24
  %i.am = getelementptr i8, ptr %i.ai, i64 32
  %i.an = getelementptr i8, ptr %i.ai, i64 36
  %i.ao = getelementptr i8, ptr %i.ai, i64 40
  %i.ap = fmul float %i.t, %i.a
  %i.aq = fmul float %3, %i.ap
  %i.ar = insertelement <2 x float> poison, float %i.y, i64 0
  %i.as = insertelement <2 x float> %i.ar, float %i.z, i64 1 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.p
  %i.at = phi i1 [ true, %bb.a ], [ false, %bb.p ]
  %indvars.iv.sroa.phi = phi ptr [ %.sroa.0, %bb.a ], [ %.sroa.4, %bb.p ]
  %indvars.iv.sroa.phi31 = phi ptr [ %.sroa.033, %bb.a ], [ %.sroa.434, %bb.p ] ; 2 uses
  %indvars.iv.sroa.phi35 = phi ptr [ %.sroa.037, %bb.a ], [ %.sroa.438, %bb.p ] ; 2 uses
  %indvars.iv.sroa.phi39 = phi ptr [ %.sroa.041, %bb.a ], [ %.sroa.442, %bb.p ] ; 3 uses
  %indvars.iv.sroa.phi43 = phi ptr [ %.sroa.045, %bb.a ], [ %.sroa.446, %bb.p ] ; 2 uses
  %indvars.iv.sroa.phi47 = phi ptr [ %.sroa.049, %bb.a ], [ %.sroa.450, %bb.p ] ; 2 uses
  %indvars.iv.sroa.phi51 = phi ptr [ %.sroa.053, %bb.a ], [ %.sroa.454, %bb.p ] ; 3 uses
  %indvars.iv.sroa.phi60 = phi ptr [ %.sroa.063, %bb.a ], [ %.sroa.6, %bb.p ] ; 3 uses
  %indvars.iv.sroa.phi69 = phi ptr [ %.sroa.072, %bb.a ], [ %.sroa.673, %bb.p ] ; 3 uses
  %indvars.iv.sroa.phi74 = phi ptr [ %.sroa.076, %bb.a ], [ %.sroa.477, %bb.p ]
  %indvars.iv = phi i64 [ 0, %bb.a ], [ 1, %bb.p ] ; 5 uses
  store float 0.000000e+00, ptr %indvars.iv.sroa.phi47, align 4, !tbaa !172
  store float 0.000000e+00, ptr %indvars.iv.sroa.phi51, align 4, !tbaa !172
  store float 0.000000e+00, ptr %indvars.iv.sroa.phi43, align 4, !tbaa !172
  store float 0.000000e+00, ptr %indvars.iv.sroa.phi39, align 4, !tbaa !172
  store float 0.000000e+00, ptr %indvars.iv.sroa.phi35, align 4, !tbaa !172
  store float 0.000000e+00, ptr %indvars.iv.sroa.phi31, align 4, !tbaa !172
  %i.au = load float, ptr %indvars.iv.sroa.phi74, align 4, !tbaa !172 ; 5 uses
  %i.av = fcmp une float %i.au, 0.000000e+00
  br i1 %i.av, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aw = load float, ptr %indvars.iv.sroa.phi69, align 4, !tbaa !172
  %i.ax = fcmp une float %i.aw, 0.000000e+00
  br i1 %i.ax, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = load float, ptr %indvars.iv.sroa.phi60, align 4, !tbaa !172
  %i.az = fcmp une float %i.ay, 0.000000e+00
  br i1 %i.az, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  br i1 %i.u, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %indvars.iv
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !172 ; 2 uses
  %i.bc = fcmp olt float %i.bb, 1.000000e+00
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bd = fsub float 1.000000e+00, %i.bb
  %i.be = tail call noundef float @cbrtf(float noundef %i.bd) #21
  %i.bf = tail call noundef float @sqrtf(float noundef %i.be) #18
  %i.bg = fdiv float %i.au, %12
  %i.bh = tail call noundef float @llvm.fabs.f32(float %i.bg)
  %i.bi = fadd float %i.bh, 1.000000e+00
  %i.bj = fmul float %i.bi, %i.bf
  %i.bk = fmul float %.0295, %i.bj
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.0292 = phi float [ %i.bk, %bb.g ], [ 0.000000e+00, %bb.f ], [ 0.000000e+00, %bb.e ] ; 2 uses
  %i.bl = fcmp ogt float %.0292, %1               ; 2 uses
end_hunk_0
