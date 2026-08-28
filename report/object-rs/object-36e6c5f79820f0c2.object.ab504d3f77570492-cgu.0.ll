Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/object-rs/original/object-36e6c5f79820f0c2.object.ab504d3f77570492-cgu.0?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_RNvNvNtNtNtCs906JEEYSgkH_6memchr4arch6x86_646memchr10memchr_raw2FN = external local_unnamed_addr global { { { ptr } } }
@0 = private unnamed_addr constant [22 x i8] c"Invalid resource entry", align 1
@1 = private unnamed_addr constant [40 x i8] c"Invalid COFF section name base-64 offset", align 1
@2 = private unnamed_addr constant [40 x i8] c"Invalid COFF section name base-10 offset", align 1
@3 = private unnamed_addr constant [32 x i8] c"Invalid data dir virtual address", align 1
@4 = private unnamed_addr constant [21 x i8] c"Invalid data dir size", align 1
@5 = private unnamed_addr constant [6 x i8] c"\C1 \00\80`\00", align 1
@6 = private unnamed_addr constant [1 x i8] c"0", align 1
@7 = private unnamed_addr constant [5 x i8] c"\020x\C0\00", align 1
@8 = private unnamed_addr constant [8 x i8] c"\C0\01.\C0\01.\C0\00", align 1

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtNtCseHTIzroA4w0_6object4read2pe8resourceNtNtBb_2pe27ImageResourceDirectoryEntry4data(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 24)) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.03.0.copyload = load i32, ptr %i.c, align 1 ; 3 uses
  %.not = icmp sgt i32 %.sroa.03.0.copyload, -1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = zext nneg i32 %.sroa.03.0.copyload to i64
  store i64 %i.d, ptr %i.a, align 8
  %i.e = call noundef ptr @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef4readNtNtBc_2pe22ImageResourceDataEntryEBc_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = icmp eq ptr %i.e, null                   ; 3 uses
  %.sink6 = select i1 %i.f, ptr @0, ptr null
  %.sink = select i1 %i.f, ptr inttoptr (i64 22 to ptr), ptr %i.e
  %storemerge = zext i1 %i.f to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink6, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink, ptr %i.h, align 8
  store i64 %storemerge, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.i = and i32 %.sroa.03.0.copyload, 2147483647
  call void @_RNvMs_NtNtNtCseHTIzroA4w0_6object4read2pe8resourceNtB4_22ResourceDirectoryTable5parse(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i32 noundef %i.i)
  %i.j = load ptr, ptr %i.b, align 8, !noundef !4
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.g, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.q, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink7 = phi i64 [ 1, %bb.e ], [ 0, %bb.f ]
  store i64 %.sink7, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { i32, i32 } @_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read2pe7sectionNtNtBb_2pe18ImageSectionHeader13pe_file_range(ptr noalias nofree noundef readonly captures(none) dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload = load i32, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.01.0.copyload = load i32, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.02.0.copyload = load i32, ptr %i.c, align 1
  %..i = tail call noundef i32 @llvm.umin.i32(i32 %.sroa.02.0.copyload, i32 %.sroa.01.0.copyload)
  %i.d = insertvalue { i32, i32 } poison, i32 %.sroa.0.0.copyload, 0
  %i.e = insertvalue { i32, i32 } %i.d, i32 %..i, 1
  ret { i32, i32 } %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read2pe7sectionNtNtBb_2pe18ImageSectionHeader16pe_file_range_at(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 4)) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(40) %1, i32 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.07.0.copyload = load i32, ptr %i.a, align 1 ; 2 uses
  %i.b = icmp ult i32 %2, %.sroa.07.0.copyload
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sub nuw i32 %2, %.sroa.07.0.copyload     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.01.0.copyload.i = load i32, ptr %i.d, align 1, !alias.scope !5
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.02.0.copyload.i = load i32, ptr %i.e, align 1, !alias.scope !5
  %..i.i = tail call noundef i32 @llvm.umin.i32(i32 %.sroa.02.0.copyload.i, i32 %.sroa.01.0.copyload.i) ; 2 uses
  %i.f = icmp ult i32 %i.c, %..i.i
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i = load i32, ptr %i.g, align 1, !alias.scope !5 ; 2 uses
  %i.h = add i32 %.sroa.0.0.copyload.i, %i.c      ; 2 uses
  %i.i = icmp ult i32 %i.h, %.sroa.0.0.copyload.i
  br i1 %i.i, label %bb.e, label %bb.d, !prof !8

bb.d:                                             ; preds = %bb.c
  %i.j = sub i32 %..i.i, %i.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.h, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.j, ptr %i.l, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.sink = phi i32 [ 1, %bb.d ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.c ]
  store i32 %.sink, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read4coff7sectionNtNtBb_2pe18ImageSectionHeader11name_offset(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 12)) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(40) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !noundef !4
  %i.b = icmp eq i8 %i.a, 47
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.ptr20 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.c = load i8, ptr %.ptr20, align 1, !noundef !4 ; 3 uses
  %i.d = icmp eq i8 %i.c, 47
  br i1 %i.d, label %.preheader.preheader, label %.preheader25.preheader

.preheader25.preheader:                           ; preds = %bb.b
  %i.e = add i8 %i.c, -48                         ; 2 uses
  %or.cond24 = icmp ult i8 %i.e, 10
  br i1 %or.cond24, label %.preheader25.1, label %bb.ar

.preheader.preheader:                             ; preds = %bb.b
  %.sroa.03.0.ptr = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.f = load i8, ptr %.sroa.03.0.ptr, align 1, !noundef !4 ; 6 uses
  %i.g = add i8 %i.f, -65                         ; 2 uses
  %or.cond = icmp ult i8 %i.g, 26
  br i1 %or.cond, label %.preheader.1, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.h, align 8
  store ptr null, ptr %0, align 8
  br label %bb.at

bb.d:                                             ; preds = %.preheader.preheader
  %i.i = add i8 %i.f, -97
  %or.cond22 = icmp ult i8 %i.i, 26
  br i1 %or.cond22, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = add i8 %i.f, -48
  %or.cond23 = icmp ult i8 %i.j, 10
  br i1 %or.cond23, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.k = add nsw i8 %i.f, -71
  br label %.preheader.1

bb.g:                                             ; preds = %bb.e
  switch i8 %i.f, label %bb.i [
    i8 43, label %.preheader.1
    i8 47, label %bb.j
  ]

bb.h:                                             ; preds = %bb.e
  %i.l = add nuw nsw i8 %i.f, 4
  br label %.preheader.1

bb.i:                                             ; preds = %bb.ak, %bb.ae, %bb.y, %bb.s, %bb.m, %bb.g
  store ptr @1, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 40, ptr %i.m, align 8
  br label %bb.at

bb.j:                                             ; preds = %bb.g
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader, %bb.g, %bb.j, %bb.h, %bb.f
  %.sroa.05.0 = phi i8 [ 62, %bb.g ], [ %i.k, %bb.f ], [ %i.l, %bb.h ], [ 63, %bb.j ], [ %i.g, %.preheader.preheader ]
  %i.n = zext nneg i8 %.sroa.05.0 to i64
  %.sroa.03.0.ptr.1 = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.o = load i8, ptr %.sroa.03.0.ptr.1, align 1, !noundef !4 ; 6 uses
  %i.p = add i8 %i.o, -65                         ; 2 uses
  %or.cond.1 = icmp ult i8 %i.p, 26
  br i1 %or.cond.1, label %.preheader.2, label %bb.k

bb.k:                                             ; preds = %.preheader.1
  %i.q = add i8 %i.o, -97
  %or.cond22.1 = icmp ult i8 %i.q, 26
  br i1 %or.cond22.1, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = add i8 %i.o, -48
  %or.cond23.1 = icmp ult i8 %i.r, 10
  br i1 %or.cond23.1, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  switch i8 %i.o, label %bb.i [
    i8 43, label %.preheader.2
    i8 47, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  br label %.preheader.2

bb.o:                                             ; preds = %bb.l
  %i.s = add nuw nsw i8 %i.o, 4
  br label %.preheader.2

bb.p:                                             ; preds = %bb.k
  %i.t = add nsw i8 %i.o, -71
  br label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1, %bb.p, %bb.o, %bb.n, %bb.m
  %.sroa.05.0.1 = phi i8 [ 62, %bb.m ], [ %i.t, %bb.p ], [ %i.s, %bb.o ], [ 63, %bb.n ], [ %i.p, %.preheader.1 ]
  %i.u = zext nneg i8 %.sroa.05.0.1 to i64
  %.sroa.03.0.ptr.2 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load i8, ptr %.sroa.03.0.ptr.2, align 1, !noundef !4 ; 6 uses
  %i.w = add i8 %i.v, -65                         ; 2 uses
  %or.cond.2 = icmp ult i8 %i.w, 26
  br i1 %or.cond.2, label %.preheader.3, label %bb.q

bb.q:                                             ; preds = %.preheader.2
  %i.x = add i8 %i.v, -97
  %or.cond22.2 = icmp ult i8 %i.x, 26
  br i1 %or.cond22.2, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.y = add i8 %i.v, -48
  %or.cond23.2 = icmp ult i8 %i.y, 10
  br i1 %or.cond23.2, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  switch i8 %i.v, label %bb.i [
    i8 43, label %.preheader.3
    i8 47, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  br label %.preheader.3

bb.u:                                             ; preds = %bb.r
  %i.z = add nuw nsw i8 %i.v, 4
  br label %.preheader.3

bb.v:                                             ; preds = %bb.q
  %i.aa = add nsw i8 %i.v, -71
  br label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2, %bb.v, %bb.u, %bb.t, %bb.s
  %.sroa.05.0.2 = phi i8 [ 62, %bb.s ], [ %i.aa, %bb.v ], [ %i.z, %bb.u ], [ 63, %bb.t ], [ %i.w, %.preheader.2 ]
  %i.ab = shl nuw nsw i64 %i.n, 12
  %i.ac = shl nuw nsw i64 %i.u, 6
  %i.ad = add nuw nsw i64 %i.ab, %i.ac
  %i.ae = zext nneg i8 %.sroa.05.0.2 to i64
  %i.af = add nuw nsw i64 %i.ad, %i.ae
  %.sroa.03.0.ptr.3 = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.ag = load i8, ptr %.sroa.03.0.ptr.3, align 1, !noundef !4 ; 6 uses
  %i.ah = add i8 %i.ag, -65                       ; 2 uses
  %or.cond.3 = icmp ult i8 %i.ah, 26
  br i1 %or.cond.3, label %.preheader.4, label %bb.w

bb.w:                                             ; preds = %.preheader.3
  %i.ai = add i8 %i.ag, -97
  %or.cond22.3 = icmp ult i8 %i.ai, 26
  br i1 %or.cond22.3, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aj = add i8 %i.ag, -48
  %or.cond23.3 = icmp ult i8 %i.aj, 10
  br i1 %or.cond23.3, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  switch i8 %i.ag, label %bb.i [
    i8 43, label %.preheader.4
    i8 47, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y
  br label %.preheader.4

bb.aa:                                            ; preds = %bb.x
  %i.ak = add nuw nsw i8 %i.ag, 4
  br label %.preheader.4

bb.ab:                                            ; preds = %bb.w
  %i.al = add nsw i8 %i.ag, -71
  br label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3, %bb.ab, %bb.aa, %bb.z, %bb.y
  %.sroa.05.0.3 = phi i8 [ 62, %bb.y ], [ %i.al, %bb.ab ], [ %i.ak, %bb.aa ], [ 63, %bb.z ], [ %i.ah, %.preheader.3 ]
  %i.am = zext nneg i8 %.sroa.05.0.3 to i64
  %.sroa.03.0.ptr.4 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.an = load i8, ptr %.sroa.03.0.ptr.4, align 1, !noundef !4 ; 6 uses
  %i.ao = add i8 %i.an, -65                       ; 2 uses
  %or.cond.4 = icmp ult i8 %i.ao, 26
  br i1 %or.cond.4, label %.preheader.5, label %bb.ac

bb.ac:                                            ; preds = %.preheader.4
  %i.ap = add i8 %i.an, -97
  %or.cond22.4 = icmp ult i8 %i.ap, 26
end_hunk_0
