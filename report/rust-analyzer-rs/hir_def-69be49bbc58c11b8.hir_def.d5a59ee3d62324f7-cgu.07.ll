Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_def-69be49bbc58c11b8.hir_def.d5a59ee3d62324f7-cgu.07?download=true
inline.NumInlined: 1664
inline.NumDeleted: 903
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_RNvNvXs0_NvNtCsileJQcQObtj_7hir_def9lang_item1__NtB7_31crate_lang_items_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !2291
  store ptr %i.sz, ptr %i.aw, align 8, !noalias !2291
  %i.ta = load atomic i64, ptr %i.sz acquire, align 8, !noalias !2292
  %i.tb = icmp eq i64 %i.ta, 2
  br i1 %i.tb, label %bb.am, label %.noexc728.i, !prof !22

bb.am:                                            ; preds = %.noexc.i
  invoke void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aw)
          to label %.noexc728.i unwind label %bb.ai

.noexc728.i:                                      ; preds = %bb.am, %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !2291
  store ptr %i.sz, ptr %i.av, align 8, !noalias !2291
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.av)
          to label %.noexc729.i unwind label %bb.ai

.noexc729.i:                                      ; preds = %.noexc728.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !2291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !2291
  br label %_RNCNvMs_NtCsileJQcQObtj_7hir_def9lang_itemNtB6_9LangItems16resolve_manuallys5_0B8_.exit.i

bb.an:                                            ; preds = %bb.aj
  %i.tc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSTQINtNtB4_6option6OptionNtCsileJQcQObtj_7hir_def10FunctionIdENtNtCs39E2wp1vf7X_6intern6symbol6SymbolEEB12_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.ax, i64 noundef 1)
          to label %.body.i unwind label %bb.ap, !noalias !2290

bb.ao:                                            ; preds = %bb.aj
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSTQINtNtB4_6option6OptionNtCsileJQcQObtj_7hir_def10FunctionIdENtNtCs39E2wp1vf7X_6intern6symbol6SymbolEEB12_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.ax, i64 noundef 1)
          to label %.noexc730.i unwind label %bb.ai

.noexc730.i:                                      ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !2289
  br label %_RNCNvMs_NtCsileJQcQObtj_7hir_def9lang_itemNtB6_9LangItems16resolve_manuallys5_0B8_.exit.i

bb.ap:                                            ; preds = %bb.an
  %i.td = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54, !noalias !2290
  unreachable

_RNvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTINtNtBb_6option6OptionNtCsileJQcQObtj_7hir_def7TraitIdEQIB1W_NtB2j_10FunctionIdENtNtCs39E2wp1vf7X_6intern6symbol6SymbolEEE4nextB2j_.exit.thread.i: ; preds = %_RNvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTINtNtBb_6option6OptionNtCsileJQcQObtj_7hir_def7TraitIdEQIB1W_NtB2j_10FunctionIdENtNtCs39E2wp1vf7X_6intern6symbol6SymbolEEE4nextB2j_.exit.i, %_RNCNvMs_NtCsileJQcQObtj_7hir_def9lang_itemNtB6_9LangItems16resolve_manuallys5_0B8_.exit.i, %_RNvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTINtNtBb_6option6OptionNtCsileJQcQObtj_7hir_def7TraitIdEQIB1W_NtB2j_10FunctionIdENtNtCs39E2wp1vf7X_6intern6symbol6SymbolEEE4nextB2j_.exit.lr.ph.i, %_RNCNvMs_NtCsileJQcQObtj_7hir_def9lang_itemNtB6_9LangItems16resolve_manuallys4_0B8_.exit.i
  %i.te = phi i64 [ %i.sg, %_RNCNvMs_NtCsileJQcQObtj_7hir_def9lang_itemNtB6_9LangItems16resolve_manuallys4_0B8_.exit.i ], [ %i.sj, %_RNvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTINtNtBb_6option6OptionNtCsileJQcQObtj_7hir_def7TraitIdEQIB1W_NtB2j_10FunctionIdENtNtCs39E2wp1vf7X_6intern6symbol6SymbolEEE4nextB2j_.exit.lr.ph.i ], [ %i.sp, %_RNvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTINtNtBb_6option6OptionNtCsileJQcQObtj_7hir_def7TraitIdEQIB1W_NtB2j_10FunctionIdENtNtCs39E2wp1vf7X_6intern6symbol6SymbolEEE4nextB2j_.exit.i ], [ %i.ui, %_RNCNvMs_NtCsileJQcQObtj_7hir_def9lang_itemNtB6_9LangItems16resolve_manuallys5_0B8_.exit.i ]
  %.lcssa.i = phi i64 [ %i.sg, %_RNCNvMs_NtCsileJQcQObtj_7hir_def9lang_itemNtB6_9LangItems16resolve_manuallys4_0B8_.exit.i ], [ %i.sg, %_RNvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTINtNtBb_6option6OptionNtCsileJQcQObtj_7hir_def7TraitIdEQIB1W_NtB2j_10FunctionIdENtNtCs39E2wp1vf7X_6intern6symbol6SymbolEEE4nextB2j_.exit.lr.ph.i ], [ %i.ui, %_RNCNvMs_NtCsileJQcQObtj_7hir_def9lang_itemNtB6_9LangItems16resolve_manuallys5_0B8_.exit.i ], [ %i.ui, %_RNvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTINtNtBb_6option6OptionNtCsileJQcQObtj_7hir_def7TraitIdEQIB1W_NtB2j_10FunctionIdENtNtCs39E2wp1vf7X_6intern6symbol6SymbolEEE4nextB2j_.exit.i ]
  invoke void @_RNvXs_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitTINtNtBa_6option6OptionNtCsileJQcQObtj_7hir_def7TraitIdEQIB1y_NtB1V_10FunctionIdENtNtCs39E2wp1vf7X_6intern6symbol6SymbolEEj21_NtB4_11PartialDrop12partial_dropB1V_(ptr noalias nofree noundef nonnull align 8 dereferenceable(792) %.sroa.5577.0..sroa_idx.i, i64 noundef %i.te, i64 noundef %.lcssa.i)
          to label %.noexc83 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc83:                                         ; preds = %_RNvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTINtNtBb_6option6OptionNtCsileJQcQObtj_7hir_def7TraitIdEQIB1W_NtB2j_10FunctionIdENtNtCs39E2wp1vf7X_6intern6symbol6SymbolEEE4nextB2j_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !2284
  %i.tf = load i32, ptr %i.fw, align 4, !alias.scope !2269, !noalias !2293, !noundef !10 ; 2 uses
  %.not.i731.not.i = icmp eq i32 %i.tf, 0
  br i1 %.not.i731.not.i, label %_RNCNvMs_NtCsileJQcQObtj_7hir_def9lang_itemNtB6_9LangItems16resolve_manuallys6_0B8_.exit.i, label %bb.aq

bb.aq:                                            ; preds = %.noexc83
  %i.tg = getelementptr inbounds nuw i8, ptr %i.ce, i64 756
  %i.th = load i32, ptr %i.tg, align 4, !alias.scope !2269, !noalias !2293
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !2294
  store ptr %i.lb, ptr %i.au, align 8, !noalias !2294
  %i.ti = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols2eq10SYMBOL_STR, ptr %i.ti, align 8, !noalias !2294
  %i.tj = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store ptr %i.lc, ptr %i.tj, align 8, !noalias !2294
  %i.tk = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store ptr @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols2ne10SYMBOL_STR, ptr %i.tk, align 8, !noalias !2294
  invoke fastcc void @_RNCNvMs_NtCsileJQcQObtj_7hir_def9lang_itemNtB6_9LangItems16resolve_manuallys0_0B8_(ptr nonnull %0, ptr nonnull readonly align 8 dereferenceable(240) %1, i32 noundef %i.tf, i32 noundef %i.th, ptr noalias nofree noundef nonnull align 8 %i.au, i64 noundef 2)
          to label %bb.as unwind label %bb.ar, !noalias !2293

bb.ar:                                            ; preds = %bb.aq
  %i.tl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSTQINtNtB4_6option6OptionNtCsileJQcQObtj_7hir_def10FunctionIdENtNtCs39E2wp1vf7X_6intern6symbol6SymbolEEB12_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.au, i64 noundef 2)
          to label %.body unwind label %bb.at, !noalias !2293

bb.as:                                            ; preds = %bb.aq
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSTQINtNtB4_6option6OptionNtCsileJQcQObtj_7hir_def10FunctionIdENtNtCs39E2wp1vf7X_6intern6symbol6SymbolEEB12_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.au, i64 noundef 2)
          to label %.noexc84 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc84:                                         ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !2294
  br label %_RNCNvMs_NtCsileJQcQObtj_7hir_def9lang_itemNtB6_9LangItems16resolve_manuallys6_0B8_.exit.i

bb.at:                                            ; preds = %bb.ar
  %i.tm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54, !noalias !2293
  unreachable

_RNCNvMs_NtCsileJQcQObtj_7hir_def9lang_itemNtB6_9LangItems16resolve_manuallys6_0B8_.exit.i: ; preds = %.noexc84, %.noexc83
  %i.tn = load i32, ptr %i.fx, align 4, !alias.scope !2269, !noalias !2295, !noundef !10 ; 2 uses
  %.not.i734.not.i = icmp eq i32 %i.tn, 0
  br i1 %.not.i734.not.i, label %_RNCNvMs_NtCsileJQcQObtj_7hir_def9lang_itemNtB6_9LangItems16resolve_manuallys7_0B8_.exit.i, label %bb.au

bb.au:                                            ; preds = %_RNCNvMs_NtCsileJQcQObtj_7hir_def9lang_itemNtB6_9LangItems16resolve_manuallys6_0B8_.exit.i
  %i.to = getelementptr inbounds nuw i8, ptr %i.ce, i64 764
  %i.tp = load i32, ptr %i.to, align 4, !alias.scope !2269, !noalias !2295
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !2296
  store ptr %i.ld, ptr %i.at, align 8, !noalias !2296
  %i.tq = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols2le10SYMBOL_STR, ptr %i.tq, align 8, !noalias !2296
  %i.tr = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store ptr %i.le, ptr %i.tr, align 8, !noalias !2296
  %i.ts = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store ptr @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols2lt10SYMBOL_STR, ptr %i.ts, align 8, !noalias !2296
  %i.tt = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  store ptr %i.lf, ptr %i.tt, align 8, !noalias !2296
  %i.tu = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  store ptr @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols2ge10SYMBOL_STR, ptr %i.tu, align 8, !noalias !2296
  %i.tv = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  store ptr %i.lg, ptr %i.tv, align 8, !noalias !2296
  %i.tw = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  store ptr @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols2gt10SYMBOL_STR, ptr %i.tw, align 8, !noalias !2296
  invoke fastcc void @_RNCNvMs_NtCsileJQcQObtj_7hir_def9lang_itemNtB6_9LangItems16resolve_manuallys0_0B8_(ptr nonnull %0, ptr nonnull readonly align 8 dereferenceable(240) %1, i32 noundef %i.tn, i32 noundef %i.tp, ptr noalias nofree noundef nonnull align 8 %i.at, i64 noundef 4)
          to label %bb.aw unwind label %bb.av, !noalias !2295

bb.av:                                            ; preds = %bb.au
  %i.tx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSTQINtNtB4_6option6OptionNtCsileJQcQObtj_7hir_def10FunctionIdENtNtCs39E2wp1vf7X_6intern6symbol6SymbolEEB12_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(64) %i.at, i64 noundef 4)
          to label %.body unwind label %bb.ax, !noalias !2295

bb.aw:                                            ; preds = %bb.au
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSTQINtNtB4_6option6OptionNtCsileJQcQObtj_7hir_def10FunctionIdENtNtCs39E2wp1vf7X_6intern6symbol6SymbolEEB12_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(64) %i.at, i64 noundef 4)
          to label %.noexc85 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc85:                                         ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !2296
  br label %_RNCNvMs_NtCsileJQcQObtj_7hir_def9lang_itemNtB6_9LangItems16resolve_manuallys7_0B8_.exit.i

bb.ax:                                            ; preds = %bb.av
  %i.ty = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54, !noalias !2295
  unreachable

_RNCNvMs_NtCsileJQcQObtj_7hir_def9lang_itemNtB6_9LangItems16resolve_manuallys7_0B8_.exit.i: ; preds = %.noexc85, %_RNCNvMs_NtCsileJQcQObtj_7hir_def9lang_itemNtB6_9LangItems16resolve_manuallys6_0B8_.exit.i
  %i.tz = load i32, ptr %i.do, align 4, !alias.scope !2269, !noalias !2297, !noundef !10 ; 2 uses
  %.not.i737.not.i = icmp eq i32 %i.tz, 0
  br i1 %.not.i737.not.i, label %_RNvMs_NtCsileJQcQObtj_7hir_def9lang_itemNtB4_9LangItems16resolve_manually.exit, label %bb.ay

bb.ay:                                            ; preds = %_RNCNvMs_NtCsileJQcQObtj_7hir_def9lang_itemNtB6_9LangItems16resolve_manuallys7_0B8_.exit.i
  %i.ua = getelementptr inbounds nuw i8, ptr %i.ce, i64 276
  %i.ub = load i32, ptr %i.ua, align 4, !alias.scope !2269, !noalias !2297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !2298
  store ptr %i.lh, ptr %i.as, align 8, !noalias !2298
  %i.uc = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols4drop10SYMBOL_STR, ptr %i.uc, align 8, !noalias !2298
  %i.ud = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store ptr %i.li, ptr %i.ud, align 8, !noalias !2298
  %i.ue = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store ptr @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols8pin_drop10SYMBOL_STR, ptr %i.ue, align 8, !noalias !2298
  invoke fastcc void @_RNCNvMs_NtCsileJQcQObtj_7hir_def9lang_itemNtB6_9LangItems16resolve_manuallys0_0B8_(ptr nonnull %0, ptr nonnull readonly align 8 dereferenceable(240) %1, i32 noundef %i.tz, i32 noundef %i.ub, ptr noalias nofree noundef nonnull align 8 %i.as, i64 noundef 2)
          to label %bb.ba unwind label %bb.az, !noalias !2297

bb.az:                                            ; preds = %bb.ay
  %i.uf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSTQINtNtB4_6option6OptionNtCsileJQcQObtj_7hir_def10FunctionIdENtNtCs39E2wp1vf7X_6intern6symbol6SymbolEEB12_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.as, i64 noundef 2)
          to label %.body unwind label %bb.bb, !noalias !2297

bb.ba:                                            ; preds = %bb.ay
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSTQINtNtB4_6option6OptionNtCsileJQcQObtj_7hir_def10FunctionIdENtNtCs39E2wp1vf7X_6intern6symbol6SymbolEEB12_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.as, i64 noundef 2)
          to label %.noexc86 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc86:                                         ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !2298
  %.pre = load i32, ptr %i.do, align 4, !alias.scope !2299
  %i.ug = icmp eq i32 %.pre, 0
  br label %_RNvMs_NtCsileJQcQObtj_7hir_def9lang_itemNtB4_9LangItems16resolve_manually.exit

bb.bb:                                            ; preds = %bb.az
  %i.uh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54, !noalias !2297
  unreachable

_RNCNvMs_NtCsileJQcQObtj_7hir_def9lang_itemNtB6_9LangItems16resolve_manuallys5_0B8_.exit.i: ; preds = %.noexc730.i, %.noexc729.i, %bb.ak
  %i.ui = load i64, ptr %.sroa.4576.0..sroa_idx.i, align 8, !alias.scope !2285, !noalias !2284, !noundef !10 ; 4 uses
  %i.uj = load i64, ptr %i.bc, align 8, !alias.scope !2285, !noalias !2284, !noundef !10 ; 5 uses
  %.not.i724.i = icmp eq i64 %i.ui, %i.uj
  br i1 %.not.i724.i, label %_RNvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTINtNtBb_6option6OptionNtCsileJQcQObtj_7hir_def7TraitIdEQIB1W_NtB2j_10FunctionIdENtNtCs39E2wp1vf7X_6intern6symbol6SymbolEEE4nextB2j_.exit.thread.i, label %_RNvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTINtNtBb_6option6OptionNtCsileJQcQObtj_7hir_def7TraitIdEQIB1W_NtB2j_10FunctionIdENtNtCs39E2wp1vf7X_6intern6symbol6SymbolEEE4nextB2j_.exit.i

bb.bc:                                            ; preds = %.body.i
  %i.uk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54
  unreachable

_RNvMs_NtCsileJQcQObtj_7hir_def9lang_itemNtB4_9LangItems16resolve_manually.exit: ; preds = %.noexc86, %_RNCNvMs_NtCsileJQcQObtj_7hir_def9lang_itemNtB6_9LangItems16resolve_manuallys7_0B8_.exit.i
  %.not19.i = phi i1 [ %i.ug, %.noexc86 ], [ true, %_RNCNvMs_NtCsileJQcQObtj_7hir_def9lang_itemNtB6_9LangItems16resolve_manuallys7_0B8_.exit.i ]
  %i.ul = load <257 x i32>, ptr %i.cv, align 4, !alias.scope !2299
  %i.um = shufflevector <257 x i32> %i.ul, <257 x i32> poison, <128 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30, i32 32, i32 34, i32 36, i32 40, i32 42, i32 44, i32 46, i32 48, i32 50, i32 52, i32 54, i32 56, i32 58, i32 60, i32 62, i32 64, i32 66, i32 68, i32 70, i32 72, i32 74, i32 76, i32 78, i32 80, i32 82, i32 84, i32 86, i32 88, i32 90, i32 92, i32 94, i32 96, i32 98, i32 100, i32 102, i32 104, i32 106, i32 108, i32 110, i32 112, i32 114, i32 116, i32 118, i32 120, i32 122, i32 124, i32 126, i32 128, i32 130, i32 132, i32 134, i32 136, i32 138, i32 140, i32 142, i32 144, i32 146, i32 148, i32 150, i32 152, i32 154, i32 156, i32 158, i32 160, i32 162, i32 164, i32 166, i32 168, i32 170, i32 172, i32 174, i32 176, i32 178, i32 180, i32 182, i32 184, i32 186, i32 188, i32 190, i32 192, i32 194, i32 196, i32 198, i32 200, i32 202, i32 204, i32 206, i32 208, i32 210, i32 212, i32 214, i32 216, i32 218, i32 220, i32 222, i32 224, i32 226, i32 228, i32 230, i32 232, i32 234, i32 236, i32 238, i32 240, i32 242, i32 244, i32 246, i32 248, i32 250, i32 252, i32 254, i32 256>
  %.fr = freeze <128 x i32> %i.um
  %i.un = icmp eq <128 x i32> %.fr, zeroinitializer ; 2 uses
  %i.uo = load <63 x i32>, ptr %i.hu, align 4, !alias.scope !2299
  %i.up = shufflevector <63 x i32> %i.uo, <63 x i32> poison, <32 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30, i32 32, i32 34, i32 36, i32 38, i32 40, i32 42, i32 44, i32 46, i32 48, i32 50, i32 52, i32 54, i32 56, i32 58, i32 60, i32 62>
  %.fr415 = freeze <32 x i32> %i.up
  %i.uq = icmp eq <32 x i32> %.fr415, zeroinitializer
  %i.ur = load i32, ptr %i.ja, align 4, !alias.scope !2299
  %.not161.i = icmp eq i32 %i.ur, 0
  %i.us = load i32, ptr %i.jb, align 4, !alias.scope !2299
  %.not162.i = icmp eq i32 %i.us, 0
  %i.ut = load i32, ptr %i.jc, align 4, !alias.scope !2299
  %.not163.i = icmp eq i32 %i.ut, 0
  %i.uu = load i32, ptr %i.jd, align 4
  %.not164.i = icmp eq i32 %i.uu, 0
  %i.uv = shufflevector <128 x i1> %i.un, <128 x i1> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %rdx.op = and <32 x i1> %i.uv, %i.uq
  %i.uw = shufflevector <32 x i1> %rdx.op, <32 x i1> poison, <128 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ux = shufflevector <128 x i1> %i.uw, <128 x i1> %i.un, <128 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 160, i32 161, i32 162, i32 163, i32 164, i32 165, i32 166, i32 167, i32 168, i32 169, i32 170, i32 171, i32 172, i32 173, i32 174, i32 175, i32 176, i32 177, i32 178, i32 179, i32 180, i32 181, i32 182, i32 183, i32 184, i32 185, i32 186, i32 187, i32 188, i32 189, i32 190, i32 191, i32 192, i32 193, i32 194, i32 195, i32 196, i32 197, i32 198, i32 199, i32 200, i32 201, i32 202, i32 203, i32 204, i32 205, i32 206, i32 207, i32 208, i32 209, i32 210, i32 211, i32 212, i32 213, i32 214, i32 215, i32 216, i32 217, i32 218, i32 219, i32 220, i32 221, i32 222, i32 223, i32 224, i32 225, i32 226, i32 227, i32 228, i32 229, i32 230, i32 231, i32 232, i32 233, i32 234, i32 235, i32 236, i32 237, i32 238, i32 239, i32 240, i32 241, i32 242, i32 243, i32 244, i32 245, i32 246, i32 247, i32 248, i32 249, i32 250, i32 251, i32 252, i32 253, i32 254, i32 255>
  %i.uy = bitcast <128 x i1> %i.ux to i128
  %i.uz = icmp eq i128 %i.uy, -1
  %op.rdx = select i1 %i.uz, i1 %.not19.i, i1 false
  %4 = select i1 %op.rdx, i1 %.not161.i, i1 false
  %op.rdx413 = select i1 %4, i1 %.not162.i, i1 false
  %5 = select i1 %op.rdx413, i1 %.not163.i, i1 false
  %op.rdx414 = select i1 %5, i1 %.not164.i, i1 false
  br i1 %op.rdx414, label %bb.k, label %_RNvMsj_NtCsileJQcQObtj_7hir_def9lang_itemNtB5_9LangItems8is_empty.exit.thread

_RNvMsj_NtCsileJQcQObtj_7hir_def9lang_itemNtB5_9LangItems8is_empty.exit.thread: ; preds = %_RNvMs_NtCsileJQcQObtj_7hir_def9lang_itemNtB4_9LangItems16resolve_manually.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1864) %i.cc, ptr noundef nonnull align 4 dereferenceable(1864) %i.ce, i64 1864, i1 false)
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.va = call noundef align 4 dereferenceable_or_null(1864) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) 1864, i64 noundef range(i64 1, 9) 4) #46 ; 3 uses
  %i.vb = icmp eq ptr %i.va, null
  br i1 %i.vb, label %bb.bd, label %bb.be, !prof !22

bb.bd:                                            ; preds = %_RNvMsj_NtCsileJQcQObtj_7hir_def9lang_itemNtB5_9LangItems8is_empty.exit.thread
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 1864) #57
          to label %.noexc89 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc89:                                         ; preds = %bb.bd
  unreachable

bb.be:                                            ; preds = %_RNvMsj_NtCsileJQcQObtj_7hir_def9lang_itemNtB5_9LangItems8is_empty.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1864) %i.va, ptr noundef nonnull readonly align 4 dereferenceable(1864) %i.cc, i64 1864, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  br label %bb.k

bb.bf:                                            ; preds = %.lr.ph301, %.loopexit282
  %.sroa.0.0259300 = phi ptr [ %.val67, %.lr.ph301 ], [ %i.vc, %.loopexit282 ] ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %.sroa.0.0259300, i64 616 ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %.sroa.0.0259300, i64 56 ; 2 uses
  %i.ve = invoke { ptr, ptr } @_RNvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtB5_9ItemScope14inherent_impls(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(488) %i.vd)
          to label %bb.bg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bg:                                            ; preds = %bb.bf
  %i.vf = extractvalue { ptr, ptr } %i.ve, 0      ; 2 uses
  %i.vg = extractvalue { ptr, ptr } %i.ve, 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd)
  store ptr %i.vg, ptr %i.mb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store ptr %i.mc, ptr %i.ar, align 8, !noalias !2300
  %i.vh = icmp eq ptr %i.vf, %i.vg
  br i1 %i.vh, label %.thread267, label %.lr.ph.i.preheader

.loopexit275:                                     ; preds = %bb.hd, %_RNvMsg_CsileJQcQObtj_7hir_defNtB5_6ImplId10impl_items.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !2301)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store ptr %i.mc, ptr %i.ar, align 8, !noalias !2302
  %i.vi = load ptr, ptr %i.mb, align 8, !alias.scope !2301, !nonnull !10, !noundef !10 ; 2 uses
  %.promoted.i = load ptr, ptr %i.cd, align 8, !alias.scope !2301 ; 2 uses
  %i.vj = icmp eq ptr %.promoted.i, %i.vi
  br i1 %i.vj, label %.thread267, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.bg, %.loopexit275
  %.promoted.i297 = phi ptr [ %.promoted.i, %.loopexit275 ], [ %i.vf, %bb.bg ]
  %i.vk = phi ptr [ %i.vi, %.loopexit275 ], [ %i.vg, %bb.bg ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2303)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.bh
  %i.vl = phi ptr [ %i.vm, %bb.bh ], [ %.promoted.i297, %.lr.ph.i.preheader ] ; 5 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 12 ; 3 uses
  store ptr %i.vm, ptr %i.cd, align 8, !alias.scope !2303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !2304
  store ptr %i.vl, ptr %i.aq, align 8, !noalias !2304, !captures !42
  %i.vn = invoke noundef zeroext i1 @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtBW_9ItemScope14inherent_impls0INtB7_5FnMutTRRTNtBY_6ImplIdbEEE8call_mutBY_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aq)
          to label %.noexc91 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc91:                                         ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !2304
  br i1 %i.vn, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %.noexc91
  %i.vo = icmp eq ptr %i.vm, %i.vk
  br i1 %i.vo, label %.thread267, label %.lr.ph.i

.thread267:                                       ; preds = %.loopexit275, %bb.bh, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  br label %.loopexit287

bb.bi:                                            ; preds = %.noexc91
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %.not66 = icmp eq ptr %i.vl, null
  br i1 %.not66, label %.loopexit287, label %bb.gc

.loopexit287:                                     ; preds = %bb.bi, %.thread267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  %i.vp = invoke { ptr, ptr } @_RNvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtB5_9ItemScope12declarations(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(488) %i.vd)
          to label %bb.bj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bj:                                            ; preds = %.loopexit287
  %i.vq = extractvalue { ptr, ptr } %i.vp, 0      ; 3 uses
  %i.vr = extractvalue { ptr, ptr } %i.vp, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.vq), "nonnull"(ptr %i.vr) ]
  %i.vs = icmp eq ptr %i.vq, %i.vr
  br i1 %i.vs, label %.loopexit282, label %.lr.ph299

.lr.ph299:                                        ; preds = %bb.bj, %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1u_9item_tree11FieldsShapeEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4folduNCINvNvB2C_8for_each4callRB1r_NCNvNvXs0_NvNtB1u_9lang_item1__NtB4h_31crate_lang_items_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s_0E0EB1u_.exit
  %.sroa.018.0298 = phi ptr [ %i.vt, %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1u_9item_tree11FieldsShapeEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4folduNCINvNvB2C_8for_each4callRB1r_NCNvNvXs0_NvNtB1u_9lang_item1__NtB4h_31crate_lang_items_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s_0E0EB1u_.exit ], [ %i.vq, %bb.bj ] ; 5 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %.sroa.018.0298, i64 16 ; 2 uses
  %.sroa.056.0.copyload = load i8, ptr %.sroa.018.0298, align 4
  %.sroa.558.0..sroa.055.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.018.0298, i64 4
  %.sroa.558.0.copyload = load i32, ptr %.sroa.558.0..sroa.055.0..sroa_idx, align 4 ; 9 uses
  %.sroa.659.0..sroa.055.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.018.0298, i64 8
  %.sroa.659.0.copyload = load i32, ptr %.sroa.659.0..sroa.055.0..sroa_idx, align 4 ; 15 uses
  %.sroa.760.0..sroa.055.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.018.0298, i64 12
  %.sroa.760.0.copyload = load i32, ptr %.sroa.760.0..sroa.055.0..sroa_idx, align 4 ; 7 uses
  switch i8 %.sroa.056.0.copyload, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1u_9item_tree11FieldsShapeEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4folduNCINvNvB2C_8for_each4callRB1r_NCNvNvXs0_NvNtB1u_9lang_item1__NtB4h_31crate_lang_items_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s_0E0EB1u_.exit [
    i8 1, label %bb.bk
    i8 2, label %bb.bl
    i8 4, label %bb.bm
    i8 5, label %bb.bn
    i8 6, label %bb.ck
    i8 7, label %bb.dh
  ]

_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1u_9item_tree11FieldsShapeEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4folduNCINvNvB2C_8for_each4callRB1r_NCNvNvXs0_NvNtB1u_9lang_item1__NtB4h_31crate_lang_items_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s_0E0EB1u_.exit: ; preds = %_RNCNvNvXs0_NvNtCsileJQcQObtj_7hir_def9lang_item1__NtB9_31crate_lang_items_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_0Bd_.exit.i, %.noexc196, %_RNvMs5_NtNtCsileJQcQObtj_7hir_def7nameres5assocNtB5_10TraitItems5query.exit, %_RNvMse_CsileJQcQObtj_7hir_defNtB5_6EnumId13enum_variants.exit, %_RINvMNtCsileJQcQObtj_7hir_def9lang_itemNtB3_9LangItems17collect_lang_itemNtB5_7UnionIdEB5_.exit, %_RINvMNtCsileJQcQObtj_7hir_def9lang_itemNtB3_9LangItems17collect_lang_itemNtB5_8StructIdEB5_.exit, %_RINvMNtCsileJQcQObtj_7hir_def9lang_itemNtB3_9LangItems17collect_lang_itemNtB5_8StaticIdEB5_.exit, %bb.dh, %bb.bm, %bb.bk, %.lr.ph299
  %i.vu = icmp eq ptr %i.vt, %i.vr
  br i1 %i.vu, label %.loopexit282, label %.lr.ph299

bb.bk:                                            ; preds = %.lr.ph299
  invoke fastcc void @_RINvMNtCsileJQcQObtj_7hir_def9lang_itemNtB3_9LangItems17collect_lang_itemNtB5_10FunctionIdEB5_(ptr noalias nofree noundef align 4 dereferenceable(1864) %i.ce, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %1, i32 noundef %.sroa.558.0.copyload, i32 noundef %.sroa.659.0.copyload)
          to label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1u_9item_tree11FieldsShapeEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4folduNCINvNvB2C_8for_each4callRB1r_NCNvNvXs0_NvNtB1u_9lang_item1__NtB4h_31crate_lang_items_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s_0E0EB1u_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bl:                                            ; preds = %.lr.ph299
  switch i32 %.sroa.558.0.copyload, label %.loopexit276 [
    i32 0, label %bb.di
    i32 1, label %bb.dx
    i32 2, label %bb.em
  ]

bb.bm:                                            ; preds = %.lr.ph299
  invoke fastcc void @_RINvMNtCsileJQcQObtj_7hir_def9lang_itemNtB3_9LangItems17collect_lang_itemNtB5_7ConstIdEB5_(ptr noalias nofree noundef align 4 dereferenceable(1864) %i.ce, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %1, i32 noundef %.sroa.558.0.copyload, i32 noundef %.sroa.659.0.copyload)
          to label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1u_9item_tree11FieldsShapeEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4folduNCINvNvB2C_8for_each4callRB1r_NCNvNvXs0_NvNtB1u_9lang_item1__NtB4h_31crate_lang_items_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s_0E0EB1u_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bn:                                            ; preds = %.lr.ph299
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !2305
  %i.vv = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !2305
  %i.vw = icmp ult i64 %i.vv, 3
  br i1 %i.vw, label %bb.bo, label %.thread.i

bb.bo:                                            ; preds = %bb.bn
  %i.vx = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtCsileJQcQObtj_7hir_def9lang_itemNtB4_9LangItems17collect_lang_item10___CALLSITE, i64 16) monotonic, align 8, !noalias !2305 ; 3 uses
  switch i8 %i.vx, label %bb.bp [
    i8 0, label %.thread.i
    i8 1, label %bb.bq
    i8 2, label %bb.bq
  ], !prof !9

.thread.i:                                        ; preds = %.noexc99, %.noexc98, %bb.bo, %bb.bn
  store i64 2, ptr %i.an, align 8, !noalias !2305
  store ptr null, ptr %i.mx, align 8, !noalias !2305
  br label %bb.bv

bb.bp:                                            ; preds = %bb.bo
  %i.vy = invoke noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMNtCsileJQcQObtj_7hir_def9lang_itemNtB4_9LangItems17collect_lang_item10___CALLSITE) #52
          to label %.noexc98 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc98:                                         ; preds = %bb.bp
  %.not.i97 = icmp eq i8 %i.vy, 0
  br i1 %.not.i97, label %.thread.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bo, %.noexc98, %bb.bo
  %.sroa.05.0.i = phi i8 [ %i.vy, %.noexc98 ], [ %i.vx, %bb.bo ], [ %i.vx, %bb.bo ]
  %i.vz = load ptr, ptr @_RNvNvMNtCsileJQcQObtj_7hir_def9lang_itemNtB4_9LangItems17collect_lang_item10___CALLSITE, align 8, !noalias !2305, !nonnull !10, !align !11, !noundef !10
  %i.wa = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.vz, i8 noundef %.sroa.05.0.i)
          to label %.noexc99 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc99:                                         ; preds = %bb.bq
  br i1 %i.wa, label %bb.br, label %.thread.i

bb.br:                                            ; preds = %.noexc99
  %i.wb = load ptr, ptr @_RNvNvMNtCsileJQcQObtj_7hir_def9lang_itemNtB4_9LangItems17collect_lang_item10___CALLSITE, align 8, !noalias !2305, !nonnull !10, !align !11, !noundef !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !2305
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 48
  store i64 1, ptr %i.ao, align 8, !noalias !2305
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2305
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2305
  store ptr %i.wc, ptr %i.mv, align 8, !noalias !2305
  invoke void @_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.an, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.wb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ao)
          to label %.noexc100 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc100:                                        ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !2305
  %.pr.i = load i64, ptr %i.an, align 8, !alias.scope !2306, !noalias !2305
  %.not.i.i = icmp eq i64 %.pr.i, 2
  br i1 %.not.i.i, label %bb.bv, label %bb.bs

bb.bs:                                            ; preds = %.noexc100
  invoke void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.an, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.mw)
          to label %bb.bv unwind label %bb.bt, !noalias !2307

bb.bt:                                            ; preds = %bb.bs
  %i.wd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.an) #53
          to label %.body unwind label %bb.bu, !noalias !2307

bb.bu:                                            ; preds = %bb.bt
  %i.we = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54, !noalias !2307
  unreachable

end_hunk_0
