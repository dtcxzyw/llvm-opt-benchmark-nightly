inline.NumInlined: 1107
inline.NumDeleted: 428
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN5faiss9nndescent10gen_randomERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEPiii:bb.a
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.l = call ptr @__cxa_allocate_exception(i64 40) #19 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss9nndescent10gen_randomERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEPiii, ptr noundef nonnull @.str.4, i32 noundef 118)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #26
          to label %bb.p unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.l) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn = phi { ptr, i32 } [ %i.k, %bb.e ], [ %i.m, %bb.h ]
  %i.n = load ptr, ptr %4, align 8, !tbaa !36     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.b
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.p = load i64, ptr %i.b, align 8, !tbaa !35
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %.pn

bb.j:                                             ; preds = %bb.a
  %i.r = icmp eq i32 %2, %3
  br i1 %i.r, label %.lr.ph84.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.s = sub nsw i32 %3, %2
  %i.t = sext i32 %i.s to i64
  %wide.trip.count = zext nneg i32 %2 to i64      ; 6 uses
  br label %bb.k

.lr.ph84.preheader:                               ; preds = %bb.j
  %wide.trip.count102 = zext nneg i32 %2 to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %2, 8
  br i1 %min.iters.check, label %.lr.ph84.preheader114, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph84.preheader
  %n.vec = and i64 %wide.trip.count102, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <4 x i32> %vec.ind, ptr %i.u, align 4, !tbaa !37
  store <4 x i32> %step.add, ptr %i.v, align 4, !tbaa !37
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count102
  br i1 %cmp.n, label %.preheader, label %.lr.ph84.preheader114

.lr.ph84.preheader114:                            ; preds = %.lr.ph84.preheader, %middle.block
  %indvars.iv99.ph = phi i64 [ 0, %.lr.ph84.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph84

.preheader:                                       ; preds = %.lr.ph84, %middle.block
  %i.x = icmp samesign ugt i32 %2, 1
  br i1 %i.x, label %.lr.ph86.preheader, label %.loopexit

.lr.ph86.preheader:                               ; preds = %.preheader
  %i.y = zext nneg i32 %2 to i64
  br label %.lr.ph86

.lr.ph84:                                         ; preds = %.lr.ph84.preheader114, %.lr.ph84
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %.lr.ph84 ], [ %indvars.iv99.ph, %.lr.ph84.preheader114 ] ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv99
  %i.aa = trunc nuw nsw i64 %indvars.iv99 to i32
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !37
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %exitcond103.not = icmp eq i64 %indvars.iv.next100, %wide.trip.count102
  br i1 %exitcond103.not, label %.preheader, label %.lr.ph84, !llvm.loop !42

.lr.ph86:                                         ; preds = %.lr.ph86.preheader, %.lr.ph86
  %indvars.iv104 = phi i64 [ %i.y, %.lr.ph86.preheader ], [ %indvars.iv.next105, %.lr.ph86 ] ; 3 uses
  %indvars.iv.next105 = add nsw i64 %indvars.iv104, -1 ; 2 uses
  %i.ab = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %0)
  %i.ac = urem i64 %i.ab, %indvars.iv104
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next105 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ac ; 2 uses
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !37
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !37
  store i32 %i.ag, ptr %i.ad, align 4, !tbaa !37
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !37
  %i.ah = icmp samesign ugt i64 %indvars.iv104, 2
  br i1 %i.ah, label %.lr.ph86, label %.loopexit, !llvm.loop !43

._crit_edge:                                      ; preds = %bb.k
  %.idx = shl nuw nsw i64 %wide.trip.count, 2
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 2 uses
  %i.aj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %wide.trip.count, i1 true)
  %i.ak = shl nuw nsw i64 %i.aj, 1
  %i.al = xor i64 %i.ak, 126
  tail call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %1, ptr noundef nonnull %i.ai, i64 noundef %i.al)
  tail call void @_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef nonnull %1, ptr noundef nonnull %i.ai)
  %i.am = icmp samesign ugt i32 %2, 1
  br i1 %i.am, label %.lr.ph78.preheader, label %.lr.ph82.preheader

.lr.ph78.preheader:                               ; preds = %._crit_edge
  %i.an = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter = and i64 %i.an, 1
  %i.ao = icmp eq i32 %2, 2
  br i1 %i.ao, label %.lr.ph78.epil.preheader, label %.lr.ph78.preheader.new

.lr.ph78.preheader.new:                           ; preds = %.lr.ph78.preheader
  %unroll_iter = and i64 %i.an, -2
  br label %.lr.ph78

bb.k:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  %i.ap = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %0)
  %i.aq = urem i64 %i.ap, %i.t
  %i.ar = trunc i64 %i.aq to i32
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.k, !llvm.loop !44

.lr.ph82.preheader.loopexit.unr-lcssa:            ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph82.preheader, label %.lr.ph78.epil.preheader

.lr.ph78.epil.preheader:                          ; preds = %.lr.ph82.preheader.loopexit.unr-lcssa, %.lr.ph78.preheader
  %indvars.iv89.epil.init = phi i64 [ 1, %.lr.ph78.preheader ], [ %indvars.iv.next90.1, %.lr.ph82.preheader.loopexit.unr-lcssa ]
  %lcmp.mod116 = trunc i64 %i.an to i1
  tail call void @llvm.assume(i1 %lcmp.mod116)
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv89.epil.init ; 3 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !37
  %i.av = getelementptr i8, ptr %i.at, i64 -4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !37 ; 2 uses
  %.not72.epil = icmp sgt i32 %i.au, %i.aw
  br i1 %.not72.epil, label %.lr.ph82.preheader, label %bb.l

bb.l:                                             ; preds = %.lr.ph78.epil.preheader
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.at, align 4, !tbaa !37
  br label %.lr.ph82.preheader

.lr.ph82.preheader:                               ; preds = %.lr.ph82.preheader.loopexit.unr-lcssa, %bb.l, %.lr.ph78.epil.preheader, %._crit_edge
  %i.ay = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %0)
  %i.az = zext nneg i32 %3 to i64
  %i.ba = urem i64 %i.ay, %i.az
  %i.bb = trunc nuw nsw i64 %i.ba to i32          ; 3 uses
  %xtraiter117 = and i64 %wide.trip.count, 1
  %i.bc = icmp eq i32 %2, 1
  br i1 %i.bc, label %.lr.ph82.epil.preheader, label %.lr.ph82.preheader.new

.lr.ph82.preheader.new:                           ; preds = %.lr.ph82.preheader
  %unroll_iter120 = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph82

.lr.ph78:                                         ; preds = %bb.o, %.lr.ph78.preheader.new
  %indvars.iv89 = phi i64 [ 1, %.lr.ph78.preheader.new ], [ %indvars.iv.next90.1, %bb.o ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph78.preheader.new ], [ %niter.next.1, %bb.o ]
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv89 ; 3 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !37
  %i.bf = getelementptr i8, ptr %i.bd, i64 -4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !37 ; 2 uses
  %.not72 = icmp sgt i32 %i.be, %i.bg
  br i1 %.not72, label %.lr.ph78.1, label %bb.m

bb.m:                                             ; preds = %.lr.ph78
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr %i.bd, align 4, !tbaa !37
  br label %.lr.ph78.1

.lr.ph78.1:                                       ; preds = %.lr.ph78, %bb.m
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv89 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !37
  %i.bl = load i32, ptr %i.bi, align 4, !tbaa !37 ; 2 uses
  %.not72.1 = icmp sgt i32 %i.bk, %i.bl
  br i1 %.not72.1, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph78.1
  %i.bm = add nsw i32 %i.bl, 1
  store i32 %i.bm, ptr %i.bj, align 4, !tbaa !37
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph78.1
  %indvars.iv.next90.1 = add nuw nsw i64 %indvars.iv89, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph82.preheader.loopexit.unr-lcssa, label %.lr.ph78, !llvm.loop !45

.lr.ph82:                                         ; preds = %.lr.ph82, %.lr.ph82.preheader.new
  %indvars.iv94 = phi i64 [ 0, %.lr.ph82.preheader.new ], [ %indvars.iv.next95.1, %.lr.ph82 ] ; 3 uses
  %niter121 = phi i64 [ 0, %.lr.ph82.preheader.new ], [ %niter121.next.1, %.lr.ph82 ]
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv94 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !37
  %i.bp = add nsw i32 %i.bo, %i.bb
  %i.bq = srem i32 %i.bp, %3
  store i32 %i.bq, ptr %i.bn, align 4, !tbaa !37
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv94
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !37
  %i.bu = add nsw i32 %i.bt, %i.bb
  %i.bv = srem i32 %i.bu, %3
  store i32 %i.bv, ptr %i.bs, align 4, !tbaa !37
  %indvars.iv.next95.1 = add nuw nsw i64 %indvars.iv94, 2 ; 2 uses
  %niter121.next.1 = add i64 %niter121, 2         ; 2 uses
  %niter121.ncmp.1 = icmp eq i64 %niter121.next.1, %unroll_iter120
  br i1 %niter121.ncmp.1, label %.loopexit.loopexit115.unr-lcssa, label %.lr.ph82, !llvm.loop !46

.loopexit.loopexit115.unr-lcssa:                  ; preds = %.lr.ph82
  %lcmp.mod118.not = icmp eq i64 %xtraiter117, 0
  br i1 %lcmp.mod118.not, label %.loopexit, label %.lr.ph82.epil.preheader

.lr.ph82.epil.preheader:                          ; preds = %.loopexit.loopexit115.unr-lcssa, %.lr.ph82.preheader
  %indvars.iv94.epil.init = phi i64 [ 0, %.lr.ph82.preheader ], [ %indvars.iv.next95.1, %.loopexit.loopexit115.unr-lcssa ]
  %lcmp.mod119 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod119)
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv94.epil.init ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !37
  %i.by = add nsw i32 %i.bx, %i.bb
  %i.bz = srem i32 %i.by, %3
  store i32 %i.bz, ptr %i.bw, align 4, !tbaa !37
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph82.epil.preheader, %.loopexit.loopexit115.unr-lcssa, %.lr.ph86, %.preheader
  ret void

bb.p:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !24     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !37
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !37
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !25
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #26
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #27 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i32 0, ptr %i.y, align 4, !tbaa !37
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !37
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #25
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36: ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !24
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !25
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !26
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #28
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(168) ptr @_ZN5faiss9nndescent5NhoodaSERKS1_(ptr noundef nonnull returned align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i32, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.b, ptr %i.c, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d) ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.g) ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.l = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.j) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.o = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.m) ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.p) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_0
begin_hunk_1_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_:bb.a

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !50
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %0, ptr noundef nonnull align 4 dereferenceable(9) %i.e, i64 9, i1 false), !tbaa.struct !50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.e, ptr noundef nonnull align 4 dereferenceable(9) %6, i64 9, i1 false), !tbaa.struct !50
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  %i.cr = fcmp olt float %i.ck, %i.cn
  br i1 %i.cr, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !50
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %0, ptr noundef nonnull align 4 dereferenceable(9) %i.ch, i64 9, i1 false), !tbaa.struct !50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.ch, ptr noundef nonnull align 4 dereferenceable(9) %5, i64 9, i1 false), !tbaa.struct !50
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !50
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %0, ptr noundef nonnull align 4 dereferenceable(9) %i.cg, i64 9, i1 false), !tbaa.struct !50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.cg, ptr noundef nonnull align 4 dereferenceable(9) %4, i64 9, i1 false), !tbaa.struct !50
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader: ; preds = %bb.u, %bb.t, %bb.r, %bb.p, %bb.o, %bb.m
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader, %bb.x
  %.sroa.012.0.i.i = phi ptr [ %i.cw, %bb.x ], [ %i.e, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.x ], [ %storemerge2040, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader ]
  %i.cs = load float, ptr %i.g, align 4, !tbaa !57 ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i ], [ %i.cw, %bb.v ] ; 9 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 4
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !57
  %i.cv = fcmp olt float %i.cu, %i.cs
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 12 ; 2 uses
  br i1 %i.cv, label %bb.v, label %.preheader.i.i, !llvm.loop !121

.preheader.i.i:                                   ; preds = %bb.v, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.v ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -12 ; 5 uses
  %i.cx = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !57
  %i.cz = fcmp olt float %i.cs, %i.cy
  br i1 %i.cz, label %.preheader.i.i, label %bb.w, !llvm.loop !122

bb.w:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %.not.i.i, label %bb.x, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.012.1.i.i, i64 12, i1 false), !tbaa.struct !50
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.sroa.012.1.i.i, ptr noundef nonnull align 4 dereferenceable(9) %.sroa.0.1.i.i, i64 9, i1 false), !tbaa.struct !50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.sroa.0.1.i.i, ptr noundef nonnull align 4 dereferenceable(9) %3, i64 9, i1 false), !tbaa.struct !50
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i, !llvm.loop !123

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit: ; preds = %bb.w
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2040, i64 noundef %i.ce)
  %i.da = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.db = sub i64 %i.da, %i.a
  %.fr52.i = freeze i64 %i.db                     ; 3 uses
  %i.dc = icmp sgt i64 %.fr52.i, 192
  br i1 %i.dc, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit, !llvm.loop !119

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"struct.faiss::nndescent::Neighbor", align 4 ; 4 uses
  %3 = alloca %"struct.faiss::nndescent::Neighbor", align 4 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 192
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %scevgep = getelementptr i8, ptr %0, i64 12
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %.sroa.0.017.i.idx = phi i64 [ 12, %.lr.ph.i ], [ %.sroa.0.017.i.add, %bb.g ] ; 4 uses
  %.pn16.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.017.i.ptr, %bb.g ] ; 4 uses
  %.sroa.0.017.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.017.i.idx ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.pn16.i, i64 16
  %i.g = load float, ptr %i.f, align 4, !tbaa !57 ; 4 uses
  %i.h = load float, ptr %i.e, align 4, !tbaa !57
  %i.i = fcmp olt float %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.017.i.ptr, i64 12, i1 false), !tbaa.struct !50
  %i.j = icmp samesign ugt i64 %.sroa.0.017.i.idx, 12
  br i1 %i.j, label %bb.d, label %bb.e, !prof !48

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.017.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.pn16.i, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.k, ptr noundef nonnull align 4 dereferenceable(9) %0, i64 9, i1 false), !tbaa.struct !50
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %0, ptr noundef nonnull align 4 dereferenceable(9) %3, i64 9, i1 false), !tbaa.struct !50
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %.sroa.03.0.copyload.i.i = load i32, ptr %.sroa.0.017.i.ptr, align 4, !tbaa !37
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn16.i, i64 20
  %i.l = load i32, ptr %.sroa.5.0..sroa_idx.i.i, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %.pn16.i, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !57
  %i.o = fcmp olt float %i.g, %i.n
  br i1 %i.o, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.08.011.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.017.i.ptr, %bb.f ] ; 3 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.08.011.i.i, i64 -12 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.sroa.08.011.i.i, ptr noundef nonnull align 4 dereferenceable(9) %.sroa.0.0.i.i, i64 9, i1 false), !tbaa.struct !50
  %i.p = getelementptr inbounds i8, ptr %.sroa.08.011.i.i, i64 -20
  %i.q = load float, ptr %i.p, align 4, !tbaa !57
  %i.r = fcmp olt float %i.g, %i.q
  br i1 %i.r, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, !llvm.loop !124

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.08.0.lcssa.i.i = phi ptr [ %.sroa.0.017.i.ptr, %bb.f ], [ %.sroa.0.0.i.i, %.lr.ph.i.i ] ; 3 uses
  %.sroa.5.sroa.0.0.extract.trunc.i.i = trunc i32 %i.l to i8
  store i32 %.sroa.03.0.copyload.i.i, ptr %.sroa.08.0.lcssa.i.i, align 4, !tbaa !37
  %.sroa.4.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i, i64 4
  store float %i.g, ptr %.sroa.4.0..sroa_idx5.i.i, align 4, !tbaa !51
  %.sroa.5.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i, i64 8
  store i8 %.sroa.5.sroa.0.0.extract.trunc.i.i, ptr %.sroa.5.0..sroa_idx7.i.i, align 4, !tbaa !53
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i
  %.sroa.0.017.i.add = add nuw nsw i64 %.sroa.0.017.i.idx, 12 ; 2 uses
  %i.s = icmp eq i64 %.sroa.0.017.i.add, 192
  br i1 %i.s, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %bb.b, !llvm.loop !125

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit: ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.u = icmp eq ptr %i.t, %1
  br i1 %i.u, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i9
  %.sroa.0.04.i = phi ptr [ %i.ac, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i9 ], [ %i.t, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit ] ; 7 uses
  %.sroa.03.0.copyload.i.i7 = load i32, ptr %.sroa.0.04.i, align 4, !tbaa !37
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i, i64 4
  %.sroa.4.0.copyload.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !51 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i8 = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i, i64 8
  %i.v = load i32, ptr %.sroa.5.0..sroa_idx.i.i8, align 4
  %i.w = getelementptr inbounds i8, ptr %.sroa.0.04.i, i64 -8
  %i.x = load float, ptr %i.w, align 4, !tbaa !57
  %i.y = fcmp olt float %.sroa.4.0.copyload.i.i, %i.x
  br i1 %i.y, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i9

.lr.ph.i.i14:                                     ; preds = %.lr.ph.i6, %.lr.ph.i.i14
  %.sroa.08.011.i.i15 = phi ptr [ %.sroa.0.0.i.i16, %.lr.ph.i.i14 ], [ %.sroa.0.04.i, %.lr.ph.i6 ] ; 3 uses
  %.sroa.0.0.i.i16 = getelementptr inbounds i8, ptr %.sroa.08.011.i.i15, i64 -12 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.sroa.08.011.i.i15, ptr noundef nonnull align 4 dereferenceable(9) %.sroa.0.0.i.i16, i64 9, i1 false), !tbaa.struct !50
  %i.z = getelementptr inbounds i8, ptr %.sroa.08.011.i.i15, i64 -20
  %i.aa = load float, ptr %i.z, align 4, !tbaa !57
  %i.ab = fcmp olt float %.sroa.4.0.copyload.i.i, %i.aa
  br i1 %i.ab, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i9, !llvm.loop !124

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i9: ; preds = %.lr.ph.i.i14, %.lr.ph.i6
  %.sroa.08.0.lcssa.i.i10 = phi ptr [ %.sroa.0.04.i, %.lr.ph.i6 ], [ %.sroa.0.0.i.i16, %.lr.ph.i.i14 ] ; 3 uses
  %.sroa.5.sroa.0.0.extract.trunc.i.i11 = trunc i32 %i.v to i8
  store i32 %.sroa.03.0.copyload.i.i7, ptr %.sroa.08.0.lcssa.i.i10, align 4, !tbaa !37
  %.sroa.4.0..sroa_idx5.i.i12 = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i10, i64 4
  store float %.sroa.4.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx5.i.i12, align 4, !tbaa !51
  %.sroa.5.0..sroa_idx7.i.i13 = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i10, i64 8
  store i8 %.sroa.5.sroa.0.0.extract.trunc.i.i11, ptr %.sroa.5.0..sroa_idx7.i.i13, align 4, !tbaa !53
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i, i64 12 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %1
  br i1 %i.ad, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %.lr.ph.i6, !llvm.loop !126

bb.h:                                             ; preds = %bb.a
  %i.ae = icmp eq ptr %0, %1
  br i1 %i.ae, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %.preheader.i17

.preheader.i17:                                   ; preds = %bb.h
  %.sroa.0.015.i18 = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.af = icmp eq ptr %.sroa.0.015.i18, %1
  br i1 %i.af, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %.preheader.i17
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i19
  %.sroa.0.017.i20 = phi ptr [ %.sroa.0.015.i18, %.lr.ph.i19 ], [ %.sroa.0.0.i29, %bb.o ] ; 7 uses
  %.pn16.i21 = phi ptr [ %0, %.lr.ph.i19 ], [ %.sroa.0.017.i20, %bb.o ] ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.pn16.i21, i64 16
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !57 ; 4 uses
  %i.aj = load float, ptr %i.ag, align 4, !tbaa !57
  %i.ak = fcmp olt float %i.ai, %i.aj
  br i1 %i.ak, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.017.i20, i64 12, i1 false), !tbaa.struct !50
  %i.al = ptrtoint ptr %.sroa.0.017.i20 to i64
  %i.am = sub i64 %i.al, %i.b                     ; 4 uses
  %i.an = icmp sgt i64 %i.am, 12
  br i1 %i.an, label %bb.k, label %bb.l, !prof !48

bb.k:                                             ; preds = %bb.j
  %4 = getelementptr inbounds nuw i8, ptr %.pn16.i21, i64 24
  %.neg22.i34 = udiv exact i64 %i.am, 12
  %.neg22.neg.i35 = sub nsw i64 0, %.neg22.i34
  %5 = getelementptr inbounds [12 x i8], ptr %4, i64 %.neg22.neg.i35
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %5, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.am, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i33

bb.l:                                             ; preds = %bb.j
  %i.ao = icmp eq i64 %i.am, 12
  br i1 %i.ao, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i33

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %.pn16.i21, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.ap, ptr noundef nonnull align 4 dereferenceable(9) %0, i64 9, i1 false), !tbaa.struct !50
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i33

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i33: ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %0, ptr noundef nonnull align 4 dereferenceable(9) %2, i64 9, i1 false), !tbaa.struct !50
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %.sroa.03.0.copyload.i.i22 = load i32, ptr %.sroa.0.017.i20, align 4, !tbaa !37
  %.sroa.5.0..sroa_idx.i.i23 = getelementptr inbounds nuw i8, ptr %.pn16.i21, i64 20
  %i.aq = load i32, ptr %.sroa.5.0..sroa_idx.i.i23, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %.pn16.i21, i64 4
  %i.as = load float, ptr %i.ar, align 4, !tbaa !57
  %i.at = fcmp olt float %i.ai, %i.as
  br i1 %i.at, label %.lr.ph.i.i30, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i24

.lr.ph.i.i30:                                     ; preds = %bb.n, %.lr.ph.i.i30
  %.sroa.08.011.i.i31 = phi ptr [ %.sroa.0.0.i.i32, %.lr.ph.i.i30 ], [ %.sroa.0.017.i20, %bb.n ] ; 3 uses
  %.sroa.0.0.i.i32 = getelementptr inbounds i8, ptr %.sroa.08.011.i.i31, i64 -12 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.sroa.08.011.i.i31, ptr noundef nonnull align 4 dereferenceable(9) %.sroa.0.0.i.i32, i64 9, i1 false), !tbaa.struct !50
  %i.au = getelementptr inbounds i8, ptr %.sroa.08.011.i.i31, i64 -20
  %i.av = load float, ptr %i.au, align 4, !tbaa !57
  %i.aw = fcmp olt float %i.ai, %i.av
  br i1 %i.aw, label %.lr.ph.i.i30, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i24, !llvm.loop !124

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i24: ; preds = %.lr.ph.i.i30, %bb.n
  %.sroa.08.0.lcssa.i.i25 = phi ptr [ %.sroa.0.017.i20, %bb.n ], [ %.sroa.0.0.i.i32, %.lr.ph.i.i30 ] ; 3 uses
  %.sroa.5.sroa.0.0.extract.trunc.i.i26 = trunc i32 %i.aq to i8
  store i32 %.sroa.03.0.copyload.i.i22, ptr %.sroa.08.0.lcssa.i.i25, align 4, !tbaa !37
  %.sroa.4.0..sroa_idx5.i.i27 = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i25, i64 4
  store float %i.ai, ptr %.sroa.4.0..sroa_idx5.i.i27, align 4, !tbaa !51
  %.sroa.5.0..sroa_idx7.i.i28 = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i25, i64 8
  store i8 %.sroa.5.sroa.0.0.extract.trunc.i.i26, ptr %.sroa.5.0..sroa_idx7.i.i28, align 4, !tbaa !53
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i24, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i33
  %.sroa.0.0.i29 = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i20, i64 12 ; 2 uses
  %i.ax = icmp eq ptr %.sroa.0.0.i29, %1
  br i1 %i.ax, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %bb.i, !llvm.loop !125

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit: ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i9, %.preheader.i17, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr52 = freeze i64 %i.c                        ; 4 uses
  %i.d = icmp slt i64 %.fr52, 24
  br i1 %i.d, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_RT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = udiv exact i64 %.fr52, 12                ; 3 uses
  %i.f = add nsw i64 %i.e, -2                     ; 2 uses
  %i.g = lshr i64 %i.f, 1                         ; 3 uses
  %i.h = add nsw i64 %i.e, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.e, 1
  %i.k = icmp eq i64 %i.j, 0
  %i.l = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.m = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.l
  %i.n = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.g
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i, %bb.b
  %.012.i = phi i64 [ %i.g, %bb.b ], [ %i.an, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i ] ; 8 uses
  %i.o = getelementptr inbounds [12 x i8], ptr %0, i64 %.012.i ; 2 uses
  %.sroa.05.0.copyload.i = load i64, ptr %i.o, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.4.0.copyload.i = load i8, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !53
  %i.p = icmp slt i64 %.012.i, %i.i
  br i1 %i.p, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.043.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ %.012.i, %bb.c ] ; 2 uses
  %i.q = shl i64 %.043.i.i, 1                     ; 2 uses
  %i.r = add i64 %i.q, 2                          ; 2 uses
  %i.s = getelementptr inbounds [12 x i8], ptr %0, i64 %i.r
  %i.t = or disjoint i64 %i.q, 1                  ; 2 uses
  %i.u = getelementptr inbounds [12 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.w = load float, ptr %i.v, align 4, !tbaa !57
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.y = load float, ptr %i.x, align 4, !tbaa !57
  %i.z = fcmp olt float %i.w, %i.y
  %spec.select.i.i = select i1 %i.z, i64 %i.t, i64 %i.r ; 4 uses
  %i.aa = getelementptr inbounds [12 x i8], ptr %0, i64 %spec.select.i.i
  %i.ab = getelementptr inbounds [12 x i8], ptr %0, i64 %.043.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.ab, ptr noundef nonnull align 4 dereferenceable(9) %i.aa, i64 9, i1 false), !tbaa.struct !50
  %i.ac = icmp slt i64 %spec.select.i.i, %i.i
  br i1 %i.ac, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !62

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.c
  %.0.lcssa.i.i = phi i64 [ %.012.i, %bb.c ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.ad = icmp eq i64 %.0.lcssa.i.i, %i.g
  %or.cond.i = select i1 %i.k, i1 %i.ad, i1 false
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.n, ptr noundef nonnull align 4 dereferenceable(9) %i.m, i64 9, i1 false), !tbaa.struct !50
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i
  %.1.i.i = phi i64 [ %i.l, %bb.d ], [ %.0.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ae = icmp sgt i64 %.1.i.i, %.012.i
  br i1 %i.ae, label %.lr.ph.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.e
  %.sroa.013.sroa.2.0.extract.shift.i.i.i = lshr i64 %.sroa.05.0.copyload.i, 32
  %.sroa.013.sroa.2.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.013.sroa.2.0.extract.shift.i.i.i to i32
  %i.af = bitcast i32 %.sroa.013.sroa.2.0.extract.trunc.i.i.i to float
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i
  %.022.i.i.i = phi i64 [ %.1.i.i, %.lr.ph.i.i.i ], [ %.01023.i.i.i, %bb.g ] ; 3 uses
  %.01023.in.i.i.i = add nsw i64 %.022.i.i.i, -1
  %.01023.i.i.i = sdiv i64 %.01023.in.i.i.i, 2    ; 4 uses
  %i.ag = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.01023.i.i.i ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !57
  %i.aj = fcmp olt float %i.ai, %i.af
  br i1 %i.aj, label %bb.g, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.022.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.ak, ptr noundef nonnull align 4 dereferenceable(9) %i.ag, i64 9, i1 false), !tbaa.struct !50
  %i.al = icmp sgt i64 %.01023.i.i.i, %.012.i
  br i1 %i.al, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i, !llvm.loop !61

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %.0.lcssa.i.i.i = phi i64 [ %.1.i.i, %bb.e ], [ %.022.i.i.i, %bb.f ], [ %.01023.i.i.i, %bb.g ]
  %i.am = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.0.lcssa.i.i.i ; 2 uses
  store i64 %.sroa.05.0.copyload.i, ptr %i.am, align 4
  %.sroa.3.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i8 %.sroa.4.0.copyload.i, ptr %.sroa.3.0..sroa.0.0..sroa_idx.i.i.i, align 4, !tbaa !53
  %.not.i = icmp eq i64 %.012.i, 0
  %i.an = add nsw i64 %.012.i, -1
  br i1 %.not.i, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_RT0_.exit, label %bb.c, !llvm.loop !112

_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_RT0_.exit: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i, %bb.a
  %.not30 = icmp ult ptr %1, %2
  br i1 %.not30, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_RT0_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.ap = sdiv i64 %.fr52, 12                     ; 3 uses
  %i.aq = add nsw i64 %i.ap, -1
  %i.ar = sdiv i64 %i.aq, 2
  %i.as = icmp sgt i64 %.fr52, 24
  %i.at = and i64 %i.ap, 1
  %i.au = icmp eq i64 %i.at, 0                    ; 2 uses
  %i.av = add nsw i64 %i.ap, -2                   ; 3 uses
  %i.aw = ashr exact i64 %i.av, 1                 ; 2 uses
  br i1 %i.as, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.ax = or disjoint i64 %i.av, 1                ; 2 uses
  %i.ay = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.ax
  %i.az = getelementptr inbounds [12 x i8], ptr %0, i64 %i.aw
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.k
  %.sroa.0.031.us = phi ptr [ %i.by, %bb.k ], [ %1, %.lr.ph.split.us.preheader ] ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.031.us, i64 4
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !57
  %i.bc = load float, ptr %i.ao, align 4, !tbaa !57
  %i.bd = fcmp olt float %i.bb, %i.bc
  br i1 %i.bd, label %.lr.ph.i.i25.preheader.us, label %bb.k

.lr.ph.i.i25.preheader.us:                        ; preds = %.lr.ph.split.us
  %.sroa.05.0.copyload.i11.us = load i64, ptr %.sroa.0.031.us, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx.i12.us = getelementptr inbounds nuw i8, ptr %.sroa.0.031.us, i64 8
  %.sroa.4.0.copyload.i13.us = load i8, ptr %.sroa.4.0..sroa_idx.i12.us, align 4, !tbaa !53
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.sroa.0.031.us, ptr noundef nonnull align 4 dereferenceable(9) %0, i64 9, i1 false), !tbaa.struct !50
  br label %.lr.ph.i.i25.us

.lr.ph.i.i25.us:                                  ; preds = %.lr.ph.i.i25.preheader.us, %.lr.ph.i.i25.us
  %.043.i.i26.us = phi i64 [ %spec.select.i.i27.us, %.lr.ph.i.i25.us ], [ 0, %.lr.ph.i.i25.preheader.us ] ; 2 uses
  %i.be = shl i64 %.043.i.i26.us, 1               ; 2 uses
  %i.bf = add i64 %i.be, 2                        ; 2 uses
  %i.bg = getelementptr inbounds [12 x i8], ptr %0, i64 %i.bf
  %i.bh = or disjoint i64 %i.be, 1                ; 2 uses
  %i.bi = getelementptr inbounds [12 x i8], ptr %0, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !57
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !57
  %i.bn = fcmp olt float %i.bk, %i.bm
end_hunk_1
begin_hunk_2_@_ZN5faiss9NNDescent9nndescentERNS_16DistanceComputerEb:bb.a
  %i.ae = getelementptr [8 x i8], ptr %5, i64 %.011.i.i
  %i.af = lshr i64 %store_forwarded, 30
  %i.ag = xor i64 %i.af, %store_forwarded
  %i.ah = mul nuw nsw i64 %i.ag, 1812433253
  %i.ai = add nuw i64 %i.ah, %.011.i.i            ; 2 uses
  %i.aj = and i64 %i.ai, 4294967295               ; 2 uses
  store i64 %i.aj, ptr %i.ae, align 8, !tbaa !67
  %i.ak = add nuw nsw i64 %.011.i.i, 1            ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.ak, 624
  br i1 %exitcond.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr [8 x i8], ptr %5, i64 %i.ak
  %i.am = lshr i64 %i.aj, 30
  %i.an = xor i64 %i.am, %i.ai
  %i.ao = mul i64 %i.an, 1812433253
  %i.ap = add i64 %i.ao, %i.ak
  %i.aq = and i64 %i.ap, 4294967295               ; 2 uses
  store i64 %i.aq, ptr %i.al, align 8, !tbaa !67
  %i.ar = add nuw nsw i64 %.011.i.i, 2
  br label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 4992
  store i64 624, ptr %i.as, align 8, !tbaa !65
  %i.at = ptrtoint ptr %i.w to i64
  %i.au = sub i64 %.0.i.i.i.i.i30, %i.at
  %i.av = lshr exact i64 %i.au, 2
  %i.aw = trunc i64 %i.av to i32
  invoke void @_ZN5faiss9nndescent10gen_randomERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEPiii(ptr noundef nonnull align 8 dereferenceable(5000) %5, ptr noundef %i.w, i32 noundef %i.aw, i32 noundef %i.e)
          to label %bb.f unwind label %bb.t

bb.f:                                             ; preds = %bb.e
  %i.ax = load i32, ptr %i.d, align 4, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %i.ax, ptr %i.c, align 4, !tbaa !37
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 5, ptr nonnull @_ZN5faiss9NNDescent17generate_eval_setERNS_16DistanceComputerERSt6vectorIiSaIiEERS3_IS5_SaIS5_EEi.omp_outlined, ptr nonnull align 8 dereferenceable(24) %3, ptr nonnull %i.c, ptr nonnull align 8 dereferenceable(8) %1, ptr nonnull align 8 dereferenceable(88) %0, ptr nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !133
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  br i1 %2, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN5faiss9NNDescent11eval_recallERSt6vectorIiSaIiEERS1_IS3_SaIS3_EE.exit.us
  %.033.us = phi i32 [ %i.ea, %_ZN5faiss9NNDescent11eval_recallERSt6vectorIiSaIiEERS1_IS3_SaIS3_EE.exit.us ], [ 0, %.lr.ph ] ; 2 uses
  %i.bf = load i32, ptr %i.bb, align 4, !tbaa !92
  %i.bg = load i32, ptr %i.bc, align 8, !tbaa !98
  %i.bh = mul nsw i32 %i.bg, %i.bf
  %i.bi = sext i32 %i.bh to i64
  %i.bj = invoke noundef i64 @_ZN5faiss17InterruptCallback15get_period_hintEm(i64 noundef %i.bi)
          to label %.noexc23.us unwind label %.loopexit.split-lp.split.us ; 2 uses

.noexc23.us:                                      ; preds = %.lr.ph.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 0, ptr %i.a, align 8, !tbaa !67
  %i.bk = load i32, ptr %i.d, align 4, !tbaa !99  ; 2 uses
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %.lr.ph.preheader.i.us, label %.loopexit32.us

.lr.ph.preheader.i.us:                            ; preds = %.noexc23.us
  %i.bm = zext nneg i32 %i.bk to i64
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.noexc24.us, %.lr.ph.preheader.i.us
  %i.bn = phi i64 [ %i.bs, %.noexc24.us ], [ %i.bm, %.lr.ph.preheader.i.us ]
  %storemerge6.i.us = phi i64 [ %i.bq, %.noexc24.us ], [ 0, %.lr.ph.preheader.i.us ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.bo = add nsw i64 %storemerge6.i.us, %i.bj
  %.sroa.speculated.i.us = call i64 @llvm.smin.i64(i64 %i.bo, i64 %i.bn)
  store i64 %.sroa.speculated.i.us, ptr %i.b, align 8, !tbaa !67
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 4, ptr nonnull @_ZN5faiss9NNDescent4joinERNS_16DistanceComputerE.omp_outlined, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(88) %0, ptr nonnull align 8 dereferenceable(8) %1)
  invoke void @_ZN5faiss17InterruptCallback5checkEv()
          to label %.noexc24.us unwind label %.loopexit.split.us

.noexc24.us:                                      ; preds = %.lr.ph.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.bp = load i64, ptr %i.a, align 8, !tbaa !67
  %i.bq = add nsw i64 %i.bp, %i.bj                ; 3 uses
  store i64 %i.bq, ptr %i.a, align 8, !tbaa !67
  %i.br = load i32, ptr %i.d, align 4, !tbaa !99
  %i.bs = sext i32 %i.br to i64                   ; 2 uses
  %i.bt = icmp slt i64 %i.bq, %i.bs
  br i1 %i.bt, label %.lr.ph.i.us, label %.loopexit32.us, !llvm.loop !100

.loopexit32.us:                                   ; preds = %.noexc24.us, %.noexc23.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @_ZN5faiss9NNDescent6updateEv.omp_outlined, ptr nonnull align 8 dereferenceable(88) %0)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @_ZN5faiss9NNDescent6updateEv.omp_outlined.7, ptr nonnull align 8 dereferenceable(88) %0)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @_ZN5faiss9NNDescent6updateEv.omp_outlined.8, ptr nonnull align 8 dereferenceable(88) %0)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @_ZN5faiss9NNDescent6updateEv.omp_outlined.9, ptr nonnull align 8 dereferenceable(88) %0)
  %i.bu = load ptr, ptr %i.x, align 8, !tbaa !25  ; 2 uses
  %i.bv = load ptr, ptr %3, align 8, !tbaa !24    ; 3 uses
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = ashr exact i64 %i.by, 2                 ; 2 uses
  %.not.i.us = icmp eq ptr %i.bu, %i.bv
  br i1 %.not.i.us, label %_ZN5faiss9NNDescent11eval_recallERSt6vectorIiSaIiEERS1_IS3_SaIS3_EE.exit.us, label %.lr.ph.i25.us

.lr.ph.i25.us:                                    ; preds = %.loopexit32.us
  %i.ca = load ptr, ptr %i.bd, align 8, !tbaa !94
  %i.cb = load ptr, ptr %4, align 8, !tbaa !128
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.us, %.lr.ph.i25.us
  %.02532.i.us = phi i64 [ 0, %.lr.ph.i25.us ], [ %i.du, %._crit_edge.i.us ] ; 3 uses
  %.02631.i.us = phi float [ 0.000000e+00, %.lr.ph.i25.us ], [ %i.dt, %._crit_edge.i.us ]
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %.02532.i.us
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !37
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [168 x i8], ptr %i.ca, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.cb, i64 %.02532.i.us ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !49 ; 2 uses
  %i.ck = load ptr, ptr %i.cg, align 8, !tbaa !27 ; 5 uses
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm                    ; 2 uses
  %i.co = sdiv exact i64 %i.cn, 12                ; 3 uses
  %.not36.i.us = icmp eq ptr %i.cj, %i.ck
  %.phi.trans.insert.i.us = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %.pre.i.us = load ptr, ptr %.phi.trans.insert.i.us, align 8, !tbaa !25 ; 2 uses
  %.pre43.i.us = load ptr, ptr %i.ch, align 8, !tbaa !24 ; 5 uses
  %.pre44.i.us = ptrtoint ptr %.pre.i.us to i64   ; 3 uses
  %.pre45.i.us = ptrtoint ptr %.pre43.i.us to i64 ; 5 uses
  br i1 %.not36.i.us, label %._crit_edge.i.us, label %.preheader.lr.ph.i.us

.preheader.lr.ph.i.us:                            ; preds = %bb.g
  %.not37.i.us = icmp eq ptr %.pre.i.us, %.pre43.i.us
  br i1 %.not37.i.us, label %._crit_edge.i.us, label %.preheader.us.preheader.i.us

.preheader.us.preheader.i.us:                     ; preds = %.preheader.lr.ph.i.us
  %i.cp = sub i64 %.pre44.i.us, %.pre45.i.us
  %i.cq = ashr exact i64 %i.cp, 2                 ; 3 uses
  %xtraiter = and i64 %i.co, 1
  %i.cr = icmp eq i64 %i.cn, 12
  br i1 %i.cr, label %.preheader.us.i.us.epil.preheader, label %.preheader.us.preheader.i.us.new

.preheader.us.preheader.i.us.new:                 ; preds = %.preheader.us.preheader.i.us
  %unroll_iter = and i64 %i.co, -2
  br label %.preheader.us.i.us

.preheader.us.i.us:                               ; preds = %..loopexit_crit_edge.us.i.us.1, %.preheader.us.preheader.i.us.new
  %.02329.us.i.us = phi i64 [ 0, %.preheader.us.preheader.i.us.new ], [ %i.dh, %..loopexit_crit_edge.us.i.us.1 ] ; 3 uses
  %.02428.us.i.us = phi float [ 0.000000e+00, %.preheader.us.preheader.i.us.new ], [ %.1.us.i.us.1, %..loopexit_crit_edge.us.i.us.1 ] ; 2 uses
  %niter = phi i64 [ 0, %.preheader.us.preheader.i.us.new ], [ %niter.next.1, %..loopexit_crit_edge.us.i.us.1 ]
  %i.cs = getelementptr inbounds nuw [12 x i8], ptr %i.ck, i64 %.02329.us.i.us
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !60
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.preheader.us.i.us
  %.027.us.i.us = phi i64 [ 0, %.preheader.us.i.us ], [ %i.cx, %bb.i ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.pre43.i.us, i64 %.027.us.i.us
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !37
  %i.cw = icmp eq i32 %i.ct, %i.cv
  br i1 %i.cw, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cx = add nuw i64 %.027.us.i.us, 1            ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.cx, %i.cq
  br i1 %exitcond.not.i.us, label %..loopexit_crit_edge.us.i.us, label %bb.h, !llvm.loop !134

bb.j:                                             ; preds = %bb.h
  %i.cy = fadd float %.02428.us.i.us, 1.000000e+00
  br label %..loopexit_crit_edge.us.i.us

..loopexit_crit_edge.us.i.us:                     ; preds = %bb.i, %bb.j
  %.1.us.i.us = phi float [ %i.cy, %bb.j ], [ %.02428.us.i.us, %bb.i ] ; 2 uses
  %i.cz = getelementptr inbounds nuw [12 x i8], ptr %i.ck, i64 %.02329.us.i.us
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 12
  %i.db = load i32, ptr %i.da, align 4, !tbaa !60
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %..loopexit_crit_edge.us.i.us
  %.027.us.i.us.1 = phi i64 [ 0, %..loopexit_crit_edge.us.i.us ], [ %i.df, %bb.l ] ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.pre43.i.us, i64 %.027.us.i.us.1
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !37
  %i.de = icmp eq i32 %i.db, %i.dd
  br i1 %i.de, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.df = add nuw i64 %.027.us.i.us.1, 1          ; 2 uses
  %exitcond.not.i.us.1 = icmp eq i64 %i.df, %i.cq
  br i1 %exitcond.not.i.us.1, label %..loopexit_crit_edge.us.i.us.1, label %bb.k, !llvm.loop !134

bb.m:                                             ; preds = %bb.k
  %i.dg = fadd float %.1.us.i.us, 1.000000e+00
  br label %..loopexit_crit_edge.us.i.us.1

..loopexit_crit_edge.us.i.us.1:                   ; preds = %bb.l, %bb.m
  %.1.us.i.us.1 = phi float [ %i.dg, %bb.m ], [ %.1.us.i.us, %bb.l ] ; 3 uses
  %i.dh = add nuw i64 %.02329.us.i.us, 2          ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.us.loopexit.unr-lcssa, label %.preheader.us.i.us, !llvm.loop !135

._crit_edge.i.us.loopexit.unr-lcssa:              ; preds = %..loopexit_crit_edge.us.i.us.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.us, label %.preheader.us.i.us.epil.preheader

.preheader.us.i.us.epil.preheader:                ; preds = %._crit_edge.i.us.loopexit.unr-lcssa, %.preheader.us.preheader.i.us
  %.02329.us.i.us.epil.init = phi i64 [ 0, %.preheader.us.preheader.i.us ], [ %i.dh, %._crit_edge.i.us.loopexit.unr-lcssa ]
  %.02428.us.i.us.epil.init = phi float [ 0.000000e+00, %.preheader.us.preheader.i.us ], [ %.1.us.i.us.1, %._crit_edge.i.us.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod65 = trunc i64 %i.co to i1
  call void @llvm.assume(i1 %lcmp.mod65)
  %i.di = getelementptr inbounds nuw [12 x i8], ptr %i.ck, i64 %.02329.us.i.us.epil.init
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !60
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.preheader.us.i.us.epil.preheader
  %.027.us.i.us.epil = phi i64 [ 0, %.preheader.us.i.us.epil.preheader ], [ %i.dn, %bb.o ] ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.pre43.i.us, i64 %.027.us.i.us.epil
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !37
  %i.dm = icmp eq i32 %i.dj, %i.dl
  br i1 %i.dm, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dn = add nuw i64 %.027.us.i.us.epil, 1       ; 2 uses
  %exitcond.not.i.us.epil = icmp eq i64 %i.dn, %i.cq
  br i1 %exitcond.not.i.us.epil, label %._crit_edge.i.us, label %bb.n, !llvm.loop !134

bb.p:                                             ; preds = %bb.n
  %i.do = fadd float %.02428.us.i.us.epil.init, 1.000000e+00
  br label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %._crit_edge.i.us.loopexit.unr-lcssa, %bb.o, %bb.p, %.preheader.lr.ph.i.us, %bb.g
  %.pre-phi46.i.us = phi i64 [ %.pre45.i.us, %bb.g ], [ %.pre44.i.us, %.preheader.lr.ph.i.us ], [ %.pre45.i.us, %bb.p ], [ %.pre45.i.us, %bb.o ], [ %.pre45.i.us, %._crit_edge.i.us.loopexit.unr-lcssa ]
  %.024.lcssa.i.us = phi float [ 0.000000e+00, %bb.g ], [ 0.000000e+00, %.preheader.lr.ph.i.us ], [ %.1.us.i.us.1, %._crit_edge.i.us.loopexit.unr-lcssa ], [ %i.do, %bb.p ], [ %.02428.us.i.us.epil.init, %bb.o ]
  %i.dp = sub i64 %.pre44.i.us, %.pre-phi46.i.us
  %i.dq = ashr exact i64 %i.dp, 2
  %i.dr = uitofp i64 %i.dq to float
  %i.ds = fdiv float %.024.lcssa.i.us, %i.dr
  %i.dt = fadd float %.02631.i.us, %i.ds          ; 2 uses
  %i.du = add nuw i64 %.02532.i.us, 1             ; 2 uses
  %exitcond42.not.i.us = icmp eq i64 %i.du, %i.bz
  br i1 %exitcond42.not.i.us, label %_ZN5faiss9NNDescent11eval_recallERSt6vectorIiSaIiEERS1_IS3_SaIS3_EE.exit.us, label %bb.g, !llvm.loop !136

_ZN5faiss9NNDescent11eval_recallERSt6vectorIiSaIiEERS1_IS3_SaIS3_EE.exit.us: ; preds = %._crit_edge.i.us, %.loopexit32.us
  %.026.lcssa.i.us = phi float [ 0.000000e+00, %.loopexit32.us ], [ %i.dt, %._crit_edge.i.us ]
  %i.dv = uitofp i64 %i.bz to float
  %i.dw = fdiv float %.026.lcssa.i.us, %i.dv
  %i.dx = load i32, ptr %i.be, align 8, !tbaa !91
  %i.dy = fpext float %i.dw to double
  %i.dz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %.033.us, i32 noundef %i.dx, double noundef %i.dy) ; 0 uses
  %i.ea = add nuw nsw i32 %.033.us, 1             ; 2 uses
  %i.eb = load i32, ptr %i.ay, align 4, !tbaa !133
  %i.ec = icmp slt i32 %i.ea, %i.eb
  br i1 %i.ec, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !137

.loopexit.split-lp.split.us:                      ; preds = %.lr.ph.split.us
  %lpad.loopexit.split-lp.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split.us:                               ; preds = %.lr.ph.i.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

._crit_edge:                                      ; preds = %.loopexit32, %_ZN5faiss9NNDescent11eval_recallERSt6vectorIiSaIiEERS1_IS3_SaIS3_EE.exit.us, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.ed = load ptr, ptr %4, align 8, !tbaa !128   ; 3 uses
  %i.ee = load ptr, ptr %i.y, align 8, !tbaa !132 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ed, %i.ee
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.el, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i ], [ %i.ed, %._crit_edge ] ; 3 uses
  %i.ef = load ptr, ptr %.05.i.i.i, align 8, !tbaa !24 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !26
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = ptrtoint ptr %i.ef to i64
  %i.ek = sub i64 %i.ei, %i.ej
  call void @_ZdlPvm(ptr noundef nonnull %i.ef, i64 noundef %i.ek) #25
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i:  ; preds = %bb.q, %.lr.ph.i.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.el, %i.ee
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !138

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !128
  br label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %._crit_edge
  %i.em = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.ed, %._crit_edge ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.em, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i
  %i.en = load ptr, ptr %i.z, align 8, !tbaa !131
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = ptrtoint ptr %i.em to i64
  %i.eq = sub i64 %i.eo, %i.ep
  call void @_ZdlPvm(ptr noundef nonnull %i.em, i64 noundef %i.eq) #25
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.er = load ptr, ptr %3, align 8, !tbaa !24    ; 3 uses
  %.not.i.i.i22 = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i22, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !26
  %i.eu = ptrtoint ptr %i.et to i64
  %i.ev = ptrtoint ptr %i.er to i64
  %i.ew = sub i64 %i.eu, %i.ev
  call void @_ZdlPvm(ptr noundef nonnull %i.er, i64 noundef %i.ew) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void

.thread:                                          ; preds = %.lr.ph.preheader.i.i.i.i.i
  %i.ex = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.v

bb.t:                                             ; preds = %bb.e
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.lr.ph.split:                                     ; preds = %.lr.ph, %.loopexit32
  %.033 = phi i32 [ %i.fo, %.loopexit32 ], [ 0, %.lr.ph ]
  %i.ez = load i32, ptr %i.bb, align 4, !tbaa !92
  %i.fa = load i32, ptr %i.bc, align 8, !tbaa !98
  %i.fb = mul nsw i32 %i.fa, %i.ez
  %i.fc = sext i32 %i.fb to i64
  %i.fd = invoke noundef i64 @_ZN5faiss17InterruptCallback15get_period_hintEm(i64 noundef %i.fc)
          to label %.noexc23 unwind label %.loopexit.split-lp.split ; 2 uses

.noexc23:                                         ; preds = %.lr.ph.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 0, ptr %i.a, align 8, !tbaa !67
  %i.fe = load i32, ptr %i.d, align 4, !tbaa !99  ; 2 uses
  %i.ff = icmp sgt i32 %i.fe, 0
  br i1 %i.ff, label %.lr.ph.preheader.i, label %.loopexit32

.lr.ph.preheader.i:                               ; preds = %.noexc23
  %i.fg = zext nneg i32 %i.fe to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc24, %.lr.ph.preheader.i
  %i.fh = phi i64 [ %i.fm, %.noexc24 ], [ %i.fg, %.lr.ph.preheader.i ]
  %storemerge6.i = phi i64 [ %i.fk, %.noexc24 ], [ 0, %.lr.ph.preheader.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.fi = add nsw i64 %storemerge6.i, %i.fd
  %.sroa.speculated.i = call i64 @llvm.smin.i64(i64 %i.fi, i64 %i.fh)
  store i64 %.sroa.speculated.i, ptr %i.b, align 8, !tbaa !67
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 4, ptr nonnull @_ZN5faiss9NNDescent4joinERNS_16DistanceComputerE.omp_outlined, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(88) %0, ptr nonnull align 8 dereferenceable(8) %1)
  invoke void @_ZN5faiss17InterruptCallback5checkEv()
          to label %.noexc24 unwind label %.loopexit.split

.noexc24:                                         ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.fj = load i64, ptr %i.a, align 8, !tbaa !67
  %i.fk = add nsw i64 %i.fj, %i.fd                ; 3 uses
  store i64 %i.fk, ptr %i.a, align 8, !tbaa !67
  %i.fl = load i32, ptr %i.d, align 4, !tbaa !99
  %i.fm = sext i32 %i.fl to i64                   ; 2 uses
  %i.fn = icmp slt i64 %i.fk, %i.fm
  br i1 %i.fn, label %.lr.ph.i, label %.loopexit32, !llvm.loop !100

.loopexit32:                                      ; preds = %.noexc24, %.noexc23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @_ZN5faiss9NNDescent6updateEv.omp_outlined, ptr nonnull align 8 dereferenceable(88) %0)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @_ZN5faiss9NNDescent6updateEv.omp_outlined.7, ptr nonnull align 8 dereferenceable(88) %0)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @_ZN5faiss9NNDescent6updateEv.omp_outlined.8, ptr nonnull align 8 dereferenceable(88) %0)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @_ZN5faiss9NNDescent6updateEv.omp_outlined.9, ptr nonnull align 8 dereferenceable(88) %0)
  %i.fo = add nuw nsw i32 %.033, 1                ; 2 uses
  %i.fp = load i32, ptr %i.ay, align 4, !tbaa !133
  %i.fq = icmp slt i32 %i.fo, %i.fp
  br i1 %i.fq, label %.lr.ph.split, label %._crit_edge, !llvm.loop !137

.loopexit.split:                                  ; preds = %.lr.ph.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp.split:                         ; preds = %.lr.ph.split
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.loopexit.split-lp.split, %.loopexit.split-lp.split.us, %.loopexit.split, %.loopexit.split.us
  %.pn = phi { ptr, i32 } [ %i.ey, %bb.t ], [ %lpad.loopexit.us, %.loopexit.split.us ], [ %lpad.loopexit, %.loopexit.split ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.split ], [ %lpad.loopexit.split-lp.us, %.loopexit.split-lp.split.us ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #19
  %.pre = load ptr, ptr %3, align 8, !tbaa !24    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %.not.i.i.i26 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i26, label %_ZNSt6vectorIiSaIiEED2Ev.exit27, label %bb.v

bb.v:                                             ; preds = %.thread, %bb.u
  %.pn.pn59 = phi { ptr, i32 } [ %i.ex, %.thread ], [ %.pn, %bb.u ]
  %i.fr = phi ptr [ %i.j, %.thread ], [ %.pre, %bb.u ] ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !26
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = ptrtoint ptr %i.fr to i64
  %i.fw = sub i64 %i.fu, %i.fv
  call void @_ZdlPvm(ptr noundef nonnull %i.fr, i64 noundef %i.fw) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit27

_ZNSt6vectorIiSaIiEED2Ev.exit27:                  ; preds = %bb.v, %bb.u
  %.pn.pn60 = phi { ptr, i32 } [ %.pn.pn59, %bb.v ], [ %.pn, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %.pn.pn60
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5faiss9NNDescent17generate_eval_setERNS_16DistanceComputerERSt6vectorIiSaIiEERS3_IS5_SaIS5_EEi(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %4) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %4, ptr %i.a, align 4, !tbaa !37
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 5, ptr nonnull @_ZN5faiss9NNDescent17generate_eval_setERNS_16DistanceComputerERSt6vectorIiSaIiEERS3_IS5_SaIS5_EEi.omp_outlined, ptr nonnull %2, ptr nonnull %i.a, ptr nonnull %1, ptr nonnull %0, ptr nonnull %3)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef float @_ZN5faiss9NNDescent11eval_recallERSt6vectorIiSaIiEERS1_IS3_SaIS3_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #21 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !24     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 2                   ; 2 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge34, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !94
  %i.j = load ptr, ptr %2, align 8, !tbaa !128
  br label %bb.b

._crit_edge34:                                    ; preds = %._crit_edge, %bb.a
  %.026.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.bd, %._crit_edge ]
  %i.k = uitofp i64 %i.g to float
  %i.l = fdiv float %.026.lcssa, %i.k
  ret float %i.l

bb.b:                                             ; preds = %.lr.ph, %._crit_edge
  %.02532 = phi i64 [ 0, %.lr.ph ], [ %i.be, %._crit_edge ] ; 3 uses
  %.02631 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.bd, %._crit_edge ]
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.02532
  %i.n = load i32, ptr %i.m, align 4, !tbaa !37
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [168 x i8], ptr %i.i, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.02532 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !49   ; 2 uses
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !27   ; 5 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = sdiv exact i64 %i.x, 12                  ; 3 uses
  %.not36 = icmp eq ptr %i.t, %i.u
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !25 ; 2 uses
  %.pre43 = load ptr, ptr %i.r, align 8, !tbaa !24 ; 5 uses
  %.pre44 = ptrtoint ptr %.pre to i64             ; 3 uses
  %.pre45 = ptrtoint ptr %.pre43 to i64           ; 5 uses
  br i1 %.not36, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %.not37 = icmp eq ptr %.pre, %.pre43
  br i1 %.not37, label %._crit_edge, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.z = sub i64 %.pre44, %.pre45
  %i.aa = ashr exact i64 %i.z, 2                  ; 3 uses
  %xtraiter = and i64 %i.y, 1
  %i.ab = icmp eq i64 %i.x, 12
  br i1 %i.ab, label %.preheader.us.epil.preheader, label %.preheader.us.preheader.new

.preheader.us.preheader.new:                      ; preds = %.preheader.us.preheader
  %unroll_iter = and i64 %i.y, -2
  br label %.preheader.us

.preheader.us:                                    ; preds = %..loopexit_crit_edge.us.1, %.preheader.us.preheader.new
  %.02329.us = phi i64 [ 0, %.preheader.us.preheader.new ], [ %i.ar, %..loopexit_crit_edge.us.1 ] ; 3 uses
  %.02428.us = phi float [ 0.000000e+00, %.preheader.us.preheader.new ], [ %.1.us.1, %..loopexit_crit_edge.us.1 ] ; 2 uses
  %niter = phi i64 [ 0, %.preheader.us.preheader.new ], [ %niter.next.1, %..loopexit_crit_edge.us.1 ]
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %.02329.us
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !60
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.ae = add nuw i64 %.027.us, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ae, %i.aa
  br i1 %exitcond.not, label %..loopexit_crit_edge.us, label %bb.d, !llvm.loop !134

bb.d:                                             ; preds = %.preheader.us, %bb.c
  %.027.us = phi i64 [ 0, %.preheader.us ], [ %i.ae, %bb.c ] ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.pre43, i64 %.027.us
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !37
  %i.ah = icmp eq i32 %i.ad, %i.ag
  br i1 %i.ah, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.ai = fadd float %.02428.us, 1.000000e+00
  br label %..loopexit_crit_edge.us

..loopexit_crit_edge.us:                          ; preds = %bb.c, %bb.e
  %.1.us = phi float [ %i.ai, %bb.e ], [ %.02428.us, %bb.c ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %.02329.us
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !60
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %..loopexit_crit_edge.us
  %.027.us.1 = phi i64 [ 0, %..loopexit_crit_edge.us ], [ %i.ap, %bb.g ] ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.pre43, i64 %.027.us.1
  %i.an = load i32, ptr %i.am, align 4, !tbaa !37
  %i.ao = icmp eq i32 %i.al, %i.an
  br i1 %i.ao, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = add nuw i64 %.027.us.1, 1               ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ap, %i.aa
  br i1 %exitcond.not.1, label %..loopexit_crit_edge.us.1, label %bb.f, !llvm.loop !134

bb.h:                                             ; preds = %bb.f
  %i.aq = fadd float %.1.us, 1.000000e+00
  br label %..loopexit_crit_edge.us.1

..loopexit_crit_edge.us.1:                        ; preds = %bb.g, %bb.h
  %.1.us.1 = phi float [ %i.aq, %bb.h ], [ %.1.us, %bb.g ] ; 3 uses
  %i.ar = add nuw i64 %.02329.us, 2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.preheader.us, !llvm.loop !135

._crit_edge.loopexit.unr-lcssa:                   ; preds = %..loopexit_crit_edge.us.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.preheader.us.epil.preheader

.preheader.us.epil.preheader:                     ; preds = %._crit_edge.loopexit.unr-lcssa, %.preheader.us.preheader
  %.02329.us.epil.init = phi i64 [ 0, %.preheader.us.preheader ], [ %i.ar, %._crit_edge.loopexit.unr-lcssa ]
  %.02428.us.epil.init = phi float [ 0.000000e+00, %.preheader.us.preheader ], [ %.1.us.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod54 = trunc i64 %i.y to i1
  tail call void @llvm.assume(i1 %lcmp.mod54)
  %i.as = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %.02329.us.epil.init
  %i.at = load i32, ptr %i.as, align 4, !tbaa !60
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.preheader.us.epil.preheader
  %.027.us.epil = phi i64 [ 0, %.preheader.us.epil.preheader ], [ %i.ax, %bb.j ] ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.pre43, i64 %.027.us.epil
  %i.av = load i32, ptr %i.au, align 4, !tbaa !37
  %i.aw = icmp eq i32 %i.at, %i.av
  br i1 %i.aw, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = add nuw i64 %.027.us.epil, 1            ; 2 uses
  %exitcond.not.epil = icmp eq i64 %i.ax, %i.aa
  br i1 %exitcond.not.epil, label %._crit_edge, label %bb.i, !llvm.loop !134

bb.k:                                             ; preds = %bb.i
  %i.ay = fadd float %.02428.us.epil.init, 1.000000e+00
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.j, %bb.k, %bb.b, %.preheader.lr.ph
  %.pre-phi46 = phi i64 [ %.pre45, %bb.b ], [ %.pre44, %.preheader.lr.ph ], [ %.pre45, %bb.k ], [ %.pre45, %bb.j ], [ %.pre45, %._crit_edge.loopexit.unr-lcssa ]
  %.024.lcssa = phi float [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %.preheader.lr.ph ], [ %.1.us.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.ay, %bb.k ], [ %.02428.us.epil.init, %bb.j ]
  %i.az = sub i64 %.pre44, %.pre-phi46
  %i.ba = ashr exact i64 %i.az, 2
  %i.bb = uitofp i64 %i.ba to float
  %i.bc = fdiv float %.024.lcssa, %i.bb
  %i.bd = fadd float %.02631, %i.bc               ; 2 uses
  %i.be = add nuw i64 %.02532, 1                  ; 2 uses
  %exitcond42.not = icmp eq i64 %i.be, %i.g
  br i1 %exitcond42.not, label %._crit_edge34, label %bb.b, !llvm.loop !136
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !128    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !132  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !24 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #25
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i:    ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !138

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !128
  br label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !131
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #25
  br label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN5faiss9NNDescent17generate_eval_setERNS_16DistanceComputerERSt6vectorIiSaIiEERS3_IS5_SaIS5_EEi.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6) #18 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.g = load ptr, ptr %2, align 8, !tbaa !24
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 2
  %i.l = trunc i64 %i.k to i32                    ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.n = add nsw i32 %i.l, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 %i.n, ptr %i.b, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 1, ptr %i.c, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 0, ptr %i.d, align 4, !tbaa !37
  %i.o = load i32, ptr %0, align 4, !tbaa !37     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @2, i32 %i.o, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.p = load i32, ptr %i.b, align 4, !tbaa !37
  %i.q = call i32 @llvm.smin.i32(i32 %i.p, i32 %i.n) ; 2 uses
  store i32 %i.q, ptr %i.b, align 4, !tbaa !37
  %i.r = load i32, ptr %i.a, align 4, !tbaa !37   ; 2 uses
  %.not77 = icmp sgt i32 %i.r, %i.q
  br i1 %.not77, label %._crit_edge79, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.t = sext i32 %i.r to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EED2Ev.exit
  %indvars.iv84 = phi i64 [ %i.t, %.preheader.lr.ph ], [ %indvars.iv.next85, %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EED2Ev.exit ] ; 4 uses
  %i.u = load i32, ptr %3, align 4, !tbaa !37     ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %bb.m
  %i.w = ptrtoint ptr %.sroa.14.1 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.sroa.048.0.lcssa = phi ptr [ null, %.preheader ], [ %.sroa.048.1, %._crit_edge.loopexit ] ; 16 uses
  %.sroa.9.0.lcssa = phi ptr [ null, %.preheader ], [ %.sroa.9.1, %._crit_edge.loopexit ]
  %.sroa.14.0.lcssa = phi i64 [ 0, %.preheader ], [ %i.w, %._crit_edge.loopexit ]
  %i.x = load i32, ptr %i.s, align 8, !tbaa !91   ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [12 x i8], ptr %.sroa.048.0.lcssa, i64 %i.y ; 2 uses
  invoke void @_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_(ptr %.sroa.048.0.lcssa, ptr %i.z, ptr %.sroa.9.0.lcssa)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc:                                           ; preds = %._crit_edge
  %i.aa = ptrtoint ptr %.sroa.048.0.lcssa to i64  ; 2 uses
  %i.ab = icmp sgt i32 %i.x, 1
  br i1 %i.ab, label %.lr.ph.i.i.i, label %_ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEEEvT_SA_SA_.exit

.lr.ph.i.i.i:                                     ; preds = %.noexc, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i.i.i
  %.sroa.0.05.i.i.i = phi ptr [ %i.ac, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i.i.i ], [ %i.z, %.noexc ] ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %.sroa.0.05.i.i.i, i64 -12 ; 4 uses
  %.sroa.05.0.copyload.i.i.i.i = load i64, ptr %i.ac, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i.i, i64 -4
  %.sroa.4.0.copyload.i.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 4, !tbaa !53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.ac, ptr noundef nonnull align 4 dereferenceable(9) %.sroa.048.0.lcssa, i64 9, i1 false), !tbaa.struct !50
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.aa                    ; 3 uses
  %i.af = sdiv exact i64 %i.ae, 12                ; 3 uses
  %i.ag = add nsw i64 %i.af, -1
  %i.ah = sdiv i64 %i.ag, 2
  %i.ai = icmp sgt i64 %i.ae, 24
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.i.i
  %.043.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i ] ; 2 uses
  %i.aj = shl i64 %.043.i.i.i.i.i, 1              ; 2 uses
  %i.ak = add i64 %i.aj, 2                        ; 2 uses
  %i.al = getelementptr inbounds [12 x i8], ptr %.sroa.048.0.lcssa, i64 %i.ak
  %i.am = or disjoint i64 %i.aj, 1                ; 2 uses
  %i.an = getelementptr inbounds [12 x i8], ptr %.sroa.048.0.lcssa, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !57
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !57
  %i.as = fcmp olt float %i.ap, %i.ar
  %spec.select.i.i.i.i.i = select i1 %i.as, i64 %i.am, i64 %i.ak ; 4 uses
  %i.at = getelementptr inbounds [12 x i8], ptr %.sroa.048.0.lcssa, i64 %spec.select.i.i.i.i.i
  %i.au = getelementptr inbounds [12 x i8], ptr %.sroa.048.0.lcssa, i64 %.043.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.au, ptr noundef nonnull align 4 dereferenceable(9) %i.at, i64 9, i1 false), !tbaa.struct !50
  %i.av = icmp slt i64 %spec.select.i.i.i.i.i, %i.ah
  br i1 %i.av, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !62

end_hunk_2
begin_hunk_3_@_ZNK5faiss9NNDescent6searchERNS_16DistanceComputerEiPlPfRNS_12VisitedTableE:bb.a
  %i.cq = add nsw i32 %i.cp, %.068139
  %i.cr = sext i32 %i.cq to i64
  %i.cs = load ptr, ptr %i.bv, align 8, !tbaa !24
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.cr
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !37 ; 5 uses
  %i.cv = sext i32 %i.cu to i64                   ; 3 uses
  %i.cw = load ptr, ptr %5, align 8, !tbaa !63
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = invoke noundef zeroext i1 %i.cy(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %i.cv)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %.lr.ph141
  br i1 %i.cz, label %bb.af, label %bb.v

bb.u:                                             ; preds = %bb.v, %.lr.ph141
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.v:                                             ; preds = %bb.t
  %i.db = load ptr, ptr %5, align 8, !tbaa !63
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = invoke noundef zeroext i1 %i.dd(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %i.cv)
          to label %bb.w unwind label %bb.u       ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.df = load ptr, ptr %1, align 8, !tbaa !63
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = invoke noundef float %i.dh(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.cv)
          to label %bb.x unwind label %bb.y       ; 5 uses

bb.x:                                             ; preds = %bb.w
  %i.dj = load float, ptr %i.bz, align 4, !tbaa !57
  %i.dk = fcmp ult float %i.di, %i.dj
  br i1 %i.dk, label %bb.z, label %bb.af

bb.y:                                             ; preds = %bb.w
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.z:                                             ; preds = %bb.x
  %i.dm = bitcast float %i.di to i32
  %.sroa.0.sroa.4.0.insert.ext = zext i32 %i.dm to i64
  %.sroa.0.sroa.4.0.insert.shift = shl nuw i64 %.sroa.0.sroa.4.0.insert.ext, 32
  %.sroa.0.sroa.0.0.insert.ext = zext i32 %i.cu to i64
  %.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.sroa.4.0.insert.shift, %.sroa.0.sroa.0.0.insert.ext ; 2 uses
  %i.dn = load float, ptr %i.ca, align 4, !tbaa !57
  %i.do = fcmp ogt float %i.dn, %i.di
  br i1 %i.do, label %bb.aa, label %.preheader68.i

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cc, ptr nonnull align 4 %i.y, i64 %.idx, i1 false)
  store i64 %.sroa.0.sroa.0.0.insert.insert, ptr %i.y, align 4
  store i8 1, ptr %.sroa.12.0..sroa_idx.i, align 4, !tbaa !53
  br label %_ZN5faiss9nndescent16insert_into_poolEPNS0_8NeighborEiS1_.exit

.preheader68.i:                                   ; preds = %bb.z
  br i1 %i.cb, label %.lr.ph.i, label %._crit_edge.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %.not168 = icmp eq i32 %.063..i, 0
  br i1 %.not168, label %._crit_edge.i, label %.lr.ph74.i.preheader

.lr.ph74.i.preheader:                             ; preds = %.preheader.i
  %i.dp = zext nneg i32 %.063..i to i64
  br label %.lr.ph74.i

.lr.ph.i:                                         ; preds = %.preheader68.i, %.lr.ph.i
  %.071.i = phi i32 [ %..0.i, %.lr.ph.i ], [ %i.bw, %.preheader68.i ] ; 2 uses
  %.06370.i = phi i32 [ %.063..i, %.lr.ph.i ], [ 0, %.preheader68.i ] ; 2 uses
  %i.dq = add nuw nsw i32 %.06370.i, %.071.i
  %i.dr = lshr i32 %i.dq, 1                       ; 3 uses
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  %i.dv = load float, ptr %i.du, align 4, !tbaa !57
  %i.dw = fcmp ogt float %i.dv, %i.di             ; 2 uses
  %.063..i = select i1 %i.dw, i32 %.06370.i, i32 %i.dr ; 4 uses
  %..0.i = select i1 %i.dw, i32 %i.dr, i32 %.071.i ; 5 uses
  %i.dx = add nsw i32 %..0.i, -1
  %i.dy = icmp slt i32 %.063..i, %i.dx
  br i1 %i.dy, label %.lr.ph.i, label %.preheader.i, !llvm.loop !81

.lr.ph74.i:                                       ; preds = %.lr.ph74.i.preheader, %bb.ac
  %indvars.iv151 = phi i64 [ %i.dp, %.lr.ph74.i.preheader ], [ %indvars.iv.next152, %bb.ac ] ; 4 uses
  %i.dz = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %indvars.iv151 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !57
  %i.ec = fcmp olt float %i.eb, %i.di
  br i1 %i.ec, label %._crit_edge.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph74.i
  %i.ed = load i32, ptr %i.dz, align 4, !tbaa !60
  %i.ee = icmp eq i32 %i.ed, %i.cu
  br i1 %i.ee, label %_ZN5faiss9nndescent16insert_into_poolEPNS0_8NeighborEiS1_.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %indvars.iv.next152 = add nsw i64 %indvars.iv151, -1
  %i.ef = icmp sgt i64 %indvars.iv151, 1
  br i1 %i.ef, label %.lr.ph74.i, label %._crit_edge.i, !llvm.loop !82

._crit_edge.i:                                    ; preds = %bb.ac, %.lr.ph74.i, %.preheader.i, %.preheader68.i
  %.0.lcssa80.i = phi i32 [ %..0.i, %.preheader.i ], [ %i.bw, %.preheader68.i ], [ %..0.i, %.lr.ph74.i ], [ %..0.i, %bb.ac ] ; 3 uses
  %.2.lcssa.i = phi i64 [ 0, %.preheader.i ], [ 0, %.preheader68.i ], [ 0, %bb.ac ], [ %indvars.iv151, %.lr.ph74.i ]
  %i.eg = getelementptr inbounds [12 x i8], ptr %i.y, i64 %.2.lcssa.i
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !60
  %i.ei = icmp eq i32 %i.eh, %i.cu
  br i1 %i.ei, label %_ZN5faiss9nndescent16insert_into_poolEPNS0_8NeighborEiS1_.exit, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge.i
  %i.ej = zext nneg i32 %.0.lcssa80.i to i64
  %i.ek = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %i.ej ; 5 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !60
  %i.em = icmp eq i32 %i.el, %i.cu
  br i1 %i.em, label %_ZN5faiss9nndescent16insert_into_poolEPNS0_8NeighborEiS1_.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.en = getelementptr i8, ptr %i.ek, i64 12
  %i.eo = sub nsw i32 %.sroa.speculated, %.0.lcssa80.i
  %i.ep = sext i32 %i.eo to i64
  %i.eq = mul nsw i64 %i.ep, 12
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.en, ptr nonnull align 4 %i.ek, i64 %i.eq, i1 false)
  store i64 %.sroa.0.sroa.0.0.insert.insert, ptr %i.ek, align 4
  %.sroa.12.0..sroa_idx60.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store i8 1, ptr %.sroa.12.0..sroa_idx60.i, align 4, !tbaa !53
  br label %_ZN5faiss9nndescent16insert_into_poolEPNS0_8NeighborEiS1_.exit

_ZN5faiss9nndescent16insert_into_poolEPNS0_8NeighborEiS1_.exit: ; preds = %bb.ab, %._crit_edge.i, %bb.ad, %bb.aa, %bb.ae
  %.065.i = phi i32 [ 0, %bb.aa ], [ %i.u, %bb.ad ], [ %i.u, %._crit_edge.i ], [ %.0.lcssa80.i, %bb.ae ], [ %i.u, %bb.ab ]
  %spec.select = call i32 @llvm.smin.i32(i32 %.065.i, i32 %.069138)
  br label %bb.af

bb.af:                                            ; preds = %_ZN5faiss9nndescent16insert_into_poolEPNS0_8NeighborEiS1_.exit, %bb.x, %bb.t
  %.372 = phi i32 [ %.069138, %bb.t ], [ %spec.select, %_ZN5faiss9nndescent16insert_into_poolEPNS0_8NeighborEiS1_.exit ], [ %.069138, %bb.x ] ; 2 uses
  %i.er = add nuw nsw i32 %.068139, 1             ; 2 uses
  %i.es = load i32, ptr %i.bu, align 8, !tbaa !91 ; 2 uses
  %i.et = icmp slt i32 %i.er, %i.es
  br i1 %i.et, label %.lr.ph141, label %.loopexit, !llvm.loop !155

.loopexit:                                        ; preds = %bb.af, %bb.s, %bb.r
  %.473 = phi i32 [ %.sroa.speculated, %bb.r ], [ %.sroa.speculated, %bb.s ], [ %.372, %bb.af ] ; 2 uses
  %.not = icmp sgt i32 %.473, %.074142
  %i.eu = add nsw i32 %.074142, 1
  %.175 = select i1 %.not, i32 %i.eu, i32 %.473   ; 2 uses
  %i.ev = icmp slt i32 %.175, %.sroa.speculated
  br i1 %i.ev, label %bb.r, label %.preheader, !llvm.loop !156

._crit_edge146.loopexit.unr-lcssa:                ; preds = %.lr.ph145
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge146, label %.lr.ph145.epil.preheader

.lr.ph145.epil.preheader:                         ; preds = %._crit_edge146.loopexit.unr-lcssa, %.lr.ph145.preheader
  %indvars.iv154.epil.init = phi i64 [ 0, %.lr.ph145.preheader ], [ %indvars.iv.next155.1, %._crit_edge146.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod196 = trunc i32 %2 to i1
  call void @llvm.assume(i1 %lcmp.mod196)
  %i.ew = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %indvars.iv154.epil.init ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !60
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv154.epil.init
  store i64 %i.ey, ptr %i.ez, align 8, !tbaa !67
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !57
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv154.epil.init
  store float %i.fb, ptr %i.fc, align 4, !tbaa !51
  br label %._crit_edge146

._crit_edge146:                                   ; preds = %.lr.ph145.epil.preheader, %._crit_edge146.loopexit.unr-lcssa, %.preheader
  %i.fd = load ptr, ptr %5, align 8, !tbaa !63
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 48
  %i.ff = load ptr, ptr %i.fe, align 8
  invoke void %i.ff(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.ag unwind label %bb.ai

.lr.ph145:                                        ; preds = %.lr.ph145, %.lr.ph145.preheader.new
  %indvars.iv154 = phi i64 [ 0, %.lr.ph145.preheader.new ], [ %indvars.iv.next155.1, %.lr.ph145 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph145.preheader.new ], [ %niter.next.1, %.lr.ph145 ]
  %i.fg = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %indvars.iv154 ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !60
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv154
  store i64 %i.fi, ptr %i.fj, align 8, !tbaa !67
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !57
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv154
  store float %i.fl, ptr %i.fm, align 4, !tbaa !51
  %indvars.iv.next155 = or disjoint i64 %indvars.iv154, 1 ; 3 uses
  %i.fn = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %indvars.iv.next155 ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !60
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next155
  store i64 %i.fp, ptr %i.fq, align 8, !tbaa !67
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !57
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next155
  store float %i.fs, ptr %i.ft, align 4, !tbaa !51
  %indvars.iv.next155.1 = add nuw nsw i64 %indvars.iv154, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge146.loopexit.unr-lcssa, label %.lr.ph145, !llvm.loop !157

bb.ag:                                            ; preds = %._crit_edge146
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %.not.i.i.i = icmp eq ptr %.sroa.0108.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fu = ptrtoint ptr %.sroa.11.0 to i64
  %i.fv = ptrtoint ptr %.sroa.0108.0 to i64
  %i.fw = sub i64 %i.fu, %i.fv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0108.0, i64 noundef %i.fw) #25
  br label %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EED2Ev.exit

_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EED2Ev.exit: ; preds = %bb.ag, %bb.ah
  %.idx195 = mul nuw nsw i64 %i.v, 12
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %.idx195) #25
  ret void

bb.ai:                                            ; preds = %._crit_edge146
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.y, %bb.u, %bb.p
  %.pn86 = phi { ptr, i32 } [ %i.da, %bb.u ], [ %i.bj, %bb.p ], [ %i.dl, %bb.y ], [ %i.fx, %bb.ai ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %.not.i.i.i100 = icmp eq ptr %.sroa.0108.0, null
  br i1 %.not.i.i.i100, label %_ZNSt6vectorIiSaIiEED2Ev.exit101.thread, label %bb.ak

.sink.split:                                      ; preds = %.thread, %.thread180
  %.pn86132.ph = phi { ptr, i32 } [ %i.cn, %.thread180 ], [ %i.bt, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.ak

bb.ak:                                            ; preds = %.sink.split, %bb.aj
  %.pn86132 = phi { ptr, i32 } [ %.pn86, %bb.aj ], [ %.pn86132.ph, %.sink.split ]
  %i.fy = ptrtoint ptr %.sroa.11.0 to i64
  %i.fz = ptrtoint ptr %.sroa.0108.0 to i64
  %i.ga = sub i64 %i.fy, %i.fz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0108.0, i64 noundef %i.ga) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit101.thread

_ZNSt6vectorIiSaIiEED2Ev.exit101:                 ; preds = %bb.l
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit101.thread

_ZNSt6vectorIiSaIiEED2Ev.exit101.thread:          ; preds = %bb.ak, %bb.aj, %_ZNSt6vectorIiSaIiEED2Ev.exit101
  %.pn86.pn189 = phi { ptr, i32 } [ %i.gb, %_ZNSt6vectorIiSaIiEED2Ev.exit101 ], [ %.pn86132, %bb.ak ], [ %.pn86, %bb.aj ]
  %.idx194 = mul nuw nsw i64 %i.v, 12
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %.idx194) #25
  br label %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EED2Ev.exit103

_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EED2Ev.exit103: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit101.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn86.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn86.pn189, %_ZNSt6vectorIiSaIiEED2Ev.exit101.thread ]
  resume { ptr, i32 } %.pn86.pn.pn.pn

bb.al:                                            ; preds = %bb.g
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5faiss9NNDescent5resetEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) initializes((0, 1), (36, 40)) %0) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 0, ptr %0, align 8, !tbaa !83
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.a, align 4, !tbaa !99
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.a
  store ptr %i.e, ptr %i.c, align 8, !tbaa !25
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.a, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #24

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noreturn }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind }
attributes #20 = { convergent nounwind }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { builtin nounwind }
attributes #26 = { noreturn }
attributes #27 = { builtin allocsize(0) }
attributes #28 = { noreturn nounwind }
attributes #29 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !6, i64 64}
!10 = !{!"_ZTSN5faiss9nndescent5NhoodE", !11, i64 0, !13, i64 40, !6, i64 64, !19, i64 72, !19, i64 96, !19, i64 120, !19, i64 144}
!11 = !{!"_ZTSSt5mutex", !12, i64 0}
!12 = !{!"_ZTSSt12__mutex_base", !7, i64 0}
!13 = !{!"_ZTSSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE", !14, i64 0}
!14 = !{!"_ZTSSt12_Vector_baseIN5faiss9nndescent8NeighborESaIS2_EE", !15, i64 0}
!15 = !{!"_ZTSNSt12_Vector_baseIN5faiss9nndescent8NeighborESaIS2_EE12_Vector_implE", !16, i64 0}
!16 = !{!"_ZTSNSt12_Vector_baseIN5faiss9nndescent8NeighborESaIS2_EE17_Vector_impl_dataE", !17, i64 0, !17, i64 8, !17, i64 16}
!17 = !{!"p1 _ZTSN5faiss9nndescent8NeighborE", !18, i64 0}
!18 = !{!"any pointer", !7, i64 0}
!19 = !{!"_ZTSSt6vectorIiSaIiEE", !20, i64 0}
!20 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !21, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !22, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!23 = !{!"p1 int", !18, i64 0}
!24 = !{!22, !23, i64 0}
!25 = !{!22, !23, i64 8}
!26 = !{!22, !23, i64 16}
!27 = !{!16, !17, i64 0}
!28 = !{!16, !17, i64 16}
!29 = !{!30, !31, i64 0}
!30 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !31, i64 0}
!31 = !{!"p1 omnipotent char", !18, i64 0}
!32 = !{!33, !34, i64 8}
!33 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !30, i64 0, !34, i64 8, !7, i64 16}
!34 = !{!"long", !7, i64 0}
!35 = !{!7, !7, i64 0}
!36 = !{!33, !31, i64 0}
!37 = !{!6, !6, i64 0}
!38 = distinct !{!38, !39, !40, !41}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"llvm.loop.isvectorized", i32 1}
!41 = !{!"llvm.loop.unroll.runtime.disable"}
!42 = distinct !{!42, !39, !41, !40}
!43 = distinct !{!43, !39}
!44 = distinct !{!44, !39}
!45 = distinct !{!45, !39}
!46 = distinct !{!46, !39}
!47 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!48 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!49 = !{!16, !17, i64 8}
!50 = !{i64 0, i64 4, !37, i64 4, i64 4, !51, i64 8, i64 1, !53}
!51 = !{!52, !52, i64 0}
!52 = !{!"float", !7, i64 0}
!53 = !{!54, !54, i64 0}
!54 = !{!"bool", !7, i64 0}
!55 = !{!17, !17, i64 0}
!56 = !{!23, !23, i64 0}
!57 = !{!58, !52, i64 4}
!58 = !{!"_ZTSN5faiss9nndescent8NeighborE", !6, i64 0, !52, i64 4, !54, i64 8}
!59 = distinct !{!59, !39}
!60 = !{!58, !6, i64 0}
!61 = distinct !{!61, !39}
!62 = distinct !{!62, !39}
end_hunk_3
