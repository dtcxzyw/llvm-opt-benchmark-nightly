Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pull?download=true
inline.NumInlined: 1836
inline.NumDeleted: 944
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_Z18max_pull_distance2RK17pull_coord_work_tRK5t_pbc:bb.a
  br i1 %i.e, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.i = load double, ptr %i.h, align 8, !tbaa !85
  %i.j = fcmp une double %i.i, 0.000000e+00
  br i1 %i.j, label %._crit_edge59, label %bb.c

._crit_edge59:                                    ; preds = %bb.b
  %i.k = load float, ptr %i.g, align 4, !tbaa !72 ; 2 uses
  %i.l = fmul float %i.k, %i.k
  %gep = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.m = load float, ptr %gep, align 4, !tbaa !72 ; 2 uses
  %i.n = fmul float %i.m, %i.m
  %i.o = fsub float %i.l, %i.n
  %gep.175 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load float, ptr %gep.175, align 4, !tbaa !72 ; 2 uses
  %i.q = fmul float %i.p, %i.p
  %i.r = fsub float %i.o, %i.q                    ; 2 uses
  %i.s = fcmp olt float %i.r, f0x7F7FFFFF
  %.sroa.speculated40 = select i1 %i.s, float %i.r, float f0x7F7FFFFF
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge59
  %.147 = phi float [ %.sroa.speculated40, %._crit_edge59 ], [ f0x7F7FFFFF, %bb.b ] ; 4 uses
  %.not86 = icmp eq i32 %i.d, 1
  br i1 %.not86, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.u = load double, ptr %i.t, align 8, !tbaa !85
  %i.v = fcmp une double %i.u, 0.000000e+00
  br i1 %i.v, label %._crit_edge59.1, label %bb.e

._crit_edge59.1:                                  ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load float, ptr %i.w, align 4, !tbaa !72 ; 2 uses
  %i.y = fmul float %i.x, %i.x
  %gep.1 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.z = load float, ptr %gep.1, align 4, !tbaa !72 ; 2 uses
  %i.aa = fmul float %i.z, %i.z
  %i.ab = fsub float %i.y, %i.aa                  ; 2 uses
  %i.ac = fcmp olt float %i.ab, %.147
  %.sroa.speculated40.1 = select i1 %i.ac, float %i.ab, float %.147
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge59.1, %bb.d
  %.147.1 = phi float [ %.sroa.speculated40.1, %._crit_edge59.1 ], [ %.147, %bb.d ] ; 3 uses
  %i.ad = icmp samesign ugt i32 %i.d, 2
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.af = load double, ptr %i.ae, align 8
  %i.ag = fcmp une double %i.af, 0.000000e+00
  %or.cond = select i1 %i.ad, i1 %i.ag, i1 false
  br i1 %or.cond, label %._crit_edge59.2, label %.loopexit

._crit_edge59.2:                                  ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !72 ; 2 uses
  %i.aj = fmul float %i.ai, %i.ai                 ; 2 uses
  %i.ak = fcmp olt float %i.aj, %.147.1
  %.sroa.speculated40.2 = select i1 %i.ak, float %i.aj, float %.147.1
  br label %.loopexit

bb.f:                                             ; preds = %.preheader48
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = load i32, ptr %i.f, align 4, !tbaa !67
  %.not = icmp eq i32 %i.am, 0
  %i.an = load float, ptr %i.al, align 4          ; 2 uses
  %i.ao = fmul float %i.an, %i.an                 ; 2 uses
  %i.ap = fcmp uge float %i.ao, f0x7F7FFFFF
  %i.aq = select i1 %.not, i1 true, i1 %i.ap
  %.3 = select i1 %i.aq, float f0x7F7FFFFF, float %i.ao ; 4 uses
  %.not85 = icmp eq i32 %i.d, 1
  br i1 %.not85, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !67
  %.not.1 = icmp eq i32 %i.as, 0
  br i1 %.not.1, label %bb.h, label %.lr.ph.preheader.1

.lr.ph.preheader.1:                               ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.au = load i32, ptr %i.f, align 4, !tbaa !67
  %.not35.1 = icmp eq i32 %i.au, 0
  %i.av = load <2 x float>, ptr %i.at, align 4    ; 2 uses
  %i.aw = fmul <2 x float> %i.av, %i.av           ; 2 uses
  %i.ax = extractelement <2 x float> %i.aw, i64 0
  %i.ay = extractelement <2 x float> %i.aw, i64 1 ; 2 uses
  %i.az = fadd float %i.ay, %i.ax
  %.1.1 = select i1 %.not35.1, float %i.ay, float %i.az ; 2 uses
  %i.ba = fcmp olt float %.1.1, %.3
  %.sroa.speculated.1 = select i1 %i.ba, float %.1.1, float %.3
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph.preheader.1, %bb.g
  %.3.1 = phi float [ %.3, %bb.g ], [ %.sroa.speculated.1, %.lr.ph.preheader.1 ] ; 3 uses
  %i.bb = icmp samesign ult i32 %i.d, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.bd = load i32, ptr %i.bc, align 4
  %.not.2 = icmp eq i32 %i.bd, 0
  %or.cond90 = select i1 %i.bb, i1 true, i1 %.not.2
  br i1 %or.cond90, label %.loopexit, label %.lr.ph.preheader.2

.lr.ph.preheader.2:                               ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bf = load float, ptr %i.be, align 4, !tbaa !72 ; 2 uses
  %i.bg = fmul float %i.bf, %i.bf                 ; 2 uses
  %i.bh = load i32, ptr %i.f, align 4, !tbaa !67
  %.not35.2 = icmp eq i32 %i.bh, 0
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !67
  %.not35.2.1 = icmp eq i32 %i.bk, 0
  %i.bl = load <2 x float>, ptr %i.bi, align 4    ; 2 uses
  %i.bm = fmul <2 x float> %i.bl, %i.bl           ; 2 uses
  %i.bn = extractelement <2 x float> %i.bm, i64 0
  %i.bo = fadd float %i.bg, %i.bn
  %.1.2 = select i1 %.not35.2, float %i.bg, float %i.bo ; 2 uses
  %i.bp = extractelement <2 x float> %i.bm, i64 1
  %i.bq = fadd float %.1.2, %i.bp
  %.1.2.1 = select i1 %.not35.2.1, float %.1.2, float %i.bq ; 2 uses
  %i.br = fcmp olt float %.1.2.1, %.3.1
  %.sroa.speculated.2 = select i1 %i.br, float %.1.2.1, float %.3.1
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader48, %bb.f, %.preheader, %bb.c, %bb.h, %.lr.ph.preheader.2, %bb.e, %._crit_edge59.2
  %.4 = phi float [ f0x7F7FFFFF, %.preheader ], [ %.sroa.speculated40.2, %._crit_edge59.2 ], [ f0x7F7FFFFF, %.preheader48 ], [ %.147.1, %bb.e ], [ %.3, %bb.f ], [ %.sroa.speculated.2, %.lr.ph.preheader.2 ], [ %.3.1, %bb.h ], [ %.147, %bb.c ]
  %i.bs = fmul float %.4, 2.500000e-01
  ret float %i.bs
}

; Function Attrs: mustprogress uwtable
define noundef double @_Z20get_pull_coord_valueP6pull_tiRK5t_pbcd(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(384) %2, double noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !88
  %i.d = getelementptr inbounds nuw [488 x i8], ptr %i.c, i64 %i.b
  tail call fastcc void @_ZL23get_pull_coord_distanceRK6pull_tP17pull_coord_work_tRK5t_pbcd(ptr noundef nonnull align 8 dereferenceable(348) %0, ptr noundef %i.d, ptr noundef nonnull align 4 dereferenceable(384) %2, double noundef %3)
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !88
  %i.f = getelementptr inbounds nuw [488 x i8], ptr %i.e, i64 %i.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 376
  %i.h = load double, ptr %i.g, align 8, !tbaa !106
  ret double %i.h
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL23get_pull_coord_distanceRK6pull_tP17pull_coord_work_tRK5t_pbcd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(348) %0, ptr noundef nonnull %1, ptr noundef nonnull align 4 dereferenceable(384) %2, double noundef %3) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x double], align 16            ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !107  ; 4 uses
  %.not = icmp eq i32 %i.c, 8
  br i1 %.not, label %_ZL17get_pull_coord_drRK6pull_tP17pull_coord_work_tRK5t_pbc.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 172
  %i.e = load i32, ptr %i.d, align 4, !tbaa !108
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 6 uses
  switch i32 %i.c, label %bb.d [
    i32 3, label %.thread.thread.i
    i32 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %1, align 8, !tbaa !109
  %i.h = icmp eq i32 %i.g, 5
  br i1 %i.h, label %.thread.thread.i, label %.thread74.i

.thread74.i:                                      ; preds = %bb.c
  %i.i = tail call noundef float @_Z18max_pull_distance2RK17pull_coord_work_tRK5t_pbc(ptr noundef nonnull align 8 dereferenceable(488) %1, ptr noundef nonnull align 4 dereferenceable(384) %2)
  %i.j = fpext float %i.i to double
  br label %.thread.thread.i

bb.d:                                             ; preds = %bb.b
  %i.k = tail call noundef float @_Z18max_pull_distance2RK17pull_coord_work_tRK5t_pbc(ptr noundef nonnull align 8 dereferenceable(488) %1, ptr noundef nonnull align 4 dereferenceable(384) %2)
  %i.l = fpext float %i.k to double               ; 2 uses
  %i.m = icmp eq i32 %i.c, 4
  br i1 %i.m, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.p = load i32, ptr %i.o, align 4, !tbaa !67
  %i.q = sext i32 %i.p to i64
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !111  ; 2 uses
  %i.s = getelementptr inbounds nuw [272 x i8], ptr %i.r, i64 %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.u = load i32, ptr %i.t, align 8, !tbaa !67
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [272 x i8], ptr %i.r, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 200
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 200
  call void @_Z8pbc_dx_dPK5t_pbcPKdS3_Pd(ptr noundef nonnull align 4 dereferenceable(384) %2, ptr noundef nonnull %i.x, ptr noundef nonnull %i.y, ptr noundef nonnull %i.a)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 116
  %7 = load <2 x i32>, ptr %i.z, align 4, !tbaa !67
  %8 = sitofp <2 x i32> %7 to <2 x double>
  %9 = load <2 x double>, ptr %i.a, align 16, !tbaa !85
  %10 = fmul <2 x double> %9, %8                  ; 4 uses
  store <2 x double> %10, ptr %i.a, align 16, !tbaa !85
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 124
  %11 = load i32, ptr %i.aa, align 4, !tbaa !67
  %12 = sitofp i32 %11 to double
  %13 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %14 = load double, ptr %13, align 16, !tbaa !85
  %15 = fmul double %14, %12                      ; 5 uses
  store double %15, ptr %13, align 16, !tbaa !85
  %i.ab = extractelement <2 x double> %10, i64 1  ; 3 uses
  %16 = fmul double %i.ab, %i.ab
  %17 = extractelement <2 x double> %10, i64 0    ; 3 uses
  %i.ac = call double @llvm.fmuladd.f64(double %17, double %17, double %16)
  %i.ad = call noundef double @llvm.fmuladd.f64(double %15, double %15, double %i.ac)
  %sqrt.i.i = call noundef double @llvm.sqrt.f64(double %i.ad) ; 3 uses
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 288
  store double %sqrt.i.i, ptr %18, align 8, !tbaa !112
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.ae = insertelement <2 x double> poison, double %sqrt.i.i, i64 0
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ag = fdiv <2 x double> %10, %i.af            ; 3 uses
  store <2 x double> %i.ag, ptr %19, align 8, !tbaa !85
  %i.ah = fdiv double %15, %sqrt.i.i              ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 280
  store double %i.ah, ptr %i.ai, align 8, !tbaa !85
  %i.aj = load ptr, ptr @debug, align 8, !tbaa !114 ; 2 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = extractelement <2 x double> %i.ag, i64 0
  %i.al = extractelement <2 x double> %i.ag, i64 1
  %i.am = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.aj, ptr noundef nonnull @.str.9, i32 noundef %i.e, double noundef %17, double noundef %i.ab, double noundef %15, double noundef %i.ak, double noundef %i.al, double noundef %i.ah) #20 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %.pre.i = load i32, ptr %i.b, align 8, !tbaa !107
  br label %.thread.i

.thread.thread.i:                                 ; preds = %.thread74.i, %bb.c, %bb.b
  %.073.ph.i = phi double [ -1.000000e+00, %bb.b ], [ -1.000000e+00, %bb.c ], [ %i.j, %.thread74.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !67
  %i.aq = sext i32 %i.ap to i64
  %i.ar = load ptr, ptr %i.an, align 8, !tbaa !111 ; 3 uses
  %i.as = getelementptr inbounds nuw [272 x i8], ptr %i.ar, i64 %i.aq
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.au = load i32, ptr %i.at, align 8, !tbaa !67
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [272 x i8], ptr %i.ar, i64 %i.av
  br label %bb.i

.thread.i:                                        ; preds = %bb.g, %bb.d
  %i.ax = phi i32 [ %i.c, %bb.d ], [ %.pre.i, %bb.g ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !67
  %i.bb = sext i32 %i.ba to i64
  %i.bc = load ptr, ptr %i.ay, align 8, !tbaa !111 ; 4 uses
  %i.bd = getelementptr inbounds nuw [272 x i8], ptr %i.bc, i64 %i.bb
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !67
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [272 x i8], ptr %i.bc, i64 %i.bg ; 2 uses
  %i.bi = icmp eq i32 %i.ax, 2
  br i1 %i.bi, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread.i
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !115
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.thread.i, %.thread.thread.i
  %.pn83.i = phi ptr [ %i.bh, %bb.h ], [ %i.bh, %.thread.i ], [ %i.aw, %.thread.thread.i ]
  %i.bl = phi ptr [ %i.bc, %bb.h ], [ %i.bc, %.thread.i ], [ %i.ar, %.thread.thread.i ]
  %i.bm = phi ptr [ %i.ay, %bb.h ], [ %i.ay, %.thread.i ], [ %i.an, %.thread.thread.i ] ; 2 uses
  %.07382.i = phi double [ %i.l, %bb.h ], [ %i.l, %.thread.i ], [ %.073.ph.i, %.thread.thread.i ] ; 3 uses
  %.pn.i = phi ptr [ %i.bk, %bb.h ], [ %i.bd, %.thread.i ], [ %i.as, %.thread.thread.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.pn83.i, i64 200
  %i.bo = getelementptr inbounds nuw i8, ptr %.pn.i, i64 200
  call fastcc void @_ZL21low_get_pull_coord_drRK6pull_tRK17pull_coord_work_tRK5t_pbcPKdS9_iidPd(ptr %i.bl, ptr noundef nonnull align 8 dereferenceable(488) %1, ptr noundef nonnull align 4 dereferenceable(384) %2, ptr noundef nonnull %i.bn, ptr noundef nonnull %i.bo, i32 noundef 0, i32 noundef 1, double noundef %.07382.i, ptr noundef %i.f)
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !116
  %i.br = icmp sgt i32 %i.bq, 3
  br i1 %i.br, label %bb.j, label %_ZL17get_pull_coord_drRK6pull_tP17pull_coord_work_tRK5t_pbc.exit

bb.j:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !67
  %i.bu = sext i32 %i.bt to i64
  %i.bv = load ptr, ptr %i.bm, align 8, !tbaa !111 ; 3 uses
  %i.bw = getelementptr inbounds nuw [272 x i8], ptr %i.bv, i64 %i.bu
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !67
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [272 x i8], ptr %i.bv, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 200
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 200
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 216
  call fastcc void @_ZL21low_get_pull_coord_drRK6pull_tRK17pull_coord_work_tRK5t_pbcPKdS9_iidPd(ptr %i.bv, ptr noundef nonnull align 8 dereferenceable(488) %1, ptr noundef nonnull align 4 dereferenceable(384) %2, ptr noundef nonnull %i.cb, ptr noundef nonnull %i.cc, i32 noundef 2, i32 noundef 3, double noundef %.07382.i, ptr noundef %i.cd)
  %.pr.i = load i32, ptr %i.bp, align 8, !tbaa !116
  %i.ce = icmp sgt i32 %.pr.i, 5
  br i1 %i.ce, label %bb.k, label %_ZL17get_pull_coord_drRK6pull_tP17pull_coord_work_tRK5t_pbc.exit

bb.k:                                             ; preds = %bb.j
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !67
  %i.ch = sext i32 %i.cg to i64
  %i.ci = load ptr, ptr %i.bm, align 8, !tbaa !111 ; 3 uses
  %i.cj = getelementptr inbounds nuw [272 x i8], ptr %i.ci, i64 %i.ch
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !67
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [272 x i8], ptr %i.ci, i64 %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 200
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 200
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 240
  call fastcc void @_ZL21low_get_pull_coord_drRK6pull_tRK17pull_coord_work_tRK5t_pbcPKdS9_iidPd(ptr %i.ci, ptr noundef nonnull align 8 dereferenceable(488) %1, ptr noundef nonnull align 4 dereferenceable(384) %2, ptr noundef nonnull %i.co, ptr noundef nonnull %i.cp, i32 noundef 4, i32 noundef 5, double noundef %.07382.i, ptr noundef %i.cq)
  br label %_ZL17get_pull_coord_drRK6pull_tP17pull_coord_work_tRK5t_pbc.exit

_ZL17get_pull_coord_drRK6pull_tP17pull_coord_work_tRK5t_pbc.exit: ; preds = %bb.k, %bb.j, %bb.i
  %.pr = load i32, ptr %i.b, align 8, !tbaa !107
  switch i32 %.pr, label %bb.p [
    i32 0, label %bb.l
    i32 1, label %.loopexit.loopexit
    i32 3, label %.loopexit.loopexit
    i32 4, label %.loopexit.loopexit
    i32 2, label %.loopexit.loopexit
    i32 5, label %bb.m
    i32 6, label %bb.n
    i32 7, label %bb.o
    i32 8, label %_ZL17get_pull_coord_drRK6pull_tP17pull_coord_work_tRK5t_pbc.exit.thread
  ]

bb.l:                                             ; preds = %_ZL17get_pull_coord_drRK6pull_tP17pull_coord_work_tRK5t_pbc.exit
  %i.cr = load double, ptr %i.f, align 8, !tbaa !85 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !85 ; 2 uses
  %i.cu = fmul double %i.ct, %i.ct
  %i.cv = call double @llvm.fmuladd.f64(double %i.cr, double %i.cr, double %i.cu)
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !85 ; 2 uses
  %i.cy = call noundef double @llvm.fmuladd.f64(double %i.cx, double %i.cx, double %i.cv)
  %sqrt.i = call noundef double @llvm.sqrt.f64(double %i.cy)
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 376
  store double %sqrt.i, ptr %i.cz, align 8, !tbaa !117
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %_ZL17get_pull_coord_drRK6pull_tP17pull_coord_work_tRK5t_pbc.exit, %_ZL17get_pull_coord_drRK6pull_tP17pull_coord_work_tRK5t_pbc.exit, %_ZL17get_pull_coord_drRK6pull_tP17pull_coord_work_tRK5t_pbc.exit, %_ZL17get_pull_coord_drRK6pull_tP17pull_coord_work_tRK5t_pbc.exit
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.dc = load double, ptr %i.db, align 8, !tbaa !85
  %i.dd = load double, ptr %i.f, align 8, !tbaa !85
  %i.de = call double @llvm.fmuladd.f64(double %i.dc, double %i.dd, double 0.000000e+00)
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.dg = load double, ptr %i.df, align 8, !tbaa !85
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.di = load double, ptr %i.dh, align 8, !tbaa !85
  %i.dj = call double @llvm.fmuladd.f64(double %i.dg, double %i.di, double %i.de)
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !85
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !85
  %i.do = call double @llvm.fmuladd.f64(double %i.dl, double %i.dn, double %i.dj)
  store double %i.do, ptr %i.da, align 8, !tbaa !117
  br label %.loopexit

bb.m:                                             ; preds = %_ZL17get_pull_coord_drRK6pull_tP17pull_coord_work_tRK5t_pbc.exit
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !85 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !85 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.dv = load double, ptr %i.du, align 8, !tbaa !85 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !85 ; 3 uses
  %i.dy = fneg double %i.dx
  %i.dz = fmul double %i.dv, %i.dy
  %i.ea = call double @llvm.fmuladd.f64(double %i.dr, double %i.dt, double %i.dz) ; 2 uses
  %i.eb = load double, ptr %i.dp, align 8, !tbaa !85 ; 3 uses
  %i.ec = load double, ptr %i.f, align 8, !tbaa !85 ; 3 uses
  %i.ed = fneg double %i.dt
  %i.ee = fmul double %i.ec, %i.ed
  %i.ef = call double @llvm.fmuladd.f64(double %i.dv, double %i.eb, double %i.ee) ; 2 uses
  %i.eg = fneg double %i.eb
  %i.eh = fmul double %i.dr, %i.eg
  %i.ei = call double @llvm.fmuladd.f64(double %i.ec, double %i.dx, double %i.eh) ; 2 uses
  %i.ej = fmul double %i.ef, %i.ef
  %i.ek = call double @llvm.fmuladd.f64(double %i.ea, double %i.ea, double %i.ej)
  %i.el = call noundef double @llvm.fmuladd.f64(double %i.ei, double %i.ei, double %i.ek)
  %sqrt.i.i35 = call noundef double @llvm.sqrt.f64(double %i.el)
  %i.em = fmul double %i.dr, %i.dx
  %i.en = call double @llvm.fmuladd.f64(double %i.ec, double %i.eb, double %i.em)
  %i.eo = call noundef double @llvm.fmuladd.f64(double %i.dv, double %i.dt, double %i.en)
  %i.ep = call noundef double @atan2(double noundef %sqrt.i.i35, double noundef %i.eo) #20
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 376
  store double %i.ep, ptr %i.eq, align 8, !tbaa !117
  br label %.loopexit

bb.n:                                             ; preds = %_ZL17get_pull_coord_drRK6pull_tP17pull_coord_work_tRK5t_pbc.exit
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.es = load double, ptr %i.er, align 8, !tbaa !85 ; 3 uses
  %i.et = fneg double %i.es                       ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !85 ; 3 uses
  %i.ew = fneg double %i.ev                       ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !85 ; 3 uses
  %i.ez = fneg double %i.ey                       ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !85 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !85 ; 3 uses
  %i.ff = fmul double %i.ev, %i.fe
  %i.fg = call double @llvm.fmuladd.f64(double %i.fc, double %i.ez, double %i.ff) ; 4 uses
  store double %i.fg, ptr %i.fa, align 8, !tbaa !85
  %i.fh = load double, ptr %i.f, align 8, !tbaa !85 ; 3 uses
  %i.fi = fmul double %i.ey, %i.fh
  %i.fj = call double @llvm.fmuladd.f64(double %i.fe, double %i.et, double %i.fi) ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 336
  store double %i.fj, ptr %i.fk, align 8, !tbaa !85
  %i.fl = fmul double %i.es, %i.fc
  %i.fm = call double @llvm.fmuladd.f64(double %i.fh, double %i.ew, double %i.fl) ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 344
  store double %i.fm, ptr %i.fn, align 8, !tbaa !85
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !85 ; 2 uses
end_hunk_0
