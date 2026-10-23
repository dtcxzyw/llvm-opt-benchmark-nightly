Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ripgrep-rs/original/grep_regex-342b229b6101d80c.grep_regex.9c5453b099169300-cgu.5?download=true
inline.NumInlined: 252
inline.NumDeleted: 126
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [8 x i8] c"\03(?:\C0\01)\00", align 1
@1 = private unnamed_addr constant [1 x i8] c"|", align 1
@_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER = external local_unnamed_addr global { { { i64 } } }
@2 = private unnamed_addr constant [46 x i8] c"\14assembling HIR from \C0\16 fixed string literals\00", align 1
@3 = private unnamed_addr constant [27 x i8] c"crates/regex/src/config.rs\00", align 1
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"\1A\00\00\00\00\00\00\00\AF\00\00\00\0D\00\00\00" }>, align 8
@5 = private unnamed_addr constant [18 x i8] c"grep_regex::config", align 1

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtCsdq8xsXUia3c_10grep_regex6configNtB6_13ConfiguredHIR3newReEB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %2, i64 noundef range(i64 0, 576460752303423488) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !230 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [128 x i8], align 8               ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [88 x i8], align 8                ; 5 uses
  %.sroa.3 = alloca [32 x i8], align 8            ; 3 uses
  %i.h = alloca [48 x i8], align 8                ; 4 uses
  %i.i = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.647 = alloca [32 x i8], align 8          ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [40 x i8], align 8                ; 17 uses
  %i.l = alloca [80 x i8], align 8                ; 9 uses
  %.sroa.637 = alloca [32 x i8], align 8          ; 7 uses
  %.sroa.630 = alloca [32 x i8], align 8          ; 7 uses
  %i.m = alloca [48 x i8], align 8                ; 15 uses
  %i.n = alloca [200 x i8], align 8               ; 27 uses
  %i.o = alloca [128 x i8], align 8               ; 8 uses
  %i.p = alloca [16 x i8], align 8                ; 10 uses
  %i.q = alloca [24 x i8], align 8                ; 13 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 8 uses
  %i.w = alloca [24 x i8], align 8                ; 15 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %i.y = alloca [48 x i8], align 8                ; 3 uses
  %i.z = alloca [40 x i8], align 8                ; 8 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [48 x i8], align 8               ; 9 uses
  %i.ad = alloca [24 x i8], align 8               ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !626), !dbg !811
  tail call void @llvm.experimental.noalias.scope.decl(metadata !627), !dbg !811
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !812
  %i.af = load i8, ptr %i.ae, align 8, !dbg !812, !range !149, !alias.scope !626, !noundef !147
  %i.ag = trunc nuw i8 %i.af to i1, !dbg !812     ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.ai = load i8, ptr %i.ah, align 1, !range !149, !alias.scope !626 ; 2 uses
  %i.aj = trunc nuw i8 %i.ai to i1
  %or.cond.i = select i1 %i.ag, i1 true, i1 %i.aj, !dbg !812
  br i1 %or.cond.i, label %._RINvMs_NtCsdq8xsXUia3c_10grep_regex6configNtB5_6Config16is_fixed_stringsReEB7_.exit_crit_edge, label %bb.b, !dbg !812

._RINvMs_NtCsdq8xsXUia3c_10grep_regex6configNtB5_6Config16is_fixed_stringsReEB7_.exit_crit_edge: ; preds = %bb.a
  %.pre247 = shl nuw nsw i64 %3, 4, !dbg !813
  br label %_RINvMs_NtCsdq8xsXUia3c_10grep_regex6configNtB5_6Config16is_fixed_stringsReEB7_.exit, !dbg !812

bb.b:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 34, !dbg !814
  %i.al = load i8, ptr %i.ak, align 2, !dbg !814, !range !149, !alias.scope !626, !noundef !147
  %i.am = trunc nuw i8 %i.al to i1, !dbg !814
  br i1 %i.am, label %bb.j, label %bb.c, !dbg !814

bb.c:                                             ; preds = %bb.b
  %.idx.i = shl nuw nsw i64 %3, 4, !dbg !815      ; 61 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i, !dbg !815 ; 3 uses
  %i.ao = icmp eq i64 %3, 0, !dbg !816
  br i1 %i.ao, label %.loopexit209.thread, label %.lr.ph.i, !dbg !817

.lr.ph.i:                                         ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.aq = load i8, ptr %i.ap, align 4, !range !636, !alias.scope !626
  %.fr48.i = freeze i8 %i.aq                      ; 2 uses
  %.not.i = icmp eq i8 %.fr48.i, 2
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.as = load i8, ptr %i.ar, align 1, !alias.scope !626
  br i1 %.not.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %_RNvNtCsdq8xsXUia3c_10grep_regex6config19has_line_terminator.exit.us.i
  %.sroa.09.035.us.i = phi ptr [ %i.at, %_RNvNtCsdq8xsXUia3c_10grep_regex6config19has_line_terminator.exit.us.i ], [ %2, %.lr.ph.i ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.09.035.us.i, i64 16, !dbg !818 ; 2 uses
  %.sroa.09.0.val.us.i = load ptr, ptr %.sroa.09.035.us.i, align 8, !dbg !819, !alias.scope !627, !nonnull !147, !noundef !147 ; 2 uses
  %i.au = getelementptr i8, ptr %.sroa.09.035.us.i, i64 8, !dbg !819
  %.sroa.09.0.val13.us.i = load i64, ptr %i.au, align 8, !dbg !819, !alias.scope !627, !noundef !147
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.09.0.val.us.i, i64 %.sroa.09.0.val13.us.i, !dbg !820 ; 4 uses
  br label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkcNvCs2G6gJ0Mq9lu_12regex_syntax17is_meta_characterE0Csdq8xsXUia3c_10grep_regex.exit.i.us.i, !dbg !821

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkcNvCs2G6gJ0Mq9lu_12regex_syntax17is_meta_characterE0Csdq8xsXUia3c_10grep_regex.exit.i.us.i: ; preds = %bb.f, %.lr.ph.split.us.i
  %i.aw = phi ptr [ %i.cf, %bb.f ], [ %.sroa.09.0.val.us.i, %.lr.ph.split.us.i ] ; 6 uses
  %.not.i.not.not.not.i.not.us.i = icmp eq ptr %i.aw, %i.av, !dbg !822
  br i1 %.not.i.not.not.not.i.not.us.i, label %_RNvNtCsdq8xsXUia3c_10grep_regex6config19has_line_terminator.exit.us.i, label %bb.d, !dbg !823

bb.d:                                             ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkcNvCs2G6gJ0Mq9lu_12regex_syntax17is_meta_characterE0Csdq8xsXUia3c_10grep_regex.exit.i.us.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1, !dbg !824 ; 3 uses
  %i.ay = load i8, ptr %i.aw, align 1, !dbg !825, !noalias !647, !noundef !147 ; 5 uses
  %i.az = icmp sgt i8 %i.ay, -1, !dbg !826
  br i1 %i.az, label %bb.e, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdq8xsXUia3c_10grep_regex.exit12.i.i.i.us.i, !dbg !826

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdq8xsXUia3c_10grep_regex.exit12.i.i.i.us.i: ; preds = %bb.d
  %i.ba = and i8 %i.ay, 31, !dbg !827
  %i.bb = zext nneg i8 %i.ba to i32, !dbg !827    ; 3 uses
  %i.bc = icmp ne ptr %i.ax, %i.av, !dbg !828
  tail call void @llvm.assume(i1 %i.bc), !dbg !829
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 2, !dbg !830 ; 3 uses
  %i.be = load i8, ptr %i.ax, align 1, !dbg !831, !noalias !647, !noundef !147
  %i.bf = shl nuw nsw i32 %i.bb, 6, !dbg !832
  %i.bg = and i8 %i.be, 63, !dbg !833
  %i.bh = zext nneg i8 %i.bg to i32, !dbg !833    ; 2 uses
  %i.bi = or disjoint i32 %i.bf, %i.bh, !dbg !832
  %i.bj = icmp samesign ugt i8 %i.ay, -33, !dbg !834
  br i1 %i.bj, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdq8xsXUia3c_10grep_regex.exit14.i.i.i.us.i, label %bb.f, !dbg !834

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdq8xsXUia3c_10grep_regex.exit14.i.i.i.us.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdq8xsXUia3c_10grep_regex.exit12.i.i.i.us.i
  %i.bk = icmp ne ptr %i.bd, %i.av, !dbg !835
  tail call void @llvm.assume(i1 %i.bk), !dbg !836
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aw, i64 3, !dbg !837 ; 3 uses
  %i.bm = load i8, ptr %i.bd, align 1, !dbg !838, !noalias !647, !noundef !147
  %i.bn = shl nuw nsw i32 %i.bh, 6, !dbg !839
  %i.bo = and i8 %i.bm, 63, !dbg !840
  %i.bp = zext nneg i8 %i.bo to i32, !dbg !840
  %i.bq = or disjoint i32 %i.bn, %i.bp, !dbg !839 ; 2 uses
  %i.br = shl nuw nsw i32 %i.bb, 12, !dbg !841
  %i.bs = or disjoint i32 %i.bq, %i.br, !dbg !842
  %i.bt = icmp samesign ugt i8 %i.ay, -17, !dbg !843
  br i1 %i.bt, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdq8xsXUia3c_10grep_regex.exit16.i.i.i.us.i, label %bb.f, !dbg !843

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdq8xsXUia3c_10grep_regex.exit16.i.i.i.us.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdq8xsXUia3c_10grep_regex.exit14.i.i.i.us.i
  %i.bu = icmp ne ptr %i.bl, %i.av, !dbg !844
  tail call void @llvm.assume(i1 %i.bu), !dbg !845
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aw, i64 4, !dbg !846
  %i.bw = load i8, ptr %i.bl, align 1, !dbg !847, !noalias !647, !noundef !147
  %i.bx = shl nuw nsw i32 %i.bb, 18, !dbg !848
  %i.by = and i32 %i.bx, 1835008, !dbg !848
  %i.bz = shl nuw nsw i32 %i.bq, 6, !dbg !849
  %i.ca = and i8 %i.bw, 63, !dbg !850
  %i.cb = zext nneg i8 %i.ca to i32, !dbg !850
  %i.cc = or disjoint i32 %i.bz, %i.cb, !dbg !849
  %i.cd = or disjoint i32 %i.cc, %i.by, !dbg !851
  br label %bb.f, !dbg !852

bb.e:                                             ; preds = %bb.d
  %i.ce = zext nneg i8 %i.ay to i32, !dbg !853
  br label %bb.f, !dbg !854

bb.f:                                             ; preds = %bb.e, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdq8xsXUia3c_10grep_regex.exit16.i.i.i.us.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdq8xsXUia3c_10grep_regex.exit14.i.i.i.us.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdq8xsXUia3c_10grep_regex.exit12.i.i.i.us.i
  %i.cf = phi ptr [ %i.bl, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdq8xsXUia3c_10grep_regex.exit14.i.i.i.us.i ], [ %i.bv, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdq8xsXUia3c_10grep_regex.exit16.i.i.i.us.i ], [ %i.bd, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdq8xsXUia3c_10grep_regex.exit12.i.i.i.us.i ], [ %i.ax, %bb.e ]
  %spec.select.i.ph.i.us.i = phi i32 [ %i.bs, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdq8xsXUia3c_10grep_regex.exit14.i.i.i.us.i ], [ %i.cd, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdq8xsXUia3c_10grep_regex.exit16.i.i.i.us.i ], [ %i.bi, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdq8xsXUia3c_10grep_regex.exit12.i.i.i.us.i ], [ %i.ce, %bb.e ]
  switch i32 %spec.select.i.ph.i.us.i, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkcNvCs2G6gJ0Mq9lu_12regex_syntax17is_meta_characterE0Csdq8xsXUia3c_10grep_regex.exit.i.us.i [
    i32 92, label %_RINvMs_NtCsdq8xsXUia3c_10grep_regex6configNtB5_6Config16is_fixed_stringsReEB7_.exit
    i32 46, label %_RINvMs_NtCsdq8xsXUia3c_10grep_regex6configNtB5_6Config16is_fixed_stringsReEB7_.exit
    i32 43, label %_RINvMs_NtCsdq8xsXUia3c_10grep_regex6configNtB5_6Config16is_fixed_stringsReEB7_.exit
    i32 42, label %_RINvMs_NtCsdq8xsXUia3c_10grep_regex6configNtB5_6Config16is_fixed_stringsReEB7_.exit
    i32 63, label %_RINvMs_NtCsdq8xsXUia3c_10grep_regex6configNtB5_6Config16is_fixed_stringsReEB7_.exit
    i32 40, label %_RINvMs_NtCsdq8xsXUia3c_10grep_regex6configNtB5_6Config16is_fixed_stringsReEB7_.exit
    i32 41, label %_RINvMs_NtCsdq8xsXUia3c_10grep_regex6configNtB5_6Config16is_fixed_stringsReEB7_.exit
    i32 124, label %_RINvMs_NtCsdq8xsXUia3c_10grep_regex6configNtB5_6Config16is_fixed_stringsReEB7_.exit
    i32 91, label %_RINvMs_NtCsdq8xsXUia3c_10grep_regex6configNtB5_6Config16is_fixed_stringsReEB7_.exit
    i32 93, label %_RINvMs_NtCsdq8xsXUia3c_10grep_regex6configNtB5_6Config16is_fixed_stringsReEB7_.exit
    i32 123, label %_RINvMs_NtCsdq8xsXUia3c_10grep_regex6configNtB5_6Config16is_fixed_stringsReEB7_.exit
    i32 125, label %_RINvMs_NtCsdq8xsXUia3c_10grep_regex6configNtB5_6Config16is_fixed_stringsReEB7_.exit
    i32 94, label %_RINvMs_NtCsdq8xsXUia3c_10grep_regex6configNtB5_6Config16is_fixed_stringsReEB7_.exit
    i32 36, label %_RINvMs_NtCsdq8xsXUia3c_10grep_regex6configNtB5_6Config16is_fixed_stringsReEB7_.exit
    i32 35, label %_RINvMs_NtCsdq8xsXUia3c_10grep_regex6configNtB5_6Config16is_fixed_stringsReEB7_.exit
    i32 38, label %_RINvMs_NtCsdq8xsXUia3c_10grep_regex6configNtB5_6Config16is_fixed_stringsReEB7_.exit
    i32 45, label %_RINvMs_NtCsdq8xsXUia3c_10grep_regex6configNtB5_6Config16is_fixed_stringsReEB7_.exit
    i32 126, label %_RINvMs_NtCsdq8xsXUia3c_10grep_regex6configNtB5_6Config16is_fixed_stringsReEB7_.exit
  ], !dbg !855

_RNvNtCsdq8xsXUia3c_10grep_regex6config19has_line_terminator.exit.us.i: ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkcNvCs2G6gJ0Mq9lu_12regex_syntax17is_meta_characterE0Csdq8xsXUia3c_10grep_regex.exit.i.us.i
  %i.cg = icmp eq ptr %i.at, %i.an, !dbg !816
  br i1 %i.cg, label %.loopexit209, label %.lr.ph.split.us.i, !dbg !817

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.ch = trunc i8 %.fr48.i to i1
  br i1 %i.ch, label %.lr.ph.split.split.us.i, label %.lr.ph.split.split.i

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.split.i, %_RNvNtCsdq8xsXUia3c_10grep_regex6config19has_line_terminator.exit.loopexit.us.i
  %.sroa.09.035.us36.i = phi ptr [ %i.ci, %_RNvNtCsdq8xsXUia3c_10grep_regex6config19has_line_terminator.exit.loopexit.us.i ], [ %2, %.lr.ph.split.i ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.09.035.us36.i, i64 16, !dbg !818 ; 2 uses
  %.sroa.09.0.val.us37.i = load ptr, ptr %.sroa.09.035.us36.i, align 8, !dbg !819, !alias.scope !627, !nonnull !147, !noundef !147 ; 3 uses
  %i.cj = getelementptr i8, ptr %.sroa.09.035.us36.i, i64 8, !dbg !819
  %.sroa.09.0.val13.us38.i = load i64, ptr %i.cj, align 8, !dbg !819, !alias.scope !627, !noundef !147 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.09.0.val.us37.i, i64 %.sroa.09.0.val13.us38.i, !dbg !820 ; 5 uses
  br label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkcNvCs2G6gJ0Mq9lu_12regex_syntax17is_meta_characterE0Csdq8xsXUia3c_10grep_regex.exit.i.us39.i, !dbg !821

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkcNvCs2G6gJ0Mq9lu_12regex_syntax17is_meta_characterE0Csdq8xsXUia3c_10grep_regex.exit.i.us39.i: ; preds = %bb.i, %.lr.ph.split.split.us.i
  %i.cl = phi ptr [ %i.du, %bb.i ], [ %.sroa.09.0.val.us37.i, %.lr.ph.split.split.us.i ] ; 6 uses
  %.not.i.not.not.not.i.not.us40.i = icmp eq ptr %i.cl, %i.ck, !dbg !822
  br i1 %.not.i.not.not.not.i.not.us40.i, label %.preheader28.us.i.preheader, label %bb.g, !dbg !823

.preheader28.us.i.preheader:                      ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkcNvCs2G6gJ0Mq9lu_12regex_syntax17is_meta_characterE0Csdq8xsXUia3c_10grep_regex.exit.i.us39.i
  %.not.not.not.i3.not.not.i.us.i316 = icmp samesign eq i64 %.sroa.09.0.val13.us38.i, 0, !dbg !856
  br i1 %.not.not.not.i3.not.not.i.us.i316, label %_RNvNtCsdq8xsXUia3c_10grep_regex6config19has_line_terminator.exit.loopexit.us.i, label %.lr.ph317, !dbg !857

bb.g:                                             ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkcNvCs2G6gJ0Mq9lu_12regex_syntax17is_meta_characterE0Csdq8xsXUia3c_10grep_regex.exit.i.us39.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 1, !dbg !824 ; 3 uses
  %i.cn = load i8, ptr %i.cl, align 1, !dbg !825, !noalias !647, !noundef !147 ; 5 uses
  %i.co = icmp sgt i8 %i.cn, -1, !dbg !826
  br i1 %i.co, label %bb.h, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdq8xsXUia3c_10grep_regex.exit12.i.i.i.us41.i, !dbg !826

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdq8xsXUia3c_10grep_regex.exit12.i.i.i.us41.i: ; preds = %bb.g
  %i.cp = and i8 %i.cn, 31, !dbg !827
  %i.cq = zext nneg i8 %i.cp to i32, !dbg !827    ; 3 uses
  %i.cr = icmp ne ptr %i.cm, %i.ck, !dbg !828
  tail call void @llvm.assume(i1 %i.cr), !dbg !829
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 2, !dbg !830 ; 3 uses
  %i.ct = load i8, ptr %i.cm, align 1, !dbg !831, !noalias !647, !noundef !147
  %i.cu = shl nuw nsw i32 %i.cq, 6, !dbg !832
  %i.cv = and i8 %i.ct, 63, !dbg !833
  %i.cw = zext nneg i8 %i.cv to i32, !dbg !833    ; 2 uses
  %i.cx = or disjoint i32 %i.cu, %i.cw, !dbg !832
  %i.cy = icmp samesign ugt i8 %i.cn, -33, !dbg !834
  br i1 %i.cy, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdq8xsXUia3c_10grep_regex.exit14.i.i.i.us42.i, label %bb.i, !dbg !834

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdq8xsXUia3c_10grep_regex.exit14.i.i.i.us42.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdq8xsXUia3c_10grep_regex.exit12.i.i.i.us41.i
  %i.cz = icmp ne ptr %i.cs, %i.ck, !dbg !835
  tail call void @llvm.assume(i1 %i.cz), !dbg !836
  %i.da = getelementptr inbounds nuw i8, ptr %i.cl, i64 3, !dbg !837 ; 3 uses
  %i.db = load i8, ptr %i.cs, align 1, !dbg !838, !noalias !647, !noundef !147
  %i.dc = shl nuw nsw i32 %i.cw, 6, !dbg !839
  %i.dd = and i8 %i.db, 63, !dbg !840
  %i.de = zext nneg i8 %i.dd to i32, !dbg !840
  %i.df = or disjoint i32 %i.dc, %i.de, !dbg !839 ; 2 uses
  %i.dg = shl nuw nsw i32 %i.cq, 12, !dbg !841
  %i.dh = or disjoint i32 %i.df, %i.dg, !dbg !842
  %i.di = icmp samesign ugt i8 %i.cn, -17, !dbg !843
  br i1 %i.di, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdq8xsXUia3c_10grep_regex.exit16.i.i.i.us43.i, label %bb.i, !dbg !843

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdq8xsXUia3c_10grep_regex.exit16.i.i.i.us43.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdq8xsXUia3c_10grep_regex.exit14.i.i.i.us42.i
  %i.dj = icmp ne ptr %i.da, %i.ck, !dbg !844
  tail call void @llvm.assume(i1 %i.dj), !dbg !845
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cl, i64 4, !dbg !846
  %i.dl = load i8, ptr %i.da, align 1, !dbg !847, !noalias !647, !noundef !147
  %i.dm = shl nuw nsw i32 %i.cq, 18, !dbg !848
  %i.dn = and i32 %i.dm, 1835008, !dbg !848
  %i.do = shl nuw nsw i32 %i.df, 6, !dbg !849
  %i.dp = and i8 %i.dl, 63, !dbg !850
  %i.dq = zext nneg i8 %i.dp to i32, !dbg !850
  %i.dr = or disjoint i32 %i.do, %i.dq, !dbg !849
  %i.ds = or disjoint i32 %i.dr, %i.dn, !dbg !851
  br label %bb.i, !dbg !852

bb.h:                                             ; preds = %bb.g
  %i.dt = zext nneg i8 %i.cn to i32, !dbg !853
  br label %bb.i, !dbg !854

bb.i:                                             ; preds = %bb.h, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdq8xsXUia3c_10grep_regex.exit16.i.i.i.us43.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdq8xsXUia3c_10grep_regex.exit14.i.i.i.us42.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdq8xsXUia3c_10grep_regex.exit12.i.i.i.us41.i
  %i.du = phi ptr [ %i.da, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdq8xsXUia3c_10grep_regex.exit14.i.i.i.us42.i ], [ %i.dk, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdq8xsXUia3c_10grep_regex.exit16.i.i.i.us43.i ], [ %i.cs, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdq8xsXUia3c_10grep_regex.exit12.i.i.i.us41.i ], [ %i.cm, %bb.h ]
  %spec.select.i.ph.i.us44.i = phi i32 [ %i.dh, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdq8xsXUia3c_10grep_regex.exit14.i.i.i.us42.i ], [ %i.ds, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdq8xsXUia3c_10grep_regex.exit16.i.i.i.us43.i ], [ %i.cx, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdq8xsXUia3c_10grep_regex.exit12.i.i.i.us41.i ], [ %i.dt, %bb.h ]
  switch i32 %spec.select.i.ph.i.us44.i, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkcNvCs2G6gJ0Mq9lu_12regex_syntax17is_meta_characterE0Csdq8xsXUia3c_10grep_regex.exit.i.us39.i [
end_hunk_0
begin_hunk_1_@_RINvMs0_NtCsdq8xsXUia3c_10grep_regex6configNtB6_13ConfiguredHIR3newReEB8_:bb.a
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t) #13
          to label %.body unwind label %bb.v, !dbg !905

bb.v:                                             ; preds = %bb.u
  %i.hf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !dbg !906
  unreachable, !dbg !906

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCsdq8xsXUia3c_10grep_regex.exit: ; preds = %bb.s, %bb.t
  %i.hg = load ptr, ptr %i.gj, align 8, !dbg !907, !alias.scope !684, !nonnull !147, !noundef !147
  %i.hh = getelementptr inbounds nuw [24 x i8], ptr %i.hg, i64 %i.hb, !dbg !908
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hh, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !dbg !909
  %i.hi = add i64 %i.hb, 1, !dbg !910             ; 2 uses
  store i64 %i.hi, ptr %i.gk, align 8, !dbg !910, !alias.scope !684
  %i.hj = icmp eq ptr %i.gz, %i.gl, !dbg !886
  br i1 %i.hj, label %._crit_edge227.loopexit, label %bb.q, !dbg !887

bb.w:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !911
  %.sroa.068.0.val = load ptr, ptr %.sroa.068.0225, align 8, !dbg !912, !nonnull !147, !noundef !147
  %.sroa.068.0.val149 = load i64, ptr %i.ha, align 8, !dbg !912, !noundef !147
  invoke void @_RNvCs2G6gJ0Mq9lu_12regex_syntax6escape(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.068.0.val, i64 noundef %.sroa.068.0.val149)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !911

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !913
  store ptr %i.v, ptr %i.u, align 8, !dbg !913
  store ptr @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.473.0..sroa_idx, align 8, !dbg !913
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noundef nonnull @0, ptr noundef nonnull %i.u)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdq8xsXUia3c_10grep_regex.exit155 unwind label %bb.y, !dbg !914

bb.y:                                             ; preds = %bb.x
  %i.hk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v) #13
          to label %.body unwind label %bb.ab, !dbg !915

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdq8xsXUia3c_10grep_regex.exit155: ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !915
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsdq8xsXUia3c_10grep_regex.exit.i unwind label %bb.z, !dbg !916

bb.z:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdq8xsXUia3c_10grep_regex.exit155
  %i.hl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %.body unwind label %bb.aa, !dbg !917

bb.aa:                                            ; preds = %bb.z
  %i.hm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !dbg !916
  unreachable, !dbg !916

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsdq8xsXUia3c_10grep_regex.exit.i: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdq8xsXUia3c_10grep_regex.exit155
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsdq8xsXUia3c_10grep_regex.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !918

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsdq8xsXUia3c_10grep_regex.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsdq8xsXUia3c_10grep_regex.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !915
  br label %bb.s, !dbg !900

bb.ab:                                            ; preds = %.body180.thread, %.body158.thread, %bb.ao, %.body160, %bb.af, %bb.ac, %bb.y, %.body
  %i.hn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !dbg !919
  unreachable, !dbg !919

._crit_edge227.loopexit:                          ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCsdq8xsXUia3c_10grep_regex.exit
  %.pre = load ptr, ptr %i.gj, align 8, !dbg !920
  br label %._crit_edge227, !dbg !921

._crit_edge227:                                   ; preds = %._crit_edge227.loopexit, %_RINvMs_NtCsdq8xsXUia3c_10grep_regex6configNtB5_6Config16is_fixed_stringsReEB7_.exit
  %i.ho = phi i64 [ %i.hi, %._crit_edge227.loopexit ], [ 0, %_RINvMs_NtCsdq8xsXUia3c_10grep_regex6configNtB5_6Config16is_fixed_stringsReEB7_.exit ], !dbg !922
  %i.hp = phi ptr [ %.pre, %._crit_edge227.loopexit ], [ inttoptr (i64 8 to ptr), %_RINvMs_NtCsdq8xsXUia3c_10grep_regex6configNtB5_6Config16is_fixed_stringsReEB7_.exit ], !dbg !920
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !921
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !923
  invoke void @_RINvNtCsexYYUdYSQU6_5alloc3str17join_generic_copyehNtNtB4_6string6StringECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.hp, i64 noundef %i.ho, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 1)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !923

bb.ac:                                            ; preds = %.body160, %bb.af, %bb.ad
  %.pn141 = phi { ptr, i32 } [ %i.hq, %bb.ad ], [ %i.ii, %bb.af ], [ %.pn, %.body160 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #13
          to label %.body unwind label %bb.ab, !dbg !924

bb.ad:                                            ; preds = %bb.bx, %bb.bh, %bb.be
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ae:                                            ; preds = %._crit_edge227
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !926
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !927
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !928
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !929
  %i.hs = load i32, ptr %i.hr, align 8, !dbg !929, !noundef !147
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 31, !dbg !930
  %i.hu = load i8, ptr %i.ht, align 1, !dbg !930, !range !149, !noundef !147
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 29, !dbg !931
  %i.hw = load i8, ptr %i.hv, align 1, !dbg !931, !range !149, !noundef !147 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.n, i64 160, !dbg !932
  store i64 0, ptr %i.hx, align 8, !dbg !932, !alias.scope !707
  %.sroa.427.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 168, !dbg !932
  store i64 1, ptr %.sroa.427.0..sroa_idx.i, align 8, !dbg !932, !alias.scope !707
  %.sroa.528.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 176, !dbg !932
  store i64 1, ptr %.sroa.528.0..sroa_idx.i, align 8, !dbg !932, !alias.scope !707
  %i.hy = getelementptr inbounds nuw i8, ptr %i.n, i64 184, !dbg !932
  store i32 0, ptr %i.hy, align 8, !dbg !932, !alias.scope !707
  %i.hz = getelementptr inbounds nuw i8, ptr %i.n, i64 188, !dbg !932
  store i32 %i.hs, ptr %i.hz, align 4, !dbg !932, !alias.scope !707
  %i.ia = getelementptr inbounds nuw i8, ptr %i.n, i64 193, !dbg !932
  store i8 %i.hu, ptr %i.ia, align 1, !dbg !932, !alias.scope !707
  %i.ib = getelementptr inbounds nuw i8, ptr %i.n, i64 194, !dbg !932
  store i8 %i.hw, ptr %i.ib, align 2, !dbg !932, !alias.scope !707
  %i.ic = getelementptr inbounds nuw i8, ptr %i.n, i64 195, !dbg !932
  store i8 0, ptr %i.ic, align 1, !dbg !932, !alias.scope !707
  %i.id = getelementptr inbounds nuw i8, ptr %i.n, i64 192, !dbg !932
  store i8 %i.hw, ptr %i.id, align 8, !dbg !932, !alias.scope !707
  %.sroa.42.sroa.4.0..sroa.42.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !932
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.n, i8 0, i64 16, i1 false), !dbg !932, !alias.scope !707
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.sroa.4.0..sroa.42.0..sroa_idx.sroa_idx.i, align 8, !dbg !932, !alias.scope !707
  %.sroa.42.sroa.5.0..sroa.42.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !932
  %.sroa.47.sroa.4.0..sroa.47.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 48, !dbg !932
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.42.sroa.5.0..sroa.42.0..sroa_idx.sroa_idx.i, i8 0, i64 24, i1 false), !dbg !932, !alias.scope !707
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.47.sroa.4.0..sroa.47.0..sroa_idx.sroa_idx.i, align 8, !dbg !932, !alias.scope !707
  %.sroa.47.sroa.5.0..sroa.47.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 56, !dbg !932
  %.sroa.412.sroa.4.0..sroa.412.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 80, !dbg !932
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.47.sroa.5.0..sroa.47.0..sroa_idx.sroa_idx.i, i8 0, i64 24, i1 false), !dbg !932, !alias.scope !707
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.412.sroa.4.0..sroa.412.0..sroa_idx.sroa_idx.i, align 8, !dbg !932, !alias.scope !707
  %.sroa.412.sroa.5.0..sroa.412.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 88, !dbg !932
  %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 112, !dbg !932
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.412.sroa.5.0..sroa.412.0..sroa_idx.sroa_idx.i, i8 0, i64 24, i1 false), !dbg !932, !alias.scope !707
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx.i, align 8, !dbg !932, !alias.scope !707
  %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 120, !dbg !932
  %.sroa.422.sroa.4.0..sroa.422.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 144, !dbg !932
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx.i, i8 0, i64 24, i1 false), !dbg !932, !alias.scope !707
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.422.sroa.4.0..sroa.422.0..sroa_idx.sroa_idx.i, align 8, !dbg !932, !alias.scope !707
  %.sroa.422.sroa.5.0..sroa.422.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 152, !dbg !932
  store i64 0, ptr %.sroa.422.sroa.5.0..sroa.422.0..sroa_idx.sroa_idx.i, align 8, !dbg !932, !alias.scope !707
  %i.ie = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !933 ; 2 uses
  %i.if = load ptr, ptr %i.ie, align 8, !dbg !933, !nonnull !147, !noundef !147
  %i.ig = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !934 ; 2 uses
  %i.ih = load i64, ptr %i.ig, align 8, !dbg !934, !noundef !147
  invoke void @_RNvMs1_NtNtCs2G6gJ0Mq9lu_12regex_syntax3ast5parseNtB5_6Parser5parse(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.if, i64 noundef %i.ih)
          to label %bb.ag unwind label %bb.af, !dbg !935

bb.af:                                            ; preds = %bb.ah, %bb.ae
  %i.ii = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3ast5parse6ParserECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef align 8 dereferenceable(200) %i.n) #13
          to label %bb.ac unwind label %bb.ab, !dbg !936

bb.ag:                                            ; preds = %bb.ae
  %i.ij = load i64, ptr %i.o, align 8, !dbg !937, !range !719, !noundef !147
  %.not137 = icmp eq i64 %i.ij, -1, !dbg !937
  br i1 %.not137, label %bb.ai, label %bb.ah, !dbg !938

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !939
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.e, ptr noundef nonnull align 8 dereferenceable(128) %i.o, i64 128, i1 false), !dbg !939
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !721
  invoke void @_RINvMNtCsdq8xsXUia3c_10grep_regex5errorNtB3_5Error7genericNtNtCs2G6gJ0Mq9lu_12regex_syntax3ast5ErrorEB5_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(128) %i.e)
          to label %bb.bx unwind label %bb.af, !dbg !940

bb.ai:                                            ; preds = %bb.ag
  %i.ik = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !941
  %i.il = load i64, ptr %i.ik, align 8, !dbg !941, !range !206, !noundef !147
  %i.im = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !941
  %i.in = load ptr, ptr %i.im, align 8, !dbg !941, !noundef !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !942
  store i64 %i.il, ptr %i.p, align 8, !dbg !943
  %i.io = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !943
  store ptr %i.in, ptr %i.io, align 8, !dbg !943
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3ast5parse6ParserECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef align 8 dereferenceable(200) %i.n)
          to label %bb.aj unwind label %.body158, !dbg !936

.body160:                                         ; preds = %bb.bs, %.body158, %bb.bc, %.body158.thread, %bb.ao
  %.pn = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.body158 ], [ %i.ji, %bb.ao ], [ %eh.lpad-body159193, %.body158.thread ], [ %.pn.i, %bb.bc ], [ %i.km, %bb.bs ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3ast3AstECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef align 8 dereferenceable(16) %i.p) #13
          to label %bb.ac unwind label %bb.ab, !dbg !944

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !936
  %i.ip = invoke { i1, i1 } @_RNvMNtCsdq8xsXUia3c_10grep_regex3astNtB2_11AstAnalysis8from_ast(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.p)
          to label %bb.ak unwind label %.body158, !dbg !945 ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !946
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.630), !dbg !947
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.637), !dbg !947
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !947
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !947
  br i1 %i.ag, label %bb.am, label %bb.al, !dbg !948

bb.al:                                            ; preds = %bb.ak
  %i.iq = extractvalue { i1, i1 } %i.ip, 0, !dbg !945
  %i.ir = extractvalue { i1, i1 } %i.ip, 1, !dbg !945
  %.not = icmp ne i8 %i.ai, 0, !dbg !949
  %i.is = select i1 %.not, i1 %i.ir, i1 false, !dbg !949
  %.not147 = xor i1 %i.is, true, !dbg !949
  %brmerge = select i1 %.not147, i1 true, i1 %i.iq, !dbg !949
  br i1 %brmerge, label %bb.an, label %bb.am, !dbg !949

bb.am:                                            ; preds = %bb.al, %bb.ak
  br label %bb.an, !dbg !950

bb.an:                                            ; preds = %bb.al, %bb.am
  %.sroa.0101.0 = phi i8 [ 1, %bb.am ], [ 2, %bb.al ], !dbg !951
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 26, !dbg !952
  %i.iu = load i8, ptr %i.it, align 2, !dbg !952, !range !149, !noundef !147
  %. = sub nuw nsw i8 2, %i.iu, !dbg !953
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 27, !dbg !954
  %i.iw = load i8, ptr %i.iv, align 1, !dbg !954, !range !149, !noundef !147
  %.sroa.0103.0 = sub nuw nsw i8 2, %i.iw, !dbg !955
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !956
  %i.iy = load i8, ptr %i.ix, align 8, !dbg !956, !range !149, !noundef !147
  %.sroa.0104.0 = sub nuw nsw i8 2, %i.iy, !dbg !957
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 28, !dbg !958
  %i.ja = load i8, ptr %i.iz, align 4, !dbg !958, !range !149, !noundef !147
  %.sroa.0105.0 = sub nuw nsw i8 2, %i.ja, !dbg !959
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 30, !dbg !960
  %i.jc = load i8, ptr %i.jb, align 2, !dbg !960, !range !149, !noundef !147
  %.sroa.0106.0 = shl nuw nsw i8 %i.jc, 1, !dbg !961
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !962 ; 6 uses
  %.sroa.4108.sroa.4.0..sroa.4108.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !962
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false), !dbg !962
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4108.sroa.4.0..sroa.4108.0..sroa_idx.sroa_idx, align 8, !dbg !962
  %.sroa.4108.sroa.5.0..sroa.4108.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !962
  store i64 0, ptr %.sroa.4108.sroa.5.0..sroa.4108.0..sroa_idx.sroa_idx, align 8, !dbg !962
  %i.jd = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !962
  store i8 %.sroa.0101.0, ptr %i.jd, align 8, !dbg !962
  %.sroa.4122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 33, !dbg !962
  store i8 %., ptr %.sroa.4122.0..sroa_idx, align 1, !dbg !962
  %.sroa.5123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 34, !dbg !962
  store i8 %.sroa.0103.0, ptr %.sroa.5123.0..sroa_idx, align 2, !dbg !962
  %.sroa.6124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 35, !dbg !962
  store i8 %.sroa.0105.0, ptr %.sroa.6124.0..sroa_idx, align 1, !dbg !962
  %.sroa.7125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 36, !dbg !962
  store i8 %.sroa.0106.0, ptr %.sroa.7125.0..sroa_idx, align 4, !dbg !962
  %.sroa.8126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 37, !dbg !962
  store i8 %.sroa.0104.0, ptr %.sroa.8126.0..sroa_idx, align 1, !dbg !962
  %i.je = getelementptr inbounds nuw i8, ptr %i.k, i64 39, !dbg !962
  store i8 0, ptr %i.je, align 1, !dbg !962
  %i.jf = getelementptr inbounds nuw i8, ptr %i.k, i64 38, !dbg !962
  store i8 10, ptr %i.jf, align 2, !dbg !962
  %i.jg = load ptr, ptr %i.ie, align 8, !dbg !963, !nonnull !147, !noundef !147
  %i.jh = load i64, ptr %i.ig, align 8, !dbg !964, !noundef !147
  invoke void @_RNvMs0_NtNtCs2G6gJ0Mq9lu_12regex_syntax3hir9translateNtB5_10Translator9translate(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jg, i64 noundef %i.jh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.p)
          to label %bb.ap unwind label %bb.ao, !dbg !965

bb.ao:                                            ; preds = %bb.aq, %bb.an
  %i.ji = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir9translate10TranslatorECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef align 8 dereferenceable(40) %i.k) #13
          to label %.body160 unwind label %bb.ab, !dbg !966

bb.ap:                                            ; preds = %bb.an
  %i.jj = load i64, ptr %i.l, align 8, !dbg !967, !range !719, !noundef !147
  %.not.a = icmp eq i64 %i.jj, -1, !dbg !967
  br i1 %.not.a, label %bb.ar, label %bb.aq, !dbg !968

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !969
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %i.l, i64 80, i1 false), !dbg !969
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !970
  invoke void @_RINvMNtCsdq8xsXUia3c_10grep_regex5errorNtB3_5Error7genericNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir5ErrorEB5_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.c)
          to label %bb.br unwind label %bb.ao, !dbg !971

bb.ar:                                            ; preds = %bb.ap
  %i.jk = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !972
  %.sroa.0127.0.copyload = load i64, ptr %i.jk, align 8, !dbg !972
  %.sroa.4128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !972
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.637, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4128.0..sroa_idx, i64 32, i1 false), !dbg !972
  %.sroa.5129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 48, !dbg !972
  %.sroa.5129.0.copyload = load i64, ptr %.sroa.5129.0..sroa_idx, align 8, !dbg !972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !973
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.630, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.637, i64 32, i1 false), !dbg !974
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.637), !dbg !975
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !976 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.443.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.630, i64 32, i1 false), !dbg !947
  store i64 %.sroa.0127.0.copyload, ptr %i.m, align 8, !dbg !976
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 40, !dbg !976 ; 5 uses
  store i64 %.sroa.5129.0.copyload, ptr %.sroa.544.0..sroa_idx, align 8, !dbg !976
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir9translate8HirFrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.4108.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir9translate8HirFrameEEECsdq8xsXUia3c_10grep_regex.exit.i unwind label %bb.as, !dbg !977

bb.as:                                            ; preds = %bb.ar
  %i.jl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir9translate8HirFrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.4108.0..sroa_idx)
          to label %.body158.thread unwind label %bb.at, !dbg !978

bb.at:                                            ; preds = %bb.as
  %i.jm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !dbg !977
  unreachable, !dbg !977

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir9translate8HirFrameEEECsdq8xsXUia3c_10grep_regex.exit.i: ; preds = %bb.ar
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir9translate8HirFrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.4108.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir9translate10TranslatorECsdq8xsXUia3c_10grep_regex.exit unwind label %.body158.thread194, !dbg !979

.body158.thread194:                               ; preds = %bb.au, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir9translate8HirFrameEEECsdq8xsXUia3c_10grep_regex.exit.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body158.thread, !dbg !980

.body158:                                         ; preds = %bb.ai, %bb.aj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir9translate8HirFrameEEECsdq8xsXUia3c_10grep_regex.exit.i168, %bb.bf
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body160, !dbg !980

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir9translate10TranslatorECsdq8xsXUia3c_10grep_regex.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir9translate8HirFrameEEECsdq8xsXUia3c_10grep_regex.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !966
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.630), !dbg !966
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 22, !dbg !981
  %i.jo = load i8, ptr %i.jn, align 2, !dbg !981, !range !149, !noundef !147
  %i.jp = trunc nuw i8 %i.jo to i1, !dbg !981
  br i1 %i.jp, label %bb.au, label %bb.av, !dbg !982

bb.au:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir9translate10TranslatorECsdq8xsXUia3c_10grep_regex.exit
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 23, !dbg !981
  %i.jr = load i8, ptr %i.jq, align 1, !dbg !983, !noundef !147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !753
  invoke void @_RNvNtCsdq8xsXUia3c_10grep_regex3ban5check(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.m, i8 noundef %i.jr)
          to label %bb.aw unwind label %.body158.thread194, !dbg !753

bb.av:                                            ; preds = %bb.bd, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir9translate10TranslatorECsdq8xsXUia3c_10grep_regex.exit
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 20, !dbg !984
  %i.jt = load i8, ptr %i.js, align 4, !dbg !984, !range !636, !noundef !147 ; 2 uses
  %.not139.a = icmp eq i8 %i.jt, 2, !dbg !984
  br i1 %.not139.a, label %bb.bg, label %bb.bf, !dbg !985

bb.aw:                                            ; preds = %bb.au
  %i.ju = load i8, ptr %i.j, align 8, !dbg !986, !range !752, !noundef !147
  %.not138 = icmp eq i8 %i.ju, -1, !dbg !986
  br i1 %.not138, label %bb.bd, label %bb.ax, !dbg !987

bb.ax:                                            ; preds = %bb.aw
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !988
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jv, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !dbg !989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !990
  store i64 -1, ptr %0, align 8, !dbg !988
  invoke void @_RNvXsm_NtCs2G6gJ0Mq9lu_12regex_syntax3hirNtB5_3HirNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.m)
          to label %bb.az unwind label %bb.ay, !dbg !991, !inline_history !208

bb.ay:                                            ; preds = %bb.ax
  %i.jw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7HirKindECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.m) #13
          to label %bb.bc unwind label %bb.bb, !dbg !991, !inline_history !208

bb.az:                                            ; preds = %bb.ax
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7HirKindECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirECsdq8xsXUia3c_10grep_regex.exit unwind label %bb.ba, !dbg !991, !inline_history !208

bb.ba:                                            ; preds = %bb.az
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.bb:                                            ; preds = %bb.ay
  %i.jy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !dbg !991, !inline_history !208
  unreachable, !dbg !991

bb.bc:                                            ; preds = %bb.ba, %bb.ay
  %.pn.i = phi { ptr, i32 } [ %i.jx, %bb.ba ], [ %i.jw, %bb.ay ]
  %.val2.i = load ptr, ptr %.sroa.544.0..sroa_idx, align 8, !dbg !991, !alias.scope !757, !nonnull !147, !noundef !147
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef 80, i64 noundef 8) #15, !dbg !992, !inline_history !208
  br label %.body160, !dbg !991

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirECsdq8xsXUia3c_10grep_regex.exit: ; preds = %bb.az
  %.val.i = load ptr, ptr %.sroa.544.0..sroa_idx, align 8, !dbg !991, !alias.scope !757, !nonnull !147, !noundef !147
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 80, i64 noundef 8) #15, !dbg !993, !inline_history !208
  br label %bb.be, !dbg !991

bb.bd:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !990
  br label %bb.av, !dbg !994

bb.be:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirECsdq8xsXUia3c_10grep_regex.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir9translate10TranslatorECsdq8xsXUia3c_10grep_regex.exit171, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !980
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3ast3AstECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef align 8 dereferenceable(16) %i.p)
          to label %bb.bu unwind label %bb.ad, !dbg !944

bb.bf:                                            ; preds = %bb.av
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 21, !dbg !984
  %i.ka = trunc nuw i8 %i.jt to i1, !dbg !995
  %i.kb = load i8, ptr %i.jz, align 1, !dbg !995
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.647), !dbg !759
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !759
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !996
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false), !dbg !996
  invoke void @_RNvNtCsdq8xsXUia3c_10grep_regex5strip16strip_from_match(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.h, i1 noundef zeroext %i.ka, i8 %i.kb)
          to label %bb.bi unwind label %.body158, !dbg !759

bb.bg:                                            ; preds = %bb.av
end_hunk_1
