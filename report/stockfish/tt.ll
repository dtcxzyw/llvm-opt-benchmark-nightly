Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/tt?download=true
inline.NumInlined: 143
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN9Stockfish18TranspositionTable5clearERNS_10ThreadPoolE:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.e = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22 ; 4 uses
  store ptr %0, ptr %i.e, align 16, !tbaa !40
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.01315, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.b, ptr %.sroa.5.0..sroa_idx, align 16, !tbaa !14
  store ptr %i.e, ptr %2, align 8, !tbaa !41
  store ptr @"_ZNSt17_Function_handlerIFvvEZN9Stockfish18TranspositionTable5clearERNS1_10ThreadPoolEE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.d, align 8, !tbaa !44
  store ptr @"_ZNSt17_Function_handlerIFvvEZN9Stockfish18TranspositionTable5clearERNS1_10ThreadPoolEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation", ptr %i.c, align 8, !tbaa !45
  call void @_ZN9Stockfish10ThreadPool13run_on_threadEmSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %.01315, ptr noundef nonnull align 8 %2) #19
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #19, !inline_history !55 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.b, %bb.c
  %i.h = add nuw i64 %.01315, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.h, %i.b
  br i1 %exitcond.not, label %.lr.ph17, label %bb.b, !llvm.loop !0

._crit_edge:                                      ; preds = %.lr.ph17, %bb.a
  ret void

.lr.ph17:                                         ; preds = %_ZNSt14_Function_baseD2Ev.exit, %.lr.ph17
  %.016 = phi i64 [ %i.i, %.lr.ph17 ], [ 0, %_ZNSt14_Function_baseD2Ev.exit ] ; 2 uses
  call void @_ZN9Stockfish10ThreadPool14wait_on_threadEm(ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %.016) #19
  %i.i = add nuw i64 %.016, 1                     ; 2 uses
  %exitcond19.not = icmp eq i64 %i.i, %i.b
  br i1 %exitcond19.not, label %._crit_edge, label %.lr.ph17, !llvm.loop !1
}

declare noundef i64 @_ZNK9Stockfish10ThreadPool11num_threadsEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #9

declare void @_ZN9Stockfish10ThreadPool13run_on_threadEmSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef, ptr noundef align 8) local_unnamed_addr #9

declare void @_ZN9Stockfish10ThreadPool14wait_on_threadEm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i32 -715827882, 715827883) i32 @_ZNK9Stockfish18TranspositionTable8hashfullEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %0, i32 noundef %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = shl i32 %1, 3                            ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i8, ptr %i.d, align 8               ; 3 uses
  %i.f = add i8 %i.e, 7                           ; 2 uses
  %i.g = add i8 %i.e, 7                           ; 2 uses
  %i.h = add i8 %i.e, 7                           ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.m, %bb.a
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.1, %bb.m ] ; 3 uses
  %.01316 = phi i32 [ 0, %bb.a ], [ %i.by, %bb.m ]
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %indvars.iv ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.k = load i8, ptr %i.j, align 2, !tbaa !25
  %.not = icmp eq i8 %i.k, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.b:                                             ; preds = %bb.m
  %i.l = sdiv i32 %i.by, 3
  ret i32 %i.l

bb.c:                                             ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  %i.n = load i8, ptr %i.m, align 1, !tbaa !27
  %i.o = sub i8 %i.f, %i.n
  %i.p = and i8 %i.o, -8
  %i.q = zext i8 %i.p to i32
  %i.r = icmp sge i32 %i.a, %i.q
  %i.s = zext i1 %i.r to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.preheader
  %i.t = phi i32 [ 0, %.preheader ], [ %i.s, %bb.c ]
  %i.u = add nsw i32 %i.t, %.01316
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.w = load i8, ptr %i.v, align 2, !tbaa !25
  %.not.1 = icmp eq i8 %i.w, 0
  br i1 %.not.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 13
  %i.y = load i8, ptr %i.x, align 1, !tbaa !27
  %i.z = sub i8 %i.g, %i.y
  %i.aa = and i8 %i.z, -8
  %i.ab = zext i8 %i.aa to i32
  %i.ac = icmp sge i32 %i.a, %i.ab
  %i.ad = zext i1 %i.ac to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ae = phi i32 [ 0, %bb.d ], [ %i.ad, %bb.e ]
  %i.af = add nsw i32 %i.ae, %i.u
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 22
  %i.ah = load i8, ptr %i.ag, align 2, !tbaa !25
  %.not.2 = icmp eq i8 %i.ah, 0
  br i1 %.not.2, label %.preheader.1, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 23
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !27
  %i.ak = sub i8 %i.h, %i.aj
  %i.al = and i8 %i.ak, -8
  %i.am = zext i8 %i.al to i32
  %i.an = icmp sge i32 %i.a, %i.am
  %i.ao = zext i1 %i.an to i32
  br label %.preheader.1

.preheader.1:                                     ; preds = %bb.g, %bb.f
  %i.ap = phi i32 [ 0, %bb.f ], [ %i.ao, %bb.g ]
  %i.aq = add nsw i32 %i.ap, %i.af
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %indvars.iv ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 34
  %i.at = load i8, ptr %i.as, align 2, !tbaa !25
  %.not.120 = icmp eq i8 %i.at, 0
  br i1 %.not.120, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.preheader.1
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 35
  %i.av = load i8, ptr %i.au, align 1, !tbaa !27
  %i.aw = sub i8 %i.f, %i.av
  %i.ax = and i8 %i.aw, -8
  %i.ay = zext i8 %i.ax to i32
  %i.az = icmp sge i32 %i.a, %i.ay
  %i.ba = zext i1 %i.az to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.preheader.1
  %i.bb = phi i32 [ 0, %.preheader.1 ], [ %i.ba, %bb.h ]
  %i.bc = add nsw i32 %i.bb, %i.aq
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 44
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !25
  %.not.1.1 = icmp eq i8 %i.be, 0
  br i1 %.not.1.1, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 45
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !27
  %i.bh = sub i8 %i.g, %i.bg
  %i.bi = and i8 %i.bh, -8
  %i.bj = zext i8 %i.bi to i32
  %i.bk = icmp sge i32 %i.a, %i.bj
  %i.bl = zext i1 %i.bk to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bm = phi i32 [ 0, %bb.i ], [ %i.bl, %bb.j ]
  %i.bn = add nsw i32 %i.bm, %i.bc
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ar, i64 54
  %i.bp = load i8, ptr %i.bo, align 2, !tbaa !25
  %.not.2.1 = icmp eq i8 %i.bp, 0
  br i1 %.not.2.1, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ar, i64 55
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !27
  %i.bs = sub i8 %i.h, %i.br
  %i.bt = and i8 %i.bs, -8
  %i.bu = zext i8 %i.bt to i32
  %i.bv = icmp sge i32 %i.a, %i.bu
  %i.bw = zext i1 %i.bv to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bx = phi i32 [ 0, %bb.k ], [ %i.bw, %bb.l ]
  %i.by = add nsw i32 %i.bx, %i.bn                ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 1000
  br i1 %exitcond.not.1, label %bb.b, label %.preheader, !llvm.loop !56
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN9Stockfish18TranspositionTable10new_searchEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(17) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !38
  %i.c = add i8 %i.b, 8
  store i8 %i.c, ptr %i.a, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @_ZNK9Stockfish18TranspositionTable10generationEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !38
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK9Stockfish18TranspositionTable5probeEm(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::tuple.25") align 8 captures(none) initializes((0, 10), (12, 26), (28, 29)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %1, i64 noundef %2) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.c = load i64, ptr %1, align 8, !tbaa !37
  %3 = tail call noundef i64 @llvm.umulh.i64(i64 %2, i64 %i.c)
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %3 ; 11 uses
  %i.e = trunc i64 %2 to i16                      ; 3 uses
  %i.f = load i16, ptr %i.d, align 2, !tbaa !28
  %i.g = icmp eq i16 %i.f, %i.e
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 10 ; 3 uses
  %i.i = load i16, ptr %i.h, align 2, !tbaa !28
  %i.j = icmp eq i16 %i.i, %i.e
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 20 ; 3 uses
  %i.l = load i16, ptr %i.k, align 2, !tbaa !28
  %i.m = icmp eq i16 %i.l, %i.e
  br i1 %i.m, label %bb.d, label %.critedge.preheader

.critedge.preheader:                              ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i8, ptr %i.n, align 8, !tbaa !38
  %i.p = add i8 %i.o, 7                           ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.r = load i8, ptr %i.q, align 2, !tbaa !25
  %i.s = zext i8 %i.r to i32
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.u = load i8, ptr %i.t, align 1, !tbaa !27
  %i.v = sub i8 %i.p, %i.u
  %i.w = and i8 %i.v, -8
  %i.x = zext i8 %i.w to i32
  %i.y = sub nsw i32 %i.s, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.aa = load i8, ptr %i.z, align 2, !tbaa !25
  %i.ab = zext i8 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 13
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !27
  %i.ae = sub i8 %i.p, %i.ad
  %i.af = and i8 %i.ae, -8
  %i.ag = zext i8 %i.af to i32
  %i.ah = sub nsw i32 %i.ab, %i.ag
  %i.ai = icmp sgt i32 %i.y, %i.ah
  %spec.select = select i1 %i.ai, ptr %i.h, ptr %i.d ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %spec.select, i64 2
  %i.ak = load i8, ptr %i.aj, align 2, !tbaa !25
  %i.al = zext i8 %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %spec.select, i64 3
  %i.an = load i8, ptr %i.am, align 1, !tbaa !27
  %i.ao = sub i8 %i.p, %i.an
  %i.ap = and i8 %i.ao, -8
  %i.aq = zext i8 %i.ap to i32
  %i.ar = sub nsw i32 %i.al, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 22
  %i.at = load i8, ptr %i.as, align 2, !tbaa !25
  %i.au = zext i8 %i.at to i32
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 23
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !27
  %i.ax = sub i8 %i.p, %i.aw
  %i.ay = and i8 %i.ax, -8
  %i.az = zext i8 %i.ay to i32
  %i.ba = sub nsw i32 %i.au, %i.az
  %i.bb = icmp sgt i32 %i.ar, %i.ba
  %spec.select.1 = select i1 %i.bb, ptr %i.k, ptr %spec.select
  br label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.lcssa = phi ptr [ %i.d, %bb.a ], [ %i.h, %bb.b ], [ %i.k, %bb.c ] ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.lcssa, i64 2
  %i.bd = load i8, ptr %i.bc, align 2, !tbaa !25  ; 2 uses
  %i.be = icmp ne i8 %i.bd, 0
  %i.bf = zext i1 %i.be to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %.lcssa, i64 4
  %.sroa.0.0.copyload.i = load i16, ptr %i.bg, align 2, !tbaa !26, !noalias !59
  %i.bh = getelementptr inbounds nuw i8, ptr %.lcssa, i64 6
  %i.bi = load <2 x i16>, ptr %i.bh, align 2, !tbaa !26, !noalias !59
  %i.bj = zext i8 %i.bd to i32
  %i.bk = add nsw i32 %i.bj, -3
  %i.bl = getelementptr inbounds nuw i8, ptr %.lcssa, i64 3
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !27, !noalias !59 ; 2 uses
  %i.bn = and i8 %i.bm, 3
  %i.bo = lshr i8 %i.bm, 2
  %.lobit.i = and i8 %i.bo, 1
  %i.bp = sext <2 x i16> %i.bi to <2 x i32>
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.critedge.preheader
  %.lcssa.sink = phi ptr [ %.lcssa, %bb.d ], [ %spec.select.1, %.critedge.preheader ]
  %.sroa.0.0.copyload.i.sink = phi i16 [ %.sroa.0.0.copyload.i, %bb.d ], [ 0, %.critedge.preheader ]
  %.sink49 = phi i32 [ %i.bk, %bb.d ], [ -3, %.critedge.preheader ]
  %.sink48 = phi i8 [ %i.bn, %bb.d ], [ 0, %.critedge.preheader ]
  %.lobit.i.sink = phi i8 [ %.lobit.i, %bb.d ], [ 0, %.critedge.preheader ]
  %.sink = phi i8 [ %i.bf, %bb.d ], [ 0, %.critedge.preheader ]
  %i.bq = phi <2 x i32> [ %i.bp, %bb.d ], [ splat (i32 32002), %.critedge.preheader ]
  %i.br = ptrtoint ptr %.lcssa.sink to i64
  store i64 %i.br, ptr %0, align 8, !tbaa !60
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sroa.0.0.copyload.i.sink, ptr %i.bs, align 8, !tbaa !26
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <2 x i32> %i.bq, ptr %.sroa.434.0..sroa_idx, align 4, !tbaa !61
  %.sroa.636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sink49, ptr %.sroa.636.0..sroa_idx, align 4, !tbaa !61
  %.sroa.737.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sink48, ptr %.sroa.737.0..sroa_idx, align 8, !tbaa !63
  %.sroa.838.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %.lobit.i.sink, ptr %.sroa.838.0..sroa_idx, align 1, !tbaa !65
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %.sink, ptr %i.bt, align 4, !tbaa !67
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK9Stockfish18TranspositionTable11first_entryEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %0, i64 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.c = load i64, ptr %0, align 8, !tbaa !37
  %2 = tail call noundef i64 @llvm.umulh.i64(i64 %1, i64 %i.c)
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %2
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define internal void @__cxx_global_var_init.3() #0 section ".text.startup" comdat($_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E) {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E) #19
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, i8 0, i64 24, i1 false)
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EED2Ev, ptr nonnull @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, ptr nonnull @__dso_handle) #19 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !71     ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !72
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #23
  br label %_ZNSt12_Vector_baseIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EED2Ev.exit

_ZNSt12_Vector_baseIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare noundef i32 @_ZNSt6thread20hardware_concurrencyEv() local_unnamed_addr #14

; Function Attrs: nounwind
declare ptr @__sched_cpualloc(i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nounwind
declare i32 @sched_getaffinity(i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare void @__sched_cpufree(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #16

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #14

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74
  tail call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !75   ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #23
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !73

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @"_ZNSt17_Function_handlerIFvvEZN9Stockfish18TranspositionTable5clearERNS1_10ThreadPoolEE3$_0E9_M_invokeERKSt9_Any_data"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #8 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !41    ; 3 uses
  %i.a = load ptr, ptr %.val, align 8, !tbaa !77  ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !78   ; 2 uses
  %i.e = udiv i64 %i.b, %i.d                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !79   ; 2 uses
  %i.h = mul i64 %i.g, %i.e                       ; 2 uses
  %i.i = add i64 %i.g, 1
  %.not.i.i.i = icmp eq i64 %i.i, %i.d
  %i.j = sub i64 %i.b, %i.h
  %i.k = select i1 %.not.i.i.i, i64 %i.j, i64 %i.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.h
  %i.o = shl i64 %i.k, 5
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.n, i8 0, i64 %i.o, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvvEZN9Stockfish18TranspositionTable5clearERNS1_10ThreadPoolEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #4 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish18TranspositionTable5clearERNS1_10ThreadPoolEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN9Stockfish18TranspositionTable5clearERNS_10ThreadPoolEE3$_0", ptr %0, align 8, !tbaa !81
  br label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish18TranspositionTable5clearERNS1_10ThreadPoolEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !41
  store ptr %.val, ptr %0, align 8, !tbaa !41
  br label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish18TranspositionTable5clearERNS1_10ThreadPoolEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val6, i64 24, i1 false), !tbaa.struct !82
  store ptr %i.a, ptr %0, align 8, !tbaa !41
  br label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish18TranspositionTable5clearERNS1_10ThreadPoolEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !41 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish18TranspositionTable5clearERNS1_10ThreadPoolEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 24) #23
  br label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish18TranspositionTable5clearERNS1_10ThreadPoolEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN9Stockfish18TranspositionTable5clearERNS1_10ThreadPoolEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_tt.cpp() #0 section ".text.startup" {
bb.a:
  tail call void @_ZN9Stockfish20get_process_affinityEv(ptr dead_on_unwind nonnull writable sret(%"class.std::set") align 8 @_ZN9StockfishL26STARTUP_PROCESSOR_AFFINITYE)
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3setImSt4lessImESaImEED2Ev, ptr nonnull @_ZN9StockfishL26STARTUP_PROCESSOR_AFFINITYE, ptr nonnull @__dso_handle) #19 ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umulh.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nofree nounwind }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #17 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind }
attributes #20 = { cold noreturn nounwind }
attributes #21 = { nounwind willreturn memory(read) }
attributes #22 = { builtin nounwind allocsize(0) }
attributes #23 = { builtin nounwind }

!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !21}
!1 = distinct !{!1, !21}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"ThinLTO", i32 0}
!6 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!7 = !{!"Ubuntu clang version 23.0.0 (++20260706082120+bf74249b5ecd-1~exp1~20260706082130.1707)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"long", !9, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"_ZTSSt14_Rb_tree_color", !9, i64 0}
!16 = !{!"any pointer", !9, i64 0}
!17 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !16, i64 0}
!18 = !{!"_ZTSSt18_Rb_tree_node_base", !15, i64 0, !17, i64 8, !17, i64 16, !17, i64 24}
!19 = !{!"_ZTSSt15_Rb_tree_header", !18, i64 0, !13, i64 32}
!20 = !{!19, !17, i64 8}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"short", !9, i64 0}
!23 = !{!"_ZTSN9Stockfish4MoveE", !22, i64 0}
!24 = !{!"_ZTSN9Stockfish7TTEntryE", !22, i64 0, !9, i64 2, !9, i64 3, !23, i64 4, !22, i64 6, !22, i64 8}
!25 = !{!24, !9, i64 2}
!26 = !{!22, !22, i64 0}
!27 = !{!24, !9, i64 3}
!28 = !{!24, !22, i64 0}
!29 = !{!24, !22, i64 6}
!30 = !{!24, !22, i64 8}
!31 = !{!"p1 _ZTSN9Stockfish7TTEntryE", !16, i64 0}
!32 = !{!"_ZTSN9Stockfish8TTWriterE", !31, i64 0}
!33 = !{!32, !31, i64 0}
!34 = !{!"p1 _ZTSN9Stockfish7ClusterE", !16, i64 0}
!35 = !{!"_ZTSN9Stockfish18TranspositionTableE", !13, i64 0, !34, i64 8, !9, i64 16}
!36 = !{!35, !34, i64 8}
!37 = !{!35, !13, i64 0}
!38 = !{!35, !9, i64 16}
!39 = !{!"p1 _ZTSN9Stockfish18TranspositionTableE", !16, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!16, !16, i64 0}
!42 = !{!"_ZTSSt14_Function_base", !9, i64 0, !16, i64 16}
!43 = !{!"_ZTSSt8functionIFvvEE", !42, i64 0, !16, i64 24}
!44 = !{!43, !16, i64 24}
!45 = !{!42, !16, i64 16}
!46 = distinct !{!46, !21}
!47 = distinct !{!47, !21}
!48 = !{!19, !15, i64 0}
!49 = !{!19, !17, i64 16}
!50 = !{!19, !17, i64 24}
!51 = !{!19, !13, i64 32}
!52 = !{!17, !17, i64 0}
!53 = distinct !{null}
!54 = distinct !{ptr @_ZN9Stockfish18TranspositionTable5clearERNS_10ThreadPoolE, null}
!55 = distinct !{null}
!56 = distinct !{!56, !21}
!57 = distinct !{!57, !"_ZNK9Stockfish7TTEntry4readEv"}
!58 = distinct !{!58, !57, !"_ZNK9Stockfish7TTEntry4readEv: argument 0"}
!59 = !{!58}
!60 = !{!31, !31, i64 0}
!61 = !{!10, !10, i64 0}
!62 = !{!"_ZTSN9Stockfish5BoundE", !9, i64 0}
!63 = !{!62, !62, i64 0}
!64 = !{!"bool", !9, i64 0}
!65 = !{!64, !64, i64 0}
!66 = !{!"_ZTSSt10_Head_baseILm0EbLb0EE", !64, i64 0}
!67 = !{!66, !64, i64 0}
!68 = !{!"any p2 pointer", !16, i64 0}
!69 = !{!"p2 _ZTSN9Stockfish3shm6detail16SharedMemoryBaseE", !68, i64 0}
!70 = !{!"_ZTSNSt12_Vector_baseIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE17_Vector_impl_dataE", !69, i64 0, !69, i64 8, !69, i64 16}
!71 = !{!70, !69, i64 0}
!72 = !{!70, !69, i64 16}
!73 = distinct !{!73, !21}
!74 = !{!18, !17, i64 24}
!75 = !{!18, !17, i64 16}
!76 = !{!"_ZTSZN9Stockfish18TranspositionTable5clearERNS_10ThreadPoolEE3$_0", !39, i64 0, !13, i64 8, !13, i64 16}
!77 = !{!76, !39, i64 0}
!78 = !{!76, !13, i64 16}
!79 = !{!76, !13, i64 8}
!80 = !{!"p1 _ZTSSt9type_info", !16, i64 0}
!81 = !{!80, !80, i64 0}
!82 = !{i64 0, i64 8, !40, i64 8, i64 8, !14, i64 16, i64 8, !14}
end_hunk_0
