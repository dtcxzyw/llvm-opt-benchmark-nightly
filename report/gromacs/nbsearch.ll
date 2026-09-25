Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/nbsearch?download=true
inline.NumInlined: 744
inline.NumDeleted: 419
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN3gmx8internal30AnalysisNeighborhoodSearchImpl13getPairSearchEv:bb.a
bb.f:                                             ; preds = %._crit_edge
  store ptr %1, ptr %i.r, align 8, !tbaa !76
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i8 0, ptr %i.s, align 8, !tbaa !80
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 60
  store <2 x float> zeroinitializer, ptr %i.u, align 4, !tbaa !81
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 68
  store float 0.000000e+00, ptr %i.v, align 4, !tbaa !81
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  store <2 x float> zeroinitializer, ptr %i.w, align 8, !tbaa !81
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 104
  store float 0.000000e+00, ptr %i.x, align 8, !tbaa !81
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 112
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.t, i8 0, i64 44, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.z, align 8, !tbaa !82
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 108
  store i32 -1, ptr %i.aa, align 4, !tbaa !83
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  store i32 -1, ptr %i.ab, align 8, !tbaa !84
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 76
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ac, i8 0, i64 20, i1 false)
  store i32 -1, ptr %i.ad, align 8, !tbaa !85
  store ptr %i.r, ptr %0, align 8, !tbaa !74
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.ae, align 8, !tbaa !50
  %i.af = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #40
          to label %bb.k unwind label %bb.g       ; 6 uses

bb.g:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  %i.ai = tail call ptr @__cxa_begin_catch(ptr %i.ah) #35 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 144) #38
  invoke void @__cxa_rethrow() #39
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  tail call void @__clang_call_terminate(ptr %i.al) #36
  unreachable

bb.j:                                             ; preds = %bb.g
  unreachable

bb.k:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  store i32 1, ptr %i.am, align 8, !tbaa !52
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store i32 1, ptr %i.an, align 4, !tbaa !53
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN3gmx8internal34AnalysisNeighborhoodPairSearchImplELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.af, align 8, !tbaa !55
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr %i.r, ptr %i.ao, align 8, !tbaa !87
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !50
  %i.ap = load ptr, ptr %i.e, align 8, !tbaa !88  ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !63
  %.not.i = icmp eq ptr %i.ap, %i.ar
  br i1 %.not.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %i.r, ptr %i.ap, align 8, !tbaa !74
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.af, ptr %i.as, align 8, !tbaa !50
  %i.at = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i.i.i = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 2, ptr %i.am, align 8, !tbaa !47
  br label %_ZNSt10shared_ptrIN3gmx8internal34AnalysisNeighborhoodPairSearchImplEEC2ERKS3_.exit.i

bb.n:                                             ; preds = %bb.l
  %i.au = atomicrmw volatile add ptr %i.am, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !88
  br label %_ZNSt10shared_ptrIN3gmx8internal34AnalysisNeighborhoodPairSearchImplEEC2ERKS3_.exit.i

_ZNSt10shared_ptrIN3gmx8internal34AnalysisNeighborhoodPairSearchImplEEC2ERKS3_.exit.i: ; preds = %bb.n, %bb.m
  %i.av = phi ptr [ %.pre.i, %bb.n ], [ %i.ap, %bb.m ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store ptr %i.aw, ptr %i.e, align 8, !tbaa !88
  br label %_ZNSt10shared_ptrIN3gmx8internal34AnalysisNeighborhoodPairSearchImplEEC2ERKS3_.exit

bb.o:                                             ; preds = %bb.k
  invoke void @_ZNSt6vectorISt10shared_ptrIN3gmx8internal34AnalysisNeighborhoodPairSearchImplEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %_ZNSt10shared_ptrIN3gmx8internal34AnalysisNeighborhoodPairSearchImplEEC2ERKS3_.exit unwind label %bb.q

bb.p:                                             ; preds = %._crit_edge
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.q:                                             ; preds = %bb.o
  %i.ay = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12__shared_ptrIN3gmx8internal34AnalysisNeighborhoodPairSearchImplELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #35
  br label %.body

_ZNSt10shared_ptrIN3gmx8internal34AnalysisNeighborhoodPairSearchImplEEC2ERKS3_.exit: ; preds = %_ZNSt10shared_ptrIN3gmx8internal34AnalysisNeighborhoodPairSearchImplEEC2ERKS3_.exit.i, %bb.o, %bb.e, %bb.d
  %i.az = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #35 ; 0 uses
  ret void

.body:                                            ; preds = %bb.p, %bb.h, %bb.q
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.q ], [ %i.aj, %bb.h ], [ %i.ax, %bb.p ]
  %i.ba = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #35 ; 0 uses
  resume { ptr, i32 } %.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN3gmx8internal34AnalysisNeighborhoodPairSearchImpl5resetEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(140) initializes((56, 60), (72, 96), (108, 112), (136, 140)) %0, i32 noundef %1) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %1, ptr %i.a, align 8, !tbaa !82
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  store i32 -1, ptr %i.b, align 4, !tbaa !83
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i32 -1, ptr %i.c, align 8, !tbaa !84
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.d, i8 0, i64 20, i1 false)
  store i32 -1, ptr %i.e, align 8, !tbaa !85
  %i.f = icmp sgt i32 %1, -1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp slt i32 %1, %i.h
  %or.cond = select i1 %i.f, i1 %i.i, i1 false
  br i1 %or.cond, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !89   ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = zext nneg i32 %1 to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !47
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.o = phi i32 [ %i.n, %bb.c ], [ %1, %bb.b ]   ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !90, !nonnull !91, !align !92 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 440
  %i.r = load i8, ptr %i.q, align 8, !tbaa !93, !range !94, !noundef !91
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !154
  %i.v = sext i32 %i.o to i64
  %i.w = getelementptr inbounds [12 x i8], ptr %i.u, i64 %i.v ; 4 uses
  br i1 %i.s, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 60
  tail call void @_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl18mapPointToGridCellEPKfPfS4_(ptr noundef nonnull align 8 dereferenceable(624) %i.p, ptr noundef %i.w, ptr noundef nonnull %i.x, ptr noundef nonnull %i.y)
  %i.z = load ptr, ptr %0, align 8, !tbaa !90, !nonnull !91, !align !92 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ae = load float, ptr %i.ad, align 8, !tbaa !81 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ag = load float, ptr %i.af, align 4, !tbaa !42
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 504
  %i.ai = load float, ptr %i.ah, align 8, !tbaa !81
  %i.aj = fmul float %i.ag, %i.ai                 ; 2 uses
  %i.ak = fsub float %i.ae, %i.aj                 ; 3 uses
  %i.al = fadd float %i.ae, %i.aj                 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 444
  %i.an = load i8, ptr %i.am, align 4, !tbaa !46, !range !94, !noundef !91
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl13initCellRangeEPKfPiS4_i.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 528
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !47
  %i.ar = add nsw i32 %i.aq, -1
  %i.as = sitofp i32 %i.ar to float               ; 2 uses
  %i.at = fcmp olt float %i.ak, 0.000000e+00
  %spec.store.select.i = select i1 %i.at, float 0.000000e+00, float %i.ak
  %2 = fcmp ogt float %i.al, %i.as
  %spec.select.i = select i1 %2, float %i.as, float %i.al
  br label %_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl13initCellRangeEPKfPiS4_i.exit

_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl13initCellRangeEPKfPiS4_i.exit: ; preds = %bb.e, %bb.f
  %.032.i = phi float [ %i.ak, %bb.e ], [ %spec.store.select.i, %bb.f ]
  %.1.i = phi float [ %i.al, %bb.e ], [ %spec.select.i, %bb.f ]
  %i.au = insertelement <4 x float> poison, float %.032.i, i64 0
  %i.av = insertelement <4 x float> %i.au, float %.1.i, i64 3
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ax = tail call <4 x float> @llvm.floor.v4f32(<4 x float> %i.av)
  %i.ay = fptosi <4 x float> %i.ax to <4 x i32>
  tail call void @llvm.masked.store.v4i32.p0(<4 x i32> %i.ay, ptr align 8 %i.aw, <4 x i1> <i1 true, i1 false, i1 false, i1 true>), !tbaa !47
  tail call void @_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl13initCellRangeEPKfPiS4_i(ptr noundef nonnull align 8 dereferenceable(624) %i.z, ptr noundef nonnull %i.x, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ab, i32 noundef 1)
  %i.az = load ptr, ptr %0, align 8, !tbaa !90, !nonnull !91, !align !92
  tail call void @_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl13initCellRangeEPKfPiS4_i(ptr noundef nonnull align 8 dereferenceable(624) %i.az, ptr noundef nonnull %i.x, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ab, i32 noundef 0)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !80, !range !94, !noundef !91
  %i.bc = trunc nuw i8 %i.bb to i1
  %.pre = load ptr, ptr %0, align 8, !tbaa !90    ; 9 uses
  br i1 %i.bc, label %bb.g, label %bb.r

bb.g:                                             ; preds = %_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl13initCellRangeEPKfPiS4_i.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %.pre, i64 442
  %i.be = getelementptr inbounds nuw i8, ptr %.pre, i64 520 ; 2 uses
  %i.bf = load float, ptr %i.x, align 8, !tbaa !81
  %i.bg = tail call noundef float @llvm.floor.f32(float %i.bf)
  %i.bh = fptosi float %i.bg to i32               ; 3 uses
  %i.bi = load i8, ptr %i.bd, align 1, !tbaa !46, !range !94, !noundef !91
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = icmp slt i32 %i.bh, 0
  br i1 %i.bk, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bl = load i32, ptr %i.be, align 4, !tbaa !47
  %i.bm = add nsw i32 %i.bl, -1
  %spec.select.i12 = tail call i32 @llvm.smin.i32(i32 %i.bh, i32 %i.bm)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.1.i13 = phi i32 [ %i.bh, %bb.g ], [ %spec.select.i12, %bb.i ], [ 0, %bb.h ]
  %i.bn = load float, ptr %i.ac, align 4, !tbaa !81
  %i.bo = tail call noundef float @llvm.floor.f32(float %i.bn)
  %i.bp = fptosi float %i.bo to i32               ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.pre, i64 443
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !46, !range !94, !noundef !91
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bt = icmp slt i32 %i.bp, 0
  br i1 %i.bt, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bu = getelementptr inbounds nuw i8, ptr %.pre, i64 524
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !47
  %i.bw = add nsw i32 %i.bv, -1
  %spec.select.1.i = tail call i32 @llvm.smin.i32(i32 %i.bp, i32 %i.bw)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.1.1.i = phi i32 [ %i.bp, %bb.j ], [ %spec.select.1.i, %bb.l ], [ 0, %bb.k ]
  %i.bx = load float, ptr %i.ad, align 8, !tbaa !81
  %i.by = tail call noundef float @llvm.floor.f32(float %i.bx)
  %i.bz = fptosi float %i.by to i32               ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.pre, i64 444
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !46, !range !94, !noundef !91
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl16getGridCellIndexEPKf.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cd = icmp slt i32 %i.bz, 0
  br i1 %i.cd, label %_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl16getGridCellIndexEPKf.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ce = getelementptr inbounds nuw i8, ptr %.pre, i64 528
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !47
  %i.cg = add nsw i32 %i.cf, -1
  %spec.select.2.i = tail call i32 @llvm.smin.i32(i32 %i.bz, i32 %i.cg)
  br label %_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl16getGridCellIndexEPKf.exit

_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl16getGridCellIndexEPKf.exit: ; preds = %bb.m, %bb.n, %bb.o
  %.1.2.i = phi i32 [ %i.bz, %bb.m ], [ %spec.select.2.i, %bb.o ], [ 0, %bb.n ]
  %i.ch = load i32, ptr %i.be, align 8, !tbaa !47
  %i.ci = getelementptr inbounds nuw i8, ptr %.pre, i64 524
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !47
  %i.ck = mul i32 %i.cj, %.1.2.i
  %reass.add.i.i = add i32 %i.ck, %.1.1.i
  %reass.mul.i.i = mul i32 %reass.add.i.i, %i.ch
  %i.cl = add i32 %reass.mul.i.i, %.1.i13
  store i32 %i.cl, ptr %i.b, align 4, !tbaa !83
  br label %bb.r

bb.p:                                             ; preds = %bb.d
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.cn = load float, ptr %i.w, align 4, !tbaa !81
  store float %i.cn, ptr %i.cm, align 4, !tbaa !81
  %i.co = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.cp = load float, ptr %i.co, align 4, !tbaa !81
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 64
  store float %i.cp, ptr %i.cq, align 8, !tbaa !81
  %i.cr = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !81
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 68
  store float %i.cs, ptr %i.ct, align 4, !tbaa !81
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cv = load i8, ptr %i.cu, align 8, !tbaa !80, !range !94, !noundef !91
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 %1, ptr %i.c, align 8, !tbaa !84
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl13initCellRangeEPKfPiS4_i.exit, %_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl16getGridCellIndexEPKf.exit
  %i.cx = phi ptr [ %i.p, %bb.p ], [ %i.p, %bb.q ], [ %.pre, %_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl13initCellRangeEPKfPiS4_i.exit ], [ %.pre, %_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl16getGridCellIndexEPKf.exit ]
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 48
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !95 ; 4 uses
  %.not11 = icmp eq ptr %i.cz, null
  br i1 %.not11, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !155
  %i.dc = sext i32 %i.o to i64
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.db, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !47
  %i.df = sext i32 %i.de to i64                   ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !96
  %i.di = load ptr, ptr %i.cz, align 8, !tbaa !67 ; 2 uses
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = ashr exact i64 %i.dl, 2
  %i.dn = add nsw i64 %i.dm, -1
  %i.do = icmp sgt i64 %i.dn, %i.df
  br i1 %i.do, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !67 ; 2 uses
  %i.dr = getelementptr [4 x i8], ptr %i.di, i64 %i.df ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !47
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.dt
  %i.dv = getelementptr i8, ptr %i.dr, i64 4
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !47
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.du, ptr %i.dz, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.dy, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ea, i8 0, i64 16, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %bb.r, %bb.u, %bb.t, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN3gmx8internal34AnalysisNeighborhoodPairSearchImplELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #38
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN3gmx8internal34AnalysisNeighborhoodPairSearchImplELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 144) #38
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN3gmx8internal34AnalysisNeighborhoodPairSearchImplELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #38
  ret void
}
end_hunk_0
