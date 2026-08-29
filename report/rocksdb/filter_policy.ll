Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/filter_policy?download=true
inline.NumInlined: 3027
inline.NumDeleted: 1523
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN7rocksdb12_GLOBAL__N_122LegacyBloomBitsBuilder15EstimatedFpRateEmm:bb.a
  %i.k = fdiv double 5.120000e+02, %i.g           ; 3 uses
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.k) ; 2 uses
  %i.l = sub nsw i32 0, %i.j
  %i.m = sitofp i32 %i.l to double
  %i.n = sitofp i32 %i.j to double                ; 2 uses
  %i.o = fsub double %i.k, %sqrt.i
  %i.p = fadd double %i.k, %sqrt.i
  %i.q = insertelement <2 x double> poison, double %i.p, i64 0
  %i.r = insertelement <2 x double> %i.q, double %i.o, i64 1
  %i.s = fdiv <2 x double> splat (double 5.120000e+02), %i.r
  %i.t = insertelement <2 x double> poison, double %i.m, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = fdiv <2 x double> %i.u, %i.s             ; 2 uses
  %i.w = extractelement <2 x double> %i.v, i64 0
  %i.x = tail call double @exp(double noundef %i.w) #37
  %i.y = fsub double 1.000000e+00, %i.x
  %i.z = tail call noundef double @pow(double noundef %i.y, double noundef %i.n) #37
  %i.aa = extractelement <2 x double> %i.v, i64 1
  %i.ab = tail call double @exp(double noundef %i.aa) #37
  %i.ac = fsub double 1.000000e+00, %i.ab
  %i.ad = tail call noundef double @pow(double noundef %i.ac, double noundef %i.n) #37
  %i.ae = fadd double %i.z, %i.ad
  %i.af = fmul double %i.ae, 5.000000e-01
  br label %cdce.end.i

cdce.end.i:                                       ; preds = %bb.d, %bb.c
  %.0.i.i = phi double [ %i.af, %bb.d ], [ 1.000000e+00, %bb.c ]
  %i.ag = fmul nnan double %i.f, f0x3DF0000000000000 ; 4 uses
  %i.ah = fcmp ogt double %i.ag, 1.000000e-04
  %i.ai = fneg double %i.ag                       ; 2 uses
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %cdce.end.i
  %i.aj = tail call double @exp(double noundef %i.ai) #37
  %i.ak = fsub double 1.000000e+00, %i.aj
  br label %_ZN7rocksdb23LegacyLocalityBloomImplILb0EE15EstimatedFpRateEmmi.exit

bb.f:                                             ; preds = %cdce.end.i
  %i.al = fmul nnan double %i.ag, %i.ai
  %i.am = tail call double @llvm.fmuladd.f64(double %i.al, double 5.000000e-01, double %i.ag)
  br label %_ZN7rocksdb23LegacyLocalityBloomImplILb0EE15EstimatedFpRateEmmi.exit

_ZN7rocksdb23LegacyLocalityBloomImplILb0EE15EstimatedFpRateEmmi.exit: ; preds = %bb.e, %bb.f
  %.0.i8.i = phi double [ %i.ak, %bb.e ], [ %i.am, %bb.f ] ; 2 uses
  %i.an = tail call double @llvm.fmuladd.f64(double %i.g, double 7.500000e-01, double 2.200000e+01)
  %i.ao = fdiv double 1.000000e-01, %i.an
  %i.ap = fadd double %i.ao, %.0.i.i              ; 2 uses
  %i.aq = fadd double %i.ap, %.0.i8.i
  %i.ar = fneg double %i.ap
  %i.as = tail call noundef double @llvm.fmuladd.f64(double %i.ar, double %.0.i8.i, double %i.aq)
  br label %bb.g

bb.g:                                             ; preds = %_ZN7rocksdb23LegacyLocalityBloomImplILb0EE15EstimatedFpRateEmmi.exit, %bb.b
  %.0 = phi double [ %i.b, %bb.b ], [ %i.as, %_ZN7rocksdb23LegacyLocalityBloomImplILb0EE15EstimatedFpRateEmmi.exit ]
  ret double %.0
}

declare noundef i32 @_ZN7rocksdb4HashEPKcmj(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN7rocksdb12_GLOBAL__N_128Standard128RibbonBitsBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(648) dereferenceable(648) initializes((0, 8), (328, 336)) %0) unnamed_addr #15 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN7rocksdb12_GLOBAL__N_128Standard128RibbonBitsBuilderE, i64 16), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  tail call void @_ZN7rocksdb12_GLOBAL__N_122XXPH3FilterBitsBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(316) dereferenceable(316) %i.a) #37
  tail call void @_ZN7rocksdb12_GLOBAL__N_122XXPH3FilterBitsBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(312) dereferenceable(312) %0) #37
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN7rocksdb12_GLOBAL__N_128Standard128RibbonBitsBuilderD0Ev(ptr noundef nonnull align 8 dereferenceable(648) initializes((0, 8), (328, 336)) %0) unnamed_addr #15 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN7rocksdb12_GLOBAL__N_128Standard128RibbonBitsBuilderE, i64 16), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  tail call void @_ZN7rocksdb12_GLOBAL__N_122XXPH3FilterBitsBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(316) dereferenceable(316) %i.a) #37, !inline_history !478
  tail call void @_ZN7rocksdb12_GLOBAL__N_122XXPH3FilterBitsBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(312) dereferenceable(648) %0) #37, !inline_history !478
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 648) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define internal { ptr, i64 } @_ZN7rocksdb12_GLOBAL__N_128Standard128RibbonBitsBuilder6FinishEPSt10unique_ptrIA_KcSt14default_deleteIS4_EE(ptr noundef nonnull align 8 dereferenceable(648) %0, ptr noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call { ptr, i64 } %i.c(ptr noundef nonnull align 8 dereferenceable(648) %0, ptr noundef %1, ptr noundef null)
  ret { ptr, i64 } %i.d
}

; Function Attrs: mustprogress uwtable
define internal { ptr, i64 } @_ZN7rocksdb12_GLOBAL__N_128Standard128RibbonBitsBuilder6FinishEPSt10unique_ptrIA_KcSt14default_deleteIS4_EEPNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(648) %0, ptr nofree noundef captures(none) %1, ptr noundef %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.rocksdb::ribbon::StandardBanding", align 8 ; 14 uses
  %4 = alloca %"class.std::unique_ptr.117", align 8 ; 9 uses
  %5 = alloca %"class.rocksdb::Status", align 8   ; 7 uses
  %6 = alloca %"class.rocksdb::Status", align 8   ; 9 uses
  %7 = alloca %"class.std::unique_ptr.131", align 8 ; 8 uses
  %8 = alloca %"class.std::unique_ptr.117", align 8 ; 10 uses
  %9 = alloca %"class.rocksdb::Status", align 8   ; 5 uses
  %10 = alloca %"class.rocksdb::Status", align 8  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !360  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !360
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3
  %i.m = icmp ne ptr %i.f, null
  %.neg.i.i = sext i1 %i.m to i64
  %i.n = add nsw i64 %i.l, %.neg.i.i
  %i.o = shl nsw i64 %i.n, 6
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !355
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !356
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 3
  %i.w = add nsw i64 %i.o, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !365
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !355
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 3
  %i.ae = add nsw i64 %i.w, %i.ad                 ; 5 uses
  %i.af = icmp ugt i64 %i.ae, 950000000
  br i1 %i.af, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !174
  tail call void (i8, ptr, ptr, ...) @_ZN7rocksdb3LogENS_12InfoLogLevelEPNS_6LoggerEPKcz(i8 noundef zeroext 2, ptr noundef %i.ah, ptr noundef nonnull @.str.31, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.8, i64 32), i64 noundef %i.ae)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  tail call fastcc void @_ZN7rocksdb12_GLOBAL__N_122XXPH3FilterBitsBuilder15SwapEntriesWithEPS1_(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef %i.ai)
  %i.aj = tail call { ptr, i64 } @_ZN7rocksdb12_GLOBAL__N_125FastLocalBloomBitsBuilder6FinishEPSt10unique_ptrIA_KcSt14default_deleteIS4_EEPNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(316) %i.ai, ptr noundef %1, ptr noundef %2) ; 2 uses
  %i.ak = extractvalue { ptr, i64 } %i.aj, 0
  %i.al = extractvalue { ptr, i64 } %i.aj, 1
  br label %_ZN7rocksdb6StatusD2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.am = icmp eq i64 %i.ae, 0
  br i1 %i.am, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %.not56 = icmp eq ptr %2, null
  br i1 %.not56, label %_ZN7rocksdb6StatusD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %2, i8 0, i64 6, i1 false)
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !304 ; 2 uses
  store ptr null, ptr %i.an, align 8, !tbaa !304
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZN7rocksdb6StatusaSEOS0_.exit

_ZN7rocksdb6StatusaSEOS0_.exit:                   ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.ao) #39
  br label %_ZN7rocksdb6StatusD2Ev.exit

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  call fastcc void @_ZN7rocksdb12_GLOBAL__N_128Standard128RibbonBitsBuilder22CalculateSpaceAndSlotsEmPmPj(ptr noundef nonnull align 8 dereferenceable(648) %0, i64 noundef %i.ae, ptr noundef %i.b, ptr noundef %i.a)
  %i.ap = load i32, ptr %i.a, align 4, !tbaa !129
  %.fr215 = freeze i32 %i.ap                      ; 11 uses
  %i.aq = icmp eq i32 %.fr215, 0
  br i1 %i.aq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  tail call fastcc void @_ZN7rocksdb12_GLOBAL__N_122XXPH3FilterBitsBuilder15SwapEntriesWithEPS1_(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef %i.ar)
  %i.as = tail call { ptr, i64 } @_ZN7rocksdb12_GLOBAL__N_125FastLocalBloomBitsBuilder6FinishEPSt10unique_ptrIA_KcSt14default_deleteIS4_EEPNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(316) %i.ar, ptr noundef %1, ptr noundef %2) ; 2 uses
  %i.at = extractvalue { ptr, i64 } %i.as, 0
  %i.au = extractvalue { ptr, i64 } %i.as, 1
  br label %bb.bk

bb.h:                                             ; preds = %bb.f
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !355 ; 2 uses
  %i.aw = load ptr, ptr %i.d, align 8, !tbaa !355 ; 3 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !361
  %i.az = trunc i64 %i.ay to i32
  %i.ba = and i32 %i.az, 255
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.039 = phi i32 [ 0, %bb.h ], [ %i.ba, %bb.i ]  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  store i32 0, ptr %3, align 8, !tbaa !197
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.bb, i8 0, i64 36, i1 false)
  %i.bc = zext i32 %.fr215 to i64                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  store ptr null, ptr %4, align 8, !tbaa !368
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !136 ; 3 uses
  %.not137 = icmp eq ptr %i.be, null
  br i1 %.not137, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = mul nuw nsw i64 %i.bc, 20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8
  invoke void %i.bi(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.be, i64 noundef %i.bf, ptr noundef nonnull %4)
          to label %_ZN7rocksdb6StatusaSEOS0_.exit64 unwind label %bb.l

_ZN7rocksdb6StatusaSEOS0_.exit64:                 ; preds = %bb.k
  %i.bj = load i8, ptr %5, align 8, !tbaa !479
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !480
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !304 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.bo = icmp eq i8 %i.bj, 10
  %i.bp = icmp eq i8 %i.bl, 7
  %i.bq = select i1 %i.bo, i1 %i.bp, i1 false
  br i1 %i.bq, label %bb.m, label %_ZN7rocksdb6StatusaSEOS0_.exit64..thread_crit_edge

_ZN7rocksdb6StatusaSEOS0_.exit64..thread_crit_edge: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit64
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !355, !noalias !481
  %.pre271 = load ptr, ptr %i.c, align 8, !tbaa !355, !noalias !484
  br label %.thread

bb.l:                                             ; preds = %bb.k
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %.loopexit140

bb.m:                                             ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit64
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !174
  invoke void (i8, ptr, ptr, ...) @_ZN7rocksdb3LogENS_12InfoLogLevelEPNS_6LoggerEPKcz(i8 noundef zeroext 2, ptr noundef %i.bt, ptr noundef nonnull @.str.32, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.8, i64 32))
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  call fastcc void @_ZN7rocksdb12_GLOBAL__N_122XXPH3FilterBitsBuilder15SwapEntriesWithEPS1_(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef %i.bu)
  %i.bv = load ptr, ptr %4, align 8, !tbaa !385   ; 3 uses
  store ptr null, ptr %4, align 8, !tbaa !385
  %.not.i.i68 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i68, label %_ZNSt10unique_ptrIN7rocksdb23CacheReservationManager22CacheReservationHandleESt14default_deleteIS2_EE5resetEPS2_.exit, label %_ZNKSt14default_deleteIN7rocksdb23CacheReservationManager22CacheReservationHandleEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN7rocksdb23CacheReservationManager22CacheReservationHandleEEclEPS2_.exit.i.i: ; preds = %bb.n
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(8) %i.bv) #37, !inline_history !487
  br label %_ZNSt10unique_ptrIN7rocksdb23CacheReservationManager22CacheReservationHandleESt14default_deleteIS2_EE5resetEPS2_.exit

_ZNSt10unique_ptrIN7rocksdb23CacheReservationManager22CacheReservationHandleESt14default_deleteIS2_EE5resetEPS2_.exit: ; preds = %bb.n, %_ZNKSt14default_deleteIN7rocksdb23CacheReservationManager22CacheReservationHandleEEclEPS2_.exit.i.i
  %i.bz = invoke { ptr, i64 } @_ZN7rocksdb12_GLOBAL__N_125FastLocalBloomBitsBuilder6FinishEPSt10unique_ptrIA_KcSt14default_deleteIS4_EEPNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(316) %i.bu, ptr noundef %1, ptr noundef %2)
          to label %bb.o unwind label %bb.p       ; 2 uses

bb.o:                                             ; preds = %_ZNSt10unique_ptrIN7rocksdb23CacheReservationManager22CacheReservationHandleESt14default_deleteIS2_EE5resetEPS2_.exit
  %i.ca = extractvalue { ptr, i64 } %i.bz, 0
  %i.cb = extractvalue { ptr, i64 } %i.bz, 1
  br label %bb.bj

bb.p:                                             ; preds = %_ZNSt10unique_ptrIN7rocksdb23CacheReservationManager22CacheReservationHandleESt14default_deleteIS2_EE5resetEPS2_.exit, %bb.m
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit140

.thread:                                          ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit64..thread_crit_edge, %bb.j
  %i.cd = phi ptr [ %.pre271, %_ZN7rocksdb6StatusaSEOS0_.exit64..thread_crit_edge ], [ %i.av, %bb.j ] ; 3 uses
  %i.ce = phi ptr [ %.pre, %_ZN7rocksdb6StatusaSEOS0_.exit64..thread_crit_edge ], [ %i.aw, %bb.j ] ; 4 uses
  %.sroa.12120.0130 = phi ptr [ %i.bn, %_ZN7rocksdb6StatusaSEOS0_.exit64..thread_crit_edge ], [ null, %bb.j ] ; 7 uses
  %i.cf = load ptr, ptr %i.x, align 8, !tbaa !365, !noalias !481 ; 2 uses
  %i.cg = load ptr, ptr %i.g, align 8, !tbaa !360, !noalias !481 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.cj = shl nuw nsw i64 %i.bc, 4                ; 8 uses
  %i.ck = shl nuw nsw i64 %i.bc, 2                ; 8 uses
  %i.cl = add i32 %.fr215, -127                   ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.cn = icmp eq ptr %i.ce, %i.cd
  %i.co = zext i32 %i.cl to i64                   ; 6 uses
  %.fr = freeze i1 %i.cn
  br i1 %.fr, label %bb.q, label %.thread.split

bb.q:                                             ; preds = %.thread
  %i.cp = zext nneg i32 %.039 to i64
  %i.cq = mul i64 %i.cp, -4070662928558531325     ; 2 uses
  %i.cr = lshr i64 %i.cq, 4
  %i.cs = and i64 %i.cr, 252645135
  %i.ct = xor i64 %i.cs, %i.cq
  %i.cu = trunc i64 %i.ct to i32                  ; 2 uses
  store i32 %i.cu, ptr %3, align 8, !tbaa !197
  %i.cv = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cj) #40
          to label %_ZNSt10unique_ptrIA_N7rocksdb11Unsigned128ESt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit.i.i.us unwind label %.loopexit140.split.us ; 2 uses

_ZNSt10unique_ptrIA_N7rocksdb11Unsigned128ESt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit.i.i.us: ; preds = %bb.q
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cv, i8 0, i64 %i.cj, i1 false)
  store ptr %i.cv, ptr %i.bb, align 8, !tbaa !488
  %i.cw = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ck) #40
          to label %_ZN7rocksdb6ribbon15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE5ResetEjj.exit.i.us unwind label %.loopexit140.split.us ; 2 uses

_ZN7rocksdb6ribbon15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE5ResetEjj.exit.i.us: ; preds = %_ZNSt10unique_ptrIA_N7rocksdb11Unsigned128ESt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit.i.i.us
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cw, i8 0, i64 %i.ck, i1 false)
  store ptr %i.cw, ptr %i.ci, align 8, !tbaa !473
  store i32 %.fr215, ptr %i.ch, align 4, !tbaa !490
  store i32 %i.cl, ptr %i.cm, align 8, !tbaa !504
  br label %.loopexit

.loopexit140.split.us:                            ; preds = %_ZNSt10unique_ptrIA_N7rocksdb11Unsigned128ESt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit.i.i.us, %bb.q
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit140

.thread.split:                                    ; preds = %.thread
  %i.cx = icmp ugt i32 %i.cl, 1500
  br i1 %i.cx, label %.thread.split.split.us, label %.thread.split.split

.thread.split.split.us:                           ; preds = %.thread.split, %.thread83.i.i.i.i.us
  %.val87.i.i.i.i.us275 = phi ptr [ %.val87.i.i.i.i.us, %.thread83.i.i.i.i.us ], [ null, %.thread.split ] ; 4 uses
  %.val86.i.i.i.i.us273 = phi ptr [ %.val86.i.i.i.i.us, %.thread83.i.i.i.i.us ], [ null, %.thread.split ] ; 4 uses
  %.012.i.us186 = phi i32 [ %i.hf, %.thread83.i.i.i.i.us ], [ %.039, %.thread.split ] ; 2 uses
  %i.cy = zext nneg i32 %.012.i.us186 to i64
  %i.cz = mul i64 %i.cy, -4070662928558531325     ; 2 uses
  %i.da = lshr i64 %i.cz, 4
  %i.db = and i64 %i.da, 252645135
  %i.dc = xor i64 %i.db, %i.cz                    ; 2 uses
  %i.dd = trunc i64 %i.dc to i32                  ; 3 uses
  store i32 %i.dd, ptr %3, align 8, !tbaa !197
  %i.de = load i32, ptr %i.ch, align 4, !tbaa !490
  %i.df = icmp ugt i32 %.fr215, %i.de
  br i1 %i.df, label %bb.r, label %.preheader.i.i.us187

.preheader.i.i.us187:                             ; preds = %.thread.split.split.us
  call void @llvm.memset.p0.i64(ptr align 8 %.val86.i.i.i.i.us273, i8 0, i64 %i.cj, i1 false), !tbaa !361
  call void @llvm.memset.p0.i64(ptr align 4 %.val87.i.i.i.i.us275, i8 0, i64 %i.ck, i1 false), !tbaa !129
  br label %_ZN7rocksdb6ribbon15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE5ResetEjj.exit.i.us196

bb.r:                                             ; preds = %.thread.split.split.us
  %i.dg = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cj) #40
          to label %.noexc.us188 unwind label %.loopexit140.split.split.us ; 3 uses

.noexc.us188:                                     ; preds = %bb.r
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dg, i8 0, i64 %i.cj, i1 false)
  store ptr %i.dg, ptr %i.bb, align 8, !tbaa !488
  %.not.i.i.i.i.us189 = icmp eq ptr %.val86.i.i.i.i.us273, null
  br i1 %.not.i.i.i.i.us189, label %_ZNSt10unique_ptrIA_N7rocksdb11Unsigned128ESt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit.i.i.us191, label %_ZNKSt14default_deleteIA_N7rocksdb11Unsigned128EEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i.us190

_ZNKSt14default_deleteIA_N7rocksdb11Unsigned128EEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i.us190: ; preds = %.noexc.us188
  call void @_ZdaPv(ptr noundef nonnull %.val86.i.i.i.i.us273) #39
  br label %_ZNSt10unique_ptrIA_N7rocksdb11Unsigned128ESt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit.i.i.us191

_ZNSt10unique_ptrIA_N7rocksdb11Unsigned128ESt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit.i.i.us191: ; preds = %_ZNKSt14default_deleteIA_N7rocksdb11Unsigned128EEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i.us190, %.noexc.us188
  %i.dh = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ck) #40
          to label %.noexc70.us192 unwind label %.loopexit140.split.split.us ; 3 uses

.noexc70.us192:                                   ; preds = %_ZNSt10unique_ptrIA_N7rocksdb11Unsigned128ESt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit.i.i.us191
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dh, i8 0, i64 %i.ck, i1 false)
  store ptr %i.dh, ptr %i.ci, align 8, !tbaa !473
  %.not.i.i13.i.i.us193 = icmp eq ptr %.val87.i.i.i.i.us275, null
  br i1 %.not.i.i13.i.i.us193, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.i.i.us195, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.us194

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.us194: ; preds = %.noexc70.us192
  call void @_ZdaPv(ptr noundef nonnull %.val87.i.i.i.i.us275) #39
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.i.i.us195

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.i.i.us195: ; preds = %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.us194, %.noexc70.us192
  store i32 %.fr215, ptr %i.ch, align 4, !tbaa !490
  br label %_ZN7rocksdb6ribbon15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE5ResetEjj.exit.i.us196

_ZN7rocksdb6ribbon15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE5ResetEjj.exit.i.us196: ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.i.i.us195, %.preheader.i.i.us187
  %.val87.i.i.i.i.us = phi ptr [ %i.dh, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.i.i.us195 ], [ %.val87.i.i.i.i.us275, %.preheader.i.i.us187 ] ; 7 uses
  %.val86.i.i.i.i.us = phi ptr [ %i.dg, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.i.i.us195 ], [ %.val86.i.i.i.i.us273, %.preheader.i.i.us187 ] ; 7 uses
  store i32 %i.cl, ptr %i.cm, align 8, !tbaa !504
  %.val79.i.i.i.i.us = load i64, ptr %i.ce, align 8, !tbaa !361
  %i.di = and i64 %i.dc, 4294967295               ; 2 uses
  %i.dj = xor i64 %.val79.i.i.i.i.us, %i.di
  %i.dk = mul i64 %i.dj, 7031196922566818317      ; 3 uses
  %i.dl = and i64 %i.dk, 4294967295
  %i.dm = mul nuw i64 %i.dl, %i.co
  %i.dn = lshr i64 %i.dm, 32
  %i.do = lshr i64 %i.dk, 32
  %i.dp = mul nuw i64 %i.do, %i.co
  %i.dq = add nuw i64 %i.dn, %i.dp
  %i.dr = lshr i64 %i.dq, 32                      ; 3 uses
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %.val86.i.i.i.i.us, i64 %i.dr
  call void @llvm.prefetch.p0(ptr nonnull readonly %i.ds, i32 1, i32 1, i32 1)
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.val87.i.i.i.i.us, i64 %i.dr
  call void @llvm.prefetch.p0(ptr nonnull readonly %i.dt, i32 1, i32 1, i32 1)
  br label %.split63.i.i.i.i.us

.split63.i.i.i.i.us:                              ; preds = %.split63.i.i.i.i.us.backedge, %_ZN7rocksdb6ribbon15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE5ResetEjj.exit.i.us196
  %.sroa.25.3.i.i.i.i.us = phi ptr [ %i.cg, %_ZN7rocksdb6ribbon15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE5ResetEjj.exit.i.us196 ], [ %.sroa.25.4.i.i.i.i.us, %.split63.i.i.i.i.us.backedge ] ; 2 uses
  %.sroa.20.3.i.i.i.i.us = phi ptr [ %i.cf, %_ZN7rocksdb6ribbon15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE5ResetEjj.exit.i.us196 ], [ %.sroa.20.4.i.i.i.i.us, %.split63.i.i.i.i.us.backedge ] ; 2 uses
  %.sroa.0.3.i.i.i.i.us = phi ptr [ %i.ce, %_ZN7rocksdb6ribbon15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE5ResetEjj.exit.i.us196 ], [ %.sroa.0.4.i.i.i.i.us, %.split63.i.i.i.i.us.backedge ]
  %.071.i.i.i.i.us = phi i64 [ %i.dk, %_ZN7rocksdb6ribbon15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE5ResetEjj.exit.i.us196 ], [ %i.eg, %.split63.i.i.i.i.us.backedge ]
  %.068.in.i.i.i.i.us = phi i64 [ %i.dr, %_ZN7rocksdb6ribbon15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE5ResetEjj.exit.i.us196 ], [ %i.en, %.split63.i.i.i.i.us.backedge ] ; 5 uses
  %.068.i.i.i.i.us = trunc nuw i64 %.068.in.i.i.i.i.us to i32 ; 2 uses
  %i.du = mul i64 %.071.i.i.i.i.us, -4427176413096506387 ; 6 uses
  %i.dv = call noundef i64 @llvm.bswap.i64(i64 %i.du)
  %i.dw = trunc i64 %i.dv to i32                  ; 4 uses
  %i.dx = and i64 %i.du, -2
  %i.dy = xor i64 %i.dx, -4366375858499063011     ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i.i.i.i.us, i64 8 ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %.sroa.20.3.i.i.i.i.us
  br i1 %i.ea, label %bb.s, label %_ZNSt15_Deque_iteratorImRmPmEppEv.exit90.i.i.i.i.us

bb.s:                                             ; preds = %.split63.i.i.i.i.us
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.25.3.i.i.i.i.us, i64 8 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !352 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 512
  br label %_ZNSt15_Deque_iteratorImRmPmEppEv.exit90.i.i.i.i.us

_ZNSt15_Deque_iteratorImRmPmEppEv.exit90.i.i.i.i.us: ; preds = %bb.s, %.split63.i.i.i.i.us
  %.sroa.25.4.i.i.i.i.us = phi ptr [ %i.eb, %bb.s ], [ %.sroa.25.3.i.i.i.i.us, %.split63.i.i.i.i.us ]
  %.sroa.20.4.i.i.i.i.us = phi ptr [ %i.ed, %bb.s ], [ %.sroa.20.3.i.i.i.i.us, %.split63.i.i.i.i.us ]
  %.sroa.0.4.i.i.i.i.us = phi ptr [ %i.ec, %bb.s ], [ %i.dz, %.split63.i.i.i.i.us ] ; 3 uses
  %i.ee = icmp eq ptr %.sroa.0.4.i.i.i.i.us, %i.cd
  br i1 %i.ee, label %bb.x, label %bb.t

bb.t:                                             ; preds = %_ZNSt15_Deque_iteratorImRmPmEppEv.exit90.i.i.i.i.us
  %.val77.i.i.i.i.us = load i64, ptr %.sroa.0.4.i.i.i.i.us, align 8, !tbaa !361
  %i.ef = xor i64 %.val77.i.i.i.i.us, %i.di
  %i.eg = mul i64 %i.ef, 7031196922566818317      ; 3 uses
  %i.eh = and i64 %i.eg, 4294967295
  %i.ei = mul nuw i64 %i.eh, %i.co
  %i.ej = lshr i64 %i.ei, 32
  %i.ek = lshr i64 %i.eg, 32
  %i.el = mul nuw i64 %i.ek, %i.co
  %i.em = add nuw i64 %i.ej, %i.el
  %i.en = lshr i64 %i.em, 32                      ; 3 uses
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %.val86.i.i.i.i.us, i64 %i.en
  call void @llvm.prefetch.p0(ptr nonnull readonly %i.eo, i32 1, i32 1, i32 1)
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.val87.i.i.i.i.us, i64 %i.en
  call void @llvm.prefetch.p0(ptr nonnull readonly %i.ep, i32 1, i32 1, i32 1)
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %.val86.i.i.i.i.us, i64 %.068.in.i.i.i.i.us ; 3 uses
  %.sroa.03.0.copyload538.i117.i.i.i.i.us = load i64, ptr %i.eq, align 8, !tbaa !361 ; 2 uses
  %.sroa.6.0..sroa_idx39.i118.i.i.i.i.us = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %.sroa.6.0.copyload40.i119.i.i.i.i.us = load i64, ptr %.sroa.6.0..sroa_idx39.i118.i.i.i.i.us, align 8, !tbaa !361 ; 2 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %.val87.i.i.i.i.us, i64 %.068.in.i.i.i.i.us ; 2 uses
  %i.es = icmp eq i64 %.sroa.03.0.copyload538.i117.i.i.i.i.us, 0
  %i.et = icmp eq i64 %.sroa.6.0.copyload40.i119.i.i.i.i.us, 0
  %i.eu = select i1 %i.es, i1 %i.et, i1 false
  br i1 %i.eu, label %.split63.thread.i.i.i.i.us, label %.lr.ph.i120.i.i.i.i.us

.lr.ph.i120.i.i.i.i.us:                           ; preds = %bb.t, %_ZN7rocksdbrSERNS_11Unsigned128Ej.exit.i128.i.i.i.i.us
  %i.ev = phi ptr [ %i.fs, %_ZN7rocksdbrSERNS_11Unsigned128Ej.exit.i128.i.i.i.i.us ], [ %i.er, %bb.t ]
  %.sroa.6.0.copyload46.i121.i.i.i.i.us = phi i64 [ %.sroa.6.0.copyload.i133.i.i.i.i.us, %_ZN7rocksdbrSERNS_11Unsigned128Ej.exit.i128.i.i.i.i.us ], [ %.sroa.6.0.copyload40.i119.i.i.i.i.us, %bb.t ] ; 2 uses
  %.sroa.03.0.copyload545.i122.i.i.i.i.us = phi i64 [ %.sroa.03.0.copyload5.i131.i.i.i.i.us, %_ZN7rocksdbrSERNS_11Unsigned128Ej.exit.i128.i.i.i.i.us ], [ %.sroa.03.0.copyload538.i117.i.i.i.i.us, %bb.t ] ; 2 uses
  %.01844.i123.i.i.i.i.us = phi i32 [ %i.ez, %_ZN7rocksdbrSERNS_11Unsigned128Ej.exit.i128.i.i.i.i.us ], [ %i.dw, %bb.t ] ; 2 uses
  %.02043.i124.i.i.i.i.us = phi i32 [ %i.fi, %_ZN7rocksdbrSERNS_11Unsigned128Ej.exit.i128.i.i.i.i.us ], [ %.068.i.i.i.i.us, %bb.t ]
  %.sroa.8.042.i125.i.i.i.i.us = phi i64 [ %.sroa.8.1.i130.i.i.i.i.us, %_ZN7rocksdbrSERNS_11Unsigned128Ej.exit.i128.i.i.i.i.us ], [ %i.du, %bb.t ] ; 2 uses
  %.sroa.08.041.i126.i.i.i.i.us = phi i64 [ %.sroa.08.1.i129.i.i.i.i.us, %_ZN7rocksdbrSERNS_11Unsigned128Ej.exit.i128.i.i.i.i.us ], [ %i.dy, %bb.t ] ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !129 ; 2 uses
  %i.ex = xor i64 %.sroa.08.041.i126.i.i.i.i.us, %.sroa.03.0.copyload545.i122.i.i.i.i.us ; 2 uses
  %i.ey = xor i64 %.sroa.8.042.i125.i.i.i.i.us, %.sroa.6.0.copyload46.i121.i.i.i.i.us ; 4 uses
  %i.ez = xor i32 %i.ew, %.01844.i123.i.i.i.i.us  ; 2 uses
  %i.fa = icmp eq i64 %.sroa.03.0.copyload545.i122.i.i.i.i.us, %.sroa.08.041.i126.i.i.i.i.us ; 3 uses
  %i.fb = icmp eq i64 %.sroa.6.0.copyload46.i121.i.i.i.i.us, %.sroa.8.042.i125.i.i.i.i.us
  %i.fc = select i1 %i.fa, i1 %i.fb, i1 false
  br i1 %i.fc, label %_ZN7rocksdb6ribbon10BandingAddILb1ENS0_15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEEZNS0_15BandingAddRangeIS7_S7_St15_Deque_iteratorImRmPmEEEbPT_RKT0_T1_SI_E20NoopBacktrackStorageEEbPSF_NSF_5IndexENSF_9ResultRowENSF_8CoeffRowEPSI_PSL_.exit142.i.i.i.i.us, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i120.i.i.i.i.us
  %i.fd = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ex, i1 true) ; 4 uses
  %i.fe = trunc nuw nsw i64 %i.fd to i32
  %i.ff = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ey, i1 true) ; 2 uses
  %i.fg = trunc nuw nsw i64 %i.ff to i32
  %i.fh = or disjoint i32 %i.fg, 64
  %.0.i.i127.i.i.i.i.us = select i1 %i.fa, i32 %i.fh, i32 %i.fe
  %i.fi = add i32 %.0.i.i127.i.i.i.i.us, %.02043.i124.i.i.i.i.us ; 2 uses
  br i1 %i.fa, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fj = lshr i64 %i.ey, %i.fd
  %i.fk = shl i64 %i.ey, 1
  %i.fl = xor i64 %i.fd, 63
  %i.fm = shl i64 %i.fk, %i.fl
  %i.fn = lshr exact i64 %i.ex, %i.fd
  %i.fo = or i64 %i.fm, %i.fn
  br label %_ZN7rocksdbrSERNS_11Unsigned128Ej.exit.i128.i.i.i.i.us

bb.w:                                             ; preds = %bb.u
  %i.fp = lshr exact i64 %i.ey, %i.ff
  br label %_ZN7rocksdbrSERNS_11Unsigned128Ej.exit.i128.i.i.i.i.us

_ZN7rocksdbrSERNS_11Unsigned128Ej.exit.i128.i.i.i.i.us: ; preds = %bb.w, %bb.v
  %.sroa.08.1.i129.i.i.i.i.us = phi i64 [ %i.fo, %bb.v ], [ %i.fp, %bb.w ] ; 2 uses
  %.sroa.8.1.i130.i.i.i.i.us = phi i64 [ %i.fj, %bb.v ], [ 0, %bb.w ] ; 2 uses
  %i.fq = zext i32 %i.fi to i64                   ; 2 uses
  %i.fr = getelementptr inbounds nuw [16 x i8], ptr %.val86.i.i.i.i.us, i64 %i.fq ; 3 uses
  %.sroa.03.0.copyload5.i131.i.i.i.i.us = load i64, ptr %i.fr, align 8, !tbaa !361 ; 2 uses
  %.sroa.6.0..sroa_idx.i132.i.i.i.i.us = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %.sroa.6.0.copyload.i133.i.i.i.i.us = load i64, ptr %.sroa.6.0..sroa_idx.i132.i.i.i.i.us, align 8, !tbaa !361 ; 2 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %.val87.i.i.i.i.us, i64 %i.fq ; 2 uses
  %i.ft = icmp eq i64 %.sroa.03.0.copyload5.i131.i.i.i.i.us, 0
  %i.fu = icmp eq i64 %.sroa.6.0.copyload.i133.i.i.i.i.us, 0
  %i.fv = select i1 %i.ft, i1 %i.fu, i1 false
  br i1 %i.fv, label %.split63.thread.i.i.i.i.us, label %.lr.ph.i120.i.i.i.i.us

_ZN7rocksdb6ribbon10BandingAddILb1ENS0_15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEEZNS0_15BandingAddRangeIS7_S7_St15_Deque_iteratorImRmPmEEEbPT_RKT0_T1_SI_E20NoopBacktrackStorageEEbPSF_NSF_5IndexENSF_9ResultRowENSF_8CoeffRowEPSI_PSL_.exit142.i.i.i.i.us: ; preds = %.lr.ph.i120.i.i.i.i.us
  %i.fw = icmp eq i32 %.01844.i123.i.i.i.i.us, %i.ew
  %cond.fr39.i.i.i.i.us = freeze i1 %i.fw
  br i1 %cond.fr39.i.i.i.i.us, label %.split63.i.i.i.i.us.backedge, label %.thread83.i.i.i.i.us

.split63.thread.i.i.i.i.us:                       ; preds = %_ZN7rocksdbrSERNS_11Unsigned128Ej.exit.i128.i.i.i.i.us, %bb.t
  %.lcssa37.i135.i.i.i.i.us = phi ptr [ %i.eq, %bb.t ], [ %i.fr, %_ZN7rocksdbrSERNS_11Unsigned128Ej.exit.i128.i.i.i.i.us ] ; 2 uses
  %.sroa.08.0.lcssa.i136.i.i.i.i.us = phi i64 [ %i.dy, %bb.t ], [ %.sroa.08.1.i129.i.i.i.i.us, %_ZN7rocksdbrSERNS_11Unsigned128Ej.exit.i128.i.i.i.i.us ]
  %.sroa.8.0.lcssa.i137.i.i.i.i.us = phi i64 [ %i.du, %bb.t ], [ %.sroa.8.1.i130.i.i.i.i.us, %_ZN7rocksdbrSERNS_11Unsigned128Ej.exit.i128.i.i.i.i.us ]
  %.018.lcssa.i138.i.i.i.i.us = phi i32 [ %i.dw, %bb.t ], [ %i.ez, %_ZN7rocksdbrSERNS_11Unsigned128Ej.exit.i128.i.i.i.i.us ]
  %.lcssa.i139.i.i.i.i.us = phi ptr [ %i.er, %bb.t ], [ %i.fs, %_ZN7rocksdbrSERNS_11Unsigned128Ej.exit.i128.i.i.i.i.us ]
  %.sroa.6.0..sroa_idx.le.i140.i.i.i.i.us = getelementptr inbounds nuw i8, ptr %.lcssa37.i135.i.i.i.i.us, i64 8
  store i64 %.sroa.08.0.lcssa.i136.i.i.i.i.us, ptr %.lcssa37.i135.i.i.i.i.us, align 8, !tbaa !361
  store i64 %.sroa.8.0.lcssa.i137.i.i.i.i.us, ptr %.sroa.6.0..sroa_idx.le.i140.i.i.i.i.us, align 8, !tbaa !361
  store i32 %.018.lcssa.i138.i.i.i.i.us, ptr %.lcssa.i139.i.i.i.i.us, align 4, !tbaa !129
  br label %.split63.i.i.i.i.us.backedge

.split63.i.i.i.i.us.backedge:                     ; preds = %.split63.thread.i.i.i.i.us, %_ZN7rocksdb6ribbon10BandingAddILb1ENS0_15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEEZNS0_15BandingAddRangeIS7_S7_St15_Deque_iteratorImRmPmEEEbPT_RKT0_T1_SI_E20NoopBacktrackStorageEEbPSF_NSF_5IndexENSF_9ResultRowENSF_8CoeffRowEPSI_PSL_.exit142.i.i.i.i.us
  br label %.split63.i.i.i.i.us

bb.x:                                             ; preds = %_ZNSt15_Deque_iteratorImRmPmEppEv.exit90.i.i.i.i.us
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %.val86.i.i.i.i.us, i64 %.068.in.i.i.i.i.us ; 3 uses
  %.sroa.03.0.copyload538.i91.i.i.i.i.us = load i64, ptr %i.fx, align 8, !tbaa !361 ; 2 uses
  %.sroa.6.0..sroa_idx39.i92.i.i.i.i.us = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %.sroa.6.0.copyload40.i93.i.i.i.i.us = load i64, ptr %.sroa.6.0..sroa_idx39.i92.i.i.i.i.us, align 8, !tbaa !361 ; 2 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %.val87.i.i.i.i.us, i64 %.068.in.i.i.i.i.us ; 2 uses
  %i.fz = icmp eq i64 %.sroa.03.0.copyload538.i91.i.i.i.i.us, 0
  %i.ga = icmp eq i64 %.sroa.6.0.copyload40.i93.i.i.i.i.us, 0
  %i.gb = select i1 %i.fz, i1 %i.ga, i1 false
  br i1 %i.gb, label %_ZN7rocksdb6ribbon10BandingAddILb1ENS0_15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEEZNS0_15BandingAddRangeIS7_S7_St15_Deque_iteratorImRmPmEEEbPT_RKT0_T1_SI_E20NoopBacktrackStorageEEbPSF_NSF_5IndexENSF_9ResultRowENSF_8CoeffRowEPSI_PSL_.exit116.thread.i.i.i.i, label %.lr.ph.i94.i.i.i.i.us

.lr.ph.i94.i.i.i.i.us:                            ; preds = %bb.x, %_ZN7rocksdbrSERNS_11Unsigned128Ej.exit.i102.i.i.i.i.us
  %i.gc = phi ptr [ %i.gz, %_ZN7rocksdbrSERNS_11Unsigned128Ej.exit.i102.i.i.i.i.us ], [ %i.fy, %bb.x ]
  %.sroa.6.0.copyload46.i95.i.i.i.i.us = phi i64 [ %.sroa.6.0.copyload.i107.i.i.i.i.us, %_ZN7rocksdbrSERNS_11Unsigned128Ej.exit.i102.i.i.i.i.us ], [ %.sroa.6.0.copyload40.i93.i.i.i.i.us, %bb.x ] ; 2 uses
  %.sroa.03.0.copyload545.i96.i.i.i.i.us = phi i64 [ %.sroa.03.0.copyload5.i105.i.i.i.i.us, %_ZN7rocksdbrSERNS_11Unsigned128Ej.exit.i102.i.i.i.i.us ], [ %.sroa.03.0.copyload538.i91.i.i.i.i.us, %bb.x ] ; 2 uses
  %.01844.i97.i.i.i.i.us = phi i32 [ %i.gg, %_ZN7rocksdbrSERNS_11Unsigned128Ej.exit.i102.i.i.i.i.us ], [ %i.dw, %bb.x ] ; 2 uses
  %.02043.i98.i.i.i.i.us = phi i32 [ %i.gp, %_ZN7rocksdbrSERNS_11Unsigned128Ej.exit.i102.i.i.i.i.us ], [ %.068.i.i.i.i.us, %bb.x ]
  %.sroa.8.042.i99.i.i.i.i.us = phi i64 [ %.sroa.8.1.i104.i.i.i.i.us, %_ZN7rocksdbrSERNS_11Unsigned128Ej.exit.i102.i.i.i.i.us ], [ %i.du, %bb.x ] ; 2 uses
  %.sroa.08.041.i100.i.i.i.i.us = phi i64 [ %.sroa.08.1.i103.i.i.i.i.us, %_ZN7rocksdbrSERNS_11Unsigned128Ej.exit.i102.i.i.i.i.us ], [ %i.dy, %bb.x ] ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !129 ; 2 uses
  %i.ge = xor i64 %.sroa.08.041.i100.i.i.i.i.us, %.sroa.03.0.copyload545.i96.i.i.i.i.us ; 2 uses
  %i.gf = xor i64 %.sroa.8.042.i99.i.i.i.i.us, %.sroa.6.0.copyload46.i95.i.i.i.i.us ; 4 uses
  %i.gg = xor i32 %i.gd, %.01844.i97.i.i.i.i.us   ; 2 uses
  %i.gh = icmp eq i64 %.sroa.03.0.copyload545.i96.i.i.i.i.us, %.sroa.08.041.i100.i.i.i.i.us ; 3 uses
  %i.gi = icmp eq i64 %.sroa.6.0.copyload46.i95.i.i.i.i.us, %.sroa.8.042.i99.i.i.i.i.us
  %i.gj = select i1 %i.gh, i1 %i.gi, i1 false
  br i1 %i.gj, label %_ZN7rocksdb6ribbon10BandingAddILb1ENS0_15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEEZNS0_15BandingAddRangeIS7_S7_St15_Deque_iteratorImRmPmEEEbPT_RKT0_T1_SI_E20NoopBacktrackStorageEEbPSF_NSF_5IndexENSF_9ResultRowENSF_8CoeffRowEPSI_PSL_.exit116.i.i.i.i.us, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i94.i.i.i.i.us
  %i.gk = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ge, i1 true) ; 4 uses
  %i.gl = trunc nuw nsw i64 %i.gk to i32
  %i.gm = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.gf, i1 true) ; 2 uses
  %i.gn = trunc nuw nsw i64 %i.gm to i32
  %i.go = or disjoint i32 %i.gn, 64
  %.0.i.i101.i.i.i.i.us = select i1 %i.gh, i32 %i.go, i32 %i.gl
  %i.gp = add i32 %.0.i.i101.i.i.i.i.us, %.02043.i98.i.i.i.i.us ; 2 uses
  br i1 %i.gh, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gq = lshr i64 %i.gf, %i.gk
  %i.gr = shl i64 %i.gf, 1
  %i.gs = xor i64 %i.gk, 63
  %i.gt = shl i64 %i.gr, %i.gs
  %i.gu = lshr exact i64 %i.ge, %i.gk
  %i.gv = or i64 %i.gt, %i.gu
  br label %_ZN7rocksdbrSERNS_11Unsigned128Ej.exit.i102.i.i.i.i.us

bb.aa:                                            ; preds = %bb.y
  %i.gw = lshr exact i64 %i.gf, %i.gm
  br label %_ZN7rocksdbrSERNS_11Unsigned128Ej.exit.i102.i.i.i.i.us

_ZN7rocksdbrSERNS_11Unsigned128Ej.exit.i102.i.i.i.i.us: ; preds = %bb.aa, %bb.z
  %.sroa.08.1.i103.i.i.i.i.us = phi i64 [ %i.gv, %bb.z ], [ %i.gw, %bb.aa ] ; 2 uses
  %.sroa.8.1.i104.i.i.i.i.us = phi i64 [ %i.gq, %bb.z ], [ 0, %bb.aa ] ; 2 uses
  %i.gx = zext i32 %i.gp to i64                   ; 2 uses
  %i.gy = getelementptr inbounds nuw [16 x i8], ptr %.val86.i.i.i.i.us, i64 %i.gx ; 3 uses
  %.sroa.03.0.copyload5.i105.i.i.i.i.us = load i64, ptr %i.gy, align 8, !tbaa !361 ; 2 uses
  %.sroa.6.0..sroa_idx.i106.i.i.i.i.us = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %.sroa.6.0.copyload.i107.i.i.i.i.us = load i64, ptr %.sroa.6.0..sroa_idx.i106.i.i.i.i.us, align 8, !tbaa !361 ; 2 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %.val87.i.i.i.i.us, i64 %i.gx ; 2 uses
  %i.ha = icmp eq i64 %.sroa.03.0.copyload5.i105.i.i.i.i.us, 0
  %i.hb = icmp eq i64 %.sroa.6.0.copyload.i107.i.i.i.i.us, 0
  %i.hc = select i1 %i.ha, i1 %i.hb, i1 false
  br i1 %i.hc, label %_ZN7rocksdb6ribbon10BandingAddILb1ENS0_15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEEZNS0_15BandingAddRangeIS7_S7_St15_Deque_iteratorImRmPmEEEbPT_RKT0_T1_SI_E20NoopBacktrackStorageEEbPSF_NSF_5IndexENSF_9ResultRowENSF_8CoeffRowEPSI_PSL_.exit116.thread.i.i.i.i, label %.lr.ph.i94.i.i.i.i.us

_ZN7rocksdb6ribbon10BandingAddILb1ENS0_15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEEZNS0_15BandingAddRangeIS7_S7_St15_Deque_iteratorImRmPmEEEbPT_RKT0_T1_SI_E20NoopBacktrackStorageEEbPSF_NSF_5IndexENSF_9ResultRowENSF_8CoeffRowEPSI_PSL_.exit116.i.i.i.i.us: ; preds = %.lr.ph.i94.i.i.i.i.us
  %i.hd = icmp eq i32 %.01844.i97.i.i.i.i.us, %i.gd
  %cond.fr.i.i.i.i.us = freeze i1 %i.hd
  br i1 %cond.fr.i.i.i.i.us, label %.loopexit, label %.thread83.i.i.i.i.us

.thread83.i.i.i.i.us:                             ; preds = %_ZN7rocksdb6ribbon10BandingAddILb1ENS0_15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEEZNS0_15BandingAddRangeIS7_S7_St15_Deque_iteratorImRmPmEEEbPT_RKT0_T1_SI_E20NoopBacktrackStorageEEbPSF_NSF_5IndexENSF_9ResultRowENSF_8CoeffRowEPSI_PSL_.exit142.i.i.i.i.us, %_ZN7rocksdb6ribbon10BandingAddILb1ENS0_15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEEZNS0_15BandingAddRangeIS7_S7_St15_Deque_iteratorImRmPmEEEbPT_RKT0_T1_SI_E20NoopBacktrackStorageEEbPSF_NSF_5IndexENSF_9ResultRowENSF_8CoeffRowEPSI_PSL_.exit116.i.i.i.i.us
  %i.he = add nuw nsw i32 %.012.i.us186, 1
  %i.hf = and i32 %i.he, 255                      ; 2 uses
  %.not.i69.us = icmp eq i32 %i.hf, %.039
  br i1 %.not.i69.us, label %_ZN7rocksdb6ribbon15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE23ResetAndFindSeedToSolveISt15_Deque_iteratorImRmPmEEEbjT_SC_jj.exit, label %.thread.split.split.us, !llvm.loop !505

.loopexit140.split.split.us:                      ; preds = %_ZNSt10unique_ptrIA_N7rocksdb11Unsigned128ESt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit.i.i.us191, %bb.r
  %lpad.loopexit.us197 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit140

.thread.split.split:                              ; preds = %.thread.split, %.thread83.i.i.i.i.loopexit139
  %i.hg = phi ptr [ %i.hs, %.thread83.i.i.i.i.loopexit139 ], [ null, %.thread.split ] ; 4 uses
  %i.hh = phi ptr [ %i.ht, %.thread83.i.i.i.i.loopexit139 ], [ null, %.thread.split ] ; 4 uses
  %.012.i = phi i32 [ %i.jy, %.thread83.i.i.i.i.loopexit139 ], [ %.039, %.thread.split ] ; 2 uses
  %i.hi = zext nneg i32 %.012.i to i64
  %i.hj = mul i64 %i.hi, -4070662928558531325     ; 2 uses
  %i.hk = lshr i64 %i.hj, 4
  %i.hl = and i64 %i.hk, 252645135
  %i.hm = xor i64 %i.hl, %i.hj                    ; 2 uses
  %i.hn = trunc i64 %i.hm to i32                  ; 2 uses
  store i32 %i.hn, ptr %3, align 8, !tbaa !197
  %i.ho = load i32, ptr %i.ch, align 4, !tbaa !490
  %i.hp = icmp ugt i32 %.fr215, %i.ho
  br i1 %i.hp, label %bb.ab, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.thread.split.split
  call void @llvm.memset.p0.i64(ptr align 8 %i.hh, i8 0, i64 %i.cj, i1 false), !tbaa !361
  call void @llvm.memset.p0.i64(ptr align 4 %i.hg, i8 0, i64 %i.ck, i1 false), !tbaa !129
  br label %_ZN7rocksdb6ribbon15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE5ResetEjj.exit.i

bb.ab:                                            ; preds = %.thread.split.split
  %i.hq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cj) #40
          to label %.noexc unwind label %.loopexit140.split.split ; 3 uses

.noexc:                                           ; preds = %bb.ab
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.hq, i8 0, i64 %i.cj, i1 false)
  store ptr %i.hq, ptr %i.bb, align 8, !tbaa !488
  %.not.i.i.i.i = icmp eq ptr %i.hh, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIA_N7rocksdb11Unsigned128ESt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit.i.i, label %_ZNKSt14default_deleteIA_N7rocksdb11Unsigned128EEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i

_ZNKSt14default_deleteIA_N7rocksdb11Unsigned128EEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i: ; preds = %.noexc
  call void @_ZdaPv(ptr noundef nonnull %i.hh) #39
  br label %_ZNSt10unique_ptrIA_N7rocksdb11Unsigned128ESt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit.i.i

_ZNSt10unique_ptrIA_N7rocksdb11Unsigned128ESt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIA_N7rocksdb11Unsigned128EEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i, %.noexc
  %i.hr = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ck) #40
          to label %.noexc70 unwind label %.loopexit140.split.split ; 3 uses

.noexc70:                                         ; preds = %_ZNSt10unique_ptrIA_N7rocksdb11Unsigned128ESt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hr, i8 0, i64 %i.ck, i1 false)
  store ptr %i.hr, ptr %i.ci, align 8, !tbaa !473
  %.not.i.i13.i.i = icmp eq ptr %i.hg, null
  br i1 %.not.i.i13.i.i, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.i.i, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i: ; preds = %.noexc70
  call void @_ZdaPv(ptr noundef nonnull %i.hg) #39
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.i.i

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i, %.noexc70
  store i32 %.fr215, ptr %i.ch, align 4, !tbaa !490
  br label %_ZN7rocksdb6ribbon15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE5ResetEjj.exit.i

_ZN7rocksdb6ribbon15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE5ResetEjj.exit.i: ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.i.i, %.preheader.i.i
  %i.hs = phi ptr [ %i.hr, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.i.i ], [ %i.hg, %.preheader.i.i ] ; 3 uses
  %i.ht = phi ptr [ %i.hq, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.i.i ], [ %i.hh, %.preheader.i.i ] ; 3 uses
  store i32 %i.cl, ptr %i.cm, align 8, !tbaa !504
  %i.hu = and i64 %i.hm, 4294967295
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.i.i.i, %_ZN7rocksdb6ribbon15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE5ResetEjj.exit.i
  %.sroa.25.0.i.i.i.i = phi ptr [ %.sroa.25.1.i.i.i.i, %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.i.i.i ], [ %i.cg, %_ZN7rocksdb6ribbon15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE5ResetEjj.exit.i ] ; 2 uses
  %.sroa.20.0.i.i.i.i = phi ptr [ %.sroa.20.1.i.i.i.i, %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.i.i.i ], [ %i.cf, %_ZN7rocksdb6ribbon15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE5ResetEjj.exit.i ] ; 2 uses
  %.sroa.0.0.i.i.i.i = phi ptr [ %.sroa.0.1.i.i.i.i, %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.i.i.i ], [ %i.ce, %_ZN7rocksdb6ribbon15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE5ResetEjj.exit.i ] ; 2 uses
  %.val81.i.i.i.i = load i64, ptr %.sroa.0.0.i.i.i.i, align 8, !tbaa !361
  %i.hv = xor i64 %.val81.i.i.i.i, %i.hu          ; 2 uses
  %i.hw = mul i64 %i.hv, 7031196922566818317      ; 2 uses
  %i.hx = and i64 %i.hw, 4294967295
  %i.hy = mul nuw nsw i64 %i.hx, %i.co
  %i.hz = lshr i64 %i.hy, 32
  %i.ia = lshr i64 %i.hw, 32
  %i.ib = mul nuw nsw i64 %i.ia, %i.co
  %i.ic = add nuw nsw i64 %i.hz, %i.ib
  %i.id = lshr i64 %i.ic, 32                      ; 3 uses
  %i.ie = mul i64 %i.hv, -6572915358331089655     ; 4 uses
  %i.if = call noundef i64 @llvm.bswap.i64(i64 %i.ie)
  %i.ig = trunc i64 %i.if to i32                  ; 2 uses
  %i.ih = and i64 %i.ie, -2
  %i.ii = xor i64 %i.ih, -4366375858499063011     ; 2 uses
  %i.ij = getelementptr inbounds nuw [16 x i8], ptr %i.ht, i64 %i.id ; 3 uses
  %.sroa.03.0.copyload538.i.i.i.i.i = load i64, ptr %i.ij, align 8, !tbaa !361 ; 2 uses
  %.sroa.6.0..sroa_idx39.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %.sroa.6.0.copyload40.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx39.i.i.i.i.i, align 8, !tbaa !361 ; 2 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %i.id ; 2 uses
  %i.il = icmp eq i64 %.sroa.03.0.copyload538.i.i.i.i.i, 0
  %i.im = icmp eq i64 %.sroa.6.0.copyload40.i.i.i.i.i, 0
  %i.in = select i1 %i.il, i1 %i.im, i1 false
  br i1 %i.in, label %_ZN7rocksdb6ribbon10BandingAddILb1ENS0_15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEEZNS0_15BandingAddRangeIS7_S7_St15_Deque_iteratorImRmPmEEEbPT_RKT0_T1_SI_E20NoopBacktrackStorageEEbPSF_NSF_5IndexENSF_9ResultRowENSF_8CoeffRowEPSI_PSL_.exit.thread.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %bb.ac
  %i.io = trunc nuw nsw i64 %i.id to i32
  br label %.lr.ph.i.i.i.i.i

_ZN7rocksdb6ribbon10BandingAddILb1ENS0_15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEEZNS0_15BandingAddRangeIS7_S7_St15_Deque_iteratorImRmPmEEEbPT_RKT0_T1_SI_E20NoopBacktrackStorageEEbPSF_NSF_5IndexENSF_9ResultRowENSF_8CoeffRowEPSI_PSL_.exit.thread.i.i.i.i: ; preds = %_ZN7rocksdbrSERNS_11Unsigned128Ej.exit.i.i.i.i.i, %bb.ac
  %.lcssa37.i.i.i.i.i = phi ptr [ %i.ij, %bb.ac ], [ %i.jl, %_ZN7rocksdbrSERNS_11Unsigned128Ej.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.08.0.lcssa.i.i.i.i.i = phi i64 [ %i.ii, %bb.ac ], [ %.sroa.08.1.i.i.i.i.i, %_ZN7rocksdbrSERNS_11Unsigned128Ej.exit.i.i.i.i.i ]
  %.sroa.8.0.lcssa.i.i.i.i.i = phi i64 [ %i.ie, %bb.ac ], [ %.sroa.8.1.i.i.i.i.i, %_ZN7rocksdbrSERNS_11Unsigned128Ej.exit.i.i.i.i.i ]
  %.018.lcssa.i.i.i.i.i = phi i32 [ %i.ig, %bb.ac ], [ %i.it, %_ZN7rocksdbrSERNS_11Unsigned128Ej.exit.i.i.i.i.i ]
  %.lcssa.i.i.i.i.i = phi ptr [ %i.ik, %bb.ac ], [ %i.jm, %_ZN7rocksdbrSERNS_11Unsigned128Ej.exit.i.i.i.i.i ]
  %.sroa.6.0..sroa_idx.le.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.lcssa37.i.i.i.i.i, i64 8
  store i64 %.sroa.08.0.lcssa.i.i.i.i.i, ptr %.lcssa37.i.i.i.i.i, align 8, !tbaa !361
  store i64 %.sroa.8.0.lcssa.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.le.i.i.i.i.i, align 8, !tbaa !361
  store i32 %.018.lcssa.i.i.i.i.i, ptr %.lcssa.i.i.i.i.i, align 4, !tbaa !129
  br label %bb.ag

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN7rocksdbrSERNS_11Unsigned128Ej.exit.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i
  %i.ip = phi ptr [ %i.jm, %_ZN7rocksdbrSERNS_11Unsigned128Ej.exit.i.i.i.i.i ], [ %i.ik, %.lr.ph.i.preheader.i.i.i.i ]
  %.sroa.6.0.copyload46.i.i.i.i.i = phi i64 [ %.sroa.6.0.copyload.i.i.i.i.i, %_ZN7rocksdbrSERNS_11Unsigned128Ej.exit.i.i.i.i.i ], [ %.sroa.6.0.copyload40.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i ] ; 2 uses
  %.sroa.03.0.copyload545.i.i.i.i.i = phi i64 [ %.sroa.03.0.copyload5.i.i.i.i.i, %_ZN7rocksdbrSERNS_11Unsigned128Ej.exit.i.i.i.i.i ], [ %.sroa.03.0.copyload538.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i ] ; 2 uses
  %.01844.i.i.i.i.i = phi i32 [ %i.it, %_ZN7rocksdbrSERNS_11Unsigned128Ej.exit.i.i.i.i.i ], [ %i.ig, %.lr.ph.i.preheader.i.i.i.i ] ; 2 uses
  %.02043.i.i.i.i.i = phi i32 [ %i.jc, %_ZN7rocksdbrSERNS_11Unsigned128Ej.exit.i.i.i.i.i ], [ %i.io, %.lr.ph.i.preheader.i.i.i.i ]
  %.sroa.8.042.i.i.i.i.i = phi i64 [ %.sroa.8.1.i.i.i.i.i, %_ZN7rocksdbrSERNS_11Unsigned128Ej.exit.i.i.i.i.i ], [ %i.ie, %.lr.ph.i.preheader.i.i.i.i ] ; 2 uses
  %.sroa.08.041.i.i.i.i.i = phi i64 [ %.sroa.08.1.i.i.i.i.i, %_ZN7rocksdbrSERNS_11Unsigned128Ej.exit.i.i.i.i.i ], [ %i.ii, %.lr.ph.i.preheader.i.i.i.i ] ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !129 ; 2 uses
  %i.ir = xor i64 %.sroa.08.041.i.i.i.i.i, %.sroa.03.0.copyload545.i.i.i.i.i ; 2 uses
  %i.is = xor i64 %.sroa.8.042.i.i.i.i.i, %.sroa.6.0.copyload46.i.i.i.i.i ; 4 uses
  %i.it = xor i32 %i.iq, %.01844.i.i.i.i.i        ; 2 uses
  %i.iu = icmp eq i64 %.sroa.03.0.copyload545.i.i.i.i.i, %.sroa.08.041.i.i.i.i.i ; 3 uses
  %i.iv = icmp eq i64 %.sroa.6.0.copyload46.i.i.i.i.i, %.sroa.8.042.i.i.i.i.i
  %i.iw = select i1 %i.iu, i1 %i.iv, i1 false
  br i1 %i.iw, label %_ZN7rocksdb6ribbon10BandingAddILb1ENS0_15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEEZNS0_15BandingAddRangeIS7_S7_St15_Deque_iteratorImRmPmEEEbPT_RKT0_T1_SI_E20NoopBacktrackStorageEEbPSF_NSF_5IndexENSF_9ResultRowENSF_8CoeffRowEPSI_PSL_.exit.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.ix = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ir, i1 true) ; 4 uses
  %i.iy = trunc nuw nsw i64 %i.ix to i32
  %i.iz = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.is, i1 true) ; 2 uses
  %i.ja = trunc nuw nsw i64 %i.iz to i32
  %i.jb = or disjoint i32 %i.ja, 64
  %.0.i.i.i.i.i.i = select i1 %i.iu, i32 %i.jb, i32 %i.iy
  %i.jc = add i32 %.0.i.i.i.i.i.i, %.02043.i.i.i.i.i ; 2 uses
  br i1 %i.iu, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.jd = lshr exact i64 %i.is, %i.iz
  br label %_ZN7rocksdbrSERNS_11Unsigned128Ej.exit.i.i.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.je = lshr i64 %i.is, %i.ix
  %i.jf = shl i64 %i.is, 1
  %i.jg = xor i64 %i.ix, 63
  %i.jh = shl i64 %i.jf, %i.jg
  %i.ji = lshr exact i64 %i.ir, %i.ix
  %i.jj = or i64 %i.jh, %i.ji
  br label %_ZN7rocksdbrSERNS_11Unsigned128Ej.exit.i.i.i.i.i

_ZN7rocksdbrSERNS_11Unsigned128Ej.exit.i.i.i.i.i: ; preds = %bb.af, %bb.ae
  %.sroa.08.1.i.i.i.i.i = phi i64 [ %i.jj, %bb.af ], [ %i.jd, %bb.ae ] ; 2 uses
  %.sroa.8.1.i.i.i.i.i = phi i64 [ %i.je, %bb.af ], [ 0, %bb.ae ] ; 2 uses
  %i.jk = zext i32 %i.jc to i64                   ; 2 uses
  %i.jl = getelementptr inbounds nuw [16 x i8], ptr %i.ht, i64 %i.jk ; 3 uses
  %.sroa.03.0.copyload5.i.i.i.i.i = load i64, ptr %i.jl, align 8, !tbaa !361 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %.sroa.6.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !361 ; 2 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %i.jk ; 2 uses
  %i.jn = icmp eq i64 %.sroa.03.0.copyload5.i.i.i.i.i, 0
  %i.jo = icmp eq i64 %.sroa.6.0.copyload.i.i.i.i.i, 0
  %i.jp = select i1 %i.jn, i1 %i.jo, i1 false
  br i1 %i.jp, label %_ZN7rocksdb6ribbon10BandingAddILb1ENS0_15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEEZNS0_15BandingAddRangeIS7_S7_St15_Deque_iteratorImRmPmEEEbPT_RKT0_T1_SI_E20NoopBacktrackStorageEEbPSF_NSF_5IndexENSF_9ResultRowENSF_8CoeffRowEPSI_PSL_.exit.thread.i.i.i.i, label %.lr.ph.i.i.i.i.i

_ZN7rocksdb6ribbon10BandingAddILb1ENS0_15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEEZNS0_15BandingAddRangeIS7_S7_St15_Deque_iteratorImRmPmEEEbPT_RKT0_T1_SI_E20NoopBacktrackStorageEEbPSF_NSF_5IndexENSF_9ResultRowENSF_8CoeffRowEPSI_PSL_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.jq = icmp eq i32 %.01844.i.i.i.i.i, %i.iq
  br i1 %i.jq, label %bb.ag, label %.thread83.i.i.i.i.loopexit139

bb.ag:                                            ; preds = %_ZN7rocksdb6ribbon10BandingAddILb1ENS0_15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEEZNS0_15BandingAddRangeIS7_S7_St15_Deque_iteratorImRmPmEEEbPT_RKT0_T1_SI_E20NoopBacktrackStorageEEbPSF_NSF_5IndexENSF_9ResultRowENSF_8CoeffRowEPSI_PSL_.exit.i.i.i.i, %_ZN7rocksdb6ribbon10BandingAddILb1ENS0_15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEEZNS0_15BandingAddRangeIS7_S7_St15_Deque_iteratorImRmPmEEEbPT_RKT0_T1_SI_E20NoopBacktrackStorageEEbPSF_NSF_5IndexENSF_9ResultRowENSF_8CoeffRowEPSI_PSL_.exit.thread.i.i.i.i
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8 ; 2 uses
  %i.js = icmp eq ptr %i.jr, %.sroa.20.0.i.i.i.i
  br i1 %i.js, label %bb.ah, label %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.i.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.25.0.i.i.i.i, i64 8 ; 2 uses
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !352 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 512
  br label %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.i.i.i

_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.i.i.i:   ; preds = %bb.ah, %bb.ag
  %.sroa.25.1.i.i.i.i = phi ptr [ %i.jt, %bb.ah ], [ %.sroa.25.0.i.i.i.i, %bb.ag ]
  %.sroa.20.1.i.i.i.i = phi ptr [ %i.jv, %bb.ah ], [ %.sroa.20.0.i.i.i.i, %bb.ag ]
  %.sroa.0.1.i.i.i.i = phi ptr [ %i.ju, %bb.ah ], [ %i.jr, %bb.ag ] ; 2 uses
  %i.jw = icmp eq ptr %.sroa.0.1.i.i.i.i, %i.cd
  br i1 %i.jw, label %.loopexit, label %bb.ac

_ZN7rocksdb6ribbon10BandingAddILb1ENS0_15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEEZNS0_15BandingAddRangeIS7_S7_St15_Deque_iteratorImRmPmEEEbPT_RKT0_T1_SI_E20NoopBacktrackStorageEEbPSF_NSF_5IndexENSF_9ResultRowENSF_8CoeffRowEPSI_PSL_.exit116.thread.i.i.i.i: ; preds = %bb.x, %_ZN7rocksdbrSERNS_11Unsigned128Ej.exit.i102.i.i.i.i.us
  %.lcssa37.i109.i.i.i.i = phi ptr [ %i.gy, %_ZN7rocksdbrSERNS_11Unsigned128Ej.exit.i102.i.i.i.i.us ], [ %i.fx, %bb.x ] ; 2 uses
  %.sroa.08.0.lcssa.i110.i.i.i.i = phi i64 [ %.sroa.08.1.i103.i.i.i.i.us, %_ZN7rocksdbrSERNS_11Unsigned128Ej.exit.i102.i.i.i.i.us ], [ %i.dy, %bb.x ]
  %.sroa.8.0.lcssa.i111.i.i.i.i = phi i64 [ %.sroa.8.1.i104.i.i.i.i.us, %_ZN7rocksdbrSERNS_11Unsigned128Ej.exit.i102.i.i.i.i.us ], [ %i.du, %bb.x ]
  %.018.lcssa.i112.i.i.i.i = phi i32 [ %i.gg, %_ZN7rocksdbrSERNS_11Unsigned128Ej.exit.i102.i.i.i.i.us ], [ %i.dw, %bb.x ]
  %.lcssa.i113.i.i.i.i = phi ptr [ %i.gz, %_ZN7rocksdbrSERNS_11Unsigned128Ej.exit.i102.i.i.i.i.us ], [ %i.fy, %bb.x ]
  %.sroa.6.0..sroa_idx.le.i114.i.i.i.i = getelementptr inbounds nuw i8, ptr %.lcssa37.i109.i.i.i.i, i64 8
  store i64 %.sroa.08.0.lcssa.i110.i.i.i.i, ptr %.lcssa37.i109.i.i.i.i, align 8, !tbaa !361
  store i64 %.sroa.8.0.lcssa.i111.i.i.i.i, ptr %.sroa.6.0..sroa_idx.le.i114.i.i.i.i, align 8, !tbaa !361
  store i32 %.018.lcssa.i112.i.i.i.i, ptr %.lcssa.i113.i.i.i.i, align 4, !tbaa !129
  br label %.loopexit

.thread83.i.i.i.i.loopexit139:                    ; preds = %_ZN7rocksdb6ribbon10BandingAddILb1ENS0_15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEEZNS0_15BandingAddRangeIS7_S7_St15_Deque_iteratorImRmPmEEEbPT_RKT0_T1_SI_E20NoopBacktrackStorageEEbPSF_NSF_5IndexENSF_9ResultRowENSF_8CoeffRowEPSI_PSL_.exit.i.i.i.i
  %i.jx = add nuw nsw i32 %.012.i, 1
  %i.jy = and i32 %i.jx, 255                      ; 2 uses
  %.not.i69 = icmp eq i32 %i.jy, %.039
  br i1 %.not.i69, label %_ZN7rocksdb6ribbon15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE23ResetAndFindSeedToSolveISt15_Deque_iteratorImRmPmEEEbjT_SC_jj.exit, label %.thread.split.split, !llvm.loop !505

_ZN7rocksdb6ribbon15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE23ResetAndFindSeedToSolveISt15_Deque_iteratorImRmPmEEEbjT_SC_jj.exit: ; preds = %.thread83.i.i.i.i.loopexit139, %.thread83.i.i.i.i.us
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !174
  %i.kb = load ptr, ptr %i.e, align 8, !tbaa !360 ; 2 uses
  %i.kc = load ptr, ptr %i.g, align 8, !tbaa !360
  %i.kd = ptrtoint ptr %i.kb to i64
  %i.ke = ptrtoint ptr %i.kc to i64
  %i.kf = sub i64 %i.kd, %i.ke
  %i.kg = ashr exact i64 %i.kf, 3
  %i.kh = icmp ne ptr %i.kb, null
  %.neg.i.i71 = sext i1 %i.kh to i64
  %i.ki = add nsw i64 %i.kg, %.neg.i.i71
  %i.kj = shl nsw i64 %i.ki, 6
  %i.kk = load ptr, ptr %i.c, align 8, !tbaa !355
  %i.kl = load ptr, ptr %i.q, align 8, !tbaa !356
  %i.km = ptrtoint ptr %i.kk to i64
  %i.kn = ptrtoint ptr %i.kl to i64
  %i.ko = sub i64 %i.km, %i.kn
  %i.kp = ashr exact i64 %i.ko, 3
  %i.kq = add nsw i64 %i.kj, %i.kp
  %i.kr = load ptr, ptr %i.x, align 8, !tbaa !365
  %i.ks = load ptr, ptr %i.d, align 8, !tbaa !355
  %i.kt = ptrtoint ptr %i.kr to i64
  %i.ku = ptrtoint ptr %i.ks to i64
  %i.kv = sub i64 %i.kt, %i.ku
  %i.kw = ashr exact i64 %i.kv, 3
  %i.kx = add nsw i64 %i.kq, %i.kw
  invoke void (i8, ptr, ptr, ...) @_ZN7rocksdb3LogENS_12InfoLogLevelEPNS_6LoggerEPKcz(i8 noundef zeroext 2, ptr noundef %i.ka, ptr noundef nonnull @.str.33, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.8, i64 32), i64 noundef %i.kx, i64 noundef %i.bc)
          to label %bb.ai unwind label %.loopexit.split-lp

bb.ai:                                            ; preds = %_ZN7rocksdb6ribbon15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE23ResetAndFindSeedToSolveISt15_Deque_iteratorImRmPmEEEbjT_SC_jj.exit
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  call fastcc void @_ZN7rocksdb12_GLOBAL__N_122XXPH3FilterBitsBuilder15SwapEntriesWithEPS1_(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef %i.ky)
  %i.kz = invoke { ptr, i64 } @_ZN7rocksdb12_GLOBAL__N_125FastLocalBloomBitsBuilder6FinishEPSt10unique_ptrIA_KcSt14default_deleteIS4_EEPNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(316) %i.ky, ptr noundef %1, ptr noundef %2)
          to label %bb.aj unwind label %.loopexit.split-lp ; 2 uses

bb.aj:                                            ; preds = %bb.ai
  %i.la = extractvalue { ptr, i64 } %i.kz, 0
  %i.lb = extractvalue { ptr, i64 } %i.kz, 1
  br label %bb.bj

.loopexit140.split.split:                         ; preds = %bb.ab, %_ZNSt10unique_ptrIA_N7rocksdb11Unsigned128ESt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit140

.loopexit.split-lp:                               ; preds = %_ZN7rocksdb6ribbon15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE23ResetAndFindSeedToSolveISt15_Deque_iteratorImRmPmEEEbjT_SC_jj.exit, %bb.ai
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit140

.loopexit:                                        ; preds = %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.i.i.i, %_ZN7rocksdb6ribbon10BandingAddILb1ENS0_15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEEZNS0_15BandingAddRangeIS7_S7_St15_Deque_iteratorImRmPmEEEbPT_RKT0_T1_SI_E20NoopBacktrackStorageEEbPSF_NSF_5IndexENSF_9ResultRowENSF_8CoeffRowEPSI_PSL_.exit116.i.i.i.i.us, %_ZN7rocksdb6ribbon15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE5ResetEjj.exit.i.us, %_ZN7rocksdb6ribbon10BandingAddILb1ENS0_15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEEZNS0_15BandingAddRangeIS7_S7_St15_Deque_iteratorImRmPmEEEbPT_RKT0_T1_SI_E20NoopBacktrackStorageEEbPSF_NSF_5IndexENSF_9ResultRowENSF_8CoeffRowEPSI_PSL_.exit116.thread.i.i.i.i
  %i.lc = phi i32 [ %i.dd, %_ZN7rocksdb6ribbon10BandingAddILb1ENS0_15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEEZNS0_15BandingAddRangeIS7_S7_St15_Deque_iteratorImRmPmEEEbPT_RKT0_T1_SI_E20NoopBacktrackStorageEEbPSF_NSF_5IndexENSF_9ResultRowENSF_8CoeffRowEPSI_PSL_.exit116.i.i.i.i.us ], [ %i.dd, %_ZN7rocksdb6ribbon10BandingAddILb1ENS0_15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEEZNS0_15BandingAddRangeIS7_S7_St15_Deque_iteratorImRmPmEEEbPT_RKT0_T1_SI_E20NoopBacktrackStorageEEbPSF_NSF_5IndexENSF_9ResultRowENSF_8CoeffRowEPSI_PSL_.exit116.thread.i.i.i.i ], [ %i.cu, %_ZN7rocksdb6ribbon15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE5ResetEjj.exit.i.us ], [ %i.hn, %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  invoke fastcc void @_ZN7rocksdb12_GLOBAL__N_122XXPH3FilterBitsBuilder30MaybeVerifyHashEntriesChecksumEv(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(312) %0)
          to label %bb.ak unwind label %bb.ao

bb.ak:                                            ; preds = %.loopexit
  %i.ld = load i8, ptr %6, align 8, !tbaa !292
  %i.le = icmp eq i8 %i.ld, 0
  br i1 %i.le, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !174
  %i.lh = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !304
  invoke void (i8, ptr, ptr, ...) @_ZN7rocksdb3LogENS_12InfoLogLevelEPNS_6LoggerEPKcz(i8 noundef zeroext 2, ptr noundef %i.lg, ptr noundef nonnull @.str.34, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.8, i64 32), ptr noundef %i.li)
          to label %bb.am unwind label %bb.ap

bb.am:                                            ; preds = %bb.al
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.bh, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.lj = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7rocksdb6StatusaSERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.bh unwind label %bb.ap     ; 0 uses

bb.ao:                                            ; preds = %.loopexit
  %i.lk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit99

bb.ap:                                            ; preds = %bb.an, %bb.al
  %i.ll = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.aq:                                            ; preds = %bb.ak
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ln = load i8, ptr %i.lm, align 8, !tbaa !346, !range !101, !noundef !59
  %i.lo = trunc nuw i8 %i.ln to i1
  br i1 %i.lo, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call fastcc void @_ZN7rocksdb12_GLOBAL__N_122XXPH3FilterBitsBuilder12ResetEntriesEv(ptr noundef nonnull align 8 dereferenceable(312) %0)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.lp = lshr i32 %i.lc, 4
  %i.lq = and i32 %i.lp, 15
  %i.lr = xor i32 %i.lq, %i.lc
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  store ptr null, ptr %7, align 8, !tbaa !366
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  store ptr null, ptr %8, align 8, !tbaa !368
  %i.ls = load i64, ptr %i.b, align 8, !tbaa !361
  %i.lt = invoke fastcc noundef i64 @_ZN7rocksdb12_GLOBAL__N_122XXPH3FilterBitsBuilder21AllocateMaybeRoundingEmmPSt10unique_ptrIA_cSt14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(312) %0, i64 noundef %i.ls, i64 noundef %i.ae, ptr noundef %7)
          to label %bb.at unwind label %bb.aw     ; 5 uses

bb.at:                                            ; preds = %bb.as
  store i64 %i.lt, ptr %i.b, align 8, !tbaa !361
  %i.lu = load ptr, ptr %i.bd, align 8, !tbaa !136 ; 3 uses
  %.not138 = icmp eq ptr %i.lu, null
  br i1 %.not138, label %bb.ay, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !16
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 32
  %i.lx = load ptr, ptr %i.lw, align 8
  invoke void %i.lx(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.lu, i64 noundef %i.lt, ptr noundef nonnull %8)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.ly = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !304 ; 2 uses
  %.not.i.i72 = icmp eq ptr %i.lz, null
  br i1 %.not.i.i72, label %_ZN7rocksdb6StatusD2Ev.exit74, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i73

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i73: ; preds = %bb.av
  call void @_ZdaPv(ptr noundef nonnull %i.lz) #39
  br label %_ZN7rocksdb6StatusD2Ev.exit74

_ZN7rocksdb6StatusD2Ev.exit74:                    ; preds = %bb.av, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br label %bb.ay

bb.aw:                                            ; preds = %bb.as
  %i.ma = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ax:                                            ; preds = %bb.au
  %i.mb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br label %bb.bg

bb.ay:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit74, %bb.at
  %i.mc = load ptr, ptr %7, align 8, !tbaa !304   ; 21 uses
  %i.md = lshr i32 %.fr215, 7                     ; 9 uses
  %i.me = lshr i64 %i.lt, 4
  %i.mf = trunc i64 %i.me to i32                  ; 3 uses
  %i.mg = icmp eq i32 %i.md, 0
  br i1 %i.mg, label %_ZN7rocksdb6ribbon31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE13BackSubstFromINS0_15StandardBandingIS5_EEEEvRKT_.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.mh = add nsw i32 %i.md, -1
  %i.mi = add i32 %i.mh, %i.mf                    ; 2 uses
  %i.mj = udiv i32 %i.mi, %i.md                   ; 3 uses
  %i.mk = icmp ugt i32 %i.mj, 32
  br i1 %i.mk, label %_ZN7rocksdb6ribbon31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE19PrepareForNumStartsEj.exit.thread126.i.i, label %_ZN7rocksdb6ribbon31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE19PrepareForNumStartsEj.exit.i.i

_ZN7rocksdb6ribbon31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE19PrepareForNumStartsEj.exit.thread126.i.i: ; preds = %bb.az
  %i.ml = shl nuw nsw i32 %i.md, 5
  br label %.preheader.i.i78

_ZN7rocksdb6ribbon31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE19PrepareForNumStartsEj.exit.i.i: ; preds = %bb.az
  %i.mm = mul nuw nsw i32 %i.mj, %i.md
  %i.mn = sub i32 %i.mm, %i.mf
  %i.mo = icmp ugt i32 %i.md, %i.mi
  br i1 %i.mo, label %_ZN7rocksdb6ribbon31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE13BackSubstFromINS0_15StandardBandingIS5_EEEEvRKT_.exit, label %.preheader.i.i78

.preheader.i.i78:                                 ; preds = %_ZN7rocksdb6ribbon31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE19PrepareForNumStartsEj.exit.i.i, %_ZN7rocksdb6ribbon31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE19PrepareForNumStartsEj.exit.thread126.i.i
  %.val54.fr133.i.i = phi i32 [ 32, %_ZN7rocksdb6ribbon31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE19PrepareForNumStartsEj.exit.thread126.i.i ], [ %i.mj, %_ZN7rocksdb6ribbon31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE19PrepareForNumStartsEj.exit.i.i ] ; 5 uses
  %.0.i.i132.i.i = phi i32 [ %i.ml, %_ZN7rocksdb6ribbon31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE19PrepareForNumStartsEj.exit.thread126.i.i ], [ %i.mf, %_ZN7rocksdb6ribbon31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE19PrepareForNumStartsEj.exit.i.i ] ; 2 uses
  %.val53131.i.i = phi i32 [ 0, %_ZN7rocksdb6ribbon31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE19PrepareForNumStartsEj.exit.thread126.i.i ], [ %i.mn, %_ZN7rocksdb6ribbon31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE19PrepareForNumStartsEj.exit.i.i ] ; 4 uses
  %i.mp = zext nneg i32 %.val54.fr133.i.i to i64  ; 11 uses
  %i.mq = shl nuw nsw i64 %i.mp, 4                ; 2 uses
  %i.mr = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.mq) #40
          to label %.noexc80 unwind label %bb.bd  ; 24 uses

.noexc80:                                         ; preds = %.preheader.i.i78
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.mr, i8 0, i64 %i.mq, i1 false)
  %i.ms = icmp ugt i32 %i.md, %.val53131.i.i
  br i1 %i.ms, label %.lr.ph.i.i.preheader, label %.lr.ph95.i.i

.lr.ph.i.i.preheader:                             ; preds = %.noexc80
  %11 = load ptr, ptr %i.bb, align 8
  %12 = load ptr, ptr %i.ci, align 8
  %13 = lshr i64 %i.bc, 7
  %i.mt = add nsw i64 %i.mp, -1                   ; 2 uses
  %i.mu = shl nuw nsw i64 %i.mp, 4                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.mr, i64 %i.mu
  %scevgep418 = getelementptr i8, ptr %i.mc, i64 %i.mu
  %min.iters.check426 = icmp ult i32 %.val54.fr133.i.i, 4
  %n.vec428 = and i64 %i.mp, 60                   ; 3 uses
  %cmp.n441 = icmp eq i64 %n.vec428, %i.mp
  %min.iters.check = icmp ult i32 %.val54.fr133.i.i, 8
  %i.mv = trunc nsw i64 %i.mt to i32
  %i.mw = icmp ugt i64 %i.mt, 4294967295
  %n.vec = and i64 %i.mp, 56                      ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.mp
  %xtraiter = and i64 %i.mp, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.i.i

.loopexit84.i.i:                                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.mx = icmp ugt i32 %i.my, %.val53131.i.i
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br i1 %i.mx, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !506

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.loopexit84.i.i
  %indvars.iv = phi i64 [ %13, %.lr.ph.i.i.preheader ], [ %indvars.iv.next, %.loopexit84.i.i ] ; 2 uses
  %.04687.i.i.a = phi i32 [ %.0.i.i132.i.i, %.lr.ph.i.i.preheader ], [ %i.oi, %.loopexit84.i.i ]
  %14 = trunc nuw i64 %indvars.iv to i32
  %i.my = add i32 %14, -1                         ; 2 uses
  %15 = shl i32 %i.my, 7                          ; 3 uses
  %.not83.i.i = icmp eq i32 %15, -128
  br i1 %.not83.i.i, label %_ZN7rocksdb6ribbon14BackSubstBlockINS0_15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEEEEvPNT_8CoeffRowENS8_5IndexERKS8_SB_.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.lr.ph.i.i
  %16 = add nuw i32 %15, 128
  %17 = zext i32 %16 to i64
  %18 = zext i32 %15 to i64
  br label %.lr.ph.i.i.i

..loopexit_crit_edge.i.i.i:                       ; preds = %scalar.ph425, %middle.block440
  %.wide.i.i.i = icmp ugt i64 %i.mz, %18
  br i1 %.wide.i.i.i, label %.lr.ph.i.i.i, label %_ZN7rocksdb6ribbon14BackSubstBlockINS0_15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEEEEvPNT_8CoeffRowENS8_5IndexERKS8_SB_.exit.i.i, !llvm.loop !507

.lr.ph.i.i.i:                                     ; preds = %..loopexit_crit_edge.i.i.i, %.lr.ph.preheader.i.i.i
  %indvars.iv25.i.i.i = phi i64 [ %17, %.lr.ph.preheader.i.i.i ], [ %i.mz, %..loopexit_crit_edge.i.i.i ]
  %i.mz = add nsw i64 %indvars.iv25.i.i.i, -1     ; 4 uses
  %i.na = getelementptr inbounds nuw [16 x i8], ptr %11, i64 %i.mz ; 2 uses
  %.sroa.020.0.copyload.i.i.i = load i64, ptr %i.na, align 8, !tbaa !361 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  %.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !tbaa !361 ; 2 uses
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %i.mz
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !129 ; 2 uses
  br i1 %min.iters.check426, label %scalar.ph425.preheader, label %vector.ph427

vector.ph427:                                     ; preds = %.lr.ph.i.i.i
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %.sroa.020.0.copyload.i.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert429 = insertelement <4 x i64> poison, i64 %.sroa.5.0.copyload.i.i.i, i64 0
  %broadcast.splat430 = shufflevector <4 x i64> %broadcast.splatinsert429, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert431 = insertelement <4 x i32> poison, i32 %i.nc, i64 0
  %broadcast.splat432 = shufflevector <4 x i32> %broadcast.splatinsert431, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body433

vector.body433:                                   ; preds = %vector.body433, %vector.ph427
  %index434 = phi i64 [ 0, %vector.ph427 ], [ %index.next439, %vector.body433 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph427 ], [ %vec.ind.next, %vector.body433 ] ; 2 uses
  %i.nd = getelementptr inbounds nuw [16 x i8], ptr %i.mr, i64 %index434 ; 2 uses
  %wide.vec435 = load <8 x i64>, ptr %i.nd, align 8, !tbaa !361 ; 2 uses
  %strided.vec436 = shufflevector <8 x i64> %wide.vec435, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec437 = shufflevector <8 x i64> %wide.vec435, <8 x i64> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ne = shl <4 x i64> %strided.vec436, splat (i64 1) ; 2 uses
  %i.nf = call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %strided.vec437, <4 x i64> %strided.vec436, <4 x i64> splat (i64 1)) ; 2 uses
  %i.ng = and <4 x i64> %i.ne, %broadcast.splat
  %i.nh = and <4 x i64> %i.nf, %broadcast.splat430
  %i.ni = xor <4 x i64> %i.nh, %i.ng
  %i.nj = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %i.ni)
  %i.nk = trunc nuw nsw <4 x i64> %i.nj to <4 x i32>
  %i.nl = lshr <4 x i32> %broadcast.splat432, %vec.ind
  %i.nm = xor <4 x i32> %i.nl, %i.nk
  %i.nn = and <4 x i32> %i.nm, splat (i32 1)
  %i.no = zext nneg <4 x i32> %i.nn to <4 x i64>
  %i.np = or disjoint <4 x i64> %i.ne, %i.no
  %interleaved.vec438 = shufflevector <4 x i64> %i.np, <4 x i64> %i.nf, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i64> %interleaved.vec438, ptr %i.nd, align 8, !tbaa !361
  %index.next439 = add nuw i64 %index434, 4       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.nq = icmp eq i64 %index.next439, %n.vec428
  br i1 %i.nq, label %middle.block440, label %vector.body433, !llvm.loop !508

middle.block440:                                  ; preds = %vector.body433
  br i1 %cmp.n441, label %..loopexit_crit_edge.i.i.i, label %scalar.ph425.preheader

scalar.ph425.preheader:                           ; preds = %.lr.ph.i.i.i, %middle.block440
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec428, %middle.block440 ]
  br label %scalar.ph425

scalar.ph425:                                     ; preds = %scalar.ph425.preheader, %scalar.ph425
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %scalar.ph425 ], [ %indvars.iv.i.i.i.ph, %scalar.ph425.preheader ] ; 3 uses
  %i.nr = getelementptr inbounds nuw [16 x i8], ptr %i.mr, i64 %indvars.iv.i.i.i ; 3 uses
  %i.ns = load i64, ptr %i.nr, align 8, !tbaa !511 ; 2 uses
  %i.nt = shl i64 %i.ns, 1                        ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nr, i64 8 ; 2 uses
  %i.nv = load i64, ptr %i.nu, align 8, !tbaa !513
  %i.nw = call i64 @llvm.fshl.i64(i64 %i.nv, i64 %i.ns, i64 1) ; 2 uses
  %i.nx = and i64 %i.nt, %.sroa.020.0.copyload.i.i.i
  %i.ny = and i64 %i.nw, %.sroa.5.0.copyload.i.i.i
  %i.nz = xor i64 %i.ny, %i.nx
  %i.oa = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.nz)
  %i.ob = trunc nuw nsw i64 %i.oa to i32
  %i.oc = trunc nuw i64 %indvars.iv.i.i.i to i32
  %i.od = lshr i32 %i.nc, %i.oc
  %i.oe = xor i32 %i.od, %i.ob
  %i.of = and i32 %i.oe, 1
  %i.og = zext nneg i32 %i.of to i64
  %i.oh = or disjoint i64 %i.nt, %i.og
  store i64 %i.oh, ptr %i.nr, align 8, !tbaa !361
  store i64 %i.nw, ptr %i.nu, align 8, !tbaa !361
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.mp
  br i1 %exitcond.not.i.i.i, label %..loopexit_crit_edge.i.i.i, label %scalar.ph425, !llvm.loop !514

_ZN7rocksdb6ribbon14BackSubstBlockINS0_15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEEEEvPNT_8CoeffRowENS8_5IndexERKS8_SB_.exit.i.i: ; preds = %..loopexit_crit_edge.i.i.i, %.lr.ph.i.i
  %i.oi = sub i32 %.04687.i.i.a, %.val54.fr133.i.i ; 11 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %_ZN7rocksdb6ribbon14BackSubstBlockINS0_15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEEEEvPNT_8CoeffRowENS8_5IndexERKS8_SB_.exit.i.i
  %i.oj = xor i32 %i.oi, -1
  %i.ok = icmp ult i32 %i.oj, %i.mv
  %i.ol = or i1 %i.ok, %i.mw
  br i1 %i.ol, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.om = zext i32 %i.oi to i64
  %i.on = shl nuw nsw i64 %i.om, 4                ; 2 uses
  %scevgep417 = getelementptr i8, ptr %i.mc, i64 %i.on
  %scevgep419 = getelementptr i8, ptr %scevgep418, i64 %i.on
  %bound0 = icmp ult ptr %i.mr, %scevgep419
  %bound1 = icmp ult ptr %scevgep417, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 4 uses
  %i.oo = trunc i64 %index to i32                 ; 2 uses
  %i.op = or disjoint i32 %i.oo, 4
  %i.oq = add i32 %i.oi, %i.oo
  %i.or = add i32 %i.oi, %i.op
  %i.os = getelementptr inbounds nuw [16 x i8], ptr %i.mr, i64 %index
  %i.ot = getelementptr inbounds nuw [16 x i8], ptr %i.mr, i64 %index
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 64
  %wide.vec = load <8 x i64>, ptr %i.os, align 8, !tbaa !361, !alias.scope !515, !noalias !518
  %wide.vec421 = load <8 x i64>, ptr %i.ou, align 8, !tbaa !361, !alias.scope !515, !noalias !518
  %i.ov = zext i32 %i.oq to i64
  %i.ow = zext i32 %i.or to i64
  %i.ox = shl nuw nsw i64 %i.ov, 4
  %i.oy = shl nuw nsw i64 %i.ow, 4
  %i.oz = getelementptr inbounds nuw i8, ptr %i.mc, i64 %i.ox
  %i.pa = getelementptr inbounds nuw i8, ptr %i.mc, i64 %i.oy
  store <8 x i64> %wide.vec, ptr %i.oz, align 1, !alias.scope !518
  store <8 x i64> %wide.vec421, ptr %i.pa, align 1, !alias.scope !518
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.pb = icmp eq i64 %index.next, %n.vec
  br i1 %i.pb, label %middle.block, label %vector.body, !llvm.loop !520

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit84.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %_ZN7rocksdb6ribbon14BackSubstBlockINS0_15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEEEEvPNT_8CoeffRowENS8_5IndexERKS8_SB_.exit.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %_ZN7rocksdb6ribbon14BackSubstBlockINS0_15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEEEEvPNT_8CoeffRowENS8_5IndexERKS8_SB_.exit.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.pc = trunc nuw i64 %indvars.iv.i.i.prol to i32
  %i.pd = add i32 %i.oi, %i.pc
  %i.pe = getelementptr inbounds nuw [16 x i8], ptr %i.mr, i64 %indvars.iv.i.i.prol
  %i.pf = zext i32 %i.pd to i64
  %i.pg = shl nuw nsw i64 %i.pf, 4
  %i.ph = getelementptr inbounds nuw i8, ptr %i.mc, i64 %i.pg
  %i.pi = load <2 x i64>, ptr %i.pe, align 8, !tbaa !361
  store <2 x i64> %i.pi, ptr %i.ph, align 1
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !521

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ]
  %i.pj = sub nsw i64 %indvars.iv.i.i.ph, %i.mp
  %i.pk = icmp ugt i64 %i.pj, -4
  br i1 %i.pk, label %.loopexit84.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.pl = trunc nuw i64 %indvars.iv.i.i to i32
  %i.pm = add i32 %i.oi, %i.pl
  %i.pn = getelementptr inbounds nuw [16 x i8], ptr %i.mr, i64 %indvars.iv.i.i
  %i.po = zext i32 %i.pm to i64
  %i.pp = shl nuw nsw i64 %i.po, 4
  %i.pq = getelementptr inbounds nuw i8, ptr %i.mc, i64 %i.pp
  %i.pr = load <2 x i64>, ptr %i.pn, align 8, !tbaa !361
  store <2 x i64> %i.pr, ptr %i.pq, align 1
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ps = trunc nuw i64 %indvars.iv.next.i.i to i32
  %i.pt = add i32 %i.oi, %i.ps
  %i.pu = getelementptr inbounds nuw [16 x i8], ptr %i.mr, i64 %indvars.iv.next.i.i
  %i.pv = zext i32 %i.pt to i64
  %i.pw = shl nuw nsw i64 %i.pv, 4
  %i.px = getelementptr inbounds nuw i8, ptr %i.mc, i64 %i.pw
  %i.py = load <2 x i64>, ptr %i.pu, align 8, !tbaa !361
  store <2 x i64> %i.py, ptr %i.px, align 1
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.pz = trunc nuw i64 %indvars.iv.next.i.i.1 to i32
  %i.qa = add i32 %i.oi, %i.pz
  %i.qb = getelementptr inbounds nuw [16 x i8], ptr %i.mr, i64 %indvars.iv.next.i.i.1
  %i.qc = zext i32 %i.qa to i64
  %i.qd = shl nuw nsw i64 %i.qc, 4
  %i.qe = getelementptr inbounds nuw i8, ptr %i.mc, i64 %i.qd
  %i.qf = load <2 x i64>, ptr %i.qb, align 8, !tbaa !361
  store <2 x i64> %i.qf, ptr %i.qe, align 1
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.qg = trunc nuw i64 %indvars.iv.next.i.i.2 to i32
  %i.qh = add i32 %i.oi, %i.qg
  %i.qi = getelementptr inbounds nuw [16 x i8], ptr %i.mr, i64 %indvars.iv.next.i.i.2
  %i.qj = zext i32 %i.qh to i64
  %i.qk = shl nuw nsw i64 %i.qj, 4
  %i.ql = getelementptr inbounds nuw i8, ptr %i.mc, i64 %i.qk
  %i.qm = load <2 x i64>, ptr %i.qi, align 8, !tbaa !361
  store <2 x i64> %i.qm, ptr %i.ql, align 1
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %i.mp
  br i1 %exitcond.not.i.i.3, label %.loopexit84.i.i, label %scalar.ph, !llvm.loop !522

._crit_edge.i.i:                                  ; preds = %.loopexit84.i.i
  %.not91.i.i = icmp eq i32 %.val53131.i.i, 0
  br i1 %.not91.i.i, label %_ZNSt10unique_ptrIA_N7rocksdb11Unsigned128ESt14default_deleteIS2_EED2Ev.exit.i.i, label %.lr.ph95.i.i

.lr.ph95.i.i:                                     ; preds = %._crit_edge.i.i, %.noexc80
  %.046.lcssa137.i.i = phi i32 [ %i.oi, %._crit_edge.i.i ], [ %.0.i.i132.i.i, %.noexc80 ]
  %i.qn = add nsw i32 %.val54.fr133.i.i, -1       ; 5 uses
  %.not.i59.i.i = icmp eq i32 %i.qn, 0
  %wide.trip.count.i61.i.i = zext i32 %i.qn to i64 ; 10 uses
  br i1 %.not.i59.i.i, label %_ZNSt10unique_ptrIA_N7rocksdb11Unsigned128ESt14default_deleteIS2_EED2Ev.exit.i.i, label %.lr.ph95.split.preheader.i.i

.lr.ph95.split.preheader.i.i:                     ; preds = %.lr.ph95.i.i
  %i.qo = call i32 @llvm.umin.i32(i32 %i.md, i32 %.val53131.i.i)
  %i.qp = load ptr, ptr %i.bb, align 8
  %i.qq = load ptr, ptr %i.ci, align 8
  %i.qr = add nsw i64 %wide.trip.count.i61.i.i, -1 ; 2 uses
  %i.qs = shl nuw nsw i64 %wide.trip.count.i61.i.i, 4 ; 2 uses
  %scevgep445 = getelementptr i8, ptr %i.mr, i64 %i.qs
  %scevgep447 = getelementptr i8, ptr %i.mc, i64 %i.qs
  %min.iters.check471 = icmp ult i32 %i.qn, 4
  %n.vec473 = and i64 %wide.trip.count.i61.i.i, 4294967292 ; 3 uses
  %cmp.n490 = icmp eq i64 %n.vec473, %wide.trip.count.i61.i.i
  %min.iters.check453 = icmp ult i32 %i.qn, 8
  %i.qt = trunc i64 %i.qr to i32
  %i.qu = icmp ugt i64 %i.qr, 4294967295
  %n.vec455 = and i64 %wide.trip.count.i61.i.i, 4294967288 ; 3 uses
  %cmp.n468 = icmp eq i64 %n.vec455, %wide.trip.count.i61.i.i
  %xtraiter544 = and i64 %wide.trip.count.i61.i.i, 3 ; 2 uses
  %lcmp.mod545.not = icmp eq i64 %xtraiter544, 0
  br label %.lr.ph95.split.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph90.i.i.prol.loopexit, %.lr.ph90.i.i, %middle.block467
  %.not.i.i79 = icmp eq i32 %i.qv, 0
  br i1 %.not.i.i79, label %_ZNSt10unique_ptrIA_N7rocksdb11Unsigned128ESt14default_deleteIS2_EED2Ev.exit.i.i, label %.lr.ph95.split.i.i, !llvm.loop !523

.lr.ph95.split.i.i:                               ; preds = %.loopexit.i.i, %.lr.ph95.split.preheader.i.i
  %indvars.iv108.i.i = phi i32 [ %i.qo, %.lr.ph95.split.preheader.i.i ], [ %i.qv, %.loopexit.i.i ]
  %.193.i.i = phi i32 [ %.046.lcssa137.i.i, %.lr.ph95.split.preheader.i.i ], [ %i.sj, %.loopexit.i.i ]
  %i.qv = add i32 %indvars.iv108.i.i, -1          ; 3 uses
  %i.qw = shl i32 %i.qv, 7                        ; 3 uses
  %.not82.i.i = icmp eq i32 %i.qw, -128
  br i1 %.not82.i.i, label %.lr.ph90.preheader.i.i, label %.lr.ph23.i58.i.i

.lr.ph23.i58.i.i:                                 ; preds = %.lr.ph95.split.i.i
  %i.qx = add nuw i32 %i.qw, 128
  %i.qy = zext i32 %i.qx to i64
  %i.qz = zext i32 %i.qw to i64
  br label %.lr.ph.i62.i.i

..loopexit_crit_edge.i70.i.i:                     ; preds = %scalar.ph470, %middle.block489
  %.wide.i71.i.i = icmp ugt i64 %i.ra, %i.qz
  br i1 %.wide.i71.i.i, label %.lr.ph.i62.i.i, label %.lr.ph90.preheader.i.i, !llvm.loop !507

.lr.ph.i62.i.i:                                   ; preds = %..loopexit_crit_edge.i70.i.i, %.lr.ph23.i58.i.i
  %indvars.iv25.i63.i.i = phi i64 [ %i.qy, %.lr.ph23.i58.i.i ], [ %i.ra, %..loopexit_crit_edge.i70.i.i ]
  %i.ra = add nsw i64 %indvars.iv25.i63.i.i, -1   ; 4 uses
  %i.rb = getelementptr inbounds nuw [16 x i8], ptr %i.qp, i64 %i.ra ; 2 uses
  %.sroa.020.0.copyload.i64.i.i = load i64, ptr %i.rb, align 8, !tbaa !361 ; 2 uses
  %.sroa.5.0..sroa_idx.i65.i.i = getelementptr inbounds nuw i8, ptr %i.rb, i64 8
  %.sroa.5.0.copyload.i66.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i65.i.i, align 8, !tbaa !361 ; 2 uses
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.qq, i64 %i.ra
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !129 ; 2 uses
  br i1 %min.iters.check471, label %scalar.ph470.preheader, label %vector.ph472

vector.ph472:                                     ; preds = %.lr.ph.i62.i.i
  %broadcast.splatinsert474 = insertelement <4 x i64> poison, i64 %.sroa.020.0.copyload.i64.i.i, i64 0
  %broadcast.splat475 = shufflevector <4 x i64> %broadcast.splatinsert474, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert476 = insertelement <4 x i64> poison, i64 %.sroa.5.0.copyload.i66.i.i, i64 0
  %broadcast.splat477 = shufflevector <4 x i64> %broadcast.splatinsert476, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert478 = insertelement <4 x i32> poison, i32 %i.rd, i64 0
  %broadcast.splat479 = shufflevector <4 x i32> %broadcast.splatinsert478, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body480

vector.body480:                                   ; preds = %vector.body480, %vector.ph472
  %index481 = phi i64 [ 0, %vector.ph472 ], [ %index.next487, %vector.body480 ] ; 2 uses
  %vec.ind482 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph472 ], [ %vec.ind.next488, %vector.body480 ] ; 2 uses
  %i.re = getelementptr inbounds nuw [16 x i8], ptr %i.mr, i64 %index481 ; 2 uses
  %wide.vec483.a = load <8 x i64>, ptr %i.re, align 8, !tbaa !361 ; 2 uses
  %strided.vec484 = shufflevector <8 x i64> %wide.vec483.a, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec485 = shufflevector <8 x i64> %wide.vec483.a, <8 x i64> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.rf = shl <4 x i64> %strided.vec484, splat (i64 1) ; 2 uses
  %i.rg = call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %strided.vec485, <4 x i64> %strided.vec484, <4 x i64> splat (i64 1)) ; 2 uses
  %i.rh = and <4 x i64> %i.rf, %broadcast.splat475
  %i.ri = and <4 x i64> %i.rg, %broadcast.splat477
  %i.rj = xor <4 x i64> %i.ri, %i.rh
  %i.rk = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %i.rj)
  %i.rl = trunc nuw nsw <4 x i64> %i.rk to <4 x i32>
  %i.rm = lshr <4 x i32> %broadcast.splat479, %vec.ind482
  %i.rn = xor <4 x i32> %i.rm, %i.rl
end_hunk_0
