Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_html-eed424199d03c1aa.typst_html.6be6ebf0611e0a90-cgu.0?download=true
inline.NumInlined: 8941
inline.NumDeleted: 4345
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_RNvMs0_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB5_19ElementIntrospectorNtNtB7_8position12HtmlPositionE5queryCs9gmjTwvRRSu_10typst_html:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !13979
  br label %bb.de

bb.cu:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %i.rw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.rx = load ptr, ptr %i.rw, align 8, !nonnull !7, !noundef !7
  %i.ry = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.rz = load i64, ptr %i.ry, align 16, !noundef !7 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !14022
  %i.sa = shl nuw nsw i64 %i.rz, 4                ; 2 uses
  %i.sb = icmp eq i64 %i.rz, 0
  br i1 %i.sb, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9gmjTwvRRSu_10typst_html.exit.i.thread, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9gmjTwvRRSu_10typst_html.exit.i.thread: ; preds = %bb.cu
  store i64 %i.rz, ptr %i.d, align 8, !noalias !14022
  %i.sc = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.sc, align 8, !noalias !14022
  %i.sd = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.sd, align 8, !noalias !14022
  br label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB3j_5slice4iter4IterNtNtB1G_8selector8SelectorENCNvMs0_NtNtB1I_13introspection12introspectorINtB4Y_19ElementIntrospectorNtNtB50_8position12HtmlPositionE5querys3_0EE9from_iterCs9gmjTwvRRSu_10typst_html.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.cu
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !14026, !inline_history !14029
  %i.se = call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.sa, i64 noundef range(i64 1, 9) 8) #53, !noalias !14026, !inline_history !14029 ; 3 uses
  %i.sf = icmp eq ptr %i.se, null
  br i1 %i.sf, label %bb.cv, label %.preheader.i.preheader

bb.cv:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.sa) #54, !noalias !14022, !inline_history !14029
  unreachable

.preheader.i.preheader:                           ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  store i64 %i.rz, ptr %i.d, align 8, !noalias !14022
  %i.sg = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.se, ptr %i.sg, align 8, !noalias !14022
  %i.sh = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14030)
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.cw
  %.sroa.6.0.i = phi i64 [ %i.so, %bb.cw ], [ 0, %.preheader.i.preheader ] ; 4 uses
  %i.si = getelementptr inbounds nuw [64 x i8], ptr %i.rx, i64 %.sroa.6.0.i
  %i.sj = invoke fastcc { ptr, i64 } @_RNvMs0_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB5_19ElementIntrospectorNtNtB7_8position12HtmlPositionE5queryCs9gmjTwvRRSu_10typst_html(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.si)
          to label %bb.cw unwind label %.body1225, !noalias !14033, !inline_history !14035 ; 2 uses

bb.cw:                                            ; preds = %.preheader.i
  %i.sk = extractvalue { ptr, i64 } %i.sj, 0
  %i.sl = extractvalue { ptr, i64 } %i.sj, 1
  %i.sm = getelementptr inbounds nuw [16 x i8], ptr %i.se, i64 %.sroa.6.0.i ; 2 uses
  store ptr %i.sk, ptr %i.sm, align 8, !noalias !14036
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 8
  store i64 %i.sl, ptr %i.sn, align 8, !noalias !14036
  %i.so = add nuw i64 %.sroa.6.0.i, 1             ; 2 uses
  %i.sp = icmp eq i64 %i.so, %i.rz
  br i1 %i.sp, label %bb.cx, label %.preheader.i

bb.cx:                                            ; preds = %bb.cw
  store i64 %i.rz, ptr %i.sh, align 8, !alias.scope !14030, !noalias !14046
  br label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB3j_5slice4iter4IterNtNtB1G_8selector8SelectorENCNvMs0_NtNtB1I_13introspection12introspectorINtB4Y_19ElementIntrospectorNtNtB50_8position12HtmlPositionE5querys3_0EE9from_iterCs9gmjTwvRRSu_10typst_html.exit

.body1225:                                        ; preds = %.preheader.i
  %i.sq = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.6.0.i, ptr %i.sh, align 8, !alias.scope !14030, !noalias !14046
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEEECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #49
          to label %common.resume unwind label %bb.cy, !noalias !14022, !inline_history !14029

bb.cy:                                            ; preds = %.body1225
  %i.sr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !14022, !inline_history !14029
  unreachable

_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB3j_5slice4iter4IterNtNtB1G_8selector8SelectorENCNvMs0_NtNtB1I_13introspection12introspectorINtB4Y_19ElementIntrospectorNtNtB50_8position12HtmlPositionE5querys3_0EE9from_iterCs9gmjTwvRRSu_10typst_html.exit: ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9gmjTwvRRSu_10typst_html.exit.i.thread, %bb.cx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !14047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !14022
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %i.ss = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.st = load ptr, ptr %i.ss, align 8, !nonnull !7, !noundef !7 ; 9 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %i.sv = load i64, ptr %i.su, align 8, !noundef !7 ; 6 uses
  switch i64 %i.sv, label %bb.cz [
    i64 0, label %.thread615
    i64 1, label %.thread619
  ]

bb.cz:                                            ; preds = %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB3j_5slice4iter4IterNtNtB1G_8selector8SelectorENCNvMs0_NtNtB1I_13introspection12introspectorINtB4Y_19ElementIntrospectorNtNtB50_8position12HtmlPositionE5querys3_0EE9from_iterCs9gmjTwvRRSu_10typst_html.exit
  %i.sw = getelementptr inbounds nuw i8, ptr %i.st, i64 8
  %i.sx = load i64, ptr %i.sw, align 8, !alias.scope !14048, !noalias !14051, !noundef !7 ; 2 uses
  %i.sy = add i64 %i.sv, 1152921504606846975      ; 4 uses
  %i.sz = and i64 %i.sy, 1152921504606846975
  %xtraiter = and i64 %i.sy, 1
  %i.ta = icmp eq i64 %i.sz, 1
  br i1 %i.ta, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.cz
  %unroll_iter = and i64 %i.sy, 1152921504606846974
  br label %bb.da

bb.da:                                            ; preds = %bb.da, %.new
  %.sroa.025.0.i.i = phi i64 [ %i.sx, %.new ], [ %.sroa.025.0.copyload26.sroa.speculated.i.i.1, %bb.da ] ; 2 uses
  %.sroa.627.0.i.i = phi i64 [ 0, %.new ], [ %.sroa.627.0.copyload28.sroa.speculated.i.i.1, %bb.da ]
  %.sroa.0.0.i.i.i.in.i.i = phi i64 [ 0, %.new ], [ %.sroa.0.0.i.i.i.i.i.1, %bb.da ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.da ]
  %.sroa.0.0.i.i.i.i.i = or disjoint i64 %.sroa.0.0.i.i.i.in.i.i, 1 ; 2 uses
  %i.tb = getelementptr inbounds nuw [16 x i8], ptr %i.st, i64 %.sroa.0.0.i.i.i.in.i.i
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 24
  %i.td = load i64, ptr %i.tc, align 8, !alias.scope !14061, !noalias !14068, !noundef !7 ; 2 uses
  %i.te = icmp ult i64 %i.td, %.sroa.025.0.i.i
  %.sroa.025.0.copyload26.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.td, i64 %.sroa.025.0.i.i) ; 2 uses
  %.sroa.627.0.copyload28.sroa.speculated.i.i = select i1 %i.te, i64 %.sroa.0.0.i.i.i.i.i, i64 %.sroa.627.0.i.i
  %.sroa.0.0.i.i.i.i.i.1 = add nuw i64 %.sroa.0.0.i.i.i.in.i.i, 2 ; 3 uses
  %i.tf = getelementptr inbounds nuw [16 x i8], ptr %i.st, i64 %.sroa.0.0.i.i.i.i.i
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 24
  %i.th = load i64, ptr %i.tg, align 8, !alias.scope !14061, !noalias !14068, !noundef !7 ; 2 uses
  %i.ti = icmp ult i64 %i.th, %.sroa.025.0.copyload26.sroa.speculated.i.i
  %.sroa.025.0.copyload26.sroa.speculated.i.i.1 = call i64 @llvm.umin.i64(i64 %i.th, i64 %.sroa.025.0.copyload26.sroa.speculated.i.i) ; 2 uses
  %.sroa.627.0.copyload28.sroa.speculated.i.i.1 = select i1 %i.ti, i64 %.sroa.0.0.i.i.i.i.i.1, i64 %.sroa.627.0.copyload28.sroa.speculated.i.i ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.thread619.loopexit.unr-lcssa, label %bb.da

bb.db:                                            ; preds = %bb.b
  %i.tj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.tk = load ptr, ptr %i.tj, align 8, !nonnull !7, !noundef !7
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 16
  %i.tm = call fastcc { ptr, i64 } @_RNvMs0_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB5_19ElementIntrospectorNtNtB7_8position12HtmlPositionE5queryCs9gmjTwvRRSu_10typst_html(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.tl) ; 2 uses
  %i.tn = extractvalue { ptr, i64 } %i.tm, 0      ; 9 uses
  %i.to = extractvalue { ptr, i64 } %i.tm, 1      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  %i.tp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.tq = load ptr, ptr %i.tp, align 16, !nonnull !7, !noundef !7
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 16
  invoke fastcc void @_RNvMs0_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB5_19ElementIntrospectorNtNtB7_8position12HtmlPositionE11query_firstCs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.an, ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.tr)
          to label %bb.es unwind label %bb.er

bb.dc:                                            ; preds = %bb.b
  %i.ts = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.tt = load ptr, ptr %i.ts, align 8, !nonnull !7, !noundef !7
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 16
  %i.tv = call fastcc { ptr, i64 } @_RNvMs0_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB5_19ElementIntrospectorNtNtB7_8position12HtmlPositionE5queryCs9gmjTwvRRSu_10typst_html(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.tu) ; 2 uses
  %i.tw = extractvalue { ptr, i64 } %i.tv, 0      ; 8 uses
  %i.tx = extractvalue { ptr, i64 } %i.tv, 1      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.ty = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.tz = load ptr, ptr %i.ty, align 16, !nonnull !7, !noundef !7
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 16
  invoke fastcc void @_RNvMs0_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB5_19ElementIntrospectorNtNtB7_8position12HtmlPositionE11query_firstCs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.al, ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.ua)
          to label %bb.fl unwind label %bb.fk

bb.dd:                                            ; preds = %bb.b
  %i.ub = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.uc = load ptr, ptr %i.ub, align 8, !nonnull !7, !noundef !7
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 16
  %i.ue = call fastcc { ptr, i64 } @_RNvMs0_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB5_19ElementIntrospectorNtNtB7_8position12HtmlPositionE5queryCs9gmjTwvRRSu_10typst_html(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.ud) ; 2 uses
  %i.uf = extractvalue { ptr, i64 } %i.ue, 0      ; 11 uses
  %i.ug = extractvalue { ptr, i64 } %i.ue, 1      ; 16 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ui = load ptr, ptr %i.uh, align 16, !nonnull !7, !noundef !7
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 16
  %i.uk = invoke fastcc { ptr, i64 } @_RNvMs0_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB5_19ElementIntrospectorNtNtB7_8position12HtmlPositionE5queryCs9gmjTwvRRSu_10typst_html(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.uj)
          to label %bb.ge unwind label %bb.gd     ; 2 uses

bb.de:                                            ; preds = %bb.hq, %bb.gb, %bb.fi, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEEECs9gmjTwvRRSu_10typst_html.exit282, %_RINvXsu_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBI_E9from_iterINtNtNtB1S_8adapters3map3MapINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3set8IntoIterjENCNvMs0_NtNtBO_13introspection12introspectorINtB4A_19ElementIntrospectorNtNtB4C_8position12HtmlPositionE5querys2_0EECs9gmjTwvRRSu_10typst_html.exit, %_RINvXsu_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBI_E9from_iterINtNtB1U_6option8IntoIterBI_EECs9gmjTwvRRSu_10typst_html.exit, %_RINvXsu_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBI_E9from_iterINtNtNtB1S_8adapters3map3MapINtNtNtB1U_5slice4iter4IterjENCNvMs0_NtNtBO_13introspection12introspectorINtB42_19ElementIntrospectorNtNtB44_8position12HtmlPositionE5querys_0EECs9gmjTwvRRSu_10typst_html.exit, %_RINvXsu_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBI_E9from_iterINtNtNtB1S_8adapters6cloned6ClonedINtNtB34_6filter6FilterINtNtB34_3map3MapINtNtNtB1U_5slice4iter4IterTBI_NtNtNtBO_13introspection8position12HtmlPositionEENCNvMs0_NtB4K_12introspectorINtB5B_19ElementIntrospectorB4G_E3all0ENCNvB5x_5query0EEECs9gmjTwvRRSu_10typst_html.exit
  %.sroa.14.0 = phi i64 [ %i.bi, %_RINvXsu_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBI_E9from_iterINtNtNtB1S_8adapters6cloned6ClonedINtNtB34_6filter6FilterINtNtB34_3map3MapINtNtNtB1U_5slice4iter4IterTBI_NtNtNtBO_13introspection8position12HtmlPositionEENCNvMs0_NtB4K_12introspectorINtB5B_19ElementIntrospectorB4G_E3all0ENCNvB5x_5query0EEECs9gmjTwvRRSu_10typst_html.exit ], [ %i.vi, %_RINvXsu_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBI_E9from_iterINtNtB1U_6option8IntoIterBI_EECs9gmjTwvRRSu_10typst_html.exit ], [ %i.fy, %_RINvXsu_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBI_E9from_iterINtNtNtB1S_8adapters3map3MapINtNtNtB1U_5slice4iter4IterjENCNvMs0_NtNtBO_13introspection12introspectorINtB42_19ElementIntrospectorNtNtB44_8position12HtmlPositionE5querys_0EECs9gmjTwvRRSu_10typst_html.exit ], [ %i.agk, %bb.hq ], [ %i.rv, %_RINvXsu_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBI_E9from_iterINtNtNtB1S_8adapters3map3MapINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3set8IntoIterjENCNvMs0_NtNtBO_13introspection12introspectorINtB4A_19ElementIntrospectorNtNtB4C_8position12HtmlPositionE5querys2_0EECs9gmjTwvRRSu_10typst_html.exit ], [ %i.vu, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEEECs9gmjTwvRRSu_10typst_html.exit282 ], [ %.sroa.10517.3, %bb.fi ], [ %.sroa.10525.3, %bb.gb ] ; 4 uses
  %.sroa.0.0 = phi ptr [ %i.bh, %_RINvXsu_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBI_E9from_iterINtNtNtB1S_8adapters6cloned6ClonedINtNtB34_6filter6FilterINtNtB34_3map3MapINtNtNtB1U_5slice4iter4IterTBI_NtNtNtBO_13introspection8position12HtmlPositionEENCNvMs0_NtB4K_12introspectorINtB5B_19ElementIntrospectorB4G_E3all0ENCNvB5x_5query0EEECs9gmjTwvRRSu_10typst_html.exit ], [ %i.vj, %_RINvXsu_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBI_E9from_iterINtNtB1U_6option8IntoIterBI_EECs9gmjTwvRRSu_10typst_html.exit ], [ %i.fz, %_RINvXsu_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBI_E9from_iterINtNtNtB1S_8adapters3map3MapINtNtNtB1U_5slice4iter4IterjENCNvMs0_NtNtBO_13introspection12introspectorINtB42_19ElementIntrospectorNtNtB44_8position12HtmlPositionE5querys_0EECs9gmjTwvRRSu_10typst_html.exit ], [ %i.agj, %bb.hq ], [ %i.ru, %_RINvXsu_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBI_E9from_iterINtNtNtB1S_8adapters3map3MapINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3set8IntoIterjENCNvMs0_NtNtBO_13introspection12introspectorINtB4A_19ElementIntrospectorNtNtB4C_8position12HtmlPositionE5querys2_0EECs9gmjTwvRRSu_10typst_html.exit ], [ %i.vt, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEEECs9gmjTwvRRSu_10typst_html.exit282 ], [ %.sroa.0514.3, %bb.fi ], [ %.sroa.0522.3, %bb.gb ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0) ]
  %.not.i.i244 = icmp eq ptr %.sroa.0.0, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i244, label %.thread605, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.ul = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -16
  %i.um = atomicrmw add ptr %i.ul, i64 1 monotonic, align 8
  %i.un = icmp slt i64 %i.um, 0
  br i1 %i.un, label %bb.dg, label %.thread605, !prof !73

bb.dg:                                            ; preds = %bb.df
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html(ptr noundef nonnull %.sroa.0.0, i64 noundef %.sroa.14.0) #54
          to label %.noexc unwind label %bb.hr

.noexc:                                           ; preds = %bb.dg
  unreachable

_RNvMs0_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB5_19ElementIntrospectorNtNtB7_8position12HtmlPositionE10get_by_locCs9gmjTwvRRSu_10typst_html.exit.thread.thread: ; preds = %._crit_edge.i.i.i, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !14086
  store ptr null, ptr %i.p, align 8, !alias.scope !14089
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !14086
  br label %.thread613

_RNvMs0_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB5_19ElementIntrospectorNtNtB7_8position12HtmlPositionE10get_by_locCs9gmjTwvRRSu_10typst_html.exit.thread: ; preds = %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs9gmjTwvRRSu_10typst_html.exit.i
  %i.uo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.up = load ptr, ptr %i.uo, align 8, !nonnull !7, !noundef !7
  %i.uq = getelementptr inbounds nuw [64 x i8], ptr %i.up, i64 %i.dk
  call void @_RNvXs1_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.uq)
  %.sroa.07.0.copyload = load ptr, ptr %i.ai, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !14086
  store ptr %.sroa.07.0.copyload, ptr %i.p, align 8, !alias.scope !14089
  %.sroa.4444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4444.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 16, i1 false)
  %.not.i = icmp eq ptr %.sroa.07.0.copyload, null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !14086
  br i1 %.not.i, label %.thread613, label %bb.dh

.thread613:                                       ; preds = %_RNvMs0_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB5_19ElementIntrospectorNtNtB7_8position12HtmlPositionE10get_by_locCs9gmjTwvRRSu_10typst_html.exit.thread.thread, %_RNvMs0_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB5_19ElementIntrospectorNtNtB7_8position12HtmlPositionE10get_by_locCs9gmjTwvRRSu_10typst_html.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !14093
  br label %_RINvXsu_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBI_E9from_iterINtNtB1U_6option8IntoIterBI_EECs9gmjTwvRRSu_10typst_html.exit

bb.dh:                                            ; preds = %_RNvMs0_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB5_19ElementIntrospectorNtNtB7_8position12HtmlPositionE10get_by_locCs9gmjTwvRRSu_10typst_html.exit.thread
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !14097
  %i.ur = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef 8) #53, !noalias !14097 ; 4 uses
  %i.us = icmp eq ptr %i.ur, null
  br i1 %i.us, label %bb.di, label %bb.dj, !prof !73

bb.di:                                            ; preds = %bb.dh
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #54
          to label %.noexc420 unwind label %.thread.i248

.noexc420:                                        ; preds = %bb.di
  unreachable

bb.dj:                                            ; preds = %bb.dh
  %i.ut = getelementptr inbounds nuw i8, ptr %i.ur, i64 16
  store i64 1, ptr %i.ur, align 8, !noalias !14097
  %.sroa.4.0..sroa.06.0.10.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ur, i64 8
  store i64 1, ptr %.sroa.4.0..sroa.06.0.10.sroa_idx.i, align 8, !noalias !14097
  store ptr %i.ut, ptr %i.o, align 8, !noalias !14086
  %i.uu = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  store i64 0, ptr %i.uu, align 8, !noalias !14086
  call void @llvm.experimental.noalias.scope.decl(metadata !14100)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !14102
  store ptr %.sroa.07.0.copyload, ptr %i.n, align 8, !alias.scope !14103, !noalias !14107
  %.sroa.513.0..sroa_idx14.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.513.0..sroa_idx14.i, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 16, i1 false)
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.o, i64 noundef 1)
          to label %bb.dk unwind label %bb.dp, !noalias !14108

bb.dk:                                            ; preds = %bb.dj
  %.pre.i7.i = load i64, ptr %i.uu, align 8, !alias.scope !14109, !noalias !14112
  %.val.i.pre.i.i = load ptr, ptr %i.o, align 8, !alias.scope !14109, !noalias !14112 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !14102
  store ptr %.sroa.07.0.copyload, ptr %i.m, align 8, !noalias !14102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 16, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !14114)
  %.not.i.i.i.i254 = icmp eq ptr %.val.i.pre.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i254, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8capacity0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i256, label %bb.dm

bb.dl:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8capacity0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i256
  %i.uv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body9.i unwind label %bb.dn, !noalias !14115, !inline_history !10205

bb.dm:                                            ; preds = %bb.dk
  %i.uw = getelementptr i8, ptr %.val.i.pre.i.i, i64 -8
  %.val.i.i.i.i255 = load i64, ptr %i.uw, align 8, !noalias !14116, !noundef !7
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8capacity0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i256

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8capacity0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i256: ; preds = %bb.dm, %bb.dk
  %.sroa.02.0.i.i.i.i257 = phi i64 [ %.val.i.i.i.i255, %bb.dm ], [ 0, %bb.dk ]
  %i.ux = icmp eq i64 %.pre.i7.i, %.sroa.02.0.i.i.i.i257
  %i.uy = zext i1 %i.ux to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.o, i64 noundef %i.uy)
          to label %._crit_edge.loopexit.i.i unwind label %bb.dl, !noalias !14112, !inline_history !10205

bb.dn:                                            ; preds = %bb.dl
  %i.uz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !14115, !inline_history !10205
  unreachable

._crit_edge.loopexit.i.i:                         ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8capacity0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i256
  %i.va = load ptr, ptr %i.o, align 8, !alias.scope !14109, !noalias !14112, !nonnull !7, !noundef !7 ; 2 uses
  %i.vb = load i64, ptr %i.uu, align 8, !alias.scope !14109, !noalias !14112, !noundef !7 ; 2 uses
  %i.vc = getelementptr inbounds nuw [24 x i8], ptr %i.va, i64 %i.vb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.vc, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !14115
  %i.vd = add i64 %i.vb, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !14102
  br label %_RINvXsu_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBI_E9from_iterINtNtB1U_6option8IntoIterBI_EECs9gmjTwvRRSu_10typst_html.exit

bb.do:                                            ; preds = %bb.dp
  %i.ve = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !14102
  unreachable

bb.dp:                                            ; preds = %bb.dj
  %i.vf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body9.i unwind label %bb.do, !noalias !14102

.body9.i:                                         ; preds = %bb.dp, %bb.dl
  %eh.lpad-body10.i = phi { ptr, i32 } [ %i.uv, %bb.dl ], [ %i.vf, %bb.dp ]
  %.val.i252 = load ptr, ptr %i.o, align 8, !noalias !14086, !nonnull !7, !noundef !7
  %.val3.i253 = load i64, ptr %i.uu, align 8, !noalias !14086
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs9gmjTwvRRSu_10typst_html(ptr nonnull %.val.i252, i64 %.val3.i253) #49
          to label %common.resume unwind label %bb.dq, !noalias !14086

bb.dq:                                            ; preds = %.thread.i248, %.body9.i
  %i.vg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !14086
  unreachable

.thread.i248:                                     ; preds = %bb.di
  %i.vh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %common.resume unwind label %bb.dq, !noalias !14086

_RINvXsu_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBI_E9from_iterINtNtB1U_6option8IntoIterBI_EECs9gmjTwvRRSu_10typst_html.exit: ; preds = %.thread613, %._crit_edge.loopexit.i.i
  %i.vi = phi i64 [ 0, %.thread613 ], [ %i.vd, %._crit_edge.loopexit.i.i ]
  %i.vj = phi ptr [ inttoptr (i64 16 to ptr), %.thread613 ], [ %i.va, %._crit_edge.loopexit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !14102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !14086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !14086
  br label %bb.de

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEEECs9gmjTwvRRSu_10typst_html.exit: ; preds = %.body, %bb.eo, %bb.dr
  %.pn156 = phi { ptr, i32 } [ %i.vk, %bb.dr ], [ %eh.lpad-body.i261, %bb.eo ], [ %eh.lpad-body.i261, %.body ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEEECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ap) #49
          to label %common.resume unwind label %bb.eq

bb.dr:                                            ; preds = %bb.ep, %bb.em
  %i.vk = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEEECs9gmjTwvRRSu_10typst_html.exit

.thread615:                                       ; preds = %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB3j_5slice4iter4IterNtNtB1G_8selector8SelectorENCNvMs0_NtNtB1I_13introspection12introspectorINtB4Y_19ElementIntrospectorNtNtB50_8position12HtmlPositionE5querys3_0EE9from_iterCs9gmjTwvRRSu_10typst_html.exit
  store ptr null, ptr %i.ao, align 8
  br label %bb.ds

bb.ds:                                            ; preds = %bb.en, %.thread615
  %.idx1987 = phi i64 [ %i.aap, %bb.en ], [ 0, %.thread615 ] ; 3 uses
  %i.vl = phi ptr [ %i.aaj, %bb.en ], [ null, %.thread615 ] ; 2 uses
  %.not155 = icmp eq ptr %i.vl, null              ; 2 uses
  %. = select i1 %.not155, ptr null, ptr %i.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !14117
  store ptr inttoptr (i64 16 to ptr), ptr %i.l, align 8, !noalias !14117
  %i.vm = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  store i64 0, ptr %i.vm, align 8, !noalias !14117
  call void @llvm.experimental.noalias.scope.decl(metadata !14120)
  %i.vn = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.st, i64 %.idx1987 ; 2 uses
  %i.vr = icmp samesign eq i64 %.idx1987, 0
  %i.vs = icmp samesign eq i64 %.idx1987, 0
  br label %bb.dt

bb.dt:                                            ; preds = %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4pushCs9gmjTwvRRSu_10typst_html.exit.i.i276, %bb.ds
  %i.vt = phi ptr [ inttoptr (i64 16 to ptr), %bb.ds ], [ %i.zy, %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4pushCs9gmjTwvRRSu_10typst_html.exit.i.i276 ] ; 7 uses
  %i.vu = phi i64 [ 0, %bb.ds ], [ %i.aab, %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4pushCs9gmjTwvRRSu_10typst_html.exit.i.i276 ] ; 6 uses
  %.sroa.15.0.i.i = phi ptr [ undef, %bb.ds ], [ %.sroa.15.1.i.i, %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4pushCs9gmjTwvRRSu_10typst_html.exit.i.i276 ] ; 5 uses
  %.sroa.769.0.i.i = phi ptr [ null, %bb.ds ], [ %.sroa.769.1.i.i, %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4pushCs9gmjTwvRRSu_10typst_html.exit.i.i276 ] ; 3 uses
  %.sroa.468.0.i.i = phi ptr [ %., %bb.ds ], [ %.sroa.468.1.i.i, %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4pushCs9gmjTwvRRSu_10typst_html.exit.i.i276 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !14123
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.769.0.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNCINvNvXsi_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEuINtNtNtBg_3ops12control_flow11ControlFlowRB2y_ENCINvNvB1j_4find5checkB4h_QNCNvMs0_NtNtB2E_13introspection12introspectorINtB4W_19ElementIntrospectorNtNtB4Y_8position12HtmlPositionE5querys7_0E0E0Cs9gmjTwvRRSu_10typst_html.exit47.thread.i.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.15.0.i.i) ]
  %i.vv = icmp eq ptr %.sroa.769.0.i.i, %.sroa.15.0.i.i
  br i1 %i.vv, label %_RNCINvNvXsi_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEuINtNtNtBg_3ops12control_flow11ControlFlowRB2y_ENCINvNvB1j_4find5checkB4h_QNCNvMs0_NtNtB2E_13introspection12introspectorINtB4W_19ElementIntrospectorNtNtB4Y_8position12HtmlPositionE5querys7_0E0E0Cs9gmjTwvRRSu_10typst_html.exit47.thread.i.i, label %.lr.ph.i.i26.i.i

_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator4find5checkRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentQNCNvMs0_NtNtB1S_13introspection12introspectorINtB2X_19ElementIntrospectorNtNtB2Z_8position12HtmlPositionE5querys7_0E0INtB7_5FnMutTuB1L_EE8call_mutCs9gmjTwvRRSu_10typst_html.exit.loopexit.i.i44.i.i: ; preds = %.noexc3.i
  %i.vw = icmp eq ptr %i.vy, %.sroa.15.0.i.i
  br i1 %i.vw, label %_RNCINvNvXsi_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEuINtNtNtBg_3ops12control_flow11ControlFlowRB2y_ENCINvNvB1j_4find5checkB4h_QNCNvMs0_NtNtB2E_13introspection12introspectorINtB4W_19ElementIntrospectorNtNtB4Y_8position12HtmlPositionE5querys7_0E0E0Cs9gmjTwvRRSu_10typst_html.exit47.thread.i.i, label %.lr.ph.i.i26.i.i

.lr.ph.i.i26.i.i:                                 ; preds = %bb.du, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator4find5checkRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentQNCNvMs0_NtNtB1S_13introspection12introspectorINtB2X_19ElementIntrospectorNtNtB2Z_8position12HtmlPositionE5querys7_0E0INtB7_5FnMutTuB1L_EE8call_mutCs9gmjTwvRRSu_10typst_html.exit.loopexit.i.i44.i.i
  %i.vx = phi ptr [ %i.vy, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator4find5checkRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentQNCNvMs0_NtNtB1S_13introspection12introspectorINtB2X_19ElementIntrospectorNtNtB2Z_8position12HtmlPositionE5querys7_0E0INtB7_5FnMutTuB1L_EE8call_mutCs9gmjTwvRRSu_10typst_html.exit.loopexit.i.i44.i.i ], [ %.sroa.769.0.i.i, %bb.du ] ; 4 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 24 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14125), !noalias !14128
  call void @llvm.experimental.noalias.scope.decl(metadata !14131), !noalias !14128
  call void @llvm.experimental.noalias.scope.decl(metadata !14134), !noalias !14128
  %.val.i.i.i.i.i.i.i.i29.i.i = load ptr, ptr %i.vx, align 8, !alias.scope !14137, !noalias !14138, !nonnull !7 ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i29.i.i, i64 16
  br i1 %i.vr, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtB6_7flatten7FlattenINtNtBa_6option4IterINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEEENCNvMs0_NtNtB2K_13introspection12introspectorINtB3R_19ElementIntrospectorNtNtB3T_8position12HtmlPositionE5querys7_0EENtNtNtB8_6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.i.i, label %.lr.ph

bb.dv:                                            ; preds = %.noexc3.i
  %i.wa = icmp eq ptr %i.wc, %i.vq
  br i1 %i.wa, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtB6_7flatten7FlattenINtNtBa_6option4IterINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEEENCNvMs0_NtNtB2K_13introspection12introspectorINtB3R_19ElementIntrospectorNtNtB3T_8position12HtmlPositionE5querys7_0EENtNtNtB8_6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i.i26.i.i, %bb.dv
  %i.wb = phi ptr [ %i.wc, %bb.dv ], [ %i.st, %.lr.ph.i.i26.i.i ] ; 3 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 16 ; 2 uses
  %.val3.i.i.i.i.i.i.i30.i.i = load ptr, ptr %i.wb, align 8, !noalias !14145, !nonnull !7, !noundef !7
  %i.wd = getelementptr i8, ptr %i.wb, i64 8
  %.val4.i.i.i.i.i.i.i31.i.i = load i64, ptr %i.wd, align 8, !noalias !14145, !noundef !7
  %i.we = load i128, ptr %.val.i.i.i.i.i.i.i.i29.i.i, align 16, !range !51, !noalias !14145, !noundef !7
  %i.wf = trunc nuw i128 %i.we to i1
  br i1 %i.wf, label %bb.dw, label %.invoke1988, !prof !53

bb.dw:                                            ; preds = %.lr.ph
  %i.wg = load i128, ptr %i.vz, align 16, !noalias !14145 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14146), !noalias !14128
  %i.wh = load i64, ptr %i.vn, align 8, !alias.scope !14146, !noalias !14145, !noundef !7
  %i.wi = icmp eq i64 %i.wh, 0
  br i1 %i.wi, label %_RNCNCNvMs0_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB9_19ElementIntrospectorNtNtBb_8position12HtmlPositionE5querys7_00Cs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i42.i.i, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
end_hunk_0
begin_hunk_1_@_RNvNtCs9gmjTwvRRSu_10typst_html6encode13write_element:bb.a
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.kh) #49
          to label %.body.i.i unwind label %bb.bb, !noalias !16469

.loopexit.i.i.i.i:                                ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4find5checkcNCNCNvNtCs9gmjTwvRRSu_10typst_html6encode16collect_raw_text00E0B1l_.exit.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !16477)
  %i.mr = load i64, ptr %i.t, align 8, !range !518, !alias.scope !16480, !noalias !16483, !noundef !7
  %i.ms = sub i64 %i.mr, %i.ki
  %i.mt = icmp ugt i64 %.sroa.3.0.i.i.i.i, %i.ms
  br i1 %i.mt, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i.i.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i, !prof !73

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.thread.i.i.i.i: ; preds = %bb.av
  %i.mu = icmp sgt i64 %i.ki, -1
  call void @llvm.assume(i1 %i.mu)
  br label %_RNCNvNtCs9gmjTwvRRSu_10typst_html6encode16collect_raw_text0B5_.exit.thread.i.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i.i.i: ; preds = %.loopexit.i.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t, i64 noundef %i.ki, i64 noundef %.sroa.3.0.i.i.i.i, i64 noundef 1, i64 noundef 1)
          to label %.noexc10.i.i unwind label %.loopexit.i.i, !noalias !16449

.noexc10.i.i:                                     ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i.i.i
  %i.mv = load i64, ptr %.sroa.55.0..sroa_idx.i.i, align 8, !alias.scope !16484, !noalias !16483, !noundef !7
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !16484, !noalias !16483
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i: ; preds = %.noexc10.i.i, %.loopexit.i.i.i.i
  %i.mw = phi ptr [ %.pre.i.i, %.noexc10.i.i ], [ %.val1.i14.i.i, %.loopexit.i.i.i.i ] ; 2 uses
  %.sink30.i.i.i = phi i64 [ %i.mv, %.noexc10.i.i ], [ %i.ki, %.loopexit.i.i.i.i ] ; 3 uses
  %i.mx = icmp sgt i64 %.sink30.i.i.i, -1
  call void @llvm.assume(i1 %i.mx)
  %i.my = getelementptr inbounds nuw i8, ptr %i.mw, i64 %.sink30.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.my, ptr nonnull readonly align 1 %.sroa.0.0.i.i.i.i, i64 %.sroa.3.0.i.i.i.i, i1 false), !noalias !16485
  br label %_RNCNvNtCs9gmjTwvRRSu_10typst_html6encode16collect_raw_text0B5_.exit.thread.i.i.i

_RNCNvNtCs9gmjTwvRRSu_10typst_html6encode16collect_raw_text0B5_.exit.thread.i.i.i: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.thread.i.i.i.i
  %i.mz = phi ptr [ %i.mw, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i ], [ %.val1.i14.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.thread.i.i.i.i ]
  %i.na = phi i64 [ %.sink30.i.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i ], [ %i.ki, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.thread.i.i.i.i ]
  %i.nb = add i64 %i.na, %.sroa.3.0.i.i.i.i       ; 2 uses
  store i64 %i.nb, ptr %.sroa.55.0..sroa_idx.i.i, align 8, !alias.scope !16484, !noalias !16483
  br label %.backedge.i.i.i

_RNCNvNtCs9gmjTwvRRSu_10typst_html6encode16collect_raw_text0B5_.exit.i.i.i: ; preds = %.noexc.i.i
  %i.nc = extractvalue { i64, i64 } %i.mo, 1
  %i.nd = extractvalue { i64, i64 } %i.mo, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.kh, i64 16, i1 false), !noalias !16469
  store i64 %i.nd, ptr %i.o, align 8, !noalias !16470
  store i64 %i.nc, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !16470
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !16470
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !16470
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !16470
  store i64 0, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 8, !noalias !16470
  store i8 0, ptr %.sroa.10.0..sroa_idx.i.i.i.i, align 8, !noalias !16470
  %i.ne = invoke fastcc { ptr, i64 } @_RNvXsr_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromABH_j1_E4fromCs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.o)
          to label %.noexc11.i.i unwind label %.loopexit.i.i, !noalias !16449 ; 2 uses

.noexc11.i.i:                                     ; preds = %_RNCNvNtCs9gmjTwvRRSu_10typst_html6encode16collect_raw_text0B5_.exit.i.i.i
  %i.nf = extractvalue { ptr, i64 } %i.ne, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !16470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !16469
  %.not.i.i.i = icmp eq ptr %i.nf, null
  br i1 %.not.i.i.i, label %.backedge.i.i.i, label %.thread4.i.i

.loopexit663:                                     ; preds = %bb.au
  br label %bb.bd

bb.bd:                                            ; preds = %bb.au, %.loopexit663
  %.sink = phi i64 [ 104, %.loopexit663 ], [ 112, %bb.au ]
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i.i.i, i64 %.sink
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !16455
  %i.nh = load i64, ptr %i.ng, align 8, !range !282, !noalias !16455, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !16455
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !16455
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.q, i8 0, i64 15, i1 false), !noalias !16455
  %.sroa.417.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 15
  store i8 -128, ptr %.sroa.417.0..sroa_idx.i.i.i, align 1, !noalias !16455
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @83, i64 noundef 51)
          to label %bb.bf unwind label %bb.be, !noalias !16455

bb.be:                                            ; preds = %bb.bd
  %i.ni = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q) #49
          to label %.body.i.i unwind label %bb.bi, !noalias !16455

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false), !noalias !16455
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !16455
  %i.nj = invoke { i64, i64 } @_RNvXs0_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_8DiagSpanINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_4SpanE4from(i64 noundef range(i64 1, 0) %i.nh)
          to label %_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9gmjTwvRRSu_10typst_html.exit.i.i.i unwind label %bb.bh, !noalias !16486 ; 2 uses

bb.bg:                                            ; preds = %bb.bh
  %i.nk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !16486
  unreachable

bb.bh:                                            ; preds = %bb.bf
  %i.nl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.r) #49
          to label %.body.i.i unwind label %bb.bg, !noalias !16490

_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9gmjTwvRRSu_10typst_html.exit.i.i.i: ; preds = %bb.bf
  %i.nm = extractvalue { i64, i64 } %i.nj, 1
  %i.nn = extractvalue { i64, i64 } %i.nj, 0
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !noalias !16455
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !16455
  store i64 %i.nn, ptr %i.s, align 8, !noalias !16455
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.nm, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !16455
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !16455
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !16455
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !16455
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !16455
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store i8 0, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !noalias !16455
  %i.no = invoke fastcc { ptr, i64 } @_RNvXsr_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromABH_j1_E4fromCs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.s)
          to label %bb.bk unwind label %.loopexit.split-lp.i.i, !noalias !16449 ; 2 uses

bb.bi:                                            ; preds = %bb.be
  %i.np = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !16455
  unreachable

.loopexit.i.i:                                    ; preds = %_RNCNvNtCs9gmjTwvRRSu_10typst_html6encode16collect_raw_text0B5_.exit.i.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i.i.i, %bb.ba
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp.i.i:                           ; preds = %_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9gmjTwvRRSu_10typst_html.exit.i.i.i
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i, %bb.bh, %bb.be, %bb.bc
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ni, %bb.be ], [ %i.nl, %bb.bh ], [ %i.mq, %bb.bc ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16491)
  %.val.i.i.i = load i64, ptr %i.t, align 8, !alias.scope !16491, !noalias !16449 ; 2 uses
  %i.nq = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.nq, label %common.resume229, label %bb.bj

bb.bj:                                            ; preds = %.body.i.i
  %.val1.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !16491, !noalias !16449, !nonnull !7, !noundef !7
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !16494
  br label %common.resume229

bb.bk:                                            ; preds = %_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9gmjTwvRRSu_10typst_html.exit.i.i.i
  %i.nr = extractvalue { ptr, i64 } %i.no, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !16455
  %.not.i.i144 = icmp eq ptr %i.nr, null
  br i1 %.not.i.i144, label %_RNvNtCs9gmjTwvRRSu_10typst_html6encode16collect_raw_text.exit.i, label %.thread4.i.i

.thread4.i.i:                                     ; preds = %.noexc11.i.i, %bb.bk
  %.sroa.0.1.i9.i.i = phi ptr [ %i.nr, %bb.bk ], [ %i.nf, %.noexc11.i.i ]
  %.pn.i.i = phi { ptr, i64 } [ %i.no, %bb.bk ], [ %i.ne, %.noexc11.i.i ]
  %.sroa.4.1.i8.i.i = extractvalue { ptr, i64 } %.pn.i.i, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !16495)
  %.val.i13.i.i = load i64, ptr %i.t, align 8, !alias.scope !16495, !noalias !16449 ; 2 uses
  %i.ns = icmp eq i64 %.val.i13.i.i, 0
  br i1 %i.ns, label %_RNvNtCs9gmjTwvRRSu_10typst_html6encode16collect_raw_text.exit.thread.i, label %bb.bl

bb.bl:                                            ; preds = %.thread4.i.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i14.i.i, i64 noundef %.val.i13.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !16498
  br label %_RNvNtCs9gmjTwvRRSu_10typst_html6encode16collect_raw_text.exit.thread.i

_RNvNtCs9gmjTwvRRSu_10typst_html6encode16collect_raw_text.exit.thread.i: ; preds = %bb.bl, %.thread4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !16449
  br label %_RNvNtCs9gmjTwvRRSu_10typst_html6encode9write_raw.exit.thread210

_RNvNtCs9gmjTwvRRSu_10typst_html6encode16collect_raw_text.exit.i: ; preds = %.backedge.i.i.i, %bb.bk, %bb.at
  %.sroa.9.0.copyload.i = phi i64 [ %i.ki, %bb.bk ], [ 0, %bb.at ], [ %i.km, %.backedge.i.i.i ] ; 32 uses
  %.sroa.6.0.copyload.i = phi ptr [ %.val1.i14.i.i, %bb.bk ], [ inttoptr (i64 1 to ptr), %bb.at ], [ %i.kl, %.backedge.i.i.i ] ; 21 uses
  %.sroa.0187.0.copyload.i = load i64, ptr %i.t, align 8, !noalias !16499 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !16449
  %i.nt = icmp eq i64 %.sroa.0187.0.copyload.i, -1
  br i1 %i.nt, label %_RNvNtCs9gmjTwvRRSu_10typst_html6encode9write_raw.exit.thread210, label %bb.bm

_RNvNtCs9gmjTwvRRSu_10typst_html6encode9write_raw.exit.thread210: ; preds = %_RNvNtCs9gmjTwvRRSu_10typst_html6encode16collect_raw_text.exit.thread.i, %_RNvNtCs9gmjTwvRRSu_10typst_html6encode16collect_raw_text.exit.i
  %.sroa.6.0207.i = phi ptr [ %.sroa.0.1.i9.i.i, %_RNvNtCs9gmjTwvRRSu_10typst_html6encode16collect_raw_text.exit.thread.i ], [ %.sroa.6.0.copyload.i, %_RNvNtCs9gmjTwvRRSu_10typst_html6encode16collect_raw_text.exit.i ] ; 2 uses
  %.sroa.9.0204.i = phi i64 [ %.sroa.4.1.i8.i.i, %_RNvNtCs9gmjTwvRRSu_10typst_html6encode16collect_raw_text.exit.thread.i ], [ %.sroa.9.0.copyload.i, %_RNvNtCs9gmjTwvRRSu_10typst_html6encode16collect_raw_text.exit.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0207.i) ]
  br label %.loopexit231

bb.bm:                                            ; preds = %_RNvNtCs9gmjTwvRRSu_10typst_html6encode16collect_raw_text.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !16500)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !16503
  invoke void @_RNvMNtCs6xpQEr8gLsQ_11typst_utils4picoNtB2_7PicoStr7resolve(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, i64 noundef range(i64 1, 0) %i.au)
          to label %.noexc91.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !16499

.noexc91.i:                                       ; preds = %bb.bm
  %i.nu = invoke { ptr, i64 } @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils4picoNtB5_15ResolvedPicoStrNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n)
          to label %.noexc92.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !16499

.noexc92.i:                                       ; preds = %.noexc91.i
  %i.nv = extractvalue { ptr, i64 } %i.nu, 1      ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !16503
  invoke void @_RNvMsu_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.6.0.copyload.i, i64 noundef %.sroa.9.0.copyload.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1460, i64 noundef 2)
          to label %.noexc93.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !16499

.noexc93.i:                                       ; preds = %.noexc92.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !16504
  invoke fastcc void @_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.m) #52
          to label %.noexc94.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !16499

.noexc94.i:                                       ; preds = %.noexc93.i
  %i.nw = load i64, ptr %i.l, align 8, !range !265, !noalias !16504, !noundef !7
  %i.nx = trunc nuw i64 %i.nw to i1
  br i1 %i.nx, label %.lr.ph.i.i89.i, label %.thread.i

.lr.ph.i.i89.i:                                   ; preds = %.noexc94.i
  %i.ny = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.nz = icmp ne i64 %i.nv, 0
  %i.oa = icmp ugt i64 %i.nv, 15
  %i.ob = and i64 %i.nv, 15
  %i.oc = lshr i64 %i.nv, 4
  %i.od = icmp eq i64 %i.ob, 0
  %.not.i27.i.i.i.i.i619 = icmp eq i64 %i.nv, 0
  br label %bb.bn

bb.bn:                                            ; preds = %.noexc100.i, %.lr.ph.i.i89.i
  %i.oe = load i64, ptr %i.ny, align 8, !noalias !16514, !noundef !7 ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !16514
  %i.of = add i64 %i.oe, 2                        ; 9 uses
  %i.og = icmp eq i64 %i.of, 0
  br i1 %i.og, label %bb.bq, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %.not.i.i.i.i.i90.i = icmp ult i64 %i.of, %.sroa.9.0.copyload.i
  br i1 %.not.i.i.i.i.i90.i, label %bb.bp, label %.split.i.i.i.i.i.i

.split.i.i.i.i.i.i:                               ; preds = %bb.bo
  %i.oh = icmp eq i64 %i.of, %.sroa.9.0.copyload.i
  br i1 %i.oh, label %bb.bq, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread3.i.i.i.i.i.invoke.i

bb.bp:                                            ; preds = %bb.bo
  %i.oi = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 %i.of
  %i.oj = load i8, ptr %i.oi, align 1, !alias.scope !16517, !noalias !16520, !noundef !7
  %i.ok = icmp sgt i8 %i.oj, -65
  br i1 %i.ok, label %bb.bq, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread3.i.i.i.i.i.invoke.i

bb.bq:                                            ; preds = %bb.bp, %.split.i.i.i.i.i.i, %bb.bn
  %i.ol = sub nuw i64 %.sroa.9.0.copyload.i, %i.of ; 7 uses
  %i.om = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 %i.of ; 8 uses
  %.not19.i.i.i.i.i = icmp ult i64 %i.ol, %i.nv
  br i1 %.not19.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %.not.i23.i.i.i.i.i = icmp ult i64 %i.nv, %i.ol ; 2 uses
  %or.cond.i.i.i.i.i = and i1 %i.nz, %.not.i23.i.i.i.i.i ; 2 uses
  br i1 %or.cond.i.i.i.i.i, label %bb.bs, label %.split.i24.i.i.i.i.i

bb.bs:                                            ; preds = %bb.br
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.nv
  %i.oo = load i8, ptr %i.on, align 1, !alias.scope !16526, !noalias !16520, !noundef !7
  %i.op = icmp sgt i8 %i.oo, -65
  br i1 %i.op, label %.split.i24.i.i.i.i.i, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread3.i.i.i.i.i.invoke.i

.split.i24.i.i.i.i.i:                             ; preds = %bb.bs, %bb.br
  %i.oq = invoke { ptr, i64 } @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils4picoNtB5_15ResolvedPicoStrNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n)
          to label %.noexc96.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !16499 ; 2 uses

.noexc96.i:                                       ; preds = %.split.i24.i.i.i.i.i
  %i.or = extractvalue { ptr, i64 } %i.oq, 0      ; 3 uses
  %i.os = extractvalue { ptr, i64 } %i.oq, 1
  %.not21.i.i.i.i.i = icmp eq i64 %i.nv, %i.os
  br i1 %.not21.i.i.i.i.i, label %bb.bt, label %.loopexit.i.i.i

bb.bt:                                            ; preds = %.noexc96.i
  br i1 %i.oa, label %.lr.ph.i.preheader.i.i.i.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.experimental.noalias.scope.decl(metadata !16529)
  call void @llvm.experimental.noalias.scope.decl(metadata !16532)
  br i1 %.not.i27.i.i.i.i.i619, label %.loopexit.i.i.i.i.i, label %.lr.ph624

bb.bv:                                            ; preds = %.lr.ph624
  %i.ot = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i26.i.i.i.i.i622, i64 1
  %i.ou = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.i.i.i.i621, i64 1
  %i.ov = add nsw i64 %.sroa.58.0.i.i.i.i.i.i620, -1 ; 2 uses
  %.not.i27.i.i.i.i.i = icmp eq i64 %i.ov, 0
  br i1 %.not.i27.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %.lr.ph624

.lr.ph624:                                        ; preds = %bb.bu, %bb.bv
  %.sroa.0.0.i26.i.i.i.i.i622 = phi ptr [ %i.ot, %bb.bv ], [ %i.om, %bb.bu ] ; 2 uses
  %.sroa.05.0.i.i.i.i.i.i621 = phi ptr [ %i.ou, %bb.bv ], [ %i.or, %bb.bu ] ; 2 uses
  %.sroa.58.0.i.i.i.i.i.i620 = phi i64 [ %i.ov, %bb.bv ], [ %i.nv, %bb.bu ]
  %i.ow = load i8, ptr %.sroa.0.0.i26.i.i.i.i.i622, align 1, !alias.scope !16534, !noalias !16535, !noundef !7 ; 2 uses
  %i.ox = add i8 %i.ow, -65
  %i.oy = icmp ult i8 %i.ox, 26
  %i.oz = select i1 %i.oy, i8 32, i8 0
  %.sroa.012.0.i.i.i.i.i.i = or i8 %i.oz, %i.ow
  %i.pa = load i8, ptr %.sroa.05.0.i.i.i.i.i.i621, align 1, !alias.scope !16532, !noalias !16536, !noundef !7 ; 2 uses
  %i.pb = add i8 %i.pa, -65
  %i.pc = icmp ult i8 %i.pb, 26
  %i.pd = select i1 %i.pc, i8 32, i8 0
  %.sroa.013.0.i.i.i.i.i.i = or i8 %i.pd, %i.pa
  %i.pe = icmp eq i8 %.sroa.012.0.i.i.i.i.i.i, %.sroa.013.0.i.i.i.i.i.i
  br i1 %i.pe, label %bb.bv, label %.loopexit.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %bb.bt
  call void @llvm.experimental.noalias.scope.decl(metadata !16537)
  call void @llvm.experimental.noalias.scope.decl(metadata !16540)
  br label %.lr.ph.i.i.i.i.i.i

bb.bw:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.pf = add nuw nsw i64 %.sroa.02.039.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.pf, %i.oc
  br i1 %exitcond.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.bw
  br i1 %i.od, label %.loopexit.i.i.i.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCs9gmjTwvRRSu_10typst_html.exit24.i.i.i.i.i.i

_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCs9gmjTwvRRSu_10typst_html.exit24.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i
  %i.pg = getelementptr i8, ptr %i.om, i64 %i.nv
  %i.ph = getelementptr i8, ptr %i.pg, i64 -16
  %i.pi = getelementptr i8, ptr %i.or, i64 %i.nv
  %i.pj = getelementptr i8, ptr %i.pi, i64 -16
  call void @llvm.experimental.noalias.scope.decl(metadata !16542)
  call void @llvm.experimental.noalias.scope.decl(metadata !16545)
  %i.pk = load <16 x i8>, ptr %i.ph, align 1, !alias.scope !16547, !noalias !16548 ; 2 uses
  %i.pl = add <16 x i8> %i.pk, splat (i8 -65)
  %i.pm = icmp ult <16 x i8> %i.pl, splat (i8 26)
  %i.pn = select <16 x i1> %i.pm, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.po = or <16 x i8> %i.pn, %i.pk
  %i.pp = load <16 x i8>, ptr %i.pj, align 1, !alias.scope !16549, !noalias !16550 ; 2 uses
  %i.pq = add <16 x i8> %i.pp, splat (i8 -65)
  %i.pr = icmp ult <16 x i8> %i.pq, splat (i8 26)
  %i.ps = select <16 x i1> %i.pr, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.pt = or <16 x i8> %i.ps, %i.pp
  %i.pu = icmp ne <16 x i8> %i.po, %i.pt
  %i.pv = bitcast <16 x i1> %i.pu to i16
  %i.pw = icmp eq i16 %i.pv, 0
  br i1 %i.pw, label %.loopexit.i.i.i.thread.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.bw, %.lr.ph.i.preheader.i.i.i.i.i
  %.sroa.02.039.i.i.i.i.i.i = phi i64 [ %i.pf, %bb.bw ], [ 0, %.lr.ph.i.preheader.i.i.i.i.i ] ; 3 uses
  %i.px = getelementptr inbounds nuw [16 x i8], ptr %i.om, i64 %.sroa.02.039.i.i.i.i.i.i
  %i.py = getelementptr inbounds nuw [16 x i8], ptr %i.or, i64 %.sroa.02.039.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !16551)
  call void @llvm.experimental.noalias.scope.decl(metadata !16554)
  %i.pz = load <16 x i8>, ptr %i.px, align 1, !alias.scope !16556, !noalias !16557 ; 2 uses
  %i.qa = add <16 x i8> %i.pz, splat (i8 -65)
  %i.qb = icmp ult <16 x i8> %i.qa, splat (i8 26)
  %i.qc = select <16 x i1> %i.qb, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.qd = or <16 x i8> %i.qc, %i.pz
  %i.qe = load <16 x i8>, ptr %i.py, align 1, !alias.scope !16558, !noalias !16559 ; 2 uses
  %i.qf = add <16 x i8> %i.qe, splat (i8 -65)
  %i.qg = icmp ult <16 x i8> %i.qf, splat (i8 26)
  %i.qh = select <16 x i1> %i.qg, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.qi = or <16 x i8> %i.qh, %i.qe
  %i.qj = icmp ne <16 x i8> %i.qd, %i.qi
  %i.qk = bitcast <16 x i1> %i.qj to i16
  %i.ql = icmp eq i16 %i.qk, 0
  br i1 %i.ql, label %bb.bw, label %.loopexit.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %bb.bv, %bb.bu, %._crit_edge.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %bb.bx, label %.split.i30.i.i.i.i.i

.loopexit.i.i.i.thread.i.i:                       ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCs9gmjTwvRRSu_10typst_html.exit24.i.i.i.i.i.i
  br i1 %.not.i23.i.i.i.i.i, label %bb.bx, label %.split.i30.i.i.i.i.i

bb.bx:                                            ; preds = %.loopexit.i.i.i.thread.i.i, %.loopexit.i.i.i.i.i
  %i.qm = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.nv
  %i.qn = load i8, ptr %i.qm, align 1, !alias.scope !16560, !noalias !16520, !noundef !7
  %i.qo = icmp sgt i8 %i.qn, -65
  br i1 %i.qo, label %.split.i30.i.i.i.i.i, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread3.i.i.i.i.i.invoke.i

.split.i30.i.i.i.i.i:                             ; preds = %bb.bx, %.loopexit.i.i.i.thread.i.i, %.loopexit.i.i.i.i.i
  %i.qp = sub nuw i64 %i.ol, %i.nv                ; 3 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.nv ; 4 uses
  %i.qr = icmp eq i64 %i.ol, %i.nv
  br i1 %i.qr, label %.loopexit.i.i.i, label %bb.by

bb.by:                                            ; preds = %.split.i30.i.i.i.i.i
  %i.qs = load i8, ptr %i.qq, align 1, !alias.scope !16563, !noalias !16566, !noundef !7 ; 5 uses
  %i.qt = icmp sgt i8 %i.qs, -1
  br i1 %i.qt, label %bb.bz, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit12.i.i.i.i.i.i.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit12.i.i.i.i.i.i.i.i.i: ; preds = %bb.by
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qq, i64 1
  %i.qv = and i8 %i.qs, 31
  %i.qw = zext nneg i8 %i.qv to i32               ; 3 uses
  %i.qx = icmp samesign ne i64 %i.qp, 1
  call void @llvm.assume(i1 %i.qx)
  %i.qy = load i8, ptr %i.qu, align 1, !alias.scope !16563, !noalias !16566, !noundef !7
  %i.qz = shl nuw nsw i32 %i.qw, 6
  %i.ra = and i8 %i.qy, 63
  %i.rb = zext nneg i8 %i.ra to i32               ; 2 uses
  %i.rc = or disjoint i32 %i.qz, %i.rb
  %i.rd = icmp samesign ugt i8 %i.qs, -33
  br i1 %i.rd, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit14.i.i.i.i.i.i.i.i.i, label %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj7_ENtB5_7Pattern12is_prefix_ofCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i

bb.bz:                                            ; preds = %bb.by
  %i.re = zext nneg i8 %i.qs to i32
  br label %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj7_ENtB5_7Pattern12is_prefix_ofCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit14.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit12.i.i.i.i.i.i.i.i.i
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qq, i64 2
  %i.rg = icmp samesign ne i64 %i.qp, 2
  call void @llvm.assume(i1 %i.rg)
  %i.rh = load i8, ptr %i.rf, align 1, !alias.scope !16563, !noalias !16566, !noundef !7
  %i.ri = shl nuw nsw i32 %i.rb, 6
  %i.rj = and i8 %i.rh, 63
  %i.rk = zext nneg i8 %i.rj to i32
  %i.rl = or disjoint i32 %i.ri, %i.rk            ; 2 uses
  %i.rm = shl nuw nsw i32 %i.qw, 12
  %i.rn = or disjoint i32 %i.rl, %i.rm
  %i.ro = icmp samesign ugt i8 %i.qs, -17
  br i1 %i.ro, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit16.i.i.i.i.i.i.i.i.i, label %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj7_ENtB5_7Pattern12is_prefix_ofCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit16.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit14.i.i.i.i.i.i.i.i.i
  %i.rp = getelementptr inbounds nuw i8, ptr %i.qq, i64 3
  %i.rq = icmp samesign ne i64 %i.qp, 3
  call void @llvm.assume(i1 %i.rq)
  %i.rr = load i8, ptr %i.rp, align 1, !alias.scope !16563, !noalias !16566, !noundef !7
  %i.rs = shl nuw nsw i32 %i.qw, 18
  %i.rt = and i32 %i.rs, 1835008
  %i.ru = shl nuw nsw i32 %i.rl, 6
  %i.rv = and i8 %i.rr, 63
  %i.rw = zext nneg i8 %i.rv to i32
  %i.rx = or disjoint i32 %i.ru, %i.rw
  %i.ry = or disjoint i32 %i.rx, %i.rt
  br label %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj7_ENtB5_7Pattern12is_prefix_ofCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i

_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj7_ENtB5_7Pattern12is_prefix_ofCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit16.i.i.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit14.i.i.i.i.i.i.i.i.i, %bb.bz, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit12.i.i.i.i.i.i.i.i.i
  %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i = phi i32 [ %i.rn, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit14.i.i.i.i.i.i.i.i.i ], [ %i.ry, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit16.i.i.i.i.i.i.i.i.i ], [ %i.rc, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit12.i.i.i.i.i.i.i.i.i ], [ %i.re, %bb.bz ]
  %.sroa.4.0.i.ph.i.i.i.fr.i.i.i.i.i = freeze i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i ; 3 uses
  %i.rz = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.fr.i.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.rz)
  %i.sa = and i32 %.sroa.4.0.i.ph.i.i.i.fr.i.i.i.i.i, 2097150
  %i.sb = icmp eq i32 %i.sa, 12
  br i1 %i.sb, label %bb.ca, label %switch.early.test.i.i.i.i.i

switch.early.test.i.i.i.i.i:                      ; preds = %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj7_ENtB5_7Pattern12is_prefix_ofCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i
  switch i32 %.sroa.4.0.i.ph.i.i.i.fr.i.i.i.i.i, label %.loopexit.i.i.i [
    i32 62, label %bb.ca
    i32 47, label %bb.ca
    i32 32, label %bb.ca
    i32 10, label %bb.ca
    i32 9, label %bb.ca
  ]

bb.ca:                                            ; preds = %switch.early.test.i.i.i.i.i, %switch.early.test.i.i.i.i.i, %switch.early.test.i.i.i.i.i, %switch.early.test.i.i.i.i.i, %switch.early.test.i.i.i.i.i, %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj7_ENtB5_7Pattern12is_prefix_ofCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i
  %i.sc = add i64 %i.of, %i.nv                    ; 8 uses
  %i.sd = icmp ugt i64 %i.oe, %i.sc
  %i.se = icmp ugt i64 %i.sc, %.sroa.9.0.copyload.i
  %or.cond.i.i.i.i.i.i.i = or i1 %i.sd, %i.se
  br i1 %or.cond.i.i.i.i.i.i.i, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread3.i.i.i.i.i.invoke.i, label %bb.cb, !prof !11600

bb.cb:                                            ; preds = %bb.ca
  %i.sf = icmp eq i64 %i.oe, %.sroa.9.0.copyload.i
  br i1 %i.sf, label %bb.cg, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.sg = icmp eq i64 %i.oe, 0
  br i1 %i.sg, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.ce, %bb.cc
  %i.sh = icmp eq i64 %i.sc, %.sroa.9.0.copyload.i
  br i1 %i.sh, label %bb.cg, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i.i.i.i.i.i

bb.ce:                                            ; preds = %bb.cc
  %i.si = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 %i.oe
  %i.sj = load i8, ptr %i.si, align 1, !alias.scope !16575, !noalias !16578, !noundef !7
  %i.sk = icmp sgt i8 %i.sj, -65
  br i1 %i.sk, label %bb.cd, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread3.i.i.i.i.i.invoke.i, !prof !16581

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i.i.i.i.i.i: ; preds = %bb.cd
  %i.sl = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 %i.sc
  %i.sm = load i8, ptr %i.sl, align 1, !alias.scope !16575, !noalias !16578, !noundef !7
  %i.sn = icmp sgt i8 %i.sm, -65
  br i1 %i.sn, label %bb.cg, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread3.i.i.i.i.i.invoke.i, !prof !1538

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread3.i.i.i.i.i.invoke.i: ; preds = %bb.bx, %bb.bs, %bb.bp, %.split.i.i.i.i.i.i, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i.i.i.i.i.i, %bb.ce, %bb.ca
  %i.so = phi ptr [ %.sroa.6.0.copyload.i, %bb.ca ], [ %.sroa.6.0.copyload.i, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i.i.i.i.i.i ], [ %.sroa.6.0.copyload.i, %bb.ce ], [ %.sroa.6.0.copyload.i, %bb.bp ], [ %.sroa.6.0.copyload.i, %.split.i.i.i.i.i.i ], [ %i.om, %bb.bs ], [ %i.om, %bb.bx ]
  %i.sp = phi i64 [ %.sroa.9.0.copyload.i, %bb.ca ], [ %.sroa.9.0.copyload.i, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i.i.i.i.i.i ], [ %.sroa.9.0.copyload.i, %bb.ce ], [ %.sroa.9.0.copyload.i, %bb.bp ], [ %.sroa.9.0.copyload.i, %.split.i.i.i.i.i.i ], [ %i.ol, %bb.bs ], [ %i.ol, %bb.bx ]
  %i.sq = phi i64 [ %i.oe, %bb.ca ], [ %i.oe, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i.i.i.i.i.i ], [ %i.oe, %bb.ce ], [ %i.of, %bb.bp ], [ %i.of, %.split.i.i.i.i.i.i ], [ 0, %bb.bs ], [ %i.nv, %bb.bx ]
  %i.sr = phi i64 [ %i.sc, %bb.ca ], [ %i.sc, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i.i.i.i.i.i ], [ %i.sc, %bb.ce ], [ %.sroa.9.0.copyload.i, %bb.bp ], [ %.sroa.9.0.copyload.i, %.split.i.i.i.i.i.i ], [ %i.nv, %bb.bs ], [ %i.ol, %bb.bx ]
  %i.ss = phi ptr [ @123, %bb.ca ], [ @123, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i.i.i.i.i.i ], [ @123, %bb.ce ], [ @881, %bb.bp ], [ @881, %.split.i.i.i.i.i.i ], [ @882, %bb.bs ], [ @883, %bb.bx ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.so, i64 noundef %i.sp, i64 noundef %i.sq, i64 noundef %i.sr, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ss) #51
          to label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread3.i.i.i.i.i.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !16499

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread3.i.i.i.i.i.cont.i: ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread3.i.i.i.i.i.invoke.i
  unreachable

.thread.i:                                        ; preds = %.noexc100.i, %.noexc94.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !16514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !16503
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !16503
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.su = load i8, ptr %i.st, align 8, !range !504, !alias.scope !16444, !noalias !16447, !noundef !7
  %i.sv = trunc nuw i8 %i.su to i1
  br i1 %i.sv, label %bb.cv, label %_RNvMs_NtCs9gmjTwvRRSu_10typst_html6encodeNtB4_7RawMode2of.exit.thread234.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph624, %.lr.ph.i.i.i.i.i.i, %switch.early.test.i.i.i.i.i, %.split.i30.i.i.i.i.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCs9gmjTwvRRSu_10typst_html.exit24.i.i.i.i.i.i, %.noexc96.i, %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !16582
  invoke fastcc void @_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.m) #52
          to label %.noexc100.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !16499

.noexc100.i:                                      ; preds = %.loopexit.i.i.i
  %i.sw = load i64, ptr %i.l, align 8, !range !265, !noalias !16582, !noundef !7
  %i.sx = trunc nuw i64 %i.sw to i1
  br i1 %i.sx, label %bb.bn, label %.thread.i

.body.i:                                          ; preds = %.body105.i, %bb.ck, %bb.ch, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %.pn85.i = phi { ptr, i32 } [ %i.te, %bb.ch ], [ %.pn.i, %.body105.i ], [ %i.th, %bb.ck ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit242.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit245.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit248.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit251.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit257.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp258.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ] ; 2 uses
  %i.sy = icmp eq i64 %.sroa.0187.0.copyload.i, 0
  br i1 %i.sy, label %common.resume229, label %bb.cf

bb.cf:                                            ; preds = %.body.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.i, i64 noundef %.sroa.0187.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !16585
  br label %common.resume229

.loopexit.i:                                      ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9gmjTwvRRSu_10typst_html.exit.thread.i.i152.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.i:                    ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9gmjTwvRRSu_10typst_html.exit.thread.i.i168.i
  %lpad.loopexit242.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %bb.di
  %lpad.loopexit245.i = landingpad { ptr, i32 }
          cleanup
  store i64 %i.xv, ptr %.sroa.374.sroa.3.0..sroa.374.0..sroa_idx.sroa_idx.i, align 8, !noalias !16499
  br label %.body.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9gmjTwvRRSu_10typst_html.exit.thread.i176.i, %bb.dq
  %lpad.loopexit248.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i
  %lpad.loopexit251.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %.loopexit.i.i.i, %.split.i24.i.i.i.i.i
  %lpad.loopexit257.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.do, %bb.dg, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9gmjTwvRRSu_10typst_html.exit.thread.i124.i, %bb.db, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9gmjTwvRRSu_10typst_html.exit.thread.i.i, %bb.cy, %bb.cr, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread3.i.i.i.i.i.invoke.i, %.noexc93.i, %.noexc92.i, %.noexc91.i, %bb.bm
  %lpad.loopexit.split-lp258.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.cg:                                            ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i.i.i.i.i.i, %bb.cd, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !16503
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !16503
  %i.sz = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 %i.oe
  %i.ta = sub nuw i64 %i.sc, %i.oe
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !16499
  store ptr %i.sz, ptr %i.ab, align 8, !noalias !16499, !captures !4472
end_hunk_1
begin_hunk_2_@_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast8CastInfoEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB2z_INtNtNtB2H_5slice4iter4IterNtNtCs4wS76oGtFbW_12typst_assets4html4TypeENCNvMs0_NtCs9gmjTwvRRSu_10typst_html5typedNtB4H_9UnionType4iter0ENCNvB4D_5input0EE9from_iterB4J_:bb.a
  %.sroa.28.sroa.27.0.extract.trunc64 = trunc i64 %.sroa.28.sroa.27.0.extract.shift63 to i8
  %.sroa.28.sroa.28.0.extract.shift107 = and i64 %i.u, -1099511627776
  br label %_RNvMNtCs9gmjTwvRRSu_10typst_html5typedNtB2_8AttrType7convert.exit

bb.aa:                                            ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !21318, !noalias !21324, !nonnull !7, !align !151, !noundef !7
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !21318, !noalias !21324, !noundef !7 ; 3 uses
  %i.z = ptrtoint ptr %i.w to i64
  %.sroa.28.sroa.0.0.extract.trunc = trunc i64 %i.y to i32
  %.sroa.28.sroa.27.0.extract.shift61 = lshr i64 %i.y, 32
  %.sroa.28.sroa.27.0.extract.trunc62 = trunc i64 %.sroa.28.sroa.27.0.extract.shift61 to i8
  %.sroa.28.sroa.28.0.extract.shift105 = and i64 %i.y, -1099511627776
  br label %_RNvMNtCs9gmjTwvRRSu_10typst_html5typedNtB2_8AttrType7convert.exit

bb.ab:                                            ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !21318, !noalias !21324, !nonnull !7, !align !151, !noundef !7
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !range !13049, !alias.scope !21318, !noalias !21324, !noundef !7
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !range !504, !alias.scope !21318, !noalias !21324, !noundef !7
  %i.ag = ptrtoint ptr %i.ab to i64
  br label %_RNvMNtCs9gmjTwvRRSu_10typst_html5typedNtB2_8AttrType7convert.exit

_RNvMNtCs9gmjTwvRRSu_10typst_html5typedNtB2_8AttrType7convert.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab
  %.sroa.28.sroa.27.0 = phi i8 [ undef, %bb.d ], [ %.sroa.28.sroa.27.0.extract.trunc60, %bb.e ], [ %.sroa.28.sroa.27.0.extract.trunc58, %bb.f ], [ %.sroa.28.sroa.27.0.extract.trunc56, %bb.g ], [ %.sroa.28.sroa.27.0.extract.trunc54, %bb.h ], [ %.sroa.28.sroa.27.0.extract.trunc52, %bb.i ], [ %.sroa.28.sroa.27.0.extract.trunc50, %bb.j ], [ %.sroa.28.sroa.27.0.extract.trunc48, %bb.k ], [ %.sroa.28.sroa.27.0.extract.trunc46, %bb.l ], [ %.sroa.28.sroa.27.0.extract.trunc44, %bb.m ], [ %.sroa.28.sroa.27.0.extract.trunc42, %bb.n ], [ %.sroa.28.sroa.27.0.extract.trunc40, %bb.o ], [ %.sroa.28.sroa.27.0.extract.trunc38, %bb.p ], [ %.sroa.28.sroa.27.0.extract.trunc36, %bb.q ], [ %.sroa.28.sroa.27.0.extract.trunc34, %bb.r ], [ %.sroa.28.sroa.27.0.extract.trunc32, %bb.s ], [ %.sroa.28.sroa.27.0.extract.trunc30, %bb.t ], [ %.sroa.28.sroa.27.0.extract.trunc28, %bb.u ], [ %.sroa.28.sroa.27.0.extract.trunc26, %bb.v ], [ %.sroa.28.sroa.27.0.extract.trunc24, %bb.w ], [ %.sroa.28.sroa.27.0.extract.trunc22, %bb.x ], [ %.sroa.28.sroa.27.0.extract.trunc, %bb.y ], [ %.sroa.28.sroa.27.0.extract.trunc64, %bb.z ], [ %.sroa.28.sroa.27.0.extract.trunc62, %bb.aa ], [ %i.af, %bb.ab ]
  %.sroa.28.sroa.0.0 = phi i32 [ undef, %bb.d ], [ ptrtoint (ptr @_RNvYNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtBb_10NativeType2ofNtNtNtCsdaEETE4DqmE_13typst_library11foundations4none9NoneValueE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtNtB17_5value5ValueEE9call_onceBd_ to i32), %bb.e ], [ ptrtoint (ptr @_RNvYNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtBb_10NativeType2ofNtBb_9NoneEmptyE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEE9call_onceBd_ to i32), %bb.f ], [ ptrtoint (ptr @_RNvYNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtBb_10NativeType2ofNtBb_13NoneUndefinedE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEE9call_onceBd_ to i32), %bb.g ], [ ptrtoint (ptr @_RNvYNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtBb_10NativeType2ofNtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto9AutoValueE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtNtB17_5value5ValueEE9call_onceBd_ to i32), %bb.h ], [ ptrtoint (ptr @_RNvYNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtBb_10NativeType2ofNtBb_13TrueFalseBoolE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEE9call_onceBd_ to i32), %bb.i ], [ ptrtoint (ptr @_RNvYNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtBb_10NativeType2ofNtBb_9YesNoBoolE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEE9call_onceBd_ to i32), %bb.j ], [ ptrtoint (ptr @_RNvYNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtBb_10NativeType2ofNtBb_9OnOffBoolE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEE9call_onceBd_ to i32), %bb.k ], [ ptrtoint (ptr @_RNvYNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtBb_10NativeType2ofNtBb_13HorizontalDirE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEE9call_onceBd_ to i32), %bb.l ], [ ptrtoint (ptr @_RNvYNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtBb_10NativeType2ofNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtNtB17_5value5ValueEE9call_onceBd_ to i32), %bb.m ], [ ptrtoint (ptr @_RNvYNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtBb_10NativeType2ofcE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEE9call_onceBd_ to i32), %bb.n ], [ ptrtoint (ptr @_RNvYNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtBb_10NativeType2ofxE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEE9call_onceBd_ to i32), %bb.o ], [ ptrtoint (ptr @_RNvYNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtBb_10NativeType2ofyE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEE9call_onceBd_ to i32), %bb.p ], [ ptrtoint (ptr @_RNvYNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtBb_10NativeType2ofINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZeroyEE0INtNtNtB1a_3ops8function6FnOnceTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEE9call_onceBd_ to i32), %bb.q ], [ ptrtoint (ptr @_RNvYNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtBb_10NativeType2ofdE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEE9call_onceBd_ to i32), %bb.r ], [ ptrtoint (ptr @_RNvYNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtBb_10NativeType2ofNtNtNtCsdaEETE4DqmE_13typst_library11foundations5float11PositiveF64E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtNtB17_5value5ValueEE9call_onceBd_ to i32), %bb.s ], [ ptrtoint (ptr @_RNvYNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtBb_10NativeType2ofNtNtNtCsdaEETE4DqmE_13typst_library11foundations8datetime8DatetimeE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtNtB17_5value5ValueEE9call_onceBd_ to i32), %bb.t ], [ ptrtoint (ptr @_RNvYNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtBb_10NativeType2ofNtNtNtCsdaEETE4DqmE_13typst_library11foundations8duration8DurationE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtNtB17_5value5ValueEE9call_onceBd_ to i32), %bb.u ], [ ptrtoint (ptr @_RNvYNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtBb_10NativeType2ofNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtNtNtB19_11foundations5value5ValueEE9call_onceBd_ to i32), %bb.v ], [ ptrtoint (ptr @_RNvYNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtBb_10NativeType2ofNtBb_8IconSizeE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEE9call_onceBd_ to i32), %bb.w ], [ ptrtoint (ptr @_RNvYNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtBb_10NativeType2ofNtBb_14ImageCandidateE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEE9call_onceBd_ to i32), %bb.x ], [ ptrtoint (ptr @_RNvYNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtBb_10NativeType2ofNtBb_10SourceSizeE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEE9call_onceBd_ to i32), %bb.y ], [ %.sroa.28.sroa.0.0.extract.trunc20, %bb.z ], [ %.sroa.28.sroa.0.0.extract.trunc, %bb.aa ], [ %i.ad, %bb.ab ]
  %.sroa.53.0 = phi ptr [ undef, %bb.d ], [ @_RNvXNtNtCsdaEETE4DqmE_13typst_library11foundations4noneNtB2_9NoneValueNtNtB4_4cast7Reflect8castable, %bb.e ], [ @_RNvXsz_NtCs9gmjTwvRRSu_10typst_html5typedNtB5_9NoneEmptyNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast7Reflect8castable, %bb.f ], [ @_RNvXsB_NtCs9gmjTwvRRSu_10typst_html5typedNtB5_13NoneUndefinedNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast7Reflect8castable, %bb.g ], [ @_RNvXs0_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoNtB5_9AutoValueNtNtB7_4cast7Reflect8castable, %bb.h ], [ @_RNvXst_NtCs9gmjTwvRRSu_10typst_html5typedNtB5_13TrueFalseBoolNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast7Reflect8castable, %bb.i ], [ @_RNvXsv_NtCs9gmjTwvRRSu_10typst_html5typedNtB5_9YesNoBoolNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast7Reflect8castable, %bb.j ], [ @_RNvXsx_NtCs9gmjTwvRRSu_10typst_html5typedNtB5_9OnOffBoolNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast7Reflect8castable, %bb.k ], [ @_RNvXsD_NtCs9gmjTwvRRSu_10typst_html5typedNtB5_13HorizontalDirNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast7Reflect8castable, %bb.l ], [ @_RNvXsZ_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtNtB7_3str3StrNtNtB7_4cast7Reflect8castable, %bb.m ], [ @_RNvXs1r_NtNtCsdaEETE4DqmE_13typst_library11foundations3strcNtNtB8_4cast7Reflect8castable, %bb.n ], [ @_RNvXsp_NtNtCsdaEETE4DqmE_13typst_library11foundations5valuexNtNtB7_4cast7Reflect8castable, %bb.o ], [ @_RNvXsn_NtNtCsdaEETE4DqmE_13typst_library11foundations3intyNtNtB7_4cast7Reflect8castable, %bb.p ], [ @_RNvXs8_NtNtCsdaEETE4DqmE_13typst_library11foundations3intINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZeroyENtNtB7_4cast7Reflect8castable, %bb.q ], [ @_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations5valuedNtNtB7_4cast7Reflect8castable, %bb.r ], [ @_RNvXse_NtNtCsdaEETE4DqmE_13typst_library11foundations5floatNtB5_11PositiveF64NtNtB7_4cast7Reflect8castable, %bb.s ], [ @_RNvXs18_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtNtB8_8datetime8DatetimeNtNtB8_4cast7Reflect8castable, %bb.t ], [ @_RNvXs1e_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtNtB8_8duration8DurationNtNtB8_4cast7Reflect8castable, %bb.u ], [ @_RNvXsK_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtNtNtB9_9visualize5color5ColorNtNtB7_4cast7Reflect8castable, %bb.v ], [ @_RNvXsF_NtCs9gmjTwvRRSu_10typst_html5typedNtB5_8IconSizeNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast7Reflect8castable, %bb.w ], [ @_RNvXsH_NtCs9gmjTwvRRSu_10typst_html5typedNtB5_14ImageCandidateNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast7Reflect8castable, %bb.x ], [ @_RNvXsJ_NtCs9gmjTwvRRSu_10typst_html5typedNtB5_10SourceSizeNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast7Reflect8castable, %bb.y ], [ undef, %bb.z ], [ undef, %bb.aa ], [ undef, %bb.ab ]
  %.sroa.419.0 = phi i64 [ undef, %bb.d ], [ ptrtoint (ptr @_RNvXNtNtCsdaEETE4DqmE_13typst_library11foundations4noneNtB2_9NoneValueNtNtB4_4cast7Reflect5input to i64), %bb.e ], [ ptrtoint (ptr @_RNvXsz_NtCs9gmjTwvRRSu_10typst_html5typedNtB5_9NoneEmptyNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast7Reflect5input to i64), %bb.f ], [ ptrtoint (ptr @_RNvXsB_NtCs9gmjTwvRRSu_10typst_html5typedNtB5_13NoneUndefinedNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast7Reflect5input to i64), %bb.g ], [ ptrtoint (ptr @_RNvXs0_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoNtB5_9AutoValueNtNtB7_4cast7Reflect5input to i64), %bb.h ], [ ptrtoint (ptr @_RNvXst_NtCs9gmjTwvRRSu_10typst_html5typedNtB5_13TrueFalseBoolNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast7Reflect5input to i64), %bb.i ], [ ptrtoint (ptr @_RNvXsv_NtCs9gmjTwvRRSu_10typst_html5typedNtB5_9YesNoBoolNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast7Reflect5input to i64), %bb.j ], [ ptrtoint (ptr @_RNvXsx_NtCs9gmjTwvRRSu_10typst_html5typedNtB5_9OnOffBoolNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast7Reflect5input to i64), %bb.k ], [ ptrtoint (ptr @_RNvXsD_NtCs9gmjTwvRRSu_10typst_html5typedNtB5_13HorizontalDirNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast7Reflect5input to i64), %bb.l ], [ ptrtoint (ptr @_RNvXsZ_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtNtB7_3str3StrNtNtB7_4cast7Reflect5input to i64), %bb.m ], [ ptrtoint (ptr @_RNvXs1r_NtNtCsdaEETE4DqmE_13typst_library11foundations3strcNtNtB8_4cast7Reflect5input to i64), %bb.n ], [ ptrtoint (ptr @_RNvXsp_NtNtCsdaEETE4DqmE_13typst_library11foundations5valuexNtNtB7_4cast7Reflect5input to i64), %bb.o ], [ ptrtoint (ptr @_RNvXsn_NtNtCsdaEETE4DqmE_13typst_library11foundations3intyNtNtB7_4cast7Reflect5input to i64), %bb.p ], [ ptrtoint (ptr @_RNvXs8_NtNtCsdaEETE4DqmE_13typst_library11foundations3intINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZeroyENtNtB7_4cast7Reflect5input to i64), %bb.q ], [ ptrtoint (ptr @_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations5valuedNtNtB7_4cast7Reflect5input to i64), %bb.r ], [ ptrtoint (ptr @_RNvXse_NtNtCsdaEETE4DqmE_13typst_library11foundations5floatNtB5_11PositiveF64NtNtB7_4cast7Reflect5input to i64), %bb.s ], [ ptrtoint (ptr @_RNvXs18_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtNtB8_8datetime8DatetimeNtNtB8_4cast7Reflect5input to i64), %bb.t ], [ ptrtoint (ptr @_RNvXs1e_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtNtB8_8duration8DurationNtNtB8_4cast7Reflect5input to i64), %bb.u ], [ ptrtoint (ptr @_RNvXsK_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtNtNtB9_9visualize5color5ColorNtNtB7_4cast7Reflect5input to i64), %bb.v ], [ ptrtoint (ptr @_RNvXsF_NtCs9gmjTwvRRSu_10typst_html5typedNtB5_8IconSizeNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast7Reflect5input to i64), %bb.w ], [ ptrtoint (ptr @_RNvXsH_NtCs9gmjTwvRRSu_10typst_html5typedNtB5_14ImageCandidateNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast7Reflect5input to i64), %bb.x ], [ ptrtoint (ptr @_RNvXsJ_NtCs9gmjTwvRRSu_10typst_html5typedNtB5_10SourceSizeNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast7Reflect5input to i64), %bb.y ], [ %i.s, %bb.z ], [ %i.z, %bb.aa ], [ %i.ag, %bb.ab ]
  %.sroa.28.sroa.28.sroa.0.0 = phi i64 [ 0, %bb.d ], [ %.sroa.28.sroa.28.0.extract.shift103, %bb.e ], [ %.sroa.28.sroa.28.0.extract.shift101, %bb.f ], [ %.sroa.28.sroa.28.0.extract.shift99, %bb.g ], [ %.sroa.28.sroa.28.0.extract.shift97, %bb.h ], [ %.sroa.28.sroa.28.0.extract.shift95, %bb.i ], [ %.sroa.28.sroa.28.0.extract.shift93, %bb.j ], [ %.sroa.28.sroa.28.0.extract.shift91, %bb.k ], [ %.sroa.28.sroa.28.0.extract.shift89, %bb.l ], [ %.sroa.28.sroa.28.0.extract.shift87, %bb.m ], [ %.sroa.28.sroa.28.0.extract.shift85, %bb.n ], [ %.sroa.28.sroa.28.0.extract.shift83, %bb.o ], [ %.sroa.28.sroa.28.0.extract.shift81, %bb.p ], [ %.sroa.28.sroa.28.0.extract.shift79, %bb.q ], [ %.sroa.28.sroa.28.0.extract.shift77, %bb.r ], [ %.sroa.28.sroa.28.0.extract.shift75, %bb.s ], [ %.sroa.28.sroa.28.0.extract.shift73, %bb.t ], [ %.sroa.28.sroa.28.0.extract.shift71, %bb.u ], [ %.sroa.28.sroa.28.0.extract.shift69, %bb.v ], [ %.sroa.28.sroa.28.0.extract.shift67, %bb.w ], [ %.sroa.28.sroa.28.0.extract.shift65, %bb.x ], [ %.sroa.28.sroa.28.0.extract.shift, %bb.y ], [ %.sroa.28.sroa.28.0.extract.shift107, %bb.z ], [ %.sroa.28.sroa.28.0.extract.shift105, %bb.aa ], [ 0, %bb.ab ]
  %.sink.i = phi i64 [ 0, %bb.d ], [ 1, %bb.e ], [ 1, %bb.f ], [ 1, %bb.g ], [ 1, %bb.h ], [ 1, %bb.i ], [ 1, %bb.j ], [ 1, %bb.k ], [ 1, %bb.l ], [ 1, %bb.m ], [ 1, %bb.n ], [ 1, %bb.o ], [ 1, %bb.p ], [ 1, %bb.q ], [ 1, %bb.r ], [ 1, %bb.s ], [ 1, %bb.t ], [ 1, %bb.u ], [ 1, %bb.v ], [ 1, %bb.w ], [ 1, %bb.x ], [ 1, %bb.y ], [ 2, %bb.z ], [ 3, %bb.aa ], [ 4, %bb.ab ]
  %.sroa.28.sroa.27.0.insert.ext = zext i8 %.sroa.28.sroa.27.0 to i64
  %.sroa.28.sroa.27.0.insert.shift = shl nuw nsw i64 %.sroa.28.sroa.27.0.insert.ext, 32
  %.sroa.28.sroa.27.0.insert.insert = or disjoint i64 %.sroa.28.sroa.28.sroa.0.0, %.sroa.28.sroa.27.0.insert.shift
  %.sroa.28.sroa.0.0.insert.ext = zext i32 %.sroa.28.sroa.0.0 to i64
  %.sroa.28.sroa.0.0.insert.insert = or disjoint i64 %.sroa.28.sroa.27.0.insert.insert, %.sroa.28.sroa.0.0.insert.ext
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21334
  store i64 %.sink.i, ptr %i.a, align 8, !noalias !21338
  store i64 %.sroa.419.0, ptr %.sroa.4110.0..sroa_idx, align 8, !noalias !21338
  store i64 %.sroa.28.sroa.0.0.insert.insert, ptr %.sroa.5111.0..sroa_idx, align 8, !noalias !21338
  store ptr %.sroa.53.0, ptr %.sroa.6112.0..sroa_idx, align 8, !noalias !21338
  invoke fastcc void @_RNvMNtCs9gmjTwvRRSu_10typst_html5typedNtB2_8AttrType5input(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
          to label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs4wS76oGtFbW_12typst_assets4html4TypeNtNtCs9gmjTwvRRSu_10typst_html5typed8AttrTypeuNCNvMs0_B1D_NtB1D_9UnionType4iter0NCIB2_B1B_NtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast8CastInfouNCNvB2p_5input0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB33_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5p_3VecB33_E14extend_trustedINtB4_3MapIB6m_INtNtNtBa_5slice4iter4IterBV_EB2l_EB44_EE0E0E0E0B1F_.exit.i.i unwind label %.body, !inline_history !21339

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs4wS76oGtFbW_12typst_assets4html4TypeNtNtCs9gmjTwvRRSu_10typst_html5typed8AttrTypeuNCNvMs0_B1D_NtB1D_9UnionType4iter0NCIB2_B1B_NtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast8CastInfouNCNvB2p_5input0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB33_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5p_3VecB33_E14extend_trustedINtB4_3MapIB6m_INtNtNtBa_5slice4iter4IterBV_EB2l_EB44_EE0E0E0E0B1F_.exit.i.i: ; preds = %_RNvMNtCs9gmjTwvRRSu_10typst_html5typedNtB2_8AttrType7convert.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21334
  %i.ah = getelementptr inbounds nuw [48 x i8], ptr %.sroa.10.0.i, i64 %.sroa.6.0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  %i.ai = add i64 %.sroa.6.0, 1                   ; 2 uses
  %i.aj = icmp eq i64 %i.ai, %i.g
  br i1 %i.aj, label %bb.ac, label %bb.d

bb.ac:                                            ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs4wS76oGtFbW_12typst_assets4html4TypeNtNtCs9gmjTwvRRSu_10typst_html5typed8AttrTypeuNCNvMs0_B1D_NtB1D_9UnionType4iter0NCIB2_B1B_NtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast8CastInfouNCNvB2p_5input0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB33_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5p_3VecB33_E14extend_trustedINtB4_3MapIB6m_INtNtNtBa_5slice4iter4IterBV_EB2l_EB44_EE0E0E0E0B1F_.exit.i.i
  store i64 %i.g, ptr %i.n, align 8, !noalias !21340
  br label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast8CastInfoEINtB4_10SpecExtendBT_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB2g_INtNtNtB2o_5slice4iter4IterNtNtCs4wS76oGtFbW_12typst_assets4html4TypeENCNvMs0_NtCs9gmjTwvRRSu_10typst_html5typedNtB4o_9UnionType4iter0ENCNvB4k_5input0EE11spec_extendB4q_.exit

.body:                                            ; preds = %_RNvMNtCs9gmjTwvRRSu_10typst_html5typedNtB2_8AttrType7convert.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.6.0, ptr %i.n, align 8, !noalias !21340
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast8CastInfoEECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #49
          to label %bb.ae unwind label %bb.ad

_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast8CastInfoEINtB4_10SpecExtendBT_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB2g_INtNtNtB2o_5slice4iter4IterNtNtCs4wS76oGtFbW_12typst_assets4html4TypeENCNvMs0_NtCs9gmjTwvRRSu_10typst_html5typedNtB4o_9UnionType4iter0ENCNvB4k_5input0EE11spec_extendB4q_.exit: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast8CastInfoE7reserveCs9gmjTwvRRSu_10typst_html.exit.i, %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.ad:                                            ; preds = %.body
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50
  unreachable

bb.ae:                                            ; preds = %.body
  resume { ptr, i32 } %i.ak
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef i128 @_RNvXs_NvCsdaEETE4DqmE_13typst_library1__DNtB6_5WorldEL_NtNtCsloFShupyl5J_6comemo5track5Track4call(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 10 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 10 uses
  %i.d = alloca [72 x i8], align 8                ; 14 uses
  %i.e = alloca [16 x i8], align 16               ; 4 uses
  %i.f = alloca [72 x i8], align 8                ; 10 uses
  %i.g = alloca [72 x i8], align 8                ; 11 uses
  %i.h = alloca [16 x i8], align 16               ; 4 uses
  %i.i = alloca [1 x i8], align 1                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [2 x i8], align 2                 ; 4 uses
  %i.l = alloca [72 x i8], align 8                ; 13 uses
  %i.m = alloca [72 x i8], align 8                ; 11 uses
  %i.n = alloca [2 x i8], align 2                 ; 4 uses
  %i.o = alloca [72 x i8], align 8                ; 9 uses
  %i.p = alloca [16 x i8], align 16               ; 4 uses
  %i.q = alloca [4 x i8], align 4                 ; 4 uses
  %i.r = alloca [4 x i8], align 4                 ; 4 uses
  %i.s = alloca [4 x i8], align 4                 ; 4 uses
  %i.t = alloca [4 x i8], align 4                 ; 4 uses
  %i.u = alloca [2 x i8], align 2                 ; 4 uses
  %i.v = alloca [2 x i8], align 2                 ; 4 uses
  %i.w = alloca [1 x i8], align 1                 ; 4 uses
  %i.x = alloca [1 x i8], align 1                 ; 4 uses
  %i.y = alloca [72 x i8], align 8                ; 28 uses
  %i.z = alloca [72 x i8], align 8                ; 9 uses
  %i.aa = alloca [72 x i8], align 8               ; 9 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [12 x i8], align 4               ; 5 uses
  %i.ad = alloca [8 x i8], align 8                ; 7 uses
  %i.ae = alloca [64 x i8], align 8               ; 11 uses
  %i.af = alloca [64 x i8], align 8               ; 10 uses
  %i.ag = alloca [8 x i8], align 8                ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !range !7767, !noundef !7 ; 3 uses
  %i.aj = add nsw i32 %i.ai, -1
  %i.ak = icmp sgt i32 %i.ai, 0
  %narrow = select i1 %i.ak, i32 %i.aj, i32 6
  switch i32 %narrow, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.n
    i32 3, label %bb.o
    i32 4, label %bb.s
    i32 5, label %bb.w
    i32 6, label %bb.ab
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !invariant.load !7, !nonnull !7
  %i.an = tail call noundef nonnull align 16 ptr %i.am(ptr noundef nonnull %0) #52
  store ptr %i.an, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !21341
  store i64 8317987319222330741, ptr %i.aa, align 8, !noalias !21341
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 7816392313619706465, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !21341
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 7237128888997146499, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !21341
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i64 8387220255154660723, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !21341
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx.i, i8 0, i64 40, i1 false), !noalias !21341
  call fastcc void @_RINvXs3_NtNtCs3oUPovFnLWP_4core4hash5implsRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtCsdaEETE4DqmE_13typst_library7LibraryENtB8_4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ag, ptr noalias nofree noundef align 8 dereferenceable(72) %i.aa) #52
  %i.ao = call fastcc { i64, i64 } @_RNvMs7_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsE9finish128Cs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.aa) #52, !noalias !21341 ; 2 uses
  %i.ap = extractvalue { i64, i64 } %i.ao, 0
  %i.aq = extractvalue { i64, i64 } %i.ao, 1
  %i.ar = zext i64 %i.ap to i128
  %i.as = zext i64 %i.aq to i128
  %i.at = shl nuw i128 %i.as, 64
  %i.au = or disjoint i128 %i.at, %i.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !21341
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.ac

bb.d:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !invariant.load !7, !nonnull !7
  %i.ax = tail call noundef nonnull align 16 ptr %i.aw(ptr noundef nonnull %0) #52 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !21344
  store i64 8317987319222330741, ptr %i.z, align 8, !noalias !21344
  %.sroa.3.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 7816392313619706465, ptr %.sroa.3.0..sroa_idx.i4, align 8, !noalias !21344
  %.sroa.4.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 7237128888997146499, ptr %.sroa.4.0..sroa_idx.i5, align 8, !noalias !21344
  %.sroa.5.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i64 8387220255154660723, ptr %.sroa.5.0..sroa_idx.i6, align 8, !noalias !21344
  %.sroa.6.0..sroa_idx.i7 = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx.i7, i8 0, i64 40, i1 false), !noalias !21344
  %i.ay = load atomic ptr, ptr @_RNvNvNtNtNtCsiL9kQKV5x1F_15portable_atomic3imp9atomic1286x86_6411atomic_load4FUNC monotonic, align 8, !noalias !21347, !nonnull !7, !noundef !7
  %i.az = tail call noundef i128 %i.ay(ptr noundef nonnull align 16 %i.ax), !noalias !21347, !inline_history !21353 ; 2 uses
  %i.ba = icmp eq i128 %i.az, 0
  br i1 %i.ba, label %bb.e, label %_RINvNtCsloFShupyl5J_6comemo4hash4hashRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font4book8FontBookEECs9gmjTwvRRSu_10typst_html.exit

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21354)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !21357
  store i64 8317987319222330741, ptr %i.y, align 8, !noalias !21357
  %.sroa.411.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 7816392313619706465, ptr %.sroa.411.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !21357
  %.sroa.512.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 7237128888997146499, ptr %.sroa.512.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !21357
  %.sroa.613.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i64 8387220255154660723, ptr %.sroa.613.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !21357
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21358)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21361)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx.i.i.i.i.i.i, i8 0, i64 40, i1 false), !noalias !21357
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !21364, !noalias !21365, !noundef !7 ; 3 uses
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.y, i64 noundef %i.bd), !noalias !21368
  %i.be = load ptr, ptr %i.bb, align 8, !alias.scope !21364, !noalias !21365, !noundef !7 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp ne ptr %i.be, null
  %3 = icmp ne i64 %i.bd, 0
  %.not63.i.i.i.i.i.i.i.i = and i1 %3, %.not.i.i.i.i.i.i.i.i
  br i1 %.not63.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i, label %_RINvXs1r_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB7_8BTreeMapNtNtBd_6string6StringINtNtBd_3vec3VecjEENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %bb.e
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.bg = load i64, ptr %i.bf, align 16, !alias.scope !21364, !noalias !21365
  %i.bh = ptrtoint ptr %i.be to i64
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i
  %.sroa.5.04055.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i ], [ null, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.14.054.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.78.0.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i ], [ %i.bg, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 6 uses
  %.sroa.22.053.i.i.i.i.i.i.i.i = phi i64 [ %i.bi, %.loopexit.i.i.i.i.i.i.i.i ], [ %i.bd, %.lr.ph.preheader.i.i.i.i.i.i.i.i ]
  %.sroa.9.052.i.i.i.i.i.i.i.i = phi i64 [ 0, %.loopexit.i.i.i.i.i.i.i.i ], [ %i.bh, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bi = add i64 %.sroa.22.053.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.5.04055.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.bj = inttoptr i64 %.sroa.9.052.i.i.i.i.i.i.i.i to ptr ; 3 uses
  %i.bk = icmp eq i64 %.sroa.14.054.i.i.i.i.i.i.i.i, 0
  br i1 %i.bk, label %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %bb.g
  %xtraiter = and i64 %.sroa.14.054.i.i.i.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol
  %.sroa.013.017.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.bj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ]
  %.sroa.011.016.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.bm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ %.sroa.14.054.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.i.i.i.i.i.i.i.i.prol, i64 544
  %i.bm = add i64 %.sroa.011.016.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %i.bl, align 8, !noalias !21369, !nonnull !7, !noundef !7 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !21374

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %.sroa.013.017.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %.sroa.011.016.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.14.054.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.bn = icmp ult i64 %.sroa.14.054.i.i.i.i.i.i.i.i, 8
  br i1 %i.bn, label %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.sroa.013.017.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.013.017.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.011.016.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bw, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.011.016.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.i.i.i.i.i.i.i.i, i64 544
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bo, align 8, !noalias !21369, !nonnull !7, !noundef !7
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.i.i.i, i64 544
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.bp, align 8, !noalias !21369, !nonnull !7, !noundef !7
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.1, i64 544
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.bq, align 8, !noalias !21369, !nonnull !7, !noundef !7
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.2, i64 544
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.br, align 8, !noalias !21369, !nonnull !7, !noundef !7
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.3, i64 544
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.bs, align 8, !noalias !21369, !nonnull !7, !noundef !7
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.4, i64 544
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.bt, align 8, !noalias !21369, !nonnull !7, !noundef !7
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.5, i64 544
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.bu, align 8, !noalias !21369, !nonnull !7, !noundef !7
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.6, i64 544
  %i.bw = add i64 %.sroa.011.016.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.bv, align 8, !noalias !21369, !nonnull !7, !noundef !7 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %bb.g, %bb.f
  %.sroa.59.0.copyload.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.14.054.i.i.i.i.i.i.i.i, %bb.f ], [ 0, %bb.g ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.48.0.copyload.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.9.052.i.i.i.i.i.i.i.i, %bb.f ], [ 0, %bb.g ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.07.0.copyload.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.5.04055.i.i.i.i.i.i.i.i, %bb.f ], [ %i.bj, %bb.g ], [ %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 538
  %i.bz = load i16, ptr %i.by, align 2, !noalias !21375, !noundef !7
  %i.ca = zext i16 %i.bz to i64
  %i.cb = icmp ult i64 %.sroa.59.0.copyload.i.i.i.i.i.i.i.i.i.i, %i.ca
  br i1 %i.cb, label %bb.j, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i, %bb.h
  %.sroa.0.022.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cc, %bb.h ], [ %.sroa.07.0.copyload.i.i.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ce, %bb.h ], [ %.sroa.48.0.copyload.i.i.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i ]
  %i.cc = load ptr, ptr %.sroa.0.022.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !21384, !noundef !7 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %bb.h
  %i.cd = zext i16 %i.cg to i64
  br label %bb.j

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ce = add i64 %.sroa.5.021.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i.i.i.i.i.i.i.i, i64 536
  %i.cg = load i16, ptr %i.cf, align 8, !noalias !21384 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 538
  %i.ci = load i16, ptr %i.ch, align 2, !noalias !21375, !noundef !7
  %i.cj = icmp ult i16 %i.cg, %i.ci
  br i1 %i.cj, label %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @595) #51
          to label %.noexc.i.i.i.i.i.i.i.i.i.i unwind label %bb.m, !noalias !21387

.noexc.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i
  %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cd, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.59.0.copyload.i.i.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ce, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.48.0.copyload.i.i.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.06.0.ph.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cc, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.07.0.copyload.i.i.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.ck = icmp eq i64 %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ck, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cl = add nuw nsw i64 %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i.i.i, 1
  br label %.loopexit.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.cm = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.cm)
  %i.cn = getelementptr i8, ptr %.sroa.06.0.ph.i.i.i.i.i.i.i.i.i.i.i, i64 552
  %i.co = getelementptr [8 x i8], ptr %i.cn, i64 %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %xtraiter94 = and i64 %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod95.not = icmp eq i64 %xtraiter94, 0
  br i1 %lcmp.mod95.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.l, %.prol.preheader
  %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.cp, %.prol.preheader ], [ %i.co, %bb.l ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.l ]
  %prol.iter96 = phi i64 [ %prol.iter96.next, %.prol.preheader ], [ 0, %bb.l ]
  %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !21388, !nonnull !7, !noundef !7 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.prol, i64 544 ; 2 uses
  %prol.iter96.next = add i64 %prol.iter96, 1     ; 2 uses
  %prol.iter96.cmp.not = icmp eq i64 %prol.iter96.next, %xtraiter94
  br i1 %prol.iter96.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !21392

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.l
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.l ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.co, %bb.l ], [ %i.cp, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.l ], [ %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %i.cq = icmp ult i64 %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i.i.i, 8
  br i1 %i.cq, label %.loopexit.i.i.i.i.i.i.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cz, %.new ], [ %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !21388, !nonnull !7, !noundef !7
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i, i64 544
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.cr, align 8, !noalias !21388, !nonnull !7, !noundef !7
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.1, i64 544
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.cs, align 8, !noalias !21388, !nonnull !7, !noundef !7
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.2, i64 544
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.ct, align 8, !noalias !21388, !nonnull !7, !noundef !7
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.3, i64 544
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.cu, align 8, !noalias !21388, !nonnull !7, !noundef !7
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.4, i64 544
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.cv, align 8, !noalias !21388, !nonnull !7, !noundef !7
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.5, i64 544
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.cw, align 8, !noalias !21388, !nonnull !7, !noundef !7
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.6, i64 544
  %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.cx, align 8, !noalias !21388, !nonnull !7, !noundef !7 ; 2 uses
  %i.cy = icmp eq i64 %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.i.i.7, 0
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.7, i64 544
  br i1 %i.cy, label %.loopexit.i.i.i.i.i.i.i.i, label %.new

bb.m:                                             ; preds = %bb.i
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %.prol.loopexit, %.new, %bb.k
  %.sroa.78.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cl, %bb.k ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.06.0.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.k ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.7, %.new ]
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.dc = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.dc)
  %i.dd = getelementptr inbounds nuw [24 x i8], ptr %i.db, i64 %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i.i.i.i.i.i.i.i.i.i, i64 272
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %i.de, i64 %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.dg = getelementptr i8, ptr %i.dd, i64 8
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.dg, align 8, !noalias !21368, !nonnull !7, !noundef !7
  %i.dh = getelementptr i8, ptr %i.dd, i64 16
  %.val35.i.i.i.i.i.i.i.i = load i64, ptr %i.dh, align 8, !noalias !21368, !noundef !7
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i.i.i.i.i.i, i64 noundef %.val35.i.i.i.i.i.i.i.i), !noalias !21368
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !21393
  store i8 -1, ptr %i.x, align 1, !noalias !21393
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef 1), !noalias !21368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !21393
  %i.di = getelementptr i8, ptr %i.df, i64 8
  %.val36.i.i.i.i.i.i.i.i = load ptr, ptr %i.di, align 8, !noalias !21368, !nonnull !7, !noundef !7
  %i.dj = getelementptr i8, ptr %i.df, i64 16
  %.val37.i.i.i.i.i.i.i.i = load i64, ptr %i.dj, align 8, !noalias !21368, !noundef !7 ; 2 uses
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.y, i64 noundef %.val37.i.i.i.i.i.i.i.i), !noalias !21368
  %i.dk = shl nuw nsw i64 %.val37.i.i.i.i.i.i.i.i, 3
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.val36.i.i.i.i.i.i.i.i, i64 noundef %i.dk), !noalias !21368
  %i.dl = icmp eq i64 %i.bi, 0
  br i1 %i.dl, label %_RINvXs1r_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB7_8BTreeMapNtNtBd_6string6StringINtNtBd_3vec3VecjEENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i, label %bb.f

_RINvXs1r_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB7_8BTreeMapNtNtBd_6string6StringINtNtBd_3vec3VecjEENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i: ; preds = %.loopexit.i.i.i.i.i.i.i.i, %bb.e
end_hunk_2
