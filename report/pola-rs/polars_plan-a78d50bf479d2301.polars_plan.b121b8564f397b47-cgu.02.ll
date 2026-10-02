Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_plan-a78d50bf479d2301.polars_plan.b121b8564f397b47-cgu.02?download=true
inline.NumInlined: 11828
inline.NumDeleted: 4829
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_RINvNtNtNtCskmDBXs7hs3c_5tokio7runtime7context7runtime13enter_runtimeNCINvMNtNtB6_9scheduler14current_threadNtB1b_13CurrentThread8block_onNCINvNtNtCslpwjCj2YNBy_9polars_io10file_cache5utils26init_entries_from_uri_listINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB3C_3ops5range5RangejENCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions5count18count_all_rows_csvs_0EE0E0INtNtB3C_6result6ResultINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB6B_4sync3ArcNtNtB2j_5entry14FileCacheEntryEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB4U_:bb.a

bb.ap:                                            ; preds = %.body.i
  %.val.i = load ptr, ptr %i.ac, align 8, !dbg !56071, !noalias !55923, !align !4821, !noundef !4698 ; 2 uses
  %i.ci = icmp eq ptr %.val.i, null, !dbg !56074
  br i1 %i.ci, label %.body, label %bb.aq, !dbg !56074

bb.aq:                                            ; preds = %bb.ap
  %.val1.i = load ptr, ptr %i.ad, align 8, !dbg !56071, !noalias !55923
  %i.cj = getelementptr inbounds nuw i8, ptr %.val.i, i64 24, !dbg !56075
  %i.ck = load ptr, ptr %i.cj, align 8, !dbg !56075, !noalias !55923, !nonnull !4698, !noundef !4698
  invoke void %i.ck(ptr noundef %.val1.i)
          to label %.body unwind label %bb.am, !dbg !56075, !inline_history !5242

bb.ar:                                            ; preds = %bb.ao
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !56071, !noalias !55923
  unreachable, !dbg !56071

bb.as:                                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !56043, !noalias !55925
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @467, i64 noundef 27, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @806, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @468) #46
          to label %.noexc9.i unwind label %.loopexit.split-lp17.i, !dbg !56076, !noalias !55923

.noexc9.i:                                        ; preds = %bb.as
  unreachable

bb.at:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !56043, !noalias !55925
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.66.i, i64 64, i1 false), !dbg !56077, !alias.scope !55957, !noalias !55923
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66.i), !dbg !56078
  %.not2.i = icmp eq i64 %.sroa.023.0.i.i, 19, !dbg !55976
  br i1 %.not2.i, label %bb.ba, label %bb.au, !dbg !56079

bb.au:                                            ; preds = %bb.at
  store i64 %.sroa.023.0.i.i, ptr %0, align 8, !dbg !56080, !alias.scope !55922, !noalias !55958
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !56080
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.i, i64 64, i1 false), !dbg !56080, !noalias !55958
  invoke void @_RNvXsb_NtNtCskmDBXs7hs3c_5tokio4sync6notifyNtB5_8NotifiedNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.g)
          to label %bb.ax unwind label %bb.av, !dbg !56081, !noalias !55923

bb.av:                                            ; preds = %bb.au
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load ptr, ptr %i.ac, align 8, !dbg !56081, !noalias !55923, !align !4821, !noundef !4698 ; 2 uses
  %i.cn = icmp eq ptr %.val2.i.i, null, !dbg !56082
  br i1 %i.cn, label %.body, label %bb.aw, !dbg !56082

bb.aw:                                            ; preds = %bb.av
  %.val3.i.i = load ptr, ptr %i.ad, align 8, !dbg !56081, !noalias !55923
  %i.co = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 24, !dbg !56083
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !56083, !noalias !55923, !nonnull !4698, !noundef !4698
  invoke void %i.cp(ptr noundef %.val3.i.i)
          to label %.body unwind label %bb.az, !dbg !56083, !noalias !55923, !inline_history !1820

bb.ax:                                            ; preds = %bb.au
  %.val.i10.i = load ptr, ptr %i.ac, align 8, !dbg !56081, !noalias !55923, !align !4821, !noundef !4698 ; 2 uses
  %i.cq = icmp eq ptr %.val.i10.i, null, !dbg !56084
  br i1 %i.cq, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio4sync6notify8NotifiedECsfcROwRM8ZtH_11polars_plan.exit.i, label %bb.ay, !dbg !56084

bb.ay:                                            ; preds = %bb.ax
  %.val1.i.i = load ptr, ptr %i.ad, align 8, !dbg !56081, !noalias !55923
  %i.cr = getelementptr inbounds nuw i8, ptr %.val.i10.i, i64 24, !dbg !56085
  %i.cs = load ptr, ptr %i.cr, align 8, !dbg !56085, !noalias !55923, !nonnull !4698, !noundef !4698
  invoke void %i.cs(ptr noundef %.val1.i.i)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio4sync6notify8NotifiedECsfcROwRM8ZtH_11polars_plan.exit.i unwind label %.loopexit.split-lp, !dbg !56085, !inline_history !55908

bb.az:                                            ; preds = %bb.aw
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !56081, !noalias !55923
  unreachable, !dbg !56081

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio4sync6notify8NotifiedECsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %bb.ay, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !56086, !noalias !55923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !56087, !noalias !55923
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i), !dbg !56087
  br label %bb.bh, !dbg !56069

bb.ba:                                            ; preds = %bb.at
  invoke void @_RNvXsb_NtNtCskmDBXs7hs3c_5tokio4sync6notifyNtB5_8NotifiedNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.g)
          to label %bb.bd unwind label %bb.bb, !dbg !56088, !noalias !55923

bb.bb:                                            ; preds = %bb.ba
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i11.i = load ptr, ptr %i.ac, align 8, !dbg !56088, !noalias !55923, !align !4821, !noundef !4698 ; 2 uses
  %i.cv = icmp eq ptr %.val2.i11.i, null, !dbg !56089
  br i1 %i.cv, label %.body, label %bb.bc, !dbg !56089

bb.bc:                                            ; preds = %bb.bb
  %.val3.i12.i = load ptr, ptr %i.ad, align 8, !dbg !56088, !noalias !55923
  %i.cw = getelementptr inbounds nuw i8, ptr %.val2.i11.i, i64 24, !dbg !56090
  %i.cx = load ptr, ptr %i.cw, align 8, !dbg !56090, !noalias !55923, !nonnull !4698, !noundef !4698
  invoke void %i.cx(ptr noundef %.val3.i12.i)
          to label %.body unwind label %bb.bf, !dbg !56090, !noalias !55923, !inline_history !1820

bb.bd:                                            ; preds = %bb.ba
  %.val.i14.i = load ptr, ptr %i.ac, align 8, !dbg !56088, !noalias !55923, !align !4821, !noundef !4698 ; 2 uses
  %i.cy = icmp eq ptr %.val.i14.i, null, !dbg !56091
  br i1 %i.cy, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio4sync6notify8NotifiedECsfcROwRM8ZtH_11polars_plan.exit16.i, label %bb.be, !dbg !56091

bb.be:                                            ; preds = %bb.bd
  %.val1.i15.i = load ptr, ptr %i.ad, align 8, !dbg !56088, !noalias !55923
  %i.cz = getelementptr inbounds nuw i8, ptr %.val.i14.i, i64 24, !dbg !56092
  %i.da = load ptr, ptr %i.cz, align 8, !dbg !56092, !noalias !55923, !nonnull !4698, !noundef !4698
  invoke void %i.da(ptr noundef %.val1.i15.i)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio4sync6notify8NotifiedECsfcROwRM8ZtH_11polars_plan.exit16.i unwind label %.loopexit, !dbg !56092, !inline_history !55908

bb.bf:                                            ; preds = %bb.bc
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !56088, !noalias !55923
  unreachable, !dbg !56088

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio4sync6notify8NotifiedECsfcROwRM8ZtH_11polars_plan.exit16.i: ; preds = %bb.be, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !56086, !noalias !55923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !56087, !noalias !55923
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i), !dbg !56087
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !56093, !noalias !55923
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !55966, !noalias !55923
  invoke void @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler14current_threadNtB2_13CurrentThread9take_core(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.l, ptr noundef nonnull align 8 %.sroa.4.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r)
          to label %.noexc8 unwind label %.loopexit, !dbg !55967

.noexc8:                                          ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio4sync6notify8NotifiedECsfcROwRM8ZtH_11polars_plan.exit16.i
  %i.dc = load i64, ptr %i.l, align 8, !dbg !55966, !range !4858, !noalias !55923, !noundef !4698
  %.not.i = icmp eq i64 %i.dc, 2, !dbg !55966
  br i1 %.not.i, label %bb.c, label %._crit_edge.i, !dbg !55968

bb.bg:                                            ; preds = %bb.a
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @81, ptr noundef nonnull inttoptr (i64 387 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #46, !dbg !56094
  unreachable

.loopexit:                                        ; preds = %bb.c, %bb.be, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio4sync6notify8NotifiedECsfcROwRM8ZtH_11polars_plan.exit16.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.b, %.noexc, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std6thread6thread6ThreadECsfcROwRM8ZtH_11polars_plan.exit8.i, %bb.ay
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ap, %bb.aq, %.thread.i, %bb.av, %bb.aw, %bb.bb, %bb.bc
  %eh.lpad-body = phi { ptr, i32 } [ %eh.lpad-body.i, %bb.ap ], [ %i.cm, %bb.av ], [ %i.cu, %bb.bc ], [ %.pn10.i, %.thread.i ], [ %i.cu, %bb.bb ], [ %i.cm, %bb.aw ], [ %eh.lpad-body.i, %bb.aq ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCskmDBXs7hs3c_5tokio7runtime7context7runtime17EnterRuntimeGuardECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(32) %i.m) #45
          to label %bb.bj unwind label %bb.bi, !dbg !56095

bb.bh:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio4sync6notify8NotifiedECsfcROwRM8ZtH_11polars_plan.exit.i, %.noexc5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !56093, !noalias !55923
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCskmDBXs7hs3c_5tokio7runtime7context7runtime17EnterRuntimeGuardECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(32) %i.m), !dbg !56095
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !56095
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !56096
  ret void, !dbg !56097

bb.bi:                                            ; preds = %.body
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !56098
  unreachable, !dbg !56098

bb.bj:                                            ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body, !dbg !56098
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskmDBXs7hs3c_5tokio7runtime7context7runtime13enter_runtimeNCINvMNtNtB6_9scheduler14current_threadNtB1b_13CurrentThread8block_onNCNCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans13csv_file_info000E0INtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB2s_(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, i1 noundef zeroext %2, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !56099 {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [80 x i8], align 8                ; 5 uses
  %i.c = alloca [2 x i8], align 1                 ; 8 uses
  %.sroa.8.i.i = alloca [72 x i8], align 8        ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 9 uses
  %.sroa.66.i = alloca [72 x i8], align 8         ; 4 uses
  %.sroa.6.i = alloca [72 x i8], align 8          ; 5 uses
  %i.f = alloca [64 x i8], align 8                ; 10 uses
  %i.g = alloca [64 x i8], align 8                ; 5 uses
  %i.h = alloca [72 x i8], align 8                ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = alloca [72 x i8], align 8                ; 5 uses
  %i.k = alloca [72 x i8], align 8                ; 9 uses
  %i.l = alloca [32 x i8], align 8                ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 5 uses
  %i.n = alloca [1 x i8], align 1                 ; 2 uses
  %i.o = zext i1 %2 to i8
  store i8 %i.o, ptr %i.n, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !56313
  call void @_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyNtNtNtCskmDBXs7hs3c_5tokio7runtime7context7ContextE4withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler14current_threadNtB2r_13CurrentThread8block_onNCNCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans13csv_file_info000E0INtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE0INtNtB56_6option6OptionNtB1T_17EnterRuntimeGuardEEB3I_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @72, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1), !dbg !56314
  %i.p = load i64, ptr %i.m, align 8, !dbg !56315, !range !5050, !noundef !4698
  %.not = icmp eq i64 %i.p, 3, !dbg !56315
  br i1 %.not, label %bb.ba, label %bb.b, !dbg !56316, !prof !4710

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !56317
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false), !dbg !56317
  %.sroa.0.0.copyload = load ptr, ptr %3, align 8, !dbg !56318, !nonnull !4698, !noundef !4698
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !56318
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !56318 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !56318
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !56318 ; 13 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !56287), !dbg !56318
  %i.q = invoke noundef nonnull align 8 ptr @_RNvMs1_NtNtCskmDBXs7hs3c_5tokio7runtime9schedulerNtB5_6Handle17as_current_thread(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.0.0.copyload)
          to label %.noexc unwind label %.loopexit.split-lp, !dbg !56319 ; 3 uses

.noexc:                                           ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !56320, !noalias !56288
  invoke void @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler14current_threadNtB2_13CurrentThread9take_core(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.k, ptr noundef nonnull align 8 %.sroa.4.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q)
          to label %.noexc3 unwind label %.loopexit.split-lp, !dbg !56321

.noexc3:                                          ; preds = %.noexc
  %i.r = load i64, ptr %i.k, align 8, !dbg !56320, !range !4858, !noalias !56288, !noundef !4698
  %.not49.i = icmp eq i64 %i.r, 2, !dbg !56320
  br i1 %.not49.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !56322

.lr.ph.i:                                         ; preds = %.noexc3
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.v = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCskmDBXs7hs3c_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.8.0..sroa_idx25.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 2600 ; 4 uses
  %5 = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, <2 x i64> <i64 0, i64 24>
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 40 ; 3 uses
  %.sroa.77.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 48 ; 3 uses
  %.sroa.99.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 2576
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 2593 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 2592 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 4 uses
  br label %bb.c, !dbg !56322

._crit_edge.i:                                    ; preds = %.noexc8, %.noexc3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !56323, !noalias !56288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull align 8 dereferenceable(72) %i.k, i64 72, i1 false), !dbg !56323, !noalias !56288
  %i.ah = load ptr, ptr %i.q, align 8, !dbg !56324, !noalias !56288, !nonnull !4698, !noundef !4698
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !56325, !noalias !56288
  %i.ai = invoke noundef nonnull ptr @_RNvNtNtCsh8eZTKRCwoO_3std6thread7current7current()
          to label %bb.ag unwind label %.thread11.i, !dbg !56325, !noalias !56288 ; 4 uses

bb.c:                                             ; preds = %.noexc8, %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !56326, !noalias !56288
  invoke void @_RNvMs5_NtNtCskmDBXs7hs3c_5tokio4sync6notifyNtB5_6Notify8notified(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.g, ptr noundef nonnull align 8 %.sroa.4.0.copyload)
          to label %.noexc4 unwind label %.loopexit, !dbg !56327

.noexc4:                                          ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !56328, !noalias !56288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %i.g, i64 64, i1 false), !dbg !56329, !noalias !56288
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i), !dbg !56330
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.66.i), !dbg !56330
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !56331, !noalias !56290
  %i.aj = invoke { ptr, ptr } @_RNvMs2_NtNtCskmDBXs7hs3c_5tokio7runtime4parkNtB5_16CachedParkThread5waker(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a)
          to label %.noexc.i unwind label %.loopexit16.i, !dbg !56332, !noalias !56288 ; 2 uses

.noexc.i:                                         ; preds = %.noexc4
  %i.ak = extractvalue { ptr, ptr } %i.aj, 0, !dbg !56333 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null, !dbg !56334
  br i1 %i.al, label %bb.am, label %bb.d, !dbg !56335

bb.d:                                             ; preds = %.noexc.i
  %i.am = extractvalue { ptr, ptr } %i.aj, 1, !dbg !56333
  store ptr %i.ak, ptr %i.e, align 8, !dbg !56336, !noalias !56290
  store ptr %i.am, ptr %i.s, align 8, !dbg !56336, !noalias !56290
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !56337, !noalias !56290
  store ptr %i.e, ptr %i.d, align 8, !dbg !56338, !noalias !56290
  store ptr %i.e, ptr %i.t, align 8, !dbg !56338, !noalias !56290
  store ptr null, ptr %i.u, align 8, !dbg !56338, !noalias !56290
  br label %bb.e, !dbg !56339

bb.e:                                             ; preds = %bb.ad, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i), !dbg !56340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !56341, !noalias !56291
  %i.an = load i8, ptr %i.w, align 8, !dbg !56342, !range !4952, !noalias !56290, !noundef !4698 ; 2 uses
  switch i8 %i.an, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtNtCskmDBXs7hs3c_5tokio7runtime7context7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsfcROwRM8ZtH_11polars_plan.exit.i.i.i
    i8 1, label %_RNvYNCNKNvNtNtCskmDBXs7hs3c_5tokio7runtime7context7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsfcROwRM8ZtH_11polars_plan.exit.thread2.i.i.i
    i8 2, label %.noexc.i.i
  ], !dbg !56343, !prof !5400

default.unreachable:                              ; preds = %bb.f, %bb.e
  unreachable

_RNvYNCNKNvNtNtCskmDBXs7hs3c_5tokio7runtime7context7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsfcROwRM8ZtH_11polars_plan.exit.i.i.i: ; preds = %bb.e
  %i.ao = invoke noundef ptr @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCskmDBXs7hs3c_5tokio7runtime7context7ContextE10initializeCsfcROwRM8ZtH_11polars_plan(ptr noundef nonnull align 8 %i.v)
          to label %.noexc15.i.i unwind label %bb.ab, !dbg !56344, !noalias !56292 ; 2 uses

.noexc15.i.i:                                     ; preds = %_RNvYNCNKNvNtNtCskmDBXs7hs3c_5tokio7runtime7context7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsfcROwRM8ZtH_11polars_plan.exit.i.i.i
  %i.ap = icmp eq ptr %i.ao, null, !dbg !56345
  br i1 %i.ap, label %.noexc.i.i, label %_RNvYNCNKNvNtNtCskmDBXs7hs3c_5tokio7runtime7context7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsfcROwRM8ZtH_11polars_plan.exit.thread2.i.i.i, !dbg !56345

_RNvYNCNKNvNtNtCskmDBXs7hs3c_5tokio7runtime7context7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsfcROwRM8ZtH_11polars_plan.exit.thread2.i.i.i: ; preds = %.noexc15.i.i, %bb.e
  %.sroa.0.0.i.i4.i.i.i = phi ptr [ %i.ao, %.noexc15.i.i ], [ %i.v, %bb.e ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i.i.i, i64 68, !dbg !56346 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !dbg !56347, !range !5104, !noalias !56292, !noundef !4698
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i.i.i, i64 69, !dbg !56347 ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !dbg !56347, !noalias !56292
  store i8 1, ptr %i.aq, align 1, !dbg !56348, !noalias !56292
  store i8 -128, ptr %i.as, align 1, !dbg !56348, !noalias !56292
  br label %.noexc.i.i, !dbg !56349

.noexc.i.i:                                       ; preds = %_RNvYNCNKNvNtNtCskmDBXs7hs3c_5tokio7runtime7context7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsfcROwRM8ZtH_11polars_plan.exit.thread2.i.i.i, %.noexc15.i.i, %bb.e
  %.sroa.3.0.i.i.i = phi i8 [ %i.at, %_RNvYNCNKNvNtNtCskmDBXs7hs3c_5tokio7runtime7context7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsfcROwRM8ZtH_11polars_plan.exit.thread2.i.i.i ], [ undef, %.noexc15.i.i ], [ undef, %bb.e ]
  %.sroa.0.0.i.i.i = phi i8 [ %i.ar, %_RNvYNCNKNvNtNtCskmDBXs7hs3c_5tokio7runtime7context7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsfcROwRM8ZtH_11polars_plan.exit.thread2.i.i.i ], [ 2, %.noexc15.i.i ], [ %i.an, %bb.e ], !dbg !56350
  store i8 %.sroa.0.0.i.i.i, ptr %i.c, align 1, !dbg !56351, !noalias !56291
  store i8 %.sroa.3.0.i.i.i, ptr %i.x, align 1, !dbg !56351, !noalias !56291
  %i.au = invoke noundef zeroext i1 @_RNvXsa_NtNtCskmDBXs7hs3c_5tokio4sync6notifyNtB5_8NotifiedNtNtNtCscgRAwXFJnXP_4core6future6future6Future4poll(ptr noundef nonnull align 8 %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %.noexc16.i.i unwind label %.loopexit.i, !dbg !56352, !noalias !56292

.noexc16.i.i:                                     ; preds = %.noexc.i.i
  br i1 %i.au, label %bb.f, label %_RNCINvMs2_NtNtCskmDBXs7hs3c_5tokio7runtime4parkNtB8_16CachedParkThread8block_onINtNtNtCscgRAwXFJnXP_4core6future7poll_fn6PollFnNCNCINvMNtNtBa_9scheduler14current_threadNtB29_13CurrentThread8block_onNCNCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans13csv_file_info000E00EE0B3q_.exit.i.i, !dbg !56353

bb.f:                                             ; preds = %.noexc16.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !56354, !noalias !56293
  call void @llvm.experimental.noalias.scope.decl(metadata !56294), !dbg !56355
  %i.av = load i8, ptr %i.y, align 8, !dbg !56356, !range !4863, !noalias !56295, !noundef !4698
  switch i8 %i.av, label %default.unreachable [
    i8 0, label %bb.g
    i8 1, label %bb.j
    i8 2, label %bb.k
    i8 3, label %bb.m
  ], !dbg !56356

bb.g:                                             ; preds = %bb.f
  %i.aw = invoke { i64, i8 } @_RNvMNtNtCslpwjCj2YNBy_9polars_io5cloud18concurrency_configNtB2_11FetchConfig9streaming()
          to label %bb.i unwind label %bb.h, !dbg !56357, !noalias !56295 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body.i17.i, !dbg !56358

bb.i:                                             ; preds = %bb.g
  %i.ay = extractvalue { i64, i8 } %i.aw, 0, !dbg !56357
  %i.az = extractvalue { i64, i8 } %i.aw, 1, !dbg !56357
  store i64 %i.ay, ptr %i.z, align 8, !dbg !56359, !noalias !56295
  store i8 %i.az, ptr %i.aa, align 8, !dbg !56359, !noalias !56295
  %i.ba = load ptr, ptr %i.ab, align 8, !dbg !56360, !noalias !56295, !align !4821, !noundef !4698
  store ptr %i.ba, ptr %i.ac, align 8, !dbg !56361, !noalias !56295
  store ptr null, ptr %.sroa.77.0..sroa_idx.i.i, align 8, !dbg !56361, !noalias !56295
  store <2 x ptr> %5, ptr %.sroa.99.0..sroa_idx.i.i, align 8, !dbg !56361, !noalias !56295
  store i8 0, ptr %.sroa.12.0..sroa_idx.i.i, align 1, !dbg !56361, !noalias !56295
  br label %bb.m, !dbg !56362

.body.i17.i:                                      ; preds = %bb.v, %bb.t, %bb.l, %bb.h
  %.pn2.i.i = phi { ptr, i32 } [ %i.ax, %bb.h ], [ %i.bb, %bb.l ], [ %i.bk, %bb.v ], [ %i.bj, %bb.t ]
  store i8 2, ptr %i.y, align 8, !dbg !56356, !noalias !56295
  br label %.body18.i, !dbg !56356

bb.j:                                             ; preds = %bb.f
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @538) #50
          to label %.noexc20.i unwind label %.loopexit.split-lp.i, !dbg !56356, !noalias !56288

.noexc20.i:                                       ; preds = %bb.j
  unreachable, !dbg !56356

bb.k:                                             ; preds = %bb.f
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @538) #50
          to label %.noexc21.i unwind label %.loopexit.split-lp.i, !dbg !56356, !noalias !56288

.noexc21.i:                                       ; preds = %bb.k
  unreachable, !dbg !56356

bb.l:                                             ; preds = %bb.m
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNvMs5_NtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sourcesNtBO_13ScanSourceRef18to_dyn_byte_source0EBS_(ptr noundef nonnull align 8 %i.ac) #45
          to label %.body.i17.i unwind label %bb.w, !dbg !56363, !noalias !56296

bb.m:                                             ; preds = %bb.i, %bb.f
  invoke fastcc void @_RNCNvMs5_NtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sourcesNtB7_13ScanSourceRef18to_dyn_byte_source0Bb_(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(80) %i.b, ptr noundef nonnull align 8 %i.ac, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %bb.n unwind label %bb.l, !dbg !56362, !noalias !56292

bb.n:                                             ; preds = %bb.m
  %i.bc = load i64, ptr %i.b, align 8, !dbg !56362, !range !5122, !alias.scope !56294, !noalias !56297, !noundef !4698 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, -9223372036854775806, !dbg !56362
  br i1 %i.bd, label %.noexc17.i.i, label %bb.o, !dbg !56362

bb.o:                                             ; preds = %bb.n
  %i.be = load i8, ptr %.sroa.12.0..sroa_idx.i.i, align 1, !dbg !56364, !range !4863, !noalias !56295, !noundef !4698
  switch i8 %i.be, label %bb.x [
    i8 0, label %bb.p
    i8 3, label %bb.s
  ], !dbg !56364

bb.p:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !56298), !dbg !56364, !noalias !56299
  %i.bf = load ptr, ptr %.sroa.77.0..sroa_idx.i.i, align 8, !dbg !56365, !alias.scope !56298, !noalias !56295, !noundef !4698 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null, !dbg !56365
  br i1 %i.bg, label %bb.x, label %bb.q, !dbg !56365

bb.q:                                             ; preds = %bb.p
  %i.bh = atomicrmw sub ptr %i.bf, i64 1 release, align 8, !dbg !56366, !noalias !56300
  %i.bi = icmp eq i64 %i.bh, 1, !dbg !56367
  br i1 %i.bi, label %bb.r, label %bb.x, !dbg !56367

bb.r:                                             ; preds = %bb.q
  fence acquire, !dbg !56368, !noalias !56299
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCslpwjCj2YNBy_9polars_io7metrics9IOMetricsE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.77.0..sroa_idx.i.i) #51
          to label %bb.x unwind label %bb.v, !dbg !56369, !noalias !56296

bb.s:                                             ; preds = %bb.o
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNvMs8_NtNtCslpwjCj2YNBy_9polars_io5utils11byte_sourceNtBO_20DynByteSourceBuilder19try_build_from_path0ECsfcROwRM8ZtH_11polars_plan(ptr noundef nonnull align 8 %i.ad)
          to label %bb.u unwind label %bb.t, !dbg !56370, !noalias !56296

bb.t:                                             ; preds = %bb.s
  %i.bj = landingpad { ptr, i32 }
          cleanup
  store i8 0, ptr %i.ae, align 8, !dbg !56371, !noalias !56295
  br label %.body.i17.i, !dbg !56364

bb.u:                                             ; preds = %bb.s
  store i8 0, ptr %i.ae, align 8, !dbg !56371, !noalias !56295
  br label %bb.x, !dbg !56364

bb.v:                                             ; preds = %bb.r
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.body.i17.i

bb.w:                                             ; preds = %bb.l
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !56356, !noalias !56296
  unreachable, !dbg !56356

.noexc17.i.i:                                     ; preds = %bb.n
  store i8 3, ptr %i.y, align 8, !dbg !56372, !noalias !56295
  br label %_RNCINvMs2_NtNtCskmDBXs7hs3c_5tokio7runtime4parkNtB8_16CachedParkThread8block_onINtNtNtCscgRAwXFJnXP_4core6future7poll_fn6PollFnNCNCINvMNtNtBa_9scheduler14current_threadNtB29_13CurrentThread8block_onNCNCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans13csv_file_info000E00EE0B3q_.exit.sink.split.i.i, !dbg !56373

bb.x:                                             ; preds = %bb.u, %bb.r, %bb.q, %bb.p, %bb.o
  store i8 1, ptr %i.y, align 8, !dbg !56372, !noalias !56295
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8.0..sroa_idx25.i.i, i64 72, i1 false), !dbg !56374, !noalias !56301
  br label %_RNCINvMs2_NtNtCskmDBXs7hs3c_5tokio7runtime4parkNtB8_16CachedParkThread8block_onINtNtNtCscgRAwXFJnXP_4core6future7poll_fn6PollFnNCNCINvMNtNtBa_9scheduler14current_threadNtB29_13CurrentThread8block_onNCNCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans13csv_file_info000E00EE0B3q_.exit.sink.split.i.i, !dbg !56375

.loopexit.i:                                      ; preds = %.noexc.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body18.i

.loopexit.split-lp.i:                             ; preds = %bb.k, %bb.j
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body18.i

.body18.i:                                        ; preds = %.loopexit.split-lp.i, %.loopexit.i, %.body.i17.i
  %eh.lpad-body19.i = phi { ptr, i32 } [ %.pn2.i.i, %.body.i17.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %i.bm = load i8, ptr %i.c, align 1, !dbg !56376, !range !4952, !alias.scope !56303, !noalias !56304, !noundef !4698
  %.not.i.i.i = icmp eq i8 %i.bm, 2, !dbg !56376
  br i1 %.not.i.i.i, label %.body.i.i, label %bb.y, !dbg !56376

bb.y:                                             ; preds = %.body18.i
  invoke void @_RNvXNvNtNtCskmDBXs7hs3c_5tokio4task4coop11with_budgetNtB2_10ResetGuardNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.c)
          to label %.body.i.i unwind label %bb.aa, !dbg !56377, !noalias !56292

_RNCINvMs2_NtNtCskmDBXs7hs3c_5tokio7runtime4parkNtB8_16CachedParkThread8block_onINtNtNtCscgRAwXFJnXP_4core6future7poll_fn6PollFnNCNCINvMNtNtBa_9scheduler14current_threadNtB29_13CurrentThread8block_onNCNCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans13csv_file_info000E00EE0B3q_.exit.sink.split.i.i: ; preds = %bb.x, %.noexc17.i.i
  %.sroa.023.0.ph.i.i = phi i64 [ %i.bc, %bb.x ], [ -9223372036854775805, %.noexc17.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !56378, !noalias !56293
  br label %_RNCINvMs2_NtNtCskmDBXs7hs3c_5tokio7runtime4parkNtB8_16CachedParkThread8block_onINtNtNtCscgRAwXFJnXP_4core6future7poll_fn6PollFnNCNCINvMNtNtBa_9scheduler14current_threadNtB29_13CurrentThread8block_onNCNCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans13csv_file_info000E00EE0B3q_.exit.i.i, !dbg !56379

_RNCINvMs2_NtNtCskmDBXs7hs3c_5tokio7runtime4parkNtB8_16CachedParkThread8block_onINtNtNtCscgRAwXFJnXP_4core6future7poll_fn6PollFnNCNCINvMNtNtBa_9scheduler14current_threadNtB29_13CurrentThread8block_onNCNCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans13csv_file_info000E00EE0B3q_.exit.i.i: ; preds = %_RNCINvMs2_NtNtCskmDBXs7hs3c_5tokio7runtime4parkNtB8_16CachedParkThread8block_onINtNtNtCscgRAwXFJnXP_4core6future7poll_fn6PollFnNCNCINvMNtNtBa_9scheduler14current_threadNtB29_13CurrentThread8block_onNCNCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans13csv_file_info000E00EE0B3q_.exit.sink.split.i.i, %.noexc16.i.i
  %.sroa.023.0.i.i = phi i64 [ -9223372036854775806, %.noexc16.i.i ], [ %.sroa.023.0.ph.i.i, %_RNCINvMs2_NtNtCskmDBXs7hs3c_5tokio7runtime4parkNtB8_16CachedParkThread8block_onINtNtNtCscgRAwXFJnXP_4core6future7poll_fn6PollFnNCNCINvMNtNtBa_9scheduler14current_threadNtB29_13CurrentThread8block_onNCNCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans13csv_file_info000E00EE0B3q_.exit.sink.split.i.i ], !dbg !56380 ; 3 uses
  %i.bn = load i8, ptr %i.c, align 1, !dbg !56379, !range !4952, !alias.scope !56305, !noalias !56290, !noundef !4698
  %.not.i19.i.i = icmp eq i8 %i.bn, 2, !dbg !56379
  br i1 %.not.i19.i.i, label %bb.ac, label %bb.z, !dbg !56379

bb.z:                                             ; preds = %_RNCINvMs2_NtNtCskmDBXs7hs3c_5tokio7runtime4parkNtB8_16CachedParkThread8block_onINtNtNtCscgRAwXFJnXP_4core6future7poll_fn6PollFnNCNCINvMNtNtBa_9scheduler14current_threadNtB29_13CurrentThread8block_onNCNCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans13csv_file_info000E00EE0B3q_.exit.i.i
  invoke void @_RNvXNvNtNtCskmDBXs7hs3c_5tokio4task4coop11with_budgetNtB2_10ResetGuardNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.c)
          to label %bb.ac unwind label %bb.ab, !dbg !56381, !noalias !56292

bb.aa:                                            ; preds = %bb.y
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !56382, !noalias !56306
  unreachable, !dbg !56382

bb.ab:                                            ; preds = %bb.ad, %bb.z, %_RNvYNCNKNvNtNtCskmDBXs7hs3c_5tokio7runtime7context7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsfcROwRM8ZtH_11polars_plan.exit.i.i.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i, !dbg !56383

.body.i.i:                                        ; preds = %bb.ab, %bb.y, %.body18.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.bp, %bb.ab ], [ %eh.lpad-body19.i, %.body18.i ], [ %eh.lpad-body19.i, %bb.y ]
  %.val10.i.i = load ptr, ptr %i.e, align 8, !dbg !56383, !noalias !56290, !nonnull !4698, !align !4821, !noundef !4698
  %.val11.i.i = load ptr, ptr %i.s, align 8, !dbg !56383, !noalias !56290, !noundef !4698
  %i.bq = getelementptr inbounds nuw i8, ptr %.val10.i.i, i64 24, !dbg !56384
  %i.br = load ptr, ptr %i.bq, align 8, !dbg !56384, !noalias !56292, !nonnull !4698, !noundef !4698
  invoke void %i.br(ptr noundef %.val11.i.i)
          to label %.body.i unwind label %bb.af, !dbg !56384, !noalias !56292, !inline_history !2237

bb.ac:                                            ; preds = %bb.z, %_RNCINvMs2_NtNtCskmDBXs7hs3c_5tokio7runtime4parkNtB8_16CachedParkThread8block_onINtNtNtCscgRAwXFJnXP_4core6future7poll_fn6PollFnNCNCINvMNtNtBa_9scheduler14current_threadNtB29_13CurrentThread8block_onNCNCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans13csv_file_info000E00EE0B3q_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !56385, !noalias !56291
  %i.bs = icmp eq i64 %.sroa.023.0.i.i, -9223372036854775805, !dbg !56340
  br i1 %i.bs, label %bb.ad, label %bb.ae, !dbg !56386

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i), !dbg !56387
  invoke void @_RNvMs2_NtNtCskmDBXs7hs3c_5tokio7runtime4parkNtB5_16CachedParkThread4park(ptr noalias noundef nonnull %i.a)
          to label %bb.e unwind label %bb.ab, !dbg !56388, !noalias !56292

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.66.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8.i.i, i64 72, i1 false), !dbg !56389, !noalias !56307
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i), !dbg !56387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !56390, !noalias !56290
  %.val.i.i = load ptr, ptr %i.e, align 8, !dbg !56383, !noalias !56290, !nonnull !4698, !align !4821, !noundef !4698
  %.val9.i.i = load ptr, ptr %i.s, align 8, !dbg !56383, !noalias !56290, !noundef !4698
  %i.bt = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24, !dbg !56391
  %i.bu = load ptr, ptr %i.bt, align 8, !dbg !56391, !noalias !56292, !nonnull !4698, !noundef !4698
  invoke void %i.bu(ptr noundef %.val9.i.i)
          to label %bb.an unwind label %.loopexit16.i, !dbg !56391, !noalias !56288, !inline_history !56223

bb.af:                                            ; preds = %.body.i.i
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !56392, !noalias !56292
  unreachable, !dbg !56392

.thread11.i:                                      ; preds = %bb.ak, %._crit_edge.i
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i, !dbg !56393

bb.ag:                                            ; preds = %._crit_edge.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ah, i64 128, !dbg !56394
  store ptr %i.ai, ptr %i.i, align 8, !dbg !56325, !noalias !56288
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !56395
  %i.by = load i64, ptr %i.bx, align 8, !dbg !56395, !range !5075, !noalias !56288, !noundef !4698
  invoke void @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime7metrics6workerNtB2_13WorkerMetrics13set_thread_id(ptr noundef nonnull align 128 %i.bw, i64 noundef %i.by)
          to label %bb.aj unwind label %bb.ah, !dbg !56396, !noalias !56288

bb.ah:                                            ; preds = %bb.ag
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ca = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !dbg !56397, !noalias !56308
  %i.cb = icmp eq i64 %i.ca, 1, !dbg !56398
  br i1 %i.cb, label %bb.ai, label %.thread.i, !dbg !56398

bb.ai:                                            ; preds = %bb.ah
  fence acquire, !dbg !56399
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsh8eZTKRCwoO_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #51
          to label %.thread.i unwind label %bb.al, !dbg !56400, !noalias !56288
end_hunk_0
