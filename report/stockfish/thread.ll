Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/thread?download=true
inline.NumInlined: 2122
inline.NumDeleted: 1239
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN9Stockfish10ThreadPool3setERKNS_10NumaConfigENS_6Search11SharedStateERKNS4_13SearchManager13UpdateContextE:bb.a
  %or.cond.not = select i1 %i.t, i1 %.not.i.i.i, i1 false
  br i1 %or.cond.not, label %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread.i.thread", label %_ZN9Stockfish6Thread24wait_for_search_finishedEv.exit

"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread.i.thread": ; preds = %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.i", %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i
  %i.u = phi ptr [ %.pre, %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.i" ], [ %i.m, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i ]
  %i.v = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.u) #26 ; 0 uses
  br label %_ZN9Stockfish6Thread24wait_for_search_finishedEv.exit

_ZN9Stockfish6Thread24wait_for_search_finishedEv.exit: ; preds = %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.i", %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread.i.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !114  ; 3 uses
  %i.x = load ptr, ptr %i.i, align 8, !tbaa !113  ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, %i.w
  br i1 %.not.i.i, label %_ZNSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN9Stockfish6Thread24wait_for_search_finishedEv.exit, %_ZSt8_DestroyISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ac, %_ZSt8_DestroyISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %i.w, %_ZN9Stockfish6Thread24wait_for_search_finishedEv.exit ] ; 2 uses
  %i.y = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !88 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN9Stockfish6ThreadEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN9Stockfish6ThreadEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !51
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(192) %i.y) #26, !inline_history !313
  br label %_ZSt8_DestroyISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN9Stockfish6ThreadEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i12 = icmp eq ptr %i.ac, %i.x
  br i1 %.not.i.i.i.i12, label %_ZSt8_DestroyIPSt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !314

_ZSt8_DestroyIPSt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  store ptr %i.w, ptr %i.i, align 8, !tbaa !113
  br label %_ZNSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE5clearEv.exit

_ZNSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE5clearEv.exit: ; preds = %_ZN9Stockfish6Thread24wait_for_search_finishedEv.exit, %_ZSt8_DestroyIPSt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EEEvT_S7_.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !117 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !118
  %.not.i.i13 = icmp eq ptr %i.ag, %i.ae
  br i1 %.not.i.i13, label %_ZNSt6vectorImSaImEE5clearEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE5clearEv.exit
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !118
  br label %_ZNSt6vectorImSaImEE5clearEv.exit

_ZNSt6vectorImSaImEE5clearEv.exit:                ; preds = %bb.d, %_ZNSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE5clearEv.exit, %bb.a
  %i.ah = load ptr, ptr %2, align 8, !tbaa !75, !nonnull !76, !align !77
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.ai = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  store ptr %i.ai, ptr %13, align 8, !tbaa !80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.ai, ptr noundef nonnull align 1 dereferenceable(7) @.str, i64 7, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 7, ptr %i.aj, align 8, !tbaa !82
  %i.ak = getelementptr inbounds nuw i8, ptr %13, i64 23
  store i8 0, ptr %i.ak, align 1, !tbaa !83
  %i.al = call noundef nonnull align 8 dereferenceable(152) ptr @_ZNK9Stockfish10OptionsMapixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %13) #26
  %i.am = call noundef i32 @_ZNK9Stockfish6OptioncviEv(ptr noundef nonnull align 8 dereferenceable(152) %i.al) #26 ; 3 uses
  %i.an = sext i32 %i.am to i64                   ; 6 uses
  %i.ao = load ptr, ptr %13, align 8, !tbaa !84   ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.ai
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit
  %i.aq = load i64, ptr %i.ai, align 8, !tbaa !83
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  %.not11 = icmp eq i32 %i.am, 0
  br i1 %.not11, label %bb.ab, label %._crit_edge.i.i14

._crit_edge.i.i14:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.as = load ptr, ptr %2, align 8, !tbaa !75, !nonnull !76, !align !77
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.at = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  store ptr %i.at, ptr %15, align 8, !tbaa !80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.at, ptr noundef nonnull align 1 dereferenceable(10) @.str.2, i64 10, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 10, ptr %i.au, align 8, !tbaa !82
  %i.av = getelementptr inbounds nuw i8, ptr %15, i64 26
  store i8 0, ptr %i.av, align 2, !tbaa !83
  %i.aw = call noundef nonnull align 8 dereferenceable(152) ptr @_ZNK9Stockfish10OptionsMapixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %15) #26
  call void @_ZNK9Stockfish6OptioncvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(152) %i.aw) #26
  %i.ax = load ptr, ptr %15, align 8, !tbaa !84   ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.at
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %._crit_edge.i.i14
  %i.az = load i64, ptr %i.at, align 8, !tbaa !83
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %._crit_edge.i.i14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.bb = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !82
  %cond.i = icmp eq i64 %i.bc, 4
  br i1 %cond.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, label %"_ZZN9Stockfish10ThreadPool3setERKNS_10NumaConfigENS_6Search11SharedStateERKNS4_13SearchManager13UpdateContextEENK3$_0clEv.exit"

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %i.bd = load ptr, ptr %14, align 8, !tbaa !84   ; 2 uses
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
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !331, !range !97, !noundef !76
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %"_ZZN9Stockfish10ThreadPool3setERKNS_10NumaConfigENS_6Search11SharedStateERKNS4_13SearchManager13UpdateContextEENK3$_0clEv.exit", label %bb.e

bb.e:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread.i
  %i.bp = icmp eq i32 %i.am, 1
  br i1 %i.bp, label %"_ZZN9Stockfish10ThreadPool3setERKNS_10NumaConfigENS_6Search11SharedStateERKNS4_13SearchManager13UpdateContextEENK3$_0clEv.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bq = load ptr, ptr %1, align 8, !tbaa !332   ; 13 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !332 ; 5 uses
  %.not2931.i.i = icmp eq ptr %i.bq, %i.bs
  br i1 %.not2931.i.i, label %._crit_edge.thread.i.i, label %iter.check

iter.check:                                       ; preds = %bb.f
  %i.bt = ptrtoaddr ptr %i.bs to i64
  %i.bu = ptrtoaddr ptr %i.bq to i64
  %i.bv = add i64 %i.bt, -48
  %i.bw = sub i64 %i.bv, %i.bu                    ; 5 uses
  %i.bx = udiv i64 %i.bw, 48
  %i.by = add nuw nsw i64 %i.bx, 1                ; 8 uses
  %min.iters.check = icmp ult i64 %i.bw, 384
  br i1 %min.iters.check, label %.lr.ph.i.i19.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check108 = icmp ult i64 %i.bw, 1536
  br i1 %min.iters.check108, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bz = and i64 %i.by, 31                       ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 0
  %i.cb = select i1 %i.ca, i64 32, i64 %i.bz      ; 2 uses
  %n.vec = sub nsw i64 %i.by, %i.cb               ; 3 uses
  %i.cc = mul i64 %n.vec, 48
  %i.cd = getelementptr i8, ptr %i.bq, i64 %i.cc  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.ce, %vector.body ]
  %vec.phi109 = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.cf, %vector.body ]
  %vec.phi110 = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.cg, %vector.body ]
  %vec.phi111 = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.ch, %vector.body ]
  %pointer.phi = phi ptr [ %i.bq, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <8 x i64> <i64 0, i64 48, i64 96, i64 144, i64 192, i64 240, i64 288, i64 336> ; 4 uses
  %wide.gep = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 40
  %wide.gep112 = getelementptr i8, <8 x ptr> %vector.gep, i64 424
  %wide.gep113 = getelementptr i8, <8 x ptr> %vector.gep, i64 808
  %wide.gep114 = getelementptr i8, <8 x ptr> %vector.gep, i64 1192
  %wide.masked.gather = call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 8 %wide.gep, <8 x i1> splat (i1 true), <8 x i64> poison), !tbaa !47
  %wide.masked.gather115 = call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 8 %wide.gep112, <8 x i1> splat (i1 true), <8 x i64> poison), !tbaa !47
  %wide.masked.gather116 = call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 8 %wide.gep113, <8 x i1> splat (i1 true), <8 x i64> poison), !tbaa !47
  %wide.masked.gather117 = call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 8 %wide.gep114, <8 x i1> splat (i1 true), <8 x i64> poison), !tbaa !47
  %i.ce = call <8 x i64> @llvm.umax.v8i64(<8 x i64> %wide.masked.gather, <8 x i64> %vec.phi) ; 2 uses
  %i.cf = call <8 x i64> @llvm.umax.v8i64(<8 x i64> %wide.masked.gather115, <8 x i64> %vec.phi109) ; 2 uses
  %i.cg = call <8 x i64> @llvm.umax.v8i64(<8 x i64> %wide.masked.gather116, <8 x i64> %vec.phi110) ; 2 uses
  %i.ch = call <8 x i64> @llvm.umax.v8i64(<8 x i64> %wide.masked.gather117, <8 x i64> %vec.phi111) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 1536
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !315

vec.epilog.iter.check:                            ; preds = %vector.body
  %rdx.minmax = call <8 x i64> @llvm.umax.v8i64(<8 x i64> %i.ce, <8 x i64> %i.cf)
  %rdx.minmax118 = call <8 x i64> @llvm.umax.v8i64(<8 x i64> %rdx.minmax, <8 x i64> %i.cg)
  %rdx.minmax119 = call <8 x i64> @llvm.umax.v8i64(<8 x i64> %rdx.minmax118, <8 x i64> %i.ch)
  %i.cj = call i64 @llvm.vector.reduce.umax.v8i64(<8 x i64> %rdx.minmax119) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.cb, 9
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i19.preheader, label %vec.epilog.ph, !prof !132

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.cj, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi ptr [ %i.cd, %vec.epilog.iter.check ], [ %i.bq, %vector.main.loop.iter.check ]
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.ck = and i64 %i.by, 7                        ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 0
  %i.cm = select i1 %i.cl, i64 8, i64 %i.ck
  %n.vec120 = sub nsw i64 %i.by, %i.cm            ; 2 uses
  %i.cn = mul i64 %n.vec120, 48
  %i.co = getelementptr i8, ptr %i.bq, i64 %i.cn
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index121 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next127, %vec.epilog.vector.body ]
  %vec.phi122 = phi <8 x i64> [ %broadcast.splat, %vec.epilog.ph ], [ %i.cp, %vec.epilog.vector.body ]
  %pointer.phi123 = phi ptr [ %bc.resume.val, %vec.epilog.ph ], [ %ptr.ind128, %vec.epilog.vector.body ] ; 2 uses
  %vector.gep124 = getelementptr i8, ptr %pointer.phi123, <8 x i64> <i64 0, i64 48, i64 96, i64 144, i64 192, i64 240, i64 288, i64 336>
  %wide.gep125 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep124, i64 40
  %wide.masked.gather126 = call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 8 %wide.gep125, <8 x i1> splat (i1 true), <8 x i64> poison), !tbaa !47
  %i.cp = call <8 x i64> @llvm.umax.v8i64(<8 x i64> %wide.masked.gather126, <8 x i64> %vec.phi122) ; 2 uses
  %index.next127 = add nuw i64 %index121, 8       ; 2 uses
  %ptr.ind128 = getelementptr i8, ptr %pointer.phi123, i64 384
  %i.cq = icmp eq i64 %index.next127, %n.vec120
  br i1 %i.cq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !316

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.cr = call i64 @llvm.vector.reduce.umax.v8i64(<8 x i64> %i.cp)
  br label %.lr.ph.i.i19.preheader

.lr.ph.i.i19.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01633.i.i.ph = phi i64 [ 0, %iter.check ], [ %i.cj, %vec.epilog.iter.check ], [ %i.cr, %vec.epilog.middle.block ]
  %.sroa.025.032.i.i.ph = phi ptr [ %i.bq, %iter.check ], [ %i.cd, %vec.epilog.iter.check ], [ %i.co, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i19

iter.check165:                                    ; preds = %.lr.ph.i.i19
  %i.cs = uitofp i64 %spec.select28.i.i to double ; 3 uses
  %min.iters.check131 = icmp ult i64 %i.bw, 384
  br i1 %min.iters.check131, label %vec.epilog.scalar.ph166.preheader, label %vector.main.loop.iter.check132

vector.main.loop.iter.check132:                   ; preds = %iter.check165
  %min.iters.check133 = icmp ult i64 %i.bw, 1536
  br i1 %min.iters.check133, label %vec.epilog.ph169, label %vector.ph134

vector.ph134:                                     ; preds = %vector.main.loop.iter.check132
  %i.ct = and i64 %i.by, 31                       ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 0
  %i.cv = select i1 %i.cu, i64 32, i64 %i.ct      ; 2 uses
  %n.vec135 = sub nsw i64 %i.by, %i.cv            ; 3 uses
  %i.cw = mul i64 %n.vec135, 48
  %i.cx = getelementptr i8, ptr %i.bq, i64 %i.cw  ; 2 uses
  %broadcast.splatinsert136 = insertelement <8 x double> poison, double %i.cs, i64 0
  %broadcast.splat137 = shufflevector <8 x double> %broadcast.splatinsert136, <8 x double> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body138

vector.body138:                                   ; preds = %vector.ph134, %vector.body138
  %index139 = phi i64 [ 0, %vector.ph134 ], [ %index.next157, %vector.body138 ]
  %vec.phi140 = phi <8 x i64> [ zeroinitializer, %vector.ph134 ], [ %i.do, %vector.body138 ]
  %vec.phi141 = phi <8 x i64> [ zeroinitializer, %vector.ph134 ], [ %i.dp, %vector.body138 ]
  %vec.phi142 = phi <8 x i64> [ zeroinitializer, %vector.ph134 ], [ %i.dq, %vector.body138 ]
  %vec.phi143 = phi <8 x i64> [ zeroinitializer, %vector.ph134 ], [ %i.dr, %vector.body138 ]
  %pointer.phi144 = phi ptr [ %i.bq, %vector.ph134 ], [ %ptr.ind158, %vector.body138 ] ; 2 uses
  %vector.gep145 = getelementptr i8, ptr %pointer.phi144, <8 x i64> <i64 0, i64 48, i64 96, i64 144, i64 192, i64 240, i64 288, i64 336> ; 4 uses
  %wide.gep149 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep145, i64 40
  %wide.gep150 = getelementptr i8, <8 x ptr> %vector.gep145, i64 424
  %wide.gep151 = getelementptr i8, <8 x ptr> %vector.gep145, i64 808
  %wide.gep152 = getelementptr i8, <8 x ptr> %vector.gep145, i64 1192
  %wide.masked.gather153 = call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 8 %wide.gep149, <8 x i1> splat (i1 true), <8 x i64> poison), !tbaa !47
  %wide.masked.gather154 = call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 8 %wide.gep150, <8 x i1> splat (i1 true), <8 x i64> poison), !tbaa !47
  %wide.masked.gather155 = call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 8 %wide.gep151, <8 x i1> splat (i1 true), <8 x i64> poison), !tbaa !47
  %wide.masked.gather156 = call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 8 %wide.gep152, <8 x i1> splat (i1 true), <8 x i64> poison), !tbaa !47
  %i.cy = uitofp <8 x i64> %wide.masked.gather153 to <8 x double>
  %i.cz = uitofp <8 x i64> %wide.masked.gather154 to <8 x double>
  %i.da = uitofp <8 x i64> %wide.masked.gather155 to <8 x double>
  %i.db = uitofp <8 x i64> %wide.masked.gather156 to <8 x double>
  %i.dc = fdiv <8 x double> %i.cy, %broadcast.splat137
  %i.dd = fdiv <8 x double> %i.cz, %broadcast.splat137
  %i.de = fdiv <8 x double> %i.da, %broadcast.splat137
  %i.df = fdiv <8 x double> %i.db, %broadcast.splat137
  %i.dg = fcmp ugt <8 x double> %i.dc, splat (double 6.000000e-01)
  %i.dh = fcmp ugt <8 x double> %i.dd, splat (double 6.000000e-01)
  %i.di = fcmp ugt <8 x double> %i.de, splat (double 6.000000e-01)
  %i.dj = fcmp ugt <8 x double> %i.df, splat (double 6.000000e-01)
  %i.dk = zext <8 x i1> %i.dg to <8 x i64>
  %i.dl = zext <8 x i1> %i.dh to <8 x i64>
  %i.dm = zext <8 x i1> %i.di to <8 x i64>
  %i.dn = zext <8 x i1> %i.dj to <8 x i64>
  %i.do = add <8 x i64> %vec.phi140, %i.dk        ; 2 uses
  %i.dp = add <8 x i64> %vec.phi141, %i.dl        ; 2 uses
  %i.dq = add <8 x i64> %vec.phi142, %i.dm        ; 2 uses
  %i.dr = add <8 x i64> %vec.phi143, %i.dn        ; 2 uses
  %index.next157 = add nuw i64 %index139, 32      ; 2 uses
  %ptr.ind158 = getelementptr i8, ptr %pointer.phi144, i64 1536
  %i.ds = icmp eq i64 %index.next157, %n.vec135
  br i1 %i.ds, label %vec.epilog.iter.check167, label %vector.body138, !llvm.loop !317

vec.epilog.iter.check167:                         ; preds = %vector.body138
  %bin.rdx = add <8 x i64> %i.dp, %i.do
  %bin.rdx160 = add <8 x i64> %i.dq, %bin.rdx
  %bin.rdx161 = add <8 x i64> %i.dr, %bin.rdx160
  %i.dt = call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %bin.rdx161) ; 2 uses
  %min.epilog.iters.check168 = icmp samesign ult i64 %i.cv, 9
  br i1 %min.epilog.iters.check168, label %vec.epilog.scalar.ph166.preheader, label %vec.epilog.ph169, !prof !132

vec.epilog.ph169:                                 ; preds = %vector.main.loop.iter.check132, %vec.epilog.iter.check167
  %vec.epilog.resume.val162 = phi i64 [ %n.vec135, %vec.epilog.iter.check167 ], [ 0, %vector.main.loop.iter.check132 ]
  %bc.merge.rdx163 = phi i64 [ %i.dt, %vec.epilog.iter.check167 ], [ 0, %vector.main.loop.iter.check132 ]
  %bc.resume.val164 = phi ptr [ %i.cx, %vec.epilog.iter.check167 ], [ %i.bq, %vector.main.loop.iter.check132 ]
  %i.du = and i64 %i.by, 7                        ; 2 uses
  %i.dv = icmp eq i64 %i.du, 0
  %i.dw = select i1 %i.dv, i64 8, i64 %i.du
  %n.vec170 = sub nsw i64 %i.by, %i.dw            ; 2 uses
  %i.dx = mul i64 %n.vec170, 48
  %i.dy = getelementptr i8, ptr %i.bq, i64 %i.dx
  %i.dz = insertelement <8 x i64> <i64 poison, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx163, i64 0
  %broadcast.splatinsert171 = insertelement <8 x double> poison, double %i.cs, i64 0
  %broadcast.splat172 = shufflevector <8 x double> %broadcast.splatinsert171, <8 x double> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body173

vec.epilog.vector.body173:                        ; preds = %vec.epilog.vector.body173, %vec.epilog.ph169
  %index174 = phi i64 [ %vec.epilog.resume.val162, %vec.epilog.ph169 ], [ %index.next180, %vec.epilog.vector.body173 ]
  %vec.phi175 = phi <8 x i64> [ %i.dz, %vec.epilog.ph169 ], [ %i.ee, %vec.epilog.vector.body173 ]
  %pointer.phi176 = phi ptr [ %bc.resume.val164, %vec.epilog.ph169 ], [ %ptr.ind181, %vec.epilog.vector.body173 ] ; 2 uses
  %vector.gep177 = getelementptr i8, ptr %pointer.phi176, <8 x i64> <i64 0, i64 48, i64 96, i64 144, i64 192, i64 240, i64 288, i64 336>
  %wide.gep178 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep177, i64 40
  %wide.masked.gather179 = call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 8 %wide.gep178, <8 x i1> splat (i1 true), <8 x i64> poison), !tbaa !47
  %i.ea = uitofp <8 x i64> %wide.masked.gather179 to <8 x double>
  %i.eb = fdiv <8 x double> %i.ea, %broadcast.splat172
  %i.ec = fcmp ugt <8 x double> %i.eb, splat (double 6.000000e-01)
  %i.ed = zext <8 x i1> %i.ec to <8 x i64>
  %i.ee = add <8 x i64> %vec.phi175, %i.ed        ; 2 uses
  %index.next180 = add nuw i64 %index174, 8       ; 2 uses
  %ptr.ind181 = getelementptr i8, ptr %pointer.phi176, i64 384
  %i.ef = icmp eq i64 %index.next180, %n.vec170
  br i1 %i.ef, label %vec.epilog.middle.block182, label %vec.epilog.vector.body173, !llvm.loop !318

vec.epilog.middle.block182:                       ; preds = %vec.epilog.vector.body173
  %i.eg = call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.ee)
  br label %vec.epilog.scalar.ph166.preheader

vec.epilog.scalar.ph166.preheader:                ; preds = %iter.check165, %vec.epilog.iter.check167, %vec.epilog.middle.block182
  %.036.i.i.ph = phi i64 [ 0, %iter.check165 ], [ %i.dt, %vec.epilog.iter.check167 ], [ %i.eg, %vec.epilog.middle.block182 ]
  %.sroa.020.035.i.i.ph = phi ptr [ %i.bq, %iter.check165 ], [ %i.cx, %vec.epilog.iter.check167 ], [ %i.dy, %vec.epilog.middle.block182 ]
  br label %vec.epilog.scalar.ph166

.lr.ph.i.i19:                                     ; preds = %.lr.ph.i.i19.preheader, %.lr.ph.i.i19
  %.01633.i.i = phi i64 [ %spec.select28.i.i, %.lr.ph.i.i19 ], [ %.01633.i.i.ph, %.lr.ph.i.i19.preheader ]
  %.sroa.025.032.i.i = phi ptr [ %i.ej, %.lr.ph.i.i19 ], [ %.sroa.025.032.i.i.ph, %.lr.ph.i.i19.preheader ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.025.032.i.i, i64 40
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !47
  %spec.select28.i.i = call i64 @llvm.umax.i64(i64 %i.ei, i64 %.01633.i.i) ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.025.032.i.i, i64 48 ; 2 uses
  %.not29.i.i = icmp eq ptr %i.ej, %i.bs
  br i1 %.not29.i.i, label %iter.check165, label %.lr.ph.i.i19, !llvm.loop !319

._crit_edge.i.i20:                                ; preds = %vec.epilog.scalar.ph166
  %i.ek = shl i64 %spec.select.i.i, 2
  %i.el = icmp ugt i64 %i.ek, %i.an
  %i.em = lshr i64 %spec.select28.i.i, 1
  %i.en = icmp uge i64 %i.em, %i.an
  %or.cond.i.i = select i1 %i.en, i1 %i.el, i1 false
  br i1 %or.cond.i.i, label %"_ZZN9Stockfish10ThreadPool3setERKNS_10NumaConfigENS_6Search11SharedStateERKNS4_13SearchManager13UpdateContextEENK3$_0clEv.exit", label %._crit_edge.thread.i.i

vec.epilog.scalar.ph166:                          ; preds = %vec.epilog.scalar.ph166.preheader, %vec.epilog.scalar.ph166
  %.036.i.i = phi i64 [ %spec.select.i.i, %vec.epilog.scalar.ph166 ], [ %.036.i.i.ph, %vec.epilog.scalar.ph166.preheader ]
  %.sroa.020.035.i.i = phi ptr [ %i.eu, %vec.epilog.scalar.ph166 ], [ %.sroa.020.035.i.i.ph, %vec.epilog.scalar.ph166.preheader ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.020.035.i.i, i64 40
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !47
  %i.eq = uitofp i64 %i.ep to double
  %i.er = fdiv double %i.eq, %i.cs
  %i.es = fcmp ugt double %i.er, 6.000000e-01
  %i.et = zext i1 %i.es to i64
  %spec.select.i.i = add i64 %.036.i.i, %i.et     ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.020.035.i.i, i64 48 ; 2 uses
  %.not30.i.i = icmp eq ptr %i.eu, %i.bs
  br i1 %.not30.i.i, label %._crit_edge.i.i20, label %vec.epilog.scalar.ph166, !llvm.loop !320

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i20, %bb.f
  %i.ev = ptrtoint ptr %i.bs to i64
  %i.ew = ptrtoint ptr %i.bq to i64
  %i.ex = sub i64 %i.ev, %i.ew
  %i.ey = sdiv exact i64 %i.ex, 48
  %i.ez = icmp ugt i64 %i.ey, 1
  br label %"_ZZN9Stockfish10ThreadPool3setERKNS_10NumaConfigENS_6Search11SharedStateERKNS4_13SearchManager13UpdateContextEENK3$_0clEv.exit"

"_ZZN9Stockfish10ThreadPool3setERKNS_10NumaConfigENS_6Search11SharedStateERKNS4_13SearchManager13UpdateContextEENK3$_0clEv.exit": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread.i, %bb.e, %._crit_edge.i.i20, %._crit_edge.thread.i.i
  %.0.i = phi i1 [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18 ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.i ], [ %i.ez, %._crit_edge.thread.i.i ], [ false, %bb.e ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread.i ], [ false, %._crit_edge.i.i20 ] ; 4 uses
  %i.fa = zext i1 %.0.i to i8
  store i8 %i.fa, ptr %i.b, align 1, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.fb = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 7 uses
  store i32 0, ptr %i.fb, align 8, !tbaa !43
  %i.fc = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 5 uses
  store ptr null, ptr %i.fc, align 8, !tbaa !44
  %i.fd = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 3 uses
  store ptr %i.fb, ptr %i.fd, align 8, !tbaa !45
  %i.fe = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  store ptr %i.fb, ptr %i.fe, align 8, !tbaa !46
  %i.ff = getelementptr inbounds nuw i8, ptr %16, i64 40 ; 3 uses
  store i64 0, ptr %i.ff, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  br i1 %.0.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %"_ZZN9Stockfish10ThreadPool3setERKNS_10NumaConfigENS_6Search11SharedStateERKNS4_13SearchManager13UpdateContextEENK3$_0clEv.exit"
  call void @_ZNK9Stockfish10NumaConfig35distribute_threads_among_numa_nodesEm(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.119") align 8 %17, ptr noundef nonnull align 8 dereferenceable(81) %1, i64 noundef %i.an)
  %i.fg = load <2 x ptr>, ptr %17, align 16, !tbaa !134
  %.phi.trans.insert65 = getelementptr inbounds nuw i8, ptr %17, i64 16
  %.pre66 = load ptr, ptr %.phi.trans.insert65, align 16, !tbaa !135
  br label %bb.h

bb.h:                                             ; preds = %"_ZZN9Stockfish10ThreadPool3setERKNS_10NumaConfigENS_6Search11SharedStateERKNS4_13SearchManager13UpdateContextEENK3$_0clEv.exit", %bb.g
end_hunk_0
begin_hunk_1_@_ZN9Stockfish10ThreadPool14start_thinkingERKNS_10OptionsMapERNS_8PositionERSt10unique_ptrISt5dequeINS_9StateInfoESaIS8_EESt14default_deleteISA_EENS_6Search10LimitsTypeE:bb.a
  %i.gg = trunc nuw i8 %.val.val2.i.i39 to i1
  br i1 %i.gg, label %.lr.ph.i.i42, label %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread.i40"

.lr.ph.i.i42:                                     ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i38, %.lr.ph.i.i42
  call void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.ge, ptr noundef nonnull align 8 dereferenceable(9) %5) #26
  %.val.val.i.i43 = load i8, ptr %i.gf, align 1, !tbaa !86, !range !97, !noundef !76
  %i.gh = trunc nuw i8 %.val.val.i.i43 to i1
  br i1 %i.gh, label %.lr.ph.i.i42, label %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.i44", !llvm.loop !4

"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.i44": ; preds = %.lr.ph.i.i42
  %.pre.i45 = load i8, ptr %i.ex, align 8, !tbaa !96, !range !97
  %i.gi = trunc nuw i8 %.pre.i45 to i1
  br i1 %i.gi, label %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread.i40", label %_ZN9Stockfish6Thread24wait_for_search_finishedEv.exit46

"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread.i40": ; preds = %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.i44", %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i38
  %i.gj = load ptr, ptr %5, align 8, !tbaa !95    ; 2 uses
  %.not.i.i.i41 = icmp eq ptr %i.gj, null
  br i1 %.not.i.i.i41, label %_ZN9Stockfish6Thread24wait_for_search_finishedEv.exit46, label %bb.ai

bb.ai:                                            ; preds = %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread.i40"
  %i.gk = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.gj) #26 ; 0 uses
  br label %_ZN9Stockfish6Thread24wait_for_search_finishedEv.exit46

_ZN9Stockfish6Thread24wait_for_search_finishedEv.exit46: ; preds = %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.i44", %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread.i40", %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.047.084, i64 8 ; 2 uses
  %.not64 = icmp eq ptr %i.gl, %.pre95
  br i1 %.not64, label %._crit_edge87.loopexit, label %bb.ag
}

declare i16 @_ZN9Stockfish9UCIEngine7to_moveERKNS_8PositionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1048), ptr noundef align 8) local_unnamed_addr #6

declare { i64, i32 } @_ZN9Stockfish10Tablebases15rank_root_movesERKNS_10OptionsMapERNS_8PositionERSt6vectorINS_6Search8RootMoveESaIS8_EEbRKSt8functionIFbvEE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1048), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK9Stockfish10ThreadPool15get_best_threadEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %1 = alloca %"class.std::unordered_map", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !88   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !113
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !107  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 11421080
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 11421088
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !175
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !209
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = sdiv exact i64 %i.r, 72
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %i.i)
  %i.t = shl nsw i64 %.sroa.speculated, 1
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  store ptr %i.u, ptr %1, align 8, !tbaa !216
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  store i64 1, ptr %i.v, align 8, !tbaa !217
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.x, align 8, !tbaa !402
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  %i.z = call noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 noundef %i.t) #26 ; 6 uses
  %i.aa = load i64, ptr %i.v, align 8, !tbaa !217
  %i.ab = icmp ugt i64 %i.z, %i.aa
  br i1 %i.ab, label %bb.b, label %_ZNSt13unordered_mapIN9Stockfish4MoveElNS1_8MoveHashESt8equal_toIS1_ESaISt4pairIKS1_lEEEC2EmRKS2_RKS4_RKS8_.exit

bb.b:                                             ; preds = %bb.a
  %i.ac = icmp eq i64 %i.z, 1
  br i1 %i.ac, label %bb.c, label %bb.d, !prof !218

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.u, align 8, !tbaa !219
  br label %_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.ad = icmp ugt i64 %i.z, 1152921504606846975
  br i1 %i.ad, label %bb.e, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN9Stockfish4MoveElELb1EEEEE19_M_allocate_bucketsEm.exit.i.i.i, !prof !218

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
  store ptr %.0.i.i.i, ptr %1, align 8, !tbaa !216
  store i64 %i.z, ptr %i.v, align 8, !tbaa !217
  br label %_ZNSt13unordered_mapIN9Stockfish4MoveElNS1_8MoveHashESt8equal_toIS1_ESaISt4pairIKS1_lEEEC2EmRKS2_RKS4_RKS8_.exit

_ZNSt13unordered_mapIN9Stockfish4MoveElNS1_8MoveHashESt8equal_toIS1_ESaISt4pairIKS1_lEEEC2EmRKS2_RKS4_RKS8_.exit: ; preds = %bb.a, %_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !109 ; 8 uses
  %i.ai = load ptr, ptr %i.d, align 8, !tbaa !109 ; 4 uses
  %.not9396 = icmp eq ptr %i.ah, %i.ai
  br i1 %.not9396, label %._crit_edge107, label %iter.check

iter.check:                                       ; preds = %_ZNSt13unordered_mapIN9Stockfish4MoveElNS1_8MoveHashESt8equal_toIS1_ESaISt4pairIKS1_lEEEC2EmRKS2_RKS4_RKS8_.exit
  %i.aj = ptrtoaddr ptr %i.ai to i64
  %i.ak = ptrtoaddr ptr %i.ah to i64
  %i.al = add i64 %i.aj, -8
  %i.am = sub i64 %i.al, %i.ak                    ; 3 uses
  %i.an = lshr i64 %i.am, 3
  %i.ao = add nuw nsw i64 %i.an, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.am, 56
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check133 = icmp ult i64 %i.am, 248
  br i1 %min.iters.check133, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ap = and i64 %i.ao, 24
  %n.vec = and i64 %i.ao, 4611686018427387872     ; 4 uses
  %i.aq = shl i64 %n.vec, 3
  %i.ar = getelementptr i8, ptr %i.ah, i64 %i.aq
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i32> [ splat (i32 32002), %vector.ph ], [ %i.aw, %vector.body ]
  %vec.phi134 = phi <8 x i32> [ splat (i32 32002), %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi135 = phi <8 x i32> [ splat (i32 32002), %vector.ph ], [ %i.ay, %vector.body ]
  %vec.phi136 = phi <8 x i32> [ splat (i32 32002), %vector.ph ], [ %i.az, %vector.body ]
  %i.as = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ah, i64 %i.as ; 4 uses
  %i.at = getelementptr i8, ptr %next.gep, i64 64
  %i.au = getelementptr i8, ptr %next.gep, i64 128
  %i.av = getelementptr i8, ptr %next.gep, i64 192
  %wide.load = load <8 x ptr>, ptr %next.gep, align 8, !tbaa !88
  %wide.load137 = load <8 x ptr>, ptr %i.at, align 8, !tbaa !88
  %wide.load138 = load <8 x ptr>, ptr %i.au, align 8, !tbaa !88
  %wide.load139 = load <8 x ptr>, ptr %i.av, align 8, !tbaa !88
  %wide.gep = getelementptr inbounds nuw i8, <8 x ptr> %wide.load, i64 8
  %wide.gep140 = getelementptr inbounds nuw i8, <8 x ptr> %wide.load137, i64 8
  %wide.gep141 = getelementptr inbounds nuw i8, <8 x ptr> %wide.load138, i64 8
  %wide.gep142 = getelementptr inbounds nuw i8, <8 x ptr> %wide.load139, i64 8
  %wide.masked.gather = call <8 x ptr> @llvm.masked.gather.v8p0.v8p0(<8 x ptr> align 8 %wide.gep, <8 x i1> splat (i1 true), <8 x ptr> poison), !tbaa !107
  %wide.masked.gather143 = call <8 x ptr> @llvm.masked.gather.v8p0.v8p0(<8 x ptr> align 8 %wide.gep140, <8 x i1> splat (i1 true), <8 x ptr> poison), !tbaa !107
  %wide.masked.gather144 = call <8 x ptr> @llvm.masked.gather.v8p0.v8p0(<8 x ptr> align 8 %wide.gep141, <8 x i1> splat (i1 true), <8 x ptr> poison), !tbaa !107
  %wide.masked.gather145 = call <8 x ptr> @llvm.masked.gather.v8p0.v8p0(<8 x ptr> align 8 %wide.gep142, <8 x i1> splat (i1 true), <8 x ptr> poison), !tbaa !107
  %wide.gep146 = getelementptr inbounds nuw i8, <8 x ptr> %wide.masked.gather, i64 11421080
  %wide.gep147 = getelementptr inbounds nuw i8, <8 x ptr> %wide.masked.gather143, i64 11421080
  %wide.gep148 = getelementptr inbounds nuw i8, <8 x ptr> %wide.masked.gather144, i64 11421080
  %wide.gep149 = getelementptr inbounds nuw i8, <8 x ptr> %wide.masked.gather145, i64 11421080
  %wide.masked.gather150 = call <8 x ptr> @llvm.masked.gather.v8p0.v8p0(<8 x ptr> align 8 %wide.gep146, <8 x i1> splat (i1 true), <8 x ptr> poison), !tbaa !209
  %wide.masked.gather151 = call <8 x ptr> @llvm.masked.gather.v8p0.v8p0(<8 x ptr> align 8 %wide.gep147, <8 x i1> splat (i1 true), <8 x ptr> poison), !tbaa !209
  %wide.masked.gather152 = call <8 x ptr> @llvm.masked.gather.v8p0.v8p0(<8 x ptr> align 8 %wide.gep148, <8 x i1> splat (i1 true), <8 x ptr> poison), !tbaa !209
  %wide.masked.gather153 = call <8 x ptr> @llvm.masked.gather.v8p0.v8p0(<8 x ptr> align 8 %wide.gep149, <8 x i1> splat (i1 true), <8 x ptr> poison), !tbaa !209
  %wide.gep154 = getelementptr inbounds nuw i8, <8 x ptr> %wide.masked.gather150, i64 8
  %wide.gep155 = getelementptr inbounds nuw i8, <8 x ptr> %wide.masked.gather151, i64 8
  %wide.gep156 = getelementptr inbounds nuw i8, <8 x ptr> %wide.masked.gather152, i64 8
  %wide.gep157 = getelementptr inbounds nuw i8, <8 x ptr> %wide.masked.gather153, i64 8
  %wide.masked.gather158 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep154, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !183
  %wide.masked.gather159 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep155, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !183
  %wide.masked.gather160 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep156, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !183
  %wide.masked.gather161 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep157, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !183
  %i.aw = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather158, <8 x i32> %vec.phi) ; 2 uses
  %i.ax = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather159, <8 x i32> %vec.phi134) ; 2 uses
  %i.ay = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather160, <8 x i32> %vec.phi135) ; 2 uses
  %i.az = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather161, <8 x i32> %vec.phi136) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !398

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.aw, <8 x i32> %i.ax)
  %rdx.minmax162 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %rdx.minmax, <8 x i32> %i.ay)
  %rdx.minmax163 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %rdx.minmax162, <8 x i32> %i.az)
  %i.bb = call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %rdx.minmax163) ; 3 uses
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %.lr.ph101, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ap, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !132

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.bb, %vec.epilog.iter.check ], [ 32002, %vector.main.loop.iter.check ]
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %n.vec164 = and i64 %i.ao, 4611686018427387896  ; 3 uses
  %2 = shl i64 %n.vec164, 3
  %3 = getelementptr i8, ptr %i.ah, i64 %2
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index165 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next175, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi166 = phi <8 x i32> [ %broadcast.splat, %vec.epilog.ph ], [ %i.bd, %vec.epilog.vector.body ]
  %i.bc = shl i64 %index165, 3
  %next.gep167 = getelementptr i8, ptr %i.ah, i64 %i.bc
  %wide.load168 = load <8 x ptr>, ptr %next.gep167, align 8, !tbaa !88
  %wide.gep169 = getelementptr inbounds nuw i8, <8 x ptr> %wide.load168, i64 8
  %wide.masked.gather170 = call <8 x ptr> @llvm.masked.gather.v8p0.v8p0(<8 x ptr> align 8 %wide.gep169, <8 x i1> splat (i1 true), <8 x ptr> poison), !tbaa !107
  %wide.gep171 = getelementptr inbounds nuw i8, <8 x ptr> %wide.masked.gather170, i64 11421080
  %wide.masked.gather172 = call <8 x ptr> @llvm.masked.gather.v8p0.v8p0(<8 x ptr> align 8 %wide.gep171, <8 x i1> splat (i1 true), <8 x ptr> poison), !tbaa !209
  %wide.gep173 = getelementptr inbounds nuw i8, <8 x ptr> %wide.masked.gather172, i64 8
  %wide.masked.gather174 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep173, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !183
  %i.bd = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather174, <8 x i32> %vec.phi166) ; 2 uses
  %index.next175 = add nuw i64 %index165, 8       ; 2 uses
  %i.be = icmp eq i64 %index.next175, %n.vec164
  br i1 %i.be, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !399

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bf = call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %i.bd) ; 2 uses
  %cmp.n176 = icmp eq i64 %i.ao, %n.vec164
  br i1 %cmp.n176, label %.lr.ph101, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.076.098.ph = phi ptr [ %i.ah, %iter.check ], [ %i.ar, %vec.epilog.iter.check ], [ %3, %vec.epilog.middle.block ]
  %.09097.ph = phi i32 [ 32002, %iter.check ], [ %i.bb, %vec.epilog.iter.check ], [ %i.bf, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph101:                                        ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %.sroa.speculated86.lcssa = phi i32 [ %i.bf, %vec.epilog.middle.block ], [ %i.bb, %middle.block ], [ %.sroa.speculated86, %.lr.ph ] ; 3 uses
  %invariant.op = sub i32 14, %.sroa.speculated86.lcssa
  br label %bb.h

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.076.098 = phi ptr [ %i.bn, %.lr.ph ], [ %.sroa.076.098.ph, %.lr.ph.preheader ] ; 2 uses
  %.09097 = phi i32 [ %.sroa.speculated86, %.lr.ph ], [ %.09097.ph, %.lr.ph.preheader ]
  %i.bg = load ptr, ptr %.sroa.076.098, align 8, !tbaa !88
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !107
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 11421080
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !209
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !183
  %.sroa.speculated86 = call i32 @llvm.smin.i32(i32 %i.bm, i32 %.09097) ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.076.098, i64 8 ; 2 uses
  %.not93 = icmp eq ptr %i.bn, %i.ai
  br i1 %.not93, label %.lr.ph101, label %.lr.ph, !llvm.loop !400

._crit_edge:                                      ; preds = %bb.h
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !109 ; 2 uses
  %.pre111 = load ptr, ptr %i.d, align 8, !tbaa !109 ; 2 uses
  %.not95102 = icmp eq ptr %.pre, %.pre111
  br i1 %.not95102, label %._crit_edge107, label %.lr.ph106.preheader

.lr.ph106.preheader:                              ; preds = %._crit_edge
  %invariant.op189.a = sub i32 14, %.sroa.speculated86.lcssa
  %invariant.op190 = sub i32 14, %.sroa.speculated86.lcssa
  br label %.lr.ph106

bb.h:                                             ; preds = %.lr.ph101, %bb.h
  %.sroa.069.0100 = phi ptr [ %i.ah, %.lr.ph101 ], [ %i.ca, %bb.h ] ; 2 uses
  %i.bo = load ptr, ptr %.sroa.069.0100, align 8, !tbaa !88
  %i.bp = getelementptr i8, ptr %i.bo, i64 8
  %.val58 = load ptr, ptr %i.bp, align 8, !tbaa !107 ; 2 uses
  %i.bq = getelementptr i8, ptr %.val58, i64 11421080
  %.val58.val = load ptr, ptr %i.bq, align 8, !tbaa !209 ; 2 uses
  %i.br = getelementptr i8, ptr %.val58, i64 11421108
  %.val58.val59 = load i32, ptr %i.br, align 4, !tbaa !263
  %i.bs = getelementptr i8, ptr %.val58.val, i64 8
  %.val58.val.val = load i32, ptr %i.bs, align 8, !tbaa !403
  %.reass.reass = add i32 %.val58.val.val, %invariant.op
  %i.bt = mul nsw i32 %.reass.reass, %.val58.val59
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %.val58.val, i64 48
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !189
  %i.bx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIN9Stockfish4MoveESt4pairIKS2_lESaIS5_ENS_10_Select1stESt8equal_toIS2_ENS2_8MoveHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS4_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 2 dereferenceable(2) %i.bw) ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !37
  %i.bz = add nsw i64 %i.by, %i.bu
  store i64 %i.bz, ptr %i.bx, align 8, !tbaa !37
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.069.0100, i64 8 ; 2 uses
  %.not94 = icmp eq ptr %i.ca, %i.ai
  br i1 %.not94, label %._crit_edge, label %bb.h

._crit_edge107:                                   ; preds = %bb.q, %_ZNSt13unordered_mapIN9Stockfish4MoveElNS1_8MoveHashESt8equal_toIS1_ESaISt4pairIKS1_lEEEC2EmRKS2_RKS4_RKS8_.exit, %._crit_edge
  %.0.lcssa = phi ptr [ %i.c, %._crit_edge ], [ %i.c, %_ZNSt13unordered_mapIN9Stockfish4MoveElNS1_8MoveHashESt8equal_toIS1_ESaISt4pairIKS1_lEEEC2EmRKS2_RKS4_RKS8_.exit ], [ %.1, %bb.q ]
  %i.cb = load ptr, ptr %i.w, align 8, !tbaa !264 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge107, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i.i ], [ %i.cb, %._crit_edge107 ] ; 2 uses
  %i.cc = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !265 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 32) #30
  %.not.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !401

_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %._crit_edge107
  %i.cd = load ptr, ptr %1, align 8, !tbaa !216
  %i.ce = load i64, ptr %i.v, align 8, !tbaa !217
  %i.cf = shl i64 %i.ce, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cd, i8 0, i64 %i.cf, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  %i.cg = load ptr, ptr %1, align 8, !tbaa !216   ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.u
  br i1 %i.ch, label %_ZNSt13unordered_mapIN9Stockfish4MoveElNS1_8MoveHashESt8equal_toIS1_ESaISt4pairIKS1_lEEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.ci = load i64, ptr %i.v, align 8, !tbaa !217
  %i.cj = shl i64 %i.ci, 3
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #30
  br label %_ZNSt13unordered_mapIN9Stockfish4MoveElNS1_8MoveHashESt8equal_toIS1_ESaISt4pairIKS1_lEEED2Ev.exit

_ZNSt13unordered_mapIN9Stockfish4MoveElNS1_8MoveHashESt8equal_toIS1_ESaISt4pairIKS1_lEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret ptr %.0.lcssa

.lr.ph106:                                        ; preds = %.lr.ph106.preheader, %bb.q
  %.0104 = phi ptr [ %.1, %bb.q ], [ %i.c, %.lr.ph106.preheader ] ; 5 uses
  %.sroa.065.0103 = phi ptr [ %i.ep, %bb.q ], [ %.pre, %.lr.ph106.preheader ] ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.0104, i64 8 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !107
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 11421080
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !209 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !403 ; 5 uses
  %i.cq = load ptr, ptr %.sroa.065.0103, align 8, !tbaa !88
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !107
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 11421080
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !209 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !403 ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cn, i64 48 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 48 ; 2 uses
  %i.cz = load ptr, ptr %i.cx, align 8, !tbaa !189
  %i.da = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIN9Stockfish4MoveESt4pairIKS2_lESaIS5_ENS_10_Select1stESt8equal_toIS2_ENS2_8MoveHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS4_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 2 dereferenceable(2) %i.cz)
  %i.db = load i64, ptr %i.da, align 8, !tbaa !37 ; 2 uses
  %i.dc = load ptr, ptr %i.cy, align 8, !tbaa !189
  %i.dd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIN9Stockfish4MoveESt4pairIKS2_lESaIS5_ENS_10_Select1stESt8equal_toIS2_ENS2_8MoveHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS4_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 2 dereferenceable(2) %i.dc)
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !37 ; 2 uses
  %i.df = icmp sgt i32 %i.cp, 31506
  %i.dg = icmp sgt i32 %i.cw, 31506
  %.not52 = icmp ne i32 %i.cw, -32001
  %i.dh = icmp slt i32 %i.cw, -31506              ; 2 uses
  %i.di = and i1 %.not52, %i.dh                   ; 2 uses
  %i.dj = load ptr, ptr %.sroa.065.0103, align 8, !tbaa !88 ; 4 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 8
  %.val56 = load ptr, ptr %i.dk, align 8, !tbaa !107 ; 2 uses
  %i.dl = getelementptr i8, ptr %.val56, i64 11421080
  %.val56.val = load ptr, ptr %i.dl, align 8, !tbaa !209
  %i.dm = getelementptr i8, ptr %.val56, i64 11421108
  %.val56.val60 = load i32, ptr %i.dm, align 4, !tbaa !263
  %i.dn = getelementptr i8, ptr %.val56.val, i64 8
  %.val56.val.val = load i32, ptr %i.dn, align 8, !tbaa !403
  %.reass128.reass = add i32 %.val56.val.val, %invariant.op189.a
  %i.do = mul nsw i32 %.reass128.reass, %.val56.val60
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cu, i64 56
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !192
  %i.dr = load ptr, ptr %i.cy, align 8, !tbaa !189
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = icmp ugt i64 %i.du, 4
  %i.dw = select i1 %i.dv, i32 %i.do, i32 0
  %.0.val = load ptr, ptr %i.ck, align 8, !tbaa !107 ; 2 uses
  %i.dx = getelementptr i8, ptr %.0.val, i64 11421080
  %.0.val.val = load ptr, ptr %i.dx, align 8, !tbaa !209
  %i.dy = getelementptr i8, ptr %.0.val, i64 11421108
  %.0.val.val61 = load i32, ptr %i.dy, align 4, !tbaa !263
  %i.dz = getelementptr i8, ptr %.0.val.val, i64 8
  %.0.val.val.val = load i32, ptr %i.dz, align 8, !tbaa !403
  %.reass130.reass = add i32 %.0.val.val.val, %invariant.op190
  %i.ea = mul nsw i32 %.reass130.reass, %.0.val.val61
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cn, i64 56
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !192
  %i.ed = load ptr, ptr %i.cx, align 8, !tbaa !189
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = ptrtoint ptr %i.ed to i64
  %i.eg = sub i64 %i.ee, %i.ef
  %i.eh = icmp ugt i64 %i.eg, 4
  %i.ei = select i1 %i.eh, i32 %i.ea, i32 0
  %i.ej = icmp sgt i32 %i.dw, %i.ei
  br i1 %i.df, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph106
  %i.ek = icmp sgt i32 %i.cw, %i.cp
  %spec.select91 = select i1 %i.ek, ptr %i.dj, ptr %.0104
  br label %bb.q

bb.k:                                             ; preds = %.lr.ph106
  %.not = icmp ne i32 %i.cp, -32001
  %i.el = icmp slt i32 %i.cp, -31506
  %spec.select = and i1 %.not, %i.el
  br i1 %spec.select, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.em = icmp slt i32 %i.cw, %i.cp
  %or.cond53 = select i1 %i.di, i1 %i.em, i1 false
  %spec.select92 = select i1 %or.cond53, ptr %i.dj, ptr %.0104
end_hunk_1
begin_hunk_2_@_ZN9Stockfish10ThreadPool15start_searchingEv
define dso_local void @_ZN9Stockfish10ThreadPool15start_searchingEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %1 = alloca %"class.std::function", align 8     ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !109  ; 2 uses
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
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.i = load ptr, ptr %.sroa.05.010, align 8, !tbaa !88 ; 3 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !88
  %.not8 = icmp eq ptr %i.i, %i.j
  br i1 %.not8, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.k = ptrtoint ptr %i.i to i64
  store i64 0, ptr %i.g, align 8
  store i64 %i.k, ptr %1, align 8, !tbaa !88
  store ptr @"_ZNSt17_Function_handlerIFvvEZN9Stockfish6Thread15start_searchingEvE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.f, align 8, !tbaa !91
  store ptr @"_ZNSt17_Function_handlerIFvvEZN9Stockfish6Thread15start_searchingEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation", ptr %i.e, align 8, !tbaa !92
  call void @_ZN9Stockfish6Thread14run_custom_jobESt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(192) %i.i, ptr noundef nonnull align 8 %1)
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !92   ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZN9Stockfish6Thread15start_searchingEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = call noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3) #26, !inline_history !6 ; 0 uses
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !109  ; 2 uses
  %.not9 = icmp eq ptr %i.b, %i.d
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.05.010 = phi ptr [ %i.b, %.lr.ph ], [ %i.r, %bb.f ] ; 2 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.g = load ptr, ptr %.sroa.05.010, align 8, !tbaa !88 ; 4 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !88
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
  store i8 1, ptr %i.e, align 8, !tbaa !96
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 169 ; 2 uses
  %.val.val2.i.i = load i8, ptr %i.l, align 1, !tbaa !86, !range !97, !noundef !76
  %i.m = trunc nuw i8 %.val.val2.i.i to i1
  br i1 %i.m, label %.lr.ph.i.i, label %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread.i"

.lr.ph.i.i:                                       ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i, %.lr.ph.i.i
  call void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(9) %1) #26
  %.val.val.i.i = load i8, ptr %i.l, align 1, !tbaa !86, !range !97, !noundef !76
  %i.n = trunc nuw i8 %.val.val.i.i to i1
  br i1 %i.n, label %.lr.ph.i.i, label %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.i", !llvm.loop !4

"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.i": ; preds = %.lr.ph.i.i
  %.pre.i = load i8, ptr %i.e, align 8, !tbaa !96, !range !97
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !134  ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !134  ; 4 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.g = ptrtoaddr ptr %i.e to i64
  %i.h = ptrtoaddr ptr %i.c to i64
  %i.i = add i64 %i.g, -8
  %i.j = sub i64 %i.i, %i.h                       ; 3 uses
  %i.k = lshr i64 %i.j, 3
  %i.l = add nuw nsw i64 %i.k, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.j, 56
  br i1 %min.iters.check, label %.preheader.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check30 = icmp ult i64 %i.j, 248
  br i1 %min.iters.check30, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.l, 24
  %n.vec = and i64 %i.l, 4611686018427387872      ; 4 uses
  %i.n = shl i64 %n.vec, 3
  %i.o = getelementptr i8, ptr %i.c, i64 %i.n
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.t, %vector.body ]
  %vec.phi31 = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.u, %vector.body ]
  %vec.phi32 = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.v, %vector.body ]
  %vec.phi33 = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.w, %vector.body ]
  %i.p = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.c, i64 %i.p ; 4 uses
  %i.q = getelementptr i8, ptr %next.gep, i64 64
  %i.r = getelementptr i8, ptr %next.gep, i64 128
  %i.s = getelementptr i8, ptr %next.gep, i64 192
  %wide.load = load <8 x i64>, ptr %next.gep, align 8, !tbaa !37
  %wide.load34 = load <8 x i64>, ptr %i.q, align 8, !tbaa !37
  %wide.load35 = load <8 x i64>, ptr %i.r, align 8, !tbaa !37
  %wide.load36 = load <8 x i64>, ptr %i.s, align 8, !tbaa !37
  %i.t = tail call <8 x i64> @llvm.umax.v8i64(<8 x i64> %wide.load, <8 x i64> %vec.phi) ; 2 uses
  %i.u = tail call <8 x i64> @llvm.umax.v8i64(<8 x i64> %wide.load34, <8 x i64> %vec.phi31) ; 2 uses
  %i.v = tail call <8 x i64> @llvm.umax.v8i64(<8 x i64> %wide.load35, <8 x i64> %vec.phi32) ; 2 uses
  %i.w = tail call <8 x i64> @llvm.umax.v8i64(<8 x i64> %wide.load36, <8 x i64> %vec.phi33) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !404

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <8 x i64> @llvm.umax.v8i64(<8 x i64> %i.t, <8 x i64> %i.u)
  %rdx.minmax37 = tail call <8 x i64> @llvm.umax.v8i64(<8 x i64> %rdx.minmax, <8 x i64> %i.v)
  %rdx.minmax38 = tail call <8 x i64> @llvm.umax.v8i64(<8 x i64> %rdx.minmax37, <8 x i64> %i.w)
  %i.y = tail call i64 @llvm.vector.reduce.umax.v8i64(<8 x i64> %rdx.minmax38) ; 3 uses
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %.loopexit48, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %.preheader.preheader, label %vec.epilog.ph, !prof !132

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.y, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %n.vec39 = and i64 %i.l, 4611686018427387896    ; 3 uses
  %2 = shl i64 %n.vec39, 3
  %3 = getelementptr i8, ptr %i.c, i64 %2
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index40 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next44, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi41 = phi <8 x i64> [ %broadcast.splat, %vec.epilog.ph ], [ %i.aa, %vec.epilog.vector.body ]
  %i.z = shl i64 %index40, 3
  %next.gep42 = getelementptr i8, ptr %i.c, i64 %i.z
  %wide.load43 = load <8 x i64>, ptr %next.gep42, align 8, !tbaa !37
  %i.aa = tail call <8 x i64> @llvm.umax.v8i64(<8 x i64> %wide.load43, <8 x i64> %vec.phi41) ; 2 uses
  %index.next44 = add nuw i64 %index40, 8         ; 2 uses
  %i.ab = icmp eq i64 %index.next44, %n.vec39
  br i1 %i.ab, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !405

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ac = tail call i64 @llvm.vector.reduce.umax.v8i64(<8 x i64> %i.aa) ; 2 uses
  %cmp.n45 = icmp eq i64 %i.l, %n.vec39
  br i1 %cmp.n45, label %.loopexit48, label %.preheader.preheader

.preheader.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.020.ph = phi i64 [ 0, %iter.check ], [ %i.y, %vec.epilog.iter.check ], [ %i.ac, %vec.epilog.middle.block ]
  %.sroa.015.019.ph = phi ptr [ %i.c, %iter.check ], [ %i.o, %vec.epilog.iter.check ], [ %3, %vec.epilog.middle.block ]
  br label %.preheader

.loopexit48:                                      ; preds = %.preheader, %vec.epilog.middle.block, %middle.block
  %spec.select.lcssa = phi i64 [ %i.ac, %vec.epilog.middle.block ], [ %i.y, %middle.block ], [ %spec.select, %.preheader ]
  %i.ad = add i64 %spec.select.lcssa, 1           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 0, ptr %i.a, align 8, !tbaa !37
  %.not29 = icmp eq i64 %i.ad, 0
  br i1 %.not29, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit, label %bb.b

bb.b:                                             ; preds = %.loopexit48
  call void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr null, i64 noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !134
  %.pre23 = load ptr, ptr %i.d, align 8, !tbaa !134
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit

_ZNSt6vectorImSaImEE6resizeEmRKm.exit:            ; preds = %.loopexit48, %bb.b
  %i.ae = phi ptr [ %.pre23, %bb.b ], [ %i.e, %.loopexit48 ] ; 2 uses
  %i.af = phi ptr [ %.pre, %bb.b ], [ %i.c, %.loopexit48 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.not1821 = icmp eq ptr %i.af, %i.ae
  br i1 %.not1821, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEE6resizeEmRKm.exit
  %i.ag = load ptr, ptr %0, align 8, !tbaa !117
  br label %bb.c

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.020 = phi i64 [ %spec.select, %.preheader ], [ %.020.ph, %.preheader.preheader ]
  %.sroa.015.019 = phi ptr [ %i.ai, %.preheader ], [ %.sroa.015.019.ph, %.preheader.preheader ] ; 2 uses
  %i.ah = load i64, ptr %.sroa.015.019, align 8, !tbaa !37
  %spec.select = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 %.020) ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.015.019, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ai, %i.e
  br i1 %.not, label %.loopexit48, label %.preheader, !llvm.loop !406

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.sroa.011.022 = phi ptr [ %i.af, %.lr.ph ], [ %i.an, %bb.c ] ; 2 uses
  %i.aj = load i64, ptr %.sroa.011.022, align 8, !tbaa !37
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.aj ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !37
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !37
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.011.022, i64 8 ; 2 uses
  %.not18 = icmp eq ptr %i.an, %i.ae
  br i1 %.not18, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.c, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish10ThreadPool25ensure_network_replicatedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !109  ; 2 uses
  %.not7 = icmp eq ptr %i.b, %i.d
  br i1 %.not7, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.04.08 = phi ptr [ %i.h, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.04.08, align 8, !tbaa !88
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !107
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !409    ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !410
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #30
  br label %_ZNSt12_Vector_baseIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EED2Ev.exit

_ZNSt12_Vector_baseIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind
declare noundef i32 @_ZNSt6thread20hardware_concurrencyEv() local_unnamed_addr #5

; Function Attrs: nounwind
declare ptr @__sched_cpualloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare i32 @sched_getaffinity(i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @__sched_cpufree(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #14

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138
  tail call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !137  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #30
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !411

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #13

declare i32 @pthread_join(i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

end_hunk_2
