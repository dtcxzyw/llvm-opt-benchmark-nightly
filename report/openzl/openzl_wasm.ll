Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/openzl_wasm?download=true
inline.NumInlined: 306
inline.NumDeleted: 185
begin_hunk_0_@openzl_wasm_decompress:bb.a
bb.h:                                             ; preds = %bb.f
  %i.j = invoke { i32, i64 } @ZL_DCtx_decompress(ptr noundef nonnull %i.h, ptr noundef nonnull %i.g, i64 noundef %i.e, ptr noundef nonnull %0, i64 noundef %1)
          to label %bb.i unwind label %bb.j       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.k = extractvalue { i32, i64 } %i.j, 0        ; 3 uses
  %.not72 = icmp eq i32 %i.k, 0
  br i1 %.not72, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt10unique_ptrI9ZL_DCtx_sN12_GLOBAL__N_17DeleterIS0_XadL_Z12ZL_DCtx_freeEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #14
  br label %_ZNSt10unique_ptrIhN12_GLOBAL__N_111FreeDeleterEED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.m = extractvalue { i32, i64 } %i.j, 1
  store ptr %i.g, ptr %2, align 8, !tbaa !17
  store i64 %i.m, ptr %3, align 8, !tbaa !18
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k
  %.sroa.0.0.ph = phi ptr [ %i.g, %bb.i ], [ null, %bb.k ] ; 2 uses
  invoke void @ZL_DCtx_free(ptr noundef nonnull %i.h)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #15
  unreachable

_ZNSt10unique_ptrIhN12_GLOBAL__N_111FreeDeleterEED2Ev.exit: ; preds = %bb.j, %bb.g
  %.pn = phi { ptr, i32 } [ %i.l, %bb.j ], [ %i.i, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  tail call void @free(ptr noundef nonnull %i.g) #14
  resume { ptr, i32 } %.pn

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %.not.i43 = icmp eq ptr %.sroa.0.0.ph, null
  br i1 %.not.i43, label %openzl_wasm_getDecompressedSize.exit, label %bb.o

bb.o:                                             ; preds = %.thread64, %bb.n
  %.sroa.0.05669 = phi ptr [ %i.g, %.thread64 ], [ %.sroa.0.0.ph, %bb.n ]
  %.15868 = phi i32 [ 70, %.thread64 ], [ %i.k, %bb.n ]
  tail call void @free(ptr noundef nonnull %.sroa.0.05669) #14
  br label %openzl_wasm_getDecompressedSize.exit

openzl_wasm_getDecompressedSize.exit:             ; preds = %bb.d, %bb.c, %bb.n, %bb.o, %bb.b, %bb.a
  %.4 = phi i32 [ 21, %bb.b ], [ 21, %bb.a ], [ %i.d, %bb.c ], [ %.15868, %bb.o ], [ %i.k, %bb.n ], [ 70, %bb.d ]
  ret i32 %.4
}

declare void @ZL_DCtx_free(ptr noundef) local_unnamed_addr #5

declare ptr @ZL_DCtx_create() local_unnamed_addr #5

declare { i32, i64 } @ZL_DCtx_decompress(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt10unique_ptrI9ZL_DCtx_sN12_GLOBAL__N_17DeleterIS0_XadL_Z12ZL_DCtx_freeEEEEED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !30     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNK12_GLOBAL__N_17DeleterI9ZL_DCtx_sXadL_Z12ZL_DCtx_freeEEEclEPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @ZL_DCtx_free(ptr noundef nonnull %i.a)
          to label %_ZNK12_GLOBAL__N_17DeleterI9ZL_DCtx_sXadL_Z12ZL_DCtx_freeEEEclEPS1_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #15
  unreachable

_ZNK12_GLOBAL__N_17DeleterI9ZL_DCtx_sXadL_Z12ZL_DCtx_freeEEEclEPS1_.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local i32 @openzl_wasm_benchmarkCompress(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef writeonly captures(address_is_null) %6, ptr nofree noundef writeonly captures(address_is_null) %7) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %9 = alloca %"class.std::unique_ptr.26", align 8 ; 5 uses
  %i.a = icmp ne ptr %5, null
  %i.b = icmp ne ptr %6, null
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp ne ptr %7, null
  %or.cond3 = and i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.b, label %bb.ac

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %5, align 8, !tbaa !17
  store i64 0, ptr %6, align 8, !tbaa !18
  store double 0.000000e+00, ptr %7, align 8, !tbaa !32
  %i.d = icmp eq ptr %0, null
  %i.e = icmp eq i64 %1, 0
  %or.cond5 = or i1 %i.d, %i.e
  br i1 %or.cond5, label %bb.ac, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ne i64 %3, 0
  %i.g = icmp eq ptr %2, null
  %or.cond7.not188 = and i1 %i.g, %i.f
  %i.h = add i64 %4, -1001
  %or.cond9 = icmp ult i64 %i.h, -1000
  %or.cond144 = or i1 %or.cond7.not188, %or.cond9
  br i1 %or.cond144, label %bb.ac, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  store ptr null, ptr %8, align 8, !tbaa !24
  %i.i = invoke fastcc noundef i32 @_ZN12_GLOBAL__N_121deserializeCompressorEPKhmRSt10unique_ptrI15ZL_Compressor_sNS_7DeleterIS3_XadL_Z18ZL_Compressor_freeEEEEE(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.e unwind label %bb.f       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.g, label %bb.y

bb.f:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.k = invoke ptr @ZL_CCtx_create()
          to label %bb.h unwind label %bb.i       ; 7 uses

bb.h:                                             ; preds = %bb.g
  store ptr %i.k, ptr %9, align 8, !tbaa !26
  %.not189 = icmp eq ptr %i.k, null
  br i1 %.not189, label %_ZNSt10unique_ptrI9ZL_CCtx_sN12_GLOBAL__N_17DeleterIS0_XadL_Z12ZL_CCtx_freeEEEEED2Ev.exit, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.j:                                             ; preds = %bb.h
  %i.m = invoke { i32, i64 } @ZL_CCtx_setParameter(ptr noundef nonnull %i.k, i32 noundef 1, i32 noundef 1)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.n = extractvalue { i32, i64 } %i.m, 0        ; 2 uses
  %.not190 = icmp eq i32 %i.n, 0
  br i1 %.not190, label %bb.l, label %_ZNSt10unique_ptrIhN12_GLOBAL__N_111FreeDeleterEED2Ev.exit154.thread

bb.l:                                             ; preds = %bb.k
  %.val = load ptr, ptr %8, align 8, !tbaa !20
  %i.o = invoke { i32, i64 } @ZL_CCtx_refCompressor(ptr noundef nonnull %i.k, ptr noundef %.val)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.p = extractvalue { i32, i64 } %i.o, 0        ; 2 uses
  %.not191 = icmp eq i32 %i.p, 0
  br i1 %.not191, label %bb.o, label %_ZNSt10unique_ptrIhN12_GLOBAL__N_111FreeDeleterEED2Ev.exit154.thread

bb.n:                                             ; preds = %bb.j, %bb.l
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.o:                                             ; preds = %bb.m
  %i.r = lshr i64 %3, 11
  %i.s = and i64 %i.r, 9007199254740976
  %i.t = add i64 %3, 80
  %i.u = add i64 %i.t, %i.s                       ; 3 uses
  %i.v = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.v) #13, !noalias !49 ; 6 uses
  %.not192 = icmp eq ptr %i.w, null
  br i1 %.not192, label %_ZNSt10unique_ptrIhN12_GLOBAL__N_111FreeDeleterEED2Ev.exit154.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.x = invoke { i32, i64 } @ZL_CCtx_compress(ptr noundef nonnull %i.k, ptr noundef nonnull %i.w, i64 noundef %i.u, ptr noundef %2, i64 noundef %3)
          to label %bb.q unwind label %_ZNSt10unique_ptrIhN12_GLOBAL__N_111FreeDeleterEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.y = extractvalue { i32, i64 } %i.x, 0        ; 2 uses
  %i.z = extractvalue { i32, i64 } %i.x, 1        ; 2 uses
  %.not193 = icmp eq i32 %i.y, 0
  br i1 %.not193, label %.lr.ph.preheader, label %.thread170

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.aa = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #14
  %i.ab = sitofp i64 %i.aa to double
  %i.ac = fdiv double %i.ab, 1.000000e+06
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.s
  %.0119197 = phi i64 [ %i.ag, %bb.s ], [ 0, %.lr.ph.preheader ]
  %.0120196 = phi i64 [ %i.af, %bb.s ], [ 0, %.lr.ph.preheader ]
  %i.ad = invoke { i32, i64 } @ZL_CCtx_compress(ptr noundef nonnull %i.k, ptr noundef nonnull %i.w, i64 noundef %i.u, ptr noundef %2, i64 noundef %3)
          to label %bb.r unwind label %_ZNSt10unique_ptrIhN12_GLOBAL__N_111FreeDeleterEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.r:                                             ; preds = %.lr.ph
  %i.ae = extractvalue { i32, i64 } %i.ad, 0      ; 3 uses
  %.not194 = icmp eq i32 %i.ae, 0
  br i1 %.not194, label %bb.s, label %._crit_edge

bb.s:                                             ; preds = %bb.r
  %i.af = extractvalue { i32, i64 } %i.ad, 1      ; 2 uses
  %i.ag = add nuw i64 %.0119197, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !48

._crit_edge:                                      ; preds = %bb.r, %bb.s
  %.0120.lcssa.ph = phi i64 [ %.0120196, %bb.r ], [ %i.af, %bb.s ]
  %i.ah = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #14
  %i.ai = sitofp i64 %i.ah to double
  %i.aj = fdiv double %i.ai, 1.000000e+06
  %i.ak = fsub double %i.aj, %i.ac
  %.not142 = icmp eq i32 %i.ae, 0
  br i1 %.not142, label %bb.t, label %.thread170

_ZNSt10unique_ptrIhN12_GLOBAL__N_111FreeDeleterEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.p
  %lpad.loopexit.split-lp219 = landingpad { ptr, i32 }
          cleanup
  tail call void @free(ptr noundef nonnull %i.w) #14
  br label %bb.v

bb.t:                                             ; preds = %._crit_edge
  %.not143 = icmp eq i64 %.0120.lcssa.ph, %i.z
  br i1 %.not143, label %bb.u, label %.thread170

bb.u:                                             ; preds = %bb.t
  store ptr %i.w, ptr %5, align 8, !tbaa !17
  store i64 %i.z, ptr %6, align 8, !tbaa !18
  store double %i.ak, ptr %7, align 8, !tbaa !32
  br label %_ZNSt10unique_ptrIhN12_GLOBAL__N_111FreeDeleterEED2Ev.exit154.thread

.thread170:                                       ; preds = %._crit_edge, %bb.t, %bb.q
  %.2175 = phi i32 [ %i.y, %bb.q ], [ %i.ae, %._crit_edge ], [ 1, %bb.t ]
  tail call void @free(ptr noundef nonnull %i.w) #14
  br label %_ZNSt10unique_ptrIhN12_GLOBAL__N_111FreeDeleterEED2Ev.exit154.thread

bb.v:                                             ; preds = %bb.n, %_ZNSt10unique_ptrIhN12_GLOBAL__N_111FreeDeleterEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.q, %bb.n ], [ %lpad.loopexit.split-lp219, %_ZNSt10unique_ptrIhN12_GLOBAL__N_111FreeDeleterEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @_ZNSt10unique_ptrI9ZL_CCtx_sN12_GLOBAL__N_17DeleterIS0_XadL_Z12ZL_CCtx_freeEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #14
  br label %bb.x

_ZNSt10unique_ptrIhN12_GLOBAL__N_111FreeDeleterEED2Ev.exit154.thread: ; preds = %.thread170, %bb.u, %bb.o, %bb.k, %bb.m
  %.5178 = phi i32 [ 70, %bb.o ], [ %i.n, %bb.k ], [ %i.p, %bb.m ], [ %.2175, %.thread170 ], [ 0, %bb.u ]
  invoke void @ZL_CCtx_free(ptr noundef nonnull %i.k)
          to label %_ZNSt10unique_ptrI9ZL_CCtx_sN12_GLOBAL__N_17DeleterIS0_XadL_Z12ZL_CCtx_freeEEEEED2Ev.exit unwind label %bb.w

bb.w:                                             ; preds = %_ZNSt10unique_ptrIhN12_GLOBAL__N_111FreeDeleterEED2Ev.exit154.thread
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  tail call void @__clang_call_terminate(ptr %i.am) #15
  unreachable

_ZNSt10unique_ptrI9ZL_CCtx_sN12_GLOBAL__N_17DeleterIS0_XadL_Z12ZL_CCtx_freeEEEEED2Ev.exit: ; preds = %bb.h, %_ZNSt10unique_ptrIhN12_GLOBAL__N_111FreeDeleterEED2Ev.exit154.thread
  %.5179 = phi i32 [ 70, %bb.h ], [ %.5178, %_ZNSt10unique_ptrIhN12_GLOBAL__N_111FreeDeleterEED2Ev.exit154.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  br label %bb.y

bb.x:                                             ; preds = %bb.v, %bb.i
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.v ], [ %i.l, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  br label %bb.ab

bb.y:                                             ; preds = %bb.e, %_ZNSt10unique_ptrI9ZL_CCtx_sN12_GLOBAL__N_17DeleterIS0_XadL_Z12ZL_CCtx_freeEEEEED2Ev.exit
  %.6 = phi i32 [ %.5179, %_ZNSt10unique_ptrI9ZL_CCtx_sN12_GLOBAL__N_17DeleterIS0_XadL_Z12ZL_CCtx_freeEEEEED2Ev.exit ], [ %i.i, %bb.e ]
  %i.an = load ptr, ptr %8, align 8, !tbaa !20    ; 2 uses
  %.not.i156 = icmp eq ptr %i.an, null
  br i1 %.not.i156, label %_ZNSt10unique_ptrI15ZL_Compressor_sN12_GLOBAL__N_17DeleterIS0_XadL_Z18ZL_Compressor_freeEEEEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke void @ZL_Compressor_free(ptr noundef nonnull %i.an)
          to label %_ZNSt10unique_ptrI15ZL_Compressor_sN12_GLOBAL__N_17DeleterIS0_XadL_Z18ZL_Compressor_freeEEEEED2Ev.exit unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #15
  unreachable

_ZNSt10unique_ptrI15ZL_Compressor_sN12_GLOBAL__N_17DeleterIS0_XadL_Z18ZL_Compressor_freeEEEEED2Ev.exit: ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %bb.ac

bb.ab:                                            ; preds = %bb.x, %bb.f
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %bb.x ], [ %i.j, %bb.f ]
  call fastcc void @_ZNSt10unique_ptrI15ZL_Compressor_sN12_GLOBAL__N_17DeleterIS0_XadL_Z18ZL_Compressor_freeEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn

bb.ac:                                            ; preds = %bb.c, %bb.b, %bb.a, %_ZNSt10unique_ptrI15ZL_Compressor_sN12_GLOBAL__N_17DeleterIS0_XadL_Z18ZL_Compressor_freeEEEEED2Ev.exit
  %.7 = phi i32 [ 21, %bb.a ], [ 21, %bb.c ], [ %.6, %_ZNSt10unique_ptrI15ZL_Compressor_sN12_GLOBAL__N_17DeleterIS0_XadL_Z18ZL_Compressor_freeEEEEED2Ev.exit ], [ 21, %bb.b ]
  ret i32 %.7
}

declare void @ZL_CCtx_free(ptr noundef) local_unnamed_addr #5

declare ptr @ZL_CCtx_create() local_unnamed_addr #5

declare { i32, i64 } @ZL_CCtx_setParameter(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare { i32, i64 } @ZL_CCtx_refCompressor(ptr noundef, ptr noundef) local_unnamed_addr #5

declare { i32, i64 } @ZL_CCtx_compress(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt10unique_ptrI9ZL_CCtx_sN12_GLOBAL__N_17DeleterIS0_XadL_Z12ZL_CCtx_freeEEEEED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !26     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNK12_GLOBAL__N_17DeleterI9ZL_CCtx_sXadL_Z12ZL_CCtx_freeEEEclEPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @ZL_CCtx_free(ptr noundef nonnull %i.a)
          to label %_ZNK12_GLOBAL__N_17DeleterI9ZL_CCtx_sXadL_Z12ZL_CCtx_freeEEEclEPS1_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #15
  unreachable

_ZNK12_GLOBAL__N_17DeleterI9ZL_CCtx_sXadL_Z12ZL_CCtx_freeEEEclEPS1_.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local i32 @openzl_wasm_benchmarkDecompress(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::unique_ptr.18", align 8 ; 5 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %openzl_wasm_getDecompressedSize.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store double 0.000000e+00, ptr %3, align 8, !tbaa !32
  %.not69 = icmp eq ptr %0, null
  %i.a = add i64 %2, -1001
  %or.cond = icmp ult i64 %i.a, -1000
  %or.cond78 = or i1 %.not69, %or.cond
  br i1 %or.cond78, label %openzl_wasm_getDecompressedSize.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call { i32, i64 } @ZL_getDecompressedSize(ptr noundef nonnull %0, i64 noundef %1) ; 2 uses
  %i.c = extractvalue { i32, i64 } %i.b, 0        ; 2 uses
  %.not24.i = icmp eq i32 %i.c, 0
  br i1 %.not24.i, label %bb.d, label %openzl_wasm_getDecompressedSize.exit

bb.d:                                             ; preds = %bb.c
  %i.d = extractvalue { i32, i64 } %i.b, 1        ; 4 uses
  %i.e = tail call i64 @llvm.umax.i64(i64 %i.d, i64 1)
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #13, !noalias !53 ; 5 uses
  %.not116 = icmp eq ptr %i.f, null
  br i1 %.not116, label %openzl_wasm_getDecompressedSize.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.g = invoke ptr @ZL_DCtx_create()
          to label %bb.f unwind label %bb.g       ; 5 uses

bb.f:                                             ; preds = %bb.e
  store ptr %i.g, ptr %4, align 8, !tbaa !30
  %.not117 = icmp eq ptr %i.g, null
  br i1 %.not117, label %.thread112, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIhN12_GLOBAL__N_111FreeDeleterEED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.i = invoke { i32, i64 } @ZL_DCtx_decompress(ptr noundef nonnull %i.g, ptr noundef nonnull %i.f, i64 noundef %i.d, ptr noundef nonnull %0, i64 noundef %1)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.h
  %i.j = extractvalue { i32, i64 } %i.i, 0        ; 2 uses
  %.not118 = icmp eq i32 %i.j, 0
  br i1 %.not118, label %.lr.ph.preheader, label %.thread104

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.k = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #14
  %i.l = sitofp i64 %i.k to double
  %i.m = fdiv double %i.l, 1.000000e+06
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %.060122 = phi i64 [ %i.p, %bb.k ], [ 0, %.lr.ph.preheader ]
  %.063121 = phi i64 [ %i.q, %bb.k ], [ 0, %.lr.ph.preheader ]
  %i.n = invoke { i32, i64 } @ZL_DCtx_decompress(ptr noundef nonnull %i.g, ptr noundef nonnull %i.f, i64 noundef %i.d, ptr noundef nonnull %0, i64 noundef %1)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.j:                                             ; preds = %.lr.ph
  %i.o = extractvalue { i32, i64 } %i.n, 0        ; 3 uses
  %.not119 = icmp eq i32 %i.o, 0
  br i1 %.not119, label %bb.k, label %._crit_edge

bb.k:                                             ; preds = %bb.j
  %i.p = extractvalue { i32, i64 } %i.n, 1        ; 2 uses
  %i.q = add nuw i64 %.063121, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.q, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !52

._crit_edge:                                      ; preds = %bb.j, %bb.k
  %.060.lcssa.ph = phi i64 [ %.060122, %bb.j ], [ %i.p, %bb.k ]
  %i.r = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #14
  %i.s = sitofp i64 %i.r to double
  %i.t = fdiv double %i.s, 1.000000e+06
  %i.u = fsub double %i.t, %i.m
  %.not76 = icmp eq i32 %i.o, 0
  br i1 %.not76, label %bb.l, label %.thread104

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.h
  %lpad.loopexit.split-lp137 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt10unique_ptrI9ZL_DCtx_sN12_GLOBAL__N_17DeleterIS0_XadL_Z12ZL_DCtx_freeEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #14
  br label %_ZNSt10unique_ptrIhN12_GLOBAL__N_111FreeDeleterEED2Ev.exit

bb.l:                                             ; preds = %._crit_edge
  %.not77 = icmp eq i64 %.060.lcssa.ph, %i.d
  br i1 %.not77, label %bb.m, label %.thread104

bb.m:                                             ; preds = %bb.l
  store double %i.u, ptr %3, align 8, !tbaa !32
  br label %.thread104

.thread104:                                       ; preds = %bb.m, %._crit_edge, %bb.l, %bb.i
  %.2107 = phi i32 [ %i.j, %bb.i ], [ %i.o, %._crit_edge ], [ 1, %bb.l ], [ 0, %bb.m ]
  invoke void @ZL_DCtx_free(ptr noundef nonnull %i.g)
          to label %.thread112 unwind label %bb.n

bb.n:                                             ; preds = %.thread104
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #15
  unreachable

_ZNSt10unique_ptrIhN12_GLOBAL__N_111FreeDeleterEED2Ev.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp137, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.h, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  tail call void @free(ptr noundef nonnull %i.f) #14
  resume { ptr, i32 } %.pn.pn.pn

.thread112:                                       ; preds = %.thread104, %bb.f
  %.2103115 = phi i32 [ 70, %bb.f ], [ %.2107, %.thread104 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  tail call void @free(ptr noundef nonnull %i.f) #14
  br label %openzl_wasm_getDecompressedSize.exit

openzl_wasm_getDecompressedSize.exit:             ; preds = %bb.d, %bb.c, %.thread112, %bb.b, %bb.a
  %.5 = phi i32 [ 21, %bb.b ], [ 21, %bb.a ], [ %i.c, %bb.c ], [ %.2103115, %.thread112 ], [ 70, %bb.d ]
  ret i32 %.5
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #14 ; 0 uses
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

declare ptr @ZL_Compressor_create() local_unnamed_addr #5

declare { i32, i64 } @ZL_Compressor_setParameter(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare i32 @_ZN6openzl8profiles16buildSerialGraphEP15ZL_Compressor_sm(ptr noundef, i64 noundef) local_unnamed_addr #5

declare i32 @_ZN6openzl8profiles13buildIntGraphEP15ZL_Compressor_smbm(ptr noundef, i64 noundef, i1 noundef zeroext, i64 noundef) local_unnamed_addr #5

declare i32 @ZL_GraphID_isValid(i32) local_unnamed_addr #5

declare { i32, i64 } @ZL_Compressor_selectStartingGraphID(ptr noundef, i32) local_unnamed_addr #5

declare void @ZL_CompressorDeserializer_free(ptr noundef) local_unnamed_addr #5

declare ptr @ZL_CompressorDeserializer_create() local_unnamed_addr #5

declare { i32, i64 } @ZL_CompressorDeserializer_deserialize(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt10unique_ptrI27ZL_CompressorDeserializer_sN12_GLOBAL__N_17DeleterIS0_XadL_Z30ZL_CompressorDeserializer_freeEEEEED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNK12_GLOBAL__N_17DeleterI27ZL_CompressorDeserializer_sXadL_Z30ZL_CompressorDeserializer_freeEEEclEPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @ZL_CompressorDeserializer_free(ptr noundef nonnull %i.a)
          to label %_ZNK12_GLOBAL__N_17DeleterI27ZL_CompressorDeserializer_sXadL_Z30ZL_CompressorDeserializer_freeEEEclEPS1_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #15
  unreachable

_ZNK12_GLOBAL__N_17DeleterI27ZL_CompressorDeserializer_sXadL_Z30ZL_CompressorDeserializer_freeEEEclEPS1_.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212steady_clock3nowEv() local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

attributes #0 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"long", !8, i64 0}
!15 = !{!"bool", !8, i64 0}
!16 = !{!"_ZTSN12_GLOBAL__N_17ProfileE", !13, i64 0, !14, i64 8, !15, i64 16}
!17 = !{!13, !13, i64 0}
!18 = !{!14, !14, i64 0}
!19 = !{!"p1 _ZTS15ZL_Compressor_s", !12, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"p1 _ZTS25ZL_CompressorSerializer_s", !12, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"_ZTSSt10_Head_baseILm0EP15ZL_Compressor_sLb0EE", !19, i64 0}
!24 = !{!23, !19, i64 0}
!25 = !{!"p1 _ZTS9ZL_CCtx_s", !12, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"p1 _ZTS27ZL_CompressorDeserializer_s", !12, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!"p1 _ZTS9ZL_DCtx_s", !12, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!"double", !8, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!16, !13, i64 0}
!35 = distinct !{!35, i1 true, !"_ZN12_GLOBAL__N_111allocBufferEm"}
!36 = distinct !{!36, !35, !"_ZN12_GLOBAL__N_111allocBufferEm: argument 0"}
!37 = !{!16, !14, i64 8}
!38 = !{!12, !12, i64 0}
!39 = !{!36}
!40 = distinct !{!40, i1 true, !"_ZN12_GLOBAL__N_111allocBufferEm"}
!41 = distinct !{!41, !40, !"_ZN12_GLOBAL__N_111allocBufferEm: argument 0"}
!42 = !{!41}
!43 = distinct !{!43, i1 true, !"_ZN12_GLOBAL__N_111allocBufferEm"}
!44 = distinct !{!44, !43, !"_ZN12_GLOBAL__N_111allocBufferEm: argument 0"}
!45 = !{!44}
!46 = distinct !{!46, i1 true, !"_ZN12_GLOBAL__N_111allocBufferEm"}
!47 = distinct !{!47, !46, !"_ZN12_GLOBAL__N_111allocBufferEm: argument 0"}
!48 = distinct !{!48, !33}
!49 = !{!47}
!50 = distinct !{!50, i1 true, !"_ZN12_GLOBAL__N_111allocBufferEm"}
!51 = distinct !{!51, !50, !"_ZN12_GLOBAL__N_111allocBufferEm: argument 0"}
!52 = distinct !{!52, !33}
!53 = !{!51}
end_hunk_0
