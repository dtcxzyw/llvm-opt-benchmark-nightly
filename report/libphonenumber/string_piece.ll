Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libphonenumber/original/string_piece?download=true
inline.NumInlined: 162
inline.NumDeleted: 47
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK4i18n12phonenumbers11StringPiece16find_last_not_ofERKS1_m:bb.a
.lr.ph23:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.0714.i22 = phi i64 [ %i.o, %.lr.ph.i ], [ %.sroa.speculated, %.lr.ph.i.preheader ]
  %i.o = add i64 %.0714.i22, -1                   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !23
  %.not.i = icmp eq i8 %i.q, %i.i
  br i1 %.not.i, label %.lr.ph.i, label %._ZNK4i18n12phonenumbers11StringPiece16find_last_not_ofEcm.exit.loopexit_crit_edge, !llvm.loop !4

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %.val = load ptr, ptr %1, align 8, !tbaa !18    ; 5 uses
  %i.r = add i64 %i.g, -1
  %xtraiter = and i64 %i.g, 3                     ; 3 uses
  %i.s = icmp ult i64 %i.r, 3
  br i1 %i.s, label %.lr.ph.i14.epil.preheader, label %.new

.new:                                             ; preds = %bb.d
  %unroll_iter = and i64 %i.g, -4
  br label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %.lr.ph.i14, %.new
  %.01.i = phi i64 [ 0, %.new ], [ %i.am, %.lr.ph.i14 ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %.lr.ph.i14 ]
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 %.01.i
  %i.u = load i8, ptr %i.t, align 1, !tbaa !23
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.v
  store i8 1, ptr %i.w, align 1, !tbaa !28
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 %.01.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !23
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aa
  store i8 1, ptr %i.ab, align 1, !tbaa !28
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 %.01.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !23
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.af
  store i8 1, ptr %i.ag, align 1, !tbaa !28
  %i.ah = getelementptr inbounds nuw i8, ptr %.val, i64 %.01.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 3
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !23
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ak
  store i8 1, ptr %i.al, align 1, !tbaa !28
  %i.am = add nuw i64 %.01.i, 4                   ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN4i18n12phonenumbersL16BuildLookupTableERKNS0_11StringPieceEPb.exit.preheader.unr-lcssa, label %.lr.ph.i14, !llvm.loop !2

_ZN4i18n12phonenumbersL16BuildLookupTableERKNS0_11StringPieceEPb.exit.preheader.unr-lcssa: ; preds = %.lr.ph.i14
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4i18n12phonenumbersL16BuildLookupTableERKNS0_11StringPieceEPb.exit.preheader, label %.lr.ph.i14.epil.preheader

.lr.ph.i14.epil.preheader:                        ; preds = %_ZN4i18n12phonenumbersL16BuildLookupTableERKNS0_11StringPieceEPb.exit.preheader.unr-lcssa, %bb.d
  %.01.i.epil.init = phi i64 [ 0, %bb.d ], [ %i.am, %_ZN4i18n12phonenumbersL16BuildLookupTableERKNS0_11StringPieceEPb.exit.preheader.unr-lcssa ]
  %lcmp.mod32 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod32)
  br label %.lr.ph.i14.epil

.lr.ph.i14.epil:                                  ; preds = %.lr.ph.i14.epil, %.lr.ph.i14.epil.preheader
  %.01.i.epil = phi i64 [ %i.ar, %.lr.ph.i14.epil ], [ %.01.i.epil.init, %.lr.ph.i14.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i14.epil ], [ 0, %.lr.ph.i14.epil.preheader ]
  %i.an = getelementptr inbounds nuw i8, ptr %.val, i64 %.01.i.epil
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !23
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ap
  store i8 1, ptr %i.aq, align 1, !tbaa !28
  %i.ar = add nuw i64 %.01.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4i18n12phonenumbersL16BuildLookupTableERKNS0_11StringPieceEPb.exit.preheader, label %.lr.ph.i14.epil, !llvm.loop !38

_ZN4i18n12phonenumbersL16BuildLookupTableERKNS0_11StringPieceEPb.exit.preheader: ; preds = %.lr.ph.i14.epil, %_ZN4i18n12phonenumbersL16BuildLookupTableERKNS0_11StringPieceEPb.exit.preheader.unr-lcssa
  %i.as = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sroa.speculated
  %i.au = load i8, ptr %i.at, align 1, !tbaa !23
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !28, !range !30, !noundef !31
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN4i18n12phonenumbersL16BuildLookupTableERKNS0_11StringPieceEPb.exit.preheader
  %i.az = icmp eq i64 %.sroa.speculated, 0
  br i1 %i.az, label %._crit_edge, label %_ZN4i18n12phonenumbersL16BuildLookupTableERKNS0_11StringPieceEPb.exit

.lr.ph:                                           ; preds = %_ZN4i18n12phonenumbersL16BuildLookupTableERKNS0_11StringPieceEPb.exit
  %i.ba = icmp eq i64 %i.bb, 0
  br i1 %i.ba, label %._crit_edge, label %_ZN4i18n12phonenumbersL16BuildLookupTableERKNS0_11StringPieceEPb.exit, !llvm.loop !39

_ZN4i18n12phonenumbersL16BuildLookupTableERKNS0_11StringPieceEPb.exit: ; preds = %.lr.ph.preheader, %.lr.ph
  %.01925 = phi i64 [ %i.bb, %.lr.ph ], [ %.sroa.speculated, %.lr.ph.preheader ]
  %i.bb = add i64 %.01925, -1                     ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !23
  %i.be = zext i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !28, !range !30, !noundef !31
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %.lr.ph, label %_ZN4i18n12phonenumbersL16BuildLookupTableERKNS0_11StringPieceEPb.exit.._crit_edge.loopexit_crit_edge, !llvm.loop !39

_ZN4i18n12phonenumbersL16BuildLookupTableERKNS0_11StringPieceEPb.exit.._crit_edge.loopexit_crit_edge: ; preds = %_ZN4i18n12phonenumbersL16BuildLookupTableERKNS0_11StringPieceEPb.exit
  br label %._crit_edge, !llvm.loop !39

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph.preheader, %_ZN4i18n12phonenumbersL16BuildLookupTableERKNS0_11StringPieceEPb.exit.._crit_edge.loopexit_crit_edge, %_ZN4i18n12phonenumbersL16BuildLookupTableERKNS0_11StringPieceEPb.exit.preheader
  %.010 = phi i64 [ %.sroa.speculated, %_ZN4i18n12phonenumbersL16BuildLookupTableERKNS0_11StringPieceEPb.exit.preheader ], [ %i.bb, %_ZN4i18n12phonenumbersL16BuildLookupTableERKNS0_11StringPieceEPb.exit.._crit_edge.loopexit_crit_edge ], [ -1, %.lr.ph.preheader ], [ -1, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %_ZNK4i18n12phonenumbers11StringPiece16find_last_not_ofEcm.exit

._ZNK4i18n12phonenumbers11StringPiece16find_last_not_ofEcm.exit.loopexit_crit_edge: ; preds = %.lr.ph23
  br label %_ZNK4i18n12phonenumbers11StringPiece16find_last_not_ofEcm.exit, !llvm.loop !4

_ZNK4i18n12phonenumbers11StringPiece16find_last_not_ofEcm.exit: ; preds = %.lr.ph.i, %.lr.ph.i.preheader, %._ZNK4i18n12phonenumbers11StringPiece16find_last_not_ofEcm.exit.loopexit_crit_edge, %bb.c, %._crit_edge, %bb.b, %bb.a
  %.2 = phi i64 [ -1, %bb.a ], [ %.010, %._crit_edge ], [ %.sroa.speculated, %bb.b ], [ %.sroa.speculated, %bb.c ], [ -1, %.lr.ph.i.preheader ], [ %i.o, %._ZNK4i18n12phonenumbers11StringPiece16find_last_not_ofEcm.exit.loopexit_crit_edge ], [ -1, %.lr.ph.i ]
  ret i64 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i64 @_ZNK4i18n12phonenumbers11StringPiece16find_last_not_ofEcm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i8 noundef signext %1, i64 noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, -1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %2) ; 4 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.speculated
  %i.g = load i8, ptr %i.f, align 1, !tbaa !23
  %.not13 = icmp eq i8 %i.g, %1
  br i1 %.not13, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.h = icmp eq i64 %.sroa.speculated, 0
  br i1 %i.h, label %.loopexit, label %.lr.ph19

.lr.ph:                                           ; preds = %.lr.ph19
  %i.i = icmp eq i64 %i.j, 0
  br i1 %i.i, label %.loopexit, label %.lr.ph19, !llvm.loop !4

.lr.ph19:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.071418 = phi i64 [ %i.j, %.lr.ph ], [ %.sroa.speculated, %.lr.ph.preheader ]
  %i.j = add i64 %.071418, -1                     ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !23
  %.not = icmp eq i8 %i.l, %1
  br i1 %.not, label %.lr.ph, label %..loopexit.loopexit_crit_edge, !llvm.loop !4

..loopexit.loopexit_crit_edge:                    ; preds = %.lr.ph19
  br label %.loopexit, !llvm.loop !4

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph.preheader, %..loopexit.loopexit_crit_edge, %bb.b, %bb.a
  %.1 = phi i64 [ -1, %bb.a ], [ %.sroa.speculated, %bb.b ], [ -1, %.lr.ph.preheader ], [ %i.j, %..loopexit.loopexit_crit_edge ], [ -1, %.lr.ph ]
  ret i64 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { ptr, i64 } @_ZNK4i18n12phonenumbers11StringPiece6substrEmm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %spec.select = tail call i64 @llvm.umin.i64(i64 %1, i64 %i.b) ; 2 uses
  %i.c = sub i64 %i.b, %spec.select
  %.0 = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.c)
  %i.d = load ptr, ptr %0, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %spec.select
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.e, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt8__searchIPKcS1_N9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S5_S5_T0_S6_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  %i.b = icmp eq ptr %2, %3
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %i.d = icmp eq ptr %i.c, %3
  %i.e = ptrtoint ptr %1 to i64                   ; 4 uses
  br i1 %i.d, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.f = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr i64 %i.g, 2                         ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.j = load i8, ptr %2, align 1, !tbaa !23      ; 4 uses
  %i.k = and i64 %i.g, -4
  %scevgep.i.i = getelementptr i8, ptr %0, i64 %i.k ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph.i.i
  %.047.i.i = phi i64 [ %i.h, %.lr.ph.i.i ], [ %i.x, %bb.h ] ; 2 uses
  %.02946.i.i = phi ptr [ %0, %.lr.ph.i.i ], [ %i.w, %bb.h ] ; 9 uses
  %i.l = load i8, ptr %.02946.i.i, align 1, !tbaa !23
  %i.m = icmp eq i8 %i.l, %i.j
  br i1 %i.m, label %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.02946.i.i, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !23
  %i.p = icmp eq i8 %i.o, %i.j
  br i1 %i.p, label %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit.loopexit.split.loop.exit131, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %.02946.i.i, i64 2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !23
  %i.s = icmp eq i8 %i.r, %i.j
  br i1 %i.s, label %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit.loopexit.split.loop.exit129, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %.02946.i.i, i64 3
  %i.u = load i8, ptr %i.t, align 1, !tbaa !23
  %i.v = icmp eq i8 %i.u, %i.j
  br i1 %i.v, label %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit.loopexit.split.loop.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %.02946.i.i, i64 4
  %i.x = add nsw i64 %.047.i.i, -1
  %i.y = icmp sgt i64 %.047.i.i, 1
  br i1 %i.y, label %bb.d, label %._crit_edge.loopexit.i.i, !llvm.loop !40

._crit_edge.loopexit.i.i:                         ; preds = %bb.h
  %.pre54.i.i = ptrtoint ptr %scevgep.i.i to i64
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.c
  %.pre-phi.i.i = phi i64 [ %.pre54.i.i, %._crit_edge.loopexit.i.i ], [ %i.f, %bb.c ]
  %.029.lcssa.i.i = phi ptr [ %scevgep.i.i, %._crit_edge.loopexit.i.i ], [ %0, %bb.c ] ; 5 uses
  %i.z = sub i64 %i.e, %.pre-phi.i.i
  switch i64 %i.z, label %bb.n [
    i64 3, label %bb.i
    i64 2, label %._crit_edge._crit_edge.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i
  ]

._crit_edge._crit_edge52.i.i:                     ; preds = %._crit_edge.i.i
  %.pre53.i.i = load i8, ptr %2, align 1, !tbaa !23
  br label %bb.m

._crit_edge._crit_edge.i.i:                       ; preds = %._crit_edge.i.i
  %.pre.i.i = load i8, ptr %2, align 1, !tbaa !23
  br label %bb.k

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.aa = load i8, ptr %.029.lcssa.i.i, align 1, !tbaa !23
  %i.ab = load i8, ptr %2, align 1, !tbaa !23     ; 2 uses
  %i.ac = icmp eq i8 %i.aa, %i.ab
  br i1 %i.ac, label %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i, i64 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge._crit_edge.i.i
  %i.ae = phi i8 [ %i.ab, %bb.j ], [ %.pre.i.i, %._crit_edge._crit_edge.i.i ] ; 2 uses
  %.1.i.i = phi ptr [ %i.ad, %bb.j ], [ %.029.lcssa.i.i, %._crit_edge._crit_edge.i.i ] ; 3 uses
  %i.af = load i8, ptr %.1.i.i, align 1, !tbaa !23
  %i.ag = icmp eq i8 %i.af, %i.ae
  br i1 %i.ag, label %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge._crit_edge52.i.i
  %i.ai = phi i8 [ %i.ae, %bb.l ], [ %.pre53.i.i, %._crit_edge._crit_edge52.i.i ]
  %.2.i.i = phi ptr [ %i.ah, %bb.l ], [ %.029.lcssa.i.i, %._crit_edge._crit_edge52.i.i ] ; 2 uses
  %i.aj = load i8, ptr %.2.i.i, align 1, !tbaa !23
  %i.ak = icmp eq i8 %i.aj, %i.ai
  br i1 %i.ak, label %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i
  br label %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit

.loopexit:                                        ; preds = %.preheader, %bb.b
  %.037 = phi ptr [ %0, %bb.b ], [ %i.bv, %.preheader ] ; 4 uses
  %i.al = ptrtoint ptr %.037 to i64               ; 2 uses
  %i.am = sub i64 %i.e, %i.al                     ; 2 uses
  %i.an = ashr i64 %i.am, 2                       ; 2 uses
  %i.ao = icmp sgt i64 %i.an, 0
  br i1 %i.ao, label %.lr.ph.i.i58, label %._crit_edge.i.i48

.lr.ph.i.i58:                                     ; preds = %.loopexit
  %i.ap = load i8, ptr %2, align 1, !tbaa !23     ; 4 uses
  %i.aq = and i64 %i.am, -4
  %scevgep.i.i59 = getelementptr i8, ptr %.037, i64 %i.aq ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.s, %.lr.ph.i.i58
  %.047.i.i60 = phi i64 [ %i.an, %.lr.ph.i.i58 ], [ %i.bd, %bb.s ] ; 2 uses
  %.02946.i.i61 = phi ptr [ %.037, %.lr.ph.i.i58 ], [ %i.bc, %bb.s ] ; 9 uses
  %i.ar = load i8, ptr %.02946.i.i61, align 1, !tbaa !23
  %i.as = icmp eq i8 %i.ar, %i.ap
  br i1 %i.as, label %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit67, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %.02946.i.i61, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !23
  %i.av = icmp eq i8 %i.au, %i.ap
  br i1 %i.av, label %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit67.loopexit.split.loop.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %.02946.i.i61, i64 2
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !23
  %i.ay = icmp eq i8 %i.ax, %i.ap
  br i1 %i.ay, label %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit67.loopexit.split.loop.exit121, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = getelementptr inbounds nuw i8, ptr %.02946.i.i61, i64 3
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !23
  %i.bb = icmp eq i8 %i.ba, %i.ap
  br i1 %i.bb, label %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit67.loopexit.split.loop.exit123, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %.02946.i.i61, i64 4
  %i.bd = add nsw i64 %.047.i.i60, -1
  %i.be = icmp sgt i64 %.047.i.i60, 1
  br i1 %i.be, label %bb.o, label %._crit_edge.loopexit.i.i62, !llvm.loop !40

._crit_edge.loopexit.i.i62:                       ; preds = %bb.s
  %.pre54.i.i63 = ptrtoint ptr %scevgep.i.i59 to i64
  br label %._crit_edge.i.i48

._crit_edge.i.i48:                                ; preds = %._crit_edge.loopexit.i.i62, %.loopexit
  %.pre-phi.i.i49 = phi i64 [ %.pre54.i.i63, %._crit_edge.loopexit.i.i62 ], [ %i.al, %.loopexit ]
  %.029.lcssa.i.i50 = phi ptr [ %scevgep.i.i59, %._crit_edge.loopexit.i.i62 ], [ %.037, %.loopexit ] ; 5 uses
  %i.bf = sub i64 %i.e, %.pre-phi.i.i49
  switch i64 %i.bf, label %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit [
    i64 3, label %bb.t
    i64 2, label %._crit_edge._crit_edge.i.i55
    i64 1, label %._crit_edge._crit_edge52.i.i51
  ]

._crit_edge._crit_edge52.i.i51:                   ; preds = %._crit_edge.i.i48
  %.pre53.i.i52 = load i8, ptr %2, align 1, !tbaa !23
  br label %bb.x

._crit_edge._crit_edge.i.i55:                     ; preds = %._crit_edge.i.i48
  %.pre.i.i56 = load i8, ptr %2, align 1, !tbaa !23
  br label %bb.v

bb.t:                                             ; preds = %._crit_edge.i.i48
  %i.bg = load i8, ptr %.029.lcssa.i.i50, align 1, !tbaa !23
  %i.bh = load i8, ptr %2, align 1, !tbaa !23     ; 2 uses
  %i.bi = icmp eq i8 %i.bg, %i.bh
  br i1 %i.bi, label %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit67, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bj = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i50, i64 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge._crit_edge.i.i55
  %i.bk = phi i8 [ %i.bh, %bb.u ], [ %.pre.i.i56, %._crit_edge._crit_edge.i.i55 ] ; 2 uses
  %.1.i.i57 = phi ptr [ %i.bj, %bb.u ], [ %.029.lcssa.i.i50, %._crit_edge._crit_edge.i.i55 ] ; 3 uses
  %i.bl = load i8, ptr %.1.i.i57, align 1, !tbaa !23
  %i.bm = icmp eq i8 %i.bl, %i.bk
  br i1 %i.bm, label %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit67, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bn = getelementptr inbounds nuw i8, ptr %.1.i.i57, i64 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge._crit_edge52.i.i51
  %i.bo = phi i8 [ %i.bk, %bb.w ], [ %.pre53.i.i52, %._crit_edge._crit_edge52.i.i51 ]
  %.2.i.i53 = phi ptr [ %i.bn, %bb.w ], [ %.029.lcssa.i.i50, %._crit_edge._crit_edge52.i.i51 ] ; 2 uses
  %i.bp = load i8, ptr %.2.i.i53, align 1, !tbaa !23
  %i.bq = icmp eq i8 %i.bp, %i.bo
  br i1 %i.bq, label %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit67, label %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit

_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit67.loopexit.split.loop.exit: ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %.02946.i.i61, i64 1
  br label %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit67

_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit67.loopexit.split.loop.exit121: ; preds = %bb.q
  %i.bs = getelementptr inbounds nuw i8, ptr %.02946.i.i61, i64 2
  br label %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit67

_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit67.loopexit.split.loop.exit123: ; preds = %bb.r
  %i.bt = getelementptr inbounds nuw i8, ptr %.02946.i.i61, i64 3
  br label %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit67

_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit67: ; preds = %bb.o, %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit67.loopexit.split.loop.exit, %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit67.loopexit.split.loop.exit121, %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit67.loopexit.split.loop.exit123, %bb.t, %bb.v, %bb.x
  %.028.i.i54 = phi ptr [ %.1.i.i57, %bb.v ], [ %.029.lcssa.i.i50, %bb.t ], [ %.2.i.i53, %bb.x ], [ %i.bt, %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit67.loopexit.split.loop.exit123 ], [ %i.bs, %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit67.loopexit.split.loop.exit121 ], [ %i.br, %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit67.loopexit.split.loop.exit ], [ %.02946.i.i61, %bb.o ] ; 3 uses
  %i.bu = icmp eq ptr %.028.i.i54, %1
  br i1 %i.bu, label %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit, label %bb.y

bb.y:                                             ; preds = %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit67
  %i.bv = getelementptr inbounds nuw i8, ptr %.028.i.i54, i64 1 ; 3 uses
  %i.bw = icmp eq ptr %i.bv, %1
  br i1 %i.bw, label %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit, label %.preheader

.preheader:                                       ; preds = %bb.y, %bb.aa
  %.035 = phi ptr [ %i.cc, %bb.aa ], [ %i.bv, %bb.y ] ; 2 uses
  %.0 = phi ptr [ %i.ca, %bb.aa ], [ %i.c, %bb.y ] ; 2 uses
  %i.bx = load i8, ptr %.035, align 1, !tbaa !23
  %i.by = load i8, ptr %.0, align 1, !tbaa !23
  %i.bz = icmp eq i8 %i.bx, %i.by
  br i1 %i.bz, label %bb.z, label %.loopexit, !llvm.loop !41

bb.z:                                             ; preds = %.preheader
  %i.ca = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %3
  br i1 %i.cb, label %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cc = getelementptr inbounds nuw i8, ptr %.035, i64 1 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %1
  br i1 %i.cd, label %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit, label %.preheader, !llvm.loop !42

_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit.loopexit.split.loop.exit: ; preds = %bb.g
  %i.ce = getelementptr inbounds nuw i8, ptr %.02946.i.i, i64 3
  br label %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit

_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit.loopexit.split.loop.exit129: ; preds = %bb.f
  %i.cf = getelementptr inbounds nuw i8, ptr %.02946.i.i, i64 2
  br label %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit

_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit.loopexit.split.loop.exit131: ; preds = %bb.e
  %i.cg = getelementptr inbounds nuw i8, ptr %.02946.i.i, i64 1
  br label %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit

_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit: ; preds = %bb.y, %bb.x, %._crit_edge.i.i48, %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit67, %bb.z, %bb.aa, %bb.d, %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit.loopexit.split.loop.exit, %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit.loopexit.split.loop.exit129, %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit.loopexit.split.loop.exit131, %bb.n, %bb.m, %bb.k, %bb.i, %bb.a
  %.4 = phi ptr [ %0, %bb.a ], [ %.028.i.i54, %bb.z ], [ %.02946.i.i, %bb.d ], [ %.1.i.i, %bb.k ], [ %1, %bb.n ], [ %.2.i.i, %bb.m ], [ %.029.lcssa.i.i, %bb.i ], [ %i.cf, %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit.loopexit.split.loop.exit129 ], [ %i.ce, %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit.loopexit.split.loop.exit ], [ %i.cg, %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit.loopexit.split.loop.exit131 ], [ %1, %bb.aa ], [ %1, %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit67 ], [ %1, %._crit_edge.i.i48 ], [ %1, %bb.x ], [ %1, %bb.y ]
  ret ptr %.4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8__searchISt16reverse_iteratorIPKcES3_N9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S7_S7_T0_S8_T1_(ptr dead_on_unwind noalias writable sret(%"class.std::reverse_iterator") align 8 %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %2, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %3, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !26     ; 8 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !26     ; 5 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %3, align 8, !tbaa !26     ; 3 uses
  %i.e = load ptr, ptr %4, align 8, !tbaa !26     ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -1 ; 6 uses
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %bb.d, label %.preheader42

bb.d:                                             ; preds = %bb.c
  %i.i = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr i64 %i.k, 2                         ; 3 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %.lr.ph.i.preheader.i, label %._crit_edge.i.i

.lr.ph.i.preheader.i:                             ; preds = %bb.d
  %i.n = load i8, ptr %i.g, align 1, !tbaa !23, !noalias !54 ; 4 uses
  %i.o = mul nsw i64 %i.l, -4
  %scevgep.i = getelementptr i8, ptr %i.a, i64 %i.o ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %.lr.ph.i.preheader.i
  %i.p = phi ptr [ %i.z, %bb.h ], [ %i.a, %.lr.ph.i.preheader.i ] ; 8 uses
  %.020.i.i = phi i64 [ %i.ac, %bb.h ], [ %i.l, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !23, !noalias !54
  %i.s = icmp eq i8 %i.r, %i.n
  br i1 %i.s, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.t = getelementptr inbounds i8, ptr %i.p, i64 -2
  %i.u = load i8, ptr %i.t, align 1, !tbaa !23, !noalias !54
  %i.v = icmp eq i8 %i.u, %i.n
  br i1 %i.v, label %_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops17_Iter_equals_iterIS3_EEET_S8_S8_T0_.exit.loopexit.split.loop.exit112, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds i8, ptr %i.p, i64 -3
  %i.x = load i8, ptr %i.w, align 1, !tbaa !23, !noalias !54
  %i.y = icmp eq i8 %i.x, %i.n
  br i1 %i.y, label %_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops17_Iter_equals_iterIS3_EEET_S8_S8_T0_.exit.loopexit.split.loop.exit110, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds i8, ptr %i.p, i64 -4 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !23, !noalias !54
  %i.ab = icmp eq i8 %i.aa, %i.n
  br i1 %i.ab, label %_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops17_Iter_equals_iterIS3_EEET_S8_S8_T0_.exit.loopexit.split.loop.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = add nsw i64 %.020.i.i, -1
  %i.ad = icmp sgt i64 %.020.i.i, 1
  br i1 %i.ad, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !47

._crit_edge.loopexit.i.i:                         ; preds = %bb.h
  %.pre38.i.i = ptrtoint ptr %scevgep.i to i64
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.d
  %.pre-phi.i.i = phi i64 [ %.pre38.i.i, %._crit_edge.loopexit.i.i ], [ %i.i, %bb.d ]
  %5 = phi ptr [ %scevgep.i, %._crit_edge.loopexit.i.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.ae = sub i64 %.pre-phi.i.i, %i.j
  switch i64 %i.ae, label %.critedge [
    i64 3, label %bb.i
    i64 2, label %._crit_edge.i._crit_edge.i
    i64 1, label %._crit_edge.i._crit_edge24.i
  ]

._crit_edge.i._crit_edge24.i:                     ; preds = %._crit_edge.i.i
  %.pre26.i = load i8, ptr %i.g, align 1, !tbaa !23, !noalias !54
  br label %bb.k

._crit_edge.i._crit_edge.i:                       ; preds = %._crit_edge.i.i
  %.pre.i = load i8, ptr %i.g, align 1, !tbaa !23, !noalias !54
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.af = getelementptr inbounds i8, ptr %5, i64 -1 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !23, !noalias !54
  %i.ah = load i8, ptr %i.g, align 1, !tbaa !23, !noalias !54 ; 2 uses
  %i.ai = icmp eq i8 %i.ag, %i.ah
  br i1 %i.ai, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i._crit_edge.i
  %i.aj = phi i8 [ %.pre.i, %._crit_edge.i._crit_edge.i ], [ %i.ah, %bb.i ] ; 2 uses
  %i.ak = phi ptr [ %5, %._crit_edge.i._crit_edge.i ], [ %i.af, %bb.i ] ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -1 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !23, !noalias !54
  %i.an = icmp eq i8 %i.am, %i.aj
  br i1 %i.an, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i._crit_edge24.i
  %i.ao = phi i8 [ %.pre26.i, %._crit_edge.i._crit_edge24.i ], [ %i.aj, %bb.j ]
  %i.ap = phi ptr [ %5, %._crit_edge.i._crit_edge24.i ], [ %i.al, %bb.j ] ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !23, !noalias !54
  %i.as = icmp eq i8 %i.ar, %i.ao
  %spec.select.i = select i1 %i.as, ptr %i.ap, ptr %i.b
  br label %.critedge

_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops17_Iter_equals_iterIS3_EEET_S8_S8_T0_.exit.loopexit.split.loop.exit: ; preds = %bb.g
  %i.at = getelementptr inbounds i8, ptr %i.p, i64 -3
  br label %.critedge

_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops17_Iter_equals_iterIS3_EEET_S8_S8_T0_.exit.loopexit.split.loop.exit110: ; preds = %bb.f
  %i.au = getelementptr inbounds i8, ptr %i.p, i64 -2
  br label %.critedge

_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops17_Iter_equals_iterIS3_EEET_S8_S8_T0_.exit.loopexit.split.loop.exit112: ; preds = %bb.e
  %i.av = getelementptr inbounds i8, ptr %i.p, i64 -1
  br label %.critedge

.preheader42:                                     ; preds = %bb.c, %bb.w
  %i.aw = phi ptr [ %.pre77, %bb.w ], [ %i.d, %bb.c ] ; 4 uses
  %i.ax = phi ptr [ %.pre, %bb.w ], [ %i.b, %bb.c ] ; 3 uses
  %i.ay = phi ptr [ %i.cs, %bb.w ], [ %i.a, %bb.c ] ; 4 uses
  %i.az = ptrtoint ptr %i.ay to i64               ; 2 uses
  %i.ba = ptrtoint ptr %i.ax to i64               ; 2 uses
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr i64 %i.bb, 2                       ; 3 uses
  %i.bd = icmp sgt i64 %i.bc, 0
  br i1 %i.bd, label %.lr.ph.i.preheader.i11, label %._crit_edge.i.i1

.lr.ph.i.preheader.i11:                           ; preds = %.preheader42
  %i.be = getelementptr inbounds i8, ptr %i.aw, i64 -1
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !23, !noalias !55 ; 4 uses
  %i.bg = mul nsw i64 %i.bc, -4
  %scevgep.i12 = getelementptr i8, ptr %i.ay, i64 %i.bg ; 2 uses
  br label %.lr.ph.i.i13

.lr.ph.i.i13:                                     ; preds = %bb.o, %.lr.ph.i.preheader.i11
  %i.bh = phi ptr [ %i.br, %bb.o ], [ %i.ay, %.lr.ph.i.preheader.i11 ] ; 8 uses
  %.020.i.i14 = phi i64 [ %i.bu, %bb.o ], [ %i.bc, %.lr.ph.i.preheader.i11 ] ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !23, !noalias !55
  %i.bk = icmp eq i8 %i.bj, %i.bf
  br i1 %i.bk, label %_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops17_Iter_equals_iterIS3_EEET_S8_S8_T0_.exit20, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i13
  %i.bl = getelementptr inbounds i8, ptr %i.bh, i64 -2
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !23, !noalias !55
  %i.bn = icmp eq i8 %i.bm, %i.bf
  br i1 %i.bn, label %_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops17_Iter_equals_iterIS3_EEET_S8_S8_T0_.exit20.loopexit.split.loop.exit103, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bo = getelementptr inbounds i8, ptr %i.bh, i64 -3
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !23, !noalias !55
  %i.bq = icmp eq i8 %i.bp, %i.bf
  br i1 %i.bq, label %_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops17_Iter_equals_iterIS3_EEET_S8_S8_T0_.exit20.loopexit.split.loop.exit101, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.br = getelementptr inbounds i8, ptr %i.bh, i64 -4 ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !23, !noalias !55
  %i.bt = icmp eq i8 %i.bs, %i.bf
  br i1 %i.bt, label %_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops17_Iter_equals_iterIS3_EEET_S8_S8_T0_.exit20.loopexit.split.loop.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bu = add nsw i64 %.020.i.i14, -1
  %i.bv = icmp sgt i64 %.020.i.i14, 1
  br i1 %i.bv, label %.lr.ph.i.i13, label %._crit_edge.loopexit.i.i15, !llvm.loop !47

._crit_edge.loopexit.i.i15:                       ; preds = %bb.o
  %.pre38.i.i16 = ptrtoint ptr %scevgep.i12 to i64
  br label %._crit_edge.i.i1

._crit_edge.i.i1:                                 ; preds = %._crit_edge.loopexit.i.i15, %.preheader42
  %.pre-phi.i.i2 = phi i64 [ %.pre38.i.i16, %._crit_edge.loopexit.i.i15 ], [ %i.az, %.preheader42 ]
  %6 = phi ptr [ %scevgep.i12, %._crit_edge.loopexit.i.i15 ], [ %i.ay, %.preheader42 ] ; 4 uses
  %i.bw = sub i64 %.pre-phi.i.i2, %i.ba
  switch i64 %i.bw, label %_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops17_Iter_equals_iterIS3_EEET_S8_S8_T0_.exit20 [
    i64 3, label %bb.p
    i64 2, label %._crit_edge.i._crit_edge.i8
    i64 1, label %._crit_edge.i._crit_edge24.i3
  ]

._crit_edge.i._crit_edge24.i3:                    ; preds = %._crit_edge.i.i1
  %.phi.trans.insert25.i4 = getelementptr inbounds i8, ptr %i.aw, i64 -1
  %.pre26.i5 = load i8, ptr %.phi.trans.insert25.i4, align 1, !tbaa !23, !noalias !55
  br label %bb.r

._crit_edge.i._crit_edge.i8:                      ; preds = %._crit_edge.i.i1
  %.phi.trans.insert.i9 = getelementptr inbounds i8, ptr %i.aw, i64 -1
  %.pre.i10 = load i8, ptr %.phi.trans.insert.i9, align 1, !tbaa !23, !noalias !55
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i1
  %i.bx = getelementptr inbounds i8, ptr %6, i64 -1 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !23, !noalias !55
  %i.bz = getelementptr inbounds i8, ptr %i.aw, i64 -1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !23, !noalias !55 ; 2 uses
  %i.cb = icmp eq i8 %i.by, %i.ca
  br i1 %i.cb, label %_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops17_Iter_equals_iterIS3_EEET_S8_S8_T0_.exit20, label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge.i._crit_edge.i8
  %i.cc = phi i8 [ %.pre.i10, %._crit_edge.i._crit_edge.i8 ], [ %i.ca, %bb.p ] ; 2 uses
  %i.cd = phi ptr [ %6, %._crit_edge.i._crit_edge.i8 ], [ %i.bx, %bb.p ] ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 -1 ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !23, !noalias !55
  %i.cg = icmp eq i8 %i.cf, %i.cc
  br i1 %i.cg, label %_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops17_Iter_equals_iterIS3_EEET_S8_S8_T0_.exit20, label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i._crit_edge24.i3
  %i.ch = phi i8 [ %.pre26.i5, %._crit_edge.i._crit_edge24.i3 ], [ %i.cc, %bb.q ]
  %i.ci = phi ptr [ %6, %._crit_edge.i._crit_edge24.i3 ], [ %i.ce, %bb.q ] ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -1
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !23, !noalias !55
  %i.cl = icmp eq i8 %i.ck, %i.ch
  %spec.select.i6 = select i1 %i.cl, ptr %i.ci, ptr %i.ax
  br label %_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops17_Iter_equals_iterIS3_EEET_S8_S8_T0_.exit20

_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops17_Iter_equals_iterIS3_EEET_S8_S8_T0_.exit20.loopexit.split.loop.exit: ; preds = %bb.n
  %i.cm = getelementptr inbounds i8, ptr %i.bh, i64 -3
  br label %_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops17_Iter_equals_iterIS3_EEET_S8_S8_T0_.exit20

_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops17_Iter_equals_iterIS3_EEET_S8_S8_T0_.exit20.loopexit.split.loop.exit101: ; preds = %bb.m
  %i.cn = getelementptr inbounds i8, ptr %i.bh, i64 -2
  br label %_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops17_Iter_equals_iterIS3_EEET_S8_S8_T0_.exit20

_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops17_Iter_equals_iterIS3_EEET_S8_S8_T0_.exit20.loopexit.split.loop.exit103: ; preds = %bb.l
  %i.co = getelementptr inbounds i8, ptr %i.bh, i64 -1
  br label %_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops17_Iter_equals_iterIS3_EEET_S8_S8_T0_.exit20

_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops17_Iter_equals_iterIS3_EEET_S8_S8_T0_.exit20: ; preds = %.lr.ph.i.i13, %_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops17_Iter_equals_iterIS3_EEET_S8_S8_T0_.exit20.loopexit.split.loop.exit, %_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops17_Iter_equals_iterIS3_EEET_S8_S8_T0_.exit20.loopexit.split.loop.exit101, %_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops17_Iter_equals_iterIS3_EEET_S8_S8_T0_.exit20.loopexit.split.loop.exit103, %._crit_edge.i.i1, %bb.p, %bb.q, %bb.r
  %.sink.i.i7 = phi ptr [ %spec.select.i6, %bb.r ], [ %i.cd, %bb.q ], [ %6, %bb.p ], [ %i.ax, %._crit_edge.i.i1 ], [ %i.co, %_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops17_Iter_equals_iterIS3_EEET_S8_S8_T0_.exit20.loopexit.split.loop.exit103 ], [ %i.cm, %_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops17_Iter_equals_iterIS3_EEET_S8_S8_T0_.exit20.loopexit.split.loop.exit ], [ %i.cn, %_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops17_Iter_equals_iterIS3_EEET_S8_S8_T0_.exit20.loopexit.split.loop.exit101 ], [ %i.bh, %.lr.ph.i.i13 ] ; 4 uses
  %i.cp = ptrtoint ptr %.sink.i.i7 to i64
  store i64 %i.cp, ptr %1, align 8
  %i.cq = load ptr, ptr %2, align 8, !tbaa !26    ; 6 uses
  %i.cr = icmp eq ptr %.sink.i.i7, %i.cq
  br i1 %i.cr, label %.critedge, label %bb.s

bb.s:                                             ; preds = %_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops17_Iter_equals_iterIS3_EEET_S8_S8_T0_.exit20
  %i.cs = getelementptr inbounds i8, ptr %.sink.i.i7, i64 -1 ; 4 uses
  %i.ct = icmp eq ptr %i.cs, %i.cq
  br i1 %i.ct, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.s
  %i.cu = load ptr, ptr %4, align 8
  br label %bb.t

bb.t:                                             ; preds = %.preheader, %bb.v
  %.sroa.022.0 = phi ptr [ %i.cx, %bb.v ], [ %i.g, %.preheader ]
  %.sroa.030.0 = phi ptr [ %i.cv, %bb.v ], [ %i.cs, %.preheader ]
  %i.cv = getelementptr inbounds i8, ptr %.sroa.030.0, i64 -1 ; 3 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !23
  %i.cx = getelementptr inbounds i8, ptr %.sroa.022.0, i64 -1 ; 3 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !23
  %i.cz = icmp eq i8 %i.cw, %i.cy
  br i1 %i.cz, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.da = icmp eq ptr %i.cx, %i.cu
  br i1 %i.da, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.db = icmp eq ptr %i.cv, %i.cq
  br i1 %i.db, label %.critedge, label %bb.t, !llvm.loop !52

bb.w:                                             ; preds = %bb.t
  store ptr %i.cs, ptr %1, align 8, !tbaa !26
  %.pre = load ptr, ptr %2, align 8, !tbaa !26
  %.pre77 = load ptr, ptr %3, align 8, !tbaa !26
  br label %.preheader42, !llvm.loop !53

.critedge:                                        ; preds = %bb.s, %_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops17_Iter_equals_iterIS3_EEET_S8_S8_T0_.exit20, %bb.v, %bb.u, %.lr.ph.i.i, %bb.k, %bb.j, %bb.i, %._crit_edge.i.i, %_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops17_Iter_equals_iterIS3_EEET_S8_S8_T0_.exit.loopexit.split.loop.exit112, %_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops17_Iter_equals_iterIS3_EEET_S8_S8_T0_.exit.loopexit.split.loop.exit110, %_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops17_Iter_equals_iterIS3_EEET_S8_S8_T0_.exit.loopexit.split.loop.exit, %bb.a, %bb.b
  %.sink.i.i.sink = phi ptr [ %i.a, %bb.a ], [ %i.at, %_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops17_Iter_equals_iterIS3_EEET_S8_S8_T0_.exit.loopexit.split.loop.exit ], [ %.sink.i.i7, %bb.u ], [ %i.au, %_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops17_Iter_equals_iterIS3_EEET_S8_S8_T0_.exit.loopexit.split.loop.exit110 ], [ %i.p, %.lr.ph.i.i ], [ %i.a, %bb.b ], [ %spec.select.i, %bb.k ], [ %i.ak, %bb.j ], [ %5, %bb.i ], [ %i.b, %._crit_edge.i.i ], [ %i.av, %_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops17_Iter_equals_iterIS3_EEET_S8_S8_T0_.exit.loopexit.split.loop.exit112 ], [ %i.cq, %bb.v ], [ %i.cq, %_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops17_Iter_equals_iterIS3_EEET_S8_S8_T0_.exit20 ], [ %i.cq, %bb.s ]
  store ptr %.sink.i.i.sink, ptr %0, align 8, !tbaa !26
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { noreturn }
attributes #12 = { nounwind }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !24}
!1 = distinct !{!1, !24}
!2 = distinct !{!2, !24}
!3 = distinct !{!3, !24}
!4 = distinct !{!4, !24}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!"p1 omnipotent char", !14, i64 0}
!16 = !{!"long", !10, i64 0}
!17 = !{!"_ZTSN4i18n12phonenumbers11StringPieceE", !15, i64 0, !16, i64 8}
!18 = !{!17, !15, i64 0}
!19 = !{!17, !16, i64 8}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !15, i64 0}
!21 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !20, i64 0, !16, i64 8, !10, i64 16}
!22 = !{!21, !16, i64 8}
!23 = !{!10, !10, i64 0}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"_ZTSSt16reverse_iteratorIPKcE", !15, i64 0}
!26 = !{!25, !15, i64 0}
!27 = !{!"bool", !10, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!"llvm.loop.unroll.disable"}
!30 = !{i8 0, i8 2}
!31 = !{}
!32 = distinct !{!32, !29}
!33 = distinct !{!33, !24}
!34 = distinct !{!34, !29}
!35 = distinct !{!35, !24}
!36 = distinct !{!36, !29}
!37 = distinct !{!37, !24}
!38 = distinct !{!38, !29}
!39 = distinct !{!39, !24}
!40 = distinct !{!40, !24}
!41 = distinct !{!41, !24}
!42 = distinct !{!42, !24}
!43 = distinct !{!43, i1 true, !"_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops17_Iter_equals_iterIS3_EEET_S8_S8_T0_"}
!44 = distinct !{!44, !43, !"_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops17_Iter_equals_iterIS3_EEET_S8_S8_T0_: argument 0"}
!45 = distinct !{!45, i1 true, !"_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops17_Iter_equals_iterIS3_EEET_S8_S8_T0_St26random_access_iterator_tag"}
!46 = distinct !{!46, !45, !"_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops17_Iter_equals_iterIS3_EEET_S8_S8_T0_St26random_access_iterator_tag: argument 0"}
!47 = distinct !{!47, !24}
!48 = distinct !{!48, i1 true, !"_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops17_Iter_equals_iterIS3_EEET_S8_S8_T0_"}
!49 = distinct !{!49, !48, !"_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops17_Iter_equals_iterIS3_EEET_S8_S8_T0_: argument 0"}
!50 = distinct !{!50, i1 true, !"_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops17_Iter_equals_iterIS3_EEET_S8_S8_T0_St26random_access_iterator_tag"}
!51 = distinct !{!51, !50, !"_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops17_Iter_equals_iterIS3_EEET_S8_S8_T0_St26random_access_iterator_tag: argument 0"}
!52 = distinct !{!52, !24}
!53 = distinct !{!53, !24}
!54 = !{!46, !44}
!55 = !{!51, !49}
end_hunk_0
