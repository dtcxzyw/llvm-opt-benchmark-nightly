Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_yes-95b0035a3d6e86b2.uu_yes.3e522f3e20b6a7da-cgu.0?download=true
inline.NumInlined: 194
inline.NumDeleted: 135
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_RNvCs5lJtbkSVYU0_6uu_yes21CAPTURE_STARTUP_STATE = constant ptr @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals21capture_startup_state, section ".init_array", align 8
@0 = private unnamed_addr constant [77 x i8] c"/rustc/7608eb7b07eaf93f16d7cf5bcb2098eca87503df/library/alloc/src/io/read.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, ptr, ptr }> <{ ptr @_RNvYNCNvNvMNtNtCs2vKOLqTMYjT_3std2io5errorNtNtNtCs6JMX4GRUq9U_4core2io5error5Error17from_raw_os_error9FUNCTIONS0INtNtNtBK_3ops8function6FnOnceTlQNtNtBK_3fmt9FormatterEE9call_onceCs5lJtbkSVYU0_6uu_yes, ptr @_RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys2io5error4unix17decode_error_kind, ptr @_RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys2io5error4unix14is_interrupted }>, align 8
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"L\00\00\00\00\00\00\00j\03\00\009\00\00\00" }>, align 8
@3 = private unnamed_addr constant [22 x i8] c"src/uu/yes/src/yes.rs\00", align 1
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"\15\00\00\00\00\00\00\00J\00\00\00\22\00\00\00" }>, align 8
@5 = private unnamed_addr constant [3 x i8] c"yes", align 1
@6 = private unnamed_addr constant [25 x i8] c"(uutils coreutils) 0.10.0", align 1
@7 = private unnamed_addr constant [9 x i8] c"yes-about", align 1
@8 = private unnamed_addr constant [9 x i8] c"yes-usage", align 1
@9 = private unnamed_addr constant [6 x i8] c"STRING", align 1
@10 = private unnamed_addr constant [1 x i8] c"y", align 1
@_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions12OS_FUNCTIONS = external local_unnamed_addr global { { { ptr } } }
@11 = private unnamed_addr constant [34 x i8] c"number of read bytes exceeds limit", align 1
@12 = private unnamed_addr constant [77 x i8] c"/rustc/7608eb7b07eaf93f16d7cf5bcb2098eca87503df/library/alloc/src/io/util.rs\00", align 1
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c"L\00\00\00\00\00\00\00\F4\00\00\00\09\00\00\00" }>, align 8
@14 = private unnamed_addr constant [28 x i8] c"failed to write whole buffer", align 1
@15 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8] }> <{ ptr @14, [9 x i8] c"\1C\00\00\00\00\00\00\00\17", [7 x i8] undef }>, align 8
@16 = private unnamed_addr constant [77 x i8] c"/rustc/7608eb7b07eaf93f16d7cf5bcb2098eca87503df/library/core/src/io/write.rs\00", align 1
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"L\00\00\00\00\00\00\00\DC\00\00\00$\00\00\00" }>, align 8
@llvm.used = appending global [1 x ptr] [ptr @_RNvCs5lJtbkSVYU0_6uu_yes21CAPTURE_STARTUP_STATE], section "llvm.metadata"
@switch.table._RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys2io5error4unix17decode_error_kind = private unnamed_addr constant [122 x i8] c"\01\00+#)+\22+++\0D&\01++\1C\0C\1F+\0E\0F\14((+\1D\1B\18\19\11 \0B++\1E!+$\10\12++++++++++++++++++++++++++++++++++++++++++++++++++++++$++\08\09\0A\05+\06\03++\07++\16\02+\04+'\13+++++\1A", align 1

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5lJtbkSVYU0_6uu_yes(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 17) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !4, !alias.scope !13, !noundef !5 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 range(i64 0, -1) %i.e)
  %i.f = icmp eq i64 %4, 1
  %.sroa.08.0.i = select i1 %i.f, i64 8, i64 4
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 range(i64 0, -1) %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.g, align 8, !alias.scope !13
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs5lJtbkSVYU0_6uu_yes(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 17) %4) #15, !noalias !13
  %i.h = load i64, ptr %i.a, align 8, !range !6, !noalias !13, !noundef !5
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !range !14, !noalias !13, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noalias !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.m, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #16
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !noalias !13, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13
  store ptr %i.n, ptr %i.g, align 8, !alias.scope !13
  %i.o = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.o)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !13
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_end16small_probe_readINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5lJtbkSVYU0_6uu_yes(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !26, !noalias !27, !noundef !5 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5lJtbkSVYU0_6uu_yes.exit.i.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs5lJtbkSVYU0_6uu_yes.exit
  %i.g = phi i64 [ %i.d, %.lr.ph ], [ %i.be, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs5lJtbkSVYU0_6uu_yes.exit ]
  %..i.i = call noundef range(i64 1, 33) i64 @llvm.umin.i64(i64 range(i64 1, 0) %i.g, i64 32)
  %i.h = call { i64, ptr } @_RNvXs4_NtNtCs2vKOLqTMYjT_3std2io4pipeRNtB5_10PipeReaderNtNtNtCs7tKScEop1B6_5alloc2io4read4Read4read(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull %i.b, i64 noundef %..i.i) #15 ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.h, 0
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 14 uses
  %i.k = trunc nuw i64 %i.i to i1
  %2 = ptrtoint ptr %i.j to i64                   ; 6 uses
  br i1 %i.k, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.c, align 8, !alias.scope !26, !noalias !27, !noundef !5 ; 2 uses
  %.not.i = icmp ult i64 %i.l, %2
  br i1 %.not.i, label %bb.d, label %.loopexit, !prof !7

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @11, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #17
  unreachable

bb.e:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %i.m = and i64 %2, 3
  switch i64 %i.m, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit
    i64 0, label %.split10
    i64 1, label %.split9
  ], !prof !8

default.unreachable:                              ; preds = %bb.e
  unreachable

.split:                                           ; preds = %bb.e
  %i.n = lshr i64 %2, 32
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #15
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5
  %i.s = call noundef zeroext i1 %i.r(i32 noundef %i.o) #15, !inline_history !18
  br i1 %i.s, label %.thread, label %.loopexit12

.split10:                                         ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.u = load i8, ptr %i.t, align 8, !range !9, !noundef !5
  %i.v = icmp eq i8 %i.u, 35
  br i1 %i.v, label %.thread, label %.loopexit12

.split9:                                          ; preds = %bb.e
  %i.w = getelementptr i8, ptr %i.j, i64 31
  %i.x = load i8, ptr %i.w, align 8, !range !9, !noundef !5
  %i.y = icmp eq i8 %i.x, 35
  br i1 %i.y, label %bb.j, label %.loopexit12

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %bb.e
  %i.z = lshr i64 %2, 32
  %i.aa = icmp ult ptr %i.j, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i = trunc i64 %i.z to i8
  %spec.select.i.i.i = select i1 %i.aa, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.ab = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.ab)
  %i.ac = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.ac, label %bb.i, label %.loopexit12

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5lJtbkSVYU0_6uu_yes.exit.i.thread: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs5lJtbkSVYU0_6uu_yes.exit, %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !28, !noundef !5 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, -1
  call void @llvm.assume(i1 %i.af)
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs5lJtbkSVYU0_6uu_yes.exit

.loopexit:                                        ; preds = %bb.c
  %i.ag = sub nuw i64 %i.l, %2
  store i64 %i.ag, ptr %i.c, align 8, !alias.scope !26, !noalias !27
  %i.ah = ptrtoint ptr %i.j to i64                ; 6 uses
  %i.ai = icmp ult ptr %i.j, inttoptr (i64 33 to ptr)
  br i1 %i.ai, label %bb.f, label %bb.h, !prof !29

bb.f:                                             ; preds = %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !30)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !31, !noundef !5 ; 5 uses
  %i.al = load i64, ptr %1, align 8, !range !4, !alias.scope !31, !noundef !5
  %i.am = sub i64 %i.al, %i.ak
  %i.an = icmp ult i64 %i.am, %i.ah
  br i1 %i.an, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5lJtbkSVYU0_6uu_yes.exit.thread.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5lJtbkSVYU0_6uu_yes.exit.i, !prof !32

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5lJtbkSVYU0_6uu_yes.exit.thread.i: ; preds = %bb.f
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5lJtbkSVYU0_6uu_yes(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ak, i64 noundef %i.ah, i64 noundef 1, i64 noundef 1) #15
  %i.ao = load i64, ptr %i.aj, align 8, !alias.scope !30, !noundef !5 ; 2 uses
  %i.ap = icmp sgt i64 %i.ao, -1
  call void @llvm.assume(i1 %i.ap)
  br label %bb.g

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5lJtbkSVYU0_6uu_yes.exit.i: ; preds = %bb.f
  %i.aq = icmp sgt i64 %i.ak, -1
  call void @llvm.assume(i1 %i.aq)
  %.not.i3 = icmp eq ptr %i.j, null
  br i1 %.not.i3, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs5lJtbkSVYU0_6uu_yes.exit, label %bb.g

bb.g:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5lJtbkSVYU0_6uu_yes.exit.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5lJtbkSVYU0_6uu_yes.exit.thread.i
  %i.ar = phi i64 [ %i.ao, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5lJtbkSVYU0_6uu_yes.exit.thread.i ], [ %i.ak, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5lJtbkSVYU0_6uu_yes.exit.i ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !30, !nonnull !5, !noundef !5
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.au, ptr nonnull readonly align 1 %i.b, i64 %i.ah, i1 false), !noalias !30
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs5lJtbkSVYU0_6uu_yes.exit

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs5lJtbkSVYU0_6uu_yes.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5lJtbkSVYU0_6uu_yes.exit.i.thread, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5lJtbkSVYU0_6uu_yes.exit.i, %bb.g
  %i.av = phi ptr [ %i.aj, %bb.g ], [ %i.aj, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5lJtbkSVYU0_6uu_yes.exit.i ], [ %i.ad, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5lJtbkSVYU0_6uu_yes.exit.i.thread ]
  %.sroa.4.0.i.ph3035 = phi ptr [ %i.j, %bb.g ], [ null, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5lJtbkSVYU0_6uu_yes.exit.i ], [ null, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5lJtbkSVYU0_6uu_yes.exit.i.thread ]
  %i.aw = phi i64 [ %i.ah, %bb.g ], [ %i.ah, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5lJtbkSVYU0_6uu_yes.exit.i ], [ 0, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5lJtbkSVYU0_6uu_yes.exit.i.thread ]
  %i.ax = phi i64 [ %i.ar, %bb.g ], [ %i.ak, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5lJtbkSVYU0_6uu_yes.exit.i ], [ %i.ae, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5lJtbkSVYU0_6uu_yes.exit.i.thread ]
  %i.ay = add i64 %i.ax, %i.aw
  store i64 %i.ay, ptr %i.av, align 8, !alias.scope !30
  br label %.loopexit12

bb.h:                                             ; preds = %.loopexit
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ah, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #17
  unreachable

.loopexit12:                                      ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split, %.split9, %.split10, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs5lJtbkSVYU0_6uu_yes.exit
  %.sroa.3.0 = phi ptr [ %.sroa.4.0.i.ph3035, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs5lJtbkSVYU0_6uu_yes.exit ], [ %i.j, %.split10 ], [ %i.j, %.split9 ], [ %i.j, %.split ], [ %i.j, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit ]
  %.sroa.0.0 = phi i64 [ 0, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs5lJtbkSVYU0_6uu_yes.exit ], [ 1, %.split10 ], [ 1, %.split9 ], [ 1, %.split ], [ 1, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.az = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.ba = insertvalue { i64, ptr } %i.az, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.ba

.thread:                                          ; preds = %.split, %.split10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs5lJtbkSVYU0_6uu_yes.exit

bb.i:                                             ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bb = and i64 %2, 1095216660480
  %i.bc = icmp ne i64 %i.bb, 1095216660480
  call void @llvm.assume(i1 %i.aa)
  call void @llvm.assume(i1 %i.bc)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs5lJtbkSVYU0_6uu_yes.exit

bb.j:                                             ; preds = %.split9
  %i.bd = getelementptr i8, ptr %i.j, i64 -1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bd) ]
  store ptr %i.bd, ptr %i.f, align 8, !alias.scope !33
  store i8 3, ptr %i.a, align 8, !alias.scope !33
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #15
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs5lJtbkSVYU0_6uu_yes.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs5lJtbkSVYU0_6uu_yes.exit: ; preds = %bb.i, %bb.j, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.be = load i64, ptr %i.c, align 8, !alias.scope !26, !noalias !27, !noundef !5 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5lJtbkSVYU0_6uu_yes.exit.i.thread, label %bb.b
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCs5lJtbkSVYU0_6uu_yes26repeat_content_to_capacity(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 5 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %0, align 8, !range !4, !noundef !5 ; 3 uses
  %i.f = urem i64 %i.e, %i.b
  %i.g = sub nuw nsw i64 %i.e, %i.f               ; 3 uses
  %i.h = icmp samesign ult i64 %i.b, %i.g
  br i1 %i.h, label %_RINvNtNtCs6JMX4GRUq9U_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECs5lJtbkSVYU0_6uu_yes.exit.i.lr.ph, label %._crit_edge

_RINvNtNtCs6JMX4GRUq9U_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECs5lJtbkSVYU0_6uu_yes.exit.i.lr.ph: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RINvNtNtCs6JMX4GRUq9U_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECs5lJtbkSVYU0_6uu_yes.exit.i

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #17
  unreachable

._crit_edge:                                      ; preds = %_RINvMs1_NtCs7tKScEop1B6_5alloc3vecINtB6_3VechE18extend_from_withinINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECs5lJtbkSVYU0_6uu_yes.exit, %bb.b
  ret void

_RINvNtNtCs6JMX4GRUq9U_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECs5lJtbkSVYU0_6uu_yes.exit.i: ; preds = %_RINvNtNtCs6JMX4GRUq9U_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECs5lJtbkSVYU0_6uu_yes.exit.i.lr.ph, %_RINvMs1_NtCs7tKScEop1B6_5alloc3vecINtB6_3VechE18extend_from_withinINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECs5lJtbkSVYU0_6uu_yes.exit
  %i.j = phi i64 [ %i.e, %_RINvNtNtCs6JMX4GRUq9U_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECs5lJtbkSVYU0_6uu_yes.exit.i.lr.ph ], [ %i.o, %_RINvMs1_NtCs7tKScEop1B6_5alloc3vecINtB6_3VechE18extend_from_withinINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECs5lJtbkSVYU0_6uu_yes.exit ] ; 2 uses
  %i.k = phi i64 [ %i.b, %_RINvNtNtCs6JMX4GRUq9U_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECs5lJtbkSVYU0_6uu_yes.exit.i.lr.ph ], [ %i.s, %_RINvMs1_NtCs7tKScEop1B6_5alloc3vecINtB6_3VechE18extend_from_withinINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECs5lJtbkSVYU0_6uu_yes.exit ] ; 5 uses
  %i.l = sub nuw nsw i64 %i.g, %i.k
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.k, i64 %i.l) ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %i.m = sub nsw i64 %i.j, %i.k
  %i.n = icmp ugt i64 %..i, %i.m
  br i1 %i.n, label %bb.d, label %_RINvMs1_NtCs7tKScEop1B6_5alloc3vecINtB6_3VechE18extend_from_withinINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECs5lJtbkSVYU0_6uu_yes.exit, !prof !7

bb.d:                                             ; preds = %_RINvNtNtCs6JMX4GRUq9U_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECs5lJtbkSVYU0_6uu_yes.exit.i
  tail call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5lJtbkSVYU0_6uu_yes(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.k, i64 noundef %..i, i64 noundef 1, i64 noundef 1) #15
  %.pre.i = load i64, ptr %i.a, align 8, !alias.scope !44, !noalias !45
  %.pre = load i64, ptr %0, align 8, !range !4, !alias.scope !46
  br label %_RINvMs1_NtCs7tKScEop1B6_5alloc3vecINtB6_3VechE18extend_from_withinINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECs5lJtbkSVYU0_6uu_yes.exit

_RINvMs1_NtCs7tKScEop1B6_5alloc3vecINtB6_3VechE18extend_from_withinINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECs5lJtbkSVYU0_6uu_yes.exit: ; preds = %_RINvNtNtCs6JMX4GRUq9U_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECs5lJtbkSVYU0_6uu_yes.exit.i, %bb.d
  %i.o = phi i64 [ %i.j, %_RINvNtNtCs6JMX4GRUq9U_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECs5lJtbkSVYU0_6uu_yes.exit.i ], [ %.pre, %bb.d ]
  %i.p = phi i64 [ %i.k, %_RINvNtNtCs6JMX4GRUq9U_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECs5lJtbkSVYU0_6uu_yes.exit.i ], [ %.pre.i, %bb.d ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %i.q = load ptr, ptr %i.i, align 8, !alias.scope !44, !noalias !45, !nonnull !5, !noundef !5 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull align 1 %i.q, i64 %..i, i1 false), !noalias !48
  %i.s = add i64 %i.p, %..i                       ; 4 uses
  store i64 %i.s, ptr %i.a, align 8, !alias.scope !48
  %i.t = icmp sgt i64 %i.s, -1
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp samesign ult i64 %i.s, %i.g
  br i1 %i.u, label %_RINvNtNtCs6JMX4GRUq9U_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECs5lJtbkSVYU0_6uu_yes.exit.i, label %._crit_edge
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef ptr @_RNvCs5lJtbkSVYU0_6uu_yes4exec(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls18fcntl_setpipe_size.exit:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 10 uses
  %i.g = alloca [24 x i8], align 8                ; 11 uses
  %i.h = alloca [24 x i8], align 8                ; 11 uses
  %i.i = alloca [16 x i8], align 8                ; 8 uses
  %i.j = alloca [8 x i8], align 4                 ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 6 uses
  %i.m = alloca [16 x i8], align 8                ; 8 uses
  %i.n = alloca [8 x i8], align 4                 ; 6 uses
  %i.o = alloca [4 x i8], align 4                 ; 8 uses
  %i.p = alloca [4 x i8], align 4                 ; 11 uses
  %i.q = alloca [4 x i8], align 4                 ; 9 uses
  %i.r = alloca [4 x i8], align 4                 ; 8 uses
  %i.s = tail call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},~{memory}"(ptr nonnull inttoptr (i64 72 to ptr), ptr nonnull inttoptr (i64 1 to ptr), ptr nonnull inttoptr (i64 1031 to ptr), ptr nonnull inttoptr (i64 1048576 to ptr)) #18, !noalias !125, !srcloc !126 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !127
  call void @_RNvNtNtNtCs2vKOLqTMYjT_3std3sys4pipe4unix4pipe(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.m) #15, !noalias !127
  %i.t = load i32, ptr %i.m, align 8, !range !128, !noalias !127, !noundef !5
  %i.u = trunc nuw i32 %i.t to i1
  br i1 %i.u, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls18fcntl_setpipe_size.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !noalias !127, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !127
  br label %bb.bm

bb.b:                                             ; preds = %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls18fcntl_setpipe_size.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.y = load i32, ptr %i.x, align 4, !range !129, !noalias !127, !noundef !5 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !range !129, !noalias !127, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !127
  store i32 %i.y, ptr %i.n, align 4, !noalias !127
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 %i.aa, ptr %i.ab, align 4, !noalias !127
  %i.ac = call noundef i32 @_RNvXsy_NtNtNtCs2vKOLqTMYjT_3std2os2fd5ownedNtNtNtBb_2io4pipe10PipeReaderNtB5_4AsFd5as_fd(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.n) #15, !noalias !127
  %i.ad = zext i32 %i.ac to i64
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},~{memory}"(ptr nonnull inttoptr (i64 72 to ptr), ptr %i.ae, ptr nonnull inttoptr (i64 1031 to ptr), ptr nonnull inttoptr (i64 1048576 to ptr)) #18, !noalias !130, !srcloc !126
  %i.ag = extractvalue { ptr, i32, i32 } %i.af, 0 ; 3 uses
  %.not.i.i.i = icmp sgt ptr %i.ag, inttoptr (i64 -4096 to ptr)
  %i.ah = icmp slt ptr %i.ag, null
  %.sroa.0.0.i.i.i = and i1 %.not.i.i.i, %i.ah
  br i1 %.sroa.0.0.i.i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = load atomic ptr, ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8, !noalias !127
  %.not.i.i26 = icmp eq ptr %i.aj, @1
  br i1 %.not.i.i26, label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i, label %bb.d, !prof !131

bb.d:                                             ; preds = %bb.c
  call void @_RNvNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #15, !noalias !127
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i: ; preds = %bb.d, %bb.c
  %.neg.i = mul i64 %i.ai, -4294967296
  %i.ak = or disjoint i64 %.neg.i, 2
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = call noundef i32 @close(i32 noundef %i.y) #15, !noalias !127 ; 0 uses
  %i.an = call noundef i32 @close(i32 noundef %i.aa) #15, !noalias !127 ; 0 uses
  br label %bb.bm

bb.e:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderNtB10_10PipeWriterENtNtNtB4_2io5error5ErrorEECs5lJtbkSVYU0_6uu_yes.exit, %.thread101, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5lJtbkSVYU0_6uu_yes.exit
  %.val22 = load i32, ptr %i.q, align 4, !range !129, !noundef !5
  %i.ao = call noundef i32 @close(i32 noundef %.val22) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.ap = call noundef i32 @close(i32 noundef %i.y) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.bh

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i32 %i.y, ptr %i.r, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i32 %i.aa, ptr %i.q, align 4
  %i.aq = icmp eq i64 %1, 0                       ; 2 uses
  br i1 %i.aq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5lJtbkSVYU0_6uu_yes.exit31, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.o, %.lr.ph.i
  %.sroa.0.024.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.116.i, %bb.o ] ; 3 uses
  %.sroa.6.023.i = phi i64 [ %1, %.lr.ph.i ], [ %.sroa.6.114.i, %bb.o ] ; 6 uses
  %i.as = call { i64, ptr } @_RNvXs7_NtNtCs2vKOLqTMYjT_3std2io4pipeNtB5_10PipeWriterNtNtNtCs6JMX4GRUq9U_4core2io5write5Write5write(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.024.i, i64 noundef %.sroa.6.023.i) #15 ; 2 uses
  %i.at = extractvalue { i64, ptr } %i.as, 0
  %i.au = extractvalue { i64, ptr } %i.as, 1      ; 11 uses
  %i.av = ptrtoint ptr %i.au to i64               ; 8 uses
  %i.aw = trunc nuw i64 %i.at to i1
  br i1 %i.aw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.au) ]
  %i.ax = and i64 %i.av, 3
  switch i64 %i.ax, label %.unreachabledefault [
    i64 2, label %.split.i
    i64 3, label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i
    i64 0, label %.split11.i
    i64 1, label %.split10.i
  ], !prof !8

.unreachabledefault:                              ; preds = %bb.h
  unreachable

default.unreachable:                              ; preds = %bb.ap, %bb.bm, %bb.bj
  unreachable

.split.i:                                         ; preds = %bb.h
  %i.ay = lshr i64 %i.av, 32
  %i.az = trunc nuw i64 %i.ay to i32
  %i.ba = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #15
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !5, !noundef !5
  %i.bd = call noundef zeroext i1 %i.bc(i32 noundef %i.az) #15, !inline_history !55
  br i1 %i.bd, label %.thread.i, label %._crit_edge192

.split11.i:                                       ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.bf = load i8, ptr %i.be, align 8, !range !9, !noundef !5
  %i.bg = icmp eq i8 %i.bf, 35
  br i1 %i.bg, label %.thread.i, label %._crit_edge192

.split10.i:                                       ; preds = %bb.h
  %i.bh = getelementptr i8, ptr %i.au, i64 31
  %i.bi = load i8, ptr %i.bh, align 8, !range !9, !noundef !5
  %i.bj = icmp eq i8 %i.bi, 35
  br i1 %i.bj, label %bb.n, label %._crit_edge192

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i: ; preds = %bb.h
  %i.bk = lshr i64 %i.av, 32
  %i.bl = icmp ult ptr %i.au, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i.i = trunc i64 %i.bk to i8
  %spec.select.i.i.i.i = select i1 %i.bl, i8 %switch.idx.cast.i.i.i.i, i8 -1 ; 2 uses
  %i.bm = icmp ne i8 %spec.select.i.i.i.i, -1
  call void @llvm.assume(i1 %i.bm)
  %i.bn = icmp eq i8 %spec.select.i.i.i.i, 35
  br i1 %i.bn, label %bb.m, label %._crit_edge192

bb.i:                                             ; preds = %bb.g
  %i.bo = icmp eq ptr %i.au, null
  br i1 %i.bo, label %._crit_edge192, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bp = icmp ult i64 %.sroa.6.023.i, %i.av
  br i1 %i.bp, label %bb.k, label %bb.l, !prof !7

bb.k:                                             ; preds = %bb.j
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %i.av, i64 noundef %.sroa.6.023.i, i64 noundef %.sroa.6.023.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #17
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.bq = sub nuw nsw i64 %.sroa.6.023.i, %i.av
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.024.i, i64 %i.av
  br label %bb.o

.thread.i:                                        ; preds = %.split11.i, %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !132
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5lJtbkSVYU0_6uu_yes.exit.i

bb.m:                                             ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !132
  %i.bs = and i64 %i.av, 1095216660480
  %i.bt = icmp ne i64 %i.bs, 1095216660480
  call void @llvm.assume(i1 %i.bl)
  call void @llvm.assume(i1 %i.bt)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5lJtbkSVYU0_6uu_yes.exit.i

bb.n:                                             ; preds = %.split10.i
  %i.bu = getelementptr i8, ptr %i.au, i64 -1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !132
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bu) ]
  store ptr %i.bu, ptr %i.ar, align 8, !alias.scope !133, !noalias !132
  store i8 3, ptr %i.l, align 8, !alias.scope !133, !noalias !132
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ar) #15
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5lJtbkSVYU0_6uu_yes.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5lJtbkSVYU0_6uu_yes.exit.i: ; preds = %bb.n, %bb.m, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !132
  br label %bb.o

bb.o:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5lJtbkSVYU0_6uu_yes.exit.i, %bb.l
  %.sroa.0.116.i = phi ptr [ %.sroa.0.024.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5lJtbkSVYU0_6uu_yes.exit.i ], [ %i.br, %bb.l ]
  %.sroa.6.114.i = phi i64 [ %.sroa.6.023.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5lJtbkSVYU0_6uu_yes.exit.i ], [ %i.bq, %bb.l ] ; 2 uses
  %i.bv = icmp eq i64 %.sroa.6.114.i, 0
  br i1 %i.bv, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5lJtbkSVYU0_6uu_yes.exit31, label %bb.g

._crit_edge192:                                   ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i, %.split.i, %.split10.i, %.split11.i, %bb.i
  %.sroa.07.1.i.ph = phi ptr [ @15, %bb.i ], [ %i.au, %.split11.i ], [ %i.au, %.split10.i ], [ %i.au, %.split.i ], [ %i.au, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.bw = ptrtoint ptr %.sroa.07.1.i.ph to i64    ; 2 uses
  %i.bx = and i64 %i.bw, 3
  switch i64 %i.bx, label %default.unreachable.i28 [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5lJtbkSVYU0_6uu_yes.exit
    i64 3, label %bb.p
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5lJtbkSVYU0_6uu_yes.exit
    i64 1, label %bb.q
  ], !prof !8

default.unreachable.i28:                          ; preds = %._crit_edge192
  unreachable

bb.p:                                             ; preds = %._crit_edge192
  %i.by = icmp ult ptr %.sroa.07.1.i.ph, inttoptr (i64 188978561024 to ptr)
  %i.bz = and i64 %i.bw, 1095216660480
  %i.ca = icmp ne i64 %i.bz, 1095216660480
  call void @llvm.assume(i1 %i.by)
  call void @llvm.assume(i1 %i.ca)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5lJtbkSVYU0_6uu_yes.exit

bb.q:                                             ; preds = %._crit_edge192
  %i.cb = getelementptr i8, ptr %.sroa.07.1.i.ph, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cb) ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %i.cb, ptr %i.cc, align 8, !alias.scope !134
  store i8 3, ptr %i.k, align 8, !alias.scope !134
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cc) #15
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5lJtbkSVYU0_6uu_yes.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5lJtbkSVYU0_6uu_yes.exit: ; preds = %._crit_edge192, %._crit_edge192, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.e

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5lJtbkSVYU0_6uu_yes.exit31: ; preds = %bb.o, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !135
  call void @_RNvNtNtNtCs2vKOLqTMYjT_3std3sys4pipe4unix4pipe(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.i) #15, !noalias !135
  %i.cd = load i32, ptr %i.i, align 8, !range !128, !noalias !135, !noundef !5
  %i.ce = trunc nuw i32 %i.cd to i1
  br i1 %i.ce, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5lJtbkSVYU0_6uu_yes.exit31
  %i.cf = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !135, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !135
  br label %bb.bj

bb.s:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5lJtbkSVYU0_6uu_yes.exit31
  %i.ch = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !range !129, !noalias !135, !noundef !5 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ck = load i32, ptr %i.cj, align 8, !range !129, !noalias !135, !noundef !5 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !135
  store i32 %i.ci, ptr %i.j, align 4, !noalias !135
  %i.cl = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 %i.ck, ptr %i.cl, align 4, !noalias !135
  %i.cm = call noundef i32 @_RNvXsy_NtNtNtCs2vKOLqTMYjT_3std2os2fd5ownedNtNtNtBb_2io4pipe10PipeReaderNtB5_4AsFd5as_fd(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.j) #15, !noalias !135
  %i.cn = zext i32 %i.cm to i64
  %i.co = inttoptr i64 %i.cn to ptr
  %i.cp = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},~{memory}"(ptr nonnull inttoptr (i64 72 to ptr), ptr %i.co, ptr nonnull inttoptr (i64 1031 to ptr), ptr nonnull inttoptr (i64 1048576 to ptr)) #18, !noalias !136, !srcloc !126
  %i.cq = extractvalue { ptr, i32, i32 } %i.cp, 0 ; 3 uses
  %.not.i.i.i32 = icmp sgt ptr %i.cq, inttoptr (i64 -4096 to ptr)
  %i.cr = icmp slt ptr %i.cq, null
  %.sroa.0.0.i.i.i33 = and i1 %.not.i.i.i32, %i.cr
  br i1 %.sroa.0.0.i.i.i33, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = load atomic ptr, ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8, !noalias !135
  %.not.i.i35 = icmp eq ptr %i.ct, @1
  br i1 %.not.i.i35, label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i36, label %bb.u, !prof !131

bb.u:                                             ; preds = %bb.t
  call void @_RNvNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #15, !noalias !135
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i36

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i36: ; preds = %bb.u, %bb.t
  %.neg.i37 = mul i64 %i.cs, -4294967296
  %i.cu = or disjoint i64 %.neg.i37, 2
  %i.cv = inttoptr i64 %i.cu to ptr
  %i.cw = call noundef i32 @close(i32 noundef %i.ci) #15, !noalias !135 ; 0 uses
  %i.cx = call noundef i32 @close(i32 noundef %i.ck) #15, !noalias !135 ; 0 uses
  br label %bb.bj

.thread101:                                       ; preds = %bb.v, %_RINvNtNtCsh036I4OHgIr_6uucore8features5pipes10drain_pipeNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned10BorrowedFdECs5lJtbkSVYU0_6uu_yes.exit
  %i.cy = call noundef i32 @close(i32 noundef %i.ck) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.val15 = load i32, ptr %i.p, align 4, !range !129, !noundef !5
  %i.cz = call noundef i32 @close(i32 noundef %.val15) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.e

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i32 %i.ci, ptr %i.p, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i32 %i.ck, ptr %i.o, align 4
  %i.da = call noundef i32 @_RNvXsy_NtNtNtCs2vKOLqTMYjT_3std2os2fd5ownedNtNtNtBb_2io4pipe10PipeReaderNtB5_4AsFd5as_fd(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.r) #15
  %i.db = call noundef i32 @_RNvXsA_NtNtNtCs2vKOLqTMYjT_3std2os2fd5ownedNtNtNtBb_2io4pipe10PipeWriterNtB5_4AsFd5as_fd(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.o) #15
  %i.dc = zext i32 %i.da to i64
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = zext i32 %i.db to i64
  %i.df = inttoptr i64 %i.de to ptr
  %i.dg = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},{r10},~{memory}"(ptr nonnull inttoptr (i64 276 to ptr), ptr %i.dd, ptr %i.df, ptr nonnull inttoptr (i64 1048576 to ptr), ptr null) #15, !noalias !137, !srcloc !138
  %i.dh = extractvalue { ptr, i32, i32 } %i.dg, 0 ; 3 uses
  %.not.i.i39 = icmp sle ptr %i.dh, inttoptr (i64 -4096 to ptr)
  %i.di = icmp sge ptr %i.dh, null
  %.sroa.0.0.i.i40.not153 = or i1 %.not.i.i39, %i.di
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = icmp eq i64 %1, %i.dj
  %or.cond = and i1 %.sroa.0.0.i.i40.not153, %i.dk
  br i1 %or.cond, label %bb.w, label %.thread101

bb.w:                                             ; preds = %bb.v
  br i1 %i.aq, label %.loopexit113, label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %bb.w, %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit.i
  %.sroa.0.069.i = phi i64 [ %i.dv, %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit.i ], [ %1, %bb.w ] ; 11 uses
  %i.dl = call noundef i32 @_RNvXsy_NtNtNtCs2vKOLqTMYjT_3std2os2fd5ownedNtNtNtBb_2io4pipe10PipeReaderNtB5_4AsFd5as_fd(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.p) #15, !noalias !139
  %i.dm = zext i32 %i.dl to i64
  %i.dn = inttoptr i64 %i.dm to ptr
  %i.do = inttoptr i64 %.sroa.0.069.i to ptr
  %i.dp = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},{r10},{r8},{r9},~{memory}"(ptr nonnull inttoptr (i64 275 to ptr), ptr %i.dn, ptr null, ptr nonnull inttoptr (i64 1 to ptr), ptr null, ptr nonnull %i.do, ptr null) #15, !noalias !140, !srcloc !141
  %i.dq = extractvalue { ptr, i32, i32 } %i.dp, 0 ; 3 uses
  %.not.i.i.i43 = icmp sgt ptr %i.dq, inttoptr (i64 -4096 to ptr)
  %i.dr = icmp slt ptr %i.dq, null
  %.sroa.0.0.i.i.i44 = and i1 %.not.i.i.i43, %i.dr
  br i1 %.sroa.0.0.i.i.i44, label %bb.x, label %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit.i

bb.x:                                             ; preds = %.lr.ph.i42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !142
  %.not.i.i45 = icmp slt i64 %.sroa.0.069.i, 0
  br i1 %.not.i.i45, label %bb.y, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i, !prof !10

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.x
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !143
  %i.ds = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.0.069.i, i64 noundef range(i64 1, 9) 1) #15, !noalias !143 ; 2 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.y, label %bb.z

_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit.i: ; preds = %.lr.ph.i42
  %i.du = ptrtoint ptr %i.dq to i64
  %i.dv = sub i64 %.sroa.0.069.i, %i.du           ; 2 uses
  %.not.i = icmp eq i64 %i.dv, 0
  br i1 %.not.i, label %.loopexit113, label %.lr.ph.i42

bb.y:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i, %bb.x
  %.sroa.4.0.ph.i = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %bb.x ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %.sroa.0.069.i) #16, !noalias !139
  unreachable

bb.z:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i
  store i64 %.sroa.0.069.i, ptr %i.h, align 8, !noalias !142
  %i.dw = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 5 uses
  store ptr %i.ds, ptr %i.dw, align 8, !noalias !142
  %i.dx = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 5 uses
  store i64 0, ptr %i.dx, align 8, !noalias !142
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !142
  store ptr %i.p, ptr %i.g, align 8, !noalias !142
  %i.dy = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.sroa.0.069.i, ptr %i.dy, align 8, !noalias !142
  %i.dz = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 7 uses
  store i64 %.sroa.0.069.i, ptr %i.dz, align 8, !noalias !142
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %i.ea = icmp samesign ult i64 %.sroa.0.069.i, 32
  br i1 %i.ea, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge88.i.i, %bb.z
  %.pre81.i.i = phi i64 [ %.pre81.pre.i.i, %._crit_edge88.i.i ], [ %.sroa.0.069.i, %bb.z ]
  %.pre.i.i = phi i64 [ %.pr.pre.i, %._crit_edge88.i.i ], [ 0, %bb.z ]
  %i.eb = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br label %bb.ad

end_hunk_0
begin_hunk_1_@_RNvCs5lJtbkSVYU0_6uu_yes4exec:_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls18fcntl_setpipe_size.exit
bb.ae:                                            ; preds = %._crit_edge.i.i, %bb.ad
  %i.es = phi i64 [ %.pre83.i.i, %._crit_edge.i.i ], [ %i.eo, %bb.ad ] ; 6 uses
  %i.et = phi i64 [ %.pre82.i.i, %._crit_edge.i.i ], [ %i.ep, %bb.ad ] ; 7 uses
  %i.eu = icmp sgt i64 %i.et, -1
  call void @llvm.assume(i1 %i.eu)
  %i.ev = icmp eq i64 %i.et, %i.es
  %.pre84.i.i = load ptr, ptr %i.dw, align 8, !alias.scope !145, !noalias !146 ; 2 uses
  br i1 %i.ev, label %bb.ai, label %bb.aj

bb.af:                                            ; preds = %bb.ad
  %i.ew = call fastcc { i64, ptr } @_RINvNvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_end16small_probe_readINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5lJtbkSVYU0_6uu_yes(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #15, !noalias !139 ; 2 uses
  %i.ex = extractvalue { i64, ptr } %i.ew, 0
  %i.ey = extractvalue { i64, ptr } %i.ew, 1      ; 2 uses
  %i.ez = trunc nuw i64 %i.ex to i1
  br i1 %i.ez, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5lJtbkSVYU0_6uu_yes.exit.thread.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fa = icmp eq ptr %i.ey, null
  %.pre82.i.i = load i64, ptr %i.dx, align 8, !noalias !142 ; 3 uses
  br i1 %i.fa, label %bb.ah, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.ag
  %.pre83.i.i = load i64, ptr %i.h, align 8, !range !4, !alias.scope !145, !noalias !146
  br label %bb.ae

bb.ah:                                            ; preds = %bb.ag
  %i.fb = icmp sgt i64 %.pre82.i.i, -1
  call void @llvm.assume(i1 %i.fb)
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5lJtbkSVYU0_6uu_yes.exit.thread34.i

bb.ai:                                            ; preds = %bb.ae
  call void @llvm.experimental.noalias.scope.decl(metadata !147)
  call void @llvm.experimental.noalias.scope.decl(metadata !148)
  %i.fc = add nuw i64 %i.es, 32
  %i.fd = shl nuw i64 %i.es, 1
  %..i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.fc, i64 range(i64 0, -1) %i.fd) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !149
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs5lJtbkSVYU0_6uu_yes(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.e, i64 %i.es, ptr %.pre84.i.i, i64 noundef %..i.i.i.i.i, i64 noundef 1, i64 noundef 1) #15, !noalias !150
  %i.fe = load i64, ptr %i.e, align 8, !range !6, !noalias !149, !noundef !5
  %i.ff = trunc nuw i64 %i.fe to i1
  br i1 %i.ff, label %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs5lJtbkSVYU0_6uu_yes.exit.i.i, label %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs5lJtbkSVYU0_6uu_yes.exit.thread.i.i

_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs5lJtbkSVYU0_6uu_yes.exit.thread.i.i: ; preds = %bb.ai
  %i.fg = load ptr, ptr %i.eb, align 8, !noalias !149, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !149
  store ptr %i.fg, ptr %i.dw, align 8, !alias.scope !151, !noalias !146
  %i.fh = icmp sgt i64 %..i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.fh)
  store i64 %..i.i.i.i.i, ptr %i.h, align 8, !alias.scope !151, !noalias !146
  %.pre.i.i.i = sub nuw nsw i64 %..i.i.i.i.i, %i.es
  %i.fi = icmp samesign ugt i64 %.pre.i.i.i, 31
  call void @llvm.assume(i1 %i.fi)
  br label %bb.aj

_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs5lJtbkSVYU0_6uu_yes.exit.i.i: ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !149
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5lJtbkSVYU0_6uu_yes.exit.thread.i

bb.aj:                                            ; preds = %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs5lJtbkSVYU0_6uu_yes.exit.thread.i.i, %bb.ae
  %i.fj = phi i64 [ %i.es, %bb.ae ], [ %..i.i.i.i.i, %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs5lJtbkSVYU0_6uu_yes.exit.thread.i.i ] ; 2 uses
  %i.fk = phi ptr [ %.pre84.i.i, %bb.ae ], [ %i.fg, %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs5lJtbkSVYU0_6uu_yes.exit.thread.i.i ]
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.et
  %i.fm = sub nsw i64 %i.fj, %i.et                ; 2 uses
  %..i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.037.3.i.i, i64 %i.fm) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !152
  store ptr %i.fl, ptr %i.f, align 8, !noalias !152
  store i64 %..i.i.i, ptr %i.ec, align 8, !noalias !152
  store i64 0, ptr %i.ed, align 8, !noalias !152
  store i8 0, ptr %i.ee, align 8, !noalias !152
  %i.fn = load i64, ptr %i.dz, align 8, !alias.scope !153, !noalias !154, !noundef !5 ; 2 uses
  %i.fo = icmp eq i64 %i.fn, 0
  br i1 %i.fo, label %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5lJtbkSVYU0_6uu_yes.exit.thread.thread.i.i, label %.lr.ph.i.i

_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5lJtbkSVYU0_6uu_yes.exit.thread.thread.i.i: ; preds = %bb.aj
  store i64 %i.et, ptr %i.dx, align 8, !alias.scope !145, !noalias !146
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5lJtbkSVYU0_6uu_yes.exit.thread38.i

.lr.ph.i.i:                                       ; preds = %bb.aj, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5lJtbkSVYU0_6uu_yes.exit.i.i
  %i.fp = phi i64 [ %i.hj, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5lJtbkSVYU0_6uu_yes.exit.i.i ], [ %i.fn, %bb.aj ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %i.fq = load i64, ptr %i.ec, align 8, !alias.scope !156, !noalias !157, !noundef !5
  %i.fr = load i64, ptr %i.ed, align 8, !alias.scope !156, !noalias !157, !noundef !5 ; 4 uses
  %i.fs = sub i64 %i.fq, %i.fr                    ; 2 uses
  %i.ft = icmp ult i64 %i.fp, %i.fs
  br i1 %i.ft, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i
  %i.fu = call noundef ptr @_RNvXs4_NtNtCs2vKOLqTMYjT_3std2io4pipeRNtB5_10PipeReaderNtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f) #15, !noalias !158
  %i.fv = load i64, ptr %i.ed, align 8, !alias.scope !156, !noalias !157, !noundef !5 ; 2 uses
  %.neg.i.i.i = sub i64 %i.fr, %i.fv
  %i.fw = load i64, ptr %i.dz, align 8, !alias.scope !159, !noalias !160, !noundef !5
  %i.fx = add i64 %.neg.i.i.i, %i.fw
  store i64 %i.fx, ptr %i.dz, align 8, !alias.scope !159, !noalias !160
  br label %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5lJtbkSVYU0_6uu_yes.exit.i.i

bb.al:                                            ; preds = %.lr.ph.i.i
  %i.fy = load i8, ptr %i.ee, align 8, !range !161, !alias.scope !156, !noalias !157, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !162
  %i.fz = load ptr, ptr %i.f, align 8, !alias.scope !156, !noalias !157, !nonnull !5, !noundef !5
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.fr ; 2 uses
  %i.gb = trunc nuw i8 %i.fy to i1
  store ptr %i.ga, ptr %i.d, align 8, !noalias !162
  store i64 %i.fp, ptr %i.ef, align 8, !noalias !162
  store i64 0, ptr %i.eg, align 8, !noalias !162
  store i8 0, ptr %i.eh, align 8, !noalias !162
  br i1 %i.gb, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gc = call noundef ptr @_RNvXs4_NtNtCs2vKOLqTMYjT_3std2io4pipeRNtB5_10PipeReaderNtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d) #15, !noalias !163 ; 2 uses
  %i.gd = load i8, ptr %i.eh, align 8, !range !161, !noalias !162, !noundef !5
  %i.ge = trunc nuw i8 %i.gd to i1
  %i.gf = load i64, ptr %i.eg, align 8, !noalias !162, !noundef !5 ; 2 uses
  br i1 %i.ge, label %_RNvXsd_NtNtCs6JMX4GRUq9U_4core3mem12maybe_uninitSINtB5_11MaybeUninithEINtB5_8SpecFillhE9spec_fillCs5lJtbkSVYU0_6uu_yes.exit.i.i.i, label %bb.ao

bb.an:                                            ; preds = %bb.al
  store i8 1, ptr %i.eh, align 8, !noalias !162
  %i.gg = call noundef ptr @_RNvXs4_NtNtCs2vKOLqTMYjT_3std2io4pipeRNtB5_10PipeReaderNtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d) #15, !noalias !163
  %i.gh = load i64, ptr %i.eg, align 8, !noalias !162, !noundef !5
  br label %bb.ao

bb.ao:                                            ; preds = %_RNvXsd_NtNtCs6JMX4GRUq9U_4core3mem12maybe_uninitSINtB5_11MaybeUninithEINtB5_8SpecFillhE9spec_fillCs5lJtbkSVYU0_6uu_yes.exit.i.i.i, %bb.an, %bb.am
  %.sroa.09.0.i.i.i = phi i64 [ %i.gh, %bb.an ], [ %i.gf, %_RNvXsd_NtNtCs6JMX4GRUq9U_4core3mem12maybe_uninitSINtB5_11MaybeUninithEINtB5_8SpecFillhE9spec_fillCs5lJtbkSVYU0_6uu_yes.exit.i.i.i ], [ %i.gf, %bb.am ] ; 2 uses
  %.sroa.01.0.i.i.i = phi ptr [ %i.gg, %bb.an ], [ %i.gc, %_RNvXsd_NtNtCs6JMX4GRUq9U_4core3mem12maybe_uninitSINtB5_11MaybeUninithEINtB5_8SpecFillhE9spec_fillCs5lJtbkSVYU0_6uu_yes.exit.i.i.i ], [ %i.gc, %bb.am ]
  %i.gi = add i64 %.sroa.09.0.i.i.i, %i.fr        ; 2 uses
  store i64 %i.gi, ptr %i.ed, align 8, !alias.scope !156, !noalias !157
  %i.gj = load i64, ptr %i.dz, align 8, !alias.scope !159, !noalias !160, !noundef !5
  %i.gk = sub i64 %i.gj, %.sroa.09.0.i.i.i
  store i64 %i.gk, ptr %i.dz, align 8, !alias.scope !159, !noalias !160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !162
  br label %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5lJtbkSVYU0_6uu_yes.exit.i.i

_RNvXsd_NtNtCs6JMX4GRUq9U_4core3mem12maybe_uninitSINtB5_11MaybeUninithEINtB5_8SpecFillhE9spec_fillCs5lJtbkSVYU0_6uu_yes.exit.i.i.i: ; preds = %bb.am
  %i.gl = sub nuw i64 %i.fs, %i.fp
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.fp
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.gm, i8 0, i64 range(i64 0, -9223372036854775808) %i.gl, i1 false), !alias.scope !164, !noalias !165
  store i8 1, ptr %i.ee, align 8, !alias.scope !156, !noalias !157
  br label %bb.ao

_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5lJtbkSVYU0_6uu_yes.exit.i.i: ; preds = %bb.ao, %bb.ak
  %i.gn = phi i64 [ %i.fv, %bb.ak ], [ %i.gi, %bb.ao ]
  %.sroa.0.0.i48.i.i = phi ptr [ %i.fu, %bb.ak ], [ %.sroa.01.0.i.i.i, %bb.ao ] ; 7 uses
  %i.go = ptrtoint ptr %.sroa.0.0.i48.i.i to i64  ; 4 uses
  %.not45.i.i = icmp eq ptr %.sroa.0.0.i48.i.i, null
  br i1 %.not45.i.i, label %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5lJtbkSVYU0_6uu_yes.exit.thread.i.i, label %bb.ap

bb.ap:                                            ; preds = %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5lJtbkSVYU0_6uu_yes.exit.i.i
  %i.gp = and i64 %i.go, 3
  switch i64 %i.gp, label %default.unreachable [
    i64 2, label %.split.i.i
    i64 3, label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i
    i64 0, label %.split58.i.i
    i64 1, label %.split57.i.i
  ], !prof !8

.split.i.i:                                       ; preds = %bb.ap
  %i.gq = lshr i64 %i.go, 32
  %i.gr = trunc nuw i64 %i.gq to i32
  %i.gs = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #15, !noalias !158
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.gu = load ptr, ptr %i.gt, align 8, !noalias !158, !nonnull !5, !noundef !5
  %i.gv = call noundef zeroext i1 %i.gu(i32 noundef %i.gr) #15, !noalias !158, !inline_history !94
  br i1 %i.gv, label %.thread61.i.i, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5lJtbkSVYU0_6uu_yes.exit.i

.split58.i.i:                                     ; preds = %bb.ap
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i48.i.i, i64 16
  %i.gx = load i8, ptr %i.gw, align 8, !range !9, !noalias !158, !noundef !5
  %i.gy = icmp eq i8 %i.gx, 35
  br i1 %i.gy, label %.thread61.i.i, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5lJtbkSVYU0_6uu_yes.exit.i

.split57.i.i:                                     ; preds = %bb.ap
  %i.gz = getelementptr i8, ptr %.sroa.0.0.i48.i.i, i64 31
  %i.ha = load i8, ptr %i.gz, align 8, !range !9, !noalias !158, !noundef !5
  %i.hb = icmp eq i8 %i.ha, 35
  br i1 %i.hb, label %bb.ar, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5lJtbkSVYU0_6uu_yes.exit.i

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i: ; preds = %bb.ap
  %i.hc = lshr i64 %i.go, 32
  %i.hd = icmp ult ptr %.sroa.0.0.i48.i.i, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i.i.i = trunc i64 %i.hc to i8
  %spec.select.i.i.i.i.i = select i1 %i.hd, i8 %switch.idx.cast.i.i.i.i.i, i8 -1 ; 2 uses
  %i.he = icmp ne i8 %spec.select.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.he)
  %i.hf = icmp eq i8 %spec.select.i.i.i.i.i, 35
  br i1 %i.hf, label %bb.aq, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5lJtbkSVYU0_6uu_yes.exit.i

.thread61.i.i:                                    ; preds = %.split58.i.i, %.split.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !152
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5lJtbkSVYU0_6uu_yes.exit.i.i

bb.aq:                                            ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !152
  %i.hg = and i64 %i.go, 1095216660480
  %i.hh = icmp ne i64 %i.hg, 1095216660480
  call void @llvm.assume(i1 %i.hd)
  call void @llvm.assume(i1 %i.hh)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5lJtbkSVYU0_6uu_yes.exit.i.i

bb.ar:                                            ; preds = %.split57.i.i
  %i.hi = getelementptr i8, ptr %.sroa.0.0.i48.i.i, i64 -1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !152
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hi) ]
  store ptr %i.hi, ptr %i.ei, align 8, !alias.scope !166, !noalias !152
  store i8 3, ptr %i.c, align 8, !alias.scope !166, !noalias !152
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ei) #15, !noalias !158
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5lJtbkSVYU0_6uu_yes.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5lJtbkSVYU0_6uu_yes.exit.i.i: ; preds = %bb.ar, %bb.aq, %.thread61.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !152
  %i.hj = load i64, ptr %i.dz, align 8, !alias.scope !167, !noalias !168, !noundef !5 ; 2 uses
  %i.hk = icmp eq i64 %i.hj, 0
  br i1 %i.hk, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5lJtbkSVYU0_6uu_yes.exit._RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5lJtbkSVYU0_6uu_yes.exit.thread.loopexit_crit_edge.i.i, label %.lr.ph.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5lJtbkSVYU0_6uu_yes.exit._RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5lJtbkSVYU0_6uu_yes.exit.thread.loopexit_crit_edge.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5lJtbkSVYU0_6uu_yes.exit.i.i
  %.pre86.pre.i.i = load i64, ptr %i.ed, align 8, !noalias !152
  br label %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5lJtbkSVYU0_6uu_yes.exit.thread.i.i

_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5lJtbkSVYU0_6uu_yes.exit.thread.i.i: ; preds = %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5lJtbkSVYU0_6uu_yes.exit.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5lJtbkSVYU0_6uu_yes.exit._RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5lJtbkSVYU0_6uu_yes.exit.thread.loopexit_crit_edge.i.i
  %.pre86.i.i = phi i64 [ %.pre86.pre.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5lJtbkSVYU0_6uu_yes.exit._RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5lJtbkSVYU0_6uu_yes.exit.thread.loopexit_crit_edge.i.i ], [ %i.gn, %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5lJtbkSVYU0_6uu_yes.exit.i.i ] ; 3 uses
  %.pre87.i.i = load i8, ptr %i.ee, align 8, !range !161, !noalias !152
  %i.hl = add i64 %.pre86.i.i, %i.et              ; 3 uses
  store i64 %i.hl, ptr %i.dx, align 8, !alias.scope !145, !noalias !146
  %i.hm = icmp eq i64 %.pre86.i.i, 0
  br i1 %i.hm, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5lJtbkSVYU0_6uu_yes.exit.thread38.i, label %bb.at

bb.as:                                            ; preds = %bb.aw, %bb.av, %bb.au, %bb.at
  %.sroa.037.4.i.i = phi i64 [ -1, %bb.aw ], [ %i.hq, %bb.av ], [ %.sroa.037.3.i.i, %bb.au ], [ -1, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !152
  br label %bb.ad

bb.at:                                            ; preds = %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5lJtbkSVYU0_6uu_yes.exit.thread.i.i
  %i.hn = trunc nuw i8 %.pre87.i.i to i1
  br i1 %i.hn, label %bb.au, label %bb.as

bb.au:                                            ; preds = %bb.at
  %i.ho = icmp uge i64 %i.fm, %.sroa.037.3.i.i
  %i.hp = icmp eq i64 %.pre86.i.i, %..i.i.i
  %or.cond.i.i = and i1 %i.ho, %i.hp
  br i1 %or.cond.i.i, label %bb.av, label %bb.as

bb.av:                                            ; preds = %bb.au
  %i.hq = shl nuw i64 %.sroa.037.3.i.i, 1
  %i.hr = icmp slt i64 %.sroa.037.3.i.i, 0
  br i1 %i.hr, label %bb.aw, label %bb.as, !prof !7

bb.aw:                                            ; preds = %bb.av
  br label %bb.as

_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5lJtbkSVYU0_6uu_yes.exit.thread38.i: ; preds = %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5lJtbkSVYU0_6uu_yes.exit.thread.i.i, %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5lJtbkSVYU0_6uu_yes.exit.thread.thread.i.i
  %.pr95.i = phi i64 [ %i.et, %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5lJtbkSVYU0_6uu_yes.exit.thread.thread.i.i ], [ %i.hl, %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5lJtbkSVYU0_6uu_yes.exit.thread.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !152
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5lJtbkSVYU0_6uu_yes.exit.thread34.i

_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5lJtbkSVYU0_6uu_yes.exit.i: ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i, %.split57.i.i, %.split58.i.i, %.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !152
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5lJtbkSVYU0_6uu_yes.exit.thread.i

_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5lJtbkSVYU0_6uu_yes.exit.thread.i: ; preds = %bb.af, %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5lJtbkSVYU0_6uu_yes.exit.i, %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs5lJtbkSVYU0_6uu_yes.exit.i.i, %bb.ab
  %i.hs = phi ptr [ %.sroa.0.0.i48.i.i, %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5lJtbkSVYU0_6uu_yes.exit.i ], [ inttoptr (i64 163208757251 to ptr), %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs5lJtbkSVYU0_6uu_yes.exit.i.i ], [ %i.el, %bb.ab ], [ %i.ey, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !142
  br label %_RNvYINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawWriterRRNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned10BorrowedFdENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs5lJtbkSVYU0_6uu_yes.exit.i

_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5lJtbkSVYU0_6uu_yes.exit.thread34.i: ; preds = %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5lJtbkSVYU0_6uu_yes.exit.thread38.i, %bb.ah, %bb.ac
  %i.ht = phi i64 [ %.pre82.i.i, %bb.ah ], [ %.pr95.i, %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5lJtbkSVYU0_6uu_yes.exit.thread38.i ], [ %.pr.pre.i, %bb.ac ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !142
  %i.hu = icmp eq i64 %i.ht, 0
  br i1 %i.hu, label %_RNvYINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawWriterRRNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned10BorrowedFdENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs5lJtbkSVYU0_6uu_yes.exit.i, label %.lr.ph.i16.preheader.i

.lr.ph.i16.preheader.i:                           ; preds = %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5lJtbkSVYU0_6uu_yes.exit.thread34.i
  %i.hv = load ptr, ptr %i.dw, align 8, !noalias !142, !nonnull !5, !noundef !5
  br label %.lr.ph.i16.i

.lr.ph.i16.i:                                     ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5lJtbkSVYU0_6uu_yes.exit.i17.i, %.lr.ph.i16.preheader.i
  %.sroa.0.022.i.i = phi ptr [ %.sroa.0.113.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5lJtbkSVYU0_6uu_yes.exit.i17.i ], [ %i.hv, %.lr.ph.i16.preheader.i ] ; 3 uses
  %.sroa.6.021.i.i = phi i64 [ %.sroa.6.111.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5lJtbkSVYU0_6uu_yes.exit.i17.i ], [ %i.ht, %.lr.ph.i16.preheader.i ] ; 6 uses
  %i.hw = inttoptr i64 %.sroa.6.021.i.i to ptr
  %i.hx = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},~{memory}"(ptr nonnull inttoptr (i64 1 to ptr), ptr nonnull inttoptr (i64 1 to ptr), ptr nonnull readonly %.sroa.0.022.i.i, ptr nonnull %i.hw) #18, !noalias !169, !srcloc !126
  %i.hy = extractvalue { ptr, i32, i32 } %i.hx, 0 ; 4 uses
  %.not.i.i.i.i.i = icmp sgt ptr %i.hy, inttoptr (i64 -4096 to ptr)
  %i.hz = icmp slt ptr %i.hy, null
  %.sroa.0.0.i.i.i.i.i = and i1 %.not.i.i.i.i.i, %i.hz
  %i.ia = ptrtoint ptr %i.hy to i64               ; 5 uses
  br i1 %.sroa.0.0.i.i.i.i.i, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %.lr.ph.i16.i
  %i.ib = load atomic ptr, ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8, !noalias !170
  %.not.i.i.i.i = icmp eq ptr %i.ib, @1
  br i1 %.not.i.i.i.i, label %.split.i18.i, label %bb.ay, !prof !131

bb.ay:                                            ; preds = %bb.ax
  call void @_RNvNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #15, !noalias !139
  br label %.split.i18.i

.split.i18.i:                                     ; preds = %bb.ay, %bb.ax
  %.neg.i.i19.i = mul i64 %i.ia, -4294967296      ; 2 uses
  %i.ic = lshr exact i64 %.neg.i.i19.i, 32
  %i.id = trunc nuw i64 %i.ic to i32
  %i.ie = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #15, !noalias !139
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  %i.ig = load ptr, ptr %i.if, align 8, !noalias !139, !nonnull !5, !noundef !5
  %i.ih = call noundef zeroext i1 %i.ig(i32 noundef %i.id) #15, !noalias !139, !inline_history !105
  br i1 %i.ih, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5lJtbkSVYU0_6uu_yes.exit.i17.i, label %.split.loop.exit.i.i

bb.az:                                            ; preds = %.lr.ph.i16.i
  %i.ii = icmp eq ptr %i.hy, null
  br i1 %i.ii, label %_RNvYINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawWriterRRNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned10BorrowedFdENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs5lJtbkSVYU0_6uu_yes.exit.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ij = icmp ult i64 %.sroa.6.021.i.i, %i.ia
  br i1 %i.ij, label %bb.bb, label %bb.bc, !prof !7

bb.bb:                                            ; preds = %bb.ba
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %i.ia, i64 noundef %.sroa.6.021.i.i, i64 noundef %.sroa.6.021.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #17, !noalias !139
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.ik = sub nuw nsw i64 %.sroa.6.021.i.i, %i.ia
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i, i64 %i.ia
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5lJtbkSVYU0_6uu_yes.exit.i17.i

.split.loop.exit.i.i:                             ; preds = %.split.i18.i
  %i.im = or disjoint i64 %.neg.i.i19.i, 2
  %i.in = inttoptr i64 %i.im to ptr
  br label %_RNvYINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawWriterRRNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned10BorrowedFdENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs5lJtbkSVYU0_6uu_yes.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5lJtbkSVYU0_6uu_yes.exit.i17.i: ; preds = %bb.bc, %.split.i18.i
  %.sroa.0.113.i.i = phi ptr [ %i.il, %bb.bc ], [ %.sroa.0.022.i.i, %.split.i18.i ]
  %.sroa.6.111.i.i = phi i64 [ %i.ik, %bb.bc ], [ %.sroa.6.021.i.i, %.split.i18.i ] ; 2 uses
  %i.io = icmp eq i64 %.sroa.6.111.i.i, 0
  br i1 %i.io, label %_RNvYINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawWriterRRNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned10BorrowedFdENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs5lJtbkSVYU0_6uu_yes.exit.i, label %.lr.ph.i16.i

_RNvYINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawWriterRRNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned10BorrowedFdENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs5lJtbkSVYU0_6uu_yes.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5lJtbkSVYU0_6uu_yes.exit.i17.i, %bb.az, %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5lJtbkSVYU0_6uu_yes.exit.thread34.i, %.split.loop.exit.i.i, %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5lJtbkSVYU0_6uu_yes.exit.thread.i
  %.sroa.1181.0 = phi ptr [ %i.hs, %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5lJtbkSVYU0_6uu_yes.exit.thread.i ], [ undef, %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5lJtbkSVYU0_6uu_yes.exit.thread34.i ], [ %i.in, %.split.loop.exit.i.i ], [ @15, %bb.az ], [ @15, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5lJtbkSVYU0_6uu_yes.exit.i17.i ] ; 2 uses
  %.sroa.080.0 = phi i1 [ true, %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5lJtbkSVYU0_6uu_yes.exit.thread.i ], [ false, %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5lJtbkSVYU0_6uu_yes.exit.thread34.i ], [ true, %.split.loop.exit.i.i ], [ false, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5lJtbkSVYU0_6uu_yes.exit.i17.i ], [ true, %bb.az ]
  %.val.i46 = load i64, ptr %i.h, align 8, !range !4, !noalias !142, !noundef !5 ; 2 uses
  %i.ip = icmp eq i64 %.val.i46, 0
  br i1 %i.ip, label %_RINvNtNtCsh036I4OHgIr_6uucore8features5pipes10drain_pipeNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned10BorrowedFdECs5lJtbkSVYU0_6uu_yes.exit, label %bb.bd

bb.bd:                                            ; preds = %_RNvYINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawWriterRRNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned10BorrowedFdENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs5lJtbkSVYU0_6uu_yes.exit.i
  %.val13.i = load ptr, ptr %i.dw, align 8, !noalias !142, !nonnull !5, !noundef !5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13.i, i64 noundef %.val.i46, i64 noundef range(i64 1, -9223372036854775807) 1) #15, !noalias !139
  br label %_RINvNtNtCsh036I4OHgIr_6uucore8features5pipes10drain_pipeNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned10BorrowedFdECs5lJtbkSVYU0_6uu_yes.exit

_RINvNtNtCsh036I4OHgIr_6uucore8features5pipes10drain_pipeNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned10BorrowedFdECs5lJtbkSVYU0_6uu_yes.exit: ; preds = %_RNvYINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawWriterRRNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned10BorrowedFdENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs5lJtbkSVYU0_6uu_yes.exit.i, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !142
  br i1 %.sroa.080.0, label %bb.be, label %.thread101

bb.be:                                            ; preds = %_RINvNtNtCsh036I4OHgIr_6uucore8features5pipes10drain_pipeNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned10BorrowedFdECs5lJtbkSVYU0_6uu_yes.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1181.0) ]
  br label %bb.bi

.loopexit113:                                     ; preds = %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit.i, %bb.w
  %i.iq = call noundef i32 @_RNvXsy_NtNtNtCs2vKOLqTMYjT_3std2os2fd5ownedNtNtNtBb_2io4pipe10PipeReaderNtB5_4AsFd5as_fd(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.r) #15
  %i.ir = call noundef i32 @_RNvXsA_NtNtNtCs2vKOLqTMYjT_3std2os2fd5ownedNtNtNtBb_2io4pipe10PipeWriterNtB5_4AsFd5as_fd(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.o) #15
  %i.is = zext i32 %i.iq to i64
  %i.it = inttoptr i64 %i.is to ptr
  %i.iu = zext i32 %i.ir to i64
  %i.iv = inttoptr i64 %i.iu to ptr
  %i.iw = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},{r10},~{memory}"(ptr nonnull inttoptr (i64 276 to ptr), ptr %i.it, ptr %i.iv, ptr nonnull inttoptr (i64 1048576 to ptr), ptr null) #15, !noalias !171, !srcloc !138
  %i.ix = extractvalue { ptr, i32, i32 } %i.iw, 0 ; 3 uses
  %.not.i.i48150 = icmp sgt ptr %i.ix, inttoptr (i64 -4096 to ptr)
  %i.iy = icmp slt ptr %i.ix, null
  %.sroa.0.0.i.i49151 = and i1 %.not.i.i48150, %i.iy
  br i1 %.sroa.0.0.i.i49151, label %._crit_edge, label %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls3tee.exit51.preheader

.loopexit112:                                     ; preds = %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls3tee.exit51, %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls3tee.exit51.preheader
  %i.iz = call noundef i32 @_RNvXsy_NtNtNtCs2vKOLqTMYjT_3std2os2fd5ownedNtNtNtBb_2io4pipe10PipeReaderNtB5_4AsFd5as_fd(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.r) #15
  %i.ja = call noundef i32 @_RNvXsA_NtNtNtCs2vKOLqTMYjT_3std2os2fd5ownedNtNtNtBb_2io4pipe10PipeWriterNtB5_4AsFd5as_fd(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.o) #15
  %i.jb = zext i32 %i.iz to i64
  %i.jc = inttoptr i64 %i.jb to ptr
  %i.jd = zext i32 %i.ja to i64
  %i.je = inttoptr i64 %i.jd to ptr
  %i.jf = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},{r10},~{memory}"(ptr nonnull inttoptr (i64 276 to ptr), ptr %i.jc, ptr %i.je, ptr nonnull inttoptr (i64 1048576 to ptr), ptr null) #15, !noalias !171, !srcloc !138
  %i.jg = extractvalue { ptr, i32, i32 } %i.jf, 0 ; 3 uses
  %.not.i.i48 = icmp sgt ptr %i.jg, inttoptr (i64 -4096 to ptr)
  %i.jh = icmp slt ptr %i.jg, null
  %.sroa.0.0.i.i49 = and i1 %.not.i.i48, %i.jh
  br i1 %.sroa.0.0.i.i49, label %._crit_edge, label %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls3tee.exit51.preheader

_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls3tee.exit51.preheader: ; preds = %.loopexit113, %.loopexit112
  %.in = phi ptr [ %i.jg, %.loopexit112 ], [ %i.ix, %.loopexit113 ] ; 2 uses
  %.not148 = icmp eq ptr %.in, null
  br i1 %.not148, label %.loopexit112, label %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit.preheader

_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit.preheader: ; preds = %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls3tee.exit51.preheader
  %i.ji = ptrtoint ptr %.in to i64
  br label %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit

_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls3tee.exit51: ; preds = %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit
  %i.jj = sub i64 %.sroa.03.0149, %i.jq           ; 2 uses
  %.not = icmp eq i64 %i.jj, 0
  br i1 %.not, label %.loopexit112, label %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit

_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit: ; preds = %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit.preheader, %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls3tee.exit51
  %.sroa.03.0149 = phi i64 [ %i.jj, %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls3tee.exit51 ], [ %i.ji, %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit.preheader ] ; 2 uses
  %i.jk = call noundef i32 @_RNvXsy_NtNtNtCs2vKOLqTMYjT_3std2os2fd5ownedNtNtNtBb_2io4pipe10PipeReaderNtB5_4AsFd5as_fd(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.p) #15
  %i.jl = zext i32 %i.jk to i64
  %i.jm = inttoptr i64 %i.jl to ptr
  %i.jn = inttoptr i64 %.sroa.03.0149 to ptr
  %i.jo = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},{r10},{r8},{r9},~{memory}"(ptr nonnull inttoptr (i64 275 to ptr), ptr %i.jm, ptr null, ptr nonnull inttoptr (i64 1 to ptr), ptr null, ptr nonnull %i.jn, ptr null) #15, !noalias !172, !srcloc !141
  %i.jp = extractvalue { ptr, i32, i32 } %i.jo, 0 ; 3 uses
  %i.jq = ptrtoint ptr %i.jp to i64               ; 2 uses
end_hunk_1
begin_hunk_2_@_RNvCs5lJtbkSVYU0_6uu_yes6uu_app:_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command13help_templateNtNtB8_10styled_str9StyledStrECs5lJtbkSVYU0_6uu_yes.exit
  %.sroa.0.sroa.6.sroa.8.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 392
  store i64 -1, ptr %.sroa.0.sroa.6.sroa.8.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8, !alias.scope !256, !noalias !254
  %.sroa.0.sroa.6.sroa.10.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 416
  store i64 -1, ptr %.sroa.0.sroa.6.sroa.10.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8, !alias.scope !256, !noalias !254
  %.sroa.0.sroa.6.sroa.12.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 440
  store i64 -1, ptr %.sroa.0.sroa.6.sroa.12.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8, !alias.scope !256, !noalias !254
  %.sroa.4.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.f, i64 464
  store i64 %.sroa.0.0.copyload.i9, ptr %.sroa.4.0..sroa_idx19, align 8, !alias.scope !256, !noalias !254
  %.sroa.6.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.f, i64 472
  store ptr %.sroa.5.i8.sroa.0.0, ptr %.sroa.6.0..sroa_idx21, align 8, !alias.scope !256, !noalias !254
  %.sroa.8.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.f, i64 480
  store i64 %.sroa.5.i8.sroa.4.0, ptr %.sroa.8.0..sroa_idx23, align 8, !alias.scope !256, !noalias !254
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx23.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 488
  store i64 -1, ptr %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx23.sroa_idx, align 8, !alias.scope !256, !noalias !254
  %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx23.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 512
  store i64 -1, ptr %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx23.sroa_idx, align 8, !alias.scope !256, !noalias !254
  %.sroa.8.sroa.9.0..sroa.8.0..sroa_idx23.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 536
  store i64 %.sroa.0.0.copyload.i, ptr %.sroa.8.sroa.9.0..sroa.8.0..sroa_idx23.sroa_idx, align 8, !alias.scope !256, !noalias !254
  %.sroa.8.sroa.10.0..sroa.8.0..sroa_idx23.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 544
  store ptr %.sroa.5.i.sroa.0.0, ptr %.sroa.8.sroa.10.0..sroa.8.0..sroa_idx23.sroa_idx, align 8, !alias.scope !256, !noalias !254
  %.sroa.8.sroa.11.0..sroa.8.0..sroa_idx23.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 552
  store i64 %.sroa.5.i.sroa.4.0, ptr %.sroa.8.sroa.11.0..sroa.8.0..sroa_idx23.sroa_idx, align 8, !alias.scope !256, !noalias !254
  %.sroa.8.sroa.12.0..sroa.8.0..sroa_idx23.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 560
  store ptr @5, ptr %.sroa.8.sroa.12.0..sroa.8.0..sroa_idx23.sroa_idx, align 8, !alias.scope !256, !noalias !254
  %.sroa.8.sroa.13.0..sroa.8.0..sroa_idx23.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 568
  store i64 3, ptr %.sroa.8.sroa.13.0..sroa.8.0..sroa_idx23.sroa_idx, align 8, !alias.scope !256, !noalias !254
  %.sroa.8.sroa.14.0..sroa.8.0..sroa_idx23.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 576
  store ptr null, ptr %.sroa.8.sroa.14.0..sroa.8.0..sroa_idx23.sroa_idx, align 8, !alias.scope !256, !noalias !254
  %.sroa.8.sroa.16.0..sroa.8.0..sroa_idx23.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 592
  store ptr null, ptr %.sroa.8.sroa.16.0..sroa.8.0..sroa_idx23.sroa_idx, align 8, !alias.scope !256, !noalias !254
  %.sroa.8.sroa.18.0..sroa.8.0..sroa_idx23.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 608
  store ptr @6, ptr %.sroa.8.sroa.18.0..sroa.8.0..sroa_idx23.sroa_idx, align 8, !alias.scope !256, !noalias !254
  %.sroa.8.sroa.19.0..sroa.8.0..sroa_idx23.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 616
  store i64 25, ptr %.sroa.8.sroa.19.0..sroa.8.0..sroa_idx23.sroa_idx, align 8, !alias.scope !256, !noalias !254
  %.sroa.8.sroa.20.0..sroa.8.0..sroa_idx23.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 624
  store ptr null, ptr %.sroa.8.sroa.20.0..sroa.8.0..sroa_idx23.sroa_idx, align 8, !alias.scope !256, !noalias !254
  %.sroa.8.sroa.22.0..sroa.8.0..sroa_idx23.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 640
  store ptr null, ptr %.sroa.8.sroa.22.0..sroa.8.0..sroa_idx23.sroa_idx, align 8, !alias.scope !256, !noalias !254
  %.sroa.8.sroa.24.0..sroa.8.0..sroa_idx23.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 656
  store ptr null, ptr %.sroa.8.sroa.24.0..sroa.8.0..sroa_idx23.sroa_idx, align 8, !alias.scope !256, !noalias !254
  %.sroa.8.sroa.26.0..sroa.8.0..sroa_idx23.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 672
  store ptr null, ptr %.sroa.8.sroa.26.0..sroa.8.0..sroa_idx23.sroa_idx, align 8, !alias.scope !256, !noalias !254
  %.sroa.8.sroa.28.0..sroa.8.0..sroa_idx23.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 688
  store ptr null, ptr %.sroa.8.sroa.28.0..sroa.8.0..sroa_idx23.sroa_idx, align 8, !alias.scope !256, !noalias !254
  %.sroa.8.sroa.29.0..sroa.8.0..sroa_idx23.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 696
  store i32 -1, ptr %.sroa.8.sroa.29.0..sroa.8.0..sroa_idx23.sroa_idx, align 8, !alias.scope !256, !noalias !254
  %.sroa.8.sroa.30.0..sroa.8.0..sroa_idx23.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 700
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.sroa.8.sroa.30.0..sroa.8.0..sroa_idx23.sroa_idx, i8 0, i64 9, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !257
  %i.n = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 16, i64 noundef range(i64 1, 9) 8) #15, !noalias !257 ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.a, label %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg12value_parserNtNtB7_12value_parser11ValueParserECs5lJtbkSVYU0_6uu_yes.exit

bb.a:                                             ; preds = %_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command13help_templateNtNtB8_10styled_str9StyledStrECs5lJtbkSVYU0_6uu_yes.exit
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 16) #16, !noalias !258
  unreachable

_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg12value_parserNtNtB7_12value_parser11ValueParserECs5lJtbkSVYU0_6uu_yes.exit: ; preds = %_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command13help_templateNtNtB8_10styled_str9StyledStrECs5lJtbkSVYU0_6uu_yes.exit
  store ptr @10, ptr %i.n, align 8, !noalias !259
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 1, ptr %i.p, align 8, !noalias !260
  %.sroa.965.sroa.5.0..sroa.965.0..sroa_idx66.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.965.sroa.5.0..sroa.965.0..sroa_idx66.sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.965.sroa.7.0..sroa.965.0..sroa_idx66.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.965.sroa.7.0..sroa.965.0..sroa_idx66.sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.965.sroa.9.0..sroa.965.0..sroa_idx66.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.965.sroa.9.0..sroa.965.0..sroa_idx66.sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.965.sroa.11.0..sroa.965.0..sroa_idx66.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.965.sroa.11.0..sroa.965.0..sroa_idx66.sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.965.sroa.13.0..sroa.965.0..sroa_idx66.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.965.sroa.13.0..sroa.965.0..sroa_idx66.sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.965.sroa.15.0..sroa.965.0..sroa_idx66.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.965.sroa.15.0..sroa.965.0..sroa_idx66.sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.965.sroa.17.0..sroa.965.0..sroa_idx66.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.965.sroa.17.0..sroa.965.0..sroa_idx66.sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.965.sroa.22.0..sroa.965.0..sroa_idx66.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.965.sroa.22.0..sroa.965.0..sroa_idx66.sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.965.sroa.24.0..sroa.965.0..sroa_idx66.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.965.sroa.24.0..sroa.965.0..sroa_idx66.sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.965.sroa.32.0..sroa.965.0..sroa_idx66.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.965.sroa.32.0..sroa.965.0..sroa_idx66.sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.965.sroa.37.0..sroa.965.0..sroa_idx66.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 456
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.965.sroa.37.0..sroa.965.0..sroa_idx66.sroa_idx, i8 0, i64 16, i1 false)
  store i64 0, ptr %i.a, align 8, !alias.scope !261, !noalias !262
  %.sroa.056.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.056.sroa.5.0..sroa_idx, align 8, !alias.scope !261, !noalias !262
  %.sroa.056.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.056.sroa.7.0..sroa_idx, align 8, !alias.scope !261, !noalias !262
  %.sroa.056.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 0, ptr %.sroa.056.sroa.9.0..sroa_idx, align 8, !alias.scope !261, !noalias !262
  %.sroa.457.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 2, ptr %.sroa.457.0..sroa_idx58, align 8, !alias.scope !261, !noalias !262
  %.sroa.965.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 0, ptr %.sroa.965.0..sroa_idx66, align 8, !alias.scope !261, !noalias !262
  %.sroa.965.sroa.4.0..sroa.965.0..sroa_idx66.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.965.sroa.4.0..sroa.965.0..sroa_idx66.sroa_idx, align 8, !alias.scope !261, !noalias !262
  %.sroa.965.sroa.6.0..sroa.965.0..sroa_idx66.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.965.sroa.6.0..sroa.965.0..sroa_idx66.sroa_idx, align 8, !alias.scope !261, !noalias !262
  %.sroa.965.sroa.8.0..sroa.965.0..sroa_idx66.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.965.sroa.8.0..sroa.965.0..sroa_idx66.sroa_idx, align 8, !alias.scope !261, !noalias !262
  %.sroa.965.sroa.10.0..sroa.965.0..sroa_idx66.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.965.sroa.10.0..sroa.965.0..sroa_idx66.sroa_idx, align 8, !alias.scope !261, !noalias !262
  %.sroa.965.sroa.12.0..sroa.965.0..sroa_idx66.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.965.sroa.12.0..sroa.965.0..sroa_idx66.sroa_idx, align 8, !alias.scope !261, !noalias !262
  %.sroa.965.sroa.14.0..sroa.965.0..sroa_idx66.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.965.sroa.14.0..sroa.965.0..sroa_idx66.sroa_idx, align 8, !alias.scope !261, !noalias !262
  %.sroa.965.sroa.16.0..sroa.965.0..sroa_idx66.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.965.sroa.16.0..sroa.965.0..sroa_idx66.sroa_idx, align 8, !alias.scope !261, !noalias !262
  %.sroa.965.sroa.18.0..sroa.965.0..sroa_idx66.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.965.sroa.18.0..sroa.965.0..sroa_idx66.sroa_idx, align 8, !alias.scope !261, !noalias !262
  %.sroa.965.sroa.19.0..sroa.965.0..sroa_idx66.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %.sroa.965.sroa.21.0..sroa.965.0..sroa_idx66.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.965.sroa.19.0..sroa.965.0..sroa_idx66.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.965.sroa.21.0..sroa.965.0..sroa_idx66.sroa_idx, align 8, !alias.scope !261, !noalias !262
  %.sroa.965.sroa.23.0..sroa.965.0..sroa_idx66.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.965.sroa.23.0..sroa.965.0..sroa_idx66.sroa_idx, align 8, !alias.scope !261, !noalias !262
  %.sroa.965.sroa.25.0..sroa.965.0..sroa_idx66.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.965.sroa.25.0..sroa.965.0..sroa_idx66.sroa_idx, align 8, !alias.scope !261, !noalias !262
  %.sroa.965.sroa.26.0..sroa.965.0..sroa_idx66.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 360
  store i64 0, ptr %.sroa.965.sroa.26.0..sroa.965.0..sroa_idx66.sroa_idx, align 8, !alias.scope !261, !noalias !262
  %.sroa.965.sroa.27.0..sroa.965.0..sroa_idx66.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  store i64 1, ptr %.sroa.965.sroa.27.0..sroa.965.0..sroa_idx66.sroa_idx, align 8, !alias.scope !261, !noalias !262
  %.sroa.965.sroa.28.0..sroa.965.0..sroa_idx66.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  store ptr %i.n, ptr %.sroa.965.sroa.28.0..sroa.965.0..sroa_idx66.sroa_idx, align 8, !alias.scope !261, !noalias !262
  %.sroa.965.sroa.29.0..sroa.965.0..sroa_idx66.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  store i64 1, ptr %.sroa.965.sroa.29.0..sroa.965.0..sroa_idx66.sroa_idx, align 8, !alias.scope !261, !noalias !262
  %.sroa.965.sroa.30.0..sroa.965.0..sroa_idx66.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 392
  store i64 0, ptr %.sroa.965.sroa.30.0..sroa.965.0..sroa_idx66.sroa_idx, align 8, !alias.scope !261, !noalias !262
  %.sroa.965.sroa.31.0..sroa.965.0..sroa_idx66.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.965.sroa.31.0..sroa.965.0..sroa_idx66.sroa_idx, align 8, !alias.scope !261, !noalias !262
  %.sroa.965.sroa.33.0..sroa.965.0..sroa_idx66.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 424
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.965.sroa.33.0..sroa.965.0..sroa_idx66.sroa_idx, align 8, !alias.scope !261, !noalias !262
  %.sroa.965.sroa.34.0..sroa.965.0..sroa_idx66.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  %.sroa.965.sroa.36.0..sroa.965.0..sroa_idx66.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.965.sroa.34.0..sroa.965.0..sroa_idx66.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.965.sroa.36.0..sroa.965.0..sroa_idx66.sroa_idx, align 8, !alias.scope !261, !noalias !262
  %.sroa.965.sroa.38.0..sroa.965.0..sroa_idx66.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 472
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.965.sroa.38.0..sroa.965.0..sroa_idx66.sroa_idx, align 8, !alias.scope !261, !noalias !262
  %.sroa.965.sroa.39.0..sroa.965.0..sroa_idx66.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  store i64 0, ptr %.sroa.965.sroa.39.0..sroa.965.0..sroa_idx66.sroa_idx, align 8, !alias.scope !261, !noalias !262
  %.sroa.965.sroa.40.0..sroa.965.0..sroa_idx66.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 488
  store i64 -1, ptr %.sroa.965.sroa.40.0..sroa.965.0..sroa_idx66.sroa_idx, align 8, !alias.scope !261, !noalias !262
  %.sroa.965.sroa.42.0..sroa.965.0..sroa_idx66.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  store i64 -1, ptr %.sroa.965.sroa.42.0..sroa.965.0..sroa_idx66.sroa_idx, align 8, !alias.scope !261, !noalias !262
  %.sroa.965.sroa.44.0..sroa.965.0..sroa_idx66.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 552
  store i64 -2, ptr %.sroa.965.sroa.44.0..sroa.965.0..sroa_idx66.sroa_idx, align 8, !alias.scope !261, !noalias !262
  %.sroa.965.sroa.46.0..sroa.965.0..sroa_idx66.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  store ptr @9, ptr %.sroa.965.sroa.46.0..sroa.965.0..sroa_idx66.sroa_idx, align 8, !alias.scope !261, !noalias !262
  %.sroa.965.sroa.47.0..sroa.965.0..sroa_idx66.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 584
  store i64 6, ptr %.sroa.965.sroa.47.0..sroa.965.0..sroa_idx66.sroa_idx, align 8, !alias.scope !261, !noalias !262
  %.sroa.965.sroa.48.0..sroa.965.0..sroa_idx66.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  store ptr null, ptr %.sroa.965.sroa.48.0..sroa.965.0..sroa_idx66.sroa_idx, align 8, !alias.scope !261, !noalias !262
  %.sroa.965.sroa.50.0..sroa.965.0..sroa_idx66.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  store ptr null, ptr %.sroa.965.sroa.50.0..sroa.965.0..sroa_idx66.sroa_idx, align 8, !alias.scope !261, !noalias !262
  %.sroa.965.sroa.52.0..sroa.965.0..sroa_idx66.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 624
  store i32 -1, ptr %.sroa.965.sroa.52.0..sroa.965.0..sroa_idx66.sroa_idx, align 8, !alias.scope !261, !noalias !262
  %.sroa.965.sroa.53.0..sroa.965.0..sroa_idx66.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 628
  store i32 -1, ptr %.sroa.965.sroa.53.0..sroa.965.0..sroa_idx66.sroa_idx, align 4, !alias.scope !261, !noalias !262
  %.sroa.965.sroa.54.0..sroa.965.0..sroa_idx66.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 632
  store i32 0, ptr %.sroa.965.sroa.54.0..sroa.965.0..sroa_idx66.sroa_idx, align 8, !alias.scope !261, !noalias !262
  %.sroa.965.sroa.55.0..sroa.965.0..sroa_idx66.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 636
  store i8 1, ptr %.sroa.965.sroa.55.0..sroa.965.0..sroa_idx66.sroa_idx, align 4
  call void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(640) %i.a) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef nonnull align 8 dereferenceable(712) %i.f, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 700 ; 2 uses
  %i.r = load <2 x i32>, ptr %i.q, align 4
  %i.s = or <2 x i32> %i.r, splat (i32 128)
  store <2 x i32> %i.s, ptr %i.q, align 4
  %.val = load i64, ptr %i.b, align 8, !range !4, !noundef !5 ; 2 uses
  %i.t = icmp eq i64 %.val, 0
  br i1 %i.t, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs5lJtbkSVYU0_6uu_yes.exit, label %bb.b

bb.b:                                             ; preds = %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg12value_parserNtNtB7_12value_parser11ValueParserECs5lJtbkSVYU0_6uu_yes.exit
  %.val1 = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #15
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs5lJtbkSVYU0_6uu_yes.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs5lJtbkSVYU0_6uu_yes.exit: ; preds = %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg12value_parserNtNtB7_12value_parser11ValueParserECs5lJtbkSVYU0_6uu_yes.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs5lJtbkSVYU0_6uu_yes(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 1, 17) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !10
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %4 = mul nuw i64 %3, %.0.val                    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.f = icmp uge i64 %i.b, %4
  tail call void @llvm.assume(i1 %i.f)
  %i.g = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %4, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #15
  br label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %i.b, 0
  br i1 %i.h, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.i = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15
  %i.j = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, 9) %2) #15
  br label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.g, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit ], [ %i.j, %bb.d ] ; 2 uses
  %i.k = icmp eq ptr %.pn8, null
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.l, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.m, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.n, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys2io5error4unix14is_interrupted(i32 noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i32 %0, 4
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i8 0, 44) i8 @_RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys2io5error4unix17decode_error_kind(i32 noundef %0) unnamed_addr #3 {
bb.a:
  %switch.tableidx = add i32 %0, -1               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 122
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys2io5error4unix17decode_error_kind, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.sroa.0.0 = phi i8 [ %switch.load, %switch.lookup ], [ 43, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYNCNvNvMNtNtCs2vKOLqTMYjT_3std2io5errorNtNtNtCs6JMX4GRUq9U_4core2io5error5Error17from_raw_os_error9FUNCTIONS0INtNtNtBK_3ops8function6FnOnceTlQNtNtBK_3fmt9FormatterEE9call_onceCs5lJtbkSVYU0_6uu_yes(i32 noundef %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !265
  call void @_RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys2io5error4unix12error_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i32 noundef %0) #15, !noalias !265
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noalias !265, !nonnull !5, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noalias !265, !noundef !5
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e) #15
  %.val.i = load i64, ptr %i.a, align 8, !range !4, !noalias !265, !noundef !5 ; 2 uses
  %i.g = icmp eq i64 %.val.i, 0
  br i1 %i.g, label %_RNCNvNvMNtNtCs2vKOLqTMYjT_3std2io5errorNtNtNtCs6JMX4GRUq9U_4core2io5error5Error17from_raw_os_error9FUNCTIONS0Cs5lJtbkSVYU0_6uu_yes.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #15
  br label %_RNCNvNvMNtNtCs2vKOLqTMYjT_3std2io5errorNtNtNtCs6JMX4GRUq9U_4core2io5error5Error17from_raw_os_error9FUNCTIONS0Cs5lJtbkSVYU0_6uu_yes.exit

_RNCNvNvMNtNtCs2vKOLqTMYjT_3std2io5errorNtNtNtCs6JMX4GRUq9U_4core2io5error5Error17from_raw_os_error9FUNCTIONS0Cs5lJtbkSVYU0_6uu_yes.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !265
  ret i1 %i.f
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #8

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, -1) i32 @_RNvXsy_NtNtNtCs2vKOLqTMYjT_3std2os2fd5ownedNtNtNtBb_2io4pipe10PipeReaderNtB5_4AsFd5as_fd(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #1

; Function Attrs: cold minsize noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #9

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtNtCs2vKOLqTMYjT_3std3sys4pipe4unix4pipe(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys2io5error4unix12error_string(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), i32 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals21capture_startup_state() unnamed_addr #1

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtNtCs6JMX4GRUq9U_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, -1) i32 @_RNvXsA_NtNtNtCs2vKOLqTMYjT_3std2os2fd5ownedNtNtNtBb_2io4pipe10PipeWriterNtB5_4AsFd5as_fd(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsh036I4OHgIr_6uucore23localized_help_template(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsh036I4OHgIr_6uucore12format_usage(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef align 8 dereferenceable(712), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(640)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #11

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsjSVV5GABoor_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #12

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #13

; Function Attrs: nounwind nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() unnamed_addr #1

; Function Attrs: cold nounwind nonlazybind uwtable
declare void @_RNvNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, ptr } @_RNvXs4_NtNtCs2vKOLqTMYjT_3std2io4pipeRNtB5_10PipeReaderNtNtNtCs7tKScEop1B6_5alloc2io4read4Read4read(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @_RNvXs4_NtNtCs2vKOLqTMYjT_3std2io4pipeRNtB5_10PipeReaderNtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @close(i32 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, ptr } @_RNvXs7_NtNtCs2vKOLqTMYjT_3std2io4pipeNtB5_10PipeWriterNtNtNtCs6JMX4GRUq9U_4core2io5write5Write5write(ptr noalias nofree noundef align 4 dereferenceable(4), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

attributes #0 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
end_hunk_2
