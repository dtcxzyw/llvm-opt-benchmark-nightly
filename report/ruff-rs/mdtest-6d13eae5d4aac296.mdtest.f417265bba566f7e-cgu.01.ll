Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/mdtest-6d13eae5d4aac296.mdtest.f417265bba566f7e-cgu.01?download=true
inline.NumInlined: 420
inline.NumDeleted: 232
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvNtCskXhPDodhyTq_6mdtest7matcher10match_file:bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #20
          to label %bb.eb unwind label %.loopexit.split-lp.i.i.i.i, !noalias !493

bb.fq:                                            ; preds = %bb.fo, %.split7.i132.i.i.i.i, %bb.fl
  %i.sv = sub nuw i64 %i.sj, %.sroa.015.0.i.i.i.i ; 3 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.of, i64 %.sroa.015.0.i.i.i.i
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae, i64 noundef %i.sv)
          to label %.noexc136.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !493

.noexc136.i.i.i.i:                                ; preds = %bb.fq
  %i.sx = load i64, ptr %.sroa.550.0..sroa_idx.i.i.i.i, align 8, !alias.scope !554, !noalias !485, !noundef !29 ; 3 uses
  %i.sy = icmp sgt i64 %i.sx, -1
  call void @llvm.assume(i1 %i.sy)
  %.not.i134.i.i.i.i = icmp eq i64 %i.sj, %.sroa.015.0.i.i.i.i
  br i1 %.not.i134.i.i.i.i, label %bb.ft, label %bb.fr

bb.fr:                                            ; preds = %.noexc136.i.i.i.i
  %i.sz = load ptr, ptr %.sroa.449.0..sroa_idx.i.i.i.i, align 8, !alias.scope !554, !noalias !485, !nonnull !29, !noundef !29
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 %i.sx
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ta, ptr nonnull readonly align 1 %i.sw, i64 %i.sv, i1 false), !noalias !493
  %.pre.i135.i.i.i.i = load i64, ptr %.sroa.550.0..sroa_idx.i.i.i.i, align 8, !alias.scope !554, !noalias !485
  br label %bb.ft

bb.fs:                                            ; preds = %bb.fo, %.split7.i132.i.i.i.i, %bb.fm, %.split.i128.i.i.i.i, %bb.fi
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.of, i64 noundef %i.og, i64 noundef %.sroa.015.0.i.i.i.i, i64 noundef %i.sj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #20
          to label %bb.eb unwind label %.loopexit.split-lp.i.i.i.i, !noalias !493

bb.ft:                                            ; preds = %bb.fr, %.noexc136.i.i.i.i
  %i.tb = phi i64 [ %.pre.i135.i.i.i.i, %bb.fr ], [ %i.sx, %.noexc136.i.i.i.i ]
  %i.tc = add i64 %i.tb, %i.sv
  store i64 %i.tc, ptr %.sroa.550.0..sroa_idx.i.i.i.i, align 8, !alias.scope !554, !noalias !485
  invoke void @_RNvXst_NtNtCs44bUZaa7qIB_5regex5regex6stringReNtB5_8Replacer14replace_append(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.am, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %bb.fu unwind label %.loopexit.i.i.i.i, !noalias !493

bb.fu:                                            ; preds = %bb.ft
  call void @llvm.experimental.noalias.scope.decl(metadata !557)
  call void @llvm.experimental.noalias.scope.decl(metadata !560), !noalias !493
  call void @llvm.experimental.noalias.scope.decl(metadata !563), !noalias !493
  call void @llvm.experimental.noalias.scope.decl(metadata !566), !noalias !493
  %i.td = load ptr, ptr %i.iy, align 8, !alias.scope !569, !noalias !493, !nonnull !29, !noundef !29
  %i.te = atomicrmw sub ptr %i.td, i64 1 release, align 8, !noalias !570
  %i.tf = icmp eq i64 %i.te, 1
  br i1 %i.tf, label %bb.fv, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures9GroupInfoECskXhPDodhyTq_6mdtest.exit.i

bb.fv:                                            ; preds = %bb.fu
  fence acquire, !noalias !493
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures14GroupInfoInnerE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.iy)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures9GroupInfoECskXhPDodhyTq_6mdtest.exit.i unwind label %bb.fw, !noalias !493

bb.fw:                                            ; preds = %bb.fv
  %i.tg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEEECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.iv) #21
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs44bUZaa7qIB_5regex5regex6string8CapturesECskXhPDodhyTq_6mdtest.exit.i.i.i.i unwind label %bb.fz, !noalias !493

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures9GroupInfoECskXhPDodhyTq_6mdtest.exit.i: ; preds = %bb.fv, %bb.fu
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBJ_3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.iv)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEEECskXhPDodhyTq_6mdtest.exit.i unwind label %bb.fx, !noalias !493

bb.fx:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures9GroupInfoECskXhPDodhyTq_6mdtest.exit.i
  %i.th = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBQ_3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.iv)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs44bUZaa7qIB_5regex5regex6string8CapturesECskXhPDodhyTq_6mdtest.exit.i.i.i.i unwind label %bb.fy, !noalias !493

bb.fy:                                            ; preds = %bb.fx
  %i.ti = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #22, !noalias !493
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEEECskXhPDodhyTq_6mdtest.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures9GroupInfoECskXhPDodhyTq_6mdtest.exit.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBQ_3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.iv)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs44bUZaa7qIB_5regex5regex6string8CapturesECskXhPDodhyTq_6mdtest.exit139.i.i.i.i unwind label %bb.ey

bb.fz:                                            ; preds = %bb.fw
  %i.tj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #22, !noalias !493
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs44bUZaa7qIB_5regex5regex6string8CapturesECskXhPDodhyTq_6mdtest.exit139.i.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEEECskXhPDodhyTq_6mdtest.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !485
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !485
  br label %bb.ev

bb.ga:                                            ; preds = %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !485
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtBG_9enumerate9EnumerateNtNtNtCs44bUZaa7qIB_5regex5regex6string14CaptureMatchesEEECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(248) %i.ad)
          to label %bb.gc unwind label %.loopexit126.i, !noalias !493

bb.gb:                                            ; preds = %.loopexit.split-lp127.i, %.loopexit126.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs44bUZaa7qIB_5regex5regex6string8CapturesECskXhPDodhyTq_6mdtest.exit.i.i.i.i
  %.pn81.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs44bUZaa7qIB_5regex5regex6string8CapturesECskXhPDodhyTq_6mdtest.exit.i.i.i.i ], [ %lpad.loopexit128.i, %.loopexit126.i ], [ %lpad.loopexit.split-lp129.i, %.loopexit.split-lp127.i ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae) #21
          to label %.body.i unwind label %bb.eo, !noalias !493

.loopexit126.i:                                   ; preds = %bb.gf, %bb.ga
  %lpad.loopexit128.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

.loopexit.split-lp127.i:                          ; preds = %bb.gh
  %lpad.loopexit.split-lp129.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

bb.gc:                                            ; preds = %bb.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !485
  %i.tk = icmp eq i64 %.sroa.015.0.i.i.i.i, 0
  br i1 %i.tk, label %bb.gf, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %.not.i140.i.i.i.i = icmp ult i64 %.sroa.015.0.i.i.i.i, %i.og
  br i1 %.not.i140.i.i.i.i, label %bb.ge, label %.split.i141.i.i.i.i

.split.i141.i.i.i.i:                              ; preds = %bb.gd
  %i.tl = icmp eq i64 %.sroa.015.0.i.i.i.i, %i.og
  br i1 %i.tl, label %bb.gf, label %bb.gh

bb.ge:                                            ; preds = %bb.gd
  %i.tm = getelementptr inbounds nuw i8, ptr %i.of, i64 %.sroa.015.0.i.i.i.i
  %i.tn = load i8, ptr %i.tm, align 1, !alias.scope !571, !noalias !493, !noundef !29
  %i.to = icmp sgt i8 %i.tn, -65
  br i1 %i.to, label %bb.gf, label %bb.gh

bb.gf:                                            ; preds = %bb.ge, %.split.i141.i.i.i.i, %bb.gc
  %i.tp = sub nuw i64 %i.og, %.sroa.015.0.i.i.i.i ; 3 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.of, i64 %.sroa.015.0.i.i.i.i
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae, i64 noundef %i.tp)
          to label %.noexc147.i.i.i.i unwind label %.loopexit126.i, !noalias !493

.noexc147.i.i.i.i:                                ; preds = %bb.gf
  %i.tr = load i64, ptr %.sroa.550.0..sroa_idx.i.i.i.i, align 8, !alias.scope !574, !noalias !485, !noundef !29 ; 3 uses
  %i.ts = icmp sgt i64 %i.tr, -1
  call void @llvm.assume(i1 %i.ts)
  %.not.i145.i.i.i.i = icmp eq i64 %i.og, %.sroa.015.0.i.i.i.i
  br i1 %.not.i145.i.i.i.i, label %bb.gi, label %bb.gg

bb.gg:                                            ; preds = %.noexc147.i.i.i.i
  %i.tt = load ptr, ptr %.sroa.449.0..sroa_idx.i.i.i.i, align 8, !alias.scope !574, !noalias !485, !nonnull !29, !noundef !29
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 %i.tr
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.tu, ptr nonnull readonly align 1 %i.tq, i64 %i.tp, i1 false), !noalias !493
  %.pre.i146.i.i.i.i = load i64, ptr %.sroa.550.0..sroa_idx.i.i.i.i, align 8, !alias.scope !574, !noalias !485
  br label %bb.gi

bb.gh:                                            ; preds = %bb.ge, %.split.i141.i.i.i.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.of, i64 noundef %i.og, i64 noundef %.sroa.015.0.i.i.i.i, i64 noundef %i.og, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #20
          to label %bb.eb unwind label %.loopexit.split-lp127.i, !noalias !493

bb.gi:                                            ; preds = %bb.gg, %.noexc147.i.i.i.i
  %i.tv = phi i64 [ %.pre.i146.i.i.i.i, %bb.gg ], [ %i.tr, %.noexc147.i.i.i.i ]
  %i.tw = add i64 %i.tv, %i.tp
  store i64 %i.tw, ptr %.sroa.550.0..sroa_idx.i.i.i.i, align 8, !alias.scope !574, !noalias !485
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !noalias !525
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !485
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !485
  br label %_RNvNtCskXhPDodhyTq_6mdtest7matcher21discard_todo_metadata.exit.i.i

.loopexit121.i:                                   ; preds = %bb.eq, %_RINvMs_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB5_5Regex13captures_iterReECskXhPDodhyTq_6mdtest.exit.i.i.i.i
  %lpad.loopexit123.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.gj

.loopexit.split-lp122.i:                          ; preds = %bb.et
  %lpad.loopexit.split-lp124.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.gj

bb.gj:                                            ; preds = %.loopexit.split-lp122.i, %.loopexit121.i
  %lpad.phi125.i = phi { ptr, i32 } [ %lpad.loopexit123.i, %.loopexit121.i ], [ %lpad.loopexit.split-lp124.i, %.loopexit.split-lp122.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtBG_9enumerate9EnumerateNtNtNtCs44bUZaa7qIB_5regex5regex6string14CaptureMatchesEEECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(248) %i.af) #21
          to label %.body.i unwind label %bb.eo, !noalias !493

_RNvNtCskXhPDodhyTq_6mdtest7matcher21discard_todo_metadata.exit.i.i: ; preds = %bb.gi, %.noexc34.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECskXhPDodhyTq_6mdtest.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !479
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !473
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !473
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !473
  store ptr %i.as, ptr %i.ap, align 8, !noalias !473
  store ptr @_RNvXsb_NtCscdodAO9FK5_5alloc6borrowINtB5_3CoweENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCskXhPDodhyTq_6mdtest, ptr %.sroa.410.0..sroa_idx.i.i, align 8, !noalias !473
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aq, ptr noundef nonnull @54, ptr noundef nonnull %i.ap)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskXhPDodhyTq_6mdtest.exit.i.i unwind label %bb.km, !noalias !577

bb.gk:                                            ; preds = %bb.cn
  %i.tx = load ptr, ptr %i.gy, align 8, !alias.scope !469, !noalias !578, !nonnull !29, !noundef !29 ; 4 uses
  %i.ty = load i64, ptr %i.gz, align 8, !alias.scope !469, !noalias !578, !noundef !29 ; 5 uses
  %.idx39.i.i = shl nuw nsw i64 %i.ty, 3
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tx, i64 %.idx39.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !579)
  %i.ua = icmp eq i64 %i.ty, 0
  br i1 %i.ua, label %_RNvMs4_NtCskXhPDodhyTq_6mdtest7matcherNtB5_7Matcher7matches.exit.thread.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.gk
  %i.ub = load ptr, ptr %i.hb, align 8, !alias.scope !582, !noalias !583, !noundef !29 ; 3 uses
  %.not.i.i20.i.i = icmp eq ptr %i.ub, null
  %i.uc = load i64, ptr %i.hc, align 8, !alias.scope !582, !noalias !583 ; 4 uses
  %i.ud = load i64, ptr %i.hd, align 8, !alias.scope !582, !noalias !583 ; 2 uses
  %.not13.i.i.i.i = icmp eq i64 %i.ud, 0
  %i.ue = load ptr, ptr %i.hg, align 8, !alias.scope !582, !noalias !583 ; 10 uses
  %.not14.i.i.i.i = icmp eq ptr %i.ue, null
  %i.uf = load i64, ptr %i.hh, align 8, !alias.scope !582, !noalias !583 ; 31 uses
  %i.ug = icmp eq i64 %i.uf, 0
  %i.uh = icmp eq i64 %i.uf, 1
  %i.ui = icmp ult i64 %i.uf, 33
  %i.uj = add nsw i64 %i.uf, -1
  %i.uk = icmp eq i64 %i.uf, 2
  %i.ul = call i64 @llvm.usub.sat.i64(i64 range(i64 2, 33) %i.uf, i64 4)
  %i.um = add nuw nsw i64 %i.uf, 15               ; 3 uses
  %.phi.trans.insert.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ue, i64 1 ; 12 uses
  %i.un = add nuw nsw i64 %i.uf, 63               ; 2 uses
  %i.uo = icmp slt i64 %i.uf, 5                   ; 5 uses
  %i.up = getelementptr i8, ptr %i.ue, i64 %i.uf  ; 6 uses
  %i.uq = getelementptr i8, ptr %i.up, i64 -4     ; 5 uses
  %invariant.op2142.a = sub i64 -15, %i.uf
  br label %bb.gl

bb.gl:                                            ; preds = %bb.kk, %.lr.ph.i.i.i
  %.sroa.02.085.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.alg, %bb.kk ] ; 3 uses
  %i.ur = phi ptr [ %i.tx, %.lr.ph.i.i.i ], [ %i.us, %bb.kk ] ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 8 ; 2 uses
  %.val8.i.i.i = load ptr, ptr %i.ur, align 8, !noalias !586 ; 6 uses
  br i1 %.not.i.i20.i.i, label %_RNCNCNvMs4_NtCskXhPDodhyTq_6mdtest7matcherNtB9_7Matcher7matches00Bb_.exit.i.i.i.i, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i.i) ]
  %.val.i.i.i.i = load ptr, ptr %.val8.i.i.i, align 8, !noalias !586, !nonnull !29, !noundef !29 ; 3 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 16
  %.sroa.01.0.copyload.i.i.i.i.i = load i64, ptr %i.ut, align 8, !noalias !587
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 24
  %.sroa.5.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !587 ; 4 uses
  switch i64 %.sroa.01.0.copyload.i.i.i.i.i, label %bb.gp [
    i64 3, label %bb.gn
    i64 0, label %.thread.i.i.i.i.i
    i64 1, label %bb.gq
    i64 2, label %bb.gr
    i64 15, label %bb.hd
    i64 4, label %bb.gs
    i64 5, label %bb.gt
    i64 6, label %bb.gu
    i64 7, label %bb.gv
    i64 8, label %bb.gw
    i64 9, label %bb.gx
    i64 10, label %bb.gy
    i64 11, label %bb.gz
    i64 12, label %bb.ha
    i64 13, label %bb.hb
    i64 14, label %bb.hc
  ]

bb.gn:                                            ; preds = %bb.gm
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 32
  %.sroa.6.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !587 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i.i.i) ]
  %i.uu = icmp eq i64 %.sroa.6.0.copyload.i.i.i.i.i, %i.uc
  br i1 %i.uu, label %bb.go, label %.thread.i.i.i.i.i

bb.go:                                            ; preds = %bb.gn
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr nonnull %.sroa.5.0.copyload.i.i.i.i.i, ptr nonnull readonly %i.ub, i64 %i.uc), !noalias !586
  %i.uv = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.uv, label %_RNCNCNvMs4_NtCskXhPDodhyTq_6mdtest7matcherNtB9_7Matcher7matches00Bb_.exit.i.i.i.i, label %.thread.thread.i.i.i.i.i

bb.gp:                                            ; preds = %bb.gm
  unreachable

bb.gq:                                            ; preds = %bb.gm
  br label %.thread.i.i.i.i.i

bb.gr:                                            ; preds = %bb.gm
  br label %.thread.i.i.i.i.i

bb.gs:                                            ; preds = %bb.gm
  br label %.thread.i.i.i.i.i

bb.gt:                                            ; preds = %bb.gm
  br label %.thread.i.i.i.i.i

bb.gu:                                            ; preds = %bb.gm
  br label %.thread.i.i.i.i.i

bb.gv:                                            ; preds = %bb.gm
  br label %.thread.i.i.i.i.i

bb.gw:                                            ; preds = %bb.gm
  br label %.thread.i.i.i.i.i

bb.gx:                                            ; preds = %bb.gm
  br label %.thread.i.i.i.i.i

bb.gy:                                            ; preds = %bb.gm
  br label %.thread.i.i.i.i.i

bb.gz:                                            ; preds = %bb.gm
  br label %.thread.i.i.i.i.i

bb.ha:                                            ; preds = %bb.gm
  br label %.thread.i.i.i.i.i

bb.hb:                                            ; preds = %bb.gm
  br label %.thread.i.i.i.i.i

bb.hc:                                            ; preds = %bb.gm
  br label %.thread.i.i.i.i.i

bb.hd:                                            ; preds = %bb.gm
  br label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.hd, %bb.hc, %bb.hb, %bb.ha, %bb.gz, %bb.gy, %bb.gx, %bb.gw, %bb.gv, %bb.gu, %bb.gt, %bb.gs, %bb.gr, %bb.gq, %bb.gn, %bb.gm
  %.sroa.17.0.i.i.i.i.i = phi i64 [ 14, %bb.hd ], [ 2, %bb.gq ], [ 14, %bb.gr ], [ 5, %bb.gm ], [ 13, %bb.gs ], [ 12, %bb.gt ], [ 12, %bb.gu ], [ 13, %bb.gv ], [ 29, %bb.gw ], [ 25, %bb.gx ], [ 18, %bb.gy ], [ 26, %bb.gz ], [ 11, %bb.ha ], [ 18, %bb.hb ], [ 15, %bb.hc ], [ %.sroa.6.0.copyload.i.i.i.i.i, %bb.gn ]
  %.sroa.02.0.i.i.i.i.i = phi ptr [ @36, %bb.hd ], [ @23, %bb.gq ], [ @24, %bb.gr ], [ @22, %bb.gm ], [ @25, %bb.gs ], [ @26, %bb.gt ], [ @27, %bb.gu ], [ @28, %bb.gv ], [ @29, %bb.gw ], [ @30, %bb.gx ], [ @31, %bb.gy ], [ @32, %bb.gz ], [ @33, %bb.ha ], [ @34, %bb.hb ], [ @35, %bb.hc ], [ %.sroa.5.0.copyload.i.i.i.i.i, %bb.gn ]
  %i.uw = icmp eq i64 %.sroa.17.0.i.i.i.i.i, %i.uc
  br i1 %i.uw, label %.thread.thread.i.i.i.i.i, label %_RNCNCNvMs4_NtCskXhPDodhyTq_6mdtest7matcherNtB9_7Matcher7matches00Bb_.exit.i.i.i.i

.thread.thread.i.i.i.i.i:                         ; preds = %.thread.i.i.i.i.i, %bb.go
  %.sroa.02.03.i.i.i.i.i = phi ptr [ %.sroa.02.0.i.i.i.i.i, %.thread.i.i.i.i.i ], [ %.sroa.5.0.copyload.i.i.i.i.i, %bb.go ]
  %bcmp7.i.i.i.i.i = call i32 @bcmp(ptr nonnull %.sroa.02.03.i.i.i.i.i, ptr nonnull readonly %i.ub, i64 %i.uc), !noalias !586
  %i.ux = icmp eq i32 %bcmp7.i.i.i.i.i, 0
  br label %_RNCNCNvMs4_NtCskXhPDodhyTq_6mdtest7matcherNtB9_7Matcher7matches00Bb_.exit.i.i.i.i

_RNCNCNvMs4_NtCskXhPDodhyTq_6mdtest7matcherNtB9_7Matcher7matches00Bb_.exit.i.i.i.i: ; preds = %.thread.thread.i.i.i.i.i, %.thread.i.i.i.i.i, %bb.go, %bb.gl
  %.sroa.02.0.i.i.i.i = phi i1 [ true, %bb.gl ], [ true, %bb.go ], [ %i.ux, %.thread.thread.i.i.i.i.i ], [ false, %.thread.i.i.i.i.i ] ; 2 uses
  br i1 %.not13.i.i.i.i, label %bb.hl, label %bb.he

bb.he:                                            ; preds = %_RNCNCNvMs4_NtCskXhPDodhyTq_6mdtest7matcherNtB9_7Matcher7matches00Bb_.exit.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !590
  invoke void @_RNvMNtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB2_10Diagnostic12primary_span(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val8.i.i.i)
          to label %.noexc35.i unwind label %.loopexit.i, !noalias !460

.noexc35.i:                                       ; preds = %bb.he
  %i.uy = load i32, ptr %i.s, align 8, !range !228, !noalias !590, !noundef !29
  %.not.i.i.i.i.i = icmp eq i32 %i.uy, 2
  br i1 %.not.i.i.i.i.i, label %bb.hi, label %bb.hf

bb.hf:                                            ; preds = %.noexc35.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !590
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false), !noalias !590
  %.sroa.02.0.copyload.i.i.i.i.i = load i32, ptr %i.he, align 8, !noalias !590
  %.sroa.5.0.copyload.i16.i.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i15.i.i.i.i, align 4, !noalias !590
  call void @llvm.experimental.noalias.scope.decl(metadata !594)
  call void @llvm.experimental.noalias.scope.decl(metadata !597)
  %i.uz = load i32, ptr %i.r, align 8, !range !547, !alias.scope !600, !noalias !590, !noundef !29
  %i.va = icmp eq i32 %i.uz, 0
  br i1 %i.va, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic4SpanECskXhPDodhyTq_6mdtest.exit.i.i.i.i.i, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  call void @llvm.experimental.noalias.scope.decl(metadata !601)
  call void @llvm.experimental.noalias.scope.decl(metadata !604)
  call void @llvm.experimental.noalias.scope.decl(metadata !607)
  %i.vb = load ptr, ptr %i.hf, align 8, !alias.scope !610, !noalias !590, !nonnull !29, !noundef !29
  %i.vc = atomicrmw sub ptr %i.vb, i64 1 release, align 8, !noalias !611
  %i.vd = icmp eq i64 %i.vc, 1
  br i1 %i.vd, label %bb.hh, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic4SpanECskXhPDodhyTq_6mdtest.exit.i.i.i.i.i

bb.hh:                                            ; preds = %bb.hg
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtCs9BeaGo73rC4_16ruff_source_file15SourceFileInnerE9drop_slowCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hf)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic4SpanECskXhPDodhyTq_6mdtest.exit.i.i.i.i.i unwind label %.loopexit.i, !noalias !460

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic4SpanECskXhPDodhyTq_6mdtest.exit.i.i.i.i.i: ; preds = %bb.hh, %bb.hg, %bb.hf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !590
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !590
  %i.ve = trunc i32 %.sroa.02.0.copyload.i.i.i.i.i to i1
  br i1 %i.ve, label %bb.hj, label %_RNvMs4_NtCskXhPDodhyTq_6mdtest7matcherNtB5_7Matcher6column.exit.i.i.i.i

bb.hi:                                            ; preds = %.noexc35.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !590
  br label %_RNvMs4_NtCskXhPDodhyTq_6mdtest7matcherNtB5_7Matcher6column.exit.i.i.i.i

bb.hj:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic4SpanECskXhPDodhyTq_6mdtest.exit.i.i.i.i.i
  %i.vf = load i64, ptr %i.no, align 8, !range !64, !noalias !612, !noundef !29
  %i.vg = icmp eq i64 %i.vf, -1
  br i1 %i.vg, label %bb.hk, label %_RNCNvMs4_NtCskXhPDodhyTq_6mdtest7matcherNtB7_7Matcher6columns_0B9_.exit.i.i.i.i.i

bb.hk:                                            ; preds = %bb.hj
  %i.vh = load ptr, ptr %i.np, align 8, !noalias !612, !nonnull !29, !noundef !29 ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 368
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vh, i64 376
  br label %_RNCNvMs4_NtCskXhPDodhyTq_6mdtest7matcherNtB7_7Matcher6columns_0B9_.exit.i.i.i.i.i

_RNCNvMs4_NtCskXhPDodhyTq_6mdtest7matcherNtB7_7Matcher6columns_0B9_.exit.i.i.i.i.i: ; preds = %bb.hk, %bb.hj
  %.sroa.3.0.in.i.i.i.i.i.i = phi ptr [ %i.vj, %bb.hk ], [ %i.nq, %bb.hj ]
  %.sroa.0.0.in.i.i.i.i.i.i = phi ptr [ %i.vi, %bb.hk ], [ %i.np, %bb.hj ]
  %.sroa.0.0.i.i.i.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i.i.i.i, align 8, !noalias !612, !nonnull !29, !noundef !29
  %.sroa.3.0.i.i.i.i.i.i = load i64, ptr %.sroa.3.0.in.i.i.i.i.i.i, align 8, !noalias !612, !noundef !29
  %i.vk = invoke { i64, i64 } @_RNvMNtCs9BeaGo73rC4_16ruff_source_file10line_indexNtB2_9LineIndex11line_column(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.by, i32 noundef %.sroa.5.0.copyload.i16.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i.i.i.i.i, i64 noundef %.sroa.3.0.i.i.i.i.i.i)
          to label %.noexc37.i unwind label %.loopexit.i, !noalias !460

.noexc37.i:                                       ; preds = %_RNCNvMs4_NtCskXhPDodhyTq_6mdtest7matcherNtB7_7Matcher6columns_0B9_.exit.i.i.i.i.i
  %i.vl = extractvalue { i64, i64 } %i.vk, 1
  br label %_RNvMs4_NtCskXhPDodhyTq_6mdtest7matcherNtB5_7Matcher6column.exit.i.i.i.i

_RNvMs4_NtCskXhPDodhyTq_6mdtest7matcherNtB5_7Matcher6column.exit.i.i.i.i: ; preds = %.noexc37.i, %bb.hi, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic4SpanECskXhPDodhyTq_6mdtest.exit.i.i.i.i.i
  %.sroa.0.0.i17.i.i.i.i = phi i64 [ %i.vl, %.noexc37.i ], [ 1, %bb.hi ], [ 1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic4SpanECskXhPDodhyTq_6mdtest.exit.i.i.i.i.i ]
  %i.vm = icmp eq i64 %i.ud, %.sroa.0.0.i17.i.i.i.i
  %i.vn = and i1 %.sroa.02.0.i.i.i.i, %i.vm
  br label %bb.hl

bb.hl:                                            ; preds = %_RNvMs4_NtCskXhPDodhyTq_6mdtest7matcherNtB5_7Matcher6column.exit.i.i.i.i, %_RNCNCNvMs4_NtCskXhPDodhyTq_6mdtest7matcherNtB9_7Matcher7matches00Bb_.exit.i.i.i.i
  %.sroa.06.0.i.i.i.i = phi i1 [ %i.vn, %_RNvMs4_NtCskXhPDodhyTq_6mdtest7matcherNtB5_7Matcher6column.exit.i.i.i.i ], [ %.sroa.02.0.i.i.i.i, %_RNCNCNvMs4_NtCskXhPDodhyTq_6mdtest7matcherNtB9_7Matcher7matches00Bb_.exit.i.i.i.i ]
  br i1 %.not14.i.i.i.i, label %_RNCNvMs4_NtCskXhPDodhyTq_6mdtest7matcherNtB7_7Matcher7matches0B9_.exit.i.i.i, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !615)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !618
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !618
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !618
  invoke void @_RNvMNtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB2_10Diagnostic15concise_message(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val8.i.i.i)
          to label %.noexc38.i unwind label %.loopexit.i, !noalias !460

.noexc38.i:                                       ; preds = %bb.hm
  invoke void @_RNvMsm_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB5_14ConciseMessage6to_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.o)
          to label %.noexc39.i unwind label %.loopexit.i, !noalias !460

.noexc39.i:                                       ; preds = %.noexc38.i
  %i.vo = load ptr, ptr %i.hi, align 8, !noalias !618, !nonnull !29
  %i.vp = load i64, ptr %i.hj, align 8, !noalias !618
  invoke fastcc void @_RNvNtCskXhPDodhyTq_6mdtest7matcher15normalize_paths(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.vo, i64 noundef %i.vp)
          to label %bb.ho unwind label %bb.hn, !noalias !620

.body.i.i.i.i.i:                                  ; preds = %bb.ke, %.loopexit.split-lp.i.i.i.i.i, %bb.hn
  %.pn.i.i.i21.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i ], [ %i.vq, %bb.hn ], [ %i.aky, %bb.ke ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(24) %i.p) #21
          to label %.body.i unwind label %bb.kj, !noalias !586

bb.hn:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskXhPDodhyTq_6mdtest.exit.i.i.i.i.i.i, %.noexc39.i
  %i.vq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

bb.ho:                                            ; preds = %.noexc39.i
  %i.vr = load ptr, ptr %i.hk, align 8, !noalias !618, !nonnull !29 ; 10 uses
  %i.vs = load i64, ptr %i.hl, align 8, !noalias !618 ; 15 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !621)
  call void @llvm.experimental.noalias.scope.decl(metadata !624)
  br i1 %i.ug, label %.loopexit.i.i.i.i.i, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.vt = icmp ult i64 %i.uf, %i.vs
  br i1 %i.vt, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %bb.hp
  br i1 %i.uh, label %bb.ht, label %bb.hs

bb.hr:                                            ; preds = %bb.hp
  %i.vu = icmp eq i64 %i.uf, %i.vs
  br i1 %i.vu, label %bb.kc, label %.loopexit.i.i.i.i.i

bb.hs:                                            ; preds = %bb.hq
  br i1 %i.ui, label %bb.je, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.i.i.i.i.i.i

bb.ht:                                            ; preds = %bb.hq
  %i.vv = load i8, ptr %i.ue, align 1, !alias.scope !626, !noalias !627, !noundef !29 ; 2 uses
  %i.vw = icmp samesign ult i64 %i.vs, 16
  br i1 %i.vw, label %.lr.ph.i.i.i.i.i.i.i, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.vx = invoke { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef %i.vv, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.vr, i64 noundef range(i64 0, -9223372036854775808) %i.vs)
          to label %.noexc.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.loopexit.i.i.i, !noalias !586

.noexc.i.i.i.i.i:                                 ; preds = %bb.hu
  %i.vy = extractvalue { i64, i64 } %i.vx, 0
  %i.vz = icmp eq i64 %i.vy, 1
  %i.wa = zext i1 %i.vz to i8
  br label %.loopexit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.ht, %bb.hv
  %.sroa.01.05.i.i.i.i.i.i.i = phi i64 [ %i.we, %bb.hv ], [ 0, %bb.ht ] ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vr, i64 %.sroa.01.05.i.i.i.i.i.i.i
  %i.wc = load i8, ptr %i.wb, align 1, !alias.scope !628, !noalias !631, !noundef !29
  %i.wd = icmp eq i8 %i.wc, %i.vv
  br i1 %i.wd, label %.loopexit.i.i.i.i.i, label %bb.hv

bb.hv:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.we = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.we, %i.vs
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.i.i.i.i.i.i: ; preds = %.preheader.i.i.i, %bb.hs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !632
  invoke void @_RNvMsu_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.n, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.vr, i64 noundef %i.vs, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ue, i64 noundef %i.uf)
          to label %.noexc6.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.loopexit.i.i.i, !noalias !586

.noexc6.i.i.i.i.i:                                ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !633)
  %i.wf = load i64, ptr %i.n, align 8, !range !28, !alias.scope !633, !noalias !636, !noundef !29
  %i.wg = trunc nuw i64 %i.wf to i1
  br i1 %i.wg, label %bb.if, label %.preheader.i4.i.i.i.i.i.i

.preheader.i4.i.i.i.i.i.i:                        ; preds = %.noexc6.i.i.i.i.i
  %i.wh = load i8, ptr %i.hn, align 2, !range !98, !alias.scope !638, !noalias !641, !noundef !29
  %i.wi = trunc nuw i8 %i.wh to i1
  br i1 %i.wi, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i.i.i, label %.lr.ph.i5.i.i.i.i.i.i

.lr.ph.i5.i.i.i.i.i.i:                            ; preds = %.preheader.i4.i.i.i.i.i.i
  %.promoted.i.i.i.i.i.i.i = load i64, ptr %i.hm, align 8, !alias.scope !633, !noalias !636 ; 12 uses
  %i.wj = load ptr, ptr %i.hp, align 8, !alias.scope !638, !noalias !641, !nonnull !29, !noundef !29 ; 5 uses
  %i.wk = load i64, ptr %i.hq, align 8, !alias.scope !638, !noalias !641, !noundef !29 ; 14 uses
  %.promoted26.i.i.i.i.i.i.i = load i8, ptr %i.ho, align 8, !alias.scope !638, !noalias !641 ; 2 uses
  %i.wl = trunc nuw i8 %.promoted26.i.i.i.i.i.i.i to i1
  %i.wm = icmp eq i64 %.promoted.i.i.i.i.i.i.i, 0
  br i1 %i.wm, label %bb.hy, label %bb.hw

bb.hw:                                            ; preds = %.lr.ph.i5.i.i.i.i.i.i
  %.not.i.i.i.peel.i.i.i.i.i.i = icmp ult i64 %.promoted.i.i.i.i.i.i.i, %i.wk
  br i1 %.not.i.i.i.peel.i.i.i.i.i.i, label %bb.hx, label %.split.i.i.i.peel.i.i.i.i.i.i

.split.i.i.i.peel.i.i.i.i.i.i:                    ; preds = %bb.hw
  %i.wn = icmp eq i64 %.promoted.i.i.i.i.i.i.i, %i.wk
  br i1 %i.wn, label %bb.hy, label %.loopexit.i.i.i.i.i.i

bb.hx:                                            ; preds = %bb.hw
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wj, i64 %.promoted.i.i.i.i.i.i.i
  %i.wp = load i8, ptr %i.wo, align 1, !alias.scope !643, !noalias !646, !noundef !29
  %i.wq = icmp sgt i8 %i.wp, -65
  br i1 %i.wq, label %bb.hy, label %.loopexit.i.i.i.i.i.i

bb.hy:                                            ; preds = %bb.hx, %.split.i.i.i.peel.i.i.i.i.i.i, %.lr.ph.i5.i.i.i.i.i.i
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wj, i64 %.promoted.i.i.i.i.i.i.i ; 4 uses
  %i.ws = icmp samesign eq i64 %.promoted.i.i.i.i.i.i.i, %i.wk
  br i1 %i.ws, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i.i.i, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.wt = load i8, ptr %i.wr, align 1, !noalias !648, !noundef !29 ; 5 uses
  %i.wu = icmp sgt i8 %i.wt, -1
  br i1 %i.wu, label %bb.ia, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit12.i.i.i.peel.i.i.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit12.i.i.i.peel.i.i.i.i.i.i: ; preds = %bb.hz
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wr, i64 1
  %i.ww = and i8 %i.wt, 31
  %i.wx = zext nneg i8 %i.ww to i32               ; 3 uses
  %i.wy = add nuw nsw i64 %.promoted.i.i.i.i.i.i.i, 1
  %i.wz = icmp samesign ne i64 %i.wy, %i.wk
  call void @llvm.assume(i1 %i.wz)
  %i.xa = load i8, ptr %i.wv, align 1, !noalias !648, !noundef !29
  %i.xb = shl nuw nsw i32 %i.wx, 6
  %i.xc = and i8 %i.xa, 63
  %i.xd = zext nneg i8 %i.xc to i32               ; 2 uses
  %i.xe = or disjoint i32 %i.xb, %i.xd
  %i.xf = icmp samesign ugt i8 %i.wt, -33
  br i1 %i.xf, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit14.i.i.i.peel.i.i.i.i.i.i, label %bb.ib

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit14.i.i.i.peel.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit12.i.i.i.peel.i.i.i.i.i.i
  %i.xg = getelementptr inbounds nuw i8, ptr %i.wr, i64 2
  %i.xh = add nuw nsw i64 %.promoted.i.i.i.i.i.i.i, 2
  %i.xi = icmp samesign ne i64 %i.xh, %i.wk
  call void @llvm.assume(i1 %i.xi)
  %i.xj = load i8, ptr %i.xg, align 1, !noalias !648, !noundef !29
  %i.xk = shl nuw nsw i32 %i.xd, 6
  %i.xl = and i8 %i.xj, 63
  %i.xm = zext nneg i8 %i.xl to i32
  %i.xn = or disjoint i32 %i.xk, %i.xm            ; 2 uses
  %i.xo = shl nuw nsw i32 %i.wx, 12
  %i.xp = or disjoint i32 %i.xn, %i.xo
  %i.xq = icmp samesign ugt i8 %i.wt, -17
  br i1 %i.xq, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit16.i.i.i.peel.i.i.i.i.i.i, label %bb.ib

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit16.i.i.i.peel.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit14.i.i.i.peel.i.i.i.i.i.i
  %i.xr = getelementptr inbounds nuw i8, ptr %i.wr, i64 3
  %i.xs = add nuw nsw i64 %.promoted.i.i.i.i.i.i.i, 3
  %i.xt = icmp samesign ne i64 %i.xs, %i.wk
  call void @llvm.assume(i1 %i.xt)
  %i.xu = load i8, ptr %i.xr, align 1, !noalias !648, !noundef !29
  %i.xv = shl nuw nsw i32 %i.wx, 18
  %i.xw = and i32 %i.xv, 1835008
  %i.xx = shl nuw nsw i32 %i.xn, 6
  %i.xy = and i8 %i.xu, 63
  %i.xz = zext nneg i8 %i.xy to i32
  %i.ya = or disjoint i32 %i.xx, %i.xz
  %i.yb = or disjoint i32 %i.ya, %i.xw
  br label %bb.ib

bb.ia:                                            ; preds = %bb.hz
  %i.yc = zext nneg i8 %i.wt to i32
  br label %bb.ib

bb.ib:                                            ; preds = %bb.ia, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit16.i.i.i.peel.i.i.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit14.i.i.i.peel.i.i.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit12.i.i.i.peel.i.i.i.i.i.i
  %.sroa.4.0.i.ph.i.i.peel.i.i.i.i.i.i = phi i32 [ %i.xp, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit14.i.i.i.peel.i.i.i.i.i.i ], [ %i.yb, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit16.i.i.i.peel.i.i.i.i.i.i ], [ %i.xe, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit12.i.i.i.peel.i.i.i.i.i.i ], [ %i.yc, %bb.ia ] ; 4 uses
  %i.yd = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.yd)
  br i1 %i.wl, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i.i.i, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.ye = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i.i.i, 128
  br i1 %i.ye, label %bb.ig, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.yf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i.i.i, 2048
  br i1 %i.yf, label %bb.ig, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.yg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i.i.i, 65536
  %..i.i.peel.i.i.i.i.i.i = select i1 %i.yg, i64 3, i64 4
  br label %bb.ig

bb.if:                                            ; preds = %.noexc6.i.i.i.i.i
  %i.yh = load i64, ptr %i.hr, align 8, !alias.scope !633, !noalias !636, !noundef !29 ; 2 uses
  %i.yi = icmp eq i64 %i.yh, -1
  %i.yj = load ptr, ptr %i.hp, align 8, !alias.scope !633, !noalias !636, !nonnull !29, !noundef !29 ; 6 uses
  %i.yk = load i64, ptr %i.hq, align 8, !alias.scope !633, !noalias !636, !noundef !29 ; 14 uses
  %i.yl = load ptr, ptr %i.hs, align 8, !alias.scope !633, !noalias !636, !nonnull !29, !noundef !29 ; 4 uses
  %i.ym = load i64, ptr %i.ht, align 8, !alias.scope !633, !noalias !636, !noundef !29 ; 12 uses
  %i.yn = add nsw i64 %i.ym, -1                   ; 4 uses
  br i1 %i.yi, label %bb.il, label %bb.it

bb.ig:                                            ; preds = %bb.ie, %bb.id, %bb.ic
  %.sroa.01.0.i.i.peel.i.i.i.i.i.i = phi i64 [ 2, %bb.id ], [ %..i.i.peel.i.i.i.i.i.i, %bb.ie ], [ 1, %bb.ic ]
  %i.yo = add i64 %.sroa.01.0.i.i.peel.i.i.i.i.i.i, %.promoted.i.i.i.i.i.i.i ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !651)
  %i.yp = icmp eq i64 %i.yo, 0
  br i1 %i.yp, label %bb.ij, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %.not.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.yo, %i.wk
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.ii, label %.split.i.i.i.i.i.i.i.i.i

.split.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.ih
  %i.yq = icmp eq i64 %i.yo, %i.wk
  br i1 %i.yq, label %bb.ij, label %.loopexit.i.i.i.i.i.i

bb.ii:                                            ; preds = %bb.ih
  %i.yr = getelementptr inbounds nuw i8, ptr %i.wj, i64 %i.yo
  %i.ys = load i8, ptr %i.yr, align 1, !alias.scope !643, !noalias !652, !noundef !29
  %i.yt = icmp sgt i8 %i.ys, -65
  br i1 %i.yt, label %bb.ij, label %.loopexit.i.i.i.i.i.i

bb.ij:                                            ; preds = %bb.ii, %.split.i.i.i.i.i.i.i.i.i, %bb.ig
  %i.yu = icmp samesign eq i64 %i.yo, %i.wk
  br i1 %i.yu, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i.i.i, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.yv = getelementptr inbounds nuw i8, ptr %i.wj, i64 %i.yo
  %i.yw = load i8, ptr %i.yv, align 1, !noalias !653, !noundef !29 ; 3 uses
  %i.yx = icmp sgt i8 %i.yw, -1
  br i1 %i.yx, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i.i.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit12.i.i.i.i.i.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit12.i.i.i.i.i.i.i.i.i: ; preds = %bb.ik
  %i.yy = add nuw nsw i64 %i.yo, 1
  %i.yz = icmp samesign ne i64 %i.yy, %i.wk
  call void @llvm.assume(i1 %i.yz)
  %i.za = icmp samesign ugt i8 %i.yw, -33
  br i1 %i.za, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit14.i.i.i.i.i.i.i.i.i, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit14.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit12.i.i.i.i.i.i.i.i.i
  %i.zb = add nuw nsw i64 %i.yo, 2
  %i.zc = icmp samesign ne i64 %i.zb, %i.wk
  call void @llvm.assume(i1 %i.zc)
  %i.zd = icmp samesign ugt i8 %i.yw, -17
  br i1 %i.zd, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit16.i.i.i.i.i.i.i.i.i, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit16.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit14.i.i.i.i.i.i.i.i.i
  %i.ze = add nuw nsw i64 %i.yo, 3
  %i.zf = icmp samesign ne i64 %i.ze, %i.wk
  call void @llvm.assume(i1 %i.zf)
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %bb.ii, %.split.i.i.i.i.i.i.i.i.i, %bb.hx, %.split.i.i.i.peel.i.i.i.i.i.i
  %.lcssa150.i.i.i.i.i.i = phi i64 [ %.promoted.i.i.i.i.i.i.i, %.split.i.i.i.peel.i.i.i.i.i.i ], [ %.promoted.i.i.i.i.i.i.i, %bb.hx ], [ %i.yo, %.split.i.i.i.i.i.i.i.i.i ], [ %i.yo, %bb.ii ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.wj, i64 noundef %i.wk, i64 noundef %.lcssa150.i.i.i.i.i.i, i64 noundef %i.wk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #20
          to label %.noexc7.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.loopexit.split-lp.i.i.i, !noalias !586

.noexc7.i.i.i.i.i:                                ; preds = %.loopexit.i.i.i.i.i.i
  unreachable

bb.il:                                            ; preds = %bb.if
  call void @llvm.experimental.noalias.scope.decl(metadata !654)
  call void @llvm.experimental.noalias.scope.decl(metadata !657)
  call void @llvm.experimental.noalias.scope.decl(metadata !659)
  %.promoted.i17.i.i.i.i.i.i = load i64, ptr %i.hu, align 8, !alias.scope !654, !noalias !661 ; 2 uses
  %i.zg = add i64 %.promoted.i17.i.i.i.i.i.i, %i.yn ; 2 uses
  %i.zh = icmp ult i64 %i.zg, %i.yk
  br i1 %i.zh, label %.lr.ph.i20.i.i.i.i.i.i, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i.i.i

.lr.ph.i20.i.i.i.i.i.i:                           ; preds = %bb.il
  %i.zi = load i64, ptr %i.hv, align 8, !alias.scope !654, !noalias !661, !noundef !29
  %i.zj = load i64, ptr %i.hm, align 8, !alias.scope !654, !noalias !661
  %.fr68.i.i.i.i.i = freeze i64 %i.zj             ; 8 uses
  %i.zk = load i64, ptr %i.ho, align 8, !alias.scope !654, !noalias !661
  %umax49.i23.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %.fr68.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %i.ym)
end_hunk_0
begin_hunk_1_@_RNvNtCskXhPDodhyTq_6mdtest7matcher10match_file:bb.a
  %i.zn = phi i64 [ %i.zg, %.lr.ph.i20.i.i.i.i.i.i ], [ %i.zx, %bb.io ]
  %i.zo = getelementptr inbounds nuw i8, ptr %i.yj, i64 %i.zn
  %i.zp = load i8, ptr %i.zo, align 1, !alias.scope !657, !noalias !663, !noundef !29
  %i.zq = and i8 %i.zp, 63
  %i.zr = zext nneg i8 %i.zq to i64
  %i.zs = shl nuw i64 1, %i.zr
  %i.zt = and i64 %i.zs, %i.zi
  %i.zu = icmp eq i64 %i.zt, 0
  br i1 %i.zu, label %bb.in, label %.preheader96.i.i.i.i.i.i.preheader

.preheader96.i.i.i.i.i.i.preheader:               ; preds = %bb.im
  br i1 %exitcond.not.i25.i.i.i.i.i.i1656.not, label %.lr.ph1658, label %.preheader.i.preheader.i.i.i.i.i

bb.in:                                            ; preds = %bb.im
  %i.zv = add i64 %i.zm, %i.ym
  br label %bb.io

bb.io:                                            ; preds = %bb.is, %.split67.us.i.i.i.i.i, %bb.in
  %i.zw = phi i64 [ %i.aap, %bb.is ], [ %i.zv, %bb.in ], [ %i.aah, %.split67.us.i.i.i.i.i ] ; 2 uses
  %i.zx = add i64 %i.zw, %i.yn                    ; 2 uses
  %i.zy = icmp ult i64 %i.zx, %i.yk
  br i1 %i.zy, label %bb.im, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i.i.i

.preheader96.i.i.i.i.i.i:                         ; preds = %bb.iq
  %i.zz = add i64 %.sroa.02.0.i24.i.i.i.i.i.i1657, 1 ; 2 uses
  %exitcond.not.i25.i.i.i.i.i.i = icmp eq i64 %i.zz, %umax49.i23.i.i.i.i.i.i
  br i1 %exitcond.not.i25.i.i.i.i.i.i, label %.preheader.i.preheader.i.i.i.i.i, label %.lr.ph1658

.preheader.i.preheader.i.i.i.i.i:                 ; preds = %.preheader96.i.i.i.i.i.i, %.preheader96.i.i.i.i.i.i.preheader
  br i1 %.first_iter.i.i.i.i.i.i, label %.preheader.i.us.i.i.i.i.i.preheader, label %.preheader.i.i.i.i.i.i

.preheader.i.us.i.i.i.i.i.preheader:              ; preds = %.preheader.i.preheader.i.i.i.i.i
  br i1 %.not.i.us.i.i.i.i.i1659, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i.i.i, label %.lr.ph1661

.preheader.i.us.i.i.i.i.i:                        ; preds = %bb.ip
  %.not.i.us.i.i.i.i.i = icmp eq i64 %i.aaa, 0
  br i1 %.not.i.us.i.i.i.i.i, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i.i.i, label %.lr.ph1661

.lr.ph1661:                                       ; preds = %.preheader.i.us.i.i.i.i.i.preheader, %.preheader.i.us.i.i.i.i.i
  %.sroa.2.0.i28.i.us.i.i.i.i.i1660 = phi i64 [ %i.aaa, %.preheader.i.us.i.i.i.i.i ], [ %.fr68.i.i.i.i.i, %.preheader.i.us.i.i.i.i.i.preheader ]
  %i.aaa = add i64 %.sroa.2.0.i28.i.us.i.i.i.i.i1660, -1 ; 4 uses
  %i.aab = add i64 %i.aaa, %i.zm                  ; 3 uses
  %i.aac = icmp ult i64 %i.aab, %i.yk
  br i1 %i.aac, label %bb.ip, label %.invoke.i.i.i.i.i

bb.ip:                                            ; preds = %.lr.ph1661
  %i.aad = getelementptr inbounds nuw i8, ptr %i.yl, i64 %i.aaa
  %i.aae = load i8, ptr %i.aad, align 1, !alias.scope !659, !noalias !664, !noundef !29
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.yj, i64 %i.aab
  %i.aag = load i8, ptr %i.aaf, align 1, !alias.scope !657, !noalias !663, !noundef !29
  %.not.i29.i.us.i.i.i.i.i = icmp eq i8 %i.aae, %i.aag
  br i1 %.not.i29.i.us.i.i.i.i.i, label %.preheader.i.us.i.i.i.i.i, label %.split67.us.i.i.i.i.i

.split67.us.i.i.i.i.i:                            ; preds = %bb.ip
  %i.aah = add i64 %i.zm, %i.zk
  br label %bb.io

.lr.ph1658:                                       ; preds = %.preheader96.i.i.i.i.i.i.preheader, %.preheader96.i.i.i.i.i.i
  %.sroa.02.0.i24.i.i.i.i.i.i1657 = phi i64 [ %i.zz, %.preheader96.i.i.i.i.i.i ], [ %.fr68.i.i.i.i.i, %.preheader96.i.i.i.i.i.i.preheader ] ; 4 uses
  %i.aai = add i64 %.sroa.02.0.i24.i.i.i.i.i.i1657, %i.zm ; 2 uses
  %i.aaj = icmp ult i64 %i.aai, %i.yk
  br i1 %i.aaj, label %bb.iq, label %bb.ir

.preheader.i.i.i.i.i.i:                           ; preds = %.preheader.i.preheader.i.i.i.i.i
  br i1 %.not.i.us.i.i.i.i.i1659, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i.i.i, label %.invoke.i.i.i.i.i

bb.iq:                                            ; preds = %.lr.ph1658
  %i.aak = getelementptr inbounds nuw i8, ptr %i.yl, i64 %.sroa.02.0.i24.i.i.i.i.i.i1657
  %i.aal = load i8, ptr %i.aak, align 1, !alias.scope !659, !noalias !664, !noundef !29
  %i.aam = getelementptr inbounds nuw i8, ptr %i.yj, i64 %i.aai
  %i.aan = load i8, ptr %i.aam, align 1, !alias.scope !657, !noalias !663, !noundef !29
  %.not21.i27.i.i.i.i.i.i = icmp eq i8 %i.aal, %i.aan
  br i1 %.not21.i27.i.i.i.i.i.i, label %.preheader96.i.i.i.i.i.i, label %bb.is

bb.ir:                                            ; preds = %.lr.ph1658
  %i.aao = add i64 %i.zm, %.fr68.i.i.i.i.i
  %umax.i26.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %i.yk, i64 %i.aao)
  br label %.invoke.i.i.i.i.i

bb.is:                                            ; preds = %bb.iq
  %.reass235.i.reass.i.reass.i.reass.i.reass.i.reass.i.reass.reass = add i64 %i.zm, %invariant.op2141
  %i.aap = add i64 %.reass235.i.reass.i.reass.i.reass.i.reass.i.reass.i.reass.reass, %.sroa.02.0.i24.i.i.i.i.i.i1657
  br label %bb.io

bb.it:                                            ; preds = %bb.if
  call void @llvm.experimental.noalias.scope.decl(metadata !665)
  call void @llvm.experimental.noalias.scope.decl(metadata !668)
  call void @llvm.experimental.noalias.scope.decl(metadata !670)
  %.promoted.i11.i.i.i.i.i.i = load i64, ptr %i.hu, align 8, !alias.scope !665, !noalias !672 ; 2 uses
  %i.aaq = add i64 %.promoted.i11.i.i.i.i.i.i, %i.yn ; 2 uses
  %i.aar = icmp ult i64 %i.aaq, %i.yk
  br i1 %i.aar, label %.lr.ph.i14.i.i.i.i.i.i, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i.i.i

.lr.ph.i14.i.i.i.i.i.i:                           ; preds = %bb.it
  %i.aas = load i64, ptr %i.hv, align 8, !alias.scope !665, !noalias !672, !noundef !29
  %i.aat = load i64, ptr %i.hm, align 8, !alias.scope !665, !noalias !672 ; 4 uses
  %i.aau = load i64, ptr %i.ho, align 8, !alias.scope !665, !noalias !672 ; 2 uses
  %i.aav = sub i64 %i.ym, %i.aau
  %invariant.op = sub i64 1, %i.aat
  br label %bb.iu

bb.iu:                                            ; preds = %.sink.split.i.i.i.i.i.i.i, %.lr.ph.i14.i.i.i.i.i.i
  %i.aaw = phi i64 [ %.promoted.i11.i.i.i.i.i.i, %.lr.ph.i14.i.i.i.i.i.i ], [ %.ph71.i.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i ] ; 6 uses
  %i.aax = phi i64 [ %i.yh, %.lr.ph.i14.i.i.i.i.i.i ], [ %.sink.i.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i ] ; 3 uses
  %i.aay = phi i64 [ %i.aaq, %.lr.ph.i14.i.i.i.i.i.i ], [ %i.abh, %.sink.split.i.i.i.i.i.i.i ]
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.yj, i64 %i.aay
  %i.aba = load i8, ptr %i.aaz, align 1, !alias.scope !668, !noalias !674, !noundef !29
  %i.abb = and i8 %i.aba, 63
  %i.abc = zext nneg i8 %i.abb to i64
  %i.abd = shl nuw i64 1, %i.abc
  %i.abe = and i64 %i.abd, %i.aas
  %i.abf = icmp eq i64 %i.abe, 0
  br i1 %i.abf, label %bb.iv, label %bb.iw

bb.iv:                                            ; preds = %bb.iu
  %i.abg = add i64 %i.aaw, %i.ym
  br label %.sink.split.i.i.i.i.i.i.i

bb.iw:                                            ; preds = %bb.iu
  %.sroa.0.0.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aax, i64 %i.aat) ; 4 uses
  %umax49.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.i.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %i.ym)
  %exitcond.not.i15.i.i.i.i.i.i1651.not = icmp ult i64 %.sroa.0.0.i.i.i.i.i.i.i.i, %i.ym
  br i1 %exitcond.not.i15.i.i.i.i.i.i1651.not, label %.lr.ph1653, label %.preheader35.i.i.i.i.i.i.preheader

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.jd, %bb.ja, %bb.iv
  %.sink.i.i.i.i.i.i.i = phi i64 [ %i.aav, %bb.ja ], [ 0, %bb.jd ], [ 0, %bb.iv ]
  %.ph71.i.i.i.i.i.i.i = phi i64 [ %i.abw, %bb.ja ], [ %i.acc, %bb.jd ], [ %i.abg, %bb.iv ] ; 2 uses
  %i.abh = add i64 %.ph71.i.i.i.i.i.i.i, %i.yn    ; 2 uses
  %i.abi = icmp ult i64 %i.abh, %i.yk
  br i1 %i.abi, label %bb.iu, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i.i.i

bb.ix:                                            ; preds = %bb.jb
  %i.abj = add i64 %.sroa.02.0.i.i.i.i.i.i.i1652, 1 ; 2 uses
  %exitcond.not.i15.i.i.i.i.i.i = icmp eq i64 %i.abj, %umax49.i.i.i.i.i.i.i
  br i1 %exitcond.not.i15.i.i.i.i.i.i, label %.preheader35.i.i.i.i.i.i.preheader, label %.lr.ph1653

.preheader35.i.i.i.i.i.i.preheader:               ; preds = %bb.ix, %bb.iw
  %i.abk = icmp ult i64 %i.aax, %i.aat
  br i1 %i.abk, label %.lr.ph1655, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i.i.i

.lr.ph1653:                                       ; preds = %bb.iw, %bb.ix
  %.sroa.02.0.i.i.i.i.i.i.i1652 = phi i64 [ %i.abj, %bb.ix ], [ %.sroa.0.0.i.i.i.i.i.i.i.i, %bb.iw ] ; 4 uses
  %i.abl = add i64 %.sroa.02.0.i.i.i.i.i.i.i1652, %i.aaw ; 2 uses
  %i.abm = icmp ult i64 %i.abl, %i.yk
  br i1 %i.abm, label %bb.jb, label %bb.jc

.preheader35.i.i.i.i.i.i:                         ; preds = %bb.iz
  %i.abn = icmp ult i64 %i.aax, %i.abo
  br i1 %i.abn, label %.lr.ph1655, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i.i.i

.lr.ph1655:                                       ; preds = %.preheader35.i.i.i.i.i.i.preheader, %.preheader35.i.i.i.i.i.i
  %.sroa.2.0.i.i.i.i.i.i.i1654 = phi i64 [ %i.abo, %.preheader35.i.i.i.i.i.i ], [ %i.aat, %.preheader35.i.i.i.i.i.i.preheader ]
  %i.abo = add i64 %.sroa.2.0.i.i.i.i.i.i.i1654, -1 ; 6 uses
  %i.abp = icmp ult i64 %i.abo, %i.ym
  br i1 %i.abp, label %bb.iy, label %.invoke.i.i.i.i.i

bb.iy:                                            ; preds = %.lr.ph1655
  %i.abq = add i64 %i.abo, %i.aaw                 ; 3 uses
  %i.abr = icmp ult i64 %i.abq, %i.yk
  br i1 %i.abr, label %bb.iz, label %.invoke.i.i.i.i.i

bb.iz:                                            ; preds = %bb.iy
  %i.abs = getelementptr inbounds nuw i8, ptr %i.yl, i64 %i.abo
  %i.abt = load i8, ptr %i.abs, align 1, !alias.scope !670, !noalias !675, !noundef !29
  %i.abu = getelementptr inbounds nuw i8, ptr %i.yj, i64 %i.abq
  %i.abv = load i8, ptr %i.abu, align 1, !alias.scope !668, !noalias !674, !noundef !29
  %.not.i16.i.i.i.i.i.i = icmp eq i8 %i.abt, %i.abv
  br i1 %.not.i16.i.i.i.i.i.i, label %.preheader35.i.i.i.i.i.i, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.abw = add i64 %i.aaw, %i.aau
  br label %.sink.split.i.i.i.i.i.i.i

bb.jb:                                            ; preds = %.lr.ph1653
  %i.abx = getelementptr inbounds nuw i8, ptr %i.yl, i64 %.sroa.02.0.i.i.i.i.i.i.i1652
  %i.aby = load i8, ptr %i.abx, align 1, !alias.scope !670, !noalias !675, !noundef !29
  %i.abz = getelementptr inbounds nuw i8, ptr %i.yj, i64 %i.abl
  %i.aca = load i8, ptr %i.abz, align 1, !alias.scope !668, !noalias !674, !noundef !29
  %.not21.i.i.i.i.i.i.i = icmp eq i8 %i.aby, %i.aca
  br i1 %.not21.i.i.i.i.i.i.i, label %bb.ix, label %bb.jd

bb.jc:                                            ; preds = %.lr.ph1653
  %i.acb = add i64 %.sroa.0.0.i.i.i.i.i.i.i.i, %i.aaw
  %umax.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %i.yk, i64 %i.acb)
  br label %.invoke.i.i.i.i.i

bb.jd:                                            ; preds = %bb.jb
  %.reass.i.reass.i.reass.i.reass.i.reass.i.reass.i.reass.reass = add i64 %i.aaw, %invariant.op
  %i.acc = add i64 %.reass.i.reass.i.reass.i.reass.i.reass.i.reass.i.reass.reass, %.sroa.02.0.i.i.i.i.i.i.i1652
  br label %.sink.split.i.i.i.i.i.i.i

_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i.i.i: ; preds = %.sink.split.i.i.i.i.i.i.i, %.preheader35.i.i.i.i.i.i.preheader, %bb.io, %.preheader.i.us.i.i.i.i.i.preheader, %.preheader35.i.i.i.i.i.i, %.preheader.i.us.i.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit12.i.i.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit14.i.i.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit16.i.i.i.i.i.i.i.i.i, %bb.ik, %bb.it, %.preheader.i.i.i.i.i.i, %bb.il, %bb.ij, %bb.ib, %bb.hy, %.preheader.i4.i.i.i.i.i.i
  %.sroa.0.031.i.i.i.i.i.i = phi i8 [ 1, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit12.i.i.i.i.i.i.i.i.i ], [ 0, %bb.il ], [ 0, %.preheader.i4.i.i.i.i.i.i ], [ 1, %bb.ij ], [ 1, %.preheader35.i.i.i.i.i.i ], [ 1, %bb.ib ], [ %.promoted26.i.i.i.i.i.i.i, %bb.hy ], [ 0, %bb.it ], [ 0, %bb.io ], [ 1, %.preheader.i.us.i.i.i.i.i ], [ 1, %.preheader.i.i.i.i.i.i ], [ 1, %bb.ik ], [ 1, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit16.i.i.i.i.i.i.i.i.i ], [ 1, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit14.i.i.i.i.i.i.i.i.i ], [ 1, %.preheader.i.us.i.i.i.i.i.preheader ], [ 0, %.sink.split.i.i.i.i.i.i.i ], [ 1, %.preheader35.i.i.i.i.i.i.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !632
  br label %.loopexit.i.i.i.i.i

bb.je:                                            ; preds = %bb.hs
  call void @llvm.experimental.noalias.scope.decl(metadata !676)
  call void @llvm.experimental.noalias.scope.decl(metadata !679)
  %i.acd = load i8, ptr %i.ue, align 1, !alias.scope !681, !noalias !682, !noundef !29 ; 3 uses
  br i1 %i.uk, label %.thread.i.i.i.i.i.i.i, label %.lr.ph1650

.preheader.i.i.i:                                 ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskXhPDodhyTq_6mdtest.exit.i.i.i.i.i.i.i.i
  %i.ace = icmp ult i64 %i.ul, %i.acg
  br i1 %i.ace, label %.lr.ph1650, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.i.i.i.i.i.i

.lr.ph1650:                                       ; preds = %bb.je, %.preheader.i.i.i
  %i.acf = phi i64 [ %i.acg, %.preheader.i.i.i ], [ %i.uf, %bb.je ]
  %i.acg = add nsw i64 %i.acf, -1                 ; 6 uses
  %i.ach = icmp ult i64 %i.acg, %i.uf
  br i1 %i.ach, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskXhPDodhyTq_6mdtest.exit.i.i.i.i.i.i.i.i, label %.invoke.i.i.i.i.i

.invoke.i.i.i.i.i:                                ; preds = %.preheader.i.i.i.i.i.i, %.lr.ph1650, %bb.iy, %.lr.ph1655, %.lr.ph1661, %bb.jc, %bb.ir
  %i.aci = phi i64 [ %i.acg, %.lr.ph1650 ], [ %umax.i.i.i.i.i.i.i, %bb.jc ], [ %i.aab, %.lr.ph1661 ], [ %i.abq, %bb.iy ], [ %umax.i26.i.i.i.i.i.i, %bb.ir ], [ %i.abo, %.lr.ph1655 ], [ %i.zl, %.preheader.i.i.i.i.i.i ]
  %i.acj = phi i64 [ %i.uf, %.lr.ph1650 ], [ %i.yk, %bb.jc ], [ %i.yk, %.lr.ph1661 ], [ %i.yk, %bb.iy ], [ %i.yk, %bb.ir ], [ %i.ym, %.lr.ph1655 ], [ %i.ym, %.preheader.i.i.i.i.i.i ]
  %i.ack = phi ptr [ @39, %.lr.ph1650 ], [ @20, %bb.jc ], [ @19, %.lr.ph1661 ], [ @19, %bb.iy ], [ @20, %bb.ir ], [ @18, %.lr.ph1655 ], [ @18, %.preheader.i.i.i.i.i.i ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aci, i64 noundef range(i64 0, -9223372036854775808) %i.acj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ack) #20
          to label %.cont.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.loopexit.split-lp.i.i.i, !noalias !586

.cont.i.i.i.i.i:                                  ; preds = %.invoke.i.i.i.i.i
  unreachable

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskXhPDodhyTq_6mdtest.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph1650
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ue, i64 %i.acg
  %i.acm = load i8, ptr %i.acl, align 1, !alias.scope !681, !noalias !683, !noundef !29 ; 2 uses
  %.not.i.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.acm, %i.acd
  br i1 %.not.i.not.i.i.i.i.i.i.i.i, label %.preheader.i.i.i, label %bb.jf

bb.jf:                                            ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskXhPDodhyTq_6mdtest.exit.i.i.i.i.i.i.i.i
  %i.acn = icmp ult i64 %i.vs, %i.um
  br i1 %i.acn, label %.lr.ph.split.us.i.i.i.i.i.i.i.i, label %bb.jg

.thread.i.i.i.i.i.i.i:                            ; preds = %bb.je
  %i.aco = icmp ult i64 %i.vs, 17
  br i1 %i.aco, label %.lr.ph.split.us.i.i.i.i.i.i.i.i, label %.thread93.i.i.i.i.i.i.i

.thread93.i.i.i.i.i.i.i:                          ; preds = %.thread.i.i.i.i.i.i.i
  %i.acp = insertelement <16 x i8> poison, i8 %i.acd, i64 0
  %i.acq = shufflevector <16 x i8> %i.acp, <16 x i8> poison, <16 x i32> zeroinitializer
  %.pre.i.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 1, !alias.scope !681, !noalias !682
  br label %bb.jh

bb.jg:                                            ; preds = %bb.jf
  %i.acr = insertelement <16 x i8> poison, i8 %i.acd, i64 0
  %i.acs = shufflevector <16 x i8> %i.acr, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.jh

.lr.ph.split.us.i.i.i.i.i.i.i.i:                  ; preds = %.thread.i.i.i.i.i.i.i, %bb.jf
  %bcmp.i.i.us23.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.vr, ptr noundef nonnull readonly dereferenceable(1) %i.ue, i64 range(i64 2, 33) %i.uf), !alias.scope !691, !noalias !692
  %i.act = icmp eq i32 %bcmp.i.i.us23.i.i.i.i.i.i.i.i, 0
  br i1 %i.act, label %.loopexit.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CskXhPDodhyTq_6mdtest.exit.backedge.us.i.i.i.i.i.i.i.i

.split.us.i.i.i.i.i.i.i.i:                        ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CskXhPDodhyTq_6mdtest.exit.backedge.us.i.i.i.i.i.i.i.i
  %i.acu = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i.i.i, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.acu, ptr noundef nonnull readonly dereferenceable(1) %i.ue, i64 range(i64 2, 33) %i.uf), !alias.scope !691, !noalias !692
  %i.acv = icmp eq i32 %bcmp.i.i.us.i.i.i.i.i.i.i.i, 0
  br i1 %i.acv, label %.loopexit.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CskXhPDodhyTq_6mdtest.exit.backedge.us.i.i.i.i.i.i.i.i

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CskXhPDodhyTq_6mdtest.exit.backedge.us.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i.i, %.split.us.i.i.i.i.i.i.i.i
  %.pn.i.i.i.i.i.i.i = phi ptr [ %i.acu, %.split.us.i.i.i.i.i.i.i.i ], [ %i.vr, %.lr.ph.split.us.i.i.i.i.i.i.i.i ]
  %.in.i.i.i.i.i.i.i = phi i64 [ %i.acw, %.split.us.i.i.i.i.i.i.i.i ], [ %i.vs, %.lr.ph.split.us.i.i.i.i.i.i.i.i ]
  %i.acw = add i64 %.in.i.i.i.i.i.i.i, -1         ; 2 uses
  %.not28.i.i.i.i.i.i.i.i = icmp ugt i64 %i.uf, %i.acw
  br i1 %.not28.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %.split.us.i.i.i.i.i.i.i.i

bb.jh:                                            ; preds = %bb.jg, %.thread93.i.i.i.i.i.i.i
  %i.acx = phi i8 [ %.pre.i.i.i.i.i.i.i, %.thread93.i.i.i.i.i.i.i ], [ %i.acm, %bb.jg ]
  %i.acy = phi <16 x i8> [ %i.acq, %.thread93.i.i.i.i.i.i.i ], [ %i.acs, %bb.jg ] ; 6 uses
  %storemerge9295.i.i.i.i.i.i.i = phi i64 [ 1, %.thread93.i.i.i.i.i.i.i ], [ %i.acg, %bb.jg ] ; 6 uses
  %i.acz = insertelement <16 x i8> poison, i8 %i.acx, i64 0
  %i.ada = shufflevector <16 x i8> %i.acz, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !696
  store ptr %i.vr, ptr %i.m, align 8, !noalias !696
  store i64 %i.vs, ptr %i.hw, align 8, !noalias !696
  store ptr %.phi.trans.insert.i.i.i.i.i.i.i, ptr %i.hx, align 8, !noalias !696
  store i64 %i.uj, ptr %i.hy, align 8, !noalias !696
  %.not.i7.i.i.i.i.i.i = icmp ult i64 %i.un, %i.vs
  br i1 %.not.i7.i.i.i.i.i.i, label %.lr.ph.i10.i.i.i.i.i.i, label %.preheader.i8.i.i.i.i.i.i

.preheader.i8.i.i.i.i.i.i:                        ; preds = %.noexc17.i.i.i.i.i, %bb.jh
  %.sroa.014.0.lcssa.i.i.i.i.i.i.i = phi i8 [ 0, %bb.jh ], [ %.sroa.014.2.3.i.i.i.i.i.i.i, %.noexc17.i.i.i.i.i ] ; 2 uses
  %.sroa.06.0.lcssa.i.i.i.i.i.i.i = phi i64 [ 0, %bb.jh ], [ %i.ahr, %.noexc17.i.i.i.i.i ] ; 2 uses
  %i.adb = add i64 %.sroa.06.0.lcssa.i.i.i.i.i.i.i, %i.um
  %i.adc = icmp uge i64 %i.adb, %i.vs
  %i.add = trunc nuw i8 %.sroa.014.0.lcssa.i.i.i.i.i.i.i to i1 ; 2 uses
  %or.cond3105.i.i.i.i.i.i.i = select i1 %i.adc, i1 true, i1 %i.add
  br i1 %or.cond3105.i.i.i.i.i.i.i, label %._crit_edge.i9.i.i.i.i.i.i, label %.lr.ph107.i.i.i.i.i.i.i

.lr.ph.i10.i.i.i.i.i.i:                           ; preds = %bb.jh, %.noexc17.i.i.i.i.i
  %.sroa.06.0103.i.i.i.i.i.i.i = phi i64 [ %i.ahr, %.noexc17.i.i.i.i.i ], [ 0, %bb.jh ] ; 2 uses
  %i.ade = getelementptr i8, ptr %i.vr, i64 %.sroa.06.0103.i.i.i.i.i.i.i ; 7 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ade, align 1, !alias.scope !697, !noalias !698
  %i.adf = getelementptr inbounds nuw i8, ptr %i.ade, i64 %storemerge9295.i.i.i.i.i.i.i
  %.sroa.02.0.copyload.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.adf, align 1, !alias.scope !697, !noalias !698
  %i.adg = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, %i.acy
  %i.adh = icmp eq <16 x i8> %.sroa.02.0.copyload.i.i.i.i.i.i.i.i, %i.ada
  %i.adi = and <16 x i1> %i.adg, %i.adh
  %i.adj = bitcast <16 x i1> %i.adi to i16        ; 3 uses
  %i.adk = getelementptr i8, ptr %i.ade, i64 16   ; 4 uses
  %.sroa.0.0.copyload.i.1.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.adk, align 1, !alias.scope !697, !noalias !698
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 %storemerge9295.i.i.i.i.i.i.i
  %.sroa.02.0.copyload.i.1.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.adl, align 1, !alias.scope !697, !noalias !698
  %i.adm = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i.i.i.i.i.i.i, %i.acy
  %i.adn = icmp eq <16 x i8> %.sroa.02.0.copyload.i.1.i.i.i.i.i.i.i, %i.ada
  %i.ado = and <16 x i1> %i.adm, %i.adn
  %i.adp = bitcast <16 x i1> %i.ado to i16        ; 3 uses
  %i.adq = getelementptr i8, ptr %i.ade, i64 32   ; 4 uses
  %.sroa.0.0.copyload.i.2.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.adq, align 1, !alias.scope !697, !noalias !698
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adq, i64 %storemerge9295.i.i.i.i.i.i.i
  %.sroa.02.0.copyload.i.2.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.adr, align 1, !alias.scope !697, !noalias !698
  %i.ads = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i.i.i.i.i.i.i, %i.acy
  %i.adt = icmp eq <16 x i8> %.sroa.02.0.copyload.i.2.i.i.i.i.i.i.i, %i.ada
  %i.adu = and <16 x i1> %i.ads, %i.adt
  %i.adv = bitcast <16 x i1> %i.adu to i16        ; 3 uses
  %i.adw = getelementptr i8, ptr %i.ade, i64 48   ; 4 uses
  %.sroa.0.0.copyload.i.3.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.adw, align 1, !alias.scope !697, !noalias !698
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adw, i64 %storemerge9295.i.i.i.i.i.i.i
  %.sroa.02.0.copyload.i.3.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.adx, align 1, !alias.scope !697, !noalias !698
  %i.ady = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i.i.i.i.i.i.i, %i.acy
  %i.adz = icmp eq <16 x i8> %.sroa.02.0.copyload.i.3.i.i.i.i.i.i.i, %i.ada
  %i.aea = and <16 x i1> %i.ady, %i.adz
  %i.aeb = bitcast <16 x i1> %i.aea to i16        ; 3 uses
  %i.aec = icmp eq i16 %i.adj, 0
  br i1 %i.aec, label %.preheader96.1.i.i.i.i.i.i.i, label %bb.js

.preheader96.1.i.i.i.i.i.i.i:                     ; preds = %bb.jv, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us.i133, %.lr.ph.i10.i.i.i.i.i.i
  %i.aed = icmp eq i16 %i.adp, 0
  br i1 %i.aed, label %.preheader96.2.i.i.i.i.i.i.i, label %.preheader.i202

.preheader.i202:                                  ; preds = %.preheader96.1.i.i.i.i.i.i.i
  br i1 %i.uo, label %.preheader.split.us.i220, label %.preheader.split.i206

.preheader.split.us.i220:                         ; preds = %.preheader.i202, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us.i231
  %.sroa.0.09.us.i221 = phi i16 [ %i.aeq, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us.i231 ], [ %i.adp, %.preheader.i202 ] ; 2 uses
  %i.aee = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.09.us.i221, i1 true) ; 2 uses
  %i.aef = zext nneg i16 %i.aee to i64
  %i.aeg = getelementptr i8, ptr %i.adk, i64 %i.aef ; 2 uses
  %i.aeh = getelementptr i8, ptr %i.aeg, i64 1
  call void @llvm.experimental.noalias.scope.decl(metadata !701), !noalias !586
  call void @llvm.experimental.noalias.scope.decl(metadata !704), !noalias !586
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !706
  %i.aei = getelementptr i8, ptr %i.aeg, i64 %i.uf
  invoke void @_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly %i.aeh, ptr noundef nonnull readonly %i.aei, ptr noundef nonnull readonly %.phi.trans.insert.i.i.i.i.i.i.i, ptr noundef nonnull readonly %i.up)
          to label %.noexc233 unwind label %.loopexit.split-lp.loopexit.i.i.i.i.i.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc233:                                        ; preds = %.preheader.split.us.i220
  %.sroa.0.0.copyload.i.us.i222 = load ptr, ptr %i.a, align 8, !noalias !709 ; 2 uses
  %.sroa.522.0.copyload.i.us.i223 = load ptr, ptr %.sroa.522.0..sroa_idx.i.i203, align 8, !noalias !709 ; 2 uses
  %.sroa.623.0.copyload.i.us.i224 = load i64, ptr %.sroa.623.0..sroa_idx.i.i204, align 8, !noalias !709 ; 3 uses
  %.sroa.8.0.copyload.i.us.i225 = load i64, ptr %.sroa.8.0..sroa_idx.i.i205, align 8, !noalias !709 ; 2 uses
  %umax.i.us.i226 = call i64 @llvm.umax.i64(i64 %.sroa.623.0.copyload.i.us.i224, i64 %.sroa.8.0.copyload.i.us.i225)
  %exitcond.not.i.us.i2281664.not = icmp ult i64 %.sroa.623.0.copyload.i.us.i224, %.sroa.8.0.copyload.i.us.i225
  br i1 %exitcond.not.i.us.i2281664.not, label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskXhPDodhyTq_6mdtest.exit.i.us.i229.preheader, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread6.i232

_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskXhPDodhyTq_6mdtest.exit.i.us.i229.preheader: ; preds = %.noexc233
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.us.i222) ], !noalias !586
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.522.0.copyload.i.us.i223) ], !noalias !586
  br label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskXhPDodhyTq_6mdtest.exit.i.us.i229

bb.ji:                                            ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskXhPDodhyTq_6mdtest.exit.i.us.i229
  %i.aej = add i64 %.sroa.623.0.i.us.i2271665, 1  ; 2 uses
  %exitcond.not.i.us.i228 = icmp eq i64 %i.aej, %umax.i.us.i226
  br i1 %exitcond.not.i.us.i228, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread6.i232, label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskXhPDodhyTq_6mdtest.exit.i.us.i229

_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskXhPDodhyTq_6mdtest.exit.i.us.i229: ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskXhPDodhyTq_6mdtest.exit.i.us.i229.preheader, %bb.ji
  %.sroa.623.0.i.us.i2271665 = phi i64 [ %i.aej, %bb.ji ], [ %.sroa.623.0.copyload.i.us.i224, %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskXhPDodhyTq_6mdtest.exit.i.us.i229.preheader ] ; 3 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.us.i222, i64 %.sroa.623.0.i.us.i2271665
  %i.ael = getelementptr inbounds nuw i8, ptr %.sroa.522.0.copyload.i.us.i223, i64 %.sroa.623.0.i.us.i2271665
  %i.aem = load i8, ptr %i.aek, align 1, !noalias !706, !noundef !29
  %i.aen = load i8, ptr %i.ael, align 1, !noalias !706, !noundef !29
  %.not21.i.us.i230 = icmp eq i8 %i.aem, %i.aen
  br i1 %.not21.i.us.i230, label %bb.ji, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us.i231

_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us.i231: ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskXhPDodhyTq_6mdtest.exit.i.us.i229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !706
  %i.aeo = shl nuw i16 1, %i.aee
  %i.aep = xor i16 %i.aeo, -1
  %i.aeq = and i16 %.sroa.0.09.us.i221, %i.aep    ; 2 uses
  %i.aer = icmp eq i16 %i.aeq, 0
  br i1 %i.aer, label %.preheader96.2.i.i.i.i.i.i.i, label %.preheader.split.us.i220

.preheader.split.i206:                            ; preds = %.preheader.i202, %bb.jk
  %.sroa.0.09.i207 = phi i16 [ %i.aff, %bb.jk ], [ %i.adp, %.preheader.i202 ] ; 2 uses
  %i.aes = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.09.i207, i1 true) ; 2 uses
  %i.aet = zext nneg i16 %i.aes to i64
  %i.aeu = getelementptr i8, ptr %i.adk, i64 %i.aet ; 2 uses
  %i.aev = getelementptr i8, ptr %i.aeu, i64 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !701), !noalias !586
  call void @llvm.experimental.noalias.scope.decl(metadata !704), !noalias !586
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !706
  %i.aew = getelementptr i8, ptr %i.aeu, i64 %i.uf
  %i.aex = getelementptr i8, ptr %i.aew, i64 -4   ; 3 uses
  %i.aey = icmp ult ptr %i.aev, %i.aex
  br i1 %i.aey, label %.lr.ph.i.i213, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.i208

.lr.ph.i.i213:                                    ; preds = %.preheader.split.i206, %bb.jj
  %.sroa.04.030.i.i214 = phi ptr [ %i.aez, %bb.jj ], [ %i.aev, %.preheader.split.i206 ] ; 2 uses
  %.sroa.08.029.i.i215 = phi ptr [ %i.afa, %bb.jj ], [ %.phi.trans.insert.i.i.i.i.i.i.i, %.preheader.split.i206 ] ; 2 uses
  %.sroa.011.0.copyload.i.i216 = load i32, ptr %.sroa.04.030.i.i214, align 1, !alias.scope !701, !noalias !710
  %.sroa.013.0.copyload.i.i217 = load i32, ptr %.sroa.08.029.i.i215, align 1, !alias.scope !704, !noalias !711
  %.not.i.i218 = icmp eq i32 %.sroa.011.0.copyload.i.i216, %.sroa.013.0.copyload.i.i217
  br i1 %.not.i.i218, label %bb.jj, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit8.i219

bb.jj:                                            ; preds = %.lr.ph.i.i213
  %i.aez = getelementptr inbounds nuw i8, ptr %.sroa.04.030.i.i214, i64 4 ; 2 uses
  %i.afa = getelementptr inbounds nuw i8, ptr %.sroa.08.029.i.i215, i64 4
  %i.afb = icmp ult ptr %i.aez, %i.aex
  br i1 %i.afb, label %.lr.ph.i.i213, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.i208
end_hunk_1
