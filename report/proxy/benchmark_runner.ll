Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proxy/original/benchmark_runner?download=true
inline.NumInlined: 817
inline.NumDeleted: 439
begin_hunk_0_@_ZN9benchmark8internal15BenchmarkRunnerC2ERKNS0_17BenchmarkInstanceEPNS0_23PerfCountersMeasurementEPNS_17BenchmarkReporter19PerFamilyRunReportsE:bb.a

bb.e:                                             ; preds = %bb.d, %.noexc
  %.0.in.i = phi ptr [ %i.l, %.noexc ], [ %spec.select.i, %bb.d ]
  %.0.i = load double, ptr %.0.in.i, align 8, !tbaa !19
  %.pre = load i8, ptr @_ZN9benchmark23FLAGS_benchmark_dry_runE, align 1, !tbaa !172, !range !47
  %i.q = trunc nuw i8 %.pre to i1
  store double %.0.i, ptr %i.i, align 8, !tbaa !173
  %.pre18.pre19 = load ptr, ptr %i.b, align 8, !tbaa !49 ; 2 uses
  br i1 %i.q, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.pre18.pre19, i64 376
  %i.s = load double, ptr %i.r, align 8, !tbaa !174
  %i.t = invoke noundef zeroext i1 @_ZN9benchmark8internal6IsZeroEd(double noundef %i.s)
          to label %bb.g unwind label %bb.z

bb.g:                                             ; preds = %bb.f
  %.pre18.pre.pre = load ptr, ptr %i.b, align 8, !tbaa !49 ; 3 uses
  br i1 %i.t, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %.pre18.pre.pre, i64 384
  %i.v = load double, ptr %i.u, align 8, !tbaa !176 ; 2 uses
  %i.w = fcmp ogt double %i.v, 0.000000e+00
  br i1 %i.w, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.x = load double, ptr @_ZN9benchmark31FLAGS_benchmark_min_warmup_timeE, align 8, !tbaa !69
  br label %bb.j

bb.j:                                             ; preds = %.thread, %bb.h, %bb.i, %bb.e
  %.pre18 = phi ptr [ %.pre18.pre19, %bb.e ], [ %.pre18.pre.pre, %bb.i ], [ %.pre18.pre.pre, %bb.h ], [ %.pre18.pre1924, %.thread ] ; 4 uses
  %i.y = phi double [ 0.000000e+00, %bb.e ], [ %i.x, %bb.i ], [ %i.v, %bb.h ], [ 0.000000e+00, %.thread ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96
  store double %i.y, ptr %i.z, align 8, !tbaa !177
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ab = load i8, ptr @_ZN9benchmark23FLAGS_benchmark_dry_runE, align 1, !tbaa !172, !range !47, !noundef !48
  %i.ac = trunc nuw i8 %i.ab to i1                ; 2 uses
  %i.ad = fcmp ule double %i.y, 0.000000e+00
  %narrow = select i1 %i.ac, i1 true, i1 %i.ad
  %i.ae = zext i1 %narrow to i8
  store i8 %i.ae, ptr %i.aa, align 8, !tbaa !70
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 108
  br i1 %i.ac, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre18, i64 368
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !178 ; 2 uses
  %.not = icmp eq i32 %i.ah, 0
  %i.ai = load i32, ptr @_ZN9benchmark27FLAGS_benchmark_repetitionsE, align 4
  %spec.select = select i1 %.not, i32 %i.ai, i32 %i.ah
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aj = phi i32 [ 1, %bb.j ], [ %spec.select, %bb.k ]
  store i32 %i.aj, ptr %i.af, align 4, !tbaa !71
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.pre18, i64 392
  %i.am = load i64, ptr %i.al, align 8, !tbaa !179
  %.not8 = icmp eq i64 %i.am, 0
  br i1 %.not8, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.an = load i32, ptr %i.d, align 8, !tbaa !180
  %i.ao = icmp eq i32 %i.an, 1
  %i.ap = zext i1 %i.ao to i8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aq = phi i8 [ 1, %bb.l ], [ %i.ap, %bb.m ]
  store i8 %i.aq, ptr %i.ak, align 8, !tbaa !72
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 0, ptr %i.ar, align 4, !tbaa !73
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.pre18, i64 256
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !181, !nonnull !48, !align !74 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.pre18, i64 400
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !75 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 288
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !76, !noalias !182
  %.not.i.i.not.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.not.i, label %bb.o, label %.thread.i

.thread.i:                                        ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !182
  store i32 %i.aw, ptr %i.a, align 4, !tbaa !20, !noalias !183
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 296
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !185, !noalias !183
  invoke void %i.bb(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %i.as, ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc11 unwind label %bb.z, !inline_history !167

.noexc11:                                         ; preds = %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !182
  br label %_ZN9benchmark8internal12_GLOBAL__N_115GetThreadRunnerERKSt8functionIFSt10unique_ptrINS_16ThreadRunnerBaseESt14default_deleteIS4_EEiEEi.exit

bb.o:                                             ; preds = %bb.n
  %i.bc = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #25
          to label %.noexc12 unwind label %bb.z   ; 6 uses

.noexc12:                                         ; preds = %bb.o
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal12_GLOBAL__N_119ThreadRunnerDefaultE, i64 16), ptr %i.bc, align 8, !tbaa !78, !noalias !186
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.be = add nsw i32 %i.aw, -1                   ; 2 uses
  %i.bf = sext i32 %i.be to i64                   ; 2 uses
  %i.bg = icmp slt i32 %i.aw, 1
  br i1 %i.bg, label %.noexc.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i.i.i

.noexc.i.i.i:                                     ; preds = %.noexc12
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #26
          to label %.noexc.i.i unwind label %bb.p, !noalias !186

.noexc.i.i:                                       ; preds = %.noexc.i.i.i
  unreachable

_ZNSt6vectorISt6threadSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i.i.i: ; preds = %.noexc12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i8 0, i64 24, i1 false), !noalias !186
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.be, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN9benchmark8internal12_GLOBAL__N_119ThreadRunnerDefaultESt14default_deleteIS3_EED2Ev.exit.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %_ZNSt6vectorISt6threadSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i.i.i
  %i.bh = shl nuw nsw i64 %i.bf, 3                ; 3 uses
  %i.bi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #25
          to label %.noexc2.i.i unwind label %bb.p, !noalias !186 ; 4 uses

.noexc2.i.i:                                      ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i
  store ptr %i.bi, ptr %i.bd, align 8, !tbaa !81, !noalias !186
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bf
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bi, i8 0, i64 %i.bh, i1 false), !tbaa !83, !noalias !186
  %scevgep.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.bi, i64 %i.bh
  br label %_ZNSt10unique_ptrIN9benchmark8internal12_GLOBAL__N_119ThreadRunnerDefaultESt14default_deleteIS3_EED2Ev.exit.i

bb.p:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i, %.noexc.i.i.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef 32) #27, !noalias !186
  br label %.body

_ZNSt10unique_ptrIN9benchmark8internal12_GLOBAL__N_119ThreadRunnerDefaultESt14default_deleteIS3_EED2Ev.exit.i: ; preds = %.noexc2.i.i, %_ZNSt6vectorISt6threadSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i.i.i
  %.sink.i.i.i.i = phi ptr [ %i.bj, %.noexc2.i.i ], [ null, %_ZNSt6vectorISt6threadSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i.i.i, %.noexc2.i.i ], [ null, %_ZNSt6vectorISt6threadSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i.i.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store ptr %.sink.i.i.i.i, ptr %i.bm, align 8, !tbaa !84, !noalias !186
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i, ptr %i.bl, align 8, !tbaa !85, !noalias !186
  store ptr %i.bc, ptr %i.as, align 8, !tbaa !187, !alias.scope !182
  br label %_ZN9benchmark8internal12_GLOBAL__N_115GetThreadRunnerERKSt8functionIFSt10unique_ptrINS_16ThreadRunnerBaseESt14default_deleteIS4_EEiEEi.exit

_ZN9benchmark8internal12_GLOBAL__N_115GetThreadRunnerERKSt8functionIFSt10unique_ptrINS_16ThreadRunnerBaseESt14default_deleteIS4_EEiEEi.exit: ; preds = %_ZNSt10unique_ptrIN9benchmark8internal12_GLOBAL__N_119ThreadRunnerDefaultESt14default_deleteIS3_EED2Ev.exit.i, %.noexc11
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bo = load i8, ptr @_ZN9benchmark23FLAGS_benchmark_dry_runE, align 1, !tbaa !172, !range !47, !noundef !48
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %_ZN9benchmark8internal12_GLOBAL__N_112ComputeItersERKNS0_17BenchmarkInstanceERKNS0_13BenchTimeTypeE.exit, label %bb.q

bb.q:                                             ; preds = %_ZN9benchmark8internal12_GLOBAL__N_115GetThreadRunnerERKSt8functionIFSt10unique_ptrINS_16ThreadRunnerBaseESt14default_deleteIS4_EEiEEi.exit
  %i.bq = load i8, ptr %i.ak, align 8, !tbaa !72, !range !47, !noundef !48
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.r, label %_ZN9benchmark8internal12_GLOBAL__N_112ComputeItersERKNS0_17BenchmarkInstanceERKNS0_13BenchTimeTypeE.exit

bb.r:                                             ; preds = %bb.q
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 392
  %.val = load i64, ptr %i.bs, align 8, !tbaa !179 ; 2 uses
  %.not.i = icmp eq i64 %.val, 0
  br i1 %.not.i, label %bb.s, label %_ZN9benchmark8internal12_GLOBAL__N_112ComputeItersERKNS0_17BenchmarkInstanceERKNS0_13BenchTimeTypeE.exit

bb.s:                                             ; preds = %bb.r
  %i.bt = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.bu = icmp eq i8 %i.bt, 0
  br i1 %i.bu, label %bb.t, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit.i, !prof !21

bb.t:                                             ; preds = %bb.s
  %i.bv = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #23
  %.not.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !24
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #23
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit.i

_ZN9benchmark8internal18GetNullLogInstanceEv.exit.i: ; preds = %bb.u, %bb.t, %bb.s
  %i.bw = load i64, ptr %i.g, align 8, !tbaa !19
  br label %_ZN9benchmark8internal12_GLOBAL__N_112ComputeItersERKNS0_17BenchmarkInstanceERKNS0_13BenchTimeTypeE.exit

_ZN9benchmark8internal12_GLOBAL__N_112ComputeItersERKNS0_17BenchmarkInstanceERKNS0_13BenchTimeTypeE.exit: ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit.i, %bb.r, %bb.q, %_ZN9benchmark8internal12_GLOBAL__N_115GetThreadRunnerERKSt8functionIFSt10unique_ptrINS_16ThreadRunnerBaseESt14default_deleteIS4_EEiEEi.exit
  %i.bx = phi i64 [ 1, %_ZN9benchmark8internal12_GLOBAL__N_115GetThreadRunnerERKSt8functionIFSt10unique_ptrINS_16ThreadRunnerBaseESt14default_deleteIS4_EEiEEi.exit ], [ 1, %bb.q ], [ %i.bw, %_ZN9benchmark8internal18GetNullLogInstanceEv.exit.i ], [ %.val, %bb.r ]
  store i64 %i.bx, ptr %i.bn, align 8, !tbaa !86
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %2, ptr %i.by, align 8, !tbaa !87
  %i.bz = load i8, ptr @_ZN9benchmark38FLAGS_benchmark_report_aggregates_onlyE, align 1, !tbaa !172, !range !47, !noundef !48 ; 2 uses
  %i.ca = trunc nuw i8 %i.bz to i1
  %i.cb = load i8, ptr @_ZN9benchmark39FLAGS_benchmark_display_aggregates_onlyE, align 1, !range !47
  %i.cc = select i1 %i.ca, i8 1, i8 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i8 %i.cc, ptr %i.cd, align 8, !tbaa !188
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 49 ; 2 uses
  store i8 %i.bz, ptr %i.ce, align 1, !tbaa !189
  %i.cf = load ptr, ptr %i.b, align 8, !tbaa !49, !nonnull !48, !align !74
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 272
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !190 ; 3 uses
  %.not9 = icmp eq i32 %i.ch, 0
  br i1 %.not9, label %_ZN9benchmark8internallsIA54_cEERNS0_7LogTypeES4_RKT_.exit, label %bb.v

bb.v:                                             ; preds = %_ZN9benchmark8internal12_GLOBAL__N_112ComputeItersERKNS0_17BenchmarkInstanceERKNS0_13BenchTimeTypeE.exit
  %4 = lshr i32 %i.ch, 2
  %5 = trunc i32 %4 to i8
  %i.ci = and i8 %5, 1
  store i8 %i.ci, ptr %i.cd, align 8, !tbaa !188
  %6 = lshr i32 %i.ch, 1
  %7 = trunc i32 %6 to i8
  %i.cj = and i8 %7, 1
  store i8 %i.cj, ptr %i.ce, align 1, !tbaa !189
  %i.ck = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.cl = icmp eq i8 %i.ck, 0
  br i1 %i.cl, label %bb.w, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, !prof !21

bb.w:                                             ; preds = %bb.v
  %i.cm = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #23
  %.not.i14 = icmp eq i32 %i.cm, 0
  br i1 %.not.i14, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !24
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #23
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit

_ZN9benchmark8internal18GetNullLogInstanceEv.exit: ; preds = %bb.x, %bb.w, %bb.v
  %i.cn = load ptr, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !24 ; 2 uses
  %.not.i15 = icmp eq ptr %i.cn, null
  br i1 %.not.i15, label %_ZN9benchmark8internallsIA54_cEERNS0_7LogTypeES4_RKT_.exit, label %bb.y

bb.y:                                             ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit
  %i.co = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, ptr noundef nonnull @.str.8, i64 noundef 53)
          to label %_ZN9benchmark8internallsIA54_cEERNS0_7LogTypeES4_RKT_.exit unwind label %bb.aa ; 0 uses

bb.z:                                             ; preds = %bb.o, %.thread.i, %bb.c, %bb.f, %bb.a
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aa:                                            ; preds = %bb.y
  %i.cq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cr = load ptr, ptr %i.as, align 8, !tbaa !88 ; 3 uses
  %.not.i17 = icmp eq ptr %i.cr, null
  br i1 %.not.i17, label %.body, label %_ZNKSt14default_deleteIN9benchmark16ThreadRunnerBaseEEclEPS1_.exit.i

_ZNKSt14default_deleteIN9benchmark16ThreadRunnerBaseEEclEPS1_.exit.i: ; preds = %bb.aa
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !78
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(8) %i.cr) #23, !inline_history !170
  br label %.body

_ZN9benchmark8internallsIA54_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, %bb.y, %_ZN9benchmark8internal12_GLOBAL__N_112ComputeItersERKNS0_17BenchmarkInstanceERKNS0_13BenchTimeTypeE.exit
  ret void

.body:                                            ; preds = %_ZNKSt14default_deleteIN9benchmark16ThreadRunnerBaseEEclEPS1_.exit.i, %bb.aa, %bb.z, %bb.p
  %.pn = phi { ptr, i32 } [ %i.bk, %bb.p ], [ %i.cp, %bb.z ], [ %i.cq, %bb.aa ], [ %i.cq, %_ZNKSt14default_deleteIN9benchmark16ThreadRunnerBaseEEclEPS1_.exit.i ]
  call void @_ZN9benchmark8internal10RunResultsD2Ev(ptr noundef nonnull align 8 dead_on_return(50) dereferenceable(50) %0) #23
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

declare noundef zeroext i1 @_ZN9benchmark8internal6IsZeroEd(double noundef) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN9benchmark8internal10RunResultsD2Ev(ptr noundef nonnull align 8 dead_on_return(50) dereferenceable(50) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !90
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_(ptr noundef %i.b, ptr noundef %i.d)
          to label %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit.i unwind label %bb.c

_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !89   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !91
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #27
  br label %_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #28
  unreachable

_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit.i, %bb.b
  %i.m = load ptr, ptr %0, align 8, !tbaa !89
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !90
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_(ptr noundef %i.m, ptr noundef %i.o)
          to label %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit.i1 unwind label %bb.e

_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit.i1: ; preds = %_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev.exit
  %i.p = load ptr, ptr %0, align 8, !tbaa !89     ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev.exit3, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit.i1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !91
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #27
  br label %_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev.exit3

bb.e:                                             ; preds = %_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev.exit
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #28
  unreachable

_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev.exit3: ; preds = %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit.i1, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN9benchmark8internal15BenchmarkRunner13DoNIterationsEv(ptr dead_on_unwind noalias writable sret(%"struct.benchmark::internal::BenchmarkRunner::IterationResults") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::unique_ptr.12", align 8 ; 17 uses
  %4 = alloca %"class.std::function.20", align 8  ; 12 uses
  %i.a = load i32, ptr @_ZZN9benchmark8internal8LogLevelEvE9log_level, align 4, !tbaa !20
  %.not.i = icmp slt i32 %i.a, 2
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load atomic i8, ptr @_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit, !prof !21

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log) #23
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr @_ZSt4clog, ptr @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, align 8, !tbaa !24
  br label %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i

bb.e:                                             ; preds = %bb.a
  %i.e = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.f, label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit, !prof !21

bb.f:                                             ; preds = %bb.e
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #23
  %.not.i1.i = icmp eq i32 %i.g, 0
  br i1 %.not.i1.i, label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !24
  br label %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i

_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i: ; preds = %bb.g, %bb.d
  %_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log.sink.i = phi ptr [ @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.g ], [ @_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.d ]
  %.0.ph.i = phi ptr [ @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.g ], [ @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.d ]
  tail call void @__cxa_guard_release(ptr nonnull %_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log.sink.i) #23
  br label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit

_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit: ; preds = %bb.b, %bb.c, %bb.e, %bb.f, %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i
  %.0.i = phi ptr [ @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.f ], [ @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.b ], [ @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.c ], [ @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.e ], [ %.0.ph.i, %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i ] ; 8 uses
  %i.h = load ptr, ptr %.0.i, align 8, !tbaa !24  ; 2 uses
  %.not.i12 = icmp eq ptr %i.h, null
  br i1 %.not.i12, label %_ZN9benchmark8internallsIA9_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit

_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.3, i64 noundef 7) ; 0 uses
  %.pr = load ptr, ptr %.0.i, align 8, !tbaa !24  ; 2 uses
  %.not.i13 = icmp eq ptr %.pr, null
  br i1 %.not.i13, label %_ZN9benchmark8internallsIA9_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit

_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit: ; preds = %_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.pr, i32 noundef 2) ; 0 uses
  %.pr77 = load ptr, ptr %.0.i, align 8, !tbaa !24 ; 2 uses
  %.not.i14 = icmp eq ptr %.pr77, null
  br i1 %.not.i14, label %_ZN9benchmark8internallsIA9_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit

_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr77, ptr noundef nonnull @.str.4, i64 noundef 3) ; 0 uses
  %.pr79.pr = load ptr, ptr %.0.i, align 8, !tbaa !24 ; 2 uses
  %.not.i15 = icmp eq ptr %.pr79.pr, null
  br i1 %.not.i15, label %_ZN9benchmark8internallsIA9_cEERNS0_7LogTypeES4_RKT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr79.pr, ptr noundef nonnull @.str.9, i64 noundef 8) ; 0 uses
  br label %_ZN9benchmark8internallsIA9_cEERNS0_7LogTypeES4_RKT_.exit

_ZN9benchmark8internallsIA9_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit, %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit, %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit, %_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !49, !nonnull !48, !align !74
  call void @_ZNK9benchmark13BenchmarkName3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(256) %i.n)
  %i.o = load ptr, ptr %.0.i, align 8, !tbaa !24  ; 2 uses
  %.not.i16 = icmp eq ptr %i.o, null
  br i1 %.not.i16, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit, label %bb.i

end_hunk_0
