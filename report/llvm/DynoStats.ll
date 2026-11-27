Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DynoStats?download=true
inline.NumInlined: 1231
inline.NumDeleted: 744
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK4llvm4bolt9DynoStatsltERKS1_:.lr.ph.i.i.i.i.i
  %i.ai = icmp ult i64 %i.ag, %i.ah
  br i1 %i.ai, label %_ZSt23lexicographical_compareIPKmS1_EbT_S2_T0_S3_.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.8
  %i.aj = icmp ult i64 %i.ah, %i.ag
  br i1 %i.aj, label %_ZSt23lexicographical_compareIPKmS1_EbT_S2_T0_S3_.exit, label %.lr.ph.i.i.i.i.i.9

.lr.ph.i.i.i.i.i.9:                               ; preds = %bb.i
  %.01924.i.i.i.i.i.ptr.9 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.02023.i.i.i.i.i.ptr.9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ak = load i64, ptr %.02023.i.i.i.i.i.ptr.9, align 8, !tbaa !24 ; 2 uses
  %i.al = load i64, ptr %.01924.i.i.i.i.i.ptr.9, align 8, !tbaa !24 ; 2 uses
  %i.am = icmp ult i64 %i.ak, %i.al
  br i1 %i.am, label %_ZSt23lexicographical_compareIPKmS1_EbT_S2_T0_S3_.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.9
  %i.an = icmp ult i64 %i.al, %i.ak
  br i1 %i.an, label %_ZSt23lexicographical_compareIPKmS1_EbT_S2_T0_S3_.exit, label %.lr.ph.i.i.i.i.i.10

.lr.ph.i.i.i.i.i.10:                              ; preds = %bb.j
  %.01924.i.i.i.i.i.ptr.10 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.02023.i.i.i.i.i.ptr.10 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ao = load i64, ptr %.02023.i.i.i.i.i.ptr.10, align 8, !tbaa !24 ; 2 uses
  %i.ap = load i64, ptr %.01924.i.i.i.i.i.ptr.10, align 8, !tbaa !24 ; 2 uses
  %i.aq = icmp ult i64 %i.ao, %i.ap
  br i1 %i.aq, label %_ZSt23lexicographical_compareIPKmS1_EbT_S2_T0_S3_.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.10
  %i.ar = icmp ult i64 %i.ap, %i.ao
  br i1 %i.ar, label %_ZSt23lexicographical_compareIPKmS1_EbT_S2_T0_S3_.exit, label %.lr.ph.i.i.i.i.i.11

.lr.ph.i.i.i.i.i.11:                              ; preds = %bb.k
  %.01924.i.i.i.i.i.ptr.11 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.02023.i.i.i.i.i.ptr.11 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.as = load i64, ptr %.02023.i.i.i.i.i.ptr.11, align 8, !tbaa !24 ; 2 uses
  %i.at = load i64, ptr %.01924.i.i.i.i.i.ptr.11, align 8, !tbaa !24 ; 2 uses
  %i.au = icmp ult i64 %i.as, %i.at
  br i1 %i.au, label %_ZSt23lexicographical_compareIPKmS1_EbT_S2_T0_S3_.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.11
  %i.av = icmp ult i64 %i.at, %i.as
  br i1 %i.av, label %_ZSt23lexicographical_compareIPKmS1_EbT_S2_T0_S3_.exit, label %.lr.ph.i.i.i.i.i.12

.lr.ph.i.i.i.i.i.12:                              ; preds = %bb.l
  %.01924.i.i.i.i.i.ptr.12 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.02023.i.i.i.i.i.ptr.12 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aw = load i64, ptr %.02023.i.i.i.i.i.ptr.12, align 8, !tbaa !24 ; 2 uses
  %i.ax = load i64, ptr %.01924.i.i.i.i.i.ptr.12, align 8, !tbaa !24 ; 2 uses
  %i.ay = icmp ult i64 %i.aw, %i.ax
  br i1 %i.ay, label %_ZSt23lexicographical_compareIPKmS1_EbT_S2_T0_S3_.exit, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.12
  %i.az = icmp ult i64 %i.ax, %i.aw
  br i1 %i.az, label %_ZSt23lexicographical_compareIPKmS1_EbT_S2_T0_S3_.exit, label %.lr.ph.i.i.i.i.i.13

.lr.ph.i.i.i.i.i.13:                              ; preds = %bb.m
  %.01924.i.i.i.i.i.ptr.13 = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.02023.i.i.i.i.i.ptr.13 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ba = load i64, ptr %.02023.i.i.i.i.i.ptr.13, align 8, !tbaa !24 ; 2 uses
  %i.bb = load i64, ptr %.01924.i.i.i.i.i.ptr.13, align 8, !tbaa !24 ; 2 uses
  %i.bc = icmp ult i64 %i.ba, %i.bb
  br i1 %i.bc, label %_ZSt23lexicographical_compareIPKmS1_EbT_S2_T0_S3_.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.13
  %i.bd = icmp ult i64 %i.bb, %i.ba
  br i1 %i.bd, label %_ZSt23lexicographical_compareIPKmS1_EbT_S2_T0_S3_.exit, label %.lr.ph.i.i.i.i.i.14

.lr.ph.i.i.i.i.i.14:                              ; preds = %bb.n
  %.01924.i.i.i.i.i.ptr.14 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.02023.i.i.i.i.i.ptr.14 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.be = load i64, ptr %.02023.i.i.i.i.i.ptr.14, align 8, !tbaa !24 ; 2 uses
  %i.bf = load i64, ptr %.01924.i.i.i.i.i.ptr.14, align 8, !tbaa !24 ; 2 uses
  %i.bg = icmp ult i64 %i.be, %i.bf
  br i1 %i.bg, label %_ZSt23lexicographical_compareIPKmS1_EbT_S2_T0_S3_.exit, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.14
  %i.bh = icmp ult i64 %i.bf, %i.be
  br i1 %i.bh, label %_ZSt23lexicographical_compareIPKmS1_EbT_S2_T0_S3_.exit, label %.lr.ph.i.i.i.i.i.15

.lr.ph.i.i.i.i.i.15:                              ; preds = %bb.o
  %.01924.i.i.i.i.i.ptr.15 = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.02023.i.i.i.i.i.ptr.15 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bi = load i64, ptr %.02023.i.i.i.i.i.ptr.15, align 8, !tbaa !24 ; 2 uses
  %i.bj = load i64, ptr %.01924.i.i.i.i.i.ptr.15, align 8, !tbaa !24 ; 2 uses
  %i.bk = icmp ult i64 %i.bi, %i.bj
  br i1 %i.bk, label %_ZSt23lexicographical_compareIPKmS1_EbT_S2_T0_S3_.exit, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i.15
  %i.bl = icmp ult i64 %i.bj, %i.bi
  br i1 %i.bl, label %_ZSt23lexicographical_compareIPKmS1_EbT_S2_T0_S3_.exit, label %.lr.ph.i.i.i.i.i.16

.lr.ph.i.i.i.i.i.16:                              ; preds = %bb.p
  %.01924.i.i.i.i.i.ptr.16 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.02023.i.i.i.i.i.ptr.16 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bm = load i64, ptr %.02023.i.i.i.i.i.ptr.16, align 8, !tbaa !24 ; 2 uses
  %i.bn = load i64, ptr %.01924.i.i.i.i.i.ptr.16, align 8, !tbaa !24 ; 2 uses
  %i.bo = icmp ult i64 %i.bm, %i.bn
  br i1 %i.bo, label %_ZSt23lexicographical_compareIPKmS1_EbT_S2_T0_S3_.exit, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i.16
  %i.bp = icmp ult i64 %i.bn, %i.bm
  br i1 %i.bp, label %_ZSt23lexicographical_compareIPKmS1_EbT_S2_T0_S3_.exit, label %.lr.ph.i.i.i.i.i.17

.lr.ph.i.i.i.i.i.17:                              ; preds = %bb.q
  %.01924.i.i.i.i.i.ptr.17 = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.02023.i.i.i.i.i.ptr.17 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bq = load i64, ptr %.02023.i.i.i.i.i.ptr.17, align 8, !tbaa !24 ; 2 uses
  %i.br = load i64, ptr %.01924.i.i.i.i.i.ptr.17, align 8, !tbaa !24 ; 2 uses
  %i.bs = icmp ult i64 %i.bq, %i.br
  br i1 %i.bs, label %_ZSt23lexicographical_compareIPKmS1_EbT_S2_T0_S3_.exit, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i.17
  %i.bt = icmp ult i64 %i.br, %i.bq
  br i1 %i.bt, label %_ZSt23lexicographical_compareIPKmS1_EbT_S2_T0_S3_.exit, label %.lr.ph.i.i.i.i.i.18

.lr.ph.i.i.i.i.i.18:                              ; preds = %bb.r
  %.01924.i.i.i.i.i.ptr.18 = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.02023.i.i.i.i.i.ptr.18 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bu = load i64, ptr %.02023.i.i.i.i.i.ptr.18, align 8, !tbaa !24 ; 2 uses
  %i.bv = load i64, ptr %.01924.i.i.i.i.i.ptr.18, align 8, !tbaa !24 ; 2 uses
  %i.bw = icmp ult i64 %i.bu, %i.bv
  br i1 %i.bw, label %_ZSt23lexicographical_compareIPKmS1_EbT_S2_T0_S3_.exit, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i.18
  %i.bx = icmp ult i64 %i.bv, %i.bu
  br i1 %i.bx, label %_ZSt23lexicographical_compareIPKmS1_EbT_S2_T0_S3_.exit, label %.lr.ph.i.i.i.i.i.19

.lr.ph.i.i.i.i.i.19:                              ; preds = %bb.s
  %.01924.i.i.i.i.i.ptr.19 = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.02023.i.i.i.i.i.ptr.19 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.by = load i64, ptr %.02023.i.i.i.i.i.ptr.19, align 8, !tbaa !24
  %i.bz = load i64, ptr %.01924.i.i.i.i.i.ptr.19, align 8, !tbaa !24
  %i.ca = icmp ult i64 %i.by, %i.bz
  br label %_ZSt23lexicographical_compareIPKmS1_EbT_S2_T0_S3_.exit

_ZSt23lexicographical_compareIPKmS1_EbT_S2_T0_S3_.exit: ; preds = %.lr.ph.i.i.i.i.i.19, %.lr.ph.i.i.i.i.i, %bb.a, %.lr.ph.i.i.i.i.i.1, %bb.b, %.lr.ph.i.i.i.i.i.2, %bb.c, %.lr.ph.i.i.i.i.i.3, %bb.d, %.lr.ph.i.i.i.i.i.4, %bb.e, %.lr.ph.i.i.i.i.i.5, %bb.f, %.lr.ph.i.i.i.i.i.6, %bb.g, %.lr.ph.i.i.i.i.i.7, %bb.h, %.lr.ph.i.i.i.i.i.8, %bb.i, %.lr.ph.i.i.i.i.i.9, %bb.j, %.lr.ph.i.i.i.i.i.10, %bb.k, %.lr.ph.i.i.i.i.i.11, %bb.l, %.lr.ph.i.i.i.i.i.12, %bb.m, %.lr.ph.i.i.i.i.i.13, %bb.n, %.lr.ph.i.i.i.i.i.14, %bb.o, %.lr.ph.i.i.i.i.i.15, %bb.p, %.lr.ph.i.i.i.i.i.16, %bb.q, %.lr.ph.i.i.i.i.i.17, %bb.r, %.lr.ph.i.i.i.i.i.18, %bb.s
  %.0.i.i.i.i.i = phi i1 [ %i.ca, %.lr.ph.i.i.i.i.i.19 ], [ true, %.lr.ph.i.i.i.i.i ], [ false, %bb.a ], [ true, %.lr.ph.i.i.i.i.i.1 ], [ false, %bb.b ], [ true, %.lr.ph.i.i.i.i.i.2 ], [ false, %bb.c ], [ true, %.lr.ph.i.i.i.i.i.3 ], [ false, %bb.d ], [ true, %.lr.ph.i.i.i.i.i.4 ], [ false, %bb.e ], [ true, %.lr.ph.i.i.i.i.i.5 ], [ false, %bb.f ], [ true, %.lr.ph.i.i.i.i.i.6 ], [ false, %bb.g ], [ true, %.lr.ph.i.i.i.i.i.7 ], [ false, %bb.h ], [ true, %.lr.ph.i.i.i.i.i.8 ], [ false, %bb.i ], [ true, %.lr.ph.i.i.i.i.i.9 ], [ false, %bb.j ], [ true, %.lr.ph.i.i.i.i.i.10 ], [ false, %bb.k ], [ true, %.lr.ph.i.i.i.i.i.11 ], [ false, %bb.l ], [ true, %.lr.ph.i.i.i.i.i.12 ], [ false, %bb.m ], [ true, %.lr.ph.i.i.i.i.i.13 ], [ false, %bb.n ], [ true, %.lr.ph.i.i.i.i.i.14 ], [ false, %bb.o ], [ true, %.lr.ph.i.i.i.i.i.15 ], [ false, %bb.p ], [ true, %.lr.ph.i.i.i.i.i.16 ], [ false, %bb.q ], [ true, %.lr.ph.i.i.i.i.i.17 ], [ false, %bb.r ], [ true, %.lr.ph.i.i.i.i.i.18 ], [ false, %bb.s ]
  ret i1 %.0.i.i.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm4bolt9DynoStatseqERKS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(160) %0, ptr noundef nonnull dereferenceable(160) %1, i64 160)
  %.not9.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i, 0
  ret i1 %.not9.i.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm4bolt9DynoStats8lessThanERKS1_NS_8ArrayRefINS1_8CategoryEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %1, ptr nofree readonly captures(address) %2, i64 %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 %3 ; 3 uses
  %.not27.i.i = icmp samesign eq i64 %3, 0
  br i1 %.not27.i.i, label %.critedge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.01929.i.i = phi ptr [ %i.h, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.020.val24.i.i = load i8, ptr %.01929.i.i, align 1, !tbaa !122
  %i.b = zext i8 %.020.val24.i.i to i64           ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b
  %i.d = load i64, ptr %i.c, align 8, !tbaa !24
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.b
  %i.f = load i64, ptr %i.e, align 8, !tbaa !24
  %i.g = icmp ult i64 %i.d, %i.f
  br i1 %i.g, label %"_ZSt23lexicographical_compareIPKN4llvm4bolt9DynoStats8CategoryES5_ZNKS2_8lessThanERKS2_NS0_8ArrayRefIS3_EEE3$_0EbT_SB_T0_SC_T1_.exit", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.h = getelementptr i8, ptr %.01929.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.a
  br i1 %.not.i.i, label %.critedge.i.i, label %.lr.ph.i.i, !llvm.loop !120

.critedge.i.i:                                    ; preds = %bb.b, %bb.a
  %.019.lcssa.i.i = phi ptr [ %2, %bb.a ], [ %i.a, %bb.b ]
  %i.i = icmp ne ptr %.019.lcssa.i.i, %i.a
  br label %"_ZSt23lexicographical_compareIPKN4llvm4bolt9DynoStats8CategoryES5_ZNKS2_8lessThanERKS2_NS0_8ArrayRefIS3_EEE3$_0EbT_SB_T0_SC_T1_.exit"

"_ZSt23lexicographical_compareIPKN4llvm4bolt9DynoStats8CategoryES5_ZNKS2_8lessThanERKS2_NS0_8ArrayRefIS3_EEE3$_0EbT_SB_T0_SC_T1_.exit": ; preds = %.lr.ph.i.i, %.critedge.i.i
  %.0.i.i = phi i1 [ %i.i, %.critedge.i.i ], [ true, %.lr.ph.i.i ]
  ret i1 %.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm4bolt9DynoStats5printERNS_11raw_ostreamEPKS1_PNS_13MCInstPrinterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %class.anon.549, align 8            ; 4 uses
  %5 = alloca %"struct.std::_Rb_tree<unsigned long, std::pair<const unsigned long, std::pair<llvm::StringRef, unsigned int>>, std::_Select1st<std::pair<const unsigned long, std::pair<llvm::StringRef, unsigned int>>>, std::less<unsigned long>>::_Alloc_node", align 8 ; 4 uses
  %6 = alloca %class.anon.550, align 8            ; 4 uses
  %7 = alloca %class.anon.542, align 8            ; 7 uses
  %8 = alloca %class.anon.549, align 8            ; 7 uses
  %9 = alloca %"class.llvm::format_object.31", align 8 ; 9 uses
  %10 = alloca %"class.llvm::format_object.538", align 8 ; 9 uses
  %i.b = alloca i64, align 8                      ; 11 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %12 = alloca %"class.llvm::format_object", align 8 ; 4 uses
  %13 = alloca %"class.std::multimap", align 8    ; 10 uses
  %14 = alloca %"class.llvm::format_object.31", align 8 ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %.not = icmp eq ptr %2, null                    ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.g = ptrtoint ptr %8 to i64                   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.i = ptrtoint ptr %7 to i64                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 18 uses
  br label %bb.k

.peel.begin:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.l = load i8, ptr %i.c, align 8, !tbaa !34, !range !19, !noundef !20
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.peel, label %.peel.next

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.peel: ; preds = %.peel.begin
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store ptr %i.d, ptr %11, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 28, ptr %i.b, align 8, !tbaa !24
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #21 ; 2 uses
  store ptr %i.n, ptr %11, align 8, !tbaa !39
  %i.o = load i64, ptr %i.b, align 8, !tbaa !24   ; 3 uses
  store i64 %i.o, ptr %i.d, align 8, !tbaa !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.n, ptr noundef nonnull align 1 dereferenceable(28) @.str.32, i64 28, i1 false)
  store i64 %i.o, ptr %i.e, align 8, !tbaa !41
  %i.p = load ptr, ptr %11, align 8, !tbaa !39
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o
  store i8 0, ptr %i.q, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.s = load i64, ptr %i.r, align 8, !tbaa !24   ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.peel
  %i.t = call noundef i64 @_ZNK4llvm4bolt9DynoStatsixEm(ptr noundef nonnull align 8 dereferenceable(232) %2, i64 noundef 19)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.peel
  %i.u = phi i64 [ %i.t, %bb.b ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.peel ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.v = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL14DynoStatsScaleE, i64 120), align 8, !tbaa !47
  %i.w = zext i32 %i.v to i64
  %i.x = mul i64 %i.s, %i.w
  store ptr @.str.10, ptr %9, align 8, !tbaa !52, !alias.scope !139
  store i64 %i.x, ptr %i.f, align 8, !tbaa !140, !alias.scope !139
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr %9, ptr %8, align 8, !tbaa !141
  %i.y = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr nonnull @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJmEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m, i64 %i.g) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.z = load ptr, ptr %11, align 8, !tbaa !39
  %i.aa = load i64, ptr %i.e, align 8, !tbaa !41
  %i.ab = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.z, i64 noundef %i.aa) #21 ; 0 uses
  br i1 %.not, label %_ZN4llvm11raw_ostreamlsEPKc.exit.i.peel, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not4.i.peel = icmp eq i64 %i.s, %i.u
  br i1 %.not4.i.peel, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.speculated.i.peel = call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.ac = uitofp i64 %i.s to float
  %i.ad = uitofp i64 %.sroa.speculated.i.peel to float ; 2 uses
  %i.ae = fsub nnan ninf float %i.ac, %i.ad
  %i.af = fpext nnan ninf float %i.ae to double
  %i.ag = fmul nnan double %i.af, 1.000000e+02
  %i.ah = fpext float %i.ad to double
  %i.ai = fdiv double %i.ag, %i.ah
  store ptr @.str.11, ptr %10, align 8, !tbaa !59, !alias.scope !142
  store double %i.ai, ptr %i.h, align 8, !tbaa !143, !alias.scope !142
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store ptr %10, ptr %7, align 8, !tbaa !144
  %i.aj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr nonnull @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJdEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m, i64 %i.i) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i.peel

bb.f:                                             ; preds = %bb.d
  %i.ak = load ptr, ptr %i.j, align 8, !tbaa !148
  %i.al = load ptr, ptr %i.k, align 8, !tbaa !149 ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = icmp ult i64 %i.ao, 4
  br i1 %i.ap, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 691873824, ptr %i.al, align 1
  %i.aq = load ptr, ptr %i.k, align 8, !tbaa !149
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store ptr %i.ar, ptr %i.k, align 8, !tbaa !149
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i.peel

bb.h:                                             ; preds = %bb.f
  %i.as = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.12, i64 noundef 4) #21 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i.peel

_ZN4llvm11raw_ostreamlsEPKc.exit.i.peel:          ; preds = %bb.h, %bb.g, %bb.e, %bb.c
  %i.at = load ptr, ptr %i.k, align 8, !tbaa !149 ; 3 uses
  %i.au = load ptr, ptr %i.j, align 8, !tbaa !148
  %.not.i.i.peel = icmp ult ptr %i.at, %i.au
  br i1 %.not.i.i.peel, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i.peel
  %i.av = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %1, i8 noundef zeroext 10) #21 ; 0 uses
  br label %"_ZZNK4llvm4bolt9DynoStats5printERNS_11raw_ostreamEPKS1_PNS_13MCInstPrinterEENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm.exit.peel"

bb.j:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i.peel
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  store ptr %i.aw, ptr %i.k, align 8, !tbaa !149
  store i8 10, ptr %i.at, align 1, !tbaa !40
  br label %"_ZZNK4llvm4bolt9DynoStats5printERNS_11raw_ostreamEPKS1_PNS_13MCInstPrinterEENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm.exit.peel"

"_ZZNK4llvm4bolt9DynoStats5printERNS_11raw_ostreamEPKS1_PNS_13MCInstPrinterEENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm.exit.peel": ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.ax = load ptr, ptr %11, align 8, !tbaa !39   ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.d
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %"_ZZNK4llvm4bolt9DynoStats5printERNS_11raw_ostreamEPKS1_PNS_13MCInstPrinterEENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm.exit.peel"
  %i.az = load i64, ptr %i.d, align 8, !tbaa !40
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %"_ZZNK4llvm4bolt9DynoStats5printERNS_11raw_ostreamEPKS1_PNS_13MCInstPrinterEENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm.exit.peel", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %.peel.next

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %.peel.begin
  %i.bb = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL19PrintDynoOpcodeStatE, i64 120), align 8, !tbaa !47
  %i.bc = icmp ne i32 %i.bb, 0
  %i.bd = icmp ne ptr %3, null
  %or.cond3 = and i1 %i.bd, %i.bc
  br i1 %or.cond3, label %bb.x, label %_ZNSt6vectorISt4pairImjESaIS1_EED2Ev.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %bb.a
  %indvars.iv = phi i64 [ 1, %bb.a ], [ %indvars.iv.next, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.be = getelementptr inbounds nuw [8 x i8], ptr @_ZN4llvm4bolt9DynoStats4DescE, i64 %indvars.iv
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !61 ; 3 uses
  store ptr %i.d, ptr %11, align 8, !tbaa !37
  %i.bg = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bf) #21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 %i.bg, ptr %i.b, align 8, !tbaa !24
  %i.bh = icmp ugt i64 %i.bg, 15
  br i1 %i.bh, label %bb.l, label %._crit_edge.i.i

bb.l:                                             ; preds = %bb.k
  %i.bi = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #21 ; 2 uses
  store ptr %i.bi, ptr %11, align 8, !tbaa !39
  %i.bj = load i64, ptr %i.b, align 8, !tbaa !24
  store i64 %i.bj, ptr %i.d, align 8, !tbaa !40
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.l, %bb.k
  %i.bk = phi ptr [ %i.bi, %bb.l ], [ %i.d, %bb.k ] ; 2 uses
  switch i64 %i.bg, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.bl = load i8, ptr %i.bf, align 1, !tbaa !40
  store i8 %i.bl, ptr %i.bk, align 1, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.n:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bk, ptr nonnull align 1 %i.bf, i64 %i.bg, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.m, %bb.n
  %i.bm = load i64, ptr %i.b, align 8, !tbaa !24  ; 2 uses
  store i64 %i.bm, ptr %i.e, align 8, !tbaa !41
  %i.bn = load ptr, ptr %11, align 8, !tbaa !39
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bm
  store i8 0, ptr %i.bo, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !24 ; 3 uses
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.br = call noundef i64 @_ZNK4llvm4bolt9DynoStatsixEm(ptr noundef nonnull align 8 dereferenceable(232) %2, i64 noundef %indvars.iv)
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit, %bb.o
  %i.bs = phi i64 [ %i.br, %bb.o ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.bt = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL14DynoStatsScaleE, i64 120), align 8, !tbaa !47
  %i.bu = zext i32 %i.bt to i64
  %i.bv = mul i64 %i.bq, %i.bu
  store ptr @.str.10, ptr %9, align 8, !tbaa !52, !alias.scope !139
  store i64 %i.bv, ptr %i.f, align 8, !tbaa !140, !alias.scope !139
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr %9, ptr %8, align 8, !tbaa !141
  %i.bw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr nonnull @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJmEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m, i64 %i.g) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.bx = load ptr, ptr %11, align 8, !tbaa !39
  %i.by = load i64, ptr %i.e, align 8, !tbaa !41
  %i.bz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.bx, i64 noundef %i.by) #21 ; 0 uses
  br i1 %.not, label %_ZN4llvm11raw_ostreamlsEPKc.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not4.i = icmp eq i64 %i.bq, %i.bs
  br i1 %.not4.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.speculated.i = call i64 @llvm.umax.i64(i64 %i.bs, i64 1)
  %i.ca = uitofp i64 %i.bq to float
  %i.cb = uitofp i64 %.sroa.speculated.i to float ; 2 uses
  %i.cc = fsub nnan ninf float %i.ca, %i.cb
  %i.cd = fpext nnan ninf float %i.cc to double
  %i.ce = fmul nnan double %i.cd, 1.000000e+02
  %i.cf = fpext float %i.cb to double
  %i.cg = fdiv double %i.ce, %i.cf
  store ptr @.str.11, ptr %10, align 8, !tbaa !59, !alias.scope !142
  store double %i.cg, ptr %i.h, align 8, !tbaa !143, !alias.scope !142
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store ptr %10, ptr %7, align 8, !tbaa !144
  %i.ch = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr nonnull @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJdEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m, i64 %i.i) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

bb.s:                                             ; preds = %bb.q
  %i.ci = load ptr, ptr %i.j, align 8, !tbaa !148
  %i.cj = load ptr, ptr %i.k, align 8, !tbaa !149 ; 2 uses
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = icmp ult i64 %i.cm, 4
  br i1 %i.cn, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.co = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.12, i64 noundef 4) #21 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

bb.u:                                             ; preds = %bb.s
  store i32 691873824, ptr %i.cj, align 1
  %i.cp = load ptr, ptr %i.k, align 8, !tbaa !149
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  store ptr %i.cq, ptr %i.k, align 8, !tbaa !149
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

_ZN4llvm11raw_ostreamlsEPKc.exit.i:               ; preds = %bb.u, %bb.t, %bb.r, %bb.p
  %i.cr = load ptr, ptr %i.k, align 8, !tbaa !149 ; 3 uses
  %i.cs = load ptr, ptr %i.j, align 8, !tbaa !148
  %.not.i.i = icmp ult ptr %i.cr, %i.cs
  br i1 %.not.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i
  %i.ct = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %1, i8 noundef zeroext 10) #21 ; 0 uses
  br label %"_ZZNK4llvm4bolt9DynoStats5printERNS_11raw_ostreamEPKS1_PNS_13MCInstPrinterEENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm.exit"

bb.w:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  store ptr %i.cu, ptr %i.k, align 8, !tbaa !149
  store i8 10, ptr %i.cr, align 1, !tbaa !40
  br label %"_ZZNK4llvm4bolt9DynoStats5printERNS_11raw_ostreamEPKS1_PNS_13MCInstPrinterEENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm.exit"

"_ZZNK4llvm4bolt9DynoStats5printERNS_11raw_ostreamEPKS1_PNS_13MCInstPrinterEENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm.exit": ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.cv = load ptr, ptr %11, align 8, !tbaa !39   ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.d
  br i1 %i.cw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %"_ZZNK4llvm4bolt9DynoStats5printERNS_11raw_ostreamEPKS1_PNS_13MCInstPrinterEENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm.exit"
  %i.cx = load i64, ptr %i.d, align 8, !tbaa !40
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %"_ZZNK4llvm4bolt9DynoStats5printERNS_11raw_ostreamEPKS1_PNS_13MCInstPrinterEENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm.exit", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 19
  br i1 %exitcond.not, label %.peel.begin, label %bb.k, !llvm.loop !127

bb.x:                                             ; preds = %.peel.next
  %i.cz = load ptr, ptr %i.j, align 8, !tbaa !148
  %i.da = load ptr, ptr %i.k, align 8, !tbaa !149 ; 2 uses
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = icmp ult i64 %i.dd, 32
  br i1 %i.de, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.df = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.5, i64 noundef 32) #21 ; 0 uses
  %.pre109 = load ptr, ptr %i.k, align 8, !tbaa !149
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.z:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.da, ptr noundef nonnull align 1 dereferenceable(32) @.str.5, i64 32, i1 false)
  %i.dg = load ptr, ptr %i.k, align 8, !tbaa !149
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32 ; 2 uses
  store ptr %i.dh, ptr %i.k, align 8, !tbaa !149
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.y, %bb.z
  %i.di = phi ptr [ %.pre109, %bb.y ], [ %i.dh, %bb.z ] ; 2 uses
  %i.dj = load ptr, ptr %i.j, align 8, !tbaa !148
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = ptrtoint ptr %i.di to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = icmp ult i64 %i.dm, 86
  br i1 %i.dn, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.do = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.6, i64 noundef 86) #21 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit37

bb.ab:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(86) %i.di, ptr noundef nonnull align 1 dereferenceable(86) @.str.6, i64 86, i1 false)
  %i.dp = load ptr, ptr %i.k, align 8, !tbaa !149
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 86
  store ptr %i.dq, ptr %i.k, align 8, !tbaa !149
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit37

_ZN4llvm11raw_ostreamlsEPKc.exit37:               ; preds = %bb.aa, %bb.ab
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %.sroa.064.088 = load ptr, ptr %i.ds, align 8, !tbaa !62 ; 2 uses
  %.not7989 = icmp eq ptr %.sroa.064.088, null
end_hunk_0
