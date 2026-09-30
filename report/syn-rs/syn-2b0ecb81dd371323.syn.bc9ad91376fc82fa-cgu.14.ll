Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/syn-rs/original/syn-2b0ecb81dd371323.syn.bc9ad91376fc82fa-cgu.14?download=true
inline.NumInlined: 606
inline.NumDeleted: 171
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor15scope_delimiter:bb.a
bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = load i8, ptr %i.i, align 8, !range !25, !noundef !9
  br label %bb.f

switch.lookup:                                    ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.l = load i8, ptr %i.k, align 4, !range !25, !noundef !9
  br label %bb.f

bb.f:                                             ; preds = %switch.lookup, %bb.b, %bb.e
  %.sroa.0.0 = phi i8 [ %i.j, %bb.e ], [ 3, %bb.b ], [ %i.l, %switch.lookup ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define hidden void @_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor4skip(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !range !21, !noalias !1012, !noundef !9 ; 3 uses
  %i.b = icmp samesign ult i32 %i.a, 2
  br i1 %i.b, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a, %bb.e
  %.sroa.0.08 = phi ptr [ %.sroa.0.0.i, %bb.e ], [ %1, %bb.a ] ; 5 uses
  %i.c = phi i32 [ %i.k, %bb.e ], [ %i.a, %bb.a ]
  %i.d = trunc nuw i32 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.08, i64 16
  %i.f = load i8, ptr %i.e, align 8, !range !25, !noalias !1012, !noundef !9
  %i.g = icmp eq i8 %i.f, 3
  br i1 %i.g, label %.preheader, label %.thread

bb.c:                                             ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.08, i64 20
  %i.i = load i8, ptr %i.h, align 4, !range !25, !noalias !1012, !noundef !9
  %i.j = icmp eq i8 %i.i, 3
  br i1 %i.j, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.c, %bb.b
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.d
  %.pn.i = phi ptr [ %.sroa.0.0.i, %bb.d ], [ %.sroa.0.08, %.preheader ]
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32 ; 5 uses
  %i.k = load i32, ptr %.sroa.0.0.i, align 8, !range !21, !noalias !1012, !noundef !9 ; 4 uses
  %i.l = icmp ne i32 %i.k, 5
  %i.m = icmp eq ptr %.sroa.0.0.i, %2
  %or.cond.i = or i1 %i.l, %i.m
  br i1 %or.cond.i, label %bb.e, label %bb.d

bb.e:                                             ; preds = %bb.d
  %i.n = icmp samesign ult i32 %i.k, 2
  br i1 %i.n, label %.lr.ph.i, label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.a
  %.ph = phi i32 [ %i.a, %bb.a ], [ %i.k, %bb.e ]
  %.sroa.0.1.ph = phi ptr [ %1, %bb.a ], [ %.sroa.0.0.i, %bb.e ] ; 7 uses
  switch i32 %.ph, label %bb.g [
    i32 5, label %bb.j
    i32 3, label %bb.f
  ]

.thread:                                          ; preds = %bb.b, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.08, i64 24
  %i.p = load i64, ptr %i.o, align 8, !noundef !9
  br label %bb.g

bb.f:                                             ; preds = %.loopexit
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.1.ph, i64 4
  %i.r = load i32, ptr %i.q, align 4, !range !26, !noundef !9
  %i.s = icmp eq i32 %i.r, 39
  br i1 %i.s, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.i, %.loopexit, %bb.h, %bb.f, %.thread
  %.sroa.0.11317 = phi ptr [ %.sroa.0.1.ph, %.loopexit ], [ %.sroa.0.08, %.thread ], [ %.sroa.0.1.ph, %bb.i ], [ %.sroa.0.1.ph, %bb.f ], [ %.sroa.0.1.ph, %bb.h ]
  %.sroa.0.0 = phi i64 [ 1, %.loopexit ], [ %i.p, %.thread ], [ %., %bb.i ], [ 1, %bb.f ], [ 1, %bb.h ]
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.11317, i64 %.sroa.0.0
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.1.ph, i64 12
  %i.v = load i8, ptr %i.u, align 4, !range !27, !noundef !9
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.i, label %bb.g

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.1.ph, i64 32
  %i.y = load i32, ptr %i.x, align 8, !range !21, !noundef !9
  %i.z = icmp eq i32 %i.y, 2
  %. = select i1 %i.z, i64 2, i64 1
  br label %bb.g

bb.j:                                             ; preds = %.loopexit, %bb.l
  %storemerge = phi i64 [ 1, %bb.l ], [ 0, %.loopexit ]
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.k:                                             ; preds = %bb.k, %bb.g
  %.sroa.02.0 = phi ptr [ %i.t, %bb.g ], [ %i.ad, %bb.k ] ; 4 uses
  %i.aa = load i32, ptr %.sroa.02.0, align 8, !range !21, !noundef !9
  %i.ab = icmp ne i32 %i.aa, 5
  %i.ac = icmp eq ptr %.sroa.02.0, %2
  %or.cond = or i1 %i.ac, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 32
  br i1 %or.cond, label %bb.l, label %bb.k

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.02.0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.af, align 8
  br label %bb.j
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor4span(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !21, !noundef !9 ; 3 uses
  %i.b = icmp samesign ugt i32 %i.a, 1
  %i.c = zext nneg i32 %i.a to i64
  %i.d = add nsw i64 %i.c, -1
  %i.e = select i1 %i.b, i64 %i.d, i64 0
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = trunc i32 %i.a to i1
  br i1 %i.f, label %bb.i, label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i8, ptr %i.g, align 8, !range !10, !noundef !9
  %.not8 = icmp eq i8 %i.h, 2
  br i1 %.not8, label %bb.j, label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i32, ptr %i.i, align 8, !noundef !9
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !14, !noundef !9
  %.not = icmp eq i64 %i.l, -1
  br i1 %.not, label %bb.k, label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !9
  %i.o = getelementptr inbounds [32 x i8], ptr %0, i64 %i.n ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !range !21, !noundef !9 ; 2 uses
  %i.q = icmp samesign ult i32 %i.p, 2
  br i1 %i.q, label %bb.l, label %bb.m

bb.h:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.s = load i32, ptr %i.r, align 4, !range !29, !noundef !9
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %bb.l, %bb.k, %bb.f, %bb.j, %bb.d, %bb.h, %bb.c, %bb.m, %bb.e
  %.sroa.03.0 = phi i32 [ %i.y, %bb.m ], [ 0, %bb.c ], [ %i.j, %bb.e ], [ 0, %bb.d ], [ 0, %bb.f ], [ %i.s, %bb.h ], [ %i.u, %bb.j ], [ %i.w, %bb.k ], [ %i.aa, %bb.n ], [ 0, %bb.l ]
  ret i32 %.sroa.03.0

bb.j:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.u = load i32, ptr %i.t, align 4, !range !29, !noundef !9
  br label %bb.i

bb.k:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.w = load i32, ptr %i.v, align 4, !range !29, !noundef !9
  br label %bb.i

bb.l:                                             ; preds = %bb.g
  %i.x = trunc nuw i32 %i.p to i1
  br i1 %i.x, label %bb.i, label %bb.n

bb.m:                                             ; preds = %bb.g
  %i.y = tail call noundef i32 @_RNvMsi_Cs6et67aoV1xO_11proc_macro2NtB5_4Span9call_site()
  br label %bb.i

bb.n:                                             ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !range !29, !noundef !9
  br label %bb.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor5group(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef %1, ptr noundef %2, i8 noundef range(i8 0, 4) %3) unnamed_addr #3 {
bb.a:
  %.not = icmp eq i8 %3, 3
  %.pr.pre = load i32, ptr %1, align 8            ; 3 uses
  %i.a = icmp samesign ult i32 %.pr.pre, 2        ; 2 uses
  br i1 %.not, label %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit, label %bb.b

_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit: ; preds = %bb.a
  br i1 %i.a, label %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit.thread31, label %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit.thread

bb.b:                                             ; preds = %bb.a
  br i1 %i.a, label %.lr.ph.i, label %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit.thread

.lr.ph.i:                                         ; preds = %bb.b, %bb.f
  %.sroa.0.1 = phi ptr [ %.sroa.0.0.i, %bb.f ], [ %1, %bb.b ] ; 5 uses
  %i.b = phi i32 [ %i.j, %bb.f ], [ %.pr.pre, %bb.b ]
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 16
  %i.e = load i8, ptr %i.d, align 8, !range !25, !noalias !1015, !noundef !9
  %i.f = icmp eq i8 %i.e, 3
  br i1 %i.f, label %.preheader51, label %.thread

bb.d:                                             ; preds = %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 20
  %i.h = load i8, ptr %i.g, align 4, !range !25, !noalias !1015, !noundef !9
  %i.i = icmp eq i8 %i.h, 3
  br i1 %i.i, label %.preheader51, label %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit.thread31.thread43

.preheader51:                                     ; preds = %bb.d, %bb.c
  br label %bb.e

bb.e:                                             ; preds = %.preheader51, %bb.e
  %.pn.i = phi ptr [ %.sroa.0.0.i, %bb.e ], [ %.sroa.0.1, %.preheader51 ]
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32 ; 4 uses
  %i.j = load i32, ptr %.sroa.0.0.i, align 8, !range !21, !noalias !1015, !noundef !9 ; 3 uses
  %i.k = icmp ne i32 %i.j, 5
  %i.l = icmp eq ptr %.sroa.0.0.i, %2
  %or.cond.i = or i1 %i.k, %i.l
  br i1 %or.cond.i, label %bb.f, label %bb.e

bb.f:                                             ; preds = %bb.e
  %i.m = icmp samesign ult i32 %i.j, 2
  br i1 %i.m, label %.lr.ph.i, label %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit.thread

_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit.thread31: ; preds = %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit
  %i.n = trunc nuw i32 %.pr.pre to i1
  br i1 %i.n, label %.thread, label %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit.thread31.thread43

_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit.thread31.thread43: ; preds = %bb.d, %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit.thread31
  %.sroa.0.023.ph3546 = phi ptr [ %1, %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit.thread31 ], [ %.sroa.0.1, %bb.d ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.023.ph3546, i64 20
  %i.p = load i8, ptr %i.o, align 4, !range !25, !noundef !9
  %i.q = icmp eq i8 %i.p, %3
  br i1 %i.q, label %bb.g, label %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit.thread

.thread:                                          ; preds = %bb.c, %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit.thread31
  %.sroa.0.023.ph3542 = phi ptr [ %1, %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit.thread31 ], [ %.sroa.0.1, %bb.c ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.023.ph3542, i64 16
  %i.s = load i8, ptr %i.r, align 8, !range !25, !noundef !9
  %i.t = icmp eq i8 %i.s, %3
  br i1 %i.t, label %.thread25, label %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit.thread

bb.g:                                             ; preds = %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit.thread31.thread43
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.023.ph3546, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.023.ph3546, i64 12
  %i.w = load i32, ptr %i.v, align 4, !range !29, !noundef !9
  %i.x = load <2 x i32>, ptr %i.u, align 4
  br label %.thread25

.thread25:                                        ; preds = %.thread, %bb.g
  %.sroa.0.023.ph3541 = phi ptr [ %.sroa.0.023.ph3546, %bb.g ], [ %.sroa.0.023.ph3542, %.thread ] ; 3 uses
  %.sroa.014.0 = phi i32 [ %i.w, %bb.g ], [ 0, %.thread ]
  %i.y = phi <2 x i32> [ %i.x, %bb.g ], [ undef, %.thread ]
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.023.ph3541, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !noundef !9
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.023.ph3541, i64 %i.aa ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.thread25
  %.pn = phi ptr [ %.sroa.0.023.ph3541, %.thread25 ], [ %.sroa.08.0, %bb.h ]
  %.sroa.08.0 = getelementptr inbounds nuw i8, ptr %.pn, i64 32 ; 4 uses
  %i.ac = load i32, ptr %.sroa.08.0, align 8, !range !21, !noundef !9
  %i.ad = icmp ne i32 %i.ac, 5
  %i.ae = icmp eq ptr %.sroa.08.0, %i.ab
  %or.cond20 = select i1 %i.ad, i1 true, i1 %i.ae
  br i1 %or.cond20, label %.preheader, label %bb.h

.preheader:                                       ; preds = %bb.h, %.preheader
  %.sroa.02.0 = phi ptr [ %i.ai, %.preheader ], [ %i.ab, %bb.h ] ; 4 uses
  %i.af = load i32, ptr %.sroa.02.0, align 8, !range !21, !noundef !9
  %i.ag = icmp ne i32 %i.af, 5
  %i.ah = icmp eq ptr %.sroa.02.0, %2
  %or.cond = or i1 %i.ah, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 32
  br i1 %or.cond, label %bb.i, label %.preheader

bb.i:                                             ; preds = %.preheader
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.08.0, ptr %i.aj, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ab, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.014.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store <2 x i32> %i.y, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 4
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.02.0, ptr %.sroa.613.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %2, ptr %.sroa.7.0..sroa_idx, align 8
  br label %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit.thread

_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit.thread: ; preds = %bb.f, %bb.b, %.thread, %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit.thread31.thread43, %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit, %bb.i
  %storemerge = phi i64 [ 1, %bb.i ], [ 0, %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit ], [ 0, %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit.thread31.thread43 ], [ 0, %.thread ], [ 0, %bb.b ], [ 0, %bb.f ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor5ident(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %1, align 8, !range !21, !noundef !9 ; 3 uses
  %i.b = icmp samesign ult i32 %i.a, 2
  br i1 %i.b, label %.lr.ph.i, label %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.e
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.i, %bb.e ], [ %1, %bb.a ] ; 3 uses
  %i.c = phi i32 [ %i.k, %bb.e ], [ %i.a, %bb.a ]
  %i.d = trunc nuw i32 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16
  %i.f = load i8, ptr %i.e, align 8, !range !25, !noalias !1021, !noundef !9
  %i.g = icmp eq i8 %i.f, 3
  br i1 %i.g, label %.preheader, label %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit.thread

bb.c:                                             ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 20
  %i.i = load i8, ptr %i.h, align 4, !range !25, !noalias !1021, !noundef !9
  %i.j = icmp eq i8 %i.i, 3
  br i1 %i.j, label %.preheader, label %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit.thread

.preheader:                                       ; preds = %bb.c, %bb.b
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.d
  %.pn.i = phi ptr [ %.sroa.0.0.i, %bb.d ], [ %.sroa.0.0, %.preheader ]
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32 ; 5 uses
  %i.k = load i32, ptr %.sroa.0.0.i, align 8, !range !21, !noalias !1021, !noundef !9 ; 4 uses
  %i.l = icmp ne i32 %i.k, 5
  %i.m = icmp eq ptr %.sroa.0.0.i, %2
  %or.cond.i = or i1 %i.l, %i.m
  br i1 %or.cond.i, label %bb.e, label %bb.d

bb.e:                                             ; preds = %bb.d
  %i.n = icmp samesign ult i32 %i.k, 2
  br i1 %i.n, label %.lr.ph.i, label %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit

_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit: ; preds = %bb.e, %bb.a
  %i.o = phi i32 [ %i.a, %bb.a ], [ %i.k, %bb.e ]
  %.sroa.0.1 = phi ptr [ %1, %bb.a ], [ %.sroa.0.0.i, %bb.e ] ; 4 uses
  %i.p = icmp eq i32 %i.o, 2
  br i1 %i.p, label %bb.f, label %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit.thread

bb.f:                                             ; preds = %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 24 ; 2 uses
  %i.s = load i8, ptr %i.r, align 8, !range !10, !noundef !9
  %.not = icmp eq i8 %i.s, 2
  br i1 %.not, label %bb.h, label %bb.g

_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit.thread: ; preds = %bb.b, %bb.c, %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 -1, ptr %i.t, align 8
  br label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.u = tail call { ptr, i64 } @_RNvXsf_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.q) ; 2 uses
  %i.v = extractvalue { ptr, i64 } %i.u, 0
  %i.w = extractvalue { ptr, i64 } %i.u, 1
  %i.x = load i8, ptr %i.r, align 8, !range !27, !noundef !9
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %.val1.i = load i64, ptr %i.q, align 8, !alias.scope !1022, !noalias !1023
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 16
  %i.z = load i8, ptr %i.y, align 8, !range !27, !alias.scope !1022, !noalias !1023, !noundef !9
  %i.aa = inttoptr i64 %.val1.i to ptr
  %.sroa.02.sroa.5.0.insert.ext = zext nneg i8 %i.z to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.02.sroa.5.0 = phi i64 [ %i.w, %bb.g ], [ %.sroa.02.sroa.5.0.insert.ext, %bb.h ]
  %.sroa.02.sroa.0.0 = phi ptr [ %i.v, %bb.g ], [ %i.aa, %bb.h ]
  %.sroa.53.0 = phi i8 [ %i.x, %bb.g ], [ 2, %bb.h ]
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.pn = phi ptr [ %.sroa.0.1, %bb.i ], [ %.sroa.016.0, %bb.j ]
  %.sroa.016.0 = getelementptr inbounds nuw i8, ptr %.pn, i64 32 ; 4 uses
  %i.ab = load i32, ptr %.sroa.016.0, align 8, !range !21, !noundef !9
  %i.ac = icmp ne i32 %i.ab, 5
  %i.ad = icmp eq ptr %.sroa.016.0, %2
  %or.cond = or i1 %i.ac, %i.ad
  br i1 %or.cond, label %bb.k, label %bb.j

bb.k:                                             ; preds = %bb.j
  store ptr %.sroa.02.sroa.0.0, ptr %0, align 8
  %.sroa.0.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.02.sroa.5.0, ptr %.sroa.0.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.53.0, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.016.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit.thread
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor5punct(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !range !21, !noundef !9 ; 3 uses
  %i.b = icmp samesign ult i32 %i.a, 2
  br i1 %i.b, label %.lr.ph.i, label %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.e
  %.sroa.0.010 = phi ptr [ %.sroa.0.0.i, %bb.e ], [ %1, %bb.a ] ; 3 uses
  %i.c = phi i32 [ %i.k, %bb.e ], [ %i.a, %bb.a ]
  %i.d = trunc nuw i32 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.010, i64 16
  %i.f = load i8, ptr %i.e, align 8, !range !25, !noalias !1026, !noundef !9
  %i.g = icmp eq i8 %i.f, 3
  br i1 %i.g, label %.preheader, label %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit.thread

bb.c:                                             ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.010, i64 20
  %i.i = load i8, ptr %i.h, align 4, !range !25, !noalias !1026, !noundef !9
  %i.j = icmp eq i8 %i.i, 3
  br i1 %i.j, label %.preheader, label %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit.thread

.preheader:                                       ; preds = %bb.c, %bb.b
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.d
  %.pn.i = phi ptr [ %.sroa.0.0.i, %bb.d ], [ %.sroa.0.010, %.preheader ]
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32 ; 5 uses
  %i.k = load i32, ptr %.sroa.0.0.i, align 8, !range !21, !noalias !1026, !noundef !9 ; 4 uses
  %i.l = icmp ne i32 %i.k, 5
  %i.m = icmp eq ptr %.sroa.0.0.i, %2
  %or.cond.i = or i1 %i.l, %i.m
  br i1 %or.cond.i, label %bb.e, label %bb.d

bb.e:                                             ; preds = %bb.d
  %i.n = icmp samesign ult i32 %i.k, 2
  br i1 %i.n, label %.lr.ph.i, label %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit

_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit: ; preds = %bb.e, %bb.a
  %i.o = phi i32 [ %i.a, %bb.a ], [ %i.k, %bb.e ]
  %.sroa.0.1 = phi ptr [ %1, %bb.a ], [ %.sroa.0.0.i, %bb.e ] ; 4 uses
  %i.p = icmp eq i32 %i.o, 3
  br i1 %i.p, label %bb.f, label %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit.thread

bb.f:                                             ; preds = %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 4
  %i.r = load i32, ptr %i.q, align 4, !range !26, !noundef !9 ; 2 uses
  %i.s = icmp eq i32 %i.r, 39
  br i1 %i.s, label %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit.thread, label %bb.g

_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit.thread: ; preds = %bb.b, %bb.c, %bb.f, %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit
  store i32 -1, ptr %0, align 8
  br label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 12
  %i.u = load i8, ptr %i.t, align 4, !range !27, !noundef !9
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 8
  %i.w = load i32, ptr %i.v, align 4, !noundef !9
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.pn = phi ptr [ %.sroa.0.1, %bb.g ], [ %.sroa.0.0, %bb.h ]
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.pn, i64 32 ; 4 uses
  %i.x = load i32, ptr %.sroa.0.0, align 8, !range !21, !noundef !9
  %i.y = icmp ne i32 %i.x, 5
  %i.z = icmp eq ptr %.sroa.0.0, %2
  %or.cond = or i1 %i.y, %i.z
  br i1 %or.cond, label %bb.i, label %bb.h

bb.i:                                             ; preds = %bb.h
  store i32 %i.r, ptr %0, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.w, ptr %.sroa.0.sroa.4.0..sroa_idx, align 4
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.u, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.0.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %2, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit.thread
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor7literal(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
end_hunk_0
