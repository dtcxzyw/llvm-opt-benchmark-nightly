Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/syn-rs/original/syn-2b0ecb81dd371323.syn.bc9ad91376fc82fa-cgu.14?download=true
inline.NumInlined: 606
inline.NumDeleted: 171
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor5group:bb.a
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
  br i1 %i.g, label %.preheader.a, label %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit.thread

bb.c:                                             ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.010, i64 20
  %i.i = load i8, ptr %i.h, align 4, !range !25, !noalias !1026, !noundef !9
  %i.j = icmp eq i8 %i.i, 3
  br i1 %i.j, label %.preheader.a, label %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit.thread

.preheader.a:                                     ; preds = %bb.c, %bb.b
  br label %bb.d

bb.d:                                             ; preds = %.preheader.a, %bb.d
  %.pn.i = phi ptr [ %.sroa.0.0.i, %bb.d ], [ %.sroa.0.010, %.preheader.a ]
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
  br i1 %i.s, label %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit.thread, label %3

_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit.thread: ; preds = %bb.b, %bb.c, %bb.f, %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit
  store i32 -1, ptr %0, align 8
  br label %bb.i

3:                                                ; preds = %bb.f
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 12
  %5 = load i8, ptr %4, align 4, !range !27, !noundef !9
  %6 = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 8
  %7 = load i32, ptr %6, align 4, !noundef !9
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %3
  %.pn = phi ptr [ %.sroa.0.1, %3 ], [ %.sroa.0.0, %bb.g ]
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.pn, i64 32 ; 4 uses
  %i.t = load i32, ptr %.sroa.0.0, align 8, !range !21, !noundef !9
  %i.u = icmp ne i32 %i.t, 5
  %i.v = icmp eq ptr %.sroa.0.0, %2
  %or.cond = or i1 %i.u, %i.v
  br i1 %or.cond, label %bb.h, label %bb.g

bb.h:                                             ; preds = %bb.g
  store i32 %i.r, ptr %0, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %7, ptr %.sroa.0.sroa.4.0..sroa_idx, align 4
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %5, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.0.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %2, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit.thread
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor7literal(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = load i32, ptr %1, align 8, !range !21, !noundef !9 ; 3 uses
  %i.c = icmp samesign ult i32 %i.b, 2
  br i1 %i.c, label %.lr.ph.i, label %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.e
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.i, %bb.e ], [ %1, %bb.a ] ; 3 uses
  %i.d = phi i32 [ %i.l, %bb.e ], [ %i.b, %bb.a ]
  %i.e = trunc nuw i32 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16
  %i.g = load i8, ptr %i.f, align 8, !range !25, !noalias !1032, !noundef !9
  %i.h = icmp eq i8 %i.g, 3
  br i1 %i.h, label %.preheader, label %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit.thread

bb.c:                                             ; preds = %.lr.ph.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 20
  %i.j = load i8, ptr %i.i, align 4, !range !25, !noalias !1032, !noundef !9
  %i.k = icmp eq i8 %i.j, 3
  br i1 %i.k, label %.preheader, label %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit.thread

.preheader:                                       ; preds = %bb.c, %bb.b
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.d
  %.pn.i = phi ptr [ %.sroa.0.0.i, %bb.d ], [ %.sroa.0.0, %.preheader ]
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32 ; 5 uses
  %i.l = load i32, ptr %.sroa.0.0.i, align 8, !range !21, !noalias !1032, !noundef !9 ; 4 uses
  %i.m = icmp ne i32 %i.l, 5
  %i.n = icmp eq ptr %.sroa.0.0.i, %2
  %or.cond.i = or i1 %i.m, %i.n
  br i1 %or.cond.i, label %bb.e, label %bb.d

bb.e:                                             ; preds = %bb.d
  %i.o = icmp samesign ult i32 %i.l, 2
  br i1 %i.o, label %.lr.ph.i, label %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit

_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit: ; preds = %bb.e, %bb.a
  %i.p = phi i32 [ %i.b, %bb.a ], [ %i.l, %bb.e ]
  %.sroa.0.1 = phi ptr [ %1, %bb.a ], [ %.sroa.0.0.i, %bb.e ] ; 6 uses
  %i.q = icmp eq i32 %i.p, 4
  br i1 %i.q, label %bb.f, label %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit.thread

bb.f:                                             ; preds = %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !range !14, !noundef !9
  %.not = icmp eq i64 %i.s, -1
  br i1 %.not, label %bb.h, label %bb.g

_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit.thread: ; preds = %bb.b, %bb.c, %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit
  store i64 -2, ptr %0, align 8
  br label %bb.l

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r)
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = load <2 x i32>, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.48.sroa.5.0..sroa.48.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.48.sroa.5.0.copyload = load i32, ptr %.sroa.48.sroa.5.0..sroa.48.0..sroa_idx.sroa_idx, align 8
  %.sroa.48.sroa.6.0..sroa.48.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.sroa.48.sroa.6.0.copyload = load i8, ptr %.sroa.48.sroa.6.0..sroa.48.0..sroa_idx.sroa_idx, align 4
  %.sroa.48.sroa.7.0..sroa.48.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 21
  %.sroa.48.sroa.7.0.copyload = load i8, ptr %.sroa.48.sroa.7.0..sroa.48.0..sroa_idx.sroa_idx, align 1
  %.sroa.48.sroa.8.0..sroa.48.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  %.sroa.48.sroa.8.0.copyload = load i16, ptr %.sroa.48.sroa.8.0..sroa.48.0..sroa_idx.sroa_idx, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 28
  %i.w = load i8, ptr %i.v, align 4, !range !30, !alias.scope !1033, !noalias !1034, !noundef !9
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 29
  %i.y = load i8, ptr %i.x, align 1, !alias.scope !1033, !noalias !1034
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 24
  %i.aa = load i32, ptr %i.z, align 8, !alias.scope !1033, !noalias !1034, !noundef !9
  %i.ab = load <2 x i32>, ptr %i.u, align 8, !alias.scope !1033, !noalias !1034
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.54.sroa.8.0 = phi i8 [ %i.y, %bb.h ], [ %.sroa.48.sroa.7.0.copyload, %bb.g ]
  %.sroa.54.sroa.7.0 = phi i8 [ %i.w, %bb.h ], [ %.sroa.48.sroa.6.0.copyload, %bb.g ]
  %.sroa.54.sroa.6.0 = phi i32 [ %i.aa, %bb.h ], [ %.sroa.48.sroa.5.0.copyload, %bb.g ]
  %.sroa.54.sroa.9.0 = phi i16 [ undef, %bb.h ], [ %.sroa.48.sroa.8.0.copyload, %bb.g ]
  %.sroa.02.0 = phi i64 [ -1, %bb.h ], [ %.sroa.0.0.copyload, %bb.g ]
  %i.ac = phi <2 x i32> [ %i.ab, %bb.h ], [ %i.t, %bb.g ]
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.pn = phi ptr [ %.sroa.0.1, %bb.i ], [ %.sroa.09.0, %bb.j ]
  %.sroa.09.0 = getelementptr inbounds nuw i8, ptr %.pn, i64 32 ; 4 uses
  %i.ad = load i32, ptr %.sroa.09.0, align 8, !range !21, !noundef !9
  %i.ae = icmp ne i32 %i.ad, 5
  %i.af = icmp eq ptr %.sroa.09.0, %2
  %or.cond = or i1 %i.ae, %i.af
  br i1 %or.cond, label %bb.k, label %bb.j

bb.k:                                             ; preds = %bb.j
  store i64 %.sroa.02.0, ptr %0, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x i32> %i.ac, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.5.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.54.sroa.6.0, ptr %.sroa.0.sroa.4.sroa.5.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.6.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %.sroa.54.sroa.7.0, ptr %.sroa.0.sroa.4.sroa.6.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 4
  %.sroa.0.sroa.4.sroa.7.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %.sroa.54.sroa.8.0, ptr %.sroa.0.sroa.4.sroa.7.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 1
  %.sroa.0.sroa.4.sroa.8.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 %.sroa.54.sroa.9.0, ptr %.sroa.0.sroa.4.sroa.8.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 2
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.09.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit.thread
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor8lifetime(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %1, align 8, !range !21, !noundef !9 ; 3 uses
  %i.b = icmp samesign ult i32 %i.a, 2
  br i1 %i.b, label %.lr.ph.i, label %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.e
  %.sroa.018.0 = phi ptr [ %.sroa.0.0.i, %bb.e ], [ %1, %bb.a ] ; 3 uses
  %i.c = phi i32 [ %i.k, %bb.e ], [ %i.a, %bb.a ]
  %i.d = trunc nuw i32 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.018.0, i64 16
  %i.f = load i8, ptr %i.e, align 8, !range !25, !noalias !1044, !noundef !9
  %i.g = icmp eq i8 %i.f, 3
  br i1 %i.g, label %.preheader46, label %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit.thread

bb.c:                                             ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.018.0, i64 20
  %i.i = load i8, ptr %i.h, align 4, !range !25, !noalias !1044, !noundef !9
  %i.j = icmp eq i8 %i.i, 3
  br i1 %i.j, label %.preheader46, label %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit.thread

.preheader46:                                     ; preds = %bb.c, %bb.b
  br label %bb.d

bb.d:                                             ; preds = %.preheader46, %bb.d
  %.pn.i = phi ptr [ %.sroa.0.0.i, %bb.d ], [ %.sroa.018.0, %.preheader46 ]
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32 ; 5 uses
  %i.k = load i32, ptr %.sroa.0.0.i, align 8, !range !21, !noalias !1044, !noundef !9 ; 4 uses
  %i.l = icmp ne i32 %i.k, 5
  %i.m = icmp eq ptr %.sroa.0.0.i, %2
  %or.cond.i = or i1 %i.l, %i.m
  br i1 %or.cond.i, label %bb.e, label %bb.d

bb.e:                                             ; preds = %bb.d
  %i.n = icmp samesign ult i32 %i.k, 2
  br i1 %i.n, label %.lr.ph.i, label %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit

_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit: ; preds = %bb.e, %bb.a
  %i.o = phi i32 [ %i.a, %bb.a ], [ %i.k, %bb.e ]
  %.sroa.018.1 = phi ptr [ %1, %bb.a ], [ %.sroa.0.0.i, %bb.e ] ; 4 uses
  %i.p = icmp eq i32 %i.o, 3
  br i1 %i.p, label %bb.f, label %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit.thread

bb.f:                                             ; preds = %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.018.1, i64 4
  %i.r = load i32, ptr %i.q, align 4, !range !26, !noundef !9
  %i.s = icmp eq i32 %i.r, 39
  br i1 %i.s, label %bb.g, label %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit.thread

_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit.thread: ; preds = %bb.b, %bb.c, %bb.f, %bb.g, %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 -1, ptr %i.t, align 8
  br label %bb.r

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.018.1, i64 12
  %i.v = load i8, ptr %i.u, align 4, !range !27, !noundef !9
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %.preheader, label %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit.thread

end_hunk_0
