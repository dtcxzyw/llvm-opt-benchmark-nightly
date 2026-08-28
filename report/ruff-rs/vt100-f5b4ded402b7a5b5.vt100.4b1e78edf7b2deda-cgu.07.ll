Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/vt100-f5b4ded402b7a5b5.vt100.4b1e78edf7b2deda-cgu.07?download=true
inline.NumInlined: 10
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str5errorNtB5_9Utf8ErrorNtNtB9_3fmt5Debug3fmt }>, align 8
@1 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@2 = private unnamed_addr constant [94 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/vt100-0.16.2/src/cell.rs\00", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"]\00\00\00\00\00\00\00Z\00\00\00;\00\00\00" }>, align 8
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"]\00\00\00\00\00\00\00Z\00\00\00+\00\00\00" }>, align 8
@_RNvNtCsly1OcjGFjsJ_13unicode_width6tables10WIDTH_ROOT = external local_unnamed_addr global { [256 x i8] }
@5 = private unnamed_addr constant [103 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/unicode-width-0.2.2/src/tables.rs\00", align 1
@_RNvNtCsly1OcjGFjsJ_13unicode_width6tables12WIDTH_MIDDLE = external local_unnamed_addr global { [20 x [64 x i8]] }
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"f\00\00\00\00\00\00\00\B8\00\00\00\15\00\00\00" }>, align 8
@_RNvNtCsly1OcjGFjsJ_13unicode_width6tables12WIDTH_LEAVES = external local_unnamed_addr global { [186 x [32 x i8]] }
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"f\00\00\00\00\00\00\00\BE\00\00\00\19\00\00\00" }>, align 8
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"]\00\00\00\00\00\00\00\1C\00\00\00\16\00\00\00" }>, align 8
@9 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt }>, align 8
@10 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtB8_6option6OptionhENtB6_5Debug3fmtCs6rR7J0NOYM8_5vt100 }>, align 8
@11 = private unnamed_addr constant [9 x i8] c"Utf8Error", align 1
@12 = private unnamed_addr constant [11 x i8] c"valid_up_to", align 1
@13 = private unnamed_addr constant [9 x i8] c"error_len", align 1

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs6rR7J0NOYM8_5vt1004cell4CellEEB1b_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs6rR7J0NOYM8_5vt1004cell4CellENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs6rR7J0NOYM8_5vt1004cell4CellENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCs6rR7J0NOYM8_5vt1004cell4CellEEB1i_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs6rR7J0NOYM8_5vt1004cell4CellENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #12
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCs6rR7J0NOYM8_5vt1004cell4CellEEB1i_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_elemNtNtCs6rR7J0NOYM8_5vt1004cell4CellNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalEBO_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 1 captures(none) dead_on_return dereferenceable(32) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 1                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6rR7J0NOYM8_5vt100(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 32)
  %i.d = load i64, ptr %i.a, align 8, !range !3, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !5, !noundef !4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6rR7J0NOYM8_5vt100.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #13
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6rR7J0NOYM8_5vt100.exit: ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %i.k = icmp ule i64 %2, %i.g
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.g, ptr %i.c, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.b, ptr noundef nonnull align 1 dereferenceable(32) %1, i64 32, i1 false)
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs6rR7J0NOYM8_5vt1004cell4CellE11extend_withBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.b)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6rR7J0NOYM8_5vt100.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs6rR7J0NOYM8_5vt1004cell4CellEEB1b_(ptr noalias noundef align 8 dereferenceable(24) %i.c) #14
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6rR7J0NOYM8_5vt100.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #12
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.n
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCs6rR7J0NOYM8_5vt1004cellNtB4_4Cell3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 1 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9
  tail call void @_RNvXsF_NtCs4NRVxsYgnAr_4core5arrayAhj16_NtNtB7_7default7Default7defaultCs6rR7J0NOYM8_5vt100(ptr noalias noundef nonnull sret([22 x i8]) align 1 captures(none) dereferenceable(22) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 0, ptr %i.b, align 1
  store i64 0, ptr %0, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCs6rR7J0NOYM8_5vt1004cellNtB4_4Cell3set(ptr noalias nofree noundef writeonly captures(none) dereferenceable(32) initializes((9, 10), (31, 32)) %0, i32 noundef range(i32 0, 1114112) %1, ptr noalias noundef readonly align 1 captures(none) dead_on_return dereferenceable(9) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 31 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 3 uses
  %i.c = icmp samesign ult i32 %1, 128
  br i1 %i.c, label %_RNvMs_NtCs6rR7J0NOYM8_5vt1004cellNtB4_4Cell11append_char.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ult i32 %1, 2048
  %i.e = trunc i32 %1 to i8                       ; 2 uses
  %i.f = and i8 %i.e, 63
  %i.g = or disjoint i8 %i.f, -128                ; 3 uses
  %i.h = lshr i32 %1, 6
  %i.i = trunc i32 %i.h to i8                     ; 2 uses
  %i.j = and i8 %i.i, 63
  %i.k = or disjoint i8 %i.j, -128                ; 2 uses
  %i.l = lshr i32 %1, 12
  %i.m = trunc i32 %i.l to i8                     ; 2 uses
  %i.n = and i8 %i.m, 63
  %i.o = or disjoint i8 %i.n, -128
  %i.p = lshr i32 %1, 18
  %i.q = trunc nuw nsw i32 %i.p to i8
  %i.r = or disjoint i8 %i.q, -16
  br i1 %i.d, label %_RNvMs_NtCs6rR7J0NOYM8_5vt1004cellNtB4_4Cell11append_char.exit, label %bb.c

_RNvMs_NtCs6rR7J0NOYM8_5vt1004cellNtB4_4Cell11append_char.exit.thread: ; preds = %bb.a
  %i.s = trunc nuw nsw i32 %1 to i8
  store i8 %i.s, ptr %i.b, align 1, !alias.scope !7
  br label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.t = icmp samesign ult i32 %1, 65536
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = or disjoint i8 %i.m, -32
  br label %_RNvMs_NtCs6rR7J0NOYM8_5vt1004cellNtB4_4Cell11append_char.exit.thread17

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.g, ptr %i.v, align 1, !alias.scope !7
  br label %_RNvMs_NtCs6rR7J0NOYM8_5vt1004cellNtB4_4Cell11append_char.exit.thread17

_RNvMs_NtCs6rR7J0NOYM8_5vt1004cellNtB4_4Cell11append_char.exit.thread17: ; preds = %bb.d, %bb.e
  %..i = phi i8 [ 3, %bb.d ], [ 4, %bb.e ]        ; 2 uses
  %.sink6.i = phi i8 [ %i.u, %bb.d ], [ %i.r, %bb.e ]
  %.sink5.i = phi i8 [ %i.k, %bb.d ], [ %i.o, %bb.e ]
  %.sink.i = phi i8 [ %i.g, %bb.d ], [ %i.k, %bb.e ]
  store i8 %.sink6.i, ptr %i.b, align 1, !alias.scope !7
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %.sink5.i, ptr %i.w, align 1, !alias.scope !7
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %.sink.i, ptr %i.x, align 1, !alias.scope !7
  store i8 %..i, ptr %i.a, align 1, !alias.scope !12
  br label %bb.f

_RNvMs_NtCs6rR7J0NOYM8_5vt1004cellNtB4_4Cell11append_char.exit: ; preds = %bb.b
  %i.y = or disjoint i8 %i.i, -64
  store i8 %i.y, ptr %i.b, align 1, !alias.scope !7
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.g, ptr %i.z, align 1, !alias.scope !7
  store i8 2, ptr %i.a, align 1, !alias.scope !12
  %i.aa = icmp samesign ugt i32 %1, 159
  br i1 %i.aa, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_RNvMs_NtCs6rR7J0NOYM8_5vt1004cellNtB4_4Cell11append_char.exit.thread17, %_RNvMs_NtCs6rR7J0NOYM8_5vt1004cellNtB4_4Cell11append_char.exit
  %.sroa.01.0.i19 = phi i8 [ %..i, %_RNvMs_NtCs6rR7J0NOYM8_5vt1004cellNtB4_4Cell11append_char.exit.thread17 ], [ 2, %_RNvMs_NtCs6rR7J0NOYM8_5vt1004cellNtB4_4Cell11append_char.exit ] ; 11 uses
  %i.ab = zext nneg i32 %1 to i64                 ; 3 uses
  %i.ac = lshr i64 %i.ab, 13
  %i.ad = getelementptr inbounds nuw i8, ptr @_RNvNtCsly1OcjGFjsJ_13unicode_width6tables10WIDTH_ROOT, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !noundef !4 ; 2 uses
  %i.af = zext i8 %i.ae to i64                    ; 2 uses
  %i.ag = icmp ult i8 %i.ae, 20
  br i1 %i.ag, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.af, i64 noundef 20, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #13
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ah = lshr i64 %i.ab, 7
  %i.ai = and i64 %i.ah, 63
  %i.aj = getelementptr inbounds nuw [64 x i8], ptr @_RNvNtCsly1OcjGFjsJ_13unicode_width6tables12WIDTH_MIDDLE, i64 %i.af
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ai
  %i.al = load i8, ptr %i.ak, align 1, !noundef !4 ; 2 uses
  %i.am = zext i8 %i.al to i64                    ; 2 uses
  %i.an = icmp ult i8 %i.al, -70
  br i1 %i.an, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.am, i64 noundef 186, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #13
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ao = lshr i64 %i.ab, 2
  %i.ap = and i64 %i.ao, 31
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr @_RNvNtCsly1OcjGFjsJ_13unicode_width6tables12WIDTH_LEAVES, i64 %i.am
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  %i.as = load i8, ptr %i.ar, align 1, !noundef !4
  %i.at = shl i8 %i.e, 1
  %i.au = and i8 %i.at, 6
  %i.av = lshr i8 %i.as, %i.au
  %i.aw = and i8 %i.av, 3                         ; 2 uses
  %.not.i = icmp eq i8 %i.aw, 3
  br i1 %.not.i, label %bb.k, label %_RNvNtCsly1OcjGFjsJ_13unicode_width6tables12lookup_width.exit

bb.k:                                             ; preds = %bb.j
  switch i32 %1, label %bb.l [
    i32 93544, label %.critedge
    i32 1500, label %.critedge
    i32 6104, label %_RNvNtCsly1OcjGFjsJ_13unicode_width6tables12lookup_width.exit.thread9
    i32 6672, label %.critedge
    i32 65025, label %.critedge
    i32 65038, label %.critedge
    i32 65039, label %.critedge
    i32 68611, label %.critedge
    i32 93543, label %.critedge
  ]

bb.l:                                             ; preds = %bb.k
  %i.ax = insertelement <4 x i32> poison, i32 %1, i64 0
  %i.ay = shufflevector <4 x i32> %i.ax, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.az = add nsw <4 x i32> %i.ay, <i32 -1570, i32 -6016, i32 -11569, i32 -127462>
  %i.ba = and i32 %1, 2097150
  %or.cond3.i = icmp eq i32 %i.ba, 42236
  %i.bb = icmp ult <4 x i32> %i.az, <i32 609, i32 48, i32 63, i32 26>
  %i.bc = bitcast <4 x i1> %i.bb to i4
  %i.bd = icmp ne i4 %i.bc, 0
  %op.rdx = or i1 %i.bd, %or.cond3.i
  br i1 %op.rdx, label %.critedge, label %_RNvNtCsly1OcjGFjsJ_13unicode_width6tables12lookup_width.exit.thread9

_RNvNtCsly1OcjGFjsJ_13unicode_width6tables12lookup_width.exit: ; preds = %bb.j
  %i.be = icmp samesign ugt i8 %i.aw, 1
  br i1 %i.be, label %_RNvNtCsly1OcjGFjsJ_13unicode_width6tables12lookup_width.exit.thread9, label %.critedge

_RNvNtCsly1OcjGFjsJ_13unicode_width6tables12lookup_width.exit.thread9: ; preds = %bb.l, %bb.k, %_RNvNtCsly1OcjGFjsJ_13unicode_width6tables12lookup_width.exit
  %i.bf = or i8 %.sroa.01.0.i19, -128
  br label %.critedge

.critedge:                                        ; preds = %_RNvNtCsly1OcjGFjsJ_13unicode_width6tables12lookup_width.exit, %_RNvMs_NtCs6rR7J0NOYM8_5vt1004cellNtB4_4Cell11append_char.exit, %_RNvMs_NtCs6rR7J0NOYM8_5vt1004cellNtB4_4Cell11append_char.exit.thread, %bb.k, %bb.l, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %_RNvNtCsly1OcjGFjsJ_13unicode_width6tables12lookup_width.exit.thread9
  %storemerge = phi i8 [ %i.bf, %_RNvNtCsly1OcjGFjsJ_13unicode_width6tables12lookup_width.exit.thread9 ], [ 1, %_RNvMs_NtCs6rR7J0NOYM8_5vt1004cellNtB4_4Cell11append_char.exit.thread ], [ 2, %_RNvMs_NtCs6rR7J0NOYM8_5vt1004cellNtB4_4Cell11append_char.exit ], [ %.sroa.01.0.i19, %_RNvNtCsly1OcjGFjsJ_13unicode_width6tables12lookup_width.exit ], [ %.sroa.01.0.i19, %bb.k ], [ %.sroa.01.0.i19, %bb.l ], [ %.sroa.01.0.i19, %bb.k ], [ %.sroa.01.0.i19, %bb.k ], [ %.sroa.01.0.i19, %bb.k ], [ %.sroa.01.0.i19, %bb.k ], [ %.sroa.01.0.i19, %bb.k ], [ %.sroa.01.0.i19, %bb.k ], [ %.sroa.01.0.i19, %bb.k ]
  store i8 %storemerge, ptr %i.a, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %0, ptr noundef nonnull align 1 dereferenceable(9) %2, i64 9, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs_NtCs6rR7J0NOYM8_5vt1004cellNtB4_4Cell6append(ptr noalias nofree noundef captures(none) dereferenceable(32) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 31 ; 4 uses
  %i.b = load i8, ptr %i.a, align 1, !noundef !4  ; 2 uses
  %i.c = and i8 %i.b, 31                          ; 3 uses
  %i.d = icmp samesign ugt i8 %i.c, 17
  br i1 %i.d, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i8 %i.c, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 32, ptr %i.f, align 1
  %i.g = or disjoint i8 %i.b, 1
  store i8 %i.g, ptr %i.a, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.pre-phi = phi i8 [ 1, %bb.c ], [ %i.c, %bb.b ]
  %i.h = zext nneg i8 %.pre-phi to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.h ; 7 uses
  %i.k = icmp samesign ult i32 %1, 128
  br i1 %i.k, label %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = icmp samesign ult i32 %1, 2048
  %i.m = trunc i32 %1 to i8
  %i.n = and i8 %i.m, 63
  %i.o = or disjoint i8 %i.n, -128                ; 3 uses
  %i.p = lshr i32 %1, 6
  %i.q = trunc i32 %i.p to i8                     ; 2 uses
  %i.r = and i8 %i.q, 63
  %i.s = or disjoint i8 %i.r, -128                ; 2 uses
  %i.t = lshr i32 %1, 12
  %i.u = trunc i32 %i.t to i8                     ; 2 uses
  %i.v = and i8 %i.u, 63
  %i.w = or disjoint i8 %i.v, -128
  %i.x = lshr i32 %1, 18
  %i.y = trunc nuw nsw i32 %i.x to i8
  %i.z = or disjoint i8 %i.y, -16
  br i1 %i.l, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = icmp samesign ult i32 %1, 65536
end_hunk_0
