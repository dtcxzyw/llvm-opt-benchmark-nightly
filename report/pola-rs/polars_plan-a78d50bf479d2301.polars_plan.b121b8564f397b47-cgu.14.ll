Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_plan-a78d50bf479d2301.polars_plan.b121b8564f397b47-cgu.14?download=true
inline.NumInlined: 10276
inline.NumDeleted: 5308
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 68
loop-unroll.NumUnrolled: 70
begin_hunk_0_@_RINvMsd_CsgjwxzEoLG5s_12polars_errorNtB6_11PolarsError8wrap_msgNCNCINvNtNtCslpwjCj2YNBy_9polars_io5utils5other20decode_json_responseINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtB1a_10path_utils12hugging_face13HFAPIResponseEE00ECsfcROwRM8ZtH_11polars_plan:bb.a
.noexc:                                           ; preds = %bb.r
  unreachable, !dbg !8983

bb.s:                                             ; preds = %bb.r
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.u) #46
          to label %common.resume unwind label %bb.t, !dbg !8984

bb.t:                                             ; preds = %bb.s
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !8985
  unreachable, !dbg !8985

common.resume:                                    ; preds = %bb.bn, %bb.bz, %bb.cb, %bb.bx, %bb.bw, %bb.bp, %.body.i, %bb.w, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %i.ef, %bb.bp ], [ %i.bm, %bb.s ], [ %i.bt, %bb.w ], [ %eh.lpad-body.i, %.body.i ], [ %i.er, %bb.bz ], [ %i.ee, %bb.bn ], [ %i.eu, %bb.cb ], [ %i.em, %bb.bx ], [ %i.em, %bb.bw ]
  resume { ptr, i32 } %common.resume.op, !dbg !8986

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE3newCsfcROwRM8ZtH_11polars_plan.exit51: ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bk, ptr noundef nonnull align 8 dereferenceable(72) %i.u, i64 72, i1 false), !dbg !8987
  store ptr %i.bk, ptr %i.v, align 8, !dbg !8976
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !8988
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !8989
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !8989
  invoke void @_RNvXs0_NtCsgZ49sUHp3tW_5alloc6borrowINtB5_3CoweENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bo)
          to label %bb.ca unwind label %bb.bz, !dbg !8989

bb.u:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !8990
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !8991
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !8991
  %i.bq = load ptr, ptr %i.bp, align 8, !dbg !8991, !nonnull !2315, !noundef !2315
  call void @_RINvMsd_CsgjwxzEoLG5s_12polars_errorNtB6_11PolarsError8wrap_msgNCNCINvNtNtCslpwjCj2YNBy_9polars_io5utils5other20decode_json_responseINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtB1a_10path_utils12hugging_face13HFAPIResponseEE00ECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.s, ptr noundef nonnull align 8 %i.bq, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !dbg !8992
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #50, !dbg !8993, !noalias !8842
  %i.br = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 0, 337) 72, i64 noundef range(i64 1, 17) 8) #50, !dbg !8994, !noalias !8842 ; 4 uses
  %i.bs = icmp eq ptr %i.br, null, !dbg !8995
  br i1 %i.bs, label %bb.v, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE3newCsfcROwRM8ZtH_11polars_plan.exit, !dbg !8996, !prof !2467

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #48
          to label %.noexc53 unwind label %bb.w, !dbg !8997

.noexc53:                                         ; preds = %bb.v
  unreachable, !dbg !8997

bb.w:                                             ; preds = %bb.v
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.s) #46
          to label %common.resume unwind label %bb.x, !dbg !8998

bb.x:                                             ; preds = %bb.w
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !8999
  unreachable, !dbg !8999

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE3newCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.br, ptr noundef nonnull align 8 dereferenceable(72) %i.s, i64 72, i1 false), !dbg !9000
  store ptr %i.br, ptr %i.t, align 8, !dbg !8990
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !9001
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !9002
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !9002
  invoke void @_RNvXs0_NtCsgZ49sUHp3tW_5alloc6borrowINtB5_3CoweENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bv)
          to label %bb.cc unwind label %bb.cb, !dbg !9002

bb.y:                                             ; preds = %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !9003
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8844), !dbg !9004
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !9005, !noalias !8845
  %i.bx = tail call noundef i32 @_RNvMNtNtCsbm5zPlkZccl_4pyo38internal5stateNtB2_11AttachGuard6attach(), !dbg !9006, !noalias !8845
  store i32 %i.bx, ptr %i.p, align 4, !dbg !9006, !noalias !8845
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8846), !dbg !9007
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !9008, !noalias !8845
  %i.by = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsbm5zPlkZccl_4pyo33errNtB4_5PyErr5value(ptr noundef nonnull align 8 %i.bw)
          to label %.noexc.i unwind label %bb.bj, !dbg !9009, !noalias !8845 ; 3 uses

.noexc.i:                                         ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !9010, !noalias !8847
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !9011, !noalias !8847
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods3str(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.by)
          to label %.noexc3.i unwind label %bb.bj, !dbg !9012, !noalias !8845

.noexc3.i:                                        ; preds = %.noexc.i
  %i.bz = load i64, ptr %i.n, align 8, !dbg !9011, !range !2317, !noalias !8847, !noundef !2315
  %i.ca = trunc nuw i64 %i.bz to i1, !dbg !9013
  br i1 %i.ca, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types6string8PyStringENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit14.i.i, label %bb.z, !dbg !9013

bb.z:                                             ; preds = %.noexc3.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !9014, !noalias !8847
  %i.cb = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !9014
  %i.cc = load ptr, ptr %i.cb, align 8, !dbg !9014, !noalias !8847, !nonnull !2315, !noundef !2315 ; 3 uses
  store ptr %i.cc, ptr %i.m, align 8, !dbg !9014, !noalias !8847
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !9015, !noalias !8847
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types6stringINtNtB8_8instance5BoundNtB4_8PyStringENtB4_15PyStringMethods15to_string_lossy(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m)
          to label %bb.ab unwind label %bb.aa, !dbg !9016, !noalias !8847

bb.aa:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i.i, %bb.z
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.ab:                                            ; preds = %bb.z
  %i.ce = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !9017
  %i.cf = load ptr, ptr %i.ce, align 8, !dbg !9017, !noalias !8847, !nonnull !2315
  %i.cg = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !9017
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !9017, !noalias !8847
  invoke fastcc void @_RNCNCINvNtNtCslpwjCj2YNBy_9polars_io5utils5other20decode_json_responseINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtBa_10path_utils12hugging_face13HFAPIResponseEE00CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cf, i64 noundef %i.ch)
          to label %bb.ad unwind label %bb.ac, !dbg !9018, !noalias !8847

bb.ac:                                            ; preds = %bb.ab
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CoweEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.l) #46
          to label %.thread.i.i unwind label %bb.ai, !dbg !9019, !noalias !8847

bb.ad:                                            ; preds = %bb.ab
  %i.cj = load i64, ptr %i.l, align 8, !dbg !9020, !range !2367, !alias.scope !8848, !noalias !8847, !noundef !2315
  %i.ck = icmp eq i64 %i.cj, -9223372036854775808, !dbg !9020
  br i1 %i.ck, label %bb.ah, label %bb.ae, !dbg !9020

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i.i unwind label %bb.af, !dbg !9021, !noalias !8847

bb.af:                                            ; preds = %bb.ae
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.thread.i.i unwind label %bb.ag, !dbg !9022, !noalias !8847

bb.ag:                                            ; preds = %bb.af
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !9021, !noalias !8847
  unreachable, !dbg !9021

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i.i: ; preds = %bb.ae
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.ah unwind label %bb.aa, !dbg !9023, !noalias !8847

bb.ah:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !9019, !noalias !8847
  call void @_Py_DecRef(ptr noundef nonnull %i.cc) #50, !dbg !9024, !noalias !8847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !9025, !noalias !8847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !9025, !noalias !8847
  br label %.noexc5.i, !dbg !9026

.noexc5.i:                                        ; preds = %.noexc4.i, %bb.ah
  %i.cn = invoke noundef nonnull ptr @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods8get_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.by)
          to label %bb.aj unwind label %bb.bi, !dbg !9027, !noalias !8847

bb.ai:                                            ; preds = %bb.bi, %.body20.i.i, %bb.ac
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !9028, !noalias !8847
  unreachable, !dbg !9028

.thread.i.i:                                      ; preds = %bb.af, %bb.ac, %bb.aa
  %.pn.i.i = phi { ptr, i32 } [ %i.ci, %bb.ac ], [ %i.cd, %bb.aa ], [ %i.cl, %bb.af ]
  call void @_Py_DecRef(ptr noundef nonnull %i.cc) #50, !dbg !9029, !noalias !8847
  br label %.body.i, !dbg !9025

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types6string8PyStringENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit14.i.i: ; preds = %.noexc3.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !9030
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.cp)
          to label %.noexc4.i unwind label %bb.bj, !dbg !9030, !noalias !8845

.noexc4.i:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types6string8PyStringENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit14.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !9025, !noalias !8847
  invoke fastcc void @_RNCNCINvNtNtCslpwjCj2YNBy_9polars_io5utils5other20decode_json_responseINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtBa_10path_utils12hugging_face13HFAPIResponseEE00CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) @163, i64 noundef 24)
          to label %.noexc5.i unwind label %bb.bj, !dbg !9031, !noalias !8845

bb.aj:                                            ; preds = %.noexc5.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !9032, !noalias !8847
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !9033, !noalias !8847
  invoke void @_RINvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB6_10PyErrState14lazy_argumentsTNtNtCsgZ49sUHp3tW_5alloc6string6StringEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.h, ptr noundef nonnull %i.cn, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o)
          to label %.noexc6.i unwind label %bb.bj, !dbg !9033, !noalias !8845

.noexc6.i:                                        ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.k, ptr noundef nonnull align 8 dereferenceable(64) %i.h, i64 64, i1 false), !dbg !9034, !noalias !8847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !9035, !noalias !8847
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !9036, !noalias !8847
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !9037, !noalias !8849
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !9037, !noalias !8849
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !9037, !noalias !8849
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !9038, !noalias !8849
  %i.cq = getelementptr inbounds nuw i8, ptr %i.k, i64 56, !dbg !9039
  %i.cr = load atomic i32, ptr %i.cq acquire, align 8, !dbg !9040, !noalias !8849
  %i.cs = icmp eq i32 %i.cr, 0, !dbg !9041
  br i1 %i.cs, label %bb.ak, label %bb.al, !dbg !9041, !prof !2318

bb.ak:                                            ; preds = %.noexc6.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !9042
  %i.cu = load i64, ptr %i.ct, align 8, !dbg !9043, !range !2317, !noalias !8849, !noundef !2315
  %i.cv = trunc nuw i64 %i.cu to i1, !dbg !9044
  %i.cw = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !noalias !8847
  %.not.i.i.i.i = icmp ne ptr %i.cx, null
  %or.cond.not.i.i = select i1 %i.cv, i1 %.not.i.i.i.i, i1 false, !dbg !9044
  br i1 %or.cond.not.i.i, label %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i, label %bb.am, !dbg !9044, !prof !2582

bb.al:                                            ; preds = %.noexc6.i
  %i.cy = invoke noundef nonnull align 8 ptr @_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState15make_normalized(ptr noundef nonnull align 8 %i.k)
          to label %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i unwind label %bb.bc, !dbg !9045, !noalias !8847

bb.am:                                            ; preds = %bb.ak
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @268, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @343) #45
          to label %.noexc16.i.i unwind label %bb.bc, !dbg !9046, !noalias !8847

.noexc16.i.i:                                     ; preds = %bb.am
  unreachable, !dbg !9046

_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i: ; preds = %bb.al, %bb.ak
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.cw, %bb.ak ], [ %i.cy, %bb.al ], !dbg !9047
  invoke void @_RNvMs1_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_20PyErrStateNormalized9clone_ref(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noundef nonnull align 8 %.sroa.0.0.i.i.i.i)
          to label %.noexc17.i.i unwind label %bb.bc, !dbg !9048, !noalias !8847

.noexc17.i.i:                                     ; preds = %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i
  invoke void @_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState10normalized(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.e, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.c)
          to label %.noexc18.i.i unwind label %bb.bc, !dbg !9049, !noalias !8847

.noexc18.i.i:                                     ; preds = %.noexc17.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9050, !noalias !8849
  %i.cz = invoke noundef nonnull ptr @_RNvMs_NtCsbm5zPlkZccl_4pyo33errNtB4_5PyErr10into_value(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.e)
          to label %.noexc19.i.i unwind label %bb.bc, !dbg !9051, !noalias !8847 ; 3 uses

.noexc19.i.i:                                     ; preds = %.noexc18.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !9052, !noalias !8849
  store ptr %i.cz, ptr %i.f, align 8, !dbg !9053, !noalias !8849
  invoke void @_RINvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrReECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) @190, i64 noundef 14)
          to label %bb.ao unwind label %bb.an, !dbg !9054, !noalias !8849

bb.an:                                            ; preds = %.noexc19.i.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ao:                                            ; preds = %.noexc19.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !8850), !dbg !9055
  %i.db = load i64, ptr %i.g, align 8, !dbg !9056, !range !2317, !alias.scope !8850, !noalias !8851, !noundef !2315
  %i.dc = trunc nuw i64 %i.db to i1, !dbg !9057
  br i1 %i.dc, label %bb.ap, label %bb.at, !dbg !9057, !prof !2368

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9058, !noalias !8852
  %i.dd = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !9058
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.dd, i64 64, i1 false), !dbg !9058, !noalias !8851
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @317, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @319, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #48
          to label %bb.ar unwind label %bb.aq, !dbg !9059, !noalias !8853

bb.aq:                                            ; preds = %bb.ap
  %i.de = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) #46
          to label %bb.bb unwind label %bb.as, !dbg !9060, !noalias !8853

bb.ar:                                            ; preds = %bb.ap
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !9061, !noalias !8853
  unreachable, !dbg !9061

bb.at:                                            ; preds = %bb.ao
  %i.dg = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !9062
  %i.dh = load ptr, ptr %i.dg, align 8, !dbg !9062, !alias.scope !8850, !noalias !8851, !nonnull !2315, !noundef !2315 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !9063, !noalias !8849
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !9064, !noalias !8849
  invoke void @_RINvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrReECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.by, ptr noalias noundef nonnull readonly captures(address, read_provenance) @192, i64 noundef 13)
          to label %bb.av unwind label %bb.au, !dbg !9065, !noalias !8849

bb.au:                                            ; preds = %bb.ba, %bb.at
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i, !dbg !9066

.body.i.i.i:                                      ; preds = %bb.ax, %bb.au
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.di, %bb.au ], [ %i.dm, %bb.ax ]
  call void @_Py_DecRef(ptr noundef nonnull %i.dh) #50, !dbg !9067, !noalias !8849
  br label %bb.bb, !dbg !9068

bb.av:                                            ; preds = %bb.at
  call void @llvm.experimental.noalias.scope.decl(metadata !8854), !dbg !9069
  %i.dj = load i64, ptr %i.d, align 8, !dbg !9070, !range !2317, !alias.scope !8854, !noalias !8855, !noundef !2315
  %i.dk = trunc nuw i64 %i.dj to i1, !dbg !9071
  br i1 %i.dk, label %bb.aw, label %bb.ba, !dbg !9071, !prof !2368

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9072, !noalias !8856
  %i.dl = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !9072
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.dl, i64 64, i1 false), !dbg !9072, !noalias !8855
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @317, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @319, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @193) #48
          to label %bb.ay unwind label %bb.ax, !dbg !9073, !noalias !8857

bb.ax:                                            ; preds = %bb.aw
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b) #46
          to label %.body.i.i.i unwind label %bb.az, !dbg !9074, !noalias !8857

bb.ay:                                            ; preds = %bb.aw
  unreachable

bb.az:                                            ; preds = %bb.ax
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !9075, !noalias !8857
  unreachable, !dbg !9075

bb.ba:                                            ; preds = %bb.av
  %i.do = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !9076
  %i.dp = load ptr, ptr %i.do, align 8, !dbg !9076, !alias.scope !8854, !noalias !8855, !nonnull !2315, !noundef !2315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !9077, !noalias !8849
  invoke void @_RNvXsj_NtNtCsbm5zPlkZccl_4pyo35types5tupleTINtNtB9_8instance5BoundNtNtB7_3any5PyAnyEENtNtB9_4call10PyCallArgs15call_positionalCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.i, ptr noundef nonnull %i.dp, ptr noundef nonnull %i.dh)
          to label %bb.bd unwind label %bb.au, !dbg !9078, !noalias !8858

bb.bb:                                            ; preds = %.body.i.i.i, %bb.aq, %bb.an
  %.pn.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.da, %bb.an ], [ %i.de, %bb.aq ]
  call void @_Py_DecRef(ptr noundef nonnull %i.cz) #50, !dbg !9079, !noalias !8849
  br label %.body20.i.i, !dbg !9080

.body20.i.i:                                      ; preds = %bb.bf, %bb.bc, %bb.bb
  %.pn8.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %bb.bb ], [ %i.dv, %bb.bf ], [ %i.dq, %bb.bc ]
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.k) #46
          to label %.body.i unwind label %bb.ai, !dbg !9081, !noalias !8847

bb.bc:                                            ; preds = %bb.bh, %.noexc18.i.i, %.noexc17.i.i, %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i, %bb.am, %bb.al
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %.body20.i.i

bb.bd:                                            ; preds = %bb.ba
  call void @_Py_DecRef(ptr noundef nonnull %i.dh) #50, !dbg !9082, !noalias !8849
  call void @_Py_DecRef(ptr noundef nonnull %i.cz) #50, !dbg !9083, !noalias !8849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !9066, !noalias !8849
  %i.dr = load i64, ptr %i.i, align 8, !dbg !9036, !range !2317, !noalias !8847, !noundef !2315
  %i.ds = trunc nuw i64 %i.dr to i1, !dbg !9084
  %i.dt = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !9085 ; 2 uses
  br i1 %i.ds, label %bb.bh, label %bb.be, !dbg !9084

bb.be:                                            ; preds = %bb.bd
  %i.du = load ptr, ptr %i.dt, align 8, !dbg !9086, !noalias !8847, !nonnull !2315, !noundef !2315
  invoke void @_RNvMs_NtCsbm5zPlkZccl_4pyo33errNtB4_5PyErr10from_value(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.j, ptr noundef nonnull %i.du)
          to label %bb.bg unwind label %bb.bf, !dbg !9087, !noalias !8847

bb.bf:                                            ; preds = %bb.be
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %.body20.i.i, !dbg !9088

bb.bg:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !9088, !noalias !8847
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9089
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dw, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 64, i1 false), !dbg !9089, !noalias !8859
  store i64 17, ptr %0, align 8, !dbg !9089, !alias.scope !8860, !noalias !8859
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.k)
          to label %_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCINvMsd_CsgjwxzEoLG5s_12polars_errorNtBZ_11PolarsError8wrap_msgNCNCINvNtNtCslpwjCj2YNBy_9polars_io5utils5other20decode_json_responseINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtB23_10path_utils12hugging_face13HFAPIResponseEE00E0B1r_ECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.bj, !dbg !9081, !noalias !8845

bb.bh:                                            ; preds = %bb.bd
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.dt)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit26.i.i unwind label %bb.bc, !dbg !9090, !noalias !8847

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit26.i.i: ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !9088, !noalias !8847
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9089
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dx, ptr noundef nonnull align 8 dereferenceable(64) %i.k, i64 64, i1 false), !dbg !9089, !noalias !8859
  store i64 17, ptr %0, align 8, !dbg !9089, !alias.scope !8860, !noalias !8859
  br label %_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCINvMsd_CsgjwxzEoLG5s_12polars_errorNtBZ_11PolarsError8wrap_msgNCNCINvNtNtCslpwjCj2YNBy_9polars_io5utils5other20decode_json_responseINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtB23_10path_utils12hugging_face13HFAPIResponseEE00E0B1r_ECsfcROwRM8ZtH_11polars_plan.exit, !dbg !9081

bb.bi:                                            ; preds = %.noexc5.i
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o) #46
          to label %.body.i unwind label %bb.ai, !dbg !9091, !noalias !8847

bb.bj:                                            ; preds = %bb.bg, %bb.aj, %.noexc4.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types6string8PyStringENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit14.i.i, %.noexc.i, %bb.y
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !9092

.body.i:                                          ; preds = %bb.bj, %bb.bi, %.body20.i.i, %.thread.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.dy, %bb.bj ], [ %lpad.thr_comm.split-lp.i.i, %bb.bi ], [ %.pn8.i.i, %.body20.i.i ], [ %.pn.i.i, %.thread.i.i ]
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.p)
          to label %common.resume unwind label %bb.bk, !dbg !9093, !noalias !8845

bb.bk:                                            ; preds = %.body.i
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !9094, !noalias !8845
  unreachable, !dbg !9094

_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCINvMsd_CsgjwxzEoLG5s_12polars_errorNtBZ_11PolarsError8wrap_msgNCNCINvNtNtCslpwjCj2YNBy_9polars_io5utils5other20decode_json_responseINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtB23_10path_utils12hugging_face13HFAPIResponseEE00E0B1r_ECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.bg, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit26.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !9081, !noalias !8847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !9091, !noalias !8847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !9095, !noalias !8845
  call void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.p), !dbg !9096, !noalias !8845
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !9092, !noalias !8845
end_hunk_0
begin_hunk_1_@_RINvMsd_CsgjwxzEoLG5s_12polars_errorNtB6_11PolarsError8wrap_msgNCNCNCINvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB19_17PolarsObjectStore30exec_with_rebuild_retry_on_errNCNCNCINvMs4_B1b_B2a_28build_buffered_ranges_streamINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB43_3ops5range5RangejENCNvB1b_11split_ranges_0EE000NCNCB37_00TNtNtCshK0ivY6saku_5bytes5bytes5BytesNtNtB43_4time8DurationEE000ECsfcROwRM8ZtH_11polars_plan:bb.a
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !9768
  %i.ec = load ptr, ptr %i.eb, align 8, !dbg !9768, !nonnull !2315, !noundef !2315
  call void @_RINvMsd_CsgjwxzEoLG5s_12polars_errorNtB6_11PolarsError8wrap_msgNCNCNCINvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB19_17PolarsObjectStore30exec_with_rebuild_retry_on_errNCNCNCINvMs4_B1b_B2a_28build_buffered_ranges_streamINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB43_3ops5range5RangejENCNvB1b_11split_ranges_0EE000NCNCB37_00TNtNtCshK0ivY6saku_5bytes5bytes5BytesNtNtB43_4time8DurationEE000ECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.bc, ptr noundef nonnull align 8 %i.ec, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %2), !dbg !9769
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #50, !dbg !9770, !noalias !9557
  %i.ed = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 0, 337) 72, i64 noundef range(i64 1, 17) 8) #50, !dbg !9771, !noalias !9557 ; 4 uses
  %i.ee = icmp eq ptr %i.ed, null, !dbg !9772
  br i1 %i.ee, label %bb.v, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE3newCsfcROwRM8ZtH_11polars_plan.exit, !dbg !9773, !prof !2467

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #48
          to label %.noexc79 unwind label %bb.w, !dbg !9774

.noexc79:                                         ; preds = %bb.v
  unreachable, !dbg !9774

bb.w:                                             ; preds = %bb.v
  %i.ef = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.bc) #46
          to label %common.resume unwind label %bb.x, !dbg !9775

bb.x:                                             ; preds = %bb.w
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !9776
  unreachable, !dbg !9776

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE3newCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ed, ptr noundef nonnull align 8 dereferenceable(72) %i.bc, i64 72, i1 false), !dbg !9777
  store ptr %i.ed, ptr %i.bd, align 8, !dbg !9767
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !dbg !9778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !dbg !9779
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !9779
  invoke void @_RNvXs0_NtCsgZ49sUHp3tW_5alloc6borrowINtB5_3CoweENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ba, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eh)
          to label %bb.cd unwind label %bb.cc, !dbg !9779

bb.y:                                             ; preds = %bb.a
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !9780
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9559), !dbg !9781
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !9782, !noalias !9560
  %i.ej = tail call noundef i32 @_RNvMNtNtCsbm5zPlkZccl_4pyo38internal5stateNtB2_11AttachGuard6attach(), !dbg !9783, !noalias !9560
  store i32 %i.ej, ptr %i.x, align 4, !dbg !9783, !noalias !9560
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9561), !dbg !9784
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !9785, !noalias !9560
  %i.ek = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsbm5zPlkZccl_4pyo33errNtB4_5PyErr5value(ptr noundef nonnull align 8 %i.ei)
          to label %.noexc.i unwind label %bb.bk, !dbg !9785, !noalias !9560 ; 3 uses

.noexc.i:                                         ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !9786, !noalias !9562
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !9787, !noalias !9562
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods3str(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ek)
          to label %.noexc3.i unwind label %bb.bk, !dbg !9788, !noalias !9559

.noexc3.i:                                        ; preds = %.noexc.i
  %i.el = load i64, ptr %i.v, align 8, !dbg !9787, !range !2317, !noalias !9562, !noundef !2315
  %i.em = trunc nuw i64 %i.el to i1, !dbg !9789
  br i1 %i.em, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types6string8PyStringENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit16.i.i, label %bb.z, !dbg !9789

bb.z:                                             ; preds = %.noexc3.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !9790, !noalias !9562
  %i.en = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !9790
  %i.eo = load ptr, ptr %i.en, align 8, !dbg !9790, !noalias !9562, !nonnull !2315, !noundef !2315 ; 3 uses
  store ptr %i.eo, ptr %i.u, align 8, !dbg !9790, !noalias !9562
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !9791, !noalias !9562
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types6stringINtNtB8_8instance5BoundNtB4_8PyStringENtB4_15PyStringMethods15to_string_lossy(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.u)
          to label %bb.ab unwind label %bb.aa, !dbg !9792, !noalias !9563

bb.aa:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i.i, %bb.z
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.ab:                                            ; preds = %bb.z
  %i.eq = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !9793
  %i.er = load ptr, ptr %i.eq, align 8, !dbg !9793, !noalias !9562, !nonnull !2315
  %i.es = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !9793
  %i.et = load i64, ptr %i.es, align 8, !dbg !9793, !noalias !9562
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !9562
  store ptr %i.er, ptr %i.o, align 8, !noalias !9564
  %i.eu = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.et, ptr %i.eu, align 8, !noalias !9564
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !9794, !noalias !9564
  store ptr %i.o, ptr %i.n, align 8, !dbg !9794, !noalias !9564
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !9794
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !dbg !9794, !noalias !9564
  %i.ev = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !9794
  store ptr %2, ptr %i.ev, align 8, !dbg !9794, !noalias !9564
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !9794
  store ptr @_RNvXs1f_Cs8RKTHBS4OBx_12object_storeNtB6_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !dbg !9794, !noalias !9564
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noundef nonnull @202, ptr noundef nonnull %i.n)
          to label %bb.ad unwind label %bb.ac, !dbg !9795, !noalias !9563

bb.ac:                                            ; preds = %bb.ab
  %i.ew = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CoweEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.t) #46
          to label %.thread.i.i unwind label %bb.aj, !dbg !9796, !noalias !9563

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !9797, !noalias !9564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !9798, !noalias !9562
  %i.ex = load i64, ptr %i.t, align 8, !dbg !9799, !range !2367, !alias.scope !9565, !noalias !9562, !noundef !2315
  %i.ey = icmp eq i64 %i.ex, -9223372036854775808, !dbg !9799
  br i1 %i.ey, label %bb.ah, label %bb.ae, !dbg !9799

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i.i unwind label %bb.af, !dbg !9800, !noalias !9563

bb.af:                                            ; preds = %bb.ae
  %i.ez = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.thread.i.i unwind label %bb.ag, !dbg !9801, !noalias !9563

bb.ag:                                            ; preds = %bb.af
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !9800, !noalias !9563
  unreachable, !dbg !9800

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i.i: ; preds = %bb.ae
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.ah unwind label %bb.aa, !dbg !9802, !noalias !9563

bb.ah:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !9796, !noalias !9562
  call void @_Py_DecRef(ptr noundef nonnull %i.eo) #50, !dbg !9803, !noalias !9563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !9804, !noalias !9562
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !9804, !noalias !9562
  br label %bb.ai, !dbg !9805

bb.ai:                                            ; preds = %.noexc5.i, %bb.ah
  %i.fb = invoke noundef nonnull ptr @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods8get_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ek)
          to label %bb.ak unwind label %bb.bj, !dbg !9806, !noalias !9563

bb.aj:                                            ; preds = %bb.bj, %.body24.i.i, %bb.ac
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !9807, !noalias !9563
  unreachable, !dbg !9807

.thread.i.i:                                      ; preds = %bb.af, %bb.ac, %bb.aa
  %.pn.i.i = phi { ptr, i32 } [ %i.ew, %bb.ac ], [ %i.ep, %bb.aa ], [ %i.ez, %bb.af ]
  call void @_Py_DecRef(ptr noundef nonnull %i.eo) #50, !dbg !9808, !noalias !9563
  br label %.body.i, !dbg !9804

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types6string8PyStringENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit16.i.i: ; preds = %.noexc3.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !9809
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.fd)
          to label %.noexc4.i unwind label %bb.bk, !dbg !9809, !noalias !9559

.noexc4.i:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types6string8PyStringENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit16.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !9804, !noalias !9562
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !9562
  store ptr @163, ptr %i.m, align 8, !noalias !9566
  %i.fe = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 24, ptr %i.fe, align 8, !noalias !9566
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !9810, !noalias !9566
  store ptr %i.m, ptr %i.l, align 8, !dbg !9810, !noalias !9566
  %.sroa.42.0..sroa_idx.i17.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !9810
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.42.0..sroa_idx.i17.i.i, align 8, !dbg !9810, !noalias !9566
  %i.ff = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !9810
  store ptr %2, ptr %i.ff, align 8, !dbg !9810, !noalias !9566
  %.sroa.46.0..sroa_idx.i18.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24, !dbg !9810
  store ptr @_RNvXs1f_Cs8RKTHBS4OBx_12object_storeNtB6_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i18.i.i, align 8, !dbg !9810, !noalias !9566
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noundef nonnull @202, ptr noundef nonnull %i.l)
          to label %.noexc5.i unwind label %bb.bk, !dbg !9811, !noalias !9559

.noexc5.i:                                        ; preds = %.noexc4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !9812, !noalias !9566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !9813, !noalias !9562
  br label %bb.ai, !dbg !9814

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !9815, !noalias !9562
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !9816, !noalias !9562
  invoke void @_RINvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB6_10PyErrState14lazy_argumentsTNtNtCsgZ49sUHp3tW_5alloc6string6StringEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.p, ptr noundef nonnull %i.fb, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.w)
          to label %.noexc6.i unwind label %bb.bk, !dbg !9816, !noalias !9559

.noexc6.i:                                        ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.s, ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 64, i1 false), !dbg !9817, !noalias !9562
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !9818, !noalias !9562
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !9819, !noalias !9562
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !9820, !noalias !9567
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !9820, !noalias !9567
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !9820, !noalias !9567
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !9821, !noalias !9567
  %i.fg = getelementptr inbounds nuw i8, ptr %i.s, i64 56, !dbg !9822
  %i.fh = load atomic i32, ptr %i.fg acquire, align 8, !dbg !9823, !noalias !9567
  %i.fi = icmp eq i32 %i.fh, 0, !dbg !9824
  br i1 %i.fi, label %bb.al, label %bb.am, !dbg !9824, !prof !2318

bb.al:                                            ; preds = %.noexc6.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !9825
  %i.fk = load i64, ptr %i.fj, align 8, !dbg !9826, !range !2317, !noalias !9567, !noundef !2315
  %i.fl = trunc nuw i64 %i.fk to i1, !dbg !9827
  %i.fm = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !noalias !9562
  %.not.i.i.i.i = icmp ne ptr %i.fn, null
  %or.cond.not.i.i = select i1 %i.fl, i1 %.not.i.i.i.i, i1 false, !dbg !9827
  br i1 %or.cond.not.i.i, label %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i, label %bb.an, !dbg !9827, !prof !2582

bb.am:                                            ; preds = %.noexc6.i
  %i.fo = invoke noundef nonnull align 8 ptr @_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState15make_normalized(ptr noundef nonnull align 8 %i.s)
          to label %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i unwind label %bb.bd, !dbg !9828, !noalias !9563

bb.an:                                            ; preds = %bb.al
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @268, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @343) #45
          to label %.noexc20.i.i unwind label %bb.bd, !dbg !9829, !noalias !9563

.noexc20.i.i:                                     ; preds = %bb.an
  unreachable, !dbg !9829

_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i: ; preds = %bb.am, %bb.al
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.fm, %bb.al ], [ %i.fo, %bb.am ], !dbg !9830
  invoke void @_RNvMs1_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_20PyErrStateNormalized9clone_ref(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noundef nonnull align 8 %.sroa.0.0.i.i.i.i)
          to label %.noexc21.i.i unwind label %bb.bd, !dbg !9831, !noalias !9563

.noexc21.i.i:                                     ; preds = %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i
  invoke void @_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState10normalized(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.g)
          to label %.noexc22.i.i unwind label %bb.bd, !dbg !9832, !noalias !9563

.noexc22.i.i:                                     ; preds = %.noexc21.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !9833, !noalias !9567
  %i.fp = invoke noundef nonnull ptr @_RNvMs_NtCsbm5zPlkZccl_4pyo33errNtB4_5PyErr10into_value(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.i)
          to label %.noexc23.i.i unwind label %bb.bd, !dbg !9834, !noalias !9563 ; 3 uses

.noexc23.i.i:                                     ; preds = %.noexc22.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !9835, !noalias !9567
  store ptr %i.fp, ptr %i.j, align 8, !dbg !9836, !noalias !9567
  invoke void @_RINvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrReECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) @190, i64 noundef 14)
          to label %bb.ap unwind label %bb.ao, !dbg !9837, !noalias !9568

bb.ao:                                            ; preds = %.noexc23.i.i
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.ap:                                            ; preds = %.noexc23.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !9569), !dbg !9838
  %i.fr = load i64, ptr %i.k, align 8, !dbg !9839, !range !2317, !alias.scope !9569, !noalias !9570, !noundef !2315
  %i.fs = trunc nuw i64 %i.fr to i1, !dbg !9840
  br i1 %i.fs, label %bb.aq, label %bb.au, !dbg !9840, !prof !2368

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !9841, !noalias !9571
  %i.ft = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !9841
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.ft, i64 64, i1 false), !dbg !9841, !noalias !9570
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @317, i64 noundef 43, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @319, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #48
          to label %bb.as unwind label %bb.ar, !dbg !9842, !noalias !9572

bb.ar:                                            ; preds = %bb.aq
  %i.fu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e) #46
          to label %bb.bc unwind label %bb.at, !dbg !9843, !noalias !9572

bb.as:                                            ; preds = %bb.aq
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.fv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !9844, !noalias !9572
  unreachable, !dbg !9844

bb.au:                                            ; preds = %bb.ap
  %i.fw = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !9845
  %i.fx = load ptr, ptr %i.fw, align 8, !dbg !9845, !alias.scope !9569, !noalias !9570, !nonnull !2315, !noundef !2315 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !9846, !noalias !9567
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !9847, !noalias !9567
  invoke void @_RINvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrReECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ek, ptr noalias noundef nonnull readonly captures(address, read_provenance) @192, i64 noundef 13)
          to label %bb.aw unwind label %bb.av, !dbg !9848, !noalias !9568

bb.av:                                            ; preds = %bb.bb, %bb.au
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i, !dbg !9849

.body.i.i.i:                                      ; preds = %bb.ay, %bb.av
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.fy, %bb.av ], [ %i.gc, %bb.ay ]
  call void @_Py_DecRef(ptr noundef nonnull %i.fx) #50, !dbg !9850, !noalias !9568
  br label %bb.bc, !dbg !9851

bb.aw:                                            ; preds = %bb.au
  call void @llvm.experimental.noalias.scope.decl(metadata !9573), !dbg !9852
  %i.fz = load i64, ptr %i.h, align 8, !dbg !9853, !range !2317, !alias.scope !9573, !noalias !9574, !noundef !2315
  %i.ga = trunc nuw i64 %i.fz to i1, !dbg !9854
  br i1 %i.ga, label %bb.ax, label %bb.bb, !dbg !9854, !prof !2368

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !9855, !noalias !9575
  %i.gb = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !9855
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.gb, i64 64, i1 false), !dbg !9855, !noalias !9574
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @317, i64 noundef 43, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @319, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @193) #48
          to label %bb.az unwind label %bb.ay, !dbg !9856, !noalias !9576

bb.ay:                                            ; preds = %bb.ax
  %i.gc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.f) #46
          to label %.body.i.i.i unwind label %bb.ba, !dbg !9857, !noalias !9576

bb.az:                                            ; preds = %bb.ax
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.gd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !9858, !noalias !9576
  unreachable, !dbg !9858

bb.bb:                                            ; preds = %bb.aw
  %i.ge = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !9859
  %i.gf = load ptr, ptr %i.ge, align 8, !dbg !9859, !alias.scope !9573, !noalias !9574, !nonnull !2315, !noundef !2315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !9860, !noalias !9567
  invoke void @_RNvXsj_NtNtCsbm5zPlkZccl_4pyo35types5tupleTINtNtB9_8instance5BoundNtNtB7_3any5PyAnyEENtNtB9_4call10PyCallArgs15call_positionalCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.q, ptr noundef nonnull %i.gf, ptr noundef nonnull %i.fx)
          to label %bb.be unwind label %bb.av, !dbg !9861, !noalias !9577

bb.bc:                                            ; preds = %.body.i.i.i, %bb.ar, %bb.ao
  %.pn.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.fq, %bb.ao ], [ %i.fu, %bb.ar ]
  call void @_Py_DecRef(ptr noundef nonnull %i.fp) #50, !dbg !9862, !noalias !9568
  br label %.body24.i.i, !dbg !9863

.body24.i.i:                                      ; preds = %bb.bg, %bb.bd, %bb.bc
  %.pn10.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %bb.bc ], [ %i.gl, %bb.bg ], [ %i.gg, %bb.bd ]
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.s) #46
          to label %.body.i unwind label %bb.aj, !dbg !9864, !noalias !9563

bb.bd:                                            ; preds = %bb.bi, %.noexc22.i.i, %.noexc21.i.i, %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i, %bb.an, %bb.am
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %.body24.i.i

bb.be:                                            ; preds = %bb.bb
  call void @_Py_DecRef(ptr noundef nonnull %i.fx) #50, !dbg !9865, !noalias !9568
  call void @_Py_DecRef(ptr noundef nonnull %i.fp) #50, !dbg !9866, !noalias !9568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !9849, !noalias !9567
  %i.gh = load i64, ptr %i.q, align 8, !dbg !9819, !range !2317, !noalias !9562, !noundef !2315
  %i.gi = trunc nuw i64 %i.gh to i1, !dbg !9867
  %i.gj = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !9868 ; 2 uses
  br i1 %i.gi, label %bb.bi, label %bb.bf, !dbg !9867

bb.bf:                                            ; preds = %bb.be
  %i.gk = load ptr, ptr %i.gj, align 8, !dbg !9869, !noalias !9562, !nonnull !2315, !noundef !2315
  invoke void @_RNvMs_NtCsbm5zPlkZccl_4pyo33errNtB4_5PyErr10from_value(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.r, ptr noundef nonnull %i.gk)
          to label %bb.bh unwind label %bb.bg, !dbg !9870, !noalias !9563

bb.bg:                                            ; preds = %bb.bf
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %.body24.i.i, !dbg !9871

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !9871, !noalias !9562
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9872
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.gm, ptr noundef nonnull align 8 dereferenceable(64) %i.r, i64 64, i1 false), !dbg !9872, !noalias !9578
  store i64 17, ptr %0, align 8, !dbg !9872, !alias.scope !9563, !noalias !9578
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.s)
          to label %_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCINvMsd_CsgjwxzEoLG5s_12polars_errorNtBZ_11PolarsError8wrap_msgNCNCNCINvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB22_17PolarsObjectStore30exec_with_rebuild_retry_on_errNCNCNCINvMs4_B24_B33_28build_buffered_ranges_streamINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB4W_3ops5range5RangejENCNvB24_11split_ranges_0EE000NCNCB40_00TNtNtCshK0ivY6saku_5bytes5bytes5BytesNtNtB4W_4time8DurationEE000E0B1r_ECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.bk, !dbg !9864, !noalias !9559

bb.bi:                                            ; preds = %bb.be
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.gj)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit30.i.i unwind label %bb.bd, !dbg !9873, !noalias !9563

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit30.i.i: ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !9871, !noalias !9562
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9872
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.gn, ptr noundef nonnull align 8 dereferenceable(64) %i.s, i64 64, i1 false), !dbg !9872, !noalias !9578
  store i64 17, ptr %0, align 8, !dbg !9872, !alias.scope !9563, !noalias !9578
  br label %_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCINvMsd_CsgjwxzEoLG5s_12polars_errorNtBZ_11PolarsError8wrap_msgNCNCNCINvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB22_17PolarsObjectStore30exec_with_rebuild_retry_on_errNCNCNCINvMs4_B24_B33_28build_buffered_ranges_streamINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB4W_3ops5range5RangejENCNvB24_11split_ranges_0EE000NCNCB40_00TNtNtCshK0ivY6saku_5bytes5bytes5BytesNtNtB4W_4time8DurationEE000E0B1r_ECsfcROwRM8ZtH_11polars_plan.exit, !dbg !9864

bb.bj:                                            ; preds = %bb.ai
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w) #46
          to label %.body.i unwind label %bb.aj, !dbg !9874, !noalias !9563

bb.bk:                                            ; preds = %bb.bh, %bb.ak, %.noexc4.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types6string8PyStringENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit16.i.i, %.noexc.i, %bb.y
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !9875

.body.i:                                          ; preds = %bb.bk, %bb.bj, %.body24.i.i, %.thread.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.go, %bb.bk ], [ %lpad.thr_comm.split-lp.i.i, %bb.bj ], [ %.pn10.i.i, %.body24.i.i ], [ %.pn.i.i, %.thread.i.i ]
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.x)
          to label %common.resume unwind label %bb.bl, !dbg !9876, !noalias !9559

bb.bl:                                            ; preds = %.body.i
  %i.gp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !9877, !noalias !9559
  unreachable, !dbg !9877

_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCINvMsd_CsgjwxzEoLG5s_12polars_errorNtBZ_11PolarsError8wrap_msgNCNCNCINvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB22_17PolarsObjectStore30exec_with_rebuild_retry_on_errNCNCNCINvMs4_B24_B33_28build_buffered_ranges_streamINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB4W_3ops5range5RangejENCNvB24_11split_ranges_0EE000NCNCB40_00TNtNtCshK0ivY6saku_5bytes5bytes5BytesNtNtB4W_4time8DurationEE000E0B1r_ECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.bh, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit30.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !9864, !noalias !9562
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !9874, !noalias !9562
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !9878, !noalias !9560
  call void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.x), !dbg !9879, !noalias !9559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !9875, !noalias !9560
end_hunk_1
begin_hunk_2_@_RINvMsd_CsgjwxzEoLG5s_12polars_errorNtB6_11PolarsError8wrap_msgNCNCNCINvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB19_17PolarsObjectStore30exec_with_rebuild_retry_on_errNCNCNCINvMs4_B1b_B2a_28build_buffered_ranges_streamINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB43_3ops5range5RangejENCNvB1b_11split_ranges_0EE000NCNCB37_00TNtNtCshK0ivY6saku_5bytes5bytes5BytesNtNtB43_4time8DurationEE0s_00ECsfcROwRM8ZtH_11polars_plan:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !dbg !10531
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !10531
  invoke void @_RNvXs0_NtCsgZ49sUHp3tW_5alloc6borrowINtB5_3CoweENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dm)
          to label %bb.cb unwind label %bb.ca, !dbg !10531

bb.u:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !dbg !10532
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !dbg !10533
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !10533
  %i.do = load ptr, ptr %i.dn, align 8, !dbg !10533, !nonnull !2315, !noundef !2315
  call void @_RINvMsd_CsgjwxzEoLG5s_12polars_errorNtB6_11PolarsError8wrap_msgNCNCNCINvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB19_17PolarsObjectStore30exec_with_rebuild_retry_on_errNCNCNCINvMs4_B1b_B2a_28build_buffered_ranges_streamINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB43_3ops5range5RangejENCNvB1b_11split_ranges_0EE000NCNCB37_00TNtNtCshK0ivY6saku_5bytes5bytes5BytesNtNtB43_4time8DurationEE0s_00ECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.bc, ptr noundef nonnull align 8 %i.do), !dbg !10534
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #50, !dbg !10535, !noalias !10326
  %i.dp = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 0, 337) 72, i64 noundef range(i64 1, 17) 8) #50, !dbg !10536, !noalias !10326 ; 4 uses
  %i.dq = icmp eq ptr %i.dp, null, !dbg !10537
  br i1 %i.dq, label %bb.v, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE3newCsfcROwRM8ZtH_11polars_plan.exit, !dbg !10538, !prof !2467

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #48
          to label %.noexc66 unwind label %bb.w, !dbg !10539

.noexc66:                                         ; preds = %bb.v
  unreachable, !dbg !10539

bb.w:                                             ; preds = %bb.v
  %i.dr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.bc) #46
          to label %common.resume unwind label %bb.x, !dbg !10540

bb.x:                                             ; preds = %bb.w
  %i.ds = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !10541
  unreachable, !dbg !10541

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE3newCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dp, ptr noundef nonnull align 8 dereferenceable(72) %i.bc, i64 72, i1 false), !dbg !10542
  store ptr %i.dp, ptr %i.bd, align 8, !dbg !10532
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !dbg !10543
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !dbg !10544
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !10544
  invoke void @_RNvXs0_NtCsgZ49sUHp3tW_5alloc6borrowINtB5_3CoweENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ba, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dt)
          to label %bb.cd unwind label %bb.cc, !dbg !10544

bb.y:                                             ; preds = %bb.a
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !10545
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10328), !dbg !10546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !10547, !noalias !10328
  %i.dv = tail call noundef i32 @_RNvMNtNtCsbm5zPlkZccl_4pyo38internal5stateNtB2_11AttachGuard6attach(), !dbg !10548, !noalias !10328
  store i32 %i.dv, ptr %i.x, align 4, !dbg !10548, !noalias !10328
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10329), !dbg !10549
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !10550, !noalias !10328
  %i.dw = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsbm5zPlkZccl_4pyo33errNtB4_5PyErr5value(ptr noundef nonnull align 8 %i.du)
          to label %.noexc.i unwind label %bb.bk, !dbg !10550, !noalias !10328 ; 3 uses

.noexc.i:                                         ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !10551, !noalias !10330
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !10552, !noalias !10330
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods3str(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dw)
          to label %.noexc3.i unwind label %bb.bk, !dbg !10553, !noalias !10328

.noexc3.i:                                        ; preds = %.noexc.i
  %i.dx = load i64, ptr %i.v, align 8, !dbg !10552, !range !2317, !noalias !10330, !noundef !2315
  %i.dy = trunc nuw i64 %i.dx to i1, !dbg !10554
  br i1 %i.dy, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types6string8PyStringENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit15.i.i, label %bb.z, !dbg !10554

bb.z:                                             ; preds = %.noexc3.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !10555, !noalias !10330
  %i.dz = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !10555
  %i.ea = load ptr, ptr %i.dz, align 8, !dbg !10555, !noalias !10330, !nonnull !2315, !noundef !2315 ; 3 uses
  store ptr %i.ea, ptr %i.u, align 8, !dbg !10555, !noalias !10330
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !10556, !noalias !10330
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types6stringINtNtB8_8instance5BoundNtB4_8PyStringENtB4_15PyStringMethods15to_string_lossy(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.u)
          to label %bb.ab unwind label %bb.aa, !dbg !10557, !noalias !10330

bb.aa:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i.i, %bb.z
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.ab:                                            ; preds = %bb.z
  %i.ec = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !10558
  %i.ed = load ptr, ptr %i.ec, align 8, !dbg !10558, !noalias !10330, !nonnull !2315
  %i.ee = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !10558
  %i.ef = load i64, ptr %i.ee, align 8, !dbg !10558, !noalias !10330
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !10330
  store ptr %i.ed, ptr %i.o, align 8, !noalias !10331
  %i.eg = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.ef, ptr %i.eg, align 8, !noalias !10331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !10559, !noalias !10331
  store ptr %i.o, ptr %i.n, align 8, !dbg !10559, !noalias !10331
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !10559
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !dbg !10559, !noalias !10331
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noundef nonnull @203, ptr noundef nonnull %i.n)
          to label %bb.ad unwind label %bb.ac, !dbg !10560, !noalias !10330

bb.ac:                                            ; preds = %bb.ab
  %i.eh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CoweEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.t) #46
          to label %.thread.i.i unwind label %bb.aj, !dbg !10561, !noalias !10330

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !10562, !noalias !10331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !10563, !noalias !10330
  %i.ei = load i64, ptr %i.t, align 8, !dbg !10564, !range !2367, !alias.scope !10332, !noalias !10330, !noundef !2315
  %i.ej = icmp eq i64 %i.ei, -9223372036854775808, !dbg !10564
  br i1 %i.ej, label %bb.ah, label %bb.ae, !dbg !10564

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i.i unwind label %bb.af, !dbg !10565, !noalias !10330

bb.af:                                            ; preds = %bb.ae
  %i.ek = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.thread.i.i unwind label %bb.ag, !dbg !10566, !noalias !10330

bb.ag:                                            ; preds = %bb.af
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !10565, !noalias !10330
  unreachable, !dbg !10565

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i.i: ; preds = %bb.ae
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.ah unwind label %bb.aa, !dbg !10567, !noalias !10330

bb.ah:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !10561, !noalias !10330
  call void @_Py_DecRef(ptr noundef nonnull %i.ea) #50, !dbg !10568, !noalias !10330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !10569, !noalias !10330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !10569, !noalias !10330
  br label %bb.ai, !dbg !10570

bb.ai:                                            ; preds = %.noexc5.i, %bb.ah
  %i.em = invoke noundef nonnull ptr @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods8get_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dw)
          to label %bb.ak unwind label %bb.bj, !dbg !10571, !noalias !10330

bb.aj:                                            ; preds = %bb.bj, %.body22.i.i, %bb.ac
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !10572, !noalias !10330
  unreachable, !dbg !10572

.thread.i.i:                                      ; preds = %bb.af, %bb.ac, %bb.aa
  %.pn.i.i = phi { ptr, i32 } [ %i.eh, %bb.ac ], [ %i.eb, %bb.aa ], [ %i.ek, %bb.af ]
  call void @_Py_DecRef(ptr noundef nonnull %i.ea) #50, !dbg !10573, !noalias !10330
  br label %.body.i, !dbg !10569

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types6string8PyStringENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit15.i.i: ; preds = %.noexc3.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !10574
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.eo)
          to label %.noexc4.i unwind label %bb.bk, !dbg !10574, !noalias !10328

.noexc4.i:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types6string8PyStringENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit15.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !10569, !noalias !10330
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !10330
  store ptr @163, ptr %i.m, align 8, !noalias !10333
  %i.ep = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 24, ptr %i.ep, align 8, !noalias !10333
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !10575, !noalias !10333
  store ptr %i.m, ptr %i.l, align 8, !dbg !10575, !noalias !10333
  %.sroa.42.0..sroa_idx.i16.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !10575
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.42.0..sroa_idx.i16.i.i, align 8, !dbg !10575, !noalias !10333
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noundef nonnull @203, ptr noundef nonnull %i.l)
          to label %.noexc5.i unwind label %bb.bk, !dbg !10576, !noalias !10328

.noexc5.i:                                        ; preds = %.noexc4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !10577, !noalias !10333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !10578, !noalias !10330
  br label %bb.ai, !dbg !10579

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !10580, !noalias !10330
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !10581, !noalias !10330
  invoke void @_RINvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB6_10PyErrState14lazy_argumentsTNtNtCsgZ49sUHp3tW_5alloc6string6StringEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.p, ptr noundef nonnull %i.em, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.w)
          to label %.noexc6.i unwind label %bb.bk, !dbg !10581, !noalias !10328

.noexc6.i:                                        ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.s, ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 64, i1 false), !dbg !10582, !noalias !10330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !10583, !noalias !10330
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !10584, !noalias !10330
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !10585, !noalias !10334
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !10585, !noalias !10334
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !10585, !noalias !10334
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !10586, !noalias !10334
  %i.eq = getelementptr inbounds nuw i8, ptr %i.s, i64 56, !dbg !10587
  %i.er = load atomic i32, ptr %i.eq acquire, align 8, !dbg !10588, !noalias !10334
  %i.es = icmp eq i32 %i.er, 0, !dbg !10589
  br i1 %i.es, label %bb.al, label %bb.am, !dbg !10589, !prof !2318

bb.al:                                            ; preds = %.noexc6.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !10590
  %i.eu = load i64, ptr %i.et, align 8, !dbg !10591, !range !2317, !noalias !10334, !noundef !2315
  %i.ev = trunc nuw i64 %i.eu to i1, !dbg !10592
  %i.ew = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !noalias !10330
  %.not.i.i.i.i = icmp ne ptr %i.ex, null
  %or.cond.not.i.i = select i1 %i.ev, i1 %.not.i.i.i.i, i1 false, !dbg !10592
  br i1 %or.cond.not.i.i, label %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i, label %bb.an, !dbg !10592, !prof !2582

bb.am:                                            ; preds = %.noexc6.i
  %i.ey = invoke noundef nonnull align 8 ptr @_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState15make_normalized(ptr noundef nonnull align 8 %i.s)
          to label %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i unwind label %bb.bd, !dbg !10593, !noalias !10330

bb.an:                                            ; preds = %bb.al
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @268, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @343) #45
          to label %.noexc18.i.i unwind label %bb.bd, !dbg !10594, !noalias !10330

.noexc18.i.i:                                     ; preds = %bb.an
  unreachable, !dbg !10594

_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i: ; preds = %bb.am, %bb.al
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ew, %bb.al ], [ %i.ey, %bb.am ], !dbg !10595
  invoke void @_RNvMs1_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_20PyErrStateNormalized9clone_ref(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noundef nonnull align 8 %.sroa.0.0.i.i.i.i)
          to label %.noexc19.i.i unwind label %bb.bd, !dbg !10596, !noalias !10330

.noexc19.i.i:                                     ; preds = %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i
  invoke void @_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState10normalized(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.g)
          to label %.noexc20.i.i unwind label %bb.bd, !dbg !10597, !noalias !10330

.noexc20.i.i:                                     ; preds = %.noexc19.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !10598, !noalias !10334
  %i.ez = invoke noundef nonnull ptr @_RNvMs_NtCsbm5zPlkZccl_4pyo33errNtB4_5PyErr10into_value(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.i)
          to label %.noexc21.i.i unwind label %bb.bd, !dbg !10599, !noalias !10330 ; 3 uses

.noexc21.i.i:                                     ; preds = %.noexc20.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !10600, !noalias !10334
  store ptr %i.ez, ptr %i.j, align 8, !dbg !10601, !noalias !10334
  invoke void @_RINvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrReECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) @190, i64 noundef 14)
          to label %bb.ap unwind label %bb.ao, !dbg !10602, !noalias !10334

bb.ao:                                            ; preds = %.noexc21.i.i
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.ap:                                            ; preds = %.noexc21.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !10335), !dbg !10603
  %i.fb = load i64, ptr %i.k, align 8, !dbg !10604, !range !2317, !alias.scope !10335, !noalias !10336, !noundef !2315
  %i.fc = trunc nuw i64 %i.fb to i1, !dbg !10605
  br i1 %i.fc, label %bb.aq, label %bb.au, !dbg !10605, !prof !2368

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !10606, !noalias !10337
  %i.fd = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !10606
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.fd, i64 64, i1 false), !dbg !10606, !noalias !10336
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @317, i64 noundef 43, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @319, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #48
          to label %bb.as unwind label %bb.ar, !dbg !10607, !noalias !10338

bb.ar:                                            ; preds = %bb.aq
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e) #46
          to label %bb.bc unwind label %bb.at, !dbg !10608, !noalias !10338

bb.as:                                            ; preds = %bb.aq
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !10609, !noalias !10338
  unreachable, !dbg !10609

bb.au:                                            ; preds = %bb.ap
  %i.fg = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !10610
  %i.fh = load ptr, ptr %i.fg, align 8, !dbg !10610, !alias.scope !10335, !noalias !10336, !nonnull !2315, !noundef !2315 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !10611, !noalias !10334
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !10612, !noalias !10334
  invoke void @_RINvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrReECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @192, i64 noundef 13)
          to label %bb.aw unwind label %bb.av, !dbg !10613, !noalias !10334

bb.av:                                            ; preds = %bb.bb, %bb.au
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i, !dbg !10614

.body.i.i.i:                                      ; preds = %bb.ay, %bb.av
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.fi, %bb.av ], [ %i.fm, %bb.ay ]
  call void @_Py_DecRef(ptr noundef nonnull %i.fh) #50, !dbg !10615, !noalias !10334
  br label %bb.bc, !dbg !10616

bb.aw:                                            ; preds = %bb.au
  call void @llvm.experimental.noalias.scope.decl(metadata !10339), !dbg !10617
  %i.fj = load i64, ptr %i.h, align 8, !dbg !10618, !range !2317, !alias.scope !10339, !noalias !10340, !noundef !2315
  %i.fk = trunc nuw i64 %i.fj to i1, !dbg !10619
  br i1 %i.fk, label %bb.ax, label %bb.bb, !dbg !10619, !prof !2368

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !10620, !noalias !10341
  %i.fl = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !10620
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.fl, i64 64, i1 false), !dbg !10620, !noalias !10340
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @317, i64 noundef 43, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @319, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @193) #48
          to label %bb.az unwind label %bb.ay, !dbg !10621, !noalias !10342

bb.ay:                                            ; preds = %bb.ax
  %i.fm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.f) #46
          to label %.body.i.i.i unwind label %bb.ba, !dbg !10622, !noalias !10342

bb.az:                                            ; preds = %bb.ax
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.fn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !10623, !noalias !10342
  unreachable, !dbg !10623

bb.bb:                                            ; preds = %bb.aw
  %i.fo = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !10624
  %i.fp = load ptr, ptr %i.fo, align 8, !dbg !10624, !alias.scope !10339, !noalias !10340, !nonnull !2315, !noundef !2315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !10625, !noalias !10334
  invoke void @_RNvXsj_NtNtCsbm5zPlkZccl_4pyo35types5tupleTINtNtB9_8instance5BoundNtNtB7_3any5PyAnyEENtNtB9_4call10PyCallArgs15call_positionalCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.q, ptr noundef nonnull %i.fp, ptr noundef nonnull %i.fh)
          to label %bb.be unwind label %bb.av, !dbg !10626, !noalias !10343

bb.bc:                                            ; preds = %.body.i.i.i, %bb.ar, %bb.ao
  %.pn.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.fa, %bb.ao ], [ %i.fe, %bb.ar ]
  call void @_Py_DecRef(ptr noundef nonnull %i.ez) #50, !dbg !10627, !noalias !10334
  br label %.body22.i.i, !dbg !10628

.body22.i.i:                                      ; preds = %bb.bg, %bb.bd, %bb.bc
  %.pn9.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %bb.bc ], [ %i.fv, %bb.bg ], [ %i.fq, %bb.bd ]
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.s) #46
          to label %.body.i unwind label %bb.aj, !dbg !10629, !noalias !10330

bb.bd:                                            ; preds = %bb.bi, %.noexc20.i.i, %.noexc19.i.i, %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i, %bb.an, %bb.am
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %.body22.i.i

bb.be:                                            ; preds = %bb.bb
  call void @_Py_DecRef(ptr noundef nonnull %i.fh) #50, !dbg !10630, !noalias !10334
  call void @_Py_DecRef(ptr noundef nonnull %i.ez) #50, !dbg !10631, !noalias !10334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !10614, !noalias !10334
  %i.fr = load i64, ptr %i.q, align 8, !dbg !10584, !range !2317, !noalias !10330, !noundef !2315
  %i.fs = trunc nuw i64 %i.fr to i1, !dbg !10632
  %i.ft = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !10633 ; 2 uses
  br i1 %i.fs, label %bb.bi, label %bb.bf, !dbg !10632

bb.bf:                                            ; preds = %bb.be
  %i.fu = load ptr, ptr %i.ft, align 8, !dbg !10634, !noalias !10330, !nonnull !2315, !noundef !2315
  invoke void @_RNvMs_NtCsbm5zPlkZccl_4pyo33errNtB4_5PyErr10from_value(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.r, ptr noundef nonnull %i.fu)
          to label %bb.bh unwind label %bb.bg, !dbg !10635, !noalias !10330

bb.bg:                                            ; preds = %bb.bf
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %.body22.i.i, !dbg !10636

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !10636, !noalias !10330
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10637
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fw, ptr noundef nonnull align 8 dereferenceable(64) %i.r, i64 64, i1 false), !dbg !10637
  store i64 17, ptr %0, align 8, !dbg !10637, !alias.scope !10330
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.s)
          to label %_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCINvMsd_CsgjwxzEoLG5s_12polars_errorNtBZ_11PolarsError8wrap_msgNCNCNCINvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB22_17PolarsObjectStore30exec_with_rebuild_retry_on_errNCNCNCINvMs4_B24_B33_28build_buffered_ranges_streamINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB4W_3ops5range5RangejENCNvB24_11split_ranges_0EE000NCNCB40_00TNtNtCshK0ivY6saku_5bytes5bytes5BytesNtNtB4W_4time8DurationEE0s_00E0B1r_ECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.bk, !dbg !10629, !noalias !10328

bb.bi:                                            ; preds = %bb.be
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.ft)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit28.i.i unwind label %bb.bd, !dbg !10638, !noalias !10330

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit28.i.i: ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !10636, !noalias !10330
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10637
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fx, ptr noundef nonnull align 8 dereferenceable(64) %i.s, i64 64, i1 false), !dbg !10637
  store i64 17, ptr %0, align 8, !dbg !10637, !alias.scope !10330
  br label %_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCINvMsd_CsgjwxzEoLG5s_12polars_errorNtBZ_11PolarsError8wrap_msgNCNCNCINvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB22_17PolarsObjectStore30exec_with_rebuild_retry_on_errNCNCNCINvMs4_B24_B33_28build_buffered_ranges_streamINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB4W_3ops5range5RangejENCNvB24_11split_ranges_0EE000NCNCB40_00TNtNtCshK0ivY6saku_5bytes5bytes5BytesNtNtB4W_4time8DurationEE0s_00E0B1r_ECsfcROwRM8ZtH_11polars_plan.exit, !dbg !10629

bb.bj:                                            ; preds = %bb.ai
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w) #46
          to label %.body.i unwind label %bb.aj, !dbg !10639, !noalias !10330

bb.bk:                                            ; preds = %bb.bh, %bb.ak, %.noexc4.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types6string8PyStringENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit15.i.i, %.noexc.i, %bb.y
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !10640

.body.i:                                          ; preds = %bb.bk, %bb.bj, %.body22.i.i, %.thread.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.fy, %bb.bk ], [ %lpad.thr_comm.split-lp.i.i, %bb.bj ], [ %.pn9.i.i, %.body22.i.i ], [ %.pn.i.i, %.thread.i.i ]
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.x)
          to label %common.resume unwind label %bb.bl, !dbg !10641, !noalias !10328

bb.bl:                                            ; preds = %.body.i
  %i.fz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !10642, !noalias !10328
  unreachable, !dbg !10642

_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCINvMsd_CsgjwxzEoLG5s_12polars_errorNtBZ_11PolarsError8wrap_msgNCNCNCINvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB22_17PolarsObjectStore30exec_with_rebuild_retry_on_errNCNCNCINvMs4_B24_B33_28build_buffered_ranges_streamINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB4W_3ops5range5RangejENCNvB24_11split_ranges_0EE000NCNCB40_00TNtNtCshK0ivY6saku_5bytes5bytes5BytesNtNtB4W_4time8DurationEE0s_00E0B1r_ECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.bh, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit28.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !10629, !noalias !10330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !10639, !noalias !10330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !10643, !noalias !10328
  call void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.x), !dbg !10644, !noalias !10328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !10640, !noalias !10328
end_hunk_2
begin_hunk_3_@_RINvMsd_CsgjwxzEoLG5s_12polars_errorNtB6_11PolarsError8wrap_msgNCNCNCINvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB19_17PolarsObjectStore30exec_with_rebuild_retry_on_errNCNCNCNCNvMs4_B1b_B2a_16get_range_legacy0000NCNCB37_00NtNtCshK0ivY6saku_5bytes5bytes5BytesE000ECsfcROwRM8ZtH_11polars_plan:bb.a
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !11322
  %i.ec = load ptr, ptr %i.eb, align 8, !dbg !11322, !nonnull !2315, !noundef !2315
  call void @_RINvMsd_CsgjwxzEoLG5s_12polars_errorNtB6_11PolarsError8wrap_msgNCNCNCINvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB19_17PolarsObjectStore30exec_with_rebuild_retry_on_errNCNCNCNCNvMs4_B1b_B2a_16get_range_legacy0000NCNCB37_00NtNtCshK0ivY6saku_5bytes5bytes5BytesE000ECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.bc, ptr noundef nonnull align 8 %i.ec, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %2), !dbg !11323
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #50, !dbg !11324, !noalias !11111
  %i.ed = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 0, 337) 72, i64 noundef range(i64 1, 17) 8) #50, !dbg !11325, !noalias !11111 ; 4 uses
  %i.ee = icmp eq ptr %i.ed, null, !dbg !11326
  br i1 %i.ee, label %bb.v, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE3newCsfcROwRM8ZtH_11polars_plan.exit, !dbg !11327, !prof !2467

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #48
          to label %.noexc79 unwind label %bb.w, !dbg !11328

.noexc79:                                         ; preds = %bb.v
  unreachable, !dbg !11328

bb.w:                                             ; preds = %bb.v
  %i.ef = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.bc) #46
          to label %common.resume unwind label %bb.x, !dbg !11329

bb.x:                                             ; preds = %bb.w
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !11330
  unreachable, !dbg !11330

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE3newCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ed, ptr noundef nonnull align 8 dereferenceable(72) %i.bc, i64 72, i1 false), !dbg !11331
  store ptr %i.ed, ptr %i.bd, align 8, !dbg !11321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !dbg !11332
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !dbg !11333
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !11333
  invoke void @_RNvXs0_NtCsgZ49sUHp3tW_5alloc6borrowINtB5_3CoweENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ba, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eh)
          to label %bb.cd unwind label %bb.cc, !dbg !11333

bb.y:                                             ; preds = %bb.a
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !11334
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11113), !dbg !11335
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !11336, !noalias !11114
  %i.ej = tail call noundef i32 @_RNvMNtNtCsbm5zPlkZccl_4pyo38internal5stateNtB2_11AttachGuard6attach(), !dbg !11337, !noalias !11114
  store i32 %i.ej, ptr %i.x, align 4, !dbg !11337, !noalias !11114
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11115), !dbg !11338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !11339, !noalias !11114
  %i.ek = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsbm5zPlkZccl_4pyo33errNtB4_5PyErr5value(ptr noundef nonnull align 8 %i.ei)
          to label %.noexc.i unwind label %bb.bk, !dbg !11339, !noalias !11114 ; 3 uses

.noexc.i:                                         ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !11340, !noalias !11116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !11341, !noalias !11116
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods3str(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ek)
          to label %.noexc3.i unwind label %bb.bk, !dbg !11342, !noalias !11113

.noexc3.i:                                        ; preds = %.noexc.i
  %i.el = load i64, ptr %i.v, align 8, !dbg !11341, !range !2317, !noalias !11116, !noundef !2315
  %i.em = trunc nuw i64 %i.el to i1, !dbg !11343
  br i1 %i.em, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types6string8PyStringENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit16.i.i, label %bb.z, !dbg !11343

bb.z:                                             ; preds = %.noexc3.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !11344, !noalias !11116
  %i.en = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !11344
  %i.eo = load ptr, ptr %i.en, align 8, !dbg !11344, !noalias !11116, !nonnull !2315, !noundef !2315 ; 3 uses
  store ptr %i.eo, ptr %i.u, align 8, !dbg !11344, !noalias !11116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !11345, !noalias !11116
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types6stringINtNtB8_8instance5BoundNtB4_8PyStringENtB4_15PyStringMethods15to_string_lossy(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.u)
          to label %bb.ab unwind label %bb.aa, !dbg !11346, !noalias !11117

bb.aa:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i.i, %bb.z
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.ab:                                            ; preds = %bb.z
  %i.eq = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !11347
  %i.er = load ptr, ptr %i.eq, align 8, !dbg !11347, !noalias !11116, !nonnull !2315
  %i.es = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !11347
  %i.et = load i64, ptr %i.es, align 8, !dbg !11347, !noalias !11116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !11116
  store ptr %i.er, ptr %i.o, align 8, !noalias !11118
  %i.eu = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.et, ptr %i.eu, align 8, !noalias !11118
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !11348, !noalias !11118
  store ptr %i.o, ptr %i.n, align 8, !dbg !11348, !noalias !11118
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !11348
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !dbg !11348, !noalias !11118
  %i.ev = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !11348
  store ptr %2, ptr %i.ev, align 8, !dbg !11348, !noalias !11118
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !11348
  store ptr @_RNvXs1f_Cs8RKTHBS4OBx_12object_storeNtB6_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !dbg !11348, !noalias !11118
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noundef nonnull @202, ptr noundef nonnull %i.n)
          to label %bb.ad unwind label %bb.ac, !dbg !11349, !noalias !11117

bb.ac:                                            ; preds = %bb.ab
  %i.ew = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CoweEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.t) #46
          to label %.thread.i.i unwind label %bb.aj, !dbg !11350, !noalias !11117

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !11351, !noalias !11118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !11352, !noalias !11116
  %i.ex = load i64, ptr %i.t, align 8, !dbg !11353, !range !2367, !alias.scope !11119, !noalias !11116, !noundef !2315
  %i.ey = icmp eq i64 %i.ex, -9223372036854775808, !dbg !11353
  br i1 %i.ey, label %bb.ah, label %bb.ae, !dbg !11353

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i.i unwind label %bb.af, !dbg !11354, !noalias !11117

bb.af:                                            ; preds = %bb.ae
  %i.ez = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.thread.i.i unwind label %bb.ag, !dbg !11355, !noalias !11117

bb.ag:                                            ; preds = %bb.af
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !11354, !noalias !11117
  unreachable, !dbg !11354

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i.i: ; preds = %bb.ae
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.ah unwind label %bb.aa, !dbg !11356, !noalias !11117

bb.ah:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !11350, !noalias !11116
  call void @_Py_DecRef(ptr noundef nonnull %i.eo) #50, !dbg !11357, !noalias !11117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !11358, !noalias !11116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !11358, !noalias !11116
  br label %bb.ai, !dbg !11359

bb.ai:                                            ; preds = %.noexc5.i, %bb.ah
  %i.fb = invoke noundef nonnull ptr @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods8get_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ek)
          to label %bb.ak unwind label %bb.bj, !dbg !11360, !noalias !11117

bb.aj:                                            ; preds = %bb.bj, %.body24.i.i, %bb.ac
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !11361, !noalias !11117
  unreachable, !dbg !11361

.thread.i.i:                                      ; preds = %bb.af, %bb.ac, %bb.aa
  %.pn.i.i = phi { ptr, i32 } [ %i.ew, %bb.ac ], [ %i.ep, %bb.aa ], [ %i.ez, %bb.af ]
  call void @_Py_DecRef(ptr noundef nonnull %i.eo) #50, !dbg !11362, !noalias !11117
  br label %.body.i, !dbg !11358

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types6string8PyStringENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit16.i.i: ; preds = %.noexc3.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !11363
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.fd)
          to label %.noexc4.i unwind label %bb.bk, !dbg !11363, !noalias !11113

.noexc4.i:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types6string8PyStringENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit16.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !11358, !noalias !11116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !11116
  store ptr @163, ptr %i.m, align 8, !noalias !11120
  %i.fe = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 24, ptr %i.fe, align 8, !noalias !11120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !11364, !noalias !11120
  store ptr %i.m, ptr %i.l, align 8, !dbg !11364, !noalias !11120
  %.sroa.42.0..sroa_idx.i17.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !11364
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.42.0..sroa_idx.i17.i.i, align 8, !dbg !11364, !noalias !11120
  %i.ff = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !11364
  store ptr %2, ptr %i.ff, align 8, !dbg !11364, !noalias !11120
  %.sroa.46.0..sroa_idx.i18.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24, !dbg !11364
  store ptr @_RNvXs1f_Cs8RKTHBS4OBx_12object_storeNtB6_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i18.i.i, align 8, !dbg !11364, !noalias !11120
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noundef nonnull @202, ptr noundef nonnull %i.l)
          to label %.noexc5.i unwind label %bb.bk, !dbg !11365, !noalias !11113

.noexc5.i:                                        ; preds = %.noexc4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !11366, !noalias !11120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !11367, !noalias !11116
  br label %bb.ai, !dbg !11368

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !11369, !noalias !11116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !11370, !noalias !11116
  invoke void @_RINvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB6_10PyErrState14lazy_argumentsTNtNtCsgZ49sUHp3tW_5alloc6string6StringEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.p, ptr noundef nonnull %i.fb, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.w)
          to label %.noexc6.i unwind label %bb.bk, !dbg !11370, !noalias !11113

.noexc6.i:                                        ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.s, ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 64, i1 false), !dbg !11371, !noalias !11116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !11372, !noalias !11116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !11373, !noalias !11116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !11374, !noalias !11121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !11374, !noalias !11121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !11374, !noalias !11121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !11375, !noalias !11121
  %i.fg = getelementptr inbounds nuw i8, ptr %i.s, i64 56, !dbg !11376
  %i.fh = load atomic i32, ptr %i.fg acquire, align 8, !dbg !11377, !noalias !11121
  %i.fi = icmp eq i32 %i.fh, 0, !dbg !11378
  br i1 %i.fi, label %bb.al, label %bb.am, !dbg !11378, !prof !2318

bb.al:                                            ; preds = %.noexc6.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !11379
  %i.fk = load i64, ptr %i.fj, align 8, !dbg !11380, !range !2317, !noalias !11121, !noundef !2315
  %i.fl = trunc nuw i64 %i.fk to i1, !dbg !11381
  %i.fm = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !noalias !11116
  %.not.i.i.i.i = icmp ne ptr %i.fn, null
  %or.cond.not.i.i = select i1 %i.fl, i1 %.not.i.i.i.i, i1 false, !dbg !11381
  br i1 %or.cond.not.i.i, label %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i, label %bb.an, !dbg !11381, !prof !2582

bb.am:                                            ; preds = %.noexc6.i
  %i.fo = invoke noundef nonnull align 8 ptr @_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState15make_normalized(ptr noundef nonnull align 8 %i.s)
          to label %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i unwind label %bb.bd, !dbg !11382, !noalias !11117

bb.an:                                            ; preds = %bb.al
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @268, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @343) #45
          to label %.noexc20.i.i unwind label %bb.bd, !dbg !11383, !noalias !11117

.noexc20.i.i:                                     ; preds = %bb.an
  unreachable, !dbg !11383

_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i: ; preds = %bb.am, %bb.al
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.fm, %bb.al ], [ %i.fo, %bb.am ], !dbg !11384
  invoke void @_RNvMs1_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_20PyErrStateNormalized9clone_ref(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noundef nonnull align 8 %.sroa.0.0.i.i.i.i)
          to label %.noexc21.i.i unwind label %bb.bd, !dbg !11385, !noalias !11117

.noexc21.i.i:                                     ; preds = %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i
  invoke void @_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState10normalized(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.g)
          to label %.noexc22.i.i unwind label %bb.bd, !dbg !11386, !noalias !11117

.noexc22.i.i:                                     ; preds = %.noexc21.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !11387, !noalias !11121
  %i.fp = invoke noundef nonnull ptr @_RNvMs_NtCsbm5zPlkZccl_4pyo33errNtB4_5PyErr10into_value(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.i)
          to label %.noexc23.i.i unwind label %bb.bd, !dbg !11388, !noalias !11117 ; 3 uses

.noexc23.i.i:                                     ; preds = %.noexc22.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !11389, !noalias !11121
  store ptr %i.fp, ptr %i.j, align 8, !dbg !11390, !noalias !11121
  invoke void @_RINvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrReECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) @190, i64 noundef 14)
          to label %bb.ap unwind label %bb.ao, !dbg !11391, !noalias !11122

bb.ao:                                            ; preds = %.noexc23.i.i
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.ap:                                            ; preds = %.noexc23.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !11123), !dbg !11392
  %i.fr = load i64, ptr %i.k, align 8, !dbg !11393, !range !2317, !alias.scope !11123, !noalias !11124, !noundef !2315
  %i.fs = trunc nuw i64 %i.fr to i1, !dbg !11394
  br i1 %i.fs, label %bb.aq, label %bb.au, !dbg !11394, !prof !2368

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !11395, !noalias !11125
  %i.ft = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !11395
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.ft, i64 64, i1 false), !dbg !11395, !noalias !11124
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @317, i64 noundef 43, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @319, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #48
          to label %bb.as unwind label %bb.ar, !dbg !11396, !noalias !11126

bb.ar:                                            ; preds = %bb.aq
  %i.fu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e) #46
          to label %bb.bc unwind label %bb.at, !dbg !11397, !noalias !11126

bb.as:                                            ; preds = %bb.aq
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.fv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !11398, !noalias !11126
  unreachable, !dbg !11398

bb.au:                                            ; preds = %bb.ap
  %i.fw = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !11399
  %i.fx = load ptr, ptr %i.fw, align 8, !dbg !11399, !alias.scope !11123, !noalias !11124, !nonnull !2315, !noundef !2315 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !11400, !noalias !11121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !11401, !noalias !11121
  invoke void @_RINvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrReECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ek, ptr noalias noundef nonnull readonly captures(address, read_provenance) @192, i64 noundef 13)
          to label %bb.aw unwind label %bb.av, !dbg !11402, !noalias !11122

bb.av:                                            ; preds = %bb.bb, %bb.au
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i, !dbg !11403

.body.i.i.i:                                      ; preds = %bb.ay, %bb.av
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.fy, %bb.av ], [ %i.gc, %bb.ay ]
  call void @_Py_DecRef(ptr noundef nonnull %i.fx) #50, !dbg !11404, !noalias !11122
  br label %bb.bc, !dbg !11405

bb.aw:                                            ; preds = %bb.au
  call void @llvm.experimental.noalias.scope.decl(metadata !11127), !dbg !11406
  %i.fz = load i64, ptr %i.h, align 8, !dbg !11407, !range !2317, !alias.scope !11127, !noalias !11128, !noundef !2315
  %i.ga = trunc nuw i64 %i.fz to i1, !dbg !11408
  br i1 %i.ga, label %bb.ax, label %bb.bb, !dbg !11408, !prof !2368

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !11409, !noalias !11129
  %i.gb = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !11409
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.gb, i64 64, i1 false), !dbg !11409, !noalias !11128
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @317, i64 noundef 43, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @319, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @193) #48
          to label %bb.az unwind label %bb.ay, !dbg !11410, !noalias !11130

bb.ay:                                            ; preds = %bb.ax
  %i.gc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.f) #46
          to label %.body.i.i.i unwind label %bb.ba, !dbg !11411, !noalias !11130

bb.az:                                            ; preds = %bb.ax
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.gd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !11412, !noalias !11130
  unreachable, !dbg !11412

bb.bb:                                            ; preds = %bb.aw
  %i.ge = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !11413
  %i.gf = load ptr, ptr %i.ge, align 8, !dbg !11413, !alias.scope !11127, !noalias !11128, !nonnull !2315, !noundef !2315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !11414, !noalias !11121
  invoke void @_RNvXsj_NtNtCsbm5zPlkZccl_4pyo35types5tupleTINtNtB9_8instance5BoundNtNtB7_3any5PyAnyEENtNtB9_4call10PyCallArgs15call_positionalCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.q, ptr noundef nonnull %i.gf, ptr noundef nonnull %i.fx)
          to label %bb.be unwind label %bb.av, !dbg !11415, !noalias !11131

bb.bc:                                            ; preds = %.body.i.i.i, %bb.ar, %bb.ao
  %.pn.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.fq, %bb.ao ], [ %i.fu, %bb.ar ]
  call void @_Py_DecRef(ptr noundef nonnull %i.fp) #50, !dbg !11416, !noalias !11122
  br label %.body24.i.i, !dbg !11417

.body24.i.i:                                      ; preds = %bb.bg, %bb.bd, %bb.bc
  %.pn10.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %bb.bc ], [ %i.gl, %bb.bg ], [ %i.gg, %bb.bd ]
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.s) #46
          to label %.body.i unwind label %bb.aj, !dbg !11418, !noalias !11117

bb.bd:                                            ; preds = %bb.bi, %.noexc22.i.i, %.noexc21.i.i, %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i, %bb.an, %bb.am
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %.body24.i.i

bb.be:                                            ; preds = %bb.bb
  call void @_Py_DecRef(ptr noundef nonnull %i.fx) #50, !dbg !11419, !noalias !11122
  call void @_Py_DecRef(ptr noundef nonnull %i.fp) #50, !dbg !11420, !noalias !11122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !11403, !noalias !11121
  %i.gh = load i64, ptr %i.q, align 8, !dbg !11373, !range !2317, !noalias !11116, !noundef !2315
  %i.gi = trunc nuw i64 %i.gh to i1, !dbg !11421
  %i.gj = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !11422 ; 2 uses
  br i1 %i.gi, label %bb.bi, label %bb.bf, !dbg !11421

bb.bf:                                            ; preds = %bb.be
  %i.gk = load ptr, ptr %i.gj, align 8, !dbg !11423, !noalias !11116, !nonnull !2315, !noundef !2315
  invoke void @_RNvMs_NtCsbm5zPlkZccl_4pyo33errNtB4_5PyErr10from_value(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.r, ptr noundef nonnull %i.gk)
          to label %bb.bh unwind label %bb.bg, !dbg !11424, !noalias !11117

bb.bg:                                            ; preds = %bb.bf
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %.body24.i.i, !dbg !11425

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !11425, !noalias !11116
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11426
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.gm, ptr noundef nonnull align 8 dereferenceable(64) %i.r, i64 64, i1 false), !dbg !11426, !noalias !11132
  store i64 17, ptr %0, align 8, !dbg !11426, !alias.scope !11117, !noalias !11132
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.s)
          to label %_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCINvMsd_CsgjwxzEoLG5s_12polars_errorNtBZ_11PolarsError8wrap_msgNCNCNCINvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB22_17PolarsObjectStore30exec_with_rebuild_retry_on_errNCNCNCNCNvMs4_B24_B33_16get_range_legacy0000NCNCB40_00NtNtCshK0ivY6saku_5bytes5bytes5BytesE000E0B1r_ECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.bk, !dbg !11418, !noalias !11113

bb.bi:                                            ; preds = %bb.be
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.gj)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit30.i.i unwind label %bb.bd, !dbg !11427, !noalias !11117

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit30.i.i: ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !11425, !noalias !11116
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11426
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.gn, ptr noundef nonnull align 8 dereferenceable(64) %i.s, i64 64, i1 false), !dbg !11426, !noalias !11132
  store i64 17, ptr %0, align 8, !dbg !11426, !alias.scope !11117, !noalias !11132
  br label %_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCINvMsd_CsgjwxzEoLG5s_12polars_errorNtBZ_11PolarsError8wrap_msgNCNCNCINvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB22_17PolarsObjectStore30exec_with_rebuild_retry_on_errNCNCNCNCNvMs4_B24_B33_16get_range_legacy0000NCNCB40_00NtNtCshK0ivY6saku_5bytes5bytes5BytesE000E0B1r_ECsfcROwRM8ZtH_11polars_plan.exit, !dbg !11418

bb.bj:                                            ; preds = %bb.ai
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w) #46
          to label %.body.i unwind label %bb.aj, !dbg !11428, !noalias !11117

bb.bk:                                            ; preds = %bb.bh, %bb.ak, %.noexc4.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types6string8PyStringENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit16.i.i, %.noexc.i, %bb.y
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !11429

.body.i:                                          ; preds = %bb.bk, %bb.bj, %.body24.i.i, %.thread.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.go, %bb.bk ], [ %lpad.thr_comm.split-lp.i.i, %bb.bj ], [ %.pn10.i.i, %.body24.i.i ], [ %.pn.i.i, %.thread.i.i ]
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.x)
          to label %common.resume unwind label %bb.bl, !dbg !11430, !noalias !11113

bb.bl:                                            ; preds = %.body.i
  %i.gp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !11431, !noalias !11113
  unreachable, !dbg !11431

_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCINvMsd_CsgjwxzEoLG5s_12polars_errorNtBZ_11PolarsError8wrap_msgNCNCNCINvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB22_17PolarsObjectStore30exec_with_rebuild_retry_on_errNCNCNCNCNvMs4_B24_B33_16get_range_legacy0000NCNCB40_00NtNtCshK0ivY6saku_5bytes5bytes5BytesE000E0B1r_ECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.bh, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit30.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !11418, !noalias !11116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !11428, !noalias !11116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !11432, !noalias !11114
  call void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.x), !dbg !11433, !noalias !11113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !11429, !noalias !11114
end_hunk_3
begin_hunk_4_@_RINvMsd_CsgjwxzEoLG5s_12polars_errorNtB6_11PolarsError8wrap_msgNCNCNCINvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB19_17PolarsObjectStore30exec_with_rebuild_retry_on_errNCNCNCNCNvMs4_B1b_B2a_16get_range_legacy0000NCNCB37_00NtNtCshK0ivY6saku_5bytes5bytes5BytesE0s_00ECsfcROwRM8ZtH_11polars_plan:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !dbg !12085
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !12085
  invoke void @_RNvXs0_NtCsgZ49sUHp3tW_5alloc6borrowINtB5_3CoweENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dm)
          to label %bb.cb unwind label %bb.ca, !dbg !12085

bb.u:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !dbg !12086
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !dbg !12087
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12087
  %i.do = load ptr, ptr %i.dn, align 8, !dbg !12087, !nonnull !2315, !noundef !2315
  call void @_RINvMsd_CsgjwxzEoLG5s_12polars_errorNtB6_11PolarsError8wrap_msgNCNCNCINvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB19_17PolarsObjectStore30exec_with_rebuild_retry_on_errNCNCNCNCNvMs4_B1b_B2a_16get_range_legacy0000NCNCB37_00NtNtCshK0ivY6saku_5bytes5bytes5BytesE0s_00ECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.bc, ptr noundef nonnull align 8 %i.do), !dbg !12088
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #50, !dbg !12089, !noalias !11880
  %i.dp = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 0, 337) 72, i64 noundef range(i64 1, 17) 8) #50, !dbg !12090, !noalias !11880 ; 4 uses
  %i.dq = icmp eq ptr %i.dp, null, !dbg !12091
  br i1 %i.dq, label %bb.v, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE3newCsfcROwRM8ZtH_11polars_plan.exit, !dbg !12092, !prof !2467

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #48
          to label %.noexc66 unwind label %bb.w, !dbg !12093

.noexc66:                                         ; preds = %bb.v
  unreachable, !dbg !12093

bb.w:                                             ; preds = %bb.v
  %i.dr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.bc) #46
          to label %common.resume unwind label %bb.x, !dbg !12094

bb.x:                                             ; preds = %bb.w
  %i.ds = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !12095
  unreachable, !dbg !12095

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE3newCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dp, ptr noundef nonnull align 8 dereferenceable(72) %i.bc, i64 72, i1 false), !dbg !12096
  store ptr %i.dp, ptr %i.bd, align 8, !dbg !12086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !dbg !12097
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !dbg !12098
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !12098
  invoke void @_RNvXs0_NtCsgZ49sUHp3tW_5alloc6borrowINtB5_3CoweENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ba, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dt)
          to label %bb.cd unwind label %bb.cc, !dbg !12098

bb.y:                                             ; preds = %bb.a
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12099
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11882), !dbg !12100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !12101, !noalias !11882
  %i.dv = tail call noundef i32 @_RNvMNtNtCsbm5zPlkZccl_4pyo38internal5stateNtB2_11AttachGuard6attach(), !dbg !12102, !noalias !11882
  store i32 %i.dv, ptr %i.x, align 4, !dbg !12102, !noalias !11882
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11883), !dbg !12103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !12104, !noalias !11882
  %i.dw = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsbm5zPlkZccl_4pyo33errNtB4_5PyErr5value(ptr noundef nonnull align 8 %i.du)
          to label %.noexc.i unwind label %bb.bk, !dbg !12104, !noalias !11882 ; 3 uses

.noexc.i:                                         ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !12105, !noalias !11884
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !12106, !noalias !11884
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods3str(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dw)
          to label %.noexc3.i unwind label %bb.bk, !dbg !12107, !noalias !11882

.noexc3.i:                                        ; preds = %.noexc.i
  %i.dx = load i64, ptr %i.v, align 8, !dbg !12106, !range !2317, !noalias !11884, !noundef !2315
  %i.dy = trunc nuw i64 %i.dx to i1, !dbg !12108
  br i1 %i.dy, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types6string8PyStringENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit15.i.i, label %bb.z, !dbg !12108

bb.z:                                             ; preds = %.noexc3.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !12109, !noalias !11884
  %i.dz = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !12109
  %i.ea = load ptr, ptr %i.dz, align 8, !dbg !12109, !noalias !11884, !nonnull !2315, !noundef !2315 ; 3 uses
  store ptr %i.ea, ptr %i.u, align 8, !dbg !12109, !noalias !11884
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !12110, !noalias !11884
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types6stringINtNtB8_8instance5BoundNtB4_8PyStringENtB4_15PyStringMethods15to_string_lossy(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.u)
          to label %bb.ab unwind label %bb.aa, !dbg !12111, !noalias !11884

bb.aa:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i.i, %bb.z
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.ab:                                            ; preds = %bb.z
  %i.ec = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !12112
  %i.ed = load ptr, ptr %i.ec, align 8, !dbg !12112, !noalias !11884, !nonnull !2315
  %i.ee = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !12112
  %i.ef = load i64, ptr %i.ee, align 8, !dbg !12112, !noalias !11884
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !11884
  store ptr %i.ed, ptr %i.o, align 8, !noalias !11885
  %i.eg = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.ef, ptr %i.eg, align 8, !noalias !11885
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !12113, !noalias !11885
  store ptr %i.o, ptr %i.n, align 8, !dbg !12113, !noalias !11885
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !12113
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !dbg !12113, !noalias !11885
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noundef nonnull @203, ptr noundef nonnull %i.n)
          to label %bb.ad unwind label %bb.ac, !dbg !12114, !noalias !11884

bb.ac:                                            ; preds = %bb.ab
  %i.eh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CoweEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.t) #46
          to label %.thread.i.i unwind label %bb.aj, !dbg !12115, !noalias !11884

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !12116, !noalias !11885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !12117, !noalias !11884
  %i.ei = load i64, ptr %i.t, align 8, !dbg !12118, !range !2367, !alias.scope !11886, !noalias !11884, !noundef !2315
  %i.ej = icmp eq i64 %i.ei, -9223372036854775808, !dbg !12118
  br i1 %i.ej, label %bb.ah, label %bb.ae, !dbg !12118

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i.i unwind label %bb.af, !dbg !12119, !noalias !11884

bb.af:                                            ; preds = %bb.ae
  %i.ek = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.thread.i.i unwind label %bb.ag, !dbg !12120, !noalias !11884

bb.ag:                                            ; preds = %bb.af
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !12119, !noalias !11884
  unreachable, !dbg !12119

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i.i: ; preds = %bb.ae
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.ah unwind label %bb.aa, !dbg !12121, !noalias !11884

bb.ah:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !12115, !noalias !11884
  call void @_Py_DecRef(ptr noundef nonnull %i.ea) #50, !dbg !12122, !noalias !11884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !12123, !noalias !11884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !12123, !noalias !11884
  br label %bb.ai, !dbg !12124

bb.ai:                                            ; preds = %.noexc5.i, %bb.ah
  %i.em = invoke noundef nonnull ptr @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods8get_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dw)
          to label %bb.ak unwind label %bb.bj, !dbg !12125, !noalias !11884

bb.aj:                                            ; preds = %bb.bj, %.body22.i.i, %bb.ac
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !12126, !noalias !11884
  unreachable, !dbg !12126

.thread.i.i:                                      ; preds = %bb.af, %bb.ac, %bb.aa
  %.pn.i.i = phi { ptr, i32 } [ %i.eh, %bb.ac ], [ %i.eb, %bb.aa ], [ %i.ek, %bb.af ]
  call void @_Py_DecRef(ptr noundef nonnull %i.ea) #50, !dbg !12127, !noalias !11884
  br label %.body.i, !dbg !12123

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types6string8PyStringENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit15.i.i: ; preds = %.noexc3.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !12128
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.eo)
          to label %.noexc4.i unwind label %bb.bk, !dbg !12128, !noalias !11882

.noexc4.i:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types6string8PyStringENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit15.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !12123, !noalias !11884
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !11884
  store ptr @163, ptr %i.m, align 8, !noalias !11887
  %i.ep = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 24, ptr %i.ep, align 8, !noalias !11887
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !12129, !noalias !11887
  store ptr %i.m, ptr %i.l, align 8, !dbg !12129, !noalias !11887
  %.sroa.42.0..sroa_idx.i16.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !12129
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.42.0..sroa_idx.i16.i.i, align 8, !dbg !12129, !noalias !11887
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noundef nonnull @203, ptr noundef nonnull %i.l)
          to label %.noexc5.i unwind label %bb.bk, !dbg !12130, !noalias !11882

.noexc5.i:                                        ; preds = %.noexc4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !12131, !noalias !11887
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !12132, !noalias !11884
  br label %bb.ai, !dbg !12133

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !12134, !noalias !11884
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !12135, !noalias !11884
  invoke void @_RINvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB6_10PyErrState14lazy_argumentsTNtNtCsgZ49sUHp3tW_5alloc6string6StringEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.p, ptr noundef nonnull %i.em, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.w)
          to label %.noexc6.i unwind label %bb.bk, !dbg !12135, !noalias !11882

.noexc6.i:                                        ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.s, ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 64, i1 false), !dbg !12136, !noalias !11884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !12137, !noalias !11884
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !12138, !noalias !11884
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !12139, !noalias !11888
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !12139, !noalias !11888
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !12139, !noalias !11888
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !12140, !noalias !11888
  %i.eq = getelementptr inbounds nuw i8, ptr %i.s, i64 56, !dbg !12141
  %i.er = load atomic i32, ptr %i.eq acquire, align 8, !dbg !12142, !noalias !11888
  %i.es = icmp eq i32 %i.er, 0, !dbg !12143
  br i1 %i.es, label %bb.al, label %bb.am, !dbg !12143, !prof !2318

bb.al:                                            ; preds = %.noexc6.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !12144
  %i.eu = load i64, ptr %i.et, align 8, !dbg !12145, !range !2317, !noalias !11888, !noundef !2315
  %i.ev = trunc nuw i64 %i.eu to i1, !dbg !12146
  %i.ew = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !noalias !11884
  %.not.i.i.i.i = icmp ne ptr %i.ex, null
  %or.cond.not.i.i = select i1 %i.ev, i1 %.not.i.i.i.i, i1 false, !dbg !12146
  br i1 %or.cond.not.i.i, label %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i, label %bb.an, !dbg !12146, !prof !2582

bb.am:                                            ; preds = %.noexc6.i
  %i.ey = invoke noundef nonnull align 8 ptr @_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState15make_normalized(ptr noundef nonnull align 8 %i.s)
          to label %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i unwind label %bb.bd, !dbg !12147, !noalias !11884

bb.an:                                            ; preds = %bb.al
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @268, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @343) #45
          to label %.noexc18.i.i unwind label %bb.bd, !dbg !12148, !noalias !11884

.noexc18.i.i:                                     ; preds = %bb.an
  unreachable, !dbg !12148

_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i: ; preds = %bb.am, %bb.al
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ew, %bb.al ], [ %i.ey, %bb.am ], !dbg !12149
  invoke void @_RNvMs1_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_20PyErrStateNormalized9clone_ref(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noundef nonnull align 8 %.sroa.0.0.i.i.i.i)
          to label %.noexc19.i.i unwind label %bb.bd, !dbg !12150, !noalias !11884

.noexc19.i.i:                                     ; preds = %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i
  invoke void @_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState10normalized(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.g)
          to label %.noexc20.i.i unwind label %bb.bd, !dbg !12151, !noalias !11884

.noexc20.i.i:                                     ; preds = %.noexc19.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !12152, !noalias !11888
  %i.ez = invoke noundef nonnull ptr @_RNvMs_NtCsbm5zPlkZccl_4pyo33errNtB4_5PyErr10into_value(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.i)
          to label %.noexc21.i.i unwind label %bb.bd, !dbg !12153, !noalias !11884 ; 3 uses

.noexc21.i.i:                                     ; preds = %.noexc20.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !12154, !noalias !11888
  store ptr %i.ez, ptr %i.j, align 8, !dbg !12155, !noalias !11888
  invoke void @_RINvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrReECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) @190, i64 noundef 14)
          to label %bb.ap unwind label %bb.ao, !dbg !12156, !noalias !11888

bb.ao:                                            ; preds = %.noexc21.i.i
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.ap:                                            ; preds = %.noexc21.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !11889), !dbg !12157
  %i.fb = load i64, ptr %i.k, align 8, !dbg !12158, !range !2317, !alias.scope !11889, !noalias !11890, !noundef !2315
  %i.fc = trunc nuw i64 %i.fb to i1, !dbg !12159
  br i1 %i.fc, label %bb.aq, label %bb.au, !dbg !12159, !prof !2368

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !12160, !noalias !11891
  %i.fd = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !12160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.fd, i64 64, i1 false), !dbg !12160, !noalias !11890
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @317, i64 noundef 43, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @319, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #48
          to label %bb.as unwind label %bb.ar, !dbg !12161, !noalias !11892

bb.ar:                                            ; preds = %bb.aq
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e) #46
          to label %bb.bc unwind label %bb.at, !dbg !12162, !noalias !11892

bb.as:                                            ; preds = %bb.aq
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !12163, !noalias !11892
  unreachable, !dbg !12163

bb.au:                                            ; preds = %bb.ap
  %i.fg = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !12164
  %i.fh = load ptr, ptr %i.fg, align 8, !dbg !12164, !alias.scope !11889, !noalias !11890, !nonnull !2315, !noundef !2315 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !12165, !noalias !11888
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !12166, !noalias !11888
  invoke void @_RINvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrReECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @192, i64 noundef 13)
          to label %bb.aw unwind label %bb.av, !dbg !12167, !noalias !11888

bb.av:                                            ; preds = %bb.bb, %bb.au
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i, !dbg !12168

.body.i.i.i:                                      ; preds = %bb.ay, %bb.av
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.fi, %bb.av ], [ %i.fm, %bb.ay ]
  call void @_Py_DecRef(ptr noundef nonnull %i.fh) #50, !dbg !12169, !noalias !11888
  br label %bb.bc, !dbg !12170

bb.aw:                                            ; preds = %bb.au
  call void @llvm.experimental.noalias.scope.decl(metadata !11893), !dbg !12171
  %i.fj = load i64, ptr %i.h, align 8, !dbg !12172, !range !2317, !alias.scope !11893, !noalias !11894, !noundef !2315
  %i.fk = trunc nuw i64 %i.fj to i1, !dbg !12173
  br i1 %i.fk, label %bb.ax, label %bb.bb, !dbg !12173, !prof !2368

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !12174, !noalias !11895
  %i.fl = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !12174
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.fl, i64 64, i1 false), !dbg !12174, !noalias !11894
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @317, i64 noundef 43, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @319, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @193) #48
          to label %bb.az unwind label %bb.ay, !dbg !12175, !noalias !11896

bb.ay:                                            ; preds = %bb.ax
  %i.fm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.f) #46
          to label %.body.i.i.i unwind label %bb.ba, !dbg !12176, !noalias !11896

bb.az:                                            ; preds = %bb.ax
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.fn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !12177, !noalias !11896
  unreachable, !dbg !12177

bb.bb:                                            ; preds = %bb.aw
  %i.fo = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !12178
  %i.fp = load ptr, ptr %i.fo, align 8, !dbg !12178, !alias.scope !11893, !noalias !11894, !nonnull !2315, !noundef !2315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !12179, !noalias !11888
  invoke void @_RNvXsj_NtNtCsbm5zPlkZccl_4pyo35types5tupleTINtNtB9_8instance5BoundNtNtB7_3any5PyAnyEENtNtB9_4call10PyCallArgs15call_positionalCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.q, ptr noundef nonnull %i.fp, ptr noundef nonnull %i.fh)
          to label %bb.be unwind label %bb.av, !dbg !12180, !noalias !11897

bb.bc:                                            ; preds = %.body.i.i.i, %bb.ar, %bb.ao
  %.pn.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.fa, %bb.ao ], [ %i.fe, %bb.ar ]
  call void @_Py_DecRef(ptr noundef nonnull %i.ez) #50, !dbg !12181, !noalias !11888
  br label %.body22.i.i, !dbg !12182

.body22.i.i:                                      ; preds = %bb.bg, %bb.bd, %bb.bc
  %.pn9.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %bb.bc ], [ %i.fv, %bb.bg ], [ %i.fq, %bb.bd ]
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.s) #46
          to label %.body.i unwind label %bb.aj, !dbg !12183, !noalias !11884

bb.bd:                                            ; preds = %bb.bi, %.noexc20.i.i, %.noexc19.i.i, %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i, %bb.an, %bb.am
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %.body22.i.i

bb.be:                                            ; preds = %bb.bb
  call void @_Py_DecRef(ptr noundef nonnull %i.fh) #50, !dbg !12184, !noalias !11888
  call void @_Py_DecRef(ptr noundef nonnull %i.ez) #50, !dbg !12185, !noalias !11888
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !12168, !noalias !11888
  %i.fr = load i64, ptr %i.q, align 8, !dbg !12138, !range !2317, !noalias !11884, !noundef !2315
  %i.fs = trunc nuw i64 %i.fr to i1, !dbg !12186
  %i.ft = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !12187 ; 2 uses
  br i1 %i.fs, label %bb.bi, label %bb.bf, !dbg !12186

bb.bf:                                            ; preds = %bb.be
  %i.fu = load ptr, ptr %i.ft, align 8, !dbg !12188, !noalias !11884, !nonnull !2315, !noundef !2315
  invoke void @_RNvMs_NtCsbm5zPlkZccl_4pyo33errNtB4_5PyErr10from_value(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.r, ptr noundef nonnull %i.fu)
          to label %bb.bh unwind label %bb.bg, !dbg !12189, !noalias !11884

bb.bg:                                            ; preds = %bb.bf
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %.body22.i.i, !dbg !12190

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !12190, !noalias !11884
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12191
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fw, ptr noundef nonnull align 8 dereferenceable(64) %i.r, i64 64, i1 false), !dbg !12191
  store i64 17, ptr %0, align 8, !dbg !12191, !alias.scope !11884
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.s)
          to label %_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCINvMsd_CsgjwxzEoLG5s_12polars_errorNtBZ_11PolarsError8wrap_msgNCNCNCINvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB22_17PolarsObjectStore30exec_with_rebuild_retry_on_errNCNCNCNCNvMs4_B24_B33_16get_range_legacy0000NCNCB40_00NtNtCshK0ivY6saku_5bytes5bytes5BytesE0s_00E0B1r_ECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.bk, !dbg !12183, !noalias !11882

bb.bi:                                            ; preds = %bb.be
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.ft)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit28.i.i unwind label %bb.bd, !dbg !12192, !noalias !11884

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit28.i.i: ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !12190, !noalias !11884
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12191
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fx, ptr noundef nonnull align 8 dereferenceable(64) %i.s, i64 64, i1 false), !dbg !12191
  store i64 17, ptr %0, align 8, !dbg !12191, !alias.scope !11884
  br label %_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCINvMsd_CsgjwxzEoLG5s_12polars_errorNtBZ_11PolarsError8wrap_msgNCNCNCINvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB22_17PolarsObjectStore30exec_with_rebuild_retry_on_errNCNCNCNCNvMs4_B24_B33_16get_range_legacy0000NCNCB40_00NtNtCshK0ivY6saku_5bytes5bytes5BytesE0s_00E0B1r_ECsfcROwRM8ZtH_11polars_plan.exit, !dbg !12183

bb.bj:                                            ; preds = %bb.ai
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w) #46
          to label %.body.i unwind label %bb.aj, !dbg !12193, !noalias !11884

bb.bk:                                            ; preds = %bb.bh, %bb.ak, %.noexc4.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types6string8PyStringENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit15.i.i, %.noexc.i, %bb.y
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !12194

.body.i:                                          ; preds = %bb.bk, %bb.bj, %.body22.i.i, %.thread.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.fy, %bb.bk ], [ %lpad.thr_comm.split-lp.i.i, %bb.bj ], [ %.pn9.i.i, %.body22.i.i ], [ %.pn.i.i, %.thread.i.i ]
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.x)
          to label %common.resume unwind label %bb.bl, !dbg !12195, !noalias !11882

bb.bl:                                            ; preds = %.body.i
  %i.fz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !12196, !noalias !11882
  unreachable, !dbg !12196

_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCINvMsd_CsgjwxzEoLG5s_12polars_errorNtBZ_11PolarsError8wrap_msgNCNCNCINvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB22_17PolarsObjectStore30exec_with_rebuild_retry_on_errNCNCNCNCNvMs4_B24_B33_16get_range_legacy0000NCNCB40_00NtNtCshK0ivY6saku_5bytes5bytes5BytesE0s_00E0B1r_ECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.bh, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit28.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !12183, !noalias !11884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !12193, !noalias !11884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !12197, !noalias !11882
  call void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.x), !dbg !12198, !noalias !11882
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !12194, !noalias !11882
end_hunk_4
begin_hunk_5_@_RINvMsd_CsgjwxzEoLG5s_12polars_errorNtB6_11PolarsError8wrap_msgNCNCNCINvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB19_17PolarsObjectStore30exec_with_rebuild_retry_on_errNCNCNCNvMs4_B1b_B2a_4head000NCNCB37_00NtCs8RKTHBS4OBx_12object_store10ObjectMetaE000ECsfcROwRM8ZtH_11polars_plan:bb.a
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12876
  %i.ec = load ptr, ptr %i.eb, align 8, !dbg !12876, !nonnull !2315, !noundef !2315
  call void @_RINvMsd_CsgjwxzEoLG5s_12polars_errorNtB6_11PolarsError8wrap_msgNCNCNCINvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB19_17PolarsObjectStore30exec_with_rebuild_retry_on_errNCNCNCNvMs4_B1b_B2a_4head000NCNCB37_00NtCs8RKTHBS4OBx_12object_store10ObjectMetaE000ECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.bc, ptr noundef nonnull align 8 %i.ec, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %2), !dbg !12877
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #50, !dbg !12878, !noalias !12665
  %i.ed = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 0, 337) 72, i64 noundef range(i64 1, 17) 8) #50, !dbg !12879, !noalias !12665 ; 4 uses
  %i.ee = icmp eq ptr %i.ed, null, !dbg !12880
  br i1 %i.ee, label %bb.v, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE3newCsfcROwRM8ZtH_11polars_plan.exit, !dbg !12881, !prof !2467

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #48
          to label %.noexc79 unwind label %bb.w, !dbg !12882

.noexc79:                                         ; preds = %bb.v
  unreachable, !dbg !12882

bb.w:                                             ; preds = %bb.v
  %i.ef = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.bc) #46
          to label %common.resume unwind label %bb.x, !dbg !12883

bb.x:                                             ; preds = %bb.w
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !12884
  unreachable, !dbg !12884

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE3newCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ed, ptr noundef nonnull align 8 dereferenceable(72) %i.bc, i64 72, i1 false), !dbg !12885
  store ptr %i.ed, ptr %i.bd, align 8, !dbg !12875
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !dbg !12886
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !dbg !12887
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !12887
  invoke void @_RNvXs0_NtCsgZ49sUHp3tW_5alloc6borrowINtB5_3CoweENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ba, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eh)
          to label %bb.cd unwind label %bb.cc, !dbg !12887

bb.y:                                             ; preds = %bb.a
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12888
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12667), !dbg !12889
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !12890, !noalias !12668
  %i.ej = tail call noundef i32 @_RNvMNtNtCsbm5zPlkZccl_4pyo38internal5stateNtB2_11AttachGuard6attach(), !dbg !12891, !noalias !12668
  store i32 %i.ej, ptr %i.x, align 4, !dbg !12891, !noalias !12668
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12669), !dbg !12892
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !12893, !noalias !12668
  %i.ek = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsbm5zPlkZccl_4pyo33errNtB4_5PyErr5value(ptr noundef nonnull align 8 %i.ei)
          to label %.noexc.i unwind label %bb.bk, !dbg !12893, !noalias !12668 ; 3 uses

.noexc.i:                                         ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !12894, !noalias !12670
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !12895, !noalias !12670
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods3str(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ek)
          to label %.noexc3.i unwind label %bb.bk, !dbg !12896, !noalias !12667

.noexc3.i:                                        ; preds = %.noexc.i
  %i.el = load i64, ptr %i.v, align 8, !dbg !12895, !range !2317, !noalias !12670, !noundef !2315
  %i.em = trunc nuw i64 %i.el to i1, !dbg !12897
  br i1 %i.em, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types6string8PyStringENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit16.i.i, label %bb.z, !dbg !12897

bb.z:                                             ; preds = %.noexc3.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !12898, !noalias !12670
  %i.en = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !12898
  %i.eo = load ptr, ptr %i.en, align 8, !dbg !12898, !noalias !12670, !nonnull !2315, !noundef !2315 ; 3 uses
  store ptr %i.eo, ptr %i.u, align 8, !dbg !12898, !noalias !12670
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !12899, !noalias !12670
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types6stringINtNtB8_8instance5BoundNtB4_8PyStringENtB4_15PyStringMethods15to_string_lossy(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.u)
          to label %bb.ab unwind label %bb.aa, !dbg !12900, !noalias !12671

bb.aa:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i.i, %bb.z
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.ab:                                            ; preds = %bb.z
  %i.eq = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !12901
  %i.er = load ptr, ptr %i.eq, align 8, !dbg !12901, !noalias !12670, !nonnull !2315
  %i.es = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !12901
  %i.et = load i64, ptr %i.es, align 8, !dbg !12901, !noalias !12670
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !12670
  store ptr %i.er, ptr %i.o, align 8, !noalias !12672
  %i.eu = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.et, ptr %i.eu, align 8, !noalias !12672
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !12902, !noalias !12672
  store ptr %i.o, ptr %i.n, align 8, !dbg !12902, !noalias !12672
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !12902
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !dbg !12902, !noalias !12672
  %i.ev = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !12902
  store ptr %2, ptr %i.ev, align 8, !dbg !12902, !noalias !12672
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !12902
  store ptr @_RNvXs1f_Cs8RKTHBS4OBx_12object_storeNtB6_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !dbg !12902, !noalias !12672
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noundef nonnull @202, ptr noundef nonnull %i.n)
          to label %bb.ad unwind label %bb.ac, !dbg !12903, !noalias !12671

bb.ac:                                            ; preds = %bb.ab
  %i.ew = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CoweEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.t) #46
          to label %.thread.i.i unwind label %bb.aj, !dbg !12904, !noalias !12671

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !12905, !noalias !12672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !12906, !noalias !12670
  %i.ex = load i64, ptr %i.t, align 8, !dbg !12907, !range !2367, !alias.scope !12673, !noalias !12670, !noundef !2315
  %i.ey = icmp eq i64 %i.ex, -9223372036854775808, !dbg !12907
  br i1 %i.ey, label %bb.ah, label %bb.ae, !dbg !12907

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i.i unwind label %bb.af, !dbg !12908, !noalias !12671

bb.af:                                            ; preds = %bb.ae
  %i.ez = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.thread.i.i unwind label %bb.ag, !dbg !12909, !noalias !12671

bb.ag:                                            ; preds = %bb.af
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !12908, !noalias !12671
  unreachable, !dbg !12908

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i.i: ; preds = %bb.ae
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.ah unwind label %bb.aa, !dbg !12910, !noalias !12671

bb.ah:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !12904, !noalias !12670
  call void @_Py_DecRef(ptr noundef nonnull %i.eo) #50, !dbg !12911, !noalias !12671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !12912, !noalias !12670
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !12912, !noalias !12670
  br label %bb.ai, !dbg !12913

bb.ai:                                            ; preds = %.noexc5.i, %bb.ah
  %i.fb = invoke noundef nonnull ptr @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods8get_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ek)
          to label %bb.ak unwind label %bb.bj, !dbg !12914, !noalias !12671

bb.aj:                                            ; preds = %bb.bj, %.body24.i.i, %bb.ac
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !12915, !noalias !12671
  unreachable, !dbg !12915

.thread.i.i:                                      ; preds = %bb.af, %bb.ac, %bb.aa
  %.pn.i.i = phi { ptr, i32 } [ %i.ew, %bb.ac ], [ %i.ep, %bb.aa ], [ %i.ez, %bb.af ]
  call void @_Py_DecRef(ptr noundef nonnull %i.eo) #50, !dbg !12916, !noalias !12671
  br label %.body.i, !dbg !12912

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types6string8PyStringENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit16.i.i: ; preds = %.noexc3.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !12917
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.fd)
          to label %.noexc4.i unwind label %bb.bk, !dbg !12917, !noalias !12667

.noexc4.i:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types6string8PyStringENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit16.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !12912, !noalias !12670
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !12670
  store ptr @163, ptr %i.m, align 8, !noalias !12674
  %i.fe = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 24, ptr %i.fe, align 8, !noalias !12674
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !12918, !noalias !12674
  store ptr %i.m, ptr %i.l, align 8, !dbg !12918, !noalias !12674
  %.sroa.42.0..sroa_idx.i17.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !12918
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.42.0..sroa_idx.i17.i.i, align 8, !dbg !12918, !noalias !12674
  %i.ff = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !12918
  store ptr %2, ptr %i.ff, align 8, !dbg !12918, !noalias !12674
  %.sroa.46.0..sroa_idx.i18.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24, !dbg !12918
  store ptr @_RNvXs1f_Cs8RKTHBS4OBx_12object_storeNtB6_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i18.i.i, align 8, !dbg !12918, !noalias !12674
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noundef nonnull @202, ptr noundef nonnull %i.l)
          to label %.noexc5.i unwind label %bb.bk, !dbg !12919, !noalias !12667

.noexc5.i:                                        ; preds = %.noexc4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !12920, !noalias !12674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !12921, !noalias !12670
  br label %bb.ai, !dbg !12922

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !12923, !noalias !12670
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !12924, !noalias !12670
  invoke void @_RINvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB6_10PyErrState14lazy_argumentsTNtNtCsgZ49sUHp3tW_5alloc6string6StringEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.p, ptr noundef nonnull %i.fb, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.w)
          to label %.noexc6.i unwind label %bb.bk, !dbg !12924, !noalias !12667

.noexc6.i:                                        ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.s, ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 64, i1 false), !dbg !12925, !noalias !12670
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !12926, !noalias !12670
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !12927, !noalias !12670
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !12928, !noalias !12675
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !12928, !noalias !12675
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !12928, !noalias !12675
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !12929, !noalias !12675
  %i.fg = getelementptr inbounds nuw i8, ptr %i.s, i64 56, !dbg !12930
  %i.fh = load atomic i32, ptr %i.fg acquire, align 8, !dbg !12931, !noalias !12675
  %i.fi = icmp eq i32 %i.fh, 0, !dbg !12932
  br i1 %i.fi, label %bb.al, label %bb.am, !dbg !12932, !prof !2318

bb.al:                                            ; preds = %.noexc6.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !12933
  %i.fk = load i64, ptr %i.fj, align 8, !dbg !12934, !range !2317, !noalias !12675, !noundef !2315
  %i.fl = trunc nuw i64 %i.fk to i1, !dbg !12935
  %i.fm = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !noalias !12670
  %.not.i.i.i.i = icmp ne ptr %i.fn, null
  %or.cond.not.i.i = select i1 %i.fl, i1 %.not.i.i.i.i, i1 false, !dbg !12935
  br i1 %or.cond.not.i.i, label %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i, label %bb.an, !dbg !12935, !prof !2582

bb.am:                                            ; preds = %.noexc6.i
  %i.fo = invoke noundef nonnull align 8 ptr @_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState15make_normalized(ptr noundef nonnull align 8 %i.s)
          to label %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i unwind label %bb.bd, !dbg !12936, !noalias !12671

bb.an:                                            ; preds = %bb.al
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @268, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @343) #45
          to label %.noexc20.i.i unwind label %bb.bd, !dbg !12937, !noalias !12671

.noexc20.i.i:                                     ; preds = %bb.an
  unreachable, !dbg !12937

_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i: ; preds = %bb.am, %bb.al
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.fm, %bb.al ], [ %i.fo, %bb.am ], !dbg !12938
  invoke void @_RNvMs1_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_20PyErrStateNormalized9clone_ref(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noundef nonnull align 8 %.sroa.0.0.i.i.i.i)
          to label %.noexc21.i.i unwind label %bb.bd, !dbg !12939, !noalias !12671

.noexc21.i.i:                                     ; preds = %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i
  invoke void @_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState10normalized(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.g)
          to label %.noexc22.i.i unwind label %bb.bd, !dbg !12940, !noalias !12671

.noexc22.i.i:                                     ; preds = %.noexc21.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !12941, !noalias !12675
  %i.fp = invoke noundef nonnull ptr @_RNvMs_NtCsbm5zPlkZccl_4pyo33errNtB4_5PyErr10into_value(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.i)
          to label %.noexc23.i.i unwind label %bb.bd, !dbg !12942, !noalias !12671 ; 3 uses

.noexc23.i.i:                                     ; preds = %.noexc22.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !12943, !noalias !12675
  store ptr %i.fp, ptr %i.j, align 8, !dbg !12944, !noalias !12675
  invoke void @_RINvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrReECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) @190, i64 noundef 14)
          to label %bb.ap unwind label %bb.ao, !dbg !12945, !noalias !12676

bb.ao:                                            ; preds = %.noexc23.i.i
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.ap:                                            ; preds = %.noexc23.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !12677), !dbg !12946
  %i.fr = load i64, ptr %i.k, align 8, !dbg !12947, !range !2317, !alias.scope !12677, !noalias !12678, !noundef !2315
  %i.fs = trunc nuw i64 %i.fr to i1, !dbg !12948
  br i1 %i.fs, label %bb.aq, label %bb.au, !dbg !12948, !prof !2368

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !12949, !noalias !12679
  %i.ft = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !12949
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.ft, i64 64, i1 false), !dbg !12949, !noalias !12678
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @317, i64 noundef 43, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @319, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #48
          to label %bb.as unwind label %bb.ar, !dbg !12950, !noalias !12680

bb.ar:                                            ; preds = %bb.aq
  %i.fu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e) #46
          to label %bb.bc unwind label %bb.at, !dbg !12951, !noalias !12680

bb.as:                                            ; preds = %bb.aq
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.fv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !12952, !noalias !12680
  unreachable, !dbg !12952

bb.au:                                            ; preds = %bb.ap
  %i.fw = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !12953
  %i.fx = load ptr, ptr %i.fw, align 8, !dbg !12953, !alias.scope !12677, !noalias !12678, !nonnull !2315, !noundef !2315 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !12954, !noalias !12675
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !12955, !noalias !12675
  invoke void @_RINvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrReECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ek, ptr noalias noundef nonnull readonly captures(address, read_provenance) @192, i64 noundef 13)
          to label %bb.aw unwind label %bb.av, !dbg !12956, !noalias !12676

bb.av:                                            ; preds = %bb.bb, %bb.au
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i, !dbg !12957

.body.i.i.i:                                      ; preds = %bb.ay, %bb.av
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.fy, %bb.av ], [ %i.gc, %bb.ay ]
  call void @_Py_DecRef(ptr noundef nonnull %i.fx) #50, !dbg !12958, !noalias !12676
  br label %bb.bc, !dbg !12959

bb.aw:                                            ; preds = %bb.au
  call void @llvm.experimental.noalias.scope.decl(metadata !12681), !dbg !12960
  %i.fz = load i64, ptr %i.h, align 8, !dbg !12961, !range !2317, !alias.scope !12681, !noalias !12682, !noundef !2315
  %i.ga = trunc nuw i64 %i.fz to i1, !dbg !12962
  br i1 %i.ga, label %bb.ax, label %bb.bb, !dbg !12962, !prof !2368

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !12963, !noalias !12683
  %i.gb = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !12963
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.gb, i64 64, i1 false), !dbg !12963, !noalias !12682
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @317, i64 noundef 43, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @319, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @193) #48
          to label %bb.az unwind label %bb.ay, !dbg !12964, !noalias !12684

bb.ay:                                            ; preds = %bb.ax
  %i.gc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.f) #46
          to label %.body.i.i.i unwind label %bb.ba, !dbg !12965, !noalias !12684

bb.az:                                            ; preds = %bb.ax
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.gd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !12966, !noalias !12684
  unreachable, !dbg !12966

bb.bb:                                            ; preds = %bb.aw
  %i.ge = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !12967
  %i.gf = load ptr, ptr %i.ge, align 8, !dbg !12967, !alias.scope !12681, !noalias !12682, !nonnull !2315, !noundef !2315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !12968, !noalias !12675
  invoke void @_RNvXsj_NtNtCsbm5zPlkZccl_4pyo35types5tupleTINtNtB9_8instance5BoundNtNtB7_3any5PyAnyEENtNtB9_4call10PyCallArgs15call_positionalCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.q, ptr noundef nonnull %i.gf, ptr noundef nonnull %i.fx)
          to label %bb.be unwind label %bb.av, !dbg !12969, !noalias !12685

bb.bc:                                            ; preds = %.body.i.i.i, %bb.ar, %bb.ao
  %.pn.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.fq, %bb.ao ], [ %i.fu, %bb.ar ]
  call void @_Py_DecRef(ptr noundef nonnull %i.fp) #50, !dbg !12970, !noalias !12676
  br label %.body24.i.i, !dbg !12971

.body24.i.i:                                      ; preds = %bb.bg, %bb.bd, %bb.bc
  %.pn10.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %bb.bc ], [ %i.gl, %bb.bg ], [ %i.gg, %bb.bd ]
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.s) #46
          to label %.body.i unwind label %bb.aj, !dbg !12972, !noalias !12671

bb.bd:                                            ; preds = %bb.bi, %.noexc22.i.i, %.noexc21.i.i, %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i, %bb.an, %bb.am
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %.body24.i.i

bb.be:                                            ; preds = %bb.bb
  call void @_Py_DecRef(ptr noundef nonnull %i.fx) #50, !dbg !12973, !noalias !12676
  call void @_Py_DecRef(ptr noundef nonnull %i.fp) #50, !dbg !12974, !noalias !12676
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !12957, !noalias !12675
  %i.gh = load i64, ptr %i.q, align 8, !dbg !12927, !range !2317, !noalias !12670, !noundef !2315
  %i.gi = trunc nuw i64 %i.gh to i1, !dbg !12975
  %i.gj = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !12976 ; 2 uses
  br i1 %i.gi, label %bb.bi, label %bb.bf, !dbg !12975

bb.bf:                                            ; preds = %bb.be
  %i.gk = load ptr, ptr %i.gj, align 8, !dbg !12977, !noalias !12670, !nonnull !2315, !noundef !2315
  invoke void @_RNvMs_NtCsbm5zPlkZccl_4pyo33errNtB4_5PyErr10from_value(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.r, ptr noundef nonnull %i.gk)
          to label %bb.bh unwind label %bb.bg, !dbg !12978, !noalias !12671

bb.bg:                                            ; preds = %bb.bf
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %.body24.i.i, !dbg !12979

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !12979, !noalias !12670
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12980
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.gm, ptr noundef nonnull align 8 dereferenceable(64) %i.r, i64 64, i1 false), !dbg !12980, !noalias !12686
  store i64 17, ptr %0, align 8, !dbg !12980, !alias.scope !12671, !noalias !12686
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.s)
          to label %_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCINvMsd_CsgjwxzEoLG5s_12polars_errorNtBZ_11PolarsError8wrap_msgNCNCNCINvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB22_17PolarsObjectStore30exec_with_rebuild_retry_on_errNCNCNCNvMs4_B24_B33_4head000NCNCB40_00NtCs8RKTHBS4OBx_12object_store10ObjectMetaE000E0B1r_ECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.bk, !dbg !12972, !noalias !12667

bb.bi:                                            ; preds = %bb.be
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.gj)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit30.i.i unwind label %bb.bd, !dbg !12981, !noalias !12671

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit30.i.i: ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !12979, !noalias !12670
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12980
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.gn, ptr noundef nonnull align 8 dereferenceable(64) %i.s, i64 64, i1 false), !dbg !12980, !noalias !12686
  store i64 17, ptr %0, align 8, !dbg !12980, !alias.scope !12671, !noalias !12686
  br label %_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCINvMsd_CsgjwxzEoLG5s_12polars_errorNtBZ_11PolarsError8wrap_msgNCNCNCINvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB22_17PolarsObjectStore30exec_with_rebuild_retry_on_errNCNCNCNvMs4_B24_B33_4head000NCNCB40_00NtCs8RKTHBS4OBx_12object_store10ObjectMetaE000E0B1r_ECsfcROwRM8ZtH_11polars_plan.exit, !dbg !12972

bb.bj:                                            ; preds = %bb.ai
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w) #46
          to label %.body.i unwind label %bb.aj, !dbg !12982, !noalias !12671

bb.bk:                                            ; preds = %bb.bh, %bb.ak, %.noexc4.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types6string8PyStringENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit16.i.i, %.noexc.i, %bb.y
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !12983

.body.i:                                          ; preds = %bb.bk, %bb.bj, %.body24.i.i, %.thread.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.go, %bb.bk ], [ %lpad.thr_comm.split-lp.i.i, %bb.bj ], [ %.pn10.i.i, %.body24.i.i ], [ %.pn.i.i, %.thread.i.i ]
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.x)
          to label %common.resume unwind label %bb.bl, !dbg !12984, !noalias !12667

bb.bl:                                            ; preds = %.body.i
  %i.gp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !12985, !noalias !12667
  unreachable, !dbg !12985

_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCINvMsd_CsgjwxzEoLG5s_12polars_errorNtBZ_11PolarsError8wrap_msgNCNCNCINvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB22_17PolarsObjectStore30exec_with_rebuild_retry_on_errNCNCNCNvMs4_B24_B33_4head000NCNCB40_00NtCs8RKTHBS4OBx_12object_store10ObjectMetaE000E0B1r_ECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.bh, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit30.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !12972, !noalias !12670
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !12982, !noalias !12670
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !12986, !noalias !12668
  call void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.x), !dbg !12987, !noalias !12667
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !12983, !noalias !12668
end_hunk_5
begin_hunk_6_@_RINvMsd_CsgjwxzEoLG5s_12polars_errorNtB6_11PolarsError8wrap_msgNCNCNCINvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB19_17PolarsObjectStore30exec_with_rebuild_retry_on_errNCNCNCNvMs4_B1b_B2a_4head000NCNCB37_00NtCs8RKTHBS4OBx_12object_store10ObjectMetaE0s_00ECsfcROwRM8ZtH_11polars_plan:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !dbg !13639
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !13639
  invoke void @_RNvXs0_NtCsgZ49sUHp3tW_5alloc6borrowINtB5_3CoweENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dm)
          to label %bb.cb unwind label %bb.ca, !dbg !13639

bb.u:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !dbg !13640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !dbg !13641
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !13641
  %i.do = load ptr, ptr %i.dn, align 8, !dbg !13641, !nonnull !2315, !noundef !2315
  call void @_RINvMsd_CsgjwxzEoLG5s_12polars_errorNtB6_11PolarsError8wrap_msgNCNCNCINvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB19_17PolarsObjectStore30exec_with_rebuild_retry_on_errNCNCNCNvMs4_B1b_B2a_4head000NCNCB37_00NtCs8RKTHBS4OBx_12object_store10ObjectMetaE0s_00ECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.bc, ptr noundef nonnull align 8 %i.do), !dbg !13642
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #50, !dbg !13643, !noalias !13434
  %i.dp = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 0, 337) 72, i64 noundef range(i64 1, 17) 8) #50, !dbg !13644, !noalias !13434 ; 4 uses
  %i.dq = icmp eq ptr %i.dp, null, !dbg !13645
  br i1 %i.dq, label %bb.v, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE3newCsfcROwRM8ZtH_11polars_plan.exit, !dbg !13646, !prof !2467

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #48
          to label %.noexc66 unwind label %bb.w, !dbg !13647

.noexc66:                                         ; preds = %bb.v
  unreachable, !dbg !13647

bb.w:                                             ; preds = %bb.v
  %i.dr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.bc) #46
          to label %common.resume unwind label %bb.x, !dbg !13648

bb.x:                                             ; preds = %bb.w
  %i.ds = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !13649
  unreachable, !dbg !13649

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE3newCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dp, ptr noundef nonnull align 8 dereferenceable(72) %i.bc, i64 72, i1 false), !dbg !13650
  store ptr %i.dp, ptr %i.bd, align 8, !dbg !13640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !dbg !13651
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !dbg !13652
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !13652
  invoke void @_RNvXs0_NtCsgZ49sUHp3tW_5alloc6borrowINtB5_3CoweENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ba, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dt)
          to label %bb.cd unwind label %bb.cc, !dbg !13652

bb.y:                                             ; preds = %bb.a
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !13653
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13436), !dbg !13654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !13655, !noalias !13436
  %i.dv = tail call noundef i32 @_RNvMNtNtCsbm5zPlkZccl_4pyo38internal5stateNtB2_11AttachGuard6attach(), !dbg !13656, !noalias !13436
  store i32 %i.dv, ptr %i.x, align 4, !dbg !13656, !noalias !13436
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13437), !dbg !13657
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !13658, !noalias !13436
  %i.dw = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsbm5zPlkZccl_4pyo33errNtB4_5PyErr5value(ptr noundef nonnull align 8 %i.du)
          to label %.noexc.i unwind label %bb.bk, !dbg !13658, !noalias !13436 ; 3 uses

.noexc.i:                                         ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !13659, !noalias !13438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !13660, !noalias !13438
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods3str(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dw)
          to label %.noexc3.i unwind label %bb.bk, !dbg !13661, !noalias !13436

.noexc3.i:                                        ; preds = %.noexc.i
  %i.dx = load i64, ptr %i.v, align 8, !dbg !13660, !range !2317, !noalias !13438, !noundef !2315
  %i.dy = trunc nuw i64 %i.dx to i1, !dbg !13662
  br i1 %i.dy, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types6string8PyStringENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit15.i.i, label %bb.z, !dbg !13662

bb.z:                                             ; preds = %.noexc3.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !13663, !noalias !13438
  %i.dz = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !13663
  %i.ea = load ptr, ptr %i.dz, align 8, !dbg !13663, !noalias !13438, !nonnull !2315, !noundef !2315 ; 3 uses
  store ptr %i.ea, ptr %i.u, align 8, !dbg !13663, !noalias !13438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !13664, !noalias !13438
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types6stringINtNtB8_8instance5BoundNtB4_8PyStringENtB4_15PyStringMethods15to_string_lossy(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.u)
          to label %bb.ab unwind label %bb.aa, !dbg !13665, !noalias !13438

bb.aa:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i.i, %bb.z
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.ab:                                            ; preds = %bb.z
  %i.ec = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !13666
  %i.ed = load ptr, ptr %i.ec, align 8, !dbg !13666, !noalias !13438, !nonnull !2315
  %i.ee = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !13666
  %i.ef = load i64, ptr %i.ee, align 8, !dbg !13666, !noalias !13438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !13438
  store ptr %i.ed, ptr %i.o, align 8, !noalias !13439
  %i.eg = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.ef, ptr %i.eg, align 8, !noalias !13439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !13667, !noalias !13439
  store ptr %i.o, ptr %i.n, align 8, !dbg !13667, !noalias !13439
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !13667
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !dbg !13667, !noalias !13439
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noundef nonnull @203, ptr noundef nonnull %i.n)
          to label %bb.ad unwind label %bb.ac, !dbg !13668, !noalias !13438

bb.ac:                                            ; preds = %bb.ab
  %i.eh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CoweEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.t) #46
          to label %.thread.i.i unwind label %bb.aj, !dbg !13669, !noalias !13438

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !13670, !noalias !13439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !13671, !noalias !13438
  %i.ei = load i64, ptr %i.t, align 8, !dbg !13672, !range !2367, !alias.scope !13440, !noalias !13438, !noundef !2315
  %i.ej = icmp eq i64 %i.ei, -9223372036854775808, !dbg !13672
  br i1 %i.ej, label %bb.ah, label %bb.ae, !dbg !13672

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i.i unwind label %bb.af, !dbg !13673, !noalias !13438

bb.af:                                            ; preds = %bb.ae
  %i.ek = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.thread.i.i unwind label %bb.ag, !dbg !13674, !noalias !13438

bb.ag:                                            ; preds = %bb.af
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !13673, !noalias !13438
  unreachable, !dbg !13673

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i.i: ; preds = %bb.ae
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.ah unwind label %bb.aa, !dbg !13675, !noalias !13438

bb.ah:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !13669, !noalias !13438
  call void @_Py_DecRef(ptr noundef nonnull %i.ea) #50, !dbg !13676, !noalias !13438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !13677, !noalias !13438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !13677, !noalias !13438
  br label %bb.ai, !dbg !13678

bb.ai:                                            ; preds = %.noexc5.i, %bb.ah
  %i.em = invoke noundef nonnull ptr @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods8get_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dw)
          to label %bb.ak unwind label %bb.bj, !dbg !13679, !noalias !13438

bb.aj:                                            ; preds = %bb.bj, %.body22.i.i, %bb.ac
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !13680, !noalias !13438
  unreachable, !dbg !13680

.thread.i.i:                                      ; preds = %bb.af, %bb.ac, %bb.aa
  %.pn.i.i = phi { ptr, i32 } [ %i.eh, %bb.ac ], [ %i.eb, %bb.aa ], [ %i.ek, %bb.af ]
  call void @_Py_DecRef(ptr noundef nonnull %i.ea) #50, !dbg !13681, !noalias !13438
  br label %.body.i, !dbg !13677

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types6string8PyStringENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit15.i.i: ; preds = %.noexc3.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !13682
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.eo)
          to label %.noexc4.i unwind label %bb.bk, !dbg !13682, !noalias !13436

.noexc4.i:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types6string8PyStringENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit15.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !13677, !noalias !13438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !13438
  store ptr @163, ptr %i.m, align 8, !noalias !13441
  %i.ep = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 24, ptr %i.ep, align 8, !noalias !13441
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !13683, !noalias !13441
  store ptr %i.m, ptr %i.l, align 8, !dbg !13683, !noalias !13441
  %.sroa.42.0..sroa_idx.i16.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !13683
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.42.0..sroa_idx.i16.i.i, align 8, !dbg !13683, !noalias !13441
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noundef nonnull @203, ptr noundef nonnull %i.l)
          to label %.noexc5.i unwind label %bb.bk, !dbg !13684, !noalias !13436

.noexc5.i:                                        ; preds = %.noexc4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !13685, !noalias !13441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !13686, !noalias !13438
  br label %bb.ai, !dbg !13687

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !13688, !noalias !13438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !13689, !noalias !13438
  invoke void @_RINvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB6_10PyErrState14lazy_argumentsTNtNtCsgZ49sUHp3tW_5alloc6string6StringEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.p, ptr noundef nonnull %i.em, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.w)
          to label %.noexc6.i unwind label %bb.bk, !dbg !13689, !noalias !13436

.noexc6.i:                                        ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.s, ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 64, i1 false), !dbg !13690, !noalias !13438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !13691, !noalias !13438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !13692, !noalias !13438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !13693, !noalias !13442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !13693, !noalias !13442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !13693, !noalias !13442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !13694, !noalias !13442
  %i.eq = getelementptr inbounds nuw i8, ptr %i.s, i64 56, !dbg !13695
  %i.er = load atomic i32, ptr %i.eq acquire, align 8, !dbg !13696, !noalias !13442
  %i.es = icmp eq i32 %i.er, 0, !dbg !13697
  br i1 %i.es, label %bb.al, label %bb.am, !dbg !13697, !prof !2318

bb.al:                                            ; preds = %.noexc6.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !13698
  %i.eu = load i64, ptr %i.et, align 8, !dbg !13699, !range !2317, !noalias !13442, !noundef !2315
  %i.ev = trunc nuw i64 %i.eu to i1, !dbg !13700
  %i.ew = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !noalias !13438
  %.not.i.i.i.i = icmp ne ptr %i.ex, null
  %or.cond.not.i.i = select i1 %i.ev, i1 %.not.i.i.i.i, i1 false, !dbg !13700
  br i1 %or.cond.not.i.i, label %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i, label %bb.an, !dbg !13700, !prof !2582

bb.am:                                            ; preds = %.noexc6.i
  %i.ey = invoke noundef nonnull align 8 ptr @_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState15make_normalized(ptr noundef nonnull align 8 %i.s)
          to label %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i unwind label %bb.bd, !dbg !13701, !noalias !13438

bb.an:                                            ; preds = %bb.al
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @268, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @343) #45
          to label %.noexc18.i.i unwind label %bb.bd, !dbg !13702, !noalias !13438

.noexc18.i.i:                                     ; preds = %bb.an
  unreachable, !dbg !13702

_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i: ; preds = %bb.am, %bb.al
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ew, %bb.al ], [ %i.ey, %bb.am ], !dbg !13703
  invoke void @_RNvMs1_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_20PyErrStateNormalized9clone_ref(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noundef nonnull align 8 %.sroa.0.0.i.i.i.i)
          to label %.noexc19.i.i unwind label %bb.bd, !dbg !13704, !noalias !13438

.noexc19.i.i:                                     ; preds = %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i
  invoke void @_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState10normalized(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.g)
          to label %.noexc20.i.i unwind label %bb.bd, !dbg !13705, !noalias !13438

.noexc20.i.i:                                     ; preds = %.noexc19.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !13706, !noalias !13442
  %i.ez = invoke noundef nonnull ptr @_RNvMs_NtCsbm5zPlkZccl_4pyo33errNtB4_5PyErr10into_value(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.i)
          to label %.noexc21.i.i unwind label %bb.bd, !dbg !13707, !noalias !13438 ; 3 uses

.noexc21.i.i:                                     ; preds = %.noexc20.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !13708, !noalias !13442
  store ptr %i.ez, ptr %i.j, align 8, !dbg !13709, !noalias !13442
  invoke void @_RINvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrReECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) @190, i64 noundef 14)
          to label %bb.ap unwind label %bb.ao, !dbg !13710, !noalias !13442

bb.ao:                                            ; preds = %.noexc21.i.i
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.ap:                                            ; preds = %.noexc21.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !13443), !dbg !13711
  %i.fb = load i64, ptr %i.k, align 8, !dbg !13712, !range !2317, !alias.scope !13443, !noalias !13444, !noundef !2315
  %i.fc = trunc nuw i64 %i.fb to i1, !dbg !13713
  br i1 %i.fc, label %bb.aq, label %bb.au, !dbg !13713, !prof !2368

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !13714, !noalias !13445
  %i.fd = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !13714
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.fd, i64 64, i1 false), !dbg !13714, !noalias !13444
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @317, i64 noundef 43, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @319, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #48
          to label %bb.as unwind label %bb.ar, !dbg !13715, !noalias !13446

bb.ar:                                            ; preds = %bb.aq
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e) #46
          to label %bb.bc unwind label %bb.at, !dbg !13716, !noalias !13446

bb.as:                                            ; preds = %bb.aq
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !13717, !noalias !13446
  unreachable, !dbg !13717

bb.au:                                            ; preds = %bb.ap
  %i.fg = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !13718
  %i.fh = load ptr, ptr %i.fg, align 8, !dbg !13718, !alias.scope !13443, !noalias !13444, !nonnull !2315, !noundef !2315 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !13719, !noalias !13442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !13720, !noalias !13442
  invoke void @_RINvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrReECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @192, i64 noundef 13)
          to label %bb.aw unwind label %bb.av, !dbg !13721, !noalias !13442

bb.av:                                            ; preds = %bb.bb, %bb.au
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i, !dbg !13722

.body.i.i.i:                                      ; preds = %bb.ay, %bb.av
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.fi, %bb.av ], [ %i.fm, %bb.ay ]
  call void @_Py_DecRef(ptr noundef nonnull %i.fh) #50, !dbg !13723, !noalias !13442
  br label %bb.bc, !dbg !13724

bb.aw:                                            ; preds = %bb.au
  call void @llvm.experimental.noalias.scope.decl(metadata !13447), !dbg !13725
  %i.fj = load i64, ptr %i.h, align 8, !dbg !13726, !range !2317, !alias.scope !13447, !noalias !13448, !noundef !2315
  %i.fk = trunc nuw i64 %i.fj to i1, !dbg !13727
  br i1 %i.fk, label %bb.ax, label %bb.bb, !dbg !13727, !prof !2368

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !13728, !noalias !13449
  %i.fl = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !13728
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.fl, i64 64, i1 false), !dbg !13728, !noalias !13448
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @317, i64 noundef 43, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @319, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @193) #48
          to label %bb.az unwind label %bb.ay, !dbg !13729, !noalias !13450

bb.ay:                                            ; preds = %bb.ax
  %i.fm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.f) #46
          to label %.body.i.i.i unwind label %bb.ba, !dbg !13730, !noalias !13450

bb.az:                                            ; preds = %bb.ax
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.fn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !13731, !noalias !13450
  unreachable, !dbg !13731

bb.bb:                                            ; preds = %bb.aw
  %i.fo = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !13732
  %i.fp = load ptr, ptr %i.fo, align 8, !dbg !13732, !alias.scope !13447, !noalias !13448, !nonnull !2315, !noundef !2315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !13733, !noalias !13442
  invoke void @_RNvXsj_NtNtCsbm5zPlkZccl_4pyo35types5tupleTINtNtB9_8instance5BoundNtNtB7_3any5PyAnyEENtNtB9_4call10PyCallArgs15call_positionalCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.q, ptr noundef nonnull %i.fp, ptr noundef nonnull %i.fh)
          to label %bb.be unwind label %bb.av, !dbg !13734, !noalias !13451

bb.bc:                                            ; preds = %.body.i.i.i, %bb.ar, %bb.ao
  %.pn.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.fa, %bb.ao ], [ %i.fe, %bb.ar ]
  call void @_Py_DecRef(ptr noundef nonnull %i.ez) #50, !dbg !13735, !noalias !13442
  br label %.body22.i.i, !dbg !13736

.body22.i.i:                                      ; preds = %bb.bg, %bb.bd, %bb.bc
  %.pn9.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %bb.bc ], [ %i.fv, %bb.bg ], [ %i.fq, %bb.bd ]
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.s) #46
          to label %.body.i unwind label %bb.aj, !dbg !13737, !noalias !13438

bb.bd:                                            ; preds = %bb.bi, %.noexc20.i.i, %.noexc19.i.i, %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i, %bb.an, %bb.am
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %.body22.i.i

bb.be:                                            ; preds = %bb.bb
  call void @_Py_DecRef(ptr noundef nonnull %i.fh) #50, !dbg !13738, !noalias !13442
  call void @_Py_DecRef(ptr noundef nonnull %i.ez) #50, !dbg !13739, !noalias !13442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !13722, !noalias !13442
  %i.fr = load i64, ptr %i.q, align 8, !dbg !13692, !range !2317, !noalias !13438, !noundef !2315
  %i.fs = trunc nuw i64 %i.fr to i1, !dbg !13740
  %i.ft = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !13741 ; 2 uses
  br i1 %i.fs, label %bb.bi, label %bb.bf, !dbg !13740

bb.bf:                                            ; preds = %bb.be
  %i.fu = load ptr, ptr %i.ft, align 8, !dbg !13742, !noalias !13438, !nonnull !2315, !noundef !2315
  invoke void @_RNvMs_NtCsbm5zPlkZccl_4pyo33errNtB4_5PyErr10from_value(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.r, ptr noundef nonnull %i.fu)
          to label %bb.bh unwind label %bb.bg, !dbg !13743, !noalias !13438

bb.bg:                                            ; preds = %bb.bf
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %.body22.i.i, !dbg !13744

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !13744, !noalias !13438
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13745
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fw, ptr noundef nonnull align 8 dereferenceable(64) %i.r, i64 64, i1 false), !dbg !13745
  store i64 17, ptr %0, align 8, !dbg !13745, !alias.scope !13438
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.s)
          to label %_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCINvMsd_CsgjwxzEoLG5s_12polars_errorNtBZ_11PolarsError8wrap_msgNCNCNCINvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB22_17PolarsObjectStore30exec_with_rebuild_retry_on_errNCNCNCNvMs4_B24_B33_4head000NCNCB40_00NtCs8RKTHBS4OBx_12object_store10ObjectMetaE0s_00E0B1r_ECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.bk, !dbg !13737, !noalias !13436

bb.bi:                                            ; preds = %bb.be
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.ft)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit28.i.i unwind label %bb.bd, !dbg !13746, !noalias !13438

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit28.i.i: ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !13744, !noalias !13438
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13745
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fx, ptr noundef nonnull align 8 dereferenceable(64) %i.s, i64 64, i1 false), !dbg !13745
  store i64 17, ptr %0, align 8, !dbg !13745, !alias.scope !13438
  br label %_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCINvMsd_CsgjwxzEoLG5s_12polars_errorNtBZ_11PolarsError8wrap_msgNCNCNCINvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB22_17PolarsObjectStore30exec_with_rebuild_retry_on_errNCNCNCNvMs4_B24_B33_4head000NCNCB40_00NtCs8RKTHBS4OBx_12object_store10ObjectMetaE0s_00E0B1r_ECsfcROwRM8ZtH_11polars_plan.exit, !dbg !13737

bb.bj:                                            ; preds = %bb.ai
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w) #46
          to label %.body.i unwind label %bb.aj, !dbg !13747, !noalias !13438

bb.bk:                                            ; preds = %bb.bh, %bb.ak, %.noexc4.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types6string8PyStringENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit15.i.i, %.noexc.i, %bb.y
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !13748

.body.i:                                          ; preds = %bb.bk, %bb.bj, %.body22.i.i, %.thread.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.fy, %bb.bk ], [ %lpad.thr_comm.split-lp.i.i, %bb.bj ], [ %.pn9.i.i, %.body22.i.i ], [ %.pn.i.i, %.thread.i.i ]
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.x)
          to label %common.resume unwind label %bb.bl, !dbg !13749, !noalias !13436

bb.bl:                                            ; preds = %.body.i
  %i.fz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !13750, !noalias !13436
  unreachable, !dbg !13750

_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCINvMsd_CsgjwxzEoLG5s_12polars_errorNtBZ_11PolarsError8wrap_msgNCNCNCINvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB22_17PolarsObjectStore30exec_with_rebuild_retry_on_errNCNCNCNvMs4_B24_B33_4head000NCNCB40_00NtCs8RKTHBS4OBx_12object_store10ObjectMetaE0s_00E0B1r_ECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.bh, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit28.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !13737, !noalias !13438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !13747, !noalias !13438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !13751, !noalias !13436
  call void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.x), !dbg !13752, !noalias !13436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !13748, !noalias !13436
end_hunk_6
begin_hunk_7_@_RINvMsd_CsgjwxzEoLG5s_12polars_errorNtB6_11PolarsError8wrap_msgNCNCNCINvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB19_17PolarsObjectStore30exec_with_rebuild_retry_on_errNCNCNvNtB1d_4glob4glob00NCNCB37_00INtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs8RKTHBS4OBx_12object_store4path4PathEE000ECsfcROwRM8ZtH_11polars_plan:bb.a
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !14430
  %i.ec = load ptr, ptr %i.eb, align 8, !dbg !14430, !nonnull !2315, !noundef !2315
  call void @_RINvMsd_CsgjwxzEoLG5s_12polars_errorNtB6_11PolarsError8wrap_msgNCNCNCINvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB19_17PolarsObjectStore30exec_with_rebuild_retry_on_errNCNCNvNtB1d_4glob4glob00NCNCB37_00INtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs8RKTHBS4OBx_12object_store4path4PathEE000ECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.bc, ptr noundef nonnull align 8 %i.ec, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %2), !dbg !14431
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #50, !dbg !14432, !noalias !14219
  %i.ed = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 0, 337) 72, i64 noundef range(i64 1, 17) 8) #50, !dbg !14433, !noalias !14219 ; 4 uses
  %i.ee = icmp eq ptr %i.ed, null, !dbg !14434
  br i1 %i.ee, label %bb.v, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE3newCsfcROwRM8ZtH_11polars_plan.exit, !dbg !14435, !prof !2467

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #48
          to label %.noexc79 unwind label %bb.w, !dbg !14436

.noexc79:                                         ; preds = %bb.v
  unreachable, !dbg !14436

bb.w:                                             ; preds = %bb.v
  %i.ef = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.bc) #46
          to label %common.resume unwind label %bb.x, !dbg !14437

bb.x:                                             ; preds = %bb.w
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !14438
  unreachable, !dbg !14438

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE3newCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ed, ptr noundef nonnull align 8 dereferenceable(72) %i.bc, i64 72, i1 false), !dbg !14439
  store ptr %i.ed, ptr %i.bd, align 8, !dbg !14429
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !dbg !14440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !dbg !14441
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !14441
  invoke void @_RNvXs0_NtCsgZ49sUHp3tW_5alloc6borrowINtB5_3CoweENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ba, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eh)
          to label %bb.cd unwind label %bb.cc, !dbg !14441

bb.y:                                             ; preds = %bb.a
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !14442
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14221), !dbg !14443
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !14444, !noalias !14222
  %i.ej = tail call noundef i32 @_RNvMNtNtCsbm5zPlkZccl_4pyo38internal5stateNtB2_11AttachGuard6attach(), !dbg !14445, !noalias !14222
  store i32 %i.ej, ptr %i.x, align 4, !dbg !14445, !noalias !14222
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14223), !dbg !14446
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !14447, !noalias !14222
  %i.ek = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsbm5zPlkZccl_4pyo33errNtB4_5PyErr5value(ptr noundef nonnull align 8 %i.ei)
          to label %.noexc.i unwind label %bb.bk, !dbg !14447, !noalias !14222 ; 3 uses

.noexc.i:                                         ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !14448, !noalias !14224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !14449, !noalias !14224
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods3str(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ek)
          to label %.noexc3.i unwind label %bb.bk, !dbg !14450, !noalias !14221

.noexc3.i:                                        ; preds = %.noexc.i
  %i.el = load i64, ptr %i.v, align 8, !dbg !14449, !range !2317, !noalias !14224, !noundef !2315
  %i.em = trunc nuw i64 %i.el to i1, !dbg !14451
  br i1 %i.em, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types6string8PyStringENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit16.i.i, label %bb.z, !dbg !14451

bb.z:                                             ; preds = %.noexc3.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !14452, !noalias !14224
  %i.en = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !14452
  %i.eo = load ptr, ptr %i.en, align 8, !dbg !14452, !noalias !14224, !nonnull !2315, !noundef !2315 ; 3 uses
  store ptr %i.eo, ptr %i.u, align 8, !dbg !14452, !noalias !14224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !14453, !noalias !14224
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types6stringINtNtB8_8instance5BoundNtB4_8PyStringENtB4_15PyStringMethods15to_string_lossy(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.u)
          to label %bb.ab unwind label %bb.aa, !dbg !14454, !noalias !14225

bb.aa:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i.i, %bb.z
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.ab:                                            ; preds = %bb.z
  %i.eq = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !14455
  %i.er = load ptr, ptr %i.eq, align 8, !dbg !14455, !noalias !14224, !nonnull !2315
  %i.es = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !14455
  %i.et = load i64, ptr %i.es, align 8, !dbg !14455, !noalias !14224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !14224
  store ptr %i.er, ptr %i.o, align 8, !noalias !14226
  %i.eu = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.et, ptr %i.eu, align 8, !noalias !14226
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !14456, !noalias !14226
  store ptr %i.o, ptr %i.n, align 8, !dbg !14456, !noalias !14226
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !14456
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !dbg !14456, !noalias !14226
  %i.ev = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !14456
  store ptr %2, ptr %i.ev, align 8, !dbg !14456, !noalias !14226
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !14456
  store ptr @_RNvXs1f_Cs8RKTHBS4OBx_12object_storeNtB6_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !dbg !14456, !noalias !14226
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noundef nonnull @202, ptr noundef nonnull %i.n)
          to label %bb.ad unwind label %bb.ac, !dbg !14457, !noalias !14225

bb.ac:                                            ; preds = %bb.ab
  %i.ew = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CoweEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.t) #46
          to label %.thread.i.i unwind label %bb.aj, !dbg !14458, !noalias !14225

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !14459, !noalias !14226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !14460, !noalias !14224
  %i.ex = load i64, ptr %i.t, align 8, !dbg !14461, !range !2367, !alias.scope !14227, !noalias !14224, !noundef !2315
  %i.ey = icmp eq i64 %i.ex, -9223372036854775808, !dbg !14461
  br i1 %i.ey, label %bb.ah, label %bb.ae, !dbg !14461

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i.i unwind label %bb.af, !dbg !14462, !noalias !14225

bb.af:                                            ; preds = %bb.ae
  %i.ez = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.thread.i.i unwind label %bb.ag, !dbg !14463, !noalias !14225

bb.ag:                                            ; preds = %bb.af
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !14462, !noalias !14225
  unreachable, !dbg !14462

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i.i: ; preds = %bb.ae
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.ah unwind label %bb.aa, !dbg !14464, !noalias !14225

bb.ah:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !14458, !noalias !14224
  call void @_Py_DecRef(ptr noundef nonnull %i.eo) #50, !dbg !14465, !noalias !14225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !14466, !noalias !14224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !14466, !noalias !14224
  br label %bb.ai, !dbg !14467

bb.ai:                                            ; preds = %.noexc5.i, %bb.ah
  %i.fb = invoke noundef nonnull ptr @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods8get_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ek)
          to label %bb.ak unwind label %bb.bj, !dbg !14468, !noalias !14225

bb.aj:                                            ; preds = %bb.bj, %.body24.i.i, %bb.ac
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !14469, !noalias !14225
  unreachable, !dbg !14469

.thread.i.i:                                      ; preds = %bb.af, %bb.ac, %bb.aa
  %.pn.i.i = phi { ptr, i32 } [ %i.ew, %bb.ac ], [ %i.ep, %bb.aa ], [ %i.ez, %bb.af ]
  call void @_Py_DecRef(ptr noundef nonnull %i.eo) #50, !dbg !14470, !noalias !14225
  br label %.body.i, !dbg !14466

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types6string8PyStringENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit16.i.i: ; preds = %.noexc3.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !14471
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.fd)
          to label %.noexc4.i unwind label %bb.bk, !dbg !14471, !noalias !14221

.noexc4.i:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types6string8PyStringENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit16.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !14466, !noalias !14224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !14224
  store ptr @163, ptr %i.m, align 8, !noalias !14228
  %i.fe = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 24, ptr %i.fe, align 8, !noalias !14228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !14472, !noalias !14228
  store ptr %i.m, ptr %i.l, align 8, !dbg !14472, !noalias !14228
  %.sroa.42.0..sroa_idx.i17.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !14472
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.42.0..sroa_idx.i17.i.i, align 8, !dbg !14472, !noalias !14228
  %i.ff = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !14472
  store ptr %2, ptr %i.ff, align 8, !dbg !14472, !noalias !14228
  %.sroa.46.0..sroa_idx.i18.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24, !dbg !14472
  store ptr @_RNvXs1f_Cs8RKTHBS4OBx_12object_storeNtB6_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i18.i.i, align 8, !dbg !14472, !noalias !14228
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noundef nonnull @202, ptr noundef nonnull %i.l)
          to label %.noexc5.i unwind label %bb.bk, !dbg !14473, !noalias !14221

.noexc5.i:                                        ; preds = %.noexc4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !14474, !noalias !14228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !14475, !noalias !14224
  br label %bb.ai, !dbg !14476

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !14477, !noalias !14224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !14478, !noalias !14224
  invoke void @_RINvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB6_10PyErrState14lazy_argumentsTNtNtCsgZ49sUHp3tW_5alloc6string6StringEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.p, ptr noundef nonnull %i.fb, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.w)
          to label %.noexc6.i unwind label %bb.bk, !dbg !14478, !noalias !14221

.noexc6.i:                                        ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.s, ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 64, i1 false), !dbg !14479, !noalias !14224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !14480, !noalias !14224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !14481, !noalias !14224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !14482, !noalias !14229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !14482, !noalias !14229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !14482, !noalias !14229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !14483, !noalias !14229
  %i.fg = getelementptr inbounds nuw i8, ptr %i.s, i64 56, !dbg !14484
  %i.fh = load atomic i32, ptr %i.fg acquire, align 8, !dbg !14485, !noalias !14229
  %i.fi = icmp eq i32 %i.fh, 0, !dbg !14486
  br i1 %i.fi, label %bb.al, label %bb.am, !dbg !14486, !prof !2318

bb.al:                                            ; preds = %.noexc6.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !14487
  %i.fk = load i64, ptr %i.fj, align 8, !dbg !14488, !range !2317, !noalias !14229, !noundef !2315
  %i.fl = trunc nuw i64 %i.fk to i1, !dbg !14489
  %i.fm = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !noalias !14224
  %.not.i.i.i.i = icmp ne ptr %i.fn, null
  %or.cond.not.i.i = select i1 %i.fl, i1 %.not.i.i.i.i, i1 false, !dbg !14489
  br i1 %or.cond.not.i.i, label %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i, label %bb.an, !dbg !14489, !prof !2582

bb.am:                                            ; preds = %.noexc6.i
  %i.fo = invoke noundef nonnull align 8 ptr @_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState15make_normalized(ptr noundef nonnull align 8 %i.s)
          to label %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i unwind label %bb.bd, !dbg !14490, !noalias !14225

bb.an:                                            ; preds = %bb.al
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @268, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @343) #45
          to label %.noexc20.i.i unwind label %bb.bd, !dbg !14491, !noalias !14225

.noexc20.i.i:                                     ; preds = %bb.an
  unreachable, !dbg !14491

_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i: ; preds = %bb.am, %bb.al
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.fm, %bb.al ], [ %i.fo, %bb.am ], !dbg !14492
  invoke void @_RNvMs1_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_20PyErrStateNormalized9clone_ref(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noundef nonnull align 8 %.sroa.0.0.i.i.i.i)
          to label %.noexc21.i.i unwind label %bb.bd, !dbg !14493, !noalias !14225

.noexc21.i.i:                                     ; preds = %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i
  invoke void @_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState10normalized(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.g)
          to label %.noexc22.i.i unwind label %bb.bd, !dbg !14494, !noalias !14225

.noexc22.i.i:                                     ; preds = %.noexc21.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !14495, !noalias !14229
  %i.fp = invoke noundef nonnull ptr @_RNvMs_NtCsbm5zPlkZccl_4pyo33errNtB4_5PyErr10into_value(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.i)
          to label %.noexc23.i.i unwind label %bb.bd, !dbg !14496, !noalias !14225 ; 3 uses

.noexc23.i.i:                                     ; preds = %.noexc22.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !14497, !noalias !14229
  store ptr %i.fp, ptr %i.j, align 8, !dbg !14498, !noalias !14229
  invoke void @_RINvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrReECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) @190, i64 noundef 14)
          to label %bb.ap unwind label %bb.ao, !dbg !14499, !noalias !14230

bb.ao:                                            ; preds = %.noexc23.i.i
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.ap:                                            ; preds = %.noexc23.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !14231), !dbg !14500
  %i.fr = load i64, ptr %i.k, align 8, !dbg !14501, !range !2317, !alias.scope !14231, !noalias !14232, !noundef !2315
  %i.fs = trunc nuw i64 %i.fr to i1, !dbg !14502
  br i1 %i.fs, label %bb.aq, label %bb.au, !dbg !14502, !prof !2368

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !14503, !noalias !14233
  %i.ft = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !14503
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.ft, i64 64, i1 false), !dbg !14503, !noalias !14232
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @317, i64 noundef 43, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @319, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #48
          to label %bb.as unwind label %bb.ar, !dbg !14504, !noalias !14234

bb.ar:                                            ; preds = %bb.aq
  %i.fu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e) #46
          to label %bb.bc unwind label %bb.at, !dbg !14505, !noalias !14234

bb.as:                                            ; preds = %bb.aq
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.fv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !14506, !noalias !14234
  unreachable, !dbg !14506

bb.au:                                            ; preds = %bb.ap
  %i.fw = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !14507
  %i.fx = load ptr, ptr %i.fw, align 8, !dbg !14507, !alias.scope !14231, !noalias !14232, !nonnull !2315, !noundef !2315 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !14508, !noalias !14229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !14509, !noalias !14229
  invoke void @_RINvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrReECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ek, ptr noalias noundef nonnull readonly captures(address, read_provenance) @192, i64 noundef 13)
          to label %bb.aw unwind label %bb.av, !dbg !14510, !noalias !14230

bb.av:                                            ; preds = %bb.bb, %bb.au
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i, !dbg !14511

.body.i.i.i:                                      ; preds = %bb.ay, %bb.av
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.fy, %bb.av ], [ %i.gc, %bb.ay ]
  call void @_Py_DecRef(ptr noundef nonnull %i.fx) #50, !dbg !14512, !noalias !14230
  br label %bb.bc, !dbg !14513

bb.aw:                                            ; preds = %bb.au
  call void @llvm.experimental.noalias.scope.decl(metadata !14235), !dbg !14514
  %i.fz = load i64, ptr %i.h, align 8, !dbg !14515, !range !2317, !alias.scope !14235, !noalias !14236, !noundef !2315
  %i.ga = trunc nuw i64 %i.fz to i1, !dbg !14516
  br i1 %i.ga, label %bb.ax, label %bb.bb, !dbg !14516, !prof !2368

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !14517, !noalias !14237
  %i.gb = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !14517
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.gb, i64 64, i1 false), !dbg !14517, !noalias !14236
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @317, i64 noundef 43, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @319, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @193) #48
          to label %bb.az unwind label %bb.ay, !dbg !14518, !noalias !14238

bb.ay:                                            ; preds = %bb.ax
  %i.gc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.f) #46
          to label %.body.i.i.i unwind label %bb.ba, !dbg !14519, !noalias !14238

bb.az:                                            ; preds = %bb.ax
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.gd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !14520, !noalias !14238
  unreachable, !dbg !14520

bb.bb:                                            ; preds = %bb.aw
  %i.ge = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !14521
  %i.gf = load ptr, ptr %i.ge, align 8, !dbg !14521, !alias.scope !14235, !noalias !14236, !nonnull !2315, !noundef !2315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !14522, !noalias !14229
  invoke void @_RNvXsj_NtNtCsbm5zPlkZccl_4pyo35types5tupleTINtNtB9_8instance5BoundNtNtB7_3any5PyAnyEENtNtB9_4call10PyCallArgs15call_positionalCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.q, ptr noundef nonnull %i.gf, ptr noundef nonnull %i.fx)
          to label %bb.be unwind label %bb.av, !dbg !14523, !noalias !14239

bb.bc:                                            ; preds = %.body.i.i.i, %bb.ar, %bb.ao
  %.pn.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.fq, %bb.ao ], [ %i.fu, %bb.ar ]
  call void @_Py_DecRef(ptr noundef nonnull %i.fp) #50, !dbg !14524, !noalias !14230
  br label %.body24.i.i, !dbg !14525

.body24.i.i:                                      ; preds = %bb.bg, %bb.bd, %bb.bc
  %.pn10.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %bb.bc ], [ %i.gl, %bb.bg ], [ %i.gg, %bb.bd ]
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.s) #46
          to label %.body.i unwind label %bb.aj, !dbg !14526, !noalias !14225

bb.bd:                                            ; preds = %bb.bi, %.noexc22.i.i, %.noexc21.i.i, %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i, %bb.an, %bb.am
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %.body24.i.i

bb.be:                                            ; preds = %bb.bb
  call void @_Py_DecRef(ptr noundef nonnull %i.fx) #50, !dbg !14527, !noalias !14230
  call void @_Py_DecRef(ptr noundef nonnull %i.fp) #50, !dbg !14528, !noalias !14230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !14511, !noalias !14229
  %i.gh = load i64, ptr %i.q, align 8, !dbg !14481, !range !2317, !noalias !14224, !noundef !2315
  %i.gi = trunc nuw i64 %i.gh to i1, !dbg !14529
  %i.gj = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !14530 ; 2 uses
  br i1 %i.gi, label %bb.bi, label %bb.bf, !dbg !14529

bb.bf:                                            ; preds = %bb.be
  %i.gk = load ptr, ptr %i.gj, align 8, !dbg !14531, !noalias !14224, !nonnull !2315, !noundef !2315
  invoke void @_RNvMs_NtCsbm5zPlkZccl_4pyo33errNtB4_5PyErr10from_value(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.r, ptr noundef nonnull %i.gk)
          to label %bb.bh unwind label %bb.bg, !dbg !14532, !noalias !14225

bb.bg:                                            ; preds = %bb.bf
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %.body24.i.i, !dbg !14533

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !14533, !noalias !14224
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14534
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.gm, ptr noundef nonnull align 8 dereferenceable(64) %i.r, i64 64, i1 false), !dbg !14534, !noalias !14240
  store i64 17, ptr %0, align 8, !dbg !14534, !alias.scope !14225, !noalias !14240
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.s)
          to label %_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCINvMsd_CsgjwxzEoLG5s_12polars_errorNtBZ_11PolarsError8wrap_msgNCNCNCINvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB22_17PolarsObjectStore30exec_with_rebuild_retry_on_errNCNCNvNtB26_4glob4glob00NCNCB40_00INtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs8RKTHBS4OBx_12object_store4path4PathEE000E0B1r_ECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.bk, !dbg !14526, !noalias !14221

bb.bi:                                            ; preds = %bb.be
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.gj)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit30.i.i unwind label %bb.bd, !dbg !14535, !noalias !14225

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit30.i.i: ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !14533, !noalias !14224
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14534
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.gn, ptr noundef nonnull align 8 dereferenceable(64) %i.s, i64 64, i1 false), !dbg !14534, !noalias !14240
  store i64 17, ptr %0, align 8, !dbg !14534, !alias.scope !14225, !noalias !14240
  br label %_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCINvMsd_CsgjwxzEoLG5s_12polars_errorNtBZ_11PolarsError8wrap_msgNCNCNCINvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB22_17PolarsObjectStore30exec_with_rebuild_retry_on_errNCNCNvNtB26_4glob4glob00NCNCB40_00INtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs8RKTHBS4OBx_12object_store4path4PathEE000E0B1r_ECsfcROwRM8ZtH_11polars_plan.exit, !dbg !14526

bb.bj:                                            ; preds = %bb.ai
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w) #46
          to label %.body.i unwind label %bb.aj, !dbg !14536, !noalias !14225

bb.bk:                                            ; preds = %bb.bh, %bb.ak, %.noexc4.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types6string8PyStringENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit16.i.i, %.noexc.i, %bb.y
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !14537

.body.i:                                          ; preds = %bb.bk, %bb.bj, %.body24.i.i, %.thread.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.go, %bb.bk ], [ %lpad.thr_comm.split-lp.i.i, %bb.bj ], [ %.pn10.i.i, %.body24.i.i ], [ %.pn.i.i, %.thread.i.i ]
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.x)
          to label %common.resume unwind label %bb.bl, !dbg !14538, !noalias !14221

bb.bl:                                            ; preds = %.body.i
  %i.gp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !14539, !noalias !14221
  unreachable, !dbg !14539

_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCINvMsd_CsgjwxzEoLG5s_12polars_errorNtBZ_11PolarsError8wrap_msgNCNCNCINvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB22_17PolarsObjectStore30exec_with_rebuild_retry_on_errNCNCNvNtB26_4glob4glob00NCNCB40_00INtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs8RKTHBS4OBx_12object_store4path4PathEE000E0B1r_ECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.bh, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit30.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !14526, !noalias !14224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !14536, !noalias !14224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !14540, !noalias !14222
  call void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.x), !dbg !14541, !noalias !14221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !14537, !noalias !14222
end_hunk_7
begin_hunk_8_@_RINvMsd_CsgjwxzEoLG5s_12polars_errorNtB6_11PolarsError8wrap_msgNCNCNCINvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB19_17PolarsObjectStore30exec_with_rebuild_retry_on_errNCNCNvNtB1d_4glob4glob00NCNCB37_00INtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs8RKTHBS4OBx_12object_store4path4PathEE0s_00ECsfcROwRM8ZtH_11polars_plan:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !dbg !15193
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !15193
  invoke void @_RNvXs0_NtCsgZ49sUHp3tW_5alloc6borrowINtB5_3CoweENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dm)
          to label %bb.cb unwind label %bb.ca, !dbg !15193

bb.u:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !dbg !15194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !dbg !15195
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15195
  %i.do = load ptr, ptr %i.dn, align 8, !dbg !15195, !nonnull !2315, !noundef !2315
  call void @_RINvMsd_CsgjwxzEoLG5s_12polars_errorNtB6_11PolarsError8wrap_msgNCNCNCINvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB19_17PolarsObjectStore30exec_with_rebuild_retry_on_errNCNCNvNtB1d_4glob4glob00NCNCB37_00INtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs8RKTHBS4OBx_12object_store4path4PathEE0s_00ECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.bc, ptr noundef nonnull align 8 %i.do), !dbg !15196
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #50, !dbg !15197, !noalias !14988
  %i.dp = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 0, 337) 72, i64 noundef range(i64 1, 17) 8) #50, !dbg !15198, !noalias !14988 ; 4 uses
  %i.dq = icmp eq ptr %i.dp, null, !dbg !15199
  br i1 %i.dq, label %bb.v, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE3newCsfcROwRM8ZtH_11polars_plan.exit, !dbg !15200, !prof !2467

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #48
          to label %.noexc66 unwind label %bb.w, !dbg !15201

.noexc66:                                         ; preds = %bb.v
  unreachable, !dbg !15201

bb.w:                                             ; preds = %bb.v
  %i.dr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.bc) #46
          to label %common.resume unwind label %bb.x, !dbg !15202

bb.x:                                             ; preds = %bb.w
  %i.ds = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !15203
  unreachable, !dbg !15203

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE3newCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dp, ptr noundef nonnull align 8 dereferenceable(72) %i.bc, i64 72, i1 false), !dbg !15204
  store ptr %i.dp, ptr %i.bd, align 8, !dbg !15194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !dbg !15205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !dbg !15206
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !15206
  invoke void @_RNvXs0_NtCsgZ49sUHp3tW_5alloc6borrowINtB5_3CoweENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ba, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dt)
          to label %bb.cd unwind label %bb.cc, !dbg !15206

bb.y:                                             ; preds = %bb.a
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15207
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14990), !dbg !15208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !15209, !noalias !14990
  %i.dv = tail call noundef i32 @_RNvMNtNtCsbm5zPlkZccl_4pyo38internal5stateNtB2_11AttachGuard6attach(), !dbg !15210, !noalias !14990
  store i32 %i.dv, ptr %i.x, align 4, !dbg !15210, !noalias !14990
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14991), !dbg !15211
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !15212, !noalias !14990
  %i.dw = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsbm5zPlkZccl_4pyo33errNtB4_5PyErr5value(ptr noundef nonnull align 8 %i.du)
          to label %.noexc.i unwind label %bb.bk, !dbg !15212, !noalias !14990 ; 3 uses

.noexc.i:                                         ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !15213, !noalias !14992
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !15214, !noalias !14992
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods3str(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dw)
          to label %.noexc3.i unwind label %bb.bk, !dbg !15215, !noalias !14990

.noexc3.i:                                        ; preds = %.noexc.i
  %i.dx = load i64, ptr %i.v, align 8, !dbg !15214, !range !2317, !noalias !14992, !noundef !2315
  %i.dy = trunc nuw i64 %i.dx to i1, !dbg !15216
  br i1 %i.dy, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types6string8PyStringENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit15.i.i, label %bb.z, !dbg !15216

bb.z:                                             ; preds = %.noexc3.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !15217, !noalias !14992
  %i.dz = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !15217
  %i.ea = load ptr, ptr %i.dz, align 8, !dbg !15217, !noalias !14992, !nonnull !2315, !noundef !2315 ; 3 uses
  store ptr %i.ea, ptr %i.u, align 8, !dbg !15217, !noalias !14992
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !15218, !noalias !14992
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types6stringINtNtB8_8instance5BoundNtB4_8PyStringENtB4_15PyStringMethods15to_string_lossy(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.u)
          to label %bb.ab unwind label %bb.aa, !dbg !15219, !noalias !14992

bb.aa:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i.i, %bb.z
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.ab:                                            ; preds = %bb.z
  %i.ec = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !15220
  %i.ed = load ptr, ptr %i.ec, align 8, !dbg !15220, !noalias !14992, !nonnull !2315
  %i.ee = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !15220
  %i.ef = load i64, ptr %i.ee, align 8, !dbg !15220, !noalias !14992
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !14992
  store ptr %i.ed, ptr %i.o, align 8, !noalias !14993
  %i.eg = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.ef, ptr %i.eg, align 8, !noalias !14993
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !15221, !noalias !14993
  store ptr %i.o, ptr %i.n, align 8, !dbg !15221, !noalias !14993
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !15221
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !dbg !15221, !noalias !14993
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noundef nonnull @203, ptr noundef nonnull %i.n)
          to label %bb.ad unwind label %bb.ac, !dbg !15222, !noalias !14992

bb.ac:                                            ; preds = %bb.ab
  %i.eh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CoweEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.t) #46
          to label %.thread.i.i unwind label %bb.aj, !dbg !15223, !noalias !14992

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !15224, !noalias !14993
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !15225, !noalias !14992
  %i.ei = load i64, ptr %i.t, align 8, !dbg !15226, !range !2367, !alias.scope !14994, !noalias !14992, !noundef !2315
  %i.ej = icmp eq i64 %i.ei, -9223372036854775808, !dbg !15226
  br i1 %i.ej, label %bb.ah, label %bb.ae, !dbg !15226

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i.i unwind label %bb.af, !dbg !15227, !noalias !14992

bb.af:                                            ; preds = %bb.ae
  %i.ek = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.thread.i.i unwind label %bb.ag, !dbg !15228, !noalias !14992

bb.ag:                                            ; preds = %bb.af
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !15227, !noalias !14992
  unreachable, !dbg !15227

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i.i: ; preds = %bb.ae
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.ah unwind label %bb.aa, !dbg !15229, !noalias !14992

bb.ah:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !15223, !noalias !14992
  call void @_Py_DecRef(ptr noundef nonnull %i.ea) #50, !dbg !15230, !noalias !14992
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !15231, !noalias !14992
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !15231, !noalias !14992
  br label %bb.ai, !dbg !15232

bb.ai:                                            ; preds = %.noexc5.i, %bb.ah
  %i.em = invoke noundef nonnull ptr @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods8get_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dw)
          to label %bb.ak unwind label %bb.bj, !dbg !15233, !noalias !14992

bb.aj:                                            ; preds = %bb.bj, %.body22.i.i, %bb.ac
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !15234, !noalias !14992
  unreachable, !dbg !15234

.thread.i.i:                                      ; preds = %bb.af, %bb.ac, %bb.aa
  %.pn.i.i = phi { ptr, i32 } [ %i.eh, %bb.ac ], [ %i.eb, %bb.aa ], [ %i.ek, %bb.af ]
  call void @_Py_DecRef(ptr noundef nonnull %i.ea) #50, !dbg !15235, !noalias !14992
  br label %.body.i, !dbg !15231

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types6string8PyStringENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit15.i.i: ; preds = %.noexc3.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !15236
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.eo)
          to label %.noexc4.i unwind label %bb.bk, !dbg !15236, !noalias !14990

.noexc4.i:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types6string8PyStringENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit15.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !15231, !noalias !14992
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !14992
  store ptr @163, ptr %i.m, align 8, !noalias !14995
  %i.ep = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 24, ptr %i.ep, align 8, !noalias !14995
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !15237, !noalias !14995
  store ptr %i.m, ptr %i.l, align 8, !dbg !15237, !noalias !14995
  %.sroa.42.0..sroa_idx.i16.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !15237
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.42.0..sroa_idx.i16.i.i, align 8, !dbg !15237, !noalias !14995
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noundef nonnull @203, ptr noundef nonnull %i.l)
          to label %.noexc5.i unwind label %bb.bk, !dbg !15238, !noalias !14990

.noexc5.i:                                        ; preds = %.noexc4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !15239, !noalias !14995
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !15240, !noalias !14992
  br label %bb.ai, !dbg !15241

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !15242, !noalias !14992
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !15243, !noalias !14992
  invoke void @_RINvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB6_10PyErrState14lazy_argumentsTNtNtCsgZ49sUHp3tW_5alloc6string6StringEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.p, ptr noundef nonnull %i.em, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.w)
          to label %.noexc6.i unwind label %bb.bk, !dbg !15243, !noalias !14990

.noexc6.i:                                        ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.s, ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 64, i1 false), !dbg !15244, !noalias !14992
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !15245, !noalias !14992
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !15246, !noalias !14992
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !15247, !noalias !14996
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !15247, !noalias !14996
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !15247, !noalias !14996
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !15248, !noalias !14996
  %i.eq = getelementptr inbounds nuw i8, ptr %i.s, i64 56, !dbg !15249
  %i.er = load atomic i32, ptr %i.eq acquire, align 8, !dbg !15250, !noalias !14996
  %i.es = icmp eq i32 %i.er, 0, !dbg !15251
  br i1 %i.es, label %bb.al, label %bb.am, !dbg !15251, !prof !2318

bb.al:                                            ; preds = %.noexc6.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !15252
  %i.eu = load i64, ptr %i.et, align 8, !dbg !15253, !range !2317, !noalias !14996, !noundef !2315
  %i.ev = trunc nuw i64 %i.eu to i1, !dbg !15254
  %i.ew = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !noalias !14992
  %.not.i.i.i.i = icmp ne ptr %i.ex, null
  %or.cond.not.i.i = select i1 %i.ev, i1 %.not.i.i.i.i, i1 false, !dbg !15254
  br i1 %or.cond.not.i.i, label %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i, label %bb.an, !dbg !15254, !prof !2582

bb.am:                                            ; preds = %.noexc6.i
  %i.ey = invoke noundef nonnull align 8 ptr @_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState15make_normalized(ptr noundef nonnull align 8 %i.s)
          to label %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i unwind label %bb.bd, !dbg !15255, !noalias !14992

bb.an:                                            ; preds = %bb.al
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @268, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @343) #45
          to label %.noexc18.i.i unwind label %bb.bd, !dbg !15256, !noalias !14992

.noexc18.i.i:                                     ; preds = %bb.an
  unreachable, !dbg !15256

_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i: ; preds = %bb.am, %bb.al
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ew, %bb.al ], [ %i.ey, %bb.am ], !dbg !15257
  invoke void @_RNvMs1_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_20PyErrStateNormalized9clone_ref(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noundef nonnull align 8 %.sroa.0.0.i.i.i.i)
          to label %.noexc19.i.i unwind label %bb.bd, !dbg !15258, !noalias !14992

.noexc19.i.i:                                     ; preds = %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i
  invoke void @_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState10normalized(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.g)
          to label %.noexc20.i.i unwind label %bb.bd, !dbg !15259, !noalias !14992

.noexc20.i.i:                                     ; preds = %.noexc19.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !15260, !noalias !14996
  %i.ez = invoke noundef nonnull ptr @_RNvMs_NtCsbm5zPlkZccl_4pyo33errNtB4_5PyErr10into_value(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.i)
          to label %.noexc21.i.i unwind label %bb.bd, !dbg !15261, !noalias !14992 ; 3 uses

.noexc21.i.i:                                     ; preds = %.noexc20.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !15262, !noalias !14996
  store ptr %i.ez, ptr %i.j, align 8, !dbg !15263, !noalias !14996
  invoke void @_RINvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrReECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) @190, i64 noundef 14)
          to label %bb.ap unwind label %bb.ao, !dbg !15264, !noalias !14996

bb.ao:                                            ; preds = %.noexc21.i.i
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.ap:                                            ; preds = %.noexc21.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !14997), !dbg !15265
  %i.fb = load i64, ptr %i.k, align 8, !dbg !15266, !range !2317, !alias.scope !14997, !noalias !14998, !noundef !2315
  %i.fc = trunc nuw i64 %i.fb to i1, !dbg !15267
  br i1 %i.fc, label %bb.aq, label %bb.au, !dbg !15267, !prof !2368

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !15268, !noalias !14999
  %i.fd = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !15268
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.fd, i64 64, i1 false), !dbg !15268, !noalias !14998
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @317, i64 noundef 43, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @319, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #48
          to label %bb.as unwind label %bb.ar, !dbg !15269, !noalias !15000

bb.ar:                                            ; preds = %bb.aq
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e) #46
          to label %bb.bc unwind label %bb.at, !dbg !15270, !noalias !15000

bb.as:                                            ; preds = %bb.aq
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !15271, !noalias !15000
  unreachable, !dbg !15271

bb.au:                                            ; preds = %bb.ap
  %i.fg = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !15272
  %i.fh = load ptr, ptr %i.fg, align 8, !dbg !15272, !alias.scope !14997, !noalias !14998, !nonnull !2315, !noundef !2315 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !15273, !noalias !14996
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !15274, !noalias !14996
  invoke void @_RINvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrReECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @192, i64 noundef 13)
          to label %bb.aw unwind label %bb.av, !dbg !15275, !noalias !14996

bb.av:                                            ; preds = %bb.bb, %bb.au
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i, !dbg !15276

.body.i.i.i:                                      ; preds = %bb.ay, %bb.av
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.fi, %bb.av ], [ %i.fm, %bb.ay ]
  call void @_Py_DecRef(ptr noundef nonnull %i.fh) #50, !dbg !15277, !noalias !14996
  br label %bb.bc, !dbg !15278

bb.aw:                                            ; preds = %bb.au
  call void @llvm.experimental.noalias.scope.decl(metadata !15001), !dbg !15279
  %i.fj = load i64, ptr %i.h, align 8, !dbg !15280, !range !2317, !alias.scope !15001, !noalias !15002, !noundef !2315
  %i.fk = trunc nuw i64 %i.fj to i1, !dbg !15281
  br i1 %i.fk, label %bb.ax, label %bb.bb, !dbg !15281, !prof !2368

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !15282, !noalias !15003
  %i.fl = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !15282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.fl, i64 64, i1 false), !dbg !15282, !noalias !15002
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @317, i64 noundef 43, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @319, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @193) #48
          to label %bb.az unwind label %bb.ay, !dbg !15283, !noalias !15004

bb.ay:                                            ; preds = %bb.ax
  %i.fm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.f) #46
          to label %.body.i.i.i unwind label %bb.ba, !dbg !15284, !noalias !15004

bb.az:                                            ; preds = %bb.ax
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.fn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !15285, !noalias !15004
  unreachable, !dbg !15285

bb.bb:                                            ; preds = %bb.aw
  %i.fo = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !15286
  %i.fp = load ptr, ptr %i.fo, align 8, !dbg !15286, !alias.scope !15001, !noalias !15002, !nonnull !2315, !noundef !2315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !15287, !noalias !14996
  invoke void @_RNvXsj_NtNtCsbm5zPlkZccl_4pyo35types5tupleTINtNtB9_8instance5BoundNtNtB7_3any5PyAnyEENtNtB9_4call10PyCallArgs15call_positionalCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.q, ptr noundef nonnull %i.fp, ptr noundef nonnull %i.fh)
          to label %bb.be unwind label %bb.av, !dbg !15288, !noalias !15005

bb.bc:                                            ; preds = %.body.i.i.i, %bb.ar, %bb.ao
  %.pn.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.fa, %bb.ao ], [ %i.fe, %bb.ar ]
  call void @_Py_DecRef(ptr noundef nonnull %i.ez) #50, !dbg !15289, !noalias !14996
  br label %.body22.i.i, !dbg !15290

.body22.i.i:                                      ; preds = %bb.bg, %bb.bd, %bb.bc
  %.pn9.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %bb.bc ], [ %i.fv, %bb.bg ], [ %i.fq, %bb.bd ]
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.s) #46
          to label %.body.i unwind label %bb.aj, !dbg !15291, !noalias !14992

bb.bd:                                            ; preds = %bb.bi, %.noexc20.i.i, %.noexc19.i.i, %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i, %bb.an, %bb.am
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %.body22.i.i

bb.be:                                            ; preds = %bb.bb
  call void @_Py_DecRef(ptr noundef nonnull %i.fh) #50, !dbg !15292, !noalias !14996
  call void @_Py_DecRef(ptr noundef nonnull %i.ez) #50, !dbg !15293, !noalias !14996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !15276, !noalias !14996
  %i.fr = load i64, ptr %i.q, align 8, !dbg !15246, !range !2317, !noalias !14992, !noundef !2315
  %i.fs = trunc nuw i64 %i.fr to i1, !dbg !15294
  %i.ft = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !15295 ; 2 uses
  br i1 %i.fs, label %bb.bi, label %bb.bf, !dbg !15294

bb.bf:                                            ; preds = %bb.be
  %i.fu = load ptr, ptr %i.ft, align 8, !dbg !15296, !noalias !14992, !nonnull !2315, !noundef !2315
  invoke void @_RNvMs_NtCsbm5zPlkZccl_4pyo33errNtB4_5PyErr10from_value(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.r, ptr noundef nonnull %i.fu)
          to label %bb.bh unwind label %bb.bg, !dbg !15297, !noalias !14992

bb.bg:                                            ; preds = %bb.bf
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %.body22.i.i, !dbg !15298

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !15298, !noalias !14992
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15299
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fw, ptr noundef nonnull align 8 dereferenceable(64) %i.r, i64 64, i1 false), !dbg !15299
  store i64 17, ptr %0, align 8, !dbg !15299, !alias.scope !14992
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.s)
          to label %_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCINvMsd_CsgjwxzEoLG5s_12polars_errorNtBZ_11PolarsError8wrap_msgNCNCNCINvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB22_17PolarsObjectStore30exec_with_rebuild_retry_on_errNCNCNvNtB26_4glob4glob00NCNCB40_00INtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs8RKTHBS4OBx_12object_store4path4PathEE0s_00E0B1r_ECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.bk, !dbg !15291, !noalias !14990

bb.bi:                                            ; preds = %bb.be
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.ft)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit28.i.i unwind label %bb.bd, !dbg !15300, !noalias !14992

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit28.i.i: ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !15298, !noalias !14992
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15299
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fx, ptr noundef nonnull align 8 dereferenceable(64) %i.s, i64 64, i1 false), !dbg !15299
  store i64 17, ptr %0, align 8, !dbg !15299, !alias.scope !14992
  br label %_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCINvMsd_CsgjwxzEoLG5s_12polars_errorNtBZ_11PolarsError8wrap_msgNCNCNCINvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB22_17PolarsObjectStore30exec_with_rebuild_retry_on_errNCNCNvNtB26_4glob4glob00NCNCB40_00INtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs8RKTHBS4OBx_12object_store4path4PathEE0s_00E0B1r_ECsfcROwRM8ZtH_11polars_plan.exit, !dbg !15291

bb.bj:                                            ; preds = %bb.ai
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w) #46
          to label %.body.i unwind label %bb.aj, !dbg !15301, !noalias !14992

bb.bk:                                            ; preds = %bb.bh, %bb.ak, %.noexc4.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types6string8PyStringENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit15.i.i, %.noexc.i, %bb.y
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !15302

.body.i:                                          ; preds = %bb.bk, %bb.bj, %.body22.i.i, %.thread.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.fy, %bb.bk ], [ %lpad.thr_comm.split-lp.i.i, %bb.bj ], [ %.pn9.i.i, %.body22.i.i ], [ %.pn.i.i, %.thread.i.i ]
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.x)
          to label %common.resume unwind label %bb.bl, !dbg !15303, !noalias !14990

bb.bl:                                            ; preds = %.body.i
  %i.fz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !15304, !noalias !14990
  unreachable, !dbg !15304

_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCINvMsd_CsgjwxzEoLG5s_12polars_errorNtBZ_11PolarsError8wrap_msgNCNCNCINvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB22_17PolarsObjectStore30exec_with_rebuild_retry_on_errNCNCNvNtB26_4glob4glob00NCNCB40_00INtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs8RKTHBS4OBx_12object_store4path4PathEE0s_00E0B1r_ECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.bh, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit28.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !15291, !noalias !14992
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !15301, !noalias !14992
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !15305, !noalias !14990
  call void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.x), !dbg !15306, !noalias !14990
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !15302, !noalias !14990
end_hunk_8
begin_hunk_9_@_RINvMsd_CsgjwxzEoLG5s_12polars_errorNtB6_11PolarsError8wrap_msgNCNCNCINvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB19_17PolarsObjectStore30exec_with_rebuild_retry_on_errNCNCNvNtB1f_10path_utils17expand_path_cloud0s0_0NCNCB37_s0_00INtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathEE000ECsfcROwRM8ZtH_11polars_plan:bb.a
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15984
  %i.ec = load ptr, ptr %i.eb, align 8, !dbg !15984, !nonnull !2315, !noundef !2315
  call void @_RINvMsd_CsgjwxzEoLG5s_12polars_errorNtB6_11PolarsError8wrap_msgNCNCNCINvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB19_17PolarsObjectStore30exec_with_rebuild_retry_on_errNCNCNvNtB1f_10path_utils17expand_path_cloud0s0_0NCNCB37_s0_00INtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathEE000ECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.bc, ptr noundef nonnull align 8 %i.ec, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %2), !dbg !15985
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #50, !dbg !15986, !noalias !15773
  %i.ed = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 0, 337) 72, i64 noundef range(i64 1, 17) 8) #50, !dbg !15987, !noalias !15773 ; 4 uses
  %i.ee = icmp eq ptr %i.ed, null, !dbg !15988
  br i1 %i.ee, label %bb.v, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE3newCsfcROwRM8ZtH_11polars_plan.exit, !dbg !15989, !prof !2467

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #48
          to label %.noexc79 unwind label %bb.w, !dbg !15990

.noexc79:                                         ; preds = %bb.v
  unreachable, !dbg !15990

bb.w:                                             ; preds = %bb.v
  %i.ef = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.bc) #46
          to label %common.resume unwind label %bb.x, !dbg !15991

bb.x:                                             ; preds = %bb.w
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !15992
  unreachable, !dbg !15992

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE3newCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ed, ptr noundef nonnull align 8 dereferenceable(72) %i.bc, i64 72, i1 false), !dbg !15993
  store ptr %i.ed, ptr %i.bd, align 8, !dbg !15983
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !dbg !15994
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !dbg !15995
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !15995
  invoke void @_RNvXs0_NtCsgZ49sUHp3tW_5alloc6borrowINtB5_3CoweENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ba, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eh)
          to label %bb.cd unwind label %bb.cc, !dbg !15995

bb.y:                                             ; preds = %bb.a
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15996
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15775), !dbg !15997
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !15998, !noalias !15776
  %i.ej = tail call noundef i32 @_RNvMNtNtCsbm5zPlkZccl_4pyo38internal5stateNtB2_11AttachGuard6attach(), !dbg !15999, !noalias !15776
  store i32 %i.ej, ptr %i.x, align 4, !dbg !15999, !noalias !15776
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15777), !dbg !16000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !16001, !noalias !15776
  %i.ek = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsbm5zPlkZccl_4pyo33errNtB4_5PyErr5value(ptr noundef nonnull align 8 %i.ei)
          to label %.noexc.i unwind label %bb.bk, !dbg !16001, !noalias !15776 ; 3 uses

.noexc.i:                                         ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !16002, !noalias !15778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !16003, !noalias !15778
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods3str(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ek)
          to label %.noexc3.i unwind label %bb.bk, !dbg !16004, !noalias !15775

.noexc3.i:                                        ; preds = %.noexc.i
  %i.el = load i64, ptr %i.v, align 8, !dbg !16003, !range !2317, !noalias !15778, !noundef !2315
  %i.em = trunc nuw i64 %i.el to i1, !dbg !16005
  br i1 %i.em, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types6string8PyStringENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit16.i.i, label %bb.z, !dbg !16005

bb.z:                                             ; preds = %.noexc3.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !16006, !noalias !15778
  %i.en = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !16006
  %i.eo = load ptr, ptr %i.en, align 8, !dbg !16006, !noalias !15778, !nonnull !2315, !noundef !2315 ; 3 uses
  store ptr %i.eo, ptr %i.u, align 8, !dbg !16006, !noalias !15778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !16007, !noalias !15778
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types6stringINtNtB8_8instance5BoundNtB4_8PyStringENtB4_15PyStringMethods15to_string_lossy(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.u)
          to label %bb.ab unwind label %bb.aa, !dbg !16008, !noalias !15779

bb.aa:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i.i, %bb.z
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.ab:                                            ; preds = %bb.z
  %i.eq = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !16009
  %i.er = load ptr, ptr %i.eq, align 8, !dbg !16009, !noalias !15778, !nonnull !2315
  %i.es = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !16009
  %i.et = load i64, ptr %i.es, align 8, !dbg !16009, !noalias !15778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !15778
  store ptr %i.er, ptr %i.o, align 8, !noalias !15780
  %i.eu = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.et, ptr %i.eu, align 8, !noalias !15780
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !16010, !noalias !15780
  store ptr %i.o, ptr %i.n, align 8, !dbg !16010, !noalias !15780
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !16010
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !dbg !16010, !noalias !15780
  %i.ev = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !16010
  store ptr %2, ptr %i.ev, align 8, !dbg !16010, !noalias !15780
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !16010
  store ptr @_RNvXs1f_Cs8RKTHBS4OBx_12object_storeNtB6_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !dbg !16010, !noalias !15780
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noundef nonnull @202, ptr noundef nonnull %i.n)
          to label %bb.ad unwind label %bb.ac, !dbg !16011, !noalias !15779

bb.ac:                                            ; preds = %bb.ab
  %i.ew = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CoweEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.t) #46
          to label %.thread.i.i unwind label %bb.aj, !dbg !16012, !noalias !15779

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !16013, !noalias !15780
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !16014, !noalias !15778
  %i.ex = load i64, ptr %i.t, align 8, !dbg !16015, !range !2367, !alias.scope !15781, !noalias !15778, !noundef !2315
  %i.ey = icmp eq i64 %i.ex, -9223372036854775808, !dbg !16015
  br i1 %i.ey, label %bb.ah, label %bb.ae, !dbg !16015

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i.i unwind label %bb.af, !dbg !16016, !noalias !15779

bb.af:                                            ; preds = %bb.ae
  %i.ez = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.thread.i.i unwind label %bb.ag, !dbg !16017, !noalias !15779

bb.ag:                                            ; preds = %bb.af
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !16016, !noalias !15779
  unreachable, !dbg !16016

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i.i: ; preds = %bb.ae
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.ah unwind label %bb.aa, !dbg !16018, !noalias !15779

bb.ah:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !16012, !noalias !15778
  call void @_Py_DecRef(ptr noundef nonnull %i.eo) #50, !dbg !16019, !noalias !15779
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !16020, !noalias !15778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !16020, !noalias !15778
  br label %bb.ai, !dbg !16021

bb.ai:                                            ; preds = %.noexc5.i, %bb.ah
  %i.fb = invoke noundef nonnull ptr @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods8get_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ek)
          to label %bb.ak unwind label %bb.bj, !dbg !16022, !noalias !15779

bb.aj:                                            ; preds = %bb.bj, %.body24.i.i, %bb.ac
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !16023, !noalias !15779
  unreachable, !dbg !16023

.thread.i.i:                                      ; preds = %bb.af, %bb.ac, %bb.aa
  %.pn.i.i = phi { ptr, i32 } [ %i.ew, %bb.ac ], [ %i.ep, %bb.aa ], [ %i.ez, %bb.af ]
  call void @_Py_DecRef(ptr noundef nonnull %i.eo) #50, !dbg !16024, !noalias !15779
  br label %.body.i, !dbg !16020

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types6string8PyStringENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit16.i.i: ; preds = %.noexc3.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !16025
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.fd)
          to label %.noexc4.i unwind label %bb.bk, !dbg !16025, !noalias !15775

.noexc4.i:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types6string8PyStringENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit16.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !16020, !noalias !15778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !15778
  store ptr @163, ptr %i.m, align 8, !noalias !15782
  %i.fe = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 24, ptr %i.fe, align 8, !noalias !15782
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !16026, !noalias !15782
  store ptr %i.m, ptr %i.l, align 8, !dbg !16026, !noalias !15782
  %.sroa.42.0..sroa_idx.i17.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !16026
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.42.0..sroa_idx.i17.i.i, align 8, !dbg !16026, !noalias !15782
  %i.ff = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !16026
  store ptr %2, ptr %i.ff, align 8, !dbg !16026, !noalias !15782
  %.sroa.46.0..sroa_idx.i18.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24, !dbg !16026
  store ptr @_RNvXs1f_Cs8RKTHBS4OBx_12object_storeNtB6_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i18.i.i, align 8, !dbg !16026, !noalias !15782
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noundef nonnull @202, ptr noundef nonnull %i.l)
          to label %.noexc5.i unwind label %bb.bk, !dbg !16027, !noalias !15775

.noexc5.i:                                        ; preds = %.noexc4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !16028, !noalias !15782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !16029, !noalias !15778
  br label %bb.ai, !dbg !16030

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !16031, !noalias !15778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !16032, !noalias !15778
  invoke void @_RINvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB6_10PyErrState14lazy_argumentsTNtNtCsgZ49sUHp3tW_5alloc6string6StringEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.p, ptr noundef nonnull %i.fb, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.w)
          to label %.noexc6.i unwind label %bb.bk, !dbg !16032, !noalias !15775

.noexc6.i:                                        ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.s, ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 64, i1 false), !dbg !16033, !noalias !15778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !16034, !noalias !15778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !16035, !noalias !15778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !16036, !noalias !15783
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !16036, !noalias !15783
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !16036, !noalias !15783
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !16037, !noalias !15783
  %i.fg = getelementptr inbounds nuw i8, ptr %i.s, i64 56, !dbg !16038
  %i.fh = load atomic i32, ptr %i.fg acquire, align 8, !dbg !16039, !noalias !15783
  %i.fi = icmp eq i32 %i.fh, 0, !dbg !16040
  br i1 %i.fi, label %bb.al, label %bb.am, !dbg !16040, !prof !2318

bb.al:                                            ; preds = %.noexc6.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !16041
  %i.fk = load i64, ptr %i.fj, align 8, !dbg !16042, !range !2317, !noalias !15783, !noundef !2315
  %i.fl = trunc nuw i64 %i.fk to i1, !dbg !16043
  %i.fm = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !noalias !15778
  %.not.i.i.i.i = icmp ne ptr %i.fn, null
  %or.cond.not.i.i = select i1 %i.fl, i1 %.not.i.i.i.i, i1 false, !dbg !16043
  br i1 %or.cond.not.i.i, label %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i, label %bb.an, !dbg !16043, !prof !2582

bb.am:                                            ; preds = %.noexc6.i
  %i.fo = invoke noundef nonnull align 8 ptr @_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState15make_normalized(ptr noundef nonnull align 8 %i.s)
          to label %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i unwind label %bb.bd, !dbg !16044, !noalias !15779

bb.an:                                            ; preds = %bb.al
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @268, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @343) #45
          to label %.noexc20.i.i unwind label %bb.bd, !dbg !16045, !noalias !15779

.noexc20.i.i:                                     ; preds = %bb.an
  unreachable, !dbg !16045

_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i: ; preds = %bb.am, %bb.al
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.fm, %bb.al ], [ %i.fo, %bb.am ], !dbg !16046
  invoke void @_RNvMs1_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_20PyErrStateNormalized9clone_ref(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noundef nonnull align 8 %.sroa.0.0.i.i.i.i)
          to label %.noexc21.i.i unwind label %bb.bd, !dbg !16047, !noalias !15779

.noexc21.i.i:                                     ; preds = %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i
  invoke void @_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState10normalized(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.g)
          to label %.noexc22.i.i unwind label %bb.bd, !dbg !16048, !noalias !15779

.noexc22.i.i:                                     ; preds = %.noexc21.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !16049, !noalias !15783
  %i.fp = invoke noundef nonnull ptr @_RNvMs_NtCsbm5zPlkZccl_4pyo33errNtB4_5PyErr10into_value(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.i)
          to label %.noexc23.i.i unwind label %bb.bd, !dbg !16050, !noalias !15779 ; 3 uses

.noexc23.i.i:                                     ; preds = %.noexc22.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !16051, !noalias !15783
  store ptr %i.fp, ptr %i.j, align 8, !dbg !16052, !noalias !15783
  invoke void @_RINvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrReECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) @190, i64 noundef 14)
          to label %bb.ap unwind label %bb.ao, !dbg !16053, !noalias !15784

bb.ao:                                            ; preds = %.noexc23.i.i
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.ap:                                            ; preds = %.noexc23.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !15785), !dbg !16054
  %i.fr = load i64, ptr %i.k, align 8, !dbg !16055, !range !2317, !alias.scope !15785, !noalias !15786, !noundef !2315
  %i.fs = trunc nuw i64 %i.fr to i1, !dbg !16056
  br i1 %i.fs, label %bb.aq, label %bb.au, !dbg !16056, !prof !2368

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !16057, !noalias !15787
  %i.ft = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !16057
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.ft, i64 64, i1 false), !dbg !16057, !noalias !15786
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @317, i64 noundef 43, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @319, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #48
          to label %bb.as unwind label %bb.ar, !dbg !16058, !noalias !15788

bb.ar:                                            ; preds = %bb.aq
  %i.fu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e) #46
          to label %bb.bc unwind label %bb.at, !dbg !16059, !noalias !15788

bb.as:                                            ; preds = %bb.aq
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.fv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !16060, !noalias !15788
  unreachable, !dbg !16060

bb.au:                                            ; preds = %bb.ap
  %i.fw = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !16061
  %i.fx = load ptr, ptr %i.fw, align 8, !dbg !16061, !alias.scope !15785, !noalias !15786, !nonnull !2315, !noundef !2315 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !16062, !noalias !15783
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !16063, !noalias !15783
  invoke void @_RINvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrReECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ek, ptr noalias noundef nonnull readonly captures(address, read_provenance) @192, i64 noundef 13)
          to label %bb.aw unwind label %bb.av, !dbg !16064, !noalias !15784

bb.av:                                            ; preds = %bb.bb, %bb.au
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i, !dbg !16065

.body.i.i.i:                                      ; preds = %bb.ay, %bb.av
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.fy, %bb.av ], [ %i.gc, %bb.ay ]
  call void @_Py_DecRef(ptr noundef nonnull %i.fx) #50, !dbg !16066, !noalias !15784
  br label %bb.bc, !dbg !16067

bb.aw:                                            ; preds = %bb.au
  call void @llvm.experimental.noalias.scope.decl(metadata !15789), !dbg !16068
  %i.fz = load i64, ptr %i.h, align 8, !dbg !16069, !range !2317, !alias.scope !15789, !noalias !15790, !noundef !2315
  %i.ga = trunc nuw i64 %i.fz to i1, !dbg !16070
  br i1 %i.ga, label %bb.ax, label %bb.bb, !dbg !16070, !prof !2368

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !16071, !noalias !15791
  %i.gb = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !16071
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.gb, i64 64, i1 false), !dbg !16071, !noalias !15790
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @317, i64 noundef 43, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @319, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @193) #48
          to label %bb.az unwind label %bb.ay, !dbg !16072, !noalias !15792

bb.ay:                                            ; preds = %bb.ax
  %i.gc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.f) #46
          to label %.body.i.i.i unwind label %bb.ba, !dbg !16073, !noalias !15792

bb.az:                                            ; preds = %bb.ax
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.gd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !16074, !noalias !15792
  unreachable, !dbg !16074

bb.bb:                                            ; preds = %bb.aw
  %i.ge = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !16075
  %i.gf = load ptr, ptr %i.ge, align 8, !dbg !16075, !alias.scope !15789, !noalias !15790, !nonnull !2315, !noundef !2315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !16076, !noalias !15783
  invoke void @_RNvXsj_NtNtCsbm5zPlkZccl_4pyo35types5tupleTINtNtB9_8instance5BoundNtNtB7_3any5PyAnyEENtNtB9_4call10PyCallArgs15call_positionalCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.q, ptr noundef nonnull %i.gf, ptr noundef nonnull %i.fx)
          to label %bb.be unwind label %bb.av, !dbg !16077, !noalias !15793

bb.bc:                                            ; preds = %.body.i.i.i, %bb.ar, %bb.ao
  %.pn.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.fq, %bb.ao ], [ %i.fu, %bb.ar ]
  call void @_Py_DecRef(ptr noundef nonnull %i.fp) #50, !dbg !16078, !noalias !15784
  br label %.body24.i.i, !dbg !16079

.body24.i.i:                                      ; preds = %bb.bg, %bb.bd, %bb.bc
  %.pn10.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %bb.bc ], [ %i.gl, %bb.bg ], [ %i.gg, %bb.bd ]
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.s) #46
          to label %.body.i unwind label %bb.aj, !dbg !16080, !noalias !15779

bb.bd:                                            ; preds = %bb.bi, %.noexc22.i.i, %.noexc21.i.i, %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i, %bb.an, %bb.am
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %.body24.i.i

bb.be:                                            ; preds = %bb.bb
  call void @_Py_DecRef(ptr noundef nonnull %i.fx) #50, !dbg !16081, !noalias !15784
  call void @_Py_DecRef(ptr noundef nonnull %i.fp) #50, !dbg !16082, !noalias !15784
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !16065, !noalias !15783
  %i.gh = load i64, ptr %i.q, align 8, !dbg !16035, !range !2317, !noalias !15778, !noundef !2315
  %i.gi = trunc nuw i64 %i.gh to i1, !dbg !16083
  %i.gj = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !16084 ; 2 uses
  br i1 %i.gi, label %bb.bi, label %bb.bf, !dbg !16083

bb.bf:                                            ; preds = %bb.be
  %i.gk = load ptr, ptr %i.gj, align 8, !dbg !16085, !noalias !15778, !nonnull !2315, !noundef !2315
  invoke void @_RNvMs_NtCsbm5zPlkZccl_4pyo33errNtB4_5PyErr10from_value(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.r, ptr noundef nonnull %i.gk)
          to label %bb.bh unwind label %bb.bg, !dbg !16086, !noalias !15779

bb.bg:                                            ; preds = %bb.bf
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %.body24.i.i, !dbg !16087

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !16087, !noalias !15778
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16088
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.gm, ptr noundef nonnull align 8 dereferenceable(64) %i.r, i64 64, i1 false), !dbg !16088, !noalias !15794
  store i64 17, ptr %0, align 8, !dbg !16088, !alias.scope !15779, !noalias !15794
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.s)
          to label %_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCINvMsd_CsgjwxzEoLG5s_12polars_errorNtBZ_11PolarsError8wrap_msgNCNCNCINvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB22_17PolarsObjectStore30exec_with_rebuild_retry_on_errNCNCNvNtB28_10path_utils17expand_path_cloud0s0_0NCNCB40_s0_00INtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathEE000E0B1r_ECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.bk, !dbg !16080, !noalias !15775

bb.bi:                                            ; preds = %bb.be
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.gj)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit30.i.i unwind label %bb.bd, !dbg !16089, !noalias !15779

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit30.i.i: ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !16087, !noalias !15778
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16088
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.gn, ptr noundef nonnull align 8 dereferenceable(64) %i.s, i64 64, i1 false), !dbg !16088, !noalias !15794
  store i64 17, ptr %0, align 8, !dbg !16088, !alias.scope !15779, !noalias !15794
  br label %_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCINvMsd_CsgjwxzEoLG5s_12polars_errorNtBZ_11PolarsError8wrap_msgNCNCNCINvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB22_17PolarsObjectStore30exec_with_rebuild_retry_on_errNCNCNvNtB28_10path_utils17expand_path_cloud0s0_0NCNCB40_s0_00INtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathEE000E0B1r_ECsfcROwRM8ZtH_11polars_plan.exit, !dbg !16080

bb.bj:                                            ; preds = %bb.ai
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w) #46
          to label %.body.i unwind label %bb.aj, !dbg !16090, !noalias !15779

bb.bk:                                            ; preds = %bb.bh, %bb.ak, %.noexc4.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types6string8PyStringENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit16.i.i, %.noexc.i, %bb.y
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !16091

.body.i:                                          ; preds = %bb.bk, %bb.bj, %.body24.i.i, %.thread.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.go, %bb.bk ], [ %lpad.thr_comm.split-lp.i.i, %bb.bj ], [ %.pn10.i.i, %.body24.i.i ], [ %.pn.i.i, %.thread.i.i ]
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.x)
          to label %common.resume unwind label %bb.bl, !dbg !16092, !noalias !15775

bb.bl:                                            ; preds = %.body.i
  %i.gp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !16093, !noalias !15775
  unreachable, !dbg !16093

_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCINvMsd_CsgjwxzEoLG5s_12polars_errorNtBZ_11PolarsError8wrap_msgNCNCNCINvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB22_17PolarsObjectStore30exec_with_rebuild_retry_on_errNCNCNvNtB28_10path_utils17expand_path_cloud0s0_0NCNCB40_s0_00INtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathEE000E0B1r_ECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.bh, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit30.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !16080, !noalias !15778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !16090, !noalias !15778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !16094, !noalias !15776
  call void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.x), !dbg !16095, !noalias !15775
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !16091, !noalias !15776
end_hunk_9
begin_hunk_10_@_RINvMsd_CsgjwxzEoLG5s_12polars_errorNtB6_11PolarsError8wrap_msgNCNCNCINvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB19_17PolarsObjectStore30exec_with_rebuild_retry_on_errNCNCNvNtB1f_10path_utils17expand_path_cloud0s0_0NCNCB37_s0_00INtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathEE0s_00ECsfcROwRM8ZtH_11polars_plan:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !dbg !16747
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !16747
  invoke void @_RNvXs0_NtCsgZ49sUHp3tW_5alloc6borrowINtB5_3CoweENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dm)
          to label %bb.cb unwind label %bb.ca, !dbg !16747

bb.u:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !dbg !16748
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !dbg !16749
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !16749
  %i.do = load ptr, ptr %i.dn, align 8, !dbg !16749, !nonnull !2315, !noundef !2315
  call void @_RINvMsd_CsgjwxzEoLG5s_12polars_errorNtB6_11PolarsError8wrap_msgNCNCNCINvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB19_17PolarsObjectStore30exec_with_rebuild_retry_on_errNCNCNvNtB1f_10path_utils17expand_path_cloud0s0_0NCNCB37_s0_00INtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathEE0s_00ECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.bc, ptr noundef nonnull align 8 %i.do), !dbg !16750
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #50, !dbg !16751, !noalias !16542
  %i.dp = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 0, 337) 72, i64 noundef range(i64 1, 17) 8) #50, !dbg !16752, !noalias !16542 ; 4 uses
  %i.dq = icmp eq ptr %i.dp, null, !dbg !16753
  br i1 %i.dq, label %bb.v, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE3newCsfcROwRM8ZtH_11polars_plan.exit, !dbg !16754, !prof !2467

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #48
          to label %.noexc66 unwind label %bb.w, !dbg !16755

.noexc66:                                         ; preds = %bb.v
  unreachable, !dbg !16755

bb.w:                                             ; preds = %bb.v
  %i.dr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.bc) #46
          to label %common.resume unwind label %bb.x, !dbg !16756

bb.x:                                             ; preds = %bb.w
  %i.ds = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !16757
  unreachable, !dbg !16757

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE3newCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dp, ptr noundef nonnull align 8 dereferenceable(72) %i.bc, i64 72, i1 false), !dbg !16758
  store ptr %i.dp, ptr %i.bd, align 8, !dbg !16748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !dbg !16759
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !dbg !16760
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !16760
  invoke void @_RNvXs0_NtCsgZ49sUHp3tW_5alloc6borrowINtB5_3CoweENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ba, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dt)
          to label %bb.cd unwind label %bb.cc, !dbg !16760

bb.y:                                             ; preds = %bb.a
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !16761
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16544), !dbg !16762
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !16763, !noalias !16544
  %i.dv = tail call noundef i32 @_RNvMNtNtCsbm5zPlkZccl_4pyo38internal5stateNtB2_11AttachGuard6attach(), !dbg !16764, !noalias !16544
  store i32 %i.dv, ptr %i.x, align 4, !dbg !16764, !noalias !16544
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16545), !dbg !16765
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !16766, !noalias !16544
  %i.dw = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsbm5zPlkZccl_4pyo33errNtB4_5PyErr5value(ptr noundef nonnull align 8 %i.du)
          to label %.noexc.i unwind label %bb.bk, !dbg !16766, !noalias !16544 ; 3 uses

.noexc.i:                                         ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !16767, !noalias !16546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !16768, !noalias !16546
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods3str(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dw)
          to label %.noexc3.i unwind label %bb.bk, !dbg !16769, !noalias !16544

.noexc3.i:                                        ; preds = %.noexc.i
  %i.dx = load i64, ptr %i.v, align 8, !dbg !16768, !range !2317, !noalias !16546, !noundef !2315
  %i.dy = trunc nuw i64 %i.dx to i1, !dbg !16770
  br i1 %i.dy, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types6string8PyStringENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit15.i.i, label %bb.z, !dbg !16770

bb.z:                                             ; preds = %.noexc3.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !16771, !noalias !16546
  %i.dz = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !16771
  %i.ea = load ptr, ptr %i.dz, align 8, !dbg !16771, !noalias !16546, !nonnull !2315, !noundef !2315 ; 3 uses
  store ptr %i.ea, ptr %i.u, align 8, !dbg !16771, !noalias !16546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !16772, !noalias !16546
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types6stringINtNtB8_8instance5BoundNtB4_8PyStringENtB4_15PyStringMethods15to_string_lossy(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.u)
          to label %bb.ab unwind label %bb.aa, !dbg !16773, !noalias !16546

bb.aa:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i.i, %bb.z
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.ab:                                            ; preds = %bb.z
  %i.ec = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !16774
  %i.ed = load ptr, ptr %i.ec, align 8, !dbg !16774, !noalias !16546, !nonnull !2315
  %i.ee = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !16774
  %i.ef = load i64, ptr %i.ee, align 8, !dbg !16774, !noalias !16546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !16546
  store ptr %i.ed, ptr %i.o, align 8, !noalias !16547
  %i.eg = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.ef, ptr %i.eg, align 8, !noalias !16547
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !16775, !noalias !16547
  store ptr %i.o, ptr %i.n, align 8, !dbg !16775, !noalias !16547
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !16775
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !dbg !16775, !noalias !16547
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noundef nonnull @203, ptr noundef nonnull %i.n)
          to label %bb.ad unwind label %bb.ac, !dbg !16776, !noalias !16546

bb.ac:                                            ; preds = %bb.ab
  %i.eh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CoweEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.t) #46
          to label %.thread.i.i unwind label %bb.aj, !dbg !16777, !noalias !16546

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !16778, !noalias !16547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !16779, !noalias !16546
  %i.ei = load i64, ptr %i.t, align 8, !dbg !16780, !range !2367, !alias.scope !16548, !noalias !16546, !noundef !2315
  %i.ej = icmp eq i64 %i.ei, -9223372036854775808, !dbg !16780
  br i1 %i.ej, label %bb.ah, label %bb.ae, !dbg !16780

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i.i unwind label %bb.af, !dbg !16781, !noalias !16546

bb.af:                                            ; preds = %bb.ae
  %i.ek = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.thread.i.i unwind label %bb.ag, !dbg !16782, !noalias !16546

bb.ag:                                            ; preds = %bb.af
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !16781, !noalias !16546
  unreachable, !dbg !16781

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i.i: ; preds = %bb.ae
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.ah unwind label %bb.aa, !dbg !16783, !noalias !16546

bb.ah:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !16777, !noalias !16546
  call void @_Py_DecRef(ptr noundef nonnull %i.ea) #50, !dbg !16784, !noalias !16546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !16785, !noalias !16546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !16785, !noalias !16546
  br label %bb.ai, !dbg !16786

bb.ai:                                            ; preds = %.noexc5.i, %bb.ah
  %i.em = invoke noundef nonnull ptr @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods8get_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dw)
          to label %bb.ak unwind label %bb.bj, !dbg !16787, !noalias !16546

bb.aj:                                            ; preds = %bb.bj, %.body22.i.i, %bb.ac
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !16788, !noalias !16546
  unreachable, !dbg !16788

.thread.i.i:                                      ; preds = %bb.af, %bb.ac, %bb.aa
  %.pn.i.i = phi { ptr, i32 } [ %i.eh, %bb.ac ], [ %i.eb, %bb.aa ], [ %i.ek, %bb.af ]
  call void @_Py_DecRef(ptr noundef nonnull %i.ea) #50, !dbg !16789, !noalias !16546
  br label %.body.i, !dbg !16785

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types6string8PyStringENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit15.i.i: ; preds = %.noexc3.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !16790
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.eo)
          to label %.noexc4.i unwind label %bb.bk, !dbg !16790, !noalias !16544

.noexc4.i:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types6string8PyStringENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit15.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !16785, !noalias !16546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !16546
  store ptr @163, ptr %i.m, align 8, !noalias !16549
  %i.ep = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 24, ptr %i.ep, align 8, !noalias !16549
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !16791, !noalias !16549
  store ptr %i.m, ptr %i.l, align 8, !dbg !16791, !noalias !16549
  %.sroa.42.0..sroa_idx.i16.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !16791
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.42.0..sroa_idx.i16.i.i, align 8, !dbg !16791, !noalias !16549
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noundef nonnull @203, ptr noundef nonnull %i.l)
          to label %.noexc5.i unwind label %bb.bk, !dbg !16792, !noalias !16544

.noexc5.i:                                        ; preds = %.noexc4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !16793, !noalias !16549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !16794, !noalias !16546
  br label %bb.ai, !dbg !16795

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !16796, !noalias !16546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !16797, !noalias !16546
  invoke void @_RINvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB6_10PyErrState14lazy_argumentsTNtNtCsgZ49sUHp3tW_5alloc6string6StringEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.p, ptr noundef nonnull %i.em, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.w)
          to label %.noexc6.i unwind label %bb.bk, !dbg !16797, !noalias !16544

.noexc6.i:                                        ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.s, ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 64, i1 false), !dbg !16798, !noalias !16546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !16799, !noalias !16546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !16800, !noalias !16546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !16801, !noalias !16550
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !16801, !noalias !16550
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !16801, !noalias !16550
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !16802, !noalias !16550
  %i.eq = getelementptr inbounds nuw i8, ptr %i.s, i64 56, !dbg !16803
  %i.er = load atomic i32, ptr %i.eq acquire, align 8, !dbg !16804, !noalias !16550
  %i.es = icmp eq i32 %i.er, 0, !dbg !16805
  br i1 %i.es, label %bb.al, label %bb.am, !dbg !16805, !prof !2318

bb.al:                                            ; preds = %.noexc6.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !16806
  %i.eu = load i64, ptr %i.et, align 8, !dbg !16807, !range !2317, !noalias !16550, !noundef !2315
  %i.ev = trunc nuw i64 %i.eu to i1, !dbg !16808
  %i.ew = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !noalias !16546
  %.not.i.i.i.i = icmp ne ptr %i.ex, null
  %or.cond.not.i.i = select i1 %i.ev, i1 %.not.i.i.i.i, i1 false, !dbg !16808
  br i1 %or.cond.not.i.i, label %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i, label %bb.an, !dbg !16808, !prof !2582

bb.am:                                            ; preds = %.noexc6.i
  %i.ey = invoke noundef nonnull align 8 ptr @_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState15make_normalized(ptr noundef nonnull align 8 %i.s)
          to label %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i unwind label %bb.bd, !dbg !16809, !noalias !16546

bb.an:                                            ; preds = %bb.al
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @268, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @343) #45
          to label %.noexc18.i.i unwind label %bb.bd, !dbg !16810, !noalias !16546

.noexc18.i.i:                                     ; preds = %bb.an
  unreachable, !dbg !16810

_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i: ; preds = %bb.am, %bb.al
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ew, %bb.al ], [ %i.ey, %bb.am ], !dbg !16811
  invoke void @_RNvMs1_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_20PyErrStateNormalized9clone_ref(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noundef nonnull align 8 %.sroa.0.0.i.i.i.i)
          to label %.noexc19.i.i unwind label %bb.bd, !dbg !16812, !noalias !16546

.noexc19.i.i:                                     ; preds = %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i
  invoke void @_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState10normalized(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.g)
          to label %.noexc20.i.i unwind label %bb.bd, !dbg !16813, !noalias !16546

.noexc20.i.i:                                     ; preds = %.noexc19.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !16814, !noalias !16550
  %i.ez = invoke noundef nonnull ptr @_RNvMs_NtCsbm5zPlkZccl_4pyo33errNtB4_5PyErr10into_value(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.i)
          to label %.noexc21.i.i unwind label %bb.bd, !dbg !16815, !noalias !16546 ; 3 uses

.noexc21.i.i:                                     ; preds = %.noexc20.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !16816, !noalias !16550
  store ptr %i.ez, ptr %i.j, align 8, !dbg !16817, !noalias !16550
  invoke void @_RINvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrReECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) @190, i64 noundef 14)
          to label %bb.ap unwind label %bb.ao, !dbg !16818, !noalias !16550

bb.ao:                                            ; preds = %.noexc21.i.i
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.ap:                                            ; preds = %.noexc21.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !16551), !dbg !16819
  %i.fb = load i64, ptr %i.k, align 8, !dbg !16820, !range !2317, !alias.scope !16551, !noalias !16552, !noundef !2315
  %i.fc = trunc nuw i64 %i.fb to i1, !dbg !16821
  br i1 %i.fc, label %bb.aq, label %bb.au, !dbg !16821, !prof !2368

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !16822, !noalias !16553
  %i.fd = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !16822
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.fd, i64 64, i1 false), !dbg !16822, !noalias !16552
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @317, i64 noundef 43, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @319, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #48
          to label %bb.as unwind label %bb.ar, !dbg !16823, !noalias !16554

bb.ar:                                            ; preds = %bb.aq
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e) #46
          to label %bb.bc unwind label %bb.at, !dbg !16824, !noalias !16554

bb.as:                                            ; preds = %bb.aq
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !16825, !noalias !16554
  unreachable, !dbg !16825

bb.au:                                            ; preds = %bb.ap
  %i.fg = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !16826
  %i.fh = load ptr, ptr %i.fg, align 8, !dbg !16826, !alias.scope !16551, !noalias !16552, !nonnull !2315, !noundef !2315 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !16827, !noalias !16550
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !16828, !noalias !16550
  invoke void @_RINvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrReECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @192, i64 noundef 13)
          to label %bb.aw unwind label %bb.av, !dbg !16829, !noalias !16550

bb.av:                                            ; preds = %bb.bb, %bb.au
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i, !dbg !16830

.body.i.i.i:                                      ; preds = %bb.ay, %bb.av
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.fi, %bb.av ], [ %i.fm, %bb.ay ]
  call void @_Py_DecRef(ptr noundef nonnull %i.fh) #50, !dbg !16831, !noalias !16550
  br label %bb.bc, !dbg !16832

bb.aw:                                            ; preds = %bb.au
  call void @llvm.experimental.noalias.scope.decl(metadata !16555), !dbg !16833
  %i.fj = load i64, ptr %i.h, align 8, !dbg !16834, !range !2317, !alias.scope !16555, !noalias !16556, !noundef !2315
  %i.fk = trunc nuw i64 %i.fj to i1, !dbg !16835
  br i1 %i.fk, label %bb.ax, label %bb.bb, !dbg !16835, !prof !2368

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !16836, !noalias !16557
  %i.fl = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !16836
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.fl, i64 64, i1 false), !dbg !16836, !noalias !16556
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @317, i64 noundef 43, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @319, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @193) #48
          to label %bb.az unwind label %bb.ay, !dbg !16837, !noalias !16558

bb.ay:                                            ; preds = %bb.ax
  %i.fm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.f) #46
          to label %.body.i.i.i unwind label %bb.ba, !dbg !16838, !noalias !16558

bb.az:                                            ; preds = %bb.ax
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.fn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !16839, !noalias !16558
  unreachable, !dbg !16839

bb.bb:                                            ; preds = %bb.aw
  %i.fo = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !16840
  %i.fp = load ptr, ptr %i.fo, align 8, !dbg !16840, !alias.scope !16555, !noalias !16556, !nonnull !2315, !noundef !2315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !16841, !noalias !16550
  invoke void @_RNvXsj_NtNtCsbm5zPlkZccl_4pyo35types5tupleTINtNtB9_8instance5BoundNtNtB7_3any5PyAnyEENtNtB9_4call10PyCallArgs15call_positionalCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.q, ptr noundef nonnull %i.fp, ptr noundef nonnull %i.fh)
          to label %bb.be unwind label %bb.av, !dbg !16842, !noalias !16559

bb.bc:                                            ; preds = %.body.i.i.i, %bb.ar, %bb.ao
  %.pn.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.fa, %bb.ao ], [ %i.fe, %bb.ar ]
  call void @_Py_DecRef(ptr noundef nonnull %i.ez) #50, !dbg !16843, !noalias !16550
  br label %.body22.i.i, !dbg !16844

.body22.i.i:                                      ; preds = %bb.bg, %bb.bd, %bb.bc
  %.pn9.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %bb.bc ], [ %i.fv, %bb.bg ], [ %i.fq, %bb.bd ]
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.s) #46
          to label %.body.i unwind label %bb.aj, !dbg !16845, !noalias !16546

bb.bd:                                            ; preds = %bb.bi, %.noexc20.i.i, %.noexc19.i.i, %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i, %bb.an, %bb.am
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %.body22.i.i

bb.be:                                            ; preds = %bb.bb
  call void @_Py_DecRef(ptr noundef nonnull %i.fh) #50, !dbg !16846, !noalias !16550
  call void @_Py_DecRef(ptr noundef nonnull %i.ez) #50, !dbg !16847, !noalias !16550
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !16830, !noalias !16550
  %i.fr = load i64, ptr %i.q, align 8, !dbg !16800, !range !2317, !noalias !16546, !noundef !2315
  %i.fs = trunc nuw i64 %i.fr to i1, !dbg !16848
  %i.ft = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !16849 ; 2 uses
  br i1 %i.fs, label %bb.bi, label %bb.bf, !dbg !16848

bb.bf:                                            ; preds = %bb.be
  %i.fu = load ptr, ptr %i.ft, align 8, !dbg !16850, !noalias !16546, !nonnull !2315, !noundef !2315
  invoke void @_RNvMs_NtCsbm5zPlkZccl_4pyo33errNtB4_5PyErr10from_value(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.r, ptr noundef nonnull %i.fu)
          to label %bb.bh unwind label %bb.bg, !dbg !16851, !noalias !16546

bb.bg:                                            ; preds = %bb.bf
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %.body22.i.i, !dbg !16852

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !16852, !noalias !16546
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16853
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fw, ptr noundef nonnull align 8 dereferenceable(64) %i.r, i64 64, i1 false), !dbg !16853
  store i64 17, ptr %0, align 8, !dbg !16853, !alias.scope !16546
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.s)
          to label %_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCINvMsd_CsgjwxzEoLG5s_12polars_errorNtBZ_11PolarsError8wrap_msgNCNCNCINvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB22_17PolarsObjectStore30exec_with_rebuild_retry_on_errNCNCNvNtB28_10path_utils17expand_path_cloud0s0_0NCNCB40_s0_00INtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathEE0s_00E0B1r_ECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.bk, !dbg !16845, !noalias !16544

bb.bi:                                            ; preds = %bb.be
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.ft)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit28.i.i unwind label %bb.bd, !dbg !16854, !noalias !16546

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit28.i.i: ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !16852, !noalias !16546
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16853
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fx, ptr noundef nonnull align 8 dereferenceable(64) %i.s, i64 64, i1 false), !dbg !16853
  store i64 17, ptr %0, align 8, !dbg !16853, !alias.scope !16546
  br label %_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCINvMsd_CsgjwxzEoLG5s_12polars_errorNtBZ_11PolarsError8wrap_msgNCNCNCINvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB22_17PolarsObjectStore30exec_with_rebuild_retry_on_errNCNCNvNtB28_10path_utils17expand_path_cloud0s0_0NCNCB40_s0_00INtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathEE0s_00E0B1r_ECsfcROwRM8ZtH_11polars_plan.exit, !dbg !16845

bb.bj:                                            ; preds = %bb.ai
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w) #46
          to label %.body.i unwind label %bb.aj, !dbg !16855, !noalias !16546

bb.bk:                                            ; preds = %bb.bh, %bb.ak, %.noexc4.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types6string8PyStringENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit15.i.i, %.noexc.i, %bb.y
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !16856

.body.i:                                          ; preds = %bb.bk, %bb.bj, %.body22.i.i, %.thread.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.fy, %bb.bk ], [ %lpad.thr_comm.split-lp.i.i, %bb.bj ], [ %.pn9.i.i, %.body22.i.i ], [ %.pn.i.i, %.thread.i.i ]
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.x)
          to label %common.resume unwind label %bb.bl, !dbg !16857, !noalias !16544

bb.bl:                                            ; preds = %.body.i
  %i.fz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !16858, !noalias !16544
  unreachable, !dbg !16858

_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCINvMsd_CsgjwxzEoLG5s_12polars_errorNtBZ_11PolarsError8wrap_msgNCNCNCINvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB22_17PolarsObjectStore30exec_with_rebuild_retry_on_errNCNCNvNtB28_10path_utils17expand_path_cloud0s0_0NCNCB40_s0_00INtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathEE0s_00E0B1r_ECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.bh, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit28.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !16845, !noalias !16546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !16855, !noalias !16546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !16859, !noalias !16544
  call void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.x), !dbg !16860, !noalias !16544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !16856, !noalias !16544
end_hunk_10
begin_hunk_11_@_RINvMsd_CsgjwxzEoLG5s_12polars_errorNtB6_11PolarsError8wrap_msgNCNCNCNvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB18_17PolarsObjectStore13rebuild_inner000ECsfcROwRM8ZtH_11polars_plan:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !dbg !17515
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !17515
  invoke void @_RNvXs0_NtCsgZ49sUHp3tW_5alloc6borrowINtB5_3CoweENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dm)
          to label %bb.cb unwind label %bb.ca, !dbg !17515

bb.u:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !dbg !17516
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !dbg !17517
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !17517
  %i.do = load ptr, ptr %i.dn, align 8, !dbg !17517, !nonnull !2315, !noundef !2315
  call void @_RINvMsd_CsgjwxzEoLG5s_12polars_errorNtB6_11PolarsError8wrap_msgNCNCNCNvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB18_17PolarsObjectStore13rebuild_inner000ECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.bc, ptr noundef nonnull align 8 %i.do), !dbg !17518
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #50, !dbg !17519, !noalias !17310
  %i.dp = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 0, 337) 72, i64 noundef range(i64 1, 17) 8) #50, !dbg !17520, !noalias !17310 ; 4 uses
  %i.dq = icmp eq ptr %i.dp, null, !dbg !17521
  br i1 %i.dq, label %bb.v, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE3newCsfcROwRM8ZtH_11polars_plan.exit, !dbg !17522, !prof !2467

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #48
          to label %.noexc66 unwind label %bb.w, !dbg !17523

.noexc66:                                         ; preds = %bb.v
  unreachable, !dbg !17523

bb.w:                                             ; preds = %bb.v
  %i.dr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.bc) #46
          to label %common.resume unwind label %bb.x, !dbg !17524

bb.x:                                             ; preds = %bb.w
  %i.ds = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !17525
  unreachable, !dbg !17525

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE3newCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dp, ptr noundef nonnull align 8 dereferenceable(72) %i.bc, i64 72, i1 false), !dbg !17526
  store ptr %i.dp, ptr %i.bd, align 8, !dbg !17516
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !dbg !17527
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !dbg !17528
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !17528
  invoke void @_RNvXs0_NtCsgZ49sUHp3tW_5alloc6borrowINtB5_3CoweENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ba, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dt)
          to label %bb.cd unwind label %bb.cc, !dbg !17528

bb.y:                                             ; preds = %bb.a
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !17529
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17312), !dbg !17530
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !17531, !noalias !17312
  %i.dv = tail call noundef i32 @_RNvMNtNtCsbm5zPlkZccl_4pyo38internal5stateNtB2_11AttachGuard6attach(), !dbg !17532, !noalias !17312
  store i32 %i.dv, ptr %i.x, align 4, !dbg !17532, !noalias !17312
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17313), !dbg !17533
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !17534, !noalias !17312
  %i.dw = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsbm5zPlkZccl_4pyo33errNtB4_5PyErr5value(ptr noundef nonnull align 8 %i.du)
          to label %.noexc.i unwind label %bb.bk, !dbg !17534, !noalias !17312 ; 3 uses

.noexc.i:                                         ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !17535, !noalias !17314
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !17536, !noalias !17314
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods3str(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dw)
          to label %.noexc3.i unwind label %bb.bk, !dbg !17537, !noalias !17312

.noexc3.i:                                        ; preds = %.noexc.i
  %i.dx = load i64, ptr %i.v, align 8, !dbg !17536, !range !2317, !noalias !17314, !noundef !2315
  %i.dy = trunc nuw i64 %i.dx to i1, !dbg !17538
  br i1 %i.dy, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types6string8PyStringENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit15.i.i, label %bb.z, !dbg !17538

bb.z:                                             ; preds = %.noexc3.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !17539, !noalias !17314
  %i.dz = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !17539
  %i.ea = load ptr, ptr %i.dz, align 8, !dbg !17539, !noalias !17314, !nonnull !2315, !noundef !2315 ; 3 uses
  store ptr %i.ea, ptr %i.u, align 8, !dbg !17539, !noalias !17314
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !17540, !noalias !17314
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types6stringINtNtB8_8instance5BoundNtB4_8PyStringENtB4_15PyStringMethods15to_string_lossy(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.u)
          to label %bb.ab unwind label %bb.aa, !dbg !17541, !noalias !17314

bb.aa:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i.i, %bb.z
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.ab:                                            ; preds = %bb.z
  %i.ec = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !17542
  %i.ed = load ptr, ptr %i.ec, align 8, !dbg !17542, !noalias !17314, !nonnull !2315
  %i.ee = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !17542
  %i.ef = load i64, ptr %i.ee, align 8, !dbg !17542, !noalias !17314
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !17314
  store ptr %i.ed, ptr %i.o, align 8, !noalias !17315
  %i.eg = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.ef, ptr %i.eg, align 8, !noalias !17315
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !17543, !noalias !17315
  store ptr %i.o, ptr %i.n, align 8, !dbg !17543, !noalias !17315
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !17543
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !dbg !17543, !noalias !17315
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noundef nonnull @204, ptr noundef nonnull %i.n)
          to label %bb.ad unwind label %bb.ac, !dbg !17544, !noalias !17314

bb.ac:                                            ; preds = %bb.ab
  %i.eh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CoweEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.t) #46
          to label %.thread.i.i unwind label %bb.aj, !dbg !17545, !noalias !17314

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !17546, !noalias !17315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !17547, !noalias !17314
  %i.ei = load i64, ptr %i.t, align 8, !dbg !17548, !range !2367, !alias.scope !17316, !noalias !17314, !noundef !2315
  %i.ej = icmp eq i64 %i.ei, -9223372036854775808, !dbg !17548
  br i1 %i.ej, label %bb.ah, label %bb.ae, !dbg !17548

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i.i unwind label %bb.af, !dbg !17549, !noalias !17314

bb.af:                                            ; preds = %bb.ae
  %i.ek = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.thread.i.i unwind label %bb.ag, !dbg !17550, !noalias !17314

bb.ag:                                            ; preds = %bb.af
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !17549, !noalias !17314
  unreachable, !dbg !17549

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i.i: ; preds = %bb.ae
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.ah unwind label %bb.aa, !dbg !17551, !noalias !17314

bb.ah:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !17545, !noalias !17314
  call void @_Py_DecRef(ptr noundef nonnull %i.ea) #50, !dbg !17552, !noalias !17314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !17553, !noalias !17314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !17553, !noalias !17314
  br label %bb.ai, !dbg !17554

bb.ai:                                            ; preds = %.noexc5.i, %bb.ah
  %i.em = invoke noundef nonnull ptr @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods8get_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dw)
          to label %bb.ak unwind label %bb.bj, !dbg !17555, !noalias !17314

bb.aj:                                            ; preds = %bb.bj, %.body22.i.i, %bb.ac
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !17556, !noalias !17314
  unreachable, !dbg !17556

.thread.i.i:                                      ; preds = %bb.af, %bb.ac, %bb.aa
  %.pn.i.i = phi { ptr, i32 } [ %i.eh, %bb.ac ], [ %i.eb, %bb.aa ], [ %i.ek, %bb.af ]
  call void @_Py_DecRef(ptr noundef nonnull %i.ea) #50, !dbg !17557, !noalias !17314
  br label %.body.i, !dbg !17553

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types6string8PyStringENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit15.i.i: ; preds = %.noexc3.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !17558
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.eo)
          to label %.noexc4.i unwind label %bb.bk, !dbg !17558, !noalias !17312

.noexc4.i:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types6string8PyStringENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit15.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !17553, !noalias !17314
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !17314
  store ptr @163, ptr %i.m, align 8, !noalias !17317
  %i.ep = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 24, ptr %i.ep, align 8, !noalias !17317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !17559, !noalias !17317
  store ptr %i.m, ptr %i.l, align 8, !dbg !17559, !noalias !17317
  %.sroa.42.0..sroa_idx.i16.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !17559
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.42.0..sroa_idx.i16.i.i, align 8, !dbg !17559, !noalias !17317
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noundef nonnull @204, ptr noundef nonnull %i.l)
          to label %.noexc5.i unwind label %bb.bk, !dbg !17560, !noalias !17312

.noexc5.i:                                        ; preds = %.noexc4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !17561, !noalias !17317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !17562, !noalias !17314
  br label %bb.ai, !dbg !17563

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !17564, !noalias !17314
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !17565, !noalias !17314
  invoke void @_RINvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB6_10PyErrState14lazy_argumentsTNtNtCsgZ49sUHp3tW_5alloc6string6StringEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.p, ptr noundef nonnull %i.em, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.w)
          to label %.noexc6.i unwind label %bb.bk, !dbg !17565, !noalias !17312

.noexc6.i:                                        ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.s, ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 64, i1 false), !dbg !17566, !noalias !17314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !17567, !noalias !17314
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !17568, !noalias !17314
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !17569, !noalias !17318
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !17569, !noalias !17318
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !17569, !noalias !17318
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !17570, !noalias !17318
  %i.eq = getelementptr inbounds nuw i8, ptr %i.s, i64 56, !dbg !17571
  %i.er = load atomic i32, ptr %i.eq acquire, align 8, !dbg !17572, !noalias !17318
  %i.es = icmp eq i32 %i.er, 0, !dbg !17573
  br i1 %i.es, label %bb.al, label %bb.am, !dbg !17573, !prof !2318

bb.al:                                            ; preds = %.noexc6.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !17574
  %i.eu = load i64, ptr %i.et, align 8, !dbg !17575, !range !2317, !noalias !17318, !noundef !2315
  %i.ev = trunc nuw i64 %i.eu to i1, !dbg !17576
  %i.ew = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !noalias !17314
  %.not.i.i.i.i = icmp ne ptr %i.ex, null
  %or.cond.not.i.i = select i1 %i.ev, i1 %.not.i.i.i.i, i1 false, !dbg !17576
  br i1 %or.cond.not.i.i, label %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i, label %bb.an, !dbg !17576, !prof !2582

bb.am:                                            ; preds = %.noexc6.i
  %i.ey = invoke noundef nonnull align 8 ptr @_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState15make_normalized(ptr noundef nonnull align 8 %i.s)
          to label %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i unwind label %bb.bd, !dbg !17577, !noalias !17314

bb.an:                                            ; preds = %bb.al
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @268, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @343) #45
          to label %.noexc18.i.i unwind label %bb.bd, !dbg !17578, !noalias !17314

.noexc18.i.i:                                     ; preds = %bb.an
  unreachable, !dbg !17578

_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i: ; preds = %bb.am, %bb.al
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ew, %bb.al ], [ %i.ey, %bb.am ], !dbg !17579
  invoke void @_RNvMs1_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_20PyErrStateNormalized9clone_ref(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noundef nonnull align 8 %.sroa.0.0.i.i.i.i)
          to label %.noexc19.i.i unwind label %bb.bd, !dbg !17580, !noalias !17314

.noexc19.i.i:                                     ; preds = %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i
  invoke void @_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState10normalized(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.g)
          to label %.noexc20.i.i unwind label %bb.bd, !dbg !17581, !noalias !17314

.noexc20.i.i:                                     ; preds = %.noexc19.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !17582, !noalias !17318
  %i.ez = invoke noundef nonnull ptr @_RNvMs_NtCsbm5zPlkZccl_4pyo33errNtB4_5PyErr10into_value(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.i)
          to label %.noexc21.i.i unwind label %bb.bd, !dbg !17583, !noalias !17314 ; 3 uses

.noexc21.i.i:                                     ; preds = %.noexc20.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !17584, !noalias !17318
  store ptr %i.ez, ptr %i.j, align 8, !dbg !17585, !noalias !17318
  invoke void @_RINvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrReECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) @190, i64 noundef 14)
          to label %bb.ap unwind label %bb.ao, !dbg !17586, !noalias !17318

bb.ao:                                            ; preds = %.noexc21.i.i
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.ap:                                            ; preds = %.noexc21.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !17319), !dbg !17587
  %i.fb = load i64, ptr %i.k, align 8, !dbg !17588, !range !2317, !alias.scope !17319, !noalias !17320, !noundef !2315
  %i.fc = trunc nuw i64 %i.fb to i1, !dbg !17589
  br i1 %i.fc, label %bb.aq, label %bb.au, !dbg !17589, !prof !2368

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !17590, !noalias !17321
  %i.fd = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !17590
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.fd, i64 64, i1 false), !dbg !17590, !noalias !17320
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @317, i64 noundef 43, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @319, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #48
          to label %bb.as unwind label %bb.ar, !dbg !17591, !noalias !17322

bb.ar:                                            ; preds = %bb.aq
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e) #46
          to label %bb.bc unwind label %bb.at, !dbg !17592, !noalias !17322

bb.as:                                            ; preds = %bb.aq
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !17593, !noalias !17322
  unreachable, !dbg !17593

bb.au:                                            ; preds = %bb.ap
  %i.fg = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !17594
  %i.fh = load ptr, ptr %i.fg, align 8, !dbg !17594, !alias.scope !17319, !noalias !17320, !nonnull !2315, !noundef !2315 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !17595, !noalias !17318
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !17596, !noalias !17318
  invoke void @_RINvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrReECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @192, i64 noundef 13)
          to label %bb.aw unwind label %bb.av, !dbg !17597, !noalias !17318

bb.av:                                            ; preds = %bb.bb, %bb.au
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i, !dbg !17598

.body.i.i.i:                                      ; preds = %bb.ay, %bb.av
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.fi, %bb.av ], [ %i.fm, %bb.ay ]
  call void @_Py_DecRef(ptr noundef nonnull %i.fh) #50, !dbg !17599, !noalias !17318
  br label %bb.bc, !dbg !17600

bb.aw:                                            ; preds = %bb.au
  call void @llvm.experimental.noalias.scope.decl(metadata !17323), !dbg !17601
  %i.fj = load i64, ptr %i.h, align 8, !dbg !17602, !range !2317, !alias.scope !17323, !noalias !17324, !noundef !2315
  %i.fk = trunc nuw i64 %i.fj to i1, !dbg !17603
  br i1 %i.fk, label %bb.ax, label %bb.bb, !dbg !17603, !prof !2368

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !17604, !noalias !17325
  %i.fl = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !17604
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.fl, i64 64, i1 false), !dbg !17604, !noalias !17324
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @317, i64 noundef 43, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @319, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @193) #48
          to label %bb.az unwind label %bb.ay, !dbg !17605, !noalias !17326

bb.ay:                                            ; preds = %bb.ax
  %i.fm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.f) #46
          to label %.body.i.i.i unwind label %bb.ba, !dbg !17606, !noalias !17326

bb.az:                                            ; preds = %bb.ax
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.fn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !17607, !noalias !17326
  unreachable, !dbg !17607

bb.bb:                                            ; preds = %bb.aw
  %i.fo = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !17608
  %i.fp = load ptr, ptr %i.fo, align 8, !dbg !17608, !alias.scope !17323, !noalias !17324, !nonnull !2315, !noundef !2315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !17609, !noalias !17318
  invoke void @_RNvXsj_NtNtCsbm5zPlkZccl_4pyo35types5tupleTINtNtB9_8instance5BoundNtNtB7_3any5PyAnyEENtNtB9_4call10PyCallArgs15call_positionalCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.q, ptr noundef nonnull %i.fp, ptr noundef nonnull %i.fh)
          to label %bb.be unwind label %bb.av, !dbg !17610, !noalias !17327

bb.bc:                                            ; preds = %.body.i.i.i, %bb.ar, %bb.ao
  %.pn.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.fa, %bb.ao ], [ %i.fe, %bb.ar ]
  call void @_Py_DecRef(ptr noundef nonnull %i.ez) #50, !dbg !17611, !noalias !17318
  br label %.body22.i.i, !dbg !17612

.body22.i.i:                                      ; preds = %bb.bg, %bb.bd, %bb.bc
  %.pn9.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %bb.bc ], [ %i.fv, %bb.bg ], [ %i.fq, %bb.bd ]
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.s) #46
          to label %.body.i unwind label %bb.aj, !dbg !17613, !noalias !17314

bb.bd:                                            ; preds = %bb.bi, %.noexc20.i.i, %.noexc19.i.i, %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i, %bb.an, %bb.am
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %.body22.i.i

bb.be:                                            ; preds = %bb.bb
  call void @_Py_DecRef(ptr noundef nonnull %i.fh) #50, !dbg !17614, !noalias !17318
  call void @_Py_DecRef(ptr noundef nonnull %i.ez) #50, !dbg !17615, !noalias !17318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !17598, !noalias !17318
  %i.fr = load i64, ptr %i.q, align 8, !dbg !17568, !range !2317, !noalias !17314, !noundef !2315
  %i.fs = trunc nuw i64 %i.fr to i1, !dbg !17616
  %i.ft = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !17617 ; 2 uses
  br i1 %i.fs, label %bb.bi, label %bb.bf, !dbg !17616

bb.bf:                                            ; preds = %bb.be
  %i.fu = load ptr, ptr %i.ft, align 8, !dbg !17618, !noalias !17314, !nonnull !2315, !noundef !2315
  invoke void @_RNvMs_NtCsbm5zPlkZccl_4pyo33errNtB4_5PyErr10from_value(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.r, ptr noundef nonnull %i.fu)
          to label %bb.bh unwind label %bb.bg, !dbg !17619, !noalias !17314

bb.bg:                                            ; preds = %bb.bf
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %.body22.i.i, !dbg !17620

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !17620, !noalias !17314
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17621
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fw, ptr noundef nonnull align 8 dereferenceable(64) %i.r, i64 64, i1 false), !dbg !17621
  store i64 17, ptr %0, align 8, !dbg !17621, !alias.scope !17314
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.s)
          to label %_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCINvMsd_CsgjwxzEoLG5s_12polars_errorNtBZ_11PolarsError8wrap_msgNCNCNCNvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB21_17PolarsObjectStore13rebuild_inner000E0B1r_ECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.bk, !dbg !17613, !noalias !17312

bb.bi:                                            ; preds = %bb.be
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.ft)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit28.i.i unwind label %bb.bd, !dbg !17622, !noalias !17314

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit28.i.i: ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !17620, !noalias !17314
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17621
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fx, ptr noundef nonnull align 8 dereferenceable(64) %i.s, i64 64, i1 false), !dbg !17621
  store i64 17, ptr %0, align 8, !dbg !17621, !alias.scope !17314
  br label %_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCINvMsd_CsgjwxzEoLG5s_12polars_errorNtBZ_11PolarsError8wrap_msgNCNCNCNvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB21_17PolarsObjectStore13rebuild_inner000E0B1r_ECsfcROwRM8ZtH_11polars_plan.exit, !dbg !17613

bb.bj:                                            ; preds = %bb.ai
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w) #46
          to label %.body.i unwind label %bb.aj, !dbg !17623, !noalias !17314

bb.bk:                                            ; preds = %bb.bh, %bb.ak, %.noexc4.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types6string8PyStringENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit15.i.i, %.noexc.i, %bb.y
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !17624

.body.i:                                          ; preds = %bb.bk, %bb.bj, %.body22.i.i, %.thread.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.fy, %bb.bk ], [ %lpad.thr_comm.split-lp.i.i, %bb.bj ], [ %.pn9.i.i, %.body22.i.i ], [ %.pn.i.i, %.thread.i.i ]
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.x)
          to label %common.resume unwind label %bb.bl, !dbg !17625, !noalias !17312

bb.bl:                                            ; preds = %.body.i
  %i.fz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !17626, !noalias !17312
  unreachable, !dbg !17626

_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCINvMsd_CsgjwxzEoLG5s_12polars_errorNtBZ_11PolarsError8wrap_msgNCNCNCNvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB21_17PolarsObjectStore13rebuild_inner000E0B1r_ECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.bh, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit28.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !17613, !noalias !17314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !17623, !noalias !17314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !17627, !noalias !17312
  call void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.x), !dbg !17628, !noalias !17312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !17624, !noalias !17312
end_hunk_11
begin_hunk_12_@_RINvMsd_CsgjwxzEoLG5s_12polars_errorNtB6_11PolarsError8wrap_msgNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir6to_alp0EB19_:bb.a
bb.v:                                             ; preds = %bb.u
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #48
          to label %.noexc92 unwind label %bb.w, !dbg !18330

.noexc92:                                         ; preds = %bb.v
  unreachable, !dbg !18330

bb.w:                                             ; preds = %bb.v
  %i.et = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.bc) #46
          to label %common.resume unwind label %bb.x, !dbg !18331

bb.x:                                             ; preds = %bb.w
  %i.eu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !18332
  unreachable, !dbg !18332

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE3newCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.er, ptr noundef nonnull align 8 dereferenceable(72) %i.bc, i64 72, i1 false), !dbg !18333
  store ptr %i.er, ptr %i.bd, align 8, !dbg !18323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !dbg !18334
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !dbg !18335
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18335
  invoke void @_RNvXs0_NtCsgZ49sUHp3tW_5alloc6borrowINtB5_3CoweENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ba, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ev)
          to label %bb.cd unwind label %bb.cc, !dbg !18335

bb.y:                                             ; preds = %bb.a
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18336
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18116), !dbg !18337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !18338, !noalias !18117
  %i.ex = tail call noundef i32 @_RNvMNtNtCsbm5zPlkZccl_4pyo38internal5stateNtB2_11AttachGuard6attach(), !dbg !18339, !noalias !18117
  store i32 %i.ex, ptr %i.x, align 4, !dbg !18339, !noalias !18117
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18118), !dbg !18340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !18341, !noalias !18117
  %i.ey = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsbm5zPlkZccl_4pyo33errNtB4_5PyErr5value(ptr noundef nonnull align 8 %i.ew)
          to label %.noexc.i unwind label %bb.bk, !dbg !18342, !noalias !18117 ; 3 uses

.noexc.i:                                         ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !18343, !noalias !18119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !18344, !noalias !18119
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods3str(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ey)
          to label %.noexc3.i unwind label %bb.bk, !dbg !18345, !noalias !18117

.noexc3.i:                                        ; preds = %.noexc.i
  %i.ez = load i64, ptr %i.v, align 8, !dbg !18344, !range !2317, !noalias !18119, !noundef !2315
  %i.fa = trunc nuw i64 %i.ez to i1, !dbg !18346
  br i1 %i.fa, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types6string8PyStringENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit14.i.i, label %bb.z, !dbg !18346

bb.z:                                             ; preds = %.noexc3.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !18347, !noalias !18119
  %i.fb = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !18347
  %i.fc = load ptr, ptr %i.fb, align 8, !dbg !18347, !noalias !18119, !nonnull !2315, !noundef !2315 ; 3 uses
  store ptr %i.fc, ptr %i.u, align 8, !dbg !18347, !noalias !18119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !18348, !noalias !18119
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types6stringINtNtB8_8instance5BoundNtB4_8PyStringENtB4_15PyStringMethods15to_string_lossy(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.u)
          to label %bb.ab unwind label %bb.aa, !dbg !18349, !noalias !18119

bb.aa:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i.i, %bb.z
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.ab:                                            ; preds = %bb.z
  %i.fe = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !18350
  %i.ff = load ptr, ptr %i.fe, align 8, !dbg !18350, !noalias !18119, !nonnull !2315
  %i.fg = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !18350
  %i.fh = load i64, ptr %i.fg, align 8, !dbg !18350, !noalias !18119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !18119
  store ptr %i.ff, ptr %i.o, align 8, !noalias !18120
  %i.fi = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.fh, ptr %i.fi, align 8, !noalias !18120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !18351, !noalias !18120
  store ptr %i.o, ptr %i.n, align 8, !dbg !18351, !noalias !18120
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !18351
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !dbg !18351, !noalias !18120
  %i.fj = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !18351
  store ptr %2, ptr %i.fj, align 8, !dbg !18351, !noalias !18120
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !18351
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !dbg !18351, !noalias !18120
  %i.fk = getelementptr inbounds nuw i8, ptr %i.n, i64 32, !dbg !18351
  store ptr %3, ptr %i.fk, align 8, !dbg !18351, !noalias !18120
  %.sroa.410.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40, !dbg !18351
  store ptr @_RNvXsq_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i.i.i, align 8, !dbg !18351, !noalias !18120
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noundef nonnull @278, ptr noundef nonnull %i.n)
          to label %bb.ad unwind label %bb.ac, !dbg !18352, !noalias !18119

bb.ac:                                            ; preds = %bb.ab
  %i.fl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CoweEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.t) #46
          to label %.thread.i.i unwind label %bb.aj, !dbg !18353, !noalias !18119

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !18354, !noalias !18120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !18355, !noalias !18119
  %i.fm = load i64, ptr %i.t, align 8, !dbg !18356, !range !2367, !alias.scope !18121, !noalias !18119, !noundef !2315
  %i.fn = icmp eq i64 %i.fm, -9223372036854775808, !dbg !18356
  br i1 %i.fn, label %bb.ah, label %bb.ae, !dbg !18356

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i.i unwind label %bb.af, !dbg !18357, !noalias !18119

bb.af:                                            ; preds = %bb.ae
  %i.fo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.thread.i.i unwind label %bb.ag, !dbg !18358, !noalias !18119

bb.ag:                                            ; preds = %bb.af
  %i.fp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !18357, !noalias !18119
  unreachable, !dbg !18357

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i.i: ; preds = %bb.ae
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.ah unwind label %bb.aa, !dbg !18359, !noalias !18119

bb.ah:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !18353, !noalias !18119
  call void @_Py_DecRef(ptr noundef nonnull %i.fc) #50, !dbg !18360, !noalias !18119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !18361, !noalias !18119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !18361, !noalias !18119
  br label %bb.ai, !dbg !18362

bb.ai:                                            ; preds = %.noexc5.i, %bb.ah
  %i.fq = invoke noundef nonnull ptr @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods8get_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ey)
          to label %bb.ak unwind label %bb.bj, !dbg !18363, !noalias !18119

bb.aj:                                            ; preds = %bb.bj, %.body23.i.i, %bb.ac
  %i.fr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !18364, !noalias !18119
  unreachable, !dbg !18364

.thread.i.i:                                      ; preds = %bb.af, %bb.ac, %bb.aa
  %.pn.i.i = phi { ptr, i32 } [ %i.fl, %bb.ac ], [ %i.fd, %bb.aa ], [ %i.fo, %bb.af ]
  call void @_Py_DecRef(ptr noundef nonnull %i.fc) #50, !dbg !18365, !noalias !18119
  br label %.body.i, !dbg !18361

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types6string8PyStringENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit14.i.i: ; preds = %.noexc3.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !18366
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.fs)
          to label %.noexc4.i unwind label %bb.bk, !dbg !18366, !noalias !18117

.noexc4.i:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types6string8PyStringENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit14.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !18361, !noalias !18119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !18119
  store ptr @163, ptr %i.m, align 8, !noalias !18122
  %i.ft = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 24, ptr %i.ft, align 8, !noalias !18122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !18367, !noalias !18122
  store ptr %i.m, ptr %i.l, align 8, !dbg !18367, !noalias !18122
  %.sroa.42.0..sroa_idx.i15.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !18367
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.42.0..sroa_idx.i15.i.i, align 8, !dbg !18367, !noalias !18122
  %i.fu = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !18367
  store ptr %2, ptr %i.fu, align 8, !dbg !18367, !noalias !18122
  %.sroa.46.0..sroa_idx.i16.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24, !dbg !18367
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.46.0..sroa_idx.i16.i.i, align 8, !dbg !18367, !noalias !18122
  %i.fv = getelementptr inbounds nuw i8, ptr %i.l, i64 32, !dbg !18367
  store ptr %3, ptr %i.fv, align 8, !dbg !18367, !noalias !18122
  %.sroa.410.0..sroa_idx.i17.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40, !dbg !18367
  store ptr @_RNvXsq_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i17.i.i, align 8, !dbg !18367, !noalias !18122
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noundef nonnull @278, ptr noundef nonnull %i.l)
          to label %.noexc5.i unwind label %bb.bk, !dbg !18368, !noalias !18117

.noexc5.i:                                        ; preds = %.noexc4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !18369, !noalias !18122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !18370, !noalias !18119
  br label %bb.ai, !dbg !18371

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !18372, !noalias !18119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !18373, !noalias !18119
  invoke void @_RINvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB6_10PyErrState14lazy_argumentsTNtNtCsgZ49sUHp3tW_5alloc6string6StringEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.p, ptr noundef nonnull %i.fq, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.w)
          to label %.noexc6.i unwind label %bb.bk, !dbg !18373, !noalias !18117

.noexc6.i:                                        ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.s, ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 64, i1 false), !dbg !18374, !noalias !18119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !18375, !noalias !18119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !18376, !noalias !18119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !18377, !noalias !18123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !18377, !noalias !18123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !18377, !noalias !18123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !18378, !noalias !18123
  %i.fw = getelementptr inbounds nuw i8, ptr %i.s, i64 56, !dbg !18379
  %i.fx = load atomic i32, ptr %i.fw acquire, align 8, !dbg !18380, !noalias !18123
  %i.fy = icmp eq i32 %i.fx, 0, !dbg !18381
  br i1 %i.fy, label %bb.al, label %bb.am, !dbg !18381, !prof !2318

bb.al:                                            ; preds = %.noexc6.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !18382
  %i.ga = load i64, ptr %i.fz, align 8, !dbg !18383, !range !2317, !noalias !18123, !noundef !2315
  %i.gb = trunc nuw i64 %i.ga to i1, !dbg !18384
  %i.gc = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !noalias !18119
  %.not.i.i.i.i = icmp ne ptr %i.gd, null
  %or.cond.not.i.i = select i1 %i.gb, i1 %.not.i.i.i.i, i1 false, !dbg !18384
  br i1 %or.cond.not.i.i, label %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i, label %bb.an, !dbg !18384, !prof !2582

bb.am:                                            ; preds = %.noexc6.i
  %i.ge = invoke noundef nonnull align 8 ptr @_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState15make_normalized(ptr noundef nonnull align 8 %i.s)
          to label %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i unwind label %bb.bd, !dbg !18385, !noalias !18119

bb.an:                                            ; preds = %bb.al
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @268, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @343) #45
          to label %.noexc19.i.i unwind label %bb.bd, !dbg !18386, !noalias !18119

.noexc19.i.i:                                     ; preds = %bb.an
  unreachable, !dbg !18386

_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i: ; preds = %bb.am, %bb.al
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.gc, %bb.al ], [ %i.ge, %bb.am ], !dbg !18387
  invoke void @_RNvMs1_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_20PyErrStateNormalized9clone_ref(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noundef nonnull align 8 %.sroa.0.0.i.i.i.i)
          to label %.noexc20.i.i unwind label %bb.bd, !dbg !18388, !noalias !18119

.noexc20.i.i:                                     ; preds = %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i
  invoke void @_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState10normalized(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.g)
          to label %.noexc21.i.i unwind label %bb.bd, !dbg !18389, !noalias !18119

.noexc21.i.i:                                     ; preds = %.noexc20.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !18390, !noalias !18123
  %i.gf = invoke noundef nonnull ptr @_RNvMs_NtCsbm5zPlkZccl_4pyo33errNtB4_5PyErr10into_value(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.i)
          to label %.noexc22.i.i unwind label %bb.bd, !dbg !18391, !noalias !18119 ; 3 uses

.noexc22.i.i:                                     ; preds = %.noexc21.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !18392, !noalias !18123
  store ptr %i.gf, ptr %i.j, align 8, !dbg !18393, !noalias !18123
  invoke void @_RINvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrReECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) @190, i64 noundef 14)
          to label %bb.ap unwind label %bb.ao, !dbg !18394, !noalias !18123

bb.ao:                                            ; preds = %.noexc22.i.i
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.ap:                                            ; preds = %.noexc22.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !18124), !dbg !18395
  %i.gh = load i64, ptr %i.k, align 8, !dbg !18396, !range !2317, !alias.scope !18124, !noalias !18125, !noundef !2315
  %i.gi = trunc nuw i64 %i.gh to i1, !dbg !18397
  br i1 %i.gi, label %bb.aq, label %bb.au, !dbg !18397, !prof !2368

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !18398, !noalias !18126
  %i.gj = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !18398
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.gj, i64 64, i1 false), !dbg !18398, !noalias !18125
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @317, i64 noundef 43, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @319, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #48
          to label %bb.as unwind label %bb.ar, !dbg !18399, !noalias !18127

bb.ar:                                            ; preds = %bb.aq
  %i.gk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e) #46
          to label %bb.bc unwind label %bb.at, !dbg !18400, !noalias !18127

bb.as:                                            ; preds = %bb.aq
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.gl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !18401, !noalias !18127
  unreachable, !dbg !18401

bb.au:                                            ; preds = %bb.ap
  %i.gm = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !18402
  %i.gn = load ptr, ptr %i.gm, align 8, !dbg !18402, !alias.scope !18124, !noalias !18125, !nonnull !2315, !noundef !2315 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !18403, !noalias !18123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !18404, !noalias !18123
  invoke void @_RINvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrReECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ey, ptr noalias noundef nonnull readonly captures(address, read_provenance) @192, i64 noundef 13)
          to label %bb.aw unwind label %bb.av, !dbg !18405, !noalias !18123

bb.av:                                            ; preds = %bb.bb, %bb.au
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i, !dbg !18406

.body.i.i.i:                                      ; preds = %bb.ay, %bb.av
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.go, %bb.av ], [ %i.gs, %bb.ay ]
  call void @_Py_DecRef(ptr noundef nonnull %i.gn) #50, !dbg !18407, !noalias !18123
  br label %bb.bc, !dbg !18408

bb.aw:                                            ; preds = %bb.au
  call void @llvm.experimental.noalias.scope.decl(metadata !18128), !dbg !18409
  %i.gp = load i64, ptr %i.h, align 8, !dbg !18410, !range !2317, !alias.scope !18128, !noalias !18129, !noundef !2315
  %i.gq = trunc nuw i64 %i.gp to i1, !dbg !18411
  br i1 %i.gq, label %bb.ax, label %bb.bb, !dbg !18411, !prof !2368

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !18412, !noalias !18130
  %i.gr = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !18412
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.gr, i64 64, i1 false), !dbg !18412, !noalias !18129
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @317, i64 noundef 43, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @319, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @193) #48
          to label %bb.az unwind label %bb.ay, !dbg !18413, !noalias !18131

bb.ay:                                            ; preds = %bb.ax
  %i.gs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.f) #46
          to label %.body.i.i.i unwind label %bb.ba, !dbg !18414, !noalias !18131

bb.az:                                            ; preds = %bb.ax
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.gt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !18415, !noalias !18131
  unreachable, !dbg !18415

bb.bb:                                            ; preds = %bb.aw
  %i.gu = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !18416
  %i.gv = load ptr, ptr %i.gu, align 8, !dbg !18416, !alias.scope !18128, !noalias !18129, !nonnull !2315, !noundef !2315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !18417, !noalias !18123
  invoke void @_RNvXsj_NtNtCsbm5zPlkZccl_4pyo35types5tupleTINtNtB9_8instance5BoundNtNtB7_3any5PyAnyEENtNtB9_4call10PyCallArgs15call_positionalCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.q, ptr noundef nonnull %i.gv, ptr noundef nonnull %i.gn)
          to label %bb.be unwind label %bb.av, !dbg !18418, !noalias !18132

bb.bc:                                            ; preds = %.body.i.i.i, %bb.ar, %bb.ao
  %.pn.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.gg, %bb.ao ], [ %i.gk, %bb.ar ]
  call void @_Py_DecRef(ptr noundef nonnull %i.gf) #50, !dbg !18419, !noalias !18123
  br label %.body23.i.i, !dbg !18420

.body23.i.i:                                      ; preds = %bb.bg, %bb.bd, %bb.bc
  %.pn8.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %bb.bc ], [ %i.hb, %bb.bg ], [ %i.gw, %bb.bd ]
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.s) #46
          to label %.body.i unwind label %bb.aj, !dbg !18421, !noalias !18119

bb.bd:                                            ; preds = %bb.bi, %.noexc21.i.i, %.noexc20.i.i, %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit.i.i.i, %bb.an, %bb.am
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %.body23.i.i

bb.be:                                            ; preds = %bb.bb
  call void @_Py_DecRef(ptr noundef nonnull %i.gn) #50, !dbg !18422, !noalias !18123
  call void @_Py_DecRef(ptr noundef nonnull %i.gf) #50, !dbg !18423, !noalias !18123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !18406, !noalias !18123
  %i.gx = load i64, ptr %i.q, align 8, !dbg !18376, !range !2317, !noalias !18119, !noundef !2315
  %i.gy = trunc nuw i64 %i.gx to i1, !dbg !18424
  %i.gz = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !18425 ; 2 uses
  br i1 %i.gy, label %bb.bi, label %bb.bf, !dbg !18424

bb.bf:                                            ; preds = %bb.be
  %i.ha = load ptr, ptr %i.gz, align 8, !dbg !18426, !noalias !18119, !nonnull !2315, !noundef !2315
  invoke void @_RNvMs_NtCsbm5zPlkZccl_4pyo33errNtB4_5PyErr10from_value(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.r, ptr noundef nonnull %i.ha)
          to label %bb.bh unwind label %bb.bg, !dbg !18427, !noalias !18119

bb.bg:                                            ; preds = %bb.bf
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %.body23.i.i, !dbg !18428

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !18428, !noalias !18119
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18429
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.hc, ptr noundef nonnull align 8 dereferenceable(64) %i.r, i64 64, i1 false), !dbg !18429, !noalias !18133
  store i64 17, ptr %0, align 8, !dbg !18429, !alias.scope !18134, !noalias !18133
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.s)
          to label %_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCINvMsd_CsgjwxzEoLG5s_12polars_errorNtBZ_11PolarsError8wrap_msgNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir6to_alp0E0B1r_EB22_.exit unwind label %bb.bk, !dbg !18421, !noalias !18117

bb.bi:                                            ; preds = %bb.be
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.gz)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit29.i.i unwind label %bb.bd, !dbg !18430, !noalias !18119

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit29.i.i: ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !18428, !noalias !18119
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18429
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.hd, ptr noundef nonnull align 8 dereferenceable(64) %i.s, i64 64, i1 false), !dbg !18429, !noalias !18133
  store i64 17, ptr %0, align 8, !dbg !18429, !alias.scope !18134, !noalias !18133
  br label %_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCINvMsd_CsgjwxzEoLG5s_12polars_errorNtBZ_11PolarsError8wrap_msgNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir6to_alp0E0B1r_EB22_.exit, !dbg !18421

bb.bj:                                            ; preds = %bb.ai
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w) #46
          to label %.body.i unwind label %bb.aj, !dbg !18431, !noalias !18119

bb.bk:                                            ; preds = %bb.bh, %bb.ak, %.noexc4.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types6string8PyStringENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit14.i.i, %.noexc.i, %bb.y
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !18432

.body.i:                                          ; preds = %bb.bk, %bb.bj, %.body23.i.i, %.thread.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.he, %bb.bk ], [ %lpad.thr_comm.split-lp.i.i, %bb.bj ], [ %.pn8.i.i, %.body23.i.i ], [ %.pn.i.i, %.thread.i.i ]
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.x)
          to label %common.resume unwind label %bb.bl, !dbg !18433, !noalias !18117

bb.bl:                                            ; preds = %.body.i
  %i.hf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !18434, !noalias !18117
  unreachable, !dbg !18434

_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCINvMsd_CsgjwxzEoLG5s_12polars_errorNtBZ_11PolarsError8wrap_msgNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir6to_alp0E0B1r_EB22_.exit: ; preds = %bb.bh, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan.exit29.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !18421, !noalias !18119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !18431, !noalias !18119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !18435, !noalias !18117
  call void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.x), !dbg !18436, !noalias !18117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !18432, !noalias !18117
end_hunk_12
