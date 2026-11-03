Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/stdx-dca85e3285d33d87.stdx.5f0250e570055520-cgu.1?download=true
inline.NumInlined: 202
inline.NumDeleted: 122
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs1_NtNtCsM5evIHPibA_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtCs89JjGp7luZU_4stdx6thread4pool3JobE4recvB1c_:bb.a
  %i.er = atomicrmw add ptr %i.ep, i64 -1 release, align 8, !noalias !299
  %i.es = icmp eq i64 %i.er, 1
  br i1 %i.es, label %bb.ak, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsM5evIHPibA_17crossbeam_channel7context7ContextEECs89JjGp7luZU_4stdx.exit.i.i.i

bb.ak:                                            ; preds = %bb.aj
  fence acquire
  call void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtCsM5evIHPibA_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #21, !noalias !286
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsM5evIHPibA_17crossbeam_channel7context7ContextEECs89JjGp7luZU_4stdx.exit.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsM5evIHPibA_17crossbeam_channel7context7ContextEECs89JjGp7luZU_4stdx.exit.i.i.i: ; preds = %bb.ak, %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !286
  br label %_RINvMNtCsM5evIHPibA_17crossbeam_channel7contextNtB3_7Context4withNCNvMs1_NtNtB5_7flavors4listINtB19_7ChannelNtNtNtCs89JjGp7luZU_4stdx6thread4pool3JobE4recvs_0uEB1O_.exit

bb.al:                                            ; preds = %bb.ah
  %i.et = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eu = atomicrmw add ptr %i.ed, i64 -1 release, align 8, !noalias !300
  %i.ev = icmp eq i64 %i.eu, 1
  br i1 %i.ev, label %bb.am, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsM5evIHPibA_17crossbeam_channel7context7ContextECs89JjGp7luZU_4stdx.exit.i.i.i

bb.am:                                            ; preds = %bb.al
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtCsM5evIHPibA_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #21
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsM5evIHPibA_17crossbeam_channel7context7ContextECs89JjGp7luZU_4stdx.exit.i.i.i unwind label %bb.ag, !noalias !286

_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyINtNtCshzWfHUSfYae_4core4cell4CellINtNtBZ_6option6OptionNtNtCsM5evIHPibA_17crossbeam_channel7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtNtB1S_7flavors4listINtB3h_7ChannelNtNtNtCs89JjGp7luZU_4stdx6thread4pool3JobE4recvs_0uEs_0uEB3X_.exit.i: ; preds = %_RNvYNCNKNvNvMNtCsM5evIHPibA_17crossbeam_channel7contextNtBb_7Context4with7CONTEXT00INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs89JjGp7luZU_4stdx.exit.i.i
  call fastcc void @_RNCINvMNtCsM5evIHPibA_17crossbeam_channel7contextNtB5_7Context4withNCNvMs1_NtNtB7_7flavors4listINtB1b_7ChannelNtNtNtCs89JjGp7luZU_4stdx6thread4pool3JobE4recvs_0uEs0_0B1Q_(ptr nonnull %i.f) #25, !noalias !286
  br label %_RINvMNtCsM5evIHPibA_17crossbeam_channel7contextNtB3_7Context4withNCNvMs1_NtNtB5_7flavors4listINtB19_7ChannelNtNtNtCs89JjGp7luZU_4stdx6thread4pool3JobE4recvs_0uEB1O_.exit

_RINvMNtCsM5evIHPibA_17crossbeam_channel7contextNtB3_7Context4withNCNvMs1_NtNtB5_7flavors4listINtB19_7ChannelNtNtNtCs89JjGp7luZU_4stdx6thread4pool3JobE4recvs_0uEB1O_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsM5evIHPibA_17crossbeam_channel7context7ContextECs89JjGp7luZU_4stdx.exit19.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsM5evIHPibA_17crossbeam_channel7context7ContextEECs89JjGp7luZU_4stdx.exit.i.i.i, %_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyINtNtCshzWfHUSfYae_4core4cell4CellINtNtBZ_6option6OptionNtNtCsM5evIHPibA_17crossbeam_channel7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtNtB1S_7flavors4listINtB3h_7ChannelNtNtNtCs89JjGp7luZU_4stdx6thread4pool3JobE4recvs_0uEs_0uEB3X_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !286
  br label %.backedge

.split:                                           ; preds = %bb.z
  %i.ew = extractvalue { i64, i32 } %i.dw, 1      ; 2 uses
  %i.ex = icmp ult i32 %i.ew, 1000000000
  call void @llvm.assume(i1 %i.ex)
  %.not32 = icmp samesign ult i32 %i.ew, %i.du
  br i1 %.not32, label %bb.aa, label %bb.ao

bb.an:                                            ; preds = %bb.z
  %.not31 = icmp slt i64 %i.dx, %i.dv
  br i1 %.not31, label %bb.aa, label %bb.ao

bb.ao:                                            ; preds = %.split, %bb.an
  store i8 0, ptr %0, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %i.ey, align 8
  br label %bb.ap

bb.ap:                                            ; preds = %_RNvMs1_NtNtCsM5evIHPibA_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtCs89JjGp7luZU_4stdx6thread4pool3JobE4readB1c_.exit.thread, %bb.aq, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

_RNvMs1_NtNtCsM5evIHPibA_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtCs89JjGp7luZU_4stdx6thread4pool3JobE4readB1c_.exit.thread: ; preds = %bb.g, %_RNvMs1_NtNtCsM5evIHPibA_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtCs89JjGp7luZU_4stdx6thread4pool3JobE4readB1c_.exit
  store i8 1, ptr %0, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %i.ez, align 8
  br label %bb.ap

bb.aq:                                            ; preds = %_RNvMs1_NtNtCsM5evIHPibA_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtCs89JjGp7luZU_4stdx6thread4pool3JobE4readB1c_.exit
  store <2 x ptr> %i.ch, ptr %0, align 8
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.57.0.copyload.i, ptr %.sroa.523.0..sroa_idx, align 8
  br label %bb.ap
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsM5evIHPibA_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtCs89JjGp7luZU_4stdx6thread4pool3JobENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1c_(ptr noalias nofree noundef readonly align 128 captures(none) dereferenceable(384) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 128, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load i64, ptr %i.b, align 128, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !noundef !5 ; 2 uses
  %i.f = and i64 %i.a, -2                         ; 2 uses
  %i.g = and i64 %i.c, -2                         ; 2 uses
  %.not17 = icmp eq i64 %i.f, %i.g
  br i1 %.not17, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs89JjGp7luZU_4stdx6thread4pool3JobEBH_.exit, %bb.a
  %.sroa.06.0.lcssa = phi ptr [ %i.e, %bb.a ], [ %.sroa.06.1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs89JjGp7luZU_4stdx6thread4pool3JobEBH_.exit ] ; 2 uses
  %i.h = icmp eq ptr %.sroa.06.0.lcssa, null
  br i1 %i.h, label %bb.c, label %bb.b

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs89JjGp7luZU_4stdx6thread4pool3JobEBH_.exit
  %.sroa.0.019 = phi i64 [ %i.aa, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs89JjGp7luZU_4stdx6thread4pool3JobEBH_.exit ], [ %i.f, %bb.a ] ; 2 uses
  %.sroa.06.018 = phi ptr [ %.sroa.06.1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs89JjGp7luZU_4stdx6thread4pool3JobEBH_.exit ], [ %i.e, %bb.a ] ; 6 uses
  %i.i = lshr exact i64 %.sroa.0.019, 1
  %i.j = and i64 %i.i, 31                         ; 2 uses
  %.not11 = icmp eq i64 %i.j, 31
  br i1 %.not11, label %bb.d, label %bb.e

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.06.0.lcssa, i64 noundef 1000, i64 noundef 8) #11
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  ret void

bb.d:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.018, i64 992
  %i.l = load ptr, ptr %i.k, align 8, !noundef !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.06.018) ]
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.06.018, i64 noundef 1000, i64 noundef 8) #11
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs89JjGp7luZU_4stdx6thread4pool3JobEBH_.exit

bb.e:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %.sroa.06.018, i64 %i.j ; 2 uses
  %.val13 = load ptr, ptr %i.m, align 8           ; 5 uses
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %.val14 = load ptr, ptr %i.n, align 8, !nonnull !5, !align !6, !noundef !5 ; 5 uses
  %i.o = load ptr, ptr %.val14, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13) ]
  invoke void %i.o(ptr noundef nonnull %.val13)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %.val14, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !11, !invariant.load !5 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs89JjGp7luZU_4stdx6thread4pool3JobEBH_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %.val14, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !13, !invariant.load !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13) ]
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13, i64 noundef range(i64 1, -9223372036854775808) %i.q, i64 noundef range(i64 1, 536870913) %i.t) #11
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs89JjGp7luZU_4stdx6thread4pool3JobEBH_.exit

bb.i:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = getelementptr inbounds nuw i8, ptr %.val14, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !11, !invariant.load !5 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RNvXs8_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxDINtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendNtNtNtBP_5panic11unwind_safe10UnwindSafeEL_ENtNtBN_4drop4Drop4dropCs89JjGp7luZU_4stdx.exit4.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %.val14, i64 16
  %i.z = load i64, ptr %i.y, align 8, !range !13, !invariant.load !5
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13, i64 noundef range(i64 1, -9223372036854775808) %i.w, i64 noundef range(i64 1, 536870913) %i.z) #11
  br label %_RNvXs8_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxDINtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendNtNtNtBP_5panic11unwind_safe10UnwindSafeEL_ENtNtBN_4drop4Drop4dropCs89JjGp7luZU_4stdx.exit4.i.i

_RNvXs8_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxDINtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendNtNtNtBP_5panic11unwind_safe10UnwindSafeEL_ENtNtBN_4drop4Drop4dropCs89JjGp7luZU_4stdx.exit4.i.i: ; preds = %bb.j, %bb.i
  resume { ptr, i32 } %i.u

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs89JjGp7luZU_4stdx6thread4pool3JobEBH_.exit: ; preds = %bb.h, %bb.g, %bb.d
  %.sroa.06.1 = phi ptr [ %i.l, %bb.d ], [ %.sroa.06.018, %bb.g ], [ %.sroa.06.018, %bb.h ] ; 2 uses
  %i.aa = add i64 %.sroa.0.019, 2                 ; 2 uses
  %.not = icmp eq i64 %i.aa, %i.g
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtBH_3str4iter14SplitInclusivecENCNvCs89JjGp7luZU_4stdx11trim_indent0ENtB5_13SpecExtendStr16spec_extend_intoB21_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 13 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !alias.scope !337, !nonnull !5, !noundef !5
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !338
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx, i64 72, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !341)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 65 ; 2 uses
  %.promoted.i.i.i = load i8, ptr %i.b, align 1, !alias.scope !344, !noalias !338
  %.promoted11.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !341, !noalias !338 ; 4 uses
  %i.c = trunc nuw i8 %.promoted.i.i.i to i1
  br i1 %i.c, label %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtBc_3str4iter14SplitInclusivecENCNvCs89JjGp7luZU_4stdx11trim_indent0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringB3_NtB2T_13SpecExtendStr16spec_extend_into0EB1w_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !344, !noalias !338, !nonnull !5, !noundef !5 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.val1.i.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !344, !noalias !338, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !345, !noalias !338, !noundef !5 ; 5 uses
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.g, %.val1.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.j = load i8, ptr %i.i, align 8, !alias.scope !341, !noalias !338 ; 2 uses
  %i.k = zext nneg i8 %i.j to i64                 ; 4 uses
  %i.l = icmp ult i8 %i.j, 5
  %i.m = getelementptr i8, ptr %i.h, i64 %i.k
  %i.n = getelementptr i8, ptr %i.m, i64 -1
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.p = load i8, ptr %i.o, align 8, !range !7, !alias.scope !341, !noalias !338
  %i.q = trunc nuw i8 %i.p to i1                  ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre2.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !alias.scope !341, !noalias !338 ; 4 uses
  %i.r = load i64, ptr %.sroa.0.0.copyload, align 8, !alias.scope !343, !noalias !338 ; 9 uses
  %i.s = icmp eq i64 %i.r, 0                      ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 12 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.preheader.i.i.i

.lr.ph.split.preheader.i.i.i:                     ; preds = %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.promoted15.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !345, !noalias !338
  br label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i
  %.not.i3.i.i.us.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i, %.promoted11.i.i.i
  %or.cond.not.i.i.i.us.i.i.i = select i1 %i.q, i1 true, i1 %.not.i3.i.i.us.i.i.i
  %i.w = sub nuw i64 %.pre2.i.i.i.i.i.i, %.promoted11.i.i.i ; 4 uses
  %.sroa.0.1.i.i.us.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.promoted11.i.i.i ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.us.i.i.i, i64 %i.r ; 3 uses
  %i.y = sub nuw i64 %i.w, %i.r                   ; 6 uses
  br i1 %or.cond.not.i.i.i.us.i.i.i, label %.lr.ph.split.us.split.us.i.i.i, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.us.i.i.i

.lr.ph.split.us.split.us.i.i.i:                   ; preds = %.lr.ph.split.us.i.i.i
  %.not.i.i.us.i.i.i = icmp ugt i64 %i.w, %i.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349)
  br i1 %.not.i.i.us.i.i.i, label %.lr.ph.split.us.split.us.split.us.split.i.i.i, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.us.us.i.i.i

.lr.ph.split.us.split.us.split.us.split.i.i.i:    ; preds = %.lr.ph.split.us.split.us.i.i.i
  br i1 %i.s, label %.lr.ph.split.us.split.us.split.us.split.split.us.i.i.i, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.us.us.us.i.i.i

.lr.ph.split.us.split.us.split.us.split.split.us.i.i.i: ; preds = %.lr.ph.split.us.split.us.split.us.split.i.i.i
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs89JjGp7luZU_4stdx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.y), !noalias !350
  %i.z = load i64, ptr %i.t, align 8, !alias.scope !351, !noalias !352, !noundef !5 ; 2 uses
  %i.aa = icmp sgt i64 %i.z, -1
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = load ptr, ptr %i.u, align 8, !alias.scope !351, !noalias !352, !nonnull !5, !noundef !5
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull readonly align 1 %i.x, i64 %i.y, i1 false), !noalias !353
  %.pre.i.i.i.i.us.us.us.us.i.i.i = load i64, ptr %i.t, align 8, !alias.scope !351, !noalias !352
  %i.ad = add i64 %.pre.i.i.i.i.us.us.us.us.i.i.i, %i.y
  store i64 %i.ad, ptr %i.t, align 8, !alias.scope !351, !noalias !352
  br label %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtBc_3str4iter14SplitInclusivecENCNvCs89JjGp7luZU_4stdx11trim_indent0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringB3_NtB2T_13SpecExtendStr16spec_extend_into0EB1w_.exit

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.us.us.us.i.i.i: ; preds = %.lr.ph.split.us.split.us.split.us.split.i.i.i
  %i.ae = load i8, ptr %i.x, align 1, !alias.scope !354, !noalias !355, !noundef !5
  %i.af = icmp sgt i8 %i.ae, -65
  br i1 %i.af, label %_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.us.us.us.i.i.i, label %.split.us.i.i.i

_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.us.us.us.i.i.i: ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.us.us.us.i.i.i
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs89JjGp7luZU_4stdx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.y), !noalias !350
  %i.ag = load i64, ptr %i.t, align 8, !alias.scope !351, !noalias !352, !noundef !5 ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, -1
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = load ptr, ptr %i.u, align 8, !alias.scope !351, !noalias !352, !nonnull !5, !noundef !5
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr nonnull readonly align 1 %i.x, i64 %i.y, i1 false), !noalias !353
  %.pre.i.i.i.i.us.us.us.i.i.i = load i64, ptr %i.t, align 8, !alias.scope !351, !noalias !352
  %i.ak = add i64 %.pre.i.i.i.i.us.us.us.i.i.i, %i.y
  store i64 %i.ak, ptr %i.t, align 8, !alias.scope !351, !noalias !352
  br label %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtBc_3str4iter14SplitInclusivecENCNvCs89JjGp7luZU_4stdx11trim_indent0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringB3_NtB2T_13SpecExtendStr16spec_extend_into0EB1w_.exit

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.us.us.i.i.i: ; preds = %.lr.ph.split.us.split.us.i.i.i
  %i.al = tail call { ptr, i64 } @_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchescECs89JjGp7luZU_4stdx(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.us.i.i.i, i64 noundef %i.w, i32 noundef 32), !noalias !355 ; 2 uses
  %i.am = extractvalue { ptr, i64 } %i.al, 1      ; 4 uses
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs89JjGp7luZU_4stdx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.am), !noalias !350
  %i.an = load i64, ptr %i.t, align 8, !alias.scope !351, !noalias !352, !noundef !5 ; 3 uses
  %i.ao = icmp sgt i64 %i.an, -1
  tail call void @llvm.assume(i1 %i.ao)
  %.not.i.i.i.i5.us.us.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i5.us.us.i.i.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldReBU_uNCNvCs89JjGp7luZU_4stdx11trim_indent0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBU_NCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtB4_3MapINtNtNtBa_3str4iter14SplitInclusivecEB10_ENtB2F_13SpecExtendStr16spec_extend_into0E0E0B14_.exit.us.us.i.i.i, label %bb.b

bb.b:                                             ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.us.us.i.i.i
  %i.ap = extractvalue { ptr, i64 } %i.al, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  %i.aq = load ptr, ptr %i.u, align 8, !alias.scope !351, !noalias !352, !nonnull !5, !noundef !5
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.an
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ar, ptr nonnull readonly align 1 %i.ap, i64 %i.am, i1 false), !noalias !353
  %.pre.i.i.i.i.us.us.i.i.i = load i64, ptr %i.t, align 8, !alias.scope !351, !noalias !352
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldReBU_uNCNvCs89JjGp7luZU_4stdx11trim_indent0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBU_NCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtB4_3MapINtNtNtBa_3str4iter14SplitInclusivecEB10_ENtB2F_13SpecExtendStr16spec_extend_into0E0E0B14_.exit.us.us.i.i.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldReBU_uNCNvCs89JjGp7luZU_4stdx11trim_indent0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBU_NCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtB4_3MapINtNtNtBa_3str4iter14SplitInclusivecEB10_ENtB2F_13SpecExtendStr16spec_extend_into0E0E0B14_.exit.us.us.i.i.i: ; preds = %bb.b, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.us.us.i.i.i
  %i.as = phi i64 [ %.pre.i.i.i.i.us.us.i.i.i, %bb.b ], [ %i.an, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.us.us.i.i.i ]
  %i.at = add i64 %i.as, %i.am
  store i64 %i.at, ptr %i.t, align 8, !alias.scope !351, !noalias !352
  br label %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtBc_3str4iter14SplitInclusivecENCNvCs89JjGp7luZU_4stdx11trim_indent0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringB3_NtB2T_13SpecExtendStr16spec_extend_into0EB1w_.exit

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.us.i.i.i: ; preds = %.lr.ph.split.us.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  br label %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtBc_3str4iter14SplitInclusivecENCNvCs89JjGp7luZU_4stdx11trim_indent0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringB3_NtB2T_13SpecExtendStr16spec_extend_into0EB1w_.exit

.lr.ph.split.i.i.i:                               ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldReBU_uNCNvCs89JjGp7luZU_4stdx11trim_indent0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBU_NCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtB4_3MapINtNtNtBa_3str4iter14SplitInclusivecEB10_ENtB2F_13SpecExtendStr16spec_extend_into0E0E0B14_.exit.i.i.i, %.lr.ph.split.preheader.i.i.i
  %i.au = phi i64 [ %i.br, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldReBU_uNCNvCs89JjGp7luZU_4stdx11trim_indent0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBU_NCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtB4_3MapINtNtNtBa_3str4iter14SplitInclusivecEB10_ENtB2F_13SpecExtendStr16spec_extend_into0E0E0B14_.exit.i.i.i ], [ %.promoted15.i.i.i, %.lr.ph.split.preheader.i.i.i ] ; 3 uses
  %.lcssa1314.i.i.i = phi i64 [ %.lcssa12.i.i.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldReBU_uNCNvCs89JjGp7luZU_4stdx11trim_indent0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBU_NCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtB4_3MapINtNtNtBa_3str4iter14SplitInclusivecEB10_ENtB2F_13SpecExtendStr16spec_extend_into0E0E0B14_.exit.i.i.i ], [ %.promoted11.i.i.i, %.lr.ph.split.preheader.i.i.i ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.av = icmp ult i64 %i.g, %i.au
  br i1 %i.av, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i.i

.lr.ph.split.preheader.i.i.i.i.i.i:               ; preds = %.lr.ph.split.i.i.i
  tail call void @llvm.assume(i1 %i.l)
  %.pre.i.i.i.i.i.i = load i8, ptr %i.n, align 1, !alias.scope !345, !noalias !338 ; 2 uses
  br label %.lr.ph.split.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i:                         ; preds = %bb.f, %.lr.ph.split.preheader.i.i.i.i.i.i
  %i.aw = phi i64 [ %i.bl, %bb.f ], [ %i.au, %.lr.ph.split.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.ax = sub nuw i64 %i.g, %i.aw                 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.aw ; 2 uses
  %i.az = icmp samesign ult i64 %i.ax, 16
  br i1 %i.az, label %.preheader.i.i.i.i.i.i.i, label %bb.c

.preheader.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.split.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.split.i.i.i.i.i.i
  %i.ba = tail call { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ay, i64 noundef range(i64 0, -9223372036854775808) %i.ax), !noalias !356
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i ], [ %i.ax, %bb.d ], [ %.sroa.01.05.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i ], [ 0, %bb.d ], [ 1, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bb = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i.i.i, 0
  %i.bc = insertvalue { i64, i64 } %i.bb, i64 %.sroa.01.0.lcssa.i.i.i.i.i.i.i, 1
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.i.i, %bb.d
  %.sroa.01.05.i.i.i.i.i.i.i = phi i64 [ %i.bg, %bb.d ], [ 0, %.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.sroa.01.05.i.i.i.i.i.i.i
  %i.be = load i8, ptr %i.bd, align 1, !alias.scope !357, !noalias !356, !noundef !5
  %i.bf = icmp eq i8 %i.be, %.pre.i.i.i.i.i.i
  br i1 %i.bf, label %._crit_edge.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bg = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.bg, %i.ax
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i, %bb.c
  %.merged.i.i.i.i.i.i.i = phi { i64, i64 } [ %i.bc, %._crit_edge.i.i.i.i.i.i.i ], [ %i.ba, %bb.c ] ; 2 uses
  %i.bh = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i.i, 0
  %i.bi = trunc nuw i64 %i.bh to i1
  br i1 %i.bi, label %bb.e, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.i.i.i

bb.e:                                             ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i.i
  %i.bj = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i.i, 1
  %i.bk = add i64 %i.aw, 1
  %i.bl = add i64 %i.bk, %i.bj                    ; 9 uses
  %.not11.i.i.i.i.i.i = icmp ult i64 %i.bl, %i.k
  %.not12.i.i.i.i.i.i = icmp ugt i64 %i.bl, %.val1.i.i.i.i.i
  %or.cond.i.i.i.i.i.i = or i1 %.not11.i.i.i.i.i.i, %.not12.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.bm = icmp ult i64 %i.g, %i.bl
  br i1 %i.bm, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.bn = sub nuw i64 %i.bl, %i.k
  %i.bo = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.bn
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.bo, ptr nonnull %i.h, i64 %i.k), !noalias !358
  %i.bp = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.bp, label %select.unfold.i.i.i, label %bb.f

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.i.i.i: ; preds = %bb.f, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i.i, %.lr.ph.split.i.i.i
  %i.bq = phi i64 [ %i.au, %.lr.ph.split.i.i.i ], [ %i.bl, %bb.f ], [ %i.g, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i.i ]
  store i8 1, ptr %i.b, align 1, !alias.scope !359, !noalias !338
  %.not.i3.i.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i, %.lcssa1314.i.i.i
  %or.cond.not.i.i.i.i.i.i = select i1 %i.q, i1 true, i1 %.not.i3.i.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i.i, label %select.unfold.i.i.i, label %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtBc_3str4iter14SplitInclusivecENCNvCs89JjGp7luZU_4stdx11trim_indent0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringB3_NtB2T_13SpecExtendStr16spec_extend_into0EB1w_.exit

select.unfold.i.i.i:                              ; preds = %bb.g, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.i.i.i
  %i.br = phi i64 [ %i.bq, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.i.i.i ], [ %i.bl, %bb.g ]
  %.lcssa12.i.i.i = phi i64 [ %.lcssa1314.i.i.i, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.i.i.i ], [ %i.bl, %bb.g ]
  %i.bs = phi i1 [ true, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.i.i.i ], [ false, %bb.g ]
  %.pn.i.i.i = phi i64 [ %.pre2.i.i.i.i.i.i, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.i.i.i ], [ %i.bl, %bb.g ]
  %.sroa.4.1.i.i.i.i.i = sub nuw i64 %.pn.i.i.i, %.lcssa1314.i.i.i ; 4 uses
  %.sroa.0.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.lcssa1314.i.i.i ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349)
  %.not.i.i.i.i.i = icmp ugt i64 %.sroa.4.1.i.i.i.i.i, %i.r
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %select.unfold.i.i.i
  br i1 %i.s, label %_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i, i64 %i.r
  %i.bu = load i8, ptr %i.bt, align 1, !alias.scope !354, !noalias !353, !noundef !5
  %i.bv = icmp sgt i8 %i.bu, -65
  br i1 %i.bv, label %_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i.i.i, label %.split.us.i.i.i

_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.bw = sub nuw i64 %.sroa.4.1.i.i.i.i.i, %i.r
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i, i64 %i.r
  %i.by = insertvalue { ptr, i64 } poison, ptr %i.bx, 0
  %i.bz = insertvalue { ptr, i64 } %i.by, i64 %i.bw, 1
  br label %_RNCNvCs89JjGp7luZU_4stdx11trim_indent0B3_.exit.i.i.i.i

bb.j:                                             ; preds = %select.unfold.i.i.i
  %i.ca = tail call { ptr, i64 } @_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchescECs89JjGp7luZU_4stdx(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.i, i64 noundef %.sroa.4.1.i.i.i.i.i, i32 noundef 32), !noalias !353
  br label %_RNCNvCs89JjGp7luZU_4stdx11trim_indent0B3_.exit.i.i.i.i

.split.us.i.i.i:                                  ; preds = %bb.i, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.us.us.us.i.i.i
  %.us-phi.i.i.i = phi i64 [ %i.w, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.us.us.us.i.i.i ], [ %.sroa.4.1.i.i.i.i.i, %bb.i ] ; 2 uses
  %.us-phi18.i.i.i = phi ptr [ %.sroa.0.1.i.i.us.i.i.i, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.us.us.us.i.i.i ], [ %.sroa.0.1.i.i.i.i.i, %bb.i ]
  tail call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.us-phi18.i.i.i, i64 noundef %.us-phi.i.i.i, i64 noundef %i.r, i64 noundef %.us-phi.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #22, !noalias !353
  unreachable

_RNCNvCs89JjGp7luZU_4stdx11trim_indent0B3_.exit.i.i.i.i: ; preds = %bb.j, %_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i.i.i
  %.merged.i.i.i.i.i = phi { ptr, i64 } [ %i.ca, %bb.j ], [ %i.bz, %_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i.i.i ] ; 2 uses
  %i.cb = extractvalue { ptr, i64 } %.merged.i.i.i.i.i, 1 ; 4 uses
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs89JjGp7luZU_4stdx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.cb), !noalias !350
  %i.cc = load i64, ptr %i.t, align 8, !alias.scope !351, !noalias !352, !noundef !5 ; 3 uses
  %i.cd = icmp sgt i64 %i.cc, -1
  tail call void @llvm.assume(i1 %i.cd)
  %.not.i.i.i.i5.i.i.i = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.i.i5.i.i.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldReBU_uNCNvCs89JjGp7luZU_4stdx11trim_indent0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBU_NCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtB4_3MapINtNtNtBa_3str4iter14SplitInclusivecEB10_ENtB2F_13SpecExtendStr16spec_extend_into0E0E0B14_.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %_RNCNvCs89JjGp7luZU_4stdx11trim_indent0B3_.exit.i.i.i.i
  %i.ce = extractvalue { ptr, i64 } %.merged.i.i.i.i.i, 0
  %i.cf = load ptr, ptr %i.u, align 8, !alias.scope !351, !noalias !352, !nonnull !5, !noundef !5
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cc
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cg, ptr nonnull readonly align 1 %i.ce, i64 %i.cb, i1 false), !noalias !353
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.t, align 8, !alias.scope !351, !noalias !352
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldReBU_uNCNvCs89JjGp7luZU_4stdx11trim_indent0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBU_NCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtB4_3MapINtNtNtBa_3str4iter14SplitInclusivecEB10_ENtB2F_13SpecExtendStr16spec_extend_into0E0E0B14_.exit.i.i.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldReBU_uNCNvCs89JjGp7luZU_4stdx11trim_indent0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBU_NCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtB4_3MapINtNtNtBa_3str4iter14SplitInclusivecEB10_ENtB2F_13SpecExtendStr16spec_extend_into0E0E0B14_.exit.i.i.i: ; preds = %bb.k, %_RNCNvCs89JjGp7luZU_4stdx11trim_indent0B3_.exit.i.i.i.i
  %i.ch = phi i64 [ %.pre.i.i.i.i.i.i.i, %bb.k ], [ %i.cc, %_RNCNvCs89JjGp7luZU_4stdx11trim_indent0B3_.exit.i.i.i.i ]
  %i.ci = add i64 %i.ch, %i.cb
  store i64 %i.ci, ptr %i.t, align 8, !alias.scope !351, !noalias !352
  br i1 %i.bs, label %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtBc_3str4iter14SplitInclusivecENCNvCs89JjGp7luZU_4stdx11trim_indent0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringB3_NtB2T_13SpecExtendStr16spec_extend_into0EB1w_.exit, label %.lr.ph.split.i.i.i

_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtBc_3str4iter14SplitInclusivecENCNvCs89JjGp7luZU_4stdx11trim_indent0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringB3_NtB2T_13SpecExtendStr16spec_extend_into0EB1w_.exit: ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.i.i.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldReBU_uNCNvCs89JjGp7luZU_4stdx11trim_indent0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBU_NCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtB4_3MapINtNtNtBa_3str4iter14SplitInclusivecEB10_ENtB2F_13SpecExtendStr16spec_extend_into0E0E0B14_.exit.i.i.i, %bb.a, %.lr.ph.split.us.split.us.split.us.split.split.us.i.i.i, %_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.us.us.us.i.i.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldReBU_uNCNvCs89JjGp7luZU_4stdx11trim_indent0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBU_NCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtB4_3MapINtNtNtBa_3str4iter14SplitInclusivecEB10_ENtB2F_13SpecExtendStr16spec_extend_into0E0E0B14_.exit.us.us.i.i.i, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.us.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !338
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtBH_3str4iter14SplitInclusivecENCNvCs89JjGp7luZU_4stdx9dedent_by0ENtB5_13SpecExtendStr16spec_extend_intoB21_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 13 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !alias.scope !396, !nonnull !5, !noundef !5
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !397
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx, i64 72, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !398)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !399)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !400)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !402)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 65 ; 2 uses
  %.promoted.i.i.i = load i8, ptr %i.b, align 1, !alias.scope !403, !noalias !397
  %.promoted12.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !400, !noalias !397 ; 4 uses
  %i.c = trunc nuw i8 %.promoted.i.i.i to i1
  br i1 %i.c, label %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtBc_3str4iter14SplitInclusivecENCNvCs89JjGp7luZU_4stdx9dedent_by0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringB3_NtB2Q_13SpecExtendStr16spec_extend_into0EB1w_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !403, !noalias !397, !nonnull !5, !noundef !5 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.val1.i.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !403, !noalias !397, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !404, !noalias !397, !noundef !5 ; 5 uses
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.g, %.val1.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.j = load i8, ptr %i.i, align 8, !alias.scope !400, !noalias !397 ; 2 uses
  %i.k = zext nneg i8 %i.j to i64                 ; 4 uses
  %i.l = icmp ult i8 %i.j, 5
  %i.m = getelementptr i8, ptr %i.h, i64 %i.k
  %i.n = getelementptr i8, ptr %i.m, i64 -1
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.p = load i8, ptr %i.o, align 8, !range !7, !alias.scope !400, !noalias !397
  %i.q = trunc nuw i8 %i.p to i1                  ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre2.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !alias.scope !400, !noalias !397 ; 4 uses
  %i.r = load i64, ptr %.sroa.0.0.copyload, align 8, !alias.scope !402, !noalias !397
  %.fr49.i.i.i = freeze i64 %i.r                  ; 16 uses
  %i.s = icmp eq i64 %.fr49.i.i.i, 0              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 12 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.preheader.i.i.i

.lr.ph.split.preheader.i.i.i:                     ; preds = %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.promoted16.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !404, !noalias !397
  br label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i
  %.not.i3.i.i.us.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i, %.promoted12.i.i.i
  %or.cond.not.i.i.i.us.i.i.i = select i1 %i.q, i1 true, i1 %.not.i3.i.i.us.i.i.i
  %i.w = sub nuw i64 %.pre2.i.i.i.i.i.i, %.promoted12.i.i.i
  %.fr.i.i.i = freeze i64 %i.w                    ; 11 uses
  %.sroa.0.1.i.i.us.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.promoted12.i.i.i ; 7 uses
  %.not.i.i.i6.us.i.i.i = icmp ult i64 %.fr49.i.i.i, %.fr.i.i.i
  %i.x = icmp eq i64 %.fr49.i.i.i, %.fr.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.us.i.i.i, i64 %.fr49.i.i.i ; 4 uses
  %i.z = sub nuw i64 %.fr.i.i.i, %.fr49.i.i.i     ; 4 uses
  %i.aa = insertvalue { ptr, i64 } poison, ptr %i.y, 0
  %i.ab = insertvalue { ptr, i64 } %i.aa, i64 %i.z, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !407)
  br i1 %or.cond.not.i.i.i.us.i.i.i, label %.lr.ph.split.us.split.us.i.i.i, label %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtBc_3str4iter14SplitInclusivecENCNvCs89JjGp7luZU_4stdx9dedent_by0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringB3_NtB2Q_13SpecExtendStr16spec_extend_into0EB1w_.exit

.lr.ph.split.us.split.us.i.i.i:                   ; preds = %.lr.ph.split.us.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !408)
  br i1 %i.s, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.us.us.us.i.i.i, label %.lr.ph.split.us.split.us.split.i.i.i

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.us.us.us.i.i.i: ; preds = %.lr.ph.split.us.split.us.i.i.i
  %i.ac = tail call { ptr, i64 } @_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchescECs89JjGp7luZU_4stdx(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.us.i.i.i, i64 noundef %.fr.i.i.i, i32 noundef 32), !noalias !409 ; 2 uses
  %i.ad = extractvalue { ptr, i64 } %i.ac, 1      ; 2 uses
  %.not.i.i.us.us.us.not.i.i.i = icmp eq i64 %.fr.i.i.i, %i.ad ; 2 uses
  %spec.select.i.i.i = select i1 %.not.i.i.us.us.us.not.i.i.i, i64 %i.ad, i64 %i.z ; 4 uses
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs89JjGp7luZU_4stdx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %spec.select.i.i.i), !noalias !410
  %i.ae = load i64, ptr %i.t, align 8, !alias.scope !411, !noalias !412, !noundef !5 ; 3 uses
  %i.af = icmp sgt i64 %i.ae, -1
  tail call void @llvm.assume(i1 %i.af)
  %.not.i.i.i.i5.us.us.us.i.i.i = icmp eq i64 %spec.select.i.i.i, 0
  br i1 %.not.i.i.i.i5.us.us.us.i.i.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldReBU_uNCNvCs89JjGp7luZU_4stdx9dedent_by0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBU_NCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtB4_3MapINtNtNtBa_3str4iter14SplitInclusivecEB10_ENtB2C_13SpecExtendStr16spec_extend_into0E0E0B14_.exit.us.us.us.i.i.i, label %bb.b

bb.b:                                             ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.us.us.us.i.i.i
  %i.ag = extractvalue { ptr, i64 } %i.ac, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  %i.ah = select i1 %.not.i.i.us.us.us.not.i.i.i, ptr %i.ag, ptr %i.y
  %i.ai = load ptr, ptr %i.u, align 8, !alias.scope !411, !noalias !412, !nonnull !5, !noundef !5
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ae
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr nonnull readonly align 1 %i.ah, i64 %spec.select.i.i.i, i1 false), !noalias !413
  %.pre.i.i.i.i.us.us.us.i.i.i = load i64, ptr %i.t, align 8, !alias.scope !411, !noalias !412
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldReBU_uNCNvCs89JjGp7luZU_4stdx9dedent_by0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBU_NCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtB4_3MapINtNtNtBa_3str4iter14SplitInclusivecEB10_ENtB2C_13SpecExtendStr16spec_extend_into0E0E0B14_.exit.us.us.us.i.i.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldReBU_uNCNvCs89JjGp7luZU_4stdx9dedent_by0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBU_NCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtB4_3MapINtNtNtBa_3str4iter14SplitInclusivecEB10_ENtB2C_13SpecExtendStr16spec_extend_into0E0E0B14_.exit.us.us.us.i.i.i: ; preds = %bb.b, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.us.us.us.i.i.i
  %i.ak = phi i64 [ %.pre.i.i.i.i.us.us.us.i.i.i, %bb.b ], [ %i.ae, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.us.us.us.i.i.i ]
  %i.al = add i64 %i.ak, %spec.select.i.i.i
  br label %._crit_edge.sink.split.i.i.i

.lr.ph.split.us.split.us.split.i.i.i:             ; preds = %.lr.ph.split.us.split.us.i.i.i
  br i1 %.not.i.i.i6.us.i.i.i, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.us.us.us24.i.i.i, label %.lr.ph.split.us.split.us.split.split.i.i.i

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.us.us.us24.i.i.i: ; preds = %.lr.ph.split.us.split.us.split.i.i.i
  %i.am = tail call { ptr, i64 } @_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchescECs89JjGp7luZU_4stdx(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.us.i.i.i, i64 noundef %.fr.i.i.i, i32 noundef 32), !noalias !409 ; 2 uses
  %i.an = extractvalue { ptr, i64 } %i.am, 1      ; 2 uses
  %i.ao = sub i64 %.fr.i.i.i, %i.an
  %.not.i.i.us.us.us25.i.i.i = icmp ugt i64 %i.ao, %.fr49.i.i.i
  br i1 %.not.i.i.us.us.us25.i.i.i, label %bb.c, label %_RNCNvCs89JjGp7luZU_4stdx9dedent_by0B3_.exit.i.us.us.us27.i.i.i

bb.c:                                             ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.us.us.us24.i.i.i
  %i.ap = load i8, ptr %i.y, align 1, !alias.scope !414, !noalias !409, !noundef !5
  %i.aq = icmp sgt i8 %i.ap, -65
  br i1 %i.aq, label %_RNCNvCs89JjGp7luZU_4stdx9dedent_by0B3_.exit.i.us.us.us27.i.i.i, label %.split.us.i.i.i

_RNCNvCs89JjGp7luZU_4stdx9dedent_by0B3_.exit.i.us.us.us27.i.i.i: ; preds = %bb.c, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.us.us.us24.i.i.i
  %.pre-phi.i.us.us.us28.i.i.i = phi i64 [ %i.an, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.us.us.us24.i.i.i ], [ %i.z, %bb.c ] ; 4 uses
  %.merged.i.i.us.us.us29.i.i.i = phi { ptr, i64 } [ %i.am, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.us.us.us24.i.i.i ], [ %i.ab, %bb.c ]
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs89JjGp7luZU_4stdx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre-phi.i.us.us.us28.i.i.i), !noalias !410
  %i.ar = load i64, ptr %i.t, align 8, !alias.scope !411, !noalias !412, !noundef !5 ; 3 uses
  %i.as = icmp sgt i64 %i.ar, -1
  tail call void @llvm.assume(i1 %i.as)
  %.not.i.i.i.i5.us.us.us30.i.i.i = icmp eq i64 %.pre-phi.i.us.us.us28.i.i.i, 0
  br i1 %.not.i.i.i.i5.us.us.us30.i.i.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldReBU_uNCNvCs89JjGp7luZU_4stdx9dedent_by0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBU_NCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtB4_3MapINtNtNtBa_3str4iter14SplitInclusivecEB10_ENtB2C_13SpecExtendStr16spec_extend_into0E0E0B14_.exit.us.us.us32.i.i.i, label %bb.d

bb.d:                                             ; preds = %_RNCNvCs89JjGp7luZU_4stdx9dedent_by0B3_.exit.i.us.us.us27.i.i.i
  %i.at = extractvalue { ptr, i64 } %.merged.i.i.us.us.us29.i.i.i, 0
  %i.au = load ptr, ptr %i.u, align 8, !alias.scope !411, !noalias !412, !nonnull !5, !noundef !5
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ar
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.av, ptr nonnull readonly align 1 %i.at, i64 %.pre-phi.i.us.us.us28.i.i.i, i1 false), !noalias !413
  %.pre.i.i.i.i.us.us.us31.i.i.i = load i64, ptr %i.t, align 8, !alias.scope !411, !noalias !412
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldReBU_uNCNvCs89JjGp7luZU_4stdx9dedent_by0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBU_NCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtB4_3MapINtNtNtBa_3str4iter14SplitInclusivecEB10_ENtB2C_13SpecExtendStr16spec_extend_into0E0E0B14_.exit.us.us.us32.i.i.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldReBU_uNCNvCs89JjGp7luZU_4stdx9dedent_by0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBU_NCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtB4_3MapINtNtNtBa_3str4iter14SplitInclusivecEB10_ENtB2C_13SpecExtendStr16spec_extend_into0E0E0B14_.exit.us.us.us32.i.i.i: ; preds = %bb.d, %_RNCNvCs89JjGp7luZU_4stdx9dedent_by0B3_.exit.i.us.us.us27.i.i.i
  %i.aw = phi i64 [ %.pre.i.i.i.i.us.us.us31.i.i.i, %bb.d ], [ %i.ar, %_RNCNvCs89JjGp7luZU_4stdx9dedent_by0B3_.exit.i.us.us.us27.i.i.i ]
  %i.ax = add i64 %i.aw, %.pre-phi.i.us.us.us28.i.i.i
  br label %._crit_edge.sink.split.i.i.i

.lr.ph.split.us.split.us.split.split.i.i.i:       ; preds = %.lr.ph.split.us.split.us.split.i.i.i
  br i1 %i.x, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.us.us.us36.i.i.i, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.us.us.i.i.i

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.us.us.us36.i.i.i: ; preds = %.lr.ph.split.us.split.us.split.split.i.i.i
  %i.ay = tail call { ptr, i64 } @_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchescECs89JjGp7luZU_4stdx(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.us.i.i.i, i64 noundef %.fr49.i.i.i, i32 noundef 32), !noalias !409 ; 2 uses
  %i.az = extractvalue { ptr, i64 } %i.ay, 1      ; 2 uses
  %.not.i.i.us.us.us37.i.i.i = icmp ugt i64 %i.az, %.fr49.i.i.i ; 2 uses
  %spec.select47.i.i.i = select i1 %.not.i.i.us.us.us37.i.i.i, i64 %i.z, i64 %i.az ; 4 uses
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs89JjGp7luZU_4stdx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %spec.select47.i.i.i), !noalias !410
  %i.ba = load i64, ptr %i.t, align 8, !alias.scope !411, !noalias !412, !noundef !5 ; 3 uses
  %i.bb = icmp sgt i64 %i.ba, -1
  tail call void @llvm.assume(i1 %i.bb)
  %.not.i.i.i.i5.us.us.us42.i.i.i = icmp eq i64 %spec.select47.i.i.i, 0
  br i1 %.not.i.i.i.i5.us.us.us42.i.i.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldReBU_uNCNvCs89JjGp7luZU_4stdx9dedent_by0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBU_NCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtB4_3MapINtNtNtBa_3str4iter14SplitInclusivecEB10_ENtB2C_13SpecExtendStr16spec_extend_into0E0E0B14_.exit.us.us.us44.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.us.us.us36.i.i.i
  %i.bc = extractvalue { ptr, i64 } %i.ay, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bc) ]
  %i.bd = select i1 %.not.i.i.us.us.us37.i.i.i, ptr %i.y, ptr %i.bc
  %i.be = load ptr, ptr %i.u, align 8, !alias.scope !411, !noalias !412, !nonnull !5, !noundef !5
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.ba
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bf, ptr nonnull readonly align 1 %i.bd, i64 %spec.select47.i.i.i, i1 false), !noalias !413
  %.pre.i.i.i.i.us.us.us43.i.i.i = load i64, ptr %i.t, align 8, !alias.scope !411, !noalias !412
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldReBU_uNCNvCs89JjGp7luZU_4stdx9dedent_by0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBU_NCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtB4_3MapINtNtNtBa_3str4iter14SplitInclusivecEB10_ENtB2C_13SpecExtendStr16spec_extend_into0E0E0B14_.exit.us.us.us44.i.i.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldReBU_uNCNvCs89JjGp7luZU_4stdx9dedent_by0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBU_NCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtB4_3MapINtNtNtBa_3str4iter14SplitInclusivecEB10_ENtB2C_13SpecExtendStr16spec_extend_into0E0E0B14_.exit.us.us.us44.i.i.i: ; preds = %bb.e, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.us.us.us36.i.i.i
  %i.bg = phi i64 [ %.pre.i.i.i.i.us.us.us43.i.i.i, %bb.e ], [ %i.ba, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.us.us.us36.i.i.i ]
  %i.bh = add i64 %i.bg, %spec.select47.i.i.i
  br label %._crit_edge.sink.split.i.i.i

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.us.us.i.i.i: ; preds = %.lr.ph.split.us.split.us.split.split.i.i.i
  %i.bi = tail call { ptr, i64 } @_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchescECs89JjGp7luZU_4stdx(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.us.i.i.i, i64 noundef %.fr.i.i.i, i32 noundef 32), !noalias !409 ; 2 uses
  %i.bj = extractvalue { ptr, i64 } %i.bi, 0      ; 2 uses
  %i.bk = extractvalue { ptr, i64 } %i.bi, 1      ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bj) ]
  %i.bl = sub i64 %.fr.i.i.i, %i.bk
  %.not.i.i.us.us.i.i.i = icmp ugt i64 %i.bl, %.fr49.i.i.i
  br i1 %.not.i.i.us.us.i.i.i, label %.split.us.i.i.i, label %_RNCNvCs89JjGp7luZU_4stdx9dedent_by0B3_.exit.i.us.us.i.i.i

_RNCNvCs89JjGp7luZU_4stdx9dedent_by0B3_.exit.i.us.us.i.i.i: ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.us.us.i.i.i
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs89JjGp7luZU_4stdx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.bk), !noalias !410
  %i.bm = load i64, ptr %i.t, align 8, !alias.scope !411, !noalias !412, !noundef !5 ; 3 uses
  %i.bn = icmp sgt i64 %i.bm, -1
  tail call void @llvm.assume(i1 %i.bn)
  %.not.i.i.i.i5.us.us.i.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i.i.i5.us.us.i.i.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldReBU_uNCNvCs89JjGp7luZU_4stdx9dedent_by0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBU_NCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtB4_3MapINtNtNtBa_3str4iter14SplitInclusivecEB10_ENtB2C_13SpecExtendStr16spec_extend_into0E0E0B14_.exit.us.us.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RNCNvCs89JjGp7luZU_4stdx9dedent_by0B3_.exit.i.us.us.i.i.i
  %i.bo = load ptr, ptr %i.u, align 8, !alias.scope !411, !noalias !412, !nonnull !5, !noundef !5
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bm
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bp, ptr nonnull readonly align 1 %i.bj, i64 %i.bk, i1 false), !noalias !413
  %.pre.i.i.i.i.us.us.i.i.i = load i64, ptr %i.t, align 8, !alias.scope !411, !noalias !412
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldReBU_uNCNvCs89JjGp7luZU_4stdx9dedent_by0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBU_NCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtB4_3MapINtNtNtBa_3str4iter14SplitInclusivecEB10_ENtB2C_13SpecExtendStr16spec_extend_into0E0E0B14_.exit.us.us.i.i.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldReBU_uNCNvCs89JjGp7luZU_4stdx9dedent_by0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBU_NCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtB4_3MapINtNtNtBa_3str4iter14SplitInclusivecEB10_ENtB2C_13SpecExtendStr16spec_extend_into0E0E0B14_.exit.us.us.i.i.i: ; preds = %bb.f, %_RNCNvCs89JjGp7luZU_4stdx9dedent_by0B3_.exit.i.us.us.i.i.i
  %i.bq = phi i64 [ %.pre.i.i.i.i.us.us.i.i.i, %bb.f ], [ %i.bm, %_RNCNvCs89JjGp7luZU_4stdx9dedent_by0B3_.exit.i.us.us.i.i.i ]
  %i.br = add i64 %i.bq, %i.bk
  br label %._crit_edge.sink.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldReBU_uNCNvCs89JjGp7luZU_4stdx9dedent_by0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBU_NCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtB4_3MapINtNtNtBa_3str4iter14SplitInclusivecEB10_ENtB2C_13SpecExtendStr16spec_extend_into0E0E0B14_.exit.i.i.i, %.lr.ph.split.preheader.i.i.i
  %i.bs = phi i64 [ %i.cp, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldReBU_uNCNvCs89JjGp7luZU_4stdx9dedent_by0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBU_NCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtB4_3MapINtNtNtBa_3str4iter14SplitInclusivecEB10_ENtB2C_13SpecExtendStr16spec_extend_into0E0E0B14_.exit.i.i.i ], [ %.promoted16.i.i.i, %.lr.ph.split.preheader.i.i.i ] ; 3 uses
  %.lcssa1415.i.i.i = phi i64 [ %.lcssa13.i.i.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldReBU_uNCNvCs89JjGp7luZU_4stdx9dedent_by0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBU_NCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtB4_3MapINtNtNtBa_3str4iter14SplitInclusivecEB10_ENtB2C_13SpecExtendStr16spec_extend_into0E0E0B14_.exit.i.i.i ], [ %.promoted12.i.i.i, %.lr.ph.split.preheader.i.i.i ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !407)
  %i.bt = icmp ult i64 %i.g, %i.bs
  br i1 %i.bt, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i.i

.lr.ph.split.preheader.i.i.i.i.i.i:               ; preds = %.lr.ph.split.i.i.i
  tail call void @llvm.assume(i1 %i.l)
  %.pre.i.i.i.i.i.i = load i8, ptr %i.n, align 1, !alias.scope !404, !noalias !397 ; 2 uses
  br label %.lr.ph.split.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i:                         ; preds = %bb.j, %.lr.ph.split.preheader.i.i.i.i.i.i
  %i.bu = phi i64 [ %i.cj, %bb.j ], [ %i.bs, %.lr.ph.split.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.bv = sub nuw i64 %i.g, %i.bu                 ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.bu ; 2 uses
  %i.bx = icmp samesign ult i64 %i.bv, 16
  br i1 %i.bx, label %.preheader.i.i.i.i.i.i.i, label %bb.g

.preheader.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.split.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.bv, 0
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.split.i.i.i.i.i.i
  %i.by = tail call { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bw, i64 noundef range(i64 0, -9223372036854775808) %i.bv), !noalias !415
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i ], [ %i.bv, %bb.h ], [ %.sroa.01.05.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i ], [ 0, %bb.h ], [ 1, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bz = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i.i.i, 0
  %i.ca = insertvalue { i64, i64 } %i.bz, i64 %.sroa.01.0.lcssa.i.i.i.i.i.i.i, 1
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.i.i, %bb.h
  %.sroa.01.05.i.i.i.i.i.i.i = phi i64 [ %i.ce, %bb.h ], [ 0, %.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.sroa.01.05.i.i.i.i.i.i.i
  %i.cc = load i8, ptr %i.cb, align 1, !alias.scope !416, !noalias !415, !noundef !5
  %i.cd = icmp eq i8 %i.cc, %.pre.i.i.i.i.i.i
  br i1 %i.cd, label %._crit_edge.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ce = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.ce, %i.bv
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i, %bb.g
  %.merged.i.i.i.i.i.i.i = phi { i64, i64 } [ %i.ca, %._crit_edge.i.i.i.i.i.i.i ], [ %i.by, %bb.g ] ; 2 uses
  %i.cf = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i.i, 0
  %i.cg = trunc nuw i64 %i.cf to i1
  br i1 %i.cg, label %bb.i, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.i.i.i

bb.i:                                             ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i.i
  %i.ch = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i.i, 1
  %i.ci = add i64 %i.bu, 1
  %i.cj = add i64 %i.ci, %i.ch                    ; 9 uses
  %.not11.i.i.i.i.i.i = icmp ult i64 %i.cj, %i.k
  %.not12.i.i.i.i.i.i = icmp ugt i64 %i.cj, %.val1.i.i.i.i.i
  %or.cond.i.i.i.i.i.i = or i1 %.not11.i.i.i.i.i.i, %.not12.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.ck = icmp ult i64 %i.g, %i.cj
  br i1 %i.ck, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.cl = sub nuw i64 %i.cj, %i.k
  %i.cm = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.cl
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.cm, ptr nonnull %i.h, i64 %i.k), !noalias !417
  %i.cn = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.cn, label %select.unfold.i.i.i, label %bb.j

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.i.i.i: ; preds = %bb.j, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i.i, %.lr.ph.split.i.i.i
  %i.co = phi i64 [ %i.bs, %.lr.ph.split.i.i.i ], [ %i.cj, %bb.j ], [ %i.g, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i.i ]
  store i8 1, ptr %i.b, align 1, !alias.scope !418, !noalias !397
  %.not.i3.i.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i, %.lcssa1415.i.i.i
  %or.cond.not.i.i.i.i.i.i = select i1 %i.q, i1 true, i1 %.not.i3.i.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i.i, label %select.unfold.i.i.i, label %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtBc_3str4iter14SplitInclusivecENCNvCs89JjGp7luZU_4stdx9dedent_by0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringB3_NtB2Q_13SpecExtendStr16spec_extend_into0EB1w_.exit

select.unfold.i.i.i:                              ; preds = %bb.k, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.i.i.i
  %i.cp = phi i64 [ %i.co, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.i.i.i ], [ %i.cj, %bb.k ]
  %.lcssa13.i.i.i = phi i64 [ %.lcssa1415.i.i.i, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.i.i.i ], [ %i.cj, %bb.k ]
  %i.cq = phi i1 [ true, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.i.i.i ], [ false, %bb.k ]
  %.pn.i.i.i = phi i64 [ %.pre2.i.i.i.i.i.i, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.i.i.i ], [ %i.cj, %bb.k ]
  %.sroa.4.1.i.i.i.i.i = sub nuw i64 %.pn.i.i.i, %.lcssa1415.i.i.i ; 7 uses
  %.sroa.0.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.lcssa1415.i.i.i ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !408)
  %i.cr = tail call { ptr, i64 } @_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchescECs89JjGp7luZU_4stdx(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.i, i64 noundef %.sroa.4.1.i.i.i.i.i, i32 noundef 32), !noalias !413 ; 2 uses
  %i.cs = extractvalue { ptr, i64 } %i.cr, 1      ; 2 uses
  %i.ct = sub i64 %.sroa.4.1.i.i.i.i.i, %i.cs
  %.not.i.i.i.i.i = icmp ugt i64 %i.ct, %.fr49.i.i.i
  br i1 %.not.i.i.i.i.i, label %bb.l, label %_RNCNvCs89JjGp7luZU_4stdx9dedent_by0B3_.exit.i.i.i.i

bb.l:                                             ; preds = %select.unfold.i.i.i
  br i1 %i.s, label %_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i.i.i6.i.i.i = icmp ult i64 %.fr49.i.i.i, %.sroa.4.1.i.i.i.i.i
  br i1 %.not.i.i.i6.i.i.i, label %bb.n, label %.split.i.i.i.i.i.i

.split.i.i.i.i.i.i:                               ; preds = %bb.m
  %i.cu = icmp eq i64 %.fr49.i.i.i, %.sroa.4.1.i.i.i.i.i
  br i1 %i.cu, label %_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i.i.i, label %.split.us.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i, i64 %.fr49.i.i.i
  %i.cw = load i8, ptr %i.cv, align 1, !alias.scope !414, !noalias !413, !noundef !5
  %i.cx = icmp sgt i8 %i.cw, -65
  br i1 %i.cx, label %_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i.i.i, label %.split.us.i.i.i

_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i.i.i: ; preds = %bb.n, %.split.i.i.i.i.i.i, %bb.l
  %i.cy = sub nuw i64 %.sroa.4.1.i.i.i.i.i, %.fr49.i.i.i ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i, i64 %.fr49.i.i.i
  %i.da = insertvalue { ptr, i64 } poison, ptr %i.cz, 0
  %i.db = insertvalue { ptr, i64 } %i.da, i64 %i.cy, 1
  br label %_RNCNvCs89JjGp7luZU_4stdx9dedent_by0B3_.exit.i.i.i.i

.split.us.i.i.i:                                  ; preds = %bb.n, %.split.i.i.i.i.i.i, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.us.us.i.i.i, %bb.c
  %.us-phi.i.i.i = phi i64 [ %.fr.i.i.i, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.us.us.i.i.i ], [ %.fr.i.i.i, %bb.c ], [ %.sroa.4.1.i.i.i.i.i, %.split.i.i.i.i.i.i ], [ %.sroa.4.1.i.i.i.i.i, %bb.n ] ; 2 uses
  %.us-phi19.i.i.i = phi ptr [ %.sroa.0.1.i.i.us.i.i.i, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.us.us.i.i.i ], [ %.sroa.0.1.i.i.us.i.i.i, %bb.c ], [ %.sroa.0.1.i.i.i.i.i, %.split.i.i.i.i.i.i ], [ %.sroa.0.1.i.i.i.i.i, %bb.n ]
  tail call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.us-phi19.i.i.i, i64 noundef %.us-phi.i.i.i, i64 noundef %.fr49.i.i.i, i64 noundef %.us-phi.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22, !noalias !413
  unreachable

_RNCNvCs89JjGp7luZU_4stdx9dedent_by0B3_.exit.i.i.i.i: ; preds = %_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i.i.i, %select.unfold.i.i.i
  %.pre-phi.i.i.i.i = phi i64 [ %i.cs, %select.unfold.i.i.i ], [ %i.cy, %_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i.i.i ] ; 4 uses
  %.merged.i.i.i.i.i = phi { ptr, i64 } [ %i.cr, %select.unfold.i.i.i ], [ %i.db, %_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i.i.i ]
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs89JjGp7luZU_4stdx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre-phi.i.i.i.i), !noalias !410
  %i.dc = load i64, ptr %i.t, align 8, !alias.scope !411, !noalias !412, !noundef !5 ; 3 uses
  %i.dd = icmp sgt i64 %i.dc, -1
  tail call void @llvm.assume(i1 %i.dd)
  %.not.i.i.i.i5.i.i.i = icmp eq i64 %.pre-phi.i.i.i.i, 0
  br i1 %.not.i.i.i.i5.i.i.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldReBU_uNCNvCs89JjGp7luZU_4stdx9dedent_by0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBU_NCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtB4_3MapINtNtNtBa_3str4iter14SplitInclusivecEB10_ENtB2C_13SpecExtendStr16spec_extend_into0E0E0B14_.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %_RNCNvCs89JjGp7luZU_4stdx9dedent_by0B3_.exit.i.i.i.i
  %i.de = extractvalue { ptr, i64 } %.merged.i.i.i.i.i, 0
  %i.df = load ptr, ptr %i.u, align 8, !alias.scope !411, !noalias !412, !nonnull !5, !noundef !5
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dc
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dg, ptr nonnull readonly align 1 %i.de, i64 %.pre-phi.i.i.i.i, i1 false), !noalias !413
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.t, align 8, !alias.scope !411, !noalias !412
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldReBU_uNCNvCs89JjGp7luZU_4stdx9dedent_by0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBU_NCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtB4_3MapINtNtNtBa_3str4iter14SplitInclusivecEB10_ENtB2C_13SpecExtendStr16spec_extend_into0E0E0B14_.exit.i.i.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldReBU_uNCNvCs89JjGp7luZU_4stdx9dedent_by0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBU_NCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtB4_3MapINtNtNtBa_3str4iter14SplitInclusivecEB10_ENtB2C_13SpecExtendStr16spec_extend_into0E0E0B14_.exit.i.i.i: ; preds = %bb.o, %_RNCNvCs89JjGp7luZU_4stdx9dedent_by0B3_.exit.i.i.i.i
  %i.dh = phi i64 [ %.pre.i.i.i.i.i.i.i, %bb.o ], [ %i.dc, %_RNCNvCs89JjGp7luZU_4stdx9dedent_by0B3_.exit.i.i.i.i ]
  %i.di = add i64 %i.dh, %.pre-phi.i.i.i.i
  store i64 %i.di, ptr %i.t, align 8, !alias.scope !411, !noalias !412
  br i1 %i.cq, label %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtBc_3str4iter14SplitInclusivecENCNvCs89JjGp7luZU_4stdx9dedent_by0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringB3_NtB2Q_13SpecExtendStr16spec_extend_into0EB1w_.exit, label %.lr.ph.split.i.i.i

._crit_edge.sink.split.i.i.i:                     ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldReBU_uNCNvCs89JjGp7luZU_4stdx9dedent_by0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBU_NCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtB4_3MapINtNtNtBa_3str4iter14SplitInclusivecEB10_ENtB2C_13SpecExtendStr16spec_extend_into0E0E0B14_.exit.us.us.i.i.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldReBU_uNCNvCs89JjGp7luZU_4stdx9dedent_by0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBU_NCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtB4_3MapINtNtNtBa_3str4iter14SplitInclusivecEB10_ENtB2C_13SpecExtendStr16spec_extend_into0E0E0B14_.exit.us.us.us44.i.i.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldReBU_uNCNvCs89JjGp7luZU_4stdx9dedent_by0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBU_NCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtB4_3MapINtNtNtBa_3str4iter14SplitInclusivecEB10_ENtB2C_13SpecExtendStr16spec_extend_into0E0E0B14_.exit.us.us.us32.i.i.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldReBU_uNCNvCs89JjGp7luZU_4stdx9dedent_by0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBU_NCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtB4_3MapINtNtNtBa_3str4iter14SplitInclusivecEB10_ENtB2C_13SpecExtendStr16spec_extend_into0E0E0B14_.exit.us.us.us.i.i.i
  %.sink.i.i.i = phi i64 [ %i.al, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldReBU_uNCNvCs89JjGp7luZU_4stdx9dedent_by0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBU_NCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtB4_3MapINtNtNtBa_3str4iter14SplitInclusivecEB10_ENtB2C_13SpecExtendStr16spec_extend_into0E0E0B14_.exit.us.us.us.i.i.i ], [ %i.br, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldReBU_uNCNvCs89JjGp7luZU_4stdx9dedent_by0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBU_NCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtB4_3MapINtNtNtBa_3str4iter14SplitInclusivecEB10_ENtB2C_13SpecExtendStr16spec_extend_into0E0E0B14_.exit.us.us.i.i.i ], [ %i.bh, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldReBU_uNCNvCs89JjGp7luZU_4stdx9dedent_by0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBU_NCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtB4_3MapINtNtNtBa_3str4iter14SplitInclusivecEB10_ENtB2C_13SpecExtendStr16spec_extend_into0E0E0B14_.exit.us.us.us44.i.i.i ], [ %i.ax, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldReBU_uNCNvCs89JjGp7luZU_4stdx9dedent_by0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBU_NCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtB4_3MapINtNtNtBa_3str4iter14SplitInclusivecEB10_ENtB2C_13SpecExtendStr16spec_extend_into0E0E0B14_.exit.us.us.us32.i.i.i ]
  store i64 %.sink.i.i.i, ptr %i.t, align 8, !alias.scope !411, !noalias !412
  br label %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtBc_3str4iter14SplitInclusivecENCNvCs89JjGp7luZU_4stdx9dedent_by0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringB3_NtB2Q_13SpecExtendStr16spec_extend_into0EB1w_.exit

_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtBc_3str4iter14SplitInclusivecENCNvCs89JjGp7luZU_4stdx9dedent_by0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringB3_NtB2Q_13SpecExtendStr16spec_extend_into0EB1w_.exit: ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs89JjGp7luZU_4stdx.exit.i.i.i.i.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldReBU_uNCNvCs89JjGp7luZU_4stdx9dedent_by0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBU_NCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtB4_3MapINtNtNtBa_3str4iter14SplitInclusivecEB10_ENtB2C_13SpecExtendStr16spec_extend_into0E0E0B14_.exit.i.i.i, %bb.a, %.lr.ph.split.us.i.i.i, %._crit_edge.sink.split.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !397
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCshzWfHUSfYae_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCscAsMj0W7j8b_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCshzWfHUSfYae_4core4cell4CellINtNtB1j_6option6OptionNtNtCsM5evIHPibA_17crossbeam_channel7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECs89JjGp7luZU_4stdx(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable_or_null(16)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 -1, 2) i8 @_RNvXs2_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNvYjNtNtBb_3cmp3Ord3cmpINtB7_6FnOnceTRjB1p_EE9call_onceCs89JjGp7luZU_4stdx(ptr noalias nofree noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs89JjGp7luZU_4stdx(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs89JjGp7luZU_4stdx(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs5_NtNtCsbSS6DM8SDEO_5alloc3vec5drainINtB5_5DrainNtNtCsM5evIHPibA_17crossbeam_channel5waker5EntryENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs89JjGp7luZU_4stdx(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare noundef nonnull ptr @_RNvMNtCsM5evIHPibA_17crossbeam_channel7contextNtB2_7Context3new() unnamed_addr #5

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #10

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchescECs89JjGp7luZU_4stdx(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i32 noundef range(i32 0, 1114112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMNtCshzWfHUSfYae_4core3stre16trim_end_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs89JjGp7luZU_4stdx(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCs89JjGp7luZU_4stdx(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMNtCshzWfHUSfYae_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs89JjGp7luZU_4stdx(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs89JjGp7luZU_4stdx(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtNtNtCscAsMj0W7j8b_3std3sys3pal4unix5futex10futex_wake(ptr noundef nonnull align 4) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtCsM5evIHPibA_17crossbeam_channel5waker5EntryE6removeCs89JjGp7luZU_4stdx(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsM5evIHPibA_17crossbeam_channel5waker5EntryE5drainNtNtNtCshzWfHUSfYae_4core3ops5range9RangeFullECs89JjGp7luZU_4stdx(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_RNvMNtCscAsMj0W7j8b_3std4timeNtB2_7Instant3now() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_RNvXs3_NtCscAsMj0W7j8b_3std4timeNtB5_7InstantNtNtNtCshzWfHUSfYae_4core3ops5arith3Sub3sub(i64 noundef, i32 noundef range(i32 0, 1000000000), i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCscAsMj0W7j8b_3std6thread9functions12park_timeout(i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCscAsMj0W7j8b_3std6thread9functions4park() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtNtCscAsMj0W7j8b_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardNtNtCsM5evIHPibA_17crossbeam_channel5waker5WakerEENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCs89JjGp7luZU_4stdx(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.x86.sse2.pause() #11

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCscAsMj0W7j8b_3std6thread9functions9yield_now() unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCscAsMj0W7j8b_3std9panicking11panic_count17is_zero_slow_path() unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtNtNtCscAsMj0W7j8b_3std4sync6poison5mutexINtB5_5MutexNtNtCsM5evIHPibA_17crossbeam_channel5waker5WakerE4lockCs89JjGp7luZU_4stdx(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsM5evIHPibA_17crossbeam_channel5waker5EntryE8grow_oneCs89JjGp7luZU_4stdx(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs89JjGp7luZU_4stdx(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtCsM5evIHPibA_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #14

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #16

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCscAsMj0W7j8b_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCshzWfHUSfYae_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCs89JjGp7luZU_4stdx(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #14 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { cold noreturn nounwind }
attributes #21 = { noinline }
attributes #22 = { noinline noreturn }
attributes #23 = { cold }
attributes #24 = { noreturn }
attributes #25 = { inlinehint }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
end_hunk_0
