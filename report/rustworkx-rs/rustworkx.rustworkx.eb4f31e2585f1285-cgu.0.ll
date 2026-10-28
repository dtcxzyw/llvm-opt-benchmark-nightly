Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67643
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 143
loop-unroll.NumRuntimeUnrolled: 258
loop-unroll.NumUnrolled: 402
begin_hunk_0_@_RNvMsa_NtNtCskcxRuJ53GpR_9rustworkx12connectivity21johnson_simple_cyclesNtB5_17PySimpleCycleIter21___pymethod___next____:bb.a
  %i.aou = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %.val1.i.i35.i = load ptr, ptr %i.aou, align 8, !alias.scope !70334, !noalias !70143, !nonnull !56, !noundef !56
  %i.aov = mul nuw i64 %.val.i.i34.i, 20
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i35.i, i64 noundef %i.aov, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !70335
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuuEECskcxRuJ53GpR_9rustworkx.exit.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuuEECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i7.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtBG_3set7HashSetB1g_EEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(40) %i.al) #63, !noalias !70143
  br label %bb.ew

bb.ew:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuuEECskcxRuJ53GpR_9rustworkx.exit.i, %.thread570.i.i
  %.pn60.pn.pn.pn.pn.pn579.i.i = phi { ptr, i32 } [ %i.cl, %.thread570.i.i ], [ %.pn60.pn.pn.pn605.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuuEECskcxRuJ53GpR_9rustworkx.exit.i ] ; 3 uses
  %.val73.i.i = load ptr, ptr %i.am, align 8, !noalias !70142 ; 2 uses
  %i.aow = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.val74.i.i = load i64, ptr %i.aow, align 8, !noalias !70142, !noundef !56 ; 4 uses
  %i.aox = icmp eq i64 %.val74.i.i, 0
  br i1 %i.aox, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit32.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i31.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i31.i: ; preds = %bb.ew
  %i.aoy = shl i64 %.val74.i.i, 2
  %i.aoz = icmp slt i64 %.val74.i.i, 4611686018427387900
  call void @llvm.assume(i1 %i.aoz), !noalias !70331
  %i.apa = and i64 %i.aoy, -16                    ; 2 uses
  %i.apb = add i64 %i.apa, 16                     ; 2 uses
  %i.apc = add nsw i64 %.val74.i.i, 17
  %i.apd = add i64 %i.apc, %i.apb                 ; 4 uses
  %i.ape = icmp uge i64 %i.apd, %i.apb
  %i.apf = icmp ult i64 %i.apd, 9223372036854775793
  call void @llvm.assume(i1 %i.ape), !noalias !70331
  call void @llvm.assume(i1 %i.apf), !noalias !70331
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val73.i.i) ], !noalias !70331
  %i.apg = icmp eq i64 %i.apd, 0
  br i1 %i.apg, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit32.i, label %bb.ex

bb.ex:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i31.i
  %i.aph = sub nuw nsw i64 -16, %i.apa
  %i.api = getelementptr inbounds i8, ptr %.val73.i.i, i64 %i.aph
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.api, i64 noundef %i.apd, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !70143
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit32.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit32.i: ; preds = %bb.ex, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i31.i, %bb.ew, %.thread562.i.i
  %.pn60.pn.pn.pn.pn.pn.pn569.i.i = phi { ptr, i32 } [ %i.cg, %.thread562.i.i ], [ %.pn60.pn.pn.pn.pn.pn579.i.i, %bb.ew ], [ %.pn60.pn.pn.pn.pn.pn579.i.i, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i31.i ], [ %.pn60.pn.pn.pn.pn.pn579.i.i, %bb.ex ] ; 3 uses
  %.val.i.i = load ptr, ptr %i.an, align 8, !noalias !70142 ; 2 uses
  %i.apj = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.val72.i.i = load i64, ptr %i.apj, align 8, !noalias !70142, !noundef !56 ; 4 uses
  %i.apk = icmp eq i64 %.val72.i.i, 0
  br i1 %i.apk, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i30.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i30.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit32.i
  %i.apl = shl i64 %.val72.i.i, 2
  %i.apm = icmp slt i64 %.val72.i.i, 4611686018427387900
  call void @llvm.assume(i1 %i.apm), !noalias !70331
  %i.apn = and i64 %i.apl, -16                    ; 2 uses
  %i.apo = add i64 %i.apn, 16                     ; 2 uses
  %i.app = add nsw i64 %.val72.i.i, 17
  %i.apq = add i64 %i.app, %i.apo                 ; 4 uses
  %i.apr = icmp uge i64 %i.apq, %i.apo
  %i.aps = icmp ult i64 %i.apq, 9223372036854775793
  call void @llvm.assume(i1 %i.apr), !noalias !70331
  call void @llvm.assume(i1 %i.aps), !noalias !70331
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !70331
  %i.apt = icmp eq i64 %i.apq, 0
  br i1 %i.apt, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i, label %bb.ey

bb.ey:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i30.i
  %i.apu = sub nuw nsw i64 -16, %i.apn
  %i.apv = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.apu
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.apv, i64 noundef %i.apq, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !70143
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.ey, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i30.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit32.i, %.thread.i.i
  %.pn60.pn.pn.pn.pn.pn.pn.pn561.i.i = phi { ptr, i32 } [ %i.cb, %.thread.i.i ], [ %.pn60.pn.pn.pn.pn.pn.pn569.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit32.i ], [ %.pn60.pn.pn.pn.pn.pn.pn569.i.i, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i30.i ], [ %.pn60.pn.pn.pn.pn.pn.pn569.i.i, %bb.ey ] ; 2 uses
  %.val114.i.i = load i64, ptr %i.ao, align 8, !noalias !70142 ; 2 uses
  %i.apw = icmp eq i64 %.val114.i.i, 0
  br i1 %i.apw, label %.thread644.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i373.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i373.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i
  %i.apx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.val115.i.i = load ptr, ptr %i.apx, align 8, !noalias !70142, !nonnull !56, !noundef !56
  %i.apy = shl nuw i64 %.val114.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val115.i.i, i64 noundef %i.apy, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !70143
  br label %.thread644.i.i

.thread644.i.i:                                   ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i373.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !70336)
  %i.apz = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.val.i28.i = load ptr, ptr %i.apz, align 8, !alias.scope !70336, !noalias !70143, !nonnull !56, !noundef !56 ; 2 uses
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.val1.i.i = load i64, ptr %i.aqa, align 8, !alias.scope !70336, !noalias !70143, !noundef !56 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !70337), !noalias !70331
  %i.aqb = icmp eq i64 %.val1.i.i, 0
  br i1 %i.aqb, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCsfztDQZkQYYe_8indexmap3set8IndexSetBG_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i, label %.lr.ph.i.i.i29.i

.lr.ph.i.i.i29.i:                                 ; preds = %.thread644.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCsfztDQZkQYYe_8indexmap3set8IndexSetBC_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %.sroa.0.07.i.i.i.i = phi i64 [ %i.aqd, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCsfztDQZkQYYe_8indexmap3set8IndexSetBC_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ 0, %.thread644.i.i ] ; 2 uses
  %i.aqc = getelementptr inbounds nuw [72 x i8], ptr %.val.i28.i, i64 %.sroa.0.07.i.i.i.i ; 4 uses
  %i.aqd = add nuw nsw i64 %.sroa.0.07.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !70338), !noalias !70331
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aqc, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !70339), !noalias !70331
  call void @llvm.experimental.noalias.scope.decl(metadata !70340), !noalias !70331
  call void @llvm.experimental.noalias.scope.decl(metadata !70341), !noalias !70331
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aqc, i64 40
  %.val1.i.i.i.i.i.i.i.i = load i64, ptr %i.aqf, align 8, !alias.scope !70342, !noalias !70343, !noundef !56 ; 4 uses
  %i.aqg = icmp eq i64 %.val1.i.i.i.i.i.i.i.i, 0
  br i1 %i.aqg, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i29.i
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aqc, i64 32
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.aqh, align 8, !alias.scope !70342, !noalias !70343, !nonnull !56, !noundef !56
  %i.aqi = shl i64 %.val1.i.i.i.i.i.i.i.i, 3
  %i.aqj = icmp slt i64 %.val1.i.i.i.i.i.i.i.i, 2305843009213693950
  call void @llvm.assume(i1 %i.aqj), !noalias !70331
  %i.aqk = and i64 %i.aqi, -16                    ; 2 uses
  %i.aql = add i64 %i.aqk, 16                     ; 2 uses
  %i.aqm = add nsw i64 %.val1.i.i.i.i.i.i.i.i, 17
  %i.aqn = add i64 %i.aqm, %i.aql                 ; 3 uses
  %i.aqo = icmp uge i64 %i.aqn, %i.aql
  call void @llvm.assume(i1 %i.aqo), !noalias !70331
  %i.aqp = icmp ult i64 %i.aqn, 9223372036854775793
  call void @llvm.assume(i1 %i.aqp), !noalias !70331
  %i.aqq = sub nuw nsw i64 -16, %i.aqk
  %i.aqr = getelementptr inbounds i8, ptr %.val.i.i.i.i.i.i.i.i, i64 %i.aqq
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aqr, i64 noundef %i.aqn, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !70344
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i: ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i29.i
  %.val2.i.i.i.i.i.i.i.i = load i64, ptr %i.aqe, align 8, !alias.scope !70342, !noalias !70343 ; 2 uses
  %i.aqs = icmp eq i64 %.val2.i.i.i.i.i.i.i.i, 0
  br i1 %i.aqs, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCsfztDQZkQYYe_8indexmap3set8IndexSetBC_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqc, i64 16
  %.val3.i.i.i.i.i.i.i.i = load ptr, ptr %i.aqt, align 8, !alias.scope !70342, !noalias !70343, !nonnull !56, !noundef !56
  %i.aqu = shl nuw i64 %.val2.i.i.i.i.i.i.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i.i, i64 noundef %i.aqu, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !70344
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCsfztDQZkQYYe_8indexmap3set8IndexSetBC_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCsfztDQZkQYYe_8indexmap3set8IndexSetBC_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i
  %i.aqv = icmp eq i64 %i.aqd, %.val1.i.i
  br i1 %i.aqv, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCsfztDQZkQYYe_8indexmap3set8IndexSetBG_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i, label %.lr.ph.i.i.i29.i

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCsfztDQZkQYYe_8indexmap3set8IndexSetBG_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCsfztDQZkQYYe_8indexmap3set8IndexSetBC_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, %.thread644.i.i
  %.val2.i.i = load i64, ptr %i.ap, align 8, !alias.scope !70336, !noalias !70143 ; 2 uses
  %i.aqw = icmp eq i64 %.val2.i.i, 0
  br i1 %i.aqw, label %.body.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCsfztDQZkQYYe_8indexmap3set8IndexSetBG_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.aqx = mul nuw i64 %.val2.i.i, 72
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i28.i, i64 noundef %i.aqx, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !70343
  br label %.body.i

bb.ez:                                            ; preds = %bb.p, %bb.m
  %i.aqy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i, %bb.ff, %bb.ez, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCsfztDQZkQYYe_8indexmap3set8IndexSetBG_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %.pn60.pn.pn.pn.pn.pn.pn.pn561.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i ], [ %.pn60.pn.pn.pn.pn.pn.pn.pn561.i.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCsfztDQZkQYYe_8indexmap3set8IndexSetBG_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %i.aqy, %bb.ez ], [ %i.aso, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i ], [ %i.aso, %bb.ff ]
  %i.aqz = atomicrmw add ptr %i.az, i64 -1 release, align 8, !noalias !70139 ; 0 uses
  call void @_Py_DecRef(ptr noundef nonnull %i.ay) #59, !noalias !70139
  br label %bb.d

bb.fa:                                            ; preds = %bb.ee, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1g_EECskcxRuJ53GpR_9rustworkx.exit151.i.i
  %.sroa.11.0.i = phi i64 [ %.sroa.6493.0.copyload.i.i, %bb.ee ], [ %.sroa.6.0.copyload.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1g_EECskcxRuJ53GpR_9rustworkx.exit151.i.i ] ; 6 uses
  %.sroa.7.0.i = phi ptr [ %.sroa.5490.0.copyload.i.i, %bb.ee ], [ %.sroa.5.0.copyload.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1g_EECskcxRuJ53GpR_9rustworkx.exit151.i.i ] ; 5 uses
  %.sroa.040.0.i = phi i64 [ %i.ahg, %bb.ee ], [ %i.dd, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1g_EECskcxRuJ53GpR_9rustworkx.exit151.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !70142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !70142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !70142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !70142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !70142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !70142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !70142
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0450.i.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.i) ]
  %i.ara = icmp ult i64 %.sroa.11.0.i, 2305843009213693952
  call void @llvm.assume(i1 %i.ara)
  %i.arb = shl nuw i64 %.sroa.11.0.i, 3           ; 2 uses
  %.not.i.i.i = icmp samesign ugt i64 %.sroa.11.0.i, 1152921504606846975
  br i1 %.not.i.i.i, label %bb.fd, label %bb.fb, !prof !137

bb.fb:                                            ; preds = %bb.fa
  %.idx.i = shl nuw nsw i64 %.sroa.11.0.i, 2
  %i.arc = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i, i64 %.idx.i
  %i.ard = icmp eq i64 %.sroa.11.0.i, 0
  br i1 %i.ard, label %._crit_edge.i.i.i.i.i.i23.i, label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %.thread1055.i
  %.sroa.040.17710501063.i = phi i64 [ 1, %.thread1055.i ], [ %.sroa.040.0.i, %bb.fb ] ; 3 uses
  %.sroa.7.17610521061.i = phi ptr [ %i.bx, %.thread1055.i ], [ %.sroa.7.0.i, %bb.fb ] ; 10 uses
  %.sroa.11.17510541059.i = phi i64 [ 1, %.thread1055.i ], [ %.sroa.11.0.i, %bb.fb ] ; 2 uses
  %i.are = phi ptr [ %i.bz, %.thread1055.i ], [ %i.arc, %bb.fb ] ; 2 uses
  %i.arf = phi i64 [ 8, %.thread1055.i ], [ %i.arb, %bb.fb ] ; 2 uses
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !70345
  %i.arg = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.arf, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !70345 ; 7 uses
  %i.arh = icmp eq ptr %i.arg, null
  br i1 %i.arh, label %bb.fd, label %.lr.ph.i.i.i.i.i.i22.i.preheader

.lr.ph.i.i.i.i.i.i22.i.preheader:                 ; preds = %bb.fc
  %i.ari = ptrtoaddr ptr %i.are to i64
  %.sroa.7.17610521061.i1874 = ptrtoaddr ptr %.sroa.7.17610521061.i to i64
  %i.arj = add i64 %i.ari, -4
  %i.ark = sub i64 %i.arj, %.sroa.7.17610521061.i1874 ; 4 uses
  %i.arl = lshr i64 %i.ark, 2
  %i.arm = add nuw nsw i64 %i.arl, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.ark, 100
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i22.i.preheader1877, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i22.i.preheader
  %i.arn = shl i64 %i.ark, 1
  %i.aro = and i64 %i.arn, -8
  %i.arp = getelementptr i8, ptr %i.arg, i64 %i.aro
  %i.arq = getelementptr i8, ptr %i.arp, i64 8
  %i.arr = and i64 %i.ark, -4
  %i.ars = getelementptr i8, ptr %.sroa.7.17610521061.i, i64 %i.arr
  %i.art = getelementptr i8, ptr %i.ars, i64 4
  %bound0 = icmp ult ptr %i.arg, %i.art
  %bound1 = icmp ult ptr %.sroa.7.17610521061.i, %i.arq
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i22.i.preheader1877, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.arm, 9223372036854775804    ; 5 uses
  %i.aru = shl i64 %n.vec, 2
  %i.arv = getelementptr i8, ptr %.sroa.7.17610521061.i, i64 %i.aru
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.arw = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.sroa.7.17610521061.i, i64 %i.arw ; 2 uses
  %i.arx = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !alias.scope !70346, !noalias !70347
  %wide.load1875 = load <2 x i32>, ptr %i.arx, align 4, !alias.scope !70346, !noalias !70347
  %i.ary = zext <2 x i32> %wide.load to <2 x i64>
  %i.arz = zext <2 x i32> %wide.load1875 to <2 x i64>
  %i.asa = getelementptr inbounds nuw [8 x i8], ptr %i.arg, i64 %index ; 2 uses
  %i.asb = getelementptr inbounds nuw i8, ptr %i.asa, i64 16
  store <2 x i64> %i.ary, ptr %i.asa, align 8, !alias.scope !70348, !noalias !70349
  store <2 x i64> %i.arz, ptr %i.asb, align 8, !alias.scope !70348, !noalias !70349
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.asc = icmp eq i64 %index.next, %n.vec
  br i1 %i.asc, label %middle.block, label %vector.body, !llvm.loop !70132

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.arm, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i.i23.i, label %.lr.ph.i.i.i.i.i.i22.i.preheader1877

.lr.ph.i.i.i.i.i.i22.i.preheader1877:             ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i22.i.preheader, %middle.block
  %.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i22.i.preheader ], [ %n.vec, %middle.block ]
  %.ph1878 = phi ptr [ %.sroa.7.17610521061.i, %vector.memcheck ], [ %.sroa.7.17610521061.i, %.lr.ph.i.i.i.i.i.i22.i.preheader ], [ %i.arv, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i22.i

bb.fd:                                            ; preds = %bb.fc, %bb.fa
  %i.asd = phi i64 [ %i.arf, %bb.fc ], [ %i.arb, %bb.fa ]
  %.sroa.7.1761053.i = phi ptr [ %.sroa.7.17610521061.i, %bb.fc ], [ %.sroa.7.0.i, %bb.fa ]
  %.sroa.040.1771051.i = phi i64 [ %.sroa.040.17710501063.i, %bb.fc ], [ %.sroa.040.0.i, %bb.fa ] ; 2 uses
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.fc ], [ 0, %bb.fa ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.asd) #61
          to label %bb.fe unwind label %bb.ff, !noalias !70350

.lr.ph.i.i.i.i.i.i22.i:                           ; preds = %.lr.ph.i.i.i.i.i.i22.i.preheader1877, %.lr.ph.i.i.i.i.i.i22.i
  %i.ase = phi i64 [ %i.ask, %.lr.ph.i.i.i.i.i.i22.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i22.i.preheader1877 ] ; 2 uses
  %i.asf = phi ptr [ %i.ash, %.lr.ph.i.i.i.i.i.i22.i ], [ %.ph1878, %.lr.ph.i.i.i.i.i.i22.i.preheader1877 ] ; 2 uses
  %i.asg = load i32, ptr %i.asf, align 4, !noalias !70347, !noundef !56
  %i.ash = getelementptr inbounds nuw i8, ptr %i.asf, i64 4 ; 2 uses
  %i.asi = zext i32 %i.asg to i64
  %i.asj = getelementptr inbounds nuw [8 x i8], ptr %i.arg, i64 %i.ase
  store i64 %i.asi, ptr %i.asj, align 8, !noalias !70351
  %i.ask = add nuw nsw i64 %i.ase, 1              ; 2 uses
  %.not.not.i.i.i.i.i.i.i = icmp eq ptr %i.ash, %i.are
  br i1 %.not.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i23.i, label %.lr.ph.i.i.i.i.i.i22.i, !llvm.loop !70133

._crit_edge.i.i.i.i.i.i23.i:                      ; preds = %.lr.ph.i.i.i.i.i.i22.i, %middle.block, %bb.fb
  %i.asl = phi ptr [ inttoptr (i64 8 to ptr), %bb.fb ], [ %i.arg, %middle.block ], [ %i.arg, %.lr.ph.i.i.i.i.i.i22.i ] ; 2 uses
  %.sroa.4.0.i1072.i = phi i64 [ 0, %bb.fb ], [ %.sroa.11.17510541059.i, %middle.block ], [ %.sroa.11.17510541059.i, %.lr.ph.i.i.i.i.i.i22.i ] ; 2 uses
  %.sroa.7.176105210621071.i = phi ptr [ %.sroa.7.0.i, %bb.fb ], [ %.sroa.7.17610521061.i, %middle.block ], [ %.sroa.7.17610521061.i, %.lr.ph.i.i.i.i.i.i22.i ]
  %.sroa.040.177105010641070.i = phi i64 [ %.sroa.040.0.i, %bb.fb ], [ %.sroa.040.17710501063.i, %middle.block ], [ %.sroa.040.17710501063.i, %.lr.ph.i.i.i.i.i.i22.i ] ; 2 uses
  %.sroa.42.0.i.i.i.i.i.i = phi i64 [ 0, %bb.fb ], [ %n.vec, %middle.block ], [ %i.ask, %.lr.ph.i.i.i.i.i.i22.i ] ; 2 uses
  %i.asm = icmp eq i64 %.sroa.040.177105010641070.i, 0
  br i1 %i.asm, label %bb.fg, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i23.i
  %i.asn = shl nuw i64 %.sroa.040.177105010641070.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.176105210621071.i, i64 noundef %i.asn, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !70347
  br label %bb.fg

bb.fe:                                            ; preds = %bb.fd
  unreachable

bb.ff:                                            ; preds = %bb.fd
  %i.aso = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.asp = icmp eq i64 %.sroa.040.1771051.i, 0
  br i1 %i.asp, label %.body.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i: ; preds = %bb.ff
  %i.asq = shl nuw i64 %.sroa.040.1771051.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.1761053.i, i64 noundef %i.asq, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !70352
  br label %.body.i

bb.fg:                                            ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i23.i, %.thread.i
  %.sroa.5.sroa.4.0.i = phi i64 [ %.sroa.42.0.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i23.i ], [ undef, %.thread.i ], [ %.sroa.42.0.i.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.5.sroa.0.0.i = phi ptr [ %i.asl, %._crit_edge.i.i.i.i.i.i23.i ], [ undef, %.thread.i ], [ %i.asl, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.0.i19 = phi i64 [ %.sroa.4.0.i1072.i, %._crit_edge.i.i.i.i.i.i23.i ], [ -1, %.thread.i ], [ %.sroa.4.0.i1072.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.asr = atomicrmw add ptr %i.az, i64 -1 release, align 8, !noalias !70139 ; 0 uses
  call void @_Py_DecRef(ptr noundef nonnull %i.ay) #59, !noalias !70139
  %i.ass = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i = load i64, ptr %i.ass, align 8, !noalias !70139, !noundef !56
  %i.ast = icmp sgt i64 %.val.i.i.i.i.i, 0
  br i1 %i.ast, label %bb.fi, label %bb.fh, !prof !109

bb.fh:                                            ; preds = %bb.fg
  invoke void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %i.ay)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEB1f_.exit.i unwind label %bb.fk, !noalias !70139

bb.fi:                                            ; preds = %bb.fg
  call void @_Py_DecRef(ptr noundef nonnull %i.ay) #59, !noalias !70139
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEB1f_.exit.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEB1f_.exit: ; preds = %bb.f, %bb.e, %bb.fk
  %.pn9.i = phi { ptr, i32 } [ %i.asv, %bb.fk ], [ %.pn.i, %bb.e ], [ %.pn.i, %bb.f ]
  invoke void @_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker18release_borrow_mut(ptr noundef nonnull align 8 %i.as)
          to label %common.resume.i unwind label %bb.fj, !noalias !70139

bb.fj:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEB1f_.exit
  %i.asu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_Py_DecRef(ptr noundef nonnull %1) #59, !noalias !70139
  br label %.body

bb.fk:                                            ; preds = %bb.fh
  %i.asv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEB1f_.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEB1f_.exit.i: ; preds = %bb.fi, %bb.fh
  invoke void @_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker18release_borrow_mut(ptr noundef nonnull align 8 %i.as)
          to label %bb.fn unwind label %bb.fl, !noalias !70139

common.resume.i:                                  ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEB1f_.exit, %bb.fl
  %common.resume.op.i = phi { ptr, i32 } [ %i.asw, %bb.fl ], [ %.pn9.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEB1f_.exit ]
  call void @_Py_DecRef(ptr noundef nonnull %1) #59, !noalias !70139
  resume { ptr, i32 } %common.resume.op.i

bb.fl:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEB1f_.exit.i
  %i.asw = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

bb.fm:                                            ; preds = %bb.e
  %i.asx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.fj, %bb.fm
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !70139
  unreachable

bb.fn:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEB1f_.exit.i
  call void @_Py_DecRef(ptr noundef nonnull %1) #59, !noalias !70139
  %.not = icmp eq i64 %.sroa.0.0.i19, -1
  br i1 %.not, label %bb.fq, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store i64 %.sroa.0.0.i19, ptr %i.aq, align 8
  %.sroa.923.8..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %.sroa.5.sroa.0.0.i, ptr %.sroa.923.8..sroa_idx24, align 8
  %.sroa.10.8..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i64 %.sroa.5.sroa.4.0.i, ptr %.sroa.10.8..sroa_idx26, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !70353)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !70354
  call fastcc void @_RNvXs3e_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_11NodeIndicesNtNtCsi0YPOvDEjiZ_4pyo310conversion12IntoPyObject13into_pyobject(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.aq), !noalias !70353
  %i.asy = load i64, ptr %i.b, align 8, !range !57, !noalias !70354, !noundef !56
  %i.asz = trunc nuw i64 %i.asy to i1
  %i.ata = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.03.0.copyload.i = load ptr, ptr %i.ata, align 8, !noalias !70354
  br i1 %i.asz, label %bb.fp, label %_RNvXs2_NtNtCsi0YPOvDEjiZ_4pyo35impl_8callbackNtNtCskcxRuJ53GpR_9rustworkx9iterators11NodeIndicesINtB5_20IntoPyCallbackOutputONtNtCsjNIR5GOeEkr_8pyo3_ffi6object8PyObjectE7convertBL_.exit

bb.fp:                                            ; preds = %bb.fo
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.46.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.44.0..sroa_idx.i, i64 56, i1 false), !noalias !70355
  br label %_RNvXs2_NtNtCsi0YPOvDEjiZ_4pyo35impl_8callbackNtNtCskcxRuJ53GpR_9rustworkx9iterators11NodeIndicesINtB5_20IntoPyCallbackOutputONtNtCsjNIR5GOeEkr_8pyo3_ffi6object8PyObjectE7convertBL_.exit

_RNvXs2_NtNtCsi0YPOvDEjiZ_4pyo35impl_8callbackNtNtCskcxRuJ53GpR_9rustworkx9iterators11NodeIndicesINtB5_20IntoPyCallbackOutputONtNtCsjNIR5GOeEkr_8pyo3_ffi6object8PyObjectE7convertBL_.exit: ; preds = %bb.fo, %bb.fp
  %.sink.i = phi i64 [ 1, %bb.fp ], [ 0, %bb.fo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !70354
  %i.atb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0.copyload.i, ptr %i.atb, align 8, !alias.scope !70353
  store i64 %.sink.i, ptr %0, align 8, !alias.scope !70353
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.fr

bb.fq:                                            ; preds = %bb.fn
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.fr

bb.fr:                                            ; preds = %_RNvXs2_NtNtCsi0YPOvDEjiZ_4pyo35impl_8callbackNtNtCskcxRuJ53GpR_9rustworkx9iterators11NodeIndicesINtB5_20IntoPyCallbackOutputONtNtCsjNIR5GOeEkr_8pyo3_ffi6object8PyObjectE7convertBL_.exit, %bb.fq, %bb.b
  ret void
}

end_hunk_0
begin_hunk_1_@_RNvXNtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB2_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx:bb.a
  store ptr %i.j, ptr %i.m, align 8, !alias.scope !149387
  %.val.i = load i64, ptr %1, align 8, !alias.scope !149389 ; 4 uses
  %i.n = icmp eq i64 %i.c, 0
  br i1 %i.n, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE16with_capacity_inCskcxRuJ53GpR_9rustworkx.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i = load i64, ptr %i.o, align 8, !alias.scope !149389 ; 2 uses
  %.not.i.i2 = icmp ult i64 %.val2.i, %.val.i
  %i.p = select i1 %.not.i.i2, i64 0, i64 %.val.i
  %.sroa.04.0.i.i = sub nuw i64 %.val2.i, %i.p    ; 4 uses
  %i.q = sub i64 %.val.i, %.sroa.04.0.i.i         ; 2 uses
  %.not11.i.i = icmp ult i64 %i.q, %i.c
  br i1 %.not11.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = sub nuw nsw i64 %i.c, %i.q
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.s = add i64 %.sroa.04.0.i.i, %i.c
  br label %bb.j

bb.i:                                             ; preds = %bb.k
  %i.t = landingpad { ptr, i32 }
          cleanup
  %.val = load i64, ptr %i.a, align 8             ; 2 uses
  %i.u = icmp eq i64 %.val, 0
  br i1 %i.u, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections9vec_deque8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i: ; preds = %bb.i
  %.val1 = load ptr, ptr %i.m, align 8, !nonnull !56, !noundef !56
  %i.v = shl nuw i64 %.val, 2
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) 4) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections9vec_deque8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit

bb.j:                                             ; preds = %_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE16with_capacity_inCskcxRuJ53GpR_9rustworkx.exit, %bb.g, %bb.h
  %.sroa.0.0.i = phi i64 [ %.sroa.04.0.i.i, %bb.h ], [ %.sroa.04.0.i.i, %bb.g ], [ 0, %_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE16with_capacity_inCskcxRuJ53GpR_9rustworkx.exit ] ; 4 uses
  %.sroa.5.0.i = phi i64 [ %i.s, %bb.h ], [ %.val.i, %bb.g ], [ 0, %_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE16with_capacity_inCskcxRuJ53GpR_9rustworkx.exit ] ; 4 uses
  %.sroa.11.0.i = phi i64 [ 0, %bb.h ], [ %i.r, %bb.g ], [ 0, %_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE16with_capacity_inCskcxRuJ53GpR_9rustworkx.exit ] ; 10 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !149389, !nonnull !56, !noundef !56 ; 16 uses
  %i.y = ptrtoaddr ptr %i.x to i64                ; 4 uses
  %.idx8 = shl i64 %.sroa.0.0.i, 2                ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx8 ; 11 uses
  %.idx = shl i64 %.sroa.5.0.i, 2                 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx ; 3 uses
  %.idx10 = shl i64 %.sroa.11.0.i, 2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx10 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149390)
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub nuw nsw i64 %.sroa.5.0.i, %.sroa.0.0.i ; 10 uses
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = add nuw nsw i64 %.sroa.11.0.i, %i.ad    ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149391)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.ah = icmp ugt i64 %i.af, %.sroa.4.0.i
  br i1 %i.ah, label %bb.k, label %_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i

bb.k:                                             ; preds = %bb.j
  invoke fastcc void @_RINvNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef 0, i64 noundef %i.af, i64 noundef 4, i64 noundef 4)
          to label %bb.l unwind label %bb.i

bb.l:                                             ; preds = %bb.k
  %.pre.i.i = load i64, ptr %i.a, align 8, !range !59, !alias.scope !149392 ; 5 uses
  %.pre7.i.i = load i64, ptr %i.ag, align 8, !alias.scope !149392 ; 5 uses
  %.pre = load i64, ptr %i.l, align 8, !alias.scope !149392 ; 5 uses
  %.pre8.i.i = sub i64 %.sroa.4.0.i, %.pre7.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149393)
  %.not.i.i.i = icmp ugt i64 %.pre, %.pre8.i.i
  br i1 %.not.i.i.i, label %bb.m, label %_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ai = sub i64 %.sroa.4.0.i, %.pre             ; 4 uses
  %i.aj = sub i64 %.pre7.i.i, %i.ai               ; 3 uses
  %i.ak = icmp ule i64 %i.ai, %i.aj
  %i.al = sub nsw i64 %.pre.i.i, %.sroa.4.0.i
  %.not2.i.i.i = icmp ult i64 %i.al, %i.aj
  %or.cond.i.i.i = select i1 %i.ak, i1 true, i1 %.not2.i.i.i
  br i1 %or.cond.i.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.am = sub i64 %.pre.i.i, %i.ai                ; 3 uses
  %i.an = load ptr, ptr %i.m, align 8, !alias.scope !149392, !nonnull !56, !noundef !56 ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.pre
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.am
  %i.aq = shl nuw nsw i64 %i.ai, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ap, ptr nonnull align 4 %i.ao, i64 %i.aq, i1 false), !noalias !149394
  store i64 %i.am, ptr %i.l, align 8, !alias.scope !149392
  br label %_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i

bb.o:                                             ; preds = %bb.m
  %i.ar = load ptr, ptr %i.m, align 8, !alias.scope !149392, !nonnull !56, !noundef !56 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.sroa.4.0.i
  %i.at = shl nuw nsw i64 %i.aj, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.as, ptr nonnull align 4 %i.ar, i64 %i.at, i1 false), !noalias !149394
  br label %_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i

_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.j, %bb.o, %bb.n, %bb.l
  %i.au = phi i64 [ %.pre.i.i, %bb.o ], [ %.pre.i.i, %bb.l ], [ %.pre.i.i, %bb.n ], [ %.sroa.4.0.i, %bb.j ] ; 5 uses
  %i.av = phi i64 [ %.pre, %bb.o ], [ %.pre, %bb.l ], [ %i.am, %bb.n ], [ 0, %bb.j ] ; 3 uses
  %i.aw = phi i64 [ %.pre7.i.i, %bb.o ], [ %.pre7.i.i, %bb.l ], [ %.pre7.i.i, %bb.n ], [ 0, %bb.j ] ; 4 uses
  %i.ax = add i64 %i.aw, %i.av                    ; 2 uses
  %.not.i = icmp ult i64 %i.ax, %i.au
  %i.ay = select i1 %.not.i, i64 0, i64 %i.au     ; 3 uses
  %.sroa.02.0.i = sub nuw i64 %i.ax, %i.ay        ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149395)
  %i.az = sub i64 %i.au, %.sroa.02.0.i            ; 8 uses
  %.not.i.i3 = icmp ult i64 %i.az, %i.af
  br i1 %.not.i.i3, label %bb.p, label %bb.w

bb.p:                                             ; preds = %_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %.loopexit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bb = load ptr, ptr %i.m, align 8, !alias.scope !149396, !nonnull !56 ; 2 uses
  %i.bc = ptrtoaddr ptr %i.bb to i64              ; 2 uses
  %i.bd = getelementptr [4 x i8], ptr %i.bb, i64 %.sroa.02.0.i ; 4 uses
  %i.be = sub i64 %.idx, %.idx8
  %i.bf = lshr exact i64 %i.be, 2
  %i.bg = add i64 %i.ay, %i.au
  %i.bh = xor i64 %i.aw, -1
  %i.bi = add i64 %i.bg, %i.bh
  %i.bj = sub i64 %i.bi, %i.av
  %i.bk = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 %i.bj) ; 3 uses
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check76 = icmp samesign ult i64 %i.bk, 12
  br i1 %min.iters.check76, label %scalar.ph75, label %vector.memcheck77

vector.memcheck77:                                ; preds = %bb.q
  %i.bm = shl i64 %.sroa.02.0.i, 2
  %i.bn = add i64 %i.bm, %i.bc
  %i.bo = add i64 %.idx8, %i.y
  %i.bp = sub i64 %i.bo, %i.bn
  %diff.check78 = icmp ugt i64 %i.bp, -32
  br i1 %diff.check78, label %scalar.ph75, label %vector.ph79

vector.ph79:                                      ; preds = %vector.memcheck77
  %i.bq = and i64 %i.bl, 7                        ; 2 uses
  %i.br = icmp eq i64 %i.bq, 0
  %i.bs = select i1 %i.br, i64 8, i64 %i.bq
  %n.vec80 = sub nsw i64 %i.bl, %i.bs             ; 4 uses
  %i.bt = sub i64 %i.az, %n.vec80
  %i.bu = shl i64 %n.vec80, 2
  %i.bv = getelementptr i8, ptr %i.z, i64 %i.bu
  br label %vector.body81

vector.body81:                                    ; preds = %vector.body81, %vector.ph79
  %index82 = phi i64 [ 0, %vector.ph79 ], [ %index.next85, %vector.body81 ] ; 3 uses
  %i.bw = shl i64 %index82, 2
  %next.gep = getelementptr i8, ptr %i.z, i64 %i.bw ; 2 uses
  %i.bx = getelementptr i8, ptr %next.gep, i64 16
  %wide.load83 = load <4 x i32>, ptr %next.gep, align 4, !alias.scope !149397, !noalias !149398
  %wide.load84 = load <4 x i32>, ptr %i.bx, align 4, !alias.scope !149397, !noalias !149398
  %i.by = getelementptr [4 x i8], ptr %i.bd, i64 %index82 ; 2 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 16
  store <4 x i32> %wide.load83, ptr %i.by, align 4, !noalias !149399
  store <4 x i32> %wide.load84, ptr %i.bz, align 4, !noalias !149399
  %index.next85 = add nuw i64 %index82, 8         ; 2 uses
  %i.ca = icmp eq i64 %index.next85, %n.vec80
  br i1 %i.ca, label %scalar.ph75, label %vector.body81, !llvm.loop !149294

scalar.ph75:                                      ; preds = %vector.body81, %vector.memcheck77, %bb.q
  %bc.resume.val87 = phi i64 [ 0, %vector.memcheck77 ], [ 0, %bb.q ], [ %n.vec80, %vector.body81 ] ; 2 uses
  %bc.resume.val88 = phi i64 [ %i.az, %vector.memcheck77 ], [ %i.az, %bb.q ], [ %i.bt, %vector.body81 ]
  %bc.resume.val89 = phi ptr [ %i.z, %vector.memcheck77 ], [ %i.z, %bb.q ], [ %i.bv, %vector.body81 ]
  br label %bb.r

bb.r:                                             ; preds = %scalar.ph75, %bb.s
  %indvar = phi i64 [ 0, %scalar.ph75 ], [ %indvar.next, %bb.s ] ; 2 uses
  %.sroa.8.1.i.i = phi i64 [ %bc.resume.val87, %scalar.ph75 ], [ %i.dh, %bb.s ] ; 6 uses
  %.promoted5.i.i.i.i = phi i64 [ %bc.resume.val88, %scalar.ph75 ], [ %i.df, %bb.s ] ; 4 uses
  %i.cb = phi ptr [ %bc.resume.val89, %scalar.ph75 ], [ %i.de, %bb.s ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i.i = icmp eq ptr %i.cb, %i.aa
  br i1 %.not.not.not.i.not.i.i.i.i.i.i.i, label %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1D_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3f_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2u_4takeINtB4E_4TakepEB1x_8try_fold5checkBJ_uB3P_NCINvMB3S_B3P_10wrap_mut_2uBJ_NCINvNvXs_NtB2u_9enumerateINtB68_9EnumeratepEB1x_4fold9enumerateBJ_uNCINvNvB1x_8for_each4callTjBJ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB7I_8VecDequeBJ_E10write_iterIB4Q_INtNtB2u_12by_ref_sized10ByRefSizedINtB2s_6ClonedINtNtB7I_4iter4IterBJ_EEEEE0E0E0E0E0E0B3a_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.preheader, label %bb.s

_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1D_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3f_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2u_4takeINtB4E_4TakepEB1x_8try_fold5checkBJ_uB3P_NCINvMB3S_B3P_10wrap_mut_2uBJ_NCINvNvXs_NtB2u_9enumerateINtB68_9EnumeratepEB1x_4fold9enumerateBJ_uNCINvNvB1x_8for_each4callTjBJ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB7I_8VecDequeBJ_E10write_iterIB4Q_INtNtB2u_12by_ref_sized10ByRefSizedINtB2s_6ClonedINtNtB7I_4iter4IterBJ_EEEEE0E0E0E0E0E0B3a_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.preheader: ; preds = %bb.r
  %i.cc = and i64 %.sroa.11.0.i, 4611686018427387903
  %i.cd = add i64 %i.ay, %i.au
  %i.ce = xor i64 %i.aw, -1
  %i.cf = add i64 %i.cd, %i.ce
  %i.cg = add i64 %i.av, %i.bk
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = tail call i64 @llvm.umin.i64(i64 %i.cc, i64 %i.ch) ; 2 uses
  %i.cj = add nuw nsw i64 %i.ci, 1                ; 2 uses
  %min.iters.check93 = icmp samesign ult i64 %i.ci, 16
  br i1 %min.iters.check93, label %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1D_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3f_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2u_4takeINtB4E_4TakepEB1x_8try_fold5checkBJ_uB3P_NCINvMB3S_B3P_10wrap_mut_2uBJ_NCINvNvXs_NtB2u_9enumerateINtB68_9EnumeratepEB1x_4fold9enumerateBJ_uNCINvNvB1x_8for_each4callTjBJ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB7I_8VecDequeBJ_E10write_iterIB4Q_INtNtB2u_12by_ref_sized10ByRefSizedINtB2s_6ClonedINtNtB7I_4iter4IterBJ_EEEEE0E0E0E0E0E0B3a_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.preheader141, label %vector.memcheck90

_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1D_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3f_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2u_4takeINtB4E_4TakepEB1x_8try_fold5checkBJ_uB3P_NCINvMB3S_B3P_10wrap_mut_2uBJ_NCINvNvXs_NtB2u_9enumerateINtB68_9EnumeratepEB1x_4fold9enumerateBJ_uNCINvNvB1x_8for_each4callTjBJ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB7I_8VecDequeBJ_E10write_iterIB4Q_INtNtB2u_12by_ref_sized10ByRefSizedINtB2s_6ClonedINtNtB7I_4iter4IterBJ_EEEEE0E0E0E0E0E0B3a_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.preheader141: ; preds = %vector.body96, %vector.memcheck90, %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1D_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3f_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2u_4takeINtB4E_4TakepEB1x_8try_fold5checkBJ_uB3P_NCINvMB3S_B3P_10wrap_mut_2uBJ_NCINvNvXs_NtB2u_9enumerateINtB68_9EnumeratepEB1x_4fold9enumerateBJ_uNCINvNvB1x_8for_each4callTjBJ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB7I_8VecDequeBJ_E10write_iterIB4Q_INtNtB2u_12by_ref_sized10ByRefSizedINtB2s_6ClonedINtNtB7I_4iter4IterBJ_EEEEE0E0E0E0E0E0B3a_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.preheader
  %.sroa.9.1.i.ph = phi ptr [ %i.x, %vector.memcheck90 ], [ %i.x, %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1D_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3f_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2u_4takeINtB4E_4TakepEB1x_8try_fold5checkBJ_uB3P_NCINvMB3S_B3P_10wrap_mut_2uBJ_NCINvNvXs_NtB2u_9enumerateINtB68_9EnumeratepEB1x_4fold9enumerateBJ_uNCINvNvB1x_8for_each4callTjBJ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB7I_8VecDequeBJ_E10write_iterIB4Q_INtNtB2u_12by_ref_sized10ByRefSizedINtB2s_6ClonedINtNtB7I_4iter4IterBJ_EEEEE0E0E0E0E0E0B3a_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.preheader ], [ %i.cv, %vector.body96 ]
  %.sroa.8.2.i.i.ph = phi i64 [ %.sroa.8.1.i.i, %vector.memcheck90 ], [ %.sroa.8.1.i.i, %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1D_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3f_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2u_4takeINtB4E_4TakepEB1x_8try_fold5checkBJ_uB3P_NCINvMB3S_B3P_10wrap_mut_2uBJ_NCINvNvXs_NtB2u_9enumerateINtB68_9EnumeratepEB1x_4fold9enumerateBJ_uNCINvNvB1x_8for_each4callTjBJ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB7I_8VecDequeBJ_E10write_iterIB4Q_INtNtB2u_12by_ref_sized10ByRefSizedINtB2s_6ClonedINtNtB7I_4iter4IterBJ_EEEEE0E0E0E0E0E0B3a_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.preheader ], [ %i.cw, %vector.body96 ]
  %.ph142.a = phi i64 [ %.promoted5.i.i.i.i, %vector.memcheck90 ], [ %.promoted5.i.i.i.i, %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1D_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3f_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2u_4takeINtB4E_4TakepEB1x_8try_fold5checkBJ_uB3P_NCINvMB3S_B3P_10wrap_mut_2uBJ_NCINvNvXs_NtB2u_9enumerateINtB68_9EnumeratepEB1x_4fold9enumerateBJ_uNCINvNvB1x_8for_each4callTjBJ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB7I_8VecDequeBJ_E10write_iterIB4Q_INtNtB2u_12by_ref_sized10ByRefSizedINtB2s_6ClonedINtNtB7I_4iter4IterBJ_EEEEE0E0E0E0E0E0B3a_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.preheader ], [ %i.cx, %vector.body96 ]
  br label %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1D_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3f_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2u_4takeINtB4E_4TakepEB1x_8try_fold5checkBJ_uB3P_NCINvMB3S_B3P_10wrap_mut_2uBJ_NCINvNvXs_NtB2u_9enumerateINtB68_9EnumeratepEB1x_4fold9enumerateBJ_uNCINvNvB1x_8for_each4callTjBJ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB7I_8VecDequeBJ_E10write_iterIB4Q_INtNtB2u_12by_ref_sized10ByRefSizedINtB2s_6ClonedINtNtB7I_4iter4IterBJ_EEEEE0E0E0E0E0E0B3a_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i

vector.memcheck90:                                ; preds = %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1D_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3f_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2u_4takeINtB4E_4TakepEB1x_8try_fold5checkBJ_uB3P_NCINvMB3S_B3P_10wrap_mut_2uBJ_NCINvNvXs_NtB2u_9enumerateINtB68_9EnumeratepEB1x_4fold9enumerateBJ_uNCINvNvB1x_8for_each4callTjBJ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB7I_8VecDequeBJ_E10write_iterIB4Q_INtNtB2u_12by_ref_sized10ByRefSizedINtB2s_6ClonedINtNtB7I_4iter4IterBJ_EEEEE0E0E0E0E0E0B3a_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.preheader
  %i.ck = add i64 %bc.resume.val87, %.sroa.02.0.i
  %i.cl = shl i64 %i.ck, 2
  %i.cm = add i64 %i.cl, %i.bc
  %i.cn = sub i64 %i.cm, %i.y
  %i.co = shl i64 %indvar, 2
  %i.cp = add i64 %i.co, %i.cn
  %i.cq = add i64 %i.cp, -1
  %diff.check91 = icmp ult i64 %i.cq, 31
  br i1 %diff.check91, label %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1D_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3f_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2u_4takeINtB4E_4TakepEB1x_8try_fold5checkBJ_uB3P_NCINvMB3S_B3P_10wrap_mut_2uBJ_NCINvNvXs_NtB2u_9enumerateINtB68_9EnumeratepEB1x_4fold9enumerateBJ_uNCINvNvB1x_8for_each4callTjBJ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB7I_8VecDequeBJ_E10write_iterIB4Q_INtNtB2u_12by_ref_sized10ByRefSizedINtB2s_6ClonedINtNtB7I_4iter4IterBJ_EEEEE0E0E0E0E0E0B3a_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.preheader141, label %vector.ph94

vector.ph94:                                      ; preds = %vector.memcheck90
  %i.cr = and i64 %i.cj, 7                        ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 0
  %i.ct = select i1 %i.cs, i64 8, i64 %i.cr
  %n.vec95 = sub nsw i64 %i.cj, %i.ct             ; 4 uses
  %i.cu = shl i64 %n.vec95, 2
  %i.cv = getelementptr i8, ptr %i.x, i64 %i.cu
  %i.cw = add i64 %.sroa.8.1.i.i, %n.vec95
  %i.cx = sub i64 %.promoted5.i.i.i.i, %n.vec95
  %i.cy = getelementptr [4 x i8], ptr %i.bd, i64 %.sroa.8.1.i.i
  br label %vector.body96

vector.body96:                                    ; preds = %vector.body96, %vector.ph94
  %index97 = phi i64 [ 0, %vector.ph94 ], [ %index.next101, %vector.body96 ] ; 3 uses
  %i.cz = shl i64 %index97, 2
  %next.gep98 = getelementptr i8, ptr %i.x, i64 %i.cz ; 2 uses
  %i.da = getelementptr i8, ptr %next.gep98, i64 16
  %wide.load99 = load <4 x i32>, ptr %next.gep98, align 4, !alias.scope !149400, !noalias !149401
  %wide.load100 = load <4 x i32>, ptr %i.da, align 4, !alias.scope !149400, !noalias !149401
  %i.db = getelementptr [4 x i8], ptr %i.cy, i64 %index97 ; 2 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 16
  store <4 x i32> %wide.load99, ptr %i.db, align 4, !noalias !149402
  store <4 x i32> %wide.load100, ptr %i.dc, align 4, !noalias !149402
  %index.next101 = add nuw i64 %index97, 8        ; 2 uses
  %i.dd = icmp eq i64 %index.next101, %n.vec95
  br i1 %i.dd, label %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1D_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3f_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2u_4takeINtB4E_4TakepEB1x_8try_fold5checkBJ_uB3P_NCINvMB3S_B3P_10wrap_mut_2uBJ_NCINvNvXs_NtB2u_9enumerateINtB68_9EnumeratepEB1x_4fold9enumerateBJ_uNCINvNvB1x_8for_each4callTjBJ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB7I_8VecDequeBJ_E10write_iterIB4Q_INtNtB2u_12by_ref_sized10ByRefSizedINtB2s_6ClonedINtNtB7I_4iter4IterBJ_EEEEE0E0E0E0E0E0B3a_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.preheader141, label %vector.body96, !llvm.loop !149312

bb.s:                                             ; preds = %bb.r
  %i.de = getelementptr inbounds nuw i8, ptr %i.cb, i64 4 ; 2 uses
  %.val5.i.i.i.i.i.i.i.i = load i32, ptr %i.cb, align 4, !alias.scope !149397, !noalias !149398, !noundef !56
  %i.df = add nsw i64 %.promoted5.i.i.i.i, -1     ; 2 uses
  %i.dg = getelementptr [4 x i8], ptr %i.bd, i64 %.sroa.8.1.i.i
  store i32 %.val5.i.i.i.i.i.i.i.i, ptr %i.dg, align 4, !noalias !149399
  %i.dh = add nuw nsw i64 %.sroa.8.1.i.i, 1
  %i.di = icmp eq i64 %i.df, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.di, label %.loopexit.i.i, label %bb.r, !llvm.loop !149313

_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1D_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3f_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2u_4takeINtB4E_4TakepEB1x_8try_fold5checkBJ_uB3P_NCINvMB3S_B3P_10wrap_mut_2uBJ_NCINvNvXs_NtB2u_9enumerateINtB68_9EnumeratepEB1x_4fold9enumerateBJ_uNCINvNvB1x_8for_each4callTjBJ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB7I_8VecDequeBJ_E10write_iterIB4Q_INtNtB2u_12by_ref_sized10ByRefSizedINtB2s_6ClonedINtNtB7I_4iter4IterBJ_EEEEE0E0E0E0E0E0B3a_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i: ; preds = %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1D_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3f_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2u_4takeINtB4E_4TakepEB1x_8try_fold5checkBJ_uB3P_NCINvMB3S_B3P_10wrap_mut_2uBJ_NCINvNvXs_NtB2u_9enumerateINtB68_9EnumeratepEB1x_4fold9enumerateBJ_uNCINvNvB1x_8for_each4callTjBJ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB7I_8VecDequeBJ_E10write_iterIB4Q_INtNtB2u_12by_ref_sized10ByRefSizedINtB2s_6ClonedINtNtB7I_4iter4IterBJ_EEEEE0E0E0E0E0E0B3a_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.preheader141, %bb.t
  %.sroa.9.1.i = phi ptr [ %i.dk, %bb.t ], [ %.sroa.9.1.i.ph, %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1D_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3f_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2u_4takeINtB4E_4TakepEB1x_8try_fold5checkBJ_uB3P_NCINvMB3S_B3P_10wrap_mut_2uBJ_NCINvNvXs_NtB2u_9enumerateINtB68_9EnumeratepEB1x_4fold9enumerateBJ_uNCINvNvB1x_8for_each4callTjBJ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB7I_8VecDequeBJ_E10write_iterIB4Q_INtNtB2u_12by_ref_sized10ByRefSizedINtB2s_6ClonedINtNtB7I_4iter4IterBJ_EEEEE0E0E0E0E0E0B3a_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.preheader141 ] ; 3 uses
  %.sroa.8.2.i.i = phi i64 [ %i.dn, %bb.t ], [ %.sroa.8.2.i.i.ph, %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1D_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3f_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2u_4takeINtB4E_4TakepEB1x_8try_fold5checkBJ_uB3P_NCINvMB3S_B3P_10wrap_mut_2uBJ_NCINvNvXs_NtB2u_9enumerateINtB68_9EnumeratepEB1x_4fold9enumerateBJ_uNCINvNvB1x_8for_each4callTjBJ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB7I_8VecDequeBJ_E10write_iterIB4Q_INtNtB2u_12by_ref_sized10ByRefSizedINtB2s_6ClonedINtNtB7I_4iter4IterBJ_EEEEE0E0E0E0E0E0B3a_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.preheader141 ] ; 3 uses
  %i.dj = phi i64 [ %i.dl, %bb.t ], [ %.ph142.a, %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1D_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3f_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2u_4takeINtB4E_4TakepEB1x_8try_fold5checkBJ_uB3P_NCINvMB3S_B3P_10wrap_mut_2uBJ_NCINvNvXs_NtB2u_9enumerateINtB68_9EnumeratepEB1x_4fold9enumerateBJ_uNCINvNvB1x_8for_each4callTjBJ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB7I_8VecDequeBJ_E10write_iterIB4Q_INtNtB2u_12by_ref_sized10ByRefSizedINtB2s_6ClonedINtNtB7I_4iter4IterBJ_EEEEE0E0E0E0E0E0B3a_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.preheader141 ]
  %.not.not.not.i4.not.not.i.not.i.not.i.i.i.i.i = icmp eq ptr %.sroa.9.1.i, %i.ab
  br i1 %.not.not.not.i4.not.not.i.not.i.not.i.i.i.i.i, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1D_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3f_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2u_4takeINtB4E_4TakepEB1x_8try_fold5checkBJ_uB3P_NCINvMB3S_B3P_10wrap_mut_2uBJ_NCINvNvXs_NtB2u_9enumerateINtB68_9EnumeratepEB1x_4fold9enumerateBJ_uNCINvNvB1x_8for_each4callTjBJ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB7I_8VecDequeBJ_E10write_iterIB4Q_INtNtB2u_12by_ref_sized10ByRefSizedINtB2s_6ClonedINtNtB7I_4iter4IterBJ_EEEEE0E0E0E0E0E0B3a_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.9.1.i, i64 4 ; 2 uses
  %.val5.i5.i.i.i.i.i.i.i = load i32, ptr %.sroa.9.1.i, align 4, !alias.scope !149400, !noalias !149401, !noundef !56
  %i.dl = add nsw i64 %i.dj, -1                   ; 2 uses
  %i.dm = getelementptr [4 x i8], ptr %i.bd, i64 %.sroa.8.2.i.i
  store i32 %.val5.i5.i.i.i.i.i.i.i, ptr %i.dm, align 4, !noalias !149402
  %i.dn = add nuw nsw i64 %.sroa.8.2.i.i, 1
  %i.do = icmp eq i64 %i.dl, 0
  br i1 %i.do, label %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1D_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3f_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2u_4takeINtB4E_4TakepEB1x_8try_fold5checkBJ_uB3P_NCINvMB3S_B3P_10wrap_mut_2uBJ_NCINvNvXs_NtB2u_9enumerateINtB68_9EnumeratepEB1x_4fold9enumerateBJ_uNCINvNvB1x_8for_each4callTjBJ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB7I_8VecDequeBJ_E10write_iterIB4Q_INtNtB2u_12by_ref_sized10ByRefSizedINtB2s_6ClonedINtNtB7I_4iter4IterBJ_EEEEE0E0E0E0E0E0B3a_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i, !llvm.loop !149314

.loopexit.i.i:                                    ; preds = %bb.s, %bb.p
  %.sroa.062.0.copyload.i.i = phi ptr [ %i.z, %bb.p ], [ %i.de, %bb.s ] ; 8 uses
  %i.dp = icmp eq ptr %.sroa.062.0.copyload.i.i, %i.aa
  br i1 %i.dp, label %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %.loopexit.i.i
  %i.dq = ptrtoint ptr %.sroa.062.0.copyload.i.i to i64 ; 2 uses
  %i.dr = sub nuw i64 %i.ac, %i.dq                ; 2 uses
  %i.ds = lshr i64 %i.dr, 2                       ; 7 uses
  %i.dt = load ptr, ptr %i.m, align 8, !alias.scope !149396, !noalias !149403, !nonnull !56, !noundef !56 ; 7 uses
  %min.iters.check109 = icmp ult i64 %i.dr, 32
  %i.du = ptrtoaddr ptr %i.dt to i64
  %i.dv = sub i64 %i.dq, %i.du
  %diff.check111 = icmp ugt i64 %i.dv, -32
  %or.cond = or i1 %min.iters.check109, %diff.check111
  br i1 %or.cond, label %scalar.ph108.preheader, label %vector.ph112

vector.ph112:                                     ; preds = %bb.u
  %n.vec113 = and i64 %i.ds, 4611686018427387896  ; 3 uses
  br label %vector.body114

vector.body114:                                   ; preds = %vector.body114, %vector.ph112
  %index115 = phi i64 [ 0, %vector.ph112 ], [ %index.next118, %vector.body114 ] ; 3 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.062.0.copyload.i.i, i64 %index115 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %wide.load116 = load <4 x i32>, ptr %i.dw, align 4, !alias.scope !149404, !noalias !149405
  %wide.load117 = load <4 x i32>, ptr %i.dx, align 4, !alias.scope !149404, !noalias !149405
  %i.dy = getelementptr [4 x i8], ptr %i.dt, i64 %index115 ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dy, i64 16
  store <4 x i32> %wide.load116, ptr %i.dy, align 4, !noalias !149406
  store <4 x i32> %wide.load117, ptr %i.dz, align 4, !noalias !149406
  %index.next118 = add nuw i64 %index115, 8       ; 2 uses
  %i.ea = icmp eq i64 %index.next118, %n.vec113
  br i1 %i.ea, label %middle.block119, label %vector.body114, !llvm.loop !149333

middle.block119:                                  ; preds = %vector.body114
  %cmp.n120 = icmp eq i64 %i.ds, %n.vec113
  br i1 %cmp.n120, label %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i.loopexit.i.i, label %scalar.ph108.preheader

scalar.ph108.preheader:                           ; preds = %bb.u, %middle.block119
  %.ph140 = phi i64 [ 0, %bb.u ], [ %n.vec113, %middle.block119 ] ; 3 uses
  %xtraiter153 = and i64 %i.ds, 3                 ; 2 uses
  %lcmp.mod154.not = icmp eq i64 %xtraiter153, 0
  br i1 %lcmp.mod154.not, label %scalar.ph108.prol.loopexit, label %scalar.ph108.prol

scalar.ph108.prol:                                ; preds = %scalar.ph108.preheader, %scalar.ph108.prol
  %i.eb = phi i64 [ %i.ee, %scalar.ph108.prol ], [ %.ph140, %scalar.ph108.preheader ] ; 3 uses
  %prol.iter155 = phi i64 [ %prol.iter155.next, %scalar.ph108.prol ], [ 0, %scalar.ph108.preheader ]
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.sroa.062.0.copyload.i.i, i64 %i.eb
  %.val8.i.i.i.i.i.prol = load i32, ptr %i.ec, align 4, !alias.scope !149404, !noalias !149405, !noundef !56
  %i.ed = getelementptr [4 x i8], ptr %i.dt, i64 %i.eb
  store i32 %.val8.i.i.i.i.i.prol, ptr %i.ed, align 4, !noalias !149406
  %i.ee = add nuw i64 %i.eb, 1                    ; 2 uses
  %prol.iter155.next = add i64 %prol.iter155, 1   ; 2 uses
  %prol.iter155.cmp.not = icmp eq i64 %prol.iter155.next, %xtraiter153
  br i1 %prol.iter155.cmp.not, label %scalar.ph108.prol.loopexit, label %scalar.ph108.prol, !llvm.loop !149334

scalar.ph108.prol.loopexit:                       ; preds = %scalar.ph108.prol, %scalar.ph108.preheader
  %.unr156 = phi i64 [ %.ph140, %scalar.ph108.preheader ], [ %i.ee, %scalar.ph108.prol ]
  %i.ef = sub nsw i64 %.ph140, %i.ds
  %i.eg = icmp ugt i64 %i.ef, -4
  br i1 %i.eg, label %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i.loopexit.i.i, label %scalar.ph108

scalar.ph108:                                     ; preds = %scalar.ph108.prol.loopexit, %scalar.ph108
  %i.eh = phi i64 [ %i.et, %scalar.ph108 ], [ %.unr156, %scalar.ph108.prol.loopexit ] ; 6 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.sroa.062.0.copyload.i.i, i64 %i.eh
  %.val8.i.i.i.i.i = load i32, ptr %i.ei, align 4, !alias.scope !149404, !noalias !149405, !noundef !56
  %i.ej = getelementptr [4 x i8], ptr %i.dt, i64 %i.eh
  store i32 %.val8.i.i.i.i.i, ptr %i.ej, align 4, !noalias !149406
  %i.ek = add nuw i64 %i.eh, 1                    ; 2 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.sroa.062.0.copyload.i.i, i64 %i.ek
  %.val8.i.i.i.i.i.1 = load i32, ptr %i.el, align 4, !alias.scope !149404, !noalias !149405, !noundef !56
  %i.em = getelementptr [4 x i8], ptr %i.dt, i64 %i.ek
  store i32 %.val8.i.i.i.i.i.1, ptr %i.em, align 4, !noalias !149406
  %i.en = add nuw i64 %i.eh, 2                    ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.062.0.copyload.i.i, i64 %i.en
  %.val8.i.i.i.i.i.2 = load i32, ptr %i.eo, align 4, !alias.scope !149404, !noalias !149405, !noundef !56
  %i.ep = getelementptr [4 x i8], ptr %i.dt, i64 %i.en
  store i32 %.val8.i.i.i.i.i.2, ptr %i.ep, align 4, !noalias !149406
  %i.eq = add nuw i64 %i.eh, 3                    ; 2 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %.sroa.062.0.copyload.i.i, i64 %i.eq
  %.val8.i.i.i.i.i.3 = load i32, ptr %i.er, align 4, !alias.scope !149404, !noalias !149405, !noundef !56
  %i.es = getelementptr [4 x i8], ptr %i.dt, i64 %i.eq
  store i32 %.val8.i.i.i.i.i.3, ptr %i.es, align 4, !noalias !149406
  %i.et = add nuw i64 %i.eh, 4                    ; 2 uses
  %i.eu = icmp eq i64 %i.et, %i.ds
  br i1 %i.eu, label %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i.loopexit.i.i, label %scalar.ph108, !llvm.loop !149335

_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i.loopexit.i.i: ; preds = %scalar.ph108.prol.loopexit, %scalar.ph108, %middle.block119
  %i.ev = add i64 %i.ds, %i.az
  br label %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %bb.t, %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i.loopexit.i.i, %.loopexit.i.i
  %.sroa.9.0.i43 = phi ptr [ %i.x, %.loopexit.i.i ], [ %i.x, %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i.loopexit.i.i ], [ %i.dk, %bb.t ] ; 8 uses
  %.sroa.8.5.i.i = phi i64 [ %i.az, %.loopexit.i.i ], [ %i.ev, %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i.loopexit.i.i ], [ %i.az, %bb.t ] ; 2 uses
  %.sroa.9.0.i.i.i = phi i64 [ 0, %.loopexit.i.i ], [ %i.ds, %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i.loopexit.i.i ], [ 0, %bb.t ] ; 5 uses
  %i.ew = icmp eq ptr %.sroa.9.0.i43, %i.ab
  br i1 %i.ew, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %i.ex = ptrtoint ptr %.sroa.9.0.i43 to i64      ; 2 uses
  %i.ey = sub nuw i64 %i.ae, %i.ex                ; 2 uses
  %i.ez = lshr i64 %i.ey, 2                       ; 6 uses
  %i.fa = load ptr, ptr %i.m, align 8, !alias.scope !149396, !noalias !149407, !nonnull !56, !noundef !56 ; 7 uses
  %min.iters.check125 = icmp ult i64 %i.ey, 48
  br i1 %min.iters.check125, label %scalar.ph124.preheader, label %vector.memcheck126

vector.memcheck126:                               ; preds = %bb.v
  %i.fb = ptrtoaddr ptr %i.fa to i64
  %i.fc = shl nuw i64 %.sroa.9.0.i.i.i, 2
  %i.fd = add i64 %i.fc, %i.fb
  %i.fe = sub i64 %i.ex, %i.fd
  %diff.check127 = icmp ugt i64 %i.fe, -32
  br i1 %diff.check127, label %scalar.ph124.preheader, label %vector.ph128

vector.ph128:                                     ; preds = %vector.memcheck126
  %n.vec129 = and i64 %i.ez, 4611686018427387896  ; 4 uses
  %i.ff = add nuw nsw i64 %.sroa.9.0.i.i.i, %n.vec129
  %i.fg = getelementptr [4 x i8], ptr %i.fa, i64 %.sroa.9.0.i.i.i
  br label %vector.body130

vector.body130:                                   ; preds = %vector.body130, %vector.ph128
  %index131 = phi i64 [ 0, %vector.ph128 ], [ %index.next134, %vector.body130 ] ; 3 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.9.0.i43, i64 %index131 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %wide.load132 = load <4 x i32>, ptr %i.fh, align 4, !alias.scope !149408, !noalias !149409
  %wide.load133 = load <4 x i32>, ptr %i.fi, align 4, !alias.scope !149408, !noalias !149409
  %i.fj = getelementptr [4 x i8], ptr %i.fg, i64 %index131 ; 2 uses
  %i.fk = getelementptr i8, ptr %i.fj, i64 16
  store <4 x i32> %wide.load132, ptr %i.fj, align 4, !noalias !149410
  store <4 x i32> %wide.load133, ptr %i.fk, align 4, !noalias !149410
  %index.next134 = add nuw i64 %index131, 8       ; 2 uses
  %i.fl = icmp eq i64 %index.next134, %n.vec129
  br i1 %i.fl, label %middle.block135, label %vector.body130, !llvm.loop !149348

middle.block135:                                  ; preds = %vector.body130
  %cmp.n136 = icmp eq i64 %i.ez, %n.vec129
  br i1 %cmp.n136, label %_RINvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCs87CvPiUlf0m_5alloc11collections9vec_deque4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvXs_NtB7_9enumerateINtB3F_9EnumeratepEB2R_4fold9enumerateB22_uNCINvNvB2R_8for_each4callTjB22_ENCINvMs2_B17_INtB17_8VecDequeB22_E10write_iterBP_E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.loopexit.i.i, label %scalar.ph124.preheader

scalar.ph124.preheader:                           ; preds = %vector.memcheck126, %bb.v, %middle.block135
  %.ph = phi i64 [ %.sroa.9.0.i.i.i, %vector.memcheck126 ], [ %.sroa.9.0.i.i.i, %bb.v ], [ %i.ff, %middle.block135 ] ; 2 uses
end_hunk_1
