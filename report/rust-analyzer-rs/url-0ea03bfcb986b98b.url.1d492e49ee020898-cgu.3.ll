Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/url-0ea03bfcb986b98b.url.1d492e49ee020898-cgu.3?download=true
inline.NumInlined: 86
inline.NumDeleted: 53
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMs_NtCs2vT3jxLudSK_3url4hostINtB4_4HostReE8to_owned:bb.a
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load i8, ptr %1, align 8, !range !15, !noundef !6
  switch i8 %i.b, label %default.unreachable5 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

default.unreachable5:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !6 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2vT3jxLudSK_3url(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.f, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.g = load i64, ptr %i.a, align 8, !range !9, !noundef !6
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !10, !noundef !6 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.h, label %bb.e, label %bb.f, !prof !11

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.sroa.0.0.copyload = load i32, ptr %i.l, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.0.0.copyload, ptr %i.m, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 1 dereferenceable(16) %i.n, i64 16, i1 false)
  store i64 -9223372036854775807, ptr %0, align 8
  br label %bb.i

bb.e:                                             ; preds = %bb.b
  %i.p = load i64, ptr %i.k, align 8
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.p) #16
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.k, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.r = icmp ule i64 %i.f, %i.j
  tail call void @llvm.assume(i1 %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.h, %bb.f
  store i64 %i.j, ptr %0, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 1 %i.d, i64 %i.f, i1 false)
  br label %bb.g

bb.i:                                             ; preds = %bb.g, %bb.d, %bb.c
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE9next_backCs2vT3jxLudSK_3url(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0) unnamed_addr #1 !guid !100 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !range !14, !noundef !6
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !range !14, !noundef !6
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.d, align 8
  %i.g = tail call fastcc { ptr, i64 } @_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE9next_backCs2vT3jxLudSK_3url(ptr noalias nofree noundef align 8 dereferenceable(72) %0) #18 ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0        ; 2 uses
  %.not = icmp eq ptr %i.h, null
  %i.i = extractvalue { ptr, i64 } %i.g, 1        ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  %or.cond = select i1 %.not, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.k, label %bb.l

bb.d:                                             ; preds = %bb.k, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.k, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val6 = load i64, ptr %i.l, align 8, !noundef !6 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !101, !noundef !6 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %.promoted.i = load i64, ptr %i.o, align 8, !alias.scope !101 ; 3 uses
  %i.p = icmp ult i64 %.promoted.i, %i.n
  %.not24.i = icmp ugt i64 %.promoted.i, %.val6
  %or.cond25.i = or i1 %i.p, %.not24.i
  br i1 %or.cond25.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load i8, ptr %i.s, align 8, !alias.scope !101, !noundef !6 ; 2 uses
  %i.u = zext nneg i8 %i.t to i64                 ; 3 uses
  %i.v = add nsw i64 %i.u, -1                     ; 3 uses
  %i.w = icmp ult i8 %i.t, 5
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph.i
  %i.y = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.af, %bb.h ]
  %i.z = sub nuw i64 %i.y, %i.n
  %i.aa = load i8, ptr %i.x, align 1, !alias.scope !101, !noundef !6
  %i.ab = tail call { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr7memrchr(i8 noundef %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef %i.z), !noalias !102 ; 2 uses
  %i.ac = extractvalue { i64, i64 } %i.ab, 0
  %i.ad = trunc nuw i64 %i.ac to i1
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = extractvalue { i64, i64 } %i.ab, 1
  %i.af = add i64 %i.ae, %i.n                     ; 6 uses
  %.not14.i = icmp ult i64 %i.af, %i.v
  br i1 %.not14.i, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  store i64 %i.n, ptr %i.o, align 8, !alias.scope !101
  br label %.loopexit

bb.h:                                             ; preds = %bb.j, %bb.i, %bb.f
  store i64 %i.af, ptr %i.o, align 8, !alias.scope !101
  %i.ag = icmp ult i64 %i.af, %i.n
  %.not.i = icmp ugt i64 %i.af, %.val6
  %or.cond.i = or i1 %i.ag, %.not.i
  br i1 %or.cond.i, label %.loopexit, label %bb.e

bb.i:                                             ; preds = %bb.f
  %i.ah = sub nuw i64 %i.af, %i.v                 ; 5 uses
  %i.ai = add i64 %i.ah, %i.u                     ; 4 uses
  %i.aj = icmp ult i64 %i.ai, %i.ah
  %.not15.i = icmp ugt i64 %i.ai, %.val6
  %or.cond16.i = or i1 %i.aj, %.not15.i
  br i1 %or.cond16.i, label %bb.h, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ah
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.ak, ptr nonnull %i.r, i64 %i.u), !noalias !103
  %i.al = icmp eq i32 %bcmp.i, 0
  br i1 %i.al, label %bb.m, label %bb.h

bb.k:                                             ; preds = %bb.c
  %i.am = load i8, ptr %i.a, align 1, !range !14, !noundef !6
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.l, label %bb.d

bb.l:                                             ; preds = %bb.k, %bb.c, %bb.a, %bb.n
  %.sroa.8.0 = phi i64 [ %i.i, %bb.c ], [ %.sroa.8.1, %bb.n ], [ undef, %bb.a ], [ undef, %bb.k ]
  %.sroa.0.0 = phi ptr [ %i.h, %bb.c ], [ %.sroa.0.1, %bb.n ], [ null, %bb.a ], [ null, %bb.k ]
  %i.ao = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.ap = insertvalue { ptr, i64 } %i.ao, i64 %.sroa.8.0, 1
  ret { ptr, i64 } %i.ap

bb.m:                                             ; preds = %bb.j
  store i64 %i.ah, ptr %i.o, align 8, !alias.scope !101
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !6
  %i.as = sub nuw i64 %i.ar, %i.ai
  store i64 %i.ah, ptr %i.aq, align 8
  br label %bb.n

.loopexit:                                        ; preds = %bb.h, %bb.g, %bb.d
  store i8 1, ptr %i.a, align 1
  %i.at = load i64, ptr %0, align 8, !noundef !6  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = load i64, ptr %i.au, align 8, !noundef !6
  %i.aw = sub nuw i64 %i.av, %i.at
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.loopexit
  %.sroa.8.1 = phi i64 [ %i.as, %bb.m ], [ %i.aw, %.loopexit ]
  %.pn = phi i64 [ %i.ai, %bb.m ], [ %i.at, %.loopexit ]
  %.sroa.0.1 = getelementptr inbounds nuw i8, ptr %.val, i64 %.pn
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvNtCs2vT3jxLudSK_3url4host10write_ipv6(ptr noalias nofree noundef readonly captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !104 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 38 uses
  %i.b = alloca [16 x i8], align 16               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.1016.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  %2 = load <8 x i16>, ptr %0, align 1
  %3 = freeze <8 x i16> %2                        ; 8 uses
  %.sroa.612.0.copyload = load i16, ptr %.sroa.410.0..sroa_idx, align 1 ; 2 uses
  %.sroa.09.0.copyload = load i16, ptr %0, align 1
  %4 = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %3)
  store <8 x i16> %4, ptr %i.b, align 16
  %.not.i = icmp eq i16 %.sroa.09.0.copyload, 0
  %5 = extractelement <8 x i16> %3, i64 1
  %i.g = icmp eq i16 %5, 0                        ; 2 uses
  br i1 %.not.i, label %bb.b, label %.thread.i

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %.thread27.i, label %.thread27.i.thread

.thread.i:                                        ; preds = %bb.a
  %spec.select28.i = select i1 %i.g, i64 1, i64 -1
  br label %.thread27.i

.thread27.i:                                      ; preds = %bb.b, %.thread.i
  %.sroa.07.1.1.i = phi i64 [ %spec.select28.i, %.thread.i ], [ 0, %bb.b ] ; 5 uses
  %6 = extractelement <8 x i16> %3, i64 2
  %i.h = icmp eq i16 %6, 0
  br i1 %i.h, label %bb.c, label %.thread45.thread

.thread27.i.thread:                               ; preds = %bb.b
  %7 = extractelement <8 x i16> %3, i64 2
  %i.i = icmp eq i16 %7, 0
  %spec.select = select i1 %i.i, i64 2, i64 -1
  br label %.thread45

bb.c:                                             ; preds = %.thread27.i
  %i.j = icmp slt i64 %.sroa.07.1.1.i, 0
  %spec.select54 = select i1 %i.j, i64 2, i64 %.sroa.07.1.1.i
  br label %.thread45

.thread45:                                        ; preds = %bb.c, %.thread27.i.thread
  %.sroa.07.1.2.i = phi i64 [ %spec.select, %.thread27.i.thread ], [ %spec.select54, %bb.c ] ; 5 uses
  %.sroa.03.2.2.i = phi i64 [ 1, %.thread27.i.thread ], [ -1, %bb.c ] ; 3 uses
  %.sroa.01.2.2.i = phi i64 [ 0, %.thread27.i.thread ], [ -1, %bb.c ] ; 3 uses
  %i.k = icmp eq i16 %.sroa.612.0.copyload, 0
  br i1 %i.k, label %bb.f, label %bb.d

.thread45.thread:                                 ; preds = %.thread27.i
  %i.l = icmp sgt i64 %.sroa.07.1.1.i, -1
  %i.m = sub nuw nsw i64 2, %.sroa.07.1.1.i
  %spec.select55 = select i1 %i.l, i64 %i.m, i64 -1
  %i.n = icmp eq i16 %.sroa.612.0.copyload, 0
  %spec.select106 = select i1 %i.n, i64 3, i64 -1
  br label %.thread91

bb.d:                                             ; preds = %.thread45
  %i.o = icmp sgt i64 %.sroa.07.1.2.i, -1
  br i1 %i.o, label %bb.e, label %.thread91

bb.e:                                             ; preds = %bb.d
  %i.p = sub nuw nsw i64 3, %.sroa.07.1.2.i       ; 2 uses
  %i.q = icmp sgt i64 %i.p, %.sroa.03.2.2.i
  %spec.select20.3.i = select i1 %i.q, i64 %.sroa.07.1.2.i, i64 %.sroa.01.2.2.i
  br label %.thread91

bb.f:                                             ; preds = %.thread45
  %i.r = icmp slt i64 %.sroa.07.1.2.i, 0
  %spec.select107 = select i1 %i.r, i64 3, i64 %.sroa.07.1.2.i
  br label %.thread91

.thread91:                                        ; preds = %bb.f, %.thread45.thread, %bb.e, %bb.d
  %.sroa.07.1.3.i = phi i64 [ %spec.select106, %.thread45.thread ], [ -1, %bb.d ], [ -1, %bb.e ], [ %spec.select107, %bb.f ] ; 5 uses
  %.sroa.03.2.3.i = phi i64 [ %spec.select55, %.thread45.thread ], [ %.sroa.03.2.2.i, %bb.d ], [ %i.p, %bb.e ], [ %.sroa.03.2.2.i, %bb.f ] ; 4 uses
  %.sroa.01.2.3.i = phi i64 [ %.sroa.07.1.1.i, %.thread45.thread ], [ %.sroa.01.2.2.i, %bb.d ], [ %spec.select20.3.i, %bb.e ], [ %.sroa.01.2.2.i, %bb.f ] ; 3 uses
  %i.s = extractelement <8 x i16> %3, i64 4
  %i.t = icmp eq i16 %i.s, 0
  br i1 %i.t, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.thread91
  %i.u = icmp sgt i64 %.sroa.07.1.3.i, -1
  br i1 %i.u, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.v = sub nuw nsw i64 4, %.sroa.07.1.3.i       ; 2 uses
  %i.w = icmp sgt i64 %i.v, %.sroa.03.2.3.i
  %spec.select19.4.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 %.sroa.03.2.3.i)
  %spec.select20.4.i = select i1 %i.w, i64 %.sroa.07.1.3.i, i64 %.sroa.01.2.3.i
  br label %bb.j

bb.i:                                             ; preds = %.thread91
  %i.x = icmp slt i64 %.sroa.07.1.3.i, 0
  %spec.store.select.4.i = select i1 %i.x, i64 4, i64 %.sroa.07.1.3.i
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.07.1.4.i = phi i64 [ %spec.store.select.4.i, %bb.i ], [ -1, %bb.g ], [ -1, %bb.h ] ; 5 uses
  %.sroa.03.2.4.i = phi i64 [ %.sroa.03.2.3.i, %bb.i ], [ %.sroa.03.2.3.i, %bb.g ], [ %spec.select19.4.i, %bb.h ] ; 4 uses
  %.sroa.01.2.4.i = phi i64 [ %.sroa.01.2.3.i, %bb.i ], [ %.sroa.01.2.3.i, %bb.g ], [ %spec.select20.4.i, %bb.h ] ; 3 uses
  %i.y = extractelement <8 x i16> %3, i64 5
  %i.z = icmp eq i16 %i.y, 0
  br i1 %i.z, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = icmp sgt i64 %.sroa.07.1.4.i, -1
  br i1 %i.aa, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ab = sub nuw nsw i64 5, %.sroa.07.1.4.i      ; 2 uses
  %i.ac = icmp sgt i64 %i.ab, %.sroa.03.2.4.i
  %spec.select19.5.i = tail call i64 @llvm.smax.i64(i64 %i.ab, i64 %.sroa.03.2.4.i)
  %spec.select20.5.i = select i1 %i.ac, i64 %.sroa.07.1.4.i, i64 %.sroa.01.2.4.i
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.ad = icmp slt i64 %.sroa.07.1.4.i, 0
  %spec.store.select.5.i = select i1 %i.ad, i64 5, i64 %.sroa.07.1.4.i
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.sroa.07.1.5.i = phi i64 [ %spec.store.select.5.i, %bb.m ], [ -1, %bb.k ], [ -1, %bb.l ] ; 5 uses
  %.sroa.03.2.5.i = phi i64 [ %.sroa.03.2.4.i, %bb.m ], [ %.sroa.03.2.4.i, %bb.k ], [ %spec.select19.5.i, %bb.l ] ; 4 uses
  %.sroa.01.2.5.i = phi i64 [ %.sroa.01.2.4.i, %bb.m ], [ %.sroa.01.2.4.i, %bb.k ], [ %spec.select20.5.i, %bb.l ] ; 3 uses
  %i.ae = extractelement <8 x i16> %3, i64 6
  %i.af = icmp eq i16 %i.ae, 0
  br i1 %i.af, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = icmp sgt i64 %.sroa.07.1.5.i, -1
  br i1 %i.ag, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ah = sub nuw nsw i64 6, %.sroa.07.1.5.i      ; 2 uses
  %i.ai = icmp sgt i64 %i.ah, %.sroa.03.2.5.i
  %spec.select19.6.i = tail call i64 @llvm.smax.i64(i64 %i.ah, i64 %.sroa.03.2.5.i)
  %spec.select20.6.i = select i1 %i.ai, i64 %.sroa.07.1.5.i, i64 %.sroa.01.2.5.i
  br label %bb.r

bb.q:                                             ; preds = %bb.n
  %i.aj = icmp slt i64 %.sroa.07.1.5.i, 0
  %spec.store.select.6.i = select i1 %i.aj, i64 6, i64 %.sroa.07.1.5.i
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %.sroa.07.1.6.i = phi i64 [ %spec.store.select.6.i, %bb.q ], [ -1, %bb.o ], [ -1, %bb.p ] ; 5 uses
  %.sroa.03.2.6.i = phi i64 [ %.sroa.03.2.5.i, %bb.q ], [ %.sroa.03.2.5.i, %bb.o ], [ %spec.select19.6.i, %bb.p ] ; 4 uses
  %.sroa.01.2.6.i = phi i64 [ %.sroa.01.2.5.i, %bb.q ], [ %.sroa.01.2.5.i, %bb.o ], [ %spec.select20.6.i, %bb.p ] ; 3 uses
  %8 = extractelement <8 x i16> %3, i64 7
  %i.ak = icmp eq i16 %8, 0
  br i1 %i.ak, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.al = icmp sgt i64 %.sroa.07.1.6.i, -1
  br i1 %i.al, label %bb.t, label %_RNvNtCs2vT3jxLudSK_3url4host21longest_zero_sequence.exit

bb.t:                                             ; preds = %bb.s
  %i.am = sub nuw nsw i64 7, %.sroa.07.1.6.i      ; 2 uses
  %i.an = icmp sgt i64 %i.am, %.sroa.03.2.6.i
  %spec.select19.7.i = tail call i64 @llvm.smax.i64(i64 %i.am, i64 %.sroa.03.2.6.i)
  %spec.select20.7.i = select i1 %i.an, i64 %.sroa.07.1.6.i, i64 %.sroa.01.2.6.i
  br label %_RNvNtCs2vT3jxLudSK_3url4host21longest_zero_sequence.exit

bb.u:                                             ; preds = %bb.r
  %i.ao = icmp slt i64 %.sroa.07.1.6.i, 0
  %spec.store.select.7.i = select i1 %i.ao, i64 7, i64 %.sroa.07.1.6.i
  br label %_RNvNtCs2vT3jxLudSK_3url4host21longest_zero_sequence.exit

_RNvNtCs2vT3jxLudSK_3url4host21longest_zero_sequence.exit: ; preds = %bb.s, %bb.t, %bb.u
  %.sroa.07.1.7.i = phi i64 [ %spec.store.select.7.i, %bb.u ], [ -1, %bb.s ], [ -1, %bb.t ] ; 3 uses
  %.sroa.03.2.7.i = phi i64 [ %.sroa.03.2.6.i, %bb.u ], [ %.sroa.03.2.6.i, %bb.s ], [ %spec.select19.7.i, %bb.t ] ; 3 uses
  %.sroa.01.2.7.i = phi i64 [ %.sroa.01.2.6.i, %bb.u ], [ %.sroa.01.2.6.i, %bb.s ], [ %spec.select20.7.i, %bb.t ]
  %i.ap = icmp sgt i64 %.sroa.07.1.7.i, -1        ; 2 uses
  %i.aq = sub nuw nsw i64 8, %.sroa.07.1.7.i      ; 2 uses
  %i.ar = icmp sgt i64 %i.aq, %.sroa.03.2.7.i
  %spec.select.i = tail call i64 @llvm.smax.i64(i64 %i.aq, i64 %.sroa.03.2.7.i)
  %.sroa.03.1.i = select i1 %i.ap, i64 %spec.select.i, i64 %.sroa.03.2.7.i ; 2 uses
  %i.as = select i1 %i.ap, i1 %i.ar, i1 false
  %.sroa.01.1.i = select i1 %i.as, i64 %.sroa.07.1.7.i, i64 %.sroa.01.2.7.i ; 2 uses
  %i.at = icmp slt i64 %.sroa.03.1.i, 2           ; 2 uses
  %i.au = add nsw i64 %.sroa.01.1.i, %.sroa.03.1.i
  %.sroa.3.0.i = select i1 %i.at, i64 -2, i64 %i.au
  %.sroa.3.0.i.fr = freeze i64 %.sroa.3.0.i       ; 4 uses
  %.sroa.0.0.i = select i1 %i.at, i64 -1, i64 %.sroa.01.1.i ; 9 uses
  %i.av = icmp slt i64 %.sroa.3.0.i.fr, 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 9 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.ax = icmp eq i64 %.sroa.0.0.i, 0             ; 2 uses
  br i1 %i.av, label %_RNvNtCs2vT3jxLudSK_3url4host21longest_zero_sequence.exit.split.us.preheader, label %_RNvNtCs2vT3jxLudSK_3url4host21longest_zero_sequence.exit.split.preheader

_RNvNtCs2vT3jxLudSK_3url4host21longest_zero_sequence.exit.split.preheader: ; preds = %_RNvNtCs2vT3jxLudSK_3url4host21longest_zero_sequence.exit
  br i1 %i.ax, label %.thread104, label %bb.ac

_RNvNtCs2vT3jxLudSK_3url4host21longest_zero_sequence.exit.split.us.preheader: ; preds = %_RNvNtCs2vT3jxLudSK_3url4host21longest_zero_sequence.exit
  %i.ay = icmp ult i64 %.sroa.3.0.i.fr, 8
  br label %_RNvNtCs2vT3jxLudSK_3url4host21longest_zero_sequence.exit.split.us

_RNvNtCs2vT3jxLudSK_3url4host21longest_zero_sequence.exit.split.us: ; preds = %bb.aa, %_RNvNtCs2vT3jxLudSK_3url4host21longest_zero_sequence.exit.split.us.preheader
  %.sroa.01.058.us = phi i64 [ %i.bh, %bb.aa ], [ 0, %_RNvNtCs2vT3jxLudSK_3url4host21longest_zero_sequence.exit.split.us.preheader ] ; 2 uses
  %i.az = icmp eq i64 %.sroa.01.058.us, %.sroa.0.0.i
  br i1 %i.az, label %bb.v, label %.thread100

bb.v:                                             ; preds = %_RNvNtCs2vT3jxLudSK_3url4host21longest_zero_sequence.exit.split.us
  %i.ba = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 1)
  br i1 %i.ba, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %i.ax, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bb = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 1)
  br i1 %i.bb, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  br i1 %i.ay, label %.thread100, label %.split60.us

.thread100:                                       ; preds = %_RNvNtCs2vT3jxLudSK_3url4host21longest_zero_sequence.exit.split.us, %bb.y
  %.sroa.01.1.us102 = phi i64 [ %.sroa.3.0.i.fr, %bb.y ], [ %.sroa.01.058.us, %_RNvNtCs2vT3jxLudSK_3url4host21longest_zero_sequence.exit.split.us ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %.sroa.01.1.us102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bc, ptr %i.a, align 8
  store ptr @_RNvXsm_NtNtCshzWfHUSfYae_4core3fmt3numtNtB7_8LowerHex3fmt, ptr %.sroa.420.0..sroa_idx, align 8
  %i.bd = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.be = load ptr, ptr %i.aw, align 8, !nonnull !6, !align !16, !noundef !6
  %i.bf = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.bd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.be, ptr noundef nonnull @6, ptr noundef nonnull %i.a)
  br i1 %i.bf, label %.split62.us, label %bb.z

bb.z:                                             ; preds = %.thread100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.us = icmp eq i64 %.sroa.01.1.us102, 7
  br i1 %.not.us, label %.split.us, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bg = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 1)
  %i.bh = add nuw nsw i64 %.sroa.01.1.us102, 1
  br i1 %i.bg, label %.loopexit, label %_RNvNtCs2vT3jxLudSK_3url4host21longest_zero_sequence.exit.split.us

.split.us:                                        ; preds = %bb.z, %bb.ab, %.split.us.loopexit72, %.thread105
  br label %.loopexit

bb.ab:                                            ; preds = %_RNvNtCs2vT3jxLudSK_3url4host21longest_zero_sequence.exit.split.7, %_RNvNtCs2vT3jxLudSK_3url4host21longest_zero_sequence.exit.split.6, %_RNvNtCs2vT3jxLudSK_3url4host21longest_zero_sequence.exit.split.5, %_RNvNtCs2vT3jxLudSK_3url4host21longest_zero_sequence.exit.split.4, %_RNvNtCs2vT3jxLudSK_3url4host21longest_zero_sequence.exit.split.3, %_RNvNtCs2vT3jxLudSK_3url4host21longest_zero_sequence.exit.split.2, %_RNvNtCs2vT3jxLudSK_3url4host21longest_zero_sequence.exit.split.1
  %i.bi = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 1)
  br i1 %i.bi, label %.loopexit, label %.split.us

.thread104:                                       ; preds = %_RNvNtCs2vT3jxLudSK_3url4host21longest_zero_sequence.exit.split.preheader
  %i.bj = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 1)
  br i1 %i.bj, label %.loopexit, label %.thread105

bb.ac:                                            ; preds = %_RNvNtCs2vT3jxLudSK_3url4host21longest_zero_sequence.exit.split.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXsm_NtNtCshzWfHUSfYae_4core3fmt3numtNtB7_8LowerHex3fmt, ptr %.sroa.420.0..sroa_idx, align 8
  %i.bk = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.bl = load ptr, ptr %i.aw, align 8, !nonnull !6, !align !16, !noundef !6
  %i.bm = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.bk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bl, ptr noundef nonnull @6, ptr noundef nonnull %i.a)
  br i1 %i.bm, label %.split62.us, label %bb.ad

.thread105:                                       ; preds = %.thread104
  %i.bn = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 1)
  br i1 %i.bn, label %.loopexit, label %.split.us

.loopexit:                                        ; preds = %bb.v, %bb.x, %bb.aa, %.split62.us, %.thread105, %bb.ab, %.thread104, %bb.ap, %bb.an, %bb.al, %bb.aj, %bb.ah, %bb.af, %bb.ad, %.split.us
  %.sroa.0.0 = phi i1 [ false, %.split.us ], [ true, %bb.ab ], [ true, %.thread105 ], [ true, %.split62.us ], [ true, %bb.ad ], [ true, %bb.af ], [ true, %bb.ah ], [ true, %bb.aj ], [ true, %bb.al ], [ true, %bb.an ], [ true, %bb.ap ], [ true, %.thread104 ], [ true, %bb.aa ], [ true, %bb.x ], [ true, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.sroa.0.0

.split60.us:                                      ; preds = %bb.y
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.sroa.3.0.i.fr, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #19
  unreachable

.split62.us:                                      ; preds = %.thread100, %bb.ac, %bb.ae, %bb.ag, %bb.ai, %bb.ak, %bb.am, %bb.ao, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bo = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 1)
  br i1 %i.bo, label %.loopexit, label %_RNvNtCs2vT3jxLudSK_3url4host21longest_zero_sequence.exit.split.1

_RNvNtCs2vT3jxLudSK_3url4host21longest_zero_sequence.exit.split.1: ; preds = %bb.ad
  %i.bp = icmp eq i64 %.sroa.0.0.i, 1
  br i1 %i.bp, label %bb.ab, label %bb.ae

bb.ae:                                            ; preds = %_RNvNtCs2vT3jxLudSK_3url4host21longest_zero_sequence.exit.split.1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.511.0..sroa_idx, ptr %i.a, align 8
  store ptr @_RNvXsm_NtNtCshzWfHUSfYae_4core3fmt3numtNtB7_8LowerHex3fmt, ptr %.sroa.420.0..sroa_idx, align 8
  %i.bq = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.br = load ptr, ptr %i.aw, align 8, !nonnull !6, !align !16, !noundef !6
  %i.bs = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.bq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.br, ptr noundef nonnull @6, ptr noundef nonnull %i.a)
  br i1 %i.bs, label %.split62.us, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bt = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 1)
  br i1 %i.bt, label %.loopexit, label %_RNvNtCs2vT3jxLudSK_3url4host21longest_zero_sequence.exit.split.2

_RNvNtCs2vT3jxLudSK_3url4host21longest_zero_sequence.exit.split.2: ; preds = %bb.af
  %i.bu = icmp eq i64 %.sroa.0.0.i, 2
  br i1 %i.bu, label %bb.ab, label %bb.ag

bb.ag:                                            ; preds = %_RNvNtCs2vT3jxLudSK_3url4host21longest_zero_sequence.exit.split.2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.612.0..sroa_idx, ptr %i.a, align 8
  store ptr @_RNvXsm_NtNtCshzWfHUSfYae_4core3fmt3numtNtB7_8LowerHex3fmt, ptr %.sroa.420.0..sroa_idx, align 8
  %i.bv = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.bw = load ptr, ptr %i.aw, align 8, !nonnull !6, !align !16, !noundef !6
  %i.bx = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.bv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bw, ptr noundef nonnull @6, ptr noundef nonnull %i.a)
  br i1 %i.bx, label %.split62.us, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.by = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 1)
  br i1 %i.by, label %.loopexit, label %_RNvNtCs2vT3jxLudSK_3url4host21longest_zero_sequence.exit.split.3

_RNvNtCs2vT3jxLudSK_3url4host21longest_zero_sequence.exit.split.3: ; preds = %bb.ah
  %i.bz = icmp eq i64 %.sroa.0.0.i, 3
  br i1 %i.bz, label %bb.ab, label %bb.ai

bb.ai:                                            ; preds = %_RNvNtCs2vT3jxLudSK_3url4host21longest_zero_sequence.exit.split.3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.1016.0..sroa_idx, ptr %i.a, align 8
  store ptr @_RNvXsm_NtNtCshzWfHUSfYae_4core3fmt3numtNtB7_8LowerHex3fmt, ptr %.sroa.420.0..sroa_idx, align 8
  %i.ca = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.cb = load ptr, ptr %i.aw, align 8, !nonnull !6, !align !16, !noundef !6
  %i.cc = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.ca, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cb, ptr noundef nonnull @6, ptr noundef nonnull %i.a)
  br i1 %i.cc, label %.split62.us, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cd = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 1)
  br i1 %i.cd, label %.loopexit, label %_RNvNtCs2vT3jxLudSK_3url4host21longest_zero_sequence.exit.split.4

_RNvNtCs2vT3jxLudSK_3url4host21longest_zero_sequence.exit.split.4: ; preds = %bb.aj
  %i.ce = icmp eq i64 %.sroa.0.0.i, 4
  br i1 %i.ce, label %bb.ab, label %bb.ak

bb.ak:                                            ; preds = %_RNvNtCs2vT3jxLudSK_3url4host21longest_zero_sequence.exit.split.4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  store ptr @_RNvXsm_NtNtCshzWfHUSfYae_4core3fmt3numtNtB7_8LowerHex3fmt, ptr %.sroa.420.0..sroa_idx, align 8
  %i.cf = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.cg = load ptr, ptr %i.aw, align 8, !nonnull !6, !align !16, !noundef !6
  %i.ch = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.cf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cg, ptr noundef nonnull @6, ptr noundef nonnull %i.a)
  br i1 %i.ch, label %.split62.us, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ci = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 1)
  br i1 %i.ci, label %.loopexit, label %_RNvNtCs2vT3jxLudSK_3url4host21longest_zero_sequence.exit.split.5

_RNvNtCs2vT3jxLudSK_3url4host21longest_zero_sequence.exit.split.5: ; preds = %bb.al
  %i.cj = icmp eq i64 %.sroa.0.0.i, 5
  br i1 %i.cj, label %bb.ab, label %bb.am

bb.am:                                            ; preds = %_RNvNtCs2vT3jxLudSK_3url4host21longest_zero_sequence.exit.split.5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  store ptr @_RNvXsm_NtNtCshzWfHUSfYae_4core3fmt3numtNtB7_8LowerHex3fmt, ptr %.sroa.420.0..sroa_idx, align 8
  %i.ck = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.cl = load ptr, ptr %i.aw, align 8, !nonnull !6, !align !16, !noundef !6
  %i.cm = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.ck, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cl, ptr noundef nonnull @6, ptr noundef nonnull %i.a)
  br i1 %i.cm, label %.split62.us, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cn = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 1)
  br i1 %i.cn, label %.loopexit, label %_RNvNtCs2vT3jxLudSK_3url4host21longest_zero_sequence.exit.split.6

_RNvNtCs2vT3jxLudSK_3url4host21longest_zero_sequence.exit.split.6: ; preds = %bb.an
  %i.co = icmp eq i64 %.sroa.0.0.i, 6
  br i1 %i.co, label %bb.ab, label %bb.ao

bb.ao:                                            ; preds = %_RNvNtCs2vT3jxLudSK_3url4host21longest_zero_sequence.exit.split.6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.a, align 8
  store ptr @_RNvXsm_NtNtCshzWfHUSfYae_4core3fmt3numtNtB7_8LowerHex3fmt, ptr %.sroa.420.0..sroa_idx, align 8
  %i.cp = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.cq = load ptr, ptr %i.aw, align 8, !nonnull !6, !align !16, !noundef !6
  %i.cr = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.cp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cq, ptr noundef nonnull @6, ptr noundef nonnull %i.a)
  br i1 %i.cr, label %.split62.us, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cs = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 1)
  br i1 %i.cs, label %.loopexit, label %_RNvNtCs2vT3jxLudSK_3url4host21longest_zero_sequence.exit.split.7

_RNvNtCs2vT3jxLudSK_3url4host21longest_zero_sequence.exit.split.7: ; preds = %bb.ap
  %i.ct = icmp eq i64 %.sroa.0.0.i, 7
  br i1 %i.ct, label %bb.ab, label %bb.aq

bb.aq:                                            ; preds = %_RNvNtCs2vT3jxLudSK_3url4host21longest_zero_sequence.exit.split.7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.f, ptr %i.a, align 8
  store ptr @_RNvXsm_NtNtCshzWfHUSfYae_4core3fmt3numtNtB7_8LowerHex3fmt, ptr %.sroa.420.0..sroa_idx, align 8
  %i.cu = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.cv = load ptr, ptr %i.aw, align 8, !nonnull !6, !align !16, !noundef !6
  %i.cw = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.cu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cv, ptr noundef nonnull @6, ptr noundef nonnull %i.a)
  br i1 %i.cw, label %.split62.us, label %.split.us.loopexit72

.split.us.loopexit72:                             ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.split.us
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs2vT3jxLudSK_3url4host14parse_ipv6addr(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 1 captures(none) dereferenceable(17) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -1) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !106 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = icmp ult i64 %2, 2
  br i1 %i.b, label %._crit_edge177.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %1, align 1, !noundef !6
  %i.d = icmp eq i8 %i.c, 58
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.f = load i8, ptr %i.e, align 1, !noundef !6
  %i.g = icmp eq i8 %i.f, 58
  br i1 %i.g, label %bb.d, label %._crit_edge177.thread

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.019.0 = phi i64 [ 0, %bb.b ], [ 2, %bb.c ] ; 2 uses
  %.sroa.05.0 = phi i64 [ 0, %bb.b ], [ 1, %bb.c ] ; 4 uses
  %i.h = icmp ult i64 %.sroa.019.0, %2
  br i1 %i.h, label %.lr.ph146, label %.loopexit89

.lr.ph146:                                        ; preds = %bb.d, %.outer
  %.sroa.05.1.ph156 = phi i64 [ %i.s, %.outer ], [ %.sroa.05.0, %bb.d ] ; 3 uses
  %.sroa.019.1.ph155 = phi i64 [ %i.r, %.outer ], [ %.sroa.019.0, %bb.d ]
  %.sroa.039.1.ph154 = phi i64 [ 1, %.outer ], [ %.sroa.05.0, %bb.d ] ; 3 uses
  %.sroa.5.1.ph153 = phi i64 [ %i.s, %.outer ], [ 1, %bb.d ] ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.05.1.ph156, i64 8) ; 2 uses
  %i.i = icmp eq i64 %.sroa.05.1.ph156, 8
  br i1 %i.i, label %._crit_edge177.thread, label %.lr.ph369

._crit_edge177.thread:                            ; preds = %bb.f, %.lr.ph146, %bb.e, %bb.i, %bb.k, %bb.aj, %.lr.ph164.preheader, %bb.ai, %bb.al, %bb.ar, %bb.ap, %bb.c, %bb.a, %bb.p, %._crit_edge177, %bb.j
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 4, ptr %i.j, align 1
  br label %bb.ah

bb.e:                                             ; preds = %bb.m
  %i.k = icmp eq i64 %i.aq, 8
  br i1 %i.k, label %._crit_edge177.thread, label %.lr.ph369

.lr.ph369:                                        ; preds = %.lr.ph146, %bb.e
  %.sroa.019.1144368 = phi i64 [ %.sroa.019.4, %bb.e ], [ %.sroa.019.1.ph155, %.lr.ph146 ] ; 9 uses
  %.sroa.05.1145367 = phi i64 [ %i.aq, %bb.e ], [ %.sroa.05.1.ph156, %.lr.ph146 ] ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.019.1144368
  %i.m = load i8, ptr %i.l, align 1, !noundef !6
  %i.n = icmp eq i8 %i.m, 58
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph369
  %i.o = icmp eq i64 %.sroa.039.1.ph154, 1
  br i1 %i.o, label %._crit_edge177.thread, label %.outer

bb.g:                                             ; preds = %.lr.ph369
  %i.p = add i64 %.sroa.019.1144368, 4
  %..i = tail call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 4, 2) %i.p, i64 range(i64 2, -1) %2) ; 3 uses
  %i.q = icmp ult i64 %.sroa.019.1144368, %..i
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.outer:                                           ; preds = %bb.f
  %i.r = add nuw i64 %.sroa.019.1144368, 1        ; 2 uses
  %i.s = add i64 %.sroa.05.1145367, 1             ; 2 uses
  %i.t = icmp ult i64 %i.r, %2
  br i1 %i.t, label %.lr.ph146, label %.loopexit

._crit_edge:                                      ; preds = %bb.h, %.lr.ph, %bb.g
  %.sroa.043.0.lcssa = phi i16 [ 0, %bb.g ], [ %.sroa.043.0138, %.lr.ph ], [ %i.ag, %bb.h ]
  %.sroa.019.3.lcssa = phi i64 [ %.sroa.019.1144368, %bb.g ], [ %.sroa.019.3139, %.lr.ph ], [ %..i, %bb.h ] ; 5 uses
  %i.u = icmp ult i64 %.sroa.019.3.lcssa, %2
  br i1 %i.u, label %bb.i, label %bb.l

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %.sroa.019.3139 = phi i64 [ %i.ah, %bb.h ], [ %.sroa.019.1144368, %bb.g ] ; 3 uses
  %.sroa.043.0138 = phi i16 [ %i.ag, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.019.3139
  %i.w = load i8, ptr %i.v, align 1, !noundef !6  ; 2 uses
  %i.x = zext i8 %i.w to i32                      ; 2 uses
  %i.y = icmp ugt i8 %i.w, 57
  %i.z = add nsw i32 %i.x, -65
  %i.aa = and i32 %i.z, -33
  %i.ab = add nuw nsw i32 %i.aa, 10
  %i.ac = add nsw i32 %i.x, -48
  %.sroa.02.0.i = select i1 %i.y, i32 %i.ab, i32 %i.ac ; 2 uses
  %i.ad = icmp ult i32 %.sroa.02.0.i, 16
  br i1 %i.ad, label %bb.h, label %._crit_edge

bb.h:                                             ; preds = %.lr.ph
  %i.ae = shl i16 %.sroa.043.0138, 4
  %i.af = trunc nuw nsw i32 %.sroa.02.0.i to i16
  %i.ag = or disjoint i16 %i.ae, %i.af            ; 2 uses
  %i.ah = add i64 %.sroa.019.3139, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, %..i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.i:                                             ; preds = %._crit_edge
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.019.3.lcssa
  %i.aj = load i8, ptr %i.ai, align 1, !noundef !6
  switch i8 %i.aj, label %._crit_edge177.thread [
    i8 46, label %bb.j
    i8 58, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.ak = icmp ne i64 %.sroa.019.3.lcssa, %.sroa.019.1144368
  %i.al = icmp ult i64 %.sroa.05.1145367, 7
  %or.cond329.not333 = and i1 %i.ak, %i.al
  %i.am = icmp ult i64 %.sroa.019.1144368, %2
  %or.cond330 = and i1 %or.cond329.not333, %i.am
  br i1 %or.cond330, label %.lr.ph176, label %._crit_edge177.thread

bb.k:                                             ; preds = %bb.i
  %i.an = add nuw i64 %.sroa.019.3.lcssa, 1       ; 2 uses
  %i.ao = icmp eq i64 %i.an, %2
  br i1 %i.ao, label %._crit_edge177.thread, label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.k
  %.sroa.019.4 = phi i64 [ %i.an, %bb.k ], [ %.sroa.019.3.lcssa, %._crit_edge ] ; 2 uses
  %exitcond227.not = icmp eq i64 %.sroa.05.1145367, %umax
  br i1 %exitcond227.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.05.1145367
  store i16 %.sroa.043.0.lcssa, ptr %i.ap, align 2
  %i.aq = add i64 %.sroa.05.1145367, 1            ; 3 uses
  %i.ar = icmp ult i64 %.sroa.019.4, %2
  br i1 %i.ar, label %bb.e, label %.loopexit89

bb.n:                                             ; preds = %bb.l
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #19
  unreachable

._crit_edge177:                                   ; preds = %bb.ao
  %i.as = icmp eq i32 %i.do, 4
  br i1 %i.as, label %.loopexit89, label %._crit_edge177.thread

.lr.ph176:                                        ; preds = %bb.j, %bb.ao
  %.sroa.05.3175 = phi i64 [ %spec.select, %bb.ao ], [ %.sroa.05.1145367, %bb.j ] ; 4 uses
  %.sroa.019.7174 = phi i64 [ %.sroa.019.9.lcssa282, %bb.ao ], [ %.sroa.019.1144368, %bb.j ] ; 3 uses
  %.sroa.048.0173 = phi i32 [ %i.do, %bb.ao ], [ 0, %bb.j ] ; 4 uses
  %i.at = icmp sgt i32 %.sroa.048.0173, 0
  br i1 %i.at, label %bb.ai, label %bb.aj

.loopexit89:                                      ; preds = %bb.m, %bb.d, %._crit_edge177
  %.sroa.5.1.ph137 = phi i64 [ %.sroa.5.1.ph153, %._crit_edge177 ], [ 1, %bb.d ], [ %.sroa.5.1.ph153, %bb.m ] ; 3 uses
  %.sroa.039.1.ph130 = phi i64 [ %.sroa.039.1.ph154, %._crit_edge177 ], [ %.sroa.05.0, %bb.d ], [ %.sroa.039.1.ph154, %bb.m ]
  %.sroa.05.2 = phi i64 [ %spec.select, %._crit_edge177 ], [ %.sroa.05.0, %bb.d ], [ %i.aq, %bb.m ] ; 4 uses
  %i.au = trunc nuw i64 %.sroa.039.1.ph130 to i1
  br i1 %i.au, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.loopexit89
  %i.av = sub i64 %.sroa.05.2, %.sroa.5.1.ph137   ; 8 uses
  %.not180 = icmp eq i64 %.sroa.05.2, %.sroa.5.1.ph137
  br i1 %.not180, label %.loopexit, label %.lr.ph184

.lr.ph184:                                        ; preds = %bb.o
  %i.aw = add i64 %.sroa.5.1.ph137, -1            ; 7 uses
  %i.ax = add i64 %.sroa.05.2, -1                 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 8
  br i1 %i.ay, label %bb.r, label %bb.ag

bb.p:                                             ; preds = %.loopexit89
  %i.az = icmp eq i64 %.sroa.05.2, 8
  br i1 %i.az, label %.loopexit, label %._crit_edge177.thread

.loopexit:                                        ; preds = %.outer, %bb.r, %bb.t, %bb.v, %bb.x, %bb.z, %bb.ab, %bb.ad, %bb.af, %bb.o, %bb.p
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bb = load <8 x i16>, ptr %i.a, align 16
  %i.bc = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.bb)
  store <8 x i16> %i.bc, ptr %i.ba, align 1
  br label %bb.ah

bb.q:                                             ; preds = %bb.af
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef -1, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #19
  unreachable

bb.r:                                             ; preds = %.lr.ph184
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 14 ; 2 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ax ; 2 uses
  %.sroa.064.0.copyload = load i16, ptr %i.bd, align 2
  %i.bf = load i16, ptr %i.be, align 2
  store i16 %i.bf, ptr %i.bd, align 2
  store i16 %.sroa.064.0.copyload, ptr %i.be, align 2
  %i.bg = add i64 %i.av, -1                       ; 2 uses
  %.not = icmp eq i64 %i.bg, 0
  br i1 %.not, label %.loopexit, label %bb.s

end_hunk_0
begin_hunk_1_@_RNvXs2_NtCs2vT3jxLudSK_3url4hostNtB5_4HostNtNtCshzWfHUSfYae_4core3fmt7Display3fmtB7_:bb.a
bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = tail call noundef zeroext i1 @_RNvNtCs2vT3jxLudSK_3url4host10write_ipv6(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.l, label %bb.f, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 1)
  br label %bb.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs3_NtCs2vT3jxLudSK_3url4hostINtB5_4HostINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEEINtNtCshzWfHUSfYae_4core3cmp9PartialEqBv_E2eqB7_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 !guid !141 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !17, !noundef !6 ; 2 uses
  %i.b = icmp slt i64 %i.a, -9223372036854775806
  %i.c = add i64 %i.a, -9223372036854775807
  %i.d = select i1 %i.b, i64 %i.c, i64 0          ; 2 uses
  %i.e = load i64, ptr %1, align 8, !range !18, !noundef !6 ; 2 uses
  %i.f = icmp slt i64 %i.e, 0
  %i.g = add i64 %i.e, -9223372036854775807
  %i.h = select i1 %i.f, i64 %i.g, i64 0
  %.not = icmp eq i64 %i.d, %i.h
  br i1 %.not, label %bb.b, label %_RNvXs1E_NtCsbSS6DM8SDEO_5alloc6stringINtNtB8_6borrow3CoweEINtNtCshzWfHUSfYae_4core3cmp9PartialEqNtB6_6StringE2eq.exit

bb.b:                                             ; preds = %bb.a
  switch i64 %i.d, label %bb.c [
    i64 0, label %bb.d
    i64 1, label %bb.f
    i64 2, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.i, align 8, !noundef !6 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load i64, ptr %i.j, align 8, !noundef !6
  %i.k = icmp eq i64 %.val1, %.val3
  br i1 %i.k, label %bb.e, label %_RNvXs1E_NtCsbSS6DM8SDEO_5alloc6stringINtNtB8_6borrow3CoweEINtNtCshzWfHUSfYae_4core3cmp9PartialEqNtB6_6StringE2eq.exit

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.l, align 8, !nonnull !6, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.m, align 8, !nonnull !6, !noundef !6
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val2, i64 %.val1)
  %i.n = icmp eq i32 %bcmp.i, 0
  br label %_RNvXs1E_NtCsbSS6DM8SDEO_5alloc6stringINtNtB8_6borrow3CoweEINtNtCshzWfHUSfYae_4core3cmp9PartialEqNtB6_6StringE2eq.exit

bb.f:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i32, ptr %i.o, align 8, !noundef !6
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i32, ptr %i.q, align 8, !noundef !6
  %i.s = icmp eq i32 %i.p, %i.r
  br label %_RNvXs1E_NtCsbSS6DM8SDEO_5alloc6stringINtNtB8_6borrow3CoweEINtNtCshzWfHUSfYae_4core3cmp9PartialEqNtB6_6StringE2eq.exit

bb.g:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i128, ptr %i.t, align 8, !noundef !6
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i128, ptr %i.v, align 8, !noundef !6
  %i.x = icmp eq i128 %i.u, %i.w
  br label %_RNvXs1E_NtCsbSS6DM8SDEO_5alloc6stringINtNtB8_6borrow3CoweEINtNtCshzWfHUSfYae_4core3cmp9PartialEqNtB6_6StringE2eq.exit

_RNvXs1E_NtCsbSS6DM8SDEO_5alloc6stringINtNtB8_6borrow3CoweEINtNtCshzWfHUSfYae_4core3cmp9PartialEqNtB6_6StringE2eq.exit: ; preds = %bb.e, %bb.d, %bb.a, %bb.g, %bb.f
  %.sroa.0.0.shrunk = phi i1 [ %i.x, %bb.g ], [ false, %bb.a ], [ %i.s, %bb.f ], [ %i.n, %bb.e ], [ false, %bb.d ]
  ret i1 %.sroa.0.0.shrunk
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs3_NtCs2vT3jxLudSK_3url4hostINtB5_4HostReENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB7_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 !guid !145 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !15, !noundef !6 ; 2 uses
  %i.b = load i8, ptr %1, align 8, !range !15, !noundef !6
  %.not = icmp eq i8 %i.a, %i.b
  br i1 %.not, label %bb.b, label %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit

bb.b:                                             ; preds = %bb.a
  switch i8 %i.a, label %default.unreachable4 [
    i8 0, label %bb.c
    i8 1, label %bb.e
    i8 2, label %bb.f
  ]

default.unreachable4:                             ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !6 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load i64, ptr %i.d, align 8, !noundef !6
  %i.e = icmp eq i64 %.val1, %.val3
  br i1 %i.e, label %bb.d, label %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.g, align 8, !nonnull !6, !noundef !6
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val2, i64 %.val1), !alias.scope !146
  %i.h = icmp eq i32 %bcmp.i.i, 0
  br label %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit

bb.e:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.j = load i32, ptr %i.i, align 1, !noundef !6
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.l = load i32, ptr %i.k, align 1, !noundef !6
  %i.m = icmp eq i32 %i.j, %i.l
  br label %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit

bb.f:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.o = load i128, ptr %i.n, align 1, !noundef !6
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.q = load i128, ptr %i.p, align 1, !noundef !6
  %i.r = icmp eq i128 %i.o, %i.q
  br label %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit

_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit: ; preds = %bb.d, %bb.c, %bb.a, %bb.f, %bb.e
  %.sroa.0.0.shrunk = phi i1 [ %i.r, %bb.f ], [ false, %bb.a ], [ %i.m, %bb.e ], [ %i.h, %bb.d ], [ false, %bb.c ]
  ret i1 %.sroa.0.0.shrunk
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecReENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs2vT3jxLudSK_3url(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs2vT3jxLudSK_3url(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecmENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs2vT3jxLudSK_3url(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecReENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs2vT3jxLudSK_3url(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs2vT3jxLudSK_3url(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecmENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs2vT3jxLudSK_3url(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterReENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs2vT3jxLudSK_3url(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2vT3jxLudSK_3url(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCs2vT3jxLudSK_3url(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_Cslj2VLHWbzoG_16percent_encodingINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEINtNtCshzWfHUSfYae_4core7convert4FromNtB5_13PercentEncodeE4from(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCs2vT3jxLudSK_3url(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs2_Cslj2VLHWbzoG_16percent_encodingINtNtCsbSS6DM8SDEO_5alloc6borrow3CowShEINtNtCshzWfHUSfYae_4core7convert4FromNtB5_13PercentDecodeE4from(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvCs8dlYv19QFjS_4idna24domain_to_ascii_from_cow(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), i128 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs2vT3jxLudSK_3url(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsm_NtNtCshzWfHUSfYae_4core3fmt3numtNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCshzWfHUSfYae_4core3str4iter5SplitcEE9from_iterCs2vT3jxLudSK_3url(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr7memrchr(i8 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXse_NtCsbSS6DM8SDEO_5alloc6borrowINtB5_3CoweEINtNtCshzWfHUSfYae_4core7convert5AsRefeE6as_refCs2vT3jxLudSK_3url(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCshzWfHUSfYae_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCshzWfHUSfYae_4core3net7ip_addrNtB5_8Ipv4AddrNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.bswap.v8i16(<8 x i16>) #10

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { cold noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { cold }
attributes #18 = { inlinehint }
attributes #19 = { noinline noreturn }
attributes #20 = { noinline }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.99.0-nightly (73dc9167f 2026-08-01)"}
!4 = !{i64 -3781527938849319967}
!5 = !{i64 -1, i64 -9223372036854775808}
!6 = !{}
!7 = !{i64 -2, i64 -9223372036854775806}
!8 = !{i8 0, i8 10}
!9 = !{i64 0, i64 2}
!10 = !{i64 0, i64 -9223372036854775807}
!11 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!12 = !{!"branch_weights", i32 2146410443, i32 1073205}
!13 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!14 = !{i8 0, i8 2}
!15 = !{i8 0, i8 3}
!16 = !{i64 8}
!17 = !{i64 -1, i64 -9223372036854775806}
!18 = !{i64 0, i64 -9223372036854775806}
!19 = !{i64 -7431335402972161672}
!20 = !{i64 5767404807113916922}
!21 = !{i64 -3595862667857207515}
!22 = distinct !{!22, i1 true, !"_RNvMs1_NtCs2vT3jxLudSK_3url4hostINtB5_4HostINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEE10into_owned"}
!23 = distinct !{!23, !22, !"_RNvMs1_NtCs2vT3jxLudSK_3url4hostINtB5_4HostINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEE10into_owned: argument 1"}
!24 = distinct !{!24, !22, !"_RNvMs1_NtCs2vT3jxLudSK_3url4hostINtB5_4HostINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEE10into_owned: argument 0"}
!25 = !{i64 568172273530168936}
!26 = !{!24, !23}
!27 = distinct !{!27, i1 true, !"_RNvMs1_NtCs2vT3jxLudSK_3url4hostINtB5_4HostINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEE10into_owned"}
!28 = distinct !{!28, !27, !"_RNvMs1_NtCs2vT3jxLudSK_3url4hostINtB5_4HostINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEE10into_owned: argument 1"}
!29 = distinct !{!29, !27, !"_RNvMs1_NtCs2vT3jxLudSK_3url4hostINtB5_4HostINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEE10into_owned: argument 0"}
!30 = !{i64 -6052906752614424056}
!31 = !{!29, !28}
!32 = distinct !{!32, i1 true, !"_RINvMNtCshzWfHUSfYae_4core3stre4findNCNvMs1_NtCs2vT3jxLudSK_3url4hostINtBG_4HostINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEE16parse_opaque_cow0EBI_"}
!33 = distinct !{!33, !32, !"_RINvMNtCshzWfHUSfYae_4core3stre4findNCNvMs1_NtCs2vT3jxLudSK_3url4hostINtBG_4HostINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEE16parse_opaque_cow0EBI_: argument 0"}
!34 = distinct !{!34, i1 true, !"_RNvXso_NtNtCshzWfHUSfYae_4core3str7patternINtB5_21CharPredicateSearcherNCNvMs1_NtCs2vT3jxLudSK_3url4hostINtB1f_4HostINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEE16parse_opaque_cow0ENtB5_8Searcher10next_matchB1h_"}
!35 = distinct !{!35, !34, !"_RNvXso_NtNtCshzWfHUSfYae_4core3str7patternINtB5_21CharPredicateSearcherNCNvMs1_NtCs2vT3jxLudSK_3url4hostINtB1f_4HostINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEE16parse_opaque_cow0ENtB5_8Searcher10next_matchB1h_: argument 1"}
!36 = distinct !{!36, !34, !"_RNvXso_NtNtCshzWfHUSfYae_4core3str7patternINtB5_21CharPredicateSearcherNCNvMs1_NtCs2vT3jxLudSK_3url4hostINtB1f_4HostINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEE16parse_opaque_cow0ENtB5_8Searcher10next_matchB1h_: argument 0"}
!37 = distinct !{!37, i1 true, !"_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern19MultiCharEqSearcherNCNvMs1_NtCs2vT3jxLudSK_3url4hostINtB17_4HostINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEE16parse_opaque_cow0ENtB5_8Searcher10next_matchB19_"}
!38 = distinct !{!38, !37, !"_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern19MultiCharEqSearcherNCNvMs1_NtCs2vT3jxLudSK_3url4hostINtB17_4HostINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEE16parse_opaque_cow0ENtB5_8Searcher10next_matchB19_: argument 1"}
!39 = distinct !{!39, !37, !"_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern19MultiCharEqSearcherNCNvMs1_NtCs2vT3jxLudSK_3url4hostINtB17_4HostINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEE16parse_opaque_cow0ENtB5_8Searcher10next_matchB19_: argument 0"}
!40 = distinct !{!40, i1 true, !"_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNCNvMs1_NtCs2vT3jxLudSK_3url4hostINtB1d_4HostINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEE16parse_opaque_cow0ENtB5_8Searcher4nextB1f_"}
!41 = distinct !{!41, !40, !"_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNCNvMs1_NtCs2vT3jxLudSK_3url4hostINtB1d_4HostINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEE16parse_opaque_cow0ENtB5_8Searcher4nextB1f_: argument 1"}
!42 = distinct !{!42, !40, !"_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNCNvMs1_NtCs2vT3jxLudSK_3url4hostINtB1d_4HostINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEE16parse_opaque_cow0ENtB5_8Searcher4nextB1f_: argument 0"}
!43 = distinct !{!43, i1 true, !"_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!44 = distinct !{!44, !43, !"_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!45 = distinct !{!45, i1 true, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs2vT3jxLudSK_3url"}
!46 = distinct !{!46, !45, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs2vT3jxLudSK_3url: argument 0"}
!47 = distinct !{!47, i1 true, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEECs2vT3jxLudSK_3url"}
!48 = distinct !{!48, !47, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEECs2vT3jxLudSK_3url: argument 0"}
!49 = distinct !{!49, i1 true, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEECs2vT3jxLudSK_3url"}
!50 = distinct !{!50, !49, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEECs2vT3jxLudSK_3url: argument 0"}
!51 = distinct !{!51, i1 true, !"_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range"}
!52 = distinct !{!52, !51, !"_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range: argument 0"}
!53 = !{i64 7021549323294561912}
!54 = !{!33}
!55 = !{!46, !44, !42, !41, !39, !38, !36, !35}
!56 = !{!48}
!57 = !{!50}
!58 = !{!52}
!59 = distinct !{!59, i1 true, !"_RNvNtCs2vT3jxLudSK_3url4host16ends_in_a_number"}
!60 = distinct !{!60, !59, !"_RNvNtCs2vT3jxLudSK_3url4host16ends_in_a_number: argument 0"}
!61 = distinct !{!61, i1 true, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCs2vT3jxLudSK_3url4host16ends_in_a_number0EB1H_"}
!62 = distinct !{!62, !61, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCs2vT3jxLudSK_3url4host16ends_in_a_number0EB1H_: argument 0"}
!63 = distinct !{!63, i1 true, !"_RNvNtCs2vT3jxLudSK_3url4host14parse_ipv4addr"}
!64 = distinct !{!64, !63, !"_RNvNtCs2vT3jxLudSK_3url4host14parse_ipv4addr: argument 0"}
!65 = distinct !{!65, i1 true, !"_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterReENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url"}
!66 = distinct !{!66, !65, !"_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterReENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url: argument 0"}
!67 = distinct !{!67, !88, !89}
!68 = distinct !{!68, i1 true, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtCs2vT3jxLudSK_3url4host14parse_ipv4addr0EB1H_"}
!69 = distinct !{!69, !68, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtCs2vT3jxLudSK_3url4host14parse_ipv4addr0EB1H_: argument 0"}
!70 = distinct !{!70, !89, !88}
!71 = distinct !{!71, i1 true, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecmE8push_mutCs2vT3jxLudSK_3url"}
!72 = distinct !{!72, !71, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecmE8push_mutCs2vT3jxLudSK_3url: argument 0"}
!73 = distinct !{!73, i1 true, !"_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterReENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url"}
!74 = distinct !{!74, !73, !"_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterReENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url: argument 0:h.rot"}
!75 = distinct !{!75, i1 true, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEECs2vT3jxLudSK_3url"}
!76 = distinct !{!76, !75, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEECs2vT3jxLudSK_3url: argument 0"}
!77 = distinct !{!77, i1 true, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEECs2vT3jxLudSK_3url"}
!78 = distinct !{!78, !77, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEECs2vT3jxLudSK_3url: argument 0"}
!79 = distinct !{!79, i1 true, !"_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range"}
!80 = distinct !{!80, !79, !"_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range: argument 0"}
!81 = !{i64 5536282957947041561}
!82 = !{i64 -2, i64 -9223372036854775808}
!83 = !{!60}
!84 = !{!62}
!85 = !{!64}
!86 = !{i64 0, i64 -9223372036854775808}
!87 = !{!66}
!88 = !{!"llvm.loop.isvectorized", i32 1}
!89 = !{!"llvm.loop.unroll.runtime.disable"}
!90 = !{!69}
!91 = !{!72}
!92 = !{!74}
!93 = !{!76}
!94 = !{!78}
!95 = !{!80}
!96 = !{i64 -4727356891380209604}
!97 = distinct !{!97, i1 true, !"_RNvXs0_NtNtCshzWfHUSfYae_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher15next_match_back"}
!98 = distinct !{!98, !97, !"_RNvXs0_NtNtCshzWfHUSfYae_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher15next_match_back: argument 1"}
!99 = distinct !{!99, !97, !"_RNvXs0_NtNtCshzWfHUSfYae_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher15next_match_back: argument 0"}
!100 = !{i64 1339485941201438649}
!101 = !{!98}
!102 = !{!99, !98}
!103 = !{!99}
!104 = !{i64 -2483935457156357183}
!105 = distinct !{!105, !107}
!106 = !{i64 -6209661782291084246}
!107 = !{!"llvm.loop.peeled.count", i32 1}
!108 = distinct !{!108, i1 true, !"_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!109 = distinct !{!109, !108, !"_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!110 = distinct !{!110, i1 true, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCs2vT3jxLudSK_3url4host16parse_ipv4numbers_0EB1H_"}
!111 = distinct !{!111, !110, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCs2vT3jxLudSK_3url4host16parse_ipv4numbers_0EB1H_: argument 0"}
!112 = distinct !{!112, i1 true, !"_RNvXsW_NtNtCshzWfHUSfYae_4core3cmp5implshNtB7_10PartialOrd2le"}
!113 = distinct !{!113, !112, !"_RNvXsW_NtNtCshzWfHUSfYae_4core3cmp5implshNtB7_10PartialOrd2le: argument 1"}
!114 = distinct !{!114, i1 true, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCs2vT3jxLudSK_3url4host16parse_ipv4number0EB1H_"}
!115 = distinct !{!115, !114, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCs2vT3jxLudSK_3url4host16parse_ipv4number0EB1H_: argument 0"}
!116 = distinct !{!116, i1 true, !"_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!117 = distinct !{!117, !116, !"_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!118 = distinct !{!118, i1 true, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCs2vT3jxLudSK_3url4host16parse_ipv4numbers0_0EB1H_"}
!119 = distinct !{!119, !118, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCs2vT3jxLudSK_3url4host16parse_ipv4numbers0_0EB1H_: argument 0"}
!120 = distinct !{!120, i1 true, !"_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl"}
!121 = distinct !{!121, !120, !"_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl: argument 0"}
!122 = !{i64 -8708371417746482298}
!123 = !{!109}
!124 = !{!111}
!125 = !{!113}
!126 = !{!115}
!127 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!128 = !{!117}
!129 = !{!119}
!130 = !{!121}
!131 = !{i64 3690531578819816288}
!132 = !{i64 3334191533381057149}
!133 = !{i64 8241266077605318665}
!134 = !{i64 4428865204735852020}
!135 = distinct !{!135, i1 true, !"_RNvXs2_NtCs2vT3jxLudSK_3url4hostNtB5_4HostNtNtCshzWfHUSfYae_4core3fmt7Display3fmtB7_"}
!136 = distinct !{!136, !135, !"_RNvXs2_NtCs2vT3jxLudSK_3url4hostNtB5_4HostNtNtCshzWfHUSfYae_4core3fmt7Display3fmtB7_: argument 0"}
!137 = !{i64 -2191599377637715718}
!138 = !{!136}
!139 = !{i64 2430058348158131206}
!140 = !{i64 8931197615066922177}
!141 = !{i64 5698876485547961331}
!142 = distinct !{!142, i1 true, !"_RNvXs_NtNtCshzWfHUSfYae_4core3str6traitseNtNtB8_3cmp9PartialEq2eq"}
!143 = distinct !{!143, !142, !"_RNvXs_NtNtCshzWfHUSfYae_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 1"}
!144 = distinct !{!144, !142, !"_RNvXs_NtNtCshzWfHUSfYae_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 0"}
!145 = !{i64 7949030002946788927}
!146 = !{!144, !143}
end_hunk_1
