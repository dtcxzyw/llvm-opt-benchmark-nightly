Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/miniz_oxide-4bb6cbd72a4a2a9a.miniz_oxide.e11ffb1e97ec6fa2-cgu.2?download=true
inline.NumInlined: 205
inline.NumDeleted: 110
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate6stream7deflate:bb.a
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 65700
  %i.d = load i32, ptr %i.c, align 4, !range !10, !noundef !4
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.not91 = icmp eq i32 %6, 4
  br i1 %.not91, label %.preheader.split.us.preheader, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.preheader
  %i.h = shl nuw nsw i32 %6, 3
  %switch.shiftamt = zext nneg i32 %i.h to i48
  %switch.downshift = lshr i48 17230331904, %switch.shiftamt
  %switch.masked = trunc i48 %switch.downshift to i8
  br label %.preheader.split

.preheader.split.us.preheader:                    ; preds = %.preheader, %bb.e
  %.sroa.022.0.us = phi i64 [ %i.p, %bb.e ], [ 0, %.preheader ]
  %.sroa.019.0.us = phi i64 [ %i.q, %bb.e ], [ 0, %.preheader ]
  %.sroa.7.0.us = phi i64 [ %i.s, %bb.e ], [ %5, %.preheader ] ; 4 uses
  %.sroa.010.0.us = phi ptr [ %i.r, %bb.e ], [ %4, %.preheader ] ; 2 uses
  %.sroa.6.0.us = phi i64 [ %i.m, %bb.e ], [ %3, %.preheader ] ; 4 uses
  %.sroa.0.0.us = phi ptr [ %i.n, %bb.e ], [ %2, %.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core8compress(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(65712) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.us, i64 noundef %.sroa.6.0.us, ptr noalias nofree noundef nonnull %.sroa.010.0.us, i64 noundef %.sroa.7.0.us, i8 noundef 4)
  %i.i = load i64, ptr %i.a, align 8, !noundef !4 ; 5 uses
  %i.j = load i64, ptr %i.f, align 8, !noundef !4 ; 5 uses
  %i.k = load i32, ptr %i.g, align 8, !range !10, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = icmp ugt i64 %i.i, %.sroa.6.0.us
  br i1 %i.l, label %.split.us, label %bb.c, !prof !7

bb.c:                                             ; preds = %.preheader.split.us.preheader
  %i.m = sub nuw nsw i64 %.sroa.6.0.us, %i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us, i64 %i.i
  %i.o = icmp ugt i64 %i.j, %.sroa.7.0.us
  br i1 %i.o, label %.split76.us, label %bb.d, !prof !7

bb.d:                                             ; preds = %bb.c
  %i.p = add i64 %i.i, %.sroa.022.0.us            ; 5 uses
  %i.q = add i64 %i.j, %.sroa.019.0.us            ; 5 uses
  switch i32 %i.k, label %default.unreachable176 [
    i32 -2, label %.split84.us.loopexit249
    i32 -1, label %.split84.us.loopexit
    i32 1, label %.split84.us
    i32 0, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.010.0.us, i64 %i.j
  %i.s = sub nuw nsw i64 %.sroa.7.0.us, %i.j      ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %.split84.us, label %.preheader.split.us.preheader

bb.f:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  store i32 1, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -5, ptr %i.v, align 4
  br label %bb.n

bb.g:                                             ; preds = %bb.b
  %i.w = icmp eq i32 %6, 4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.w, label %bb.p, label %bb.o

.preheader.split:                                 ; preds = %.preheader.split.preheader, %bb.k
  %.sroa.022.0 = phi i64 [ %i.ah, %bb.k ], [ 0, %.preheader.split.preheader ]
  %.sroa.019.0 = phi i64 [ %i.ai, %bb.k ], [ 0, %.preheader.split.preheader ]
  %.sroa.7.0 = phi i64 [ %i.af, %bb.k ], [ %5, %.preheader.split.preheader ] ; 4 uses
  %.sroa.010.0 = phi ptr [ %i.ag, %bb.k ], [ %4, %.preheader.split.preheader ] ; 2 uses
  %.sroa.6.0 = phi i64 [ %i.ac, %bb.k ], [ %3, %.preheader.split.preheader ] ; 4 uses
  %.sroa.0.0 = phi ptr [ %i.ad, %bb.k ], [ %2, %.preheader.split.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core8compress(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(65712) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.6.0, ptr noalias nofree noundef nonnull %.sroa.010.0, i64 noundef %.sroa.7.0, i8 noundef %switch.masked)
  %i.y = load i64, ptr %i.a, align 8, !noundef !4 ; 5 uses
  %i.z = load i64, ptr %i.f, align 8, !noundef !4 ; 5 uses
  %i.aa = load i32, ptr %i.g, align 8, !range !10, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ab = icmp ugt i64 %i.y, %.sroa.6.0
  br i1 %i.ab, label %.split.us, label %bb.h, !prof !7

bb.h:                                             ; preds = %.preheader.split
  %i.ac = sub nuw nsw i64 %.sroa.6.0, %i.y        ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %i.y
  %i.ae = icmp ugt i64 %i.z, %.sroa.7.0
  br i1 %i.ae, label %.split76.us, label %bb.i, !prof !7

.split.us:                                        ; preds = %.preheader.split, %.preheader.split.us.preheader
  %.us-phi = phi i64 [ %i.i, %.preheader.split.us.preheader ], [ %i.y, %.preheader.split ]
  %.us-phi74 = phi i64 [ %.sroa.6.0.us, %.preheader.split.us.preheader ], [ %.sroa.6.0, %.preheader.split ] ; 2 uses
  call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %.us-phi, i64 noundef %.us-phi74, i64 noundef %.us-phi74, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #22
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.af = sub nuw nsw i64 %.sroa.7.0, %i.z        ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.010.0, i64 %i.z
  %i.ah = add i64 %i.y, %.sroa.022.0              ; 8 uses
  %i.ai = add i64 %i.z, %.sroa.019.0              ; 7 uses
  switch i32 %i.aa, label %default.unreachable176 [
    i32 -2, label %.split84.us.loopexit253
    i32 -1, label %.split84.us.loopexit352
    i32 1, label %.split84.us
    i32 0, label %bb.j
  ]

.split76.us:                                      ; preds = %bb.h, %bb.c
  %.us-phi77 = phi i64 [ %i.j, %bb.c ], [ %i.z, %bb.h ]
  %.us-phi78 = phi i64 [ %.sroa.7.0.us, %bb.c ], [ %.sroa.7.0, %bb.h ] ; 2 uses
  call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %.us-phi77, i64 noundef %.us-phi78, i64 noundef %.us-phi78, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #22
  unreachable

default.unreachable176:                           ; preds = %bb.i, %bb.d
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.aj = icmp eq i64 %i.af, 0
  br i1 %i.aj, label %.split84.us, label %bb.k

.split84.us.loopexit249:                          ; preds = %bb.d
  br label %.split84.us

.split84.us.loopexit253:                          ; preds = %bb.i
  br label %.split84.us

.split84.us.loopexit:                             ; preds = %bb.d
  br label %.split84.us

.split84.us.loopexit352:                          ; preds = %bb.i
  br label %.split84.us

.split84.us:                                      ; preds = %bb.j, %bb.e, %bb.i, %bb.d, %.split84.us.loopexit352, %.split84.us.loopexit, %.split84.us.loopexit253, %.split84.us.loopexit249, %bb.m, %bb.l
  %i.ak = phi i64 [ %i.ah, %bb.m ], [ %i.p, %bb.d ], [ %i.ah, %.split84.us.loopexit253 ], [ %i.ah, %bb.l ], [ %i.p, %.split84.us.loopexit249 ], [ %i.p, %.split84.us.loopexit ], [ %i.ah, %bb.i ], [ %i.p, %bb.e ], [ %i.ah, %bb.j ], [ %i.ah, %.split84.us.loopexit352 ]
  %i.al = phi i64 [ 0, %bb.m ], [ %i.q, %bb.d ], [ %i.ai, %.split84.us.loopexit253 ], [ %i.ai, %bb.l ], [ %i.q, %.split84.us.loopexit249 ], [ %i.q, %.split84.us.loopexit ], [ %i.ai, %bb.i ], [ %i.q, %bb.e ], [ %i.ai, %bb.j ], [ %i.ai, %.split84.us.loopexit352 ]
  %.sroa.726.0 = phi i32 [ %spec.select, %bb.m ], [ 1, %bb.d ], [ -10000, %.split84.us.loopexit253 ], [ 0, %bb.l ], [ -10000, %.split84.us.loopexit249 ], [ -2, %.split84.us.loopexit ], [ 1, %bb.i ], [ 0, %bb.e ], [ 0, %bb.j ], [ -2, %.split84.us.loopexit352 ]
  %.sroa.025.0 = phi i32 [ %spec.select36, %bb.m ], [ 0, %bb.d ], [ 1, %.split84.us.loopexit253 ], [ 0, %bb.l ], [ 1, %.split84.us.loopexit249 ], [ 1, %.split84.us.loopexit ], [ 0, %bb.i ], [ 0, %bb.e ], [ 0, %bb.j ], [ 1, %.split84.us.loopexit352 ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ak, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.al, ptr %i.an, align 8
  store i32 %.sroa.025.0, ptr %0, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.726.0, ptr %i.ao, align 4
  br label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ap = icmp eq i64 %i.ac, 0
  br i1 %i.ap, label %bb.l, label %.preheader.split

bb.l:                                             ; preds = %bb.k
  %.not = icmp eq i64 %i.ai, 0
  br i1 %.not, label %bb.m, label %.split84.us

bb.m:                                             ; preds = %bb.l
  %i.aq = icmp eq i64 %i.ah, 0
  %i.ar = icmp eq i32 %6, 0
  %or.cond3.not = select i1 %i.ar, i1 %i.aq, i1 false ; 2 uses
  %spec.select = select i1 %or.cond3.not, i32 -5, i32 0
  %spec.select36 = zext i1 %or.cond3.not to i32
  br label %.split84.us

bb.n:                                             ; preds = %bb.o, %bb.p, %.split84.us, %bb.f
  ret void

bb.o:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  store i32 1, ptr %0, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -5, ptr %i.as, align 4
  br label %bb.n

bb.p:                                             ; preds = %bb.g
  store i32 0, ptr %0, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.at, align 4
  br label %bb.n
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate6stream7inflate(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(43296) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef nonnull %4, i64 noundef range(i64 0, -9223372036854775808) %5, i32 noundef range(i32 0, 6) %6) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 22 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = icmp eq i32 %6, 3
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 43289
  %.val24 = load i8, ptr %i.d, align 1, !range !188, !noundef !4 ; 2 uses
  %i.e = icmp eq i8 %.val24, 0
  %. = select i1 %i.e, i32 8, i32 64
  %i.f = icmp samesign ult i8 %.val24, 2
  %i.g = zext i1 %i.f to i32
  %.sroa.0.1 = or disjoint i32 %., %i.g           ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 43290 ; 2 uses
  %i.i = load i8, ptr %i.h, align 2, !range !6, !noundef !4
  %i.j = trunc nuw i8 %i.i to i1
  store i8 0, ptr %i.h, align 2
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 43288 ; 8 uses
  %.val32 = load i8, ptr %i.k, align 8, !range !11, !noundef !4 ; 3 uses
  %i.l = icmp eq i8 %.val32, -4
  br i1 %i.l, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false), !alias.scope !189
  store i32 1, ptr %0, align 8, !alias.scope !189
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -2, ptr %i.n, align 4, !alias.scope !189
  br label %bb.af

bb.d:                                             ; preds = %bb.b
  %i.o = icmp slt i8 %.val32, 0
  br i1 %i.o, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false), !alias.scope !190
  store i32 1, ptr %0, align 8, !alias.scope !190
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -5, ptr %i.q, align 4, !alias.scope !190
  br label %bb.af

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 43291 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !range !6, !noundef !4 ; 2 uses
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = icmp ne i32 %6, 4                        ; 4 uses
  %or.cond57.not = and i1 %i.u, %i.t
  br i1 %or.cond57.not, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false), !alias.scope !191
  store i32 1, ptr %0, align 8, !alias.scope !191
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -3, ptr %i.w, align 4, !alias.scope !191
  br label %bb.af

bb.h:                                             ; preds = %bb.f
  %.not = xor i1 %i.u, true                       ; 2 uses
  %i.x = zext i1 %.not to i8
  %i.y = or i8 %i.s, %i.x
  store i8 %i.y, ptr %i.r, align 1
  %i.z = and i1 %.not, %i.j
  br i1 %i.z, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false), !alias.scope !192
  store i32 1, ptr %0, align 8, !alias.scope !192
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -2, ptr %i.ab, align 4, !alias.scope !192
  br label %bb.af

bb.j:                                             ; preds = %bb.h
  %i.ac = or disjoint i32 %.sroa.0.1, 2
  %spec.select = select i1 %i.u, i32 %i.ac, i32 %.sroa.0.1 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32776 ; 10 uses
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !4 ; 4 uses
  %i.af = icmp eq i64 %i.ae, 0
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 32768 ; 11 uses
  br i1 %i.af, label %bb.l, label %bb.ad

bb.k:                                             ; preds = %bb.h
  %i.ag = or disjoint i32 %.sroa.0.1, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32784
  call void @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompress(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(10504) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull %4, i64 noundef %5, i64 noundef 0, i32 noundef %i.ag)
  %i.ai = load i64, ptr %i.b, align 8, !noundef !4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !4
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.am = load i8, ptr %i.al, align 8, !range !11, !noundef !4 ; 4 uses
  store i8 %i.am, ptr %i.k, align 8
  %i.an = icmp eq i8 %i.am, -4
  br i1 %i.an, label %bb.aj, label %bb.ag

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32784 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !194
  %i.ap = load i64, ptr %7, align 8, !alias.scope !193, !noundef !4
  call void @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompress(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(10504) %i.ao, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(43296) %1, i64 noundef 32768, i64 noundef %i.ap, i32 noundef range(i32 8, 68) %spec.select), !noalias !195
  %i.aq = load i64, ptr %i.a, align 8, !noalias !194, !noundef !4 ; 15 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 5 uses
  %i.as = load i64, ptr %i.ar, align 8, !noalias !194, !noundef !4 ; 7 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  %i.au = load i8, ptr %i.at, align 8, !range !11, !noalias !194, !noundef !4 ; 6 uses
  store i8 %i.au, ptr %i.k, align 8, !alias.scope !193
  %i.av = icmp ugt i64 %i.aq, %3
  br i1 %i.av, label %._crit_edge.i, label %.lr.ph.i, !prof !196

.lr.ph.i:                                         ; preds = %bb.l
  %i.aw = icmp eq i64 %3, 0                       ; 2 uses
  br i1 %i.u, label %.lr.ph.i.split, label %.lr.ph.i.split.us

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i
  br i1 %i.aw, label %.lr.ph.i.split.us.split.peel, label %.lr.ph.i.split.us.split.us

.lr.ph.i.split.us.split.peel:                     ; preds = %.lr.ph.i.split.us
  %i.ax = getelementptr i8, ptr %2, i64 %i.aq     ; 2 uses
  store i64 %i.as, ptr %i.ad, align 8, !alias.scope !193
  %..i.i.i.us.peel = tail call noundef i64 @llvm.umin.i64(i64 %5, i64 %i.as) ; 11 uses
  %i.ay = load i64, ptr %7, align 8, !alias.scope !197, !noundef !4 ; 4 uses
  %i.az = add i64 %i.ay, %..i.i.i.us.peel         ; 4 uses
  %i.ba = icmp uge i64 %i.az, %i.ay
  %i.bb = icmp ult i64 %i.az, 32769
  %or.cond.i.i.us.peel = and i1 %i.ba, %i.bb
  br i1 %or.cond.i.i.us.peel, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate6stream13push_dict_out.exit.i.us.peel, label %.split.us, !prof !198

_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate6stream13push_dict_out.exit.i.us.peel: ; preds = %.lr.ph.i.split.us.split.peel
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 %i.ay
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %4, ptr nonnull readonly align 1 %i.bc, i64 range(i64 0, -9223372036854775808) %..i.i.i.us.peel, i1 false), !alias.scope !199, !noalias !200
  %i.bd = sub nuw nsw i64 %5, %..i.i.i.us.peel
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 %..i.i.i.us.peel
  %i.bf = sub nuw i64 %i.as, %..i.i.i.us.peel
  store i64 %i.bf, ptr %i.ad, align 8, !alias.scope !197
  %i.bg = and i64 %i.az, 32767                    ; 2 uses
  store i64 %i.bg, ptr %7, align 8, !alias.scope !197
  %i.bh = icmp eq i8 %i.au, -4
  br i1 %i.bh, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate6stream12inflate_loop.exit, label %bb.m

bb.m:                                             ; preds = %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate6stream13push_dict_out.exit.i.us.peel
  %i.bi = icmp slt i8 %i.au, 0
  br i1 %i.bi, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate6stream12inflate_loop.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  switch i8 %i.au, label %bb.o [
    i8 1, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate6stream12inflate_loop.exit
    i8 0, label %.split99.us
  ]

bb.o:                                             ; preds = %bb.n
  %.not.i.us.peel = icmp ugt i64 %5, %i.as
  br i1 %.not.i.us.peel, label %bb.p, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate6stream12inflate_loop.exit

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !194
  call void @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompress(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(10504) %i.ao, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ax, i64 noundef 0, ptr noalias nofree noundef nonnull align 8 dereferenceable(43296) %1, i64 noundef 32768, i64 noundef %i.bg, i32 noundef range(i32 8, 68) %spec.select), !noalias !195
  %i.bj = load i64, ptr %i.a, align 8, !noalias !194, !noundef !4 ; 2 uses
  %i.bk = load i64, ptr %i.ar, align 8, !noalias !194, !noundef !4
  %i.bl = load i8, ptr %i.at, align 8, !range !11, !noalias !194, !noundef !4 ; 2 uses
  store i8 %i.bl, ptr %i.k, align 8, !alias.scope !193
  %.not246.peel = icmp eq i64 %i.bj, 0
  br i1 %.not246.peel, label %.lr.ph.i.split.us.split, label %._crit_edge.i, !prof !201

.lr.ph.i.split.us.split.us:                       ; preds = %.lr.ph.i.split.us, %bb.t
  %i.bm = phi i64 [ %i.cd, %bb.t ], [ %5, %.lr.ph.i.split.us ] ; 4 uses
  %i.bn = phi i8 [ %i.cn, %bb.t ], [ %i.au, %.lr.ph.i.split.us ] ; 3 uses
  %i.bo = phi i64 [ %i.cm, %bb.t ], [ %i.as, %.lr.ph.i.split.us ] ; 5 uses
  %i.bp = phi i64 [ %i.cl, %bb.t ], [ %i.aq, %.lr.ph.i.split.us ] ; 3 uses
  %i.bq = phi ptr [ %i.bw, %bb.t ], [ %2, %.lr.ph.i.split.us ]
  %i.br = phi i64 [ %i.bv, %bb.t ], [ %3, %.lr.ph.i.split.us ]
  %i.bs = phi i64 [ %i.bx, %bb.t ], [ 0, %.lr.ph.i.split.us ]
  %i.bt = phi ptr [ %i.ce, %bb.t ], [ %4, %.lr.ph.i.split.us ] ; 2 uses
  %i.bu = phi i64 [ %i.ch, %bb.t ], [ 0, %.lr.ph.i.split.us ]
  %i.bv = sub nuw nsw i64 %i.br, %i.bp            ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bp ; 2 uses
  %i.bx = add i64 %i.bs, %i.bp                    ; 5 uses
  store i64 %i.bo, ptr %i.ad, align 8, !alias.scope !193
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202)
  %..i.i.i.us.us = tail call noundef i64 @llvm.umin.i64(i64 %i.bm, i64 %i.bo) ; 6 uses
  %i.by = load i64, ptr %7, align 8, !alias.scope !203, !noundef !4 ; 4 uses
  %i.bz = add i64 %i.by, %..i.i.i.us.us           ; 4 uses
  %i.ca = icmp uge i64 %i.bz, %i.by
  %i.cb = icmp ult i64 %i.bz, 32769
  %or.cond.i.i.us.us = and i1 %i.ca, %i.cb
  br i1 %or.cond.i.i.us.us, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate6stream13push_dict_out.exit.i.us.us, label %.split.us, !prof !198

_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate6stream13push_dict_out.exit.i.us.us: ; preds = %.lr.ph.i.split.us.split.us
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 %i.by
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bt, ptr nonnull readonly align 1 %i.cc, i64 range(i64 0, -9223372036854775808) %..i.i.i.us.us, i1 false), !alias.scope !199, !noalias !200
  %i.cd = sub nuw nsw i64 %i.bm, %..i.i.i.us.us
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bt, i64 %..i.i.i.us.us
  %i.cf = sub nuw i64 %i.bo, %..i.i.i.us.us
  store i64 %i.cf, ptr %i.ad, align 8, !alias.scope !203
  %i.cg = and i64 %i.bz, 32767                    ; 2 uses
  store i64 %i.cg, ptr %7, align 8, !alias.scope !203
  %i.ch = add i64 %i.bu, %..i.i.i.us.us           ; 5 uses
  %i.ci = icmp eq i8 %i.bn, -4
  br i1 %i.ci, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate6stream12inflate_loop.exit, label %bb.q

bb.q:                                             ; preds = %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate6stream13push_dict_out.exit.i.us.us
  %i.cj = icmp slt i8 %i.bn, 0
  br i1 %i.cj, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate6stream12inflate_loop.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ck = icmp eq i8 %i.bn, 0
  br i1 %i.ck, label %.split99.us, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not.i.us.us = icmp ugt i64 %i.bm, %i.bo
  br i1 %.not.i.us.us, label %bb.t, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate6stream12inflate_loop.exit

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !194
  call void @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompress(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(10504) %i.ao, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bw, i64 noundef %i.bv, ptr noalias nofree noundef nonnull align 8 dereferenceable(43296) %1, i64 noundef 32768, i64 noundef %i.cg, i32 noundef range(i32 8, 68) %spec.select), !noalias !195
  %i.cl = load i64, ptr %i.a, align 8, !noalias !194, !noundef !4 ; 3 uses
  %i.cm = load i64, ptr %i.ar, align 8, !noalias !194, !noundef !4
  %i.cn = load i8, ptr %i.at, align 8, !range !11, !noalias !194, !noundef !4 ; 2 uses
  store i8 %i.cn, ptr %i.k, align 8, !alias.scope !193
  %i.co = icmp ugt i64 %i.cl, %i.bv
  br i1 %i.co, label %._crit_edge.i, label %.lr.ph.i.split.us.split.us, !prof !204

.lr.ph.i.split.us.split:                          ; preds = %bb.p, %bb.x
  %i.cp = phi i64 [ %i.cz, %bb.x ], [ %i.bd, %bb.p ] ; 4 uses
  %i.cq = phi i8 [ %i.di, %bb.x ], [ %i.bl, %bb.p ] ; 3 uses
  %i.cr = phi i64 [ %i.dh, %bb.x ], [ %i.bk, %bb.p ] ; 5 uses
  %i.cs = phi ptr [ %i.da, %bb.x ], [ %i.be, %bb.p ] ; 2 uses
  %i.ct = phi i64 [ %i.dd, %bb.x ], [ %..i.i.i.us.peel, %bb.p ]
  store i64 %i.cr, ptr %i.ad, align 8, !alias.scope !193
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202)
  %..i.i.i.us = tail call noundef i64 @llvm.umin.i64(i64 %i.cp, i64 %i.cr) ; 6 uses
  %i.cu = load i64, ptr %7, align 8, !alias.scope !203, !noundef !4 ; 4 uses
  %i.cv = add i64 %i.cu, %..i.i.i.us              ; 4 uses
  %i.cw = icmp uge i64 %i.cv, %i.cu
  %i.cx = icmp ult i64 %i.cv, 32769
  %or.cond.i.i.us = and i1 %i.cw, %i.cx
  br i1 %or.cond.i.i.us, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate6stream13push_dict_out.exit.i.us, label %.split.us, !prof !198

_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate6stream13push_dict_out.exit.i.us: ; preds = %.lr.ph.i.split.us.split
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 %i.cu
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cs, ptr nonnull readonly align 1 %i.cy, i64 range(i64 0, -9223372036854775808) %..i.i.i.us, i1 false), !alias.scope !199, !noalias !200
  %i.cz = sub nuw nsw i64 %i.cp, %..i.i.i.us
  %i.da = getelementptr inbounds nuw i8, ptr %i.cs, i64 %..i.i.i.us
  %i.db = sub nuw i64 %i.cr, %..i.i.i.us
  store i64 %i.db, ptr %i.ad, align 8, !alias.scope !203
  %i.dc = and i64 %i.cv, 32767                    ; 2 uses
  store i64 %i.dc, ptr %7, align 8, !alias.scope !203
  %i.dd = add i64 %i.ct, %..i.i.i.us              ; 6 uses
  %i.de = icmp eq i8 %i.cq, -4
  br i1 %i.de, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate6stream12inflate_loop.exit, label %bb.u

bb.u:                                             ; preds = %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate6stream13push_dict_out.exit.i.us
  %i.df = icmp slt i8 %i.cq, 0
  br i1 %i.df, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate6stream12inflate_loop.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  switch i8 %i.cq, label %bb.w [
    i8 1, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate6stream12inflate_loop.exit
    i8 0, label %.split99.us
  ]

bb.w:                                             ; preds = %bb.v
  %.not.i.us = icmp ugt i64 %i.cp, %i.cr
  br i1 %.not.i.us, label %bb.x, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate6stream12inflate_loop.exit

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !194
  call void @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompress(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(10504) %i.ao, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ax, i64 noundef 0, ptr noalias nofree noundef nonnull align 8 dereferenceable(43296) %1, i64 noundef 32768, i64 noundef %i.dc, i32 noundef range(i32 8, 68) %spec.select), !noalias !195
  %i.dg = load i64, ptr %i.a, align 8, !noalias !194, !noundef !4 ; 2 uses
  %i.dh = load i64, ptr %i.ar, align 8, !noalias !194, !noundef !4
  %i.di = load i8, ptr %i.at, align 8, !range !11, !noalias !194, !noundef !4 ; 2 uses
  store i8 %i.di, ptr %i.k, align 8, !alias.scope !193
  %.not246 = icmp eq i64 %i.dg, 0
  br i1 %.not246, label %.lr.ph.i.split.us.split, label %._crit_edge.i, !prof !201, !llvm.loop !181

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %bb.ac
  %i.dj = phi i64 [ %i.ea, %bb.ac ], [ %5, %.lr.ph.i ] ; 4 uses
  %i.dk = phi i8 [ %i.ep, %bb.ac ], [ %i.au, %.lr.ph.i ] ; 4 uses
  %i.dl = phi i64 [ %i.eo, %bb.ac ], [ %i.as, %.lr.ph.i ] ; 5 uses
  %i.dm = phi i64 [ %i.en, %bb.ac ], [ %i.aq, %.lr.ph.i ] ; 4 uses
  %i.dn = phi ptr [ %i.dt, %bb.ac ], [ %2, %.lr.ph.i ]
  %i.do = phi i64 [ %i.ds, %bb.ac ], [ %3, %.lr.ph.i ] ; 2 uses
  %i.dp = phi i64 [ %i.du, %bb.ac ], [ 0, %.lr.ph.i ]
  %i.dq = phi ptr [ %i.eb, %bb.ac ], [ %4, %.lr.ph.i ] ; 2 uses
  %i.dr = phi i64 [ %i.ee, %bb.ac ], [ 0, %.lr.ph.i ]
  %i.ds = sub nuw nsw i64 %i.do, %i.dm            ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dm ; 2 uses
  %i.du = add i64 %i.dp, %i.dm                    ; 5 uses
  store i64 %i.dl, ptr %i.ad, align 8, !alias.scope !193
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202)
  %..i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.dj, i64 %i.dl) ; 6 uses
  %i.dv = load i64, ptr %7, align 8, !alias.scope !203, !noundef !4 ; 4 uses
  %i.dw = add i64 %i.dv, %..i.i.i                 ; 4 uses
  %i.dx = icmp uge i64 %i.dw, %i.dv
  %i.dy = icmp ult i64 %i.dw, 32769
  %or.cond.i.i = and i1 %i.dx, %i.dy
  br i1 %or.cond.i.i, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate6stream13push_dict_out.exit.i, label %.split.us, !prof !198

.split.us:                                        ; preds = %.lr.ph.i.split.us.split.us, %.lr.ph.i.split.us.split.peel, %.lr.ph.i.split.us.split, %.lr.ph.i.split
  %.us-phi = phi i64 [ %i.cu, %.lr.ph.i.split.us.split ], [ %i.dv, %.lr.ph.i.split ], [ %i.ay, %.lr.ph.i.split.us.split.peel ], [ %i.by, %.lr.ph.i.split.us.split.us ]
  %.us-phi94 = phi i64 [ %i.cv, %.lr.ph.i.split.us.split ], [ %i.dw, %.lr.ph.i.split ], [ %i.az, %.lr.ph.i.split.us.split.peel ], [ %i.bz, %.lr.ph.i.split.us.split.us ]
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %.us-phi, i64 noundef %.us-phi94, i64 noundef 32768, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #22, !noalias !207
  unreachable

_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate6stream13push_dict_out.exit.i: ; preds = %.lr.ph.i.split
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 %i.dv
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dq, ptr nonnull readonly align 1 %i.dz, i64 range(i64 0, -9223372036854775808) %..i.i.i, i1 false), !alias.scope !199, !noalias !200
  %i.ea = sub nuw nsw i64 %i.dj, %..i.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dq, i64 %..i.i.i
  %i.ec = sub nuw i64 %i.dl, %..i.i.i
  store i64 %i.ec, ptr %i.ad, align 8, !alias.scope !203
  %i.ed = and i64 %i.dw, 32767                    ; 2 uses
  store i64 %i.ed, ptr %7, align 8, !alias.scope !203
  %i.ee = add i64 %i.dr, %..i.i.i                 ; 5 uses
  %i.ef = icmp eq i8 %i.dk, -4
  br i1 %i.ef, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate6stream12inflate_loop.exit, label %bb.y

._crit_edge.i:                                    ; preds = %bb.t, %bb.p, %bb.x, %bb.ac, %bb.l
  %.lcssa52.i = phi i64 [ %3, %bb.l ], [ 0, %bb.p ], [ %i.ds, %bb.ac ], [ 0, %bb.x ], [ %i.bv, %bb.t ] ; 2 uses
  %.lcssa47.i = phi i64 [ %i.aq, %bb.l ], [ %i.dg, %bb.x ], [ %i.en, %bb.ac ], [ %i.bj, %bb.p ], [ %i.cl, %bb.t ]
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %.lcssa47.i, i64 noundef %.lcssa52.i, i64 noundef %.lcssa52.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #22, !noalias !195
  unreachable

bb.y:                                             ; preds = %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate6stream13push_dict_out.exit.i
  %i.eg = icmp slt i8 %i.dk, 0
  br i1 %i.eg, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate6stream12inflate_loop.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eh = icmp eq i8 %i.dk, 1
  %or.cond.i = and i1 %i.aw, %i.eh
  br i1 %or.cond.i, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate6stream12inflate_loop.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ei = icmp ne i64 %i.do, %i.dm
  %i.ej = icmp ne i8 %i.dk, 0                     ; 2 uses
  %i.ek = icmp ugt i64 %i.dj, %i.dl
  %i.el = and i1 %i.ek, %i.ei
  %or.cond37.i = and i1 %i.ej, %i.el
  br i1 %or.cond37.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.not108.i = xor i1 %i.ej, true
  %i.em = icmp ule i64 %i.dl, %i.dj
  %or.cond6.i = and i1 %i.em, %.not108.i
  %..i = zext i1 %or.cond6.i to i32
  br label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate6stream12inflate_loop.exit

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !194
  call void @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompress(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(10504) %i.ao, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dt, i64 noundef %i.ds, ptr noalias nofree noundef nonnull align 8 dereferenceable(43296) %1, i64 noundef 32768, i64 noundef %i.ed, i32 noundef range(i32 8, 68) %spec.select), !noalias !195
  %i.en = load i64, ptr %i.a, align 8, !noalias !194, !noundef !4 ; 3 uses
  %i.eo = load i64, ptr %i.ar, align 8, !noalias !194, !noundef !4
  %i.ep = load i8, ptr %i.at, align 8, !range !11, !noalias !194, !noundef !4 ; 2 uses
  store i8 %i.ep, ptr %i.k, align 8, !alias.scope !193
  %i.eq = icmp ugt i64 %i.en, %i.ds
  br i1 %i.eq, label %._crit_edge.i, label %.lr.ph.i.split, !prof !204

.split99.us:                                      ; preds = %bb.r, %bb.n, %bb.v
  %.us-phi118 = phi i64 [ %i.dd, %bb.v ], [ %..i.i.i.us.peel, %bb.n ], [ %i.ch, %bb.r ]
  %.us-phi119 = phi i64 [ %i.cp, %bb.v ], [ %5, %bb.n ], [ %i.bm, %bb.r ]
  %.us-phi120 = phi i64 [ %i.cr, %bb.v ], [ %i.as, %bb.n ], [ %i.bo, %bb.r ]
  %.us-phi121 = phi i64 [ %i.aq, %bb.n ], [ %i.aq, %bb.v ], [ %i.bx, %bb.r ]
  %.not36.i = icmp ugt i64 %.us-phi120, %.us-phi119 ; 2 uses
  %.14.i = select i1 %.not36.i, i32 -5, i32 1
  %.15.i = zext i1 %.not36.i to i32
  br label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate6stream12inflate_loop.exit

_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate6stream12inflate_loop.exit: ; preds = %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate6stream13push_dict_out.exit.i.us.us, %bb.q, %bb.s, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate6stream13push_dict_out.exit.i.us.peel, %bb.m, %bb.n, %bb.o, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate6stream13push_dict_out.exit.i.us, %bb.u, %bb.w, %bb.v, %bb.z, %bb.y, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate6stream13push_dict_out.exit.i, %bb.ab, %.split99.us
  %i.er = phi i64 [ %i.ee, %bb.ab ], [ %.us-phi118, %.split99.us ], [ %i.dd, %bb.v ], [ %i.ee, %bb.z ], [ %i.ee, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate6stream13push_dict_out.exit.i ], [ %i.ee, %bb.y ], [ %..i.i.i.us.peel, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate6stream13push_dict_out.exit.i.us.peel ], [ %..i.i.i.us.peel, %bb.m ], [ %..i.i.i.us.peel, %bb.n ], [ %..i.i.i.us.peel, %bb.o ], [ %i.dd, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate6stream13push_dict_out.exit.i.us ], [ %i.dd, %bb.u ], [ %i.dd, %bb.w ], [ %i.ch, %bb.s ], [ %i.ch, %bb.q ], [ %i.ch, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate6stream13push_dict_out.exit.i.us.us ]
  %i.es = phi i64 [ %i.du, %bb.ab ], [ %.us-phi121, %.split99.us ], [ %i.aq, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate6stream13push_dict_out.exit.i.us.peel ], [ %i.du, %bb.z ], [ %i.du, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate6stream13push_dict_out.exit.i ], [ %i.du, %bb.y ], [ %i.aq, %bb.v ], [ %i.aq, %bb.w ], [ %i.aq, %bb.u ], [ %i.aq, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate6stream13push_dict_out.exit.i.us ], [ %i.aq, %bb.o ], [ %i.aq, %bb.n ], [ %i.aq, %bb.m ], [ %i.bx, %bb.s ], [ %i.bx, %bb.q ], [ %i.bx, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate6stream13push_dict_out.exit.i.us.us ]
  %.sroa.9.0.i = phi i32 [ %..i, %bb.ab ], [ %.14.i, %.split99.us ], [ -3, %bb.u ], [ -5, %bb.z ], [ -3, %bb.y ], [ -5, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate6stream13push_dict_out.exit.i ], [ -5, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate6stream13push_dict_out.exit.i.us.peel ], [ -3, %bb.m ], [ -5, %bb.n ], [ -5, %bb.o ], [ -5, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate6stream13push_dict_out.exit.i.us ], [ -5, %bb.v ], [ -5, %bb.w ], [ -5, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate6stream13push_dict_out.exit.i.us.us ], [ -3, %bb.q ], [ -5, %bb.s ]
  %.sroa.0.0.i = phi i32 [ 0, %bb.ab ], [ %.15.i, %.split99.us ], [ 1, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate6stream13push_dict_out.exit.i.us.peel ], [ 1, %bb.z ], [ 1, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate6stream13push_dict_out.exit.i ], [ 1, %bb.y ], [ 1, %bb.v ], [ 1, %bb.w ], [ 1, %bb.u ], [ 1, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate6stream13push_dict_out.exit.i.us ], [ 1, %bb.o ], [ 1, %bb.n ], [ 1, %bb.m ], [ 1, %bb.s ], [ 1, %bb.q ], [ 1, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate6stream13push_dict_out.exit.i.us.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !194
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.es, ptr %i.et, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.er, ptr %i.eu, align 8
  store i32 %.sroa.0.0.i, ptr %0, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.9.0.i, ptr %i.ev, align 4
  br label %bb.af

bb.ad:                                            ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %5, i64 %i.ae) ; 4 uses
  %i.ew = load i64, ptr %7, align 8, !alias.scope !208, !noundef !4 ; 4 uses
  %i.ex = add i64 %i.ew, %..i.i                   ; 4 uses
  %i.ey = icmp uge i64 %i.ex, %i.ew
  %i.ez = icmp ult i64 %i.ex, 32769
  %or.cond.i34 = and i1 %i.ey, %i.ez
  br i1 %or.cond.i34, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate6stream13push_dict_out.exit, label %bb.ae, !prof !198

bb.ae:                                            ; preds = %bb.ad
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.ew, i64 noundef %i.ex, i64 noundef 32768, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #22, !noalias !209
  unreachable

_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate6stream13push_dict_out.exit: ; preds = %bb.ad
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 %i.ew
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %4, ptr nonnull readonly align 1 %i.fa, i64 range(i64 0, -9223372036854775808) %..i.i, i1 false), !alias.scope !210, !noalias !211
  %i.fb = sub nuw i64 %i.ae, %..i.i
  store i64 %i.fb, ptr %i.ad, align 8, !alias.scope !208
  %i.fc = and i64 %i.ex, 32767
  store i64 %i.fc, ptr %7, align 8, !alias.scope !208
  %i.fd = icmp eq i8 %.val32, 0
  %i.fe = icmp ule i64 %i.ae, %5
  %or.cond = and i1 %i.fd, %i.fe
  %.10 = zext i1 %or.cond to i32
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ff, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %..i.i, ptr %i.fg, align 8
  store i32 0, ptr %0, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.10, ptr %i.fh, align 4
  br label %bb.af

bb.af:                                            ; preds = %bb.c, %bb.aj, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate6stream13push_dict_out.exit, %bb.i, %bb.g, %bb.e, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate6stream12inflate_loop.exit
  ret void

bb.ag:                                            ; preds = %bb.k
  %i.fi = icmp slt i8 %i.am, 0
  br i1 %i.fi, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fj = icmp eq i8 %i.am, 0
  br i1 %i.fj, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i8 -1, ptr %i.k, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ag, %bb.k, %bb.ai
  %i.fk = phi <2 x i32> [ <i32 1, i32 -3>, %bb.ag ], [ <i32 1, i32 -5>, %bb.k ], [ <i32 1, i32 -5>, %bb.ai ], [ <i32 0, i32 1>, %bb.ah ]
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ai, ptr %i.fl, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ak, ptr %i.fm, align 8
  store <2 x i32> %i.fk, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.af
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i32 @_RNvXs11_NtCshzWfHUSfYae_4core5arrayAhj4_NtNtB8_7default7Default7defaultCsjkkKzr5dxZe_11miniz_oxide() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i16 @_RNvXs13_NtCshzWfHUSfYae_4core5arrayAhj2_NtNtB8_7default7Default7defaultCsjkkKzr5dxZe_11miniz_oxide() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  ret i16 0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRuNtB6_5Debug3fmtCsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter3pad(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 2)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write, inaccessiblemem: write) uwtable
define hidden void @_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1o_E3newCsjkkKzr5dxZe_11miniz_oxide(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub nuw i64 %i.a, %i.b
  %i.d = lshr exact i64 %i.c, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  %i.e = ptrtoint ptr %4 to i64
  %i.f = ptrtoint ptr %3 to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 2
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.h, i64 %i.d)
  store ptr %1, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %..i, ptr %i.m, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtCsjkkKzr5dxZe_11miniz_oxide7inflateNtB4_15DecompressErrorNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !range !11, !noundef !4
  switch i8 %i.b, label %default.unreachable1 [
    i8 -4, label %bb.g
    i8 -3, label %bb.b
    i8 -2, label %bb.c
    i8 -1, label %bb.d
    i8 0, label %bb.e
    i8 1, label %bb.g
    i8 2, label %bb.f
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.10.0 = phi i64 [ 40, %bb.f ], [ 26, %bb.b ], [ 25, %bb.c ], [ 18, %bb.d ], [ 0, %bb.e ], [ 22, %bb.a ], [ 22, %bb.a ]
  %.sroa.0.0 = phi ptr [ @23, %bb.f ], [ @20, %bb.b ], [ @21, %bb.c ], [ @22, %bb.d ], [ inttoptr (i64 1 to ptr), %bb.e ], [ @19, %bb.a ], [ @19, %bb.a ]
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.10.0)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate6bufferNtB4_11HashBuffersNtNtCshzWfHUSfYae_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !224
  %i.a = tail call noundef dereferenceable_or_null(33026) ptr @_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) 33026, i64 noundef range(i64 1, 3) 1) #21, !noalias !224 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxAhj8102_EIBI_ShEE6unwrapCsjkkKzr5dxZe_11miniz_oxide.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef 1, i64 33026) #23, !noalias !225
  unreachable

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxAhj8102_EIBI_ShEE6unwrapCsjkkKzr5dxZe_11miniz_oxide.exit: ; preds = %bb.a
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !226
  %i.c = tail call noundef align 2 dereferenceable_or_null(65536) ptr @_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) 65536, i64 noundef range(i64 1, 3) 2) #21, !noalias !226 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxAhj8102_EIBI_ShEE6unwrapCsjkkKzr5dxZe_11miniz_oxide.exit
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef 2, i64 65536) #23
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.e:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxAhj8102_EIBI_ShEE6unwrapCsjkkKzr5dxZe_11miniz_oxide.exit
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !227
  %i.f = tail call noundef align 2 dereferenceable_or_null(65536) ptr @_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) 65536, i64 noundef range(i64 1, 3) 2) #21, !noalias !227 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef 2, i64 65536) #23
          to label %.noexc21 unwind label %.body

.noexc21:                                         ; preds = %bb.f
  unreachable

.body:                                            ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef 65536, i64 noundef 2) #21
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store ptr %i.a, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %i.j, align 8
  ret void

bb.h:                                             ; preds = %.body, %bb.d
  %.pn = phi { ptr, i32 } [ %i.h, %.body ], [ %i.e, %bb.d ]
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 33026, i64 noundef 1) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind
declare i32 @rust_eh_personality(...) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10
end_hunk_0
