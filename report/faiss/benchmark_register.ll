Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/benchmark_register?download=true
inline.NumInlined: 5083
inline.NumDeleted: 1969
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZNSt6vectorIN9benchmark8internal10StatisticsESaIS2_EE17_M_realloc_insertIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERPFdRKS_IdSaIdEEERNS0_13StatisticUnitEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_:bb.a
  store ptr %i.q, ptr %0, align 8, !tbaa !173
  store ptr %.0.lcssa.i.i.i37, ptr %i.b, align 8, !tbaa !166
  %i.bu = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bu, ptr %i.bq, align 8, !tbaa !167
  ret void

bb.i:                                             ; preds = %bb.j
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i.i
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  %i.by = call ptr @__cxa_begin_catch(ptr %i.bx) #33 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #34
  invoke void @__cxa_rethrow() #35
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bv

bb.l:                                             ; preds = %bb.i
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #37
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN9benchmark8internal16AddNegatedPowersIiEEvPSt6vectorIT_SaIS3_EES3_S3_i(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, !prof !40

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #33
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !54
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #33
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit

_ZN9benchmark8internal18GetNullLogInstanceEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.d = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.d, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit12, !prof !40

bb.d:                                             ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #33
  %.not.i11 = icmp eq i32 %i.f, 0
  br i1 %.not.i11, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit12, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !54
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #33
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit12

_ZN9benchmark8internal18GetNullLogInstanceEv.exit12: ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, %bb.d, %bb.e
  %i.g = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.f, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit14, !prof !40

bb.f:                                             ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit12
  %i.i = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #33
  %.not.i13 = icmp eq i32 %i.i, 0
  br i1 %.not.i13, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit14, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !54
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #33
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit14

_ZN9benchmark8internal18GetNullLogInstanceEv.exit14: ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit12, %bb.f, %bb.g
  %i.j = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.h, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit16, !prof !40

bb.h:                                             ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit14
  %i.l = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #33
  %.not.i15 = icmp eq i32 %i.l, 0
  br i1 %.not.i15, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit16, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !54
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #33
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit16

_ZN9benchmark8internal18GetNullLogInstanceEv.exit16: ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit14, %bb.h, %bb.i
  %i.m = sub nsw i32 0, %1
  %i.n = sub nsw i32 0, %2
  %i.o = tail call ptr @_ZN9benchmark8internal9AddPowersIiEENSt6vectorIT_SaIS3_EE8iteratorEPS5_S3_S3_i(ptr noundef %0, i32 noundef %i.n, i32 noundef %i.m, i32 noundef %3) ; 14 uses
  %i.p = ptrtoaddr ptr %i.o to i64                ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !97   ; 8 uses
  %i.s = ptrtoaddr ptr %i.r to i64                ; 2 uses
  %.not4.i = icmp eq ptr %i.o, %i.r
  br i1 %.not4.i, label %_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN9benchmark8internal16AddNegatedPowersIiEEvPS3_IT_SaISA_EESA_SA_iEUlRiE_ET0_SA_SA_SG_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit16
  %i.t = ptrtoaddr ptr %i.r to i64
  %i.u = ptrtoaddr ptr %i.o to i64
  %i.v = add i64 %i.t, -4
  %i.w = sub i64 %i.v, %i.u                       ; 2 uses
  %i.x = lshr i64 %i.w, 2
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader42, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.y, 9223372036854775800      ; 3 uses
  %i.z = shl i64 %n.vec, 2
  %i.aa = getelementptr i8, ptr %i.o, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.ab ; 3 uses
  %i.ac = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !82
  %wide.load19 = load <4 x i32>, ptr %i.ac, align 4, !tbaa !82
  %i.ad = sub nsw <4 x i32> zeroinitializer, %wide.load
  %i.ae = sub nsw <4 x i32> zeroinitializer, %wide.load19
  store <4 x i32> %i.ad, ptr %next.gep, align 4, !tbaa !82
  store <4 x i32> %i.ae, ptr %i.ac, align 4, !tbaa !82
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !978

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN9benchmark8internal16AddNegatedPowersIiEEvPS3_IT_SaISA_EESA_SA_iEUlRiE_ET0_SA_SA_SG_.exit, label %.lr.ph.i.preheader42

.lr.ph.i.preheader42:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.sroa.01.05.i.ph = phi ptr [ %i.o, %.lr.ph.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader42, %.lr.ph.i
  %.sroa.01.05.i = phi ptr [ %i.ai, %.lr.ph.i ], [ %.sroa.01.05.i.ph, %.lr.ph.i.preheader42 ] ; 3 uses
  %i.ag = load i32, ptr %.sroa.01.05.i, align 4, !tbaa !82
  %i.ah = sub nsw i32 0, %i.ag
  store i32 %i.ah, ptr %.sroa.01.05.i, align 4, !tbaa !82
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 4 ; 2 uses
  %.not.i17 = icmp eq ptr %i.ai, %i.r
  br i1 %.not.i17, label %_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN9benchmark8internal16AddNegatedPowersIiEEvPS3_IT_SaISA_EESA_SA_iEUlRiE_ET0_SA_SA_SG_.exit, label %.lr.ph.i, !llvm.loop !979

_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN9benchmark8internal16AddNegatedPowersIiEEvPS3_IT_SaISA_EESA_SA_iEUlRiE_ET0_SA_SA_SG_.exit: ; preds = %.lr.ph.i, %middle.block, %_ZN9benchmark8internal18GetNullLogInstanceEv.exit16
  %i.aj = icmp ne ptr %i.o, %i.r
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %i.r, i64 -4 ; 5 uses
  %i.ak = icmp ult ptr %i.o, %.sroa.0.08.i.i
  %or.cond.i.i = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i.preheader, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit

.lr.ph.i.i.preheader:                             ; preds = %_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN9benchmark8internal16AddNegatedPowersIiEEvPS3_IT_SaISA_EESA_SA_iEUlRiE_ET0_SA_SA_SG_.exit
  %i.al = add i64 %i.s, -8
  %i.am = add i64 %i.p, 4
  %i.an = tail call i64 @llvm.umax.i64(i64 %i.al, i64 %i.am)
  %i.ao = add i64 %i.an, -4                       ; 2 uses
  %i.ap = icmp ne i64 %i.ao, %i.p
  %i.aq = zext i1 %i.ap to i64                    ; 2 uses
  %i.ar = add i64 %i.p, %i.aq
  %i.as = sub i64 %i.ao, %i.ar
  %i.at = lshr i64 %i.as, 3
  %i.au = add nuw nsw i64 %i.at, %i.aq            ; 2 uses
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check22 = icmp samesign ult i64 %i.au, 31
  br i1 %min.iters.check22, label %.lr.ph.i.i.preheader41, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.aw = add i64 %i.s, -8
  %i.ax = add i64 %i.p, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.aw, i64 %i.ax)
  %i.ay = add i64 %umax, -4                       ; 2 uses
  %i.az = icmp ne i64 %i.ay, %i.p
  %umin = zext i1 %i.az to i64                    ; 2 uses
  %i.ba = add i64 %i.p, %umin
  %i.bb = sub i64 %i.ay, %i.ba
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = add nuw nsw i64 %i.bc, %umin
  %i.be = shl nuw i64 %i.bd, 2                    ; 2 uses
  %i.bf = getelementptr i8, ptr %i.o, i64 %i.be
  %scevgep = getelementptr i8, ptr %i.bf, i64 4
  %i.bg = sub nuw nsw i64 -4, %i.be
  %scevgep20 = getelementptr i8, ptr %i.r, i64 %i.bg
  %bound0 = icmp ult ptr %i.o, %i.r
  %bound1 = icmp ult ptr %scevgep20, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader41, label %vector.ph23

vector.ph23:                                      ; preds = %vector.memcheck
  %n.vec24 = and i64 %i.av, 9223372036854775800   ; 4 uses
  %i.bh = mul i64 %n.vec24, -4
  %i.bi = getelementptr i8, ptr %.sroa.0.08.i.i, i64 %i.bh
  %i.bj = shl i64 %n.vec24, 2
  %i.bk = getelementptr i8, ptr %i.o, i64 %i.bj
  br label %vector.body25

vector.body25:                                    ; preds = %vector.body25, %vector.ph23
  %index26 = phi i64 [ 0, %vector.ph23 ], [ %index.next36, %vector.body25 ] ; 3 uses
  %i.bl = mul i64 %index26, -4
  %next.gep27 = getelementptr i8, ptr %.sroa.0.08.i.i, i64 %i.bl ; 2 uses
  %i.bm = shl i64 %index26, 2
  %next.gep28 = getelementptr i8, ptr %i.o, i64 %i.bm ; 3 uses
  %i.bn = getelementptr i8, ptr %next.gep28, i64 16 ; 2 uses
  %wide.load29 = load <4 x i32>, ptr %next.gep28, align 4, !tbaa !82, !alias.scope !985, !noalias !986
  %wide.load30.a = load <4 x i32>, ptr %i.bn, align 4, !tbaa !82, !alias.scope !985, !noalias !986
  %4 = getelementptr i8, ptr %next.gep27, i64 -12 ; 2 uses
  %i.bo = getelementptr i8, ptr %next.gep27, i64 -28 ; 2 uses
  %wide.load31 = load <4 x i32>, ptr %4, align 4, !tbaa !82, !alias.scope !986
  %wide.load32 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !82, !alias.scope !986
  %reverse = shufflevector <4 x i32> %wide.load31, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse33 = shufflevector <4 x i32> %wide.load32, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %next.gep28, align 4, !tbaa !82, !alias.scope !985, !noalias !986
  store <4 x i32> %reverse33, ptr %i.bn, align 4, !tbaa !82, !alias.scope !985, !noalias !986
  %reverse34 = shufflevector <4 x i32> %wide.load29, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse35 = shufflevector <4 x i32> %wide.load30.a, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse34, ptr %4, align 4, !tbaa !82, !alias.scope !986
  store <4 x i32> %reverse35, ptr %i.bo, align 4, !tbaa !82, !alias.scope !986
  %index.next36 = add nuw i64 %index26, 8         ; 2 uses
  %i.bp = icmp eq i64 %index.next36, %n.vec24
  br i1 %i.bp, label %middle.block37, label %vector.body25, !llvm.loop !983

middle.block37:                                   ; preds = %vector.body25
  %cmp.n38 = icmp eq i64 %i.av, %n.vec24
  br i1 %cmp.n38, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit, label %.lr.ph.i.i.preheader41

.lr.ph.i.i.preheader41:                           ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block37
  %.sroa.0.010.i.i.ph = phi ptr [ %.sroa.0.08.i.i, %vector.memcheck ], [ %.sroa.0.08.i.i, %.lr.ph.i.i.preheader ], [ %i.bi, %middle.block37 ]
  %.sroa.05.09.i.i.ph = phi ptr [ %i.o, %vector.memcheck ], [ %i.o, %.lr.ph.i.i.preheader ], [ %i.bk, %middle.block37 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader41, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.010.i.i.ph, %.lr.ph.i.i.preheader41 ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %i.bs, %.lr.ph.i.i ], [ %.sroa.05.09.i.i.ph, %.lr.ph.i.i.preheader41 ] ; 3 uses
  %i.bq = load i32, ptr %.sroa.05.09.i.i, align 4, !tbaa !82
  %i.br = load i32, ptr %.sroa.0.010.i.i, align 4, !tbaa !82
  store i32 %i.br, ptr %.sroa.05.09.i.i, align 4, !tbaa !82
  store i32 %i.bq, ptr %.sroa.0.010.i.i, align 4, !tbaa !82
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 4 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -4 ; 2 uses
  %i.bt = icmp ult ptr %i.bs, %.sroa.0.0.i.i
  br i1 %i.bt, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit, !llvm.loop !984

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit: ; preds = %.lr.ph.i.i, %middle.block37, %_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN9benchmark8internal16AddNegatedPowersIiEEvPS3_IT_SaISA_EESA_SA_iEUlRiE_ET0_SA_SA_SG_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN9benchmark8internal9AddPowersIiEENSt6vectorIT_SaIS3_EE8iteratorEPS5_S3_S3_i(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, !prof !40

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #33
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !54
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #33
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit

_ZN9benchmark8internal18GetNullLogInstanceEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.d = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.d, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit10, !prof !40

bb.d:                                             ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #33
  %.not.i9 = icmp eq i32 %i.f, 0
  br i1 %.not.i9, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit10, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !54
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #33
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit10

_ZN9benchmark8internal18GetNullLogInstanceEv.exit10: ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, %bb.d, %bb.e
  %i.g = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.f, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit12, !prof !40

bb.f:                                             ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit10
  %i.i = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #33
  %.not.i11 = icmp eq i32 %i.i, 0
  br i1 %.not.i11, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit12, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !54
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #33
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit12

_ZN9benchmark8internal18GetNullLogInstanceEv.exit12: ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit10, %bb.f, %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !177  ; 2 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !171    ; 3 uses
  %.not16 = icmp slt i32 %2, 1
  br i1 %.not16, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit12
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %.lr.ph
  %i.n = phi ptr [ %i.l, %.lr.ph ], [ %i.aj, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 6 uses
  %i.o = phi ptr [ %i.k, %.lr.ph ], [ %i.ak, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 5 uses
  %storemerge17 = phi i32 [ 1, %.lr.ph ], [ %i.an, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 5 uses
  %.not8 = icmp slt i32 %storemerge17, %1
  br i1 %.not8, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !172
  %.not.i13 = icmp eq ptr %i.o, %i.p
  br i1 %.not.i13, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %storemerge17, ptr %i.o, align 4, !tbaa !82
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 2 uses
  store ptr %i.q, ptr %i.j, align 8, !tbaa !177
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.k:                                             ; preds = %bb.i
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.t = sub i64 %i.r, %i.s                       ; 5 uses
  %i.u = icmp eq i64 %i.t, 9223372036854775804
  br i1 %i.u, label %bb.l, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #35
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.v = ashr exact i64 %i.t, 2                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 1)
  %i.w = add nsw i64 %.sroa.speculated.i.i.i, %i.v ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.v
  %i.y = tail call i64 @llvm.umin.i64(i64 %i.w, i64 2305843009213693951)
  %i.z = select i1 %i.x, i64 2305843009213693951, i64 %i.y ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.z, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aa = shl nuw nsw i64 %i.z, 2
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #36 ; 5 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %i.t ; 2 uses
  store i32 %storemerge17, ptr %i.ac, align 4, !tbaa !82
  %i.ad = icmp sgt i64 %i.t, 0
  br i1 %i.ad, label %bb.m, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.m:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ab, ptr align 4 %i.n, i64 %i.t, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.m, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.af = load ptr, ptr %i.m, align 8, !tbaa !172
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ag, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.ah) #34
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.ab, ptr %0, align 8, !tbaa !171
  store ptr %i.ae, ptr %i.j, align 8, !tbaa !177
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.z
  store ptr %i.ai, ptr %i.m, align 8, !tbaa !172
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.j, %bb.h
  %i.aj = phi ptr [ %i.ab, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.n, %bb.j ], [ %i.n, %bb.h ]
  %i.ak = phi ptr [ %i.ae, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.q, %bb.j ], [ %i.o, %bb.h ]
  %i.al = sdiv i32 2147483647, %3
  %i.am = icmp sgt i32 %storemerge17, %i.al
  %i.an = mul nsw i32 %storemerge17, %3           ; 2 uses
  %.not = icmp sgt i32 %i.an, %2
  %or.cond = select i1 %i.am, i1 true, i1 %.not
  br i1 %or.cond, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit._crit_edge.loopexit, label %bb.h, !llvm.loop !987

_ZNSt6vectorIiSaIiEE9push_backERKi.exit._crit_edge.loopexit: ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %.pre = load ptr, ptr %0, align 8, !tbaa !97
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit._crit_edge

_ZNSt6vectorIiSaIiEE9push_backERKi.exit._crit_edge: ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit._crit_edge.loopexit, %_ZN9benchmark8internal18GetNullLogInstanceEv.exit12
  %i.ao = phi ptr [ %.pre, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit._crit_edge.loopexit ], [ %i.l, %_ZN9benchmark8internal18GetNullLogInstanceEv.exit12 ]
  %i.ap = ptrtoint ptr %i.k to i64
  %i.aq = ptrtoint ptr %i.l to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %sext = shl i64 %i.ar, 30
  %i.as = ashr exact i64 %sext, 30
  %i.at = getelementptr inbounds i8, ptr %i.ao, i64 %i.as
  ret ptr %i.at
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_benchmark_register.cc() #29 section ".text.startup" {
bb.a:
  %i.a = tail call noundef i32 @_ZN9benchmark8internal17InitializeStreamsEv() ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #32
end_hunk_0
