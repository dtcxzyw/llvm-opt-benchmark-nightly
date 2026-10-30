Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_pwd-321f3cb55f86dd5f.uu_pwd.7949b7c4ddce1521-cgu.0?download=true
inline.NumInlined: 71
inline.NumDeleted: 61
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [1 x i8] c".", align 1
@1 = private unnamed_addr constant [3 x i8] c"PWD", align 1
@2 = private unnamed_addr constant [3 x i8] c"pwd", align 1
@3 = private unnamed_addr constant [25 x i8] c"(uutils coreutils) 0.10.0", align 1
@4 = private unnamed_addr constant [9 x i8] c"pwd-about", align 1
@5 = private unnamed_addr constant [9 x i8] c"pwd-usage", align 1
@6 = private unnamed_addr constant [7 x i8] c"logical", align 1
@7 = private unnamed_addr constant [16 x i8] c"pwd-help-logical", align 1
@8 = private unnamed_addr constant [8 x i8] c"physical", align 1
@9 = private unnamed_addr constant [17 x i8] c"pwd-help-physical", align 1
@10 = private unnamed_addr constant [8 x i8] c"operands", align 1

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCsapC0faAc3Mj_6uu_pwd12logical_path(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [176 x i8], align 8               ; 8 uses
  %i.d = alloca [176 x i8], align 8               ; 7 uses
  %i.e = alloca [64 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvNtNtNtCs2vKOLqTMYjT_3std3sys3env4unix6getenv(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 3) #7
  %i.g = load i64, ptr %i.f, align 8, !range !4, !noundef !5 ; 4 uses
  %.not = icmp eq i64 %i.g, -1
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.415.0.copyload = load ptr, ptr %.sroa.415.0..sroa_idx, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.516.0.copyload = load i64, ptr %.sroa.516.0..sroa_idx, align 8 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !27
  call void @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.415.0.copyload, i64 noundef %.sroa.516.0.copyload) #7
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 58
  %i.i = load i8, ptr %i.h, align 2, !range !28, !noalias !27, !noundef !5
  %i.j = trunc nuw i8 %i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !27
  br i1 %i.j, label %.lr.ph.i.i, label %_RNvNvCsapC0faAc3Mj_6uu_pwd12logical_path16looks_reasonable.exit.thread

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.k = icmp samesign eq i64 %.sroa.516.0.copyload, 0
  br i1 %i.k, label %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter5SplithNCNvNvCsapC0faAc3Mj_6uu_pwd12logical_path16looks_reasonable0ENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1K_3any5checkRShNCBN_s_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEEBR_.exit.thread.i, label %.lr.ph.i.i.i.preheader.preheader.i

.lr.ph.i.i.i.preheader.preheader.i:               ; preds = %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.415.0.copyload, i64 %.sroa.516.0.copyload
  br label %.lr.ph.i.i.i.preheader.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %.lr.ph.i.i.i.preheader.backedge.i, %.lr.ph.i.i.i.preheader.preheader.i
  %i.m = phi ptr [ %i.l, %.lr.ph.i.i.i.preheader.preheader.i ], [ %.be.i, %.lr.ph.i.i.i.preheader.backedge.i ]
  %i.n = phi ptr [ %.sroa.415.0.copyload, %.lr.ph.i.i.i.preheader.preheader.i ], [ %i.x, %.lr.ph.i.i.i.preheader.backedge.i ] ; 5 uses
  %1 = phi i1 [ false, %.lr.ph.i.i.i.preheader.preheader.i ], [ %3, %.lr.ph.i.i.i.preheader.backedge.i ]
  %i.o = phi i64 [ %.sroa.516.0.copyload, %.lr.ph.i.i.i.preheader.preheader.i ], [ %i.w, %.lr.ph.i.i.i.preheader.backedge.i ] ; 3 uses
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.preheader.i
  %.sroa.02.07.i.i.i.i = phi i64 [ %i.r, %bb.c ], [ 0, %.lr.ph.i.i.i.preheader.i ] ; 3 uses
  %i.p = phi ptr [ %i.q, %bb.c ], [ %i.n, %.lr.ph.i.i.i.preheader.i ] ; 2 uses
  %.val.i.i.i.i = load i8, ptr %i.p, align 1, !alias.scope !27, !noalias !29, !noundef !5
  %2 = icmp eq i8 %.val.i.i.i.i, 47
  br i1 %2, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %i.r = add nuw i64 %.sroa.02.07.i.i.i.i, 1
  %i.s = icmp eq ptr %i.q, %i.m
  br i1 %i.s, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.t = add nuw i64 %.sroa.02.07.i.i.i.i, 1      ; 2 uses
  %i.u = sub nuw i64 %i.o, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.t
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.c, %bb.d
  %i.w = phi i64 [ %i.u, %bb.d ], [ %i.o, %bb.c ] ; 4 uses
  %i.x = phi ptr [ %i.v, %bb.d ], [ %i.n, %bb.c ] ; 2 uses
  %3 = phi i1 [ %1, %bb.d ], [ true, %bb.c ]      ; 4 uses
  %.sroa.5.1.i.ph.i.i = phi i64 [ %.sroa.02.07.i.i.i.i, %bb.d ], [ %i.o, %bb.c ]
  switch i64 %.sroa.5.1.i.ph.i.i, label %.backedge.i.i [
    i64 1, label %bb.e
    i64 2, label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNvCsapC0faAc3Mj_6uu_pwd12logical_path16looks_reasonables_0E0B1k_.exit.i.i
  ]

bb.e:                                             ; preds = %.loopexit.i.i.i
  %i.y = load i8, ptr %i.n, align 1, !alias.scope !30, !noalias !31, !noundef !5
  %i.z = icmp eq i8 %i.y, 46                      ; 2 uses
  %brmerge.i.i = select i1 %i.z, i1 true, i1 %3
  br i1 %brmerge.i.i, label %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter5SplithNCNvNvCsapC0faAc3Mj_6uu_pwd12logical_path16looks_reasonable0ENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1K_3any5checkRShNCBN_s_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEEBR_.exit.i, label %.backedge.i

.backedge.i:                                      ; preds = %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNvCsapC0faAc3Mj_6uu_pwd12logical_path16looks_reasonables_0E0B1k_.exit.i.i, %bb.e
  %.old39.i = icmp samesign eq i64 %i.w, 0
  br i1 %.old39.i, label %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter5SplithNCNvNvCsapC0faAc3Mj_6uu_pwd12logical_path16looks_reasonable0ENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1K_3any5checkRShNCBN_s_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEEBR_.exit.thread.i, label %.lr.ph.i.i.i.preheader.backedge.i

.lr.ph.i.i.i.preheader.backedge.i:                ; preds = %.backedge.i.i, %.backedge.i
  %.be.i = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.w
  br label %.lr.ph.i.i.i.preheader.i

_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNvCsapC0faAc3Mj_6uu_pwd12logical_path16looks_reasonables_0E0B1k_.exit.i.i: ; preds = %.loopexit.i.i.i
  %i.aa = load i16, ptr %i.n, align 1, !alias.scope !30, !noalias !31, !noundef !5
  %i.ab = icmp eq i16 %i.aa, 11822                ; 2 uses
  %brmerge23.i.i = select i1 %i.ab, i1 true, i1 %3
  br i1 %brmerge23.i.i, label %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter5SplithNCNvNvCsapC0faAc3Mj_6uu_pwd12logical_path16looks_reasonable0ENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1K_3any5checkRShNCBN_s_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEEBR_.exit.i, label %.backedge.i

.backedge.i.i:                                    ; preds = %.loopexit.i.i.i
  %i.ac = icmp samesign eq i64 %i.w, 0
  %or.cond40.i = select i1 %3, i1 true, i1 %i.ac
  br i1 %or.cond40.i, label %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter5SplithNCNvNvCsapC0faAc3Mj_6uu_pwd12logical_path16looks_reasonable0ENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1K_3any5checkRShNCBN_s_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEEBR_.exit.thread.i, label %.lr.ph.i.i.i.preheader.backedge.i

_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter5SplithNCNvNvCsapC0faAc3Mj_6uu_pwd12logical_path16looks_reasonable0ENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1K_3any5checkRShNCBN_s_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEEBR_.exit.i: ; preds = %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNvCsapC0faAc3Mj_6uu_pwd12logical_path16looks_reasonables_0E0B1k_.exit.i.i, %bb.e
  %.not11.i.i = phi i1 [ %i.ab, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNvCsapC0faAc3Mj_6uu_pwd12logical_path16looks_reasonables_0E0B1k_.exit.i.i ], [ %i.z, %bb.e ]
  br i1 %.not11.i.i, label %_RNvNvCsapC0faAc3Mj_6uu_pwd12logical_path16looks_reasonable.exit.thread, label %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter5SplithNCNvNvCsapC0faAc3Mj_6uu_pwd12logical_path16looks_reasonable0ENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1K_3any5checkRShNCBN_s_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEEBR_.exit.thread.i

_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter5SplithNCNvNvCsapC0faAc3Mj_6uu_pwd12logical_path16looks_reasonable0ENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1K_3any5checkRShNCBN_s_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEEBR_.exit.thread.i: ; preds = %.backedge.i.i, %.backedge.i, %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter5SplithNCNvNvCsapC0faAc3Mj_6uu_pwd12logical_path16looks_reasonable0ENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1K_3any5checkRShNCBN_s_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEEBR_.exit.i, %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !32
  call void @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs8metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.415.0.copyload, i64 noundef %.sroa.516.0.copyload) #7, !noalias !33
  %i.ad = load i64, ptr %i.d, align 8, !range !34, !noalias !32, !noundef !5 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !27 ; 4 uses
  %.sroa.821.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.821.0.copyload.i = load i64, ptr %.sroa.821.0..sroa_idx.i, align 8, !noalias !27
  %.sroa.922.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.922.0.copyload.i = load i64, ptr %.sroa.922.0..sroa_idx.i, align 8, !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !35
  call void @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs8metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 1) #7, !noalias !36
  %i.ag = load i64, ptr %i.c, align 8, !range !34, !noalias !35, !noundef !5
  %i.ah = icmp eq i64 %i.ag, 2                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !27 ; 4 uses
  br i1 %i.ah, label %_RINvNtCs2vKOLqTMYjT_3std2fs8metadataReECsapC0faAc3Mj_6uu_pwd.exit.thread.i, label %_RINvNtCs2vKOLqTMYjT_3std2fs8metadataReECsapC0faAc3Mj_6uu_pwd.exit.i

_RINvNtCs2vKOLqTMYjT_3std2fs8metadataReECsapC0faAc3Mj_6uu_pwd.exit.thread.i: ; preds = %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter5SplithNCNvNvCsapC0faAc3Mj_6uu_pwd12logical_path16looks_reasonable0ENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1K_3any5checkRShNCBN_s_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEEBR_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !35
  %i.ak = icmp eq i64 %i.ad, 2
  br i1 %i.ak, label %bb.f, label %.thread.i

_RINvNtCs2vKOLqTMYjT_3std2fs8metadataReECsapC0faAc3Mj_6uu_pwd.exit.i: ; preds = %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter5SplithNCNvNvCsapC0faAc3Mj_6uu_pwd12logical_path16looks_reasonable0ENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1K_3any5checkRShNCBN_s_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEEBR_.exit.thread.i
  %.sroa.826.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.826.0.copyload.i = load i64, ptr %.sroa.826.0..sroa_idx.i, align 8, !noalias !27
  %.sroa.927.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.927.0.copyload.i = load i64, ptr %.sroa.927.0..sroa_idx.i, align 8, !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !35
  %.not31 = icmp eq i64 %i.ad, 2
  br i1 %.not31, label %bb.f, label %_RNvNvCsapC0faAc3Mj_6uu_pwd12logical_path16looks_reasonable.exit

bb.f:                                             ; preds = %_RINvNtCs2vKOLqTMYjT_3std2fs8metadataReECsapC0faAc3Mj_6uu_pwd.exit.i, %_RINvNtCs2vKOLqTMYjT_3std2fs8metadataReECsapC0faAc3Mj_6uu_pwd.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !27
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.af) ]
  %i.al = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.am = and i64 %i.al, 3
  switch i64 %i.am, label %default.unreachable [
    i64 2, label %bb.i
    i64 3, label %bb.g
    i64 0, label %bb.i
    i64 1, label %bb.h
  ], !prof !37

default.unreachable:                              ; preds = %.thread.i, %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.an = icmp ult ptr %i.af, inttoptr (i64 188978561024 to ptr)
  %i.ao = and i64 %i.al, 1095216660480
  %i.ap = icmp ne i64 %i.ao, 1095216660480
  call void @llvm.assume(i1 %i.an)
  call void @llvm.assume(i1 %i.ap)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.aq = getelementptr i8, ptr %i.af, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aq) ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.aq, ptr %i.ar, align 8, !alias.scope !38, !noalias !27
  store i8 3, ptr %i.b, align 8, !alias.scope !38, !noalias !27
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ar) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !27
  br i1 %i.ah, label %.thread.i, label %_RNvNvCsapC0faAc3Mj_6uu_pwd12logical_path16looks_reasonable.exit.thread

.thread.i:                                        ; preds = %bb.i, %_RINvNtCs2vKOLqTMYjT_3std2fs8metadataReECsapC0faAc3Mj_6uu_pwd.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !27
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aj) ]
  %i.as = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.at = and i64 %i.as, 3
  switch i64 %i.at, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECsapC0faAc3Mj_6uu_pwd.exit10.i
    i64 3, label %bb.j
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECsapC0faAc3Mj_6uu_pwd.exit10.i
    i64 1, label %bb.k
  ], !prof !37

bb.j:                                             ; preds = %.thread.i
  %i.au = icmp ult ptr %i.aj, inttoptr (i64 188978561024 to ptr)
  %i.av = and i64 %i.as, 1095216660480
  %i.aw = icmp ne i64 %i.av, 1095216660480
  call void @llvm.assume(i1 %i.au)
  call void @llvm.assume(i1 %i.aw)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECsapC0faAc3Mj_6uu_pwd.exit10.i

bb.k:                                             ; preds = %.thread.i
  %i.ax = getelementptr i8, ptr %i.aj, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ax) ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.ax, ptr %i.ay, align 8, !alias.scope !39, !noalias !27
  store i8 3, ptr %i.a, align 8, !alias.scope !39, !noalias !27
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ay) #7
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECsapC0faAc3Mj_6uu_pwd.exit10.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECsapC0faAc3Mj_6uu_pwd.exit10.i: ; preds = %bb.k, %bb.j, %.thread.i, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !27
  br label %_RNvNvCsapC0faAc3Mj_6uu_pwd12logical_path16looks_reasonable.exit.thread

_RNvNvCsapC0faAc3Mj_6uu_pwd12logical_path16looks_reasonable.exit: ; preds = %_RINvNtCs2vKOLqTMYjT_3std2fs8metadataReECsapC0faAc3Mj_6uu_pwd.exit.i
  %i.az = icmp eq i64 %.sroa.821.0.copyload.i, %.sroa.826.0.copyload.i
  %i.ba = icmp eq i64 %.sroa.922.0.copyload.i, %.sroa.927.0.copyload.i
  %.mux.i = select i1 %i.az, i1 %i.ba, i1 false
  br i1 %.mux.i, label %bb.m, label %_RNvNvCsapC0faAc3Mj_6uu_pwd12logical_path16looks_reasonable.exit.thread

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  tail call void @_RNvNtCs2vKOLqTMYjT_3std3env11current_dir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0) #7
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsapC0faAc3Mj_6uu_pwd.exit

bb.m:                                             ; preds = %_RNvNvCsapC0faAc3Mj_6uu_pwd12logical_path16looks_reasonable.exit
  store i64 %i.g, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.415.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.516.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsapC0faAc3Mj_6uu_pwd.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsapC0faAc3Mj_6uu_pwd.exit: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, %_RNvNvCsapC0faAc3Mj_6uu_pwd12logical_path16looks_reasonable.exit.thread, %bb.l, %bb.m
  ret void

_RNvNvCsapC0faAc3Mj_6uu_pwd12logical_path16looks_reasonable.exit.thread: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECsapC0faAc3Mj_6uu_pwd.exit10.i, %bb.i, %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter5SplithNCNvNvCsapC0faAc3Mj_6uu_pwd12logical_path16looks_reasonable0ENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1K_3any5checkRShNCBN_s_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEEBR_.exit.i, %bb.b, %_RNvNvCsapC0faAc3Mj_6uu_pwd12logical_path16looks_reasonable.exit
  call void @_RNvNtCs2vKOLqTMYjT_3std3env11current_dir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0) #7
  %i.bb = icmp eq i64 %i.g, 0
  br i1 %i.bb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsapC0faAc3Mj_6uu_pwd.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %_RNvNvCsapC0faAc3Mj_6uu_pwd12logical_path16looks_reasonable.exit.thread
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.415.0.copyload, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 1) #7
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsapC0faAc3Mj_6uu_pwd.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCsapC0faAc3Mj_6uu_pwd13physical_path(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtCs2vKOLqTMYjT_3std3env11current_dir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a) #7
  %i.b = load i64, ptr %i.a, align 8, !range !4, !noundef !5 ; 2 uses
  %i.c = icmp eq i64 %i.b, -1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0.copyload, ptr %.sroa.3.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store i64 %i.b, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCsapC0faAc3Mj_6uu_pwd6uu_app(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([712 x i8]) align 8 captures(none) dereferenceable(712) initializes((0, 712)) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
_RINvMs1_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB6_3Arg14overrides_withReECsapC0faAc3Mj_6uu_pwd.exit:
  %i.a = alloca [640 x i8], align 8               ; 55 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [640 x i8], align 8               ; 56 uses
  %.sroa.0 = alloca [488 x i8], align 8           ; 4 uses
  %.sroa.7246.sroa.5 = alloca [128 x i8], align 8 ; 4 uses
  %i.d = alloca [640 x i8], align 8               ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [640 x i8], align 8               ; 53 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [712 x i8], align 8               ; 57 uses
  %i.l = alloca [712 x i8], align 8               ; 5 uses
  %i.m = alloca [712 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %.sroa.0.sroa.0.sroa.0.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.11.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.13.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.18.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.20.0..sroa_idx, i8 0, i64 16, i1 false)
end_hunk_0
