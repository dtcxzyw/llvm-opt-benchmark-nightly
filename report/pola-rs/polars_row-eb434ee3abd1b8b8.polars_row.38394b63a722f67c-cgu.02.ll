Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_row-eb434ee3abd1b8b8.polars_row.38394b63a722f67c-cgu.02?download=true
inline.NumInlined: 865
inline.NumDeleted: 538
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [32 x i8] c"crates/polars-row/src/widths.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\1F\00\00\00\00\00\00\00v\00\00\00\09\00\00\00" }>, align 8
@2 = private unnamed_addr constant [40 x i8] c"internal error: entered unreachable code", align 1
@3 = private unnamed_addr constant [34 x i8] c"crates/polars-arrow/src/offset.rs\00", align 1
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"!\00\00\00\00\00\00\00\11\02\00\00#\00\00\00" }>, align 8
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"!\00\00\00\00\00\00\00\0A\02\00\00$\00\00\00" }>, align 8
@6 = private unnamed_addr constant [8 x i8] zeroinitializer, align 8
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\1F\00\00\00\00\00\00\00I\00\00\00\0D\00\00\00" }>, align 8
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\1F\00\00\00\00\00\00\00M\00\00\00\09\00\00\00" }>, align 8
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\1F\00\00\00\00\00\00\00N\00\00\00\09\00\00\00" }>, align 8
@10 = private unnamed_addr constant [41 x i8] c"assertion failed: index < self.num_rows()", align 1
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\1F\00\00\00\00\00\00\00\A1\00\00\00\09\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCs4PheDXcg4wa_10polars_row6widthsNtB5_9RowWidths9push_iterINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIB14_INtNtNtB1c_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtB7_6encode11get_encoders3_0ENCINvB3q_24biniter_num_column_bytesB1R_E0EEB7_(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !467 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.03 = alloca [24 x i8], align 8           ; 5 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 11 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 2 uses
  %i.j = alloca [8 x i8], align 8                 ; 2 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !662
  %i.l = load i64, ptr %0, align 8, !dbg !663, !range !275, !noundef !273
  %.not = icmp eq i64 %i.l, -9223372036854775808, !dbg !663 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b, !dbg !664

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !665
  %i.n = load i64, ptr %i.m, align 8, !dbg !665, !noundef !273 ; 2 uses
  %i.o = icmp ult i64 %i.n, 1152921504606846976, !dbg !666
  tail call void @llvm.assume(i1 %i.o), !dbg !667
  br label %bb.d, !dbg !668

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !669
  %i.q = load i64, ptr %i.p, align 8, !dbg !669, !noundef !273
  br label %bb.d, !dbg !670

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ %i.q, %bb.c ], [ %i.n, %bb.b ], !dbg !671 ; 2 uses
  store i64 %.sink, ptr %i.k, align 8, !dbg !671
  %i.r = tail call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders3_0ENCINvB2t_24biniter_num_column_bytesBW_E0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB2v_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1), !dbg !672 ; 2 uses
  store i64 %i.r, ptr %i.j, align 8, !dbg !673
  %i.s = icmp eq i64 %.sink, %i.r, !dbg !674
  br i1 %i.s, label %bb.f, label %bb.e, !dbg !674, !prof !281

bb.e:                                             ; preds = %bb.d
  call void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #14, !dbg !675
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !676
  br i1 %.not, label %bb.h, label %bb.g, !dbg !677

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !678
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !679, !noalias !623
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !678
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !680
  %.val = load ptr, ptr %i.t, align 8, !dbg !680, !nonnull !273, !noundef !273 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !680
  %.val14 = load i64, ptr %i.u, align 8, !dbg !680, !noundef !273
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %.val14, !dbg !681
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapIBX_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders3_0ENCINvB2J_24biniter_num_column_bytesB1c_E0EINtB1j_7IterMutjEEINtB5_7ZipImplBW_B4g_E3newB2L_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %.val, ptr noundef nonnull %i.v), !dbg !682, !noalias !624
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !683, !noalias !623
  call void @llvm.experimental.noalias.scope.decl(metadata !625), !dbg !684
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 40, !dbg !685
  %.val.i = load i64, ptr %i.w, align 8, !dbg !685, !alias.scope !625, !noalias !628, !noundef !273 ; 13 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 48, !dbg !685
  %.val8.i = load i64, ptr %i.x, align 8, !dbg !685, !alias.scope !625, !noalias !628, !noundef !273 ; 6 uses
  %i.y = sub i64 %.val8.i, %.val.i, !dbg !686     ; 4 uses
  %.not.i = icmp eq i64 %.val8.i, %.val.i, !dbg !687
  br i1 %.not.i, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtB8_3map3MapIBY_INtNtNtBc_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders3_0ENCINvB2K_24biniter_num_column_bytesB1d_E0EINtB1k_7IterMutjEEINtB6_7ZipImplBX_B4h_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTjQjENCINvMs_NtB2M_6widthsNtB67_9RowWidths9push_iterBX_Es0_0E0EB2M_.exit, label %.lr.ph.i, !dbg !688

.lr.ph.i:                                         ; preds = %bb.g
  %.val.i.i = load ptr, ptr %i.d, align 8, !alias.scope !630, !noalias !628, !nonnull !273, !noundef !273 ; 9 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.val1.i.i = load ptr, ptr %i.z, align 8, !alias.scope !630, !noalias !628, !nonnull !273, !noundef !273 ; 6 uses
  %min.iters.check = icmp ult i64 %i.y, 9, !dbg !688
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !688

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.aa = shl i64 %.val.i, 3, !dbg !688
  %i.ab = getelementptr nuw i8, ptr %.val1.i.i, i64 %i.aa, !dbg !688
  %i.ac = shl i64 %.val8.i, 3, !dbg !688
  %i.ad = getelementptr i8, ptr %.val1.i.i, i64 %i.ac, !dbg !688
  %i.ae = shl i64 %.val.i, 4, !dbg !688
  %i.af = getelementptr nuw i8, ptr %.val.i.i, i64 %i.ae, !dbg !688
  %i.ag = shl i64 %.val8.i, 4, !dbg !688
  %i.ah = getelementptr i8, ptr %.val.i.i, i64 %i.ag, !dbg !688
  %i.ai = getelementptr i8, ptr %i.ah, i64 -12, !dbg !688
  %bound0 = icmp ult ptr %i.ab, %i.ai, !dbg !688
  %bound1 = icmp ult ptr %i.af, %i.ad, !dbg !688
  %found.conflict = and i1 %bound0, %bound1, !dbg !688
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph, !dbg !689

vector.ph:                                        ; preds = %vector.memcheck
  %i.aj = and i64 %i.y, 3                         ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  %i.al = select i1 %i.ak, i64 4, i64 %i.aj
  %n.vec = sub i64 %i.y, %i.al                    ; 2 uses
  br label %vector.body, !dbg !689

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !689 ; 5 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bo, %vector.body ]
  %vec.phi28 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bp, %vector.body ]
  call void @llvm.experimental.noalias.scope.decl(metadata !631), !dbg !690
  %i.am = add i64 %index, %.val.i, !dbg !691      ; 2 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i, i64 %i.am, !dbg !692
  %i.ao = getelementptr [16 x i8], ptr %.val.i.i, i64 %index, !dbg !692
  %i.ap = getelementptr i8, ptr %i.ao, i64 16, !dbg !692
  %i.aq = getelementptr [16 x i8], ptr %i.ap, i64 %.val.i, !dbg !692
  %i.ar = getelementptr [16 x i8], ptr %.val.i.i, i64 %index, !dbg !692
  %i.as = getelementptr i8, ptr %i.ar, i64 32, !dbg !692
  %i.at = getelementptr [16 x i8], ptr %i.as, i64 %.val.i, !dbg !692
  %i.au = getelementptr [16 x i8], ptr %.val.i.i, i64 %index, !dbg !692
  %i.av = getelementptr i8, ptr %i.au, i64 48, !dbg !692
  %i.aw = getelementptr [16 x i8], ptr %i.av, i64 %.val.i, !dbg !692
  %i.ax = load i32, ptr %i.an, align 4, !dbg !693, !alias.scope !632, !noalias !633, !noundef !273
  %i.ay = load i32, ptr %i.aq, align 4, !dbg !693, !alias.scope !632, !noalias !633, !noundef !273
  %i.az = insertelement <2 x i32> poison, i32 %i.ax, i64 0
  %i.ba = insertelement <2 x i32> %i.az, i32 %i.ay, i64 1 ; 2 uses
  %i.bb = load i32, ptr %i.at, align 4, !dbg !693, !alias.scope !632, !noalias !633, !noundef !273
  %i.bc = load i32, ptr %i.aw, align 4, !dbg !693, !alias.scope !632, !noalias !633, !noundef !273
  %i.bd = insertelement <2 x i32> poison, i32 %i.bb, i64 0
  %i.be = insertelement <2 x i32> %i.bd, i32 %i.bc, i64 1 ; 2 uses
  %i.bf = zext <2 x i32> %i.ba to <2 x i64>, !dbg !694
  %i.bg = zext <2 x i32> %i.be to <2 x i64>, !dbg !694
  %i.bh = icmp ult <2 x i32> %i.ba, splat (i32 254), !dbg !695
  %i.bi = icmp ult <2 x i32> %i.be, splat (i32 254), !dbg !695
  %i.bj = select <2 x i1> %i.bh, <2 x i64> splat (i64 1), <2 x i64> splat (i64 5), !dbg !695
  %i.bk = select <2 x i1> %i.bi, <2 x i64> splat (i64 1), <2 x i64> splat (i64 5), !dbg !695
  %i.bl = add nuw nsw <2 x i64> %i.bj, %i.bf, !dbg !695 ; 2 uses
  %i.bm = add nuw nsw <2 x i64> %i.bk, %i.bg, !dbg !695 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.am, !dbg !696 ; 3 uses
  %i.bo = add <2 x i64> %i.bl, %vec.phi, !dbg !697 ; 2 uses
  %i.bp = add <2 x i64> %i.bm, %vec.phi28, !dbg !697 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 16, !dbg !698 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.bn, align 8, !dbg !698, !alias.scope !634, !noalias !635
  %wide.load29 = load <2 x i64>, ptr %i.bq, align 8, !dbg !698, !alias.scope !634, !noalias !635
  %i.br = add <2 x i64> %i.bl, %wide.load, !dbg !698
  %i.bs = add <2 x i64> %i.bm, %wide.load29, !dbg !698
  store <2 x i64> %i.br, ptr %i.bn, align 8, !dbg !698, !alias.scope !634, !noalias !635
  store <2 x i64> %i.bs, ptr %i.bq, align 8, !dbg !698, !alias.scope !634, !noalias !635
  %index.next = add nuw i64 %index, 4, !dbg !689  ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec, !dbg !688
  br i1 %i.bt, label %middle.block, label %vector.body, !dbg !688, !llvm.loop !546

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.bp, %i.bo, !dbg !688
  %i.bu = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx), !dbg !688
  br label %scalar.ph.preheader, !dbg !688

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.sroa.0.011.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 5 uses
  %.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %i.bu, %middle.block ] ; 2 uses
  %2 = add i64 %.sroa.0.011.i.ph, %.val.i, !dbg !688
  %i.bv = sub i64 %.val8.i, %2, !dbg !688
  %i.bw = xor i64 %.sroa.0.011.i.ph, -1, !dbg !688
  %i.bx = add i64 %.val8.i, %i.bw, !dbg !688
  %xtraiter = and i64 %i.bv, 1, !dbg !688
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !688
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !688

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.by = add nuw i64 %.sroa.0.011.i.ph, 1, !dbg !689
  call void @llvm.experimental.noalias.scope.decl(metadata !631), !dbg !690
  %i.bz = add i64 %.sroa.0.011.i.ph, %.val.i, !dbg !691 ; 2 uses
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i, i64 %i.bz, !dbg !692
  %.val1.i.i.i.i.i.prol = load i32, ptr %i.ca, align 4, !dbg !693, !noalias !633, !noundef !273 ; 2 uses
  %i.cb = zext i32 %.val1.i.i.i.i.i.prol to i64, !dbg !694
  %i.cc = icmp ult i32 %.val1.i.i.i.i.i.prol, 254, !dbg !695
  %.sroa.0.0.v.i.i.i.i.prol = select i1 %i.cc, i64 1, i64 5, !dbg !695
  %.sroa.0.0.i.i.i.i.prol = add nuw nsw i64 %.sroa.0.0.v.i.i.i.i.prol, %i.cb, !dbg !695 ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.bz, !dbg !696 ; 2 uses
  %i.ce = add i64 %.sroa.0.0.i.i.i.i.prol, %.ph, !dbg !697 ; 2 uses
  %i.cf = load i64, ptr %i.cd, align 8, !dbg !698, !alias.scope !636, !noalias !637, !noundef !273
  %i.cg = add i64 %.sroa.0.0.i.i.i.i.prol, %i.cf, !dbg !698
  store i64 %i.cg, ptr %i.cd, align 8, !dbg !698, !alias.scope !636, !noalias !637
  br label %scalar.ph.prol.loopexit, !dbg !688

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ce, %scalar.ph.prol ]
  %.sroa.0.011.i.unr = phi i64 [ %.sroa.0.011.i.ph, %scalar.ph.preheader ], [ %i.by, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ce, %scalar.ph.prol ]
  %i.ch = icmp eq i64 %i.bx, %.val.i, !dbg !688
  br i1 %i.ch, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtB8_3map3MapIBY_INtNtNtBc_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders3_0ENCINvB2K_24biniter_num_column_bytesB1d_E0EINtB1k_7IterMutjEEINtB6_7ZipImplBX_B4h_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTjQjENCINvMs_NtB2M_6widthsNtB67_9RowWidths9push_iterBX_Es0_0E0EB2M_.exit, label %scalar.ph.preheader.new, !dbg !688

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i, !dbg !688
  br label %scalar.ph, !dbg !688

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.011.i = phi i64 [ %.sroa.0.011.i.unr, %scalar.ph.preheader.new ], [ %i.cr, %scalar.ph ] ; 3 uses
  %i.ci = phi i64 [ %.unr, %scalar.ph.preheader.new ], [ %i.cw, %scalar.ph ]
  call void @llvm.experimental.noalias.scope.decl(metadata !631), !dbg !690
  %i.cj = add i64 %.sroa.0.011.i, %.val.i, !dbg !691 ; 2 uses
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i, i64 %i.cj, !dbg !692
  %.val1.i.i.i.i.i = load i32, ptr %i.ck, align 4, !dbg !693, !noalias !633, !noundef !273 ; 2 uses
  %i.cl = zext i32 %.val1.i.i.i.i.i to i64, !dbg !694
  %i.cm = icmp ult i32 %.val1.i.i.i.i.i, 254, !dbg !695
  %.sroa.0.0.v.i.i.i.i = select i1 %i.cm, i64 1, i64 5, !dbg !695
  %.sroa.0.0.i.i.i.i = add nuw nsw i64 %.sroa.0.0.v.i.i.i.i, %i.cl, !dbg !695 ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.cj, !dbg !696 ; 2 uses
  %i.co = add i64 %.sroa.0.0.i.i.i.i, %i.ci, !dbg !697
  %i.cp = load i64, ptr %i.cn, align 8, !dbg !698, !alias.scope !636, !noalias !637, !noundef !273
  %i.cq = add i64 %.sroa.0.0.i.i.i.i, %i.cp, !dbg !698
  store i64 %i.cq, ptr %i.cn, align 8, !dbg !698, !alias.scope !636, !noalias !637
  %i.cr = add nuw i64 %.sroa.0.011.i, 2, !dbg !689 ; 2 uses
  %.reass = add i64 %.sroa.0.011.i, %invariant.op ; 2 uses
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i, i64 %.reass, !dbg !692
  %.val1.i.i.i.i.i.1 = load i32, ptr %i.cs, align 4, !dbg !693, !noalias !638, !noundef !273 ; 2 uses
  %i.ct = zext i32 %.val1.i.i.i.i.i.1 to i64, !dbg !694
  %i.cu = icmp ult i32 %.val1.i.i.i.i.i.1, 254, !dbg !695
  %.sroa.0.0.v.i.i.i.i.1 = select i1 %i.cu, i64 1, i64 5, !dbg !695
  %.sroa.0.0.i.i.i.i.1 = add nuw nsw i64 %.sroa.0.0.v.i.i.i.i.1, %i.ct, !dbg !695 ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !696 ; 2 uses
  %i.cw = add i64 %.sroa.0.0.i.i.i.i.1, %i.co, !dbg !697 ; 2 uses
  %i.cx = load i64, ptr %i.cv, align 8, !dbg !698, !alias.scope !636, !noalias !637, !noundef !273
  %i.cy = add i64 %.sroa.0.0.i.i.i.i.1, %i.cx, !dbg !698
  store i64 %i.cy, ptr %i.cv, align 8, !dbg !698, !alias.scope !636, !noalias !637
  %exitcond.not.i.1 = icmp eq i64 %i.cr, %i.y, !dbg !687
  br i1 %exitcond.not.i.1, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtB8_3map3MapIBY_INtNtNtBc_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders3_0ENCINvB2K_24biniter_num_column_bytesB1d_E0EINtB1k_7IterMutjEEINtB6_7ZipImplBX_B4h_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTjQjENCINvMs_NtB2M_6widthsNtB67_9RowWidths9push_iterBX_Es0_0E0EB2M_.exit, label %scalar.ph, !dbg !688, !llvm.loop !548

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtB8_3map3MapIBY_INtNtNtBc_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders3_0ENCINvB2K_24biniter_num_column_bytesB1d_E0EINtB1k_7IterMutjEEINtB6_7ZipImplBX_B4h_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTjQjENCINvMs_NtB2M_6widthsNtB67_9RowWidths9push_iterBX_Es0_0E0EB2M_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.g
  %.sroa.0.0 = phi i64 [ 0, %bb.g ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.cw, %scalar.ph ], !dbg !699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !700
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !701 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !dbg !701, !noundef !273
  %i.db = add i64 %i.da, %.sroa.0.0, !dbg !701
  store i64 %i.db, ptr %i.cz, align 8, !dbg !701
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders3_0ENCINvB2t_24biniter_num_column_bytesBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextB2v_.exit, !dbg !702

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !639), !dbg !703
  tail call void @llvm.experimental.noalias.scope.decl(metadata !640), !dbg !704
  %i.dc = load ptr, ptr %1, align 8, !dbg !705, !alias.scope !641, !nonnull !273, !noundef !273 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !706
  %i.de = load ptr, ptr %i.dd, align 8, !dbg !706, !alias.scope !641, !nonnull !273, !noundef !273
  %i.df = icmp eq ptr %i.dc, %i.de, !dbg !707
  br i1 %i.df, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders3_0ENCINvB2t_24biniter_num_column_bytesBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextB2v_.exit, label %bb.i, !dbg !708

bb.i:                                             ; preds = %bb.h
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 16, !dbg !709
  store ptr %i.dg, ptr %1, align 8, !dbg !710, !alias.scope !641
  %.val.i.i15 = load i32, ptr %i.dc, align 4, !dbg !711, !noalias !642, !noundef !273 ; 2 uses
  %i.dh = zext i32 %.val.i.i15 to i64, !dbg !712
  %i.di = icmp ult i32 %.val.i.i15, 254, !dbg !713
  %.sroa.0.0.v.i.i = select i1 %i.di, i64 1, i64 5, !dbg !713
  %.sroa.0.0.i3.i = add nuw nsw i64 %.sroa.0.0.v.i.i, %i.dh, !dbg !713 ; 4 uses
  store i64 %.sroa.0.0.i3.i, ptr %i.i, align 8, !dbg !714
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !715
  store ptr %1, ptr %i.h, align 8, !dbg !716
  %i.dj = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !716 ; 2 uses
  store i64 0, ptr %i.dj, align 8, !dbg !716
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !717
  call void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders3_0ENCINvB2u_24biniter_num_column_bytesBX_E0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvXs_NtB8_9enumerateINtB4S_9EnumeratepEB40_8try_fold9enumeratejuINtNtNtBc_3ops12control_flow11ControlFlowTjjEENCINvNvB40_4find5checkB6u_NCINvMs_NtB2w_6widthsNtB77_9RowWidths9push_iterBN_E0E0E0B5P_EB2w_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dj), !dbg !718
  %i.dk = load i64, ptr %i.c, align 8, !dbg !719, !range !357, !noundef !273
  %i.dl = trunc nuw i64 %i.dk to i1, !dbg !720
  br i1 %i.dl, label %bb.j, label %bb.k, !dbg !720

bb.j:                                             ; preds = %bb.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !721
  %i.dn = load i64, ptr %i.dm, align 8, !dbg !721, !noundef !273
  %i.do = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !721
  %i.dp = load i64, ptr %i.do, align 8, !dbg !721, !noundef !273 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !722
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !723
  %i.dq = add i64 %i.dn, 1, !dbg !724             ; 2 uses
  %i.dr = mul i64 %i.dq, %.sroa.0.0.i3.i, !dbg !724
  %i.ds = add i64 %i.dr, %i.dp, !dbg !724
  store i64 %i.ds, ptr %i.g, align 8, !dbg !724
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !725
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !726 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !dbg !726, !noundef !273 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !727
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.du, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !dbg !727
  %i.dv = load i64, ptr %i.b, align 8, !dbg !727, !range !357, !noundef !273
  %i.dw = trunc nuw i64 %i.dv to i1, !dbg !728
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !729
  %i.dy = load i64, ptr %i.dx, align 8, !dbg !729, !range !275, !noundef !273 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !729 ; 2 uses
  br i1 %i.dw, label %bb.l, label %bb.m, !dbg !728, !prof !365

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !722
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !730 ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !dbg !730, !noundef !273
  %i.ec = add i64 %i.eb, %.sroa.0.0.i3.i, !dbg !730
  store i64 %i.ec, ptr %i.ea, align 8, !dbg !730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !731
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders3_0ENCINvB2t_24biniter_num_column_bytesBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextB2v_.exit, !dbg !732

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders3_0ENCINvB2t_24biniter_num_column_bytesBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextB2v_.exit: ; preds = %bb.h, %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtB8_3map3MapIBY_INtNtNtBc_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders3_0ENCINvB2K_24biniter_num_column_bytesB1d_E0EINtB1k_7IterMutjEEINtB6_7ZipImplBX_B4h_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTjQjENCINvMs_NtB2M_6widthsNtB67_9RowWidths9push_iterBX_Es0_0E0EB2M_.exit, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4PheDXcg4wa_10polars_row6widths9RowWidthsEBK_.exit, %bb.k
  ret void, !dbg !733

bb.l:                                             ; preds = %bb.j
  %i.ed = load i64, ptr %i.dz, align 8, !dbg !734
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.dy, i64 %i.ed) #14, !dbg !735
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.ee = load ptr, ptr %i.dz, align 8, !dbg !736, !nonnull !273, !noundef !273
  %i.ef = icmp ule i64 %i.du, %i.dy, !dbg !737
  call void @llvm.assume(i1 %i.ef), !dbg !738
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !739
  store i64 %i.dy, ptr %i.f, align 8, !dbg !740
  %i.eg = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !740 ; 2 uses
  store ptr %i.ee, ptr %i.eg, align 8, !dbg !740
  %i.eh = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !740 ; 3 uses
  store i64 0, ptr %i.eh, align 8, !dbg !740
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !741 ; 3 uses
  %i.ej = load i64, ptr %i.ei, align 8, !dbg !741, !noundef !273 ; 2 uses
  %i.ek = add i64 %i.ej, %.sroa.0.0.i3.i, !dbg !741
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecjE6resizeCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.dq, i64 noundef %i.ek)
          to label %bb.n unwind label %bb.v, !dbg !742

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecjEECs4PheDXcg4wa_10polars_row.exit.i.i: ; preds = %bb.s, %bb.u
  %eh.lpad-body = phi { ptr, i32 } [ %i.fd, %bb.u ], [ %i.fb, %bb.s ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03, i64 24, i1 false), !dbg !743
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !743
  store i64 %i.ey, ptr %.sroa.54.0..sroa_idx, align 8, !dbg !743
  br label %bb.x, !dbg !744

bb.n:                                             ; preds = %bb.m
  %i.el = add i64 %i.ej, %i.dp, !dbg !745
  %i.em = load i64, ptr %i.eh, align 8, !dbg !746, !alias.scope !656, !noundef !273 ; 3 uses
  %i.en = load i64, ptr %i.f, align 8, !dbg !747, !range !368, !alias.scope !656, !noundef !273
  %i.eo = icmp eq i64 %i.em, %i.en, !dbg !748
  br i1 %i.eo, label %bb.o, label %bb.p, !dbg !748

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs39HECPMKlmJ_7ndarray(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.p unwind label %bb.v, !dbg !749

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ep = load ptr, ptr %i.eg, align 8, !dbg !750, !alias.scope !656, !nonnull !273, !noundef !273
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.em, !dbg !751
  store i64 %i.el, ptr %i.eq, align 8, !dbg !752
  %i.er = add i64 %i.em, 1, !dbg !753
  store i64 %i.er, ptr %i.eh, align 8, !dbg !753, !alias.scope !656
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !754
  %i.es = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !755
  store ptr %i.g, ptr %i.es, align 8, !dbg !755, !alias.scope !658, !noalias !659
  %i.et = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !755
  store ptr %i.ei, ptr %i.et, align 8, !dbg !755, !alias.scope !658, !noalias !659
  invoke void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecjEINtB4_10SpecExtendjINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIB1f_IB1f_INtNtNtB1n_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders3_0ENCINvB3G_24biniter_num_column_bytesB27_E0ENCINvMs_NtB3I_6widthsNtB5l_9RowWidths9push_iterB22_Es_0EE11spec_extendB3I_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.e)
          to label %bb.q unwind label %bb.v, !dbg !756

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03), !dbg !757
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !758
  %i.eu = load i64, ptr %i.dt, align 8, !dbg !759, !noundef !273
  %i.ev = load i64, ptr %i.ei, align 8, !dbg !760, !noundef !273
  %i.ew = mul i64 %i.ev, %i.eu, !dbg !759
  %i.ex = load i64, ptr %i.g, align 8, !dbg !761, !noundef !273
  %i.ey = add i64 %i.ew, %i.ex, !dbg !759         ; 2 uses
  %i.ez = load i64, ptr %0, align 8, !dbg !762, !range !275, !alias.scope !661, !noundef !273
  %i.fa = icmp eq i64 %i.ez, -9223372036854775808, !dbg !762
  br i1 %i.fa, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4PheDXcg4wa_10polars_row6widths9RowWidthsEBK_.exit, label %bb.r, !dbg !762

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs4PheDXcg4wa_10polars_row.exit.i unwind label %bb.s, !dbg !763

bb.s:                                             ; preds = %bb.r
  %i.fb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecjEECs4PheDXcg4wa_10polars_row.exit.i.i unwind label %bb.t, !dbg !764

bb.t:                                             ; preds = %bb.s
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #15, !dbg !763
  unreachable, !dbg !763

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs4PheDXcg4wa_10polars_row.exit.i: ; preds = %bb.r
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4PheDXcg4wa_10polars_row6widths9RowWidthsEBK_.exit unwind label %bb.u, !dbg !765

bb.u:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs4PheDXcg4wa_10polars_row.exit.i
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecjEECs4PheDXcg4wa_10polars_row.exit.i.i, !dbg !743

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4PheDXcg4wa_10polars_row6widths9RowWidthsEBK_.exit: ; preds = %bb.q, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs4PheDXcg4wa_10polars_row.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03, i64 24, i1 false), !dbg !743
  %.sroa.54.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !743
  store i64 %i.ey, ptr %.sroa.54.0..sroa_idx5, align 8, !dbg !743
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03), !dbg !766
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !767
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !731
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders3_0ENCINvB2t_24biniter_num_column_bytesBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextB2v_.exit, !dbg !768

bb.v:                                             ; preds = %bb.o, %bb.p, %bb.m
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(24) %i.f) #16
          to label %bb.x unwind label %bb.w, !dbg !744

bb.w:                                             ; preds = %bb.v
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #15, !dbg !769
  unreachable, !dbg !769

bb.x:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecjEECs4PheDXcg4wa_10polars_row.exit.i.i, %bb.v
  %.pn23 = phi { ptr, i32 } [ %eh.lpad-body, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecjEECs4PheDXcg4wa_10polars_row.exit.i.i ], [ %i.fe, %bb.v ]
  resume { ptr, i32 } %.pn23, !dbg !769
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCs4PheDXcg4wa_10polars_row6widthsNtB5_9RowWidths9push_iterINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIB14_INtNtNtB1c_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtB7_6encode11get_encoders3_0ENCINvB3q_24biniter_num_column_bytesB1R_Es0_0EEB7_(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !770 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.03 = alloca [24 x i8], align 8           ; 5 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 11 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 2 uses
  %i.j = alloca [8 x i8], align 8                 ; 2 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !973
  %i.l = load i64, ptr %0, align 8, !dbg !974, !range !275, !noundef !273
  %.not = icmp eq i64 %i.l, -9223372036854775808, !dbg !974 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b, !dbg !975

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !976
  %i.n = load i64, ptr %i.m, align 8, !dbg !976, !noundef !273 ; 2 uses
  %i.o = icmp ult i64 %i.n, 1152921504606846976, !dbg !977
  tail call void @llvm.assume(i1 %i.o), !dbg !978
  br label %bb.d, !dbg !979

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !980
  %i.q = load i64, ptr %i.p, align 8, !dbg !980, !noundef !273
  br label %bb.d, !dbg !981

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ %i.q, %bb.c ], [ %i.n, %bb.b ], !dbg !982 ; 2 uses
  store i64 %.sink, ptr %i.k, align 8, !dbg !982
  %i.r = tail call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders3_0ENCINvB2t_24biniter_num_column_bytesBW_Es0_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB2v_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1), !dbg !983 ; 2 uses
  store i64 %i.r, ptr %i.j, align 8, !dbg !984
  %i.s = icmp eq i64 %.sink, %i.r, !dbg !985
  br i1 %i.s, label %bb.f, label %bb.e, !dbg !985, !prof !281

bb.e:                                             ; preds = %bb.d
  call void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #14, !dbg !986
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !987
  br i1 %.not, label %bb.h, label %bb.g, !dbg !988

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !989
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !990, !noalias !934
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !989
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !991
  %.val = load ptr, ptr %i.t, align 8, !dbg !991, !nonnull !273, !noundef !273 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !991
  %.val14 = load i64, ptr %i.u, align 8, !dbg !991, !noundef !273
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %.val14, !dbg !992
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapIBX_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders3_0ENCINvB2J_24biniter_num_column_bytesB1c_Es0_0EINtB1j_7IterMutjEEINtB5_7ZipImplBW_B4j_E3newB2L_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %.val, ptr noundef nonnull %i.v), !dbg !993, !noalias !935
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !994, !noalias !934
  call void @llvm.experimental.noalias.scope.decl(metadata !936), !dbg !995
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 40, !dbg !996
  %.val.i = load i64, ptr %i.w, align 8, !dbg !996, !alias.scope !936, !noalias !939, !noundef !273 ; 13 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 48, !dbg !996
  %.val8.i = load i64, ptr %i.x, align 8, !dbg !996, !alias.scope !936, !noalias !939, !noundef !273 ; 6 uses
  %i.y = sub i64 %.val8.i, %.val.i, !dbg !997     ; 4 uses
  %.not.i = icmp eq i64 %.val8.i, %.val.i, !dbg !998
  br i1 %.not.i, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtB8_3map3MapIBY_INtNtNtBc_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders3_0ENCINvB2K_24biniter_num_column_bytesB1d_Es0_0EINtB1k_7IterMutjEEINtB6_7ZipImplBX_B4k_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTjQjENCINvMs_NtB2M_6widthsNtB6a_9RowWidths9push_iterBX_Es0_0E0EB2M_.exit, label %.lr.ph.i, !dbg !999

.lr.ph.i:                                         ; preds = %bb.g
  %.val1.i.i = load ptr, ptr %i.d, align 8, !alias.scope !941, !noalias !939, !nonnull !273, !noundef !273 ; 9 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.val.i.i = load ptr, ptr %i.z, align 8, !alias.scope !941, !noalias !939, !nonnull !273, !noundef !273 ; 6 uses
  %min.iters.check = icmp ult i64 %i.y, 17, !dbg !999
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !999

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.aa = shl i64 %.val.i, 3, !dbg !999
  %i.ab = getelementptr nuw i8, ptr %.val.i.i, i64 %i.aa, !dbg !999
  %i.ac = shl i64 %.val8.i, 3, !dbg !999
  %i.ad = getelementptr i8, ptr %.val.i.i, i64 %i.ac, !dbg !999
  %i.ae = shl i64 %.val.i, 4, !dbg !999
  %i.af = getelementptr nuw i8, ptr %.val1.i.i, i64 %i.ae, !dbg !999
  %i.ag = shl i64 %.val8.i, 4, !dbg !999
  %i.ah = getelementptr i8, ptr %.val1.i.i, i64 %i.ag, !dbg !999
  %i.ai = getelementptr i8, ptr %i.ah, i64 -12, !dbg !999
  %bound0 = icmp ult ptr %i.ab, %i.ai, !dbg !999
  %bound1 = icmp ult ptr %i.af, %i.ad, !dbg !999
  %found.conflict = and i1 %bound0, %bound1, !dbg !999
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph, !dbg !1000

vector.ph:                                        ; preds = %vector.memcheck
  %i.aj = and i64 %i.y, 3                         ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  %i.al = select i1 %i.ak, i64 4, i64 %i.aj
  %n.vec = sub i64 %i.y, %i.al                    ; 2 uses
  br label %vector.body, !dbg !1000

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !1000 ; 5 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bq, %vector.body ]
  %vec.phi28 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.br, %vector.body ]
  call void @llvm.experimental.noalias.scope.decl(metadata !942), !dbg !1001
  %i.am = add i64 %index, %.val.i, !dbg !1002     ; 2 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.val1.i.i, i64 %i.am, !dbg !1003
  %i.ao = getelementptr [16 x i8], ptr %.val1.i.i, i64 %index, !dbg !1003
  %i.ap = getelementptr i8, ptr %i.ao, i64 16, !dbg !1003
  %i.aq = getelementptr [16 x i8], ptr %i.ap, i64 %.val.i, !dbg !1003
  %i.ar = getelementptr [16 x i8], ptr %.val1.i.i, i64 %index, !dbg !1003
  %i.as = getelementptr i8, ptr %i.ar, i64 32, !dbg !1003
  %i.at = getelementptr [16 x i8], ptr %i.as, i64 %.val.i, !dbg !1003
  %i.au = getelementptr [16 x i8], ptr %.val1.i.i, i64 %index, !dbg !1003
  %i.av = getelementptr i8, ptr %i.au, i64 48, !dbg !1003
  %i.aw = getelementptr [16 x i8], ptr %i.av, i64 %.val.i, !dbg !1003
  %i.ax = load i32, ptr %i.an, align 4, !dbg !1004, !alias.scope !943, !noalias !944, !noundef !273
  %i.ay = load i32, ptr %i.aq, align 4, !dbg !1004, !alias.scope !943, !noalias !944, !noundef !273
  %i.az = insertelement <2 x i32> poison, i32 %i.ax, i64 0
  %i.ba = insertelement <2 x i32> %i.az, i32 %i.ay, i64 1
  %i.bb = load i32, ptr %i.at, align 4, !dbg !1004, !alias.scope !943, !noalias !944, !noundef !273
  %i.bc = load i32, ptr %i.aw, align 4, !dbg !1004, !alias.scope !943, !noalias !944, !noundef !273
  %i.bd = insertelement <2 x i32> poison, i32 %i.bb, i64 0
  %i.be = insertelement <2 x i32> %i.bd, i32 %i.bc, i64 1
  %i.bf = zext <2 x i32> %i.ba to <2 x i64>, !dbg !1005
  %i.bg = zext <2 x i32> %i.be to <2 x i64>, !dbg !1005
  %i.bh = add nuw nsw <2 x i64> %i.bf, splat (i64 31), !dbg !1006
  %i.bi = add nuw nsw <2 x i64> %i.bg, splat (i64 31), !dbg !1006
  %i.bj = lshr <2 x i64> %i.bh, splat (i64 5), !dbg !1006
  %i.bk = lshr <2 x i64> %i.bi, splat (i64 5), !dbg !1006
  %i.bl = mul nuw nsw <2 x i64> %i.bj, splat (i64 33), !dbg !1007
  %i.bm = mul nuw nsw <2 x i64> %i.bk, splat (i64 33), !dbg !1007
  %i.bn = add nuw nsw <2 x i64> %i.bl, splat (i64 1), !dbg !1008 ; 2 uses
  %i.bo = add nuw nsw <2 x i64> %i.bm, splat (i64 1), !dbg !1008 ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.am, !dbg !1009 ; 3 uses
  %i.bq = add <2 x i64> %i.bn, %vec.phi, !dbg !1010 ; 2 uses
  %i.br = add <2 x i64> %i.bo, %vec.phi28, !dbg !1010 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 16, !dbg !1011 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.bp, align 8, !dbg !1011, !alias.scope !945, !noalias !946
  %wide.load29 = load <2 x i64>, ptr %i.bs, align 8, !dbg !1011, !alias.scope !945, !noalias !946
  %i.bt = add <2 x i64> %i.bn, %wide.load, !dbg !1011
  %i.bu = add <2 x i64> %i.bo, %wide.load29, !dbg !1011
  store <2 x i64> %i.bt, ptr %i.bp, align 8, !dbg !1011, !alias.scope !945, !noalias !946
  store <2 x i64> %i.bu, ptr %i.bs, align 8, !dbg !1011, !alias.scope !945, !noalias !946
  %index.next = add nuw i64 %index, 4, !dbg !1000 ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec, !dbg !999
  br i1 %i.bv, label %middle.block, label %vector.body, !dbg !999, !llvm.loop !853

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.br, %i.bq, !dbg !999
  %i.bw = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx), !dbg !999
  br label %scalar.ph.preheader, !dbg !999

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.sroa.0.011.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 5 uses
  %.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %i.bw, %middle.block ] ; 2 uses
  %2 = add i64 %.sroa.0.011.i.ph, %.val.i, !dbg !999
  %i.bx = sub i64 %.val8.i, %2, !dbg !999
  %i.by = xor i64 %.sroa.0.011.i.ph, -1, !dbg !999
  %i.bz = add i64 %.val8.i, %i.by, !dbg !999
  %xtraiter = and i64 %i.bx, 1, !dbg !999
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !999
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !999

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ca = add nuw i64 %.sroa.0.011.i.ph, 1, !dbg !1000
  call void @llvm.experimental.noalias.scope.decl(metadata !942), !dbg !1001
  %i.cb = add i64 %.sroa.0.011.i.ph, %.val.i, !dbg !1002 ; 2 uses
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %.val1.i.i, i64 %i.cb, !dbg !1003
  %.val1.i.i.i.i.i.prol = load i32, ptr %i.cc, align 4, !dbg !1004, !noalias !944, !noundef !273
  %i.cd = zext i32 %.val1.i.i.i.i.i.prol to i64, !dbg !1005
  %i.ce = add nuw nsw i64 %i.cd, 31, !dbg !1006
  %i.cf = lshr i64 %i.ce, 5, !dbg !1006
  %i.cg = mul nuw nsw i64 %i.cf, 33, !dbg !1007
  %i.ch = add nuw nsw i64 %i.cg, 1, !dbg !1008    ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.cb, !dbg !1009 ; 2 uses
  %i.cj = add i64 %i.ch, %.ph, !dbg !1010         ; 2 uses
  %i.ck = load i64, ptr %i.ci, align 8, !dbg !1011, !alias.scope !947, !noalias !948, !noundef !273
  %i.cl = add i64 %i.ch, %i.ck, !dbg !1011
  store i64 %i.cl, ptr %i.ci, align 8, !dbg !1011, !alias.scope !947, !noalias !948
  br label %scalar.ph.prol.loopexit, !dbg !999

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.cj, %scalar.ph.prol ]
  %.sroa.0.011.i.unr = phi i64 [ %.sroa.0.011.i.ph, %scalar.ph.preheader ], [ %i.ca, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.cj, %scalar.ph.prol ]
  %i.cm = icmp eq i64 %i.bz, %.val.i, !dbg !999
  br i1 %i.cm, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtB8_3map3MapIBY_INtNtNtBc_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders3_0ENCINvB2K_24biniter_num_column_bytesB1d_Es0_0EINtB1k_7IterMutjEEINtB6_7ZipImplBX_B4k_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTjQjENCINvMs_NtB2M_6widthsNtB6a_9RowWidths9push_iterBX_Es0_0E0EB2M_.exit, label %scalar.ph.preheader.new, !dbg !999

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i, !dbg !999
  br label %scalar.ph, !dbg !999

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.011.i = phi i64 [ %.sroa.0.011.i.unr, %scalar.ph.preheader.new ], [ %i.cz, %scalar.ph ] ; 3 uses
  %i.cn = phi i64 [ %.unr, %scalar.ph.preheader.new ], [ %i.dh, %scalar.ph ]
  call void @llvm.experimental.noalias.scope.decl(metadata !942), !dbg !1001
  %i.co = add i64 %.sroa.0.011.i, %.val.i, !dbg !1002 ; 2 uses
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %.val1.i.i, i64 %i.co, !dbg !1003
  %.val1.i.i.i.i.i = load i32, ptr %i.cp, align 4, !dbg !1004, !noalias !944, !noundef !273
  %i.cq = zext i32 %.val1.i.i.i.i.i to i64, !dbg !1005
  %i.cr = add nuw nsw i64 %i.cq, 31, !dbg !1006
  %i.cs = lshr i64 %i.cr, 5, !dbg !1006
  %i.ct = mul nuw nsw i64 %i.cs, 33, !dbg !1007
  %i.cu = add nuw nsw i64 %i.ct, 1, !dbg !1008    ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.co, !dbg !1009 ; 2 uses
  %i.cw = add i64 %i.cu, %i.cn, !dbg !1010
  %i.cx = load i64, ptr %i.cv, align 8, !dbg !1011, !alias.scope !947, !noalias !948, !noundef !273
  %i.cy = add i64 %i.cu, %i.cx, !dbg !1011
  store i64 %i.cy, ptr %i.cv, align 8, !dbg !1011, !alias.scope !947, !noalias !948
  %i.cz = add nuw i64 %.sroa.0.011.i, 2, !dbg !1000 ; 2 uses
  %.reass = add i64 %.sroa.0.011.i, %invariant.op ; 2 uses
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !1003
  %.val1.i.i.i.i.i.1 = load i32, ptr %i.da, align 4, !dbg !1004, !noalias !949, !noundef !273
  %i.db = zext i32 %.val1.i.i.i.i.i.1 to i64, !dbg !1005
  %i.dc = add nuw nsw i64 %i.db, 31, !dbg !1006
  %i.dd = lshr i64 %i.dc, 5, !dbg !1006
  %i.de = mul nuw nsw i64 %i.dd, 33, !dbg !1007
  %i.df = add nuw nsw i64 %i.de, 1, !dbg !1008    ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass, !dbg !1009 ; 2 uses
  %i.dh = add i64 %i.df, %i.cw, !dbg !1010        ; 2 uses
  %i.di = load i64, ptr %i.dg, align 8, !dbg !1011, !alias.scope !947, !noalias !948, !noundef !273
  %i.dj = add i64 %i.df, %i.di, !dbg !1011
  store i64 %i.dj, ptr %i.dg, align 8, !dbg !1011, !alias.scope !947, !noalias !948
  %exitcond.not.i.1 = icmp eq i64 %i.cz, %i.y, !dbg !998
  br i1 %exitcond.not.i.1, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtB8_3map3MapIBY_INtNtNtBc_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders3_0ENCINvB2K_24biniter_num_column_bytesB1d_Es0_0EINtB1k_7IterMutjEEINtB6_7ZipImplBX_B4k_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTjQjENCINvMs_NtB2M_6widthsNtB6a_9RowWidths9push_iterBX_Es0_0E0EB2M_.exit, label %scalar.ph, !dbg !999, !llvm.loop !855

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtB8_3map3MapIBY_INtNtNtBc_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders3_0ENCINvB2K_24biniter_num_column_bytesB1d_Es0_0EINtB1k_7IterMutjEEINtB6_7ZipImplBX_B4k_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTjQjENCINvMs_NtB2M_6widthsNtB6a_9RowWidths9push_iterBX_Es0_0E0EB2M_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.g
  %.sroa.0.0 = phi i64 [ 0, %bb.g ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.dh, %scalar.ph ], !dbg !1012
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !1013
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !1014 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !dbg !1014, !noundef !273
  %i.dm = add i64 %i.dl, %.sroa.0.0, !dbg !1014
  store i64 %i.dm, ptr %i.dk, align 8, !dbg !1014
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders3_0ENCINvB2t_24biniter_num_column_bytesBW_Es0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2v_.exit, !dbg !1015

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !950), !dbg !1016
  tail call void @llvm.experimental.noalias.scope.decl(metadata !951), !dbg !1017
  %i.dn = load ptr, ptr %1, align 8, !dbg !1018, !alias.scope !952, !nonnull !273, !noundef !273 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !1019
  %i.dp = load ptr, ptr %i.do, align 8, !dbg !1019, !alias.scope !952, !nonnull !273, !noundef !273
  %i.dq = icmp eq ptr %i.dn, %i.dp, !dbg !1020
  br i1 %i.dq, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders3_0ENCINvB2t_24biniter_num_column_bytesBW_Es0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2v_.exit, label %bb.i, !dbg !1021

bb.i:                                             ; preds = %bb.h
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 16, !dbg !1022
  store ptr %i.dr, ptr %1, align 8, !dbg !1023, !alias.scope !952
  %.val.i.i15 = load i32, ptr %i.dn, align 4, !dbg !1024, !noalias !953, !noundef !273
  %i.ds = zext i32 %.val.i.i15 to i64, !dbg !1025
  %i.dt = add nuw nsw i64 %i.ds, 31, !dbg !1026
  %i.du = lshr i64 %i.dt, 5, !dbg !1026
  %i.dv = mul nuw nsw i64 %i.du, 33, !dbg !1027
  %i.dw = add nuw nsw i64 %i.dv, 1, !dbg !1028    ; 4 uses
  store i64 %i.dw, ptr %i.i, align 8, !dbg !1029
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !1030
  store ptr %1, ptr %i.h, align 8, !dbg !1031
  %i.dx = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !1031 ; 2 uses
  store i64 0, ptr %i.dx, align 8, !dbg !1031
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !1032
  call void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders3_0ENCINvB2u_24biniter_num_column_bytesBX_Es0_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvXs_NtB8_9enumerateINtB4V_9EnumeratepEB43_8try_fold9enumeratejuINtNtNtBc_3ops12control_flow11ControlFlowTjjEENCINvNvB43_4find5checkB6x_NCINvMs_NtB2w_6widthsNtB7a_9RowWidths9push_iterBN_E0E0E0B5S_EB2w_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dx), !dbg !1033
  %i.dy = load i64, ptr %i.c, align 8, !dbg !1034, !range !357, !noundef !273
  %i.dz = trunc nuw i64 %i.dy to i1, !dbg !1035
  br i1 %i.dz, label %bb.j, label %bb.k, !dbg !1035

bb.j:                                             ; preds = %bb.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !1036
  %i.eb = load i64, ptr %i.ea, align 8, !dbg !1036, !noundef !273
  %i.ec = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !1036
  %i.ed = load i64, ptr %i.ec, align 8, !dbg !1036, !noundef !273 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1037
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !1038
  %i.ee = add i64 %i.eb, 1, !dbg !1039            ; 2 uses
  %i.ef = mul i64 %i.ee, %i.dw, !dbg !1039
  %i.eg = add i64 %i.ef, %i.ed, !dbg !1039
  store i64 %i.eg, ptr %i.g, align 8, !dbg !1039
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !1040
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1041 ; 2 uses
  %i.ei = load i64, ptr %i.eh, align 8, !dbg !1041, !noundef !273 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1042
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.ei, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !dbg !1042
  %i.ej = load i64, ptr %i.b, align 8, !dbg !1042, !range !357, !noundef !273
  %i.ek = trunc nuw i64 %i.ej to i1, !dbg !1043
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !1044
  %i.em = load i64, ptr %i.el, align 8, !dbg !1044, !range !275, !noundef !273 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !1044 ; 2 uses
  br i1 %i.ek, label %bb.l, label %bb.m, !dbg !1043, !prof !365

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1037
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1045 ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 8, !dbg !1045, !noundef !273
  %i.eq = add i64 %i.ep, %i.dw, !dbg !1045
  store i64 %i.eq, ptr %i.eo, align 8, !dbg !1045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !1046
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders3_0ENCINvB2t_24biniter_num_column_bytesBW_Es0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2v_.exit, !dbg !1047

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders3_0ENCINvB2t_24biniter_num_column_bytesBW_Es0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2v_.exit: ; preds = %bb.h, %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtB8_3map3MapIBY_INtNtNtBc_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders3_0ENCINvB2K_24biniter_num_column_bytesB1d_Es0_0EINtB1k_7IterMutjEEINtB6_7ZipImplBX_B4k_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTjQjENCINvMs_NtB2M_6widthsNtB6a_9RowWidths9push_iterBX_Es0_0E0EB2M_.exit, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4PheDXcg4wa_10polars_row6widths9RowWidthsEBK_.exit, %bb.k
  ret void, !dbg !1048

bb.l:                                             ; preds = %bb.j
  %i.er = load i64, ptr %i.en, align 8, !dbg !1049
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.em, i64 %i.er) #14, !dbg !1050
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.es = load ptr, ptr %i.en, align 8, !dbg !1051, !nonnull !273, !noundef !273
  %i.et = icmp ule i64 %i.ei, %i.em, !dbg !1052
  call void @llvm.assume(i1 %i.et), !dbg !1053
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1054
  store i64 %i.em, ptr %i.f, align 8, !dbg !1055
  %i.eu = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !1055 ; 2 uses
  store ptr %i.es, ptr %i.eu, align 8, !dbg !1055
  %i.ev = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !1055 ; 3 uses
  store i64 0, ptr %i.ev, align 8, !dbg !1055
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1056 ; 3 uses
  %i.ex = load i64, ptr %i.ew, align 8, !dbg !1056, !noundef !273 ; 2 uses
  %i.ey = add i64 %i.ex, %i.dw, !dbg !1056
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecjE6resizeCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.ee, i64 noundef %i.ey)
          to label %bb.n unwind label %bb.v, !dbg !1057

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecjEECs4PheDXcg4wa_10polars_row.exit.i.i: ; preds = %bb.s, %bb.u
  %eh.lpad-body = phi { ptr, i32 } [ %i.fr, %bb.u ], [ %i.fp, %bb.s ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03, i64 24, i1 false), !dbg !1058
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !1058
  store i64 %i.fm, ptr %.sroa.54.0..sroa_idx, align 8, !dbg !1058
  br label %bb.x, !dbg !1059

bb.n:                                             ; preds = %bb.m
  %i.ez = add i64 %i.ex, %i.ed, !dbg !1060
  %i.fa = load i64, ptr %i.ev, align 8, !dbg !1061, !alias.scope !967, !noundef !273 ; 3 uses
  %i.fb = load i64, ptr %i.f, align 8, !dbg !1062, !range !368, !alias.scope !967, !noundef !273
  %i.fc = icmp eq i64 %i.fa, %i.fb, !dbg !1063
  br i1 %i.fc, label %bb.o, label %bb.p, !dbg !1063

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs39HECPMKlmJ_7ndarray(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.p unwind label %bb.v, !dbg !1064

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.fd = load ptr, ptr %i.eu, align 8, !dbg !1065, !alias.scope !967, !nonnull !273, !noundef !273
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.fa, !dbg !1066
  store i64 %i.ez, ptr %i.fe, align 8, !dbg !1067
  %i.ff = add i64 %i.fa, 1, !dbg !1068
  store i64 %i.ff, ptr %i.ev, align 8, !dbg !1068, !alias.scope !967
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !1069
  %i.fg = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !1070
  store ptr %i.g, ptr %i.fg, align 8, !dbg !1070, !alias.scope !969, !noalias !970
  %i.fh = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !1070
  store ptr %i.ew, ptr %i.fh, align 8, !dbg !1070, !alias.scope !969, !noalias !970
  invoke void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecjEINtB4_10SpecExtendjINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIB1f_IB1f_INtNtNtB1n_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders3_0ENCINvB3G_24biniter_num_column_bytesB27_Es0_0ENCINvMs_NtB3I_6widthsNtB5o_9RowWidths9push_iterB22_Es_0EE11spec_extendB3I_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.e)
          to label %bb.q unwind label %bb.v, !dbg !1071

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03), !dbg !1072
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !1073
  %i.fi = load i64, ptr %i.eh, align 8, !dbg !1074, !noundef !273
  %i.fj = load i64, ptr %i.ew, align 8, !dbg !1075, !noundef !273
  %i.fk = mul i64 %i.fj, %i.fi, !dbg !1074
  %i.fl = load i64, ptr %i.g, align 8, !dbg !1076, !noundef !273
  %i.fm = add i64 %i.fk, %i.fl, !dbg !1074        ; 2 uses
  %i.fn = load i64, ptr %0, align 8, !dbg !1077, !range !275, !alias.scope !972, !noundef !273
  %i.fo = icmp eq i64 %i.fn, -9223372036854775808, !dbg !1077
  br i1 %i.fo, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4PheDXcg4wa_10polars_row6widths9RowWidthsEBK_.exit, label %bb.r, !dbg !1077

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs4PheDXcg4wa_10polars_row.exit.i unwind label %bb.s, !dbg !1078

bb.s:                                             ; preds = %bb.r
  %i.fp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecjEECs4PheDXcg4wa_10polars_row.exit.i.i unwind label %bb.t, !dbg !1079

bb.t:                                             ; preds = %bb.s
  %i.fq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #15, !dbg !1078
  unreachable, !dbg !1078

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs4PheDXcg4wa_10polars_row.exit.i: ; preds = %bb.r
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4PheDXcg4wa_10polars_row6widths9RowWidthsEBK_.exit unwind label %bb.u, !dbg !1080

bb.u:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs4PheDXcg4wa_10polars_row.exit.i
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecjEECs4PheDXcg4wa_10polars_row.exit.i.i, !dbg !1058

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4PheDXcg4wa_10polars_row6widths9RowWidthsEBK_.exit: ; preds = %bb.q, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs4PheDXcg4wa_10polars_row.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03, i64 24, i1 false), !dbg !1058
  %.sroa.54.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !1058
  store i64 %i.fm, ptr %.sroa.54.0..sroa_idx5, align 8, !dbg !1058
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03), !dbg !1081
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !1059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !1082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !1046
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders3_0ENCINvB2t_24biniter_num_column_bytesBW_Es0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2v_.exit, !dbg !1083

bb.v:                                             ; preds = %bb.o, %bb.p, %bb.m
  %i.fs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(24) %i.f) #16
          to label %bb.x unwind label %bb.w, !dbg !1059

bb.w:                                             ; preds = %bb.v
  %i.ft = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #15, !dbg !1084
  unreachable, !dbg !1084

bb.x:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecjEECs4PheDXcg4wa_10polars_row.exit.i.i, %bb.v
  %.pn23 = phi { ptr, i32 } [ %eh.lpad-body, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecjEECs4PheDXcg4wa_10polars_row.exit.i.i ], [ %i.fs, %bb.v ]
  resume { ptr, i32 } %.pn23, !dbg !1084
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCs4PheDXcg4wa_10polars_row6widthsNtB5_9RowWidths9push_iterINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIB14_INtNtNtB1c_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtB7_6encode11get_encoders4_0ENCINvB3q_24striter_num_column_bytesB1R_E0EEB7_(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1085 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.03 = alloca [24 x i8], align 8           ; 5 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 11 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 2 uses
  %i.j = alloca [8 x i8], align 8                 ; 2 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !1280
  %i.l = load i64, ptr %0, align 8, !dbg !1281, !range !275, !noundef !273
  %.not = icmp eq i64 %i.l, -9223372036854775808, !dbg !1281 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b, !dbg !1282

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1283
  %i.n = load i64, ptr %i.m, align 8, !dbg !1283, !noundef !273 ; 2 uses
  %i.o = icmp ult i64 %i.n, 1152921504606846976, !dbg !1284
  tail call void @llvm.assume(i1 %i.o), !dbg !1285
  br label %bb.d, !dbg !1286

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1287
  %i.q = load i64, ptr %i.p, align 8, !dbg !1287, !noundef !273
  br label %bb.d, !dbg !1288

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ %i.q, %bb.c ], [ %i.n, %bb.b ], !dbg !1289 ; 2 uses
  store i64 %.sink, ptr %i.k, align 8, !dbg !1289
  %i.r = tail call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders4_0ENCINvB2t_24striter_num_column_bytesBW_E0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB2v_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1), !dbg !1290 ; 2 uses
  store i64 %i.r, ptr %i.j, align 8, !dbg !1291
  %i.s = icmp eq i64 %.sink, %i.r, !dbg !1292
  br i1 %i.s, label %bb.f, label %bb.e, !dbg !1292, !prof !281

bb.e:                                             ; preds = %bb.d
  call void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #14, !dbg !1293
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !1294
  br i1 %.not, label %bb.h, label %bb.g, !dbg !1295

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !1296
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1297, !noalias !1241
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !1296
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1298
  %.val = load ptr, ptr %i.t, align 8, !dbg !1298, !nonnull !273, !noundef !273 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1298
  %.val14 = load i64, ptr %i.u, align 8, !dbg !1298, !noundef !273
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %.val14, !dbg !1299
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapIBX_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders4_0ENCINvB2J_24striter_num_column_bytesB1c_E0EINtB1j_7IterMutjEEINtB5_7ZipImplBW_B4g_E3newB2L_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %.val, ptr noundef nonnull %i.v), !dbg !1300, !noalias !1242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1301, !noalias !1241
  call void @llvm.experimental.noalias.scope.decl(metadata !1243), !dbg !1302
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 40, !dbg !1303
  %.val.i = load i64, ptr %i.w, align 8, !dbg !1303, !alias.scope !1243, !noalias !1246, !noundef !273 ; 13 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 48, !dbg !1303
  %.val8.i = load i64, ptr %i.x, align 8, !dbg !1303, !alias.scope !1243, !noalias !1246, !noundef !273 ; 6 uses
  %i.y = sub i64 %.val8.i, %.val.i, !dbg !1304    ; 4 uses
  %.not.i = icmp eq i64 %.val8.i, %.val.i, !dbg !1305
  br i1 %.not.i, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtB8_3map3MapIBY_INtNtNtBc_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders4_0ENCINvB2K_24striter_num_column_bytesB1d_E0EINtB1k_7IterMutjEEINtB6_7ZipImplBX_B4h_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTjQjENCINvMs_NtB2M_6widthsNtB67_9RowWidths9push_iterBX_Es0_0E0EB2M_.exit, label %.lr.ph.i, !dbg !1306

.lr.ph.i:                                         ; preds = %bb.g
  %.val1.i.i = load ptr, ptr %i.d, align 8, !alias.scope !1248, !noalias !1246, !nonnull !273, !noundef !273 ; 9 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.val.i.i = load ptr, ptr %i.z, align 8, !alias.scope !1248, !noalias !1246, !nonnull !273, !noundef !273 ; 6 uses
  %min.iters.check = icmp ult i64 %i.y, 9, !dbg !1306
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !1306

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.aa = shl i64 %.val.i, 3, !dbg !1306
  %i.ab = getelementptr nuw i8, ptr %.val.i.i, i64 %i.aa, !dbg !1306
  %i.ac = shl i64 %.val8.i, 3, !dbg !1306
  %i.ad = getelementptr i8, ptr %.val.i.i, i64 %i.ac, !dbg !1306
  %i.ae = shl i64 %.val.i, 4, !dbg !1306
  %i.af = getelementptr nuw i8, ptr %.val1.i.i, i64 %i.ae, !dbg !1306
  %i.ag = shl i64 %.val8.i, 4, !dbg !1306
  %i.ah = getelementptr i8, ptr %.val1.i.i, i64 %i.ag, !dbg !1306
  %i.ai = getelementptr i8, ptr %i.ah, i64 -12, !dbg !1306
  %bound0 = icmp ult ptr %i.ab, %i.ai, !dbg !1306
  %bound1 = icmp ult ptr %i.af, %i.ad, !dbg !1306
  %found.conflict = and i1 %bound0, %bound1, !dbg !1306
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph, !dbg !1307

vector.ph:                                        ; preds = %vector.memcheck
  %i.aj = and i64 %i.y, 3                         ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  %i.al = select i1 %i.ak, i64 4, i64 %i.aj
  %n.vec = sub i64 %i.y, %i.al                    ; 2 uses
  br label %vector.body, !dbg !1307

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !1307 ; 5 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bo, %vector.body ]
  %vec.phi28 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bp, %vector.body ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1249), !dbg !1308
  %i.am = add i64 %index, %.val.i, !dbg !1309     ; 2 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.val1.i.i, i64 %i.am, !dbg !1310
  %i.ao = getelementptr [16 x i8], ptr %.val1.i.i, i64 %index, !dbg !1310
  %i.ap = getelementptr i8, ptr %i.ao, i64 16, !dbg !1310
  %i.aq = getelementptr [16 x i8], ptr %i.ap, i64 %.val.i, !dbg !1310
  %i.ar = getelementptr [16 x i8], ptr %.val1.i.i, i64 %index, !dbg !1310
  %i.as = getelementptr i8, ptr %i.ar, i64 32, !dbg !1310
  %i.at = getelementptr [16 x i8], ptr %i.as, i64 %.val.i, !dbg !1310
  %i.au = getelementptr [16 x i8], ptr %.val1.i.i, i64 %index, !dbg !1310
  %i.av = getelementptr i8, ptr %i.au, i64 48, !dbg !1310
  %i.aw = getelementptr [16 x i8], ptr %i.av, i64 %.val.i, !dbg !1310
  %i.ax = load i32, ptr %i.an, align 4, !dbg !1311, !alias.scope !1250, !noalias !1251, !noundef !273
  %i.ay = load i32, ptr %i.aq, align 4, !dbg !1311, !alias.scope !1250, !noalias !1251, !noundef !273
  %i.az = insertelement <2 x i32> poison, i32 %i.ax, i64 0
  %i.ba = insertelement <2 x i32> %i.az, i32 %i.ay, i64 1 ; 2 uses
  %i.bb = load i32, ptr %i.at, align 4, !dbg !1311, !alias.scope !1250, !noalias !1251, !noundef !273
  %i.bc = load i32, ptr %i.aw, align 4, !dbg !1311, !alias.scope !1250, !noalias !1251, !noundef !273
  %i.bd = insertelement <2 x i32> poison, i32 %i.bb, i64 0
  %i.be = insertelement <2 x i32> %i.bd, i32 %i.bc, i64 1 ; 2 uses
  %i.bf = zext <2 x i32> %i.ba to <2 x i64>, !dbg !1312
  %i.bg = zext <2 x i32> %i.be to <2 x i64>, !dbg !1312
  %i.bh = icmp ult <2 x i32> %i.ba, splat (i32 254), !dbg !1313
  %i.bi = icmp ult <2 x i32> %i.be, splat (i32 254), !dbg !1313
  %i.bj = select <2 x i1> %i.bh, <2 x i64> splat (i64 1), <2 x i64> splat (i64 5), !dbg !1313
  %i.bk = select <2 x i1> %i.bi, <2 x i64> splat (i64 1), <2 x i64> splat (i64 5), !dbg !1313
  %i.bl = add nuw nsw <2 x i64> %i.bj, %i.bf, !dbg !1313 ; 2 uses
  %i.bm = add nuw nsw <2 x i64> %i.bk, %i.bg, !dbg !1313 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.am, !dbg !1314 ; 3 uses
  %i.bo = add <2 x i64> %i.bl, %vec.phi, !dbg !1315 ; 2 uses
  %i.bp = add <2 x i64> %i.bm, %vec.phi28, !dbg !1315 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 16, !dbg !1316 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.bn, align 8, !dbg !1316, !alias.scope !1252, !noalias !1253
  %wide.load29 = load <2 x i64>, ptr %i.bq, align 8, !dbg !1316, !alias.scope !1252, !noalias !1253
  %i.br = add <2 x i64> %i.bl, %wide.load, !dbg !1316
  %i.bs = add <2 x i64> %i.bm, %wide.load29, !dbg !1316
  store <2 x i64> %i.br, ptr %i.bn, align 8, !dbg !1316, !alias.scope !1252, !noalias !1253
  store <2 x i64> %i.bs, ptr %i.bq, align 8, !dbg !1316, !alias.scope !1252, !noalias !1253
  %index.next = add nuw i64 %index, 4, !dbg !1307 ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec, !dbg !1306
  br i1 %i.bt, label %middle.block, label %vector.body, !dbg !1306, !llvm.loop !1164

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.bp, %i.bo, !dbg !1306
  %i.bu = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx), !dbg !1306
  br label %scalar.ph.preheader, !dbg !1306

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.sroa.0.011.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 5 uses
  %.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %i.bu, %middle.block ] ; 2 uses
  %2 = add i64 %.sroa.0.011.i.ph, %.val.i, !dbg !1306
  %i.bv = sub i64 %.val8.i, %2, !dbg !1306
  %i.bw = xor i64 %.sroa.0.011.i.ph, -1, !dbg !1306
  %i.bx = add i64 %.val8.i, %i.bw, !dbg !1306
  %xtraiter = and i64 %i.bv, 1, !dbg !1306
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !1306
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !1306

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.by = add nuw i64 %.sroa.0.011.i.ph, 1, !dbg !1307
  call void @llvm.experimental.noalias.scope.decl(metadata !1249), !dbg !1308
  %i.bz = add i64 %.sroa.0.011.i.ph, %.val.i, !dbg !1309 ; 2 uses
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %.val1.i.i, i64 %i.bz, !dbg !1310
  %.val1.i.i.i.i.i.prol = load i32, ptr %i.ca, align 4, !dbg !1311, !noalias !1251, !noundef !273 ; 2 uses
  %i.cb = zext i32 %.val1.i.i.i.i.i.prol to i64, !dbg !1312
  %i.cc = icmp ult i32 %.val1.i.i.i.i.i.prol, 254, !dbg !1313
  %.sroa.0.0.v.i.i.i.i.prol = select i1 %i.cc, i64 1, i64 5, !dbg !1313
  %.sroa.0.0.i.i.i.i.prol = add nuw nsw i64 %.sroa.0.0.v.i.i.i.i.prol, %i.cb, !dbg !1313 ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.bz, !dbg !1314 ; 2 uses
  %i.ce = add i64 %.sroa.0.0.i.i.i.i.prol, %.ph, !dbg !1315 ; 2 uses
  %i.cf = load i64, ptr %i.cd, align 8, !dbg !1316, !alias.scope !1254, !noalias !1255, !noundef !273
  %i.cg = add i64 %.sroa.0.0.i.i.i.i.prol, %i.cf, !dbg !1316
  store i64 %i.cg, ptr %i.cd, align 8, !dbg !1316, !alias.scope !1254, !noalias !1255
  br label %scalar.ph.prol.loopexit, !dbg !1306

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ce, %scalar.ph.prol ]
  %.sroa.0.011.i.unr = phi i64 [ %.sroa.0.011.i.ph, %scalar.ph.preheader ], [ %i.by, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ce, %scalar.ph.prol ]
  %i.ch = icmp eq i64 %i.bx, %.val.i, !dbg !1306
  br i1 %i.ch, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtB8_3map3MapIBY_INtNtNtBc_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders4_0ENCINvB2K_24striter_num_column_bytesB1d_E0EINtB1k_7IterMutjEEINtB6_7ZipImplBX_B4h_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTjQjENCINvMs_NtB2M_6widthsNtB67_9RowWidths9push_iterBX_Es0_0E0EB2M_.exit, label %scalar.ph.preheader.new, !dbg !1306

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i, !dbg !1306
  br label %scalar.ph, !dbg !1306

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.011.i = phi i64 [ %.sroa.0.011.i.unr, %scalar.ph.preheader.new ], [ %i.cr, %scalar.ph ] ; 3 uses
  %i.ci = phi i64 [ %.unr, %scalar.ph.preheader.new ], [ %i.cw, %scalar.ph ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1249), !dbg !1308
  %i.cj = add i64 %.sroa.0.011.i, %.val.i, !dbg !1309 ; 2 uses
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %.val1.i.i, i64 %i.cj, !dbg !1310
  %.val1.i.i.i.i.i = load i32, ptr %i.ck, align 4, !dbg !1311, !noalias !1251, !noundef !273 ; 2 uses
  %i.cl = zext i32 %.val1.i.i.i.i.i to i64, !dbg !1312
  %i.cm = icmp ult i32 %.val1.i.i.i.i.i, 254, !dbg !1313
  %.sroa.0.0.v.i.i.i.i = select i1 %i.cm, i64 1, i64 5, !dbg !1313
  %.sroa.0.0.i.i.i.i = add nuw nsw i64 %.sroa.0.0.v.i.i.i.i, %i.cl, !dbg !1313 ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.cj, !dbg !1314 ; 2 uses
  %i.co = add i64 %.sroa.0.0.i.i.i.i, %i.ci, !dbg !1315
  %i.cp = load i64, ptr %i.cn, align 8, !dbg !1316, !alias.scope !1254, !noalias !1255, !noundef !273
  %i.cq = add i64 %.sroa.0.0.i.i.i.i, %i.cp, !dbg !1316
  store i64 %i.cq, ptr %i.cn, align 8, !dbg !1316, !alias.scope !1254, !noalias !1255
  %i.cr = add nuw i64 %.sroa.0.011.i, 2, !dbg !1307 ; 2 uses
  %.reass = add i64 %.sroa.0.011.i, %invariant.op ; 2 uses
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !1310
  %.val1.i.i.i.i.i.1 = load i32, ptr %i.cs, align 4, !dbg !1311, !noalias !1256, !noundef !273 ; 2 uses
  %i.ct = zext i32 %.val1.i.i.i.i.i.1 to i64, !dbg !1312
  %i.cu = icmp ult i32 %.val1.i.i.i.i.i.1, 254, !dbg !1313
  %.sroa.0.0.v.i.i.i.i.1 = select i1 %i.cu, i64 1, i64 5, !dbg !1313
  %.sroa.0.0.i.i.i.i.1 = add nuw nsw i64 %.sroa.0.0.v.i.i.i.i.1, %i.ct, !dbg !1313 ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass, !dbg !1314 ; 2 uses
  %i.cw = add i64 %.sroa.0.0.i.i.i.i.1, %i.co, !dbg !1315 ; 2 uses
  %i.cx = load i64, ptr %i.cv, align 8, !dbg !1316, !alias.scope !1254, !noalias !1255, !noundef !273
  %i.cy = add i64 %.sroa.0.0.i.i.i.i.1, %i.cx, !dbg !1316
  store i64 %i.cy, ptr %i.cv, align 8, !dbg !1316, !alias.scope !1254, !noalias !1255
  %exitcond.not.i.1 = icmp eq i64 %i.cr, %i.y, !dbg !1305
  br i1 %exitcond.not.i.1, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtB8_3map3MapIBY_INtNtNtBc_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders4_0ENCINvB2K_24striter_num_column_bytesB1d_E0EINtB1k_7IterMutjEEINtB6_7ZipImplBX_B4h_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTjQjENCINvMs_NtB2M_6widthsNtB67_9RowWidths9push_iterBX_Es0_0E0EB2M_.exit, label %scalar.ph, !dbg !1306, !llvm.loop !1166

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtB8_3map3MapIBY_INtNtNtBc_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders4_0ENCINvB2K_24striter_num_column_bytesB1d_E0EINtB1k_7IterMutjEEINtB6_7ZipImplBX_B4h_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTjQjENCINvMs_NtB2M_6widthsNtB67_9RowWidths9push_iterBX_Es0_0E0EB2M_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.g
  %.sroa.0.0 = phi i64 [ 0, %bb.g ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.cw, %scalar.ph ], !dbg !1317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !1318
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !1319 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !dbg !1319, !noundef !273
  %i.db = add i64 %i.da, %.sroa.0.0, !dbg !1319
  store i64 %i.db, ptr %i.cz, align 8, !dbg !1319
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders4_0ENCINvB2t_24striter_num_column_bytesBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextB2v_.exit, !dbg !1320

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1257), !dbg !1321
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1258), !dbg !1322
  %i.dc = load ptr, ptr %1, align 8, !dbg !1323, !alias.scope !1259, !nonnull !273, !noundef !273 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !1324
  %i.de = load ptr, ptr %i.dd, align 8, !dbg !1324, !alias.scope !1259, !nonnull !273, !noundef !273
  %i.df = icmp eq ptr %i.dc, %i.de, !dbg !1325
  br i1 %i.df, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders4_0ENCINvB2t_24striter_num_column_bytesBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextB2v_.exit, label %bb.i, !dbg !1326

bb.i:                                             ; preds = %bb.h
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 16, !dbg !1327
  store ptr %i.dg, ptr %1, align 8, !dbg !1328, !alias.scope !1259
  %.val.i.i15 = load i32, ptr %i.dc, align 4, !dbg !1329, !noalias !1260, !noundef !273 ; 2 uses
  %i.dh = zext i32 %.val.i.i15 to i64, !dbg !1330
  %i.di = icmp ult i32 %.val.i.i15, 254, !dbg !1331
  %.sroa.0.0.v.i.i = select i1 %i.di, i64 1, i64 5, !dbg !1331
  %.sroa.0.0.i3.i = add nuw nsw i64 %.sroa.0.0.v.i.i, %i.dh, !dbg !1331 ; 4 uses
  store i64 %.sroa.0.0.i3.i, ptr %i.i, align 8, !dbg !1332
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !1333
  store ptr %1, ptr %i.h, align 8, !dbg !1334
  %i.dj = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !1334 ; 2 uses
  store i64 0, ptr %i.dj, align 8, !dbg !1334
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !1335
  call void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders4_0ENCINvB2u_24striter_num_column_bytesBX_E0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvXs_NtB8_9enumerateINtB4S_9EnumeratepEB40_8try_fold9enumeratejuINtNtNtBc_3ops12control_flow11ControlFlowTjjEENCINvNvB40_4find5checkB6u_NCINvMs_NtB2w_6widthsNtB77_9RowWidths9push_iterBN_E0E0E0B5P_EB2w_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dj), !dbg !1336
  %i.dk = load i64, ptr %i.c, align 8, !dbg !1337, !range !357, !noundef !273
  %i.dl = trunc nuw i64 %i.dk to i1, !dbg !1338
  br i1 %i.dl, label %bb.j, label %bb.k, !dbg !1338

bb.j:                                             ; preds = %bb.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !1339
  %i.dn = load i64, ptr %i.dm, align 8, !dbg !1339, !noundef !273
  %i.do = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !1339
  %i.dp = load i64, ptr %i.do, align 8, !dbg !1339, !noundef !273 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !1341
  %i.dq = add i64 %i.dn, 1, !dbg !1342            ; 2 uses
  %i.dr = mul i64 %i.dq, %.sroa.0.0.i3.i, !dbg !1342
  %i.ds = add i64 %i.dr, %i.dp, !dbg !1342
  store i64 %i.ds, ptr %i.g, align 8, !dbg !1342
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !1343
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1344 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !dbg !1344, !noundef !273 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1345
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.du, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !dbg !1345
  %i.dv = load i64, ptr %i.b, align 8, !dbg !1345, !range !357, !noundef !273
  %i.dw = trunc nuw i64 %i.dv to i1, !dbg !1346
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !1347
  %i.dy = load i64, ptr %i.dx, align 8, !dbg !1347, !range !275, !noundef !273 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !1347 ; 2 uses
  br i1 %i.dw, label %bb.l, label %bb.m, !dbg !1346, !prof !365

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1340
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1348 ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !dbg !1348, !noundef !273
  %i.ec = add i64 %i.eb, %.sroa.0.0.i3.i, !dbg !1348
  store i64 %i.ec, ptr %i.ea, align 8, !dbg !1348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !1349
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders4_0ENCINvB2t_24striter_num_column_bytesBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextB2v_.exit, !dbg !1350

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders4_0ENCINvB2t_24striter_num_column_bytesBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextB2v_.exit: ; preds = %bb.h, %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtB8_3map3MapIBY_INtNtNtBc_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders4_0ENCINvB2K_24striter_num_column_bytesB1d_E0EINtB1k_7IterMutjEEINtB6_7ZipImplBX_B4h_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTjQjENCINvMs_NtB2M_6widthsNtB67_9RowWidths9push_iterBX_Es0_0E0EB2M_.exit, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4PheDXcg4wa_10polars_row6widths9RowWidthsEBK_.exit, %bb.k
  ret void, !dbg !1351

bb.l:                                             ; preds = %bb.j
  %i.ed = load i64, ptr %i.dz, align 8, !dbg !1352
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.dy, i64 %i.ed) #14, !dbg !1353
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.ee = load ptr, ptr %i.dz, align 8, !dbg !1354, !nonnull !273, !noundef !273
  %i.ef = icmp ule i64 %i.du, %i.dy, !dbg !1355
  call void @llvm.assume(i1 %i.ef), !dbg !1356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1357
  store i64 %i.dy, ptr %i.f, align 8, !dbg !1358
  %i.eg = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !1358 ; 2 uses
  store ptr %i.ee, ptr %i.eg, align 8, !dbg !1358
  %i.eh = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !1358 ; 3 uses
  store i64 0, ptr %i.eh, align 8, !dbg !1358
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1359 ; 3 uses
  %i.ej = load i64, ptr %i.ei, align 8, !dbg !1359, !noundef !273 ; 2 uses
  %i.ek = add i64 %i.ej, %.sroa.0.0.i3.i, !dbg !1359
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecjE6resizeCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.dq, i64 noundef %i.ek)
          to label %bb.n unwind label %bb.v, !dbg !1360

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecjEECs4PheDXcg4wa_10polars_row.exit.i.i: ; preds = %bb.s, %bb.u
  %eh.lpad-body = phi { ptr, i32 } [ %i.fd, %bb.u ], [ %i.fb, %bb.s ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03, i64 24, i1 false), !dbg !1361
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !1361
  store i64 %i.ey, ptr %.sroa.54.0..sroa_idx, align 8, !dbg !1361
  br label %bb.x, !dbg !1362

bb.n:                                             ; preds = %bb.m
  %i.el = add i64 %i.ej, %i.dp, !dbg !1363
  %i.em = load i64, ptr %i.eh, align 8, !dbg !1364, !alias.scope !1274, !noundef !273 ; 3 uses
  %i.en = load i64, ptr %i.f, align 8, !dbg !1365, !range !368, !alias.scope !1274, !noundef !273
  %i.eo = icmp eq i64 %i.em, %i.en, !dbg !1366
  br i1 %i.eo, label %bb.o, label %bb.p, !dbg !1366

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs39HECPMKlmJ_7ndarray(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.p unwind label %bb.v, !dbg !1367

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ep = load ptr, ptr %i.eg, align 8, !dbg !1368, !alias.scope !1274, !nonnull !273, !noundef !273
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.em, !dbg !1369
  store i64 %i.el, ptr %i.eq, align 8, !dbg !1370
  %i.er = add i64 %i.em, 1, !dbg !1371
  store i64 %i.er, ptr %i.eh, align 8, !dbg !1371, !alias.scope !1274
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !1372
  %i.es = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !1373
  store ptr %i.g, ptr %i.es, align 8, !dbg !1373, !alias.scope !1276, !noalias !1277
  %i.et = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !1373
  store ptr %i.ei, ptr %i.et, align 8, !dbg !1373, !alias.scope !1276, !noalias !1277
  invoke void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecjEINtB4_10SpecExtendjINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIB1f_IB1f_INtNtNtB1n_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders4_0ENCINvB3G_24striter_num_column_bytesB27_E0ENCINvMs_NtB3I_6widthsNtB5l_9RowWidths9push_iterB22_Es_0EE11spec_extendB3I_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.e)
          to label %bb.q unwind label %bb.v, !dbg !1374

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03), !dbg !1375
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !1376
  %i.eu = load i64, ptr %i.dt, align 8, !dbg !1377, !noundef !273
  %i.ev = load i64, ptr %i.ei, align 8, !dbg !1378, !noundef !273
  %i.ew = mul i64 %i.ev, %i.eu, !dbg !1377
  %i.ex = load i64, ptr %i.g, align 8, !dbg !1379, !noundef !273
  %i.ey = add i64 %i.ew, %i.ex, !dbg !1377        ; 2 uses
  %i.ez = load i64, ptr %0, align 8, !dbg !1380, !range !275, !alias.scope !1279, !noundef !273
  %i.fa = icmp eq i64 %i.ez, -9223372036854775808, !dbg !1380
  br i1 %i.fa, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4PheDXcg4wa_10polars_row6widths9RowWidthsEBK_.exit, label %bb.r, !dbg !1380

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs4PheDXcg4wa_10polars_row.exit.i unwind label %bb.s, !dbg !1381

bb.s:                                             ; preds = %bb.r
  %i.fb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecjEECs4PheDXcg4wa_10polars_row.exit.i.i unwind label %bb.t, !dbg !1382

bb.t:                                             ; preds = %bb.s
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #15, !dbg !1381
  unreachable, !dbg !1381

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs4PheDXcg4wa_10polars_row.exit.i: ; preds = %bb.r
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4PheDXcg4wa_10polars_row6widths9RowWidthsEBK_.exit unwind label %bb.u, !dbg !1383

bb.u:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs4PheDXcg4wa_10polars_row.exit.i
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecjEECs4PheDXcg4wa_10polars_row.exit.i.i, !dbg !1361

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4PheDXcg4wa_10polars_row6widths9RowWidthsEBK_.exit: ; preds = %bb.q, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs4PheDXcg4wa_10polars_row.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03, i64 24, i1 false), !dbg !1361
  %.sroa.54.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !1361
  store i64 %i.ey, ptr %.sroa.54.0..sroa_idx5, align 8, !dbg !1361
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03), !dbg !1384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !1362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !1385
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !1349
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders4_0ENCINvB2t_24striter_num_column_bytesBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextB2v_.exit, !dbg !1386

bb.v:                                             ; preds = %bb.o, %bb.p, %bb.m
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(24) %i.f) #16
          to label %bb.x unwind label %bb.w, !dbg !1362

bb.w:                                             ; preds = %bb.v
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #15, !dbg !1387
  unreachable, !dbg !1387

bb.x:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecjEECs4PheDXcg4wa_10polars_row.exit.i.i, %bb.v
  %.pn23 = phi { ptr, i32 } [ %eh.lpad-body, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecjEECs4PheDXcg4wa_10polars_row.exit.i.i ], [ %i.fe, %bb.v ]
  resume { ptr, i32 } %.pn23, !dbg !1387
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCs4PheDXcg4wa_10polars_row6widthsNtB5_9RowWidths9push_iterINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIB14_INtNtNtB1c_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtB7_6encode11get_encoders4_0ENCINvB3q_24striter_num_column_bytesB1R_Es0_0EEB7_(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1388 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.03 = alloca [24 x i8], align 8           ; 5 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 11 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 2 uses
  %i.j = alloca [8 x i8], align 8                 ; 2 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !1583
  %i.l = load i64, ptr %0, align 8, !dbg !1584, !range !275, !noundef !273
  %.not = icmp eq i64 %i.l, -9223372036854775808, !dbg !1584 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b, !dbg !1585

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1586
  %i.n = load i64, ptr %i.m, align 8, !dbg !1586, !noundef !273 ; 2 uses
  %i.o = icmp ult i64 %i.n, 1152921504606846976, !dbg !1587
  tail call void @llvm.assume(i1 %i.o), !dbg !1588
  br label %bb.d, !dbg !1589

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1590
  %i.q = load i64, ptr %i.p, align 8, !dbg !1590, !noundef !273
  br label %bb.d, !dbg !1591

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ %i.q, %bb.c ], [ %i.n, %bb.b ], !dbg !1592 ; 2 uses
  store i64 %.sink, ptr %i.k, align 8, !dbg !1592
  %i.r = tail call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders4_0ENCINvB2t_24striter_num_column_bytesBW_Es0_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB2v_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1), !dbg !1593 ; 2 uses
  store i64 %i.r, ptr %i.j, align 8, !dbg !1594
  %i.s = icmp eq i64 %.sink, %i.r, !dbg !1595
  br i1 %i.s, label %bb.f, label %bb.e, !dbg !1595, !prof !281

bb.e:                                             ; preds = %bb.d
  call void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #14, !dbg !1596
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !1597
  br i1 %.not, label %bb.h, label %bb.g, !dbg !1598

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !1599
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1600, !noalias !1544
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !1599
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1601
  %.val = load ptr, ptr %i.t, align 8, !dbg !1601, !nonnull !273, !noundef !273 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1601
  %.val14 = load i64, ptr %i.u, align 8, !dbg !1601, !noundef !273
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %.val14, !dbg !1602
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapIBX_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders4_0ENCINvB2J_24striter_num_column_bytesB1c_Es0_0EINtB1j_7IterMutjEEINtB5_7ZipImplBW_B4j_E3newB2L_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %.val, ptr noundef nonnull %i.v), !dbg !1603, !noalias !1545
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1604, !noalias !1544
  call void @llvm.experimental.noalias.scope.decl(metadata !1546), !dbg !1605
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 40, !dbg !1606
  %.val.i = load i64, ptr %i.w, align 8, !dbg !1606, !alias.scope !1546, !noalias !1549, !noundef !273 ; 13 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 48, !dbg !1606
  %.val8.i = load i64, ptr %i.x, align 8, !dbg !1606, !alias.scope !1546, !noalias !1549, !noundef !273 ; 6 uses
  %i.y = sub i64 %.val8.i, %.val.i, !dbg !1607    ; 4 uses
  %.not.i = icmp eq i64 %.val8.i, %.val.i, !dbg !1608
  br i1 %.not.i, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtB8_3map3MapIBY_INtNtNtBc_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders4_0ENCINvB2K_24striter_num_column_bytesB1d_Es0_0EINtB1k_7IterMutjEEINtB6_7ZipImplBX_B4k_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTjQjENCINvMs_NtB2M_6widthsNtB6a_9RowWidths9push_iterBX_Es0_0E0EB2M_.exit, label %.lr.ph.i, !dbg !1609

.lr.ph.i:                                         ; preds = %bb.g
  %.val1.i.i = load ptr, ptr %i.d, align 8, !alias.scope !1551, !noalias !1549, !nonnull !273, !noundef !273 ; 9 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.val.i.i = load ptr, ptr %i.z, align 8, !alias.scope !1551, !noalias !1549, !nonnull !273, !noundef !273 ; 6 uses
  %min.iters.check = icmp ult i64 %i.y, 11, !dbg !1609
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !1609

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.aa = shl i64 %.val.i, 3, !dbg !1609
  %i.ab = getelementptr nuw i8, ptr %.val.i.i, i64 %i.aa, !dbg !1609
  %i.ac = shl i64 %.val8.i, 3, !dbg !1609
  %i.ad = getelementptr i8, ptr %.val.i.i, i64 %i.ac, !dbg !1609
  %i.ae = shl i64 %.val.i, 4, !dbg !1609
  %i.af = getelementptr nuw i8, ptr %.val1.i.i, i64 %i.ae, !dbg !1609
  %i.ag = shl i64 %.val8.i, 4, !dbg !1609
  %i.ah = getelementptr i8, ptr %.val1.i.i, i64 %i.ag, !dbg !1609
  %i.ai = getelementptr i8, ptr %i.ah, i64 -12, !dbg !1609
  %bound0 = icmp ult ptr %i.ab, %i.ai, !dbg !1609
  %bound1 = icmp ult ptr %i.af, %i.ad, !dbg !1609
  %found.conflict = and i1 %bound0, %bound1, !dbg !1609
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph, !dbg !1610

vector.ph:                                        ; preds = %vector.memcheck
  %i.aj = and i64 %i.y, 3                         ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  %i.al = select i1 %i.ak, i64 4, i64 %i.aj
  %n.vec = sub i64 %i.y, %i.al                    ; 2 uses
  br label %vector.body, !dbg !1610

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !1610 ; 5 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bk, %vector.body ]
  %vec.phi28 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bl, %vector.body ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1552), !dbg !1611
  %i.am = add i64 %index, %.val.i, !dbg !1612     ; 2 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.val1.i.i, i64 %i.am, !dbg !1613
  %i.ao = getelementptr [16 x i8], ptr %.val1.i.i, i64 %index, !dbg !1613
  %i.ap = getelementptr i8, ptr %i.ao, i64 16, !dbg !1613
  %i.aq = getelementptr [16 x i8], ptr %i.ap, i64 %.val.i, !dbg !1613
  %i.ar = getelementptr [16 x i8], ptr %.val1.i.i, i64 %index, !dbg !1613
  %i.as = getelementptr i8, ptr %i.ar, i64 32, !dbg !1613
  %i.at = getelementptr [16 x i8], ptr %i.as, i64 %.val.i, !dbg !1613
  %i.au = getelementptr [16 x i8], ptr %.val1.i.i, i64 %index, !dbg !1613
  %i.av = getelementptr i8, ptr %i.au, i64 48, !dbg !1613
  %i.aw = getelementptr [16 x i8], ptr %i.av, i64 %.val.i, !dbg !1613
  %i.ax = load i32, ptr %i.an, align 4, !dbg !1614, !alias.scope !1553, !noalias !1554, !noundef !273
  %i.ay = load i32, ptr %i.aq, align 4, !dbg !1614, !alias.scope !1553, !noalias !1554, !noundef !273
  %i.az = insertelement <2 x i32> poison, i32 %i.ax, i64 0
  %i.ba = insertelement <2 x i32> %i.az, i32 %i.ay, i64 1
  %i.bb = load i32, ptr %i.at, align 4, !dbg !1614, !alias.scope !1553, !noalias !1554, !noundef !273
  %i.bc = load i32, ptr %i.aw, align 4, !dbg !1614, !alias.scope !1553, !noalias !1554, !noundef !273
  %i.bd = insertelement <2 x i32> poison, i32 %i.bb, i64 0
  %i.be = insertelement <2 x i32> %i.bd, i32 %i.bc, i64 1
  %i.bf = zext <2 x i32> %i.ba to <2 x i64>, !dbg !1615
  %i.bg = zext <2 x i32> %i.be to <2 x i64>, !dbg !1615
  %i.bh = add nuw nsw <2 x i64> %i.bf, splat (i64 1), !dbg !1616 ; 2 uses
  %i.bi = add nuw nsw <2 x i64> %i.bg, splat (i64 1), !dbg !1616 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.am, !dbg !1617 ; 3 uses
  %i.bk = add <2 x i64> %i.bh, %vec.phi, !dbg !1618 ; 2 uses
  %i.bl = add <2 x i64> %i.bi, %vec.phi28, !dbg !1618 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 16, !dbg !1619 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.bj, align 8, !dbg !1619, !alias.scope !1555, !noalias !1556
  %wide.load29 = load <2 x i64>, ptr %i.bm, align 8, !dbg !1619, !alias.scope !1555, !noalias !1556
  %i.bn = add <2 x i64> %i.bh, %wide.load, !dbg !1619
  %i.bo = add <2 x i64> %i.bi, %wide.load29, !dbg !1619
  store <2 x i64> %i.bn, ptr %i.bj, align 8, !dbg !1619, !alias.scope !1555, !noalias !1556
  store <2 x i64> %i.bo, ptr %i.bm, align 8, !dbg !1619, !alias.scope !1555, !noalias !1556
  %index.next = add nuw i64 %index, 4, !dbg !1610 ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec, !dbg !1609
  br i1 %i.bp, label %middle.block, label %vector.body, !dbg !1609, !llvm.loop !1467

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.bl, %i.bk, !dbg !1609
  %i.bq = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx), !dbg !1609
  br label %scalar.ph.preheader, !dbg !1609

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.sroa.0.011.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 5 uses
  %.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %i.bq, %middle.block ] ; 2 uses
  %2 = add i64 %.sroa.0.011.i.ph, %.val.i, !dbg !1609
  %i.br = sub i64 %.val8.i, %2, !dbg !1609
  %i.bs = xor i64 %.sroa.0.011.i.ph, -1, !dbg !1609
  %i.bt = add i64 %.val8.i, %i.bs, !dbg !1609
  %xtraiter = and i64 %i.br, 1, !dbg !1609
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !1609
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !1609

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bu = add nuw i64 %.sroa.0.011.i.ph, 1, !dbg !1610
  call void @llvm.experimental.noalias.scope.decl(metadata !1552), !dbg !1611
  %i.bv = add i64 %.sroa.0.011.i.ph, %.val.i, !dbg !1612 ; 2 uses
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %.val1.i.i, i64 %i.bv, !dbg !1613
  %.val1.i.i.i.i.i.prol = load i32, ptr %i.bw, align 4, !dbg !1614, !noalias !1554, !noundef !273
  %i.bx = zext i32 %.val1.i.i.i.i.i.prol to i64, !dbg !1615
  %i.by = add nuw nsw i64 %i.bx, 1, !dbg !1616    ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.bv, !dbg !1617 ; 2 uses
  %i.ca = add i64 %i.by, %.ph, !dbg !1618         ; 2 uses
  %i.cb = load i64, ptr %i.bz, align 8, !dbg !1619, !alias.scope !1557, !noalias !1558, !noundef !273
  %i.cc = add i64 %i.by, %i.cb, !dbg !1619
  store i64 %i.cc, ptr %i.bz, align 8, !dbg !1619, !alias.scope !1557, !noalias !1558
  br label %scalar.ph.prol.loopexit, !dbg !1609

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ca, %scalar.ph.prol ]
  %.sroa.0.011.i.unr = phi i64 [ %.sroa.0.011.i.ph, %scalar.ph.preheader ], [ %i.bu, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ca, %scalar.ph.prol ]
  %i.cd = icmp eq i64 %i.bt, %.val.i, !dbg !1609
  br i1 %i.cd, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtB8_3map3MapIBY_INtNtNtBc_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders4_0ENCINvB2K_24striter_num_column_bytesB1d_Es0_0EINtB1k_7IterMutjEEINtB6_7ZipImplBX_B4k_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTjQjENCINvMs_NtB2M_6widthsNtB6a_9RowWidths9push_iterBX_Es0_0E0EB2M_.exit, label %scalar.ph.preheader.new, !dbg !1609

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i, !dbg !1609
  br label %scalar.ph, !dbg !1609

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.011.i = phi i64 [ %.sroa.0.011.i.unr, %scalar.ph.preheader.new ], [ %i.cn, %scalar.ph ] ; 3 uses
  %i.ce = phi i64 [ %.unr, %scalar.ph.preheader.new ], [ %i.cs, %scalar.ph ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1552), !dbg !1611
  %i.cf = add i64 %.sroa.0.011.i, %.val.i, !dbg !1612 ; 2 uses
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %.val1.i.i, i64 %i.cf, !dbg !1613
  %.val1.i.i.i.i.i = load i32, ptr %i.cg, align 4, !dbg !1614, !noalias !1554, !noundef !273
  %i.ch = zext i32 %.val1.i.i.i.i.i to i64, !dbg !1615
  %i.ci = add nuw nsw i64 %i.ch, 1, !dbg !1616    ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.cf, !dbg !1617 ; 2 uses
  %i.ck = add i64 %i.ci, %i.ce, !dbg !1618
  %i.cl = load i64, ptr %i.cj, align 8, !dbg !1619, !alias.scope !1557, !noalias !1558, !noundef !273
  %i.cm = add i64 %i.ci, %i.cl, !dbg !1619
  store i64 %i.cm, ptr %i.cj, align 8, !dbg !1619, !alias.scope !1557, !noalias !1558
  %i.cn = add nuw i64 %.sroa.0.011.i, 2, !dbg !1610 ; 2 uses
  %.reass = add i64 %.sroa.0.011.i, %invariant.op ; 2 uses
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !1613
  %.val1.i.i.i.i.i.1 = load i32, ptr %i.co, align 4, !dbg !1614, !noalias !1559, !noundef !273
  %i.cp = zext i32 %.val1.i.i.i.i.i.1 to i64, !dbg !1615
  %i.cq = add nuw nsw i64 %i.cp, 1, !dbg !1616    ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass, !dbg !1617 ; 2 uses
  %i.cs = add i64 %i.cq, %i.ck, !dbg !1618        ; 2 uses
  %i.ct = load i64, ptr %i.cr, align 8, !dbg !1619, !alias.scope !1557, !noalias !1558, !noundef !273
  %i.cu = add i64 %i.cq, %i.ct, !dbg !1619
  store i64 %i.cu, ptr %i.cr, align 8, !dbg !1619, !alias.scope !1557, !noalias !1558
  %exitcond.not.i.1 = icmp eq i64 %i.cn, %i.y, !dbg !1608
  br i1 %exitcond.not.i.1, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtB8_3map3MapIBY_INtNtNtBc_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders4_0ENCINvB2K_24striter_num_column_bytesB1d_Es0_0EINtB1k_7IterMutjEEINtB6_7ZipImplBX_B4k_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTjQjENCINvMs_NtB2M_6widthsNtB6a_9RowWidths9push_iterBX_Es0_0E0EB2M_.exit, label %scalar.ph, !dbg !1609, !llvm.loop !1469

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtB8_3map3MapIBY_INtNtNtBc_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders4_0ENCINvB2K_24striter_num_column_bytesB1d_Es0_0EINtB1k_7IterMutjEEINtB6_7ZipImplBX_B4k_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTjQjENCINvMs_NtB2M_6widthsNtB6a_9RowWidths9push_iterBX_Es0_0E0EB2M_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.g
  %.sroa.0.0 = phi i64 [ 0, %bb.g ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.cs, %scalar.ph ], !dbg !1620
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !1621
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !1622 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !dbg !1622, !noundef !273
  %i.cx = add i64 %i.cw, %.sroa.0.0, !dbg !1622
  store i64 %i.cx, ptr %i.cv, align 8, !dbg !1622
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders4_0ENCINvB2t_24striter_num_column_bytesBW_Es0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2v_.exit, !dbg !1623

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1560), !dbg !1624
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1561), !dbg !1625
  %i.cy = load ptr, ptr %1, align 8, !dbg !1626, !alias.scope !1562, !nonnull !273, !noundef !273 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !1627
  %i.da = load ptr, ptr %i.cz, align 8, !dbg !1627, !alias.scope !1562, !nonnull !273, !noundef !273
  %i.db = icmp eq ptr %i.cy, %i.da, !dbg !1628
  br i1 %i.db, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders4_0ENCINvB2t_24striter_num_column_bytesBW_Es0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2v_.exit, label %bb.i, !dbg !1629

bb.i:                                             ; preds = %bb.h
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 16, !dbg !1630
  store ptr %i.dc, ptr %1, align 8, !dbg !1631, !alias.scope !1562
  %.val.i.i15 = load i32, ptr %i.cy, align 4, !dbg !1632, !noalias !1563, !noundef !273
  %i.dd = zext i32 %.val.i.i15 to i64, !dbg !1633
  %i.de = add nuw nsw i64 %i.dd, 1, !dbg !1634    ; 4 uses
  store i64 %i.de, ptr %i.i, align 8, !dbg !1635
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !1636
  store ptr %1, ptr %i.h, align 8, !dbg !1637
  %i.df = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !1637 ; 2 uses
  store i64 0, ptr %i.df, align 8, !dbg !1637
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !1638
  call void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders4_0ENCINvB2u_24striter_num_column_bytesBX_Es0_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvXs_NtB8_9enumerateINtB4V_9EnumeratepEB43_8try_fold9enumeratejuINtNtNtBc_3ops12control_flow11ControlFlowTjjEENCINvNvB43_4find5checkB6x_NCINvMs_NtB2w_6widthsNtB7a_9RowWidths9push_iterBN_E0E0E0B5S_EB2w_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.df), !dbg !1639
  %i.dg = load i64, ptr %i.c, align 8, !dbg !1640, !range !357, !noundef !273
  %i.dh = trunc nuw i64 %i.dg to i1, !dbg !1641
  br i1 %i.dh, label %bb.j, label %bb.k, !dbg !1641

bb.j:                                             ; preds = %bb.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !1642
  %i.dj = load i64, ptr %i.di, align 8, !dbg !1642, !noundef !273
  %i.dk = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !1642
  %i.dl = load i64, ptr %i.dk, align 8, !dbg !1642, !noundef !273 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1643
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !1644
  %i.dm = add i64 %i.dj, 1, !dbg !1645            ; 2 uses
  %i.dn = mul i64 %i.dm, %i.de, !dbg !1645
  %i.do = add i64 %i.dn, %i.dl, !dbg !1645
  store i64 %i.do, ptr %i.g, align 8, !dbg !1645
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !1646
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1647 ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !dbg !1647, !noundef !273 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1648
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.dq, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !dbg !1648
  %i.dr = load i64, ptr %i.b, align 8, !dbg !1648, !range !357, !noundef !273
  %i.ds = trunc nuw i64 %i.dr to i1, !dbg !1649
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !1650
  %i.du = load i64, ptr %i.dt, align 8, !dbg !1650, !range !275, !noundef !273 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !1650 ; 2 uses
  br i1 %i.ds, label %bb.l, label %bb.m, !dbg !1649, !prof !365

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1643
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1651 ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !dbg !1651, !noundef !273
  %i.dy = add i64 %i.dx, %i.de, !dbg !1651
  store i64 %i.dy, ptr %i.dw, align 8, !dbg !1651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !1652
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders4_0ENCINvB2t_24striter_num_column_bytesBW_Es0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2v_.exit, !dbg !1653

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders4_0ENCINvB2t_24striter_num_column_bytesBW_Es0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2v_.exit: ; preds = %bb.h, %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtB8_3map3MapIBY_INtNtNtBc_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders4_0ENCINvB2K_24striter_num_column_bytesB1d_Es0_0EINtB1k_7IterMutjEEINtB6_7ZipImplBX_B4k_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTjQjENCINvMs_NtB2M_6widthsNtB6a_9RowWidths9push_iterBX_Es0_0E0EB2M_.exit, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4PheDXcg4wa_10polars_row6widths9RowWidthsEBK_.exit, %bb.k
  ret void, !dbg !1654

bb.l:                                             ; preds = %bb.j
  %i.dz = load i64, ptr %i.dv, align 8, !dbg !1655
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.du, i64 %i.dz) #14, !dbg !1656
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.ea = load ptr, ptr %i.dv, align 8, !dbg !1657, !nonnull !273, !noundef !273
  %i.eb = icmp ule i64 %i.dq, %i.du, !dbg !1658
  call void @llvm.assume(i1 %i.eb), !dbg !1659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1660
  store i64 %i.du, ptr %i.f, align 8, !dbg !1661
  %i.ec = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !1661 ; 2 uses
  store ptr %i.ea, ptr %i.ec, align 8, !dbg !1661
  %i.ed = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !1661 ; 3 uses
  store i64 0, ptr %i.ed, align 8, !dbg !1661
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1662 ; 3 uses
  %i.ef = load i64, ptr %i.ee, align 8, !dbg !1662, !noundef !273 ; 2 uses
  %i.eg = add i64 %i.ef, %i.de, !dbg !1662
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecjE6resizeCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.dm, i64 noundef %i.eg)
          to label %bb.n unwind label %bb.v, !dbg !1663

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecjEECs4PheDXcg4wa_10polars_row.exit.i.i: ; preds = %bb.s, %bb.u
  %eh.lpad-body = phi { ptr, i32 } [ %i.ez, %bb.u ], [ %i.ex, %bb.s ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03, i64 24, i1 false), !dbg !1664
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !1664
  store i64 %i.eu, ptr %.sroa.54.0..sroa_idx, align 8, !dbg !1664
  br label %bb.x, !dbg !1665

bb.n:                                             ; preds = %bb.m
  %i.eh = add i64 %i.ef, %i.dl, !dbg !1666
  %i.ei = load i64, ptr %i.ed, align 8, !dbg !1667, !alias.scope !1577, !noundef !273 ; 3 uses
  %i.ej = load i64, ptr %i.f, align 8, !dbg !1668, !range !368, !alias.scope !1577, !noundef !273
  %i.ek = icmp eq i64 %i.ei, %i.ej, !dbg !1669
  br i1 %i.ek, label %bb.o, label %bb.p, !dbg !1669

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs39HECPMKlmJ_7ndarray(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.p unwind label %bb.v, !dbg !1670

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.el = load ptr, ptr %i.ec, align 8, !dbg !1671, !alias.scope !1577, !nonnull !273, !noundef !273
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.ei, !dbg !1672
  store i64 %i.eh, ptr %i.em, align 8, !dbg !1673
  %i.en = add i64 %i.ei, 1, !dbg !1674
  store i64 %i.en, ptr %i.ed, align 8, !dbg !1674, !alias.scope !1577
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !1675
  %i.eo = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !1676
  store ptr %i.g, ptr %i.eo, align 8, !dbg !1676, !alias.scope !1579, !noalias !1580
  %i.ep = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !1676
  store ptr %i.ee, ptr %i.ep, align 8, !dbg !1676, !alias.scope !1579, !noalias !1580
  invoke void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecjEINtB4_10SpecExtendjINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIB1f_IB1f_INtNtNtB1n_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoders4_0ENCINvB3G_24striter_num_column_bytesB27_Es0_0ENCINvMs_NtB3I_6widthsNtB5o_9RowWidths9push_iterB22_Es_0EE11spec_extendB3I_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.e)
          to label %bb.q unwind label %bb.v, !dbg !1677

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03), !dbg !1678
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !1679
  %i.eq = load i64, ptr %i.dp, align 8, !dbg !1680, !noundef !273
  %i.er = load i64, ptr %i.ee, align 8, !dbg !1681, !noundef !273
  %i.es = mul i64 %i.er, %i.eq, !dbg !1680
  %i.et = load i64, ptr %i.g, align 8, !dbg !1682, !noundef !273
  %i.eu = add i64 %i.es, %i.et, !dbg !1680        ; 2 uses
  %i.ev = load i64, ptr %0, align 8, !dbg !1683, !range !275, !alias.scope !1582, !noundef !273
  %i.ew = icmp eq i64 %i.ev, -9223372036854775808, !dbg !1683
  br i1 %i.ew, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4PheDXcg4wa_10polars_row6widths9RowWidthsEBK_.exit, label %bb.r, !dbg !1683

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs4PheDXcg4wa_10polars_row.exit.i unwind label %bb.s, !dbg !1684

bb.s:                                             ; preds = %bb.r
end_hunk_0
begin_hunk_1_@_RNvMs_NtCs4PheDXcg4wa_10polars_row6widthsNtB4_9RowWidths4push:bb.a
  %i.l = add i64 %.idx.i, -8, !dbg !14643         ; 2 uses
  %i.m = lshr exact i64 %i.l, 3, !dbg !14643
  %i.n = add nuw nsw i64 %i.m, 1, !dbg !14643     ; 2 uses
  %min.iters.check90 = icmp ult i64 %i.l, 24, !dbg !14643
  br i1 %min.iters.check90, label %.lr.ph.i.i.preheader101, label %vector.ph91, !dbg !14643

vector.ph91:                                      ; preds = %.lr.ph.i.i.preheader
  %n.vec92 = and i64 %i.n, 4611686018427387900    ; 3 uses
  %i.o = shl i64 %n.vec92, 3
  %i.p = getelementptr i8, ptr %i.i, i64 %i.o
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.g, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body93, !dbg !14643

vector.body93:                                    ; preds = %vector.body93, %vector.ph91
  %index94 = phi i64 [ 0, %vector.ph91 ], [ %index.next97, %vector.body93 ] ; 2 uses
  %i.q = shl i64 %index94, 3
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.q ; 3 uses
  %i.r = getelementptr i8, ptr %next.gep, i64 16, !dbg !14644 ; 2 uses
  %wide.load95 = load <2 x i64>, ptr %next.gep, align 8, !dbg !14644, !alias.scope !14568, !noalias !14569
  %wide.load96 = load <2 x i64>, ptr %i.r, align 8, !dbg !14644, !alias.scope !14568, !noalias !14569
  %i.s = add <2 x i64> %wide.load95, %broadcast.splat, !dbg !14644
  %i.t = add <2 x i64> %wide.load96, %broadcast.splat, !dbg !14644
  store <2 x i64> %i.s, ptr %next.gep, align 8, !dbg !14644, !alias.scope !14568, !noalias !14569
  store <2 x i64> %i.t, ptr %i.r, align 8, !dbg !14644, !alias.scope !14568, !noalias !14569
  %index.next97 = add nuw i64 %index94, 4         ; 2 uses
  %i.u = icmp eq i64 %index.next97, %n.vec92, !dbg !14643
  br i1 %i.u, label %middle.block98, label %vector.body93, !dbg !14643, !llvm.loop !14462

middle.block98:                                   ; preds = %vector.body93
  %cmp.n99 = icmp eq i64 %i.n, %n.vec92, !dbg !14643
  br i1 %cmp.n99, label %.loopexit, label %.lr.ph.i.i.preheader101, !dbg !14643

.lr.ph.i.i.preheader101:                          ; preds = %.lr.ph.i.i.preheader, %middle.block98
  %.sroa.0.03.i.i.ph = phi ptr [ %i.i, %.lr.ph.i.i.preheader ], [ %i.p, %middle.block98 ]
  br label %.lr.ph.i.i, !dbg !14643

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader101, %.lr.ph.i.i
  %.sroa.0.03.i.i = phi ptr [ %i.x, %.lr.ph.i.i ], [ %.sroa.0.03.i.i.ph, %.lr.ph.i.i.preheader101 ] ; 3 uses
  %i.v = load i64, ptr %.sroa.0.03.i.i, align 8, !dbg !14644, !alias.scope !14568, !noalias !14569, !noundef !273
  %i.w = add i64 %i.v, %i.g, !dbg !14644
  store i64 %i.w, ptr %.sroa.0.03.i.i, align 8, !dbg !14644, !alias.scope !14568, !noalias !14569
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i, i64 8, !dbg !14645 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.j, !dbg !14642
  br i1 %i.y, label %.loopexit, label %.lr.ph.i.i, !dbg !14643, !llvm.loop !14464

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecjEECs4PheDXcg4wa_10polars_row.exit.i.i: ; preds = %bb.f, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.h ], [ %i.ad, %bb.f ]
  store i64 %.sroa.0.0.copyload, ptr %0, align 8, !dbg !14646
  store i64 %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !14646
  store i64 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !14646
  br label %.sink.split, !dbg !14647

.loopexit:                                        ; preds = %.lr.ph.i.i, %middle.block98
  %.pre71.pre = load i64, ptr %0, align 8, !dbg !14639, !range !275, !alias.scope !14570
  %i.z = icmp eq i64 %.pre71.pre, -9223372036854775808, !dbg !14639
  %i.aa = icmp ult i64 %.sroa.5.0.copyload, 1152921504606846976, !dbg !14648
  tail call void @llvm.assume(i1 %i.aa), !dbg !14649
  %i.ab = mul i64 %i.g, %.sroa.5.0.copyload, !dbg !14650
  %i.ac = add i64 %.sroa.6.0.copyload, %i.ab, !dbg !14638 ; 3 uses
  br i1 %i.z, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4PheDXcg4wa_10polars_row6widths9RowWidthsEBK_.exit, label %bb.e, !dbg !14639

bb.e:                                             ; preds = %.loopexit
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs4PheDXcg4wa_10polars_row.exit.i unwind label %bb.f, !dbg !14651

bb.f:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecjEECs4PheDXcg4wa_10polars_row.exit.i.i unwind label %bb.g, !dbg !14652

bb.g:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #15, !dbg !14651
  unreachable, !dbg !14651

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs4PheDXcg4wa_10polars_row.exit.i: ; preds = %bb.e
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4PheDXcg4wa_10polars_row6widths9RowWidthsEBK_.exit unwind label %bb.h, !dbg !14653

bb.h:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs4PheDXcg4wa_10polars_row.exit.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecjEECs4PheDXcg4wa_10polars_row.exit.i.i, !dbg !14646

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4PheDXcg4wa_10polars_row6widths9RowWidthsEBK_.exit: ; preds = %bb.d, %.thread, %.loopexit, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs4PheDXcg4wa_10polars_row.exit.i
  %.sroa.8.0..sroa.8.0.copyload78 = phi i64 [ %.sroa.6.0.copyload, %.thread ], [ %i.ac, %.loopexit ], [ %i.ac, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs4PheDXcg4wa_10polars_row.exit.i ], [ %.sroa.6.0.copyload, %bb.d ]
  %.sroa.6.0..sroa.6.0.copyload5977 = phi i64 [ %i.h, %.thread ], [ %.sroa.5.0.copyload, %.loopexit ], [ %.sroa.5.0.copyload, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs4PheDXcg4wa_10polars_row.exit.i ], [ %.sroa.5.0.copyload, %bb.d ]
  store i64 %.sroa.0.0.copyload, ptr %0, align 8, !dbg !14646
  store i64 %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !14646
  store i64 %.sroa.6.0..sroa.6.0.copyload5977, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !14646
  store i64 %.sroa.8.0..sroa.8.0.copyload78, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !14646
  br label %bb.i, !dbg !14647

bb.i:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4PheDXcg4wa_10polars_row6widths9RowWidthsEBK_.exit46, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4PheDXcg4wa_10polars_row6widths9RowWidthsEBK_.exit39, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4PheDXcg4wa_10polars_row6widths9RowWidthsEBK_.exit
  ret void, !dbg !14654

.sink.split:                                      ; preds = %.body36, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecjEECs4PheDXcg4wa_10polars_row.exit.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecjEECs4PheDXcg4wa_10polars_row.exit.i.i41
  %.sink = phi i64 [ %i.cr, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecjEECs4PheDXcg4wa_10polars_row.exit.i.i41 ], [ %i.ac, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecjEECs4PheDXcg4wa_10polars_row.exit.i.i ], [ %i.ay, %.body36 ]
  %.pn30.pn.ph = phi { ptr, i32 } [ %eh.lpad-body44, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecjEECs4PheDXcg4wa_10polars_row.exit.i.i41 ], [ %eh.lpad-body, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecjEECs4PheDXcg4wa_10polars_row.exit.i.i ], [ %eh.lpad-body37, %.body36 ]
  store i64 %.sink, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !14655
  br label %bb.j, !dbg !14656

bb.j:                                             ; preds = %.sink.split, %bb.v
  %.pn30.pn = phi { ptr, i32 } [ %i.cx, %bb.v ], [ %.pn30.pn.ph, %.sink.split ]
  resume { ptr, i32 } %.pn30.pn, !dbg !14656

bb.k:                                             ; preds = %bb.v
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #15, !dbg !14656
  unreachable, !dbg !14656

bb.l:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14657
  store i64 %.sroa.0.0.copyload, ptr %i.b, align 8, !dbg !14657
  %.sroa.4.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !14657
  store i64 %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx5, align 8, !dbg !14657
  %.sroa.5.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !14657
  store i64 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx9, align 8, !dbg !14657
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14571
  %.cast = inttoptr i64 %.sroa.4.0.copyload to ptr, !dbg !14658 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.cast, i64 %.sroa.5.0.copyload, !dbg !14659
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !14660
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !14660, !nonnull !273, !noundef !273 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !14661
  %i.al = load i64, ptr %i.ak, align 8, !dbg !14661, !noundef !273
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.al, !dbg !14662
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutjEINtBZ_4IterjEEINtB5_7ZipImplBW_B1r_E3newCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.cast, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.aj, ptr noundef nonnull %i.am)
          to label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter7IterMutjENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_4IterjEECs4PheDXcg4wa_10polars_row.exit unwind label %bb.v, !dbg !14663

bb.m:                                             ; preds = %bb.b
  store i64 %.sroa.5.0.copyload, ptr %i.d, align 8, !dbg !14664
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.013), !dbg !14665
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !14666
  %i.ao = load ptr, ptr %i.an, align 8, !dbg !14666, !nonnull !273, !noundef !273 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !14667
  %i.aq = load i64, ptr %i.ap, align 8, !dbg !14667, !noundef !273
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.aq, !dbg !14668
  store ptr %i.ao, ptr %i.c, align 8, !dbg !14669
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !14669
  store ptr %i.ar, ptr %i.as, align 8, !dbg !14669
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !14669
  store ptr %i.d, ptr %i.at, align 8, !dbg !14669
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterjENCNvMs_NtCs4PheDXcg4wa_10polars_row6widthsNtB2U_9RowWidths4push0EE9from_iterB2W_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.013, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c), !dbg !14670
  %i.au = load i64, ptr %i.d, align 8, !dbg !14613, !noundef !273
  %i.av = mul i64 %i.au, %.sroa.4.0.copyload, !dbg !14613
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !14671
  %i.ax = load i64, ptr %i.aw, align 8, !dbg !14671, !noundef !273
  %i.ay = add i64 %i.av, %i.ax, !dbg !14672       ; 2 uses
  %i.az = load i64, ptr %0, align 8, !dbg !14673, !range !275, !alias.scope !14616, !noundef !273
  %i.ba = icmp eq i64 %i.az, -9223372036854775808, !dbg !14673
  br i1 %i.ba, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4PheDXcg4wa_10polars_row6widths9RowWidthsEBK_.exit39, label %bb.n, !dbg !14673

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs4PheDXcg4wa_10polars_row.exit.i35 unwind label %bb.o, !dbg !14674

bb.o:                                             ; preds = %bb.n
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %.body36 unwind label %bb.p, !dbg !14675

bb.p:                                             ; preds = %bb.o
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #15, !dbg !14674
  unreachable, !dbg !14674

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs4PheDXcg4wa_10polars_row.exit.i35: ; preds = %bb.n
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4PheDXcg4wa_10polars_row6widths9RowWidthsEBK_.exit39 unwind label %bb.q, !dbg !14676

bb.q:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs4PheDXcg4wa_10polars_row.exit.i35
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body36, !dbg !14677

.body36:                                          ; preds = %bb.o, %bb.q
  %eh.lpad-body37 = phi { ptr, i32 } [ %i.bd, %bb.q ], [ %i.bb, %bb.o ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.013, i64 24, i1 false), !dbg !14677
  br label %.sink.split, !dbg !14677

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4PheDXcg4wa_10polars_row6widths9RowWidthsEBK_.exit39: ; preds = %bb.m, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs4PheDXcg4wa_10polars_row.exit.i35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.013, i64 24, i1 false), !dbg !14677
  store i64 %i.ay, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !14677
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.013), !dbg !14678
  br label %bb.i, !dbg !14679

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecjEECs4PheDXcg4wa_10polars_row.exit.i.i41: ; preds = %bb.s, %bb.u
  %eh.lpad-body44 = phi { ptr, i32 } [ %i.cw, %bb.u ], [ %i.cu, %bb.s ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !14680
  br label %.sink.split, !dbg !14681

_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter7IterMutjENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_4IterjEECs4PheDXcg4wa_10polars_row.exit: ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14617), !dbg !14682
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !14683
  %.val.i = load i64, ptr %i.be, align 8, !dbg !14683, !alias.scope !14617, !noundef !273 ; 9 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !14683
  %.val8.i = load i64, ptr %i.bf, align 8, !dbg !14683, !alias.scope !14617, !noundef !273 ; 5 uses
  %i.bg = sub i64 %.val8.i, %.val.i, !dbg !14684  ; 4 uses
  %.not.i40 = icmp eq i64 %.val8.i, %.val.i, !dbg !14685
  br i1 %.not.i40, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutjEINtB10_4IterjEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQjRjENCNvMs_NtCs4PheDXcg4wa_10polars_row6widthsNtB3f_9RowWidths4pushs_0E0EB3h_.exit, label %.lr.ph.i, !dbg !14686

.lr.ph.i:                                         ; preds = %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter7IterMutjENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_4IterjEECs4PheDXcg4wa_10polars_row.exit
  %.val.i.i = load ptr, ptr %i.a, align 8, !alias.scope !14621, !nonnull !273, !noundef !273 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val1.i.i = load ptr, ptr %i.bh, align 8, !alias.scope !14621, !nonnull !273, !noundef !273 ; 6 uses
  %min.iters.check = icmp ult i64 %i.bg, 8, !dbg !14686
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !14686

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.bi = shl i64 %.val.i, 3, !dbg !14686         ; 2 uses
  %i.bj = getelementptr nuw i8, ptr %.val.i.i, i64 %i.bi, !dbg !14686
  %i.bk = shl i64 %.val8.i, 3, !dbg !14686        ; 2 uses
  %i.bl = getelementptr i8, ptr %.val.i.i, i64 %i.bk, !dbg !14686
  %i.bm = getelementptr nuw i8, ptr %.val1.i.i, i64 %i.bi, !dbg !14686
  %i.bn = getelementptr i8, ptr %.val1.i.i, i64 %i.bk, !dbg !14686
  %bound0 = icmp ult ptr %i.bj, %i.bn, !dbg !14686
  %bound1 = icmp ult ptr %i.bm, %i.bl, !dbg !14686
  %found.conflict = and i1 %bound0, %bound1, !dbg !14686
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph, !dbg !14687

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bg, -4                      ; 3 uses
  br label %vector.body, !dbg !14687

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !14687 ; 2 uses
  %i.bo = add i64 %index, %.val.i, !dbg !14688    ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.bo, !dbg !14689 ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.bo, !dbg !14690 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16, !dbg !14691
  %wide.load = load <2 x i64>, ptr %i.bq, align 8, !dbg !14691, !alias.scope !14622, !noalias !14617
  %wide.load86 = load <2 x i64>, ptr %i.br, align 8, !dbg !14691, !alias.scope !14622, !noalias !14617
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 16, !dbg !14692 ; 2 uses
  %wide.load87 = load <2 x i64>, ptr %i.bp, align 8, !dbg !14692, !alias.scope !14624, !noalias !14625
  %wide.load88 = load <2 x i64>, ptr %i.bs, align 8, !dbg !14692, !alias.scope !14624, !noalias !14625
  %i.bt = add <2 x i64> %wide.load87, %wide.load, !dbg !14692
  %i.bu = add <2 x i64> %wide.load88, %wide.load86, !dbg !14692
  store <2 x i64> %i.bt, ptr %i.bp, align 8, !dbg !14692, !alias.scope !14624, !noalias !14625
  store <2 x i64> %i.bu, ptr %i.bs, align 8, !dbg !14692, !alias.scope !14624, !noalias !14625
  %index.next = add nuw i64 %index, 4, !dbg !14687 ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec, !dbg !14686
  br i1 %i.bv, label %middle.block, label %vector.body, !dbg !14686, !llvm.loop !14556

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bg, %n.vec, !dbg !14686
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutjEINtB10_4IterjEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQjRjENCNvMs_NtCs4PheDXcg4wa_10polars_row6widthsNtB3f_9RowWidths4pushs_0E0EB3h_.exit, label %scalar.ph.preheader, !dbg !14686

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.sroa.0.010.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 4 uses
  %2 = sub i64 %.val8.i, %.val.i, !dbg !14686
  %i.bw = xor i64 %.sroa.0.010.i.ph, -1, !dbg !14686
  %i.bx = add i64 %.val8.i, %i.bw, !dbg !14686
  %xtraiter = and i64 %2, 1, !dbg !14686
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !14686
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !14686

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.by = or disjoint i64 %.sroa.0.010.i.ph, 1, !dbg !14687
  %i.bz = add i64 %.sroa.0.010.i.ph, %.val.i, !dbg !14688 ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.bz, !dbg !14689 ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.bz, !dbg !14690
  %.val9.i.prol = load i64, ptr %i.cb, align 8, !dbg !14691, !noalias !14617, !noundef !273
  %i.cc = load i64, ptr %i.ca, align 8, !dbg !14692, !alias.scope !14626, !noalias !14617, !noundef !273
  %i.cd = add i64 %i.cc, %.val9.i.prol, !dbg !14692
  store i64 %i.cd, ptr %i.ca, align 8, !dbg !14692, !alias.scope !14626, !noalias !14617
  br label %scalar.ph.prol.loopexit, !dbg !14686

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.010.i.unr = phi i64 [ %.sroa.0.010.i.ph, %scalar.ph.preheader ], [ %i.by, %scalar.ph.prol ]
  %i.ce = icmp eq i64 %i.bx, %.val.i, !dbg !14686
  br i1 %i.ce, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutjEINtB10_4IterjEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQjRjENCNvMs_NtCs4PheDXcg4wa_10polars_row6widthsNtB3f_9RowWidths4pushs_0E0EB3h_.exit, label %scalar.ph.preheader.new, !dbg !14686

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i, !dbg !14686
  br label %scalar.ph, !dbg !14686

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.010.i = phi i64 [ %.sroa.0.010.i.unr, %scalar.ph.preheader.new ], [ %i.ck, %scalar.ph ] ; 3 uses
  %i.cf = add i64 %.sroa.0.010.i, %.val.i, !dbg !14688 ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.cf, !dbg !14689 ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.cf, !dbg !14690
  %.val9.i = load i64, ptr %i.ch, align 8, !dbg !14691, !noalias !14617, !noundef !273
  %i.ci = load i64, ptr %i.cg, align 8, !dbg !14692, !alias.scope !14626, !noalias !14617, !noundef !273
  %i.cj = add i64 %i.ci, %.val9.i, !dbg !14692
  store i64 %i.cj, ptr %i.cg, align 8, !dbg !14692, !alias.scope !14626, !noalias !14617
  %i.ck = add nuw i64 %.sroa.0.010.i, 2, !dbg !14687 ; 2 uses
  %.reass = add i64 %.sroa.0.010.i, %invariant.op ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass, !dbg !14689 ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !14690
  %.val9.i.1 = load i64, ptr %i.cm, align 8, !dbg !14691, !noalias !14617, !noundef !273
  %i.cn = load i64, ptr %i.cl, align 8, !dbg !14692, !alias.scope !14626, !noalias !14617, !noundef !273
  %i.co = add i64 %i.cn, %.val9.i.1, !dbg !14692
  store i64 %i.co, ptr %i.cl, align 8, !dbg !14692, !alias.scope !14626, !noalias !14617
  %exitcond.not.i.1 = icmp eq i64 %i.ck, %i.bg, !dbg !14685
  br i1 %exitcond.not.i.1, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutjEINtB10_4IterjEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQjRjENCNvMs_NtCs4PheDXcg4wa_10polars_row6widthsNtB3f_9RowWidths4pushs_0E0EB3h_.exit, label %scalar.ph, !dbg !14686, !llvm.loop !14557

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutjEINtB10_4IterjEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQjRjENCNvMs_NtCs4PheDXcg4wa_10polars_row6widthsNtB3f_9RowWidths4pushs_0E0EB3h_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter7IterMutjENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_4IterjEECs4PheDXcg4wa_10polars_row.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14693
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !14694
  %i.cq = load i64, ptr %i.cp, align 8, !dbg !14694, !noundef !273
  %i.cr = add i64 %i.cq, %.sroa.6.0.copyload, !dbg !14695 ; 2 uses
  %i.cs = load i64, ptr %0, align 8, !dbg !14696, !range !275, !alias.scope !14630, !noundef !273
  %i.ct = icmp eq i64 %i.cs, -9223372036854775808, !dbg !14696
  br i1 %i.ct, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4PheDXcg4wa_10polars_row6widths9RowWidthsEBK_.exit46, label %bb.r, !dbg !14696

bb.r:                                             ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutjEINtB10_4IterjEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQjRjENCNvMs_NtCs4PheDXcg4wa_10polars_row6widthsNtB3f_9RowWidths4pushs_0E0EB3h_.exit
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs4PheDXcg4wa_10polars_row.exit.i42 unwind label %bb.s, !dbg !14697

bb.s:                                             ; preds = %bb.r
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecjEECs4PheDXcg4wa_10polars_row.exit.i.i41 unwind label %bb.t, !dbg !14698

bb.t:                                             ; preds = %bb.s
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #15, !dbg !14697
  unreachable, !dbg !14697

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs4PheDXcg4wa_10polars_row.exit.i42: ; preds = %bb.r
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4PheDXcg4wa_10polars_row6widths9RowWidthsEBK_.exit46 unwind label %bb.u, !dbg !14699

bb.u:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs4PheDXcg4wa_10polars_row.exit.i42
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecjEECs4PheDXcg4wa_10polars_row.exit.i.i41, !dbg !14680

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4PheDXcg4wa_10polars_row6widths9RowWidthsEBK_.exit46: ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutjEINtB10_4IterjEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQjRjENCNvMs_NtCs4PheDXcg4wa_10polars_row6widthsNtB3f_9RowWidths4pushs_0E0EB3h_.exit, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs4PheDXcg4wa_10polars_row.exit.i42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !14680
  store i64 %i.cr, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !14680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14681
  br label %bb.i, !dbg !14681

bb.v:                                             ; preds = %bb.l
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(24) %i.b) #16
          to label %bb.j unwind label %bb.k, !dbg !14681
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipIBN_INtNtNtBb_5slice4iter7WindowslENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB1T_13OffsetsBufferlE22offset_and_length_iter0ENtNtNtNtB1V_6bitmap5utils8iterator10BitmapIterENCINvNtCs4PheDXcg4wa_10polars_row6encode21list_num_column_byteslEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB4a_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(96) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !14700 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14800), !dbg !14825
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14801), !dbg !14826
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14802), !dbg !14827
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14828
  %i.b = load i64, ptr %i.a, align 8, !dbg !14828, !range !426, !alias.scope !14803, !noalias !14804, !noundef !273 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14829 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !14829, !alias.scope !14803, !noalias !14804, !noundef !273 ; 2 uses
  %i.e = icmp ugt i64 %i.b, %i.d, !dbg !14828
  br i1 %i.e, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowslENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB1O_13OffsetsBufferlE22offset_and_length_iter0ENtNtNtNtB1Q_6bitmap5utils8iterator10BitmapIterENtNtNtB8_6traits8iterator8Iterator4nextCs4PheDXcg4wa_10polars_row.exit.thread, label %bb.b, !dbg !14828

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !dbg !14830, !alias.scope !14803, !noalias !14804, !nonnull !273, !align !427, !noundef !273 ; 2 uses
  %i.g = add i64 %i.d, -1, !dbg !14831
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4, !dbg !14832 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !dbg !14833, !alias.scope !14803, !noalias !14804
  store i64 %i.g, ptr %i.c, align 8, !dbg !14833, !alias.scope !14803, !noalias !14804
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14805), !dbg !14834
  %i.i = icmp eq i64 %i.b, 2, !dbg !14835
  br i1 %i.i, label %bb.d, label %bb.c, !dbg !14835, !prof !281

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #17, !dbg !14836, !noalias !14806
  unreachable, !dbg !14836

bb.d:                                             ; preds = %bb.b
  %.val1.i.i.i.i = load i32, ptr %i.f, align 4, !dbg !14837, !alias.scope !14805, !noalias !14807, !noundef !273 ; 2 uses
  %i.j = sext i32 %.val1.i.i.i.i to i64, !dbg !14838 ; 12 uses
  %.val.i.i.i.i = load i32, ptr %i.h, align 4, !dbg !14839, !alias.scope !14805, !noalias !14807, !noundef !273 ; 2 uses
  %i.k = sext i32 %.val.i.i.i.i to i64, !dbg !14840 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !14841 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14808), !dbg !14842
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !14843 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !dbg !14843, !alias.scope !14809, !noalias !14810, !noundef !273 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0, !dbg !14843
  br i1 %i.o, label %bb.e, label %._crit_edge.i.i.i, !dbg !14843

._crit_edge.i.i.i:                                ; preds = %bb.d
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !dbg !14844, !alias.scope !14809, !noalias !14810
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowslENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB1O_13OffsetsBufferlE22offset_and_length_iter0ENtNtNtNtB1Q_6bitmap5utils8iterator10BitmapIterENtNtNtB8_6traits8iterator8Iterator4nextCs4PheDXcg4wa_10polars_row.exit, !dbg !14843

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !14845 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !dbg !14845, !alias.scope !14809, !noalias !14810, !noundef !273 ; 3 uses
  %i.r = icmp eq i64 %i.q, 0, !dbg !14845
  br i1 %i.r, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowslENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB1O_13OffsetsBufferlE22offset_and_length_iter0ENtNtNtNtB1Q_6bitmap5utils8iterator10BitmapIterENtNtNtB8_6traits8iterator8Iterator4nextCs4PheDXcg4wa_10polars_row.exit.thread, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i.i, !dbg !14845

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i.i: ; preds = %bb.e
  %.sroa.0.0.i.i.i.i = tail call noundef range(i64 1, 65) i64 @llvm.umin.i64(i64 range(i64 1, 0) %i.q, i64 64), !dbg !14846 ; 2 uses
  %i.s = sub nuw i64 %i.q, %.sroa.0.0.i.i.i.i, !dbg !14847
  store i64 %i.s, ptr %i.p, align 8, !dbg !14847, !alias.scope !14809, !noalias !14810
  %i.t = load ptr, ptr %i.l, align 8, !dbg !14848, !alias.scope !14809, !noalias !14810, !nonnull !273, !noundef !273 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !14848 ; 2 uses
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.t, align 1, !dbg !14849, !noalias !14811
  %i.v = load i64, ptr %i.u, align 8, !dbg !14850, !alias.scope !14809, !noalias !14810, !noundef !273
  %i.w = add i64 %i.v, -8, !dbg !14851
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !14852
  store ptr %i.x, ptr %i.l, align 8, !dbg !14853, !alias.scope !14809, !noalias !14810
  store i64 %i.w, ptr %i.u, align 8, !dbg !14853, !alias.scope !14809, !noalias !14810
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowslENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB1O_13OffsetsBufferlE22offset_and_length_iter0ENtNtNtNtB1Q_6bitmap5utils8iterator10BitmapIterENtNtNtB8_6traits8iterator8Iterator4nextCs4PheDXcg4wa_10polars_row.exit, !dbg !14854

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowslENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB1O_13OffsetsBufferlE22offset_and_length_iter0ENtNtNtNtB1Q_6bitmap5utils8iterator10BitmapIterENtNtNtB8_6traits8iterator8Iterator4nextCs4PheDXcg4wa_10polars_row.exit: ; preds = %._crit_edge.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i.i
  %i.y = phi i64 [ %i.n, %._crit_edge.i.i.i ], [ %.sroa.0.0.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i.i ], !dbg !14855
  %i.z = phi i64 [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %.sroa.02.0.copyload.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i.i ], !dbg !14844 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !14844
  %i.ab = trunc i64 %i.z to i1, !dbg !14844
  %i.ac = lshr i64 %i.z, 1, !dbg !14856
  store i64 %i.ac, ptr %i.aa, align 8, !dbg !14856, !alias.scope !14809, !noalias !14810
  %i.ad = add i64 %i.y, -1, !dbg !14855
  store i64 %i.ad, ptr %i.m, align 8, !dbg !14855, !alias.scope !14809, !noalias !14810
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !14857
  %.val = load ptr, ptr %i.ae, align 8, !dbg !14858 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !14858
  %.val1 = load ptr, ptr %i.af, align 8, !dbg !14858 ; 8 uses
  %i.ag = icmp ult i32 %.val1.i.i.i.i, %.val.i.i.i.i ; 2 uses
  br i1 %i.ab, label %bb.g, label %bb.f, !dbg !14859

bb.f:                                             ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowslENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB1O_13OffsetsBufferlE22offset_and_length_iter0ENtNtNtNtB1Q_6bitmap5utils8iterator10BitmapIterENtNtNtB8_6traits8iterator8Iterator4nextCs4PheDXcg4wa_10polars_row.exit
  br i1 %i.ag, label %.lr.ph.i, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowslENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB1O_13OffsetsBufferlE22offset_and_length_iter0ENtNtNtNtB1Q_6bitmap5utils8iterator10BitmapIterENtNtNtB8_6traits8iterator8Iterator4nextCs4PheDXcg4wa_10polars_row.exit.thread, !dbg !14860

bb.g:                                             ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowslENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB1O_13OffsetsBufferlE22offset_and_length_iter0ENtNtNtNtB1Q_6bitmap5utils8iterator10BitmapIterENtNtNtB8_6traits8iterator8Iterator4nextCs4PheDXcg4wa_10polars_row.exit
  br i1 %i.ag, label %.lr.ph5.i, label %._crit_edge.i, !dbg !14861

.lr.ph5.i:                                        ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.ah = load i64, ptr %.val1, align 8, !range !275, !alias.scope !14816, !noalias !14817, !noundef !273
  %.not.i13.i = icmp eq i64 %i.ah, -9223372036854775808
  %i.ai = getelementptr inbounds nuw i8, ptr %.val1, i64 8 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val1, i64 16 ; 3 uses
  br i1 %.not.i13.i, label %.lr.ph5.split.us.i, label %.lr.ph5.split.i

.lr.ph5.split.us.i:                               ; preds = %.lr.ph5.i
  %i.ak = load i64, ptr %i.ai, align 8, !alias.scope !14816, !noalias !14817, !noundef !273
  %umax11.i = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 %i.j), !dbg !14861 ; 2 uses
  %i.al = xor i64 %i.j, -1, !dbg !14861
  %i.am = add nsw i64 %i.al, %i.k, !dbg !14861
  %i.an = sub i64 %umax11.i, %i.j, !dbg !14861
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.am, i64 %i.an), !dbg !14861
  %i.ap = add i64 %i.ao, 1, !dbg !14861           ; 3 uses
  %min.iters.check = icmp ult i64 %i.ap, 5, !dbg !14861
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !14861

vector.ph:                                        ; preds = %.lr.ph5.split.us.i
  %i.aq = and i64 %i.ap, 3                        ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  %i.as = select i1 %i.ar, i64 4, i64 %i.aq
  %n.vec = sub i64 %i.ap, %i.as                   ; 2 uses
end_hunk_1
