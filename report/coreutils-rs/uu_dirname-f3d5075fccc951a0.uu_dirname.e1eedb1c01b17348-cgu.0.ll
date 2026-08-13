inline.NumInlined: 77
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -5875614554295535572 to ptr), ptr inttoptr (i64 3467203893602029906 to ptr) }>, align 8
@1 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXNtCs6JMX4GRUq9U_4core3anyNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintNtB2_3Any7type_idCsjoDrDr40csK_10uu_dirname }>, align 8
@2 = private unnamed_addr constant [1 x i8] c"/", align 1
@3 = private unnamed_addr constant [1 x i8] c".", align 1
@4 = private unnamed_addr constant [30 x i8] c"src/uu/dirname/src/dirname.rs\00", align 1
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"\1D\00\00\00\00\00\00\00T\00\00\00 \00\00\00" }>, align 8
@6 = private unnamed_addr constant [7 x i8] c"dirname", align 1
@7 = private unnamed_addr constant [13 x i8] c"dirname-about", align 1
@8 = private unnamed_addr constant [25 x i8] c"(uutils coreutils) 0.10.0", align 1
@9 = private unnamed_addr constant [13 x i8] c"dirname-usage", align 1
@10 = private unnamed_addr constant [18 x i8] c"dirname-after-help", align 1
@11 = private unnamed_addr constant [4 x i8] c"zero", align 1
@12 = private unnamed_addr constant [17 x i8] c"dirname-zero-help", align 1
@13 = private unnamed_addr constant [3 x i8] c"dir", align 1

; Function Attrs: nounwind nonlazybind uwtable
define { ptr, i64 } @_RNvCsjoDrDr40csK_10uu_dirname27dirname_string_manipulation(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvCsjoDrDr40csK_10uu_dirname27dirname_string_manipulation0EB1F_.exit.thread, label %.lr.ph139

.lr.ph139:                                        ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  %i.d = icmp eq ptr %i.c, %i.b
  br i1 %i.d, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvCsjoDrDr40csK_10uu_dirname27dirname_string_manipulation0EB1F_.exit.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph139, %bb.b
  %i.e = phi ptr [ %0, %.lr.ph139 ], [ %i.c, %bb.b ] ; 2 uses
  %.val.i = load i8, ptr %i.e, align 1, !noalias !4, !noundef !7
  %i.f = icmp eq i8 %.val.i, 47
  br i1 %i.f, label %bb.b, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvCsjoDrDr40csK_10uu_dirname27dirname_string_manipulation0EB1F_.exit.preheader

_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvCsjoDrDr40csK_10uu_dirname27dirname_string_manipulation0EB1F_.exit.preheader: ; preds = %bb.c
  %.not105 = icmp eq i64 %1, 1
  br i1 %.not105, label %.thread, label %.lr.ph

.thread:                                          ; preds = %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvCsjoDrDr40csK_10uu_dirname27dirname_string_manipulation0EB1F_.exit, %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvCsjoDrDr40csK_10uu_dirname27dirname_string_manipulation0EB1F_.exit.preheader
  %i.g = getelementptr i8, ptr %0, i64 1
  br label %.loopexit

.lr.ph:                                           ; preds = %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvCsjoDrDr40csK_10uu_dirname27dirname_string_manipulation0EB1F_.exit.preheader, %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvCsjoDrDr40csK_10uu_dirname27dirname_string_manipulation0EB1F_.exit
  %.sroa.21.099 = phi i64 [ %i.ak, %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvCsjoDrDr40csK_10uu_dirname27dirname_string_manipulation0EB1F_.exit ], [ %1, %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvCsjoDrDr40csK_10uu_dirname27dirname_string_manipulation0EB1F_.exit.preheader ] ; 5 uses
  %i.h = getelementptr i8, ptr %0, i64 %.sroa.21.099 ; 4 uses
  %i.i = getelementptr i8, ptr %i.h, i64 -1
  %.val3.i = load i8, ptr %i.i, align 1, !alias.scope !8
  switch i8 %.val3.i, label %.loopexit [
    i8 47, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvCsjoDrDr40csK_10uu_dirname27dirname_string_manipulation0EB1F_.exit
    i8 46, label %bb.e
  ]

.loopexit:                                        ; preds = %.lr.ph, %.thread, %bb.e
  %.sroa.21.098 = phi i64 [ 1, %.thread ], [ %.sroa.21.099, %bb.e ], [ %.sroa.21.099, %.lr.ph ] ; 2 uses
  %i.j = phi ptr [ %i.g, %.thread ], [ %i.h, %bb.e ], [ %i.h, %.lr.ph ]
  %.fr129 = freeze ptr %i.j                       ; 3 uses
  %i.k = ptrtoint ptr %.fr129 to i64
  %i.l = ptrtoint ptr %0 to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = icmp eq ptr %0, %.fr129
  br i1 %i.n, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvCsjoDrDr40csK_10uu_dirname27dirname_string_manipulation0EB1F_.exit.thread, label %.lr.ph145

bb.d:                                             ; preds = %.lr.ph145
  %i.o = icmp eq ptr %0, %i.q
  br i1 %i.o, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvCsjoDrDr40csK_10uu_dirname27dirname_string_manipulation0EB1F_.exit.thread, label %.lr.ph145

.lr.ph145:                                        ; preds = %.loopexit, %bb.d
  %.sroa.03.0.i143 = phi i64 [ %i.r, %bb.d ], [ %i.m, %.loopexit ]
  %i.p = phi ptr [ %i.q, %bb.d ], [ %.fr129, %.loopexit ]
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -1 ; 3 uses
  %i.r = add i64 %.sroa.03.0.i143, -1             ; 7 uses
  %.val.i82 = load i8, ptr %i.q, align 1, !noalias !11, !noundef !7
  %i.s = icmp eq i8 %.val.i82, 47
  br i1 %i.s, label %bb.f, label %bb.d

bb.e:                                             ; preds = %.lr.ph
  %i.t = getelementptr i8, ptr %i.h, i64 -2
  %i.u = load i8, ptr %i.t, align 1, !noundef !7
  %i.v = icmp eq i8 %i.u, 47
  br i1 %i.v, label %.preheader.split.preheader, label %.loopexit

.preheader.split.preheader:                       ; preds = %bb.e
  %2 = add nsw i64 %.sroa.21.099, -2              ; 2 uses
  %cond140 = icmp eq i64 %2, 0
  br i1 %cond140, label %.preheader.split._crit_edge, label %.lr.ph142

.preheader.split:                                 ; preds = %.lr.ph142
  %3 = add nsw i64 %.sroa.051.0141, -1            ; 2 uses
  %cond = icmp eq i64 %3, 0
  br i1 %cond, label %.preheader.split._crit_edge, label %.lr.ph142

.lr.ph142:                                        ; preds = %.preheader.split.preheader, %.preheader.split
  %.sroa.051.0141 = phi i64 [ %3, %.preheader.split ], [ %2, %.preheader.split.preheader ] ; 3 uses
  %4 = getelementptr i8, ptr %0, i64 %.sroa.051.0141
  %i.w = getelementptr i8, ptr %4, i64 -1
  %i.x = load i8, ptr %i.w, align 1, !noundef !7
  %i.y = icmp eq i8 %i.x, 47
  br i1 %i.y, label %.preheader.split, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvCsjoDrDr40csK_10uu_dirname27dirname_string_manipulation0EB1F_.exit.thread

.preheader.split._crit_edge:                      ; preds = %.preheader.split, %.preheader.split.preheader
  %.val80 = load i8, ptr %0, align 1
  %i.z = icmp eq i8 %.val80, 47
  %spec.select = select i1 %i.z, ptr @2, ptr @3
  br label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvCsjoDrDr40csK_10uu_dirname27dirname_string_manipulation0EB1F_.exit.thread

bb.f:                                             ; preds = %.lr.ph145
  %i.aa = icmp ult i64 %i.r, %i.m
  tail call void @llvm.assume(i1 %i.aa)
  %.not = icmp ugt i64 %i.r, %.sroa.21.098
  br i1 %.not, label %bb.g, label %.preheader91, !prof !14

.preheader91:                                     ; preds = %bb.f
  %i.ab = icmp ugt i64 %i.r, 1
  br i1 %i.ab, label %.lr.ph101, label %._crit_edge

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.r, i64 noundef %.sroa.21.098, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #11
  unreachable

.lr.ph101:                                        ; preds = %.preheader91, %bb.h
  %.sroa.16.0100 = phi i64 [ %i.ag, %bb.h ], [ %i.r, %.preheader91 ] ; 3 uses
  %i.ac = getelementptr i8, ptr %0, i64 %.sroa.16.0100
  %i.ad = getelementptr i8, ptr %i.ac, i64 -1
  %.val3.i83 = load i8, ptr %i.ad, align 1, !alias.scope !15
  %i.ae = icmp eq i8 %.val3.i83, 47
  br i1 %i.ae, label %bb.h, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvCsjoDrDr40csK_10uu_dirname27dirname_string_manipulation0EB1F_.exit.thread

._crit_edge:                                      ; preds = %.preheader91
  %i.af = icmp eq i64 %i.r, 0
  %spec.select128 = select i1 %i.af, ptr @2, ptr %0
  br label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvCsjoDrDr40csK_10uu_dirname27dirname_string_manipulation0EB1F_.exit.thread

bb.h:                                             ; preds = %.lr.ph101
  %i.ag = add nsw i64 %.sroa.16.0100, -1          ; 2 uses
  %i.ah = icmp ugt i64 %i.ag, 1
  br i1 %i.ah, label %.lr.ph101, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvCsjoDrDr40csK_10uu_dirname27dirname_string_manipulation0EB1F_.exit.thread

_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvCsjoDrDr40csK_10uu_dirname27dirname_string_manipulation0EB1F_.exit.thread: ; preds = %bb.b, %.lr.ph142, %bb.d, %.lr.ph101, %bb.h, %.loopexit, %._crit_edge, %.preheader.split._crit_edge, %bb.a
  %.sroa.16.2 = phi i64 [ %.sroa.051.0141, %.lr.ph142 ], [ 1, %bb.a ], [ 1, %bb.h ], [ 1, %.loopexit ], [ 1, %.preheader.split._crit_edge ], [ 1, %._crit_edge ], [ 1, %bb.d ], [ %.sroa.16.0100, %.lr.ph101 ], [ 1, %bb.b ]
  %.sroa.0.2 = phi ptr [ %0, %.lr.ph142 ], [ @3, %bb.a ], [ %0, %.lr.ph101 ], [ @3, %.loopexit ], [ %spec.select, %.preheader.split._crit_edge ], [ %spec.select128, %._crit_edge ], [ @3, %bb.d ], [ %0, %bb.h ], [ @2, %bb.b ]
  %i.ai = insertvalue { ptr, i64 } poison, ptr %.sroa.0.2, 0
  %i.aj = insertvalue { ptr, i64 } %i.ai, i64 %.sroa.16.2, 1
  ret { ptr, i64 } %i.aj

_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvCsjoDrDr40csK_10uu_dirname27dirname_string_manipulation0EB1F_.exit: ; preds = %.lr.ph
  %i.ak = add nsw i64 %.sroa.21.099, -1           ; 2 uses
  %i.al = icmp ugt i64 %i.ak, 1
  br i1 %i.al, label %.lr.ph, label %.thread
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCsjoDrDr40csK_10uu_dirname6uu_app(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([712 x i8]) align 8 captures(none) dereferenceable(712) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command5aboutNtNtCs7tKScEop1B6_5alloc6string6StringECsjoDrDr40csK_10uu_dirname.exit:
  %i.a = alloca [640 x i8], align 8               ; 56 uses
  %.sroa.0 = alloca [80 x i8], align 8            ; 4 uses
  %.sroa.9232 = alloca [536 x i8], align 8        ; 4 uses
  %i.b = alloca [640 x i8], align 8               ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [640 x i8], align 8               ; 53 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [712 x i8], align 8               ; 59 uses
  %i.k = alloca [712 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 13) #12
  %.sroa.0.0.copyload.i = load i64, ptr %i.i, align 8, !alias.scope !18, !noalias !24 ; 2 uses
  %i.l = icmp eq i64 %.sroa.0.0.copyload.i, -1    ; 2 uses
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.5.i.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i, align 8
  %.sroa.5.i.sroa.4.0..sroa.55.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.5.i.sroa.4.0.copyload = load i64, ptr %.sroa.5.i.sroa.4.0..sroa.55.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.5.i.sroa.0.0 = select i1 %i.l, ptr undef, ptr %.sroa.5.i.sroa.0.0.copyload
  %.sroa.5.i.sroa.4.0 = select i1 %i.l, i64 undef, i64 %.sroa.5.i.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.m = call { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore9util_name() #12 ; 2 uses
  %i.n = extractvalue { ptr, i64 } %i.m, 0
  %i.o = extractvalue { ptr, i64 } %i.m, 1
  call void @_RNvCsh036I4OHgIr_6uucore23localized_help_template(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef %i.o) #12
  %.sroa.0.0.copyload.i5 = load i64, ptr %i.h, align 8, !alias.scope !27, !noalias !33 ; 2 uses
  %i.p = icmp eq i64 %.sroa.0.0.copyload.i5, -1   ; 2 uses
  %.sroa.55.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5.i4.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i6, align 8
  %.sroa.5.i4.sroa.4.0..sroa.55.0..sroa_idx.i6.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.5.i4.sroa.4.0.copyload = load i64, ptr %.sroa.5.i4.sroa.4.0..sroa.55.0..sroa_idx.i6.sroa_idx, align 8
  %.sroa.5.i4.sroa.0.0 = select i1 %i.p, ptr undef, ptr %.sroa.5.i4.sroa.0.0.copyload
  %.sroa.5.i4.sroa.4.0 = select i1 %i.p, i64 undef, i64 %.sroa.5.i4.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 13) #12
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !7, !noundef !7
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !7
  call void @_RNvCsh036I4OHgIr_6uucore12format_usage(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef %i.t) #12
  %.sroa.0.0.copyload.i12 = load i64, ptr %i.g, align 8, !alias.scope !36, !noalias !42 ; 2 uses
  %i.u = icmp eq i64 %.sroa.0.0.copyload.i12, -1  ; 2 uses
  %.sroa.55.0..sroa_idx.i13 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.5.i11.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i13, align 8
  %.sroa.5.i11.sroa.4.0..sroa.55.0..sroa_idx.i13.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.5.i11.sroa.4.0.copyload = load i64, ptr %.sroa.5.i11.sroa.4.0..sroa.55.0..sroa_idx.i13.sroa_idx, align 8
  %.sroa.5.i11.sroa.0.0 = select i1 %i.u, ptr undef, ptr %.sroa.5.i11.sroa.0.0.copyload
  %.sroa.5.i11.sroa.4.0 = select i1 %i.u, i64 undef, i64 %.sroa.5.i11.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 18) #12
  call void @llvm.experimental.noalias.scope.decl(metadata !45)
  call void @llvm.experimental.noalias.scope.decl(metadata !48)
  call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %.sroa.0.0.copyload.i19 = load i64, ptr %i.e, align 8, !alias.scope !52, !noalias !56 ; 2 uses
  %i.v = icmp eq i64 %.sroa.0.0.copyload.i19, -1  ; 2 uses
  %.sroa.55.0..sroa_idx.i20 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.i18.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i20, align 8
  %.sroa.5.i18.sroa.4.0..sroa.55.0..sroa_idx.i20.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5.i18.sroa.4.0.copyload = load i64, ptr %.sroa.5.i18.sroa.4.0..sroa.55.0..sroa_idx.i20.sroa_idx, align 8
  %.sroa.5.i18.sroa.0.0 = select i1 %i.v, ptr undef, ptr %.sroa.5.i18.sroa.0.0.copyload
  %.sroa.5.i18.sroa.4.0 = select i1 %i.v, i64 undef, i64 %.sroa.5.i18.sroa.4.0.copyload
  store i64 0, ptr %i.j, align 8, !alias.scope !56, !noalias !50
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 1, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8, !alias.scope !56, !noalias !50
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 0, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !alias.scope !56, !noalias !50
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i64 -1, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8, !alias.scope !56, !noalias !50
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store i64 0, ptr %.sroa.0.sroa.7.0..sroa_idx, align 8, !alias.scope !56, !noalias !50
  %.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.8.0..sroa_idx, align 8, !alias.scope !56, !noalias !50
  %.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.9.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.0.sroa.10.0..sroa_idx, align 8, !alias.scope !56, !noalias !50
  %.sroa.0.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.11.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.12.0..sroa_idx, align 8, !alias.scope !56, !noalias !50
  %.sroa.0.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  %.sroa.0.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.13.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.15.0..sroa_idx, align 8, !alias.scope !56, !noalias !50
  %.sroa.0.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.16.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.17.0..sroa_idx, align 8, !alias.scope !56, !noalias !50
  %.sroa.0.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.18.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.19.0..sroa_idx, align 8, !alias.scope !56, !noalias !50
  %.sroa.0.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.20.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.21.0..sroa_idx, align 8, !alias.scope !56, !noalias !50
  %.sroa.0.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 216
  %.sroa.0.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.22.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.24.0..sroa_idx, align 8, !alias.scope !56, !noalias !50
  %.sroa.0.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.25.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.26.0..sroa_idx, align 8, !alias.scope !56, !noalias !50
  %.sroa.0.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 264
  store i64 0, ptr %.sroa.0.sroa.27.0..sroa_idx, align 8, !alias.scope !56, !noalias !50
  %.sroa.0.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 272
  store i64 -1, ptr %.sroa.0.sroa.28.0..sroa_idx, align 8, !alias.scope !56, !noalias !50
  %.sroa.0.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 296
  store i64 -1, ptr %.sroa.0.sroa.30.0..sroa_idx, align 8, !alias.scope !56, !noalias !50
  %.sroa.0.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 320
  store i64 %.sroa.0.0.copyload.i, ptr %.sroa.0.sroa.32.0..sroa_idx, align 8, !alias.scope !56, !noalias !50
  %.sroa.0.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 328
  store ptr %.sroa.5.i.sroa.0.0, ptr %.sroa.0.sroa.33.0..sroa_idx, align 8, !alias.scope !56, !noalias !50
  %.sroa.0.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 336
  store i64 %.sroa.5.i.sroa.4.0, ptr %.sroa.0.sroa.34.0..sroa_idx, align 8, !alias.scope !56, !noalias !50
  %.sroa.0.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 344
  store i64 -1, ptr %.sroa.0.sroa.35.0..sroa_idx, align 8, !alias.scope !56, !noalias !50
  %.sroa.0.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 368
  store i64 -1, ptr %.sroa.0.sroa.37.0..sroa_idx, align 8, !alias.scope !56, !noalias !50
  %.sroa.0.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 392
  store i64 -1, ptr %.sroa.0.sroa.39.0..sroa_idx, align 8, !alias.scope !56, !noalias !50
  %.sroa.2.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %i.j, i64 416
  store i64 %.sroa.0.0.copyload.i19, ptr %.sroa.2.0..sroa_idx61, align 8, !alias.scope !56, !noalias !50
  %.sroa.4.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.j, i64 424
  store ptr %.sroa.5.i18.sroa.0.0, ptr %.sroa.4.0..sroa_idx63, align 8, !alias.scope !56, !noalias !50
  %.sroa.6.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %i.j, i64 432
  store i64 %.sroa.5.i18.sroa.4.0, ptr %.sroa.6.0..sroa_idx65, align 8, !alias.scope !56, !noalias !50
  %.sroa.6.sroa.0.sroa.3.0..sroa.6.0..sroa_idx65.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 440
  store i64 -1, ptr %.sroa.6.sroa.0.sroa.3.0..sroa.6.0..sroa_idx65.sroa_idx, align 8, !alias.scope !56, !noalias !50
  %.sroa.6.sroa.3.0..sroa.6.0..sroa_idx65.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 464
  store i64 %.sroa.0.0.copyload.i12, ptr %.sroa.6.sroa.3.0..sroa.6.0..sroa_idx65.sroa_idx, align 8, !alias.scope !56, !noalias !50
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx65.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 472
end_hunk_0
