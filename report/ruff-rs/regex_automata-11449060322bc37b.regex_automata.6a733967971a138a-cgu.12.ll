inline.NumInlined: 624
inline.NumDeleted: 314
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs3_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_3Hir10repetition:bb.a
    i32 1, label %bb.n
  ]

bb.b:                                             ; preds = %.thread, %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs79ICTHwG85D_12regex_syntax3hir3HirEECs98D8VPWzHuM_14regex_automata(ptr noalias noundef readonly align 8 dereferenceable(8) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs79ICTHwG85D_12regex_syntax3hir10RepetitionECs98D8VPWzHuM_14regex_automata.exit unwind label %bb.m, !inline_history !259

bb.c:                                             ; preds = %bb.a
  %i.o = icmp ne i32 %i.l, 0
  %.sroa.0.0.i = zext i1 %i.o to i32              ; 2 uses
  store i32 %.sroa.0.0.i, ptr %i.k, align 8
  %i.p = load i32, ptr %1, align 8, !range !633, !noundef !3
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.r = trunc nuw i32 %i.p to i1
  %i.s = load i32, ptr %i.q, align 4
  %i.t = icmp ne i32 %i.s, 0
  %not. = xor i1 %i.r, true
  %narrow = select i1 %not., i1 true, i1 %i.t
  %.sroa.3.0 = zext i1 %narrow to i32
  store i32 1, ptr %1, align 8
  store i32 %.sroa.3.0, ptr %i.q, align 4
  br label %._crit_edge

bb.d:                                             ; preds = %._crit_edge
  %i.u = load i32, ptr %1, align 8, !range !633, !noundef !3
  %i.v = trunc nuw i32 %i.u to i1
  br i1 %i.v, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.x = load i32, ptr %i.w, align 4, !noundef !3
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.z = invoke noundef nonnull align 8 ptr @_RNvMso_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_10Properties5empty()
          to label %bb.g unwind label %bb.b

bb.g:                                             ; preds = %bb.f
  store i64 2, ptr %0, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.z, ptr %i.aa, align 8
  invoke void @_RNvXsm_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_3HirNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %bb.i unwind label %bb.h, !inline_history !184

bb.h:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs79ICTHwG85D_12regex_syntax3hir7HirKindECs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b) #29
          to label %.body unwind label %bb.k, !inline_history !184

bb.i:                                             ; preds = %bb.g
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs79ICTHwG85D_12regex_syntax3hir7HirKindECs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs79ICTHwG85D_12regex_syntax3hir3HirECs98D8VPWzHuM_14regex_automata.exit unwind label %bb.j, !inline_history !184

bb.j:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !inline_history !184
  unreachable

.body:                                            ; preds = %bb.j, %bb.h
  %.pn.i = phi { ptr, i32 } [ %i.ac, %bb.j ], [ %i.ab, %bb.h ]
  %.val2.i = load ptr, ptr %i.c, align 8, !alias.scope !634, !nonnull !3, !noundef !3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef 80, i64 noundef 8) #30, !inline_history !184
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 48, i64 noundef 8) #30
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs79ICTHwG85D_12regex_syntax3hir10RepetitionECs98D8VPWzHuM_14regex_automata.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs79ICTHwG85D_12regex_syntax3hir3HirECs98D8VPWzHuM_14regex_automata.exit: ; preds = %bb.i
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !634, !nonnull !3, !noundef !3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 80, i64 noundef 8) #30, !inline_history !184
  br label %bb.l

bb.l:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs79ICTHwG85D_12regex_syntax3hir3HirECs98D8VPWzHuM_14regex_automata.exit, %bb.p
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 48, i64 noundef 8) #30
  br label %bb.q

bb.m:                                             ; preds = %bb.b
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs79ICTHwG85D_12regex_syntax3hir10RepetitionECs98D8VPWzHuM_14regex_automata.exit: ; preds = %bb.b, %.body
  %.pn = phi { ptr, i32 } [ %.pn.i, %.body ], [ %i.n, %bb.b ]
  resume { ptr, i32 } %.pn

bb.n:                                             ; preds = %._crit_edge
  %i.af = load i32, ptr %1, align 8, !range !633, !noundef !3
  %i.ag = trunc nuw i32 %i.af to i1
  br i1 %i.ag, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !noundef !3
  %i.aj = icmp eq i32 %i.ai, 1
  br i1 %i.aj, label %bb.p, label %.thread

.thread:                                          ; preds = %._crit_edge, %bb.e, %bb.d, %bb.n, %bb.o
  %i.ak = invoke noundef nonnull align 8 ptr @_RNvMso_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_10Properties10repetition(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.r unwind label %bb.b

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  br label %bb.l

bb.q:                                             ; preds = %bb.r, %bb.l
  ret void

bb.r:                                             ; preds = %.thread
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 6, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ak, ptr %i.al, align 8
  br label %bb.q
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB5_9RegexInfo12memory_usage(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.c = load i64, ptr %i.b, align 8, !noundef !3
  %i.d = mul i64 %i.c, 80
  %i.e = add i64 %i.d, 80
  ret i64 %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB5_9RegexInfo3new(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(128) %0, ptr noalias noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 1152921504606846976) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [176 x i8], align 8               ; 8 uses
  %.sroa.02 = alloca [152 x i8], align 8          ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i64 0, ptr %i.d, align 8
  %.idx = shl nuw nsw i64 %2, 3
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCs79ICTHwG85D_12regex_syntax3hir10PropertiesENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit.thread.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs79ICTHwG85D_12regex_syntax3hir10PropertiesE8push_mutCs98D8VPWzHuM_14regex_automata.exit
  %.sroa.0.018 = phi ptr [ %i.g, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs79ICTHwG85D_12regex_syntax3hir10PropertiesE8push_mutCs98D8VPWzHuM_14regex_automata.exit ], [ %1, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.018, i64 8 ; 2 uses
  %i.h = load ptr, ptr %.sroa.0.018, align 8, !nonnull !3, !align !15, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.val = load ptr, ptr %i.i, align 8             ; 10 uses
  %i.j = invoke noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCs79ICTHwG85D_12regex_syntax3hir11PropertiesIE13new_uninit_inCs98D8VPWzHuM_14regex_automata()
          to label %bb.u unwind label %.loopexit  ; 11 uses

._crit_edge:                                      ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs79ICTHwG85D_12regex_syntax3hir10PropertiesE8push_mutCs98D8VPWzHuM_14regex_automata.exit
  %.val8.pre = load ptr, ptr %i.c, align 8        ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.di, 3
  %i.k = getelementptr inbounds nuw i8, ptr %.val8.pre, i64 %.idx.i
  %i.l = icmp eq i64 %i.di, 0
  br i1 %i.l, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCs79ICTHwG85D_12regex_syntax3hir10PropertiesENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit.thread.i, label %.peel.next.i

.peel.next.i:                                     ; preds = %._crit_edge
  %i.m = load ptr, ptr %.val8.pre, align 8, !nonnull !3, !noundef !3 ; 11 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i64, ptr %i.n, align 8, !range !14, !noundef !3 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.q = load i64, ptr %i.p, align 8              ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.s = load <4 x i32>, ptr %i.r, align 8        ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.u = load i32, ptr %i.t, align 8, !noundef !3 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 76
  %i.w = load i8, ptr %i.v, align 4, !range !36, !noundef !3 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.y = load i64, ptr %i.x, align 8, !noundef !3 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 77
  %i.aa = load i8, ptr %i.z, align 1, !range !36, !noundef !3 ; 2 uses
  %i.ab = load i64, ptr %i.m, align 8, !range !14, !noundef !3 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = trunc nuw i64 %i.ab to i1               ; 3 uses
  %spec.select.i = select i1 %i.ae, i64 %i.ad, i64 undef ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !range !14, !noundef !3 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = trunc nuw i64 %i.ag to i1               ; 3 uses
  %.sroa.86.2.peel.i = select i1 %i.aj, i64 %i.ai, i64 undef ; 3 uses
  %i.ak = icmp eq i64 %i.dc, 0
  br i1 %i.ak, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCs79ICTHwG85D_12regex_syntax3hir10PropertiesENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit.thread.i, label %.lr.ph38.preheader

.lr.ph38.preheader:                               ; preds = %.peel.next.i
  %.sroa.7.0.i19 = getelementptr i8, ptr %.val8.pre, i64 8
  %.sroa.011.1.peel.i = xor i1 %i.aj, true
  %.sroa.010.2.peel.i = xor i1 %i.ae, true
  br label %.lr.ph38

.lr.ph38:                                         ; preds = %.lr.ph38.preheader, %bb.t
  %.sroa.7.0.i37 = phi ptr [ %.sroa.7.0.i, %bb.t ], [ %.sroa.7.0.i19, %.lr.ph38.preheader ] ; 2 uses
  %i.al = phi i1 [ %i.by, %bb.t ], [ %i.ae, %.lr.ph38.preheader ] ; 2 uses
  %i.am = phi i64 [ %i.bx, %bb.t ], [ %spec.select.i, %.lr.ph38.preheader ] ; 3 uses
  %i.an = phi i1 [ %i.cj, %bb.t ], [ %i.aj, %.lr.ph38.preheader ] ; 2 uses
  %i.ao = phi i64 [ %i.ci, %bb.t ], [ %.sroa.86.2.peel.i, %.lr.ph38.preheader ] ; 3 uses
  %.sroa.02.0.load5.i36 = phi i64 [ %.sroa.02.0.load4.i, %bb.t ], [ %i.o, %.lr.ph38.preheader ]
  %.sroa.3.8.load7.i35 = phi i64 [ %.sroa.3.8.load6.i, %bb.t ], [ %i.q, %.lr.ph38.preheader ] ; 3 uses
  %.sroa.010.0.i34 = phi i1 [ %.sroa.010.1.i, %bb.t ], [ %.sroa.010.2.peel.i, %.lr.ph38.preheader ]
  %.sroa.011.0.i33 = phi i1 [ %.sroa.011.2.i, %bb.t ], [ %.sroa.011.1.peel.i, %.lr.ph38.preheader ]
  %.sroa.05.0.i32 = phi i64 [ %.sroa.05.1.i, %bb.t ], [ %i.ab, %.lr.ph38.preheader ] ; 2 uses
  %.sroa.4.0.i31 = phi i64 [ %.sroa.4.1.i, %bb.t ], [ %spec.select.i, %.lr.ph38.preheader ] ; 3 uses
  %.sroa.5.0.i30 = phi i64 [ %.sroa.5.3.i, %bb.t ], [ %i.ag, %.lr.ph38.preheader ] ; 2 uses
  %.sroa.86.0.i29 = phi i64 [ %.sroa.86.3.i, %bb.t ], [ %.sroa.86.2.peel.i, %.lr.ph38.preheader ] ; 3 uses
  %.sroa.9.0.i28 = phi i64 [ %.sroa.9.1.i, %bb.t ], [ %i.o, %.lr.ph38.preheader ] ; 2 uses
  %.sroa.12.0.i27 = phi i64 [ %i.bh, %bb.t ], [ %i.y, %.lr.ph38.preheader ]
  %.sroa.22.0.i22 = phi i32 [ %i.ay, %bb.t ], [ %i.u, %.lr.ph38.preheader ]
  %.sroa.24.0.i21 = phi i8 [ %.sroa.014.0.i, %bb.t ], [ %i.w, %.lr.ph38.preheader ]
  %.sroa.27.0.i20 = phi i8 [ %.sroa.019.0.i, %bb.t ], [ %i.aa, %.lr.ph38.preheader ]
  %i.ap = phi <4 x i32> [ %i.av, %bb.t ], [ %i.s, %.lr.ph38.preheader ] ; 2 uses
  %i.aq = load ptr, ptr %.sroa.7.0.i37, align 8, !nonnull !3, !noundef !3 ; 11 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.as = load <4 x i32>, ptr %i.ar, align 8      ; 2 uses
  %i.at = or <4 x i32> %i.as, %i.ap
  %i.au = and <4 x i32> %i.as, %i.ap
  %i.av = shufflevector <4 x i32> %i.at, <4 x i32> %i.au, <4 x i32> <i32 0, i32 5, i32 6, i32 3> ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 72
  %i.ax = load i32, ptr %i.aw, align 8, !noundef !3
  %i.ay = or i32 %i.ax, %.sroa.22.0.i22           ; 2 uses
  %i.az = trunc nuw i8 %.sroa.24.0.i21 to i1
  br i1 %i.az, label %bb.c, label %bb.d

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCs79ICTHwG85D_12regex_syntax3hir10PropertiesENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit.thread.i: ; preds = %bb.t, %bb.a, %.peel.next.i, %._crit_edge
  %.sroa.3.048.i = phi i64 [ undef, %._crit_edge ], [ %i.q, %.peel.next.i ], [ undef, %bb.a ], [ %i.q, %bb.t ]
  %.sroa.27.0.lcssa.i = phi i8 [ 1, %._crit_edge ], [ %i.aa, %.peel.next.i ], [ 1, %bb.a ], [ %.sroa.019.0.i, %bb.t ]
  %.sroa.24.0.lcssa.i = phi i8 [ 1, %._crit_edge ], [ %i.w, %.peel.next.i ], [ 1, %bb.a ], [ %.sroa.014.0.i, %bb.t ]
  %.sroa.22.0.lcssa.i = phi i32 [ 0, %._crit_edge ], [ %i.u, %.peel.next.i ], [ 0, %bb.a ], [ %i.ay, %bb.t ]
  %.sroa.12.0.lcssa.i = phi i64 [ 0, %._crit_edge ], [ %i.y, %.peel.next.i ], [ 0, %bb.a ], [ %i.bh, %bb.t ]
  %.sroa.9.0.lcssa.i = phi i64 [ 0, %._crit_edge ], [ %i.o, %.peel.next.i ], [ 0, %bb.a ], [ %.sroa.9.1.i, %bb.t ]
  %.sroa.86.0.lcssa.i = phi i64 [ undef, %._crit_edge ], [ %.sroa.86.2.peel.i, %.peel.next.i ], [ undef, %bb.a ], [ %.sroa.86.3.i, %bb.t ]
  %.sroa.5.0.lcssa.i = phi i64 [ 0, %._crit_edge ], [ %i.ag, %.peel.next.i ], [ 0, %bb.a ], [ %.sroa.5.3.i, %bb.t ]
  %.sroa.4.0.lcssa.i = phi i64 [ undef, %._crit_edge ], [ %spec.select.i, %.peel.next.i ], [ undef, %bb.a ], [ %.sroa.4.1.i, %bb.t ]
  %.sroa.05.0.lcssa.i = phi i64 [ 0, %._crit_edge ], [ %i.ab, %.peel.next.i ], [ 0, %bb.a ], [ %.sroa.05.1.i, %bb.t ]
  %i.ba = phi <4 x i32> [ zeroinitializer, %._crit_edge ], [ %i.s, %.peel.next.i ], [ zeroinitializer, %bb.a ], [ %i.av, %bb.t ]
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !637
  %i.bb = call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1449) 80, i64 noundef 8) #30, !noalias !637 ; 14 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.b, label %bb.x, !prof !4

bb.b:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCs79ICTHwG85D_12regex_syntax3hir10PropertiesENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit.thread.i
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #27
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.lr.ph38
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 76
  %i.be = load i8, ptr %i.bd, align 4, !range !36, !noundef !3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph38
  %.sroa.014.0.i = phi i8 [ %i.be, %bb.c ], [ 0, %.lr.ph38 ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.bg = load i64, ptr %i.bf, align 8, !noundef !3
  %i.bh = call i64 @llvm.uadd.sat.i64(i64 %.sroa.12.0.i27, i64 %i.bg) ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.bj = load i64, ptr %i.bi, align 8, !range !14, !noundef !3 ; 2 uses
  %i.bk = trunc nuw i64 %.sroa.02.0.load5.i36 to i1
  br i1 %i.bk, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = trunc nuw i64 %i.bj to i1
  %i.bo = icmp eq i64 %.sroa.3.8.load7.i35, %i.bm
  %or.cond.not.i = select i1 %i.bn, i1 %i.bo, i1 false
  br i1 %or.cond.not.i, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.bp = trunc nuw i64 %i.bj to i1
  br i1 %i.bp, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.9.1.i = phi i64 [ 0, %bb.g ], [ %.sroa.9.0.i28, %bb.f ], [ %.sroa.9.0.i28, %bb.e ] ; 2 uses
  %.sroa.3.8.load6.i = phi i64 [ undef, %bb.g ], [ %.sroa.3.8.load7.i35, %bb.f ], [ %.sroa.3.8.load7.i35, %bb.e ]
  %.sroa.02.0.load4.i = phi i64 [ 0, %bb.g ], [ 0, %bb.f ], [ 1, %bb.e ]
  %i.bq = trunc nuw i8 %.sroa.27.0.i20 to i1
  br i1 %i.bq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %i.aq, i64 77
  %i.bs = load i8, ptr %i.br, align 1, !range !36, !noundef !3
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.019.0.i = phi i8 [ %i.bs, %bb.i ], [ 0, %bb.h ] ; 2 uses
  br i1 %.sroa.010.0.i34, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bt = load i64, ptr %i.aq, align 8, !range !14, !noundef !3
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.bv = load i64, ptr %i.bu, align 8            ; 3 uses
  %i.bw = trunc nuw i64 %i.bt to i1               ; 3 uses
  br i1 %i.bw, label %bb.m, label %bb.o

bb.l:                                             ; preds = %bb.o, %bb.j
  %.sroa.4.1.i = phi i64 [ %.sroa.4.0.i31, %bb.j ], [ %.sroa.4.3.i, %bb.o ] ; 2 uses
  %.sroa.05.1.i = phi i64 [ %.sroa.05.0.i32, %bb.j ], [ %.sroa.05.3.i, %bb.o ] ; 2 uses
  %.sroa.010.1.i = phi i1 [ true, %bb.j ], [ %.sroa.010.2.i, %bb.o ]
  %i.bx = phi i64 [ %i.am, %bb.j ], [ %i.ca, %bb.o ]
  %i.by = phi i1 [ %i.al, %bb.j ], [ %i.bw, %bb.o ]
  br i1 %.sroa.011.0.i33, label %bb.t, label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.bz = icmp uge i64 %i.bv, %i.am
  %spec.select.i.not.i = select i1 %i.al, i1 %i.bz, i1 false
  br i1 %spec.select.i.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.k
  %.sroa.4.3.i = phi i64 [ %.sroa.4.0.i31, %bb.k ], [ %i.bv, %bb.n ], [ %.sroa.4.0.i31, %bb.m ]
  %.sroa.05.3.i = phi i64 [ 0, %bb.k ], [ 1, %bb.n ], [ %.sroa.05.0.i32, %bb.m ]
  %i.ca = phi i64 [ undef, %bb.k ], [ %i.bv, %bb.n ], [ %i.am, %bb.m ]
  %.sroa.010.2.i = xor i1 %i.bw, true
  br label %bb.l

bb.p:                                             ; preds = %bb.l
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !range !14, !noundef !3
  %i.cd = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.ce = load i64, ptr %i.cd, align 8            ; 3 uses
  %i.cf = trunc nuw i64 %i.cc to i1               ; 3 uses
  br i1 %i.cf, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cg = icmp ule i64 %i.ce, %i.ao
  %spec.select.i48.not.i = select i1 %i.an, i1 %i.cg, i1 false
  br i1 %spec.select.i48.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.sroa.86.2.i = phi i64 [ %.sroa.86.0.i29, %bb.p ], [ %i.ce, %bb.r ], [ %.sroa.86.0.i29, %bb.q ]
  %.sroa.5.2.i = phi i64 [ 0, %bb.p ], [ 1, %bb.r ], [ %.sroa.5.0.i30, %bb.q ]
  %i.ch = phi i64 [ undef, %bb.p ], [ %i.ce, %bb.r ], [ %i.ao, %bb.q ]
  %.sroa.011.1.i = xor i1 %i.cf, true
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.l
  %.sroa.86.3.i = phi i64 [ %.sroa.86.0.i29, %bb.l ], [ %.sroa.86.2.i, %bb.s ] ; 2 uses
  %.sroa.5.3.i = phi i64 [ %.sroa.5.0.i30, %bb.l ], [ %.sroa.5.2.i, %bb.s ] ; 2 uses
  %.sroa.011.2.i = phi i1 [ true, %bb.l ], [ %.sroa.011.1.i, %bb.s ]
  %i.ci = phi i64 [ %i.ao, %bb.l ], [ %i.ch, %bb.s ]
  %i.cj = phi i1 [ %i.an, %bb.l ], [ %i.cf, %bb.s ]
  %.sroa.7.0.i = getelementptr i8, ptr %.sroa.7.0.i37, i64 8 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.i) ]
  %i.ck = icmp eq ptr %.sroa.7.0.i, %i.k
  br i1 %i.ck, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCs79ICTHwG85D_12regex_syntax3hir10PropertiesENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit.thread.i, label %.lr.ph38, !llvm.loop !640

.loopexit:                                        ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.loopexit.split-lp:                               ; preds = %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.u:                                             ; preds = %.lr.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !641)
  %i.cl = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.cn = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.co = load i32, ptr %i.cn, align 8, !alias.scope !644, !noalias !647, !noundef !3
  %i.cp = getelementptr inbounds nuw i8, ptr %.val, i64 76
  %i.cq = load i8, ptr %i.cp, align 4, !range !36, !alias.scope !644, !noalias !647, !noundef !3
  %i.cr = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !644, !noalias !647, !noundef !3
  %i.ct = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.cu = getelementptr inbounds nuw i8, ptr %.val, i64 77
  %i.cv = load i8, ptr %i.cu, align 1, !range !36, !alias.scope !644, !noalias !647, !noundef !3
  %i.cw = getelementptr inbounds nuw i8, ptr %.val, i64 78
  %i.cx = load i8, ptr %i.cw, align 2, !range !36, !alias.scope !644, !noalias !647, !noundef !3
  %i.cy = load <2 x i64>, ptr %.val, align 8, !alias.scope !644, !noalias !647
  store <2 x i64> %i.cy, ptr %i.j, align 8, !noalias !641
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.cz = load <2 x i64>, ptr %i.cl, align 8, !alias.scope !644, !noalias !647
  store <2 x i64> %i.cz, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !641
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.da = load <2 x i64>, ptr %i.ct, align 8, !alias.scope !644, !noalias !647
  store <2 x i64> %i.da, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !641
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store i64 %i.cs, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !641
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.db = load <4 x i32>, ptr %i.cm, align 8, !alias.scope !644, !noalias !647
  store <4 x i32> %i.db, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !641
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store i32 %i.co, ptr %.sroa.14.0..sroa_idx.i.i, align 8, !noalias !641
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 76
  store i8 %i.cq, ptr %.sroa.15.0..sroa_idx.i.i, align 4, !noalias !641
  %.sroa.16.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 77
  store i8 %i.cv, ptr %.sroa.16.0..sroa_idx.i.i, align 1, !noalias !641
  %.sroa.17.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 78
  store i8 %i.cx, ptr %.sroa.17.0..sroa_idx.i.i, align 2, !noalias !641
  %i.dc = load i64, ptr %i.d, align 8, !alias.scope !649, !noalias !652, !noundef !3 ; 4 uses
  %i.dd = load i64, ptr %i.b, align 8, !range !173, !alias.scope !649, !noalias !652, !noundef !3
  %i.de = icmp eq i64 %i.dc, %i.dd
  br i1 %i.de, label %bb.v, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs79ICTHwG85D_12regex_syntax3hir10PropertiesE8push_mutCs98D8VPWzHuM_14regex_automata.exit

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs79ICTHwG85D_12regex_syntax3hir10PropertiesE8grow_oneCs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs79ICTHwG85D_12regex_syntax3hir10PropertiesE8push_mutCs98D8VPWzHuM_14regex_automata.exit unwind label %bb.w, !noalias !652

bb.w:                                             ; preds = %bb.v
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.j, i64 noundef 80, i64 noundef 8) #30
  br label %bb.ac

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs79ICTHwG85D_12regex_syntax3hir10PropertiesE8push_mutCs98D8VPWzHuM_14regex_automata.exit: ; preds = %bb.u, %bb.v
  %i.dg = load ptr, ptr %i.c, align 8, !alias.scope !649, !noalias !652, !nonnull !3, !noundef !3
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.dc
  store ptr %i.j, ptr %i.dh, align 8, !noalias !652
  %i.di = add i64 %i.dc, 1                        ; 3 uses
  store i64 %i.di, ptr %i.d, align 8, !alias.scope !649, !noalias !652
  %i.dj = icmp eq ptr %i.g, %i.e
  br i1 %i.dj, label %._crit_edge, label %.lr.ph

bb.x:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCs79ICTHwG85D_12regex_syntax3hir10PropertiesENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit.thread.i
  store i64 %.sroa.05.0.lcssa.i, ptr %i.bb, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 %.sroa.4.0.lcssa.i, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 %.sroa.5.0.lcssa.i, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.86.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store i64 %.sroa.86.0.lcssa.i, ptr %.sroa.86.0..sroa_idx.i, align 8
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store i64 %.sroa.9.0.lcssa.i, ptr %.sroa.9.0..sroa_idx.i, align 8
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  store i64 %.sroa.3.048.i, ptr %.sroa.11.0..sroa_idx.i, align 8
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  store i64 %.sroa.12.0.lcssa.i, ptr %.sroa.12.0..sroa_idx.i, align 8
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 56
  store <4 x i32> %i.ba, ptr %.sroa.14.0..sroa_idx.i, align 8
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 72
  store i32 %.sroa.22.0.lcssa.i, ptr %.sroa.22.0..sroa_idx.i, align 8
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 76
  store i8 %.sroa.24.0.lcssa.i, ptr %.sroa.24.0..sroa_idx.i, align 4
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 77
  store i8 0, ptr %.sroa.26.0..sroa_idx.i, align 1
  %.sroa.27.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 78
  store i8 %.sroa.27.0.lcssa.i, ptr %.sroa.27.0..sroa_idx.i, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.02)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.02, ptr noundef nonnull align 8 dereferenceable(128) %0, i64 128, i1 false)
  %.sroa.02.128..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.02, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.02.128..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.dk, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.dl, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.02, i64 152, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store ptr %i.bb, ptr %.sroa.5.0..sroa_idx, align 8
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !654
  %i.dm = call noundef align 8 dereferenceable_or_null(176) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1449) 176, i64 noundef 8) #30, !noalias !654 ; 3 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %bb.y, label %bb.ab, !prof !4

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 176) #27
          to label %.noexc12 unwind label %bb.z

.noexc12:                                         ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.y
  %i.do = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync8ArcInnerNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex10RegexInfoIEEB1j_(ptr noalias noundef nonnull align 8 dereferenceable(176) %i.a) #29
          to label %.critedge unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.ab:                                            ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.dm, ptr noundef nonnull align 8 dereferenceable(176) %i.a, i64 176, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.02)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.dm

bb.ac:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.w
  %eh.lpad-body.ph = phi { ptr, i32 } [ %i.df, %bb.w ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs79ICTHwG85D_12regex_syntax3hir10PropertiesEECs98D8VPWzHuM_14regex_automata(ptr noalias noundef align 8 dereferenceable(24) %i.b) #29
          to label %bb.ae unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ae, %bb.ac
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable

.critedge:                                        ; preds = %bb.z, %bb.ae
  %eh.lpad-body16 = phi { ptr, i32 } [ %i.do, %bb.z ], [ %eh.lpad-body.ph, %bb.ae ]
  resume { ptr, i32 } %eh.lpad-body16

bb.ae:                                            ; preds = %bb.ac
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex6ConfigEBH_(ptr noalias noundef align 8 dereferenceable(128) %0) #29
          to label %.critedge unwind label %bb.ad
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvMsh_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB5_5Cache12memory_usage(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1400) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.b = tail call noundef i64 @_RNvMs0_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_11PikeVMCache12memory_usage(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.d = tail call noundef i64 @_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_23BoundedBacktrackerCache12memory_usage(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c)
  %i.e = add i64 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.g = tail call noundef i64 @_RNvMs6_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12OnePassCache12memory_usage(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f)
  %i.h = add i64 %i.e, %i.g
  %i.i = tail call noundef i64 @_RNvMs9_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_11HybridCache12memory_usage(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(704) %0)
  %i.j = add i64 %i.h, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.l = tail call noundef i64 @_RNvMse_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_18ReverseHybridCache12memory_usage(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %i.k)
  %i.m = add i64 %i.j, %i.l
  ret i64 %i.m
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsh_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB5_5Cache3new(ptr dead_on_unwind noalias noundef writable sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !657)
  %i.a = load ptr, ptr %1, align 8, !alias.scope !657, !noalias !660, !nonnull !3, !noundef !3 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !noalias !662, !nonnull !3, !noundef !3
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !noalias !662, !nonnull !3, !align !15, !noundef !3 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !33, !invariant.load !3, !noalias !662
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !3, !noalias !662, !nonnull !3
  tail call void %i.m(ptr noalias noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %0, ptr noundef nonnull %i.k), !noalias !657, !inline_history !663
  ret void
}
end_hunk_0
