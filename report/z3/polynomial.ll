Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/polynomial?download=true
inline.NumInlined: 6687
inline.NumDeleted: 1176
loop-unroll.NumCompletelyUnrolled: 125
loop-unroll.NumRuntimeUnrolled: 76
loop-unroll.NumUnrolled: 201
begin_hunk_0_@_ZN10polynomial7manager3imp13mk_glex_monicEPKNS_10polynomialE:bb.a
; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN10polynomial7manager9translateEPKNS_10polynomialEjRK3mpz(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !93
  %i.b = tail call noundef ptr @_ZN10polynomial7manager3imp9translateEPKNS_10polynomialEjRK3mpz(ptr noundef nonnull align 8 dereferenceable(824) %i.a, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN10polynomial7manager3imp9translateEPKNS_10polynomialEjRK3mpz(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::allocator", align 1    ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::allocator", align 1    ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::allocator", align 1    ; 4 uses
  %10 = alloca %class.mpz, align 8                ; 6 uses
  %11 = alloca %class.obj_ref.21, align 8         ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !174  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN10polynomial7manager6degreeEPKNS_10polynomialEj.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !175  ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !176  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !77   ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN10polynomial7manager6degreeEPKNS_10polynomialEj.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = add i32 %i.h, -1
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.l = zext i32 %i.j to i64                     ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !72
  %i.o = icmp eq i32 %i.n, %2
  br i1 %i.o, label %bb.d, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.c
  %wide.trip.count.i = zext i32 %i.b to i64
  br label %.preheader.i

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.l
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load i32, ptr %i.q, align 4, !tbaa !73
  br label %_ZN10polynomial7manager6degreeEPKNS_10polynomialEj.exit

.preheader.i:                                     ; preds = %_ZNK10polynomial8monomial9degree_ofEj.exit.i, %.preheader.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next.i, %_ZNK10polynomial8monomial9degree_ofEj.exit.i ] ; 2 uses
  %.02029.i = phi i32 [ 0, %.preheader.preheader.i ], [ %.0.i.i, %_ZNK10polynomial8monomial9degree_ofEj.exit.i ] ; 11 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !176  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !77   ; 3 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %_ZNK10polynomial8monomial9degree_ofEj.exit.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i
  %i.x = add i32 %i.v, -1                         ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 20 ; 8 uses
  %i.z = zext i32 %i.x to i64                     ; 8 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !72
  %i.ac = icmp eq i32 %i.ab, %2
  br i1 %i.ac, label %_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = icmp ult i32 %i.v, 8
  br i1 %i.ad, label %.preheader.i.i.i.preheader, label %.preheader43.i.i.i

.preheader.i.i.i.preheader:                       ; preds = %bb.f
  %.not.i.i.i226 = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.i226, label %_ZNK10polynomial8monomial9degree_ofEj.exit.i, label %.lr.ph228

.preheader.i.i.i:                                 ; preds = %.lr.ph228
  %.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZNK10polynomial8monomial9degree_ofEj.exit.i, label %.lr.ph228.1

.lr.ph228.1:                                      ; preds = %.preheader.i.i.i
  %indvars.iv.next.i.i.i.1 = add nsw i64 %i.z, -2 ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.next.i.i.i.1
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !72
  %i.ag = icmp eq i32 %i.af, %2
  br i1 %i.ag, label %.thread.loopexit.split.loop.exit.i.i.i, label %.preheader.i.i.i.1, !llvm.loop !5

.preheader.i.i.i.1:                               ; preds = %.lr.ph228.1
  %.not.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.1, 0
  br i1 %.not.i.i.i.1, label %_ZNK10polynomial8monomial9degree_ofEj.exit.i, label %.lr.ph228.2

.lr.ph228.2:                                      ; preds = %.preheader.i.i.i.1
  %indvars.iv.next.i.i.i.2 = add nsw i64 %i.z, -3 ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.next.i.i.i.2
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !72
  %i.aj = icmp eq i32 %i.ai, %2
  br i1 %i.aj, label %.thread.loopexit.split.loop.exit.i.i.i, label %.preheader.i.i.i.2, !llvm.loop !5

.preheader.i.i.i.2:                               ; preds = %.lr.ph228.2
  %.not.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.2, 0
  br i1 %.not.i.i.i.2, label %_ZNK10polynomial8monomial9degree_ofEj.exit.i, label %.lr.ph228.3

.lr.ph228.3:                                      ; preds = %.preheader.i.i.i.2
  %indvars.iv.next.i.i.i.3 = add nsw i64 %i.z, -4 ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.next.i.i.i.3
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !72
  %i.am = icmp eq i32 %i.al, %2
  br i1 %i.am, label %.thread.loopexit.split.loop.exit.i.i.i, label %.preheader.i.i.i.3, !llvm.loop !5

.preheader.i.i.i.3:                               ; preds = %.lr.ph228.3
  %.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, 0
  br i1 %.not.i.i.i.3, label %_ZNK10polynomial8monomial9degree_ofEj.exit.i, label %.lr.ph228.4

.lr.ph228.4:                                      ; preds = %.preheader.i.i.i.3
  %indvars.iv.next.i.i.i.4 = add nsw i64 %i.z, -5 ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.next.i.i.i.4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !72
  %i.ap = icmp eq i32 %i.ao, %2
  br i1 %i.ap, label %.thread.loopexit.split.loop.exit.i.i.i, label %.preheader.i.i.i.4, !llvm.loop !5

.preheader.i.i.i.4:                               ; preds = %.lr.ph228.4
  %.not.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.4, 0
  br i1 %.not.i.i.i.4, label %_ZNK10polynomial8monomial9degree_ofEj.exit.i, label %.lr.ph228.5

.lr.ph228.5:                                      ; preds = %.preheader.i.i.i.4
  %indvars.iv.next.i.i.i.5 = add nsw i64 %i.z, -6 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.next.i.i.i.5
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !72
  %i.as = icmp eq i32 %i.ar, %2
  br i1 %i.as, label %.thread.loopexit.split.loop.exit.i.i.i, label %_ZNK10polynomial8monomial9degree_ofEj.exit.i, !llvm.loop !5

.lr.ph228:                                        ; preds = %.preheader.i.i.i.preheader
  %indvars.iv.next.i.i.i = add nsw i64 %i.z, -1   ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.next.i.i.i
  %i.au = load i32, ptr %i.at, align 4, !tbaa !72
  %i.av = icmp eq i32 %i.au, %2
  br i1 %i.av, label %.thread.loopexit.split.loop.exit.i.i.i, label %.preheader.i.i.i, !llvm.loop !5

.preheader43.i.i.i:                               ; preds = %bb.f, %bb.j
  %.026.i.i.i = phi i32 [ %.127.i.i.i, %bb.j ], [ 0, %bb.f ] ; 3 uses
  %.0.i.i.i = phi i32 [ %.1.i.i.i, %bb.j ], [ %i.x, %bb.f ] ; 2 uses
  %i.aw = sub nsw i32 %.0.i.i.i, %.026.i.i.i
  %i.ax = sdiv i32 %i.aw, 2
  %i.ay = add nsw i32 %i.ax, %.026.i.i.i          ; 4 uses
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !72 ; 2 uses
  %i.bc = icmp ugt i32 %2, %i.bb
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.preheader43.i.i.i
  %i.bd = add nsw i32 %i.ay, 1
  br label %bb.j

bb.h:                                             ; preds = %.preheader43.i.i.i
  %i.be = icmp ult i32 %2, %i.bb
  br i1 %i.be, label %bb.i, label %_ZNK10polynomial8monomial8index_ofEj.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.bf = add nsw i32 %i.ay, -1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %.127.i.i.i = phi i32 [ %i.bd, %bb.g ], [ %.026.i.i.i, %bb.i ] ; 2 uses
  %.1.i.i.i = phi i32 [ %.0.i.i.i, %bb.g ], [ %i.bf, %bb.i ] ; 2 uses
  %.not42.i.i.i = icmp sgt i32 %.127.i.i.i, %.1.i.i.i
  br i1 %.not42.i.i.i, label %_ZNK10polynomial8monomial9degree_ofEj.exit.i, label %.preheader43.i.i.i, !llvm.loop !6

.thread.loopexit.split.loop.exit.i.i.i:           ; preds = %.lr.ph228.5, %.lr.ph228.4, %.lr.ph228.3, %.lr.ph228.2, %.lr.ph228.1, %.lr.ph228
  %indvars.iv.next.i.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph228 ], [ %indvars.iv.next.i.i.i.1, %.lr.ph228.1 ], [ %indvars.iv.next.i.i.i.2, %.lr.ph228.2 ], [ %indvars.iv.next.i.i.i.3, %.lr.ph228.3 ], [ %indvars.iv.next.i.i.i.4, %.lr.ph228.4 ], [ %indvars.iv.next.i.i.i.5, %.lr.ph228.5 ]
  %indvars.le.i.i.i = trunc nuw i64 %indvars.iv.next.i.i.i.lcssa to i32
  br label %_ZNK10polynomial8monomial8index_ofEj.exit.i.i

_ZNK10polynomial8monomial8index_ofEj.exit.i.i:    ; preds = %bb.h, %.thread.loopexit.split.loop.exit.i.i.i
  %.4.i.i.i = phi i32 [ %indvars.le.i.i.i, %.thread.loopexit.split.loop.exit.i.i.i ], [ %i.ay, %bb.h ] ; 2 uses
  %i.bg = icmp eq i32 %.4.i.i.i, -1
  br i1 %i.bg, label %_ZNK10polynomial8monomial9degree_ofEj.exit.i, label %_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i.i

_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i.i: ; preds = %_ZNK10polynomial8monomial8index_ofEj.exit.i.i
  %.pre.i.i = zext i32 %.4.i.i.i to i64
  br label %_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i.i

_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i.i: ; preds = %_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i.i, %bb.e
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i.i ], [ %i.z, %bb.e ]
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.pre-phi.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !73
  %i.bk = tail call i32 @llvm.umax.i32(i32 %i.bj, i32 %.02029.i)
  br label %_ZNK10polynomial8monomial9degree_ofEj.exit.i

_ZNK10polynomial8monomial9degree_ofEj.exit.i:     ; preds = %bb.j, %.preheader.i.i.i, %.preheader.i.i.i.1, %.preheader.i.i.i.2, %.preheader.i.i.i.3, %.preheader.i.i.i.4, %.lr.ph228.5, %.preheader.i.i.i.preheader, %_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i.i, %_ZNK10polynomial8monomial8index_ofEj.exit.i.i, %.preheader.i
  %.0.i.i = phi i32 [ %i.bk, %_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i.i ], [ %.02029.i, %_ZNK10polynomial8monomial8index_ofEj.exit.i.i ], [ %.02029.i, %.preheader.i ], [ %.02029.i, %.preheader.i.i.i.preheader ], [ %.02029.i, %.preheader.i.i.i ], [ %.02029.i, %.lr.ph228.5 ], [ %.02029.i, %.preheader.i.i.i.4 ], [ %.02029.i, %.preheader.i.i.i.3 ], [ %.02029.i, %.preheader.i.i.i.2 ], [ %.02029.i, %.preheader.i.i.i.1 ], [ %.02029.i, %bb.j ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN10polynomial7manager6degreeEPKNS_10polynomialEj.exit, label %.preheader.i, !llvm.loop !7

_ZN10polynomial7manager6degreeEPKNS_10polynomialEj.exit: ; preds = %_ZNK10polynomial8monomial9degree_ofEj.exit.i, %bb.d
  %.122.i = phi i32 [ %i.r, %bb.d ], [ %.0.i.i, %_ZNK10polynomial8monomial9degree_ofEj.exit.i ] ; 7 uses
  %i.bl = icmp eq i32 %.122.i, 0
  br i1 %i.bl, label %_ZN10polynomial7manager6degreeEPKNS_10polynomialEj.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZN10polynomial7manager6degreeEPKNS_10polynomialEj.exit
  %i.bm = load i32, ptr %3, align 8, !tbaa !90
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %_ZN10polynomial7manager6degreeEPKNS_10polynomialEj.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 6 uses
  %i.bp = add i32 %.122.i, 1                      ; 2 uses
  tail call void @_ZN10polynomial7manager3imp17som_buffer_vector5resetEj(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i32 noundef %i.bp)
  tail call void @_ZN10polynomial7manager3imp6coeffsEPKNS_10polynomialEjRNS1_17som_buffer_vectorE(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %i.bo)
  %i.bq = add i32 %.122.i, -1                     ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 11 uses
  br label %bb.s

bb.m:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !206, !nonnull !98, !align !99
  store ptr null, ptr %11, align 8, !tbaa !220
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !80
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 6 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !162 ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %_ZN10polynomial7manager3imp10som_buffer5resetEv.exit, label %_ZNK10polynomial7manager3imp10som_buffer5emptyEv.exit.i

_ZNK10polynomial7manager3imp10som_buffer5emptyEv.exit.i: ; preds = %bb.m
  %i.bz = getelementptr inbounds i8, ptr %i.bx, i64 -4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !69 ; 2 uses
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %_ZN10polynomial7manager3imp10som_buffer5resetEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK10polynomial7manager3imp10som_buffer5emptyEv.exit.i
  %i.cc = load ptr, ptr %i.bv, align 8, !tbaa !204
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %wide.trip.count.i45 = zext i32 %i.ca to i64
  br label %bb.p

._crit_edge.i:                                    ; preds = %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !161 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i, label %_ZN6vectorI3mpzLb0EjE5resetEv.exit.i, label %bb.n

bb.n:                                             ; preds = %._crit_edge.i
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -4
  store i32 0, ptr %i.ch, align 4, !tbaa !69
  br label %_ZN6vectorI3mpzLb0EjE5resetEv.exit.i

_ZN6vectorI3mpzLb0EjE5resetEv.exit.i:             ; preds = %bb.n, %._crit_edge.i
  %i.ci = load ptr, ptr %i.bw, align 8, !tbaa !162 ; 2 uses
  %.not.i8.i = icmp eq ptr %i.ci, null
  br i1 %.not.i8.i, label %_ZN10polynomial7manager3imp10som_buffer5resetEv.exit, label %bb.o

bb.o:                                             ; preds = %_ZN6vectorI3mpzLb0EjE5resetEv.exit.i
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -4
  store i32 0, ptr %i.cj, align 4, !tbaa !69
  br label %_ZN10polynomial7manager3imp10som_buffer5resetEv.exit

bb.p:                                             ; preds = %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i, %.lr.ph.i
  %indvars.iv.i46 = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i47, %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i ] ; 4 uses
  %i.ck = load ptr, ptr %i.bw, align 8, !tbaa !162
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv.i46
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !176
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !173 ; 2 uses
  %i.cp = load ptr, ptr %i.ce, align 8, !tbaa !68 ; 3 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %_ZN10polynomial12monomial2pos5resetEPKNS_8monomialE.exit.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i:              ; preds = %bb.p
  %i.cr = getelementptr inbounds i8, ptr %i.cp, i64 -4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !69
  %i.ct = icmp ult i32 %i.co, %i.cs
  br i1 %i.ct, label %bb.q, label %_ZN10polynomial12monomial2pos5resetEPKNS_8monomialE.exit.i

bb.q:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i
  %i.cu = zext i32 %i.co to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.cu
  store i32 -1, ptr %i.cv, align 4, !tbaa !69
  br label %_ZN10polynomial12monomial2pos5resetEPKNS_8monomialE.exit.i

_ZN10polynomial12monomial2pos5resetEPKNS_8monomialE.exit.i: ; preds = %bb.q, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i, %bb.p
  %i.cw = load ptr, ptr %i.cf, align 8, !tbaa !161
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %indvars.iv.i46
  %i.cy = load ptr, ptr %i.cd, align 8, !tbaa !97, !nonnull !98, !align !99
  invoke void @_ZN11mpz_managerILb0EE5resetER3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.cy, ptr noundef nonnull align 8 dereferenceable(16) %i.cx)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %_ZN10polynomial12monomial2pos5resetEPKNS_8monomialE.exit.i
  %i.cz = load ptr, ptr %i.bv, align 8, !tbaa !204
  %i.da = load ptr, ptr %i.bw, align 8, !tbaa !162
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv.i46
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !176 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 464
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !150
  %i.df = load i32, ptr %i.dc, align 4, !tbaa !198
  %i.dg = add i32 %i.df, -1                       ; 2 uses
  store i32 %i.dg, ptr %i.dc, align 4, !tbaa !198
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.r, label %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i

bb.r:                                             ; preds = %.noexc
  invoke void @_ZN10polynomial16monomial_manager3delEPNS_8monomialE(ptr noundef nonnull align 8 dereferenceable(192) %i.de, ptr noundef nonnull %i.dc)
          to label %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i: ; preds = %bb.r, %.noexc
  %indvars.iv.next.i47 = add nuw nsw i64 %indvars.iv.i46, 1 ; 2 uses
  %exitcond.not.i48 = icmp eq i64 %indvars.iv.next.i47, %wide.trip.count.i45
  br i1 %exitcond.not.i48, label %._crit_edge.i, label %bb.p, !llvm.loop !10

_ZN10polynomial7manager3imp10som_buffer5resetEv.exit: ; preds = %bb.m, %_ZNK10polynomial7manager3imp10som_buffer5emptyEv.exit.i, %_ZN6vectorI3mpzLb0EjE5resetEv.exit.i, %bb.o
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 464
  %.sroa.0.0.insert.ext.i.i = zext i32 %2 to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 8
  br label %bb.ay

bb.s:                                             ; preds = %bb.l, %._crit_edge
  %indvars.iv = phi i32 [ %i.bq, %bb.l ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.039129 = phi i32 [ 1, %bb.l ], [ %i.dr, %._crit_edge ] ; 2 uses
  %i.dl = load ptr, ptr %0, align 8, !tbaa !221, !nonnull !98, !align !99
  %i.dm = tail call noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(40) %i.dl)
  br i1 %i.dm, label %_ZN10polynomial7manager3imp10checkpointEv.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dn = tail call ptr @__cxa_allocate_exception(i64 40) #29 ; 3 uses
  invoke void @_ZN10polynomial20polynomial_exceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.dn, ptr noundef nonnull @_ZN11common_msgs14g_canceled_msgE)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @__cxa_throw(ptr nonnull %i.dn, ptr nonnull @_ZTIN10polynomial20polynomial_exceptionE, ptr nonnull @_ZN17default_exceptionD2Ev) #31
  unreachable

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i96, %bb.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %bb.ah, %.body, %bb.v
  %common.resume.op = phi { ptr, i32 } [ %i.do, %bb.v ], [ %eh.lpad-body, %.body ], [ %i.fj, %bb.ah ], [ %i.fe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.hj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i96 ], [ %i.ho, %bb.au ]
  resume { ptr, i32 } %common.resume.op

bb.v:                                             ; preds = %bb.t
  %i.do = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.dn) #29
  br label %common.resume

_ZN10polynomial7manager3imp10checkpointEv.exit:   ; preds = %bb.s
  %i.dp = sub nuw i32 %.122.i, %.039129
  %.not44127 = icmp ugt i32 %i.dp, %i.bq
  br i1 %.not44127, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN10polynomial7manager3imp10checkpointEv.exit
  %i.dq = zext i32 %indvars.iv to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN10polynomial7manager3imp17som_buffer_vectorixEj.exit62, %_ZN10polynomial7manager3imp10checkpointEv.exit
  %i.dr = add i32 %.039129, 1                     ; 2 uses
  %.not = icmp ugt i32 %i.dr, %.122.i
  %indvars.iv.next = add i32 %indvars.iv, -1
  br i1 %.not, label %bb.m, label %bb.s, !llvm.loop !470

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN10polynomial7manager3imp17som_buffer_vectorixEj.exit62
  %indvars.iv143 = phi i64 [ %indvars.iv.next144, %_ZN10polynomial7manager3imp17som_buffer_vectorixEj.exit62 ], [ %i.dq, %.lr.ph.preheader ] ; 5 uses
  %indvars145 = trunc nuw i64 %indvars.iv143 to i32
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 4 uses
  %i.ds = load ptr, ptr %i.br, align 8, !tbaa !248 ; 3 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.i.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph
  %i.du = getelementptr inbounds i8, ptr %i.ds, i64 -4
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !69
  br label %_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.i.i

_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.i.i: ; preds = %bb.w, %.lr.ph
  %.0.i.i.i50 = phi i32 [ %i.dv, %bb.w ], [ 0, %.lr.ph ] ; 2 uses
  %i.dw = zext i32 %.0.i.i.i50 to i64
  %.not131 = icmp samesign ult i64 %indvars.iv143, %i.dw
  br i1 %.not131, label %_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.i.i52, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.i.i, %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE9push_backERKS4_.exit.i.i
  %.05.i.i = phi i32 [ %i.ft, %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE9push_backERKS4_.exit.i.i ], [ %.0.i.i.i50, %_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.i.i ] ; 2 uses
  %i.dx = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 32) ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dx, i8 0, i64 32, i1 false)
  %i.dy = load ptr, ptr %i.bo, align 8, !tbaa !249 ; 2 uses
  %.not.i.i51 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i51, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i
  store ptr %i.dy, ptr %i.dx, align 8, !tbaa !204
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph.i.i
  %i.dz = load ptr, ptr %i.br, align 8, !tbaa !248 ; 4 uses
  %i.ea = icmp eq ptr %i.dz, null
  br i1 %i.ea, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eb = getelementptr inbounds i8, ptr %i.dz, i64 -4
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !69 ; 5 uses
  %i.ed = getelementptr inbounds i8, ptr %i.dz, i64 -8 ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !69
  %i.ef = icmp eq i32 %i.ec, %i.ee
  br i1 %i.ef, label %bb.ab, label %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE9push_backERKS4_.exit.i.i

bb.aa:                                            ; preds = %bb.y
  %i.eg = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24) ; 3 uses
  store i32 2, ptr %i.eg, align 4, !tbaa !69
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  store i32 0, ptr %i.eh, align 4, !tbaa !69
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 2 uses
  store ptr %i.ei, ptr %i.br, align 8, !tbaa !248
  br label %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE13expand_vectorEv.exit

bb.ab:                                            ; preds = %bb.z
  %i.ej = mul i32 %i.ec, 3
  %i.ek = add i32 %i.ej, 1
  %i.el = lshr i32 %i.ek, 1                       ; 3 uses
  %i.em = shl i32 %i.el, 3
  %i.en = add i32 %i.em, 8                        ; 2 uses
  %.not.i88 = icmp ugt i32 %i.el, %i.ec
  br i1 %.not.i88, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.eo = shl i32 %i.ec, 3
  %i.ep = add i32 %i.eo, 8
  %.not27.i = icmp ugt i32 %i.en, %i.ep
  br i1 %.not27.i, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.eq = tail call ptr @__cxa_allocate_exception(i64 40) #29 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.ae unwind label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.eq, align 8, !tbaa !172
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 24 ; 3 uses
  store ptr %i.es, ptr %i.er, align 8, !tbaa !225
  %i.et = load ptr, ptr %8, align 8, !tbaa !168   ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.ev = icmp eq ptr %i.et, %i.eu
  br i1 %i.ev, label %bb.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.ew = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !169 ; 3 uses
  %i.ey = icmp ult i64 %i.ex, 16
  call void @llvm.assume(i1 %i.ey)
  %i.ez = add nuw nsw i64 %i.ex, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.es, ptr noundef nonnull align 8 dereferenceable(1) %i.eu, i64 %i.ez, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ae
  store ptr %i.et, ptr %i.er, align 8, !tbaa !168
  %i.fa = load i64, ptr %i.eu, align 8, !tbaa !170
  store i64 %i.fa, ptr %i.es, align 8, !tbaa !170
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !169
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.af
  %i.fb = phi i64 [ %i.ex, %bb.af ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.fc = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store i64 %i.fb, ptr %i.fd, align 8, !tbaa !169
  store ptr %i.eu, ptr %8, align 8, !tbaa !168
  store i64 0, ptr %i.fc, align 8, !tbaa !169
  store i8 0, ptr %i.eu, align 8, !tbaa !170
  invoke void @__cxa_throw(ptr nonnull %i.eq, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #31
          to label %bb.aj unwind label %bb.ag

bb.ag:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.fe = landingpad { ptr, i32 }
          cleanup
  %i.ff = load ptr, ptr %8, align 8, !tbaa !168   ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.eu
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.ag
  %i.fh = load i64, ptr %i.eu, align 8, !tbaa !170
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fi) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %common.resume

bb.ah:                                            ; preds = %bb.ad
  %i.fj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @__cxa_free_exception(ptr %i.eq) #29
  br label %common.resume

bb.ai:                                            ; preds = %bb.ac
  %i.fk = zext i32 %i.en to i64
  %i.fl = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.ed, i64 noundef %i.fk) ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 2 uses
  store ptr %i.fm, ptr %i.br, align 8, !tbaa !248
  store i32 %i.el, ptr %i.fl, align 4, !tbaa !69
  br label %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE13expand_vectorEv.exit

bb.aj:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE13expand_vectorEv.exit: ; preds = %bb.aa, %bb.ai
  %.pre.i.i.i = phi ptr [ %i.ei, %bb.aa ], [ %i.fm, %bb.ai ] ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !69
  br label %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE9push_backERKS4_.exit.i.i

_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE9push_backERKS4_.exit.i.i: ; preds = %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE13expand_vectorEv.exit, %bb.z
  %i.fn = phi i32 [ %.pre2.i.i.i, %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE13expand_vectorEv.exit ], [ %i.ec, %bb.z ] ; 2 uses
  %i.fo = phi ptr [ %.pre.i.i.i, %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE13expand_vectorEv.exit ], [ %i.dz, %bb.z ] ; 3 uses
  %i.fp = getelementptr inbounds i8, ptr %i.fo, i64 -4
  %i.fq = zext i32 %i.fn to i64
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.fq
  store ptr %i.dx, ptr %i.fr, align 8, !tbaa !218
  %i.fs = add i32 %i.fn, 1
  store i32 %i.fs, ptr %i.fp, align 4, !tbaa !69
  %i.ft = add i32 %.05.i.i, 1
  %i.fu = zext i32 %.05.i.i to i64
  %exitcond.not.i.i = icmp eq i64 %indvars.iv143, %i.fu
  br i1 %exitcond.not.i.i, label %_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.i.i52, label %.lr.ph.i.i, !llvm.loop !24

_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.i.i52: ; preds = %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE9push_backERKS4_.exit.i.i, %_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.i.i
  %i.fv = phi ptr [ %i.ds, %_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.i.i ], [ %i.fo, %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE9push_backERKS4_.exit.i.i ] ; 3 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %indvars.iv143
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !218 ; 2 uses
  %i.fy = add i32 %indvars145, 2
  %i.fz = getelementptr inbounds i8, ptr %i.fv, i64 -4
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !69 ; 2 uses
  %i.gb = icmp ult i32 %i.ga, %i.fy
  br i1 %i.gb, label %.lr.ph.i.i54, label %_ZN10polynomial7manager3imp17som_buffer_vectorixEj.exit62

.lr.ph.i.i54:                                     ; preds = %_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.i.i52, %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE9push_backERKS4_.exit.i.i57
  %.05.i.i55 = phi i32 [ %i.hy, %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE9push_backERKS4_.exit.i.i57 ], [ %i.ga, %_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.i.i52 ] ; 2 uses
  %i.gc = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 32) ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gc, i8 0, i64 32, i1 false)
  %i.gd = load ptr, ptr %i.bo, align 8, !tbaa !249 ; 2 uses
  %.not.i.i56 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i56, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i54
  store ptr %i.gd, ptr %i.gc, align 8, !tbaa !204
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.lr.ph.i.i54
  %i.ge = load ptr, ptr %i.br, align 8, !tbaa !248 ; 4 uses
  %i.gf = icmp eq ptr %i.ge, null
  br i1 %i.gf, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gg = getelementptr inbounds i8, ptr %i.ge, i64 -4
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !69 ; 5 uses
  %i.gi = getelementptr inbounds i8, ptr %i.ge, i64 -8 ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !69
  %i.gk = icmp eq i32 %i.gh, %i.gj
  br i1 %i.gk, label %bb.ao, label %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE9push_backERKS4_.exit.i.i57

bb.an:                                            ; preds = %bb.al
  %i.gl = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24) ; 3 uses
  store i32 2, ptr %i.gl, align 4, !tbaa !69
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  store i32 0, ptr %i.gm, align 4, !tbaa !69
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 8 ; 2 uses
  store ptr %i.gn, ptr %i.br, align 8, !tbaa !248
  br label %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE13expand_vectorEv.exit99

bb.ao:                                            ; preds = %bb.am
  %i.go = mul i32 %i.gh, 3
  %i.gp = add i32 %i.go, 1
  %i.gq = lshr i32 %i.gp, 1                       ; 3 uses
  %i.gr = shl i32 %i.gq, 3
  %i.gs = add i32 %i.gr, 8                        ; 2 uses
  %.not.i89 = icmp ugt i32 %i.gq, %i.gh
  br i1 %.not.i89, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.gt = shl i32 %i.gh, 3
  %i.gu = add i32 %i.gt, 8
  %.not27.i98 = icmp ugt i32 %i.gs, %i.gu
  br i1 %.not27.i98, label %bb.av, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.gv = tail call ptr @__cxa_allocate_exception(i64 40) #29 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.ar unwind label %bb.au

bb.ar:                                            ; preds = %bb.aq
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.gv, align 8, !tbaa !172
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 24 ; 3 uses
  store ptr %i.gx, ptr %i.gw, align 8, !tbaa !225
  %i.gy = load ptr, ptr %6, align 8, !tbaa !168   ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.ha = icmp eq ptr %i.gy, %i.gz
  br i1 %i.ha, label %bb.as, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i91

bb.as:                                            ; preds = %bb.ar
  %i.hb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !169 ; 3 uses
  %i.hd = icmp ult i64 %i.hc, 16
  call void @llvm.assume(i1 %i.hd)
  %i.he = add nuw nsw i64 %i.hc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gx, ptr noundef nonnull align 8 dereferenceable(1) %i.gz, i64 %i.he, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i91: ; preds = %bb.ar
  store ptr %i.gy, ptr %i.gw, align 8, !tbaa !168
  %i.hf = load i64, ptr %i.gz, align 8, !tbaa !170
  store i64 %i.hf, ptr %i.gx, align 8, !tbaa !170
  %.phi.trans.insert.i92 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.pre.i93 = load i64, ptr %.phi.trans.insert.i92, align 8, !tbaa !169
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i94

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i94: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i91, %bb.as
  %i.hg = phi i64 [ %i.hc, %bb.as ], [ %.pre.i93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i91 ]
  %i.hh = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  store i64 %i.hg, ptr %i.hi, align 8, !tbaa !169
  store ptr %i.gz, ptr %6, align 8, !tbaa !168
  store i64 0, ptr %i.hh, align 8, !tbaa !169
  store i8 0, ptr %i.gz, align 8, !tbaa !170
  invoke void @__cxa_throw(ptr nonnull %i.gv, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #31
          to label %bb.aw unwind label %bb.at

bb.at:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i94
  %i.hj = landingpad { ptr, i32 }
          cleanup
  %i.hk = load ptr, ptr %6, align 8, !tbaa !168   ; 2 uses
  %i.hl = icmp eq ptr %i.hk, %i.gz
  br i1 %i.hl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i95: ; preds = %bb.at
  %i.hm = load i64, ptr %i.gz, align 8, !tbaa !170
  %i.hn = add i64 %i.hm, 1
  call void @_ZdlPvm(ptr noundef %i.hk, i64 noundef %i.hn) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i96: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %common.resume

bb.au:                                            ; preds = %bb.aq
  %i.ho = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @__cxa_free_exception(ptr %i.gv) #29
  br label %common.resume

bb.av:                                            ; preds = %bb.ap
  %i.hp = zext i32 %i.gs to i64
  %i.hq = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.gi, i64 noundef %i.hp) ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8 ; 2 uses
  store ptr %i.hr, ptr %i.br, align 8, !tbaa !248
  store i32 %i.gq, ptr %i.hq, align 4, !tbaa !69
  br label %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE13expand_vectorEv.exit99

bb.aw:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i94
  unreachable

_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE13expand_vectorEv.exit99: ; preds = %bb.an, %bb.av
  %.pre.i.i.i59 = phi ptr [ %i.gn, %bb.an ], [ %i.hr, %bb.av ] ; 2 uses
  %.phi.trans.insert.i.i.i60 = getelementptr inbounds i8, ptr %.pre.i.i.i59, i64 -4
  %.pre2.i.i.i61 = load i32, ptr %.phi.trans.insert.i.i.i60, align 4, !tbaa !69
  br label %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE9push_backERKS4_.exit.i.i57

_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE9push_backERKS4_.exit.i.i57: ; preds = %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE13expand_vectorEv.exit99, %bb.am
  %i.hs = phi i32 [ %.pre2.i.i.i61, %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE13expand_vectorEv.exit99 ], [ %i.gh, %bb.am ] ; 2 uses
  %i.ht = phi ptr [ %.pre.i.i.i59, %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE13expand_vectorEv.exit99 ], [ %i.ge, %bb.am ] ; 3 uses
  %i.hu = getelementptr inbounds i8, ptr %i.ht, i64 -4
  %i.hv = zext i32 %i.hs to i64
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %i.hv
  store ptr %i.gc, ptr %i.hw, align 8, !tbaa !218
  %i.hx = add i32 %i.hs, 1
  store i32 %i.hx, ptr %i.hu, align 4, !tbaa !69
  %i.hy = add i32 %.05.i.i55, 1
  %i.hz = zext i32 %.05.i.i55 to i64
  %exitcond.not.i.i58 = icmp eq i64 %indvars.iv.next144, %i.hz
  br i1 %exitcond.not.i.i58, label %_ZN10polynomial7manager3imp17som_buffer_vectorixEj.exit62, label %.lr.ph.i.i54, !llvm.loop !24

_ZN10polynomial7manager3imp17som_buffer_vectorixEj.exit62: ; preds = %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE9push_backERKS4_.exit.i.i57, %_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.i.i52
  %i.ia = phi ptr [ %i.fv, %_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.i.i52 ], [ %i.ht, %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE9push_backERKS4_.exit.i.i57 ]
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %indvars.iv.next144
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !218
  %i.id = load ptr, ptr %i.fx, align 8, !tbaa !204
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 464
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !150
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 112
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !158
  tail call void @_ZN10polynomial7manager3imp10som_buffer11addmul_coreIS2_Lb0EEEvRK3mpzPKNS_8monomialEPKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.fx, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.ih, ptr noundef %i.ic)
  %lftr.wideiv = trunc i64 %indvars.iv.next144 to i32
  %exitcond.not = icmp eq i32 %.122.i, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !471

bb.ax:                                            ; preds = %bb.bt
  invoke void @_ZN10polynomial7manager3imp17som_buffer_vector5resetEj(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i32 noundef %i.bp)
          to label %bb.bu unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ay:                                            ; preds = %_ZN10polynomial7manager3imp10som_buffer5resetEv.exit, %bb.bt
  %i.ii = phi ptr [ null, %_ZN10polynomial7manager3imp10som_buffer5resetEv.exit ], [ %i.iy, %bb.bt ] ; 4 uses
  %.0130 = phi i32 [ 0, %_ZN10polynomial7manager3imp10som_buffer5resetEv.exit ], [ %12, %bb.bt ] ; 5 uses
  %i.ij = load ptr, ptr %i.di, align 8, !tbaa !150 ; 4 uses
  %i.ik = icmp eq i32 %.0130, 0
  br i1 %i.ik, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 112
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !158
  br label %_ZN10polynomial7manager3imp11mk_monomialEjj.exit

bb.ba:                                            ; preds = %bb.ay
  %i.in = getelementptr inbounds nuw i8, ptr %i.ij, i64 120 ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.ij, i64 128 ; 2 uses
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !187
  %i.iq = icmp eq i32 %i.ip, 0
  %.pre.i.i.i.i = load ptr, ptr %i.in, align 8, !tbaa !186 ; 2 uses
  br i1 %i.iq, label %.thread.i.i.i.i, label %.lr.ph.i.i.i.preheader.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.ba
  invoke void @_ZN6memory10deallocateEPv(ptr noundef %.pre.i.i.i.i)
          to label %.noexc64 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc64:                                         ; preds = %.thread.i.i.i.i
  %i.ir = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 36)
          to label %.noexc65 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc65:                                         ; preds = %.noexc64
  store i32 0, ptr %i.ir, align 4, !tbaa !198
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 4
  store i32 -1, ptr %i.is, align 4, !tbaa !173
  %i.it = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  store i32 0, ptr %i.it, align 4, !tbaa !78
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  store i32 0, ptr %i.iu, align 4, !tbaa !185
  store ptr %i.ir, ptr %i.in, align 8, !tbaa !186
  store i32 2, ptr %i.io, align 8, !tbaa !187
  br label %.lr.ph.i.i.i.preheader.i.i.i.i

.lr.ph.i.i.i.preheader.i.i.i.i:                   ; preds = %.noexc65, %bb.ba
  %.pre.i.i.sink.i.i = phi ptr [ %i.ir, %.noexc65 ], [ %.pre.i.i.i.i, %bb.ba ] ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.pre.i.i.sink.i.i, i64 12
  store i32 1, ptr %i.iv, align 4, !tbaa !77
  %i.iw = getelementptr inbounds nuw i8, ptr %.pre.i.i.sink.i.i, i64 20
  %.sroa.4.0.insert.ext.i.i = zext i32 %.0130 to i64
  %.sroa.4.0.insert.shift.i.i = shl nuw i64 %.sroa.4.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.4.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.iw, align 4
  %i.ix = invoke noundef ptr @_ZN10polynomial16monomial_manager11mk_monomialERNS_12tmp_monomialE(ptr noundef nonnull align 8 dereferenceable(192) %i.ij, ptr noundef nonnull align 8 dereferenceable(12) %i.in)
          to label %_ZN10polynomial7manager3imp11mk_monomialEjj.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN10polynomial7manager3imp11mk_monomialEjj.exit: ; preds = %bb.az, %.lr.ph.i.i.i.preheader.i.i.i.i
  %i.iy = phi ptr [ %i.im, %bb.az ], [ %i.ix, %.lr.ph.i.i.i.preheader.i.i.i.i ] ; 9 uses
  %.not.i = icmp eq ptr %i.iy, null               ; 2 uses
  br i1 %.not.i, label %bb.bb, label %_ZN10polynomial7manager7inc_refEPNS_8monomialE.exit.i

_ZN10polynomial7manager7inc_refEPNS_8monomialE.exit.i: ; preds = %_ZN10polynomial7manager3imp11mk_monomialEjj.exit
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !198
  %i.ja = add i32 %i.iz, 1
  store i32 %i.ja, ptr %i.iy, align 4, !tbaa !198
  br label %bb.bb

bb.bb:                                            ; preds = %_ZN10polynomial7manager7inc_refEPNS_8monomialE.exit.i, %_ZN10polynomial7manager3imp11mk_monomialEjj.exit
  %.not.i4.i = icmp eq ptr %i.ii, null
  br i1 %.not.i4.i, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.jb = load ptr, ptr %i.bu, align 8, !tbaa !222, !nonnull !98, !align !99
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !93
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 464
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !150
  %i.jf = load i32, ptr %i.ii, align 4, !tbaa !198
  %i.jg = add i32 %i.jf, -1                       ; 2 uses
  store i32 %i.jg, ptr %i.ii, align 4, !tbaa !198
  %i.jh = icmp eq i32 %i.jg, 0
  br i1 %i.jh, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZN10polynomial16monomial_manager3delEPNS_8monomialE(ptr noundef nonnull align 8 dereferenceable(192) %i.je, ptr noundef nonnull %i.ii)
          to label %bb.be unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.be:                                            ; preds = %bb.bc, %bb.bb, %bb.bd
  store ptr %i.iy, ptr %11, align 8, !tbaa !220
  %12 = add i32 %.0130, 1                         ; 3 uses
  %i.ji = load ptr, ptr %i.br, align 8, !tbaa !248 ; 3 uses
  %i.jj = icmp eq ptr %i.ji, null
  br i1 %i.jj, label %_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.i.i68, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.jk = getelementptr inbounds i8, ptr %i.ji, i64 -4
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !69
  br label %_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.i.i68

_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.i.i68: ; preds = %bb.bf, %bb.be
  %.0.i.i.i69 = phi i32 [ %i.jl, %bb.bf ], [ 0, %bb.be ] ; 2 uses
  %i.jm = icmp ult i32 %.0.i.i.i69, %12
  br i1 %i.jm, label %.lr.ph.i.i70, label %.loopexit116

.lr.ph.i.i70:                                     ; preds = %_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.i.i68, %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE9push_backERKS4_.exit.i.i73
  %.05.i.i71 = phi i32 [ %i.lj, %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE9push_backERKS4_.exit.i.i73 ], [ %.0.i.i.i69, %_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.i.i68 ] ; 2 uses
  %i.jn = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 32)
          to label %.noexc78 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc78:                                         ; preds = %.lr.ph.i.i70
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jn, i8 0, i64 32, i1 false)
  %i.jo = load ptr, ptr %i.bo, align 8, !tbaa !249 ; 2 uses
  %.not.i.i72 = icmp eq ptr %i.jo, null
  br i1 %.not.i.i72, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %.noexc78
  store ptr %i.jo, ptr %i.jn, align 8, !tbaa !204
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %.noexc78
  %i.jp = load ptr, ptr %i.br, align 8, !tbaa !248 ; 4 uses
  %i.jq = icmp eq ptr %i.jp, null
  br i1 %i.jq, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jr = getelementptr inbounds i8, ptr %i.jp, i64 -4
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !69 ; 5 uses
  %i.jt = getelementptr inbounds i8, ptr %i.jp, i64 -8 ; 2 uses
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !69
  %i.jv = icmp eq i32 %i.js, %i.ju
  br i1 %i.jv, label %bb.bk, label %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE9push_backERKS4_.exit.i.i73

bb.bj:                                            ; preds = %bb.bh
  %i.jw = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24)
          to label %.noexc110 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc110:                                        ; preds = %bb.bj
  store i32 2, ptr %i.jw, align 4, !tbaa !69
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 4
  store i32 0, ptr %i.jx, align 4, !tbaa !69
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 8 ; 2 uses
  store ptr %i.jy, ptr %i.br, align 8, !tbaa !248
  br label %.noexc79

bb.bk:                                            ; preds = %bb.bi
  %i.jz = mul i32 %i.js, 3
  %i.ka = add i32 %i.jz, 1
  %i.kb = lshr i32 %i.ka, 1                       ; 3 uses
  %i.kc = shl i32 %i.kb, 3
  %i.kd = add i32 %i.kc, 8                        ; 2 uses
  %.not.i100 = icmp ugt i32 %i.kb, %i.js
  br i1 %.not.i100, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.ke = shl i32 %i.js, 3
  %i.kf = add i32 %i.ke, 8
  %.not27.i109 = icmp ugt i32 %i.kd, %i.kf
  br i1 %.not27.i109, label %bb.br, label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.kg = call ptr @__cxa_allocate_exception(i64 40) #29 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.bn unwind label %bb.bq

bb.bn:                                            ; preds = %bb.bm
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.kg, align 8, !tbaa !172
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 8 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 24 ; 3 uses
  store ptr %i.ki, ptr %i.kh, align 8, !tbaa !225
  %i.kj = load ptr, ptr %4, align 8, !tbaa !168   ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.kl = icmp eq ptr %i.kj, %i.kk
  br i1 %i.kl, label %bb.bo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i102

bb.bo:                                            ; preds = %bb.bn
  %i.km = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !169 ; 3 uses
  %i.ko = icmp ult i64 %i.kn, 16
  call void @llvm.assume(i1 %i.ko)
  %i.kp = add nuw nsw i64 %i.kn, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ki, ptr noundef nonnull align 8 dereferenceable(1) %i.kk, i64 %i.kp, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i102: ; preds = %bb.bn
  store ptr %i.kj, ptr %i.kh, align 8, !tbaa !168
  %i.kq = load i64, ptr %i.kk, align 8, !tbaa !170
  store i64 %i.kq, ptr %i.ki, align 8, !tbaa !170
  %.phi.trans.insert.i103 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre.i104 = load i64, ptr %.phi.trans.insert.i103, align 8, !tbaa !169
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i105

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i105: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i102, %bb.bo
  %i.kr = phi i64 [ %i.kn, %bb.bo ], [ %.pre.i104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i102 ]
  %i.ks = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  store i64 %i.kr, ptr %i.kt, align 8, !tbaa !169
  store ptr %i.kk, ptr %4, align 8, !tbaa !168
  store i64 0, ptr %i.ks, align 8, !tbaa !169
  store i8 0, ptr %i.kk, align 8, !tbaa !170
  invoke void @__cxa_throw(ptr nonnull %i.kg, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #31
          to label %bb.bs unwind label %bb.bp

bb.bp:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i105
  %i.ku = landingpad { ptr, i32 }
          cleanup
  %i.kv = load ptr, ptr %4, align 8, !tbaa !168   ; 2 uses
  %i.kw = icmp eq ptr %i.kv, %i.kk
  br i1 %i.kw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i106: ; preds = %bb.bp
  %i.kx = load i64, ptr %i.kk, align 8, !tbaa !170
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %i.kv, i64 noundef %i.ky) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i107: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i106
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %.body

bb.bq:                                            ; preds = %bb.bm
  %i.kz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @__cxa_free_exception(ptr %i.kg) #29
  br label %.body

bb.br:                                            ; preds = %bb.bl
  %i.la = zext i32 %i.kd to i64
  %i.lb = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.jt, i64 noundef %i.la)
          to label %.noexc111 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc111:                                        ; preds = %bb.br
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8 ; 2 uses
  store ptr %i.lc, ptr %i.br, align 8, !tbaa !248
  store i32 %i.kb, ptr %i.lb, align 4, !tbaa !69
  br label %.noexc79

bb.bs:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i105
  unreachable

.noexc79:                                         ; preds = %.noexc111, %.noexc110
  %.pre.i.i.i75 = phi ptr [ %i.lc, %.noexc111 ], [ %i.jy, %.noexc110 ] ; 2 uses
  %.phi.trans.insert.i.i.i76 = getelementptr inbounds i8, ptr %.pre.i.i.i75, i64 -4
  %.pre2.i.i.i77 = load i32, ptr %.phi.trans.insert.i.i.i76, align 4, !tbaa !69
  br label %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE9push_backERKS4_.exit.i.i73

_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE9push_backERKS4_.exit.i.i73: ; preds = %.noexc79, %bb.bi
  %i.ld = phi i32 [ %.pre2.i.i.i77, %.noexc79 ], [ %i.js, %bb.bi ] ; 2 uses
  %i.le = phi ptr [ %.pre.i.i.i75, %.noexc79 ], [ %i.jp, %bb.bi ] ; 3 uses
  %i.lf = getelementptr inbounds i8, ptr %i.le, i64 -4
  %i.lg = zext i32 %i.ld to i64
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %i.lg
  store ptr %i.jn, ptr %i.lh, align 8, !tbaa !218
  %i.li = add i32 %i.ld, 1
  store i32 %i.li, ptr %i.lf, align 4, !tbaa !69
  %i.lj = add i32 %.05.i.i71, 1
  %exitcond.not.i.i74 = icmp eq i32 %.05.i.i71, %.0130
  br i1 %exitcond.not.i.i74, label %.loopexit116, label %.lr.ph.i.i70, !llvm.loop !24

.loopexit116:                                     ; preds = %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE9push_backERKS4_.exit.i.i73, %_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.i.i68
  %i.lk = phi ptr [ %i.ji, %_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.i.i68 ], [ %i.le, %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE9push_backERKS4_.exit.i.i73 ]
  %13 = zext i32 %.0130 to i64
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.lk, i64 %13
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !218
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  store i32 1, ptr %10, align 8, !tbaa !90
  %i.ln = load i8, ptr %i.dj, align 4
  %i.lo = and i8 %i.ln, -4
  store i8 %i.lo, ptr %i.dj, align 4
  store ptr null, ptr %i.dk, align 8, !tbaa !83
  invoke void @_ZN10polynomial7manager3imp10som_buffer11addmul_coreIS2_Lb0EEEvRK3mpzPKNS_8monomialEPKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef %i.iy, ptr noundef %i.lm)
          to label %bb.bt unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bt:                                            ; preds = %.loopexit116
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %.not42 = icmp ugt i32 %12, %.122.i
  br i1 %.not42, label %bb.ax, label %bb.ay, !llvm.loop !472

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.thread.i.i.i.i, %.noexc64, %.lr.ph.i.i.i.preheader.i.i.i.i, %bb.bd, %.loopexit116, %.lr.ph.i.i70, %bb.bj, %bb.br, %bb.r, %_ZN10polynomial12monomial2pos5resetEPKNS_8monomialE.exit.i, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i, %bb.bu, %bb.ax
  %lpad.loopexit.split-lp238 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i107, %bb.bq
  %eh.lpad-body = phi { ptr, i32 } [ %i.kz, %bb.bq ], [ %i.ku, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i107 ], [ %lpad.loopexit.split-lp238, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN7obj_refIN10polynomial8monomialENS0_7managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %common.resume

bb.bu:                                            ; preds = %bb.ax
  invoke void @_ZN10polynomial7manager3imp10som_buffer12remove_zerosEb(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, i1 noundef zeroext false)
          to label %.noexc85 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc85:                                         ; preds = %bb.bu
  %i.lp = load ptr, ptr %i.bv, align 8, !tbaa !204
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !161 ; 3 uses
  %i.ls = icmp eq ptr %i.lr, null
  br i1 %i.ls, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i, label %bb.bv

bb.bv:                                            ; preds = %.noexc85
  %i.lt = getelementptr inbounds i8, ptr %i.lr, i64 -4
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !69
  br label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i:             ; preds = %bb.bv, %.noexc85
  %.0.i.i82 = phi i32 [ %i.lu, %bb.bv ], [ 0, %.noexc85 ]
  %i.lv = load ptr, ptr %i.bw, align 8, !tbaa !162
  %i.lw = invoke noundef ptr @_ZN10polynomial7manager3imp18mk_polynomial_coreEjP3mpzPKPNS_8monomialE(ptr noundef nonnull align 8 dereferenceable(824) %i.lp, i32 noundef %.0.i.i82, ptr noundef %i.lr, ptr noundef %i.lv)
          to label %.noexc86 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc86:                                         ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i
  %i.lx = load ptr, ptr %i.lq, align 8, !tbaa !161 ; 2 uses
  %.not.i.i83 = icmp eq ptr %i.lx, null
  br i1 %.not.i.i83, label %_ZN6vectorI3mpzLb0EjE5resetEv.exit.i84, label %bb.bw

bb.bw:                                            ; preds = %.noexc86
  %i.ly = getelementptr inbounds i8, ptr %i.lx, i64 -4
  store i32 0, ptr %i.ly, align 4, !tbaa !69
  br label %_ZN6vectorI3mpzLb0EjE5resetEv.exit.i84

_ZN6vectorI3mpzLb0EjE5resetEv.exit.i84:           ; preds = %bb.bw, %.noexc86
  %i.lz = load ptr, ptr %i.bw, align 8, !tbaa !162 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.lz, null
  br i1 %.not.i2.i, label %_ZN10polynomial7manager3imp10som_buffer2mkEb.exit, label %bb.bx

bb.bx:                                            ; preds = %_ZN6vectorI3mpzLb0EjE5resetEv.exit.i84
  %i.ma = getelementptr inbounds i8, ptr %i.lz, i64 -4
  store i32 0, ptr %i.ma, align 4, !tbaa !69
  br label %_ZN10polynomial7manager3imp10som_buffer2mkEb.exit

_ZN10polynomial7manager3imp10som_buffer2mkEb.exit: ; preds = %bb.bx, %_ZN6vectorI3mpzLb0EjE5resetEv.exit.i84
  br i1 %.not.i, label %_ZN7obj_refIN10polynomial8monomialENS0_7managerEED2Ev.exit, label %bb.by

bb.by:                                            ; preds = %_ZN10polynomial7manager3imp10som_buffer2mkEb.exit
  %i.mb = load ptr, ptr %i.bu, align 8, !tbaa !222, !nonnull !98, !align !99
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !93
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 464
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !150
  %i.mf = load i32, ptr %i.iy, align 4, !tbaa !198
  %i.mg = add i32 %i.mf, -1                       ; 2 uses
  store i32 %i.mg, ptr %i.iy, align 4, !tbaa !198
  %i.mh = icmp eq i32 %i.mg, 0
  br i1 %i.mh, label %bb.bz, label %_ZN7obj_refIN10polynomial8monomialENS0_7managerEED2Ev.exit

bb.bz:                                            ; preds = %bb.by
  invoke void @_ZN10polynomial16monomial_manager3delEPNS_8monomialE(ptr noundef nonnull align 8 dereferenceable(192) %i.me, ptr noundef nonnull %i.iy)
          to label %_ZN7obj_refIN10polynomial8monomialENS0_7managerEED2Ev.exit unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.mi = landingpad { ptr, i32 }
          catch ptr null
  %i.mj = extractvalue { ptr, i32 } %i.mi, 0
  call void @__clang_call_terminate(ptr %i.mj) #28
  unreachable

_ZN7obj_refIN10polynomial8monomialENS0_7managerEED2Ev.exit: ; preds = %_ZN10polynomial7manager3imp10som_buffer2mkEb.exit, %bb.by, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %_ZN10polynomial7manager6degreeEPKNS_10polynomialEj.exit.thread

_ZN10polynomial7manager6degreeEPKNS_10polynomialEj.exit.thread: ; preds = %bb.b, %bb.a, %_ZN10polynomial7manager6degreeEPKNS_10polynomialEj.exit, %bb.k, %_ZN7obj_refIN10polynomial8monomialENS0_7managerEED2Ev.exit
  %.040 = phi ptr [ %i.lw, %_ZN7obj_refIN10polynomial8monomialENS0_7managerEED2Ev.exit ], [ %1, %bb.k ], [ %1, %_ZN10polynomial7manager6degreeEPKNS_10polynomialEj.exit ], [ %1, %bb.a ], [ %1, %bb.b ]
  ret ptr %.040
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10polynomial7manager9translateEPKNS_10polynomialEjPKjPK3mpzR7obj_refIS1_S0_E(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(16) %5) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !93
  tail call void @_ZN10polynomial7manager3imp9translateEPKNS_10polynomialEjPKjPK3mpzR7obj_refIS2_S0_E(ptr noundef nonnull align 8 dereferenceable(824) %i.a, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(16) %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN10polynomial7manager3imp9translateEPKNS_10polynomialEjPKjPK3mpzR7obj_refIS2_S0_E(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(16) %5) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.b, label %_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i

_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i: ; preds = %bb.a
  %i.a = load i32, ptr %1, align 8, !tbaa !107
  %i.b = add i32 %i.a, 1
  store i32 %i.b, ptr %1, align 8, !tbaa !107
  br label %bb.b

bb.b:                                             ; preds = %_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i, %bb.a
  %i.c = load ptr, ptr %5, align 8, !tbaa !109    ; 4 uses
  %.not.i4.i = icmp eq ptr %i.c, null
  br i1 %.not.i4.i, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSEPS1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !110, !nonnull !98, !align !99
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !93
  %i.g = load i32, ptr %i.c, align 8, !tbaa !107
  %i.h = add i32 %i.g, -1                         ; 2 uses
  store i32 %i.h, ptr %i.c, align 8, !tbaa !107
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSEPS1_.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN10polynomial7manager3imp3delEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(824) %i.f, ptr noundef nonnull %i.c)
  br label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSEPS1_.exit

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSEPS1_.exit: ; preds = %bb.b, %bb.c, %bb.d
  store ptr %1, ptr %5, align 8, !tbaa !109
  %i.j = icmp eq i32 %2, 0
  br i1 %i.j, label %_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSEPS1_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !174
  switch i32 %i.l, label %.fold.split.i.preheader [
    i32 0, label %_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit.thread
    i32 1, label %_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit
  ]

_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit: ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !175
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !176
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !77
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit.thread, label %.fold.split.i.preheader

.fold.split.i.preheader:                          ; preds = %_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %wide.trip.count = zext i32 %2 to i64
  br label %bb.f

bb.f:                                             ; preds = %.fold.split.i.preheader, %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSEPS1_.exit17
  %i.t = phi ptr [ %1, %.fold.split.i.preheader ], [ %i.x, %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSEPS1_.exit17 ]
  %indvars.iv = phi i64 [ 0, %.fold.split.i.preheader ], [ %indvars.iv.next, %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSEPS1_.exit17 ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.v = load i32, ptr %i.u, align 4, !tbaa !69
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv
  %i.x = tail call noundef ptr @_ZN10polynomial7manager3imp9translateEPKNS_10polynomialEjRK3mpz(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef %i.t, i32 noundef %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.w) ; 5 uses
  %.not.i14 = icmp eq ptr %i.x, null
  br i1 %.not.i14, label %bb.g, label %_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i15

_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i15: ; preds = %bb.f
  %i.y = load i32, ptr %i.x, align 8, !tbaa !107
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.x, align 8, !tbaa !107
  br label %bb.g

bb.g:                                             ; preds = %_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i15, %bb.f
  %i.aa = load ptr, ptr %5, align 8, !tbaa !109   ; 4 uses
  %.not.i4.i16 = icmp eq ptr %i.aa, null
  br i1 %.not.i4.i16, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSEPS1_.exit17, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !110, !nonnull !98, !align !99
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !93
  %i.ad = load i32, ptr %i.aa, align 8, !tbaa !107
  %i.ae = add i32 %i.ad, -1                       ; 2 uses
  store i32 %i.ae, ptr %i.aa, align 8, !tbaa !107
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.i, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSEPS1_.exit17

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN10polynomial7manager3imp3delEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(824) %i.ac, ptr noundef nonnull %i.aa)
  br label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSEPS1_.exit17

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSEPS1_.exit17: ; preds = %bb.g, %bb.h, %bb.i
  store ptr %i.x, ptr %5, align 8, !tbaa !109
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit.thread, label %bb.f, !llvm.loop !473

_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit.thread: ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSEPS1_.exit17, %bb.e, %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSEPS1_.exit, %_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN10polynomial7manager5mod_dEPKNS_10polynomialERKNS_10var2degreeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 align 2 {
end_hunk_0
begin_hunk_1_@_ZN10polynomial7manager3imp34extract_and_init_lift_coefficientsERN11upolynomial12core_managerEPKNS_10polynomialEjjRKNS2_21scoped_numeral_vectorESA_RK3mpzR6vectorIPS8_Lb1EjESH_SH_:bb.a

.noexc71:                                         ; preds = %bb.ab
  %.pre.i69 = load ptr, ptr %8, align 8, !tbaa !331 ; 2 uses
  %.phi.trans.insert.i70 = getelementptr inbounds i8, ptr %.pre.i69, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i70, align 4, !tbaa !69
  br label %bb.ac

bb.ac:                                            ; preds = %.noexc71, %bb.aa
  %i.ev = phi i32 [ %.pre2.i, %.noexc71 ], [ %i.er, %bb.aa ] ; 2 uses
  %i.ew = phi ptr [ %.pre.i69, %.noexc71 ], [ %i.eo, %bb.aa ] ; 2 uses
  %i.ex = getelementptr inbounds i8, ptr %i.ew, i64 -4
  %i.ey = zext i32 %i.ev to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.ey
  store ptr %i.y, ptr %i.ez, align 8, !tbaa !333
  %i.fa = add i32 %i.ev, 1
  store i32 %i.fa, ptr %i.ex, align 4, !tbaa !69
  %i.fb = load ptr, ptr %11, align 8, !tbaa !109  ; 4 uses
  %.not.i.i = icmp eq ptr %i.fb, null
  br i1 %.not.i.i, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fc = load ptr, ptr %i.e, align 8, !tbaa !110, !nonnull !98, !align !99
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !93
  %i.fe = load i32, ptr %i.fb, align 8, !tbaa !107
  %i.ff = add i32 %i.fe, -1                       ; 2 uses
  store i32 %i.ff, ptr %i.fb, align 8, !tbaa !107
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %bb.ae, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN10polynomial7manager3imp3delEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(824) %i.fd, ptr noundef nonnull %i.fb)
          to label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fh = landingpad { ptr, i32 }
          catch ptr null
  %i.fi = extractvalue { ptr, i32 } %i.fh, 0
  call void @__clang_call_terminate(ptr %i.fi) #28
  unreachable

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit: ; preds = %bb.ac, %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  %i.fj = add i32 %.049131, 1                     ; 2 uses
  %.not = icmp ugt i32 %i.fj, %4
  br i1 %.not, label %.critedge61.preheader, label %bb.b, !llvm.loop !779

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.r
  %.pn56.pn = phi { ptr, i32 } [ %i.cz, %bb.r ], [ %lpad.loopexit.split-lp175, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %bb.bf

.critedge:                                        ; preds = %_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit.thread109
  %i.fk = load ptr, ptr %11, align 8, !tbaa !109  ; 4 uses
  %.not.i.i72 = icmp eq ptr %i.fk, null
  br i1 %.not.i.i72, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit73, label %bb.ag

bb.ag:                                            ; preds = %.critedge
  %i.fl = load ptr, ptr %i.e, align 8, !tbaa !110, !nonnull !98, !align !99
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !93
  %i.fn = load i32, ptr %i.fk, align 8, !tbaa !107
  %i.fo = add i32 %i.fn, -1                       ; 2 uses
  store i32 %i.fo, ptr %i.fk, align 8, !tbaa !107
  %i.fp = icmp eq i32 %i.fo, 0
  br i1 %i.fp, label %bb.ah, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit73

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN10polynomial7manager3imp3delEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(824) %i.fm, ptr noundef nonnull %i.fk)
          to label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit73 unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fq = landingpad { ptr, i32 }
          catch ptr null
  %i.fr = extractvalue { ptr, i32 } %i.fq, 0
  call void @__clang_call_terminate(ptr %i.fr) #28
  unreachable

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit73: ; preds = %.critedge, %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %bb.be

bb.aj:                                            ; preds = %_ZN6vectorIPN11upolynomial21scoped_numeral_vectorELb1EjE9push_backEOS2_.exit85
  %i.fs = load ptr, ptr %5, align 8, !tbaa !161   ; 3 uses
  %i.ft = icmp eq ptr %i.fs, null
  br i1 %i.ft, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit75, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fu = getelementptr inbounds i8, ptr %i.fs, i64 -4
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !69
  br label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit75

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit75:             ; preds = %bb.aj, %bb.ak
  %.0.i74 = phi i32 [ %i.fv, %bb.ak ], [ 0, %bb.aj ]
  %i.fw = load ptr, ptr %9, align 8, !tbaa !331
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !333
  call void @_ZN11upolynomial12core_manager3setEjPK3mpzR7svectorIS1_jE(ptr noundef nonnull align 8 dereferenceable(272) %1, i32 noundef %.0.i74, ptr noundef %i.fs, ptr noundef nonnull align 8 dereferenceable(8) %i.fx)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.fy, ptr %13, align 8, !tbaa !200
  %i.fz = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 6 uses
  store i32 0, ptr %i.fz, align 8, !tbaa !90
  %i.ga = getelementptr inbounds nuw i8, ptr %13, i64 12 ; 3 uses
  %i.gb = load i8, ptr %i.ga, align 4
  %i.gc = and i8 %i.gb, -4                        ; 2 uses
  store i8 %i.gc, ptr %i.ga, align 4
  %i.gd = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr null, ptr %i.gd, align 8, !tbaa !83
  %i.ge = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.gf = load i8, ptr %i.ge, align 4
  %i.gg = and i8 %i.gf, 1
  %i.gh = icmp eq i8 %i.gg, 0
  br i1 %i.gh, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit75
  %i.gi = load i32, ptr %7, align 8, !tbaa !90
  store i32 %i.gi, ptr %i.fz, align 8, !tbaa !90
  store i8 %i.gc, ptr %i.ga, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i76

bb.am:                                            ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit75
  %i.gj = load ptr, ptr %i.c, align 8, !tbaa !97, !nonnull !98, !align !99
  invoke void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.gj, ptr noundef nonnull align 8 dereferenceable(16) %i.fz, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i76 unwind label %bb.bb

_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i76:   ; preds = %bb.am, %bb.al
  %i.gk = load i8, ptr %i.i, align 8, !tbaa !182, !range !189, !noundef !98
  %i.gl = trunc nuw i8 %i.gk to i1
  br i1 %i.gl, label %_ZN13mpzzp_manager3setER3mpzRKS0_.exit, label %bb.an

bb.an:                                            ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i76
  invoke void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.fz)
          to label %_ZN13mpzzp_manager3setER3mpzRKS0_.exit unwind label %bb.bb

.critedge61.preheader:                            ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit, %_ZN6vectorIPN11upolynomial21scoped_numeral_vectorELb1EjE9push_backEOS2_.exit85
  %.0133 = phi i32 [ %i.hq, %_ZN6vectorIPN11upolynomial21scoped_numeral_vectorELb1EjE9push_backEOS2_.exit85 ], [ 0, %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit ] ; 2 uses
  %i.gm = call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16) ; 3 uses
  store ptr null, ptr %i.gm, align 8, !tbaa !161
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  store ptr %i.b, ptr %i.gn, align 8, !tbaa !200
  %i.go = load ptr, ptr %9, align 8, !tbaa !331   ; 4 uses
  %i.gp = icmp eq ptr %i.go, null
  br i1 %i.gp, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.critedge61.preheader
  %i.gq = getelementptr inbounds i8, ptr %i.go, i64 -4
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !69 ; 2 uses
  %i.gs = getelementptr inbounds i8, ptr %i.go, i64 -8
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !69
  %i.gu = icmp eq i32 %i.gr, %i.gt
  br i1 %i.gu, label %bb.ap, label %_ZN6vectorIPN11upolynomial21scoped_numeral_vectorELb1EjE9push_backEOS2_.exit

bb.ap:                                            ; preds = %bb.ao, %.critedge61.preheader
  call void @_ZN6vectorIPN11upolynomial21scoped_numeral_vectorELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
  %.pre.i79 = load ptr, ptr %9, align 8, !tbaa !331 ; 2 uses
  %.phi.trans.insert.i80 = getelementptr inbounds i8, ptr %.pre.i79, i64 -4
  %.pre2.i81 = load i32, ptr %.phi.trans.insert.i80, align 4, !tbaa !69
  br label %_ZN6vectorIPN11upolynomial21scoped_numeral_vectorELb1EjE9push_backEOS2_.exit

_ZN6vectorIPN11upolynomial21scoped_numeral_vectorELb1EjE9push_backEOS2_.exit: ; preds = %bb.ao, %bb.ap
  %i.gv = phi i32 [ %.pre2.i81, %bb.ap ], [ %i.gr, %bb.ao ] ; 2 uses
  %i.gw = phi ptr [ %.pre.i79, %bb.ap ], [ %i.go, %bb.ao ] ; 2 uses
  %i.gx = getelementptr inbounds i8, ptr %i.gw, i64 -4
  %i.gy = zext i32 %i.gv to i64
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.gy
  store ptr %i.gm, ptr %i.gz, align 8, !tbaa !333
  %i.ha = add i32 %i.gv, 1
  store i32 %i.ha, ptr %i.gx, align 4, !tbaa !69
  %i.hb = call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16) ; 3 uses
  store ptr null, ptr %i.hb, align 8, !tbaa !161
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  store ptr %i.b, ptr %i.hc, align 8, !tbaa !200
  %i.hd = load ptr, ptr %10, align 8, !tbaa !331  ; 4 uses
  %i.he = icmp eq ptr %i.hd, null
  br i1 %i.he, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZN6vectorIPN11upolynomial21scoped_numeral_vectorELb1EjE9push_backEOS2_.exit
  %i.hf = getelementptr inbounds i8, ptr %i.hd, i64 -4
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !69 ; 2 uses
  %i.hh = getelementptr inbounds i8, ptr %i.hd, i64 -8
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !69
  %i.hj = icmp eq i32 %i.hg, %i.hi
  br i1 %i.hj, label %bb.ar, label %_ZN6vectorIPN11upolynomial21scoped_numeral_vectorELb1EjE9push_backEOS2_.exit85

bb.ar:                                            ; preds = %bb.aq, %_ZN6vectorIPN11upolynomial21scoped_numeral_vectorELb1EjE9push_backEOS2_.exit
  call void @_ZN6vectorIPN11upolynomial21scoped_numeral_vectorELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  %.pre.i82 = load ptr, ptr %10, align 8, !tbaa !331 ; 2 uses
  %.phi.trans.insert.i83 = getelementptr inbounds i8, ptr %.pre.i82, i64 -4
  %.pre2.i84 = load i32, ptr %.phi.trans.insert.i83, align 4, !tbaa !69
  br label %_ZN6vectorIPN11upolynomial21scoped_numeral_vectorELb1EjE9push_backEOS2_.exit85

_ZN6vectorIPN11upolynomial21scoped_numeral_vectorELb1EjE9push_backEOS2_.exit85: ; preds = %bb.aq, %bb.ar
  %i.hk = phi i32 [ %.pre2.i84, %bb.ar ], [ %i.hg, %bb.aq ] ; 2 uses
  %i.hl = phi ptr [ %.pre.i82, %bb.ar ], [ %i.hd, %bb.aq ] ; 2 uses
  %i.hm = getelementptr inbounds i8, ptr %i.hl, i64 -4
  %i.hn = zext i32 %i.hk to i64
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %i.hn
  store ptr %i.hb, ptr %i.ho, align 8, !tbaa !333
  %i.hp = add i32 %i.hk, 1
  store i32 %i.hp, ptr %i.hm, align 4, !tbaa !69
  %i.hq = add nuw i32 %.0133, 1
  %.not54.not = icmp ult i32 %.0133, %4
  br i1 %.not54.not, label %.critedge61.preheader, label %bb.aj, !llvm.loop !780

_ZN13mpzzp_manager3setER3mpzRKS0_.exit:           ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i76, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  store ptr null, ptr %14, align 8, !tbaa !161
  %i.hr = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %i.b, ptr %i.hr, align 8, !tbaa !200
  %i.hs = load ptr, ptr %6, align 8, !tbaa !161   ; 3 uses
  %i.ht = icmp eq ptr %i.hs, null
  br i1 %i.ht, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit87, label %bb.as

bb.as:                                            ; preds = %_ZN13mpzzp_manager3setER3mpzRKS0_.exit
  %i.hu = getelementptr inbounds i8, ptr %i.hs, i64 -4
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !69
  br label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit87

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit87:             ; preds = %_ZN13mpzzp_manager3setER3mpzRKS0_.exit, %bb.as
  %.0.i86 = phi i32 [ %i.hv, %bb.as ], [ 0, %_ZN13mpzzp_manager3setER3mpzRKS0_.exit ]
  invoke void @_ZN11upolynomial12core_manager3setEjPK3mpzR7svectorIS1_jE(ptr noundef nonnull align 8 dereferenceable(272) %1, i32 noundef %.0.i86, ptr noundef %i.hs, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.at unwind label %bb.bc

bb.at:                                            ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit87
  invoke void @_ZN11upolynomial12core_manager3mulER7svectorI3mpzjERKS2_(ptr noundef nonnull align 8 dereferenceable(272) %1, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(16) %i.fz)
          to label %bb.au unwind label %bb.bc

bb.au:                                            ; preds = %bb.at
  %i.hw = load ptr, ptr %14, align 8, !tbaa !161  ; 3 uses
  %i.hx = icmp eq ptr %i.hw, null
  br i1 %i.hx, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit89, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hy = getelementptr inbounds i8, ptr %i.hw, i64 -4
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !69
  br label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit89

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit89:             ; preds = %bb.au, %bb.av
  %.0.i88 = phi i32 [ %i.hz, %bb.av ], [ 0, %bb.au ]
  %i.ia = load ptr, ptr %10, align 8, !tbaa !331
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !333
  invoke void @_ZN11upolynomial12core_manager3setEjPK3mpzR7svectorIS1_jE(ptr noundef nonnull align 8 dereferenceable(272) %1, i32 noundef %.0.i88, ptr noundef %i.hw, ptr noundef nonnull align 8 dereferenceable(8) %i.ib)
          to label %bb.aw unwind label %bb.bc

bb.aw:                                            ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit89
  %i.ic = load ptr, ptr %14, align 8, !tbaa !161  ; 3 uses
  %i.id = icmp eq ptr %i.ic, null
  br i1 %i.id, label %_ZN22_scoped_numeral_vectorI13mpzzp_managerED2Ev.exit, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i:           ; preds = %bb.aw
  %i.ie = getelementptr inbounds i8, ptr %i.ic, i64 -4
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !69 ; 2 uses
  %.not.i.i90 = icmp eq i32 %i.if, 0
  br i1 %.not.i.i90, label %_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i
  %wide.trip.count.i.i = zext i32 %i.if to i64
  br label %bb.ax

._crit_edge.i.i:                                  ; preds = %.noexc.i
  %.pre.i.i91 = load ptr, ptr %14, align 8, !tbaa !161 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pre.i.i91, null
  br i1 %.not.i.i.i, label %_ZN22_scoped_numeral_vectorI13mpzzp_managerED2Ev.exit, label %_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.thread3.i

_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.thread3.i: ; preds = %._crit_edge.i.i
  %i.ig = getelementptr inbounds i8, ptr %.pre.i.i91, i64 -4
  store i32 0, ptr %i.ig, align 4, !tbaa !69
  br label %_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.i

bb.ax:                                            ; preds = %.noexc.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %.noexc.i ] ; 2 uses
  %i.ih = load ptr, ptr %i.hr, align 8, !tbaa !291, !nonnull !98, !align !99
  %i.ii = load ptr, ptr %14, align 8, !tbaa !161
  %i.ij = getelementptr inbounds nuw [16 x i8], ptr %i.ii, i64 %indvars.iv.i.i
  %i.ik = load ptr, ptr %i.ih, align 8, !tbaa !97, !nonnull !98, !align !99
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.ik, ptr noundef nonnull align 8 dereferenceable(16) %i.ij)
          to label %.noexc.i unwind label %bb.az

.noexc.i:                                         ; preds = %bb.ax
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.ax, !llvm.loop !33

_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.i: ; preds = %_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.thread3.i, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i
  %.pr6.i = phi ptr [ %.pre.i.i91, %_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.thread3.i ], [ %i.ic, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i ]
  %i.il = getelementptr inbounds i8, ptr %.pr6.i, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.il)
          to label %_ZN22_scoped_numeral_vectorI13mpzzp_managerED2Ev.exit unwind label %bb.ay

bb.ay:                                            ; preds = %_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.i
  %i.im = landingpad { ptr, i32 }
          catch ptr null
  %i.in = extractvalue { ptr, i32 } %i.im, 0
  call void @__clang_call_terminate(ptr %i.in) #28
  unreachable

bb.az:                                            ; preds = %bb.ax
  %i.io = landingpad { ptr, i32 }
          catch ptr null
  %i.ip = extractvalue { ptr, i32 } %i.io, 0
  call void @__clang_call_terminate(ptr %i.ip) #28
  unreachable

_ZN22_scoped_numeral_vectorI13mpzzp_managerED2Ev.exit: ; preds = %bb.aw, %._crit_edge.i.i, %_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  %i.iq = load ptr, ptr %13, align 8, !tbaa !202, !nonnull !98, !align !99
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !97, !nonnull !98, !align !99
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.ir, ptr noundef nonnull align 8 dereferenceable(16) %i.fz)
          to label %_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit unwind label %bb.ba

bb.ba:                                            ; preds = %_ZN22_scoped_numeral_vectorI13mpzzp_managerED2Ev.exit
  %i.is = landingpad { ptr, i32 }
          catch ptr null
  %i.it = extractvalue { ptr, i32 } %i.is, 0
  call void @__clang_call_terminate(ptr %i.it) #28
  unreachable

_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit:   ; preds = %_ZN22_scoped_numeral_vectorI13mpzzp_managerED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br label %bb.be

bb.bb:                                            ; preds = %bb.an, %bb.am
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bc:                                            ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit89, %bb.at, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit87
  %i.iv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN22_scoped_numeral_vectorI13mpzzp_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.pn = phi { ptr, i32 } [ %i.iv, %bb.bc ], [ %i.iu, %bb.bb ]
  call void @_ZN15_scoped_numeralI13mpzzp_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br label %bb.bf

bb.be:                                            ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit73, %_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit
  %.not121 = phi i1 [ false, %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit73 ], [ true, %_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit ]
  ret i1 %.not121

bb.bf:                                            ; preds = %bb.bd, %.loopexit.split-lp.loopexit.split-lp
  %.pn56.pn.pn = phi { ptr, i32 } [ %.pn56.pn, %.loopexit.split-lp.loopexit.split-lp ], [ %.pn, %bb.bd ]
  resume { ptr, i32 } %.pn56.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z7deallocIN11upolynomial21scoped_numeral_vectorEEvPT_(ptr noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !161    ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN22_scoped_numeral_vectorI13mpzzp_managerED2Ev.exit, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i:           ; preds = %bb.b
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !69   ; 2 uses
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count.i.i = zext i32 %i.e to i64
  br label %bb.c

._crit_edge.i.i:                                  ; preds = %.noexc.i
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !161 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i.i.i, label %_ZN22_scoped_numeral_vectorI13mpzzp_managerED2Ev.exit, label %_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.thread3.i

_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.thread3.i: ; preds = %._crit_edge.i.i
  %i.g = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  store i32 0, ptr %i.g, align 4, !tbaa !69
  br label %_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.i

bb.c:                                             ; preds = %.noexc.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %.noexc.i ] ; 2 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !291, !nonnull !98, !align !99
  %i.i = load ptr, ptr %0, align 8, !tbaa !161
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %indvars.iv.i.i
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !97, !nonnull !98, !align !99
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.c
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.c, !llvm.loop !33

_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.i: ; preds = %_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.thread3.i, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i
  %.pr6.i = phi ptr [ %.pre.i.i, %_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.thread3.i ], [ %i.b, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i ]
  %i.l = getelementptr inbounds i8, ptr %.pr6.i, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.l)
          to label %_ZN22_scoped_numeral_vectorI13mpzzp_managerED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.i
  %i.m = landingpad { ptr, i32 }
          catch ptr null
end_hunk_1
