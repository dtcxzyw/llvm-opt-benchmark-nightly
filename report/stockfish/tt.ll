Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/tt?download=true
inline.NumInlined: 143
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN9Stockfish20get_process_affinityEv:bb.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3setImSt4lessImESaImEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  tail call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK9Stockfish7TTEntry11is_occupiedEv(ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(10) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i8, ptr %i.a, align 2, !tbaa !27
  %i.c = icmp ne i8 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN9Stockfish7TTEntry4saveEmibNS_5BoundEiNS_4MoveEih(ptr nofree noundef nonnull align 2 captures(none) dereferenceable(10) %0, i64 noundef %1, i32 noundef %2, i1 noundef zeroext %3, i8 noundef zeroext %4, i32 noundef %5, i16 %6, i32 noundef %7, i8 noundef zeroext %8) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = icmp eq i16 %6, 0
  %i.b = load i16, ptr %0, align 2
  %i.c = trunc i64 %1 to i16                      ; 2 uses
  %.not = icmp eq i16 %i.b, %i.c                  ; 2 uses
  %or.cond = select i1 %i.a, i1 %.not, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 %6, ptr %i.d, align 2, !tbaa !31
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = icmp ne i8 %4, 3
  %brmerge.not = select i1 %i.e, i1 %.not, i1 false
  br i1 %brmerge.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.f = select i1 %3, i32 5, i32 3
  %i.g = add i32 %i.f, %5
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.i = load i8, ptr %i.h, align 2, !tbaa !27
  %i.j = zext i8 %i.i to i32
  %i.k = add nsw i32 %i.j, -4
  %i.l = icmp sgt i32 %i.g, %i.k
  br i1 %i.l, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add i8 %8, 7
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.o = load i8, ptr %i.n, align 1, !tbaa !32
  %i.p = sub i8 %i.m, %i.o
  %.not14 = icmp ult i8 %i.p, 8
  br i1 %.not14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d
  store i16 %i.c, ptr %0, align 2, !tbaa !33
  %i.q = trunc i32 %5 to i8
  %i.r = add i8 %i.q, 3
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.r, ptr %i.s, align 2, !tbaa !27
  %i.t = select i1 %3, i8 4, i8 0
  %i.u = or i8 %4, %i.t
  %i.v = or i8 %i.u, %8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.v, ptr %i.w, align 1, !tbaa !32
  %i.x = trunc i32 %2 to i16
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i16 %i.x, ptr %i.y, align 2, !tbaa !34
  %i.z = trunc i32 %7 to i16
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.z, ptr %i.aa, align 2, !tbaa !35
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext range(i8 0, -7) i8 @_ZNK9Stockfish7TTEntry12relative_ageEh(ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(10) %0, i8 noundef zeroext %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = add i8 %1, 7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.c = load i8, ptr %i.b, align 1, !tbaa !32
  %i.d = sub i8 %i.a, %i.c
  %i.e = and i8 %i.d, -8
  ret i8 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN9Stockfish8TTWriterC2EPNS_7TTEntryE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr noundef %1) unnamed_addr #7 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN9Stockfish8TTWriter5writeEmibNS_5BoundEiNS_4MoveEih(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1, i32 noundef %2, i1 noundef zeroext %3, i8 noundef zeroext %4, i32 noundef %5, i16 %6, i32 noundef %7, i8 noundef zeroext %8) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !36     ; 9 uses
  %i.b = icmp eq i16 %6, 0
  %i.c = load i16, ptr %i.a, align 2
  %i.d = trunc i64 %1 to i16                      ; 2 uses
  %.not.i = icmp eq i16 %i.c, %i.d                ; 2 uses
  %or.cond.i = select i1 %i.b, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i16 %6, ptr %i.e, align 2, !tbaa !31
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = icmp ne i8 %4, 3
  %brmerge.not.i = select i1 %i.f, i1 %.not.i, i1 false
  br i1 %brmerge.not.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = select i1 %3, i32 5, i32 3
  %i.h = add i32 %5, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.j = load i8, ptr %i.i, align 2, !tbaa !27
  %i.k = zext i8 %i.j to i32
  %i.l = add nsw i32 %i.k, -4
  %i.m = icmp sgt i32 %i.h, %i.l
  br i1 %i.m, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = add i8 %8, 7
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.p = load i8, ptr %i.o, align 1, !tbaa !32
  %i.q = sub i8 %i.n, %i.p
  %.not14.i = icmp ult i8 %i.q, 8
  br i1 %.not14.i, label %_ZN9Stockfish7TTEntry4saveEmibNS_5BoundEiNS_4MoveEih.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  store i16 %i.d, ptr %i.a, align 2, !tbaa !33
  %i.r = trunc i32 %5 to i8
  %i.s = add i8 %i.r, 3
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.s, ptr %i.t, align 2, !tbaa !27
  %i.u = select i1 %3, i8 4, i8 0
  %i.v = or i8 %4, %i.u
  %i.w = or i8 %i.v, %8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.w, ptr %i.x, align 1, !tbaa !32
  %i.y = trunc i32 %2 to i16
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i16 %i.y, ptr %i.z, align 2, !tbaa !34
  %i.aa = trunc i32 %7 to i16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i16 %i.aa, ptr %i.ab, align 2, !tbaa !35
  br label %_ZN9Stockfish7TTEntry4saveEmibNS_5BoundEiNS_4MoveEih.exit

_ZN9Stockfish7TTEntry4saveEmibNS_5BoundEiNS_4MoveEih.exit: ; preds = %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish18TranspositionTable6resizeEmRNS_10ThreadPoolE(ptr noundef nonnull align 8 dereferenceable(17) initializes((0, 8)) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %3 = alloca %"class.std::function", align 8     ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  tail call void @_ZN9Stockfish24aligned_large_pages_freeEPv(ptr noundef %i.b) #19
  %i.c = shl i64 %1, 15
  %i.d = and i64 %i.c, 576460752303390720         ; 2 uses
  store i64 %i.d, ptr %0, align 8, !tbaa !42
  %i.e = shl nuw i64 %i.d, 5
  %i.f = tail call noundef ptr @_ZN9Stockfish25aligned_large_pages_allocEm(i64 noundef %i.e) #19 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !39
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str)
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef %1)
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.2)
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #19, !inline_history !43 ; 0 uses
  tail call void @exit(i32 noundef 1) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.k, align 8, !tbaa !44
  %i.l = tail call noundef i64 @_ZNK9Stockfish10ThreadPool11num_threadsEv(ptr noundef nonnull align 8 dereferenceable(64) %2) #19 ; 4 uses
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZN9Stockfish18TranspositionTable5clearERNS_10ThreadPoolE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i, %.lr.ph.i
  %.01315.i = phi i64 [ 0, %.lr.ph.i ], [ %i.r, %_ZNSt14_Function_baseD2Ev.exit.i ] ; 3 uses
  store i64 0, ptr %i.n, align 8
  %i.o = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22 ; 4 uses
  store ptr %0, ptr %i.o, align 16, !tbaa !45
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %.01315.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx.i, align 16, !tbaa !11
  store ptr %i.o, ptr %3, align 8, !tbaa !47
  store ptr @"_ZNSt17_Function_handlerIFvvEZN9Stockfish18TranspositionTable5clearERNS1_10ThreadPoolEE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.m, align 8, !tbaa !48
  store ptr @"_ZNSt17_Function_handlerIFvvEZN9Stockfish18TranspositionTable5clearERNS1_10ThreadPoolEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation", ptr %4, align 8, !tbaa !51
  call void @_ZN9Stockfish10ThreadPool13run_on_threadEmSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 noundef %.01315.i, ptr noundef nonnull align 8 %3) #19
  %i.p = load ptr, ptr %4, align 8, !tbaa !51     ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = call noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3) #19, !inline_history !52 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.e, %bb.d
  %i.r = add nuw i64 %.01315.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.r, %i.l
  br i1 %exitcond.not.i, label %.lr.ph17.i, label %bb.d, !llvm.loop !53

.lr.ph17.i:                                       ; preds = %_ZNSt14_Function_baseD2Ev.exit.i, %.lr.ph17.i
  %.016.i = phi i64 [ %i.s, %.lr.ph17.i ], [ 0, %_ZNSt14_Function_baseD2Ev.exit.i ] ; 2 uses
  call void @_ZN9Stockfish10ThreadPool14wait_on_threadEm(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 noundef %.016.i) #19
  %i.s = add nuw i64 %.016.i, 1                   ; 2 uses
  %exitcond19.not.i = icmp eq i64 %i.s, %i.l
  br i1 %exitcond19.not.i, label %_ZN9Stockfish18TranspositionTable5clearERNS_10ThreadPoolE.exit, label %.lr.ph17.i, !llvm.loop !54

_ZN9Stockfish18TranspositionTable5clearERNS_10ThreadPoolE.exit: ; preds = %.lr.ph17.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

declare void @_ZN9Stockfish24aligned_large_pages_freeEPv(ptr noundef) local_unnamed_addr #9

declare noundef ptr @_ZN9Stockfish25aligned_large_pages_allocEm(i64 noundef) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish18TranspositionTable5clearERNS_10ThreadPoolE(ptr noundef nonnull align 8 dereferenceable(17) initializes((16, 17)) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %"class.std::function", align 8     ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.a, align 8, !tbaa !44
  %i.b = tail call noundef i64 @_ZNK9Stockfish10ThreadPool11num_threadsEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #19 ; 4 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt14_Function_baseD2Ev.exit
  %.01315 = phi i64 [ 0, %.lr.ph ], [ %i.h, %_ZNSt14_Function_baseD2Ev.exit ] ; 3 uses
  store i64 0, ptr %i.d, align 8
  %i.e = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22 ; 4 uses
  store ptr %0, ptr %i.e, align 16, !tbaa !45
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.01315, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.b, ptr %.sroa.5.0..sroa_idx, align 16, !tbaa !11
  store ptr %i.e, ptr %2, align 8, !tbaa !47
  store ptr @"_ZNSt17_Function_handlerIFvvEZN9Stockfish18TranspositionTable5clearERNS1_10ThreadPoolEE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.c, align 8, !tbaa !48
  store ptr @"_ZNSt17_Function_handlerIFvvEZN9Stockfish18TranspositionTable5clearERNS1_10ThreadPoolEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation", ptr %3, align 8, !tbaa !51
  call void @_ZN9Stockfish10ThreadPool13run_on_threadEmSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %.01315, ptr noundef nonnull align 8 %2) #19
  %i.f = load ptr, ptr %3, align 8, !tbaa !51     ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #19, !inline_history !55 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.b, %bb.c
  %i.h = add nuw i64 %.01315, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.h, %i.b
  br i1 %exitcond.not, label %.lr.ph17, label %bb.b, !llvm.loop !53

._crit_edge:                                      ; preds = %.lr.ph17, %bb.a
  ret void

.lr.ph17:                                         ; preds = %_ZNSt14_Function_baseD2Ev.exit, %.lr.ph17
  %.016 = phi i64 [ %i.i, %.lr.ph17 ], [ 0, %_ZNSt14_Function_baseD2Ev.exit ] ; 2 uses
  call void @_ZN9Stockfish10ThreadPool14wait_on_threadEm(ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %.016) #19
  %i.i = add nuw i64 %.016, 1                     ; 2 uses
  %exitcond19.not = icmp eq i64 %i.i, %i.b
  br i1 %exitcond19.not, label %._crit_edge, label %.lr.ph17, !llvm.loop !54
}

declare noundef i64 @_ZNK9Stockfish10ThreadPool11num_threadsEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #9

declare void @_ZN9Stockfish10ThreadPool13run_on_threadEmSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef, ptr noundef align 8) local_unnamed_addr #9

declare void @_ZN9Stockfish10ThreadPool14wait_on_threadEm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i32 -715827882, 715827883) i32 @_ZNK9Stockfish18TranspositionTable8hashfullEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %0, i32 noundef %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = shl i32 %1, 3                            ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39   ; 2 uses
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
  %i.k = load i8, ptr %i.j, align 2, !tbaa !27
  %.not = icmp eq i8 %i.k, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.b:                                             ; preds = %bb.m
  %i.l = sdiv i32 %i.by, 3
  ret i32 %i.l

bb.c:                                             ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  %i.n = load i8, ptr %i.m, align 1, !tbaa !32
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
  %i.w = load i8, ptr %i.v, align 2, !tbaa !27
  %.not.1 = icmp eq i8 %i.w, 0
  br i1 %.not.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 13
  %i.y = load i8, ptr %i.x, align 1, !tbaa !32
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
  %i.ah = load i8, ptr %i.ag, align 2, !tbaa !27
  %.not.2 = icmp eq i8 %i.ah, 0
  br i1 %.not.2, label %.preheader.1, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 23
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !32
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
  %i.at = load i8, ptr %i.as, align 2, !tbaa !27
  %.not.120 = icmp eq i8 %i.at, 0
  br i1 %.not.120, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.preheader.1
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 35
  %i.av = load i8, ptr %i.au, align 1, !tbaa !32
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
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !27
  %.not.1.1 = icmp eq i8 %i.be, 0
  br i1 %.not.1.1, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 45
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !32
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
  %i.bp = load i8, ptr %i.bo, align 2, !tbaa !27
  %.not.2.1 = icmp eq i8 %i.bp, 0
  br i1 %.not.2.1, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ar, i64 55
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !32
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
  %i.b = load i8, ptr %i.a, align 8, !tbaa !44
  %i.c = add i8 %i.b, 8
  store i8 %i.c, ptr %i.a, align 8, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @_ZNK9Stockfish18TranspositionTable10generationEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !44
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK9Stockfish18TranspositionTable5probeEm(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::tuple.25") align 8 captures(none) initializes((0, 10), (12, 26), (28, 29)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %1, i64 noundef %2) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.c = load i64, ptr %1, align 8, !tbaa !42
  %i.d = zext i64 %2 to i128
  %i.e = zext i64 %i.c to i128
  %i.f = mul nuw i128 %i.e, %i.d
  %i.g = lshr i128 %i.f, 64
  %i.h = trunc nuw i128 %i.g to i64
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.h ; 11 uses
  %i.j = trunc i64 %2 to i16                      ; 3 uses
  %i.k = load i16, ptr %i.i, align 2, !tbaa !33
  %i.l = icmp eq i16 %i.k, %i.j
  br i1 %i.l, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
