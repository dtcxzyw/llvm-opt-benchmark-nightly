Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_lazy-a1f6b829fbfe5eb7.polars_lazy.597454fe6890bcc2-cgu.11?download=true
inline.NumInlined: 831
inline.NumDeleted: 344
begin_hunk_0_@_RINvNtNtCs7Ga9Brpi21q_11polars_lazy3dsl9functions11concat_implRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtB6_5frame9LazyFrameEEB6_:bb.a
  store ptr %i.ak, ptr %.sroa.425.0..sroa_idx.i, align 16, !dbg !9900, !noalias !9756
  %.sroa.526.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 376, !dbg !9900
  store i32 %i.af, ptr %.sroa.526.0..sroa_idx.i, align 8, !dbg !9900, !noalias !9756
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.024.i), !dbg !9901
  %i.am = icmp eq i64 %i.aa, 0, !dbg !9883
  br i1 %i.am, label %_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBO_.exit, label %.lr.ph.i, !dbg !9883

bb.f:                                             ; preds = %bb.g
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !9902, !noalias !9756
  unreachable, !dbg !9902

bb.g:                                             ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.038.i, ptr %i.x, align 8, !dbg !9903, !noalias !9756
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameEEB1h_(ptr noalias noundef align 8 dereferenceable(24) %i.d) #18
          to label %common.resume unwind label %bb.f, !dbg !9904, !noalias !9756

common.resume:                                    ; preds = %bb.aj, %bb.i, %.body, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.at, %bb.i ], [ %lpad.loopexit.i, %bb.g ], [ %.pn37.pn, %.body ], [ %i.cr, %bb.aj ]
  resume { ptr, i32 } %common.resume.op, !dbg !9905

_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBO_.exit: ; preds = %.lr.ph.i, %bb.e, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7Ga9Brpi21q_11polars_lazy.exit.i
  store i64 %.val1.i, ptr %i.x, align 8, !dbg !9906, !noalias !9756
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !9907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !9904, !noalias !9756
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !9908
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !9909 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !dbg !9909, !nonnull !278, !noundef !278 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !9910 ; 3 uses
  %i.ar = load i64, ptr %i.aq, align 8, !dbg !9910, !noundef !278
  %.not = icmp eq i64 %i.ar, 0, !dbg !9911
  br i1 %.not, label %bb.h, label %bb.k, !dbg !9911

bb.h:                                             ; preds = %_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBO_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9912
  store i64 6, ptr %i.as, align 8, !dbg !9912
  %.sroa.233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9912
  store ptr inttoptr (i64 -9223372036854775808 to ptr), ptr %.sroa.233.0..sroa_idx, align 16, !dbg !9912
  %.sroa.334.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !9912
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.334.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @1, i64 16), i64 56, i1 false), !dbg !9912
  store i64 -9223372036854775778, ptr %0, align 16, !dbg !9912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !9913
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBJ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameEEB1h_.exit50 unwind label %bb.i, !dbg !9914

bb.i:                                             ; preds = %bb.h
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume unwind label %bb.j, !dbg !9915

bb.j:                                             ; preds = %bb.i
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !9914
  unreachable, !dbg !9914

bb.k:                                             ; preds = %_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBO_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.053), !dbg !9916
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9917, !noalias !9808
  invoke void @_RNvXs_NtNtCsfcROwRM8ZtH_11polars_plan3dsl4planNtB4_7DslPlanNtNtCscgRAwXFJnXP_4core7default7Default7default(ptr noalias noundef nonnull sret([368 x i8]) align 16 captures(none) dereferenceable(368) %i.a)
          to label %.noexc unwind label %bb.o, !dbg !9917

.noexc:                                           ; preds = %bb.k
  %i.av = invoke noundef i32 @_RNvXs_NtNtCsfcROwRM8ZtH_11polars_plan5frame9opt_stateNtB4_8OptFlagsNtNtCscgRAwXFJnXP_4core7default7Default7default()
          to label %bb.m unwind label %bb.l, !dbg !9918, !noalias !9808

bb.l:                                             ; preds = %bb.m, %.noexc
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanECs7Ga9Brpi21q_11polars_lazy(ptr noalias noundef align 16 dereferenceable(368) %i.a) #18
          to label %.body unwind label %bb.n, !dbg !9919, !noalias !9808

bb.m:                                             ; preds = %.noexc
  %i.ax = invoke noundef nonnull ptr @_RNvXsX_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCs7Ga9Brpi21q_11polars_lazy5frame13cached_arenas11CachedArenaEEENtNtB1A_7default7Default7defaultB2d_()
          to label %bb.p unwind label %bb.l, !dbg !9920, !noalias !9808

bb.n:                                             ; preds = %bb.l
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !9921, !noalias !9808
  unreachable, !dbg !9921

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameEEB1h_.exit50: ; preds = %bb.h, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtCs7Ga9Brpi21q_11polars_lazy5frame13cached_arenas11CachedArenaEEEEB2v_.exit45
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l), !dbg !9922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !9810
  ret void, !dbg !9923

.body:                                            ; preds = %bb.an, %bb.ao, %bb.o, %bb.l
  %.pn37.pn = phi { ptr, i32 } [ %i.aw, %bb.l ], [ %i.az, %bb.o ], [ %.pn37, %bb.ao ], [ %.pn37, %bb.an ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameEEB1h_(ptr noalias noundef align 8 dereferenceable(24) %i.l) #18
          to label %common.resume unwind label %bb.am, !dbg !9810

bb.o:                                             ; preds = %bb.ae, %bb.k
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %.sroa.053, ptr noundef nonnull align 16 dereferenceable(368) %i.a, i64 368, i1 false), !dbg !9921
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9919, !noalias !9808
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(384) %i.k, ptr noundef nonnull align 16 dereferenceable(384) %i.ap, i64 384, i1 false), !dbg !9924
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.ap, ptr noundef nonnull align 16 dereferenceable(368) %.sroa.053, i64 368, i1 false), !dbg !9925
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 368, !dbg !9925
  store ptr %i.ax, ptr %.sroa.4.0..sroa_idx, align 16, !dbg !9925
  %.sroa.5.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %i.ap, i64 376, !dbg !9925
  store i32 %i.av, ptr %.sroa.5.0..sroa_idx54, align 8, !dbg !9925
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.053), !dbg !9926
  %i.ba = getelementptr inbounds nuw i8, ptr %i.k, i64 376, !dbg !9927
  %i.bb = load i32, ptr %i.ba, align 8, !dbg !9927, !noundef !278
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !9928
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 368, !dbg !9929 ; 6 uses
  %i.bd = load ptr, ptr %i.bc, align 16, !dbg !9929, !nonnull !278, !noundef !278
  %i.be = atomicrmw add ptr %i.bd, i64 1 monotonic, align 8, !dbg !9930
  %i.bf = icmp slt i64 %i.be, 0, !dbg !9931
  br i1 %i.bf, label %bb.r, label %bb.q, !dbg !9931

bb.q:                                             ; preds = %bb.p
  %i.bg = load ptr, ptr %i.bc, align 16, !dbg !9932, !nonnull !278, !noundef !278 ; 3 uses
  store ptr %i.bg, ptr %i.j, align 8, !dbg !9933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !9934
  %i.bh = load i64, ptr %i.aq, align 8, !dbg !9935, !noundef !278 ; 3 uses
  %i.bi = icmp ult i64 %i.bh, 24019198012642646, !dbg !9936
  call void @llvm.assume(i1 %i.bi), !dbg !9937
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !9938
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7Ga9Brpi21q_11polars_lazy(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %i.bh, i1 noundef zeroext false, i64 noundef 16, i64 noundef 368)
          to label %bb.v unwind label %bb.u, !dbg !9938

bb.r:                                             ; preds = %bb.p
  call void @llvm.trap(), !dbg !9939
  unreachable, !dbg !9939

bb.s:                                             ; preds = %.body42, %bb.u
  %.sroa.025.0 = phi i1 [ true, %bb.u ], [ false, %.body42 ], !dbg !9940
  %.pn37 = phi { ptr, i32 } [ %i.bl, %bb.u ], [ %eh.lpad-body43, %.body42 ] ; 2 uses
  %i.bj = atomicrmw sub ptr %i.bg, i64 1 release, align 8, !dbg !9941, !noalias !9824
  %i.bk = icmp eq i64 %i.bj, 1, !dbg !9942
  br i1 %i.bk, label %bb.t, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtCs7Ga9Brpi21q_11polars_lazy5frame13cached_arenas11CachedArenaEEEEB2v_.exit, !dbg !9942

bb.t:                                             ; preds = %bb.s
  fence acquire, !dbg !9943
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCs7Ga9Brpi21q_11polars_lazy5frame13cached_arenas11CachedArenaEEE9drop_slowB2d_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j) #19
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtCs7Ga9Brpi21q_11polars_lazy5frame13cached_arenas11CachedArenaEEEEB2v_.exit unwind label %bb.am, !dbg !9944

bb.u:                                             ; preds = %bb.w, %bb.q
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.v:                                             ; preds = %bb.q
  %i.bm = load i64, ptr %i.f, align 8, !dbg !9938, !range !418, !noundef !278
  %i.bn = trunc nuw i64 %i.bm to i1, !dbg !9945
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !9946
  %i.bp = load i64, ptr %i.bo, align 8, !dbg !9946, !range !348, !noundef !278 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !9946 ; 2 uses
  br i1 %i.bn, label %bb.w, label %bb.x, !dbg !9945, !prof !382

bb.w:                                             ; preds = %bb.v
  %i.br = load i64, ptr %i.bq, align 8, !dbg !9947
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.bp, i64 %i.br) #20
          to label %bb.al unwind label %bb.u, !dbg !9948

bb.x:                                             ; preds = %bb.v
  %i.bs = load ptr, ptr %i.bq, align 8, !dbg !9949, !nonnull !278, !noundef !278 ; 2 uses
  %i.bt = icmp samesign ule i64 %i.bh, %i.bp, !dbg !9950
  call void @llvm.assume(i1 %i.bt), !dbg !9951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !9952
  store i64 %i.bp, ptr %i.i, align 8, !dbg !9953
  %i.bu = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !9953 ; 3 uses
  store ptr %i.bs, ptr %i.bu, align 8, !dbg !9953
  %i.bv = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !9953 ; 4 uses
  store i64 0, ptr %i.bv, align 8, !dbg !9953
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !9954
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.h, ptr noundef nonnull align 16 dereferenceable(368) %i.k, i64 368, i1 false), !dbg !9954
  %i.bw = icmp eq i64 %i.bp, 0, !dbg !9955
  br i1 %i.bw, label %bb.y, label %bb.ab, !dbg !9955

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE8grow_oneBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %._crit_edge61 unwind label %bb.z, !dbg !9956, !noalias !9828

._crit_edge61:                                    ; preds = %bb.y
  %.pre = load ptr, ptr %i.bu, align 8, !dbg !9957, !alias.scope !9829
  br label %bb.ab, !dbg !9956

bb.z:                                             ; preds = %bb.y
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanECs7Ga9Brpi21q_11polars_lazy(ptr noalias noundef nonnull align 16 dereferenceable(368) %i.h) #18
          to label %.body42 unwind label %bb.aa, !dbg !9958

bb.aa:                                            ; preds = %bb.z
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !9959
  unreachable, !dbg !9959

.loopexit.split-lp:                               ; preds = %.lr.ph, %bb.ad
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body42

.body42:                                          ; preds = %.loopexit.split-lp, %bb.ah, %bb.z
  %eh.lpad-body43 = phi { ptr, i32 } [ %i.bx, %bb.z ], [ %i.cl, %bb.ah ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEECs7Ga9Brpi21q_11polars_lazy(ptr noalias noundef align 8 dereferenceable(24) %i.i) #18
          to label %bb.s unwind label %bb.am, !dbg !9960

bb.ab:                                            ; preds = %._crit_edge61, %bb.x
  %i.bz = phi ptr [ %.pre, %._crit_edge61 ], [ %i.bs, %bb.x ], !dbg !9957
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.bz, ptr noundef nonnull align 16 dereferenceable(368) %i.h, i64 368, i1 false), !dbg !9961
  store i64 1, ptr %i.bv, align 8, !dbg !9962, !alias.scope !9829
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !9963
  %i.ca = load i64, ptr %i.aq, align 8, !dbg !9964, !noundef !278 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 0, !dbg !9965
  br i1 %i.cb, label %bb.ad, label %bb.ac, !dbg !9965, !prof !382

bb.ac:                                            ; preds = %bb.ab
  %i.cc = load ptr, ptr %i.ao, align 8, !dbg !9966, !nonnull !278, !noundef !278 ; 2 uses
  %.idx = mul i64 %i.ca, 384, !dbg !9967          ; 2 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 %.idx, !dbg !9967
  %i.ce = icmp eq i64 %.idx, 384, !dbg !9968
  br i1 %i.ce, label %._crit_edge, label %.lr.ph.preheader, !dbg !9855

.lr.ph.preheader:                                 ; preds = %bb.ac
  %.sroa.014.057 = getelementptr inbounds nuw i8, ptr %i.cc, i64 384, !dbg !9969
  br label %.lr.ph, !dbg !9970

bb.ad:                                            ; preds = %bb.ab
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #20
          to label %bb.al unwind label %.loopexit.split-lp, !dbg !9971

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE8push_mutCs7Ga9Brpi21q_11polars_lazy.exit48
  %.sroa.014.058 = phi ptr [ %.sroa.014.0, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE8push_mutCs7Ga9Brpi21q_11polars_lazy.exit48 ], [ %.sroa.014.057, %.lr.ph.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !9970
  invoke void @_RNvXs_NtNtCsfcROwRM8ZtH_11polars_plan3dsl4planNtB4_7DslPlanNtNtCscgRAwXFJnXP_4core7default7Default7default(ptr noalias noundef nonnull sret([368 x i8]) align 16 captures(none) dereferenceable(368) %i.e)
          to label %bb.af unwind label %.loopexit.split-lp, !dbg !9970

._crit_edge:                                      ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE8push_mutCs7Ga9Brpi21q_11polars_lazy.exit48, %bb.ac
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9972
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.422.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !9973
  store i64 -9223372036854775785, ptr %0, align 16, !dbg !9972
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !9972
  store i56 %2, ptr %.sroa.5.0..sroa_idx, align 16, !dbg !9972
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368, !dbg !9972
  store ptr %i.bg, ptr %.sroa.7.0..sroa_idx, align 16, !dbg !9972
  %.sroa.824.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 376, !dbg !9972
  store i32 %i.bb, ptr %.sroa.824.0..sroa_idx, align 8, !dbg !9972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !9960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !9974
  call void @llvm.experimental.noalias.scope.decl(metadata !9858), !dbg !9913
  call void @llvm.experimental.noalias.scope.decl(metadata !9859), !dbg !9975
  %i.cf = load ptr, ptr %i.bc, align 16, !dbg !9976, !alias.scope !9860, !nonnull !278, !noundef !278
  %i.cg = atomicrmw sub ptr %i.cf, i64 1 release, align 8, !dbg !9977, !noalias !9860
  %i.ch = icmp eq i64 %i.cg, 1, !dbg !9978
  br i1 %i.ch, label %bb.ae, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtCs7Ga9Brpi21q_11polars_lazy5frame13cached_arenas11CachedArenaEEEEB2v_.exit45, !dbg !9978

bb.ae:                                            ; preds = %._crit_edge
  fence acquire, !dbg !9979
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCs7Ga9Brpi21q_11polars_lazy5frame13cached_arenas11CachedArenaEEE9drop_slowB2d_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bc) #19
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtCs7Ga9Brpi21q_11polars_lazy5frame13cached_arenas11CachedArenaEEEEB2v_.exit45 unwind label %bb.o, !dbg !9980

bb.af:                                            ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.g, ptr noundef nonnull align 16 dereferenceable(368) %.sroa.014.058, i64 368, i1 false), !dbg !9981
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %.sroa.014.058, ptr noundef nonnull align 16 dereferenceable(368) %i.e, i64 368, i1 false), !dbg !9982
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !9983
  %i.ci = load i64, ptr %i.bv, align 8, !dbg !9984, !alias.scope !9863, !noundef !278 ; 3 uses
  %i.cj = load i64, ptr %i.i, align 8, !dbg !9985, !range !403, !alias.scope !9863, !noundef !278
  %i.ck = icmp eq i64 %i.ci, %i.cj, !dbg !9986
  br i1 %i.ck, label %bb.ag, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE8push_mutCs7Ga9Brpi21q_11polars_lazy.exit48, !dbg !9986

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE8grow_oneBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE8push_mutCs7Ga9Brpi21q_11polars_lazy.exit48 unwind label %bb.ah, !dbg !9987, !noalias !9865

bb.ah:                                            ; preds = %bb.ag
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanECs7Ga9Brpi21q_11polars_lazy(ptr noalias noundef nonnull align 16 dereferenceable(368) %i.g) #18
          to label %.body42 unwind label %bb.ai, !dbg !9988

bb.ai:                                            ; preds = %bb.ah
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !9989
  unreachable, !dbg !9989

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE8push_mutCs7Ga9Brpi21q_11polars_lazy.exit48: ; preds = %bb.af, %bb.ag
  %i.cn = load ptr, ptr %i.bu, align 8, !dbg !9990, !alias.scope !9863, !nonnull !278, !noundef !278
  %i.co = getelementptr inbounds nuw [368 x i8], ptr %i.cn, i64 %i.ci, !dbg !9991
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.co, ptr noundef nonnull align 16 dereferenceable(368) %i.g, i64 368, i1 false), !dbg !9992
  %i.cp = add i64 %i.ci, 1, !dbg !9993
  store i64 %i.cp, ptr %i.bv, align 8, !dbg !9993, !alias.scope !9863
  %.sroa.014.0 = getelementptr inbounds nuw i8, ptr %.sroa.014.058, i64 384, !dbg !9969 ; 2 uses
  %i.cq = icmp eq ptr %.sroa.014.0, %i.cd, !dbg !9968
  br i1 %i.cq, label %._crit_edge, label %.lr.ph, !dbg !9855

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtCs7Ga9Brpi21q_11polars_lazy5frame13cached_arenas11CachedArenaEEEEB2v_.exit45: ; preds = %._crit_edge, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !9913
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBJ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameEEB1h_.exit50 unwind label %bb.aj, !dbg !9994

bb.aj:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtCs7Ga9Brpi21q_11polars_lazy5frame13cached_arenas11CachedArenaEEEEB2v_.exit45
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume unwind label %bb.ak, !dbg !9995

bb.ak:                                            ; preds = %bb.aj
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !9994
  unreachable, !dbg !9994

bb.al:                                            ; preds = %bb.ad, %bb.w
  unreachable

bb.am:                                            ; preds = %bb.ao, %bb.t, %bb.ap, %.body42, %.body
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !9996
  unreachable, !dbg !9996

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtCs7Ga9Brpi21q_11polars_lazy5frame13cached_arenas11CachedArenaEEEEB2v_.exit: ; preds = %bb.s, %bb.t
  br i1 %.sroa.025.0, label %bb.ap, label %bb.an, !dbg !9913

bb.an:                                            ; preds = %bb.ap, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtCs7Ga9Brpi21q_11polars_lazy5frame13cached_arenas11CachedArenaEEEEB2v_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !9866), !dbg !9913
  call void @llvm.experimental.noalias.scope.decl(metadata !9867), !dbg !9997
  %i.cu = load ptr, ptr %i.bc, align 16, !dbg !9998, !alias.scope !9868, !nonnull !278, !noundef !278
  %i.cv = atomicrmw sub ptr %i.cu, i64 1 release, align 8, !dbg !9999, !noalias !9868
  %i.cw = icmp eq i64 %i.cv, 1, !dbg !10000
  br i1 %i.cw, label %bb.ao, label %.body, !dbg !10000

bb.ao:                                            ; preds = %bb.an
  fence acquire, !dbg !10001
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCs7Ga9Brpi21q_11polars_lazy5frame13cached_arenas11CachedArenaEEE9drop_slowB2d_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bc) #19
          to label %.body unwind label %bb.am, !dbg !10002

bb.ap:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtCs7Ga9Brpi21q_11polars_lazy5frame13cached_arenas11CachedArenaEEEEB2v_.exit
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanECs7Ga9Brpi21q_11polars_lazy(ptr noalias noundef align 16 dereferenceable(368) %i.k) #18
          to label %bb.an unwind label %bb.am, !dbg !9913
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7counterINtB2_6SenderINtNtB4_4list7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEE7acquireCs7Ga9Brpi21q_11polars_lazy(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 !dbg !10003 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !10015, !noundef !278 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 384, !dbg !10016
  %i.c = atomicrmw add ptr %i.b, i64 1 monotonic, align 8, !dbg !10017
  %i.d = icmp slt i64 %i.c, 0, !dbg !10018
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !10018, !prof !382

bb.b:                                             ; preds = %bb.a
  ret ptr %i.a, !dbg !10019

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsh8eZTKRCwoO_3std7process5abort() #20, !dbg !10020
  unreachable, !dbg !10020
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7counterINtB2_6SenderINtNtB4_4zero7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEE7acquireCs7Ga9Brpi21q_11polars_lazy(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 !dbg !10021 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !10033, !noundef !278 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 112, !dbg !10034
  %i.c = atomicrmw add ptr %i.b, i64 1 monotonic, align 8, !dbg !10035
  %i.d = icmp slt i64 %i.c, 0, !dbg !10036
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !10036, !prof !382

bb.b:                                             ; preds = %bb.a
  ret ptr %i.a, !dbg !10037

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsh8eZTKRCwoO_3std7process5abort() #20, !dbg !10038
  unreachable, !dbg !10038
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7counterINtB2_6SenderINtNtB4_5array7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEE7acquireCs7Ga9Brpi21q_11polars_lazy(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 !dbg !10039 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !10051, !noundef !278 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 512, !dbg !10052
  %i.c = atomicrmw add ptr %i.b, i64 1 monotonic, align 8, !dbg !10053
  %i.d = icmp slt i64 %i.c, 0, !dbg !10054
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !10054, !prof !382

bb.b:                                             ; preds = %bb.a
  ret ptr %i.a, !dbg !10055

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsh8eZTKRCwoO_3std7process5abort() #20, !dbg !10056
  unreachable, !dbg !10056
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtCs2mZqlW55729_12polars_utils5arenaINtB5_5ArenaNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRE13with_capacityCs7Ga9Brpi21q_11polars_lazy(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 !dbg !10057 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10080
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7Ga9Brpi21q_11polars_lazy(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %1, i1 noundef zeroext false, i64 noundef 16, i64 noundef 368), !dbg !10080
  %i.b = load i64, ptr %i.a, align 8, !dbg !10080, !range !418, !noundef !278
  %i.c = trunc nuw i64 %i.b to i1, !dbg !10081
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !10082
  %i.e = load i64, ptr %i.d, align 8, !dbg !10082, !range !348, !noundef !278 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !10082 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !10081, !prof !382

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8, !dbg !10083
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #20, !dbg !10084
  unreachable, !dbg !10084

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !dbg !10085, !nonnull !278, !noundef !278
  %i.i = icmp ule i64 %1, %i.e, !dbg !10086
  tail call void @llvm.assume(i1 %i.i), !dbg !10087
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10088
  %i.j = atomicrmw add ptr @_RNvNtCs2mZqlW55729_12polars_utils5arena13ARENA_VERSION, i32 1 monotonic, align 4, !dbg !10089
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !10090
  store i32 %i.j, ptr %i.k, align 8, !dbg !10090
  store i64 %i.e, ptr %0, align 8, !dbg !10090
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10090
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !10090
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10090
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !10090
  ret void, !dbg !10091
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtCs2mZqlW55729_12polars_utils5arenaINtB5_5ArenaNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprE13with_capacityCs7Ga9Brpi21q_11polars_lazy(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 !dbg !10092 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10115
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7Ga9Brpi21q_11polars_lazy(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %1, i1 noundef zeroext false, i64 noundef 16, i64 noundef 144), !dbg !10115
  %i.b = load i64, ptr %i.a, align 8, !dbg !10115, !range !418, !noundef !278
  %i.c = trunc nuw i64 %i.b to i1, !dbg !10116
end_hunk_0
