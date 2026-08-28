Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_progress_bar?download=true
inline.NumInlined: 1084
inline.NumDeleted: 380
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN6duckdb11ProgressBarC2ERNS_8ExecutorEmSt8functionIFNS_10unique_ptrINS_18ProgressBarDisplayESt14default_deleteIS5_ELb1EEEvEE:bb.a

_ZNKSt14default_deleteIN6duckdb18ProgressBarDisplayEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_18ProgressBarDisplayESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.p = load ptr, ptr %.pr, align 8, !tbaa !52
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.pr) #22, !inline_history !95
  br label %_ZNSt10unique_ptrIN6duckdb18ProgressBarDisplayESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18ProgressBarDisplayESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt8functionIFN6duckdb10unique_ptrINS0_18ProgressBarDisplayESt14default_deleteIS2_ELb1EEEvEEclEv.exit, %_ZN6duckdb10unique_ptrINS_18ProgressBarDisplayESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb18ProgressBarDisplayEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !93   ; 3 uses
  %.not.i6 = icmp eq ptr %i.t, null
  br i1 %.not.i6, label %_ZNSt10unique_ptrIN6duckdb18ProgressBarDisplayESt14default_deleteIS1_EED2Ev.exit8, label %_ZNKSt14default_deleteIN6duckdb18ProgressBarDisplayEEclEPS1_.exit.i7

_ZNKSt14default_deleteIN6duckdb18ProgressBarDisplayEEclEPS1_.exit.i7: ; preds = %bb.c
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !52
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.t) #22, !inline_history !95
  br label %_ZNSt10unique_ptrIN6duckdb18ProgressBarDisplayESt14default_deleteIS1_EED2Ev.exit8

_ZNSt10unique_ptrIN6duckdb18ProgressBarDisplayESt14default_deleteIS1_EED2Ev.exit8: ; preds = %bb.c, %_ZNKSt14default_deleteIN6duckdb18ProgressBarDisplayEEclEPS1_.exit.i7
  resume { ptr, i32 } %i.s

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb18ProgressBarDisplayESt14default_deleteIS1_EED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11ProgressBar24GetDetailedQueryProgressEv(ptr dead_on_unwind noalias writable sret(%"struct.duckdb::QueryProgress") align 8 %0, ptr noundef nonnull align 8 dereferenceable(74) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @_ZN6duckdb13QueryProgressC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6duckdb11ProgressBar5StartEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(74) initializes((8, 16), (24, 26)) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.b, align 8, !tbaa !96
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 1, ptr %i.c, align 1, !tbaa !97
  %i.d = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #22
  store i64 %i.d, ptr %i.a, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store atomic double -1.000000e+00, ptr %i.e seq_cst, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store atomic i64 0, ptr %i.f seq_cst, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store atomic i64 0, ptr %i.g seq_cst, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 1, ptr %i.h, align 8, !tbaa !85
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK6duckdb11ProgressBar12PrintEnabledEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(74) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93
  %i.c = icmp ne ptr %i.b, null
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZNK6duckdb11ProgressBar11ShouldPrintEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(74) %0, i1 noundef zeroext %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93
  %i.c = icmp ne ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load i8, ptr %i.d, align 8, !range !98
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %_ZNK6duckdb12BaseProfilerINSt6chrono3_V212steady_clockEE7ElapsedEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.i = load i8, ptr %i.h, align 1, !tbaa !97, !range !98, !noundef !99
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %_ZNK6duckdb12BaseProfilerINSt6chrono3_V212steady_clockEE7ElapsedEv.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i8, ptr %i.k, align 8, !tbaa !96, !range !98, !noundef !99
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !63
  br label %_ZNK6duckdb12BaseProfilerINSt6chrono3_V212steady_clockEE7ElapsedEv.exit

bb.e:                                             ; preds = %bb.c
  %i.p = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #22
  br label %_ZNK6duckdb12BaseProfilerINSt6chrono3_V212steady_clockEE7ElapsedEv.exit

_ZNK6duckdb12BaseProfilerINSt6chrono3_V212steady_clockEE7ElapsedEv.exit: ; preds = %bb.d, %bb.e
  %storemerge.i = phi i64 [ %i.o, %bb.d ], [ %i.p, %bb.e ]
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.g, align 8, !tbaa !63
  %i.q = sub nsw i64 %storemerge.i, %.sroa.0.0.copyload.i2.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load i64, ptr %i.r, align 8, !tbaa !69
  %i.t = uitofp i64 %i.s to double
  %i.u = sitofp i64 %i.q to double
  %i.v = insertelement <2 x double> poison, double %i.u, i64 0
  %i.w = insertelement <2 x double> %i.v, double %i.t, i64 1
  %i.x = fdiv <2 x double> %i.w, <double 1.000000e+09, double 1.000000e+03> ; 2 uses
  %i.y = extractelement <2 x double> %i.x, i64 0
  %i.z = extractelement <2 x double> %i.x, i64 1
  %i.aa = fcmp ule double %i.y, %i.z              ; 2 uses
  %brmerge = or i1 %1, %i.aa
  %not. = xor i1 %i.aa, true
  br i1 %brmerge, label %_ZNK6duckdb12BaseProfilerINSt6chrono3_V212steady_clockEE7ElapsedEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb12BaseProfilerINSt6chrono3_V212steady_clockEE7ElapsedEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load atomic double, ptr %i.ab seq_cst, align 8
  %i.ad = fcmp ogt double %i.ac, -1.000000e+00
  br label %_ZNK6duckdb12BaseProfilerINSt6chrono3_V212steady_clockEE7ElapsedEv.exit.thread

_ZNK6duckdb12BaseProfilerINSt6chrono3_V212steady_clockEE7ElapsedEv.exit.thread: ; preds = %bb.b, %_ZNK6duckdb12BaseProfilerINSt6chrono3_V212steady_clockEE7ElapsedEv.exit, %bb.f, %bb.a
  %.1 = phi i1 [ %i.ad, %bb.f ], [ false, %bb.a ], [ %not., %_ZNK6duckdb12BaseProfilerINSt6chrono3_V212steady_clockEE7ElapsedEv.exit ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11ProgressBar6UpdateEb(ptr noundef nonnull align 8 dereferenceable(74) %0, i1 noundef zeroext %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"struct.duckdb::ProgressData", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !98
  %i.c = trunc nuw i8 %i.b to i1
  %or.cond = select i1 %1, i1 true, i1 %i.c
  br i1 %or.cond, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %2, i8 0, i64 17, i1 false)
  %i.d = load ptr, ptr %0, align 8, !tbaa !100, !nonnull !99, !align !101
  %i.e = call noundef i64 @_ZN6duckdb8Executor20GetPipelinesProgressERNS_12ProgressDataE(ptr noundef nonnull align 8 dereferenceable(424) %i.d, ptr noundef nonnull align 8 dereferenceable(17) %2)
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load i8, ptr %i.g, align 8, !tbaa !102, !range !98, !noundef !99
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load double, ptr %2, align 8, !tbaa !104 ; 4 uses
  %i.k = fcmp ult double %i.j, 0.000000e+00
  br i1 %i.k, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !105 ; 5 uses
  %i.n = fcmp ole double %i.j, %i.m
  %i.o = fcmp oge double %i.m, 0.000000e+00
  %or.cond17 = and i1 %i.n, %i.o
  br i1 %or.cond17, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.p = fcmp ogt double %i.m, 1.000000e+15
  br i1 %i.p, label %bb.g, label %_ZN6duckdb12ProgressData9NormalizeEd.exit

bb.g:                                             ; preds = %bb.f
  %i.q = fdiv double %i.j, %i.m
  %i.r = fmul double %i.q, 1.000000e+15           ; 2 uses
  store double %i.r, ptr %2, align 8, !tbaa !104
  store double 1.000000e+15, ptr %i.l, align 8, !tbaa !105
  br label %_ZN6duckdb12ProgressData9NormalizeEd.exit

_ZN6duckdb12ProgressData9NormalizeEd.exit:        ; preds = %bb.g, %bb.f
  %i.s = phi double [ %i.m, %bb.f ], [ 1.000000e+15, %bb.g ] ; 2 uses
  %i.t = phi double [ %i.j, %bb.f ], [ %i.r, %bb.g ] ; 2 uses
  %i.u = fptoui double %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  store atomic i64 %i.u, ptr %i.v seq_cst, align 8
  %i.w = fptoui double %i.s to i64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  store atomic i64 %i.w, ptr %i.x seq_cst, align 8
  %i.y = fdiv double %i.t, %i.s
  %i.z = fmul double %i.y, 1.000000e+02
  br label %.thread

bb.h:                                             ; preds = %bb.b
  br i1 %1, label %.thread, label %_ZN6duckdb11ProgressBar22FinishProgressBarPrintEv.exit

.thread:                                          ; preds = %bb.c, %bb.d, %bb.e, %_ZN6duckdb12ProgressData9NormalizeEd.exit, %bb.h
  %.015 = phi double [ 0.000000e+00, %bb.h ], [ %i.z, %_ZN6duckdb12ProgressData9NormalizeEd.exit ], [ 0.000000e+00, %bb.e ], [ 0.000000e+00, %bb.d ], [ 0.000000e+00, %bb.c ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.ab = load atomic double, ptr %i.aa seq_cst, align 8
  %i.ac = fcmp ogt double %.015, %i.ab
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread
  store atomic double %.015, ptr %i.aa seq_cst, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !93
  %i.af = icmp ne ptr %i.ae, null
  %i.ag = load i8, ptr %i.a, align 8, !range !98
  %i.ah = trunc nuw i8 %i.ag to i1
  %or.cond.i12 = select i1 %i.af, i1 %i.ah, i1 false
  br i1 %or.cond.i12, label %bb.k, label %_ZN6duckdb11ProgressBar22FinishProgressBarPrintEv.exit

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !97, !range !98, !noundef !99
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.l, label %_ZN6duckdb11ProgressBar22FinishProgressBarPrintEv.exit

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.an = load i8, ptr %i.am, align 8, !tbaa !96, !range !98, !noundef !99
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !63
  br label %_ZNK6duckdb12BaseProfilerINSt6chrono3_V212steady_clockEE7ElapsedEv.exit.i

bb.n:                                             ; preds = %bb.l
  %i.ar = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #22
  br label %_ZNK6duckdb12BaseProfilerINSt6chrono3_V212steady_clockEE7ElapsedEv.exit.i

_ZNK6duckdb12BaseProfilerINSt6chrono3_V212steady_clockEE7ElapsedEv.exit.i: ; preds = %bb.n, %bb.m
  %storemerge.i.i = phi i64 [ %i.aq, %bb.m ], [ %i.ar, %bb.n ]
  %.sroa.0.0.copyload.i2.i.i.i = load i64, ptr %i.ai, align 8, !tbaa !63
  %i.as = sub nsw i64 %storemerge.i.i, %.sroa.0.0.copyload.i2.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load i64, ptr %i.at, align 8, !tbaa !69
  %i.av = uitofp i64 %i.au to double
  %i.aw = sitofp i64 %i.as to double
  %i.ax = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.ay = insertelement <2 x double> %i.ax, double %i.av, i64 1
  %i.az = fdiv <2 x double> %i.ay, <double 1.000000e+09, double 1.000000e+03> ; 2 uses
  %i.ba = extractelement <2 x double> %i.az, i64 0
  %i.bb = extractelement <2 x double> %i.az, i64 1
  %i.bc = fcmp ule double %i.ba, %i.bb            ; 2 uses
  %brmerge.i = or i1 %1, %i.bc
  br i1 %brmerge.i, label %_ZNK6duckdb11ProgressBar11ShouldPrintEb.exit, label %.split

.split:                                           ; preds = %_ZNK6duckdb12BaseProfilerINSt6chrono3_V212steady_clockEE7ElapsedEv.exit.i
  %i.bd = load atomic double, ptr %i.aa seq_cst, align 8
  %i.be = fcmp ogt double %i.bd, -1.000000e+00
  br i1 %i.be, label %bb.o, label %_ZN6duckdb11ProgressBar22FinishProgressBarPrintEv.exit

_ZNK6duckdb11ProgressBar11ShouldPrintEb.exit:     ; preds = %_ZNK6duckdb12BaseProfilerINSt6chrono3_V212steady_clockEE7ElapsedEv.exit.i
  br i1 %i.bc, label %_ZN6duckdb11ProgressBar22FinishProgressBarPrintEv.exit, label %bb.o

bb.o:                                             ; preds = %.split, %_ZNK6duckdb11ProgressBar11ShouldPrintEb.exit
  br i1 %1, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !86, !range !98, !noundef !99
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %_ZN6duckdb11ProgressBar22FinishProgressBarPrintEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bi = call noundef ptr @_ZNK6duckdb10unique_ptrINS_18ProgressBarDisplayESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad) ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !52
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %i.bi), !inline_history !106
  store i8 1, ptr %i.bf, align 1, !tbaa !86
  %i.bm = load atomic double, ptr %i.aa seq_cst, align 8
  %i.bn = fcmp oeq double %i.bm, 0.000000e+00
  br i1 %i.bn, label %bb.r, label %_ZN6duckdb11ProgressBar22FinishProgressBarPrintEv.exit

bb.r:                                             ; preds = %bb.q
  store atomic double -1.000000e+00, ptr %i.aa seq_cst, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 48
  store atomic i64 0, ptr %i.bo seq_cst, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56
  store atomic i64 0, ptr %i.bp seq_cst, align 8
  br label %_ZN6duckdb11ProgressBar22FinishProgressBarPrintEv.exit

bb.s:                                             ; preds = %bb.o
  %i.bq = load atomic double, ptr %i.aa seq_cst, align 8
  %i.br = call noundef ptr @_ZNK6duckdb10unique_ptrINS_18ProgressBarDisplayESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad) ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !52
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(8) %i.br, double noundef %i.bq), !inline_history !107
  br label %_ZN6duckdb11ProgressBar22FinishProgressBarPrintEv.exit

_ZN6duckdb11ProgressBar22FinishProgressBarPrintEv.exit: ; preds = %bb.k, %bb.j, %bb.r, %bb.q, %bb.p, %.split, %_ZNK6duckdb11ProgressBar11ShouldPrintEb.exit, %bb.s, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.t

bb.t:                                             ; preds = %bb.a, %_ZN6duckdb11ProgressBar22FinishProgressBarPrintEv.exit
  ret void
}

declare noundef i64 @_ZN6duckdb8Executor20GetPipelinesProgressERNS_12ProgressDataE(ptr noundef nonnull align 8 dereferenceable(424), ptr noundef nonnull align 8 dereferenceable(17)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11ProgressBar22FinishProgressBarPrintEv(ptr noundef nonnull align 8 dereferenceable(74) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !86, !range !98, !noundef !99
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_18ProgressBarDisplayESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  store i8 1, ptr %i.a, align 1, !tbaa !86
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = load atomic double, ptr %i.i seq_cst, align 8
  %i.k = fcmp oeq double %i.j, 0.000000e+00
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store atomic double -1.000000e+00, ptr %i.i seq_cst, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store atomic i64 0, ptr %i.l seq_cst, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  store atomic i64 0, ptr %i.m seq_cst, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11ProgressBar13PrintProgressEd(ptr noundef nonnull align 8 dereferenceable(74) %0, double noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_18ProgressBarDisplayESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, double noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_18ProgressBarDisplayESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !93     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_18ProgressBarDisplayESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !108

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.30, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !39     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_18ProgressBarDisplayESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_ZN6duckdb26TerminalProgressBarDisplay19NormalizePercentageEd(double noundef %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = fcmp ogt double %0, 1.000000e+02
  %.inv = fcmp ole double %0, 0.000000e+00
  %spec.select4 = select i1 %.inv, double 0.000000e+00, double %0
  %spec.select = fptosi double %spec.select4 to i32
  %.0 = select i1 %i.a, i32 100, i32 %spec.select
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb26TerminalProgressBarDisplay9FormatETAB5cxx11Edb(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, double noundef %1, i1 noundef zeroext %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.122", align 8   ; 9 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::vector.122", align 8   ; 9 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator", align 1   ; 4 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator", align 1   ; 4 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.h = fcmp olt double %1, 0.000000e+00
  %i.i = fcmp oeq double %1, f0x41DFFFFFFFC00000
  %or.cond = or i1 %i.h, %i.i
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.j, ptr %0, align 8, !tbaa !109
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 26, i8 noundef signext 32)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = fcmp ule double %1, 3.564000e+05
  %or.cond3.not = or i1 %i.k, %2
  br i1 %or.cond3.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %0, align 8, !tbaa !109
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 26, i8 noundef signext 32)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.m = fmul double %1, 1.000000e+02
  %i.n = tail call i64 @llround(double noundef %i.m) #22, !tbaa !3 ; 4 uses
  %i.o = udiv i64 %i.n, 100                       ; 2 uses
  %i.p = urem i64 %i.n, 100
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = udiv i64 %i.n, 360000                    ; 2 uses
  %i.s = urem i64 %i.o, 3600                      ; 2 uses
  %.lhs.trunc = trunc nuw nsw i64 %i.s to i16
  %i.t = udiv i16 %.lhs.trunc, 60                 ; 2 uses
  %i.u = zext nneg i16 %i.t to i32                ; 2 uses
  %i.v = urem i64 %i.o, 60                        ; 3 uses
  %i.w = trunc nuw nsw i64 %i.v to i32            ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !109
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  store i64 0, ptr %i.y, align 8, !tbaa !110
  store i8 0, ptr %i.x, align 8, !tbaa !111
  %i.z = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.1, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.i ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.e
  br i1 %2, label %.noexc.i135, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.aa = icmp ult i64 %i.n, 360000               ; 2 uses
  %i.ab = icmp samesign ult i64 %i.s, 60
  %or.cond5 = select i1 %i.aa, i1 %i.ab, i1 false ; 2 uses
  %i.ac = icmp eq i64 %i.v, 0
  %or.cond7 = select i1 %or.cond5, i1 %i.ac, i1 false
  br i1 %or.cond7, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.ad, ptr %6, align 8, !tbaa !109
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ad, ptr noundef nonnull align 1 dereferenceable(9) @.str.2, i64 9, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 9, ptr %i.ae, align 8, !tbaa !110
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 25
  store i8 0, ptr %i.af, align 1, !tbaa !111
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.ag, ptr %5, align 8, !tbaa !109, !alias.scope !112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ag, ptr noundef nonnull align 1 dereferenceable(9) @.str.2, i64 9, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 9, ptr %i.ah, align 8, !tbaa !110, !alias.scope !112
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 25
  store i8 0, ptr %i.ai, align 1, !tbaa !111
  %i.aj = load i64, ptr %i.y, align 8, !tbaa !110
  %i.ak = add i64 %i.aj, -4611686018427387895
  %i.al = icmp ult i64 %i.ak, 9
  br i1 %i.al, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #23
          to label %.noexc77 unwind label %bb.j

.noexc77:                                         ; preds = %bb.h
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.g
  %i.am = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.ag, i64 noundef 9)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.j ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.an = load ptr, ptr %5, align 8, !tbaa !39    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.ag
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  call void @_ZdlPv(ptr noundef %i.an) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ap = load ptr, ptr %6, align 8, !tbaa !39    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.ad
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.ap) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.ag

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i161.invoke, %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i171, %bb.e
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.h
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %5, align 8, !tbaa !39    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.ag
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.at) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
  %i.av = load ptr, ptr %6, align 8, !tbaa !39    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.ad
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84
  call void @_ZdlPv(ptr noundef %i.av) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.as

bb.k:                                             ; preds = %bb.f
  br i1 %or.cond5, label %._crit_edge.i.i88, label %bb.r

._crit_edge.i.i88:                                ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.ax, ptr %8, align 8, !tbaa !109
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ax, ptr noundef nonnull align 1 dereferenceable(12) @.str.3, i64 12, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 12, ptr %i.ay, align 8, !tbaa !110
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 28
  store i8 0, ptr %i.az, align 4, !tbaa !111
  %i.ba = icmp samesign ugt i64 %i.v, 1
  %i.bb = select i1 %i.ba, ptr @.str.4, ptr @.str.5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i32 %i.w, ptr %i.f, align 4, !tbaa !3, !noalias !117
  store ptr %i.bb, ptr %i.g, align 8, !tbaa !120, !noalias !117
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22, !noalias !121
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !noalias !121
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveIjJRKPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSB_RSt6vectorINS_20ExceptionFormatValueESaISF_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %._crit_edge.i.i88
  %i.bc = load ptr, ptr %4, align 8, !tbaa !43, !noalias !121 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !46, !noalias !121 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.bc, %i.be
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.l, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.bj, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i ], [ %i.bc, %bb.l ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !39 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48
end_hunk_0
begin_hunk_1_@_ZN6duckdb26TerminalProgressBarDisplay21PrintProgressInternalEidb:bb.a
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !110 ; 2 uses
  %i.cz = load i64, ptr %i.b, align 8, !tbaa !110
  %i.da = sub i64 4611686018427387903, %i.cz
  %i.db = icmp ult i64 %i.da, %i.cy
  br i1 %i.db, label %bb.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i48

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #23
          to label %.noexc49 unwind label %bb.ac

.noexc49:                                         ; preds = %bb.v
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i48: ; preds = %bb.u
  %i.dc = load ptr, ptr %8, align 8, !tbaa !39
  %i.dd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.dc, i64 noundef %i.cy)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit51 unwind label %bb.ac ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i48
  %i.de = load ptr, ptr %8, align 8, !tbaa !39    ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit51
  call void @_ZdlPv(ptr noundef %i.de) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  invoke void @_ZN6duckdb7Printer8RawPrintENS_12OutputStreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i8 noundef zeroext 1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.w unwind label %bb.c

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  %i.dh = load ptr, ptr %4, align 8, !tbaa !39    ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.a
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.w
  call void @_ZdlPv(ptr noundef %i.dh) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i24, %bb.o
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.r
  %i.dk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dl = load ptr, ptr %5, align 8, !tbaa !39    ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.bk
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.y
  call void @_ZdlPv(ptr noundef %i.dl) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58, %bb.x
  %.pn = phi { ptr, i32 } [ %i.dj, %bb.x ], [ %i.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58 ], [ %i.dk, %bb.y ]
  %i.dn = load ptr, ptr %6, align 8, !tbaa !39    ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.z
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60
  call void @_ZdlPv(ptr noundef %i.dn) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.ad

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit36
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i37, %bb.t
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dr = load ptr, ptr %7, align 8, !tbaa !39    ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %bb.aa
  call void @_ZdlPv(ptr noundef %i.dr) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64, %bb.z
  %.pn13 = phi { ptr, i32 } [ %i.dp, %bb.z ], [ %i.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64 ], [ %i.dq, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.ad

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit47
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i48, %bb.v
  %i.dv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dw = load ptr, ptr %8, align 8, !tbaa !39    ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.ac
  call void @_ZdlPv(ptr noundef %i.dw) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67, %bb.ab
  %.pn15 = phi { ptr, i32 } [ %i.du, %bb.ab ], [ %i.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ], [ %i.dv, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %bb.c
  %.pn17 = phi { ptr, i32 } [ %i.h, %bb.c ], [ %.pn15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ], [ %.pn13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ]
  %i.dz = load ptr, ptr %4, align 8, !tbaa !39    ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.a
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %bb.ad
  call void @_ZdlPv(ptr noundef %i.dz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %.pn17
}

declare void @_ZN6duckdb7Printer8RawPrintENS_12OutputStreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i8 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb26TerminalProgressBarDisplay6UpdateEd(ptr noundef nonnull align 8 dereferenceable(272) %0, double noundef %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"struct.duckdb::TerminalProgressBarDisplayedProgressInfo", align 8 ; 6 uses
  %i.a = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.b, align 8, !tbaa !63
  %i.c = sub nsw i64 %i.a, %.sroa.0.0.copyload.i2.i.i
  %i.d = sitofp i64 %i.c to double
  %i.e = insertelement <2 x double> poison, double %i.d, i64 0
  %i.f = insertelement <2 x double> %i.e, double %1, i64 1
  %i.g = fdiv <2 x double> %i.f, <double 1.000000e+09, double 1.000000e+02> ; 2 uses
  %i.h = extractelement <2 x double> %i.g, i64 0  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !146
  %i.l = extractelement <2 x double> %i.g, i64 1  ; 2 uses
  %i.m = fmul double %i.l, %i.k                   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !160, !range !98, !noundef !99
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = fcmp oeq double %i.m, 0.000000e+00
  %i.r = fcmp oeq double %i.h, 0.000000e+00
  %or.cond.i.i = or i1 %i.q, %i.r
  br i1 %or.cond.i.i, label %_ZN6duckdb21UnscentedKalmanFilter6UpdateEdd.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = fdiv double 1.000000e-01, %i.m           ; 2 uses
  %i.t = fcmp ogt double %i.s, 1.000000e+00
  %.sroa.speculated.i.i = select i1 %i.t, double %i.s, double 1.000000e+00 ; 2 uses
  store double %.sroa.speculated.i.i, ptr %i.j, align 8, !tbaa !146
  %i.u = fmul double %i.m, %.sroa.speculated.i.i  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 noundef 0)
  store double %i.u, ptr %i.w, align 8, !tbaa !161
  %i.x = fdiv double %i.u, %i.h
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 noundef 1)
  store double %i.x, ptr %i.y, align 8, !tbaa !161
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 216
  store double %i.h, ptr %i.z, align 8, !tbaa !162
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 232
  store double %i.u, ptr %i.aa, align 8, !tbaa !163
  store i8 1, ptr %i.n, align 8, !tbaa !160
  br label %_ZN6duckdb21UnscentedKalmanFilter6UpdateEdd.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb21UnscentedKalmanFilter7PredictEd(ptr noundef nonnull align 8 dereferenceable(184) %i.i, double noundef %i.h)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !163
  %i.ad = fcmp une double %i.ac, %i.m
  br i1 %i.ad, label %bb.e, label %_ZN6duckdb21UnscentedKalmanFilter6UpdateEdd.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN6duckdb21UnscentedKalmanFilter14UpdateInternalEd(ptr noundef nonnull align 8 dereferenceable(184) %i.i, double noundef %i.m)
  store double %i.m, ptr %i.ab, align 8, !tbaa !163
  br label %_ZN6duckdb21UnscentedKalmanFilter6UpdateEdd.exit

_ZN6duckdb21UnscentedKalmanFilter6UpdateEdd.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %i.ae = fcmp ogt double %i.l, f0x3FEFAE147AE147AE
  br i1 %i.ae, label %_ZN6duckdb26TerminalProgressBarDisplay19NormalizePercentageEd.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6duckdb21UnscentedKalmanFilter6UpdateEdd.exit
  %i.af = load i8, ptr %i.n, align 8, !tbaa !160, !range !98, !noundef !99
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.g, label %_ZNK6duckdb21UnscentedKalmanFilter28GetEstimatedRemainingSecondsEv.exit

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 noundef 1)
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !161
  %i.ak = fcmp ugt double %i.aj, 0.000000e+00
  br i1 %i.ak, label %bb.h, label %_ZNK6duckdb21UnscentedKalmanFilter28GetEstimatedRemainingSecondsEv.exit

bb.h:                                             ; preds = %bb.g
  %i.al = load double, ptr %i.j, align 8, !tbaa !146
  %i.am = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 noundef 0)
  %i.an = load double, ptr %i.am, align 8, !tbaa !161
  %i.ao = fsub double %i.al, %i.an
  %i.ap = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 noundef 1)
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !161
  %i.ar = fdiv double %i.ao, %i.aq                ; 2 uses
  %i.as = fcmp olt double %i.ar, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.as, double 0.000000e+00, double %i.ar
  br label %_ZNK6duckdb21UnscentedKalmanFilter28GetEstimatedRemainingSecondsEv.exit

_ZNK6duckdb21UnscentedKalmanFilter28GetEstimatedRemainingSecondsEv.exit: ; preds = %bb.f, %bb.g, %bb.h
  %.0.i = phi double [ f0x41DFFFFFFFC00000, %bb.f ], [ %.sroa.speculated.i, %bb.h ], [ +inf, %bb.g ] ; 2 uses
  %i.at = fcmp ogt double %.0.i, f0x41DFFFFFFFC00000
  %.sroa.speculated = select i1 %i.at, double f0x41DFFFFFFFC00000, double %.0.i
  br label %_ZN6duckdb26TerminalProgressBarDisplay19NormalizePercentageEd.exit

_ZN6duckdb26TerminalProgressBarDisplay19NormalizePercentageEd.exit: ; preds = %_ZN6duckdb21UnscentedKalmanFilter6UpdateEdd.exit, %_ZNK6duckdb21UnscentedKalmanFilter28GetEstimatedRemainingSecondsEv.exit
  %.0 = phi double [ %.sroa.speculated, %_ZNK6duckdb21UnscentedKalmanFilter28GetEstimatedRemainingSecondsEv.exit ], [ 5.000000e-01, %_ZN6duckdb21UnscentedKalmanFilter6UpdateEdd.exit ] ; 2 uses
  %3 = fcmp ogt double %1, 1.000000e+02
  %.inv.i = fcmp ole double %1, 0.000000e+00
  %spec.select4.i = select i1 %.inv.i, double 0.000000e+00, double %1
  %spec.select.i = fptosi double %spec.select4.i to i32
  %.0.i9 = select i1 %3, i32 100, i32 %spec.select.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.au = sext i32 %.0.i9 to i64
  call void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.au)
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aw = fptoui double %.0 to i64
  call void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %i.av, i64 noundef %i.aw)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !164
  %i.az = load i64, ptr %2, align 8, !tbaa !164
  %i.ba = icmp ne i64 %i.ay, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = load i64, ptr %i.av, align 8
  %i.be = icmp ne i64 %i.bc, %i.bd
  %.not3.i = select i1 %i.ba, i1 true, i1 %i.be
  br i1 %.not3.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN6duckdb26TerminalProgressBarDisplay19NormalizePercentageEd.exit
  %i.bf = load ptr, ptr %0, align 8, !tbaa !52
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %.0.i9, double noundef %.0, i1 noundef zeroext false)
  call void @_ZN6duckdb7Printer5FlushENS_12OutputStreamE(i8 noundef zeroext 1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !166
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN6duckdb26TerminalProgressBarDisplay19NormalizePercentageEd.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb21UnscentedKalmanFilter6UpdateEdd(ptr noundef nonnull align 8 dereferenceable(184) %0, double noundef %1, double noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load double, ptr %i.a, align 8, !tbaa !146
  %i.c = fmul double %1, %i.b                     ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !160, !range !98, !noundef !99
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = fcmp oeq double %i.c, 0.000000e+00
  %i.h = fcmp oeq double %2, 0.000000e+00
  %or.cond.i = or i1 %i.h, %i.g
  br i1 %or.cond.i, label %_ZN6duckdb21UnscentedKalmanFilter10InitializeEdd.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = fdiv double 1.000000e-01, %i.c           ; 2 uses
  %i.j = fcmp ogt double %i.i, 1.000000e+00
  %.sroa.speculated.i = select i1 %i.j, double %i.i, double 1.000000e+00 ; 2 uses
  store double %.sroa.speculated.i, ptr %i.a, align 8, !tbaa !146
  %i.k = fmul double %i.c, %.sroa.speculated.i    ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef 0)
  store double %i.k, ptr %i.m, align 8, !tbaa !161
  %i.n = fdiv double %i.k, %2
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef 1)
  store double %i.n, ptr %i.o, align 8, !tbaa !161
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152
  store double %2, ptr %i.p, align 8, !tbaa !162
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168
  store double %i.k, ptr %i.q, align 8, !tbaa !163
  store i8 1, ptr %i.d, align 8, !tbaa !160
  br label %_ZN6duckdb21UnscentedKalmanFilter10InitializeEdd.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb21UnscentedKalmanFilter7PredictEd(ptr noundef nonnull align 8 dereferenceable(184) %0, double noundef %2)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !163
  %i.t = fcmp une double %i.s, %i.c
  br i1 %i.t, label %bb.e, label %_ZN6duckdb21UnscentedKalmanFilter10InitializeEdd.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN6duckdb21UnscentedKalmanFilter14UpdateInternalEd(ptr noundef nonnull align 8 dereferenceable(184) %0, double noundef %i.c)
  store double %i.c, ptr %i.r, align 8, !tbaa !163
  br label %_ZN6duckdb21UnscentedKalmanFilter10InitializeEdd.exit

_ZN6duckdb21UnscentedKalmanFilter10InitializeEdd.exit: ; preds = %bb.c, %bb.b, %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZNK6duckdb21UnscentedKalmanFilter28GetEstimatedRemainingSecondsEv(ptr noundef nonnull align 8 dereferenceable(184) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i8, ptr %i.a, align 8, !tbaa !160, !range !98, !noundef !99
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 1)
  %i.f = load double, ptr %i.e, align 8, !tbaa !161
  %i.g = fcmp ugt double %i.f, 0.000000e+00
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.i = load double, ptr %i.h, align 8, !tbaa !146
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0)
  %i.k = load double, ptr %i.j, align 8, !tbaa !161
  %i.l = fsub double %i.i, %i.k
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 1)
  %i.n = load double, ptr %i.m, align 8, !tbaa !161
  %i.o = fdiv double %i.l, %i.n                   ; 2 uses
  %i.p = fcmp olt double %i.o, 0.000000e+00
  %.sroa.speculated = select i1 %i.p, double 0.000000e+00, double %i.o
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi double [ f0x41DFFFFFFFC00000, %bb.a ], [ %.sroa.speculated, %bb.c ], [ +inf, %bb.b ]
  ret double %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  store i64 %1, ptr %0, align 8, !tbaa !164
  %i.a = icmp eq i64 %1, -1
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !39     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn11 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #22
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn10 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn11, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn10

bb.i:                                             ; preds = %bb.d
  unreachable
}

declare void @_ZN6duckdb7Printer5FlushENS_12OutputStreamE(i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb26TerminalProgressBarDisplay6FinishEv(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.b, align 8, !tbaa !63
  %i.c = sub nsw i64 %i.a, %.sroa.0.0.copyload.i2.i.i
  %i.d = sitofp i64 %i.c to double
  %i.e = fdiv double %i.d, 1.000000e+09
  %i.f = load ptr, ptr %0, align 8, !tbaa !52
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
end_hunk_1
