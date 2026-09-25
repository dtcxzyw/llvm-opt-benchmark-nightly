Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/NNDescent?download=true
inline.NumInlined: 1107
inline.NumDeleted: 428
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 12
begin_hunk_0
@_ZN5faiss9nndescent5NhoodC1ERKS1_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN5faiss9nndescent5NhoodC2ERKS1_
@_ZN5faiss9nndescent5NhoodC1EOS1_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN5faiss9nndescent5NhoodC2EOS1_
@_ZN5faiss9NNDescentC1Eii = unnamed_addr alias void (ptr, i32, i32), ptr @_ZN5faiss9NNDescentC2Eii
@_ZN5faiss9NNDescentD1Ev = unnamed_addr alias void (ptr), ptr @_ZN5faiss9NNDescentD2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss9nndescent5NhoodC2EiiRSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEi(ptr noundef nonnull align 8 dereferenceable(168) initializes((0, 68), (72, 168)) %0, i32 %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(5000) %3, i32 noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, i8 0, i64 96, i1 false)
  store i32 %2, ptr %i.f, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = shl nsw i32 %2, 1
  %i.i = sext i32 %i.h to i64
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.i)
          to label %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge13 unwind label %bb.d

._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge13:  ; preds = %bb.b
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !37
  %.pre14 = load ptr, ptr %i.g, align 8, !tbaa !38
  %i.j = ptrtoint ptr %.pre14 to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.a, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge13
  %i.k = phi i64 [ %i.j, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge13 ], [ 0, %bb.a ]
  %i.l = phi ptr [ %.pre, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge13 ], [ null, %bb.a ] ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.k, %i.m
  %i.o = lshr exact i64 %i.n, 2
  %i.p = trunc i64 %i.o to i32
  invoke void @_ZN5faiss9nndescent10gen_randomERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEPiii(ptr noundef nonnull align 8 dereferenceable(5000) %3, ptr noundef %i.l, i32 noundef %i.p, i32 noundef %4)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  ret void

bb.d:                                             ; preds = %bb.b, %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !37   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !39
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.d, %bb.e
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !37   ; 3 uses
  %.not.i.i.i6 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i6, label %_ZNSt6vectorIiSaIiEED2Ev.exit7, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !39
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit7

_ZNSt6vectorIiSaIiEED2Ev.exit7:                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.f
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !37  ; 3 uses
  %.not.i.i.i8 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i8, label %_ZNSt6vectorIiSaIiEED2Ev.exit9, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit7
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !39
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit9

_ZNSt6vectorIiSaIiEED2Ev.exit9:                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit7, %bb.g
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !37  ; 3 uses
  %.not.i.i.i10 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorIiSaIiEED2Ev.exit11, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit9
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !39
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit11

_ZNSt6vectorIiSaIiEED2Ev.exit11:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit9, %bb.h
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !40  ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit11
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !41
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.au) #25
  br label %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EED2Ev.exit

_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit11, %bb.i
  resume { ptr, i32 } %i.q
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss9nndescent10gen_randomERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEPiii(ptr noundef nonnull align 8 dereferenceable(5000) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = icmp slt i32 %2, 1
  %.not = icmp sgt i32 %2, %3
  %or.cond = or i1 %i.a, %.not
  br i1 %or.cond, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !47
  store i8 0, ptr %i.b, align 8, !tbaa !48
  %i.d = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %2, i32 noundef %3) #19 ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = zext nneg i32 %i.d to i64                ; 2 uses
  %i.g = add nuw nsw i64 %i.f, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.g)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %4, align 8, !tbaa !49
  %i.i = load i64, ptr %i.c, align 8, !tbaa !47
  %i.j = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %2, i32 noundef %3) #19 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.f)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d, %bb.c
  %i.k = landingpad { ptr, i32 }
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
  %i.n = load ptr, ptr %4, align 8, !tbaa !49     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.b
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.p = load i64, ptr %i.b, align 8, !tbaa !48
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
  %i.s = sub nuw nsw i32 %3, %2
  %i.t = sext i32 %i.s to i64
  %wide.trip.count = zext nneg i32 %2 to i64      ; 4 uses
  br label %bb.k

.lr.ph84.preheader:                               ; preds = %bb.j
  %wide.trip.count102 = zext nneg i32 %2 to i64   ; 3 uses
  %min.iters.check117 = icmp ult i32 %2, 8
  br i1 %min.iters.check117, label %.lr.ph84.preheader126, label %vector.ph118

vector.ph118:                                     ; preds = %.lr.ph84.preheader
  %n.vec119 = and i64 %wide.trip.count102, 2147483640 ; 3 uses
  br label %vector.body120

vector.body120:                                   ; preds = %vector.body120, %vector.ph118
  %index121 = phi i64 [ 0, %vector.ph118 ], [ %index.next122, %vector.body120 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph118 ], [ %vec.ind.next, %vector.body120 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index121 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <4 x i32> %vec.ind, ptr %i.u, align 4, !tbaa !50
  store <4 x i32> %step.add, ptr %i.v, align 4, !tbaa !50
  %index.next122 = add nuw i64 %index121, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.w = icmp eq i64 %index.next122, %n.vec119
  br i1 %i.w, label %middle.block123, label %vector.body120, !llvm.loop !101

middle.block123:                                  ; preds = %vector.body120
  %cmp.n124 = icmp eq i64 %n.vec119, %wide.trip.count102
  br i1 %cmp.n124, label %.preheader, label %.lr.ph84.preheader126

.lr.ph84.preheader126:                            ; preds = %.lr.ph84.preheader, %middle.block123
  %indvars.iv99.ph = phi i64 [ 0, %.lr.ph84.preheader ], [ %n.vec119, %middle.block123 ]
  br label %.lr.ph84

.preheader:                                       ; preds = %.lr.ph84, %middle.block123
  %i.x = icmp samesign ugt i32 %2, 1
  br i1 %i.x, label %.lr.ph86.preheader, label %.loopexit

.lr.ph86.preheader:                               ; preds = %.preheader
  %i.y = zext nneg i32 %2 to i64
  br label %.lr.ph86

.lr.ph84:                                         ; preds = %.lr.ph84.preheader126, %.lr.ph84
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %.lr.ph84 ], [ %indvars.iv99.ph, %.lr.ph84.preheader126 ] ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv99
  %i.aa = trunc nuw nsw i64 %indvars.iv99 to i32
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !50
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %exitcond103.not = icmp eq i64 %indvars.iv.next100, %wide.trip.count102
  br i1 %exitcond103.not, label %.preheader, label %.lr.ph84, !llvm.loop !102

.lr.ph86:                                         ; preds = %.lr.ph86.preheader, %.lr.ph86
  %indvars.iv104 = phi i64 [ %i.y, %.lr.ph86.preheader ], [ %indvars.iv.next105, %.lr.ph86 ] ; 3 uses
  %indvars.iv.next105 = add nsw i64 %indvars.iv104, -1 ; 2 uses
  %i.ab = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %0)
  %i.ac = urem i64 %i.ab, %indvars.iv104
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next105 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ac ; 2 uses
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !50
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !50
  store i32 %i.ag, ptr %i.ad, align 4, !tbaa !50
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !50
  %i.ah = icmp samesign ugt i64 %indvars.iv104, 2
  br i1 %i.ah, label %.lr.ph86, label %.loopexit, !llvm.loop !103

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
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !50
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.k, !llvm.loop !104

.lr.ph82.preheader.loopexit.unr-lcssa:            ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph82.preheader, label %.lr.ph78.epil.preheader

.lr.ph78.epil.preheader:                          ; preds = %.lr.ph82.preheader.loopexit.unr-lcssa, %.lr.ph78.preheader
  %indvars.iv89.epil.init = phi i64 [ 1, %.lr.ph78.preheader ], [ %indvars.iv.next90.1, %.lr.ph82.preheader.loopexit.unr-lcssa ]
  %lcmp.mod129 = trunc i64 %i.an to i1
  tail call void @llvm.assume(i1 %lcmp.mod129)
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv89.epil.init ; 3 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !50
  %i.av = getelementptr i8, ptr %i.at, i64 -4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !50 ; 2 uses
  %.not72.epil = icmp sgt i32 %i.au, %i.aw
  br i1 %.not72.epil, label %.lr.ph82.preheader, label %bb.l

bb.l:                                             ; preds = %.lr.ph78.epil.preheader
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.at, align 4, !tbaa !50
  br label %.lr.ph82.preheader

.lr.ph82.preheader:                               ; preds = %.lr.ph82.preheader.loopexit.unr-lcssa, %bb.l, %.lr.ph78.epil.preheader, %._crit_edge
  %i.ay = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %0)
  %i.az = zext nneg i32 %3 to i64
  %i.ba = urem i64 %i.ay, %i.az
  %i.bb = trunc nuw nsw i64 %i.ba to i32          ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %2, i32 1)
  %wide.trip.count100 = zext nneg i32 %smax to i64 ; 3 uses
  %min.iters.check = icmp slt i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph82.preheader127, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph82.preheader
  %n.vec = and i64 %wide.trip.count100, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bb, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert114 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat115 = shufflevector <4 x i32> %broadcast.splatinsert114, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.bc, align 4, !tbaa !50
  %i.bd = add nsw <4 x i32> %wide.load, %broadcast.splat
  %i.be = srem <4 x i32> %i.bd, %broadcast.splat115
  store <4 x i32> %i.be, ptr %i.bc, align 4, !tbaa !50
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !105

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count100
  br i1 %cmp.n, label %.loopexit, label %.lr.ph82.preheader127

.lr.ph82.preheader127:                            ; preds = %.lr.ph82.preheader, %middle.block
  %indvars.iv94.ph = phi i64 [ 0, %.lr.ph82.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph82

.lr.ph78:                                         ; preds = %bb.o, %.lr.ph78.preheader.new
  %indvars.iv89 = phi i64 [ 1, %.lr.ph78.preheader.new ], [ %indvars.iv.next90.1, %bb.o ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph78.preheader.new ], [ %niter.next.1, %bb.o ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv89 ; 3 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !50
  %i.bi = getelementptr i8, ptr %i.bg, i64 -4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !50 ; 2 uses
  %.not72 = icmp sgt i32 %i.bh, %i.bj
  br i1 %.not72, label %.lr.ph78.1, label %bb.m

bb.m:                                             ; preds = %.lr.ph78
  %i.bk = add nsw i32 %i.bj, 1
  store i32 %i.bk, ptr %i.bg, align 4, !tbaa !50
  br label %.lr.ph78.1

.lr.ph78.1:                                       ; preds = %.lr.ph78, %bb.m
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv89 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !50
  %i.bo = load i32, ptr %i.bl, align 4, !tbaa !50 ; 2 uses
  %.not72.1 = icmp sgt i32 %i.bn, %i.bo
  br i1 %.not72.1, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph78.1
  %i.bp = add nsw i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bm, align 4, !tbaa !50
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph78.1
  %indvars.iv.next90.1 = add nuw nsw i64 %indvars.iv89, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph82.preheader.loopexit.unr-lcssa, label %.lr.ph78, !llvm.loop !106

.lr.ph82:                                         ; preds = %.lr.ph82.preheader127, %.lr.ph82
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %.lr.ph82 ], [ %indvars.iv94.ph, %.lr.ph82.preheader127 ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv94 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !50
  %i.bs = add nsw i32 %i.br, %i.bb
  %i.bt = srem i32 %i.bs, %3
  store i32 %i.bt, ptr %i.bq, align 4, !tbaa !50
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %exitcond98.not = icmp eq i64 %indvars.iv.next95, %wide.trip.count100
  br i1 %exitcond98.not, label %.loopexit, label %.lr.ph82, !llvm.loop !107

.loopexit:                                        ; preds = %.lr.ph82, %.lr.ph86, %middle.block, %.preheader
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !37     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !39
  %i.j = ptrtoint ptr %i.i to i64
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
  store i32 0, ptr %i.b, align 4, !tbaa !50
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !50
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !38
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
  store i32 0, ptr %i.y, align 4, !tbaa !50
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !50
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
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !39
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #25
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36: ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !37
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !38
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !39
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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.b, ptr %i.c, align 8, !tbaa !36
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
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.c = load ptr, ptr %1, align 8, !tbaa !37     ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.i = load ptr, ptr %0, align 8, !tbaa !37     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
end_hunk_0
begin_hunk_1_@_ZNK5faiss9NNDescent6searchERNS_16DistanceComputerEiPlPfRNS_12VisitedTableE:bb.a
  br i1 %i.ee, label %_ZN5faiss9nndescent16insert_into_poolEPNS0_8NeighborEiS1_.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %indvars.iv.next152 = add nsw i64 %indvars.iv151, -1
  %i.ef = icmp sgt i64 %indvars.iv151, 1
  br i1 %i.ef, label %.lr.ph74.i, label %._crit_edge.i, !llvm.loop !5

._crit_edge.i:                                    ; preds = %bb.ac, %.lr.ph74.i, %.preheader.i, %.preheader68.i
  %.0.lcssa80.i = phi i32 [ %..0.i, %.preheader.i ], [ %i.bw, %.preheader68.i ], [ %..0.i, %.lr.ph74.i ], [ %..0.i, %bb.ac ] ; 3 uses
  %.2.lcssa.i = phi i64 [ 0, %.preheader.i ], [ 0, %.preheader68.i ], [ 0, %bb.ac ], [ %indvars.iv151, %.lr.ph74.i ]
  %i.eg = getelementptr inbounds [12 x i8], ptr %i.y, i64 %.2.lcssa.i
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !66
  %i.ei = icmp eq i32 %i.eh, %i.cu
  br i1 %i.ei, label %_ZN5faiss9nndescent16insert_into_poolEPNS0_8NeighborEiS1_.exit, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge.i
  %i.ej = zext nneg i32 %.0.lcssa80.i to i64
  %i.ek = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %i.ej ; 5 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !66
  %i.em = icmp eq i32 %i.el, %i.cu
  br i1 %i.em, label %_ZN5faiss9nndescent16insert_into_poolEPNS0_8NeighborEiS1_.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.en = getelementptr i8, ptr %i.ek, i64 12
  %i.eo = sub nsw i32 %.sroa.speculated, %.0.lcssa80.i
  %i.ep = sext i32 %i.eo to i64
  %i.eq = mul nsw i64 %i.ep, 12
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.en, ptr nonnull align 4 %i.ek, i64 %i.eq, i1 false)
  store i64 %.sroa.0.sroa.0.0.insert.insert, ptr %i.ek, align 4
  %.sroa.12.0..sroa_idx60.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store i8 1, ptr %.sroa.12.0..sroa_idx60.i, align 4, !tbaa !60
  br label %_ZN5faiss9nndescent16insert_into_poolEPNS0_8NeighborEiS1_.exit

_ZN5faiss9nndescent16insert_into_poolEPNS0_8NeighborEiS1_.exit: ; preds = %bb.ab, %._crit_edge.i, %bb.ad, %bb.aa, %bb.ae
  %.065.i = phi i32 [ 0, %bb.aa ], [ %i.u, %bb.ad ], [ %i.u, %._crit_edge.i ], [ %.0.lcssa80.i, %bb.ae ], [ %i.u, %bb.ab ]
  %spec.select = call i32 @llvm.smin.i32(i32 %.065.i, i32 %.069138)
  br label %bb.af

bb.af:                                            ; preds = %_ZN5faiss9nndescent16insert_into_poolEPNS0_8NeighborEiS1_.exit, %bb.x, %bb.t
  %.372 = phi i32 [ %.069138, %bb.t ], [ %spec.select, %_ZN5faiss9nndescent16insert_into_poolEPNS0_8NeighborEiS1_.exit ], [ %.069138, %bb.x ] ; 2 uses
  %i.er = add nuw nsw i32 %.068139, 1             ; 2 uses
  %i.es = load i32, ptr %i.bu, align 8, !tbaa !80 ; 2 uses
  %i.et = icmp slt i32 %i.er, %i.es
  br i1 %i.et, label %.lr.ph141, label %.loopexit, !llvm.loop !156

.loopexit:                                        ; preds = %bb.af, %bb.s, %bb.r
  %.473 = phi i32 [ %.sroa.speculated, %bb.r ], [ %.sroa.speculated, %bb.s ], [ %.372, %bb.af ] ; 2 uses
  %.not = icmp sgt i32 %.473, %.074142
  %i.eu = add nsw i32 %.074142, 1
  %.175 = select i1 %.not, i32 %i.eu, i32 %.473   ; 2 uses
  %i.ev = icmp slt i32 %.175, %.sroa.speculated
  br i1 %i.ev, label %bb.r, label %.preheader, !llvm.loop !157

._crit_edge146.loopexit.unr-lcssa:                ; preds = %.lr.ph145
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge146, label %.lr.ph145.epil.preheader

.lr.ph145.epil.preheader:                         ; preds = %._crit_edge146.loopexit.unr-lcssa, %.lr.ph145.preheader
  %indvars.iv154.epil.init = phi i64 [ 0, %.lr.ph145.preheader ], [ %indvars.iv.next155.1, %._crit_edge146.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod196 = trunc i32 %2 to i1
  call void @llvm.assume(i1 %lcmp.mod196)
  %i.ew = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %indvars.iv154.epil.init ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !66
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv154.epil.init
  store i64 %i.ey, ptr %i.ez, align 8, !tbaa !71
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !65
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv154.epil.init
  store float %i.fb, ptr %i.fc, align 4, !tbaa !58
  br label %._crit_edge146

._crit_edge146:                                   ; preds = %.lr.ph145.epil.preheader, %._crit_edge146.loopexit.unr-lcssa, %.preheader
  %i.fd = load ptr, ptr %5, align 8, !tbaa !68
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 48
  %i.ff = load ptr, ptr %i.fe, align 8
  invoke void %i.ff(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.ag unwind label %bb.ai

.lr.ph145:                                        ; preds = %.lr.ph145, %.lr.ph145.preheader.new
  %indvars.iv154 = phi i64 [ 0, %.lr.ph145.preheader.new ], [ %indvars.iv.next155.1, %.lr.ph145 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph145.preheader.new ], [ %niter.next.1, %.lr.ph145 ]
  %i.fg = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %indvars.iv154 ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !66
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv154
  store i64 %i.fi, ptr %i.fj, align 8, !tbaa !71
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !65
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv154
  store float %i.fl, ptr %i.fm, align 4, !tbaa !58
  %indvars.iv.next155 = or disjoint i64 %indvars.iv154, 1 ; 3 uses
  %i.fn = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %indvars.iv.next155 ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !66
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next155
  store i64 %i.fp, ptr %i.fq, align 8, !tbaa !71
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !65
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next155
  store float %i.fs, ptr %i.ft, align 4, !tbaa !58
  %indvars.iv.next155.1 = add nuw nsw i64 %indvars.iv154, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge146.loopexit.unr-lcssa, label %.lr.ph145, !llvm.loop !158

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
  store i8 0, ptr %0, align 8, !tbaa !78
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.a, align 4, !tbaa !87
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !37   ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.a
  store ptr %i.e, ptr %i.c, align 8, !tbaa !38
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
declare i32 @llvm.smax.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #24

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

!llvm.module.flags = !{!13, !14, !15}
!llvm.ident = !{!16}
!llvm.errno.tbaa = !{!21}

!0 = distinct !{!0, !51}
!1 = distinct !{!1, !51}
!2 = distinct !{!2, !51}
!3 = distinct !{!3, !51}
!4 = distinct !{!4, !51}
!5 = distinct !{!5, !51}
!6 = distinct !{!6, !51}
!7 = distinct !{!7, !51}
!8 = distinct !{!8, !51}
!9 = distinct !{!9, !51}
!10 = distinct !{!10, !51}
!11 = distinct !{!11, !51}
!12 = distinct !{!12, !51}
!13 = !{i32 7, !"openmp", i32 51}
!14 = !{i32 8, !"PIC Level", i32 2}
!15 = !{i32 7, !"uwtable", i32 2}
!16 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!17 = !{!"Simple C++ TBAA"}
!18 = !{!"omnipotent char", !17, i64 0}
!19 = !{!"int", !18, i64 0}
!20 = !{!"__libc_errno", !19, i64 0}
!21 = !{!20, !19, i64 0}
!22 = !{!"_ZTSSt12__mutex_base", !18, i64 0}
!23 = !{!"_ZTSSt5mutex", !22, i64 0}
!24 = !{!"any pointer", !18, i64 0}
!25 = !{!"p1 _ZTSN5faiss9nndescent8NeighborE", !24, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIN5faiss9nndescent8NeighborESaIS2_EE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!27 = !{!"_ZTSNSt12_Vector_baseIN5faiss9nndescent8NeighborESaIS2_EE12_Vector_implE", !26, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseIN5faiss9nndescent8NeighborESaIS2_EE", !27, i64 0}
!29 = !{!"_ZTSSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE", !28, i64 0}
!30 = !{!"p1 int", !24, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !30, i64 0, !30, i64 8, !30, i64 16}
!32 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !31, i64 0}
!33 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !32, i64 0}
!34 = !{!"_ZTSSt6vectorIiSaIiEE", !33, i64 0}
!35 = !{!"_ZTSN5faiss9nndescent5NhoodE", !23, i64 0, !29, i64 40, !19, i64 64, !34, i64 72, !34, i64 96, !34, i64 120, !34, i64 144}
!36 = !{!35, !19, i64 64}
!37 = !{!31, !30, i64 0}
!38 = !{!31, !30, i64 8}
!39 = !{!31, !30, i64 16}
!40 = !{!26, !25, i64 0}
!41 = !{!26, !25, i64 16}
!42 = !{!"p1 omnipotent char", !24, i64 0}
!43 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !42, i64 0}
!44 = !{!43, !42, i64 0}
!45 = !{!"long", !18, i64 0}
!46 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !43, i64 0, !45, i64 8, !18, i64 16}
!47 = !{!46, !45, i64 8}
!48 = !{!18, !18, i64 0}
!49 = !{!46, !42, i64 0}
!50 = !{!19, !19, i64 0}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"llvm.loop.isvectorized", i32 1}
!53 = !{!"llvm.loop.unroll.runtime.disable"}
!54 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!55 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!56 = !{!26, !25, i64 8}
!57 = !{!"float", !18, i64 0}
!58 = !{!57, !57, i64 0}
!59 = !{!"bool", !18, i64 0}
!60 = !{!59, !59, i64 0}
!61 = !{i64 0, i64 4, !50, i64 4, i64 4, !58, i64 8, i64 1, !60}
!62 = !{!25, !25, i64 0}
!63 = !{!30, !30, i64 0}
!64 = !{!"_ZTSN5faiss9nndescent8NeighborE", !19, i64 0, !57, i64 4, !59, i64 8}
!65 = !{!64, !57, i64 4}
!66 = !{!64, !19, i64 0}
!67 = !{!"vtable pointer", !17, i64 0}
!68 = !{!67, !67, i64 0}
!69 = !{!"_ZTSSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE", !18, i64 0, !45, i64 4992}
!70 = !{!69, !45, i64 4992}
!71 = !{!45, !45, i64 0}
!72 = !{!"p1 _ZTSN5faiss9nndescent5NhoodE", !24, i64 0}
!73 = !{!"_ZTSNSt12_Vector_baseIN5faiss9nndescent5NhoodESaIS2_EE17_Vector_impl_dataE", !72, i64 0, !72, i64 8, !72, i64 16}
!74 = !{!"_ZTSNSt12_Vector_baseIN5faiss9nndescent5NhoodESaIS2_EE12_Vector_implE", !73, i64 0}
!75 = !{!"_ZTSSt12_Vector_baseIN5faiss9nndescent5NhoodESaIS2_EE", !74, i64 0}
!76 = !{!"_ZTSSt6vectorIN5faiss9nndescent5NhoodESaIS2_EE", !75, i64 0}
!77 = !{!"_ZTSN5faiss9NNDescentE", !59, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !19, i64 16, !19, i64 20, !19, i64 24, !19, i64 28, !19, i64 32, !19, i64 36, !76, i64 40, !34, i64 64}
!78 = !{!77, !59, i64 0}
!79 = !{!77, !19, i64 20}
!80 = !{!77, !19, i64 24}
!81 = !{!77, !19, i64 28}
!82 = !{!77, !19, i64 32}
!83 = !{!73, !72, i64 0}
!84 = !{!73, !72, i64 8}
!85 = !{!73, !72, i64 16}
!86 = !{!77, !19, i64 16}
!87 = !{!77, !19, i64 36}
!88 = !{i64 2, i64 -1, i64 -1, i1 true}
!89 = !{!88}
!90 = !{!77, !19, i64 4}
!91 = !{!64, !59, i64 8}
!92 = !{i8 0, i8 2}
!93 = !{}
!94 = !{!77, !19, i64 8}
!95 = !{!"p1 _ZTSSt6vectorIiSaIiEE", !24, i64 0}
!96 = !{!"_ZTSNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE17_Vector_impl_dataE", !95, i64 0, !95, i64 8, !95, i64 16}
!97 = !{!96, !95, i64 0}
!98 = !{!96, !95, i64 16}
!99 = !{!96, !95, i64 8}
!100 = !{!77, !19, i64 12}
!101 = distinct !{!101, !51, !52, !53}
!102 = distinct !{!102, !51, !53, !52}
!103 = distinct !{!103, !51}
!104 = distinct !{!104, !51}
!105 = distinct !{!105, !51, !52, !53}
!106 = distinct !{!106, !51}
!107 = distinct !{!107, !51, !53, !52}
!108 = distinct !{!108, !51}
!109 = distinct !{!109, !51, !52, !53}
!110 = distinct !{!110, !51, !52, !53}
!111 = distinct !{!111, !51}
!112 = distinct !{!112, !51}
!113 = distinct !{!113, !51}
!114 = distinct !{!114, !51}
!115 = distinct !{!115, !51}
!116 = distinct !{!116, !51}
!117 = distinct !{!117, !51}
!118 = distinct !{!118, !51}
!119 = distinct !{!119, !51}
!120 = distinct !{!120, !51}
!121 = distinct !{}
!122 = distinct !{null}
!123 = distinct !{!123, !124}
!124 = !{!"llvm.loop.parallel_accesses", !121}
!125 = distinct !{!125, !51}
!126 = distinct !{!126, !51, !52, !53}
!127 = distinct !{!127, !51, !52, !53}
!128 = distinct !{!128, !51, !52, !53}
!129 = distinct !{!129, !51, !52, !53}
!130 = distinct !{!130, !51}
!131 = distinct !{!131, !51}
!132 = distinct !{!132, !51}
!133 = distinct !{!133, !51}
!134 = distinct !{!134, !51}
!135 = distinct !{!135, !51}
!136 = distinct !{!136, !51}
!137 = distinct !{!137, !51}
!138 = distinct !{!138, !51}
!139 = distinct !{!139, !51}
!140 = distinct !{!140, !51}
!141 = distinct !{!141, !51}
!142 = distinct !{!142, !51}
!143 = distinct !{!143, !51}
!144 = distinct !{!144, !"_ZSt19__relocate_object_aIN5faiss9nndescent5NhoodES2_SaIS2_EEvPT_PT0_RT1_"}
!145 = distinct !{!145, !144, !"_ZSt19__relocate_object_aIN5faiss9nndescent5NhoodES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!146 = distinct !{!146, !144, !"_ZSt19__relocate_object_aIN5faiss9nndescent5NhoodES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!147 = distinct !{!147, !51}
!148 = !{!145}
!149 = !{!146}
!150 = distinct !{!150, !51}
!151 = distinct !{!151, !51}
!152 = !{!"p1 _ZTS8_IO_FILE", !24, i64 0}
!153 = !{!152, !152, i64 0}
!154 = distinct !{!154, !51}
!155 = distinct !{!155, !51}
!156 = distinct !{!156, !51}
!157 = distinct !{!157, !51}
!158 = distinct !{!158, !51}
end_hunk_1
