Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/progressreporter?download=true
inline.NumInlined: 575
inline.NumDeleted: 241
begin_hunk_0_@_ZN4pbrt16ProgressReporterD2Ev:bb.a
bb.d:                                             ; preds = %_ZNK4pbrt16ProgressReporter14ElapsedSecondsEv.exit.i
  %i.u = load i64, ptr %0, align 8, !tbaa !22
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  store atomic i64 %i.u, ptr %i.v seq_cst, align 8
  store atomic i8 1, ptr %i.r seq_cst, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.w, align 8, !tbaa !9
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i, label %.noexc, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.e, %bb.d
  %putchar.i = tail call i32 @putchar(i32 10)     ; 0 uses
  br label %_ZN4pbrt16ProgressReporter4DoneEv.exit

_ZN4pbrt16ProgressReporter4DoneEv.exit:           ; preds = %.noexc, %_ZNK4pbrt16ProgressReporter14ElapsedSecondsEv.exit.i, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.0.0.copyload.i.i1 = load i64, ptr %i.x, align 8, !tbaa !9
  %.not.i2 = icmp eq i64 %.sroa.0.0.copyload.i.i1, 0
  br i1 %.not.i2, label %_ZNSt6threadD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4pbrt16ProgressReporter4DoneEv.exit
  tail call void @_ZSt9terminatev() #24
  unreachable

_ZNSt6threadD2Ev.exit:                            ; preds = %_ZN4pbrt16ProgressReporter4DoneEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !21   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6threadD2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !20
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6threadD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

bb.g:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  tail call void @__clang_call_terminate(ptr %i.af) #24
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt16ProgressReporter4DoneEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !35, !range !48, !noundef !49
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_order.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.e = load i8, ptr %i.d, align 4, !tbaa !37, !range !48, !noundef !49
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_ZNK4pstd8optionalIfEdeEv.exit.i, label %bb.c

_ZNK4pstd8optionalIfEdeEv.exit.i:                 ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load float, ptr %i.g, align 8, !tbaa !50
  br label %_ZNK4pbrt16ProgressReporter14ElapsedSecondsEv.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #20
  %.sroa.0.0.copyload.i2.i.i.i = load i64, ptr %i.i, align 8, !tbaa !9
  %i.k = sub nsw i64 %i.j, %.sroa.0.0.copyload.i2.i.i.i
  %i.l = sdiv i64 %i.k, 1000
  %i.m = sitofp i64 %i.l to double
  %i.n = fdiv double %i.m, 1.000000e+06
  %i.o = fptrunc double %i.n to float
  br label %_ZNK4pbrt16ProgressReporter14ElapsedSecondsEv.exit

_ZNK4pbrt16ProgressReporter14ElapsedSecondsEv.exit: ; preds = %_ZNK4pstd8optionalIfEdeEv.exit.i, %bb.c
  %i.p = phi float [ %i.h, %_ZNK4pstd8optionalIfEdeEv.exit.i ], [ %i.o, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  store float %i.p, ptr %i.q, align 8, !tbaa !50
  store i8 1, ptr %i.d, align 4, !tbaa !37
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.s = cmpxchg ptr %i.r, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.t = extractvalue { i8, i1 } %i.s, 1
  br i1 %i.t, label %bb.d, label %_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_order.exit

bb.d:                                             ; preds = %_ZNK4pbrt16ProgressReporter14ElapsedSecondsEv.exit
  %i.u = load i64, ptr %0, align 8, !tbaa !22
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  store atomic i64 %i.u, ptr %i.v seq_cst, align 8
  store atomic i8 1, ptr %i.r seq_cst, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.w, align 8, !tbaa !9
  %.not = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  br label %_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_order.exit

_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_order.exit: ; preds = %bb.f, %_ZNK4pbrt16ProgressReporter14ElapsedSecondsEv.exit, %bb.a
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt16ProgressReporter8printBarEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 6 uses
  %2 = alloca %struct.winsize, align 2            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.a = call i32 (i32, i64, ...) @ioctl(i32 noundef 1, i64 noundef 21523, ptr noundef nonnull %2) #20
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #25
  %i.d = load i32, ptr %i.c, align 4, !tbaa !52   ; 2 uses
  %i.e = icmp eq i32 %i.d, 25
  %.b.i = load i1, ptr @_ZZN4pbrtL13TerminalWidthEvE6warned, align 1
  %or.cond.i = select i1 %i.e, i1 true, i1 %.b.i
  br i1 %or.cond.i, label %_ZN4pbrtL13TerminalWidthEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i1 true, ptr @_ZZN4pbrtL13TerminalWidthEvE6warned, align 1
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !53
  %i.g = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.19, i32 noundef %i.d) #26 ; 0 uses
  br label %_ZN4pbrtL13TerminalWidthEv.exit

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.i = load i16, ptr %i.h, align 2, !tbaa !55
  %i.j = zext i16 %i.i to i32
  %i.k = add nsw i32 %i.j, -28
  br label %_ZN4pbrtL13TerminalWidthEv.exit

_ZN4pbrtL13TerminalWidthEv.exit:                  ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i32 [ %i.k, %bb.d ], [ 52, %bb.c ], [ 52, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !18
  %i.o = trunc i64 %i.n to i32                    ; 2 uses
  %i.p = sub i32 %.0.i, %i.o
  %.sroa.speculated66 = call i32 @llvm.smax.i32(i32 %i.p, i32 2) ; 3 uses
  %i.q = add i32 %i.o, 64
  %i.r = add i32 %i.q, %.sroa.speculated66
  %i.s = sext i32 %i.r to i64                     ; 3 uses
  %i.t = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.s) #23, !noalias !58 ; 10 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.t, i8 0, i64 %i.s, i1 false), !noalias !58
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !21
  %i.v = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.t, i64 noundef %i.s, ptr noundef nonnull @.str.4, ptr noundef %i.u) #20 ; 0 uses
  %i.w = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.t) #27 ; 2 uses
  %i.x = getelementptr i8, ptr %i.t, i64 %i.w     ; 2 uses
  %i.y = zext nneg i32 %.sroa.speculated66 to i64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.x, i8 32, i64 %i.y, i1 false), !tbaa !20
  %i.z = add i64 %i.w, %i.y                       ; 2 uses
  %i.aa = getelementptr i8, ptr %i.t, i64 %i.z    ; 2 uses
  %scevgep83 = getelementptr i8, ptr %i.t, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 1
  store i8 93, ptr %scevgep83, align 1, !tbaa !20
  %i.ac = getelementptr i8, ptr %i.aa, i64 2
  store i8 32, ptr %i.ab, align 1, !tbaa !20
  store i8 0, ptr %i.ac, align 1, !tbaa !20
  %i.ad = load ptr, ptr @stdout, align 8, !tbaa !53
  %i.ae = call i32 @fputs(ptr noundef nonnull %i.t, ptr noundef %i.ad) ; 0 uses
  %i.af = load ptr, ptr @stdout, align 8, !tbaa !53
  %i.ag = call i32 @fflush(ptr noundef %i.af)     ; 0 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ak = uitofp nneg i32 %.sroa.speculated66 to float
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZN4pbrtL13TerminalWidthEv.exit, %bb.w
  %.080 = phi i32 [ 0, %_ZN4pbrtL13TerminalWidthEv.exit ], [ %i.ba, %bb.w ]
  %.03279 = phi ptr [ %i.x, %_ZN4pbrtL13TerminalWidthEv.exit ], [ %.140.lcssa, %bb.w ] ; 3 uses
  %.03777 = phi i32 [ 0, %_ZN4pbrtL13TerminalWidthEv.exit ], [ %.142.lcssa, %bb.w ] ; 3 uses
  %.sroa.0.076 = phi i64 [ 250, %_ZN4pbrtL13TerminalWidthEv.exit ], [ %.sroa.0.1, %bb.w ] ; 7 uses
  %i.ao = load atomic i8, ptr %i.ah seq_cst, align 8, !range !48, !noundef !49
  %i.ap = trunc nuw i8 %i.ao to i1                ; 2 uses
  %i.aq = icmp slt i64 %.sroa.0.076, 1
  %or.cond = select i1 %i.ap, i1 true, i1 %i.aq
  br i1 %or.cond, label %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = udiv i64 %.sroa.0.076, 1000             ; 2 uses
  %.neg.i.i = mul nsw i64 %i.ar, -1000
  %i.as = add nsw i64 %.neg.i.i, %.sroa.0.076
  %i.at = mul nsw i64 %i.as, 1000000
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store i64 %i.ar, ptr %1, align 8, !tbaa !61
  store i64 %i.at, ptr %i.ai, align 8, !tbaa !63
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.au = invoke i32 @nanosleep(ptr noundef nonnull %1, ptr noundef nonnull %1)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.g
  %i.av = icmp eq i32 %i.au, -1
  br i1 %i.av, label %bb.h, label %.critedge.i

bb.h:                                             ; preds = %.noexc
  %i.aw = tail call ptr @__errno_location() #25
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !52
  %i.ay = icmp eq i32 %i.ax, 4
  br i1 %i.ay, label %bb.g, label %.critedge.i, !llvm.loop !64

.critedge.i:                                      ; preds = %bb.h, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit

bb.i:                                             ; preds = %bb.g
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit51

_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit: ; preds = %.critedge.i, %bb.e
  %i.ba = add nuw nsw i32 %.080, 1                ; 2 uses
  switch i32 %i.ba, label %bb.m [
    i32 10, label %bb.j
    i32 70, label %bb.k
    i32 520, label %bb.l
  ]

bb.j:                                             ; preds = %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit
  %i.bb = shl nsw i64 %.sroa.0.076, 1
  br label %bb.m

bb.k:                                             ; preds = %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit
  %i.bc = shl nsw i64 %.sroa.0.076, 1
  br label %bb.m

bb.l:                                             ; preds = %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit
  %i.bd = mul nsw i64 %.sroa.0.076, 5
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit, %bb.k, %bb.l, %bb.j
  %.sroa.0.1 = phi i64 [ %.sroa.0.076, %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit ], [ %i.bb, %bb.j ], [ %i.bc, %bb.k ], [ %i.bd, %bb.l ]
  %i.be = load atomic i64, ptr %i.aj seq_cst, align 8
  %i.bf = sitofp i64 %i.be to float
  %i.bg = load i64, ptr %0, align 8, !tbaa !22
  %i.bh = sitofp i64 %i.bg to float
  %i.bi = fdiv float %i.bf, %i.bh                 ; 3 uses
  %i.bj = fmul float %i.bi, %i.ak
  %i.bk = call noundef float @llvm.round.f32(float %i.bj)
  %i.bl = fptosi float %i.bk to i32               ; 3 uses
  %i.bm = icmp slt i32 %.03777, %i.bl
  br i1 %i.bm, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.m
  %i.bn = xor i32 %.03777, -1
  %i.bo = add i32 %i.bn, %i.bl
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %i.bq = add nuw nsw i64 %i.bp, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.03279, i8 43, i64 %i.bq, i1 false), !tbaa !20
  %scevgep84 = getelementptr i8, ptr %.03279, i64 1
  %scevgep85 = getelementptr i8, ptr %scevgep84, i64 %i.bp
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.m
  %.142.lcssa = phi i32 [ %.03777, %bb.m ], [ %i.bl, %.lr.ph.preheader ]
  %.140.lcssa = phi ptr [ %.03279, %bb.m ], [ %scevgep85, %.lr.ph.preheader ]
  %i.br = load ptr, ptr @stdout, align 8, !tbaa !53
  %i.bs = call i32 @fputs(ptr noundef nonnull %i.t, ptr noundef %i.br) ; 0 uses
  %i.bt = load i8, ptr %i.al, align 4, !tbaa !37, !range !48, !noundef !49
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %_ZNK4pstd8optionalIfEdeEv.exit.i, label %bb.n

_ZNK4pstd8optionalIfEdeEv.exit.i:                 ; preds = %._crit_edge
  %i.bv = load float, ptr %i.an, align 8, !tbaa !50
  br label %_ZNK4pbrt16ProgressReporter14ElapsedSecondsEv.exit

bb.n:                                             ; preds = %._crit_edge
  %i.bw = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #20
  %.sroa.0.0.copyload.i2.i.i.i = load i64, ptr %i.am, align 8, !tbaa !9
  %i.bx = sub nsw i64 %i.bw, %.sroa.0.0.copyload.i2.i.i.i
  %i.by = sdiv i64 %i.bx, 1000
  %i.bz = sitofp i64 %i.by to double
  %i.ca = fdiv double %i.bz, 1.000000e+06
  %i.cb = fptrunc double %i.ca to float
  br label %_ZNK4pbrt16ProgressReporter14ElapsedSecondsEv.exit

_ZNK4pbrt16ProgressReporter14ElapsedSecondsEv.exit: ; preds = %bb.n, %_ZNK4pstd8optionalIfEdeEv.exit.i
  %i.cc = phi float [ %i.bv, %_ZNK4pstd8optionalIfEdeEv.exit.i ], [ %i.cb, %bb.n ] ; 4 uses
  %i.cd = fdiv float %i.cc, %i.bi
  %i.ce = fsub float %i.cd, %i.cc                 ; 3 uses
  %i.cf = load atomic i8, ptr %i.ah seq_cst, align 8, !range !48, !noundef !49
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.o, label %bb.r

bb.o:                                             ; preds = %_ZNK4pbrt16ProgressReporter14ElapsedSecondsEv.exit
  %i.ch = load i8, ptr %i.al, align 4, !tbaa !37, !range !48, !noundef !49
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %_ZN4pstd8optionalIfEdeEv.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef 235, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(4) @.str.11) #22
          to label %.noexc47 unwind label %bb.q

.noexc47:                                         ; preds = %bb.p
  unreachable

_ZN4pstd8optionalIfEdeEv.exit:                    ; preds = %bb.o
  %i.cj = load float, ptr %i.an, align 8, !tbaa !50
  %i.ck = fpext float %i.cj to double
  %i.cl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %i.ck) ; 0 uses
  br label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit51

bb.r:                                             ; preds = %_ZNK4pbrt16ProgressReporter14ElapsedSecondsEv.exit
  %i.cn = fcmp oeq float %i.bi, 1.000000e+00
  br i1 %i.cn, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.co = fpext float %i.cc to double
  %i.cp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %i.co) ; 0 uses
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  %i.cq = call float @llvm.fabs.f32(float %i.ce)
  %i.cr = fcmp oeq float %i.cq, +inf
  %i.cs = fpext float %i.cc to double             ; 2 uses
  br i1 %i.cr, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ct = fcmp ogt float %i.ce, 0.000000e+00
  %.sroa.speculated = select i1 %i.ct, float %i.ce, float 0.000000e+00
  %i.cu = fpext float %.sroa.speculated to double
  %i.cv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %i.cs, double noundef %i.cu) ; 0 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.cw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %i.cs) ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.s, %bb.v, %bb.u, %_ZN4pstd8optionalIfEdeEv.exit
  %i.cx = load ptr, ptr @stdout, align 8, !tbaa !53
  %i.cy = call i32 @fflush(ptr noundef %i.cx)     ; 0 uses
  br i1 %i.ap, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %bb.e, !llvm.loop !66

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %i.t) #21
  ret void

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit51: ; preds = %bb.q, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.az, %bb.i ], [ %i.cm, %bb.q ]
  call void @_ZdaPv(ptr noundef nonnull %i.t) #21
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

declare void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt16ProgressReporter8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !11, !alias.scope !67
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !18, !alias.scope !67
  store i8 0, ptr %i.e, align 8, !tbaa !20, !alias.scope !67
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKlJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_5TimerERKSt6atomicIlERKSF_IbEEEEvPS9_PKcOT_DpOT0_(ptr noundef nonnull align 8 %0, ptr noundef nonnull @.str.9, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
          to label %_ZN4pbrt12StringPrintfIJRKlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_5TimerERKSt6atomicIlERKSE_IbEEEES8_PKcDpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %0, align 8, !tbaa !21, !alias.scope !67 ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.e
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.j = load i64, ptr %i.e, align 8, !tbaa !20, !alias.scope !67
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.g

_ZN4pbrt12StringPrintfIJRKlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_5TimerERKSt6atomicIlERKSE_IbEEEES8_PKcDpOT_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212steady_clock3nowEv() local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #10

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(4) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !11, !alias.scope !70
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !18, !alias.scope !70
  store i8 0, ptr %i.a, align 8, !tbaa !20, !alias.scope !70
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA4_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull align 8 %5, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(4) %4)
          to label %_ZN4pbrt12StringPrintfIJRA4_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %5, align 8, !tbaa !21, !alias.scope !70 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !20, !alias.scope !70
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #21
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRA4_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %5, align 8, !tbaa !21
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.h) #22
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA4_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA4_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %5, align 8, !tbaa !21     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !20
end_hunk_0
