inline.NumInlined: 2122
inline.NumDeleted: 1239
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN9Stockfish10ThreadPool3setERKNS_10NumaConfigENS_6Search11SharedStateERKNS4_13SearchManager13UpdateContextE:bb.a
  %i.a = alloca i64, align 8                      ; 4 uses
  %9 = alloca %"class.std::unique_ptr.296", align 8 ; 5 uses
  %10 = alloca %"class.std::thread", align 8      ; 6 uses
  %11 = alloca %"struct.std::_Rb_tree<unsigned long, std::pair<const unsigned long, unsigned long>, std::_Select1st<std::pair<const unsigned long, unsigned long>>, std::less<unsigned long>>::_Alloc_node", align 8 ; 4 uses
  %12 = alloca %"class.std::unique_lock", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %16 = alloca %"class.std::map", align 8         ; 12 uses
  %17 = alloca %"class.std::vector.119", align 16 ; 8 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %18 = alloca %class.anon.130, align 8           ; 6 uses
  %19 = alloca %"class.std::map", align 8         ; 11 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %20 = alloca %class.anon.131, align 8           ; 13 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !124
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !126  ; 2 uses
  %.not = icmp eq ptr %i.j, %i.k
  br i1 %.not, label %_ZNSt6vectorImSaImEE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !89   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 3 uses
  store ptr %i.m, ptr %12, align 8, !tbaa !95
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.o = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.m) #26 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.o) #31
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i:       ; preds = %bb.b
  store i8 1, ptr %i.n, align 8, !tbaa !98
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 169 ; 2 uses
  %.val.val2.i.i = load i8, ptr %i.q, align 1, !tbaa !82, !range !99, !noundef !71
  %i.r = trunc nuw i8 %.val.val2.i.i to i1
  br i1 %i.r, label %.lr.ph.i.i, label %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread.i.thread"

.lr.ph.i.i:                                       ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i, %.lr.ph.i.i
  call void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef nonnull align 8 dereferenceable(9) %12) #26
  %.val.val.i.i = load i8, ptr %i.q, align 1, !tbaa !82, !range !99, !noundef !71
  %i.s = trunc nuw i8 %.val.val.i.i to i1
  br i1 %i.s, label %.lr.ph.i.i, label %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.i", !llvm.loop !100

"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.i": ; preds = %.lr.ph.i.i
  %.pre.i = load i8, ptr %i.n, align 8, !tbaa !98, !range !99
  %i.t = trunc nuw i8 %.pre.i to i1
  %.pre = load ptr, ptr %12, align 8              ; 2 uses
  %.not.i.i.i = icmp ne ptr %.pre, null
  %or.cond.not = select i1 %i.t, i1 %.not.i.i.i, i1 false
  br i1 %or.cond.not, label %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread.i.thread", label %_ZN9Stockfish6Thread24wait_for_search_finishedEv.exit

"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread.i.thread": ; preds = %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.i", %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i
  %i.u = phi ptr [ %.pre, %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.i" ], [ %i.m, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i ]
  %i.v = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.u) #26 ; 0 uses
  br label %_ZN9Stockfish6Thread24wait_for_search_finishedEv.exit

_ZN9Stockfish6Thread24wait_for_search_finishedEv.exit: ; preds = %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.i", %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread.i.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !126  ; 3 uses
  %i.x = load ptr, ptr %i.i, align 8, !tbaa !124  ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, %i.w
  br i1 %.not.i.i, label %_ZNSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN9Stockfish6Thread24wait_for_search_finishedEv.exit, %_ZSt8_DestroyISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ac, %_ZSt8_DestroyISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %i.w, %_ZN9Stockfish6Thread24wait_for_search_finishedEv.exit ] ; 2 uses
  %i.y = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !89 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN9Stockfish6ThreadEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN9Stockfish6ThreadEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !42
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(192) %i.y) #26, !inline_history !127
  br label %_ZSt8_DestroyISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN9Stockfish6ThreadEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i12 = icmp eq ptr %i.ac, %i.x
  br i1 %.not.i.i.i.i12, label %_ZSt8_DestroyIPSt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !128

_ZSt8_DestroyIPSt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  store ptr %i.w, ptr %i.i, align 8, !tbaa !124
  br label %_ZNSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE5clearEv.exit

_ZNSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE5clearEv.exit: ; preds = %_ZN9Stockfish6Thread24wait_for_search_finishedEv.exit, %_ZSt8_DestroyIPSt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EEEvT_S7_.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !129 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !132
  %.not.i.i13 = icmp eq ptr %i.ag, %i.ae
  br i1 %.not.i.i13, label %_ZNSt6vectorImSaImEE5clearEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE5clearEv.exit
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !132
  br label %_ZNSt6vectorImSaImEE5clearEv.exit

_ZNSt6vectorImSaImEE5clearEv.exit:                ; preds = %bb.d, %_ZNSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE5clearEv.exit, %bb.a
  %i.ah = load ptr, ptr %2, align 8, !tbaa !64, !nonnull !71, !align !72
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.ai = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  store ptr %i.ai, ptr %13, align 8, !tbaa !73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.ai, ptr noundef nonnull align 1 dereferenceable(7) @.str, i64 7, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 7, ptr %i.aj, align 8, !tbaa !76
  %i.ak = getelementptr inbounds nuw i8, ptr %13, i64 23
  store i8 0, ptr %i.ak, align 1, !tbaa !78
  %i.al = call noundef nonnull align 8 dereferenceable(152) ptr @_ZNK9Stockfish10OptionsMapixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %13) #26
  %i.am = call noundef i32 @_ZNK9Stockfish6OptioncviEv(ptr noundef nonnull align 8 dereferenceable(152) %i.al) #26 ; 3 uses
  %i.an = sext i32 %i.am to i64                   ; 6 uses
  %i.ao = load ptr, ptr %13, align 8, !tbaa !79   ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.ai
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit
  %i.aq = load i64, ptr %i.ai, align 8, !tbaa !78
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  %.not11 = icmp eq i32 %i.am, 0
  br i1 %.not11, label %bb.ab, label %._crit_edge.i.i14

._crit_edge.i.i14:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.as = load ptr, ptr %2, align 8, !tbaa !64, !nonnull !71, !align !72
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.at = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  store ptr %i.at, ptr %15, align 8, !tbaa !73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.at, ptr noundef nonnull align 1 dereferenceable(10) @.str.2, i64 10, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 10, ptr %i.au, align 8, !tbaa !76
  %i.av = getelementptr inbounds nuw i8, ptr %15, i64 26
  store i8 0, ptr %i.av, align 2, !tbaa !78
  %i.aw = call noundef nonnull align 8 dereferenceable(152) ptr @_ZNK9Stockfish10OptionsMapixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %15) #26
  call void @_ZNK9Stockfish6OptioncvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(152) %i.aw) #26
  %i.ax = load ptr, ptr %15, align 8, !tbaa !79   ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.at
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %._crit_edge.i.i14
  %i.az = load i64, ptr %i.at, align 8, !tbaa !78
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %._crit_edge.i.i14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.bb = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !76
  %cond.i = icmp eq i64 %i.bc, 4
  br i1 %cond.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, label %"_ZZN9Stockfish10ThreadPool3setERKNS_10NumaConfigENS_6Search11SharedStateERKNS4_13SearchManager13UpdateContextEENK3$_0clEv.exit"

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %i.bd = load ptr, ptr %14, align 8, !tbaa !79   ; 2 uses
  %i.be = load i32, ptr %i.bd, align 1
  %i.bf = icmp ne i32 %i.be, 1701736302
  %i.bg = zext i1 %i.bf to i32
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %"_ZZN9Stockfish10ThreadPool3setERKNS_10NumaConfigENS_6Search11SharedStateERKNS4_13SearchManager13UpdateContextEENK3$_0clEv.exit", label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
  %i.bi = load i32, ptr %i.bd, align 1
  %i.bj = icmp ne i32 %i.bi, 1869903201
  %i.bk = zext i1 %i.bj to i32
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread.i, label %"_ZZN9Stockfish10ThreadPool3setERKNS_10NumaConfigENS_6Search11SharedStateERKNS4_13SearchManager13UpdateContextEENK3$_0clEv.exit"

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.i
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !133, !range !99, !noundef !71
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %"_ZZN9Stockfish10ThreadPool3setERKNS_10NumaConfigENS_6Search11SharedStateERKNS4_13SearchManager13UpdateContextEENK3$_0clEv.exit", label %bb.e

bb.e:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread.i
  %i.bp = icmp eq i32 %i.am, 1
  br i1 %i.bp, label %"_ZZN9Stockfish10ThreadPool3setERKNS_10NumaConfigENS_6Search11SharedStateERKNS4_13SearchManager13UpdateContextEENK3$_0clEv.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bq = load ptr, ptr %1, align 8, !tbaa !145   ; 13 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !145 ; 5 uses
  %.not2931.i.i = icmp eq ptr %i.bq, %i.bs
  br i1 %.not2931.i.i, label %._crit_edge.thread.i.i, label %iter.check

iter.check:                                       ; preds = %bb.f
  %21 = ptrtoaddr ptr %i.bs to i64
  %22 = ptrtoaddr ptr %i.bq to i64
  %i.bt = add i64 %21, -48
  %i.bu = sub i64 %i.bt, %22                      ; 5 uses
  %i.bv = udiv i64 %i.bu, 48
  %i.bw = add nuw nsw i64 %i.bv, 1                ; 8 uses
  %min.iters.check = icmp ult i64 %i.bu, 384
  br i1 %min.iters.check, label %.lr.ph.i.i19.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check108 = icmp ult i64 %i.bu, 1536
  br i1 %min.iters.check108, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.bw, 31                   ; 2 uses
  %i.bx = icmp eq i64 %n.mod.vf, 0
  %i.by = select i1 %i.bx, i64 32, i64 %n.mod.vf  ; 2 uses
  %n.vec = sub nsw i64 %i.bw, %i.by               ; 3 uses
  %i.bz = mul i64 %n.vec, 48
  %i.ca = getelementptr i8, ptr %i.bq, i64 %i.bz  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.cb, %vector.body ]
  %vec.phi109 = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.cc, %vector.body ]
  %vec.phi110 = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.cd, %vector.body ]
  %vec.phi111 = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.ce, %vector.body ]
  %pointer.phi = phi ptr [ %i.bq, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <8 x i64> <i64 0, i64 48, i64 96, i64 144, i64 192, i64 240, i64 288, i64 336> ; 4 uses
  %wide.gep = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 40
  %wide.gep112 = getelementptr i8, <8 x ptr> %vector.gep, i64 424
  %wide.gep113 = getelementptr i8, <8 x ptr> %vector.gep, i64 808
  %wide.gep114 = getelementptr i8, <8 x ptr> %vector.gep, i64 1192
  %wide.masked.gather = call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 8 %wide.gep, <8 x i1> splat (i1 true), <8 x i64> poison), !tbaa !37
  %wide.masked.gather115 = call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 8 %wide.gep112, <8 x i1> splat (i1 true), <8 x i64> poison), !tbaa !37
  %wide.masked.gather116 = call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 8 %wide.gep113, <8 x i1> splat (i1 true), <8 x i64> poison), !tbaa !37
  %wide.masked.gather117 = call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 8 %wide.gep114, <8 x i1> splat (i1 true), <8 x i64> poison), !tbaa !37
  %i.cb = call <8 x i64> @llvm.umax.v8i64(<8 x i64> %wide.masked.gather, <8 x i64> %vec.phi) ; 2 uses
  %i.cc = call <8 x i64> @llvm.umax.v8i64(<8 x i64> %wide.masked.gather115, <8 x i64> %vec.phi109) ; 2 uses
  %i.cd = call <8 x i64> @llvm.umax.v8i64(<8 x i64> %wide.masked.gather116, <8 x i64> %vec.phi110) ; 2 uses
  %i.ce = call <8 x i64> @llvm.umax.v8i64(<8 x i64> %wide.masked.gather117, <8 x i64> %vec.phi111) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 1536
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !146

vec.epilog.iter.check:                            ; preds = %vector.body
  %rdx.minmax = call <8 x i64> @llvm.umax.v8i64(<8 x i64> %i.cb, <8 x i64> %i.cc)
  %rdx.minmax118 = call <8 x i64> @llvm.umax.v8i64(<8 x i64> %rdx.minmax, <8 x i64> %i.cd)
  %rdx.minmax119 = call <8 x i64> @llvm.umax.v8i64(<8 x i64> %rdx.minmax118, <8 x i64> %i.ce)
  %i.cg = call i64 @llvm.vector.reduce.umax.v8i64(<8 x i64> %rdx.minmax119) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.by, 9
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i19.preheader, label %vec.epilog.ph, !prof !149

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.cg, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi ptr [ %i.ca, %vec.epilog.iter.check ], [ %i.bq, %vector.main.loop.iter.check ]
  %n.mod.vf120 = and i64 %i.bw, 7                 ; 2 uses
  %i.ch = icmp eq i64 %n.mod.vf120, 0
  %i.ci = select i1 %i.ch, i64 8, i64 %n.mod.vf120
  %n.vec121 = sub nsw i64 %i.bw, %i.ci            ; 2 uses
  %i.cj = mul i64 %n.vec121, 48
  %i.ck = getelementptr i8, ptr %i.bq, i64 %i.cj
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index122 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next128, %vec.epilog.vector.body ]
  %vec.phi123 = phi <8 x i64> [ %broadcast.splat, %vec.epilog.ph ], [ %i.cl, %vec.epilog.vector.body ]
  %pointer.phi124 = phi ptr [ %bc.resume.val, %vec.epilog.ph ], [ %ptr.ind129, %vec.epilog.vector.body ] ; 2 uses
  %vector.gep125 = getelementptr i8, ptr %pointer.phi124, <8 x i64> <i64 0, i64 48, i64 96, i64 144, i64 192, i64 240, i64 288, i64 336>
  %wide.gep126 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep125, i64 40
  %wide.masked.gather127 = call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 8 %wide.gep126, <8 x i1> splat (i1 true), <8 x i64> poison), !tbaa !37
  %i.cl = call <8 x i64> @llvm.umax.v8i64(<8 x i64> %wide.masked.gather127, <8 x i64> %vec.phi123) ; 2 uses
  %index.next128 = add nuw i64 %index122, 8       ; 2 uses
  %ptr.ind129 = getelementptr i8, ptr %pointer.phi124, i64 384
  %i.cm = icmp eq i64 %index.next128, %n.vec121
  br i1 %i.cm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !150

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.cn = call i64 @llvm.vector.reduce.umax.v8i64(<8 x i64> %i.cl)
  br label %.lr.ph.i.i19.preheader

.lr.ph.i.i19.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01633.i.i.ph = phi i64 [ 0, %iter.check ], [ %i.cg, %vec.epilog.iter.check ], [ %i.cn, %vec.epilog.middle.block ]
  %.sroa.025.032.i.i.ph = phi ptr [ %i.bq, %iter.check ], [ %i.ca, %vec.epilog.iter.check ], [ %i.ck, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i19

iter.check167:                                    ; preds = %.lr.ph.i.i19
  %i.co = uitofp i64 %spec.select28.i.i to double ; 3 uses
  %min.iters.check132 = icmp ult i64 %i.bu, 384
  br i1 %min.iters.check132, label %vec.epilog.scalar.ph168.preheader, label %vector.main.loop.iter.check133

vector.main.loop.iter.check133:                   ; preds = %iter.check167
  %min.iters.check134 = icmp ult i64 %i.bu, 1536
  br i1 %min.iters.check134, label %vec.epilog.ph171, label %vector.ph135

vector.ph135:                                     ; preds = %vector.main.loop.iter.check133
  %n.mod.vf136 = and i64 %i.bw, 31                ; 2 uses
  %i.cp = icmp eq i64 %n.mod.vf136, 0
  %i.cq = select i1 %i.cp, i64 32, i64 %n.mod.vf136 ; 2 uses
  %n.vec137 = sub nsw i64 %i.bw, %i.cq            ; 3 uses
  %i.cr = mul i64 %n.vec137, 48
  %i.cs = getelementptr i8, ptr %i.bq, i64 %i.cr  ; 2 uses
  %broadcast.splatinsert138 = insertelement <8 x double> poison, double %i.co, i64 0
  %broadcast.splat139 = shufflevector <8 x double> %broadcast.splatinsert138, <8 x double> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body140

vector.body140:                                   ; preds = %vector.body140, %vector.ph135
  %index141 = phi i64 [ 0, %vector.ph135 ], [ %index.next159, %vector.body140 ]
  %vec.phi142 = phi <8 x i64> [ zeroinitializer, %vector.ph135 ], [ %i.dj, %vector.body140 ]
  %vec.phi143 = phi <8 x i64> [ zeroinitializer, %vector.ph135 ], [ %i.dk, %vector.body140 ]
  %vec.phi144 = phi <8 x i64> [ zeroinitializer, %vector.ph135 ], [ %i.dl, %vector.body140 ]
  %vec.phi145 = phi <8 x i64> [ zeroinitializer, %vector.ph135 ], [ %i.dm, %vector.body140 ]
  %pointer.phi146 = phi ptr [ %i.bq, %vector.ph135 ], [ %ptr.ind160, %vector.body140 ] ; 2 uses
  %vector.gep147 = getelementptr i8, ptr %pointer.phi146, <8 x i64> <i64 0, i64 48, i64 96, i64 144, i64 192, i64 240, i64 288, i64 336> ; 4 uses
  %wide.gep151 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep147, i64 40
  %wide.gep152 = getelementptr i8, <8 x ptr> %vector.gep147, i64 424
  %wide.gep153 = getelementptr i8, <8 x ptr> %vector.gep147, i64 808
  %wide.gep154 = getelementptr i8, <8 x ptr> %vector.gep147, i64 1192
  %wide.masked.gather155 = call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 8 %wide.gep151, <8 x i1> splat (i1 true), <8 x i64> poison), !tbaa !37
  %wide.masked.gather156 = call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 8 %wide.gep152, <8 x i1> splat (i1 true), <8 x i64> poison), !tbaa !37
  %wide.masked.gather157 = call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 8 %wide.gep153, <8 x i1> splat (i1 true), <8 x i64> poison), !tbaa !37
  %wide.masked.gather158 = call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 8 %wide.gep154, <8 x i1> splat (i1 true), <8 x i64> poison), !tbaa !37
  %i.ct = uitofp <8 x i64> %wide.masked.gather155 to <8 x double>
  %i.cu = uitofp <8 x i64> %wide.masked.gather156 to <8 x double>
  %i.cv = uitofp <8 x i64> %wide.masked.gather157 to <8 x double>
  %i.cw = uitofp <8 x i64> %wide.masked.gather158 to <8 x double>
  %i.cx = fdiv <8 x double> %i.ct, %broadcast.splat139
  %i.cy = fdiv <8 x double> %i.cu, %broadcast.splat139
  %i.cz = fdiv <8 x double> %i.cv, %broadcast.splat139
  %i.da = fdiv <8 x double> %i.cw, %broadcast.splat139
  %i.db = fcmp ugt <8 x double> %i.cx, splat (double 6.000000e-01)
  %i.dc = fcmp ugt <8 x double> %i.cy, splat (double 6.000000e-01)
  %i.dd = fcmp ugt <8 x double> %i.cz, splat (double 6.000000e-01)
  %i.de = fcmp ugt <8 x double> %i.da, splat (double 6.000000e-01)
  %i.df = zext <8 x i1> %i.db to <8 x i64>
  %i.dg = zext <8 x i1> %i.dc to <8 x i64>
  %i.dh = zext <8 x i1> %i.dd to <8 x i64>
  %i.di = zext <8 x i1> %i.de to <8 x i64>
  %i.dj = add <8 x i64> %vec.phi142, %i.df        ; 2 uses
  %i.dk = add <8 x i64> %vec.phi143, %i.dg        ; 2 uses
  %i.dl = add <8 x i64> %vec.phi144, %i.dh        ; 2 uses
  %i.dm = add <8 x i64> %vec.phi145, %i.di        ; 2 uses
  %index.next159 = add nuw i64 %index141, 32      ; 2 uses
  %ptr.ind160 = getelementptr i8, ptr %pointer.phi146, i64 1536
  %i.dn = icmp eq i64 %index.next159, %n.vec137
  br i1 %i.dn, label %vec.epilog.iter.check169, label %vector.body140, !llvm.loop !151

vec.epilog.iter.check169:                         ; preds = %vector.body140
  %bin.rdx = add <8 x i64> %i.dk, %i.dj
  %bin.rdx162 = add <8 x i64> %i.dl, %bin.rdx
  %bin.rdx163 = add <8 x i64> %i.dm, %bin.rdx162
  %i.do = call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %bin.rdx163) ; 2 uses
  %min.epilog.iters.check170 = icmp samesign ult i64 %i.cq, 9
  br i1 %min.epilog.iters.check170, label %vec.epilog.scalar.ph168.preheader, label %vec.epilog.ph171, !prof !149

vec.epilog.ph171:                                 ; preds = %vector.main.loop.iter.check133, %vec.epilog.iter.check169
  %vec.epilog.resume.val164 = phi i64 [ %n.vec137, %vec.epilog.iter.check169 ], [ 0, %vector.main.loop.iter.check133 ]
  %bc.merge.rdx165 = phi i64 [ %i.do, %vec.epilog.iter.check169 ], [ 0, %vector.main.loop.iter.check133 ]
  %bc.resume.val166 = phi ptr [ %i.cs, %vec.epilog.iter.check169 ], [ %i.bq, %vector.main.loop.iter.check133 ]
  %n.mod.vf172 = and i64 %i.bw, 7                 ; 2 uses
  %i.dp = icmp eq i64 %n.mod.vf172, 0
  %i.dq = select i1 %i.dp, i64 8, i64 %n.mod.vf172
  %n.vec173 = sub nsw i64 %i.bw, %i.dq            ; 2 uses
  %i.dr = mul i64 %n.vec173, 48
  %i.ds = getelementptr i8, ptr %i.bq, i64 %i.dr
  %i.dt = insertelement <8 x i64> <i64 poison, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx165, i64 0
  %broadcast.splatinsert174 = insertelement <8 x double> poison, double %i.co, i64 0
  %broadcast.splat175 = shufflevector <8 x double> %broadcast.splatinsert174, <8 x double> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body176

vec.epilog.vector.body176:                        ; preds = %vec.epilog.vector.body176, %vec.epilog.ph171
  %index177 = phi i64 [ %vec.epilog.resume.val164, %vec.epilog.ph171 ], [ %index.next183, %vec.epilog.vector.body176 ]
  %vec.phi178 = phi <8 x i64> [ %i.dt, %vec.epilog.ph171 ], [ %i.dy, %vec.epilog.vector.body176 ]
  %pointer.phi179 = phi ptr [ %bc.resume.val166, %vec.epilog.ph171 ], [ %ptr.ind184, %vec.epilog.vector.body176 ] ; 2 uses
  %vector.gep180 = getelementptr i8, ptr %pointer.phi179, <8 x i64> <i64 0, i64 48, i64 96, i64 144, i64 192, i64 240, i64 288, i64 336>
  %wide.gep181 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep180, i64 40
  %wide.masked.gather182 = call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 8 %wide.gep181, <8 x i1> splat (i1 true), <8 x i64> poison), !tbaa !37
  %i.du = uitofp <8 x i64> %wide.masked.gather182 to <8 x double>
  %i.dv = fdiv <8 x double> %i.du, %broadcast.splat175
  %i.dw = fcmp ugt <8 x double> %i.dv, splat (double 6.000000e-01)
  %i.dx = zext <8 x i1> %i.dw to <8 x i64>
  %i.dy = add <8 x i64> %vec.phi178, %i.dx        ; 2 uses
  %index.next183 = add nuw i64 %index177, 8       ; 2 uses
  %ptr.ind184 = getelementptr i8, ptr %pointer.phi179, i64 384
  %i.dz = icmp eq i64 %index.next183, %n.vec173
  br i1 %i.dz, label %vec.epilog.middle.block185, label %vec.epilog.vector.body176, !llvm.loop !152

vec.epilog.middle.block185:                       ; preds = %vec.epilog.vector.body176
  %i.ea = call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.dy)
  br label %vec.epilog.scalar.ph168.preheader

vec.epilog.scalar.ph168.preheader:                ; preds = %iter.check167, %vec.epilog.iter.check169, %vec.epilog.middle.block185
  %.01736.i.i.ph = phi i64 [ 0, %iter.check167 ], [ %i.do, %vec.epilog.iter.check169 ], [ %i.ea, %vec.epilog.middle.block185 ]
  %.sroa.020.035.i.i.ph = phi ptr [ %i.bq, %iter.check167 ], [ %i.cs, %vec.epilog.iter.check169 ], [ %i.ds, %vec.epilog.middle.block185 ]
  br label %vec.epilog.scalar.ph168

.lr.ph.i.i19:                                     ; preds = %.lr.ph.i.i19.preheader, %.lr.ph.i.i19
end_hunk_0
begin_hunk_1_@_ZN9Stockfish10ThreadPool14start_thinkingERKNS_10OptionsMapERNS_8PositionERSt10unique_ptrISt5dequeINS_9StateInfoESaIS8_EESt14default_deleteISA_EENS_6Search10LimitsTypeE:bb.a
  store ptr @"_ZNSt17_Function_handlerIFvvEZN9Stockfish6Thread15start_searchingEvE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.fg, align 8, !tbaa !92
  store ptr @"_ZNSt17_Function_handlerIFvvEZN9Stockfish6Thread15start_searchingEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation", ptr %i.ff, align 8, !tbaa !93
  call void @_ZN9Stockfish6Thread14run_custom_jobESt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(192) %i.fd, ptr noundef nonnull align 8 %6)
  %i.fi = load ptr, ptr %i.ff, align 8, !tbaa !93 ; 2 uses
  %.not.i.i = icmp eq ptr %i.fi, null
  br i1 %.not.i.i, label %_ZN9Stockfish6Thread15start_searchingEv.exit, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge87
  %i.fj = call noundef zeroext i1 %i.fi(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3) #26, !inline_history !114 ; 0 uses
  br label %_ZN9Stockfish6Thread15start_searchingEv.exit

_ZN9Stockfish6Thread15start_searchingEv.exit:     ; preds = %._crit_edge87, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.fk = load ptr, ptr %8, align 8, !tbaa !313   ; 3 uses
  %i.fl = load ptr, ptr %i.al, align 8, !tbaa !270 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.fk, %i.fl
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN9Stockfish6Search8RootMoveEEvT_S4_.exit.i, label %.lr.ph.i.i.i35

.lr.ph.i.i.i35:                                   ; preds = %_ZN9Stockfish6Thread15start_searchingEv.exit, %_ZSt8_DestroyIN9Stockfish6Search8RootMoveEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ft, %_ZSt8_DestroyIN9Stockfish6Search8RootMoveEEvPT_.exit.i.i.i ], [ %i.fk, %_ZN9Stockfish6Thread15start_searchingEv.exit ] ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !285 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.fn, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN9Stockfish6Search8RootMoveEEvPT_.exit.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.i.i35
  %i.fo = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !286
  %i.fq = ptrtoint ptr %i.fp to i64
  %i.fr = ptrtoint ptr %i.fn to i64
  %i.fs = sub i64 %i.fq, %i.fr
  call void @_ZdlPvm(ptr noundef nonnull %i.fn, i64 noundef %i.fs) #30
  br label %_ZSt8_DestroyIN9Stockfish6Search8RootMoveEEvPT_.exit.i.i.i

_ZSt8_DestroyIN9Stockfish6Search8RootMoveEEvPT_.exit.i.i.i: ; preds = %bb.ae, %.lr.ph.i.i.i35
  %i.ft = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i36 = icmp eq ptr %i.ft, %i.fl
  br i1 %.not.i.i.i36, label %_ZSt8_DestroyIPN9Stockfish6Search8RootMoveEEvT_S4_.exitthread-pre-split.i, label %.lr.ph.i.i.i35, !llvm.loop !314

_ZSt8_DestroyIPN9Stockfish6Search8RootMoveEEvT_S4_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN9Stockfish6Search8RootMoveEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !313
  br label %_ZSt8_DestroyIPN9Stockfish6Search8RootMoveEEvT_S4_.exit.i

_ZSt8_DestroyIPN9Stockfish6Search8RootMoveEEvT_S4_.exit.i: ; preds = %_ZSt8_DestroyIPN9Stockfish6Search8RootMoveEEvT_S4_.exitthread-pre-split.i, %_ZN9Stockfish6Thread15start_searchingEv.exit
  %i.fu = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN9Stockfish6Search8RootMoveEEvT_S4_.exitthread-pre-split.i ], [ %i.fk, %_ZN9Stockfish6Thread15start_searchingEv.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.fu, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPN9Stockfish6Search8RootMoveEEvT_S4_.exit.i
  %i.fv = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !272
  %i.fx = ptrtoint ptr %i.fw to i64
  %i.fy = ptrtoint ptr %i.fu to i64
  %i.fz = sub i64 %i.fx, %i.fy
  call void @_ZdlPvm(ptr noundef nonnull %i.fu, i64 noundef %i.fz) #30
  br label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EED2Ev.exit

_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN9Stockfish6Search8RootMoveEEvT_S4_.exit.i, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  ret void

bb.ag:                                            ; preds = %.lr.ph86, %_ZN9Stockfish6Thread24wait_for_search_finishedEv.exit46
  %.sroa.047.084 = phi ptr [ %.pre94, %.lr.ph86 ], [ %i.gk, %_ZN9Stockfish6Thread24wait_for_search_finishedEv.exit46 ] ; 2 uses
  %i.ga = load ptr, ptr %.sroa.047.084, align 8, !tbaa !89 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 48 ; 2 uses
  store ptr %i.gb, ptr %5, align 8, !tbaa !95
  %i.gc = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.gb) #26 ; 2 uses
  %.not.i.i.i.i37 = icmp eq i32 %i.gc, 0
  br i1 %.not.i.i.i.i37, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i38, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZSt20__throw_system_errori(i32 noundef %i.gc) #31
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i38:     ; preds = %bb.ag
  store i8 1, ptr %i.ew, align 8, !tbaa !98
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 88
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 169 ; 2 uses
  %.val.val2.i.i39 = load i8, ptr %i.ge, align 1, !tbaa !82, !range !99, !noundef !71
  %i.gf = trunc nuw i8 %.val.val2.i.i39 to i1
  br i1 %i.gf, label %.lr.ph.i.i42, label %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread.i40"

.lr.ph.i.i42:                                     ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i38, %.lr.ph.i.i42
  call void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.gd, ptr noundef nonnull align 8 dereferenceable(9) %5) #26
  %.val.val.i.i43 = load i8, ptr %i.ge, align 1, !tbaa !82, !range !99, !noundef !71
  %i.gg = trunc nuw i8 %.val.val.i.i43 to i1
  br i1 %i.gg, label %.lr.ph.i.i42, label %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.i44", !llvm.loop !100

"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.i44": ; preds = %.lr.ph.i.i42
  %.pre.i45 = load i8, ptr %i.ew, align 8, !tbaa !98, !range !99
  %i.gh = trunc nuw i8 %.pre.i45 to i1
  br i1 %i.gh, label %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread.i40", label %_ZN9Stockfish6Thread24wait_for_search_finishedEv.exit46

"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread.i40": ; preds = %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.i44", %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i38
  %i.gi = load ptr, ptr %5, align 8, !tbaa !95    ; 2 uses
  %.not.i.i.i41 = icmp eq ptr %i.gi, null
  br i1 %.not.i.i.i41, label %_ZN9Stockfish6Thread24wait_for_search_finishedEv.exit46, label %bb.ai

bb.ai:                                            ; preds = %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread.i40"
  %i.gj = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.gi) #26 ; 0 uses
  br label %_ZN9Stockfish6Thread24wait_for_search_finishedEv.exit46

_ZN9Stockfish6Thread24wait_for_search_finishedEv.exit46: ; preds = %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.i44", %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread.i40", %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.047.084, i64 8 ; 2 uses
  %.not64 = icmp eq ptr %i.gk, %.pre95
  br i1 %.not64, label %._crit_edge87.loopexit, label %bb.ag
}

declare i16 @_ZN9Stockfish9UCIEngine7to_moveERKNS_8PositionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1048), ptr noundef align 8) local_unnamed_addr #6

declare { i64, i32 } @_ZN9Stockfish10Tablebases15rank_root_movesERKNS_10OptionsMapERNS_8PositionERSt6vectorINS_6Search8RootMoveESaIS8_EEbRKSt8functionIFbvEE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1048), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK9Stockfish10ThreadPool15get_best_threadEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %1 = alloca %"class.std::unordered_map", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !89   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !124
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !116  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 11421080
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 11421088
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !270
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !313
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = sdiv exact i64 %i.r, 72
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %i.i)
  %i.t = shl nsw i64 %.sroa.speculated, 1
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  store ptr %i.u, ptr %1, align 8, !tbaa !315
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  store i64 1, ptr %i.v, align 8, !tbaa !322
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.x, align 8, !tbaa !323
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  %i.z = call noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 noundef %i.t) #26 ; 6 uses
  %i.aa = load i64, ptr %i.v, align 8, !tbaa !322
  %i.ab = icmp ugt i64 %i.z, %i.aa
  br i1 %i.ab, label %bb.b, label %_ZNSt13unordered_mapIN9Stockfish4MoveElNS1_8MoveHashESt8equal_toIS1_ESaISt4pairIKS1_lEEEC2EmRKS2_RKS4_RKS8_.exit

bb.b:                                             ; preds = %bb.a
  %i.ac = icmp eq i64 %i.z, 1
  br i1 %i.ac, label %bb.c, label %bb.d, !prof !324

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.u, align 8, !tbaa !325
  br label %_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.ad = icmp ugt i64 %i.z, 1152921504606846975
  br i1 %i.ad, label %bb.e, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN9Stockfish4MoveElELb1EEEEE19_M_allocate_bucketsEm.exit.i.i.i, !prof !324

bb.e:                                             ; preds = %bb.d
  %i.ae = icmp ugt i64 %i.z, 2305843009213693951
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @_ZSt17__throw_bad_allocv() #31
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN9Stockfish4MoveElELb1EEEEE19_M_allocate_bucketsEm.exit.i.i.i: ; preds = %bb.d
  %i.af = shl nuw nsw i64 %i.z, 3                 ; 2 uses
  %i.ag = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #29 ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ag, i8 0, i64 %i.af, i1 false)
  br label %_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i

_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN9Stockfish4MoveElELb1EEEEE19_M_allocate_bucketsEm.exit.i.i.i, %bb.c
  %.0.i.i.i = phi ptr [ %i.u, %bb.c ], [ %i.ag, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN9Stockfish4MoveElELb1EEEEE19_M_allocate_bucketsEm.exit.i.i.i ]
  store ptr %.0.i.i.i, ptr %1, align 8, !tbaa !315
  store i64 %i.z, ptr %i.v, align 8, !tbaa !322
  br label %_ZNSt13unordered_mapIN9Stockfish4MoveElNS1_8MoveHashESt8equal_toIS1_ESaISt4pairIKS1_lEEEC2EmRKS2_RKS4_RKS8_.exit

_ZNSt13unordered_mapIN9Stockfish4MoveElNS1_8MoveHashESt8equal_toIS1_ESaISt4pairIKS1_lEEEC2EmRKS2_RKS4_RKS8_.exit: ; preds = %bb.a, %_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !120 ; 8 uses
  %i.ai = load ptr, ptr %i.d, align 8, !tbaa !120 ; 4 uses
  %.not9396 = icmp eq ptr %i.ah, %i.ai
  br i1 %.not9396, label %._crit_edge107, label %iter.check

iter.check:                                       ; preds = %_ZNSt13unordered_mapIN9Stockfish4MoveElNS1_8MoveHashESt8equal_toIS1_ESaISt4pairIKS1_lEEEC2EmRKS2_RKS4_RKS8_.exit
  %2 = ptrtoaddr ptr %i.ai to i64
  %3 = ptrtoaddr ptr %i.ah to i64
  %i.aj = add i64 %2, -8
  %i.ak = sub i64 %i.aj, %3                       ; 3 uses
  %i.al = lshr i64 %i.ak, 3
  %i.am = add nuw nsw i64 %i.al, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.ak, 56
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check133 = icmp ult i64 %i.ak, 248
  br i1 %min.iters.check133, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.am, 24
  %n.vec = and i64 %i.am, 4611686018427387872     ; 4 uses
  %i.an = shl i64 %n.vec, 3
  %i.ao = getelementptr i8, ptr %i.ah, i64 %i.an
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i32> [ splat (i32 32002), %vector.ph ], [ %i.at, %vector.body ]
  %vec.phi134 = phi <8 x i32> [ splat (i32 32002), %vector.ph ], [ %i.au, %vector.body ]
  %vec.phi135 = phi <8 x i32> [ splat (i32 32002), %vector.ph ], [ %i.av, %vector.body ]
  %vec.phi136 = phi <8 x i32> [ splat (i32 32002), %vector.ph ], [ %i.aw, %vector.body ]
  %i.ap = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ah, i64 %i.ap ; 4 uses
  %i.aq = getelementptr i8, ptr %next.gep, i64 64
  %i.ar = getelementptr i8, ptr %next.gep, i64 128
  %i.as = getelementptr i8, ptr %next.gep, i64 192
  %wide.load = load <8 x ptr>, ptr %next.gep, align 8, !tbaa !89
  %wide.load137 = load <8 x ptr>, ptr %i.aq, align 8, !tbaa !89
  %wide.load138 = load <8 x ptr>, ptr %i.ar, align 8, !tbaa !89
  %wide.load139 = load <8 x ptr>, ptr %i.as, align 8, !tbaa !89
  %wide.gep = getelementptr inbounds nuw i8, <8 x ptr> %wide.load, i64 8
  %wide.gep140 = getelementptr inbounds nuw i8, <8 x ptr> %wide.load137, i64 8
  %wide.gep141 = getelementptr inbounds nuw i8, <8 x ptr> %wide.load138, i64 8
  %wide.gep142 = getelementptr inbounds nuw i8, <8 x ptr> %wide.load139, i64 8
  %wide.masked.gather = call <8 x ptr> @llvm.masked.gather.v8p0.v8p0(<8 x ptr> align 8 %wide.gep, <8 x i1> splat (i1 true), <8 x ptr> poison), !tbaa !116
  %wide.masked.gather143 = call <8 x ptr> @llvm.masked.gather.v8p0.v8p0(<8 x ptr> align 8 %wide.gep140, <8 x i1> splat (i1 true), <8 x ptr> poison), !tbaa !116
  %wide.masked.gather144 = call <8 x ptr> @llvm.masked.gather.v8p0.v8p0(<8 x ptr> align 8 %wide.gep141, <8 x i1> splat (i1 true), <8 x ptr> poison), !tbaa !116
  %wide.masked.gather145 = call <8 x ptr> @llvm.masked.gather.v8p0.v8p0(<8 x ptr> align 8 %wide.gep142, <8 x i1> splat (i1 true), <8 x ptr> poison), !tbaa !116
  %wide.gep146 = getelementptr inbounds nuw i8, <8 x ptr> %wide.masked.gather, i64 11421080
  %wide.gep147 = getelementptr inbounds nuw i8, <8 x ptr> %wide.masked.gather143, i64 11421080
  %wide.gep148 = getelementptr inbounds nuw i8, <8 x ptr> %wide.masked.gather144, i64 11421080
  %wide.gep149 = getelementptr inbounds nuw i8, <8 x ptr> %wide.masked.gather145, i64 11421080
  %wide.masked.gather150 = call <8 x ptr> @llvm.masked.gather.v8p0.v8p0(<8 x ptr> align 8 %wide.gep146, <8 x i1> splat (i1 true), <8 x ptr> poison), !tbaa !313
  %wide.masked.gather151 = call <8 x ptr> @llvm.masked.gather.v8p0.v8p0(<8 x ptr> align 8 %wide.gep147, <8 x i1> splat (i1 true), <8 x ptr> poison), !tbaa !313
  %wide.masked.gather152 = call <8 x ptr> @llvm.masked.gather.v8p0.v8p0(<8 x ptr> align 8 %wide.gep148, <8 x i1> splat (i1 true), <8 x ptr> poison), !tbaa !313
  %wide.masked.gather153 = call <8 x ptr> @llvm.masked.gather.v8p0.v8p0(<8 x ptr> align 8 %wide.gep149, <8 x i1> splat (i1 true), <8 x ptr> poison), !tbaa !313
  %wide.gep154 = getelementptr inbounds nuw i8, <8 x ptr> %wide.masked.gather150, i64 8
  %wide.gep155 = getelementptr inbounds nuw i8, <8 x ptr> %wide.masked.gather151, i64 8
  %wide.gep156 = getelementptr inbounds nuw i8, <8 x ptr> %wide.masked.gather152, i64 8
  %wide.gep157 = getelementptr inbounds nuw i8, <8 x ptr> %wide.masked.gather153, i64 8
  %wide.masked.gather158 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep154, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !279
  %wide.masked.gather159 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep155, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !279
  %wide.masked.gather160 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep156, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !279
  %wide.masked.gather161 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep157, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !279
  %i.at = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather158, <8 x i32> %vec.phi) ; 2 uses
  %i.au = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather159, <8 x i32> %vec.phi134) ; 2 uses
  %i.av = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather160, <8 x i32> %vec.phi135) ; 2 uses
  %i.aw = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather161, <8 x i32> %vec.phi136) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !326

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.at, <8 x i32> %i.au)
  %rdx.minmax162 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %rdx.minmax, <8 x i32> %i.av)
  %rdx.minmax163 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %rdx.minmax162, <8 x i32> %i.aw)
  %i.ay = call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %rdx.minmax163) ; 3 uses
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %.lr.ph101, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !149

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.ay, %vec.epilog.iter.check ], [ 32002, %vector.main.loop.iter.check ]
  %n.vec165 = and i64 %i.am, 4611686018427387896  ; 3 uses
  %i.az = shl i64 %n.vec165, 3
  %i.ba = getelementptr i8, ptr %i.ah, i64 %i.az
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index166 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next176, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi167 = phi <8 x i32> [ %broadcast.splat, %vec.epilog.ph ], [ %i.bc, %vec.epilog.vector.body ]
  %i.bb = shl i64 %index166, 3
  %next.gep168 = getelementptr i8, ptr %i.ah, i64 %i.bb
  %wide.load169 = load <8 x ptr>, ptr %next.gep168, align 8, !tbaa !89
  %wide.gep170 = getelementptr inbounds nuw i8, <8 x ptr> %wide.load169, i64 8
  %wide.masked.gather171 = call <8 x ptr> @llvm.masked.gather.v8p0.v8p0(<8 x ptr> align 8 %wide.gep170, <8 x i1> splat (i1 true), <8 x ptr> poison), !tbaa !116
  %wide.gep172 = getelementptr inbounds nuw i8, <8 x ptr> %wide.masked.gather171, i64 11421080
  %wide.masked.gather173 = call <8 x ptr> @llvm.masked.gather.v8p0.v8p0(<8 x ptr> align 8 %wide.gep172, <8 x i1> splat (i1 true), <8 x ptr> poison), !tbaa !313
  %wide.gep174 = getelementptr inbounds nuw i8, <8 x ptr> %wide.masked.gather173, i64 8
  %wide.masked.gather175 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep174, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !279
  %i.bc = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather175, <8 x i32> %vec.phi167) ; 2 uses
  %index.next176 = add nuw i64 %index166, 8       ; 2 uses
  %i.bd = icmp eq i64 %index.next176, %n.vec165
  br i1 %i.bd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !327

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.be = call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %i.bc) ; 2 uses
  %cmp.n177 = icmp eq i64 %i.am, %n.vec165
  br i1 %cmp.n177, label %.lr.ph101, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09098.ph = phi i32 [ 32002, %iter.check ], [ %i.ay, %vec.epilog.iter.check ], [ %i.be, %vec.epilog.middle.block ]
  %.sroa.076.097.ph = phi ptr [ %i.ah, %iter.check ], [ %i.ao, %vec.epilog.iter.check ], [ %i.ba, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph101:                                        ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %.sroa.speculated86.lcssa = phi i32 [ %i.be, %vec.epilog.middle.block ], [ %i.ay, %middle.block ], [ %.sroa.speculated86, %.lr.ph ] ; 3 uses
  %invariant.op = sub i32 14, %.sroa.speculated86.lcssa
  br label %bb.h

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.09098 = phi i32 [ %.sroa.speculated86, %.lr.ph ], [ %.09098.ph, %.lr.ph.preheader ]
  %.sroa.076.097 = phi ptr [ %i.bm, %.lr.ph ], [ %.sroa.076.097.ph, %.lr.ph.preheader ] ; 2 uses
  %i.bf = load ptr, ptr %.sroa.076.097, align 8, !tbaa !89
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !116
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 11421080
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !313
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !279
  %.sroa.speculated86 = call i32 @llvm.smin.i32(i32 %i.bl, i32 %.09098) ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.076.097, i64 8 ; 2 uses
  %.not93 = icmp eq ptr %i.bm, %i.ai
  br i1 %.not93, label %.lr.ph101, label %.lr.ph, !llvm.loop !328

._crit_edge:                                      ; preds = %bb.h
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !120 ; 2 uses
  %.pre111 = load ptr, ptr %i.d, align 8, !tbaa !120 ; 2 uses
  %.not95102 = icmp eq ptr %.pre, %.pre111
  br i1 %.not95102, label %._crit_edge107, label %.lr.ph106.preheader

.lr.ph106.preheader:                              ; preds = %._crit_edge
  %invariant.op190 = sub i32 14, %.sroa.speculated86.lcssa
  %invariant.op191 = sub i32 14, %.sroa.speculated86.lcssa
  br label %.lr.ph106

bb.h:                                             ; preds = %.lr.ph101, %bb.h
  %.sroa.069.0100 = phi ptr [ %i.ah, %.lr.ph101 ], [ %i.bz, %bb.h ] ; 2 uses
  %i.bn = load ptr, ptr %.sroa.069.0100, align 8, !tbaa !89
  %i.bo = getelementptr i8, ptr %i.bn, i64 8
  %.val58 = load ptr, ptr %i.bo, align 8, !tbaa !116 ; 2 uses
  %i.bp = getelementptr i8, ptr %.val58, i64 11421080
  %.val58.val = load ptr, ptr %i.bp, align 8, !tbaa !313 ; 2 uses
  %i.bq = getelementptr i8, ptr %.val58, i64 11421108
  %.val58.val59 = load i32, ptr %i.bq, align 4, !tbaa !329
  %i.br = getelementptr i8, ptr %.val58.val, i64 8
  %.val58.val.val = load i32, ptr %i.br, align 8, !tbaa !373
  %.reass.reass = add i32 %.val58.val.val, %invariant.op
  %i.bs = mul nsw i32 %.reass.reass, %.val58.val59
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %.val58.val, i64 48
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !285
  %i.bw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIN9Stockfish4MoveESt4pairIKS2_lESaIS5_ENS_10_Select1stESt8equal_toIS2_ENS2_8MoveHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS4_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 2 dereferenceable(2) %i.bv) ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !26
  %i.by = add nsw i64 %i.bx, %i.bt
  store i64 %i.by, ptr %i.bw, align 8, !tbaa !26
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.069.0100, i64 8 ; 2 uses
  %.not94 = icmp eq ptr %i.bz, %i.ai
  br i1 %.not94, label %._crit_edge, label %bb.h

._crit_edge107:                                   ; preds = %bb.q, %_ZNSt13unordered_mapIN9Stockfish4MoveElNS1_8MoveHashESt8equal_toIS1_ESaISt4pairIKS1_lEEEC2EmRKS2_RKS4_RKS8_.exit, %._crit_edge
  %.0.lcssa = phi ptr [ %i.c, %._crit_edge ], [ %i.c, %_ZNSt13unordered_mapIN9Stockfish4MoveElNS1_8MoveHashESt8equal_toIS1_ESaISt4pairIKS1_lEEEC2EmRKS2_RKS4_RKS8_.exit ], [ %.1, %bb.q ]
  %i.ca = load ptr, ptr %i.w, align 8, !tbaa !374 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge107, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.cb, %.lr.ph.i.i.i.i ], [ %i.ca, %._crit_edge107 ] ; 2 uses
  %i.cb = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !375 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 32) #30
  %.not.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !376

_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %._crit_edge107
  %i.cc = load ptr, ptr %1, align 8, !tbaa !315
  %i.cd = load i64, ptr %i.v, align 8, !tbaa !322
  %i.ce = shl i64 %i.cd, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cc, i8 0, i64 %i.ce, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  %i.cf = load ptr, ptr %1, align 8, !tbaa !315   ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.u
  br i1 %i.cg, label %_ZNSt13unordered_mapIN9Stockfish4MoveElNS1_8MoveHashESt8equal_toIS1_ESaISt4pairIKS1_lEEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.ch = load i64, ptr %i.v, align 8, !tbaa !322
  %i.ci = shl i64 %i.ch, 3
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #30
  br label %_ZNSt13unordered_mapIN9Stockfish4MoveElNS1_8MoveHashESt8equal_toIS1_ESaISt4pairIKS1_lEEED2Ev.exit

_ZNSt13unordered_mapIN9Stockfish4MoveElNS1_8MoveHashESt8equal_toIS1_ESaISt4pairIKS1_lEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
end_hunk_1
begin_hunk_2_@_ZNK9Stockfish10ThreadPool15get_best_threadEv:bb.a
  %.0.val.val61 = load i32, ptr %i.dx, align 4, !tbaa !329
  %i.dy = getelementptr i8, ptr %.0.val.val, i64 8
  %.0.val.val.val = load i32, ptr %i.dy, align 8, !tbaa !373
  %.reass130.reass = add i32 %.0.val.val.val, %invariant.op191
  %i.dz = mul nsw i32 %.reass130.reass, %.0.val.val61
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cm, i64 56
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !288
  %i.ec = load ptr, ptr %i.cw, align 8, !tbaa !285
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = icmp ugt i64 %i.ef, 4
  %i.eh = select i1 %i.eg, i32 %i.dz, i32 0
  %i.ei = icmp sgt i32 %i.dv, %i.eh
  br i1 %i.de, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph106
  %i.ej = icmp sgt i32 %i.cv, %i.co
  %spec.select91 = select i1 %i.ej, ptr %i.di, ptr %.0104
  br label %bb.q

bb.k:                                             ; preds = %.lr.ph106
  %.not = icmp ne i32 %i.co, -32001
  %i.ek = icmp slt i32 %i.co, -31506
  %spec.select = and i1 %.not, %i.ek
  br i1 %spec.select, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.el = icmp slt i32 %i.cv, %i.co
  %or.cond53 = select i1 %i.dh, i1 %i.el, i1 false
  %spec.select92 = select i1 %or.cond53, ptr %i.di, ptr %.0104
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %or.cond = or i1 %i.df, %i.dh
  br i1 %or.cond, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %i.dg, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.em = icmp sgt i64 %i.dd, %i.da
  %i.en = icmp eq i64 %i.dd, %i.da
  %or.cond3 = and i1 %i.en, %i.ei
  %or.cond54 = or i1 %i.em, %or.cond3
  br i1 %or.cond54, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.m
  br label %bb.q

bb.q:                                             ; preds = %bb.l, %bb.j, %bb.o, %bb.p, %bb.n
  %.1 = phi ptr [ %.0104, %bb.n ], [ %i.di, %bb.p ], [ %spec.select91, %bb.j ], [ %.0104, %bb.o ], [ %spec.select92, %bb.l ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.065.0103, i64 8 ; 2 uses
  %.not95 = icmp eq ptr %i.eo, %.pre111
  br i1 %.not95, label %._crit_edge107, label %.lr.ph106
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish10ThreadPool15start_searchingEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %1 = alloca %"class.std::function", align 8     ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !120  ; 2 uses
  %.not9 = icmp eq ptr %i.b, %i.d
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.sroa.05.010 = phi ptr [ %i.b, %.lr.ph ], [ %i.n, %bb.e ] ; 2 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !120
  %i.i = load ptr, ptr %.sroa.05.010, align 8, !tbaa !89 ; 3 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !89
  %.not8 = icmp eq ptr %i.i, %i.j
  br i1 %.not8, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.k = ptrtoint ptr %i.i to i64
  store i64 0, ptr %i.g, align 8
  store i64 %i.k, ptr %1, align 8, !tbaa !89
  store ptr @"_ZNSt17_Function_handlerIFvvEZN9Stockfish6Thread15start_searchingEvE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.f, align 8, !tbaa !92
  store ptr @"_ZNSt17_Function_handlerIFvvEZN9Stockfish6Thread15start_searchingEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation", ptr %i.e, align 8, !tbaa !93
  call void @_ZN9Stockfish6Thread14run_custom_jobESt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(192) %i.i, ptr noundef nonnull align 8 %1)
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !93   ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZN9Stockfish6Thread15start_searchingEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = call noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3) #26, !inline_history !114 ; 0 uses
  br label %_ZN9Stockfish6Thread15start_searchingEv.exit

_ZN9Stockfish6Thread15start_searchingEv.exit:     ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %bb.e

bb.e:                                             ; preds = %_ZN9Stockfish6Thread15start_searchingEv.exit, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.05.010, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.n, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK9Stockfish10ThreadPool24wait_for_search_finishedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %1 = alloca %"class.std::unique_lock", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !120  ; 2 uses
  %.not9 = icmp eq ptr %i.b, %i.d
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.05.010 = phi ptr [ %i.b, %.lr.ph ], [ %i.r, %bb.f ] ; 2 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !120
  %i.g = load ptr, ptr %.sroa.05.010, align 8, !tbaa !89 ; 4 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !89
  %.not8 = icmp eq ptr %i.g, %i.h
  br i1 %.not8, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  store ptr %i.i, ptr %1, align 8, !tbaa !95
  %i.j = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.i) #26 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZSt20__throw_system_errori(i32 noundef %i.j) #31
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i:       ; preds = %bb.c
  store i8 1, ptr %i.e, align 8, !tbaa !98
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 169 ; 2 uses
  %.val.val2.i.i = load i8, ptr %i.l, align 1, !tbaa !82, !range !99, !noundef !71
  %i.m = trunc nuw i8 %.val.val2.i.i to i1
  br i1 %i.m, label %.lr.ph.i.i, label %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread.i"

.lr.ph.i.i:                                       ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i, %.lr.ph.i.i
  call void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(9) %1) #26
  %.val.val.i.i = load i8, ptr %i.l, align 1, !tbaa !82, !range !99, !noundef !71
  %i.n = trunc nuw i8 %.val.val.i.i to i1
  br i1 %i.n, label %.lr.ph.i.i, label %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.i", !llvm.loop !100

"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.i": ; preds = %.lr.ph.i.i
  %.pre.i = load i8, ptr %i.e, align 8, !tbaa !98, !range !99
  %i.o = trunc nuw i8 %.pre.i to i1
  br i1 %i.o, label %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread.i", label %_ZN9Stockfish6Thread24wait_for_search_finishedEv.exit

"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread.i": ; preds = %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.i", %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i
  %i.p = load ptr, ptr %1, align 8, !tbaa !95     ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZN9Stockfish6Thread24wait_for_search_finishedEv.exit, label %bb.e

bb.e:                                             ; preds = %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread.i"
  %i.q = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.p) #26 ; 0 uses
  br label %_ZN9Stockfish6Thread24wait_for_search_finishedEv.exit

_ZN9Stockfish6Thread24wait_for_search_finishedEv.exit: ; preds = %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.i", %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread.i", %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.f

bb.f:                                             ; preds = %_ZN9Stockfish6Thread24wait_for_search_finishedEv.exit, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.05.010, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.r, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK9Stockfish10ThreadPool35get_bound_thread_count_by_numa_nodeEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector.119") align 8 initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !156  ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !156  ; 4 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.a
  %2 = ptrtoaddr ptr %i.e to i64
  %3 = ptrtoaddr ptr %i.c to i64
  %i.g = add i64 %2, -8
  %i.h = sub i64 %i.g, %3                         ; 3 uses
  %i.i = lshr i64 %i.h, 3
  %i.j = add nuw nsw i64 %i.i, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.h, 56
  br i1 %min.iters.check, label %.preheader.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check30 = icmp ult i64 %i.h, 248
  br i1 %min.iters.check30, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.j, 24
  %n.vec = and i64 %i.j, 4611686018427387872      ; 4 uses
  %i.k = shl i64 %n.vec, 3
  %i.l = getelementptr i8, ptr %i.c, i64 %i.k
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.q, %vector.body ]
  %vec.phi31 = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.r, %vector.body ]
  %vec.phi32 = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.s, %vector.body ]
  %vec.phi33 = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.t, %vector.body ]
  %i.m = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.c, i64 %i.m ; 4 uses
  %i.n = getelementptr i8, ptr %next.gep, i64 64
  %i.o = getelementptr i8, ptr %next.gep, i64 128
  %i.p = getelementptr i8, ptr %next.gep, i64 192
  %wide.load = load <8 x i64>, ptr %next.gep, align 8, !tbaa !26
  %wide.load34 = load <8 x i64>, ptr %i.n, align 8, !tbaa !26
  %wide.load35 = load <8 x i64>, ptr %i.o, align 8, !tbaa !26
  %wide.load36 = load <8 x i64>, ptr %i.p, align 8, !tbaa !26
  %i.q = tail call <8 x i64> @llvm.umax.v8i64(<8 x i64> %wide.load, <8 x i64> %vec.phi) ; 2 uses
  %i.r = tail call <8 x i64> @llvm.umax.v8i64(<8 x i64> %wide.load34, <8 x i64> %vec.phi31) ; 2 uses
  %i.s = tail call <8 x i64> @llvm.umax.v8i64(<8 x i64> %wide.load35, <8 x i64> %vec.phi32) ; 2 uses
  %i.t = tail call <8 x i64> @llvm.umax.v8i64(<8 x i64> %wide.load36, <8 x i64> %vec.phi33) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !377

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <8 x i64> @llvm.umax.v8i64(<8 x i64> %i.q, <8 x i64> %i.r)
  %rdx.minmax37 = tail call <8 x i64> @llvm.umax.v8i64(<8 x i64> %rdx.minmax, <8 x i64> %i.s)
  %rdx.minmax38 = tail call <8 x i64> @llvm.umax.v8i64(<8 x i64> %rdx.minmax37, <8 x i64> %i.t)
  %i.v = tail call i64 @llvm.vector.reduce.umax.v8i64(<8 x i64> %rdx.minmax38) ; 3 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.loopexit49, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.preheader.preheader, label %vec.epilog.ph, !prof !149

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.v, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec40 = and i64 %i.j, 4611686018427387896    ; 3 uses
  %i.w = shl i64 %n.vec40, 3
  %i.x = getelementptr i8, ptr %i.c, i64 %i.w
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index41 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next45, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi42 = phi <8 x i64> [ %broadcast.splat, %vec.epilog.ph ], [ %i.z, %vec.epilog.vector.body ]
  %i.y = shl i64 %index41, 3
  %next.gep43 = getelementptr i8, ptr %i.c, i64 %i.y
  %wide.load44 = load <8 x i64>, ptr %next.gep43, align 8, !tbaa !26
  %i.z = tail call <8 x i64> @llvm.umax.v8i64(<8 x i64> %wide.load44, <8 x i64> %vec.phi42) ; 2 uses
  %index.next45 = add nuw i64 %index41, 8         ; 2 uses
  %i.aa = icmp eq i64 %index.next45, %n.vec40
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !378

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ab = tail call i64 @llvm.vector.reduce.umax.v8i64(<8 x i64> %i.z) ; 2 uses
  %cmp.n46 = icmp eq i64 %i.j, %n.vec40
  br i1 %cmp.n46, label %.loopexit49, label %.preheader.preheader

.preheader.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.020.ph = phi i64 [ 0, %iter.check ], [ %i.v, %vec.epilog.iter.check ], [ %i.ab, %vec.epilog.middle.block ]
  %.sroa.015.019.ph = phi ptr [ %i.c, %iter.check ], [ %i.l, %vec.epilog.iter.check ], [ %i.x, %vec.epilog.middle.block ]
  br label %.preheader

.loopexit49:                                      ; preds = %.preheader, %vec.epilog.middle.block, %middle.block
  %spec.select.lcssa = phi i64 [ %i.ab, %vec.epilog.middle.block ], [ %i.v, %middle.block ], [ %spec.select, %.preheader ]
  %i.ac = add i64 %spec.select.lcssa, 1           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 0, ptr %i.a, align 8, !tbaa !26
  %.not29 = icmp eq i64 %i.ac, 0
  br i1 %.not29, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit, label %bb.b

bb.b:                                             ; preds = %.loopexit49
  call void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr null, i64 noundef %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !156
  %.pre23 = load ptr, ptr %i.d, align 8, !tbaa !156
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit

_ZNSt6vectorImSaImEE6resizeEmRKm.exit:            ; preds = %.loopexit49, %bb.b
  %i.ad = phi ptr [ %.pre23, %bb.b ], [ %i.e, %.loopexit49 ] ; 2 uses
  %i.ae = phi ptr [ %.pre, %bb.b ], [ %i.c, %.loopexit49 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.not1821 = icmp eq ptr %i.ae, %i.ad
  br i1 %.not1821, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEE6resizeEmRKm.exit
  %i.af = load ptr, ptr %0, align 8, !tbaa !129
  br label %bb.c

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.020 = phi i64 [ %spec.select, %.preheader ], [ %.020.ph, %.preheader.preheader ]
  %.sroa.015.019 = phi ptr [ %i.ah, %.preheader ], [ %.sroa.015.019.ph, %.preheader.preheader ] ; 2 uses
  %i.ag = load i64, ptr %.sroa.015.019, align 8, !tbaa !26
  %spec.select = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 %.020) ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.015.019, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ah, %i.e
  br i1 %.not, label %.loopexit49, label %.preheader, !llvm.loop !379

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.sroa.011.022 = phi ptr [ %i.ae, %.lr.ph ], [ %i.am, %bb.c ] ; 2 uses
  %i.ai = load i64, ptr %.sroa.011.022, align 8, !tbaa !26
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ai ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !26
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !26
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.011.022, i64 8 ; 2 uses
  %.not18 = icmp eq ptr %i.am, %i.ad
  br i1 %.not18, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.c, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish10ThreadPool25ensure_network_replicatedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !120  ; 2 uses
  %.not7 = icmp eq ptr %i.b, %i.d
  br i1 %.not7, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.04.08 = phi ptr [ %i.h, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.04.08, align 8, !tbaa !89
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !116
  tail call void @_ZN9Stockfish6Search6Worker25ensure_network_replicatedEv(ptr noundef nonnull align 64 dereferenceable(14279296) %i.g) #26
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.04.08, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.h, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind uwtable
define internal void @__cxx_global_var_init.3() #0 section ".text.startup" comdat($_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E) {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E) #26
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, i8 0, i64 24, i1 false)
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EED2Ev, ptr nonnull @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, ptr nonnull @__dso_handle) #26 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !380    ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !383
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #30
  br label %_ZNSt12_Vector_baseIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EED2Ev.exit

_ZNSt12_Vector_baseIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind
end_hunk_2
