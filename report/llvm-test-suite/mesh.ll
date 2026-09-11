Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/mesh?download=true
inline.NumInlined: 2154
inline.NumDeleted: 448
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN4Mesh24calc_face_list_clearmapsEv:bb.a

_ZNSt6vectorIiSaIiEE5clearEv.exit24:              ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit21, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i23
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2072
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !70 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 2080 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !69
  %.not.i.i25 = icmp eq ptr %i.an, %i.al
  br i1 %.not.i.i25, label %_ZNSt6vectorIiSaIiEE5clearEv.exit27, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i26

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i26:      ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit24
  store ptr %i.al, ptr %i.am, align 8, !tbaa !69
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit27

_ZNSt6vectorIiSaIiEE5clearEv.exit27:              ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit24, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i26
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 2096
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !70 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2104 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !69
  %.not.i.i28 = icmp eq ptr %i.ar, %i.ap
  br i1 %.not.i.i28, label %_ZNSt6vectorIiSaIiEE5clearEv.exit30, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i29

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i29:      ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit27
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !69
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit30

_ZNSt6vectorIiSaIiEE5clearEv.exit30:              ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit27, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i29
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 2120
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !70 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 2128 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !69
  %.not.i.i31 = icmp eq ptr %i.av, %i.at
  br i1 %.not.i.i31, label %_ZNSt6vectorIiSaIiEE5clearEv.exit33, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i32

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i32:      ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit30
  store ptr %i.at, ptr %i.au, align 8, !tbaa !69
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit33

_ZNSt6vectorIiSaIiEE5clearEv.exit33:              ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit30, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i32
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Mesh12timer_outputE11mesh_timers17mesh_device_typesi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2288) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca [80 x i8], align 16               ; 11 uses
  %i.b = icmp eq i32 %2, 0
  %i.c = zext i32 %1 to i64                       ; 3 uses
  br i1 %i.b, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.c
  %i.f = load double, ptr %i.e, align 8, !tbaa !59 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.a, i8 0, i64 80, i1 false)
  store i8 47, ptr %i.a, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 48, ptr %i.g, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.i = load i32, ptr %i.h, align 4, !tbaa !85
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.sink.split, label %bb.c

.thread:                                          ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.c
  %i.m = load i64, ptr %i.l, align 8, !tbaa !123
  %i.n = sitofp i64 %i.m to double
  %i.o = fmul nnan double %i.n, 1.000000e-09      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.a, i8 0, i64 80, i1 false)
  store i8 47, ptr %i.a, align 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 48, ptr %i.p, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.r = load i32, ptr %i.q, align 4, !tbaa !85
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.sink.split, label %bb.c

.sink.split:                                      ; preds = %.thread, %bb.b
  %.str.76.sink = phi ptr [ @.str.76, %bb.b ], [ @.str.77, %.thread ]
  %.013.ph = phi double [ %i.f, %bb.b ], [ %i.o, %.thread ]
  %i.t = shl nsw i32 %3, 1
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @_ZL21mesh_timer_descriptor, i64 %i.c
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !266
  %i.w = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %.str.76.sink, i32 noundef %i.t, ptr noundef nonnull @.str.75, ptr noundef %i.v) #28 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %.thread, %bb.b
  %.013 = phi double [ %i.o, %.thread ], [ %i.f, %bb.b ], [ %.013.ph, %.sink.split ]
  call void @_ZN4Mesh15parallel_outputEPKcdiS1_(ptr noundef nonnull align 8 dereferenceable(2288) %0, ptr noundef nonnull %i.a, double noundef %.013, i32 noundef %3, ptr noundef nonnull @.str.78)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Mesh15parallel_outputEPKcdiS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2288) %0, ptr noundef %1, double noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !92   ; 3 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %.noexc, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.142) #34
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %i.d = zext nneg i32 %i.b to i64                ; 2 uses
  %.not.i.i.i.i = icmp ne i32 %i.b, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.e = shl nuw nsw i64 %i.d, 3                  ; 3 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #33 ; 13 uses
  store double 0.000000e+00, ptr %i.f, align 8, !tbaa !59
  %i.g = getelementptr i8, ptr %i.f, i64 8        ; 3 uses
  %i.h = add nsw i64 %i.d, -1                     ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.h, 3   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.g, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !59
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit

_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %.0.i.i.i.i.i = phi ptr [ %i.j, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.g, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ] ; 4 uses
  store double %2, ptr %i.f, align 8, !tbaa !59
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.l = load i32, ptr %i.k, align 4, !tbaa !85
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.b, label %_ZNSt6vectorIdSaIdEED2Ev.exit30

bb.b:                                             ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
  %i.n = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.79, ptr noundef %1) ; 0 uses
  %i.o = load i32, ptr %i.a, align 8, !tbaa !92   ; 3 uses
  %i.p = icmp slt i32 %i.o, 5
  br i1 %i.p, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.b
  %i.q = icmp sgt i32 %i.o, 0
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.r = shl nsw i32 %3, 1
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) %4) ; 0 uses
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit30

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %.noexc27, %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.e) #30
  resume { ptr, i32 } %i.s

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.u = load double, ptr %i.t, align 8, !tbaa !59
  %i.v = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, i32 noundef %i.r, ptr noundef nonnull @.str.75, double noundef %i.u) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = load i32, ptr %i.a, align 8, !tbaa !92
  %i.x = sext i32 %i.w to i64
  %i.y = icmp slt i64 %indvars.iv.next, %i.x
  br i1 %i.y, label %bb.c, label %._crit_edge, !llvm.loop !267

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %i.f, %.0.i.i.i.i.i
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.aa = ptrtoint ptr %i.f to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 3
  %i.ad = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ac, i1 true)
  %i.ae = shl nuw nsw i64 %i.ad, 1
  %i.af = xor i64 %i.ae, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr nonnull %i.f, ptr %.0.i.i.i.i.i, i64 noundef %i.af)
          to label %.noexc27 unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit

.noexc27:                                         ; preds = %bb.e
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr nonnull %i.f, ptr %.0.i.i.i.i.i)
          to label %.noexc27._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit_crit_edge unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit

.noexc27._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit_crit_edge: ; preds = %.noexc27
  %.pre = load i32, ptr %i.a, align 8, !tbaa !92
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit: ; preds = %.noexc27._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit_crit_edge, %bb.d
  %i.ag = phi i32 [ %.pre, %.noexc27._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit_crit_edge ], [ %i.o, %bb.d ] ; 3 uses
  %i.ah = sdiv i32 %i.ag, 2
  %i.ai = and i32 %i.ag, 1
  %i.aj = icmp eq i32 %i.ai, 0
  %i.ak = sext i32 %i.ah to i64
  %i.al = getelementptr [8 x i8], ptr %i.f, i64 %i.ak ; 3 uses
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit
  %i.am = getelementptr i8, ptr %i.al, i64 -8
  %5 = load double, ptr %i.am, align 8, !tbaa !59
  %6 = load double, ptr %i.al, align 8, !tbaa !59
  %7 = fadd double %5, %6
  %i.an = fmul double %7, 5.000000e-01
  br label %bb.h

bb.g:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit
  %i.ao = getelementptr i8, ptr %i.al, i64 8
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !59
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi double [ %i.an, %bb.f ], [ %i.ap, %bb.g ]
  %i.aq = shl nsw i32 %3, 1                       ; 3 uses
  %i.ar = load double, ptr %i.f, align 8, !tbaa !59
  %i.as = sext i32 %i.ag to i64
  %i.at = getelementptr [8 x i8], ptr %i.f, i64 %i.as
  %i.au = getelementptr i8, ptr %i.at, i64 -8
  %i.av = load double, ptr %i.au, align 8, !tbaa !59
  %i.aw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.82, i32 noundef %i.aq, ptr noundef nonnull @.str.75, double noundef %i.ar, i32 noundef %i.aq, ptr noundef nonnull @.str.75, double noundef %.0, i32 noundef %i.aq, ptr noundef nonnull @.str.75, double noundef %i.av, ptr noundef %4) ; 0 uses
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit30

_ZNSt6vectorIdSaIdEED2Ev.exit30:                  ; preds = %._crit_edge, %bb.h, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.e) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Mesh15parallel_outputEPKcxiS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2288) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !92   ; 3 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %.noexc, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.142) #34
  unreachable

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %i.d = zext nneg i32 %i.b to i64                ; 2 uses
  %.not.i.i.i.i = icmp ne i32 %i.b, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.e = shl nuw nsw i64 %i.d, 3                  ; 3 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #33 ; 13 uses
  store i64 0, ptr %i.f, align 8, !tbaa !123
  %i.g = getelementptr i8, ptr %i.f, i64 8        ; 3 uses
  %i.h = add nsw i64 %i.d, -1                     ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.h, 3   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.g, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !123
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit

_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i
  %.0.i.i.i.i.i = phi ptr [ %i.j, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.g, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i ] ; 4 uses
  store i64 %2, ptr %i.f, align 8, !tbaa !123
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.l = load i32, ptr %i.k, align 4, !tbaa !85
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.b, label %_ZNSt6vectorIxSaIxEED2Ev.exit30

bb.b:                                             ; preds = %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit
  %i.n = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.79, ptr noundef %1) ; 0 uses
  %i.o = load i32, ptr %i.a, align 8, !tbaa !92   ; 3 uses
  %i.p = icmp slt i32 %i.o, 5
  br i1 %i.p, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.b
  %i.q = icmp sgt i32 %i.o, 0
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.r = shl nsw i32 %3, 1
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) %4) ; 0 uses
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit30

_ZNSt6vectorIxSaIxEED2Ev.exit:                    ; preds = %.noexc27, %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.e) #30
  resume { ptr, i32 } %i.s

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.u = load i64, ptr %i.t, align 8, !tbaa !123
  %i.v = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.83, i32 noundef %i.r, ptr noundef nonnull @.str.75, i64 noundef %i.u) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = load i32, ptr %i.a, align 8, !tbaa !92
  %i.x = sext i32 %i.w to i64
  %i.y = icmp slt i64 %indvars.iv.next, %i.x
  br i1 %i.y, label %bb.c, label %._crit_edge, !llvm.loop !268

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %i.f, %.0.i.i.i.i.i
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEEvT_S7_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.aa = ptrtoint ptr %i.f to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 3
  %i.ad = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ac, i1 true)
  %i.ae = shl nuw nsw i64 %i.ad, 1
  %i.af = xor i64 %i.ae, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr nonnull %i.f, ptr %.0.i.i.i.i.i, i64 noundef %i.af)
          to label %.noexc27 unwind label %_ZNSt6vectorIxSaIxEED2Ev.exit

.noexc27:                                         ; preds = %bb.e
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr nonnull %i.f, ptr %.0.i.i.i.i.i)
          to label %.noexc27._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEEvT_S7_.exit_crit_edge unwind label %_ZNSt6vectorIxSaIxEED2Ev.exit

.noexc27._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEEvT_S7_.exit_crit_edge: ; preds = %.noexc27
  %.pre = load i32, ptr %i.a, align 8, !tbaa !92
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEEvT_S7_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEEvT_S7_.exit: ; preds = %.noexc27._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEEvT_S7_.exit_crit_edge, %bb.d
  %i.ag = phi i32 [ %.pre, %.noexc27._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEEvT_S7_.exit_crit_edge ], [ %i.o, %bb.d ] ; 3 uses
  %i.ah = sdiv i32 %i.ag, 2
  %i.ai = and i32 %i.ag, 1
  %i.aj = icmp eq i32 %i.ai, 0
  %i.ak = sext i32 %i.ah to i64
  %i.al = getelementptr [8 x i8], ptr %i.f, i64 %i.ak ; 3 uses
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEEvT_S7_.exit
  %i.am = getelementptr i8, ptr %i.al, i64 -8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !123
  %i.ao = load i64, ptr %i.al, align 8, !tbaa !123
  %i.ap = add nsw i64 %i.ao, %i.an
  %i.aq = sdiv i64 %i.ap, 2
  br label %bb.h

bb.g:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEEvT_S7_.exit
  %i.ar = getelementptr i8, ptr %i.al, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !123
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi i64 [ %i.aq, %bb.f ], [ %i.as, %bb.g ]
  %i.at = shl nsw i32 %3, 1                       ; 3 uses
  %i.au = load i64, ptr %i.f, align 8, !tbaa !123
  %i.av = sext i32 %i.ag to i64
  %i.aw = getelementptr [8 x i8], ptr %i.f, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.aw, i64 -8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !123
  %i.az = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.84, i32 noundef %i.at, ptr noundef nonnull @.str.75, i64 noundef %i.au, i32 noundef %i.at, ptr noundef nonnull @.str.75, i64 noundef %.0, i32 noundef %i.at, ptr noundef nonnull @.str.75, i64 noundef %i.ay, ptr noundef %4) ; 0 uses
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit30

_ZNSt6vectorIxSaIxEED2Ev.exit30:                  ; preds = %._crit_edge, %bb.h, %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.e) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Mesh15parallel_outputEPKciiS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2288) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !92   ; 3 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.142) #34
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %i.d = zext nneg i32 %i.b to i64                ; 2 uses
  %.not.i.i.i.i = icmp ne i32 %i.b, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.e = shl nuw nsw i64 %i.d, 2                  ; 3 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #33 ; 13 uses
  store i32 0, ptr %i.f, align 4, !tbaa !17
  %i.g = getelementptr i8, ptr %i.f, i64 4        ; 3 uses
  %i.h = add nsw i64 %i.d, -1                     ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.h, 2   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.g, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.0.i.i.i.i.i = phi ptr [ %i.j, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.g, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 4 uses
  store i32 %2, ptr %i.f, align 4, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.l = load i32, ptr %i.k, align 4, !tbaa !85
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.b, label %_ZNSt6vectorIiSaIiEED2Ev.exit30

bb.b:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.n = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.79, ptr noundef %1) ; 0 uses
  %i.o = load i32, ptr %i.a, align 8, !tbaa !92   ; 3 uses
  %i.p = icmp slt i32 %i.o, 5
  br i1 %i.p, label %.preheader, label %bb.d
end_hunk_0
begin_hunk_1_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_:bb.a
.lr.ph.i.i22:                                     ; preds = %bb.l, %.lr.ph.i.i22
  %i.al = phi i32 [ %i.am, %.lr.ph.i.i22 ], [ %i.aj, %bb.l ]
  %.sroa.0.09.i.i23 = phi ptr [ %.sroa.0.0.i.i25, %.lr.ph.i.i22 ], [ %.pn17.i17, %bb.l ] ; 3 uses
  %.sroa.04.08.i.i24 = phi ptr [ %.sroa.0.09.i.i23, %.lr.ph.i.i22 ], [ %.sroa.0.018.i16, %bb.l ]
  store i32 %i.al, ptr %.sroa.04.08.i.i24, align 4, !tbaa !17
  %.sroa.0.0.i.i25 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i23, i64 -4 ; 2 uses
  %i.am = load i32, ptr %.sroa.0.0.i.i25, align 4, !tbaa !17 ; 2 uses
  %i.an = icmp slt i32 %i.x, %i.am
  br i1 %i.an, label %.lr.ph.i.i22, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i18, !llvm.loop !315

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i18: ; preds = %.lr.ph.i.i22, %bb.l, %bb.k, %bb.j, %bb.i
  %.sink.i19 = phi ptr [ %0, %bb.k ], [ %0, %bb.i ], [ %0, %bb.j ], [ %.sroa.0.018.i16, %bb.l ], [ %.sroa.0.09.i.i23, %.lr.ph.i.i22 ]
  store i32 %i.x, ptr %.sink.i19, align 4, !tbaa !17
  %.sroa.0.0.i20 = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i16, i64 4 ; 2 uses
  %.not.i21 = icmp eq ptr %.sroa.0.0.i20, %1
  br i1 %.not.i21, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i15, !llvm.loop !316

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i18, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %bb.g, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 2 uses
  %i.d = ashr exact i64 %.fr, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us
  %.08.us = phi i64 [ %i.al, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %0, i64 %.08.us
  %i.q = load i32, ptr %i.p, align 4, !tbaa !17   ; 2 uses
  %i.r = icmp slt i64 %.08.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.035.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.08.us, %.split.us ] ; 2 uses
  %i.s = shl i64 %.035.i.us, 1                    ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %0, i64 %i.t
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %0, i64 %i.v
  %i.x = load i32, ptr %i.u, align 4, !tbaa !17
  %i.y = load i32, ptr %i.w, align 4, !tbaa !17
  %i.z = icmp slt i32 %i.x, %i.y
  %spec.select.i.us = select i1 %i.z, i64 %i.v, i64 %i.t ; 6 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.us
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !17
  %i.ac = getelementptr inbounds [4 x i8], ptr %0, i64 %.035.i.us
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !17
  %i.ad = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ad, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !8

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ae = icmp sgt i64 %spec.select.i.us, %.08.us
  br i1 %i.ae, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.019.i.i.us = phi i64 [ %.0920.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i.us
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !17 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.q
  br i1 %i.ah, label %bb.c, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i.us
  store i32 %i.ag, ptr %i.ai, align 4, !tbaa !17
  %i.aj = icmp sgt i64 %.0920.i.i.us, %.08.us
  br i1 %i.aj, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us, !llvm.loop !9

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.0.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.08.us, %.split.us ], [ %.019.i.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.c ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.us
  store i32 %i.q, ptr %i.ak, align 4, !tbaa !17
  %.not.us = icmp eq i64 %.08.us, 0
  %i.al = add nsw i64 %.08.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !318

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit
  %.08 = phi i64 [ %i.bk, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %0, i64 %.08
  %i.an = load i32, ptr %i.am, align 4, !tbaa !17 ; 2 uses
  %i.ao = icmp slt i64 %.08, %i.i
  br i1 %i.ao, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.035.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.08, %.split ] ; 2 uses
  %i.ap = shl i64 %.035.i, 1                      ; 2 uses
  %i.aq = add i64 %i.ap, 2                        ; 2 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr %0, i64 %i.aq
  %i.as = or disjoint i64 %i.ap, 1                ; 2 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %0, i64 %i.as
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !17
  %i.av = load i32, ptr %i.at, align 4, !tbaa !17
  %i.aw = icmp slt i32 %i.au, %i.av
  %spec.select.i = select i1 %i.aw, i64 %i.as, i64 %i.aq ; 4 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !17
  %i.az = getelementptr inbounds [4 x i8], ptr %0, i64 %.035.i
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !17
  %i.ba = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ba, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !8

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.08, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bb = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.bb, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.bc = load i32, ptr %i.n, align 4, !tbaa !17
  store i32 %i.bc, ptr %i.o, align 4, !tbaa !17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bd = icmp sgt i64 %.1.i, %.08
  br i1 %i.bd, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !17 ; 2 uses
  %i.bg = icmp slt i32 %i.bf, %i.an
  br i1 %i.bg, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i
  store i32 %i.bf, ptr %i.bh, align 4, !tbaa !17
  %i.bi = icmp sgt i64 %.0920.i.i, %.08
  br i1 %i.bi, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit, !llvm.loop !9

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.an, ptr %i.bj, align 4, !tbaa !17
  %.not = icmp eq i64 %.08, 0
  %i.bk = add nsw i64 %.08, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !318

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #10

attributes #0 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nofree nounwind }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { cold nofree noreturn }
attributes #23 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { nounwind }
attributes #29 = { cold noreturn nounwind }
attributes #30 = { builtin nounwind }
attributes #31 = { nounwind allocsize(0) }
attributes #32 = { noreturn nounwind }
attributes #33 = { builtin allocsize(0) }
attributes #34 = { noreturn }

!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}
!llvm.errno.tbaa = !{!17}

!0 = distinct !{!0, !60}
!1 = distinct !{!1, !60}
!2 = distinct !{!2, !60}
!3 = distinct !{!3, !60}
!4 = distinct !{!4, !60}
!5 = distinct !{!5, !60}
!6 = distinct !{!6, !60}
!7 = distinct !{!7, !60}
!8 = distinct !{!8, !60}
!9 = distinct !{!9, !60}
!10 = !{i32 8, !"PIC Level", i32 2}
!11 = !{i32 7, !"PIE Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 2}
!13 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!14 = !{!"Simple C++ TBAA"}
!15 = !{!"omnipotent char", !14, i64 0}
!16 = !{!"int", !15, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!19 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !18, i64 0}
!20 = !{!"_ZTSSt14_Rb_tree_color", !15, i64 0}
!21 = !{!"any pointer", !15, i64 0}
!22 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !21, i64 0}
!23 = !{!"_ZTSSt18_Rb_tree_node_base", !20, i64 0, !22, i64 8, !22, i64 16, !22, i64 24}
!24 = !{!"long", !15, i64 0}
!25 = !{!"_ZTSSt15_Rb_tree_header", !23, i64 0, !24, i64 32}
!26 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEE", !19, i64 0, !25, i64 8}
!27 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !26, i64 0}
!28 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE", !27, i64 0}
!29 = !{!"_ZTSSt4lessIPvE"}
!30 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIPvEE", !29, i64 0}
!31 = !{!"_ZTSNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE13_Rb_tree_implIS9_Lb1EEE", !30, i64 0, !25, i64 8}
!32 = !{!"_ZTSSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE", !31, i64 0}
!33 = !{!"_ZTSSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE", !32, i64 0}
!34 = !{!"_ZTS10MallocPlus", !28, i64 0, !33, i64 48}
!35 = !{!"bool", !15, i64 0}
!36 = !{!"p1 int", !21, i64 0}
!37 = !{!"float", !15, i64 0}
!38 = !{!"double", !15, i64 0}
!39 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !36, i64 0, !36, i64 8, !36, i64 16}
!40 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !39, i64 0}
!41 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !40, i64 0}
!42 = !{!"_ZTSSt6vectorIiSaIiEE", !41, i64 0}
!43 = !{!"p1 _ZTS8_IO_FILE", !21, i64 0}
!44 = !{!"_ZTS7TVector", !38, i64 0, !38, i64 8}
!45 = !{!"_ZTS7TBounds", !44, i64 0, !44, i64 16}
!46 = !{!"_ZTS7TKDTree", !45, i64 0, !16, i64 32, !16, i64 36, !21, i64 40, !35, i64 48, !16, i64 52, !21, i64 56, !36, i64 64}
!47 = !{!"p1 double", !21, i64 0}
!48 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !47, i64 0, !47, i64 8, !47, i64 16}
!49 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !48, i64 0}
!50 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !49, i64 0}
!51 = !{!"_ZTSSt6vectorIdSaIdEE", !50, i64 0}
!52 = !{!"_ZTS4Mesh", !16, i64 0, !34, i64 8, !34, i64 104, !15, i64 200, !15, i64 392, !15, i64 584, !15, i64 600, !35, i64 616, !35, i64 617, !16, i64 620, !16, i64 624, !16, i64 628, !16, i64 632, !16, i64 636, !36, i64 640, !36, i64 648, !37, i64 656, !38, i64 664, !16, i64 672, !42, i64 680, !42, i64 704, !42, i64 728, !42, i64 752, !43, i64 776, !46, i64 784, !42, i64 856, !42, i64 880, !42, i64 904, !42, i64 928, !42, i64 952, !42, i64 976, !42, i64 1000, !42, i64 1024, !51, i64 1048, !51, i64 1072, !51, i64 1096, !16, i64 1120, !16, i64 1124, !16, i64 1128, !16, i64 1132, !16, i64 1136, !16, i64 1140, !16, i64 1144, !16, i64 1148, !16, i64 1152, !24, i64 1160, !24, i64 1168, !24, i64 1176, !38, i64 1184, !38, i64 1192, !38, i64 1200, !38, i64 1208, !38, i64 1216, !38, i64 1224, !38, i64 1232, !38, i64 1240, !38, i64 1248, !38, i64 1256, !38, i64 1264, !38, i64 1272, !38, i64 1280, !38, i64 1288, !38, i64 1296, !42, i64 1304, !36, i64 1328, !36, i64 1336, !36, i64 1344, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !36, i64 1392, !36, i64 1400, !36, i64 1408, !51, i64 1416, !51, i64 1440, !51, i64 1464, !51, i64 1488, !51, i64 1512, !51, i64 1536, !16, i64 1560, !16, i64 1564, !42, i64 1568, !42, i64 1592, !42, i64 1616, !42, i64 1640, !42, i64 1664, !42, i64 1688, !42, i64 1712, !42, i64 1736, !42, i64 1760, !42, i64 1784, !42, i64 1808, !42, i64 1832, !42, i64 1856, !42, i64 1880, !42, i64 1904, !42, i64 1928, !42, i64 1952, !42, i64 1976, !42, i64 2000, !42, i64 2024, !42, i64 2048, !42, i64 2072, !42, i64 2096, !42, i64 2120, !42, i64 2144, !42, i64 2168, !42, i64 2192, !42, i64 2216, !42, i64 2240, !42, i64 2264}
!53 = !{!52, !38, i64 1184}
!54 = !{!52, !38, i64 1200}
!55 = !{!52, !38, i64 1192}
!56 = !{!52, !38, i64 1208}
!57 = !{!52, !24, i64 1160}
!58 = !{!48, !47, i64 0}
!59 = !{!38, !38, i64 0}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!25, !20, i64 0}
!62 = !{!25, !22, i64 8}
!63 = !{!25, !22, i64 16}
!64 = !{!25, !22, i64 24}
!65 = !{!25, !24, i64 32}
!66 = !{!52, !16, i64 1128}
!67 = !{!24, !24, i64 0}
!68 = !{!52, !16, i64 0}
!69 = !{!39, !36, i64 8}
!70 = !{!39, !36, i64 0}
!71 = !{!52, !36, i64 1328}
!72 = !{!52, !36, i64 1336}
!73 = !{!52, !36, i64 1352}
!74 = !{!39, !36, i64 16}
!75 = !{!48, !47, i64 16}
!76 = !{!48, !47, i64 8}
!77 = !{!52, !36, i64 640}
!78 = !{!52, !36, i64 648}
!79 = !{!52, !16, i64 1124}
!80 = !{!52, !36, i64 1368}
!81 = !{!52, !36, i64 1376}
!82 = !{!52, !36, i64 1384}
!83 = !{!52, !36, i64 1392}
!84 = !{!52, !24, i64 1176}
!85 = !{!52, !16, i64 620}
!86 = !{!52, !16, i64 636}
!87 = !{!52, !36, i64 1360}
!88 = !{!37, !37, i64 0}
!89 = !{!52, !16, i64 1120}
!90 = !{!52, !38, i64 664}
!91 = !{!52, !16, i64 672}
!92 = !{!52, !16, i64 624}
!93 = !{!52, !16, i64 628}
!94 = !{!52, !16, i64 1136}
!95 = !{!52, !16, i64 1144}
!96 = !{!52, !35, i64 616}
!97 = !{!45, !38, i64 0}
!98 = !{!45, !38, i64 16}
!99 = !{!45, !38, i64 8}
!100 = !{!45, !38, i64 24}
!101 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!102 = !{i8 0, i8 2}
!103 = !{}
!104 = !{!"llvm.loop.isvectorized", i32 1}
!105 = !{!"llvm.loop.unroll.runtime.disable"}
!106 = !{!36, !36, i64 0}
!107 = !{!21, !21, i64 0}
!108 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!109 = !{!"llvm.loop.unroll.disable"}
!110 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !21, i64 0}
!111 = !{!110, !110, i64 0}
!112 = !{!23, !22, i64 16}
!113 = !{!22, !22, i64 0}
!114 = !{!23, !22, i64 24}
!115 = !{!"p1 _ZTSSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE", !21, i64 0}
!116 = !{!115, !115, i64 0}
!117 = !{!"p1 omnipotent char", !21, i64 0}
!118 = !{!35, !35, i64 0}
!119 = !{!52, !16, i64 1560}
!120 = !{!52, !16, i64 1564}
!121 = !{!"llvm.loop.unswitch.partial.disable"}
!122 = !{!"long long", !15, i64 0}
!123 = !{!122, !122, i64 0}
!124 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !117, i64 0}
!125 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !124, i64 0, !24, i64 8, !15, i64 16}
!126 = !{!125, !117, i64 0}
!127 = !{!15, !15, i64 0}
!128 = !{!23, !20, i64 0}
!129 = !{!23, !22, i64 8}
!130 = distinct !{!130, !60}
!131 = distinct !{!131, !60}
!132 = distinct !{!132, !60}
!133 = distinct !{!133, !60}
!134 = distinct !{!134, !60}
!135 = distinct !{!135, !60}
!136 = distinct !{!136, !60}
!137 = distinct !{!137, !60}
!138 = distinct !{!138, !60}
!139 = distinct !{!139, !60}
!140 = !{!52, !43, i64 776}
!141 = distinct !{!141, !60}
!142 = distinct !{!142, !60}
!143 = distinct !{!143, !60}
!144 = distinct !{!144, !60}
!145 = distinct !{!145, !60}
!146 = distinct !{!146, !60}
!147 = distinct !{!147, !60}
!148 = distinct !{!148, !60}
!149 = distinct !{!149, !60}
!150 = !{!52, !16, i64 632}
!151 = !{!52, !37, i64 656}
!152 = !{!52, !38, i64 1280}
!153 = !{!52, !38, i64 1288}
!154 = !{!52, !16, i64 1132}
!155 = !{!52, !16, i64 1140}
!156 = !{!52, !35, i64 617}
!157 = distinct !{!157, !60}
!158 = distinct !{!158, !60}
!159 = distinct !{!159, !60}
end_hunk_1
