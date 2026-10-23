Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_expr-c150671a77946377.polars_expr.f440eb239ff47e82-cgu.13?download=true
inline.NumInlined: 10113
inline.NumDeleted: 4526
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 77
begin_hunk_0_@_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1s_B1s_uNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops5round11RoundSeries14round_sig_figss9_0NCINvNvB2d_8for_each4callB1s_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB69_3VecB1s_E14extend_trustedINtB2W_3MapBP_B3n_EE0E0E0ECskY9G75ZWc4U_11polars_expr:bb.a
  %.not34.i.i.i.i = icmp eq i64 %i.bt, 0, !dbg !61212
  br i1 %.not34.i.i.i.i, label %bb.q, label %bb.ab, !dbg !61211

bb.p:                                             ; preds = %bb.n
  %i.bu = load atomic i64, ptr @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache5CACHE monotonic, align 8, !dbg !61213, !noalias !61121 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 0, !dbg !61214
  br i1 %i.bv, label %.split32.i.i.i.i, label %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit21.i.i.i.i, !dbg !61214, !prof !2279

.split32.i.i.i.i:                                 ; preds = %bb.p
  %i.bw = invoke noundef i128 @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache21detect_and_initialize()
          to label %.noexc19.i unwind label %bb.af, !dbg !61215, !noalias !61120

.noexc19.i:                                       ; preds = %.split32.i.i.i.i
  %i.bx = and i128 %i.bw, 36028797018963968, !dbg !61216
  %.not37.i.i.i.i = icmp eq i128 %i.bx, 0, !dbg !61216
  br i1 %.not37.i.i.i.i, label %bb.ac, label %bb.ad, !dbg !61217

_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit21.i.i.i.i: ; preds = %bb.p
  %i.by = and i64 %i.bu, 36028797018963968, !dbg !61218
  %.not36.i.i.i.i = icmp eq i64 %i.by, 0, !dbg !61218
  br i1 %.not36.i.i.i.i, label %bb.ac, label %bb.ad, !dbg !61217

bb.q:                                             ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit19.i.i.i.i, %.noexc18.i
  %i.bz = bitcast double %.sroa.07.0.i.i.i.i to i64, !dbg !61219 ; 2 uses
  %i.ca = lshr i64 %i.bz, 32, !dbg !61220
  %i.cb = trunc nuw i64 %i.ca to i32, !dbg !61220 ; 5 uses
  %i.cc = and i32 %i.cb, -2147483648, !dbg !61221 ; 2 uses
  %i.cd = and i32 %i.cb, 2146435072, !dbg !61222  ; 6 uses
  %i.ce = and i32 %i.cb, 1048575, !dbg !61223     ; 4 uses
  %i.cf = icmp eq i32 %i.cd, 2146435072, !dbg !61224
  br i1 %i.cf, label %bb.r, label %bb.s, !dbg !61224

bb.r:                                             ; preds = %bb.q
  %i.cg = icmp eq i32 %i.ce, 0, !dbg !61225
  %i.ch = and i64 %i.bz, 4294967295
  %i.ci = icmp eq i64 %i.ch, 0
  %or.cond.i.i.i.i.i = and i1 %i.ci, %i.cg, !dbg !61225
  %..i.i.i.i.i = select i1 %or.cond.i.i.i.i.i, i32 0, i32 512, !dbg !61226
  %i.cj = lshr exact i32 %i.cc, 16, !dbg !61227
  %i.ck = lshr i32 %i.ce, 10, !dbg !61228
  %i.cl = or disjoint i32 %i.ck, %i.cj, !dbg !61227
  %i.cm = or i32 %i.cl, %..i.i.i.i.i, !dbg !61229
  %i.cn = trunc nuw i32 %i.cm to i16, !dbg !61229
  %i.co = or disjoint i16 %i.cn, 31744, !dbg !61229
  br label %bb.ae, !dbg !61230

bb.s:                                             ; preds = %bb.q
  %i.cp = lshr exact i32 %i.cc, 16, !dbg !61231   ; 4 uses
  %i.cq = lshr exact i32 %i.cd, 20, !dbg !61232   ; 2 uses
  %i.cr = icmp samesign ugt i32 %i.cd, 1088421888, !dbg !61233
  br i1 %i.cr, label %bb.u, label %bb.t, !dbg !61233

bb.t:                                             ; preds = %bb.s
  %i.cs = icmp samesign ult i32 %i.cd, 1058013184, !dbg !61234
  br i1 %i.cs, label %bb.w, label %bb.v, !dbg !61234

bb.u:                                             ; preds = %bb.s
  %i.ct = trunc nuw i32 %i.cp to i16, !dbg !61235
  %i.cu = or disjoint i16 %i.ct, 31744, !dbg !61235
  br label %bb.ae, !dbg !61236

bb.v:                                             ; preds = %bb.t
  %i.cv = lshr exact i32 %i.cd, 10, !dbg !61237
  %i.cw = add nuw nsw i32 %i.cv, 16384, !dbg !61237
  %i.cx = lshr i32 %i.ce, 10, !dbg !61238
  %i.cy = and i32 %i.cb, 512, !dbg !61239
  %i.cz = icmp ne i32 %i.cy, 0, !dbg !61239
  %i.da = and i32 %i.cb, 1535
  %i.db = icmp ne i32 %i.da, 0
  %or.cond3.not.i.i.i.i.i = and i1 %i.cz, %i.db, !dbg !61240
  %i.dc = or disjoint i32 %i.cw, %i.cx, !dbg !61240
  %i.dd = or i32 %i.dc, %i.cp, !dbg !61240
  %i.de = trunc i32 %i.dd to i16, !dbg !61240
  %i.df = zext i1 %or.cond3.not.i.i.i.i.i to i16, !dbg !61239
  %spec.select9.i.i.i.i.i = add i16 %i.de, %i.df, !dbg !61239
  br label %bb.ae, !dbg !61239

bb.w:                                             ; preds = %bb.t
  %i.dg = icmp samesign ult i32 %i.cd, 1045430272, !dbg !61241
  br i1 %i.dg, label %bb.y, label %bb.x, !dbg !61241

bb.x:                                             ; preds = %bb.w
  %i.dh = sub nsw i32 1018, %i.cq, !dbg !61241    ; 2 uses
  %i.di = or disjoint i32 %i.ce, 1048576, !dbg !61242 ; 3 uses
  %i.dj = sub nsw i32 27, %i.cq, !dbg !61243
  %i.dk = and i32 %i.dj, 31, !dbg !61244
  %i.dl = lshr i32 %i.di, %i.dk, !dbg !61244      ; 2 uses
  %i.dm = shl nuw nsw i32 1, %i.dh, !dbg !61245
  %i.dn = and i32 %i.dm, %i.di, !dbg !61246
  %i.do = icmp eq i32 %i.dn, 0, !dbg !61246
  br i1 %i.do, label %bb.aa, label %bb.z, !dbg !61246

bb.y:                                             ; preds = %bb.w
  %i.dp = trunc nuw i32 %i.cp to i16, !dbg !61247
  br label %bb.ae, !dbg !61236

bb.z:                                             ; preds = %bb.x
  %i.dq = shl nuw nsw i32 3, %i.dh, !dbg !61248
  %i.dr = add nuw nsw i32 %i.dq, 2097151, !dbg !61249
  %i.ds = and i32 %i.dr, %i.di, !dbg !61250
  %i.dt = icmp ne i32 %i.ds, 0, !dbg !61250
  %i.du = zext i1 %i.dt to i32, !dbg !61250
  %spec.select.i.i.i.i.i = add nuw nsw i32 %i.dl, %i.du, !dbg !61250
  br label %bb.aa, !dbg !61250

bb.aa:                                            ; preds = %bb.z, %bb.x
  %.sroa.05.0.i.i.i.i.i = phi i32 [ %i.dl, %bb.x ], [ %spec.select.i.i.i.i.i, %bb.z ], !dbg !61251
  %i.dv = or i32 %.sroa.05.0.i.i.i.i.i, %i.cp, !dbg !61252
  %i.dw = trunc i32 %i.dv to i16, !dbg !61252
  br label %bb.ae, !dbg !61236

bb.ab:                                            ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit19.i.i.i.i, %.noexc18.i
  %i.dx = fptrunc double %.sroa.07.0.i.i.i.i to float, !dbg !61253
  %i.dy = tail call fastcc noundef i16 @_RNvNtNtNtCshdiYQzaKNQ1_4half8binary164arch3x8619f32_to_f16_x86_f16c(float noundef %i.dx), !dbg !61254
  br label %bb.ae, !dbg !61255

bb.ac:                                            ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit21.i.i.i.i, %.noexc19.i
  %i.dz = bitcast double %.sroa.01.0.i.i.i.i to i64, !dbg !61256
  %sum.shift.i.i.i.i = lshr exact i64 %i.dz, 48, !dbg !61257
  %i.ea = trunc nuw i64 %sum.shift.i.i.i.i to i16, !dbg !61258
  br label %bb.ae, !dbg !61259

bb.ad:                                            ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit21.i.i.i.i, %.noexc19.i
  %i.eb = fptrunc double %.sroa.01.0.i.i.i.i to float, !dbg !61260
  %i.ec = tail call fastcc noundef i16 @_RNvNtNtNtCshdiYQzaKNQ1_4half8binary164arch3x8619f32_to_f16_x86_f16c(float noundef %i.eb), !dbg !61261
  br label %bb.ae, !dbg !61262

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.y, %bb.v, %bb.u, %bb.r
  %.sroa.0.0.i.i.i.i = phi i16 [ %spec.select9.i.i.i.i.i, %bb.v ], [ %i.dy, %bb.ab ], [ %i.ec, %bb.ad ], [ %i.co, %bb.r ], [ %i.cu, %bb.u ], [ %i.dp, %bb.y ], [ %i.dw, %bb.aa ], [ %i.ea, %bb.ac ], !dbg !61263
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i, !dbg !61264
  store i16 %.sroa.0.0.i.i.i.i, ptr %i.ed, align 2, !dbg !61265, !noalias !61135
  %i.ee = add i64 %.val15.i, 1, !dbg !61266       ; 2 uses
  %i.ef = add nuw i64 %.sroa.01.0.i, 1, !dbg !61267 ; 2 uses
  %i.eg = icmp eq i64 %i.ef, %i.e, !dbg !61268
  br i1 %i.eg, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters6copied9copy_foldBQ_uNCINvNtB2s_3map8map_foldBQ_BQ_uNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops5round11RoundSeries14round_sig_figss9_0NCINvNvB1A_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6i_3VecBQ_E14extend_trustedINtB37_3MapINtB2q_6CopiedBF_EB3x_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.c, !dbg !61268

bb.af:                                            ; preds = %.split32.i.i.i.i, %.split31.i.i.i.i, %.noexc16.i, %bb.o, %.split.i.i.i.i
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !dbg !61269, !noalias !61120
  resume { ptr, i32 } %i.eh, !dbg !61270

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters6copied9copy_foldBQ_uNCINvNtB2s_3map8map_foldBQ_BQ_uNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops5round11RoundSeries14round_sig_figss9_0NCINvNvB1A_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6i_3VecBQ_E14extend_trustedINtB37_3MapINtB2q_6CopiedBF_EB3x_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ae, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.ee, %bb.ae ], !dbg !61271
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !61271, !noalias !61120
  ret void, !dbg !61272
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1s_B1s_uQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeB4y_E0NCINvNvB2d_8for_each4callB1s_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB68_3VecB1s_E14extend_trustedINtB2W_3MapBP_B3n_EE0E0E0EB3x_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !61273 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !61338 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !61338
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !61338 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !61338
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !61338 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !61339
  %i.a = icmp eq ptr %0, %1, !dbg !61340
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters6copied9copy_foldBQ_uNCINvNtB2s_3map8map_foldBQ_BQ_uQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeB4I_E0NCINvNvB1A_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6h_3VecBQ_E14extend_trustedINtB37_3MapINtB2q_6CopiedBF_EB3x_EE0E0E0E0EB3H_.exit, label %iter.check, !dbg !61341

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !61342
  %i.c = ptrtoint ptr %0 to i64, !dbg !61342
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !61342      ; 4 uses
  %i.e = lshr exact i64 %i.d, 1, !dbg !61342      ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 8, !dbg !61343
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !61343

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2 = icmp ult i64 %i.d, 32, !dbg !61343
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph, !dbg !61343

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.e, 9223372036854775792      ; 5 uses
  %i.f = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.g = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !61343

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !61344 ; 2 uses
  %i.h = getelementptr [2 x i8], ptr %i.g, i64 %index, !dbg !61345 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !61346
  store <8 x i16> splat (i16 15360), ptr %i.h, align 2, !dbg !61346, !noalias !61330
  store <8 x i16> splat (i16 15360), ptr %i.i, align 2, !dbg !61346, !noalias !61330
  %index.next = add nuw i64 %index, 16, !dbg !61344 ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec, !dbg !61347
  br i1 %i.j, label %middle.block, label %vector.body, !dbg !61347, !llvm.loop !61318

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !61347
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters6copied9copy_foldBQ_uNCINvNtB2s_3map8map_foldBQ_BQ_uQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeB4I_E0NCINvNvB1A_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6h_3VecBQ_E14extend_trustedINtB37_3MapINtB2q_6CopiedBF_EB3x_EE0E0E0E0EB3H_.exit, label %vec.epilog.iter.check, !dbg !61347

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.k = and i64 %i.d, 24
  %min.epilog.iters.check = icmp eq i64 %i.k, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !2857

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !61344
  %n.vec3 = and i64 %i.e, 9223372036854775804     ; 4 uses
  %i.l = add i64 %.sroa.5.0.copyload, %n.vec3     ; 2 uses
  %i.m = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index4 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next5, %vec.epilog.vector.body ], !dbg !61344 ; 2 uses
  %i.n = getelementptr [2 x i8], ptr %i.m, i64 %index4, !dbg !61345
  store <4 x i16> splat (i16 15360), ptr %i.n, align 2, !dbg !61346, !noalias !61330
  %index.next5 = add nuw i64 %index4, 4, !dbg !61344 ; 2 uses
  %i.o = icmp eq i64 %index.next5, %n.vec3, !dbg !61347
  br i1 %i.o, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !61347, !llvm.loop !61319

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n6 = icmp eq i64 %i.e, %n.vec3, !dbg !61347
  br i1 %cmp.n6, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters6copied9copy_foldBQ_uNCINvNtB2s_3map8map_foldBQ_BQ_uQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeB4I_E0NCINvNvB1A_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6h_3VecBQ_E14extend_trustedINtB37_3MapINtB2q_6CopiedBF_EB3x_EE0E0E0E0EB3H_.exit, label %vec.epilog.scalar.ph.preheader, !dbg !61347

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %i.f, %vec.epilog.iter.check ], [ %i.l, %vec.epilog.middle.block ]
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec3, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !61347

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %i.p = phi i64 [ %i.r, %vec.epilog.scalar.ph ], [ %.ph, %vec.epilog.scalar.ph.preheader ], !dbg !61348 ; 2 uses
  %.sroa.01.0.i = phi i64 [ %i.s, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !61344
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.p, !dbg !61345
  store i16 15360, ptr %i.q, align 2, !dbg !61346, !noalias !61330
  %i.r = add i64 %i.p, 1, !dbg !61349             ; 2 uses
  %i.s = add nuw i64 %.sroa.01.0.i, 1, !dbg !61350 ; 2 uses
  %i.t = icmp eq i64 %i.s, %i.e, !dbg !61347
  br i1 %i.t, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters6copied9copy_foldBQ_uNCINvNtB2s_3map8map_foldBQ_BQ_uQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeB4I_E0NCINvNvB1A_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6h_3VecBQ_E14extend_trustedINtB37_3MapINtB2q_6CopiedBF_EB3x_EE0E0E0E0EB3H_.exit, label %vec.epilog.scalar.ph, !dbg !61347, !llvm.loop !61324

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters6copied9copy_foldBQ_uNCINvNtB2s_3map8map_foldBQ_BQ_uQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeB4I_E0NCINvNvB1A_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6h_3VecBQ_E14extend_trustedINtB37_3MapINtB2q_6CopiedBF_EB3x_EE0E0E0E0EB3H_.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.l, %vec.epilog.middle.block ], [ %i.f, %middle.block ], [ %i.r, %vec.epilog.scalar.ph ], !dbg !61351
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !61351, !noalias !61337
  ret void, !dbg !61352
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1s_B1s_uQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB3z_9datatypes11Float16TypeB50_B50_NCNvYNtNtB3z_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3log0B1s_E0NCINvNvB2d_8for_each4callB1s_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB7O_3VecB1s_E14extend_trustedINtB2W_3MapBP_B3n_EE0E0E0ECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !61353 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !61428 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !61428
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !61428 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !61428
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !61428
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !61429
  %i.a = icmp eq ptr %0, %1, !dbg !61430
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters6copied9copy_foldBQ_uNCINvNtB2s_3map8map_foldBQ_BQ_uQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB3J_9datatypes11Float16TypeB5a_B5a_NCNvYNtNtB3J_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3log0BQ_E0NCINvNvB1A_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB7W_3VecBQ_E14extend_trustedINtB37_3MapINtB2q_6CopiedBF_EB3x_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !61431

bb.b:                                             ; preds = %bb.a
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !61428
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !61428, !nonnull !2226, !noundef !2226
  %i.b = ptrtoint ptr %1 to i64, !dbg !61432
  %i.c = ptrtoint ptr %0 to i64, !dbg !61432
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !61432
  %i.e = lshr exact i64 %i.d, 1, !dbg !61432
  %i.f = getelementptr i8, ptr %.sroa.9.0.copyload, i64 8
  br label %bb.c, !dbg !61433

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.j, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.k, %bb.d ], !dbg !61434 ; 2 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !61435
  %.val16.i = load i16, ptr %i.g, align 2, !dbg !61436, !noalias !61419, !noundef !2226
  %.val.i.i.i.i = load ptr, ptr %i.f, align 8, !dbg !61437, !noalias !61420, !nonnull !2226, !align !2858, !noundef !2226
  %.val.i.i.i.i.i = load i16, ptr %.val.i.i.i.i, align 2, !dbg !61438, !noalias !61420, !noundef !2226
  %i.h = invoke fastcc noundef i16 @_RNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3log0CskY9G75ZWc4U_11polars_expr(i16 noundef %.val.i.i.i.i.i, i16 noundef %.val16.i)
          to label %bb.d unwind label %bb.e, !dbg !61439, !noalias !61419

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i, !dbg !61440
  store i16 %i.h, ptr %i.i, align 2, !dbg !61441, !noalias !61421
  %i.j = add i64 %.val15.i, 1, !dbg !61442        ; 2 uses
  %i.k = add nuw i64 %.sroa.01.0.i, 1, !dbg !61443 ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.e, !dbg !61444
  br i1 %i.l, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters6copied9copy_foldBQ_uNCINvNtB2s_3map8map_foldBQ_BQ_uQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB3J_9datatypes11Float16TypeB5a_B5a_NCNvYNtNtB3J_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3log0BQ_E0NCINvNvB1A_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB7W_3VecBQ_E14extend_trustedINtB37_3MapINtB2q_6CopiedBF_EB3x_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.c, !dbg !61444

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !dbg !61445, !noalias !61419
  resume { ptr, i32 } %i.m, !dbg !61446

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters6copied9copy_foldBQ_uNCINvNtB2s_3map8map_foldBQ_BQ_uQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB3J_9datatypes11Float16TypeB5a_B5a_NCNvYNtNtB3J_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3log0BQ_E0NCINvNvB1A_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB7W_3VecBQ_E14extend_trustedINtB37_3MapINtB2q_6CopiedBF_EB3x_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.j, %bb.d ], !dbg !61447
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !61447, !noalias !61419
  ret void, !dbg !61448
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1s_B1s_uQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB3z_9datatypes11Float16TypeB50_B50_NCNvYNtNtB3z_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3log0B1s_Es_0NCINvNvB2d_8for_each4callB1s_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB7Q_3VecB1s_E14extend_trustedINtB2W_3MapBP_B3n_EE0E0E0ECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !61449 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !61524 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !61524
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !61524 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !61524
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !61524
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !61525
  %i.a = icmp eq ptr %0, %1, !dbg !61526
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters6copied9copy_foldBQ_uNCINvNtB2s_3map8map_foldBQ_BQ_uQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB3J_9datatypes11Float16TypeB5a_B5a_NCNvYNtNtB3J_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3log0BQ_Es_0NCINvNvB1A_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB7Y_3VecBQ_E14extend_trustedINtB37_3MapINtB2q_6CopiedBF_EB3x_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !61527

bb.b:                                             ; preds = %bb.a
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !61524
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !61524, !nonnull !2226, !noundef !2226
  %i.b = ptrtoint ptr %1 to i64, !dbg !61528
  %i.c = ptrtoint ptr %0 to i64, !dbg !61528
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !61528
  %i.e = lshr exact i64 %i.d, 1, !dbg !61528
  %i.f = getelementptr i8, ptr %.sroa.9.0.copyload, i64 8
  br label %bb.c, !dbg !61529

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.j, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.k, %bb.d ], !dbg !61530 ; 2 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !61531
  %.val16.i = load i16, ptr %i.g, align 2, !dbg !61532, !noalias !61515, !noundef !2226
  %.val.i.i.i.i = load ptr, ptr %i.f, align 8, !dbg !61533, !noalias !61516, !nonnull !2226, !align !2858, !noundef !2226
  %.val.i.i.i.i.i = load i16, ptr %.val.i.i.i.i, align 2, !dbg !61534, !noalias !61516, !noundef !2226
  %i.h = invoke fastcc noundef i16 @_RNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3log0CskY9G75ZWc4U_11polars_expr(i16 noundef %.val16.i, i16 noundef %.val.i.i.i.i.i)
          to label %bb.d unwind label %bb.e, !dbg !61535, !noalias !61515

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i, !dbg !61536
  store i16 %i.h, ptr %i.i, align 2, !dbg !61537, !noalias !61517
  %i.j = add i64 %.val15.i, 1, !dbg !61538        ; 2 uses
  %i.k = add nuw i64 %.sroa.01.0.i, 1, !dbg !61539 ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.e, !dbg !61540
  br i1 %i.l, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters6copied9copy_foldBQ_uNCINvNtB2s_3map8map_foldBQ_BQ_uQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB3J_9datatypes11Float16TypeB5a_B5a_NCNvYNtNtB3J_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3log0BQ_Es_0NCINvNvB1A_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB7Y_3VecBQ_E14extend_trustedINtB37_3MapINtB2q_6CopiedBF_EB3x_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.c, !dbg !61540

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !dbg !61541, !noalias !61515
  resume { ptr, i32 } %i.m, !dbg !61542

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters6copied9copy_foldBQ_uNCINvNtB2s_3map8map_foldBQ_BQ_uQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB3J_9datatypes11Float16TypeB5a_B5a_NCNvYNtNtB3J_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3log0BQ_Es_0NCINvNvB1A_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB7Y_3VecBQ_E14extend_trustedINtB37_3MapINtB2q_6CopiedBF_EB3x_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.j, %bb.d ], !dbg !61543
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !61543, !noalias !61515
  ret void, !dbg !61544
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i8 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IteraEENtNtNtB9_6traits8iterator8Iterator4foldaNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, i8 noundef %2) unnamed_addr #10 personality ptr @rust_eh_personality !dbg !61545 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !61580
  %i.a = icmp eq ptr %0, %1, !dbg !61581
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4foldaNCINvNtNtBY_8adapters6copied9copy_foldaaNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %iter.check, !dbg !61582

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !61583
  %i.c = ptrtoint ptr %0 to i64, !dbg !61583
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !61583      ; 8 uses
  %min.iters.check = icmp ult i64 %i.d, 8, !dbg !61584
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !61584

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2 = icmp ult i64 %i.d, 32, !dbg !61584
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph, !dbg !61584

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.e = and i64 %i.d, 24
  %n.vec = and i64 %i.d, -32                      ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %2, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !61584

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !61585 ; 2 uses
  %vec.phi = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.h, %vector.body ]
  %vec.phi3 = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.i, %vector.body ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !61586 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !61587
  %wide.load = load <16 x i8>, ptr %i.f, align 1, !dbg !61587
  %wide.load4 = load <16 x i8>, ptr %i.g, align 1, !dbg !61587
  %i.h = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %vec.phi, <16 x i8> %wide.load), !dbg !61588 ; 2 uses
  %i.i = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %vec.phi3, <16 x i8> %wide.load4), !dbg !61588 ; 2 uses
  %index.next = add nuw i64 %index, 32, !dbg !61585 ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec, !dbg !61589
  br i1 %i.j, label %middle.block, label %vector.body, !dbg !61589, !llvm.loop !61575

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.h, <16 x i8> %i.i), !dbg !61589
  %i.k = tail call i8 @llvm.vector.reduce.smax.v16i8(<16 x i8> %rdx.minmax), !dbg !61589 ; 3 uses
  %cmp.n = icmp eq i64 %i.d, %n.vec, !dbg !61589
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4foldaNCINvNtNtBY_8adapters6copied9copy_foldaaNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.iter.check, !dbg !61589

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !2861

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !61585
  %bc.merge.rdx = phi i8 [ %i.k, %vec.epilog.iter.check ], [ %2, %vector.main.loop.iter.check ], !dbg !61590
  %n.vec5 = and i64 %i.d, -8                      ; 3 uses
  %broadcast.splatinsert6 = insertelement <8 x i8> poison, i8 %bc.merge.rdx, i64 0
  %broadcast.splat7 = shufflevector <8 x i8> %broadcast.splatinsert6, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index8 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next11, %vec.epilog.vector.body ], !dbg !61585 ; 2 uses
  %vec.phi9 = phi <8 x i8> [ %broadcast.splat7, %vec.epilog.ph ], [ %i.m, %vec.epilog.vector.body ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %index8, !dbg !61586
  %wide.load10 = load <8 x i8>, ptr %i.l, align 1, !dbg !61587
  %i.m = tail call <8 x i8> @llvm.smax.v8i8(<8 x i8> %vec.phi9, <8 x i8> %wide.load10), !dbg !61588 ; 2 uses
  %index.next11 = add nuw i64 %index8, 8, !dbg !61585 ; 2 uses
  %i.n = icmp eq i64 %index.next11, %n.vec5, !dbg !61589
  br i1 %i.n, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !61589, !llvm.loop !61576

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.o = tail call i8 @llvm.vector.reduce.smax.v8i8(<8 x i8> %i.m), !dbg !61589 ; 2 uses
  %cmp.n12 = icmp eq i64 %i.d, %n.vec5, !dbg !61589
  br i1 %cmp.n12, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4foldaNCINvNtNtBY_8adapters6copied9copy_foldaaNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.scalar.ph.preheader, !dbg !61589

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ]
  %.sroa.02.0.i.ph = phi i8 [ %2, %iter.check ], [ %i.k, %vec.epilog.iter.check ], [ %i.o, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !61589

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i = phi i64 [ %i.q, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !61585 ; 2 uses
  %.sroa.02.0.i = phi i8 [ %.sroa.0.0.i.i.i.i, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !61590
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i, !dbg !61586
  %.val.i = load i8, ptr %i.p, align 1, !dbg !61587, !noundef !2226
  %.sroa.0.0.i.i.i.i = tail call noundef i8 @llvm.smax.i8(i8 %.sroa.02.0.i, i8 %.val.i), !dbg !61588 ; 2 uses
  %i.q = add nuw i64 %.sroa.04.0.i, 1, !dbg !61591 ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.d, !dbg !61589
  br i1 %i.r, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4foldaNCINvNtNtBY_8adapters6copied9copy_foldaaNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.scalar.ph, !dbg !61589, !llvm.loop !61579

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4foldaNCINvNtNtBY_8adapters6copied9copy_foldaaNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.sroa.0.0.i = phi i8 [ %2, %bb.a ], [ %i.o, %vec.epilog.middle.block ], [ %i.k, %middle.block ], [ %.sroa.0.0.i.i.i.i, %vec.epilog.scalar.ph ], !dbg !61590
  ret i8 %.sroa.0.0.i, !dbg !61592
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i8 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IteraEENtNtNtB9_6traits8iterator8Iterator4foldaNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, i8 noundef %2) unnamed_addr #10 personality ptr @rust_eh_personality !dbg !61593 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !61628
  %i.a = icmp eq ptr %0, %1, !dbg !61629
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4foldaNCINvNtNtBY_8adapters6copied9copy_foldaaNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %iter.check, !dbg !61630

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !61631
  %i.c = ptrtoint ptr %0 to i64, !dbg !61631
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !61631      ; 8 uses
  %min.iters.check = icmp ult i64 %i.d, 8, !dbg !61632
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !61632

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2 = icmp ult i64 %i.d, 32, !dbg !61632
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph, !dbg !61632

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.e = and i64 %i.d, 24
  %n.vec = and i64 %i.d, -32                      ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %2, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !61632

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !61633 ; 2 uses
  %vec.phi = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.h, %vector.body ]
  %vec.phi3 = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.i, %vector.body ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !61634 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !61635
  %wide.load = load <16 x i8>, ptr %i.f, align 1, !dbg !61635
  %wide.load4 = load <16 x i8>, ptr %i.g, align 1, !dbg !61635
  %i.h = tail call <16 x i8> @llvm.smin.v16i8(<16 x i8> %vec.phi, <16 x i8> %wide.load), !dbg !61636 ; 2 uses
  %i.i = tail call <16 x i8> @llvm.smin.v16i8(<16 x i8> %vec.phi3, <16 x i8> %wide.load4), !dbg !61636 ; 2 uses
  %index.next = add nuw i64 %index, 32, !dbg !61633 ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec, !dbg !61637
  br i1 %i.j, label %middle.block, label %vector.body, !dbg !61637, !llvm.loop !61623

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <16 x i8> @llvm.smin.v16i8(<16 x i8> %i.h, <16 x i8> %i.i), !dbg !61637
  %i.k = tail call i8 @llvm.vector.reduce.smin.v16i8(<16 x i8> %rdx.minmax), !dbg !61637 ; 3 uses
  %cmp.n = icmp eq i64 %i.d, %n.vec, !dbg !61637
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4foldaNCINvNtNtBY_8adapters6copied9copy_foldaaNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.iter.check, !dbg !61637

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !2861

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !61633
  %bc.merge.rdx = phi i8 [ %i.k, %vec.epilog.iter.check ], [ %2, %vector.main.loop.iter.check ], !dbg !61638
  %n.vec5 = and i64 %i.d, -8                      ; 3 uses
  %broadcast.splatinsert6 = insertelement <8 x i8> poison, i8 %bc.merge.rdx, i64 0
  %broadcast.splat7 = shufflevector <8 x i8> %broadcast.splatinsert6, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index8 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next11, %vec.epilog.vector.body ], !dbg !61633 ; 2 uses
  %vec.phi9 = phi <8 x i8> [ %broadcast.splat7, %vec.epilog.ph ], [ %i.m, %vec.epilog.vector.body ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %index8, !dbg !61634
  %wide.load10 = load <8 x i8>, ptr %i.l, align 1, !dbg !61635
  %i.m = tail call <8 x i8> @llvm.smin.v8i8(<8 x i8> %vec.phi9, <8 x i8> %wide.load10), !dbg !61636 ; 2 uses
  %index.next11 = add nuw i64 %index8, 8, !dbg !61633 ; 2 uses
  %i.n = icmp eq i64 %index.next11, %n.vec5, !dbg !61637
  br i1 %i.n, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !61637, !llvm.loop !61624

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.o = tail call i8 @llvm.vector.reduce.smin.v8i8(<8 x i8> %i.m), !dbg !61637 ; 2 uses
  %cmp.n12 = icmp eq i64 %i.d, %n.vec5, !dbg !61637
  br i1 %cmp.n12, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4foldaNCINvNtNtBY_8adapters6copied9copy_foldaaNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.scalar.ph.preheader, !dbg !61637

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ]
  %.sroa.02.0.i.ph = phi i8 [ %2, %iter.check ], [ %i.k, %vec.epilog.iter.check ], [ %i.o, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !61637

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i = phi i64 [ %i.q, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !61633 ; 2 uses
  %.sroa.02.0.i = phi i8 [ %.sroa.0.0.i.i.i.i, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !61638
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i, !dbg !61634
  %.val.i = load i8, ptr %i.p, align 1, !dbg !61635, !noundef !2226
  %.sroa.0.0.i.i.i.i = tail call noundef i8 @llvm.smin.i8(i8 %.sroa.02.0.i, i8 %.val.i), !dbg !61636 ; 2 uses
  %i.q = add nuw i64 %.sroa.04.0.i, 1, !dbg !61639 ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.d, !dbg !61637
  br i1 %i.r, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4foldaNCINvNtNtBY_8adapters6copied9copy_foldaaNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.scalar.ph, !dbg !61637, !llvm.loop !61627

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4foldaNCINvNtNtBY_8adapters6copied9copy_foldaaNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.sroa.0.0.i = phi i8 [ %2, %bb.a ], [ %i.o, %vec.epilog.middle.block ], [ %i.k, %middle.block ], [ %.sroa.0.0.i.i.i.i, %vec.epilog.scalar.ph ], !dbg !61638
  ret i8 %.sroa.0.0.i, !dbg !61640
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IteraEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldaauNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow17pow_to_uint_dtypeNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8Int8TypeNtB3H_10UInt32TypeE0NCINvNvB1v_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5m_3VecaE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2I_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #11 personality ptr @rust_eh_personality !dbg !61641 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !61710 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !61710
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !61710 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !61710
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !61710
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !61710
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !61710 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !61711
  %i.a = icmp eq ptr %0, %1, !dbg !61712
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldauNCINvNtB1K_3map8map_foldaauNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow17pow_to_uint_dtypeNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8Int8TypeNtB3Q_10UInt32TypeE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5u_3VecaE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.b, !dbg !61713

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !61714
  %i.c = ptrtoint ptr %0 to i64, !dbg !61714
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !61714
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload) ]
  br label %bb.c, !dbg !61715

bb.c:                                             ; preds = %.loopexit.i, %bb.b
  %i.e = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.o, %.loopexit.i ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.p, %.loopexit.i ], !dbg !61716 ; 2 uses
  %i.f = load i32, ptr %.sroa.8.0.copyload, align 4, !dbg !61717, !noalias !61701, !noundef !2226 ; 2 uses
  %i.g = icmp eq i32 %i.f, 0, !dbg !61718
  br i1 %i.g, label %.loopexit.i, label %bb.d, !dbg !61718

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i, !dbg !61719
  %.val16.i = load i8, ptr %i.h, align 1, !dbg !61720, !noalias !61702, !noundef !2226
  br label %.preheader21.i.i.i.i.i.i, !dbg !61721

.preheader21.i.i.i.i.i.i:                         ; preds = %bb.d, %bb.f
  %.sroa.015.1.i.i.i.i.i.i = phi i8 [ %.sroa.015.2.i.i.i.i.i.i, %bb.f ], [ 1, %bb.d ], !dbg !61722 ; 2 uses
  %.sroa.07.0.i.i.i.i.i.i = phi i32 [ %i.l, %bb.f ], [ %i.f, %bb.d ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i.i = phi i8 [ %i.m, %bb.f ], [ %.val16.i, %bb.d ] ; 3 uses
  %i.i = and i32 %.sroa.07.0.i.i.i.i.i.i, 1, !dbg !61723
  %.not.i.i.i.i.i.i = icmp eq i32 %i.i, 0, !dbg !61723
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e, !dbg !61723

bb.e:                                             ; preds = %.preheader21.i.i.i.i.i.i
  %i.j = mul i8 %.sroa.0.0.i.i.i.i.i.i, %.sroa.015.1.i.i.i.i.i.i, !dbg !61724 ; 2 uses
  %i.k = icmp eq i32 %.sroa.07.0.i.i.i.i.i.i, 1, !dbg !61725
  br i1 %i.k, label %.loopexit.i, label %bb.f, !dbg !61725

bb.f:                                             ; preds = %bb.e, %.preheader21.i.i.i.i.i.i
  %.sroa.015.2.i.i.i.i.i.i = phi i8 [ %i.j, %bb.e ], [ %.sroa.015.1.i.i.i.i.i.i, %.preheader21.i.i.i.i.i.i ], !dbg !61722
  %i.l = lshr i32 %.sroa.07.0.i.i.i.i.i.i, 1, !dbg !61726
  %i.m = mul i8 %.sroa.0.0.i.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i.i, !dbg !61727
  br label %.preheader21.i.i.i.i.i.i, !dbg !61728

.loopexit.i:                                      ; preds = %bb.e, %bb.c
  %.sroa.015.0.i.i.i.i.i.i = phi i8 [ 1, %bb.c ], [ %i.j, %bb.e ], !dbg !61729
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.e, !dbg !61730
  store i8 %.sroa.015.0.i.i.i.i.i.i, ptr %i.n, align 1, !dbg !61731, !noalias !61703
  %i.o = add i64 %i.e, 1, !dbg !61732             ; 2 uses
  %i.p = add nuw i64 %.sroa.01.0.i, 1, !dbg !61733 ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.d, !dbg !61734
  br i1 %i.q, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldauNCINvNtB1K_3map8map_foldaauNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow17pow_to_uint_dtypeNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8Int8TypeNtB3Q_10UInt32TypeE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5u_3VecaE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.c, !dbg !61734

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldauNCINvNtB1K_3map8map_foldaauNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow17pow_to_uint_dtypeNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8Int8TypeNtB3Q_10UInt32TypeE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5u_3VecaE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit: ; preds = %.loopexit.i, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.o, %.loopexit.i ], !dbg !61735
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !61735, !noalias !61702
  ret void, !dbg !61736
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IteraEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldaauNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8Int8TypeE0NCINvNvB1v_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB53_3VecaE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2K_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !61737 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !61806 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !61806
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !61806 ; 8 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !61806
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !61806 ; 6 uses
  %.sroa.7.0.copyload3 = ptrtoaddr ptr %.sroa.7.0.copyload to i64, !dbg !61807
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !61807
  %i.a = icmp eq ptr %0, %1, !dbg !61808
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldauNCINvNtB1K_3map8map_foldaauNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8Int8TypeE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecaE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit, label %iter.check, !dbg !61809

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !61810      ; 3 uses
  %i.c = ptrtoint ptr %0 to i64, !dbg !61810      ; 4 uses
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !61810      ; 8 uses
  %min.iters.check = icmp ult i64 %i.d, 4, !dbg !61811
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck, !dbg !61811

vector.memcheck:                                  ; preds = %iter.check
  %i.e = add i64 %.sroa.5.0.copyload, %.sroa.7.0.copyload3, !dbg !61811
  %i.f = sub i64 %i.c, %i.e, !dbg !61811
  %diff.check = icmp ugt i64 %i.f, -32, !dbg !61811
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !61812

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check4 = icmp ult i64 %i.d, 32, !dbg !61811
  br i1 %min.iters.check4, label %vec.epilog.ph, label %vector.ph, !dbg !61811

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %i.d, 28
  %n.vec = and i64 %i.d, -32                      ; 5 uses
  %i.h = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !61811

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !61812 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !61813 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !61814
  %wide.load = load <16 x i8>, ptr %i.j, align 1, !dbg !61814, !noalias !61798
  %wide.load5 = load <16 x i8>, ptr %i.k, align 1, !dbg !61814, !noalias !61798
  %i.l = tail call <16 x i8> @llvm.scmp.v16i8.v16i8(<16 x i8> %wide.load, <16 x i8> zeroinitializer), !dbg !61815
  %i.m = tail call <16 x i8> @llvm.scmp.v16i8.v16i8(<16 x i8> %wide.load5, <16 x i8> zeroinitializer), !dbg !61815
  %i.n = getelementptr i8, ptr %i.i, i64 %index, !dbg !61816 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !61817
  store <16 x i8> %i.l, ptr %i.n, align 1, !dbg !61817, !noalias !61799
  store <16 x i8> %i.m, ptr %i.o, align 1, !dbg !61817, !noalias !61799
  %index.next = add nuw i64 %index, 32, !dbg !61812 ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec, !dbg !61818
  br i1 %i.p, label %middle.block, label %vector.body, !dbg !61818, !llvm.loop !61786

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec, !dbg !61818
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldauNCINvNtB1K_3map8map_foldaauNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8Int8TypeE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecaE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit, label %vec.epilog.iter.check, !dbg !61818

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !2868

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !61812
  %n.vec6 = and i64 %i.d, -4                      ; 4 uses
  %i.q = add i64 %.sroa.5.0.copyload, %n.vec6     ; 2 uses
  %i.r = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index7 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next9, %vec.epilog.vector.body ], !dbg !61812 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %index7, !dbg !61813
  %wide.load8 = load <4 x i8>, ptr %i.s, align 1, !dbg !61814, !noalias !61798
  %i.t = tail call <4 x i8> @llvm.scmp.v4i8.v4i8(<4 x i8> %wide.load8, <4 x i8> zeroinitializer), !dbg !61815
  %i.u = getelementptr i8, ptr %i.r, i64 %index7, !dbg !61816
  store <4 x i8> %i.t, ptr %i.u, align 1, !dbg !61817, !noalias !61799
  %index.next9 = add nuw i64 %index7, 4, !dbg !61812 ; 2 uses
  %i.v = icmp eq i64 %index.next9, %n.vec6, !dbg !61818
  br i1 %i.v, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !61818, !llvm.loop !61787

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n10 = icmp eq i64 %i.d, %n.vec6, !dbg !61818
  br i1 %cmp.n10, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldauNCINvNtB1K_3map8map_foldaauNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8Int8TypeE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecaE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit, label %vec.epilog.scalar.ph.preheader, !dbg !61818

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %.sroa.5.0.copyload, %vector.memcheck ], [ %i.h, %vec.epilog.iter.check ], [ %i.q, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec6, %vec.epilog.middle.block ] ; 4 uses
  %i.w = sub i64 %i.b, %i.c, !dbg !61818
  %i.x = xor i64 %.sroa.01.0.i.ph, -1, !dbg !61818
  %i.y = add i64 %i.x, %i.b, !dbg !61818
  %xtraiter = and i64 %i.w, 1, !dbg !61818
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !61818
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !61818

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i.ph, !dbg !61813
  %.val16.i.prol = load i8, ptr %i.z, align 1, !dbg !61814, !noalias !61798, !noundef !2226
  %.sroa.0.0.i.i.i.i.prol = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i8(i8 %.val16.i.prol, i8 0), !dbg !61815
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %.ph, !dbg !61816
  store i8 %.sroa.0.0.i.i.i.i.prol, ptr %i.aa, align 1, !dbg !61817, !noalias !61799
  %i.ab = add i64 %.ph, 1, !dbg !61819            ; 2 uses
  %i.ac = or disjoint i64 %.sroa.01.0.i.ph, 1, !dbg !61820
  br label %vec.epilog.scalar.ph.prol.loopexit, !dbg !61818

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.ab, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ab, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ac, %vec.epilog.scalar.ph.prol ]
  %i.ad = icmp eq i64 %i.y, %i.c, !dbg !61818
  br i1 %i.ad, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldauNCINvNtB1K_3map8map_foldaauNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8Int8TypeE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecaE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit, label %vec.epilog.scalar.ph, !dbg !61818

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.ae = phi i64 [ %i.al, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !61813 ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.am, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !61812 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i, !dbg !61813
  %.val16.i = load i8, ptr %i.af, align 1, !dbg !61814, !noalias !61798, !noundef !2226
  %.sroa.0.0.i.i.i.i = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i8(i8 %.val16.i, i8 0), !dbg !61815
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !61816
  store i8 %.sroa.0.0.i.i.i.i, ptr %i.ag, align 1, !dbg !61817, !noalias !61799
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i, !dbg !61813
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1, !dbg !61813
  %.val16.i.1 = load i8, ptr %i.ai, align 1, !dbg !61814, !noalias !61798, !noundef !2226
  %.sroa.0.0.i.i.i.i.1 = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i8(i8 %.val16.i.1, i8 0), !dbg !61815
  %i.aj = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !61816
  %i.ak = getelementptr i8, ptr %i.aj, i64 1, !dbg !61816
  store i8 %.sroa.0.0.i.i.i.i.1, ptr %i.ak, align 1, !dbg !61817, !noalias !61799
  %i.al = add i64 %i.ae, 2, !dbg !61819           ; 2 uses
  %i.am = add nuw i64 %.sroa.01.0.i, 2, !dbg !61820 ; 2 uses
  %i.an = icmp eq i64 %i.am, %i.d, !dbg !61818
  br i1 %i.an, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldauNCINvNtB1K_3map8map_foldaauNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8Int8TypeE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecaE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit, label %vec.epilog.scalar.ph, !dbg !61818, !llvm.loop !61792

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldauNCINvNtB1K_3map8map_foldaauNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8Int8TypeE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecaE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.q, %vec.epilog.middle.block ], [ %i.h, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.al, %vec.epilog.scalar.ph ], !dbg !61821
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !61821, !noalias !61798
  ret void, !dbg !61822
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IteraEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldaauNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops5round11RoundSeries14round_sig_figss_0NCINvNvB1v_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5h_3VecaE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0ECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !61823 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !61927 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !61927
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !61927 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !61927
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !61927
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !61927
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !61927
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !61928
  %i.a = icmp eq ptr %0, %1, !dbg !61929
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldauNCINvNtB1K_3map8map_foldaauNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops5round11RoundSeries14round_sig_figss_0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5p_3VecaE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !61930

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !61931
  %i.c = ptrtoint ptr %0 to i64, !dbg !61931
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !61931
  br label %bb.c, !dbg !61932

bb.c:                                             ; preds = %bb.e, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.z, %bb.e ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.aa, %bb.e ], !dbg !61933 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i, !dbg !61934
  %.val16.i = load i8, ptr %i.e, align 1, !dbg !61935, !noalias !61916, !noundef !2226 ; 2 uses
  %i.f = icmp eq i8 %.val16.i, 0, !dbg !61936
  br i1 %i.f, label %bb.e, label %bb.d, !dbg !61936

bb.d:                                             ; preds = %bb.c
  %i.g = sitofp i8 %.val16.i to double, !dbg !61937 ; 3 uses
  %i.h = load i32, ptr %.sroa.9.0.copyload, align 4, !dbg !61938, !noalias !61918, !noundef !2226
  %i.i = tail call double @llvm.fabs.f64(double %i.g), !dbg !61939
  %i.j = tail call double @llvm.log10.f64(double %i.i), !dbg !61940
  %i.k = tail call double @llvm.floor.f64(double %i.j), !dbg !61941
  %i.l = tail call i32 @llvm.fptosi.sat.i32.f64(double %i.k), !dbg !61942
  %i.m = xor i32 %i.l, -1, !dbg !61938
  %i.n = add i32 %i.h, %i.m, !dbg !61938          ; 3 uses
  %i.o = invoke noundef double @_RNvNtNtCslLP515EPe0c_4libm4math6scalbn6scalbn(double noundef %i.g, i32 noundef %i.n)
          to label %.noexc.i unwind label %bb.f, !dbg !61943, !noalias !61916

.noexc.i:                                         ; preds = %bb.d
  %i.p = tail call double @llvm.powi.f64.i32(double 5.000000e+00, i32 %i.n), !dbg !61944 ; 2 uses
  %i.q = fmul double %i.o, %i.p, !dbg !61943
  %i.r = tail call double @llvm.round.f64(double %i.q), !dbg !61945
  %i.s = fdiv double %i.r, %i.p, !dbg !61946
  %i.t = sub i32 0, %i.n, !dbg !61947
  %i.u = invoke noundef double @_RNvNtNtCslLP515EPe0c_4libm4math6scalbn6scalbn(double noundef %i.s, i32 noundef %i.t)
          to label %.noexc17.i unwind label %bb.f, !dbg !61948, !noalias !61916 ; 2 uses

.noexc17.i:                                       ; preds = %.noexc.i
  %i.v = tail call double @llvm.fabs.f64(double %i.u), !dbg !61949
  %i.w = fcmp ueq double %i.v, +inf, !dbg !61950
  %.sroa.01.0.i.i.i.i = select i1 %i.w, double %i.g, double %i.u, !dbg !61951
  %i.x = tail call i8 @llvm.fptosi.sat.i8.f64(double %.sroa.01.0.i.i.i.i), !dbg !61952
  br label %bb.e, !dbg !61953

bb.e:                                             ; preds = %.noexc17.i, %bb.c
  %.sroa.0.0.i.i.i.i = phi i8 [ %i.x, %.noexc17.i ], [ 0, %bb.c ], !dbg !61954
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload, i64 %.val15.i, !dbg !61955
  store i8 %.sroa.0.0.i.i.i.i, ptr %i.y, align 1, !dbg !61956, !noalias !61920
  %i.z = add i64 %.val15.i, 1, !dbg !61957        ; 2 uses
  %i.aa = add nuw i64 %.sroa.01.0.i, 1, !dbg !61958 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, %i.d, !dbg !61959
  br i1 %i.ab, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldauNCINvNtB1K_3map8map_foldaauNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops5round11RoundSeries14round_sig_figss_0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5p_3VecaE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.c, !dbg !61959

bb.f:                                             ; preds = %.noexc.i, %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !dbg !61960, !noalias !61916
  resume { ptr, i32 } %i.ac, !dbg !61961

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldauNCINvNtB1K_3map8map_foldaauNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops5round11RoundSeries14round_sig_figss_0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5p_3VecaE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.e, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.z, %bb.e ], !dbg !61962
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !61962, !noalias !61916
  ret void, !dbg !61963
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IteraEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldaauQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8Int8TypeNtB3M_10UInt32TypeE0NCINvNvB1v_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5r_3VecaE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2J_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #12 personality ptr @rust_eh_personality !dbg !61964 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !62020 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !62020
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !62020 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !62021
  %i.a = icmp eq ptr %0, %1, !dbg !62022
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldauNCINvNtB1K_3map8map_foldaauQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8Int8TypeNtB3V_10UInt32TypeE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5z_3VecaE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit, label %bb.b, !dbg !62023

bb.b:                                             ; preds = %bb.a
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !62020
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !62020
  %i.b = ptrtoint ptr %1 to i64, !dbg !62024
  %i.c = ptrtoint ptr %0 to i64, !dbg !62024
  %i.d = sub i64 %i.b, %i.c, !dbg !62024          ; 2 uses
  %scevgep.i = getelementptr nuw i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload, !dbg !62025
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i, i8 1, i64 %i.d, i1 false), !dbg !62026, !noalias !62012
  %i.e = add i64 %i.d, %.sroa.5.0.copyload, !dbg !62025
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldauNCINvNtB1K_3map8map_foldaauQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8Int8TypeNtB3V_10UInt32TypeE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5z_3VecaE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit, !dbg !62013

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldauNCINvNtB1K_3map8map_foldaauQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8Int8TypeNtB3V_10UInt32TypeE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5z_3VecaE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit: ; preds = %bb.a, %bb.b
  %storemerge = phi i64 [ %i.e, %bb.b ], [ %.sroa.5.0.copyload, %bb.a ], !dbg !62027
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !62027, !noalias !62019
  ret void, !dbg !62028
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef double @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4folddNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, double noundef %2) unnamed_addr #10 personality ptr @rust_eh_personality !dbg !62029 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !62065
  %i.a = icmp eq ptr %0, %1, !dbg !62066
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters6copied9copy_foldddNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !62067

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !62068
  %i.c = ptrtoint ptr %0 to i64, !dbg !62068
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !62068      ; 2 uses
  %i.e = lshr exact i64 %i.d, 3, !dbg !62068      ; 3 uses
  %min.iters.check = icmp ult i64 %i.d, 32, !dbg !62069
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !62069

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.e, 2305843009213693948      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %2, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterfEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldffuQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2L_9datatypes11Float32TypeB4c_B4c_NCNvYNtNtB2L_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs_0fE0NCINvNvB1v_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6W_3VecfE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0ECskY9G75ZWc4U_11polars_expr:bb.a

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 4611686018427387902, !dbg !67504
  br label %bb.c, !dbg !67504

bb.c:                                             ; preds = %bb.c, %.new
  %i.h = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.w, %bb.c ], !dbg !67505 ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.x, %bb.c ], !dbg !67506 ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !67505
  %.val16.i = load float, ptr %i.i, align 4, !dbg !67507, !noalias !67489, !noundef !2226
  %.val.i.i.i.i = load ptr, ptr %i.f, align 8, !dbg !67508, !noalias !67490, !nonnull !2226, !align !2881, !noundef !2226
  %i.j = load float, ptr %.val.i.i.i.i, align 4, !dbg !67509, !alias.scope !67491, !noalias !67490, !noundef !2226
  %i.k = tail call float @llvm.log.f32(float %i.j), !dbg !67510
  %i.l = tail call float @llvm.log.f32(float %.val16.i), !dbg !67511
  %i.m = fdiv float %i.k, %i.l, !dbg !67512
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.h, !dbg !67513
  store float %i.m, ptr %i.n, align 4, !dbg !67514, !noalias !67492
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !67505
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4, !dbg !67505
  %.val16.i.1 = load float, ptr %i.p, align 4, !dbg !67507, !noalias !67489, !noundef !2226
  %.val.i.i.i.i.1 = load ptr, ptr %i.f, align 8, !dbg !67508, !noalias !67490, !nonnull !2226, !align !2881, !noundef !2226
  %i.q = load float, ptr %.val.i.i.i.i.1, align 4, !dbg !67509, !alias.scope !67491, !noalias !67490, !noundef !2226
  %i.r = tail call float @llvm.log.f32(float %i.q), !dbg !67510
  %i.s = tail call float @llvm.log.f32(float %.val16.i.1), !dbg !67511
  %i.t = fdiv float %i.r, %i.s, !dbg !67512
  %i.u = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.h, !dbg !67513
  %i.v = getelementptr i8, ptr %i.u, i64 4, !dbg !67513
  store float %i.t, ptr %i.v, align 4, !dbg !67514, !noalias !67492
  %i.w = add i64 %i.h, 2, !dbg !67515             ; 3 uses
  %i.x = add nuw i64 %.sroa.01.0.i, 2, !dbg !67516 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !67517  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !67517
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float32TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs_0fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB74_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, label %bb.c, !dbg !67517

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float32TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs_0fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB74_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.y = and i64 %i.d, 4, !dbg !67517
  %lcmp.mod.not = icmp eq i64 %i.y, 0, !dbg !67517
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float32TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs_0fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB74_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %.epil.preheader, !dbg !67517

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float32TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs_0fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB74_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.w, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float32TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs_0fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB74_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.x, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float32TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs_0fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB74_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.e to i1, !dbg !67517
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !67517
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i.epil.init, !dbg !67505
  %.val16.i.epil = load float, ptr %i.z, align 4, !dbg !67507, !noalias !67489, !noundef !2226
  %.val.i.i.i.i.epil = load ptr, ptr %i.f, align 8, !dbg !67508, !noalias !67490, !nonnull !2226, !align !2881, !noundef !2226
  %i.aa = load float, ptr %.val.i.i.i.i.epil, align 4, !dbg !67509, !alias.scope !67491, !noalias !67490, !noundef !2226
  %i.ab = tail call float @llvm.log.f32(float %i.aa), !dbg !67510
  %i.ac = tail call float @llvm.log.f32(float %.val16.i.epil), !dbg !67511
  %i.ad = fdiv float %i.ab, %i.ac, !dbg !67512
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init, !dbg !67513
  store float %i.ad, ptr %i.ae, align 4, !dbg !67514, !noalias !67492
  %i.af = add i64 %.epil.init, 1, !dbg !67515
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float32TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs_0fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB74_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float32TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs_0fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB74_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float32TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs_0fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB74_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.w, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float32TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs_0fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB74_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ], [ %i.af, %.epil.preheader ], !dbg !67518
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !67518, !noalias !67489
  ret void, !dbg !67519
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterfEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldffuQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2L_9datatypes11Float32TypeB4c_B4c_NCNvYNtNtB2L_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs_0fEs_0NCINvNvB1v_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6Y_3VecfE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0ECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #11 personality ptr @rust_eh_personality !dbg !67520 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !67597 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !67597
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !67597 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !67597
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !67597 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !67598
  %i.a = icmp eq ptr %0, %1, !dbg !67599
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float32TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs_0fEs_0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB76_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !67600

bb.b:                                             ; preds = %bb.a
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !67597
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !67597, !nonnull !2226, !noundef !2226
  %i.b = ptrtoint ptr %1 to i64, !dbg !67601
  %i.c = ptrtoint ptr %0 to i64, !dbg !67601
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !67601      ; 3 uses
  %i.e = lshr exact i64 %i.d, 2, !dbg !67601      ; 2 uses
  %i.f = getelementptr i8, ptr %.sroa.8.0.copyload, i64 8 ; 3 uses
  %i.g = icmp eq i64 %i.d, 4, !dbg !67602
  br i1 %i.g, label %.epil.preheader, label %.new, !dbg !67602

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 4611686018427387902, !dbg !67602
  br label %bb.c, !dbg !67602

bb.c:                                             ; preds = %bb.c, %.new
  %i.h = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.w, %bb.c ], !dbg !67603 ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.x, %bb.c ], !dbg !67604 ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !67603
  %.val16.i = load float, ptr %i.i, align 4, !dbg !67605, !noalias !67587, !noundef !2226
  %.val.i.i.i.i = load ptr, ptr %i.f, align 8, !dbg !67606, !noalias !67588, !nonnull !2226, !align !2881, !noundef !2226
  %i.j = load float, ptr %.val.i.i.i.i, align 4, !dbg !67607, !alias.scope !67589, !noalias !67588, !noundef !2226
  %i.k = tail call float @llvm.log.f32(float %.val16.i), !dbg !67608
  %i.l = tail call float @llvm.log.f32(float %i.j), !dbg !67609
  %i.m = fdiv float %i.k, %i.l, !dbg !67610
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.h, !dbg !67611
  store float %i.m, ptr %i.n, align 4, !dbg !67612, !noalias !67590
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !67603
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4, !dbg !67603
  %.val16.i.1 = load float, ptr %i.p, align 4, !dbg !67605, !noalias !67587, !noundef !2226
  %.val.i.i.i.i.1 = load ptr, ptr %i.f, align 8, !dbg !67606, !noalias !67588, !nonnull !2226, !align !2881, !noundef !2226
  %i.q = load float, ptr %.val.i.i.i.i.1, align 4, !dbg !67607, !alias.scope !67589, !noalias !67588, !noundef !2226
  %i.r = tail call float @llvm.log.f32(float %.val16.i.1), !dbg !67608
  %i.s = tail call float @llvm.log.f32(float %i.q), !dbg !67609
  %i.t = fdiv float %i.r, %i.s, !dbg !67610
  %i.u = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.h, !dbg !67611
  %i.v = getelementptr i8, ptr %i.u, i64 4, !dbg !67611
  store float %i.t, ptr %i.v, align 4, !dbg !67612, !noalias !67590
  %i.w = add i64 %i.h, 2, !dbg !67613             ; 3 uses
  %i.x = add nuw i64 %.sroa.01.0.i, 2, !dbg !67614 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !67615  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !67615
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float32TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs_0fEs_0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB76_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, label %bb.c, !dbg !67615

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float32TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs_0fEs_0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB76_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.y = and i64 %i.d, 4, !dbg !67615
  %lcmp.mod.not = icmp eq i64 %i.y, 0, !dbg !67615
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float32TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs_0fEs_0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB76_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %.epil.preheader, !dbg !67615

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float32TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs_0fEs_0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB76_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.w, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float32TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs_0fEs_0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB76_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.x, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float32TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs_0fEs_0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB76_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.e to i1, !dbg !67615
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !67615
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i.epil.init, !dbg !67603
  %.val16.i.epil = load float, ptr %i.z, align 4, !dbg !67605, !noalias !67587, !noundef !2226
  %.val.i.i.i.i.epil = load ptr, ptr %i.f, align 8, !dbg !67606, !noalias !67588, !nonnull !2226, !align !2881, !noundef !2226
  %i.aa = load float, ptr %.val.i.i.i.i.epil, align 4, !dbg !67607, !alias.scope !67589, !noalias !67588, !noundef !2226
  %i.ab = tail call float @llvm.log.f32(float %.val16.i.epil), !dbg !67608
  %i.ac = tail call float @llvm.log.f32(float %i.aa), !dbg !67609
  %i.ad = fdiv float %i.ab, %i.ac, !dbg !67610
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init, !dbg !67611
  store float %i.ad, ptr %i.ae, align 4, !dbg !67612, !noalias !67590
  %i.af = add i64 %.epil.init, 1, !dbg !67613
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float32TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs_0fEs_0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB76_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float32TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs_0fEs_0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB76_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float32TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs_0fEs_0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB76_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.w, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float32TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs_0fEs_0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB76_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ], [ %i.af, %.epil.preheader ], !dbg !67616
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !67616, !noalias !67587
  ret void, !dbg !67617
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i8 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4foldhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, i8 noundef %2) unnamed_addr #10 personality ptr @rust_eh_personality !dbg !67618 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !67653
  %i.a = icmp eq ptr %0, %1, !dbg !67654
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldhNCINvNtNtBY_8adapters6copied9copy_foldhhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %iter.check, !dbg !67655

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !67656
  %i.c = ptrtoint ptr %0 to i64, !dbg !67656
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !67656      ; 8 uses
  %min.iters.check = icmp ult i64 %i.d, 4, !dbg !67657
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !67657

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2 = icmp ult i64 %i.d, 32, !dbg !67657
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph, !dbg !67657

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.e = and i64 %i.d, 28
  %n.vec = and i64 %i.d, -32                      ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %2, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !67657

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !67658 ; 2 uses
  %vec.phi = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.h, %vector.body ]
  %vec.phi3 = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.i, %vector.body ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !67659 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !67660
  %wide.load = load <16 x i8>, ptr %i.f, align 1, !dbg !67660
  %wide.load4 = load <16 x i8>, ptr %i.g, align 1, !dbg !67660
  %i.h = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %vec.phi, <16 x i8> %wide.load), !dbg !67661 ; 2 uses
  %i.i = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %vec.phi3, <16 x i8> %wide.load4), !dbg !67661 ; 2 uses
  %index.next = add nuw i64 %index, 32, !dbg !67658 ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec, !dbg !67662
  br i1 %i.j, label %middle.block, label %vector.body, !dbg !67662, !llvm.loop !67648

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.h, <16 x i8> %i.i), !dbg !67662
  %i.k = tail call i8 @llvm.vector.reduce.umax.v16i8(<16 x i8> %rdx.minmax), !dbg !67662 ; 3 uses
  %cmp.n = icmp eq i64 %i.d, %n.vec, !dbg !67662
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldhNCINvNtNtBY_8adapters6copied9copy_foldhhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.iter.check, !dbg !67662

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !2868

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !67658
  %bc.merge.rdx = phi i8 [ %i.k, %vec.epilog.iter.check ], [ %2, %vector.main.loop.iter.check ], !dbg !67663
  %n.vec5 = and i64 %i.d, -4                      ; 3 uses
  %broadcast.splatinsert6 = insertelement <4 x i8> poison, i8 %bc.merge.rdx, i64 0
  %broadcast.splat7 = shufflevector <4 x i8> %broadcast.splatinsert6, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index8 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next11, %vec.epilog.vector.body ], !dbg !67658 ; 2 uses
  %vec.phi9 = phi <4 x i8> [ %broadcast.splat7, %vec.epilog.ph ], [ %i.m, %vec.epilog.vector.body ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %index8, !dbg !67659
  %wide.load10 = load <4 x i8>, ptr %i.l, align 1, !dbg !67660
  %i.m = tail call <4 x i8> @llvm.umax.v4i8(<4 x i8> %vec.phi9, <4 x i8> %wide.load10), !dbg !67661 ; 2 uses
  %index.next11 = add nuw i64 %index8, 4, !dbg !67658 ; 2 uses
  %i.n = icmp eq i64 %index.next11, %n.vec5, !dbg !67662
  br i1 %i.n, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !67662, !llvm.loop !67649

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.o = tail call i8 @llvm.vector.reduce.umax.v4i8(<4 x i8> %i.m), !dbg !67662 ; 2 uses
  %cmp.n12 = icmp eq i64 %i.d, %n.vec5, !dbg !67662
  br i1 %cmp.n12, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldhNCINvNtNtBY_8adapters6copied9copy_foldhhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.scalar.ph.preheader, !dbg !67662

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ]
  %.sroa.02.0.i.ph = phi i8 [ %2, %iter.check ], [ %i.k, %vec.epilog.iter.check ], [ %i.o, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !67662

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i = phi i64 [ %i.q, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !67658 ; 2 uses
  %.sroa.02.0.i = phi i8 [ %.sroa.0.0.i.i.i.i, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !67663
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i, !dbg !67659
  %.val.i = load i8, ptr %i.p, align 1, !dbg !67660, !noundef !2226
  %.sroa.0.0.i.i.i.i = tail call noundef i8 @llvm.umax.i8(i8 %.sroa.02.0.i, i8 %.val.i), !dbg !67661 ; 2 uses
  %i.q = add nuw i64 %.sroa.04.0.i, 1, !dbg !67664 ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.d, !dbg !67662
  br i1 %i.r, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldhNCINvNtNtBY_8adapters6copied9copy_foldhhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.scalar.ph, !dbg !67662, !llvm.loop !67652

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldhNCINvNtNtBY_8adapters6copied9copy_foldhhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.sroa.0.0.i = phi i8 [ %2, %bb.a ], [ %i.o, %vec.epilog.middle.block ], [ %i.k, %middle.block ], [ %.sroa.0.0.i.i.i.i, %vec.epilog.scalar.ph ], !dbg !67663
  ret i8 %.sroa.0.0.i, !dbg !67665
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i8 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4foldhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, i8 noundef %2) unnamed_addr #10 personality ptr @rust_eh_personality !dbg !67666 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !67701
  %i.a = icmp eq ptr %0, %1, !dbg !67702
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldhNCINvNtNtBY_8adapters6copied9copy_foldhhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %iter.check, !dbg !67703

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !67704
  %i.c = ptrtoint ptr %0 to i64, !dbg !67704
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !67704      ; 8 uses
  %min.iters.check = icmp ult i64 %i.d, 4, !dbg !67705
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !67705

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2 = icmp ult i64 %i.d, 32, !dbg !67705
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph, !dbg !67705

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.e = and i64 %i.d, 28
  %n.vec = and i64 %i.d, -32                      ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %2, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !67705

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !67706 ; 2 uses
  %vec.phi = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.h, %vector.body ]
  %vec.phi3 = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.i, %vector.body ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !67707 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !67708
  %wide.load = load <16 x i8>, ptr %i.f, align 1, !dbg !67708
  %wide.load4 = load <16 x i8>, ptr %i.g, align 1, !dbg !67708
  %i.h = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %vec.phi, <16 x i8> %wide.load), !dbg !67709 ; 2 uses
  %i.i = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %vec.phi3, <16 x i8> %wide.load4), !dbg !67709 ; 2 uses
  %index.next = add nuw i64 %index, 32, !dbg !67706 ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec, !dbg !67710
  br i1 %i.j, label %middle.block, label %vector.body, !dbg !67710, !llvm.loop !67696

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.h, <16 x i8> %i.i), !dbg !67710
  %i.k = tail call i8 @llvm.vector.reduce.umin.v16i8(<16 x i8> %rdx.minmax), !dbg !67710 ; 3 uses
  %cmp.n = icmp eq i64 %i.d, %n.vec, !dbg !67710
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldhNCINvNtNtBY_8adapters6copied9copy_foldhhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.iter.check, !dbg !67710

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !2868

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !67706
  %bc.merge.rdx = phi i8 [ %i.k, %vec.epilog.iter.check ], [ %2, %vector.main.loop.iter.check ], !dbg !67711
  %n.vec5 = and i64 %i.d, -4                      ; 3 uses
  %broadcast.splatinsert6 = insertelement <4 x i8> poison, i8 %bc.merge.rdx, i64 0
  %broadcast.splat7 = shufflevector <4 x i8> %broadcast.splatinsert6, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index8 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next11, %vec.epilog.vector.body ], !dbg !67706 ; 2 uses
  %vec.phi9 = phi <4 x i8> [ %broadcast.splat7, %vec.epilog.ph ], [ %i.m, %vec.epilog.vector.body ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %index8, !dbg !67707
  %wide.load10 = load <4 x i8>, ptr %i.l, align 1, !dbg !67708
  %i.m = tail call <4 x i8> @llvm.umin.v4i8(<4 x i8> %vec.phi9, <4 x i8> %wide.load10), !dbg !67709 ; 2 uses
  %index.next11 = add nuw i64 %index8, 4, !dbg !67706 ; 2 uses
  %i.n = icmp eq i64 %index.next11, %n.vec5, !dbg !67710
  br i1 %i.n, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !67710, !llvm.loop !67697

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.o = tail call i8 @llvm.vector.reduce.umin.v4i8(<4 x i8> %i.m), !dbg !67710 ; 2 uses
  %cmp.n12 = icmp eq i64 %i.d, %n.vec5, !dbg !67710
  br i1 %cmp.n12, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldhNCINvNtNtBY_8adapters6copied9copy_foldhhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.scalar.ph.preheader, !dbg !67710

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ]
  %.sroa.02.0.i.ph = phi i8 [ %2, %iter.check ], [ %i.k, %vec.epilog.iter.check ], [ %i.o, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !67710

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i = phi i64 [ %i.q, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !67706 ; 2 uses
  %.sroa.02.0.i = phi i8 [ %.sroa.0.0.i.i.i.i, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !67711
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i, !dbg !67707
  %.val.i = load i8, ptr %i.p, align 1, !dbg !67708, !noundef !2226
  %.sroa.0.0.i.i.i.i = tail call noundef i8 @llvm.umin.i8(i8 %.sroa.02.0.i, i8 %.val.i), !dbg !67709 ; 2 uses
  %i.q = add nuw i64 %.sroa.04.0.i, 1, !dbg !67712 ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.d, !dbg !67710
  br i1 %i.r, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldhNCINvNtNtBY_8adapters6copied9copy_foldhhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.scalar.ph, !dbg !67710, !llvm.loop !67700

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldhNCINvNtNtBY_8adapters6copied9copy_foldhhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.sroa.0.0.i = phi i8 [ %2, %bb.a ], [ %i.o, %vec.epilog.middle.block ], [ %i.k, %middle.block ], [ %.sroa.0.0.i.i.i.i, %vec.epilog.scalar.ph ], !dbg !67711
  ret i8 %.sroa.0.0.i, !dbg !67713
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldhhuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow17pow_to_uint_dtypeNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9UInt8TypeNtB3H_10UInt32TypeE0NCINvNvB1v_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5n_3VechE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2I_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #11 personality ptr @rust_eh_personality !dbg !67714 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !67783 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !67783
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !67783 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !67783
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !67783
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !67783
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !67783 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !67784
  %i.a = icmp eq ptr %0, %1, !dbg !67785
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldhuNCINvNtB1K_3map8map_foldhhuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow17pow_to_uint_dtypeNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9UInt8TypeNtB3Q_10UInt32TypeE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5v_3VechE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.b, !dbg !67786

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !67787
  %i.c = ptrtoint ptr %0 to i64, !dbg !67787
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !67787
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload) ]
  br label %bb.c, !dbg !67788

bb.c:                                             ; preds = %.loopexit.i, %bb.b
  %i.e = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.o, %.loopexit.i ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.p, %.loopexit.i ], !dbg !67789 ; 2 uses
  %i.f = load i32, ptr %.sroa.8.0.copyload, align 4, !dbg !67790, !noalias !67774, !noundef !2226 ; 2 uses
  %i.g = icmp eq i32 %i.f, 0, !dbg !67791
  br i1 %i.g, label %.loopexit.i, label %bb.d, !dbg !67791

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i, !dbg !67792
  %.val16.i = load i8, ptr %i.h, align 1, !dbg !67793, !noalias !67775, !noundef !2226
  br label %.preheader21.i.i.i.i.i.i, !dbg !67794

.preheader21.i.i.i.i.i.i:                         ; preds = %bb.d, %bb.f
  %.sroa.015.1.i.i.i.i.i.i = phi i8 [ %.sroa.015.2.i.i.i.i.i.i, %bb.f ], [ 1, %bb.d ], !dbg !67795 ; 2 uses
  %.sroa.07.0.i.i.i.i.i.i = phi i32 [ %i.l, %bb.f ], [ %i.f, %bb.d ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i.i = phi i8 [ %i.m, %bb.f ], [ %.val16.i, %bb.d ] ; 3 uses
  %i.i = and i32 %.sroa.07.0.i.i.i.i.i.i, 1, !dbg !67796
  %.not.i.i.i.i.i.i = icmp eq i32 %i.i, 0, !dbg !67796
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e, !dbg !67796

bb.e:                                             ; preds = %.preheader21.i.i.i.i.i.i
  %i.j = mul i8 %.sroa.0.0.i.i.i.i.i.i, %.sroa.015.1.i.i.i.i.i.i, !dbg !67797 ; 2 uses
  %i.k = icmp eq i32 %.sroa.07.0.i.i.i.i.i.i, 1, !dbg !67798
  br i1 %i.k, label %.loopexit.i, label %bb.f, !dbg !67798

bb.f:                                             ; preds = %bb.e, %.preheader21.i.i.i.i.i.i
  %.sroa.015.2.i.i.i.i.i.i = phi i8 [ %i.j, %bb.e ], [ %.sroa.015.1.i.i.i.i.i.i, %.preheader21.i.i.i.i.i.i ], !dbg !67795
  %i.l = lshr i32 %.sroa.07.0.i.i.i.i.i.i, 1, !dbg !67799
  %i.m = mul i8 %.sroa.0.0.i.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i.i, !dbg !67800
  br label %.preheader21.i.i.i.i.i.i, !dbg !67801

.loopexit.i:                                      ; preds = %bb.e, %bb.c
  %.sroa.015.0.i.i.i.i.i.i = phi i8 [ 1, %bb.c ], [ %i.j, %bb.e ], !dbg !67802
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.e, !dbg !67803
  store i8 %.sroa.015.0.i.i.i.i.i.i, ptr %i.n, align 1, !dbg !67804, !noalias !67776
  %i.o = add i64 %i.e, 1, !dbg !67805             ; 2 uses
  %i.p = add nuw i64 %.sroa.01.0.i, 1, !dbg !67806 ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.d, !dbg !67807
  br i1 %i.q, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldhuNCINvNtB1K_3map8map_foldhhuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow17pow_to_uint_dtypeNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9UInt8TypeNtB3Q_10UInt32TypeE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5v_3VechE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.c, !dbg !67807

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldhuNCINvNtB1K_3map8map_foldhhuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow17pow_to_uint_dtypeNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9UInt8TypeNtB3Q_10UInt32TypeE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5v_3VechE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit: ; preds = %.loopexit.i, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.o, %.loopexit.i ], !dbg !67808
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !67808, !noalias !67775
  ret void, !dbg !67809
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldhhuNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9UInt8TypeE0NCINvNvB1v_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB54_3VechE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2K_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !67810 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !67881 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !67881
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !67881 ; 8 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !67881
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !67881 ; 6 uses
  %.sroa.7.0.copyload3 = ptrtoaddr ptr %.sroa.7.0.copyload to i64, !dbg !67882
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !67882
  %i.a = icmp eq ptr %0, %1, !dbg !67883
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldhuNCINvNtB1K_3map8map_foldhhuNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9UInt8TypeE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VechE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit, label %iter.check, !dbg !67884

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !67885      ; 3 uses
  %i.c = ptrtoint ptr %0 to i64, !dbg !67885      ; 4 uses
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !67885      ; 8 uses
  %min.iters.check = icmp ult i64 %i.d, 4, !dbg !67886
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck, !dbg !67886

vector.memcheck:                                  ; preds = %iter.check
  %i.e = add i64 %.sroa.5.0.copyload, %.sroa.7.0.copyload3, !dbg !67886
  %i.f = sub i64 %i.c, %i.e, !dbg !67886
  %diff.check = icmp ugt i64 %i.f, -32, !dbg !67886
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !67887

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check4 = icmp ult i64 %i.d, 32, !dbg !67886
  br i1 %min.iters.check4, label %vec.epilog.ph, label %vector.ph, !dbg !67886

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %i.d, 28
  %n.vec = and i64 %i.d, -32                      ; 5 uses
  %i.h = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !67886

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !67887 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !67888 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !67889
  %wide.load = load <16 x i8>, ptr %i.j, align 1, !dbg !67889, !noalias !67873
  %wide.load5 = load <16 x i8>, ptr %i.k, align 1, !dbg !67889, !noalias !67873
  %i.l = icmp ne <16 x i8> %wide.load, zeroinitializer, !dbg !67890
  %i.m = icmp ne <16 x i8> %wide.load5, zeroinitializer, !dbg !67890
  %i.n = zext <16 x i1> %i.l to <16 x i8>, !dbg !67891
  %i.o = zext <16 x i1> %i.m to <16 x i8>, !dbg !67891
  %i.p = getelementptr i8, ptr %i.i, i64 %index, !dbg !67892 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !67893
  store <16 x i8> %i.n, ptr %i.p, align 1, !dbg !67893, !noalias !67874
  store <16 x i8> %i.o, ptr %i.q, align 1, !dbg !67893, !noalias !67874
  %index.next = add nuw i64 %index, 32, !dbg !67887 ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec, !dbg !67894
  br i1 %i.r, label %middle.block, label %vector.body, !dbg !67894, !llvm.loop !67861

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec, !dbg !67894
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldhuNCINvNtB1K_3map8map_foldhhuNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9UInt8TypeE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VechE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit, label %vec.epilog.iter.check, !dbg !67894

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !2868

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !67887
  %n.vec6 = and i64 %i.d, -4                      ; 4 uses
  %i.s = add i64 %.sroa.5.0.copyload, %n.vec6     ; 2 uses
  %i.t = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index7 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next9, %vec.epilog.vector.body ], !dbg !67887 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %index7, !dbg !67888
  %wide.load8 = load <4 x i8>, ptr %i.u, align 1, !dbg !67889, !noalias !67873
  %i.v = icmp ne <4 x i8> %wide.load8, zeroinitializer, !dbg !67890
  %i.w = zext <4 x i1> %i.v to <4 x i8>, !dbg !67891
  %i.x = getelementptr i8, ptr %i.t, i64 %index7, !dbg !67892
  store <4 x i8> %i.w, ptr %i.x, align 1, !dbg !67893, !noalias !67874
  %index.next9 = add nuw i64 %index7, 4, !dbg !67887 ; 2 uses
  %i.y = icmp eq i64 %index.next9, %n.vec6, !dbg !67894
  br i1 %i.y, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !67894, !llvm.loop !67862

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n10 = icmp eq i64 %i.d, %n.vec6, !dbg !67894
  br i1 %cmp.n10, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldhuNCINvNtB1K_3map8map_foldhhuNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9UInt8TypeE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VechE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit, label %vec.epilog.scalar.ph.preheader, !dbg !67894

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %.sroa.5.0.copyload, %vector.memcheck ], [ %i.h, %vec.epilog.iter.check ], [ %i.s, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec6, %vec.epilog.middle.block ] ; 4 uses
  %i.z = sub i64 %i.b, %i.c, !dbg !67894
  %i.aa = xor i64 %.sroa.01.0.i.ph, -1, !dbg !67894
  %i.ab = add i64 %i.aa, %i.b, !dbg !67894
  %xtraiter = and i64 %i.z, 1, !dbg !67894
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !67894
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !67894

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i.ph, !dbg !67888
  %.val16.i.prol = load i8, ptr %i.ac, align 1, !dbg !67889, !noalias !67873, !noundef !2226
  %.not.i.i.i.i.prol = icmp ne i8 %.val16.i.prol, 0, !dbg !67890
  %spec.select.i.i.i.i.prol = zext i1 %.not.i.i.i.i.prol to i8, !dbg !67891
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %.ph, !dbg !67892
  store i8 %spec.select.i.i.i.i.prol, ptr %i.ad, align 1, !dbg !67893, !noalias !67874
  %i.ae = add i64 %.ph, 1, !dbg !67895            ; 2 uses
  %i.af = or disjoint i64 %.sroa.01.0.i.ph, 1, !dbg !67896
  br label %vec.epilog.scalar.ph.prol.loopexit, !dbg !67894

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.ae, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ae, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.af, %vec.epilog.scalar.ph.prol ]
  %i.ag = icmp eq i64 %i.ab, %i.c, !dbg !67894
  br i1 %i.ag, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldhuNCINvNtB1K_3map8map_foldhhuNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9UInt8TypeE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VechE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit, label %vec.epilog.scalar.ph, !dbg !67894

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.ah = phi i64 [ %i.ao, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !67888 ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.ap, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !67887 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i, !dbg !67888
  %.val16.i = load i8, ptr %i.ai, align 1, !dbg !67889, !noalias !67873, !noundef !2226
  %.not.i.i.i.i = icmp ne i8 %.val16.i, 0, !dbg !67890
  %spec.select.i.i.i.i = zext i1 %.not.i.i.i.i to i8, !dbg !67891
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.ah, !dbg !67892
  store i8 %spec.select.i.i.i.i, ptr %i.aj, align 1, !dbg !67893, !noalias !67874
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i, !dbg !67888
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1, !dbg !67888
  %.val16.i.1 = load i8, ptr %i.al, align 1, !dbg !67889, !noalias !67873, !noundef !2226
  %.not.i.i.i.i.1 = icmp ne i8 %.val16.i.1, 0, !dbg !67890
  %spec.select.i.i.i.i.1 = zext i1 %.not.i.i.i.i.1 to i8, !dbg !67891
  %i.am = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.ah, !dbg !67892
  %i.an = getelementptr i8, ptr %i.am, i64 1, !dbg !67892
  store i8 %spec.select.i.i.i.i.1, ptr %i.an, align 1, !dbg !67893, !noalias !67874
  %i.ao = add i64 %i.ah, 2, !dbg !67895           ; 2 uses
  %i.ap = add nuw i64 %.sroa.01.0.i, 2, !dbg !67896 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, %i.d, !dbg !67894
  br i1 %i.aq, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldhuNCINvNtB1K_3map8map_foldhhuNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9UInt8TypeE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VechE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit, label %vec.epilog.scalar.ph, !dbg !67894, !llvm.loop !67867

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldhuNCINvNtB1K_3map8map_foldhhuNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9UInt8TypeE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VechE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.s, %vec.epilog.middle.block ], [ %i.h, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.ao, %vec.epilog.scalar.ph ], !dbg !67897
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !67897, !noalias !67873
  ret void, !dbg !67898
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldhhuNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops5round11RoundSeries14round_sig_figss4_0NCINvNvB1v_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5i_3VechE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0ECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !67899 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !68002 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !68002
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !68002 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !68002
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !68002
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !68002
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !68002
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !68003
  %i.a = icmp eq ptr %0, %1, !dbg !68004
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldhuNCINvNtB1K_3map8map_foldhhuNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops5round11RoundSeries14round_sig_figss4_0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5q_3VechE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !68005

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !68006
  %i.c = ptrtoint ptr %0 to i64, !dbg !68006
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !68006
  br label %bb.c, !dbg !68007

bb.c:                                             ; preds = %bb.e, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.y, %bb.e ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.z, %bb.e ], !dbg !68008 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i, !dbg !68009
  %.val16.i = load i8, ptr %i.e, align 1, !dbg !68010, !noalias !67991, !noundef !2226 ; 2 uses
  %i.f = icmp eq i8 %.val16.i, 0, !dbg !68011
  br i1 %i.f, label %bb.e, label %bb.d, !dbg !68011

bb.d:                                             ; preds = %bb.c
  %i.g = uitofp i8 %.val16.i to double, !dbg !68012 ; 3 uses
  %i.h = load i32, ptr %.sroa.9.0.copyload, align 4, !dbg !68013, !noalias !67993, !noundef !2226
  %i.i = tail call double @llvm.log10.f64(double %i.g), !dbg !68014
  %i.j = tail call double @llvm.floor.f64(double %i.i), !dbg !68015
  %i.k = tail call i32 @llvm.fptosi.sat.i32.f64(double %i.j), !dbg !68016
  %i.l = xor i32 %i.k, -1, !dbg !68013
  %i.m = add i32 %i.h, %i.l, !dbg !68013          ; 3 uses
  %i.n = invoke noundef double @_RNvNtNtCslLP515EPe0c_4libm4math6scalbn6scalbn(double noundef %i.g, i32 noundef %i.m)
          to label %.noexc.i unwind label %bb.f, !dbg !68017, !noalias !67991

.noexc.i:                                         ; preds = %bb.d
  %i.o = tail call double @llvm.powi.f64.i32(double 5.000000e+00, i32 %i.m), !dbg !68018 ; 2 uses
  %i.p = fmul double %i.n, %i.o, !dbg !68017
  %i.q = tail call double @llvm.round.f64(double %i.p), !dbg !68019
  %i.r = fdiv double %i.q, %i.o, !dbg !68020
  %i.s = sub i32 0, %i.m, !dbg !68021
  %i.t = invoke noundef double @_RNvNtNtCslLP515EPe0c_4libm4math6scalbn6scalbn(double noundef %i.r, i32 noundef %i.s)
          to label %.noexc17.i unwind label %bb.f, !dbg !68022, !noalias !67991 ; 2 uses

.noexc17.i:                                       ; preds = %.noexc.i
  %i.u = tail call double @llvm.fabs.f64(double %i.t), !dbg !68023
  %i.v = fcmp ueq double %i.u, +inf, !dbg !68024
  %.sroa.01.0.i.i.i.i = select i1 %i.v, double %i.g, double %i.t, !dbg !68025
  %i.w = tail call i8 @llvm.fptoui.sat.i8.f64(double %.sroa.01.0.i.i.i.i), !dbg !68026
  br label %bb.e, !dbg !68027

bb.e:                                             ; preds = %.noexc17.i, %bb.c
  %.sroa.0.0.i.i.i.i = phi i8 [ %i.w, %.noexc17.i ], [ 0, %bb.c ], !dbg !68028
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload, i64 %.val15.i, !dbg !68029
  store i8 %.sroa.0.0.i.i.i.i, ptr %i.x, align 1, !dbg !68030, !noalias !67995
  %i.y = add i64 %.val15.i, 1, !dbg !68031        ; 2 uses
  %i.z = add nuw i64 %.sroa.01.0.i, 1, !dbg !68032 ; 2 uses
  %i.aa = icmp eq i64 %i.z, %i.d, !dbg !68033
  br i1 %i.aa, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldhuNCINvNtB1K_3map8map_foldhhuNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops5round11RoundSeries14round_sig_figss4_0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5q_3VechE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.c, !dbg !68033

bb.f:                                             ; preds = %.noexc.i, %bb.d
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !dbg !68034, !noalias !67991
  resume { ptr, i32 } %i.ab, !dbg !68035

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldhuNCINvNtB1K_3map8map_foldhhuNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops5round11RoundSeries14round_sig_figss4_0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5q_3VechE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.e, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.y, %bb.e ], !dbg !68036
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !68036, !noalias !67991
  ret void, !dbg !68037
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldhhuQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9UInt8TypeNtB3M_10UInt32TypeE0NCINvNvB1v_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5s_3VechE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2J_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #12 personality ptr @rust_eh_personality !dbg !68038 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !68094 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !68094
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !68094 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !68095
  %i.a = icmp eq ptr %0, %1, !dbg !68096
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldhuNCINvNtB1K_3map8map_foldhhuQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9UInt8TypeNtB3V_10UInt32TypeE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5A_3VechE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit, label %bb.b, !dbg !68097

bb.b:                                             ; preds = %bb.a
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !68094
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !68094
  %i.b = ptrtoint ptr %1 to i64, !dbg !68098
  %i.c = ptrtoint ptr %0 to i64, !dbg !68098
  %i.d = sub i64 %i.b, %i.c, !dbg !68098          ; 2 uses
  %scevgep.i = getelementptr nuw i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload, !dbg !68099
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i, i8 1, i64 %i.d, i1 false), !dbg !68100, !noalias !68086
  %i.e = add i64 %i.d, %.sroa.5.0.copyload, !dbg !68099
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldhuNCINvNtB1K_3map8map_foldhhuQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9UInt8TypeNtB3V_10UInt32TypeE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5A_3VechE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit, !dbg !68087

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldhuNCINvNtB1K_3map8map_foldhhuQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9UInt8TypeNtB3V_10UInt32TypeE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5A_3VechE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit: ; preds = %bb.a, %bb.b
  %storemerge = phi i64 [ %i.e, %bb.b ], [ %.sroa.5.0.copyload, %bb.a ], !dbg !68101
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !68101, !noalias !68093
  ret void, !dbg !68102
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i32 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterlEENtNtNtB9_6traits8iterator8Iterator4foldlNvYlNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) unnamed_addr #10 personality ptr @rust_eh_personality !dbg !68103 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !68137
  %i.a = icmp eq ptr %0, %1, !dbg !68138
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldlNCINvNtNtBY_8adapters6copied9copy_foldllNvYlNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !68139

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !68140
  %i.c = ptrtoint ptr %0 to i64, !dbg !68140
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !68140      ; 2 uses
  %i.e = lshr exact i64 %i.d, 2, !dbg !68140      ; 3 uses
  %min.iters.check = icmp ult i64 %i.d, 32, !dbg !68141
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !68141

vector.ph:                                        ; preds = %bb.b
end_hunk_1
begin_hunk_2_@_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IteroEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldoouNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops5round11RoundSeries14round_sig_figss8_0NCINvNvB1v_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5i_3VecoE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0ECskY9G75ZWc4U_11polars_expr
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IteroEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldoouNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops5round11RoundSeries14round_sig_figss8_0NCINvNvB1v_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5i_3VecoE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0ECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !71036 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !71138 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !71138
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !71138 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !71138
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !71138
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !71138
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !71138
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !71139
  %i.a = icmp eq ptr %0, %1, !dbg !71140
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldouNCINvNtB1K_3map8map_foldoouNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops5round11RoundSeries14round_sig_figss8_0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5q_3VecoE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !71141

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !71142
  %i.c = ptrtoint ptr %0 to i64, !dbg !71142
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !71142
  %i.e = lshr exact i64 %i.d, 4, !dbg !71142
  br label %bb.c, !dbg !71143

bb.c:                                             ; preds = %bb.e, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.z, %bb.e ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.aa, %bb.e ], !dbg !71144 ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !71145
  %.val16.i = load i128, ptr %i.f, align 16, !dbg !71146, !noalias !71127, !noundef !2226 ; 2 uses
  %i.g = uitofp i128 %.val16.i to double, !dbg !71147 ; 4 uses
  %i.h = icmp eq i128 %.val16.i, 0, !dbg !71148
  br i1 %i.h, label %bb.e, label %bb.d, !dbg !71148

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %.sroa.9.0.copyload, align 4, !dbg !71149, !noalias !71129, !noundef !2226
  %i.j = tail call double @llvm.log10.f64(double %i.g), !dbg !71150
  %i.k = tail call double @llvm.floor.f64(double %i.j), !dbg !71151
  %i.l = tail call i32 @llvm.fptosi.sat.i32.f64(double %i.k), !dbg !71152
  %i.m = xor i32 %i.l, -1, !dbg !71149
  %i.n = add i32 %i.i, %i.m, !dbg !71149          ; 3 uses
  %i.o = invoke noundef double @_RNvNtNtCslLP515EPe0c_4libm4math6scalbn6scalbn(double noundef %i.g, i32 noundef %i.n)
          to label %.noexc.i unwind label %bb.f, !dbg !71153, !noalias !71127

.noexc.i:                                         ; preds = %bb.d
  %i.p = tail call double @llvm.powi.f64.i32(double 5.000000e+00, i32 %i.n), !dbg !71154 ; 2 uses
  %i.q = fmul double %i.o, %i.p, !dbg !71153
  %i.r = tail call double @llvm.round.f64(double %i.q), !dbg !71155
  %i.s = fdiv double %i.r, %i.p, !dbg !71156
  %i.t = sub i32 0, %i.n, !dbg !71157
  %i.u = invoke noundef double @_RNvNtNtCslLP515EPe0c_4libm4math6scalbn6scalbn(double noundef %i.s, i32 noundef %i.t)
          to label %.noexc17.i unwind label %bb.f, !dbg !71158, !noalias !71127 ; 2 uses

.noexc17.i:                                       ; preds = %.noexc.i
  %i.v = tail call double @llvm.fabs.f64(double %i.u), !dbg !71159
  %i.w = fcmp ueq double %i.v, +inf, !dbg !71160
  %.sroa.01.0.i.i.i.i = select i1 %i.w, double %i.g, double %i.u, !dbg !71161
  br label %bb.e, !dbg !71162

bb.e:                                             ; preds = %.noexc17.i, %bb.c
  %.sroa.01.0.sink.i.i.i.i = phi double [ %.sroa.01.0.i.i.i.i, %.noexc17.i ], [ %i.g, %bb.c ]
  %i.x = tail call noundef i128 @llvm.fptoui.sat.i128.f64(double %.sroa.01.0.sink.i.i.i.i), !dbg !71163
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i, !dbg !71164
  store i128 %i.x, ptr %i.y, align 16, !dbg !71165, !noalias !71131
  %i.z = add i64 %.val15.i, 1, !dbg !71166        ; 2 uses
  %i.aa = add nuw i64 %.sroa.01.0.i, 1, !dbg !71167 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, %i.e, !dbg !71168
  br i1 %i.ab, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldouNCINvNtB1K_3map8map_foldoouNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops5round11RoundSeries14round_sig_figss8_0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5q_3VecoE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.c, !dbg !71168

bb.f:                                             ; preds = %.noexc.i, %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !dbg !71169, !noalias !71127
  resume { ptr, i32 } %i.ac, !dbg !71170

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldouNCINvNtB1K_3map8map_foldoouNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops5round11RoundSeries14round_sig_figss8_0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5q_3VecoE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.e, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.z, %bb.e ], !dbg !71171
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !71171, !noalias !71127
  ret void, !dbg !71172
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IteroEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldoouQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeNtB3M_10UInt32TypeE0NCINvNvB1v_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5v_3VecoE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2J_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !71173 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !71234 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !71234
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !71234 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !71234
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !71234 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !71235
  %i.a = icmp eq ptr %0, %1, !dbg !71236
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldouNCINvNtB1K_3map8map_foldoouQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeNtB3V_10UInt32TypeE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5D_3VecoE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit, label %bb.b, !dbg !71237

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !71238
  %i.c = ptrtoint ptr %0 to i64, !dbg !71238
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !71238      ; 2 uses
  %i.e = lshr exact i64 %i.d, 4, !dbg !71238      ; 2 uses
  %xtraiter = and i64 %i.e, 3, !dbg !71239        ; 3 uses
  %i.f = icmp ult i64 %i.d, 64, !dbg !71239
  br i1 %i.f, label %.epil.preheader, label %.new, !dbg !71239

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 1152921504606846972, !dbg !71239
  br label %bb.c, !dbg !71239

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.o, %bb.c ], !dbg !71240 ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.c ]
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !71241
  store i128 1, ptr %i.h, align 16, !dbg !71242, !noalias !71226
  %i.i = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !71241
  %i.j = getelementptr i8, ptr %i.i, i64 16, !dbg !71241
  store i128 1, ptr %i.j, align 16, !dbg !71242, !noalias !71226
  %i.k = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !71241
  %i.l = getelementptr i8, ptr %i.k, i64 32, !dbg !71241
  store i128 1, ptr %i.l, align 16, !dbg !71242, !noalias !71226
  %i.m = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !71241
  %i.n = getelementptr i8, ptr %i.m, i64 48, !dbg !71241
  store i128 1, ptr %i.n, align 16, !dbg !71242, !noalias !71226
  %i.o = add i64 %i.g, 4, !dbg !71243             ; 3 uses
  %niter.next.3 = add i64 %niter, 4, !dbg !71244  ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !71244
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldouNCINvNtB1K_3map8map_foldoouQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeNtB3V_10UInt32TypeE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5D_3VecoE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit.loopexit.unr-lcssa, label %bb.c, !dbg !71244

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldouNCINvNtB1K_3map8map_foldoouQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeNtB3V_10UInt32TypeE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5D_3VecoE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !71244
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldouNCINvNtB1K_3map8map_foldoouQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeNtB3V_10UInt32TypeE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5D_3VecoE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit, label %.epil.preheader, !dbg !71244

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldouNCINvNtB1K_3map8map_foldoouQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeNtB3V_10UInt32TypeE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5D_3VecoE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.o, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldouNCINvNtB1K_3map8map_foldoouQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeNtB3V_10UInt32TypeE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5D_3VecoE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0, !dbg !71244
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !71244
  br label %bb.d, !dbg !71244

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %i.p = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.r, %bb.d ], !dbg !71240 ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.p, !dbg !71241
  store i128 1, ptr %i.q, align 16, !dbg !71242, !noalias !71226
  %i.r = add i64 %i.p, 1, !dbg !71243             ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !71244 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !71244
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldouNCINvNtB1K_3map8map_foldoouQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeNtB3V_10UInt32TypeE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5D_3VecoE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit, label %bb.d, !dbg !71244, !llvm.loop !71220

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldouNCINvNtB1K_3map8map_foldoouQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeNtB3V_10UInt32TypeE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5D_3VecoE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit: ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldouNCINvNtB1K_3map8map_foldoouQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeNtB3V_10UInt32TypeE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5D_3VecoE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit.loopexit.unr-lcssa, %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.o, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldouNCINvNtB1K_3map8map_foldoouQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeNtB3V_10UInt32TypeE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5D_3VecoE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit.loopexit.unr-lcssa ], [ %i.r, %bb.d ], !dbg !71245
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !71245, !noalias !71233
  ret void, !dbg !71246
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i16 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItersEENtNtNtB9_6traits8iterator8Iterator4foldsNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, i16 noundef %2) unnamed_addr #10 personality ptr @rust_eh_personality !dbg !71247 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !71282
  %i.a = icmp eq ptr %0, %1, !dbg !71283
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldsNCINvNtNtBY_8adapters6copied9copy_foldssNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %iter.check, !dbg !71284

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !71285
  %i.c = ptrtoint ptr %0 to i64, !dbg !71285
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !71285      ; 4 uses
  %i.e = lshr exact i64 %i.d, 1, !dbg !71285      ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 8, !dbg !71286
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !71286

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2 = icmp ult i64 %i.d, 32, !dbg !71286
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph, !dbg !71286

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.e, 9223372036854775792      ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %2, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !71286

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !71287 ; 2 uses
  %vec.phi = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.h, %vector.body ]
  %vec.phi3 = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.i, %vector.body ]
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !71288 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !71289
  %wide.load = load <8 x i16>, ptr %i.f, align 2, !dbg !71289
  %wide.load4 = load <8 x i16>, ptr %i.g, align 2, !dbg !71289
  %i.h = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %vec.phi, <8 x i16> %wide.load), !dbg !71290 ; 2 uses
  %i.i = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %vec.phi3, <8 x i16> %wide.load4), !dbg !71290 ; 2 uses
  %index.next = add nuw i64 %index, 16, !dbg !71287 ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec, !dbg !71291
  br i1 %i.j, label %middle.block, label %vector.body, !dbg !71291, !llvm.loop !71277

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.h, <8 x i16> %i.i), !dbg !71291
  %i.k = tail call i16 @llvm.vector.reduce.smax.v8i16(<8 x i16> %rdx.minmax), !dbg !71291 ; 3 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !71291
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldsNCINvNtNtBY_8adapters6copied9copy_foldssNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.iter.check, !dbg !71291

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.l = and i64 %i.d, 24
  %min.epilog.iters.check = icmp eq i64 %i.l, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !2857

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !71287
  %bc.merge.rdx = phi i16 [ %i.k, %vec.epilog.iter.check ], [ %2, %vector.main.loop.iter.check ], !dbg !71292
  %n.vec5 = and i64 %i.e, 9223372036854775804     ; 3 uses
  %broadcast.splatinsert6 = insertelement <4 x i16> poison, i16 %bc.merge.rdx, i64 0
  %broadcast.splat7 = shufflevector <4 x i16> %broadcast.splatinsert6, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index8 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next11, %vec.epilog.vector.body ], !dbg !71287 ; 2 uses
  %vec.phi9 = phi <4 x i16> [ %broadcast.splat7, %vec.epilog.ph ], [ %i.n, %vec.epilog.vector.body ]
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index8, !dbg !71288
  %wide.load10 = load <4 x i16>, ptr %i.m, align 2, !dbg !71289
  %i.n = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %vec.phi9, <4 x i16> %wide.load10), !dbg !71290 ; 2 uses
  %index.next11 = add nuw i64 %index8, 4, !dbg !71287 ; 2 uses
  %i.o = icmp eq i64 %index.next11, %n.vec5, !dbg !71291
  br i1 %i.o, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !71291, !llvm.loop !71278

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.p = tail call i16 @llvm.vector.reduce.smax.v4i16(<4 x i16> %i.n), !dbg !71291 ; 2 uses
  %cmp.n12 = icmp eq i64 %i.e, %n.vec5, !dbg !71291
  br i1 %cmp.n12, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldsNCINvNtNtBY_8adapters6copied9copy_foldssNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.scalar.ph.preheader, !dbg !71291

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ]
  %.sroa.02.0.i.ph = phi i16 [ %2, %iter.check ], [ %i.k, %vec.epilog.iter.check ], [ %i.p, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !71291

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i = phi i64 [ %i.r, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !71287 ; 2 uses
  %.sroa.02.0.i = phi i16 [ %.sroa.0.0.i.i.i.i, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !71292
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !71288
  %.val.i = load i16, ptr %i.q, align 2, !dbg !71289, !noundef !2226
  %.sroa.0.0.i.i.i.i = tail call noundef i16 @llvm.smax.i16(i16 %.sroa.02.0.i, i16 %.val.i), !dbg !71290 ; 2 uses
  %i.r = add nuw i64 %.sroa.04.0.i, 1, !dbg !71293 ; 2 uses
  %i.s = icmp eq i64 %i.r, %i.e, !dbg !71291
  br i1 %i.s, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldsNCINvNtNtBY_8adapters6copied9copy_foldssNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.scalar.ph, !dbg !71291, !llvm.loop !71281

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldsNCINvNtNtBY_8adapters6copied9copy_foldssNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.sroa.0.0.i = phi i16 [ %2, %bb.a ], [ %i.p, %vec.epilog.middle.block ], [ %i.k, %middle.block ], [ %.sroa.0.0.i.i.i.i, %vec.epilog.scalar.ph ], !dbg !71292
  ret i16 %.sroa.0.0.i, !dbg !71294
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i16 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItersEENtNtNtB9_6traits8iterator8Iterator4foldsNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, i16 noundef %2) unnamed_addr #10 personality ptr @rust_eh_personality !dbg !71295 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !71330
  %i.a = icmp eq ptr %0, %1, !dbg !71331
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldsNCINvNtNtBY_8adapters6copied9copy_foldssNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %iter.check, !dbg !71332

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !71333
  %i.c = ptrtoint ptr %0 to i64, !dbg !71333
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !71333      ; 4 uses
  %i.e = lshr exact i64 %i.d, 1, !dbg !71333      ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 8, !dbg !71334
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !71334

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2 = icmp ult i64 %i.d, 32, !dbg !71334
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph, !dbg !71334

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.e, 9223372036854775792      ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %2, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !71334

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !71335 ; 2 uses
  %vec.phi = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.h, %vector.body ]
  %vec.phi3 = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.i, %vector.body ]
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !71336 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !71337
  %wide.load = load <8 x i16>, ptr %i.f, align 2, !dbg !71337
  %wide.load4 = load <8 x i16>, ptr %i.g, align 2, !dbg !71337
  %i.h = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %vec.phi, <8 x i16> %wide.load), !dbg !71338 ; 2 uses
  %i.i = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %vec.phi3, <8 x i16> %wide.load4), !dbg !71338 ; 2 uses
  %index.next = add nuw i64 %index, 16, !dbg !71335 ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec, !dbg !71339
  br i1 %i.j, label %middle.block, label %vector.body, !dbg !71339, !llvm.loop !71325

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.h, <8 x i16> %i.i), !dbg !71339
  %i.k = tail call i16 @llvm.vector.reduce.smin.v8i16(<8 x i16> %rdx.minmax), !dbg !71339 ; 3 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !71339
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldsNCINvNtNtBY_8adapters6copied9copy_foldssNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.iter.check, !dbg !71339

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.l = and i64 %i.d, 24
  %min.epilog.iters.check = icmp eq i64 %i.l, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !2857

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !71335
  %bc.merge.rdx = phi i16 [ %i.k, %vec.epilog.iter.check ], [ %2, %vector.main.loop.iter.check ], !dbg !71340
  %n.vec5 = and i64 %i.e, 9223372036854775804     ; 3 uses
  %broadcast.splatinsert6 = insertelement <4 x i16> poison, i16 %bc.merge.rdx, i64 0
  %broadcast.splat7 = shufflevector <4 x i16> %broadcast.splatinsert6, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index8 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next11, %vec.epilog.vector.body ], !dbg !71335 ; 2 uses
  %vec.phi9 = phi <4 x i16> [ %broadcast.splat7, %vec.epilog.ph ], [ %i.n, %vec.epilog.vector.body ]
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index8, !dbg !71336
  %wide.load10 = load <4 x i16>, ptr %i.m, align 2, !dbg !71337
  %i.n = tail call <4 x i16> @llvm.smin.v4i16(<4 x i16> %vec.phi9, <4 x i16> %wide.load10), !dbg !71338 ; 2 uses
  %index.next11 = add nuw i64 %index8, 4, !dbg !71335 ; 2 uses
  %i.o = icmp eq i64 %index.next11, %n.vec5, !dbg !71339
  br i1 %i.o, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !71339, !llvm.loop !71326

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.p = tail call i16 @llvm.vector.reduce.smin.v4i16(<4 x i16> %i.n), !dbg !71339 ; 2 uses
  %cmp.n12 = icmp eq i64 %i.e, %n.vec5, !dbg !71339
  br i1 %cmp.n12, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldsNCINvNtNtBY_8adapters6copied9copy_foldssNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.scalar.ph.preheader, !dbg !71339

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ]
  %.sroa.02.0.i.ph = phi i16 [ %2, %iter.check ], [ %i.k, %vec.epilog.iter.check ], [ %i.p, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !71339

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i = phi i64 [ %i.r, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !71335 ; 2 uses
  %.sroa.02.0.i = phi i16 [ %.sroa.0.0.i.i.i.i, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !71340
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !71336
  %.val.i = load i16, ptr %i.q, align 2, !dbg !71337, !noundef !2226
  %.sroa.0.0.i.i.i.i = tail call noundef i16 @llvm.smin.i16(i16 %.sroa.02.0.i, i16 %.val.i), !dbg !71338 ; 2 uses
  %i.r = add nuw i64 %.sroa.04.0.i, 1, !dbg !71341 ; 2 uses
  %i.s = icmp eq i64 %i.r, %i.e, !dbg !71339
  br i1 %i.s, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldsNCINvNtNtBY_8adapters6copied9copy_foldssNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.scalar.ph, !dbg !71339, !llvm.loop !71329

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldsNCINvNtNtBY_8adapters6copied9copy_foldssNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.sroa.0.0.i = phi i16 [ %2, %bb.a ], [ %i.p, %vec.epilog.middle.block ], [ %i.k, %middle.block ], [ %.sroa.0.0.i.i.i.i, %vec.epilog.scalar.ph ], !dbg !71340
  ret i16 %.sroa.0.0.i, !dbg !71342
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItersEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldssuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow17pow_to_uint_dtypeNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeNtB3H_10UInt32TypeE0NCINvNvB1v_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5n_3VecsE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2I_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #11 personality ptr @rust_eh_personality !dbg !71343 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !71412 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !71412
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !71412 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !71412
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !71412
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !71412
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !71412 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !71413
  %i.a = icmp eq ptr %0, %1, !dbg !71414
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldsuNCINvNtB1K_3map8map_foldssuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow17pow_to_uint_dtypeNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeNtB3Q_10UInt32TypeE0NCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5v_3VecsE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.b, !dbg !71415

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !71416
  %i.c = ptrtoint ptr %0 to i64, !dbg !71416
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !71416
  %i.e = lshr exact i64 %i.d, 1, !dbg !71416
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload) ]
  br label %bb.c, !dbg !71417

bb.c:                                             ; preds = %.loopexit.i, %bb.b
  %i.f = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.p, %.loopexit.i ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.q, %.loopexit.i ], !dbg !71418 ; 2 uses
  %i.g = load i32, ptr %.sroa.8.0.copyload, align 4, !dbg !71419, !noalias !71403, !noundef !2226 ; 2 uses
  %i.h = icmp eq i32 %i.g, 0, !dbg !71420
  br i1 %i.h, label %.loopexit.i, label %bb.d, !dbg !71420

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !71421
  %.val16.i = load i16, ptr %i.i, align 2, !dbg !71422, !noalias !71404, !noundef !2226
  br label %.preheader21.i.i.i.i.i.i, !dbg !71423

.preheader21.i.i.i.i.i.i:                         ; preds = %bb.d, %bb.f
  %.sroa.015.1.i.i.i.i.i.i = phi i16 [ %.sroa.015.2.i.i.i.i.i.i, %bb.f ], [ 1, %bb.d ], !dbg !71424 ; 2 uses
  %.sroa.07.0.i.i.i.i.i.i = phi i32 [ %i.m, %bb.f ], [ %i.g, %bb.d ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i.i = phi i16 [ %i.n, %bb.f ], [ %.val16.i, %bb.d ] ; 3 uses
  %i.j = and i32 %.sroa.07.0.i.i.i.i.i.i, 1, !dbg !71425
  %.not.i.i.i.i.i.i = icmp eq i32 %i.j, 0, !dbg !71425
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e, !dbg !71425

bb.e:                                             ; preds = %.preheader21.i.i.i.i.i.i
  %i.k = mul i16 %.sroa.0.0.i.i.i.i.i.i, %.sroa.015.1.i.i.i.i.i.i, !dbg !71426 ; 2 uses
  %i.l = icmp eq i32 %.sroa.07.0.i.i.i.i.i.i, 1, !dbg !71427
  br i1 %i.l, label %.loopexit.i, label %bb.f, !dbg !71427

bb.f:                                             ; preds = %bb.e, %.preheader21.i.i.i.i.i.i
  %.sroa.015.2.i.i.i.i.i.i = phi i16 [ %i.k, %bb.e ], [ %.sroa.015.1.i.i.i.i.i.i, %.preheader21.i.i.i.i.i.i ], !dbg !71424
  %i.m = lshr i32 %.sroa.07.0.i.i.i.i.i.i, 1, !dbg !71428
  %i.n = mul i16 %.sroa.0.0.i.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i.i, !dbg !71429
  br label %.preheader21.i.i.i.i.i.i, !dbg !71430

.loopexit.i:                                      ; preds = %bb.e, %bb.c
  %.sroa.015.0.i.i.i.i.i.i = phi i16 [ 1, %bb.c ], [ %i.k, %bb.e ], !dbg !71431
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.f, !dbg !71432
  store i16 %.sroa.015.0.i.i.i.i.i.i, ptr %i.o, align 2, !dbg !71433, !noalias !71405
  %i.p = add i64 %i.f, 1, !dbg !71434             ; 2 uses
  %i.q = add nuw i64 %.sroa.01.0.i, 1, !dbg !71435 ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.e, !dbg !71436
  br i1 %i.r, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldsuNCINvNtB1K_3map8map_foldssuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow17pow_to_uint_dtypeNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeNtB3Q_10UInt32TypeE0NCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5v_3VecsE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.c, !dbg !71436

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldsuNCINvNtB1K_3map8map_foldssuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow17pow_to_uint_dtypeNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeNtB3Q_10UInt32TypeE0NCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5v_3VecsE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit: ; preds = %.loopexit.i, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.p, %.loopexit.i ], !dbg !71437
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !71437, !noalias !71404
  ret void, !dbg !71438
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItersEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldssuNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeE0NCINvNvB1v_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB54_3VecsE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2K_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !71439 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !71508 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !71508
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !71508 ; 8 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !71508
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !71508 ; 6 uses
  %.sroa.7.0.copyload3 = ptrtoaddr ptr %.sroa.7.0.copyload to i64, !dbg !71509
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !71509
  %i.a = icmp eq ptr %0, %1, !dbg !71510
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldsuNCINvNtB1K_3map8map_foldssuNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeE0NCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecsE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit, label %iter.check, !dbg !71511

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !71512
  %i.c = ptrtoint ptr %0 to i64, !dbg !71512      ; 2 uses
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !71512      ; 5 uses
  %i.e = lshr i64 %i.d, 1, !dbg !71512            ; 6 uses
  %min.iters.check = icmp ult i64 %i.d, 8, !dbg !71513
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck, !dbg !71513

vector.memcheck:                                  ; preds = %iter.check
  %i.f = shl i64 %.sroa.5.0.copyload, 1, !dbg !71513
  %i.g = add i64 %i.f, %.sroa.7.0.copyload3, !dbg !71513
  %i.h = sub i64 %i.c, %i.g, !dbg !71513
  %diff.check = icmp ugt i64 %i.h, -32, !dbg !71513
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !71514

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check4 = icmp ult i64 %i.d, 32, !dbg !71513
  br i1 %min.iters.check4, label %vec.epilog.ph, label %vector.ph, !dbg !71513

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.e, 9223372036854775792      ; 5 uses
  %i.i = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.j = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !71513

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !71514 ; 3 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !71515 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !71516
  %wide.load = load <8 x i16>, ptr %i.k, align 2, !dbg !71516, !noalias !71500
  %wide.load5 = load <8 x i16>, ptr %i.l, align 2, !dbg !71516, !noalias !71500
  %i.m = tail call <8 x i16> @llvm.scmp.v8i16.v8i16(<8 x i16> %wide.load, <8 x i16> zeroinitializer), !dbg !71517
  %i.n = tail call <8 x i16> @llvm.scmp.v8i16.v8i16(<8 x i16> %wide.load5, <8 x i16> zeroinitializer), !dbg !71517
  %i.o = getelementptr [2 x i8], ptr %i.j, i64 %index, !dbg !71518 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !71519
  store <8 x i16> %i.m, ptr %i.o, align 2, !dbg !71519, !noalias !71501
  store <8 x i16> %i.n, ptr %i.p, align 2, !dbg !71519, !noalias !71501
  %index.next = add nuw i64 %index, 16, !dbg !71514 ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec, !dbg !71520
  br i1 %i.q, label %middle.block, label %vector.body, !dbg !71520, !llvm.loop !71488

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !71520
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldsuNCINvNtB1K_3map8map_foldssuNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeE0NCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecsE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit, label %vec.epilog.iter.check, !dbg !71520

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.r = and i64 %i.d, 24
  %min.epilog.iters.check = icmp eq i64 %i.r, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !2857

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !71514
  %n.vec6 = and i64 %i.e, 9223372036854775804     ; 4 uses
  %i.s = add i64 %.sroa.5.0.copyload, %n.vec6     ; 2 uses
  %i.t = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index7 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next9, %vec.epilog.vector.body ], !dbg !71514 ; 3 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index7, !dbg !71515
  %wide.load8 = load <4 x i16>, ptr %i.u, align 2, !dbg !71516, !noalias !71500
  %i.v = tail call <4 x i16> @llvm.scmp.v4i16.v4i16(<4 x i16> %wide.load8, <4 x i16> zeroinitializer), !dbg !71517
  %i.w = getelementptr [2 x i8], ptr %i.t, i64 %index7, !dbg !71518
  store <4 x i16> %i.v, ptr %i.w, align 2, !dbg !71519, !noalias !71501
  %index.next9 = add nuw i64 %index7, 4, !dbg !71514 ; 2 uses
  %i.x = icmp eq i64 %index.next9, %n.vec6, !dbg !71520
  br i1 %i.x, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !71520, !llvm.loop !71489

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n10 = icmp eq i64 %i.e, %n.vec6, !dbg !71520
  br i1 %cmp.n10, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldsuNCINvNtB1K_3map8map_foldssuNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeE0NCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecsE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit, label %vec.epilog.scalar.ph.preheader, !dbg !71520

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %.sroa.5.0.copyload, %vector.memcheck ], [ %i.i, %vec.epilog.iter.check ], [ %i.s, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec6, %vec.epilog.middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.ph, 1, !dbg !71520
  %i.y = and i64 %i.d, 2, !dbg !71520
  %lcmp.mod.not = icmp eq i64 %i.y, 0, !dbg !71520
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !71520

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i.ph, !dbg !71515
  %.val16.i.prol = load i16, ptr %i.z, align 2, !dbg !71516, !noalias !71500, !noundef !2226
  %.sroa.0.0.i.i.i.i.prol = tail call noundef range(i16 -1, 2) i16 @llvm.scmp.i16.i16(i16 %.val16.i.prol, i16 0), !dbg !71517
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %.ph, !dbg !71518
  store i16 %.sroa.0.0.i.i.i.i.prol, ptr %i.aa, align 2, !dbg !71519, !noalias !71501
  %i.ab = add i64 %.ph, 1, !dbg !71521            ; 2 uses
  %i.ac = or disjoint i64 %.sroa.01.0.i.ph, 1, !dbg !71522
  br label %vec.epilog.scalar.ph.prol.loopexit, !dbg !71520

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.ab, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ab, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ac, %vec.epilog.scalar.ph.prol ]
  %i.ad = icmp eq i64 %i.e, %.neg, !dbg !71520
  br i1 %i.ad, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldsuNCINvNtB1K_3map8map_foldssuNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeE0NCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecsE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit, label %vec.epilog.scalar.ph, !dbg !71520

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.ae = phi i64 [ %i.al, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !71515 ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.am, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !71514 ; 3 uses
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !71515
  %.val16.i = load i16, ptr %i.af, align 2, !dbg !71516, !noalias !71500, !noundef !2226
  %.sroa.0.0.i.i.i.i = tail call noundef range(i16 -1, 2) i16 @llvm.scmp.i16.i16(i16 %.val16.i, i16 0), !dbg !71517
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !71518
  store i16 %.sroa.0.0.i.i.i.i, ptr %i.ag, align 2, !dbg !71519, !noalias !71501
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !71515
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 2, !dbg !71515
  %.val16.i.1 = load i16, ptr %i.ai, align 2, !dbg !71516, !noalias !71500, !noundef !2226
  %.sroa.0.0.i.i.i.i.1 = tail call noundef range(i16 -1, 2) i16 @llvm.scmp.i16.i16(i16 %.val16.i.1, i16 0), !dbg !71517
  %i.aj = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !71518
  %i.ak = getelementptr i8, ptr %i.aj, i64 2, !dbg !71518
  store i16 %.sroa.0.0.i.i.i.i.1, ptr %i.ak, align 2, !dbg !71519, !noalias !71501
  %i.al = add i64 %i.ae, 2, !dbg !71521           ; 2 uses
  %i.am = add nuw i64 %.sroa.01.0.i, 2, !dbg !71522 ; 2 uses
  %i.an = icmp eq i64 %i.am, %i.e, !dbg !71520
  br i1 %i.an, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldsuNCINvNtB1K_3map8map_foldssuNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeE0NCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecsE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit, label %vec.epilog.scalar.ph, !dbg !71520, !llvm.loop !71494

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldsuNCINvNtB1K_3map8map_foldssuNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeE0NCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecsE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.s, %vec.epilog.middle.block ], [ %i.i, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.al, %vec.epilog.scalar.ph ], !dbg !71523
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !71523, !noalias !71500
  ret void, !dbg !71524
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItersEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldssuNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops5round11RoundSeries14round_sig_figss0_0NCINvNvB1v_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5i_3VecsE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0ECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !71525 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !71629 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !71629
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !71629 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !71629
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !71629
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !71629
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !71629
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !71630
  %i.a = icmp eq ptr %0, %1, !dbg !71631
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldsuNCINvNtB1K_3map8map_foldssuNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops5round11RoundSeries14round_sig_figss0_0NCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5q_3VecsE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !71632

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !71633
  %i.c = ptrtoint ptr %0 to i64, !dbg !71633
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !71633
  %i.e = lshr exact i64 %i.d, 1, !dbg !71633
  br label %bb.c, !dbg !71634

bb.c:                                             ; preds = %bb.e, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.aa, %bb.e ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.ab, %bb.e ], !dbg !71635 ; 2 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !71636
  %.val16.i = load i16, ptr %i.f, align 2, !dbg !71637, !noalias !71618, !noundef !2226 ; 2 uses
  %i.g = icmp eq i16 %.val16.i, 0, !dbg !71638
  br i1 %i.g, label %bb.e, label %bb.d, !dbg !71638

bb.d:                                             ; preds = %bb.c
  %i.h = sitofp i16 %.val16.i to double, !dbg !71639 ; 3 uses
  %i.i = load i32, ptr %.sroa.9.0.copyload, align 4, !dbg !71640, !noalias !71620, !noundef !2226
  %i.j = tail call double @llvm.fabs.f64(double %i.h), !dbg !71641
  %i.k = tail call double @llvm.log10.f64(double %i.j), !dbg !71642
  %i.l = tail call double @llvm.floor.f64(double %i.k), !dbg !71643
  %i.m = tail call i32 @llvm.fptosi.sat.i32.f64(double %i.l), !dbg !71644
  %i.n = xor i32 %i.m, -1, !dbg !71640
  %i.o = add i32 %i.i, %i.n, !dbg !71640          ; 3 uses
  %i.p = invoke noundef double @_RNvNtNtCslLP515EPe0c_4libm4math6scalbn6scalbn(double noundef %i.h, i32 noundef %i.o)
          to label %.noexc.i unwind label %bb.f, !dbg !71645, !noalias !71618

.noexc.i:                                         ; preds = %bb.d
  %i.q = tail call double @llvm.powi.f64.i32(double 5.000000e+00, i32 %i.o), !dbg !71646 ; 2 uses
  %i.r = fmul double %i.p, %i.q, !dbg !71645
  %i.s = tail call double @llvm.round.f64(double %i.r), !dbg !71647
  %i.t = fdiv double %i.s, %i.q, !dbg !71648
  %i.u = sub i32 0, %i.o, !dbg !71649
  %i.v = invoke noundef double @_RNvNtNtCslLP515EPe0c_4libm4math6scalbn6scalbn(double noundef %i.t, i32 noundef %i.u)
          to label %.noexc17.i unwind label %bb.f, !dbg !71650, !noalias !71618 ; 2 uses

.noexc17.i:                                       ; preds = %.noexc.i
  %i.w = tail call double @llvm.fabs.f64(double %i.v), !dbg !71651
  %i.x = fcmp ueq double %i.w, +inf, !dbg !71652
  %.sroa.01.0.i.i.i.i = select i1 %i.x, double %i.h, double %i.v, !dbg !71653
  %i.y = tail call i16 @llvm.fptosi.sat.i16.f64(double %.sroa.01.0.i.i.i.i), !dbg !71654
  br label %bb.e, !dbg !71655

bb.e:                                             ; preds = %.noexc17.i, %bb.c
  %.sroa.0.0.i.i.i.i = phi i16 [ %i.y, %.noexc17.i ], [ 0, %bb.c ], !dbg !71656
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i, !dbg !71657
  store i16 %.sroa.0.0.i.i.i.i, ptr %i.z, align 2, !dbg !71658, !noalias !71622
  %i.aa = add i64 %.val15.i, 1, !dbg !71659       ; 2 uses
  %i.ab = add nuw i64 %.sroa.01.0.i, 1, !dbg !71660 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, %i.e, !dbg !71661
  br i1 %i.ac, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldsuNCINvNtB1K_3map8map_foldssuNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops5round11RoundSeries14round_sig_figss0_0NCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5q_3VecsE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.c, !dbg !71661

bb.f:                                             ; preds = %.noexc.i, %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !dbg !71662, !noalias !71618
  resume { ptr, i32 } %i.ad, !dbg !71663

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldsuNCINvNtB1K_3map8map_foldssuNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops5round11RoundSeries14round_sig_figss0_0NCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5q_3VecsE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.e, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.aa, %bb.e ], !dbg !71664
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !71664, !noalias !71618
  ret void, !dbg !71665
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItersEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldssuQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeNtB3M_10UInt32TypeE0NCINvNvB1v_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5s_3VecsE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2J_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !71666 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !71731 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !71731
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !71731 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !71731
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !71731 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !71732
  %i.a = icmp eq ptr %0, %1, !dbg !71733
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldsuNCINvNtB1K_3map8map_foldssuQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeNtB3V_10UInt32TypeE0NCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5A_3VecsE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit, label %iter.check, !dbg !71734

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !71735
  %i.c = ptrtoint ptr %0 to i64, !dbg !71735
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !71735      ; 4 uses
  %i.e = lshr exact i64 %i.d, 1, !dbg !71735      ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 8, !dbg !71736
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !71736

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2 = icmp ult i64 %i.d, 32, !dbg !71736
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph, !dbg !71736

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.e, 9223372036854775792      ; 5 uses
  %i.f = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.g = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !71736

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !71737 ; 2 uses
  %i.h = getelementptr [2 x i8], ptr %i.g, i64 %index, !dbg !71738 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !71739
  store <8 x i16> splat (i16 1), ptr %i.h, align 2, !dbg !71739, !noalias !71723
  store <8 x i16> splat (i16 1), ptr %i.i, align 2, !dbg !71739, !noalias !71723
  %index.next = add nuw i64 %index, 16, !dbg !71737 ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec, !dbg !71740
  br i1 %i.j, label %middle.block, label %vector.body, !dbg !71740, !llvm.loop !71711

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !71740
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldsuNCINvNtB1K_3map8map_foldssuQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeNtB3V_10UInt32TypeE0NCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5A_3VecsE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit, label %vec.epilog.iter.check, !dbg !71740

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.k = and i64 %i.d, 24
  %min.epilog.iters.check = icmp eq i64 %i.k, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !2857

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !71737
  %n.vec3 = and i64 %i.e, 9223372036854775804     ; 4 uses
  %i.l = add i64 %.sroa.5.0.copyload, %n.vec3     ; 2 uses
  %i.m = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index4 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next5, %vec.epilog.vector.body ], !dbg !71737 ; 2 uses
  %i.n = getelementptr [2 x i8], ptr %i.m, i64 %index4, !dbg !71738
  store <4 x i16> splat (i16 1), ptr %i.n, align 2, !dbg !71739, !noalias !71723
  %index.next5 = add nuw i64 %index4, 4, !dbg !71737 ; 2 uses
  %i.o = icmp eq i64 %index.next5, %n.vec3, !dbg !71740
  br i1 %i.o, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !71740, !llvm.loop !71712

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n6 = icmp eq i64 %i.e, %n.vec3, !dbg !71740
  br i1 %cmp.n6, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldsuNCINvNtB1K_3map8map_foldssuQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeNtB3V_10UInt32TypeE0NCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5A_3VecsE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit, label %vec.epilog.scalar.ph.preheader, !dbg !71740

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %i.f, %vec.epilog.iter.check ], [ %i.l, %vec.epilog.middle.block ]
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec3, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !71740

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %i.p = phi i64 [ %i.r, %vec.epilog.scalar.ph ], [ %.ph, %vec.epilog.scalar.ph.preheader ], !dbg !71741 ; 2 uses
  %.sroa.01.0.i = phi i64 [ %i.s, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !71737
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.p, !dbg !71738
  store i16 1, ptr %i.q, align 2, !dbg !71739, !noalias !71723
  %i.r = add i64 %i.p, 1, !dbg !71742             ; 2 uses
  %i.s = add nuw i64 %.sroa.01.0.i, 1, !dbg !71743 ; 2 uses
  %i.t = icmp eq i64 %i.s, %i.e, !dbg !71740
  br i1 %i.t, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldsuNCINvNtB1K_3map8map_foldssuQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeNtB3V_10UInt32TypeE0NCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5A_3VecsE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit, label %vec.epilog.scalar.ph, !dbg !71740, !llvm.loop !71717

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldsuNCINvNtB1K_3map8map_foldssuQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeNtB3V_10UInt32TypeE0NCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5A_3VecsE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.l, %vec.epilog.middle.block ], [ %i.f, %middle.block ], [ %i.r, %vec.epilog.scalar.ph ], !dbg !71744
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !71744, !noalias !71730
  ret void, !dbg !71745
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i16 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItertEENtNtNtB9_6traits8iterator8Iterator4foldtNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, i16 noundef %2) unnamed_addr #10 personality ptr @rust_eh_personality !dbg !71746 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !71781
  %i.a = icmp eq ptr %0, %1, !dbg !71782
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtBY_8adapters6copied9copy_foldttNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %iter.check, !dbg !71783

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !71784
  %i.c = ptrtoint ptr %0 to i64, !dbg !71784
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !71784      ; 4 uses
  %i.e = lshr exact i64 %i.d, 1, !dbg !71784      ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 8, !dbg !71785
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !71785

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2 = icmp ult i64 %i.d, 32, !dbg !71785
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph, !dbg !71785

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.e, 9223372036854775792      ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %2, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !71785

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !71786 ; 2 uses
  %vec.phi = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.h, %vector.body ]
  %vec.phi3 = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.i, %vector.body ]
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !71787 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !71788
  %wide.load = load <8 x i16>, ptr %i.f, align 2, !dbg !71788
  %wide.load4 = load <8 x i16>, ptr %i.g, align 2, !dbg !71788
  %i.h = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %vec.phi, <8 x i16> %wide.load), !dbg !71789 ; 2 uses
  %i.i = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %vec.phi3, <8 x i16> %wide.load4), !dbg !71789 ; 2 uses
  %index.next = add nuw i64 %index, 16, !dbg !71786 ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec, !dbg !71790
  br i1 %i.j, label %middle.block, label %vector.body, !dbg !71790, !llvm.loop !71776

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.h, <8 x i16> %i.i), !dbg !71790
  %i.k = tail call i16 @llvm.vector.reduce.umax.v8i16(<8 x i16> %rdx.minmax), !dbg !71790 ; 3 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !71790
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtBY_8adapters6copied9copy_foldttNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.iter.check, !dbg !71790

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.l = and i64 %i.d, 24
  %min.epilog.iters.check = icmp eq i64 %i.l, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !2857

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !71786
  %bc.merge.rdx = phi i16 [ %i.k, %vec.epilog.iter.check ], [ %2, %vector.main.loop.iter.check ], !dbg !71791
  %n.vec5 = and i64 %i.e, 9223372036854775804     ; 3 uses
  %broadcast.splatinsert6 = insertelement <4 x i16> poison, i16 %bc.merge.rdx, i64 0
  %broadcast.splat7 = shufflevector <4 x i16> %broadcast.splatinsert6, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index8 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next11, %vec.epilog.vector.body ], !dbg !71786 ; 2 uses
  %vec.phi9 = phi <4 x i16> [ %broadcast.splat7, %vec.epilog.ph ], [ %i.n, %vec.epilog.vector.body ]
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index8, !dbg !71787
  %wide.load10 = load <4 x i16>, ptr %i.m, align 2, !dbg !71788
  %i.n = tail call <4 x i16> @llvm.umax.v4i16(<4 x i16> %vec.phi9, <4 x i16> %wide.load10), !dbg !71789 ; 2 uses
  %index.next11 = add nuw i64 %index8, 4, !dbg !71786 ; 2 uses
  %i.o = icmp eq i64 %index.next11, %n.vec5, !dbg !71790
  br i1 %i.o, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !71790, !llvm.loop !71777

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.p = tail call i16 @llvm.vector.reduce.umax.v4i16(<4 x i16> %i.n), !dbg !71790 ; 2 uses
  %cmp.n12 = icmp eq i64 %i.e, %n.vec5, !dbg !71790
  br i1 %cmp.n12, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtBY_8adapters6copied9copy_foldttNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.scalar.ph.preheader, !dbg !71790

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ]
  %.sroa.02.0.i.ph = phi i16 [ %2, %iter.check ], [ %i.k, %vec.epilog.iter.check ], [ %i.p, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !71790

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i = phi i64 [ %i.r, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !71786 ; 2 uses
  %.sroa.02.0.i = phi i16 [ %.sroa.0.0.i.i.i.i, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !71791
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !71787
  %.val.i = load i16, ptr %i.q, align 2, !dbg !71788, !noundef !2226
  %.sroa.0.0.i.i.i.i = tail call noundef i16 @llvm.umax.i16(i16 %.sroa.02.0.i, i16 %.val.i), !dbg !71789 ; 2 uses
  %i.r = add nuw i64 %.sroa.04.0.i, 1, !dbg !71792 ; 2 uses
  %i.s = icmp eq i64 %i.r, %i.e, !dbg !71790
  br i1 %i.s, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtBY_8adapters6copied9copy_foldttNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.scalar.ph, !dbg !71790, !llvm.loop !71780

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtBY_8adapters6copied9copy_foldttNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.sroa.0.0.i = phi i16 [ %2, %bb.a ], [ %i.p, %vec.epilog.middle.block ], [ %i.k, %middle.block ], [ %.sroa.0.0.i.i.i.i, %vec.epilog.scalar.ph ], !dbg !71791
  ret i16 %.sroa.0.0.i, !dbg !71793
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i16 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItertEENtNtNtB9_6traits8iterator8Iterator4foldtNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, i16 noundef %2) unnamed_addr #10 personality ptr @rust_eh_personality !dbg !71794 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !71829
  %i.a = icmp eq ptr %0, %1, !dbg !71830
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtBY_8adapters6copied9copy_foldttNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %iter.check, !dbg !71831

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !71832
  %i.c = ptrtoint ptr %0 to i64, !dbg !71832
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !71832      ; 4 uses
  %i.e = lshr exact i64 %i.d, 1, !dbg !71832      ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 8, !dbg !71833
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !71833

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2 = icmp ult i64 %i.d, 32, !dbg !71833
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph, !dbg !71833

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.e, 9223372036854775792      ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %2, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !71833

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !71834 ; 2 uses
  %vec.phi = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.h, %vector.body ]
  %vec.phi3 = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.i, %vector.body ]
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !71835 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !71836
  %wide.load = load <8 x i16>, ptr %i.f, align 2, !dbg !71836
  %wide.load4 = load <8 x i16>, ptr %i.g, align 2, !dbg !71836
  %i.h = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %vec.phi, <8 x i16> %wide.load), !dbg !71837 ; 2 uses
  %i.i = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %vec.phi3, <8 x i16> %wide.load4), !dbg !71837 ; 2 uses
  %index.next = add nuw i64 %index, 16, !dbg !71834 ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec, !dbg !71838
  br i1 %i.j, label %middle.block, label %vector.body, !dbg !71838, !llvm.loop !71824

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.h, <8 x i16> %i.i), !dbg !71838
  %i.k = tail call i16 @llvm.vector.reduce.umin.v8i16(<8 x i16> %rdx.minmax), !dbg !71838 ; 3 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !71838
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtBY_8adapters6copied9copy_foldttNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.iter.check, !dbg !71838

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.l = and i64 %i.d, 24
  %min.epilog.iters.check = icmp eq i64 %i.l, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !2857

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !71834
  %bc.merge.rdx = phi i16 [ %i.k, %vec.epilog.iter.check ], [ %2, %vector.main.loop.iter.check ], !dbg !71839
  %n.vec5 = and i64 %i.e, 9223372036854775804     ; 3 uses
  %broadcast.splatinsert6 = insertelement <4 x i16> poison, i16 %bc.merge.rdx, i64 0
  %broadcast.splat7 = shufflevector <4 x i16> %broadcast.splatinsert6, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index8 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next11, %vec.epilog.vector.body ], !dbg !71834 ; 2 uses
  %vec.phi9 = phi <4 x i16> [ %broadcast.splat7, %vec.epilog.ph ], [ %i.n, %vec.epilog.vector.body ]
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index8, !dbg !71835
  %wide.load10 = load <4 x i16>, ptr %i.m, align 2, !dbg !71836
  %i.n = tail call <4 x i16> @llvm.umin.v4i16(<4 x i16> %vec.phi9, <4 x i16> %wide.load10), !dbg !71837 ; 2 uses
  %index.next11 = add nuw i64 %index8, 4, !dbg !71834 ; 2 uses
  %i.o = icmp eq i64 %index.next11, %n.vec5, !dbg !71838
  br i1 %i.o, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !71838, !llvm.loop !71825

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.p = tail call i16 @llvm.vector.reduce.umin.v4i16(<4 x i16> %i.n), !dbg !71838 ; 2 uses
  %cmp.n12 = icmp eq i64 %i.e, %n.vec5, !dbg !71838
  br i1 %cmp.n12, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtBY_8adapters6copied9copy_foldttNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.scalar.ph.preheader, !dbg !71838

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ]
  %.sroa.02.0.i.ph = phi i16 [ %2, %iter.check ], [ %i.k, %vec.epilog.iter.check ], [ %i.p, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !71838

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i = phi i64 [ %i.r, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !71834 ; 2 uses
  %.sroa.02.0.i = phi i16 [ %.sroa.0.0.i.i.i.i, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !71839
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !71835
  %.val.i = load i16, ptr %i.q, align 2, !dbg !71836, !noundef !2226
  %.sroa.0.0.i.i.i.i = tail call noundef i16 @llvm.umin.i16(i16 %.sroa.02.0.i, i16 %.val.i), !dbg !71837 ; 2 uses
  %i.r = add nuw i64 %.sroa.04.0.i, 1, !dbg !71840 ; 2 uses
  %i.s = icmp eq i64 %i.r, %i.e, !dbg !71838
  br i1 %i.s, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtBY_8adapters6copied9copy_foldttNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.scalar.ph, !dbg !71838, !llvm.loop !71828

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtBY_8adapters6copied9copy_foldttNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.sroa.0.0.i = phi i16 [ %2, %bb.a ], [ %i.p, %vec.epilog.middle.block ], [ %i.k, %middle.block ], [ %.sroa.0.0.i.i.i.i, %vec.epilog.scalar.ph ], !dbg !71839
  ret i16 %.sroa.0.0.i, !dbg !71841
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItertEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldttuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow17pow_to_uint_dtypeNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeNtB3H_10UInt32TypeE0NCINvNvB1v_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5p_3VectE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2I_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #11 personality ptr @rust_eh_personality !dbg !71842 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !71911 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !71911
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !71911 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !71911
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !71911
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !71911
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !71911 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !71912
  %i.a = icmp eq ptr %0, %1, !dbg !71913
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldtuNCINvNtB1K_3map8map_foldttuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow17pow_to_uint_dtypeNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeNtB3Q_10UInt32TypeE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5x_3VectE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.b, !dbg !71914

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !71915
  %i.c = ptrtoint ptr %0 to i64, !dbg !71915
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !71915
  %i.e = lshr exact i64 %i.d, 1, !dbg !71915
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload) ]
  br label %bb.c, !dbg !71916

bb.c:                                             ; preds = %.loopexit.i, %bb.b
  %i.f = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.p, %.loopexit.i ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.q, %.loopexit.i ], !dbg !71917 ; 2 uses
  %i.g = load i32, ptr %.sroa.8.0.copyload, align 4, !dbg !71918, !noalias !71902, !noundef !2226 ; 2 uses
  %i.h = icmp eq i32 %i.g, 0, !dbg !71919
  br i1 %i.h, label %.loopexit.i, label %bb.d, !dbg !71919

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !71920
  %.val16.i = load i16, ptr %i.i, align 2, !dbg !71921, !noalias !71903, !noundef !2226
  br label %.preheader21.i.i.i.i.i.i, !dbg !71922

.preheader21.i.i.i.i.i.i:                         ; preds = %bb.d, %bb.f
  %.sroa.015.1.i.i.i.i.i.i = phi i16 [ %.sroa.015.2.i.i.i.i.i.i, %bb.f ], [ 1, %bb.d ], !dbg !71923 ; 2 uses
  %.sroa.07.0.i.i.i.i.i.i = phi i32 [ %i.m, %bb.f ], [ %i.g, %bb.d ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i.i = phi i16 [ %i.n, %bb.f ], [ %.val16.i, %bb.d ] ; 3 uses
  %i.j = and i32 %.sroa.07.0.i.i.i.i.i.i, 1, !dbg !71924
  %.not.i.i.i.i.i.i = icmp eq i32 %i.j, 0, !dbg !71924
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e, !dbg !71924

bb.e:                                             ; preds = %.preheader21.i.i.i.i.i.i
  %i.k = mul i16 %.sroa.0.0.i.i.i.i.i.i, %.sroa.015.1.i.i.i.i.i.i, !dbg !71925 ; 2 uses
  %i.l = icmp eq i32 %.sroa.07.0.i.i.i.i.i.i, 1, !dbg !71926
  br i1 %i.l, label %.loopexit.i, label %bb.f, !dbg !71926

bb.f:                                             ; preds = %bb.e, %.preheader21.i.i.i.i.i.i
  %.sroa.015.2.i.i.i.i.i.i = phi i16 [ %i.k, %bb.e ], [ %.sroa.015.1.i.i.i.i.i.i, %.preheader21.i.i.i.i.i.i ], !dbg !71923
  %i.m = lshr i32 %.sroa.07.0.i.i.i.i.i.i, 1, !dbg !71927
  %i.n = mul i16 %.sroa.0.0.i.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i.i, !dbg !71928
  br label %.preheader21.i.i.i.i.i.i, !dbg !71929

.loopexit.i:                                      ; preds = %bb.e, %bb.c
  %.sroa.015.0.i.i.i.i.i.i = phi i16 [ 1, %bb.c ], [ %i.k, %bb.e ], !dbg !71930
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.f, !dbg !71931
  store i16 %.sroa.015.0.i.i.i.i.i.i, ptr %i.o, align 2, !dbg !71932, !noalias !71904
  %i.p = add i64 %i.f, 1, !dbg !71933             ; 2 uses
  %i.q = add nuw i64 %.sroa.01.0.i, 1, !dbg !71934 ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.e, !dbg !71935
  br i1 %i.r, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldtuNCINvNtB1K_3map8map_foldttuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow17pow_to_uint_dtypeNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeNtB3Q_10UInt32TypeE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5x_3VectE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.c, !dbg !71935

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldtuNCINvNtB1K_3map8map_foldttuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow17pow_to_uint_dtypeNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeNtB3Q_10UInt32TypeE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5x_3VectE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit: ; preds = %.loopexit.i, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.p, %.loopexit.i ], !dbg !71936
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !71936, !noalias !71903
  ret void, !dbg !71937
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItertEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldttuNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeE0NCINvNvB1v_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB56_3VectE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2K_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !71938 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !72009 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !72009
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !72009 ; 8 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !72009
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !72009 ; 6 uses
  %.sroa.7.0.copyload3 = ptrtoaddr ptr %.sroa.7.0.copyload to i64, !dbg !72010
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !72010
  %i.a = icmp eq ptr %0, %1, !dbg !72011
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldtuNCINvNtB1K_3map8map_foldttuNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VectE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit, label %iter.check, !dbg !72012

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !72013
  %i.c = ptrtoint ptr %0 to i64, !dbg !72013      ; 2 uses
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !72013      ; 5 uses
  %i.e = lshr i64 %i.d, 1, !dbg !72013            ; 6 uses
  %min.iters.check = icmp ult i64 %i.d, 8, !dbg !72014
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck, !dbg !72014

vector.memcheck:                                  ; preds = %iter.check
  %i.f = shl i64 %.sroa.5.0.copyload, 1, !dbg !72014
  %i.g = add i64 %i.f, %.sroa.7.0.copyload3, !dbg !72014
  %i.h = sub i64 %i.c, %i.g, !dbg !72014
  %diff.check = icmp ugt i64 %i.h, -32, !dbg !72014
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !72015

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check4 = icmp ult i64 %i.d, 32, !dbg !72014
  br i1 %min.iters.check4, label %vec.epilog.ph, label %vector.ph, !dbg !72014

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.e, 9223372036854775792      ; 5 uses
  %i.i = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.j = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !72014

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !72015 ; 3 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !72016 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !72017
  %wide.load = load <8 x i16>, ptr %i.k, align 2, !dbg !72017, !noalias !72001
  %wide.load5 = load <8 x i16>, ptr %i.l, align 2, !dbg !72017, !noalias !72001
  %i.m = icmp ne <8 x i16> %wide.load, zeroinitializer, !dbg !72018
  %i.n = icmp ne <8 x i16> %wide.load5, zeroinitializer, !dbg !72018
  %i.o = zext <8 x i1> %i.m to <8 x i16>, !dbg !72019
  %i.p = zext <8 x i1> %i.n to <8 x i16>, !dbg !72019
  %i.q = getelementptr [2 x i8], ptr %i.j, i64 %index, !dbg !72020 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !72021
  store <8 x i16> %i.o, ptr %i.q, align 2, !dbg !72021, !noalias !72002
  store <8 x i16> %i.p, ptr %i.r, align 2, !dbg !72021, !noalias !72002
  %index.next = add nuw i64 %index, 16, !dbg !72015 ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec, !dbg !72022
  br i1 %i.s, label %middle.block, label %vector.body, !dbg !72022, !llvm.loop !71989

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !72022
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldtuNCINvNtB1K_3map8map_foldttuNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VectE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit, label %vec.epilog.iter.check, !dbg !72022

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.t = and i64 %i.d, 24
  %min.epilog.iters.check = icmp eq i64 %i.t, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !2857

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !72015
  %n.vec6 = and i64 %i.e, 9223372036854775804     ; 4 uses
  %i.u = add i64 %.sroa.5.0.copyload, %n.vec6     ; 2 uses
  %i.v = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index7 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next9, %vec.epilog.vector.body ], !dbg !72015 ; 3 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index7, !dbg !72016
  %wide.load8 = load <4 x i16>, ptr %i.w, align 2, !dbg !72017, !noalias !72001
  %i.x = icmp ne <4 x i16> %wide.load8, zeroinitializer, !dbg !72018
  %i.y = zext <4 x i1> %i.x to <4 x i16>, !dbg !72019
  %i.z = getelementptr [2 x i8], ptr %i.v, i64 %index7, !dbg !72020
  store <4 x i16> %i.y, ptr %i.z, align 2, !dbg !72021, !noalias !72002
  %index.next9 = add nuw i64 %index7, 4, !dbg !72015 ; 2 uses
  %i.aa = icmp eq i64 %index.next9, %n.vec6, !dbg !72022
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !72022, !llvm.loop !71990

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n10 = icmp eq i64 %i.e, %n.vec6, !dbg !72022
  br i1 %cmp.n10, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldtuNCINvNtB1K_3map8map_foldttuNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VectE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit, label %vec.epilog.scalar.ph.preheader, !dbg !72022

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %.sroa.5.0.copyload, %vector.memcheck ], [ %i.i, %vec.epilog.iter.check ], [ %i.u, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec6, %vec.epilog.middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.ph, 1, !dbg !72022
  %i.ab = and i64 %i.d, 2, !dbg !72022
  %lcmp.mod.not = icmp eq i64 %i.ab, 0, !dbg !72022
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !72022

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i.ph, !dbg !72016
  %.val16.i.prol = load i16, ptr %i.ac, align 2, !dbg !72017, !noalias !72001, !noundef !2226
  %.not.i.i.i.i.prol = icmp ne i16 %.val16.i.prol, 0, !dbg !72018
  %spec.select.i.i.i.i.prol = zext i1 %.not.i.i.i.i.prol to i16, !dbg !72019
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %.ph, !dbg !72020
  store i16 %spec.select.i.i.i.i.prol, ptr %i.ad, align 2, !dbg !72021, !noalias !72002
  %i.ae = add i64 %.ph, 1, !dbg !72023            ; 2 uses
  %i.af = or disjoint i64 %.sroa.01.0.i.ph, 1, !dbg !72024
  br label %vec.epilog.scalar.ph.prol.loopexit, !dbg !72022

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.ae, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ae, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.af, %vec.epilog.scalar.ph.prol ]
  %i.ag = icmp eq i64 %i.e, %.neg, !dbg !72022
  br i1 %i.ag, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldtuNCINvNtB1K_3map8map_foldttuNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VectE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit, label %vec.epilog.scalar.ph, !dbg !72022

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.ah = phi i64 [ %i.ao, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !72016 ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.ap, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !72015 ; 3 uses
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !72016
  %.val16.i = load i16, ptr %i.ai, align 2, !dbg !72017, !noalias !72001, !noundef !2226
  %.not.i.i.i.i = icmp ne i16 %.val16.i, 0, !dbg !72018
  %spec.select.i.i.i.i = zext i1 %.not.i.i.i.i to i16, !dbg !72019
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.ah, !dbg !72020
  store i16 %spec.select.i.i.i.i, ptr %i.aj, align 2, !dbg !72021, !noalias !72002
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !72016
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 2, !dbg !72016
  %.val16.i.1 = load i16, ptr %i.al, align 2, !dbg !72017, !noalias !72001, !noundef !2226
  %.not.i.i.i.i.1 = icmp ne i16 %.val16.i.1, 0, !dbg !72018
  %spec.select.i.i.i.i.1 = zext i1 %.not.i.i.i.i.1 to i16, !dbg !72019
  %i.am = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.ah, !dbg !72020
  %i.an = getelementptr i8, ptr %i.am, i64 2, !dbg !72020
  store i16 %spec.select.i.i.i.i.1, ptr %i.an, align 2, !dbg !72021, !noalias !72002
  %i.ao = add i64 %i.ah, 2, !dbg !72023           ; 2 uses
  %i.ap = add nuw i64 %.sroa.01.0.i, 2, !dbg !72024 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, %i.e, !dbg !72022
  br i1 %i.aq, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldtuNCINvNtB1K_3map8map_foldttuNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VectE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit, label %vec.epilog.scalar.ph, !dbg !72022, !llvm.loop !71995

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldtuNCINvNtB1K_3map8map_foldttuNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VectE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.u, %vec.epilog.middle.block ], [ %i.i, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.ao, %vec.epilog.scalar.ph ], !dbg !72025
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !72025, !noalias !72001
  ret void, !dbg !72026
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItertEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldttuNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops5round11RoundSeries14round_sig_figss5_0NCINvNvB1v_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5i_3VectE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0ECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !72027 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !72130 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !72130
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !72130 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !72130
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !72130
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !72130
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !72130
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !72131
  %i.a = icmp eq ptr %0, %1, !dbg !72132
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldtuNCINvNtB1K_3map8map_foldttuNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops5round11RoundSeries14round_sig_figss5_0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5q_3VectE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !72133

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !72134
  %i.c = ptrtoint ptr %0 to i64, !dbg !72134
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !72134
  %i.e = lshr exact i64 %i.d, 1, !dbg !72134
  br label %bb.c, !dbg !72135

bb.c:                                             ; preds = %bb.e, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.z, %bb.e ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.aa, %bb.e ], !dbg !72136 ; 2 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !72137
  %.val16.i = load i16, ptr %i.f, align 2, !dbg !72138, !noalias !72119, !noundef !2226 ; 2 uses
  %i.g = icmp eq i16 %.val16.i, 0, !dbg !72139
  br i1 %i.g, label %bb.e, label %bb.d, !dbg !72139

bb.d:                                             ; preds = %bb.c
  %i.h = uitofp i16 %.val16.i to double, !dbg !72140 ; 3 uses
  %i.i = load i32, ptr %.sroa.9.0.copyload, align 4, !dbg !72141, !noalias !72121, !noundef !2226
  %i.j = tail call double @llvm.log10.f64(double %i.h), !dbg !72142
  %i.k = tail call double @llvm.floor.f64(double %i.j), !dbg !72143
  %i.l = tail call i32 @llvm.fptosi.sat.i32.f64(double %i.k), !dbg !72144
  %i.m = xor i32 %i.l, -1, !dbg !72141
  %i.n = add i32 %i.i, %i.m, !dbg !72141          ; 3 uses
  %i.o = invoke noundef double @_RNvNtNtCslLP515EPe0c_4libm4math6scalbn6scalbn(double noundef %i.h, i32 noundef %i.n)
          to label %.noexc.i unwind label %bb.f, !dbg !72145, !noalias !72119

.noexc.i:                                         ; preds = %bb.d
  %i.p = tail call double @llvm.powi.f64.i32(double 5.000000e+00, i32 %i.n), !dbg !72146 ; 2 uses
  %i.q = fmul double %i.o, %i.p, !dbg !72145
  %i.r = tail call double @llvm.round.f64(double %i.q), !dbg !72147
  %i.s = fdiv double %i.r, %i.p, !dbg !72148
  %i.t = sub i32 0, %i.n, !dbg !72149
  %i.u = invoke noundef double @_RNvNtNtCslLP515EPe0c_4libm4math6scalbn6scalbn(double noundef %i.s, i32 noundef %i.t)
          to label %.noexc17.i unwind label %bb.f, !dbg !72150, !noalias !72119 ; 2 uses

.noexc17.i:                                       ; preds = %.noexc.i
  %i.v = tail call double @llvm.fabs.f64(double %i.u), !dbg !72151
  %i.w = fcmp ueq double %i.v, +inf, !dbg !72152
  %.sroa.01.0.i.i.i.i = select i1 %i.w, double %i.h, double %i.u, !dbg !72153
  %i.x = tail call i16 @llvm.fptoui.sat.i16.f64(double %.sroa.01.0.i.i.i.i), !dbg !72154
  br label %bb.e, !dbg !72155

bb.e:                                             ; preds = %.noexc17.i, %bb.c
  %.sroa.0.0.i.i.i.i = phi i16 [ %i.x, %.noexc17.i ], [ 0, %bb.c ], !dbg !72156
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i, !dbg !72157
  store i16 %.sroa.0.0.i.i.i.i, ptr %i.y, align 2, !dbg !72158, !noalias !72123
  %i.z = add i64 %.val15.i, 1, !dbg !72159        ; 2 uses
  %i.aa = add nuw i64 %.sroa.01.0.i, 1, !dbg !72160 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, %i.e, !dbg !72161
  br i1 %i.ab, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldtuNCINvNtB1K_3map8map_foldttuNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops5round11RoundSeries14round_sig_figss5_0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5q_3VectE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.c, !dbg !72161

bb.f:                                             ; preds = %.noexc.i, %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !dbg !72162, !noalias !72119
  resume { ptr, i32 } %i.ac, !dbg !72163

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldtuNCINvNtB1K_3map8map_foldttuNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops5round11RoundSeries14round_sig_figss5_0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5q_3VectE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.e, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.z, %bb.e ], !dbg !72164
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !72164, !noalias !72119
  ret void, !dbg !72165
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItertEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldttuQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeNtB3M_10UInt32TypeE0NCINvNvB1v_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5u_3VectE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2J_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !72166 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !72231 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !72231
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !72231 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !72231
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !72231 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !72232
  %i.a = icmp eq ptr %0, %1, !dbg !72233
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldtuNCINvNtB1K_3map8map_foldttuQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeNtB3V_10UInt32TypeE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5C_3VectE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit, label %iter.check, !dbg !72234

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !72235
  %i.c = ptrtoint ptr %0 to i64, !dbg !72235
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !72235      ; 4 uses
  %i.e = lshr exact i64 %i.d, 1, !dbg !72235      ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 8, !dbg !72236
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !72236

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2 = icmp ult i64 %i.d, 32, !dbg !72236
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph, !dbg !72236

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.e, 9223372036854775792      ; 5 uses
  %i.f = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.g = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !72236

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !72237 ; 2 uses
  %i.h = getelementptr [2 x i8], ptr %i.g, i64 %index, !dbg !72238 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !72239
  store <8 x i16> splat (i16 1), ptr %i.h, align 2, !dbg !72239, !noalias !72223
  store <8 x i16> splat (i16 1), ptr %i.i, align 2, !dbg !72239, !noalias !72223
  %index.next = add nuw i64 %index, 16, !dbg !72237 ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec, !dbg !72240
  br i1 %i.j, label %middle.block, label %vector.body, !dbg !72240, !llvm.loop !72211

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !72240
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldtuNCINvNtB1K_3map8map_foldttuQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeNtB3V_10UInt32TypeE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5C_3VectE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit, label %vec.epilog.iter.check, !dbg !72240

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.k = and i64 %i.d, 24
  %min.epilog.iters.check = icmp eq i64 %i.k, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !2857

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !72237
  %n.vec3 = and i64 %i.e, 9223372036854775804     ; 4 uses
  %i.l = add i64 %.sroa.5.0.copyload, %n.vec3     ; 2 uses
  %i.m = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index4 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next5, %vec.epilog.vector.body ], !dbg !72237 ; 2 uses
  %i.n = getelementptr [2 x i8], ptr %i.m, i64 %index4, !dbg !72238
  store <4 x i16> splat (i16 1), ptr %i.n, align 2, !dbg !72239, !noalias !72223
  %index.next5 = add nuw i64 %index4, 4, !dbg !72237 ; 2 uses
  %i.o = icmp eq i64 %index.next5, %n.vec3, !dbg !72240
  br i1 %i.o, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !72240, !llvm.loop !72212

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n6 = icmp eq i64 %i.e, %n.vec3, !dbg !72240
  br i1 %cmp.n6, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldtuNCINvNtB1K_3map8map_foldttuQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeNtB3V_10UInt32TypeE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5C_3VectE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit, label %vec.epilog.scalar.ph.preheader, !dbg !72240

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %i.f, %vec.epilog.iter.check ], [ %i.l, %vec.epilog.middle.block ]
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec3, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !72240

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %i.p = phi i64 [ %i.r, %vec.epilog.scalar.ph ], [ %.ph, %vec.epilog.scalar.ph.preheader ], !dbg !72241 ; 2 uses
  %.sroa.01.0.i = phi i64 [ %i.s, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !72237
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.p, !dbg !72238
  store i16 1, ptr %i.q, align 2, !dbg !72239, !noalias !72223
  %i.r = add i64 %i.p, 1, !dbg !72242             ; 2 uses
  %i.s = add nuw i64 %.sroa.01.0.i, 1, !dbg !72243 ; 2 uses
  %i.t = icmp eq i64 %i.s, %i.e, !dbg !72240
  br i1 %i.t, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldtuNCINvNtB1K_3map8map_foldttuQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeNtB3V_10UInt32TypeE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5C_3VectE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit, label %vec.epilog.scalar.ph, !dbg !72240, !llvm.loop !72217

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldtuNCINvNtB1K_3map8map_foldttuQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeNtB3V_10UInt32TypeE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5C_3VectE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.l, %vec.epilog.middle.block ], [ %i.f, %middle.block ], [ %i.r, %vec.epilog.scalar.ph ], !dbg !72244
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !72244, !noalias !72230
  ret void, !dbg !72245
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterxEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldxTmxEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2e_3MapIB47_IB13_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2L_8downcastINtB2N_12ChunkedArrayNtNtB2P_9datatypes9Int64TypeE13downcast_iter0ENCINvB2J_16arg_sort_numericB6v_E0EBP_xEs_0NCINvNvB1v_8for_each4callB2x_NCINvMsj_NtB4w_3vecINtB8x_3VecB2x_E14extend_trustedIB47_BP_B2C_EE0E0E0ECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #11 personality ptr @rust_eh_personality !dbg !72246 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !72318 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !72318
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !72318 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !72318
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !72318 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !72318
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !72318 ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !72319
  %i.a = icmp eq ptr %0, %1, !dbg !72320
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldxuNCINvNtB1K_3map8map_foldxTmxEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_ExEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8T_3VecB2G_E14extend_trustedIB4g_B7V_B2L_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !72321

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !72322
  %i.c = ptrtoint ptr %0 to i64, !dbg !72322
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !72322      ; 3 uses
  %i.e = lshr exact i64 %i.d, 3, !dbg !72322      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload) ]
  %i.f = icmp eq i64 %i.d, 8, !dbg !72323
  br i1 %i.f, label %.epil.preheader, label %.new, !dbg !72323

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 2305843009213693950, !dbg !72323
  br label %bb.c, !dbg !72323

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.t, %bb.c ], !dbg !72324 ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.u, %bb.c ], !dbg !72325 ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !72324
  %.val16.i = load i64, ptr %i.h, align 8, !dbg !72326, !noalias !72305, !noundef !2226
  %i.i = load i32, ptr %.sroa.8.0.copyload, align 4, !dbg !72327, !noalias !72306, !noundef !2226 ; 2 uses
  %i.j = add i32 %i.i, 1, !dbg !72328
  store i32 %i.j, ptr %.sroa.8.0.copyload, align 4, !dbg !72328, !noalias !72306
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !72329 ; 2 uses
  store i32 %i.i, ptr %i.k, align 8, !dbg !72330, !noalias !72311
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !72330
  store i64 %.val16.i, ptr %i.l, align 8, !dbg !72330, !noalias !72311
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !72324
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !72324
  %.val16.i.1 = load i64, ptr %i.n, align 8, !dbg !72326, !noalias !72305, !noundef !2226
  %i.o = load i32, ptr %.sroa.8.0.copyload, align 4, !dbg !72327, !noalias !72306, !noundef !2226 ; 2 uses
  %i.p = add i32 %i.o, 1, !dbg !72328
  store i32 %i.p, ptr %.sroa.8.0.copyload, align 4, !dbg !72328, !noalias !72306
  %i.q = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !72329 ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 16, !dbg !72329
  store i32 %i.o, ptr %i.r, align 8, !dbg !72330, !noalias !72311
  %i.s = getelementptr i8, ptr %i.q, i64 24, !dbg !72330
  store i64 %.val16.i.1, ptr %i.s, align 8, !dbg !72330, !noalias !72311
  %i.t = add i64 %i.g, 2, !dbg !72331             ; 3 uses
  %i.u = add nuw i64 %.sroa.01.0.i, 2, !dbg !72332 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !72333  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !72333
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldxuNCINvNtB1K_3map8map_foldxTmxEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_ExEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8T_3VecB2G_E14extend_trustedIB4g_B7V_B2L_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, label %bb.c, !dbg !72333

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldxuNCINvNtB1K_3map8map_foldxTmxEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_ExEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8T_3VecB2G_E14extend_trustedIB4g_B7V_B2L_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.v = and i64 %i.d, 8, !dbg !72333
  %lcmp.mod.not = icmp eq i64 %i.v, 0, !dbg !72333
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldxuNCINvNtB1K_3map8map_foldxTmxEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_ExEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8T_3VecB2G_E14extend_trustedIB4g_B7V_B2L_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %.epil.preheader, !dbg !72333

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldxuNCINvNtB1K_3map8map_foldxTmxEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_ExEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8T_3VecB2G_E14extend_trustedIB4g_B7V_B2L_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.t, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldxuNCINvNtB1K_3map8map_foldxTmxEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_ExEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8T_3VecB2G_E14extend_trustedIB4g_B7V_B2L_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.u, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldxuNCINvNtB1K_3map8map_foldxTmxEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_ExEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8T_3VecB2G_E14extend_trustedIB4g_B7V_B2L_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.e to i1, !dbg !72333
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !72333
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.epil.init, !dbg !72324
  %.val16.i.epil = load i64, ptr %i.w, align 8, !dbg !72326, !noalias !72305, !noundef !2226
  %i.x = load i32, ptr %.sroa.8.0.copyload, align 4, !dbg !72327, !noalias !72306, !noundef !2226 ; 2 uses
  %i.y = add i32 %i.x, 1, !dbg !72328
  store i32 %i.y, ptr %.sroa.8.0.copyload, align 4, !dbg !72328, !noalias !72306
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init, !dbg !72329 ; 2 uses
  store i32 %i.x, ptr %i.z, align 8, !dbg !72330, !noalias !72311
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8, !dbg !72330
  store i64 %.val16.i.epil, ptr %i.aa, align 8, !dbg !72330, !noalias !72311
  %i.ab = add i64 %.epil.init, 1, !dbg !72331
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldxuNCINvNtB1K_3map8map_foldxTmxEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_ExEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8T_3VecB2G_E14extend_trustedIB4g_B7V_B2L_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldxuNCINvNtB1K_3map8map_foldxTmxEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_ExEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8T_3VecB2G_E14extend_trustedIB4g_B7V_B2L_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldxuNCINvNtB1K_3map8map_foldxTmxEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_ExEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8T_3VecB2G_E14extend_trustedIB4g_B7V_B2L_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.t, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldxuNCINvNtB1K_3map8map_foldxTmxEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_ExEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8T_3VecB2G_E14extend_trustedIB4g_B7V_B2L_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ], [ %i.ab, %.epil.preheader ], !dbg !72334
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !72334, !noalias !72305
  ret void, !dbg !72335
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterxEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldxauQNCNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtCs2Aa799EbAFJ_11polars_time6series15TemporalMethods7weekdays_0s_0NCINvNvB1v_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB56_3VecaE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0ECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !72336 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !72411
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !dbg !72417
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72412), !dbg !72418
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !72419
  %i.b = icmp eq ptr %0, %1, !dbg !72420
  br i1 %i.b, label %bb.c, label %bb.b, !dbg !72421

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64, !dbg !72422
  %i.d = ptrtoint ptr %0 to i64, !dbg !72422
  %i.e = sub nuw i64 %i.c, %i.d, !dbg !72422
  %i.f = lshr exact i64 %i.e, 3, !dbg !72422
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  br label %bb.d, !dbg !72423

bb.c:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.a, align 8, !dbg !72424, !alias.scope !72412, !nonnull !2226, !align !2450, !noundef !2226
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !72424
  %.val11.i = load i64, ptr %i.j, align 8, !dbg !72424, !alias.scope !72412, !noundef !2226
  store i64 %.val11.i, ptr %.val.i, align 8, !dbg !72425, !noalias !72412
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldxuNCINvNtB1K_3map8map_foldxauQNCNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtCs2Aa799EbAFJ_11polars_time6series15TemporalMethods7weekdays_0s_0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecaE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !72424

bb.d:                                             ; preds = %bb.e, %bb.b
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.q, %bb.e ], !dbg !72426 ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !72427
  %.val16.i = load i64, ptr %i.k, align 8, !dbg !72428, !noalias !72412, !noundef !2226
  %i.l = invoke noundef i8 @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtCs2Aa799EbAFJ_11polars_time6series15TemporalMethods7weekdays_0s_0INtB7_5FnMutTxEE8call_mutCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef %.val16.i)
          to label %bb.e unwind label %bb.g, !dbg !72429

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !72413), !dbg !72430
  call void @llvm.experimental.noalias.scope.decl(metadata !72414), !dbg !72431
  %i.m = load ptr, ptr %i.h, align 8, !dbg !72432, !alias.scope !72415, !noundef !2226
  %i.n = load i64, ptr %i.i, align 8, !dbg !72433, !alias.scope !72415, !noundef !2226 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n, !dbg !72434
  store i8 %i.l, ptr %i.o, align 1, !dbg !72435, !noalias !72416
  %i.p = add i64 %i.n, 1, !dbg !72436             ; 2 uses
  store i64 %i.p, ptr %i.i, align 8, !dbg !72436, !alias.scope !72415
  %i.q = add nuw i64 %.sroa.01.0.i, 1, !dbg !72437 ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.f, !dbg !72438
  br i1 %i.r, label %bb.f, label %bb.d, !dbg !72438

bb.f:                                             ; preds = %bb.e
  %.val12.i = load ptr, ptr %i.a, align 8, !dbg !72424, !alias.scope !72412, !nonnull !2226, !align !2450, !noundef !2226
  store i64 %i.p, ptr %.val12.i, align 8, !dbg !72439
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldxuNCINvNtB1K_3map8map_foldxauQNCNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtCs2Aa799EbAFJ_11polars_time6series15TemporalMethods7weekdays_0s_0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecaE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !72424

bb.g:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  %.val14.i = load ptr, ptr %i.a, align 8, !dbg !72424, !alias.scope !72412, !nonnull !2226, !align !2450, !noundef !2226
  %.val15.i = load i64, ptr %i.i, align 8, !dbg !72424, !alias.scope !72412, !noundef !2226
  store i64 %.val15.i, ptr %.val14.i, align 8, !dbg !72440
  resume { ptr, i32 } %i.s, !dbg !72441

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldxuNCINvNtB1K_3map8map_foldxauQNCNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtCs2Aa799EbAFJ_11polars_time6series15TemporalMethods7weekdays_0s_0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecaE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.c, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !72442
  ret void, !dbg !72443
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterxEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldxmuQNCNCNvXNtNtCskY9G75ZWc4U_11polars_expr11expressions6gatherNtB2H_10GatherExprNtB2J_12PhysicalExpr23evaluate_on_groups_impls1_00NCINvNvB1v_8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecmE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2L_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !72444 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !72519
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !dbg !72525
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72520), !dbg !72526
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !72527
  %i.b = icmp eq ptr %0, %1, !dbg !72528
end_hunk_2
