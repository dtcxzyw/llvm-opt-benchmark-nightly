inline.NumInlined: 1517
inline.NumDeleted: 727
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6hermes6bigint8toDoubleERdNS0_18ImmutableBigIntRefE:bb.a
  %i.t = icmp eq i32 %i.r, 0
  br i1 %i.t, label %_ZN6hermes6bigint12_GLOBAL__N_113copyAndNegateENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr i8, ptr %i.o, i64 %i.s
  %i.v = getelementptr i8, ptr %i.u, i64 -1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !7, !noalias !29 ; 3 uses
  %i.x = ashr i8 %i.w, 7                          ; 3 uses
  %i.y = icmp eq i8 %i.w, %i.x
  br i1 %i.y, label %.lr.ph.i.i.preheader, label %.critedge.thread.i.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.z = add nsw i64 %i.s, -1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %i.aa = phi i64 [ %i.z, %.lr.ph.i.i.preheader ], [ %i.af, %.lr.ph.i.i ] ; 4 uses
  %.sroa.10.030.i4.i.i134 = phi i64 [ %i.s, %.lr.ph.i.i.preheader ], [ %i.aa, %.lr.ph.i.i ]
  %i.ab = getelementptr i8, ptr %i.o, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 -1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !7, !noalias !29 ; 2 uses
  %i.ae = icmp eq i8 %i.ad, %i.w
  br i1 %i.ae, label %.lr.ph.i.i, label %.critedge.i.loopexit.i.i, !llvm.loop !8

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.af = add nsw i64 %i.aa, -1                   ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %.critedge.thread.i.i.i, label %bb.f, !llvm.loop !8

.critedge.i.loopexit.i.i:                         ; preds = %bb.f
  %.pre.i.i74 = ashr i8 %i.ad, 7
  br label %.critedge.thread.i.i.i

.critedge.thread.i.i.i:                           ; preds = %.lr.ph.i.i, %.critedge.i.loopexit.i.i, %bb.e
  %.sroa.5.028.i.i.i = phi i64 [ %i.s, %bb.e ], [ %.sroa.10.030.i4.i.i134, %.critedge.i.loopexit.i.i ], [ 1, %.lr.ph.i.i ]
  %.sroa.10.026.i.i.i = phi i64 [ %i.s, %bb.e ], [ %i.aa, %.critedge.i.loopexit.i.i ], [ 0, %.lr.ph.i.i ]
  %i.ah = phi i8 [ %i.x, %bb.e ], [ %.pre.i.i74, %.critedge.i.loopexit.i.i ], [ 0, %.lr.ph.i.i ]
  %i.ai = icmp eq i8 %i.ah, %i.x
  %.sroa.3.0.copyload4.i.i.i = select i1 %i.ai, i64 %.sroa.10.026.i.i.i, i64 %.sroa.5.028.i.i.i
  %i.aj = trunc nuw i64 %.sroa.3.0.copyload4.i.i.i to i32
  %i.ak = add nuw i32 %i.aj, 7
  %i.al = lshr i32 %i.ak, 3
  br label %_ZN6hermes6bigint12_GLOBAL__N_113copyAndNegateENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit.thread

_ZN6hermes6bigint12_GLOBAL__N_113copyAndNegateENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit.thread: ; preds = %bb.d, %.critedge.thread.i.i.i, %_ZN6hermes6bigint10TmpStorageC2Ej.exit
  %.sroa.051.1 = phi ptr [ %1, %_ZN6hermes6bigint10TmpStorageC2Ej.exit ], [ %i.o, %.critedge.thread.i.i.i ], [ %i.o, %bb.d ] ; 5 uses
  %.sroa.8.1 = phi i32 [ %2, %_ZN6hermes6bigint10TmpStorageC2Ej.exit ], [ %i.al, %.critedge.thread.i.i.i ], [ 0, %bb.d ]
  %i.am = zext i32 %.sroa.8.1 to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.sroa.051.1, i64 %i.am ; 4 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !10
  %.not72 = icmp eq i64 %i.ap, 0                  ; 3 uses
  %i.aq = getelementptr inbounds i8, ptr %i.an, i64 -16
  %spec.select = select i1 %.not72, ptr %i.aq, ptr %i.ao ; 5 uses
  %i.ar = load i64, ptr %spec.select, align 8, !tbaa !10 ; 5 uses
  %i.as = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ar, i1 false) ; 3 uses
  %i.at = ptrtoint ptr %spec.select to i64
  %i.au = ptrtoint ptr %.sroa.051.1 to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = shl i64 %i.av, 3
  %reass.sub = sub i64 %i.aw, %i.as
  %i.ax = trunc i64 %reass.sub to i32             ; 2 uses
  %i.ay = add i32 %i.ax, 64                       ; 2 uses
  %i.az = add i32 %i.ax, 63                       ; 6 uses
  %i.ba = icmp ugt i32 %i.az, 1023
  br i1 %i.ba, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN6hermes6bigint12_GLOBAL__N_113copyAndNegateENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit.thread
  %i.bb = select i1 %i.f, double -inf, double +inf
  store double %i.bb, ptr %0, align 8, !tbaa !14
  br label %bb.q

bb.h:                                             ; preds = %_ZN6hermes6bigint12_GLOBAL__N_113copyAndNegateENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit.thread
  %i.bc = trunc nuw nsw i64 %i.as to i32          ; 3 uses
  %i.bd = add nuw nsw i32 %i.bc, 1                ; 2 uses
  %i.be = icmp eq i32 %i.bd, 64
  %i.bf = zext nneg i32 %i.bd to i64
  %i.bg = shl i64 %i.ar, %i.bf
  %i.bh = lshr i64 %i.bg, 12
  %i.bi = select i1 %i.be, i64 0, i64 %i.bh       ; 5 uses
  %i.bj = icmp ugt i64 %i.ar, 9007199254740991
  %i.bk = icmp eq i64 %i.as, 11
  %.not73 = or i1 %i.bj, %i.bk
  br i1 %.not73, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bl = icmp ugt ptr %spec.select, %.sroa.051.1
  br i1 %i.bl, label %.thread.thread, label %_ZN6hermes6bigint12_GLOBAL__N_115roundMantissaUpEmPKmS3_jj.exit.thread

.thread.thread:                                   ; preds = %bb.i
  %spec.select.sroa.sel.v.sroa.sel.v = select i1 %.not72, i64 -24, i64 -16
  %spec.select.sroa.sel.v.sroa.sel = getelementptr inbounds i8, ptr %i.an, i64 %spec.select.sroa.sel.v.sroa.sel.v ; 2 uses
  %i.bm = load i64, ptr %spec.select.sroa.sel.v.sroa.sel, align 8, !tbaa !10 ; 2 uses
  %i.bn = sub nuw nsw i32 75, %i.bc               ; 2 uses
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = lshr i64 %i.bm, %i.bo
  %i.bq = or i64 %i.bp, %i.bi
  br label %bb.l

.thread:                                          ; preds = %bb.h
  %i.br = icmp ult i64 %i.ar, 4503599627370496
  %i.bs = sub nsw i32 11, %i.bc
  %i.bt = select i1 %i.br, i32 0, i32 %i.bs       ; 2 uses
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.thread
  %i.bv = icmp eq ptr %.sroa.051.1, %spec.select
  br i1 %i.bv, label %_ZN6hermes6bigint12_GLOBAL__N_115roundMantissaUpEmPKmS3_jj.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %spec.select.sroa.sel117.v.sroa.sel.v = select i1 %.not72, i64 -24, i64 -16
  %spec.select.sroa.sel117.v.sroa.sel = getelementptr inbounds i8, ptr %i.an, i64 %spec.select.sroa.sel117.v.sroa.sel.v ; 2 uses
  %.pre = load i64, ptr %spec.select.sroa.sel117.v.sroa.sel, align 8, !tbaa !10
  br label %bb.l

bb.l:                                             ; preds = %.thread.thread, %bb.k, %.thread
  %i.bw = phi i64 [ %.pre, %bb.k ], [ %i.ar, %.thread ], [ %i.bm, %.thread.thread ] ; 2 uses
  %.06194106 = phi i64 [ %i.bi, %bb.k ], [ %i.bi, %.thread ], [ %i.bq, %.thread.thread ] ; 4 uses
  %.015.i = phi ptr [ %spec.select.sroa.sel117.v.sroa.sel, %bb.k ], [ %spec.select, %.thread ], [ %spec.select.sroa.sel.v.sroa.sel, %.thread.thread ]
  %.014.i = phi i32 [ 64, %bb.k ], [ %i.bt, %.thread ], [ %i.bn, %.thread.thread ]
  %i.bx = add nsw i32 %.014.i, -1
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = shl nuw i64 1, %i.by                    ; 2 uses
  %i.ca = and i64 %i.bz, %i.bw
  %.not19.i = icmp eq i64 %i.ca, 0
  br i1 %.not19.i, label %_ZN6hermes6bigint12_GLOBAL__N_115roundMantissaUpEmPKmS3_jj.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cb = add i64 %i.bz, -1
  %i.cc = and i64 %i.cb, %i.bw
  %.not20.i = icmp eq i64 %i.cc, 0
  br i1 %.not20.i, label %.preheader.i, label %_ZN6hermes6bigint12_GLOBAL__N_115roundMantissaUpEmPKmS3_jj.exit.thread99

.preheader.i:                                     ; preds = %bb.m, %bb.n
  %.116.i = phi ptr [ %i.ce, %bb.n ], [ %.015.i, %bb.m ] ; 2 uses
  %i.cd = icmp ugt ptr %.116.i, %.sroa.051.1
  br i1 %i.cd, label %bb.n, label %_ZN6hermes6bigint12_GLOBAL__N_115roundMantissaUpEmPKmS3_jj.exit

bb.n:                                             ; preds = %.preheader.i
  %i.ce = getelementptr inbounds i8, ptr %.116.i, i64 -8 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !10
  %.not21.i = icmp eq i64 %i.cf, 0
  br i1 %.not21.i, label %.preheader.i, label %_ZN6hermes6bigint12_GLOBAL__N_115roundMantissaUpEmPKmS3_jj.exit.thread99, !llvm.loop !32

_ZN6hermes6bigint12_GLOBAL__N_115roundMantissaUpEmPKmS3_jj.exit: ; preds = %.preheader.i
  %i.cg = trunc i64 %.06194106 to i1
  br i1 %i.cg, label %_ZN6hermes6bigint12_GLOBAL__N_115roundMantissaUpEmPKmS3_jj.exit.thread99, label %_ZN6hermes6bigint12_GLOBAL__N_115roundMantissaUpEmPKmS3_jj.exit.thread

_ZN6hermes6bigint12_GLOBAL__N_115roundMantissaUpEmPKmS3_jj.exit.thread99: ; preds = %bb.n, %bb.m, %_ZN6hermes6bigint12_GLOBAL__N_115roundMantissaUpEmPKmS3_jj.exit
  %i.ch = add nuw nsw i64 %.06194106, 1           ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 4503599627370496
  br i1 %i.ci, label %bb.o, label %_ZN6hermes6bigint12_GLOBAL__N_115roundMantissaUpEmPKmS3_jj.exit.thread

bb.o:                                             ; preds = %_ZN6hermes6bigint12_GLOBAL__N_115roundMantissaUpEmPKmS3_jj.exit.thread99
  %i.cj = icmp ugt i32 %i.ay, 1023
  br i1 %i.cj, label %bb.p, label %_ZN6hermes6bigint12_GLOBAL__N_115roundMantissaUpEmPKmS3_jj.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.ck = select i1 %i.f, double -inf, double +inf
  store double %i.ck, ptr %0, align 8, !tbaa !14
  br label %bb.q

_ZN6hermes6bigint12_GLOBAL__N_115roundMantissaUpEmPKmS3_jj.exit.thread: ; preds = %bb.i, %bb.l, %bb.j, %_ZN6hermes6bigint12_GLOBAL__N_115roundMantissaUpEmPKmS3_jj.exit.thread99, %bb.o, %_ZN6hermes6bigint12_GLOBAL__N_115roundMantissaUpEmPKmS3_jj.exit
  %.064 = phi i32 [ %i.ay, %bb.o ], [ %i.az, %_ZN6hermes6bigint12_GLOBAL__N_115roundMantissaUpEmPKmS3_jj.exit.thread99 ], [ %i.az, %_ZN6hermes6bigint12_GLOBAL__N_115roundMantissaUpEmPKmS3_jj.exit ], [ %i.az, %bb.j ], [ %i.az, %bb.l ], [ %i.az, %bb.i ]
  %.162 = phi i64 [ 0, %bb.o ], [ %i.ch, %_ZN6hermes6bigint12_GLOBAL__N_115roundMantissaUpEmPKmS3_jj.exit.thread99 ], [ %.06194106, %_ZN6hermes6bigint12_GLOBAL__N_115roundMantissaUpEmPKmS3_jj.exit ], [ %i.bi, %bb.j ], [ %.06194106, %bb.l ], [ %i.bi, %bb.i ]
  %i.cl = and i64 %i.e, -9223372036854775808
  %narrow = add nuw nsw i32 %.064, 1023
  %i.cm = zext nneg i32 %narrow to i64
  %i.cn = shl nuw nsw i64 %i.cm, 52
  %i.co = or disjoint i64 %i.cn, %i.cl
  %i.cp = or i64 %i.co, %.162
  store i64 %i.cp, ptr %0, align 8, !tbaa !14
  br label %bb.q

bb.q:                                             ; preds = %bb.g, %_ZN6hermes6bigint12_GLOBAL__N_115roundMantissaUpEmPKmS3_jj.exit.thread, %bb.p
  %i.cq = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.i
  br i1 %i.cr, label %_ZN6hermes6bigint10TmpStorageD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @free(ptr noundef %i.cq) #16
  br label %_ZN6hermes6bigint10TmpStorageD2Ev.exit

_ZN6hermes6bigint10TmpStorageD2Ev.exit:           ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.s

bb.s:                                             ; preds = %_ZN6hermes6bigint10TmpStorageD2Ev.exit, %bb.b
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes6bigint36getStringIntegerLiteralDigitsAndSignEN4llvh8ArrayRefIcEERhRNS0_10ParsedSignEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::optional") align 8 initializes((32, 33)) %0, ptr %1, i64 %2, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %4, ptr noundef %5) local_unnamed_addr #5 {
bb.a:
  tail call fastcc void @_ZN6hermes6bigint12_GLOBAL__N_113getDigitsWithINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEES6_EESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET0_RhRNS0_10ParsedSignEPSE_(ptr dead_on_unwind noalias writable align 8 %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef %5)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN6hermes6bigint12_GLOBAL__N_113getDigitsWithINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEES6_EESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET0_RhRNS0_10ParsedSignEPSE_(ptr dead_on_unwind noalias writable align 8 initializes((32, 33)) %0, ptr %1, i64 %2, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %4, ptr noundef %5) unnamed_addr #5 {
bb.a:
  %6 = ptrtoint ptr %1 to i64                     ; 2 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 12 uses
  store ptr %i.a, ptr %7, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 16 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.c, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 3 uses
  store i64 0, ptr %i.b, align 8, !tbaa !39
  store i8 0, ptr %i.a, align 8, !tbaa !7
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %2) #16
  store i32 0, ptr %4, align 4, !tbaa !41
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -1 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !7
  %i.g = icmp eq i8 %i.f, 0
  %spec.select = select i1 %i.g, ptr %i.e, ptr %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.30.0 = phi ptr [ %i.d, %bb.a ], [ %spec.select, %bb.b ] ; 7 uses
  %.promoted16.i33 = ptrtoint ptr %.sroa.30.0 to i64 ; 3 uses
  %i.h = icmp ult ptr %1, %.sroa.30.0
  br i1 %i.h, label %.lr.ph.preheader.i, label %.critedge.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.i = sub i64 %.promoted16.i33, %6
  %scevgep.i = getelementptr i8, ptr %1, i64 %i.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %.sroa.0.1 = phi ptr [ %1, %.lr.ph.preheader.i ], [ %i.k, %bb.d ] ; 3 uses
  %i.j = load i8, ptr %.sroa.0.1, align 1, !tbaa !7
  switch i8 %i.j, label %.critedge.i.loopexit [
    i8 9, label %bb.d
    i8 11, label %bb.d
    i8 12, label %bb.d
    i8 32, label %bb.d
  ]

bb.d:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.k, %.sroa.30.0
  br i1 %exitcond.not.i, label %.critedge.i.loopexit, label %.lr.ph.i, !llvm.loop !43

.critedge.i.loopexit:                             ; preds = %.lr.ph.i, %bb.d
  %.sroa.0.0.ph = phi ptr [ %.sroa.0.1, %.lr.ph.i ], [ %scevgep.i, %bb.d ] ; 2 uses
  %.pre39 = ptrtoint ptr %.sroa.0.0.ph to i64
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit, %bb.c
  %.lcssa.i34.pre-phi = phi i64 [ %.pre39, %.critedge.i.loopexit ], [ %6, %bb.c ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.ph, %.critedge.i.loopexit ], [ %1, %bb.c ] ; 10 uses
  %i.l = icmp ult ptr %.sroa.0.0, %.sroa.30.0
  br i1 %i.l, label %.lr.ph17.i.preheader, label %_ZN6hermes6bigint12_GLOBAL__N_126StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEC2ES5_RhRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_10ParsedSignEPSD_.exit

.lr.ph17.i.preheader:                             ; preds = %.critedge.i
  %i.m = sub i64 %.lcssa.i34.pre-phi, %.promoted16.i33
  %scevgep35 = getelementptr i8, ptr %.sroa.30.0, i64 %i.m
  br label %.lr.ph17.i

.lr.ph17.i:                                       ; preds = %.lr.ph17.i.preheader, %bb.e
  %.sroa.30.1 = phi ptr [ %i.n, %bb.e ], [ %.sroa.30.0, %.lr.ph17.i.preheader ] ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %.sroa.30.1, i64 -1 ; 3 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !7
  switch i8 %i.o, label %_ZN6hermes6bigint12_GLOBAL__N_126StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEC2ES5_RhRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_10ParsedSignEPSD_.exit.loopexit [
    i8 9, label %bb.e
    i8 11, label %bb.e
    i8 12, label %bb.e
    i8 32, label %bb.e
  ]

bb.e:                                             ; preds = %.lr.ph17.i, %.lr.ph17.i, %.lr.ph17.i, %.lr.ph17.i
  %i.p = icmp ult ptr %.sroa.0.0, %i.n
  br i1 %i.p, label %.lr.ph17.i, label %_ZN6hermes6bigint12_GLOBAL__N_126StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEC2ES5_RhRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_10ParsedSignEPSD_.exit.loopexit, !llvm.loop !44

_ZN6hermes6bigint12_GLOBAL__N_126StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEC2ES5_RhRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_10ParsedSignEPSD_.exit.loopexit: ; preds = %bb.e, %.lr.ph17.i
  %.sroa.30.2.ph = phi ptr [ %.sroa.30.1, %.lr.ph17.i ], [ %scevgep35, %bb.e ] ; 2 uses
  %.pre40 = ptrtoint ptr %.sroa.30.2.ph to i64
  br label %_ZN6hermes6bigint12_GLOBAL__N_126StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEC2ES5_RhRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_10ParsedSignEPSD_.exit

_ZN6hermes6bigint12_GLOBAL__N_126StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEC2ES5_RhRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_10ParsedSignEPSD_.exit: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_126StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEC2ES5_RhRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_10ParsedSignEPSD_.exit.loopexit, %.critedge.i
  %.sroa.30.236.pre-phi = phi i64 [ %.pre40, %_ZN6hermes6bigint12_GLOBAL__N_126StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEC2ES5_RhRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_10ParsedSignEPSD_.exit.loopexit ], [ %.promoted16.i33, %.critedge.i ]
  %.sroa.30.2 = phi ptr [ %.sroa.30.2.ph, %_ZN6hermes6bigint12_GLOBAL__N_126StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEC2ES5_RhRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_10ParsedSignEPSD_.exit.loopexit ], [ %.sroa.30.0, %.critedge.i ] ; 16 uses
  %i.q = icmp ult ptr %.sroa.0.0, %.sroa.30.2
  br i1 %i.q, label %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i, label %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.thread.i

_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_126StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEC2ES5_RhRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_10ParsedSignEPSD_.exit
  %i.r = load i8, ptr %.sroa.0.0, align 1, !tbaa !7 ; 3 uses
  %i.s = icmp eq i8 %i.r, 48
  br i1 %i.s, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE3eatEv.exit.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE11nextIsAnyOfIJLc43ELc45EEEENS_8OptValueIcEEv.exit.i.i

_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.thread.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_126StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEC2ES5_RhRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_10ParsedSignEPSD_.exit
  store i8 10, ptr %3, align 1, !tbaa !7
  %i.t = load i64, ptr %i.b, align 8, !tbaa !39
  %i.u = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef %i.t, ptr noundef nonnull @.str, i64 noundef 1) #16 ; 0 uses
  br label %.thread

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE3eatEv.exit.i: ; preds = %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 1 ; 4 uses
  %i.w = icmp ult ptr %i.v, %.sroa.30.2
  br i1 %i.w, label %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i.i.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE20binaryIntegerLiteralEv.exit.thread.i.i

_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i.i.i.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE3eatEv.exit.i
  %i.x = load i8, ptr %i.v, align 1, !tbaa !7
  %i.y = and i8 %i.x, -33
  %spec.select.i.i.i.i.i.i = icmp eq i8 %i.y, 66
  br i1 %spec.select.i.i.i.i.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc66ELc98EEEENS_8OptValueIcEEv.exit.i.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE20binaryIntegerLiteralEv.exit.thread.i.i

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc66ELc98EEEENS_8OptValueIcEEv.exit.i.i.i: ; preds = %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 2 ; 4 uses
  store i8 2, ptr %3, align 1, !tbaa !7
  %i.aa = icmp ult ptr %i.z, %.sroa.30.2
  br i1 %i.aa, label %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i.i.i.i.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE20binaryIntegerLiteralEv.exit.i.i

_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i.i.i.i.i.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc66ELc98EEEENS_8OptValueIcEEv.exit.i.i.i
  %i.ab = load i8, ptr %i.z, align 1, !tbaa !7    ; 2 uses
  %i.ac = and i8 %i.ab, -2
  %spec.select.i.i.i.i.i.i.i.i = icmp eq i8 %i.ac, 48
  br i1 %spec.select.i.i.i.i.i.i.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49EEEENS_8OptValueIcEEv.exit.i.i.i.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE20binaryIntegerLiteralEv.exit.i.i

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49EEEENS_8OptValueIcEEv.exit.i.i.i.i.i: ; preds = %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 3
  br label %bb.f

bb.f:                                             ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49EEEENS_8OptValueIcEEv.exit7.i.i.i.i.i, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49EEEENS_8OptValueIcEEv.exit.i.i.i.i.i
  %.sroa.0.9 = phi ptr [ %i.ad, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49EEEENS_8OptValueIcEEv.exit.i.i.i.i.i ], [ %i.at, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49EEEENS_8OptValueIcEEv.exit7.i.i.i.i.i ] ; 5 uses
  %.sroa.0.0.extract.trunc10.in.in.in.i.i.i.i.i = phi i8 [ %i.ab, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49EEEENS_8OptValueIcEEv.exit.i.i.i.i.i ], [ %i.ar, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49EEEENS_8OptValueIcEEv.exit7.i.i.i.i.i ]
  %i.ae = load i64, ptr %i.b, align 8, !tbaa !39  ; 4 uses
  %i.af = add i64 %i.ae, 1                        ; 3 uses
  %i.ag = load ptr, ptr %7, align 8, !tbaa !45    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.a
  br i1 %i.ah, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.ai = icmp ult i64 %i.ae, 16
  call void @llvm.assume(i1 %i.ai)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !7
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.ak = phi i64 [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i ]
  %i.al = icmp ugt i64 %i.af, %i.ak
  br i1 %i.al, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i.i.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.ae, i64 noundef 0, ptr noundef null, i64 noundef 1) #16
  %.pre.i.i.i.i.i.i = load ptr, ptr %7, align 8, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  %i.am = phi ptr [ %.pre.i.i.i.i.i.i, %bb.g ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ae
  store i8 %.sroa.0.0.extract.trunc10.in.in.in.i.i.i.i.i, ptr %i.an, align 1, !tbaa !7
  store i64 %i.af, ptr %i.b, align 8, !tbaa !39
  %i.ao = load ptr, ptr %7, align 8, !tbaa !45
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.af
  store i8 0, ptr %i.ap, align 1, !tbaa !7
  %i.aq = icmp ult ptr %.sroa.0.9, %.sroa.30.2
  br i1 %i.aq, label %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i4.i.i.i.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE20binaryIntegerLiteralEv.exit.i.i

_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i4.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i.i.i
  %i.ar = load i8, ptr %.sroa.0.9, align 1, !tbaa !7 ; 2 uses
  %i.as = and i8 %i.ar, -2
  %spec.select.i.i.i5.i.i.i.i.i = icmp eq i8 %i.as, 48
  br i1 %spec.select.i.i.i5.i.i.i.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49EEEENS_8OptValueIcEEv.exit7.i.i.i.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE20binaryIntegerLiteralEv.exit.i.i

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49EEEENS_8OptValueIcEEv.exit7.i.i.i.i.i: ; preds = %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i4.i.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.9, i64 1
  br label %bb.f, !llvm.loop !46

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE20binaryIntegerLiteralEv.exit.i.i: ; preds = %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i4.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i.i.i.i.i.i, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc66ELc98EEEENS_8OptValueIcEEv.exit.i.i.i
  %.val.i.i138.i.i = phi ptr [ %i.z, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i.i.i.i.i.i ], [ %i.z, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc66ELc98EEEENS_8OptValueIcEEv.exit.i.i.i ], [ %.sroa.0.9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i.i.i ], [ %.sroa.0.9, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i4.i.i.i.i.i ] ; 2 uses
  %i.au = load i64, ptr %i.b, align 8, !tbaa !39
  %.not.i.i = icmp eq i64 %i.au, 0
  br i1 %.not.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE20binaryIntegerLiteralEv.exit.thread.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE24nonDecimalIntegerLiteralEv.exit.thread.i

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE20binaryIntegerLiteralEv.exit.thread.i.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE20binaryIntegerLiteralEv.exit.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i.i.i.i, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE3eatEv.exit.i
  %.val.i.i1.i.i = phi ptr [ %i.v, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i.i.i.i ], [ %i.v, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE3eatEv.exit.i ], [ %.val.i.i138.i.i, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE20binaryIntegerLiteralEv.exit.i.i ] ; 6 uses
  %i.av = icmp ult ptr %.val.i.i1.i.i, %.sroa.30.2
  br i1 %i.av, label %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i.i4.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE19octalIntegerLiteralEv.exit.thread.i.i

_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i.i4.i.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE20binaryIntegerLiteralEv.exit.thread.i.i
  %i.aw = load i8, ptr %.val.i.i1.i.i, align 1, !tbaa !7
  %i.ax = and i8 %i.aw, -33
  %spec.select.i.i.i.i5.i.i = icmp eq i8 %i.ax, 79
  br i1 %spec.select.i.i.i.i5.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc79ELc111EEEENS_8OptValueIcEEv.exit.i.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE19octalIntegerLiteralEv.exit.thread.i.i

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc79ELc111EEEENS_8OptValueIcEEv.exit.i.i.i: ; preds = %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i.i4.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.val.i.i1.i.i, i64 1 ; 4 uses
  store i8 8, ptr %3, align 1, !tbaa !7
  %i.az = icmp ult ptr %i.ay, %.sroa.30.2
  br i1 %i.az, label %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i.i.i.i8.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE19octalIntegerLiteralEv.exit.i.i

_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i.i.i.i8.i.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc79ELc111EEEENS_8OptValueIcEEv.exit.i.i.i
  %i.ba = load i8, ptr %i.ay, align 1, !tbaa !7   ; 2 uses
  %i.bb = and i8 %i.ba, -8
  %i.bc = icmp eq i8 %i.bb, 48
  br i1 %i.bc, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55EEEENS_8OptValueIcEEv.exit.i.i.i.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE19octalIntegerLiteralEv.exit.i.i

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55EEEENS_8OptValueIcEEv.exit.i.i.i.i.i: ; preds = %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i.i.i.i8.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.val.i.i1.i.i, i64 2
  br label %bb.h

bb.h:                                             ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55EEEENS_8OptValueIcEEv.exit6.i.i.i.i.i, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55EEEENS_8OptValueIcEEv.exit.i.i.i.i.i
  %.sroa.0.8 = phi ptr [ %i.bd, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55EEEENS_8OptValueIcEEv.exit.i.i.i.i.i ], [ %i.bu, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55EEEENS_8OptValueIcEEv.exit6.i.i.i.i.i ] ; 5 uses
  %.sroa.0.0.extract.trunc9.in.in.in.i.i.i.i.i = phi i8 [ %i.ba, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55EEEENS_8OptValueIcEEv.exit.i.i.i.i.i ], [ %i.br, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55EEEENS_8OptValueIcEEv.exit6.i.i.i.i.i ]
  %i.be = load i64, ptr %i.b, align 8, !tbaa !39  ; 4 uses
  %i.bf = add i64 %i.be, 1                        ; 3 uses
  %i.bg = load ptr, ptr %7, align 8, !tbaa !45    ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.a
  br i1 %i.bh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i16.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i9.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i16.i.i: ; preds = %bb.h
  %i.bi = icmp ult i64 %i.be, 16
  call void @llvm.assume(i1 %i.bi)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i10.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i9.i.i: ; preds = %bb.h
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !7
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i10.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i10.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i9.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i16.i.i
  %i.bk = phi i64 [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i9.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i16.i.i ]
  %i.bl = icmp ugt i64 %i.bf, %i.bk
  br i1 %i.bl, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i11.i.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i10.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.be, i64 noundef 0, ptr noundef null, i64 noundef 1) #16
  %.pre.i.i.i.i15.i.i = load ptr, ptr %7, align 8, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i11.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i11.i.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i10.i.i
  %i.bm = phi ptr [ %.pre.i.i.i.i15.i.i, %bb.i ], [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i10.i.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.be
  store i8 %.sroa.0.0.extract.trunc9.in.in.in.i.i.i.i.i, ptr %i.bn, align 1, !tbaa !7
  store i64 %i.bf, ptr %i.b, align 8, !tbaa !39
  %i.bo = load ptr, ptr %7, align 8, !tbaa !45
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bf
  store i8 0, ptr %i.bp, align 1, !tbaa !7
  %i.bq = icmp ult ptr %.sroa.0.8, %.sroa.30.2
  br i1 %i.bq, label %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i4.i.i.i14.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE19octalIntegerLiteralEv.exit.i.i

_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i4.i.i.i14.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i11.i.i
  %i.br = load i8, ptr %.sroa.0.8, align 1, !tbaa !7 ; 2 uses
  %i.bs = and i8 %i.br, -8
  %i.bt = icmp eq i8 %i.bs, 48
  br i1 %i.bt, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55EEEENS_8OptValueIcEEv.exit6.i.i.i.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE19octalIntegerLiteralEv.exit.i.i

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55EEEENS_8OptValueIcEEv.exit6.i.i.i.i.i: ; preds = %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i4.i.i.i14.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.8, i64 1
  br label %bb.h, !llvm.loop !47

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE19octalIntegerLiteralEv.exit.i.i: ; preds = %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i4.i.i.i14.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i11.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i.i.i.i8.i.i, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc79ELc111EEEENS_8OptValueIcEEv.exit.i.i.i
  %.val.i.i1742.i.i = phi ptr [ %i.ay, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i.i.i.i8.i.i ], [ %i.ay, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc79ELc111EEEENS_8OptValueIcEEv.exit.i.i.i ], [ %.sroa.0.8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i11.i.i ], [ %.sroa.0.8, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i4.i.i.i14.i.i ] ; 2 uses
  %i.bv = load i64, ptr %i.b, align 8, !tbaa !39
  %.not36.i.i = icmp eq i64 %i.bv, 0
  br i1 %.not36.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE19octalIntegerLiteralEv.exit.thread.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE24nonDecimalIntegerLiteralEv.exit.thread.i

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE19octalIntegerLiteralEv.exit.thread.i.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE19octalIntegerLiteralEv.exit.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i.i4.i.i, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE20binaryIntegerLiteralEv.exit.thread.i.i
  %.val.i.i17.i.i = phi ptr [ %.val.i.i1.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i.i4.i.i ], [ %.val.i.i1.i.i, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE20binaryIntegerLiteralEv.exit.thread.i.i ], [ %.val.i.i1742.i.i, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE19octalIntegerLiteralEv.exit.i.i ] ; 4 uses
  %i.bw = icmp ult ptr %.val.i.i17.i.i, %.sroa.30.2
  br i1 %i.bw, label %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i.i20.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE11nextIsAnyOfIJLc43ELc45EEEENS_8OptValueIcEEv.exit.i.ithread-pre-split

_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i.i20.i.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE19octalIntegerLiteralEv.exit.thread.i.i
  %i.bx = load i8, ptr %.val.i.i17.i.i, align 1, !tbaa !7
  %i.by = and i8 %i.bx, -33
  %spec.select.i.i.i.i21.i.i = icmp eq i8 %i.by, 88
  br i1 %spec.select.i.i.i.i21.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc88ELc120EEEENS_8OptValueIcEEv.exit.i.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE11nextIsAnyOfIJLc43ELc45EEEENS_8OptValueIcEEv.exit.i.ithread-pre-split

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc88ELc120EEEENS_8OptValueIcEEv.exit.i.i.i: ; preds = %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i.i20.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.val.i.i17.i.i, i64 1 ; 4 uses
  store i8 16, ptr %3, align 1, !tbaa !7
  %i.ca = icmp ult ptr %i.bz, %.sroa.30.2
  br i1 %i.ca, label %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i.i.i.i24.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE24nonDecimalIntegerLiteralEv.exit.i

_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i.i.i.i24.i.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc88ELc120EEEENS_8OptValueIcEEv.exit.i.i.i
  %i.cb = load i8, ptr %i.bz, align 1, !tbaa !7   ; 2 uses
  switch i8 %i.cb, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE24nonDecimalIntegerLiteralEv.exit.i [
    i8 48, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit.i.i.i.i.i
    i8 49, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit.i.i.i.i.i
    i8 50, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit.i.i.i.i.i
    i8 51, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit.i.i.i.i.i
    i8 52, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit.i.i.i.i.i
    i8 53, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit.i.i.i.i.i
    i8 54, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit.i.i.i.i.i
    i8 55, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit.i.i.i.i.i
    i8 56, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit.i.i.i.i.i
    i8 69, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit.i.i.i.i.i
    i8 68, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit.i.i.i.i.i
    i8 67, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit.i.i.i.i.i
    i8 66, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit.i.i.i.i.i
    i8 65, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit.i.i.i.i.i
    i8 57, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit.i.i.i.i.i
    i8 102, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit.i.i.i.i.i
    i8 101, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit.i.i.i.i.i
    i8 100, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit.i.i.i.i.i
    i8 99, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit.i.i.i.i.i
    i8 98, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit.i.i.i.i.i
    i8 97, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit.i.i.i.i.i
    i8 70, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit.i.i.i.i.i
  ]

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit.i.i.i.i.i: ; preds = %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i.i.i.i24.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i.i.i.i24.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i.i.i.i24.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i.i.i.i24.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i.i.i.i24.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i.i.i.i24.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i.i.i.i24.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i.i.i.i24.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i.i.i.i24.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i.i.i.i24.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i.i.i.i24.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i.i.i.i24.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i.i.i.i24.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i.i.i.i24.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i.i.i.i24.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i.i.i.i24.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i.i.i.i24.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i.i.i.i24.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i.i.i.i24.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i.i.i.i24.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i.i.i.i24.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i.i.i.i24.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.val.i.i17.i.i, i64 2
  br label %bb.j

bb.j:                                             ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit6.i.i.i.i.i, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit.i.i.i.i.i
  %.sroa.0.7 = phi ptr [ %i.cc, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit.i.i.i.i.i ], [ %i.cr, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit6.i.i.i.i.i ] ; 5 uses
  %.sroa.0.0.extract.trunc9.in.in.in.i.i.i25.i.i = phi i8 [ %i.cb, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit.i.i.i.i.i ], [ %i.cq, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit6.i.i.i.i.i ]
  %i.cd = load i64, ptr %i.b, align 8, !tbaa !39  ; 4 uses
  %i.ce = add i64 %i.cd, 1                        ; 3 uses
  %i.cf = load ptr, ptr %7, align 8, !tbaa !45    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.a
  br i1 %i.cg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i33.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i26.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i33.i.i: ; preds = %bb.j
  %i.ch = icmp ult i64 %i.cd, 16
  call void @llvm.assume(i1 %i.ch)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i27.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i26.i.i: ; preds = %bb.j
  %i.ci = load i64, ptr %i.a, align 8, !tbaa !7
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i27.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i27.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i26.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i33.i.i
  %i.cj = phi i64 [ %i.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i26.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i33.i.i ]
  %i.ck = icmp ugt i64 %i.ce, %i.cj
  br i1 %i.ck, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i28.i.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i27.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.cd, i64 noundef 0, ptr noundef null, i64 noundef 1) #16
  %.pre.i.i.i.i32.i.i = load ptr, ptr %7, align 8, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i28.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i28.i.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i27.i.i
  %i.cl = phi ptr [ %.pre.i.i.i.i32.i.i, %bb.k ], [ %i.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i27.i.i ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cd
  store i8 %.sroa.0.0.extract.trunc9.in.in.in.i.i.i25.i.i, ptr %i.cm, align 1, !tbaa !7
  store i64 %i.ce, ptr %i.b, align 8, !tbaa !39
  %i.cn = load ptr, ptr %7, align 8, !tbaa !45
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.ce
  store i8 0, ptr %i.co, align 1, !tbaa !7
  %i.cp = icmp ult ptr %.sroa.0.7, %.sroa.30.2
  br i1 %i.cp, label %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i4.i.i.i31.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE24nonDecimalIntegerLiteralEv.exit.i

_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i4.i.i.i31.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i28.i.i
  %i.cq = load i8, ptr %.sroa.0.7, align 1, !tbaa !7 ; 2 uses
  switch i8 %i.cq, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE24nonDecimalIntegerLiteralEv.exit.i [
    i8 48, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit6.i.i.i.i.i
    i8 49, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit6.i.i.i.i.i
    i8 50, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit6.i.i.i.i.i
    i8 51, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit6.i.i.i.i.i
    i8 52, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit6.i.i.i.i.i
    i8 53, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit6.i.i.i.i.i
    i8 54, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit6.i.i.i.i.i
    i8 55, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit6.i.i.i.i.i
    i8 56, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit6.i.i.i.i.i
    i8 69, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit6.i.i.i.i.i
    i8 68, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit6.i.i.i.i.i
    i8 67, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit6.i.i.i.i.i
    i8 66, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit6.i.i.i.i.i
    i8 65, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit6.i.i.i.i.i
    i8 57, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit6.i.i.i.i.i
    i8 102, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit6.i.i.i.i.i
    i8 101, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit6.i.i.i.i.i
    i8 100, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit6.i.i.i.i.i
    i8 99, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit6.i.i.i.i.i
    i8 98, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit6.i.i.i.i.i
    i8 97, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit6.i.i.i.i.i
    i8 70, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit6.i.i.i.i.i
  ]

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit6.i.i.i.i.i: ; preds = %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i4.i.i.i31.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i4.i.i.i31.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i4.i.i.i31.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i4.i.i.i31.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i4.i.i.i31.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i4.i.i.i31.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i4.i.i.i31.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i4.i.i.i31.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i4.i.i.i31.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i4.i.i.i31.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i4.i.i.i31.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i4.i.i.i31.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i4.i.i.i31.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i4.i.i.i31.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i4.i.i.i31.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i4.i.i.i31.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i4.i.i.i31.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i4.i.i.i31.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i4.i.i.i31.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i4.i.i.i31.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i4.i.i.i31.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i4.i.i.i31.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.7, i64 1
  br label %bb.j, !llvm.loop !48

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE24nonDecimalIntegerLiteralEv.exit.i: ; preds = %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i4.i.i.i31.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i28.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i.i.i.i24.i.i, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc88ELc120EEEENS_8OptValueIcEEv.exit.i.i.i
  %.val.i738.i = phi ptr [ %i.bz, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i.i.i.i24.i.i ], [ %i.bz, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc88ELc120EEEENS_8OptValueIcEEv.exit.i.i.i ], [ %.sroa.0.7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i28.i.i ], [ %.sroa.0.7, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i4.i.i.i31.i.i ]
  %i.cs = load i64, ptr %i.b, align 8, !tbaa !39
  %.not.i = icmp eq i64 %i.cs, 0
  br i1 %.not.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE11nextIsAnyOfIJLc43ELc45EEEENS_8OptValueIcEEv.exit.i.ithread-pre-split, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE24nonDecimalIntegerLiteralEv.exit.thread.i

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE24nonDecimalIntegerLiteralEv.exit.thread.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE24nonDecimalIntegerLiteralEv.exit.i, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE19octalIntegerLiteralEv.exit.i.i, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE20binaryIntegerLiteralEv.exit.i.i
  %.val.i7.i = phi ptr [ %.val.i.i138.i.i, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE20binaryIntegerLiteralEv.exit.i.i ], [ %.val.i.i1742.i.i, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE19octalIntegerLiteralEv.exit.i.i ], [ %.val.i738.i, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE24nonDecimalIntegerLiteralEv.exit.i ] ; 2 uses
  %i.ct = icmp ult ptr %.val.i7.i, %.sroa.30.2
  br i1 %i.ct, label %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i8.i, label %.thread

_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i8.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE24nonDecimalIntegerLiteralEv.exit.thread.i
  %i.cu = load i8, ptr %.val.i7.i, align 1, !tbaa !7
  %.not.i9.i = icmp eq i8 %i.cu, 0
  br i1 %.not.i9.i, label %.thread, label %bb.l

bb.l:                                             ; preds = %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i8.i
  %.not.i.i.i = icmp eq ptr %5, null
  br i1 %.not.i.i.i, label %_ZNO6hermes6bigint12_GLOBAL__N_126StringIntegerLiteralParserIN4llvh8ArrayRefIcEEE4goalEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !39
  %i.cx = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef %i.cw, ptr noundef nonnull @.str.2, i64 noundef 36) #16 ; 0 uses
  br label %_ZNO6hermes6bigint12_GLOBAL__N_126StringIntegerLiteralParserIN4llvh8ArrayRefIcEEE4goalEv.exit

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE11nextIsAnyOfIJLc43ELc45EEEENS_8OptValueIcEEv.exit.i.ithread-pre-split: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE19octalIntegerLiteralEv.exit.thread.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i.i20.i.i, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE24nonDecimalIntegerLiteralEv.exit.i
  %.pr = load i8, ptr %.sroa.0.0, align 1, !tbaa !7
  br label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE11nextIsAnyOfIJLc43ELc45EEEENS_8OptValueIcEEv.exit.i.i

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE11nextIsAnyOfIJLc43ELc45EEEENS_8OptValueIcEEv.exit.i.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE11nextIsAnyOfIJLc43ELc45EEEENS_8OptValueIcEEv.exit.i.ithread-pre-split, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i
  %i.cy = phi i8 [ %.pr, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE11nextIsAnyOfIJLc43ELc45EEEENS_8OptValueIcEEv.exit.i.ithread-pre-split ], [ %i.r, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i ]
  switch i8 %i.cy, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc43ELc45EEEENS_8OptValueIcEEv.exit.thread.i [
    i8 45, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc43ELc45EEEENS_8OptValueIcEEv.exit.i
    i8 43, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc43ELc45EEEENS_8OptValueIcEEv.exit.i
  ]

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc43ELc45EEEENS_8OptValueIcEEv.exit.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE11nextIsAnyOfIJLc43ELc45EEEENS_8OptValueIcEEv.exit.i.i, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE11nextIsAnyOfIJLc43ELc45EEEENS_8OptValueIcEEv.exit.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 1 ; 2 uses
  %i.da = icmp eq i8 %i.r, 43
  %i.db = select i1 %i.da, i32 1, i32 -1
  store i32 %i.db, ptr %4, align 4, !tbaa !41
  %.pre41 = ptrtoint ptr %i.cz to i64
  br label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc43ELc45EEEENS_8OptValueIcEEv.exit.thread.i

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc43ELc45EEEENS_8OptValueIcEEv.exit.thread.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc43ELc45EEEENS_8OptValueIcEEv.exit.i, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE11nextIsAnyOfIJLc43ELc45EEEENS_8OptValueIcEEv.exit.i.i
  %.sroa.0.337.pre-phi = phi i64 [ %.pre41, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc43ELc45EEEENS_8OptValueIcEEv.exit.i ], [ %.lcssa.i34.pre-phi, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE11nextIsAnyOfIJLc43ELc45EEEENS_8OptValueIcEEv.exit.i.i ]
  %.sroa.0.3 = phi ptr [ %i.cz, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc43ELc45EEEENS_8OptValueIcEEv.exit.i ], [ %.sroa.0.0, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE11nextIsAnyOfIJLc43ELc45EEEENS_8OptValueIcEEv.exit.i.i ] ; 6 uses
  %i.dc = icmp ult ptr %.sroa.0.3, %.sroa.30.2
  br i1 %i.dc, label %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i14.i, label %.critedge.i.i

_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i14.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc43ELc45EEEENS_8OptValueIcEEv.exit.thread.i
  %i.dd = load i8, ptr %.sroa.0.3, align 1, !tbaa !7
  %i.de = icmp eq i8 %i.dd, 48
  br i1 %i.de, label %.lr.ph.i.i.preheader, label %.critedge.i.i

.lr.ph.i.i.preheader:                             ; preds = %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i14.i
  %i.df = xor i64 %.sroa.0.337.pre-phi, -1
  %i.dg = getelementptr i8, ptr %.sroa.0.3, i64 %.sroa.30.236.pre-phi
  %scevgep38 = getelementptr i8, ptr %i.dg, i64 %i.df ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.3, i64 1 ; 2 uses
  %i.di = icmp ult ptr %i.dh, %.sroa.30.2
  br i1 %i.di, label %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit9.i.i, label %.critedge.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit9.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dl, i64 1 ; 2 uses
  %i.dk = icmp ult ptr %i.dj, %.sroa.30.2
  br i1 %i.dk, label %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit9.i.i, label %.critedge.i.i

_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit9.i.i: ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %i.dl = phi ptr [ %i.dj, %.lr.ph.i.i ], [ %i.dh, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !7
  %i.dn = icmp eq i8 %i.dm, 48
  br i1 %i.dn, label %.lr.ph.i.i, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.lr.ph.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit9.i.i, %.lr.ph.i.i.preheader, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i14.i, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc43ELc45EEEENS_8OptValueIcEEv.exit.thread.i
  %.sroa.0.4 = phi ptr [ %.sroa.0.3, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i14.i ], [ %.sroa.0.3, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc43ELc45EEEENS_8OptValueIcEEv.exit.thread.i ], [ %scevgep38, %.lr.ph.i.i.preheader ], [ %i.dl, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit9.i.i ], [ %scevgep38, %.lr.ph.i.i ] ; 4 uses
  %i.do = icmp ult ptr %.sroa.0.4, %.sroa.30.2
  br i1 %i.do, label %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i11.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE13decimalDigitsEv.exit.thread.i

_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i11.i.i: ; preds = %.critedge.i.i
  %i.dp = load i8, ptr %.sroa.0.4, align 1, !tbaa !7
  %i.dq = add i8 %i.dp, -48
  %i.dr = icmp ult i8 %i.dq, 10
  br i1 %i.dr, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE11nextIsAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57EEEENS_8OptValueIcEEv.exit.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE13decimalDigitsEv.exit.thread.i

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE11nextIsAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57EEEENS_8OptValueIcEEv.exit.i.i: ; preds = %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i11.i.i
  store i8 10, ptr %3, align 1, !tbaa !7
  %i.ds = load i8, ptr %.sroa.0.4, align 1, !tbaa !7 ; 3 uses
  %i.dt = add i8 %i.ds, -48
  %i.du = icmp ult i8 %i.dt, 10
  br i1 %i.du, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57EEEENS_8OptValueIcEEv.exit.i.i.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE13decimalDigitsEv.exit.i.thread

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57EEEENS_8OptValueIcEEv.exit.i.i.i.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE11nextIsAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57EEEENS_8OptValueIcEEv.exit.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i4.i.i.i.i
  %.sroa.0.4.pn = phi ptr [ %.sroa.0.5, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i4.i.i.i.i ], [ %.sroa.0.4, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE11nextIsAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57EEEENS_8OptValueIcEEv.exit.i.i ]
  %.sroa.0.0.extract.trunc9.in.in.in.i.i.i.i = phi i8 [ %i.ei, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i4.i.i.i.i ], [ %i.ds, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE11nextIsAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57EEEENS_8OptValueIcEEv.exit.i.i ]
  %.sroa.0.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.4.pn, i64 1 ; 4 uses
  %i.dv = load i64, ptr %i.b, align 8, !tbaa !39  ; 4 uses
  %i.dw = add i64 %i.dv, 1                        ; 3 uses
  %i.dx = load ptr, ptr %7, align 8, !tbaa !45    ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.a
  br i1 %i.dy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57EEEENS_8OptValueIcEEv.exit.i.i.i.i
  %i.dz = icmp ult i64 %i.dv, 16
  call void @llvm.assume(i1 %i.dz)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57EEEENS_8OptValueIcEEv.exit.i.i.i.i
  %i.ea = load i64, ptr %i.a, align 8, !tbaa !7
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.eb = phi i64 [ %i.ea, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i ]
  %i.ec = icmp ugt i64 %i.dw, %i.eb
  br i1 %i.ec, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i.i

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.dv, i64 noundef 0, ptr noundef null, i64 noundef 1) #16
  %.pre.i.i.i.i.i = load ptr, ptr %7, align 8, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  %i.ed = phi ptr [ %.pre.i.i.i.i.i, %bb.n ], [ %i.dx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i ]
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.dv
  store i8 %.sroa.0.0.extract.trunc9.in.in.in.i.i.i.i, ptr %i.ee, align 1, !tbaa !7
  store i64 %i.dw, ptr %i.b, align 8, !tbaa !39
  %i.ef = load ptr, ptr %7, align 8, !tbaa !45
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.dw
  store i8 0, ptr %i.eg, align 1, !tbaa !7
  %i.eh = icmp ult ptr %.sroa.0.5, %.sroa.30.2
  br i1 %i.eh, label %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i4.i.i.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE13decimalDigitsEv.exit.i.thread60

_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i4.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i.i
  %i.ei = load i8, ptr %.sroa.0.5, align 1, !tbaa !7 ; 2 uses
  %i.ej = add i8 %i.ei, -48
  %i.ek = icmp ult i8 %i.ej, 10
  br i1 %i.ek, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57EEEENS_8OptValueIcEEv.exit.i.i.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE13decimalDigitsEv.exit.i, !llvm.loop !49

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE13decimalDigitsEv.exit.i: ; preds = %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i.i4.i.i.i.i
  %i.el = load i64, ptr %i.b, align 8, !tbaa !39
  %.not36.i = icmp eq i64 %i.el, 0
  br i1 %.not36.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE13decimalDigitsEv.exit.thread.i, label %._ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i17.i_crit_edge

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE13decimalDigitsEv.exit.i.thread60: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i.i
  %i.em = load i64, ptr %i.b, align 8, !tbaa !39
  %.not36.i61 = icmp eq i64 %i.em, 0
  br i1 %.not36.i61, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE13decimalDigitsEv.exit.thread.i, label %.thread

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE13decimalDigitsEv.exit.i.thread: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE11nextIsAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57EEEENS_8OptValueIcEEv.exit.i.i
  %i.en = load i64, ptr %i.b, align 8, !tbaa !39
  %.not36.i25 = icmp eq i64 %i.en, 0
  br i1 %.not36.i25, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE13decimalDigitsEv.exit.thread.i, label %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i17.i

._ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i17.i_crit_edge: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE13decimalDigitsEv.exit.i
  %.pre = load i8, ptr %.sroa.0.5, align 1, !tbaa !7
  br label %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i17.i

_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i17.i: ; preds = %._ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i17.i_crit_edge, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE13decimalDigitsEv.exit.i.thread
  %i.eo = phi i8 [ %.pre, %._ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i17.i_crit_edge ], [ %i.ds, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE13decimalDigitsEv.exit.i.thread ]
  %.not.i18.i = icmp eq i8 %i.eo, 0
  br i1 %.not.i18.i, label %.thread, label %bb.o

bb.o:                                             ; preds = %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i17.i
  %.not.i.i20.i = icmp eq ptr %5, null
  br i1 %.not.i.i20.i, label %_ZNO6hermes6bigint12_GLOBAL__N_126StringIntegerLiteralParserIN4llvh8ArrayRefIcEEE4goalEv.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ep = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !39
  %i.er = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef %i.eq, ptr noundef nonnull @.str.3, i64 noundef 32) #16 ; 0 uses
  br label %_ZNO6hermes6bigint12_GLOBAL__N_126StringIntegerLiteralParserIN4llvh8ArrayRefIcEEE4goalEv.exit

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE13decimalDigitsEv.exit.thread.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE13decimalDigitsEv.exit.i.thread60, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE13decimalDigitsEv.exit.i.thread, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE13decimalDigitsEv.exit.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i11.i.i, %.critedge.i.i
  %.not.i22.i = icmp eq ptr %5, null
  br i1 %.not.i22.i, label %_ZNO6hermes6bigint12_GLOBAL__N_126StringIntegerLiteralParserIN4llvh8ArrayRefIcEEE4goalEv.exit, label %bb.q

bb.q:                                             ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE13decimalDigitsEv.exit.thread.i
  %i.es = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.et = load i64, ptr %i.es, align 8, !tbaa !39
  %i.eu = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef %i.et, ptr noundef nonnull @.str.4, i64 noundef 22) #16 ; 0 uses
  br label %_ZNO6hermes6bigint12_GLOBAL__N_126StringIntegerLiteralParserIN4llvh8ArrayRefIcEEE4goalEv.exit

.thread:                                          ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE13decimalDigitsEv.exit.i.thread60, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.thread.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i17.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i8.i, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE24nonDecimalIntegerLiteralEv.exit.thread.i
  %i.ev = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %7) #16 ; 0 uses
  br label %_ZNO6hermes6bigint12_GLOBAL__N_126StringIntegerLiteralParserIN4llvh8ArrayRefIcEEE4goalEv.exit

_ZNO6hermes6bigint12_GLOBAL__N_126StringIntegerLiteralParserIN4llvh8ArrayRefIcEEE4goalEv.exit: ; preds = %bb.q, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE13decimalDigitsEv.exit.thread.i, %bb.p, %bb.o, %bb.m, %bb.l, %.thread
  %i.ew = load ptr, ptr %7, align 8, !tbaa !45    ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.a
  br i1 %i.ex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNO6hermes6bigint12_GLOBAL__N_126StringIntegerLiteralParserIN4llvh8ArrayRefIcEEE4goalEv.exit
  %i.ey = load i64, ptr %i.a, align 8, !tbaa !7
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.ez) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNO6hermes6bigint12_GLOBAL__N_126StringIntegerLiteralParserIN4llvh8ArrayRefIcEEE4goalEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes6bigint36getStringIntegerLiteralDigitsAndSignEN4llvh8ArrayRefIDsEERhRNS0_10ParsedSignEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::optional") align 8 initializes((32, 33)) %0, ptr %1, i64 %2, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %4, ptr noundef %5) local_unnamed_addr #5 {
bb.a:
  tail call fastcc void @_ZN6hermes6bigint12_GLOBAL__N_113getDigitsWithINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEES6_EESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET0_RhRNS0_10ParsedSignEPSE_(ptr dead_on_unwind noalias writable align 8 %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef %5)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN6hermes6bigint12_GLOBAL__N_113getDigitsWithINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEES6_EESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET0_RhRNS0_10ParsedSignEPSE_(ptr dead_on_unwind noalias writable align 8 initializes((32, 33)) %0, ptr nofree readonly %1, i64 %2, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %4, ptr noundef %5) unnamed_addr #5 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 12 uses
  store ptr %i.a, ptr %6, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.c, align 8, !tbaa !36
  %.idx = shl nuw nsw i64 %2, 1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 3 uses
  store i64 0, ptr %i.b, align 8, !tbaa !39
  store i8 0, ptr %i.a, align 8, !tbaa !7
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %2) #16
  store i32 0, ptr %4, align 4, !tbaa !41
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -2 ; 2 uses
  %i.f = load i16, ptr %i.e, align 2, !tbaa !50
  %i.g = icmp eq i16 %i.f, 0
  %spec.select = select i1 %i.g, ptr %i.e, ptr %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.30.0 = phi ptr [ %i.d, %bb.a ], [ %spec.select, %bb.b ] ; 5 uses
  %i.h = icmp ult ptr %1, %.sroa.30.0
  br i1 %i.h, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.e
  %.sroa.0.1 = phi ptr [ %i.k, %bb.e ], [ %1, %bb.c ] ; 3 uses
  %i.i = load i16, ptr %.sroa.0.1, align 2, !tbaa !50 ; 3 uses
  switch i16 %i.i, label %bb.d [
    i16 -257, label %bb.e
    i16 5760, label %bb.e
    i16 160, label %bb.e
    i16 32, label %bb.e
    i16 12, label %bb.e
    i16 11, label %bb.e
    i16 9, label %bb.e
  ]

bb.d:                                             ; preds = %.lr.ph.i
  %i.j = add i16 %i.i, -8192
  %or.cond20.i.i = icmp ult i16 %i.j, 11
  br i1 %or.cond20.i.i, label %bb.e, label %switch.early.test.i.i

switch.early.test.i.i:                            ; preds = %bb.d
  switch i16 %i.i, label %.critedge.i [
    i16 8287, label %bb.e
    i16 8239, label %bb.e
    i16 12288, label %bb.e
  ]

bb.e:                                             ; preds = %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %bb.d, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 2 ; 3 uses
  %i.l = icmp ult ptr %i.k, %.sroa.30.0
  br i1 %i.l, label %.lr.ph.i, label %.critedge.i, !llvm.loop !52

.critedge.i:                                      ; preds = %bb.e, %switch.early.test.i.i, %bb.c
  %.sroa.0.0 = phi ptr [ %1, %bb.c ], [ %.sroa.0.1, %switch.early.test.i.i ], [ %i.k, %bb.e ] ; 10 uses
  %i.m = icmp ult ptr %.sroa.0.0, %.sroa.30.0
  br i1 %i.m, label %.lr.ph16.i, label %_ZN6hermes6bigint12_GLOBAL__N_126StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEC2ES5_RhRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_10ParsedSignEPSD_.exit

.lr.ph16.i:                                       ; preds = %.critedge.i, %bb.g
  %.sroa.30.1 = phi ptr [ %i.n, %bb.g ], [ %.sroa.30.0, %.critedge.i ] ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %.sroa.30.1, i64 -2 ; 4 uses
  %i.o = load i16, ptr %i.n, align 2, !tbaa !50   ; 3 uses
  switch i16 %i.o, label %bb.f [
    i16 -257, label %bb.g
    i16 5760, label %bb.g
    i16 160, label %bb.g
    i16 32, label %bb.g
    i16 12, label %bb.g
    i16 11, label %bb.g
    i16 9, label %bb.g
  ]

bb.f:                                             ; preds = %.lr.ph16.i
  %i.p = add i16 %i.o, -8192
  %or.cond20.i11.i = icmp ult i16 %i.p, 11
  br i1 %or.cond20.i11.i, label %bb.g, label %switch.early.test.i12.i

switch.early.test.i12.i:                          ; preds = %bb.f
  switch i16 %i.o, label %_ZN6hermes6bigint12_GLOBAL__N_126StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEC2ES5_RhRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_10ParsedSignEPSD_.exit [
    i16 8287, label %bb.g
    i16 8239, label %bb.g
    i16 12288, label %bb.g
  ]

bb.g:                                             ; preds = %switch.early.test.i12.i, %switch.early.test.i12.i, %switch.early.test.i12.i, %bb.f, %.lr.ph16.i, %.lr.ph16.i, %.lr.ph16.i, %.lr.ph16.i, %.lr.ph16.i, %.lr.ph16.i, %.lr.ph16.i
  %i.q = icmp ult ptr %.sroa.0.0, %i.n
  br i1 %i.q, label %.lr.ph16.i, label %_ZN6hermes6bigint12_GLOBAL__N_126StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEC2ES5_RhRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_10ParsedSignEPSD_.exit, !llvm.loop !53

_ZN6hermes6bigint12_GLOBAL__N_126StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEC2ES5_RhRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_10ParsedSignEPSD_.exit: ; preds = %switch.early.test.i12.i, %bb.g, %.critedge.i
  %.sroa.30.2 = phi ptr [ %.sroa.30.0, %.critedge.i ], [ %.sroa.30.1, %switch.early.test.i12.i ], [ %i.n, %bb.g ] ; 16 uses
  %i.r = icmp ult ptr %.sroa.0.0, %.sroa.30.2
  br i1 %i.r, label %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE4peekEl.exit.i, label %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE4peekEl.exit.thread.i

_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE4peekEl.exit.thread.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_126StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEC2ES5_RhRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_10ParsedSignEPSD_.exit
  store i8 10, ptr %3, align 1, !tbaa !7
  %i.s = load i64, ptr %i.b, align 8, !tbaa !39
  %i.t = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef %i.s, ptr noundef nonnull @.str, i64 noundef 1) #16 ; 0 uses
  br label %_ZNO6hermes6bigint12_GLOBAL__N_126StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEE4goalEv.exit

_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE4peekEl.exit.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_126StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEC2ES5_RhRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_10ParsedSignEPSD_.exit
  %i.u = load i16, ptr %.sroa.0.0, align 2, !tbaa !50 ; 2 uses
  %i.v = icmp eq i16 %i.u, 48
  br i1 %i.v, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE3eatEv.exit.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE11nextIsAnyOfIJLDs43ELDs45EEEENS_8OptValueIDsEEv.exit.i.i

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE3eatEv.exit.i: ; preds = %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE4peekEl.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 2 ; 4 uses
  %i.x = icmp ult ptr %i.w, %.sroa.30.2
  br i1 %i.x, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE11nextIsAnyOfIJLDs66ELDs98EEEENS_8OptValueIDsEEv.exit.i.i.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE20binaryIntegerLiteralEv.exit.thread.i.i

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE11nextIsAnyOfIJLDs66ELDs98EEEENS_8OptValueIDsEEv.exit.i.i.i.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE3eatEv.exit.i
  %i.y = load i16, ptr %i.w, align 2, !tbaa !50   ; 2 uses
  %i.z = icmp eq i16 %i.y, 66
  %i.aa = and i16 %i.y, 255
  %i.ab = icmp eq i16 %i.aa, 98
  %i.ac = or i1 %i.z, %i.ab
  br i1 %i.ac, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE22lookaheadAndEatIfAnyOfIJLDs66ELDs98EEEENS_8OptValueIDsEEv.exit.i.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE20binaryIntegerLiteralEv.exit.thread.i.i

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE22lookaheadAndEatIfAnyOfIJLDs66ELDs98EEEENS_8OptValueIDsEEv.exit.i.i.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE11nextIsAnyOfIJLDs66ELDs98EEEENS_8OptValueIDsEEv.exit.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 4 ; 4 uses
  store i8 2, ptr %3, align 1, !tbaa !7
  %i.ae = icmp ult ptr %i.ad, %.sroa.30.2
  br i1 %i.ae, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE11nextIsAnyOfIJLDs48ELDs49EEEENS_8OptValueIDsEEv.exit.i.i.i.i.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE20binaryIntegerLiteralEv.exit.i.i

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE11nextIsAnyOfIJLDs48ELDs49EEEENS_8OptValueIDsEEv.exit.i.i.i.i.i.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE22lookaheadAndEatIfAnyOfIJLDs66ELDs98EEEENS_8OptValueIDsEEv.exit.i.i.i
  %i.af = load i16, ptr %i.ad, align 2, !tbaa !50 ; 3 uses
  %i.ag = icmp eq i16 %i.af, 48
  %i.ah = and i16 %i.af, 255
  %i.ai = icmp eq i16 %i.ah, 49
  %i.aj = or i1 %i.ag, %i.ai
  %i.ak = zext i16 %i.af to i32
  %i.al = or disjoint i32 %i.ak, 65536
  %i.am = trunc nuw nsw i32 %i.al to i24
  %i.an = select i1 %i.aj, i24 %i.am, i24 0       ; 2 uses
  %.not.i.i.i.i.i.i = icmp samesign ult i24 %i.an, 65536
  br i1 %.not.i.i.i.i.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE20binaryIntegerLiteralEv.exit.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE22lookaheadAndEatIfAnyOfIJLDs48ELDs49EEEENS_8OptValueIDsEEv.exit.i.i.i.i.i

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE22lookaheadAndEatIfAnyOfIJLDs48ELDs49EEEENS_8OptValueIDsEEv.exit.i.i.i.i.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE11nextIsAnyOfIJLDs48ELDs49EEEENS_8OptValueIDsEEv.exit.i.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 6
  %extract.t47 = trunc i24 %i.an to i8
  br label %bb.h

bb.h:                                             ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE22lookaheadAndEatIfAnyOfIJLDs48ELDs49EEEENS_8OptValueIDsEEv.exit7.i.i.i.i.i, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE22lookaheadAndEatIfAnyOfIJLDs48ELDs49EEEENS_8OptValueIDsEEv.exit.i.i.i.i.i
  %.sink.off0 = phi i8 [ %extract.t46, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE22lookaheadAndEatIfAnyOfIJLDs48ELDs49EEEENS_8OptValueIDsEEv.exit7.i.i.i.i.i ], [ %extract.t47, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE22lookaheadAndEatIfAnyOfIJLDs48ELDs49EEEENS_8OptValueIDsEEv.exit.i.i.i.i.i ]
  %.sroa.0.9 = phi ptr [ %i.bl, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE22lookaheadAndEatIfAnyOfIJLDs48ELDs49EEEENS_8OptValueIDsEEv.exit7.i.i.i.i.i ], [ %i.ao, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE22lookaheadAndEatIfAnyOfIJLDs48ELDs49EEEENS_8OptValueIDsEEv.exit.i.i.i.i.i ] ; 5 uses
  %i.ap = load i64, ptr %i.b, align 8, !tbaa !39  ; 4 uses
  %i.aq = add i64 %i.ap, 1                        ; 3 uses
  %i.ar = load ptr, ptr %6, align 8, !tbaa !45    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.a
  br i1 %i.as, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i: ; preds = %bb.h
  %i.at = icmp ult i64 %i.ap, 16
  call void @llvm.assume(i1 %i.at)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.h
  %i.au = load i64, ptr %i.a, align 8, !tbaa !7
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.av = phi i64 [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i ]
  %i.aw = icmp ugt i64 %i.aq, %i.av
  br i1 %i.aw, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i.i.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.ap, i64 noundef 0, ptr noundef null, i64 noundef 1) #16
  %.pre.i.i.i.i.i.i = load ptr, ptr %6, align 8, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i.i.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  %i.ax = phi ptr [ %.pre.i.i.i.i.i.i, %bb.i ], [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ap
  store i8 %.sink.off0, ptr %i.ay, align 1, !tbaa !7
  store i64 %i.aq, ptr %i.b, align 8, !tbaa !39
  %i.az = load ptr, ptr %6, align 8, !tbaa !45
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.aq
  store i8 0, ptr %i.ba, align 1, !tbaa !7
  %i.bb = icmp ult ptr %.sroa.0.9, %.sroa.30.2
  br i1 %i.bb, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE11nextIsAnyOfIJLDs48ELDs49EEEENS_8OptValueIDsEEv.exit.i4.i.i.i.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE20binaryIntegerLiteralEv.exit.i.i

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE11nextIsAnyOfIJLDs48ELDs49EEEENS_8OptValueIDsEEv.exit.i4.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i.i.i
  %i.bc = load i16, ptr %.sroa.0.9, align 2, !tbaa !50 ; 3 uses
end_hunk_0
