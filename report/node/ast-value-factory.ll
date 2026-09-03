Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/ast-value-factory?download=true
inline.NumInlined: 2456
inline.NumDeleted: 476
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZNK2v88internal13AstConsString12AllocateFlatINS0_7IsolateEEENS0_6HandleINS0_6StringEEEPT_:bb.a

bb.ah:                                            ; preds = %bb.e
  %i.av = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewRawTwoByteStringEjNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.r, i8 noundef zeroext 1, i8 0) #16 ; 3 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.ai, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit48, !prof !12

bb.ai:                                            ; preds = %bb.ah
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #17
  unreachable

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit48: ; preds = %bb.ah
  %i.ax = load i64, ptr %i.av, align 8
  %i.ay = add i64 %i.ax, -1
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = zext nneg i32 %i.r to i64
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.bb
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit48, %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit
  %.03583 = phi ptr [ %i.a, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit48 ], [ %i.by, %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit ] ; 2 uses
  %.03682 = phi ptr [ %i.bc, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit48 ], [ %i.bw, %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit ] ; 2 uses
  %i.bd = load ptr, ptr %.03583, align 8          ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 28
  %i.bf = load i8, ptr %i.be, align 4, !range !8, !noundef !9
  %i.bg = trunc nuw i8 %i.bf to i1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bi = load i64, ptr %i.bh, align 8            ; 5 uses
  %i.bj = icmp ult i64 %i.bi, 2147483648          ; 2 uses
  br i1 %i.bg, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.bj, label %bb.ao, label %bb.al, !prof !10

bb.al:                                            ; preds = %bb.ak
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #17
  unreachable

bb.am:                                            ; preds = %bb.aj
  br i1 %i.bj, label %bb.ap, label %bb.an, !prof !10

bb.an:                                            ; preds = %bb.am
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #17
  unreachable

bb.ao:                                            ; preds = %bb.ak
  %i.bk = sub nsw i64 0, %i.bi
  %i.bl = getelementptr inbounds [2 x i8], ptr %.03682, i64 %i.bk ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  tail call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.bl, ptr noundef %i.bn, i64 noundef %i.bi)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.ap:                                            ; preds = %bb.am
  %i.bo = lshr i64 %i.bi, 1                       ; 2 uses
  %i.bp = sub nsw i64 0, %i.bo
  %i.bq = getelementptr inbounds [2 x i8], ptr %.03682, i64 %i.bp ; 35 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bs = load ptr, ptr %i.br, align 8            ; 17 uses
  switch i64 %i.bo, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i [
    i64 1, label %bb.aq
    i64 2, label %bb.ar
    i64 3, label %bb.as
    i64 4, label %bb.at
    i64 5, label %bb.au
    i64 6, label %bb.av
    i64 7, label %bb.aw
    i64 8, label %bb.ax
    i64 9, label %bb.ay
    i64 10, label %bb.az
    i64 11, label %bb.ba
    i64 12, label %bb.bb
    i64 13, label %bb.bc
    i64 14, label %bb.bd
    i64 15, label %bb.be
    i64 16, label %bb.bf
    i64 0, label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.bt = load i16, ptr %i.bs, align 2
  store i16 %i.bt, ptr %i.bq, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.ar:                                            ; preds = %bb.ap
  %i.bu = load i32, ptr %i.bs, align 2
  store i32 %i.bu, ptr %i.bq, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.as:                                            ; preds = %bb.ap
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.bq, ptr noundef nonnull align 2 dereferenceable(6) %i.bs, i64 6, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.at:                                            ; preds = %bb.ap
  %i.bv = load i64, ptr %i.bs, align 2
  store i64 %i.bv, ptr %i.bq, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.au:                                            ; preds = %bb.ap
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.bq, ptr noundef nonnull align 2 dereferenceable(10) %i.bs, i64 10, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.av:                                            ; preds = %bb.ap
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %i.bq, ptr noundef nonnull align 2 dereferenceable(12) %i.bs, i64 12, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.aw:                                            ; preds = %bb.ap
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.bq, ptr noundef nonnull align 2 dereferenceable(14) %i.bs, i64 14, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.ax:                                            ; preds = %bb.ap
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.bq, ptr noundef nonnull align 2 dereferenceable(16) %i.bs, i64 16, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.ay:                                            ; preds = %bb.ap
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.bq, ptr noundef nonnull align 2 dereferenceable(18) %i.bs, i64 18, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.az:                                            ; preds = %bb.ap
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %i.bq, ptr noundef nonnull align 2 dereferenceable(20) %i.bs, i64 20, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.ba:                                            ; preds = %bb.ap
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %i.bq, ptr noundef nonnull align 2 dereferenceable(22) %i.bs, i64 22, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.bb:                                            ; preds = %bb.ap
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.bq, ptr noundef nonnull align 2 dereferenceable(24) %i.bs, i64 24, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.bc:                                            ; preds = %bb.ap
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %i.bq, ptr noundef nonnull align 2 dereferenceable(26) %i.bs, i64 26, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.bd:                                            ; preds = %bb.ap
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %i.bq, ptr noundef nonnull align 2 dereferenceable(28) %i.bs, i64 28, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.be:                                            ; preds = %bb.ap
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %i.bq, ptr noundef nonnull align 2 dereferenceable(30) %i.bs, i64 30, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.bf:                                            ; preds = %bb.ap
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.bq, ptr noundef nonnull align 2 dereferenceable(32) %i.bs, i64 32, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.ap
  %.idx.i.i.i = and i64 %i.bi, 2147483646
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.bq, ptr nonnull align 2 %i.bs, i64 %.idx.i.i.i, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit:    ; preds = %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao
  %i.bw = phi ptr [ %i.bl, %bb.ao ], [ %i.bq, %bb.ap ], [ %i.bq, %bb.aq ], [ %i.bq, %bb.ar ], [ %i.bq, %bb.as ], [ %i.bq, %bb.at ], [ %i.bq, %bb.au ], [ %i.bq, %bb.av ], [ %i.bq, %bb.aw ], [ %i.bq, %bb.ax ], [ %i.bq, %bb.ay ], [ %i.bq, %bb.az ], [ %i.bq, %bb.ba ], [ %i.bq, %bb.bb ], [ %i.bq, %bb.bc ], [ %i.bq, %bb.bd ], [ %i.bq, %bb.be ], [ %i.bq, %bb.bf ], [ %i.bq, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.03583, i64 8
  %i.by = load ptr, ptr %i.bx, align 8            ; 2 uses
  %.not42 = icmp eq ptr %i.by, null
  br i1 %.not42, label %.loopexit, label %bb.aj, !llvm.loop !17

.loopexit:                                        ; preds = %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit, %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit, %bb.d, %bb.b
  %.sroa.067.0 = phi ptr [ %i.d, %bb.b ], [ %.sroa.0.0.copyload.i, %bb.d ], [ %i.u, %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit ], [ %i.av, %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit ]
  ret ptr %.sroa.067.0
}

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewRawOneByteStringEjNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i8 noundef zeroext, i8) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewRawTwoByteStringEjNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i8 noundef zeroext, i8) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 6 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 6 uses
  switch i64 %2, label %bb.b [
    i64 1, label %.lr.ph.i.i.i.i.i.i.i
    i64 2, label %.lr.ph.i.i.i.i.i.i.i37.preheader
    i64 3, label %.lr.ph.i.i.i.i.i.i.i42.preheader
    i64 4, label %.lr.ph.i.i.i.i.i.i.i47.preheader
    i64 5, label %.lr.ph.i.i.i.i.i.i.i52.preheader
    i64 6, label %.lr.ph.i.i.i.i.i.i.i57.preheader
    i64 7, label %.lr.ph.i.i.i.i.i.i.i62.preheader
    i64 8, label %.lr.ph.i.i.i.i.i.i.i67.preheader
    i64 9, label %.lr.ph.i.i.i.i.i.i.i72.preheader
    i64 10, label %.lr.ph.i.i.i.i.i.i.i77.preheader
    i64 11, label %.lr.ph.i.i.i.i.i.i.i82.preheader
    i64 12, label %.lr.ph.i.i.i.i.i.i.i87.preheader
    i64 13, label %.lr.ph.i.i.i.i.i.i.i92.preheader
    i64 14, label %.lr.ph.i.i.i.i.i.i.i97.preheader
    i64 15, label %.lr.ph.i.i.i.i.i.i.i102.preheader
    i64 16, label %.lr.ph.i.i.i.i.i.i.i107.preheader
  ]

.lr.ph.i.i.i.i.i.i.i107.preheader:                ; preds = %bb.a
  %i.c = add i64 %i.b, 16
  %i.d = add i64 %i.a, 32
  %rt.bound0167 = icmp ugt i64 %i.c, %i.a
  %rt.bound1168 = icmp ugt i64 %i.d, %i.b
  %rt.conflict169 = and i1 %rt.bound0167, %rt.bound1168
  br i1 %rt.conflict169, label %.lr.ph.i.i.i.i.i.i.i107.preheader.rtscalar, label %.lr.ph.i.i.i.i.i.i.i107.preheader.rtvec

.lr.ph.i.i.i.i.i.i.i102.preheader:                ; preds = %bb.a
  %i.e = add i64 %i.b, 15
  %i.f = add i64 %i.a, 30
  %rt.bound0163 = icmp ugt i64 %i.e, %i.a
  %rt.bound1164 = icmp ugt i64 %i.f, %i.b
  %rt.conflict165 = and i1 %rt.bound0163, %rt.bound1164
  br i1 %rt.conflict165, label %.lr.ph.i.i.i.i.i.i.i102.preheader.rtscalar, label %.lr.ph.i.i.i.i.i.i.i102.preheader.rtvec

.lr.ph.i.i.i.i.i.i.i97.preheader:                 ; preds = %bb.a
  %i.g = add i64 %i.b, 14
  %i.h = add i64 %i.a, 28
  %rt.bound0 = icmp ugt i64 %i.g, %i.a
  %rt.bound1 = icmp ugt i64 %i.h, %i.b
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.lr.ph.i.i.i.i.i.i.i97.preheader.rtscalar, label %.lr.ph.i.i.i.i.i.i.i97.preheader.rtvec

.lr.ph.i.i.i.i.i.i.i92.preheader:                 ; preds = %bb.a
  %i.i = load i8, ptr %1, align 1
  %i.j = zext i8 %i.i to i16
  store i16 %i.j, ptr %0, align 2
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.m = load i8, ptr %i.k, align 1
  %i.n = zext i8 %i.m to i16
  store i16 %i.n, ptr %i.l, align 2
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = load i8, ptr %i.o, align 1
  %i.r = zext i8 %i.q to i16
  store i16 %i.r, ptr %i.p, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.u = load i8, ptr %i.s, align 1
  %i.v = zext i8 %i.u to i16
  store i16 %i.v, ptr %i.t, align 2
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i8, ptr %i.w, align 1
  %i.z = zext i8 %i.y to i16
  store i16 %i.z, ptr %i.x, align 2
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ac = load i8, ptr %i.aa, align 1
  %i.ad = zext i8 %i.ac to i16
  store i16 %i.ad, ptr %i.ab, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ag = load i8, ptr %i.ae, align 1
  %i.ah = zext i8 %i.ag to i16
  store i16 %i.ah, ptr %i.af, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ak = load i8, ptr %i.ai, align 1
  %i.al = zext i8 %i.ak to i16
  store i16 %i.al, ptr %i.aj, align 2
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load i8, ptr %i.am, align 1
  %i.ap = zext i8 %i.ao to i16
  store i16 %i.ap, ptr %i.an, align 2
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.as = load i8, ptr %i.aq, align 1
  %i.at = zext i8 %i.as to i16
  store i16 %i.at, ptr %i.ar, align 2
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.aw = load i8, ptr %i.au, align 1
  %i.ax = zext i8 %i.aw to i16
  store i16 %i.ax, ptr %i.av, align 2
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.ba = load i8, ptr %i.ay, align 1
  %i.bb = zext i8 %i.ba to i16
  store i16 %i.bb, ptr %i.az, align 2
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.be = load i8, ptr %i.bc, align 1
  %i.bf = zext i8 %i.be to i16
  store i16 %i.bf, ptr %i.bd, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i87.preheader:                 ; preds = %bb.a
  %i.bg = load i8, ptr %1, align 1
  %i.bh = zext i8 %i.bg to i16
  store i16 %i.bh, ptr %0, align 2
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bk = load i8, ptr %i.bi, align 1
  %i.bl = zext i8 %i.bk to i16
  store i16 %i.bl, ptr %i.bj, align 2
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bo = load i8, ptr %i.bm, align 1
  %i.bp = zext i8 %i.bo to i16
  store i16 %i.bp, ptr %i.bn, align 2
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.bs = load i8, ptr %i.bq, align 1
  %i.bt = zext i8 %i.bs to i16
  store i16 %i.bt, ptr %i.br, align 2
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bw = load i8, ptr %i.bu, align 1
  %i.bx = zext i8 %i.bw to i16
  store i16 %i.bx, ptr %i.bv, align 2
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ca = load i8, ptr %i.by, align 1
  %i.cb = zext i8 %i.ca to i16
  store i16 %i.cb, ptr %i.bz, align 2
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ce = load i8, ptr %i.cc, align 1
  %i.cf = zext i8 %i.ce to i16
  store i16 %i.cf, ptr %i.cd, align 2
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ci = load i8, ptr %i.cg, align 1
  %i.cj = zext i8 %i.ci to i16
  store i16 %i.cj, ptr %i.ch, align 2
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cm = load i8, ptr %i.ck, align 1
  %i.cn = zext i8 %i.cm to i16
  store i16 %i.cn, ptr %i.cl, align 2
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.cq = load i8, ptr %i.co, align 1
  %i.cr = zext i8 %i.cq to i16
  store i16 %i.cr, ptr %i.cp, align 2
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.cu = load i8, ptr %i.cs, align 1
  %i.cv = zext i8 %i.cu to i16
  store i16 %i.cv, ptr %i.ct, align 2
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.cy = load i8, ptr %i.cw, align 1
  %i.cz = zext i8 %i.cy to i16
  store i16 %i.cz, ptr %i.cx, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i82.preheader:                 ; preds = %bb.a
  %i.da = load i8, ptr %1, align 1
  %i.db = zext i8 %i.da to i16
  store i16 %i.db, ptr %0, align 2
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.de = load i8, ptr %i.dc, align 1
  %i.df = zext i8 %i.de to i16
  store i16 %i.df, ptr %i.dd, align 2
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.di = load i8, ptr %i.dg, align 1
  %i.dj = zext i8 %i.di to i16
  store i16 %i.dj, ptr %i.dh, align 2
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.dm = load i8, ptr %i.dk, align 1
  %i.dn = zext i8 %i.dm to i16
  store i16 %i.dn, ptr %i.dl, align 2
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dq = load i8, ptr %i.do, align 1
  %i.dr = zext i8 %i.dq to i16
  store i16 %i.dr, ptr %i.dp, align 2
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.du = load i8, ptr %i.ds, align 1
  %i.dv = zext i8 %i.du to i16
  store i16 %i.dv, ptr %i.dt, align 2
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.dy = load i8, ptr %i.dw, align 1
  %i.dz = zext i8 %i.dy to i16
  store i16 %i.dz, ptr %i.dx, align 2
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ec = load i8, ptr %i.ea, align 1
  %i.ed = zext i8 %i.ec to i16
  store i16 %i.ed, ptr %i.eb, align 2
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eg = load i8, ptr %i.ee, align 1
  %i.eh = zext i8 %i.eg to i16
  store i16 %i.eh, ptr %i.ef, align 2
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ek = load i8, ptr %i.ei, align 1
  %i.el = zext i8 %i.ek to i16
  store i16 %i.el, ptr %i.ej, align 2
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.eo = load i8, ptr %i.em, align 1
  %i.ep = zext i8 %i.eo to i16
  store i16 %i.ep, ptr %i.en, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i77.preheader:                 ; preds = %bb.a
  %i.eq = load i8, ptr %1, align 1
  %i.er = zext i8 %i.eq to i16
  store i16 %i.er, ptr %0, align 2
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.eu = load i8, ptr %i.es, align 1
  %i.ev = zext i8 %i.eu to i16
  store i16 %i.ev, ptr %i.et, align 2
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ey = load i8, ptr %i.ew, align 1
  %i.ez = zext i8 %i.ey to i16
  store i16 %i.ez, ptr %i.ex, align 2
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 6
end_hunk_0
begin_hunk_1_@_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m:bb.a
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ie = load i8, ptr %i.ic, align 1
  %i.if = zext i8 %i.ie to i16
  store i16 %i.if, ptr %i.id, align 2
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ii = load i8, ptr %i.ig, align 1
  %i.ij = zext i8 %i.ii to i16
  store i16 %i.ij, ptr %i.ih, align 2
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.im = load i8, ptr %i.ik, align 1
  %i.in = zext i8 %i.im to i16
  store i16 %i.in, ptr %i.il, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i62.preheader:                 ; preds = %bb.a
  %i.io = load i8, ptr %1, align 1
  %i.ip = zext i8 %i.io to i16
  store i16 %i.ip, ptr %0, align 2
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.is = load i8, ptr %i.iq, align 1
  %i.it = zext i8 %i.is to i16
  store i16 %i.it, ptr %i.ir, align 2
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.iw = load i8, ptr %i.iu, align 1
  %i.ix = zext i8 %i.iw to i16
  store i16 %i.ix, ptr %i.iv, align 2
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ja = load i8, ptr %i.iy, align 1
  %i.jb = zext i8 %i.ja to i16
  store i16 %i.jb, ptr %i.iz, align 2
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.je = load i8, ptr %i.jc, align 1
  %i.jf = zext i8 %i.je to i16
  store i16 %i.jf, ptr %i.jd, align 2
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ji = load i8, ptr %i.jg, align 1
  %i.jj = zext i8 %i.ji to i16
  store i16 %i.jj, ptr %i.jh, align 2
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.jm = load i8, ptr %i.jk, align 1
  %i.jn = zext i8 %i.jm to i16
  store i16 %i.jn, ptr %i.jl, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i57.preheader:                 ; preds = %bb.a
  %i.jo = load i8, ptr %1, align 1
  %i.jp = zext i8 %i.jo to i16
  store i16 %i.jp, ptr %0, align 2
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.js = load i8, ptr %i.jq, align 1
  %i.jt = zext i8 %i.js to i16
  store i16 %i.jt, ptr %i.jr, align 2
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.jw = load i8, ptr %i.ju, align 1
  %i.jx = zext i8 %i.jw to i16
  store i16 %i.jx, ptr %i.jv, align 2
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ka = load i8, ptr %i.jy, align 1
  %i.kb = zext i8 %i.ka to i16
  store i16 %i.kb, ptr %i.jz, align 2
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ke = load i8, ptr %i.kc, align 1
  %i.kf = zext i8 %i.ke to i16
  store i16 %i.kf, ptr %i.kd, align 2
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ki = load i8, ptr %i.kg, align 1
  %i.kj = zext i8 %i.ki to i16
  store i16 %i.kj, ptr %i.kh, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i52.preheader:                 ; preds = %bb.a
  %i.kk = load i8, ptr %1, align 1
  %i.kl = zext i8 %i.kk to i16
  store i16 %i.kl, ptr %0, align 2
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ko = load i8, ptr %i.km, align 1
  %i.kp = zext i8 %i.ko to i16
  store i16 %i.kp, ptr %i.kn, align 2
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ks = load i8, ptr %i.kq, align 1
  %i.kt = zext i8 %i.ks to i16
  store i16 %i.kt, ptr %i.kr, align 2
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.kw = load i8, ptr %i.ku, align 1
  %i.kx = zext i8 %i.kw to i16
  store i16 %i.kx, ptr %i.kv, align 2
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.la = load i8, ptr %i.ky, align 1
  %i.lb = zext i8 %i.la to i16
  store i16 %i.lb, ptr %i.kz, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i47.preheader:                 ; preds = %bb.a
  %i.lc = load i8, ptr %1, align 1
  %i.ld = zext i8 %i.lc to i16
  store i16 %i.ld, ptr %0, align 2
  %i.le = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.lg = load i8, ptr %i.le, align 1
  %i.lh = zext i8 %i.lg to i16
  store i16 %i.lh, ptr %i.lf, align 2
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.lk = load i8, ptr %i.li, align 1
  %i.ll = zext i8 %i.lk to i16
  store i16 %i.ll, ptr %i.lj, align 2
  %i.lm = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.lo = load i8, ptr %i.lm, align 1
  %i.lp = zext i8 %i.lo to i16
  store i16 %i.lp, ptr %i.ln, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i42.preheader:                 ; preds = %bb.a
  %i.lq = load i8, ptr %1, align 1
  %i.lr = zext i8 %i.lq to i16
  store i16 %i.lr, ptr %0, align 2
  %i.ls = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.lu = load i8, ptr %i.ls, align 1
  %i.lv = zext i8 %i.lu to i16
  store i16 %i.lv, ptr %i.lt, align 2
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ly = load i8, ptr %i.lw, align 1
  %i.lz = zext i8 %i.ly to i16
  store i16 %i.lz, ptr %i.lx, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i37.preheader:                 ; preds = %bb.a
  %i.ma = load i8, ptr %1, align 1
  %i.mb = zext i8 %i.ma to i16
  store i16 %i.mb, ptr %0, align 2
  %i.mc = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.me = load i8, ptr %i.mc, align 1
  %i.mf = zext i8 %i.me to i16
  store i16 %i.mf, ptr %i.md, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.a
  %i.mg = load i8, ptr %1, align 1
  %i.mh = zext i8 %i.mg to i16
  store i16 %i.mh, ptr %0, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

bb.b:                                             ; preds = %bb.a
  %i.mi = icmp sgt i64 %2, 0
  br i1 %i.mi, label %iter.check, label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

iter.check:                                       ; preds = %bb.b
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i112.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.mj = shl nuw i64 %2, 1
  %scevgep = getelementptr i8, ptr %0, i64 %i.mj
  %scevgep147 = getelementptr i8, ptr %1, i64 %2
  %bound0 = icmp ult ptr %0, %scevgep147
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i112.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check148 = icmp ult i64 %2, 16
  br i1 %min.iters.check148, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.mk = and i64 %2, 12
  %n.vec = and i64 %2, 9223372036854775792        ; 5 uses
  %i.ml = and i64 %2, 15
  %i.mm = shl nuw i64 %n.vec, 1
  %i.mn = getelementptr i8, ptr %0, i64 %i.mm
  %i.mo = getelementptr i8, ptr %1, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.mp = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %0, i64 %i.mp ; 2 uses
  %next.gep149 = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %i.mq = getelementptr i8, ptr %next.gep149, i64 8
  %wide.load = load <8 x i8>, ptr %next.gep149, align 1, !alias.scope !24
  %wide.load150 = load <8 x i8>, ptr %i.mq, align 1, !alias.scope !24
  %i.mr = zext <8 x i8> %wide.load to <8 x i16>
  %i.ms = zext <8 x i8> %wide.load150 to <8 x i16>
  %i.mt = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %i.mr, ptr %next.gep, align 2, !alias.scope !25, !noalias !24
  store <8 x i16> %i.ms, ptr %i.mt, align 2, !alias.scope !25, !noalias !24
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.mu = icmp eq i64 %index.next, %n.vec
  br i1 %i.mu, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.mk, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i112.preheader, label %vec.epilog.ph, !prof !28

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec153 = and i64 %2, 9223372036854775804     ; 4 uses
  %i.mv = and i64 %2, 3
  %i.mw = shl nuw i64 %n.vec153, 1
  %i.mx = getelementptr i8, ptr %0, i64 %i.mw
  %i.my = getelementptr i8, ptr %1, i64 %n.vec153
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index154 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next158, %vec.epilog.vector.body ] ; 3 uses
  %i.mz = shl i64 %index154, 1
  %next.gep155 = getelementptr i8, ptr %0, i64 %i.mz
  %next.gep156 = getelementptr i8, ptr %1, i64 %index154
  %wide.load157 = load <4 x i8>, ptr %next.gep156, align 1, !alias.scope !24
  %i.na = zext <4 x i8> %wide.load157 to <4 x i16>
  store <4 x i16> %i.na, ptr %next.gep155, align 2, !alias.scope !25, !noalias !24
  %index.next158 = add nuw i64 %index154, 4       ; 2 uses
  %i.nb = icmp eq i64 %index.next158, %n.vec153
  br i1 %i.nb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !22

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n159 = icmp eq i64 %2, %n.vec153
  br i1 %cmp.n159, label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit, label %.lr.ph.i.i.i.i.i.i.i112.preheader

.lr.ph.i.i.i.i.i.i.i112.preheader:                ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.i113.ph = phi i64 [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.ml, %vec.epilog.iter.check ], [ %i.mv, %vec.epilog.middle.block ]
  %.0811.i.i.i.i.i.i.i114.ph = phi ptr [ %0, %iter.check ], [ %0, %vector.memcheck ], [ %i.mn, %vec.epilog.iter.check ], [ %i.mx, %vec.epilog.middle.block ]
  %.0910.i.i.i.i.i.i.i115.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.mo, %vec.epilog.iter.check ], [ %i.my, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i112

.lr.ph.i.i.i.i.i.i.i112:                          ; preds = %.lr.ph.i.i.i.i.i.i.i112.preheader, %.lr.ph.i.i.i.i.i.i.i112
  %.012.i.i.i.i.i.i.i113 = phi i64 [ %i.ng, %.lr.ph.i.i.i.i.i.i.i112 ], [ %.012.i.i.i.i.i.i.i113.ph, %.lr.ph.i.i.i.i.i.i.i112.preheader ] ; 2 uses
  %.0811.i.i.i.i.i.i.i114 = phi ptr [ %i.nf, %.lr.ph.i.i.i.i.i.i.i112 ], [ %.0811.i.i.i.i.i.i.i114.ph, %.lr.ph.i.i.i.i.i.i.i112.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i.i115 = phi ptr [ %i.ne, %.lr.ph.i.i.i.i.i.i.i112 ], [ %.0910.i.i.i.i.i.i.i115.ph, %.lr.ph.i.i.i.i.i.i.i112.preheader ] ; 2 uses
  %i.nc = load i8, ptr %.0910.i.i.i.i.i.i.i115, align 1
  %i.nd = zext i8 %i.nc to i16
  store i16 %i.nd, ptr %.0811.i.i.i.i.i.i.i114, align 2
  %i.ne = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i115, i64 1
  %i.nf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i114, i64 2
  %i.ng = add nsw i64 %.012.i.i.i.i.i.i.i113, -1
  %i.nh = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i113, 1
  br i1 %i.nh, label %.lr.ph.i.i.i.i.i.i.i112, label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit, !llvm.loop !23

_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit:              ; preds = %.lr.ph.i.i.i.i.i.i.i107.preheader.rtvec, %.lr.ph.i.i.i.i.i.i.i107.preheader.rtscalar, %.lr.ph.i.i.i.i.i.i.i102.preheader.rtvec, %.lr.ph.i.i.i.i.i.i.i102.preheader.rtscalar, %.lr.ph.i.i.i.i.i.i.i97.preheader.rtvec, %.lr.ph.i.i.i.i.i.i.i97.preheader.rtscalar, %.lr.ph.i.i.i.i.i.i.i112, %middle.block, %vec.epilog.middle.block, %.lr.ph.i.i.i.i.i.i.i92.preheader, %.lr.ph.i.i.i.i.i.i.i87.preheader, %.lr.ph.i.i.i.i.i.i.i82.preheader, %.lr.ph.i.i.i.i.i.i.i77.preheader, %.lr.ph.i.i.i.i.i.i.i72.preheader, %.lr.ph.i.i.i.i.i.i.i67.preheader, %.lr.ph.i.i.i.i.i.i.i62.preheader, %.lr.ph.i.i.i.i.i.i.i57.preheader, %.lr.ph.i.i.i.i.i.i.i52.preheader, %.lr.ph.i.i.i.i.i.i.i47.preheader, %.lr.ph.i.i.i.i.i.i.i42.preheader, %.lr.ph.i.i.i.i.i.i.i37.preheader, %.lr.ph.i.i.i.i.i.i.i, %bb.b
  ret void

.lr.ph.i.i.i.i.i.i.i97.preheader.rtvec:           ; preds = %.lr.ph.i.i.i.i.i.i.i97.preheader
  %i.ni = load <8 x i8>, ptr %1, align 1
  %i.nj = zext <8 x i8> %i.ni to <8 x i16>
  store <8 x i16> %i.nj, ptr %0, align 2
  %i.nk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.nm = load <4 x i8>, ptr %i.nk, align 1
  %i.nn = zext <4 x i8> %i.nm to <4 x i16>
  store <4 x i16> %i.nn, ptr %i.nl, align 2
  %i.no = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.nq = load i8, ptr %i.no, align 1
  %i.nr = zext i8 %i.nq to i16
  store i16 %i.nr, ptr %i.np, align 2
  %i.ns = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.nu = load i8, ptr %i.ns, align 1
  %i.nv = zext i8 %i.nu to i16
  store i16 %i.nv, ptr %i.nt, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i97.preheader.rtscalar:        ; preds = %.lr.ph.i.i.i.i.i.i.i97.preheader
  %i.nw = load i8, ptr %1, align 1
  %i.nx = zext i8 %i.nw to i16
  store i16 %i.nx, ptr %0, align 2
  %i.ny = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.oa = load i8, ptr %i.ny, align 1
  %i.ob = zext i8 %i.oa to i16
  store i16 %i.ob, ptr %i.nz, align 2
  %i.oc = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.oe = load i8, ptr %i.oc, align 1
  %i.of = zext i8 %i.oe to i16
  store i16 %i.of, ptr %i.od, align 2
  %i.og = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.oi = load i8, ptr %i.og, align 1
  %i.oj = zext i8 %i.oi to i16
  store i16 %i.oj, ptr %i.oh, align 2
  %i.ok = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.om = load i8, ptr %i.ok, align 1
  %i.on = zext i8 %i.om to i16
  store i16 %i.on, ptr %i.ol, align 2
  %i.oo = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.oq = load i8, ptr %i.oo, align 1
  %i.or = zext i8 %i.oq to i16
  store i16 %i.or, ptr %i.op, align 2
  %i.os = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ou = load i8, ptr %i.os, align 1
  %i.ov = zext i8 %i.ou to i16
  store i16 %i.ov, ptr %i.ot, align 2
  %i.ow = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.oy = load i8, ptr %i.ow, align 1
  %i.oz = zext i8 %i.oy to i16
  store i16 %i.oz, ptr %i.ox, align 2
  %i.pa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.pc = load i8, ptr %i.pa, align 1
  %i.pd = zext i8 %i.pc to i16
  store i16 %i.pd, ptr %i.pb, align 2
  %i.pe = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.pg = load i8, ptr %i.pe, align 1
  %i.ph = zext i8 %i.pg to i16
  store i16 %i.ph, ptr %i.pf, align 2
  %i.pi = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.pk = load i8, ptr %i.pi, align 1
  %i.pl = zext i8 %i.pk to i16
  store i16 %i.pl, ptr %i.pj, align 2
  %i.pm = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.po = load i8, ptr %i.pm, align 1
  %i.pp = zext i8 %i.po to i16
  store i16 %i.pp, ptr %i.pn, align 2
  %i.pq = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ps = load i8, ptr %i.pq, align 1
  %i.pt = zext i8 %i.ps to i16
  store i16 %i.pt, ptr %i.pr, align 2
  %i.pu = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.pw = load i8, ptr %i.pu, align 1
  %i.px = zext i8 %i.pw to i16
  store i16 %i.px, ptr %i.pv, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i102.preheader.rtvec:          ; preds = %.lr.ph.i.i.i.i.i.i.i102.preheader
  %i.py = load <8 x i8>, ptr %1, align 1
  %i.pz = zext <8 x i8> %i.py to <8 x i16>
  store <8 x i16> %i.pz, ptr %0, align 2
  %i.qa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.qc = load <4 x i8>, ptr %i.qa, align 1
  %i.qd = zext <4 x i8> %i.qc to <4 x i16>
  store <4 x i16> %i.qd, ptr %i.qb, align 2
  %i.qe = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.qg = load i8, ptr %i.qe, align 1
  %i.qh = zext i8 %i.qg to i16
  store i16 %i.qh, ptr %i.qf, align 2
  %i.qi = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.qk = load i8, ptr %i.qi, align 1
  %i.ql = zext i8 %i.qk to i16
  store i16 %i.ql, ptr %i.qj, align 2
  %i.qm = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.qo = load i8, ptr %i.qm, align 1
  %i.qp = zext i8 %i.qo to i16
  store i16 %i.qp, ptr %i.qn, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i102.preheader.rtscalar:       ; preds = %.lr.ph.i.i.i.i.i.i.i102.preheader
  %i.qq = load i8, ptr %1, align 1
  %i.qr = zext i8 %i.qq to i16
  store i16 %i.qr, ptr %0, align 2
  %i.qs = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.qu = load i8, ptr %i.qs, align 1
  %i.qv = zext i8 %i.qu to i16
  store i16 %i.qv, ptr %i.qt, align 2
  %i.qw = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.qy = load i8, ptr %i.qw, align 1
  %i.qz = zext i8 %i.qy to i16
  store i16 %i.qz, ptr %i.qx, align 2
  %i.ra = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.rc = load i8, ptr %i.ra, align 1
  %i.rd = zext i8 %i.rc to i16
  store i16 %i.rd, ptr %i.rb, align 2
  %i.re = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.rg = load i8, ptr %i.re, align 1
  %i.rh = zext i8 %i.rg to i16
  store i16 %i.rh, ptr %i.rf, align 2
  %i.ri = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.rk = load i8, ptr %i.ri, align 1
  %i.rl = zext i8 %i.rk to i16
  store i16 %i.rl, ptr %i.rj, align 2
  %i.rm = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ro = load i8, ptr %i.rm, align 1
  %i.rp = zext i8 %i.ro to i16
  store i16 %i.rp, ptr %i.rn, align 2
  %i.rq = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.rs = load i8, ptr %i.rq, align 1
  %i.rt = zext i8 %i.rs to i16
  store i16 %i.rt, ptr %i.rr, align 2
  %i.ru = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.rw = load i8, ptr %i.ru, align 1
  %i.rx = zext i8 %i.rw to i16
  store i16 %i.rx, ptr %i.rv, align 2
  %i.ry = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.sa = load i8, ptr %i.ry, align 1
  %i.sb = zext i8 %i.sa to i16
  store i16 %i.sb, ptr %i.rz, align 2
  %i.sc = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.se = load i8, ptr %i.sc, align 1
  %i.sf = zext i8 %i.se to i16
  store i16 %i.sf, ptr %i.sd, align 2
  %i.sg = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.sh = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.si = load i8, ptr %i.sg, align 1
  %i.sj = zext i8 %i.si to i16
  store i16 %i.sj, ptr %i.sh, align 2
  %i.sk = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.sl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.sm = load i8, ptr %i.sk, align 1
  %i.sn = zext i8 %i.sm to i16
  store i16 %i.sn, ptr %i.sl, align 2
  %i.so = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.sp = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.sq = load i8, ptr %i.so, align 1
  %i.sr = zext i8 %i.sq to i16
  store i16 %i.sr, ptr %i.sp, align 2
  %i.ss = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.su = load i8, ptr %i.ss, align 1
  %i.sv = zext i8 %i.su to i16
  store i16 %i.sv, ptr %i.st, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i107.preheader.rtvec:          ; preds = %.lr.ph.i.i.i.i.i.i.i107.preheader
  %i.sw = load <8 x i8>, ptr %1, align 1
  %i.sx = zext <8 x i8> %i.sw to <8 x i16>
  store <8 x i16> %i.sx, ptr %0, align 2
  %i.sy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.sz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ta = load <8 x i8>, ptr %i.sy, align 1
  %i.tb = zext <8 x i8> %i.ta to <8 x i16>
  store <8 x i16> %i.tb, ptr %i.sz, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i107.preheader.rtscalar:       ; preds = %.lr.ph.i.i.i.i.i.i.i107.preheader
  %i.tc = load i8, ptr %1, align 1
  %i.td = zext i8 %i.tc to i16
  store i16 %i.td, ptr %0, align 2
  %i.te = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.tg = load i8, ptr %i.te, align 1
  %i.th = zext i8 %i.tg to i16
  store i16 %i.th, ptr %i.tf, align 2
  %i.ti = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.tj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.tk = load i8, ptr %i.ti, align 1
  %i.tl = zext i8 %i.tk to i16
  store i16 %i.tl, ptr %i.tj, align 2
  %i.tm = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.tn = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.to = load i8, ptr %i.tm, align 1
  %i.tp = zext i8 %i.to to i16
  store i16 %i.tp, ptr %i.tn, align 2
  %i.tq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.tr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ts = load i8, ptr %i.tq, align 1
  %i.tt = zext i8 %i.ts to i16
  store i16 %i.tt, ptr %i.tr, align 2
  %i.tu = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.tw = load i8, ptr %i.tu, align 1
  %i.tx = zext i8 %i.tw to i16
  store i16 %i.tx, ptr %i.tv, align 2
  %i.ty = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.tz = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ua = load i8, ptr %i.ty, align 1
  %i.ub = zext i8 %i.ua to i16
  store i16 %i.ub, ptr %i.tz, align 2
  %i.uc = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ue = load i8, ptr %i.uc, align 1
  %i.uf = zext i8 %i.ue to i16
  store i16 %i.uf, ptr %i.ud, align 2
  %i.ug = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.uh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ui = load i8, ptr %i.ug, align 1
  %i.uj = zext i8 %i.ui to i16
  store i16 %i.uj, ptr %i.uh, align 2
  %i.uk = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.um = load i8, ptr %i.uk, align 1
  %i.un = zext i8 %i.um to i16
  store i16 %i.un, ptr %i.ul, align 2
  %i.uo = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.uq = load i8, ptr %i.uo, align 1
  %i.ur = zext i8 %i.uq to i16
  store i16 %i.ur, ptr %i.up, align 2
  %i.us = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.uu = load i8, ptr %i.us, align 1
  %i.uv = zext i8 %i.uu to i16
  store i16 %i.uv, ptr %i.ut, align 2
  %i.uw = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.uy = load i8, ptr %i.uw, align 1
  %i.uz = zext i8 %i.uy to i16
  store i16 %i.uz, ptr %i.ux, align 2
  %i.va = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.vb = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.vc = load i8, ptr %i.va, align 1
  %i.vd = zext i8 %i.vc to i16
  store i16 %i.vd, ptr %i.vb, align 2
  %i.ve = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.vf = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.vg = load i8, ptr %i.ve, align 1
  %i.vh = zext i8 %i.vg to i16
  store i16 %i.vh, ptr %i.vf, align 2
  %i.vi = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.vj = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.vk = load i8, ptr %i.vi, align 1
  %i.vl = zext i8 %i.vk to i16
  store i16 %i.vl, ptr %i.vj, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZNK2v88internal13AstConsString12AllocateFlatINS0_12LocalIsolateEEENS0_6HandleINS0_6StringEEEPT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1952
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 688
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.d, label %.preheader

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i = load ptr, ptr %i.b, align 8
  br label %.loopexit

bb.e:                                             ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit
  br i1 %spec.select, label %bb.j, label %bb.ah

.preheader:                                       ; preds = %bb.c, %_ZNK2v88internal12AstRawString6lengthEv.exit
  %.081 = phi i32 [ %i.t, %_ZNK2v88internal12AstRawString6lengthEv.exit ], [ 0, %bb.c ]
  %.03780 = phi i1 [ %spec.select, %_ZNK2v88internal12AstRawString6lengthEv.exit ], [ true, %bb.c ]
  %.03879 = phi ptr [ %i.v, %_ZNK2v88internal12AstRawString6lengthEv.exit ], [ %i.a, %bb.c ] ; 2 uses
  %i.i = load ptr, ptr %.03879, align 8           ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.k = load i8, ptr %i.j, align 4, !range !8, !noundef !9
  %i.l = trunc nuw i8 %i.k to i1                  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.n = load i64, ptr %i.m, align 8              ; 3 uses
  %i.o = icmp ult i64 %i.n, 2147483648            ; 2 uses
  br i1 %i.l, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.preheader
  br i1 %i.o, label %_ZNK2v84base6VectorIKhE6lengthEv.exit.i, label %bb.g, !prof !10

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #17
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit.i:          ; preds = %bb.f
  %i.p = trunc nuw nsw i64 %i.n to i32
  br label %_ZNK2v88internal12AstRawString6lengthEv.exit

bb.h:                                             ; preds = %.preheader
  br i1 %i.o, label %_ZNK2v84base6VectorIKhE6lengthEv.exit1.i, label %bb.i, !prof !10

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #17
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit1.i:         ; preds = %bb.h
  %i.q = trunc nuw nsw i64 %i.n to i32
  %i.r = lshr i32 %i.q, 1
  br label %_ZNK2v88internal12AstRawString6lengthEv.exit

_ZNK2v88internal12AstRawString6lengthEv.exit:     ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit.i, %_ZNK2v84base6VectorIKhE6lengthEv.exit1.i
  %i.s = phi i32 [ %i.p, %_ZNK2v84base6VectorIKhE6lengthEv.exit.i ], [ %i.r, %_ZNK2v84base6VectorIKhE6lengthEv.exit1.i ]
  %i.t = add nuw nsw i32 %i.s, %.081              ; 5 uses
  %spec.select = and i1 %.03780, %i.l             ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.03879, i64 8
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not41 = icmp eq ptr %i.v, null
  br i1 %.not41, label %bb.e, label %.preheader, !llvm.loop !29

bb.j:                                             ; preds = %bb.e
  %i.w = tail call ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE19NewRawOneByteStringEjNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.t, i8 noundef zeroext 1, i8 0) #16 ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.k, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit, !prof !12

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #17
  unreachable

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit: ; preds = %bb.j
  %i.y = load i64, ptr %i.w, align 8
  %i.z = add i64 %i.y, -1
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = zext nneg i32 %i.t to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac
  br label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit, %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit
  %.03985 = phi ptr [ %i.a, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit ], [ %i.aw, %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit ] ; 2 uses
  %.04084 = phi ptr [ %i.ad, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit ], [ %i.ao, %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit ]
  %i.ae = load ptr, ptr %.03985, align 8          ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 28
  %i.ag = load i8, ptr %i.af, align 4, !range !8, !noundef !9
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.aj = load i64, ptr %i.ai, align 8            ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 2147483648          ; 2 uses
  br i1 %i.ah, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  br i1 %i.ak, label %_ZNK2v88internal12AstRawString6lengthEv.exit46, label %bb.n, !prof !10

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #17
  unreachable

bb.o:                                             ; preds = %bb.l
  br i1 %i.ak, label %_ZNK2v84base6VectorIKhE6lengthEv.exit1.i44, label %bb.p, !prof !10

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #17
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit1.i44:       ; preds = %bb.o
  %i.al = lshr i64 %i.aj, 1
  br label %_ZNK2v88internal12AstRawString6lengthEv.exit46

_ZNK2v88internal12AstRawString6lengthEv.exit46:   ; preds = %bb.m, %_ZNK2v84base6VectorIKhE6lengthEv.exit1.i44
  %i.am = phi i64 [ %i.al, %_ZNK2v84base6VectorIKhE6lengthEv.exit1.i44 ], [ %i.aj, %bb.m ] ; 3 uses
  %i.an = sub nsw i64 0, %i.am
  %i.ao = getelementptr inbounds i8, ptr %.04084, i64 %i.an ; 18 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8            ; 17 uses
  switch i64 %i.am, label %bb.ag [
    i64 1, label %bb.q
    i64 2, label %bb.r
    i64 3, label %bb.s
    i64 4, label %bb.t
    i64 5, label %bb.u
    i64 6, label %bb.v
    i64 7, label %bb.w
    i64 8, label %bb.x
    i64 9, label %bb.y
    i64 10, label %bb.z
    i64 11, label %bb.aa
    i64 12, label %bb.ab
    i64 13, label %bb.ac
    i64 14, label %bb.ad
    i64 15, label %bb.ae
    i64 16, label %bb.af
    i64 0, label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit
  ]

bb.q:                                             ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit46
  %i.ar = load i8, ptr %i.aq, align 1
  store i8 %i.ar, ptr %i.ao, align 1
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.r:                                             ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit46
  %i.as = load i16, ptr %i.aq, align 1
  store i16 %i.as, ptr %i.ao, align 1
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.s:                                             ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit46
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ao, ptr noundef nonnull align 1 dereferenceable(3) %i.aq, i64 3, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.t:                                             ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit46
  %i.at = load i32, ptr %i.aq, align 1
  store i32 %i.at, ptr %i.ao, align 1
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.u:                                             ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit46
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ao, ptr noundef nonnull align 1 dereferenceable(5) %i.aq, i64 5, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.v:                                             ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit46
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ao, ptr noundef nonnull align 1 dereferenceable(6) %i.aq, i64 6, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.w:                                             ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit46
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ao, ptr noundef nonnull align 1 dereferenceable(7) %i.aq, i64 7, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.x:                                             ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit46
  %i.au = load i64, ptr %i.aq, align 1
  store i64 %i.au, ptr %i.ao, align 1
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.y:                                             ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit46
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.ao, ptr noundef nonnull align 1 dereferenceable(9) %i.aq, i64 9, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.z:                                             ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit46
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.ao, ptr noundef nonnull align 1 dereferenceable(10) %i.aq, i64 10, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.aa:                                            ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit46
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.ao, ptr noundef nonnull align 1 dereferenceable(11) %i.aq, i64 11, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.ab:                                            ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit46
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.ao, ptr noundef nonnull align 1 dereferenceable(12) %i.aq, i64 12, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.ac:                                            ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit46
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.ao, ptr noundef nonnull align 1 dereferenceable(13) %i.aq, i64 13, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.ad:                                            ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit46
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.ao, ptr noundef nonnull align 1 dereferenceable(14) %i.aq, i64 14, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.ae:                                            ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit46
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.ao, ptr noundef nonnull align 1 dereferenceable(15) %i.aq, i64 15, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.af:                                            ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit46
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ao, ptr noundef nonnull align 1 dereferenceable(16) %i.aq, i64 16, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.ag:                                            ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit46
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ao, ptr nonnull align 1 %i.aq, i64 %i.am, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit:    ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit46, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag
  %i.av = getelementptr inbounds nuw i8, ptr %.03985, i64 8
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %.not43 = icmp eq ptr %i.aw, null
  br i1 %.not43, label %.loopexit, label %bb.l, !llvm.loop !30

bb.ah:                                            ; preds = %bb.e
  %i.ax = tail call ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE19NewRawTwoByteStringEjNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.t, i8 noundef zeroext 1, i8 0) #16 ; 3 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.ai, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit48, !prof !12

bb.ai:                                            ; preds = %bb.ah
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #17
  unreachable

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit48: ; preds = %bb.ah
  %i.az = load i64, ptr %i.ax, align 8
  %i.ba = add i64 %i.az, -1
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = zext nneg i32 %i.t to i64
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.bc, i64 %i.bd
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit48, %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit
  %.03583 = phi ptr [ %i.a, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit48 ], [ %i.ca, %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit ] ; 2 uses
  %.03682 = phi ptr [ %i.be, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit48 ], [ %i.by, %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit ] ; 2 uses
  %i.bf = load ptr, ptr %.03583, align 8          ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 28
  %i.bh = load i8, ptr %i.bg, align 4, !range !8, !noundef !9
  %i.bi = trunc nuw i8 %i.bh to i1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bk = load i64, ptr %i.bj, align 8            ; 5 uses
  %i.bl = icmp ult i64 %i.bk, 2147483648          ; 2 uses
  br i1 %i.bi, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.bl, label %bb.ao, label %bb.al, !prof !10

bb.al:                                            ; preds = %bb.ak
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #17
  unreachable

bb.am:                                            ; preds = %bb.aj
  br i1 %i.bl, label %bb.ap, label %bb.an, !prof !10

bb.an:                                            ; preds = %bb.am
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #17
  unreachable

bb.ao:                                            ; preds = %bb.ak
  %i.bm = sub nsw i64 0, %i.bk
  %i.bn = getelementptr inbounds [2 x i8], ptr %.03682, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  tail call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.bn, ptr noundef %i.bp, i64 noundef %i.bk)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.ap:                                            ; preds = %bb.am
  %i.bq = lshr i64 %i.bk, 1                       ; 2 uses
  %i.br = sub nsw i64 0, %i.bq
  %i.bs = getelementptr inbounds [2 x i8], ptr %.03682, i64 %i.br ; 35 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8            ; 17 uses
  switch i64 %i.bq, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i [
    i64 1, label %bb.aq
    i64 2, label %bb.ar
    i64 3, label %bb.as
    i64 4, label %bb.at
    i64 5, label %bb.au
    i64 6, label %bb.av
    i64 7, label %bb.aw
    i64 8, label %bb.ax
    i64 9, label %bb.ay
    i64 10, label %bb.az
    i64 11, label %bb.ba
    i64 12, label %bb.bb
    i64 13, label %bb.bc
    i64 14, label %bb.bd
    i64 15, label %bb.be
    i64 16, label %bb.bf
    i64 0, label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.bv = load i16, ptr %i.bu, align 2
  store i16 %i.bv, ptr %i.bs, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.ar:                                            ; preds = %bb.ap
  %i.bw = load i32, ptr %i.bu, align 2
  store i32 %i.bw, ptr %i.bs, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.as:                                            ; preds = %bb.ap
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.bs, ptr noundef nonnull align 2 dereferenceable(6) %i.bu, i64 6, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.at:                                            ; preds = %bb.ap
  %i.bx = load i64, ptr %i.bu, align 2
  store i64 %i.bx, ptr %i.bs, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.au:                                            ; preds = %bb.ap
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.bs, ptr noundef nonnull align 2 dereferenceable(10) %i.bu, i64 10, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.av:                                            ; preds = %bb.ap
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %i.bs, ptr noundef nonnull align 2 dereferenceable(12) %i.bu, i64 12, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.aw:                                            ; preds = %bb.ap
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.bs, ptr noundef nonnull align 2 dereferenceable(14) %i.bu, i64 14, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.ax:                                            ; preds = %bb.ap
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.bs, ptr noundef nonnull align 2 dereferenceable(16) %i.bu, i64 16, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.ay:                                            ; preds = %bb.ap
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.bs, ptr noundef nonnull align 2 dereferenceable(18) %i.bu, i64 18, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.az:                                            ; preds = %bb.ap
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %i.bs, ptr noundef nonnull align 2 dereferenceable(20) %i.bu, i64 20, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.ba:                                            ; preds = %bb.ap
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %i.bs, ptr noundef nonnull align 2 dereferenceable(22) %i.bu, i64 22, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.bb:                                            ; preds = %bb.ap
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.bs, ptr noundef nonnull align 2 dereferenceable(24) %i.bu, i64 24, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.bc:                                            ; preds = %bb.ap
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %i.bs, ptr noundef nonnull align 2 dereferenceable(26) %i.bu, i64 26, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.bd:                                            ; preds = %bb.ap
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %i.bs, ptr noundef nonnull align 2 dereferenceable(28) %i.bu, i64 28, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.be:                                            ; preds = %bb.ap
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %i.bs, ptr noundef nonnull align 2 dereferenceable(30) %i.bu, i64 30, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.bf:                                            ; preds = %bb.ap
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.bs, ptr noundef nonnull align 2 dereferenceable(32) %i.bu, i64 32, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.ap
  %.idx.i.i.i = and i64 %i.bk, 2147483646
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.bs, ptr nonnull align 2 %i.bu, i64 %.idx.i.i.i, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit:    ; preds = %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao
  %i.by = phi ptr [ %i.bn, %bb.ao ], [ %i.bs, %bb.ap ], [ %i.bs, %bb.aq ], [ %i.bs, %bb.ar ], [ %i.bs, %bb.as ], [ %i.bs, %bb.at ], [ %i.bs, %bb.au ], [ %i.bs, %bb.av ], [ %i.bs, %bb.aw ], [ %i.bs, %bb.ax ], [ %i.bs, %bb.ay ], [ %i.bs, %bb.az ], [ %i.bs, %bb.ba ], [ %i.bs, %bb.bb ], [ %i.bs, %bb.bc ], [ %i.bs, %bb.bd ], [ %i.bs, %bb.be ], [ %i.bs, %bb.bf ], [ %i.bs, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.03583, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8            ; 2 uses
  %.not42 = icmp eq ptr %i.ca, null
  br i1 %.not42, label %.loopexit, label %bb.aj, !llvm.loop !31

.loopexit:                                        ; preds = %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit, %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit, %bb.d, %bb.b
  %.sroa.067.0 = phi ptr [ %i.f, %bb.b ], [ %.sroa.0.0.copyload.i, %bb.d ], [ %i.w, %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit ], [ %i.ax, %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit ]
  ret ptr %.sroa.067.0
}

declare ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE19NewRawOneByteStringEjNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i8 noundef zeroext, i8) local_unnamed_addr #2

declare ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE19NewRawTwoByteStringEjNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i8 noundef zeroext, i8) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal15AstValueFactory11InternalizeINS0_7IsolateEEEvPT_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not6 = icmp eq ptr %i.b, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  store ptr null, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.c, align 8
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.07, align 8              ; 2 uses
  tail call void @_ZN2v88internal12AstRawString11InternalizeINS0_7IsolateEEEvPT_(ptr noundef nonnull align 8 dereferenceable(32) %.07, ptr noundef %1)
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !32
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal15AstValueFactory11InternalizeINS0_12LocalIsolateEEEvPT_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not6 = icmp eq ptr %i.b, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  store ptr null, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.c, align 8
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.07, align 8              ; 2 uses
  tail call void @_ZN2v88internal12AstRawString11InternalizeINS0_12LocalIsolateEEEvPT_(ptr noundef nonnull align 8 dereferenceable(32) %.07, ptr noundef %1)
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !33
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal12AstRawString12AsArrayIndexEPj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = and i32 %i.b, 3
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN2v88internal13StringToIndexINS0_12_GLOBAL__N_119OneByteStringStreamEjLNS0_11ToIndexModeE0EEEbPT_PT0_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i8, ptr %i.e, align 4, !range !8, !noundef !9
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8              ; 6 uses
  %i.j = icmp ult i64 %i.i, 2147483648            ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %i.j, label %_ZNK2v84base6VectorIKhE6lengthEv.exit.i, label %bb.d, !prof !10

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #17
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit.i:          ; preds = %bb.c
  %i.k = trunc nuw nsw i64 %i.i to i32
  br label %_ZNK2v88internal12AstRawString6lengthEv.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.j, label %_ZNK2v84base6VectorIKhE6lengthEv.exit1.i, label %bb.f, !prof !10

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #17
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit1.i:         ; preds = %bb.e
  %i.l = trunc nuw nsw i64 %i.i to i32
  %i.m = lshr i32 %i.l, 1
  br label %_ZNK2v88internal12AstRawString6lengthEv.exit

_ZNK2v88internal12AstRawString6lengthEv.exit:     ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit.i, %_ZNK2v84base6VectorIKhE6lengthEv.exit1.i
  %i.n = phi i32 [ %i.k, %_ZNK2v84base6VectorIKhE6lengthEv.exit.i ], [ %i.m, %_ZNK2v84base6VectorIKhE6lengthEv.exit1.i ]
  %i.o = icmp samesign ult i32 %i.n, 8
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit
  %i.p = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 10624
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1528
  %i.t = load i64, ptr %i.s, align 8
  %i.u = add i64 %i.t, -1
  %i.v = inttoptr i64 %i.u to ptr                 ; 3 uses
  %i.w = lshr exact i32 %i.b, 2
  %i.x = and i32 %i.w, 16777215                   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 52
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 60
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 68
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = lshr i32 %i.x, 12
  %i.af = xor i32 %i.ae, %i.x
  %i.ag = mul i32 %i.ad, %i.af                    ; 2 uses
  %i.ah = lshr i32 %i.ag, 12
  %i.ai = and i32 %i.ah, 4095
  %i.aj = xor i32 %i.ai, %i.ag
  %i.ak = mul i32 %i.aj, %i.ab                    ; 2 uses
  %i.al = lshr i32 %i.ak, 12
  %i.am = and i32 %i.al, 4095
  %i.an = xor i32 %i.am, %i.ak
  %i.ao = mul i32 %i.an, %i.z
  %i.ap = and i32 %i.ao, 16777215                 ; 2 uses
  %i.aq = lshr i32 %i.ap, 12
  %i.ar = xor i32 %i.aq, %i.ap
  store i32 %i.ar, ptr %1, align 4
  br label %_ZN2v88internal13StringToIndexINS0_12_GLOBAL__N_119OneByteStringStreamEjLNS0_11ToIndexModeE0EEEbPT_PT0_.exit

bb.h:                                             ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.as, align 8 ; 2 uses
  %i.at = load i8, ptr %.sroa.0.0.copyload, align 1 ; 2 uses
  %i.au = icmp eq i8 %i.at, 48
  br i1 %i.au, label %_ZN2v88internal12_GLOBAL__N_119OneByteStringStream7HasMoreEv.exit.i, label %bb.i

_ZN2v88internal12_GLOBAL__N_119OneByteStringStream7HasMoreEv.exit.i: ; preds = %bb.h
  store i32 0, ptr %1, align 4
  %i.av = icmp samesign ult i64 %i.i, 2
  br label %_ZN2v88internal13StringToIndexINS0_12_GLOBAL__N_119OneByteStringStreamEjLNS0_11ToIndexModeE0EEEbPT_PT0_.exit

bb.i:                                             ; preds = %bb.h
  %i.aw = zext i8 %i.at to i32
  %i.ax = add nsw i32 %i.aw, -48                  ; 3 uses
  %i.ay = icmp ult i32 %i.ax, 10
  br i1 %i.ay, label %_ZN2v88internal12_GLOBAL__N_119OneByteStringStream7HasMoreEv.exit18.lr.ph.i, label %_ZN2v88internal13StringToIndexINS0_12_GLOBAL__N_119OneByteStringStreamEjLNS0_11ToIndexModeE0EEEbPT_PT0_.exit

_ZN2v88internal12_GLOBAL__N_119OneByteStringStream7HasMoreEv.exit18.lr.ph.i: ; preds = %bb.i
  %.not.i = icmp samesign ugt i64 %i.i, 1
  br i1 %.not.i, label %.lr.ph.i, label %.split.us.i

.lr.ph.i:                                         ; preds = %_ZN2v88internal12_GLOBAL__N_119OneByteStringStream7HasMoreEv.exit18.lr.ph.i, %_ZN2v88internal20TryAddArrayIndexCharIjEEbPjT_.exit.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN2v88internal20TryAddArrayIndexCharIjEEbPjT_.exit.us.i ], [ 1, %_ZN2v88internal12_GLOBAL__N_119OneByteStringStream7HasMoreEv.exit18.lr.ph.i ] ; 2 uses
  %.023.us24.i = phi i32 [ %i.bi, %_ZN2v88internal20TryAddArrayIndexCharIjEEbPjT_.exit.us.i ], [ %i.ax, %_ZN2v88internal12_GLOBAL__N_119OneByteStringStream7HasMoreEv.exit18.lr.ph.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %indvars.iv.i
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = zext i8 %i.ba to i32                    ; 2 uses
  %i.bc = add nsw i32 %i.bb, -48                  ; 2 uses
  %i.bd = icmp ult i32 %i.bc, 10
  br i1 %i.bd, label %bb.j, label %_ZN2v88internal13StringToIndexINS0_12_GLOBAL__N_119OneByteStringStreamEjLNS0_11ToIndexModeE0EEEbPT_PT0_.exit

bb.j:                                             ; preds = %.lr.ph.i
  %i.be = add nsw i32 %i.bb, -45
  %i.bf = lshr i32 %i.be, 3
  %i.bg = sub nuw nsw i32 429496729, %i.bf
  %.not.us.i = icmp ugt i32 %.023.us24.i, %i.bg
  br i1 %.not.us.i, label %_ZN2v88internal13StringToIndexINS0_12_GLOBAL__N_119OneByteStringStreamEjLNS0_11ToIndexModeE0EEEbPT_PT0_.exit, label %_ZN2v88internal20TryAddArrayIndexCharIjEEbPjT_.exit.us.i

_ZN2v88internal20TryAddArrayIndexCharIjEEbPjT_.exit.us.i: ; preds = %bb.j
  %i.bh = mul nuw i32 %.023.us24.i, 10
  %i.bi = add i32 %i.bc, %i.bh                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %exitcond.not.i, label %.split.us.i, label %.lr.ph.i

.split.us.i:                                      ; preds = %_ZN2v88internal20TryAddArrayIndexCharIjEEbPjT_.exit.us.i, %_ZN2v88internal12_GLOBAL__N_119OneByteStringStream7HasMoreEv.exit18.lr.ph.i
  %.us-phi.i = phi i32 [ %i.ax, %_ZN2v88internal12_GLOBAL__N_119OneByteStringStream7HasMoreEv.exit18.lr.ph.i ], [ %i.bi, %_ZN2v88internal20TryAddArrayIndexCharIjEEbPjT_.exit.us.i ]
  store i32 %.us-phi.i, ptr %1, align 4
  br label %_ZN2v88internal13StringToIndexINS0_12_GLOBAL__N_119OneByteStringStreamEjLNS0_11ToIndexModeE0EEEbPT_PT0_.exit

_ZN2v88internal13StringToIndexINS0_12_GLOBAL__N_119OneByteStringStreamEjLNS0_11ToIndexModeE0EEEbPT_PT0_.exit: ; preds = %bb.j, %.lr.ph.i, %.split.us.i, %bb.i, %_ZN2v88internal12_GLOBAL__N_119OneByteStringStream7HasMoreEv.exit.i, %bb.a, %bb.g
  %.0 = phi i1 [ true, %bb.g ], [ false, %bb.a ], [ %i.av, %_ZN2v88internal12_GLOBAL__N_119OneByteStringStream7HasMoreEv.exit.i ], [ false, %bb.i ], [ true, %.split.us.i ], [ false, %.lr.ph.i ], [ false, %bb.j ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal12AstRawString14IsIntegerIndexEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 3
  %i.d = icmp eq i32 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal12AstRawString16IsOneByteEqualToEPKc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i8, ptr %i.a, align 4, !range !8, !noundef !9
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18
  %.not = icmp eq i64 %i.e, %i.f
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call i32 @strncmp(ptr noundef %i.h, ptr noundef nonnull %1, i64 noundef %i.e) #18
  %i.j = icmp eq i32 %i.i, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ %i.j, %bb.c ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i16 @_ZNK2v88internal12AstRawString14FirstCharacterEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i8, ptr %i.a, align 4, !range !8, !noundef !9
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %i.e, align 1
  %i.g = zext i8 %i.f to i16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = load i16, ptr %i.e, align 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i16 [ %i.g, %bb.b ], [ %i.h, %bb.c ]
  ret i16 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal12AstRawString5EqualEPKS1_S3_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i8, ptr %i.a, align 4, !range !8, !noundef !9
  %i.c = trunc nuw i8 %i.b to i1                  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8              ; 4 uses
  %i.f = icmp ult i64 %i.e, 2147483648            ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %_ZNK2v84base6VectorIKhE6lengthEv.exit.i, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #17
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit.i:          ; preds = %bb.b
  %i.g = trunc nuw nsw i64 %i.e to i32
  br label %_ZNK2v88internal12AstRawString6lengthEv.exit

bb.d:                                             ; preds = %bb.a
  br i1 %i.f, label %_ZNK2v84base6VectorIKhE6lengthEv.exit1.i, label %bb.e, !prof !10

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #17
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit1.i:         ; preds = %bb.d
  %i.h = trunc nuw nsw i64 %i.e to i32
  %i.i = lshr i32 %i.h, 1
  br label %_ZNK2v88internal12AstRawString6lengthEv.exit

_ZNK2v88internal12AstRawString6lengthEv.exit:     ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit.i, %_ZNK2v84base6VectorIKhE6lengthEv.exit1.i
  %i.j = phi i32 [ %i.g, %_ZNK2v84base6VectorIKhE6lengthEv.exit.i ], [ %i.i, %_ZNK2v84base6VectorIKhE6lengthEv.exit1.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.l = load i8, ptr %i.k, align 4, !range !8, !noundef !9
  %i.m = trunc nuw i8 %i.l to i1                  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8              ; 8 uses
  %i.p = icmp ult i64 %i.o, 2147483648            ; 2 uses
  br i1 %i.m, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit
  br i1 %i.p, label %_ZNK2v84base6VectorIKhE6lengthEv.exit.i22, label %bb.g, !prof !10

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #17
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit.i22:        ; preds = %bb.f
  %i.q = trunc nuw nsw i64 %i.o to i32
  br label %_ZNK2v88internal12AstRawString6lengthEv.exit23

bb.h:                                             ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit
  br i1 %i.p, label %_ZNK2v84base6VectorIKhE6lengthEv.exit1.i21, label %bb.i, !prof !10

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #17
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit1.i21:       ; preds = %bb.h
  %i.r = trunc nuw nsw i64 %i.o to i32
  %i.s = lshr i32 %i.r, 1
  br label %_ZNK2v88internal12AstRawString6lengthEv.exit23

_ZNK2v88internal12AstRawString6lengthEv.exit23:   ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit.i22, %_ZNK2v84base6VectorIKhE6lengthEv.exit1.i21
  %i.t = phi i32 [ %i.q, %_ZNK2v84base6VectorIKhE6lengthEv.exit.i22 ], [ %i.s, %_ZNK2v84base6VectorIKhE6lengthEv.exit1.i21 ]
  %.not = icmp eq i32 %i.j, %i.t
  br i1 %.not, label %_ZNK2v88internal12AstRawString6lengthEv.exit26, label %_ZN2v88internal25CompareCharsEqualUnsignedIhtEEbPKT_PKT0_m.exit

_ZNK2v88internal12AstRawString6lengthEv.exit26:   ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit23
  %i.u = trunc nuw nsw i64 %i.e to i32
  %not. = xor i1 %i.c, true
  %i.v = zext i1 %not. to i32
  %i.w = lshr i32 %i.u, %i.v
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZN2v88internal25CompareCharsEqualUnsignedIhtEEbPKT_PKT0_m.exit, label %bb.j

bb.j:                                             ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit26
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8              ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8            ; 3 uses
  br i1 %i.m, label %_ZNK2v88internal12AstRawString6lengthEv.exit29, label %_ZNK2v88internal12AstRawString6lengthEv.exit29.thread

_ZNK2v88internal12AstRawString6lengthEv.exit29:   ; preds = %bb.j
  br i1 %i.c, label %_ZN2v88internal25CompareCharsEqualUnsignedIhtEEbPKT_PKT0_m.exit.sink.split, label %bb.k

_ZNK2v88internal12AstRawString6lengthEv.exit29.thread: ; preds = %bb.j
  br i1 %i.c, label %.thread, label %.thread37

.thread:                                          ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit29.thread
  %i.ac = lshr i64 %i.o, 1                        ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ac
  %i.ae = icmp eq i64 %i.ac, 0
  br i1 %i.ae, label %_ZN2v88internal25CompareCharsEqualUnsignedIhtEEbPKT_PKT0_m.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread, %.lr.ph.i
  %.01013.i = phi ptr [ %i.aj, %.lr.ph.i ], [ %i.ab, %.thread ] ; 2 uses
  %.01112.i = phi ptr [ %i.ai, %.lr.ph.i ], [ %i.z, %.thread ] ; 2 uses
  %i.af = load i8, ptr %.01112.i, align 1
  %i.ag = load i16, ptr %.01013.i, align 2
  %i.ah = zext i8 %i.af to i16
  %.not.i = icmp eq i16 %i.ag, %i.ah              ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.01112.i, i64 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.01013.i, i64 2
  %.not16.i = icmp ult ptr %i.ai, %i.ad
  %or.cond = select i1 %.not.i, i1 %.not16.i, i1 false
  br i1 %or.cond, label %.lr.ph.i, label %_ZN2v88internal25CompareCharsEqualUnsignedIhtEEbPKT_PKT0_m.exit, !llvm.loop !34

bb.k:                                             ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit29
  %.idx.i = shl nuw nsw i64 %i.o, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx.i
  %i.al = icmp eq i64 %i.o, 0
  br i1 %i.al, label %_ZN2v88internal25CompareCharsEqualUnsignedIhtEEbPKT_PKT0_m.exit, label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %bb.k, %.lr.ph.i30
  %.01013.i31 = phi ptr [ %i.aq, %.lr.ph.i30 ], [ %i.ab, %bb.k ] ; 2 uses
  %.01112.i32 = phi ptr [ %i.ap, %.lr.ph.i30 ], [ %i.z, %bb.k ] ; 2 uses
  %i.am = load i16, ptr %.01112.i32, align 2
  %i.an = load i8, ptr %.01013.i31, align 1
  %i.ao = zext i8 %i.an to i16
  %.not.i33 = icmp eq i16 %i.am, %i.ao            ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.01112.i32, i64 2 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.01013.i31, i64 1
  %.not16.i35 = icmp ult ptr %i.ap, %i.ak
  %or.cond53 = select i1 %.not.i33, i1 %.not16.i35, i1 false
  br i1 %or.cond53, label %.lr.ph.i30, label %_ZN2v88internal25CompareCharsEqualUnsignedIhtEEbPKT_PKT0_m.exit, !llvm.loop !35

.thread37:                                        ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit29.thread
  %i.ar = and i64 %i.o, -2
  br label %_ZN2v88internal25CompareCharsEqualUnsignedIhtEEbPKT_PKT0_m.exit.sink.split

_ZN2v88internal25CompareCharsEqualUnsignedIhtEEbPKT_PKT0_m.exit.sink.split: ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit29, %.thread37
  %.sink = phi i64 [ %i.ar, %.thread37 ], [ %i.o, %_ZNK2v88internal12AstRawString6lengthEv.exit29 ]
  %bcmp.i = tail call i32 @bcmp(ptr %i.z, ptr %i.ab, i64 %.sink)
  %i.as = icmp eq i32 %bcmp.i, 0
  br label %_ZN2v88internal25CompareCharsEqualUnsignedIhtEEbPKT_PKT0_m.exit

_ZN2v88internal25CompareCharsEqualUnsignedIhtEEbPKT_PKT0_m.exit: ; preds = %.lr.ph.i, %.lr.ph.i30, %_ZN2v88internal25CompareCharsEqualUnsignedIhtEEbPKT_PKT0_m.exit.sink.split, %bb.k, %.thread, %_ZNK2v88internal12AstRawString6lengthEv.exit26, %_ZNK2v88internal12AstRawString6lengthEv.exit23
  %.1 = phi i1 [ true, %_ZNK2v88internal12AstRawString6lengthEv.exit26 ], [ false, %_ZNK2v88internal12AstRawString6lengthEv.exit23 ], [ %i.as, %_ZN2v88internal25CompareCharsEqualUnsignedIhtEEbPKT_PKT0_m.exit.sink.split ], [ %.not.i33, %.lr.ph.i30 ], [ true, %bb.k ], [ true, %.thread ], [ %.not.i, %.lr.ph.i ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal12AstRawString7CompareEPKS1_S3_(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZN2v88internal20CompareCharsUnsignedIhtEEiPKT_PKT0_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i8, ptr %i.f, align 4, !range !8, !noundef !9
  %i.h = trunc nuw i8 %i.g to i1                  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8              ; 4 uses
  %i.k = icmp ult i64 %i.j, 2147483648            ; 3 uses
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %i.k, label %_ZNK2v84base6VectorIKhE6lengthEv.exit.i, label %bb.d, !prof !10

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #17
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit.i:          ; preds = %bb.c
  %i.l = trunc nuw nsw i64 %i.j to i32
  br label %_ZNK2v88internal12AstRawString6lengthEv.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.k, label %_ZNK2v84base6VectorIKhE6lengthEv.exit1.i, label %bb.f, !prof !10

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #17
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit1.i:         ; preds = %bb.e
  %i.m = trunc nuw nsw i64 %i.j to i32
  %i.n = lshr i32 %i.m, 1
  br label %_ZNK2v88internal12AstRawString6lengthEv.exit

_ZNK2v88internal12AstRawString6lengthEv.exit:     ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit.i, %_ZNK2v84base6VectorIKhE6lengthEv.exit1.i
  %i.o = phi i32 [ %i.l, %_ZNK2v84base6VectorIKhE6lengthEv.exit.i ], [ %i.n, %_ZNK2v84base6VectorIKhE6lengthEv.exit1.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.q = load i8, ptr %i.p, align 4, !range !8, !noundef !9
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 8              ; 4 uses
  %i.u = icmp ult i64 %i.t, 2147483648            ; 3 uses
  br i1 %i.r, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit
  br i1 %i.u, label %_ZNK2v88internal12AstRawString6lengthEv.exit49, label %bb.h, !prof !10

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #17
  unreachable

bb.i:                                             ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit
  br i1 %i.u, label %_ZNK2v88internal12AstRawString6lengthEv.exit49.thread, label %bb.j, !prof !10

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #17
  unreachable

_ZNK2v88internal12AstRawString6lengthEv.exit49:   ; preds = %bb.g
  %i.v = trunc nuw nsw i64 %i.t to i32            ; 3 uses
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.o, i32 %i.v) ; 2 uses
  %i.w = zext nneg i32 %.sroa.speculated to i64   ; 2 uses
  br i1 %i.h, label %bb.k, label %bb.m

_ZNK2v88internal12AstRawString6lengthEv.exit49.thread: ; preds = %bb.i
  %i.x = trunc nuw nsw i64 %i.t to i32            ; 3 uses
  %i.y = lshr i32 %i.x, 1
  %.sroa.speculated67 = tail call i32 @llvm.umin.i32(i32 %i.y, i32 %i.o) ; 3 uses
  %i.z = zext nneg i32 %.sroa.speculated67 to i64 ; 2 uses
  br i1 %i.h, label %.thread, label %.thread69

bb.k:                                             ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit49
  %i.aa = tail call noundef i32 @memcmp(ptr noundef %i.c, ptr noundef %i.e, i64 noundef %i.w) #18 ; 2 uses
  %.not46 = icmp eq i32 %i.aa, 0
  br i1 %.not46, label %_ZNK2v88internal12AstRawString11byte_lengthEv.exit63, label %_ZN2v88internal20CompareCharsUnsignedIhtEEiPKT_PKT0_m.exit

.thread:                                          ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit49.thread
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.z
  %.not23.i = icmp eq i32 %.sroa.speculated67, 0
  br i1 %.not23.i, label %_ZNK2v88internal12AstRawString11byte_lengthEv.exit63, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread, %bb.l
  %.01420.i = phi ptr [ %i.ai, %bb.l ], [ %i.e, %.thread ] ; 2 uses
  %.01519.i = phi ptr [ %i.ah, %bb.l ], [ %i.c, %.thread ] ; 2 uses
  %i.ac = load i8, ptr %.01519.i, align 1
  %i.ad = zext i8 %i.ac to i32
  %i.ae = load i16, ptr %.01420.i, align 2
  %i.af = zext i16 %i.ae to i32
  %i.ag = sub nsw i32 %i.ad, %i.af                ; 2 uses
  %.not.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i, label %bb.l, label %_ZN2v88internal20CompareCharsUnsignedIhtEEiPKT_PKT0_m.exit

bb.l:                                             ; preds = %.lr.ph.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.01519.i, i64 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.01420.i, i64 2
  %i.aj = icmp ult ptr %i.ah, %i.ab
  br i1 %i.aj, label %.lr.ph.i, label %_ZN2v88internal20CompareCharsUnsignedIhtEEiPKT_PKT0_m.exit.thread, !llvm.loop !36

bb.m:                                             ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit49
  %.idx.i = shl nuw nsw i64 %i.w, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i
  %.not23.i50 = icmp eq i32 %.sroa.speculated, 0
  br i1 %.not23.i50, label %_ZNK2v88internal12AstRawString11byte_lengthEv.exit63, label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %bb.m, %bb.n
  %.01420.i52 = phi ptr [ %i.ar, %bb.n ], [ %i.e, %bb.m ] ; 2 uses
  %.01519.i53 = phi ptr [ %i.aq, %bb.n ], [ %i.c, %bb.m ] ; 2 uses
  %i.al = load i16, ptr %.01519.i53, align 2
  %i.am = zext i16 %i.al to i32
  %i.an = load i8, ptr %.01420.i52, align 1
  %i.ao = zext i8 %i.an to i32
  %i.ap = sub nsw i32 %i.am, %i.ao                ; 2 uses
  %.not.i54 = icmp eq i32 %i.ap, 0
  br i1 %.not.i54, label %bb.n, label %_ZN2v88internal20CompareCharsUnsignedIhtEEiPKT_PKT0_m.exit

bb.n:                                             ; preds = %.lr.ph.i51
  %i.aq = getelementptr inbounds nuw i8, ptr %.01519.i53, i64 2 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.01420.i52, i64 1
  %i.as = icmp ult ptr %i.aq, %i.ak
  br i1 %i.as, label %.lr.ph.i51, label %_ZN2v88internal20CompareCharsUnsignedIhtEEiPKT_PKT0_m.exit.thread, !llvm.loop !37

.thread69:                                        ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit49.thread
  %.idx.i55 = shl nuw nsw i64 %i.z, 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i55
  %.not23.i56 = icmp eq i32 %.sroa.speculated67, 0
  br i1 %.not23.i56, label %_ZNK2v88internal12AstRawString11byte_lengthEv.exit63, label %.lr.ph.i57

.lr.ph.i57:                                       ; preds = %.thread69, %bb.o
  %.01420.i58 = phi ptr [ %i.ba, %bb.o ], [ %i.e, %.thread69 ] ; 2 uses
  %.01519.i59 = phi ptr [ %i.az, %bb.o ], [ %i.c, %.thread69 ] ; 2 uses
  %i.au = load i16, ptr %.01519.i59, align 2
  %i.av = zext i16 %i.au to i32
  %i.aw = load i16, ptr %.01420.i58, align 2
  %i.ax = zext i16 %i.aw to i32
  %i.ay = sub nsw i32 %i.av, %i.ax                ; 2 uses
  %.not.i60 = icmp eq i32 %i.ay, 0
  br i1 %.not.i60, label %bb.o, label %_ZN2v88internal20CompareCharsUnsignedIhtEEiPKT_PKT0_m.exit

bb.o:                                             ; preds = %.lr.ph.i57
  %i.az = getelementptr inbounds nuw i8, ptr %.01519.i59, i64 2 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.01420.i58, i64 2
  %i.bb = icmp ult ptr %i.az, %i.at
  br i1 %i.bb, label %.lr.ph.i57, label %_ZN2v88internal20CompareCharsUnsignedIhtEEiPKT_PKT0_m.exit.thread, !llvm.loop !38

_ZN2v88internal20CompareCharsUnsignedIhtEEiPKT_PKT0_m.exit.thread: ; preds = %bb.o, %bb.l, %bb.n
  br i1 %i.k, label %_ZNK2v88internal12AstRawString11byte_lengthEv.exit, label %bb.p, !prof !39

bb.p:                                             ; preds = %_ZN2v88internal20CompareCharsUnsignedIhtEEiPKT_PKT0_m.exit.thread
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #17
  unreachable

_ZNK2v88internal12AstRawString11byte_lengthEv.exit: ; preds = %_ZN2v88internal20CompareCharsUnsignedIhtEEiPKT_PKT0_m.exit.thread
  br i1 %i.u, label %_ZNK2v88internal12AstRawString11byte_lengthEv.exit._ZNK2v88internal12AstRawString11byte_lengthEv.exit63_crit_edge, label %bb.q, !prof !40

_ZNK2v88internal12AstRawString11byte_lengthEv.exit._ZNK2v88internal12AstRawString11byte_lengthEv.exit63_crit_edge: ; preds = %_ZNK2v88internal12AstRawString11byte_lengthEv.exit
  %.pre = trunc nuw nsw i64 %i.t to i32
  br label %_ZNK2v88internal12AstRawString11byte_lengthEv.exit63

bb.q:                                             ; preds = %_ZNK2v88internal12AstRawString11byte_lengthEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #17
  unreachable

_ZNK2v88internal12AstRawString11byte_lengthEv.exit63: ; preds = %_ZNK2v88internal12AstRawString11byte_lengthEv.exit._ZNK2v88internal12AstRawString11byte_lengthEv.exit63_crit_edge, %.thread69, %bb.m, %.thread, %bb.k
  %.pre-phi = phi i32 [ %.pre, %_ZNK2v88internal12AstRawString11byte_lengthEv.exit._ZNK2v88internal12AstRawString11byte_lengthEv.exit63_crit_edge ], [ %i.x, %.thread69 ], [ %i.v, %bb.m ], [ %i.x, %.thread ], [ %i.v, %bb.k ]
  %i.bc = trunc nuw nsw i64 %i.j to i32
  %i.bd = sub nsw i32 %i.bc, %.pre-phi
  br label %_ZN2v88internal20CompareCharsUnsignedIhtEEiPKT_PKT0_m.exit

_ZN2v88internal20CompareCharsUnsignedIhtEEiPKT_PKT0_m.exit: ; preds = %.lr.ph.i57, %.lr.ph.i, %.lr.ph.i51, %_ZNK2v88internal12AstRawString11byte_lengthEv.exit63, %bb.k, %bb.a
  %.5 = phi i32 [ 0, %bb.a ], [ %i.bd, %_ZNK2v88internal12AstRawString11byte_lengthEv.exit63 ], [ %i.aa, %bb.k ], [ %i.ap, %.lr.ph.i51 ], [ %i.ag, %.lr.ph.i ], [ %i.ay, %.lr.ph.i57 ]
  ret i32 %.5
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK2v88internal12AstRawString5PrintEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp ult i64 %i.b, 2147483648
  br i1 %i.c, label %_ZNK2v88internal12AstRawString11byte_lengthEv.exit, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #17
  unreachable

_ZNK2v88internal12AstRawString11byte_lengthEv.exit: ; preds = %bb.a
  %i.d = trunc nuw nsw i64 %i.b to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.d, ptr noundef %i.f) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK2v88internal13AstConsString12ToRawStringsEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::forward_list") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #19 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.a, align 8
  store ptr %i.f, ptr %i.e, align 8
  store ptr null, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.06 = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not7 = icmp eq ptr %.06, null
  br i1 %.not7, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.08 = phi ptr [ %.0, %.lr.ph ], [ %.06, %bb.b ] ; 2 uses
  %i.h = phi ptr [ %i.i, %.lr.ph ], [ %i.d, %bb.b ]
  %i.i = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #19 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %.08, align 8
  store ptr %i.k, ptr %i.j, align 8
  store ptr %i.h, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.08, i64 8
  %.0 = load ptr, ptr %i.l, align 8               ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !41

.loopexit:                                        ; preds = %.lr.ph, %bb.b
  %.lcssa = phi ptr [ %i.d, %bb.b ], [ %i.i, %.lr.ph ]
  store ptr %.lcssa, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal18AstStringConstantsC2EPNS0_7IsolateENS0_8HashSeedE(ptr noundef nonnull align 8 dereferenceable(1496) %0, ptr noundef %1, ptr %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 58832
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZN2v88internal4ZoneC1EPNS0_19AccountingAllocatorEPKc(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %i.b, ptr noundef nonnull @__func__._ZN2v88internal18AstStringConstantsC2EPNS0_7IsolateENS0_8HashSeedE) #16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 177 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i64 0, ptr %i.d, align 8
  %calloc.i.i = tail call dereferenceable_or_null(128) ptr @calloc(i64 1, i64 128) ; 2 uses
  store ptr %calloc.i.i, ptr %i.c, align 8
  %i.e = icmp eq ptr %calloc.i.i, null
  br i1 %i.e, label %bb.b, label %_ZN2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEEC2EjS7_S8_.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5) #17
  unreachable

_ZN2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEEC2EjS7_S8_.exit: ; preds = %bb.a
  store i32 8, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 3272 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = add i64 %i.i, -1
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load atomic i32, ptr %i.l monotonic, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 176 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 528 uses
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %i.r = sub i64 %i.o, %i.q
  %i.s = icmp ult i64 %i.r, 32
  br i1 %i.s, label %bb.c, label %_ZN2v88internal4Zone3NewINS0_12AstRawStringEJbRNS_4base6VectorIKhEERjEEEPT_DpOT0_.exit, !prof !12

bb.c:                                             ; preds = %_ZN2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEEC2EjS7_S8_.exit
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef 32) #16
  %.pre.i.i = load i64, ptr %i.p, align 8
  br label %_ZN2v88internal4Zone3NewINS0_12AstRawStringEJbRNS_4base6VectorIKhEERjEEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_12AstRawStringEJbRNS_4base6VectorIKhEERjEEEPT_DpOT0_.exit: ; preds = %_ZN2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEEC2EjS7_S8_.exit, %bb.c
  %i.t = phi i64 [ %.pre.i.i, %bb.c ], [ %i.q, %_ZN2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEEC2EjS7_S8_.exit ] ; 2 uses
  %i.u = inttoptr i64 %i.t to ptr                 ; 6 uses
  %i.v = add i64 %i.t, 32
  store i64 %i.v, ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @_ZZN2v88internal18AstStringConstantsC1EPNS0_7IsolateENS0_8HashSeedEE4data, ptr %i.w, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i32 %i.m, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  store i8 1, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store ptr %i.u, ptr %i.z, align 8
  store ptr %i.h, ptr %i.u, align 8
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = lshr i32 %i.ac, 2
  %i.ae = tail call noundef ptr @_ZN2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE9InsertNewERKS5_j(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.z, i32 noundef %i.ad) ; 0 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 3280 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = add i64 %i.ag, -1
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load atomic i32, ptr %i.aj monotonic, align 4
  %i.al = load i64, ptr %i.n, align 8
  %i.am = load i64, ptr %i.p, align 8             ; 2 uses
  %i.an = sub i64 %i.al, %i.am
  %i.ao = icmp ult i64 %i.an, 32
  br i1 %i.ao, label %bb.d, label %_ZN2v88internal4Zone3NewINS0_12AstRawStringEJbRNS_4base6VectorIKhEERjEEEPT_DpOT0_.exit359, !prof !12

bb.d:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_12AstRawStringEJbRNS_4base6VectorIKhEERjEEEPT_DpOT0_.exit
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef 32) #16
  %.pre.i.i358 = load i64, ptr %i.p, align 8
  br label %_ZN2v88internal4Zone3NewINS0_12AstRawStringEJbRNS_4base6VectorIKhEERjEEEPT_DpOT0_.exit359

_ZN2v88internal4Zone3NewINS0_12AstRawStringEJbRNS_4base6VectorIKhEERjEEEPT_DpOT0_.exit359: ; preds = %_ZN2v88internal4Zone3NewINS0_12AstRawStringEJbRNS_4base6VectorIKhEERjEEEPT_DpOT0_.exit, %bb.d
  %i.ap = phi i64 [ %.pre.i.i358, %bb.d ], [ %i.am, %_ZN2v88internal4Zone3NewINS0_12AstRawStringEJbRNS_4base6VectorIKhEERjEEEPT_DpOT0_.exit ] ; 2 uses
  %i.aq = inttoptr i64 %i.ap to ptr               ; 6 uses
  %i.ar = add i64 %i.ap, 32
  store i64 %i.ar, ptr %i.p, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr @_ZZN2v88internal18AstStringConstantsC1EPNS0_7IsolateENS0_8HashSeedEE4data_0, ptr %i.as, align 8
  %.sroa.2.0..sroa_idx.i.i357 = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i357, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i32 %i.ak, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 28
  store i8 1, ptr %i.au, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  store ptr %i.aq, ptr %i.av, align 8
  store ptr %i.af, ptr %i.aq, align 8
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load i32, ptr %i.ax, align 8
  %i.az = lshr i32 %i.ay, 2
  %i.ba = tail call noundef ptr @_ZN2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE9InsertNewERKS5_j(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.av, i32 noundef %i.az) ; 0 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 3288 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = add i64 %i.bc, -1
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load atomic i32, ptr %i.bf monotonic, align 4
  %i.bh = load i64, ptr %i.n, align 8
  %i.bi = load i64, ptr %i.p, align 8             ; 2 uses
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = icmp ult i64 %i.bj, 32
  br i1 %i.bk, label %bb.e, label %_ZN2v88internal4Zone3NewINS0_12AstRawStringEJbRNS_4base6VectorIKhEERjEEEPT_DpOT0_.exit365, !prof !12

bb.e:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_12AstRawStringEJbRNS_4base6VectorIKhEERjEEEPT_DpOT0_.exit359
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef 32) #16
  %.pre.i.i364 = load i64, ptr %i.p, align 8
  br label %_ZN2v88internal4Zone3NewINS0_12AstRawStringEJbRNS_4base6VectorIKhEERjEEEPT_DpOT0_.exit365

_ZN2v88internal4Zone3NewINS0_12AstRawStringEJbRNS_4base6VectorIKhEERjEEEPT_DpOT0_.exit365: ; preds = %_ZN2v88internal4Zone3NewINS0_12AstRawStringEJbRNS_4base6VectorIKhEERjEEEPT_DpOT0_.exit359, %bb.e
  %i.bl = phi i64 [ %.pre.i.i364, %bb.e ], [ %i.bi, %_ZN2v88internal4Zone3NewINS0_12AstRawStringEJbRNS_4base6VectorIKhEERjEEEPT_DpOT0_.exit359 ] ; 2 uses
  %i.bm = inttoptr i64 %i.bl to ptr               ; 6 uses
  %i.bn = add i64 %i.bl, 32
  store i64 %i.bn, ptr %i.p, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr @_ZZN2v88internal18AstStringConstantsC1EPNS0_7IsolateENS0_8HashSeedEE4data_1, ptr %i.bo, align 8
  %.sroa.2.0..sroa_idx.i.i363 = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i363, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store i32 %i.bg, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 28
  store i8 1, ptr %i.bq, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  store ptr %i.bm, ptr %i.br, align 8
  store ptr %i.bb, ptr %i.bm, align 8
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load i32, ptr %i.bt, align 8
  %i.bv = lshr i32 %i.bu, 2
  %i.bw = tail call noundef ptr @_ZN2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE9InsertNewERKS5_j(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.br, i32 noundef %i.bv) ; 0 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 3296 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = add i64 %i.by, -1
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load atomic i32, ptr %i.cb monotonic, align 4
  %i.cd = load i64, ptr %i.n, align 8
  %i.ce = load i64, ptr %i.p, align 8             ; 2 uses
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = icmp ult i64 %i.cf, 32
  br i1 %i.cg, label %bb.f, label %_ZN2v88internal4Zone3NewINS0_12AstRawStringEJbRNS_4base6VectorIKhEERjEEEPT_DpOT0_.exit371, !prof !12

bb.f:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_12AstRawStringEJbRNS_4base6VectorIKhEERjEEEPT_DpOT0_.exit365
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef 32) #16
  %.pre.i.i370 = load i64, ptr %i.p, align 8
  br label %_ZN2v88internal4Zone3NewINS0_12AstRawStringEJbRNS_4base6VectorIKhEERjEEEPT_DpOT0_.exit371

_ZN2v88internal4Zone3NewINS0_12AstRawStringEJbRNS_4base6VectorIKhEERjEEEPT_DpOT0_.exit371: ; preds = %_ZN2v88internal4Zone3NewINS0_12AstRawStringEJbRNS_4base6VectorIKhEERjEEEPT_DpOT0_.exit365, %bb.f
  %i.ch = phi i64 [ %.pre.i.i370, %bb.f ], [ %i.ce, %_ZN2v88internal4Zone3NewINS0_12AstRawStringEJbRNS_4base6VectorIKhEERjEEEPT_DpOT0_.exit365 ] ; 2 uses
  %i.ci = inttoptr i64 %i.ch to ptr               ; 6 uses
  %i.cj = add i64 %i.ch, 32
  store i64 %i.cj, ptr %i.p, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr @_ZZN2v88internal18AstStringConstantsC1EPNS0_7IsolateENS0_8HashSeedEE4data_2, ptr %i.ck, align 8
  %.sroa.2.0..sroa_idx.i.i369 = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i369, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  store i32 %i.cc, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 28
  store i8 1, ptr %i.cm, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  store ptr %i.ci, ptr %i.cn, align 8
  store ptr %i.bx, ptr %i.ci, align 8
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load i32, ptr %i.cp, align 8
  %i.cr = lshr i32 %i.cq, 2
  %i.cs = tail call noundef ptr @_ZN2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE9InsertNewERKS5_j(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.cn, i32 noundef %i.cr) ; 0 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 3304 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8
  %i.cv = add i64 %i.cu, -1
  %i.cw = inttoptr i64 %i.cv to ptr
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load atomic i32, ptr %i.cx monotonic, align 4
  %i.cz = load i64, ptr %i.n, align 8
  %i.da = load i64, ptr %i.p, align 8             ; 2 uses
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = icmp ult i64 %i.db, 32
  br i1 %i.dc, label %bb.g, label %_ZN2v88internal4Zone3NewINS0_12AstRawStringEJbRNS_4base6VectorIKhEERjEEEPT_DpOT0_.exit377, !prof !12

end_hunk_1
begin_hunk_2_@_ZN2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE9InsertNewERKS5_j:bb.a
  %i.e = and i32 %i.d, %i.a
  %i.f = zext nneg i32 %i.e to i64                ; 2 uses
  %i.g = load ptr, ptr %0, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.f ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph.i, label %_ZNK2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE5ProbeIS5_EEPNS0_20TemplateHashMapEntryIS5_S6_EERKT_j.exit

.lr.ph.i:                                         ; preds = %bb.a, %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i
  %i.l = phi i32 [ %i.t, %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i ], [ %i.c, %bb.a ]
  %i.m = phi i32 [ %i.aa, %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i ], [ %i.j, %bb.a ]
  %i.n = phi ptr [ %i.y, %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i ], [ %i.h, %bb.a ] ; 2 uses
  %.013.i = phi i64 [ %i.x, %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i ], [ %i.f, %bb.a ]
  %i.o = and i32 %i.m, 2147483647
  %i.p = icmp eq i32 %i.a, %i.o
  br i1 %i.p, label %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.i, label %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i

_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.i: ; preds = %.lr.ph.i
  %i.q = load ptr, ptr %i.n, align 8
  %i.r = load ptr, ptr %1, align 8
  %i.s = tail call noundef zeroext i1 @_ZN2v88internal12AstRawString5EqualEPKS1_S3_(ptr noundef %i.r, ptr noundef %i.q)
  br i1 %i.s, label %_ZNK2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE5ProbeIS5_EEPNS0_20TemplateHashMapEntryIS5_S6_EERKT_j.exit, label %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit._ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread_crit_edge.i

_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit._ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread_crit_edge.i: ; preds = %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.i
  %.pre.i = load i32, ptr %i.b, align 8
  br label %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i

_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i: ; preds = %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit._ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread_crit_edge.i, %.lr.ph.i
  %i.t = phi i32 [ %.pre.i, %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit._ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread_crit_edge.i ], [ %i.l, %.lr.ph.i ] ; 2 uses
  %i.u = add nsw i64 %.013.i, 1
  %i.v = add i32 %i.t, -1
  %i.w = zext i32 %i.v to i64
  %i.x = and i64 %i.u, %i.w                       ; 2 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.x ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 8             ; 2 uses
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.i, label %_ZNK2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE5ProbeIS5_EEPNS0_20TemplateHashMapEntryIS5_S6_EERKT_j.exit, !llvm.loop !0

_ZNK2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE5ProbeIS5_EEPNS0_20TemplateHashMapEntryIS5_S6_EERKT_j.exit: ; preds = %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.i, %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i, %bb.a
  %.lcssa.i = phi ptr [ %i.h, %bb.a ], [ %i.n, %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.i ], [ %i.y, %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i ] ; 3 uses
  %i.ac = load ptr, ptr %1, align 8
  store ptr %i.ac, ptr %.lcssa.i, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 8
  %i.ae = or i32 %2, -2147483648
  store i32 %i.ae, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = add i32 %i.ag, 1                        ; 3 uses
  store i32 %i.ah, ptr %i.af, align 4
  %i.ai = lshr i32 %i.ah, 2
  %i.aj = add i32 %i.ai, %i.ah
  %i.ak = load i32, ptr %i.b, align 8
  %.not.i = icmp ult i32 %i.aj, %i.ak
  br i1 %.not.i, label %_ZN2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE14FillEmptyEntryEPNS0_20TemplateHashMapEntryIS5_S6_EERKS5_RKS6_j.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE5ProbeIS5_EEPNS0_20TemplateHashMapEntryIS5_S6_EERKT_j.exit
  tail call void @_ZN2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE6ResizeEv(ptr noundef nonnull align 8 dereferenceable(16) %0), !inline_history !1
  %i.al = load i32, ptr %i.b, align 8             ; 2 uses
  %i.am = add i32 %i.al, 2147483647
  %i.an = and i32 %i.am, %i.a
  %i.ao = zext nneg i32 %i.an to i64              ; 2 uses
  %i.ap = load ptr, ptr %0, align 8               ; 2 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.ao ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i32, ptr %i.ar, align 8            ; 2 uses
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %.lr.ph.i.i, label %_ZN2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE14FillEmptyEntryEPNS0_20TemplateHashMapEntryIS5_S6_EERKS5_RKS6_j.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i.i
  %i.au = phi i32 [ %i.bc, %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i.i ], [ %i.al, %bb.b ]
  %i.av = phi i32 [ %i.bj, %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i.i ], [ %i.as, %bb.b ]
  %i.aw = phi ptr [ %i.bh, %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i.i ], [ %i.aq, %bb.b ] ; 2 uses
  %.013.i.i = phi i64 [ %i.bg, %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i.i ], [ %i.ao, %bb.b ]
  %i.ax = and i32 %i.av, 2147483647
  %i.ay = icmp eq i32 %i.a, %i.ax
  br i1 %i.ay, label %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.i.i, label %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i.i

_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.az = load ptr, ptr %i.aw, align 8
  %i.ba = load ptr, ptr %1, align 8
  %i.bb = tail call noundef zeroext i1 @_ZN2v88internal12AstRawString5EqualEPKS1_S3_(ptr noundef %i.ba, ptr noundef %i.az), !inline_history !1
  br i1 %i.bb, label %_ZN2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE14FillEmptyEntryEPNS0_20TemplateHashMapEntryIS5_S6_EERKS5_RKS6_j.exit, label %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit._ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread_crit_edge.i.i

_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit._ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread_crit_edge.i.i: ; preds = %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.i.i
  %.pre.i.i = load i32, ptr %i.b, align 8
  br label %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i.i

_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i.i: ; preds = %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit._ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread_crit_edge.i.i, %.lr.ph.i.i
  %i.bc = phi i32 [ %.pre.i.i, %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit._ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread_crit_edge.i.i ], [ %i.au, %.lr.ph.i.i ] ; 2 uses
  %i.bd = add nsw i64 %.013.i.i, 1
  %i.be = add i32 %i.bc, -1
  %i.bf = zext i32 %i.be to i64
  %i.bg = and i64 %i.bd, %i.bf                    ; 2 uses
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.bg ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load i32, ptr %i.bi, align 8            ; 2 uses
  %i.bk = icmp slt i32 %i.bj, 0
  br i1 %i.bk, label %.lr.ph.i.i, label %_ZN2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE14FillEmptyEntryEPNS0_20TemplateHashMapEntryIS5_S6_EERKS5_RKS6_j.exit, !llvm.loop !0

_ZN2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE14FillEmptyEntryEPNS0_20TemplateHashMapEntryIS5_S6_EERKS5_RKS6_j.exit: ; preds = %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.i.i, %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i.i, %_ZNK2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE5ProbeIS5_EEPNS0_20TemplateHashMapEntryIS5_S6_EERKT_j.exit, %bb.b
  %.0.i = phi ptr [ %.lcssa.i, %_ZNK2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE5ProbeIS5_EEPNS0_20TemplateHashMapEntryIS5_S6_EERKT_j.exit ], [ %i.aq, %bb.b ], [ %i.bh, %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i.i ], [ %i.aw, %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.i.i ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal15AstValueFactory24GetOneByteStringInternalENS_4base6VectorIKhEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ult i64 %2, 2147483648
  br i1 %i.a, label %_ZNK2v84base6VectorIKhE6lengthEv.exit, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #17
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit:            ; preds = %bb.a
  %i.b = trunc nuw nsw i64 %2 to i32
  %i.c = icmp eq i64 %2, 1
  br i1 %i.c, label %bb.c, label %_ZNK2v84base6VectorIKhE6lengthEv.exit8

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %i.d = load i8, ptr %1, align 1                 ; 2 uses
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.d, label %_ZNK2v84base6VectorIKhE6lengthEv.exit8

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.i = zext nneg i8 %i.d to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8
  br label %bb.e

_ZNK2v84base6VectorIKhE6lengthEv.exit8:           ; preds = %bb.c, %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.01.0.copyload = load ptr, ptr %i.l, align 8
  %i.m = tail call noundef i32 @_ZN2v88internal12StringHasher20HashSequentialStringIhEEjPKT_jNS0_8HashSeedE(ptr noundef %1, i32 noundef %i.b, ptr %.sroa.01.0.copyload)
  %i.n = tail call noundef ptr @_ZN2v88internal15AstValueFactory9GetStringEjbNS_4base6VectorIKhEE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %i.m, i1 noundef zeroext true, ptr %1, i64 %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK2v84base6VectorIKhE6lengthEv.exit8
  %.1 = phi ptr [ %i.n, %_ZNK2v84base6VectorIKhE6lengthEv.exit8 ], [ %i.k, %bb.d ]
  ret ptr %.1
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal12StringHasher20HashSequentialStringIhEEjPKT_jNS0_8HashSeedE(ptr noundef %0, i32 noundef %1, ptr %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0                       ; 2 uses
  br i1 %.not, label %.thread129, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ult i32 %1, 17
  br i1 %i.a, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.b = load i8, ptr %0, align 1
  %i.c = zext i8 %i.b to i64                      ; 2 uses
  %i.d = add nsw i64 %i.c, -48                    ; 5 uses
  %i.e = icmp ugt i64 %i.d, 9
  br i1 %i.e, label %.thread129, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.not141 = icmp eq i32 %1, 1
  br i1 %.not141, label %._crit_edge.thread, label %.thread129

bb.f:                                             ; preds = %bb.d
  %i.g = icmp samesign ugt i32 %1, 10
  br i1 %i.g, label %.lr.ph156, label %.preheader142

.preheader142:                                    ; preds = %bb.f
  %.not159 = icmp eq i32 %1, 1
  br i1 %.not159, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader142
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.092151 = phi i64 [ %i.d, %.lr.ph.preheader ], [ %i.o, %bb.g ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i32
  %i.k = add nsw i32 %i.j, -48                    ; 2 uses
  %i.l = icmp ugt i32 %i.k, 9
  br i1 %i.l, label %.thread129, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.m = mul i64 %.092151, 10
  %i.n = zext nneg i32 %i.k to i64
  %i.o = add i64 %i.m, %i.n                       ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !42

._crit_edge:                                      ; preds = %bb.g
  %i.p = icmp ugt i64 %i.o, 4294967294
  br i1 %i.p, label %._crit_edge157, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader142, %bb.e, %._crit_edge
  %.2.ph = phi i64 [ %i.o, %._crit_edge ], [ 0, %bb.e ], [ %i.d, %.preheader142 ]
  %i.q = trunc nuw i64 %.2.ph to i32              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.s = load i32, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.u = load i32, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.w = load i32, ptr %i.v, align 8
  %i.x = lshr i32 %i.q, 12
  %i.y = xor i32 %i.x, %i.q
  %i.z = mul i32 %i.y, %i.s                       ; 2 uses
  %i.aa = lshr i32 %i.z, 12
  %i.ab = and i32 %i.aa, 4095
  %i.ac = xor i32 %i.ab, %i.z
  %i.ad = mul i32 %i.ac, %i.u                     ; 2 uses
  %i.ae = lshr i32 %i.ad, 12
  %i.af = and i32 %i.ae, 4095
  %i.ag = xor i32 %i.af, %i.ad
  %i.ah = mul i32 %i.ag, %i.w
  %i.ai = and i32 %i.ah, 16777215                 ; 2 uses
  %i.aj = lshr i32 %i.ai, 12
  %i.ak = xor i32 %i.aj, %i.ai
  %i.al = shl nuw nsw i32 %i.ak, 2
  %i.am = shl nuw nsw i32 %1, 26
  %i.an = or disjoint i32 %i.al, %i.am
  br label %bb.u

.lr.ph156:                                        ; preds = %bb.f, %bb.h
  %indvars.iv169 = phi i64 [ %indvars.iv.next170, %bb.h ], [ 1, %bb.f ] ; 2 uses
  %.011.i155 = phi i64 [ %i.av, %bb.h ], [ %i.d, %bb.f ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv169
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = zext i8 %i.ap to i32
  %i.ar = add nsw i32 %i.aq, -48                  ; 2 uses
  %i.as = icmp ult i32 %i.ar, 10
  br i1 %i.as, label %bb.h, label %.thread129

bb.h:                                             ; preds = %.lr.ph156
  %i.at = mul i64 %.011.i155, 10
  %i.au = zext nneg i32 %i.ar to i64
  %i.av = add i64 %i.at, %i.au                    ; 2 uses
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next170 to i32
  %exitcond172.not = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond172.not, label %._crit_edge157, label %.lr.ph156, !llvm.loop !43

._crit_edge157:                                   ; preds = %bb.h, %._crit_edge
  %.011.i.lcssa = phi i64 [ %i.o, %._crit_edge ], [ %i.av, %bb.h ]
  %i.aw = icmp ugt i64 %.011.i.lcssa, 9007199254740991
  br i1 %i.aw, label %.thread129, label %_ZN2v88internal6detail20TryParseIntegerIndexIhEENS1_16IndexParseResultEPKT_jjm.exit

_ZN2v88internal6detail20TryParseIntegerIndexIhEENS1_16IndexParseResultEPKT_jjm.exit: ; preds = %._crit_edge157
  %i.ax = load i64, ptr %2, align 8               ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = zext nneg i32 %1 to i64                 ; 7 uses
  %i.ba = load i64, ptr %i.ay, align 8            ; 2 uses
  %i.bb = xor i64 %i.ba, %i.ax
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bd = load i64, ptr %i.bc, align 8            ; 2 uses
  %i.be = zext i64 %i.bb to i128
  %i.bf = zext i64 %i.bd to i128                  ; 2 uses
  %i.bg = mul nuw i128 %i.bf, %i.be               ; 2 uses
  %i.bh = lshr i128 %i.bg, 64
  %i.bi = xor i128 %i.bh, %i.bg
  %i.bj = trunc i128 %i.bi to i64
  %i.bk = xor i64 %i.az, %i.bj
  %i.bl = xor i64 %i.bk, %i.ax                    ; 2 uses
  %i.bm = icmp ugt i32 %1, 3
  br i1 %i.bm, label %bb.i, label %bb.j, !prof !10

bb.i:                                             ; preds = %_ZN2v88internal6detail20TryParseIntegerIndexIhEENS1_16IndexParseResultEPKT_jjm.exit
  %i.bn = getelementptr i8, ptr %0, i64 %i.az
  %i.bo = getelementptr i8, ptr %i.bn, i64 -4     ; 2 uses
  %.0.copyload.i = load i32, ptr %0, align 1
  %i.bp = zext i32 %.0.copyload.i to i64
  %i.bq = shl nuw i64 %i.bp, 32
  %.0.copyload.i38 = load i32, ptr %i.bo, align 1
  %i.br = zext i32 %.0.copyload.i38 to i64
  %i.bs = or disjoint i64 %i.bq, %i.br
  %i.bt = and i64 %i.az, 24
  %i.bu = lshr i64 %i.az, 3
  %i.bv = lshr exact i64 %i.bt, %i.bu             ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 %i.bv
  %.0.copyload.i39 = load i32, ptr %i.bw, align 1
  %i.bx = zext i32 %.0.copyload.i39 to i64
  %i.by = shl nuw i64 %i.bx, 32
  %i.bz = sub nsw i64 0, %i.bv
  %i.ca = getelementptr inbounds i8, ptr %i.bo, i64 %i.bz
  %.0.copyload.i40 = load i32, ptr %i.ca, align 1
  %i.cb = zext i32 %.0.copyload.i40 to i64
  %i.cc = or disjoint i64 %i.by, %i.cb
  %i.cd = xor i64 %i.cc, %i.bl
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit37

bb.j:                                             ; preds = %_ZN2v88internal6detail20TryParseIntegerIndexIhEENS1_16IndexParseResultEPKT_jjm.exit
  %i.ce = shl nuw nsw i64 %i.c, 56
  %i.cf = lshr i64 %i.az, 1
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1
  %i.ci = zext i8 %i.ch to i64
  %i.cj = shl nuw nsw i64 %i.ci, 32
  %i.ck = or disjoint i64 %i.cj, %i.ce
  %i.cl = getelementptr i8, ptr %0, i64 %i.az
  %i.cm = getelementptr i8, ptr %i.cl, i64 -1
  %i.cn = load i8, ptr %i.cm, align 1
  %i.co = zext i8 %i.cn to i64
  %i.cp = or disjoint i64 %i.ck, %i.co
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit37

_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit37:  ; preds = %bb.i, %bb.j
  %.0102 = phi i64 [ %i.cd, %bb.i ], [ %i.bl, %bb.j ]
  %.0101 = phi i64 [ %i.bs, %bb.i ], [ %i.cp, %bb.j ]
  %i.cq = xor i64 %.0101, %i.bd
  %i.cr = zext i64 %i.cq to i128
  %i.cs = zext i64 %.0102 to i128
  %i.ct = mul nuw i128 %i.cr, %i.cs               ; 2 uses
  %i.cu = trunc i128 %i.ct to i64
  %i.cv = lshr i128 %i.ct, 64
  %i.cw = xor i64 %i.az, %i.cu
  %i.cx = xor i64 %i.cw, %i.ba
  %i.cy = zext i64 %i.cx to i128
  %i.cz = xor i128 %i.cv, %i.bf
  %i.da = mul nuw i128 %i.cz, %i.cy               ; 2 uses
  %i.db = lshr i128 %i.da, 64
  %i.dc = xor i128 %i.db, %i.da
  %i.dd = trunc i128 %i.dc to i32
  %i.de = and i32 %i.dd, 1073741823               ; 2 uses
  %i.df = icmp eq i32 %i.de, 0
  %i.dg = shl nuw i32 %i.de, 2
  %i.dh = select i1 %i.df, i32 108, i32 %i.dg     ; 3 uses
  %i.di = icmp ult i32 %i.dh, 536870912
  %i.dj = or i32 %i.dh, 536870912
  %spec.select = select i1 %i.di, i32 %i.dj, i32 %i.dh
  br label %bb.u

bb.k:                                             ; preds = %bb.b
  %i.dk = icmp ugt i32 %1, 16383
  br i1 %i.dk, label %bb.l, label %.thread129

bb.l:                                             ; preds = %bb.k
  %i.dl = shl i32 %1, 2
  %i.dm = or disjoint i32 %i.dl, 2
  br label %bb.u

.thread129:                                       ; preds = %.lr.ph, %.lr.ph156, %._crit_edge157, %bb.e, %bb.c, %bb.k, %bb.a
  %i.dn = load i64, ptr %2, align 8               ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dp = zext i32 %1 to i64                      ; 9 uses
  %i.dq = load i64, ptr %i.do, align 8            ; 3 uses
  %i.dr = xor i64 %i.dq, %i.dn
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dt = load i64, ptr %i.ds, align 8            ; 4 uses
  %i.du = zext i64 %i.dr to i128
  %i.dv = zext i64 %i.dt to i128                  ; 2 uses
  %i.dw = mul nuw i128 %i.dv, %i.du               ; 2 uses
  %i.dx = lshr i128 %i.dw, 64
  %i.dy = xor i128 %i.dx, %i.dw
  %i.dz = trunc i128 %i.dy to i64
  %i.ea = xor i64 %i.dp, %i.dz
  %i.eb = xor i64 %i.ea, %i.dn                    ; 7 uses
  %i.ec = icmp ult i32 %1, 17
  br i1 %i.ec, label %bb.m, label %bb.q, !prof !10

bb.m:                                             ; preds = %.thread129
  %i.ed = icmp samesign ugt i32 %1, 3
  br i1 %i.ed, label %bb.n, label %bb.o, !prof !10

bb.n:                                             ; preds = %bb.m
  %i.ee = getelementptr i8, ptr %0, i64 %i.dp
  %i.ef = getelementptr i8, ptr %i.ee, i64 -4     ; 2 uses
  %.0.copyload.i53 = load i32, ptr %0, align 1
  %i.eg = zext i32 %.0.copyload.i53 to i64
  %i.eh = shl nuw i64 %i.eg, 32
  %.0.copyload.i54 = load i32, ptr %i.ef, align 1
  %i.ei = zext i32 %.0.copyload.i54 to i64
  %i.ej = or disjoint i64 %i.eh, %i.ei
  %i.ek = and i64 %i.dp, 24
  %i.el = lshr i64 %i.dp, 3
  %i.em = lshr exact i64 %i.ek, %i.el             ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 %i.em
  %.0.copyload.i55 = load i32, ptr %i.en, align 1
  %i.eo = zext i32 %.0.copyload.i55 to i64
  %i.ep = shl nuw i64 %i.eo, 32
  %i.eq = sub nsw i64 0, %i.em
  %i.er = getelementptr inbounds i8, ptr %i.ef, i64 %i.eq
  %.0.copyload.i56 = load i32, ptr %i.er, align 1
  %i.es = zext i32 %.0.copyload.i56 to i64
  %i.et = or disjoint i64 %i.ep, %i.es
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit

bb.o:                                             ; preds = %bb.m
  br i1 %.not, label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit, label %bb.p, !prof !12

bb.p:                                             ; preds = %bb.o
  %i.eu = load i8, ptr %0, align 1
  %i.ev = zext i8 %i.eu to i64
  %i.ew = shl nuw i64 %i.ev, 56
  %i.ex = lshr i64 %i.dp, 1
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1
  %i.fa = zext i8 %i.ez to i64
  %i.fb = shl nuw nsw i64 %i.fa, 32
  %i.fc = or disjoint i64 %i.fb, %i.ew
  %i.fd = getelementptr i8, ptr %0, i64 %i.dp
  %i.fe = getelementptr i8, ptr %i.fd, i64 -1
  %i.ff = load i8, ptr %i.fe, align 1
  %i.fg = zext i8 %i.ff to i64
  %i.fh = or disjoint i64 %i.fc, %i.fg
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit

bb.q:                                             ; preds = %.thread129
  %i.fi = icmp ugt i32 %1, 48
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fk = load i64, ptr %i.fj, align 8            ; 3 uses
  br i1 %i.fi, label %.preheader, label %.thread132, !prof !12

.preheader:                                       ; preds = %bb.q, %.preheader
  %.065.i = phi i64 [ %i.ft, %.preheader ], [ %i.eb, %bb.q ]
  %.063.i = phi ptr [ %i.go, %.preheader ], [ %0, %bb.q ] ; 7 uses
  %.062.i = phi i64 [ %i.gp, %.preheader ], [ %i.dp, %bb.q ]
  %.061.i = phi i64 [ %i.gd, %.preheader ], [ %i.eb, %bb.q ]
  %.0.i = phi i64 [ %i.gn, %.preheader ], [ %i.eb, %bb.q ]
  %.0.copyload.i57 = load i64, ptr %.063.i, align 1
  %i.fl = xor i64 %.0.copyload.i57, %i.dq
  %i.fm = getelementptr inbounds nuw i8, ptr %.063.i, i64 8
  %.0.copyload.i58 = load i64, ptr %i.fm, align 1
  %i.fn = xor i64 %.0.copyload.i58, %.065.i
  %i.fo = zext i64 %i.fl to i128
  %i.fp = zext i64 %i.fn to i128
  %i.fq = mul nuw i128 %i.fp, %i.fo               ; 2 uses
  %i.fr = lshr i128 %i.fq, 64
  %i.fs = xor i128 %i.fr, %i.fq
  %i.ft = trunc i128 %i.fs to i64                 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.063.i, i64 16
  %.0.copyload.i59 = load i64, ptr %i.fu, align 1
  %i.fv = xor i64 %.0.copyload.i59, %i.dt
  %i.fw = getelementptr inbounds nuw i8, ptr %.063.i, i64 24
  %.0.copyload.i60 = load i64, ptr %i.fw, align 1
  %i.fx = xor i64 %.0.copyload.i60, %.061.i
  %i.fy = zext i64 %i.fv to i128
  %i.fz = zext i64 %i.fx to i128
  %i.ga = mul nuw i128 %i.fz, %i.fy               ; 2 uses
  %i.gb = lshr i128 %i.ga, 64
  %i.gc = xor i128 %i.gb, %i.ga
  %i.gd = trunc i128 %i.gc to i64                 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.063.i, i64 32
  %.0.copyload.i61 = load i64, ptr %i.ge, align 1
  %i.gf = xor i64 %i.fk, %.0.copyload.i61
  %i.gg = getelementptr inbounds nuw i8, ptr %.063.i, i64 40
  %.0.copyload.i62 = load i64, ptr %i.gg, align 1
  %i.gh = xor i64 %.0.copyload.i62, %.0.i
  %i.gi = zext i64 %i.gf to i128
  %i.gj = zext i64 %i.gh to i128
  %i.gk = mul nuw i128 %i.gj, %i.gi               ; 2 uses
  %i.gl = lshr i128 %i.gk, 64
  %i.gm = xor i128 %i.gl, %i.gk
  %i.gn = trunc i128 %i.gm to i64                 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.063.i, i64 48 ; 3 uses
  %i.gp = add i64 %.062.i, -48                    ; 5 uses
  %i.gq = icmp ugt i64 %i.gp, 47
  br i1 %i.gq, label %.preheader, label %bb.r, !prof !10, !llvm.loop !2

bb.r:                                             ; preds = %.preheader
  %i.gr = xor i64 %i.gd, %i.ft
  %i.gs = xor i64 %i.gr, %i.gn                    ; 2 uses
  %i.gt = icmp samesign ugt i64 %i.gp, 16
  br i1 %i.gt, label %.thread132, label %bb.t

.thread132:                                       ; preds = %bb.q, %bb.r
  %.1.i24140 = phi i64 [ %i.gp, %bb.r ], [ %i.dp, %bb.q ] ; 3 uses
  %.164.i138 = phi ptr [ %i.go, %bb.r ], [ %0, %bb.q ] ; 6 uses
  %.166.i136 = phi i64 [ %i.gs, %bb.r ], [ %i.eb, %bb.q ]
  %.0.copyload.i63 = load i64, ptr %.164.i138, align 1
  %i.gu = xor i64 %i.fk, %.0.copyload.i63
  %i.gv = getelementptr inbounds nuw i8, ptr %.164.i138, i64 8
  %.0.copyload.i64 = load i64, ptr %i.gv, align 1
  %i.gw = xor i64 %.166.i136, %.0.copyload.i64
  %i.gx = xor i64 %i.gw, %i.dt
  %i.gy = zext i64 %i.gu to i128
  %i.gz = zext i64 %i.gx to i128
  %i.ha = mul nuw i128 %i.gz, %i.gy               ; 2 uses
  %i.hb = lshr i128 %i.ha, 64
  %i.hc = xor i128 %i.hb, %i.ha
  %i.hd = trunc i128 %i.hc to i64                 ; 2 uses
  %i.he = icmp samesign ugt i64 %.1.i24140, 32
  br i1 %i.he, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.thread132
  %i.hf = getelementptr inbounds nuw i8, ptr %.164.i138, i64 16
  %.0.copyload.i65 = load i64, ptr %i.hf, align 1
  %i.hg = xor i64 %.0.copyload.i65, %i.fk
  %i.hh = getelementptr inbounds nuw i8, ptr %.164.i138, i64 24
  %.0.copyload.i66 = load i64, ptr %i.hh, align 1
  %i.hi = xor i64 %.0.copyload.i66, %i.hd
  %i.hj = zext i64 %i.hg to i128
  %i.hk = zext i64 %i.hi to i128
  %i.hl = mul nuw i128 %i.hk, %i.hj               ; 2 uses
  %i.hm = lshr i128 %i.hl, 64
  %i.hn = xor i128 %i.hm, %i.hl
  %i.ho = trunc i128 %i.hn to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.thread132, %bb.r
  %.1.i24139 = phi i64 [ %.1.i24140, %bb.s ], [ %.1.i24140, %.thread132 ], [ %i.gp, %bb.r ]
  %.164.i137 = phi ptr [ %.164.i138, %bb.s ], [ %.164.i138, %.thread132 ], [ %i.go, %bb.r ]
  %.2.i25 = phi i64 [ %i.ho, %bb.s ], [ %i.hd, %.thread132 ], [ %i.gs, %bb.r ]
  %i.hp = getelementptr i8, ptr %.164.i137, i64 %.1.i24139 ; 2 uses
  %i.hq = getelementptr i8, ptr %i.hp, i64 -16
  %.0.copyload.i67 = load i64, ptr %i.hq, align 1
  %i.hr = getelementptr i8, ptr %i.hp, i64 -8
  %.0.copyload.i68 = load i64, ptr %i.hr, align 1
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit

_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit:    ; preds = %bb.o, %bb.n, %bb.p, %bb.t
  %.0104 = phi i64 [ %i.et, %bb.n ], [ %.0.copyload.i68, %bb.t ], [ 0, %bb.p ], [ 0, %bb.o ]
  %.0103 = phi i64 [ %i.ej, %bb.n ], [ %.0.copyload.i67, %bb.t ], [ %i.fh, %bb.p ], [ 0, %bb.o ]
  %.3.i = phi i64 [ %i.eb, %bb.n ], [ %.2.i25, %bb.t ], [ %i.eb, %bb.p ], [ %i.eb, %bb.o ]
  %i.hs = xor i64 %.0103, %i.dt
  %i.ht = xor i64 %.3.i, %.0104
  %i.hu = zext i64 %i.hs to i128
  %i.hv = zext i64 %i.ht to i128
  %i.hw = mul nuw i128 %i.hv, %i.hu               ; 2 uses
  %i.hx = trunc i128 %i.hw to i64
  %i.hy = lshr i128 %i.hw, 64
  %i.hz = xor i64 %i.dp, %i.hx
  %i.ia = xor i64 %i.hz, %i.dq
  %i.ib = zext i64 %i.ia to i128
  %i.ic = xor i128 %i.hy, %i.dv
  %i.id = mul nuw i128 %i.ic, %i.ib               ; 2 uses
  %i.ie = lshr i128 %i.id, 64
  %i.if = xor i128 %i.ie, %i.id
  %i.ig = trunc i128 %i.if to i32
  %i.ih = and i32 %i.ig, 1073741823               ; 2 uses
  %i.ii = icmp eq i32 %i.ih, 0
  %i.ij = shl nuw i32 %i.ih, 2
  %i.ik = or disjoint i32 %i.ij, 2
  %i.il = select i1 %i.ii, i32 110, i32 %i.ik
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge.thread, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit37, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit, %bb.l
  %.1 = phi i32 [ %i.il, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit ], [ %i.dm, %bb.l ], [ %spec.select, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit37 ], [ %i.an, %._crit_edge.thread ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal15AstValueFactory9GetStringEjbNS_4base6VectorIKhEE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, i1 noundef zeroext %2, ptr %3, i64 %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::AstRawString", align 8 ; 8 uses
  %i.a = zext i1 %2 to i8                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store ptr null, ptr %5, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %4, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i8 %i.a, ptr %i.d, align 4
  %i.e = lshr i32 %1, 2                           ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %i.h = add i32 %i.g, 1073741823
  %i.i = and i32 %i.h, %i.e
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = load ptr, ptr %0, align 8                ; 2 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.j ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.i.i, label %_ZNK2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE5ProbeIPS3_EEPNS0_20TemplateHashMapEntryIS5_S6_EERKT_j.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i.i
  %i.p = phi i32 [ %i.w, %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i.i ], [ %i.g, %bb.a ]
  %i.q = phi i32 [ %i.ad, %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i.i ], [ %i.n, %bb.a ]
  %i.r = phi ptr [ %i.ab, %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i.i ], [ %i.l, %bb.a ] ; 4 uses
  %.013.i.i = phi i64 [ %i.aa, %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i.i ], [ %i.j, %bb.a ]
  %i.s = and i32 %i.q, 2147483647
  %i.t = icmp eq i32 %i.e, %i.s
  br i1 %i.t, label %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.i.i, label %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i.i

_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.u = load ptr, ptr %i.r, align 8
  %i.v = call noundef zeroext i1 @_ZN2v88internal12AstRawString5EqualEPKS1_S3_(ptr noundef nonnull readonly %5, ptr noundef %i.u)
  br i1 %i.v, label %_ZNK2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE5ProbeIPS3_EEPNS0_20TemplateHashMapEntryIS5_S6_EERKT_j.exit.i, label %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit._ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread_crit_edge.i.i

_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit._ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread_crit_edge.i.i: ; preds = %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.i.i
  %.pre.i.i = load i32, ptr %i.f, align 8
  br label %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i.i

_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i.i: ; preds = %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit._ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread_crit_edge.i.i, %.lr.ph.i.i
  %i.w = phi i32 [ %.pre.i.i, %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit._ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread_crit_edge.i.i ], [ %i.p, %.lr.ph.i.i ] ; 2 uses
  %i.x = add nsw i64 %.013.i.i, 1
  %i.y = add i32 %i.w, -1
  %i.z = zext i32 %i.y to i64
  %i.aa = and i64 %i.x, %i.z                      ; 2 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.aa ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i32, ptr %i.ac, align 8            ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.i.i, label %_ZNK2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE5ProbeIPS3_EEPNS0_20TemplateHashMapEntryIS5_S6_EERKT_j.exit.thread.i, !llvm.loop !44

_ZNK2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE5ProbeIPS3_EEPNS0_20TemplateHashMapEntryIS5_S6_EERKT_j.exit.i: ; preds = %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.i.i
  %.phi.trans.insert.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.pre.pre.i = load i32, ptr %.phi.trans.insert.phi.trans.insert.i, align 8
  %i.af = icmp slt i32 %.pre.pre.i, 0
  br i1 %i.af, label %"_ZN2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE14LookupOrInsertIPS3_ZNS2_15AstValueFactory9GetStringEjbNS0_6VectorIKhEEE3$_0ZNSC_9GetStringEjbSF_E3$_1EEPNS0_20TemplateHashMapEntryIS5_S6_EERKT_jRKT0_RKT1_.exit", label %_ZNK2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE5ProbeIPS3_EEPNS0_20TemplateHashMapEntryIS5_S6_EERKT_j.exit.thread.i

_ZNK2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE5ProbeIPS3_EEPNS0_20TemplateHashMapEntryIS5_S6_EERKT_j.exit.thread.i: ; preds = %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i.i, %bb.a, %_ZNK2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE5ProbeIPS3_EEPNS0_20TemplateHashMapEntryIS5_S6_EERKT_j.exit.i
  %.lcssa.i11.i = phi ptr [ %i.r, %_ZNK2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE5ProbeIPS3_EEPNS0_20TemplateHashMapEntryIS5_S6_EERKT_j.exit.i ], [ %i.l, %bb.a ], [ %i.ab, %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i.i ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.lcssa.i11.i, i64 8
  %i.ah = icmp ult i64 %4, 2147483648
  br i1 %i.ah, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %_ZNK2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE5ProbeIPS3_EEPNS0_20TemplateHashMapEntryIS5_S6_EERKT_j.exit.thread.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #17
  unreachable

bb.c:                                             ; preds = %_ZNK2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE5ProbeIPS3_EEPNS0_20TemplateHashMapEntryIS5_S6_EERKT_j.exit.thread.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 3 uses
  %i.ak = add nuw nsw i64 %4, 7
  %i.al = and i64 %i.ak, 4294967288               ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 3 uses
  %i.ap = load i64, ptr %i.ao, align 8            ; 2 uses
  %i.aq = sub i64 %i.an, %i.ap
  %i.ar = icmp ugt i64 %i.al, %i.aq
  br i1 %i.ar, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayIhA_hEEPT_m.exit.i.i, !prof !12

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.aj, i64 noundef %i.al) #16
  %.pre.i.i.i.i = load i64, ptr %i.ao, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhA_hEEPT_m.exit.i.i

_ZN2v88internal4Zone13AllocateArrayIhA_hEEPT_m.exit.i.i: ; preds = %bb.d, %bb.c
  %i.as = phi i64 [ %.pre.i.i.i.i, %bb.d ], [ %i.ap, %bb.c ] ; 2 uses
  %i.at = inttoptr i64 %i.as to ptr               ; 2 uses
  %i.au = add i64 %i.as, %i.al
  store i64 %i.au, ptr %i.ao, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr align 1 %3, i64 %4, i1 false)
  %i.av = load ptr, ptr %i.ai, align 8            ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 3 uses
  %i.az = load i64, ptr %i.ay, align 8            ; 2 uses
  %i.ba = sub i64 %i.ax, %i.az
  %i.bb = icmp ult i64 %i.ba, 32
  br i1 %i.bb, label %bb.e, label %"_ZZN2v88internal15AstValueFactory9GetStringEjbNS_4base6VectorIKhEEENK3$_0clEv.exit.i", !prof !12

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIhA_hEEPT_m.exit.i.i
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.av, i64 noundef 32) #16
  %.pre.i.i8.i.i = load i64, ptr %i.ay, align 8
  br label %"_ZZN2v88internal15AstValueFactory9GetStringEjbNS_4base6VectorIKhEEENK3$_0clEv.exit.i"

"_ZZN2v88internal15AstValueFactory9GetStringEjbNS_4base6VectorIKhEEENK3$_0clEv.exit.i": ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayIhA_hEEPT_m.exit.i.i
  %i.bc = phi i64 [ %.pre.i.i8.i.i, %bb.e ], [ %i.az, %_ZN2v88internal4Zone13AllocateArrayIhA_hEEPT_m.exit.i.i ] ; 2 uses
  %i.bd = inttoptr i64 %i.bc to ptr               ; 9 uses
  %i.be = add i64 %i.bc, 32
  store i64 %i.be, ptr %i.ay, align 8
  store ptr null, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.at, ptr %i.bf, align 8
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i64 %4, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store i32 %1, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 28
  store i8 %i.a, ptr %i.bh, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8
  store ptr %i.bd, ptr %i.bj, align 8
  store ptr %i.bd, ptr %i.bi, align 8
  store ptr %i.bd, ptr %.lcssa.i11.i, align 8
  %i.bk = or disjoint i32 %i.e, -2147483648
  store i32 %i.bk, ptr %i.ag, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = add i32 %i.bm, 1                        ; 3 uses
  store i32 %i.bn, ptr %i.bl, align 4
  %i.bo = lshr i32 %i.bn, 2
  %i.bp = add i32 %i.bo, %i.bn
  %i.bq = load i32, ptr %i.f, align 8
  %.not.i.i = icmp ult i32 %i.bp, %i.bq
  br i1 %.not.i.i, label %"_ZN2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE14LookupOrInsertIPS3_ZNS2_15AstValueFactory9GetStringEjbNS0_6VectorIKhEEE3$_0ZNSC_9GetStringEjbSF_E3$_1EEPNS0_20TemplateHashMapEntryIS5_S6_EERKT_jRKT0_RKT1_.exit", label %bb.f

bb.f:                                             ; preds = %"_ZZN2v88internal15AstValueFactory9GetStringEjbNS_4base6VectorIKhEEENK3$_0clEv.exit.i"
  tail call void @_ZN2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE6ResizeEv(ptr noundef nonnull align 8 dereferenceable(16) %0), !inline_history !1
  %i.br = load i32, ptr %i.f, align 8             ; 2 uses
  %i.bs = add i32 %i.br, 1073741823
  %i.bt = and i32 %i.bs, %i.e
  %i.bu = zext nneg i32 %i.bt to i64              ; 2 uses
  %i.bv = load ptr, ptr %0, align 8               ; 2 uses
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %i.bu ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i32, ptr %i.bx, align 8            ; 2 uses
  %i.bz = icmp slt i32 %i.by, 0
  br i1 %i.bz, label %.lr.ph.i.i.i, label %"_ZN2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE14LookupOrInsertIPS3_ZNS2_15AstValueFactory9GetStringEjbNS0_6VectorIKhEEE3$_0ZNSC_9GetStringEjbSF_E3$_1EEPNS0_20TemplateHashMapEntryIS5_S6_EERKT_jRKT0_RKT1_.exit"

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i.i.i
  %i.ca = phi i32 [ %i.ch, %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i.i.i ], [ %i.br, %bb.f ]
  %i.cb = phi i32 [ %i.co, %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i.i.i ], [ %i.by, %bb.f ]
  %i.cc = phi ptr [ %i.cm, %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i.i.i ], [ %i.bw, %bb.f ] ; 2 uses
  %.013.i.i.i = phi i64 [ %i.cl, %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i.i.i ], [ %i.bu, %bb.f ]
  %i.cd = and i32 %i.cb, 2147483647
  %i.ce = icmp eq i32 %i.e, %i.cd
  br i1 %i.ce, label %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.i.i.i, label %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i.i.i

_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.cf = load ptr, ptr %i.cc, align 8
  %i.cg = tail call noundef zeroext i1 @_ZN2v88internal12AstRawString5EqualEPKS1_S3_(ptr noundef nonnull %i.bd, ptr noundef %i.cf), !inline_history !1
  br i1 %i.cg, label %"_ZN2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE14LookupOrInsertIPS3_ZNS2_15AstValueFactory9GetStringEjbNS0_6VectorIKhEEE3$_0ZNSC_9GetStringEjbSF_E3$_1EEPNS0_20TemplateHashMapEntryIS5_S6_EERKT_jRKT0_RKT1_.exit", label %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit._ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread_crit_edge.i.i.i

_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit._ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread_crit_edge.i.i.i: ; preds = %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.i.i.i
  %.pre.i.i.i = load i32, ptr %i.f, align 8
  br label %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i.i.i

_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i.i.i: ; preds = %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit._ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread_crit_edge.i.i.i, %.lr.ph.i.i.i
  %i.ch = phi i32 [ %.pre.i.i.i, %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit._ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread_crit_edge.i.i.i ], [ %i.ca, %.lr.ph.i.i.i ] ; 2 uses
  %i.ci = add nsw i64 %.013.i.i.i, 1
  %i.cj = add i32 %i.ch, -1
  %i.ck = zext i32 %i.cj to i64
  %i.cl = and i64 %i.ci, %i.ck                    ; 2 uses
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %i.cl ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load i32, ptr %i.cn, align 8            ; 2 uses
  %i.cp = icmp slt i32 %i.co, 0
  br i1 %i.cp, label %.lr.ph.i.i.i, label %"_ZN2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE14LookupOrInsertIPS3_ZNS2_15AstValueFactory9GetStringEjbNS0_6VectorIKhEEE3$_0ZNSC_9GetStringEjbSF_E3$_1EEPNS0_20TemplateHashMapEntryIS5_S6_EERKT_jRKT0_RKT1_.exit", !llvm.loop !0

"_ZN2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE14LookupOrInsertIPS3_ZNS2_15AstValueFactory9GetStringEjbNS0_6VectorIKhEEE3$_0ZNSC_9GetStringEjbSF_E3$_1EEPNS0_20TemplateHashMapEntryIS5_S6_EERKT_jRKT0_RKT1_.exit": ; preds = %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.i.i.i, %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i.i.i, %_ZNK2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE5ProbeIPS3_EEPNS0_20TemplateHashMapEntryIS5_S6_EERKT_j.exit.i, %"_ZZN2v88internal15AstValueFactory9GetStringEjbNS_4base6VectorIKhEEENK3$_0clEv.exit.i", %bb.f
  %.0.i = phi ptr [ %i.r, %_ZNK2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE5ProbeIPS3_EEPNS0_20TemplateHashMapEntryIS5_S6_EERKT_j.exit.i ], [ %.lcssa.i11.i, %"_ZZN2v88internal15AstValueFactory9GetStringEjbNS_4base6VectorIKhEEENK3$_0clEv.exit.i" ], [ %i.bw, %bb.f ], [ %i.cc, %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.i.i.i ], [ %i.cm, %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i.i.i ]
  %i.cq = load ptr, ptr %.0.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret ptr %i.cq
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal15AstValueFactory24GetTwoByteStringInternalENS_4base6VectorIKtEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ult i64 %2, 2147483648
  br i1 %i.a, label %_ZNK2v84base6VectorIKtE6lengthEv.exit, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #17
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit:            ; preds = %bb.a
  %i.b = trunc nuw nsw i64 %2 to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.03.0.copyload = load ptr, ptr %i.c, align 8
  %i.d = tail call noundef i32 @_ZN2v88internal12StringHasher20HashSequentialStringItEEjPKT_jNS0_8HashSeedE(ptr noundef %1, i32 noundef %i.b, ptr %.sroa.03.0.copyload)
  %i.e = shl nuw nsw i64 %2, 1
  %i.f = tail call noundef ptr @_ZN2v88internal15AstValueFactory9GetStringEjbNS_4base6VectorIKhEE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %i.d, i1 noundef zeroext false, ptr %1, i64 %i.e)
  ret ptr %i.f
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal12StringHasher20HashSequentialStringItEEjPKT_jNS0_8HashSeedE(ptr noundef %0, i32 noundef %1, ptr %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %.thread133.thread206, label %bb.b

.thread133.thread206:                             ; preds = %bb.a
  %i.a = load i64, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %._crit_edge168

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i32 %1, 17
  br i1 %i.c, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.d = load i16, ptr %0, align 2                ; 3 uses
  %i.e = zext i16 %i.d to i64
  %i.f = add nsw i64 %i.e, -48                    ; 5 uses
  %i.g = icmp ugt i64 %i.f, 9
  %i.h = lshr i16 %i.d, 8
  %i.i = zext nneg i16 %i.h to i64
  br i1 %i.g, label %.lr.ph167.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq i64 %i.f, 0
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.not147 = icmp eq i32 %1, 1
  br i1 %.not147, label %._crit_edge.thread, label %.lr.ph167.preheader

bb.f:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i32 %1, 10
  br i1 %i.k, label %.lr.ph162, label %.preheader148

.preheader148:                                    ; preds = %bb.f
  %.not169 = icmp eq i32 %1, 1
  br i1 %.not169, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader148
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.096157 = phi i64 [ %i.f, %.lr.ph.preheader ], [ %i.s, %bb.g ]
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.m = load i16, ptr %i.l, align 2
  %i.n = zext i16 %i.m to i32
  %i.o = add nsw i32 %i.n, -48                    ; 2 uses
  %i.p = icmp ugt i32 %i.o, 9
  br i1 %i.p, label %.lr.ph167.preheader, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.q = mul i64 %.096157, 10
  %i.r = zext nneg i32 %i.o to i64
  %i.s = add i64 %i.q, %i.r                       ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !45

._crit_edge:                                      ; preds = %bb.g
  %i.t = icmp ugt i64 %i.s, 4294967294
  br i1 %i.t, label %._crit_edge163, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader148, %bb.e, %._crit_edge
  %.2.ph = phi i64 [ %i.s, %._crit_edge ], [ 0, %bb.e ], [ %i.f, %.preheader148 ]
  %i.u = trunc nuw i64 %.2.ph to i32              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.w = load i32, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.y = load i32, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = lshr i32 %i.u, 12
  %i.ac = xor i32 %i.ab, %i.u
  %i.ad = mul i32 %i.ac, %i.w                     ; 2 uses
  %i.ae = lshr i32 %i.ad, 12
  %i.af = and i32 %i.ae, 4095
  %i.ag = xor i32 %i.af, %i.ad
  %i.ah = mul i32 %i.ag, %i.y                     ; 2 uses
  %i.ai = lshr i32 %i.ah, 12
  %i.aj = and i32 %i.ai, 4095
  %i.ak = xor i32 %i.aj, %i.ah
  %i.al = mul i32 %i.ak, %i.aa
  %i.am = and i32 %i.al, 16777215                 ; 2 uses
  %i.an = lshr i32 %i.am, 12
  %i.ao = xor i32 %i.an, %i.am
  %i.ap = shl nuw nsw i32 %i.ao, 2
  %i.aq = shl nuw nsw i32 %1, 26
  %i.ar = or disjoint i32 %i.ap, %i.aq
  br label %bb.z

.lr.ph162:                                        ; preds = %bb.f, %bb.h
  %indvars.iv180 = phi i64 [ %indvars.iv.next181, %bb.h ], [ 1, %bb.f ] ; 2 uses
  %.011.i161 = phi i64 [ %i.az, %bb.h ], [ %i.f, %bb.f ]
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv180
  %i.at = load i16, ptr %i.as, align 2
  %i.au = zext i16 %i.at to i32
  %i.av = add nsw i32 %i.au, -48                  ; 2 uses
  %i.aw = icmp ult i32 %i.av, 10
  br i1 %i.aw, label %bb.h, label %.lr.ph167.preheader

bb.h:                                             ; preds = %.lr.ph162
  %i.ax = mul i64 %.011.i161, 10
  %i.ay = zext nneg i32 %i.av to i64
  %i.az = add i64 %i.ax, %i.ay                    ; 2 uses
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next181 to i32
  %exitcond183.not = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond183.not, label %._crit_edge163, label %.lr.ph162, !llvm.loop !46

._crit_edge163:                                   ; preds = %bb.h, %._crit_edge
  %.011.i.lcssa = phi i64 [ %i.s, %._crit_edge ], [ %i.az, %bb.h ]
  %i.ba = icmp ugt i64 %.011.i.lcssa, 9007199254740991
  br i1 %i.ba, label %.lr.ph167.preheader, label %_ZN2v88internal6detail20TryParseIntegerIndexItEENS1_16IndexParseResultEPKT_jjm.exit

_ZN2v88internal6detail20TryParseIntegerIndexItEENS1_16IndexParseResultEPKT_jjm.exit: ; preds = %._crit_edge163
  %i.bb = load i64, ptr %2, align 8               ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %wide.trip.count187 = zext nneg i32 %1 to i64
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1 ; 2 uses
  %exitcond188.not = icmp eq i64 %indvars.iv.next185, %wide.trip.count187
  br i1 %exitcond188.not, label %bb.k, label %bb.j, !llvm.loop !47

bb.j:                                             ; preds = %_ZN2v88internal6detail20TryParseIntegerIndexItEENS1_16IndexParseResultEPKT_jjm.exit, %bb.i
  %indvars.iv184 = phi i64 [ 0, %_ZN2v88internal6detail20TryParseIntegerIndexItEENS1_16IndexParseResultEPKT_jjm.exit ], [ %indvars.iv.next185, %bb.i ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv184
  %i.be = load i16, ptr %i.bd, align 2
  %i.bf = icmp ugt i16 %i.be, 255
  br i1 %i.bf, label %_ZN2v88internal6detail10IsOnly8BitEPKtj.exit41, label %bb.i

bb.k:                                             ; preds = %bb.i
  %i.bg = tail call noundef i64 @_ZN2v88internal6detail20HashConvertingTo8BitEPKtjmPKm(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %i.bb, ptr noundef nonnull %i.bc) #16
  br label %_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit

_ZN2v88internal6detail10IsOnly8BitEPKtj.exit41:   ; preds = %bb.j
  %i.bh = shl nuw nsw i32 %1, 1
  %i.bi = zext nneg i32 %i.bh to i64              ; 7 uses
  %i.bj = load i64, ptr %i.bc, align 8            ; 2 uses
  %i.bk = xor i64 %i.bj, %i.bb
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bm = load i64, ptr %i.bl, align 8            ; 3 uses
  %i.bn = zext i64 %i.bk to i128
  %i.bo = zext i64 %i.bm to i128                  ; 2 uses
  %i.bp = mul nuw i128 %i.bo, %i.bn               ; 2 uses
  %i.bq = lshr i128 %i.bp, 64
  %i.br = xor i128 %i.bq, %i.bp
  %i.bs = trunc i128 %i.br to i64
  %i.bt = xor i64 %i.bi, %i.bs
  %i.bu = xor i64 %i.bt, %i.bb                    ; 3 uses
  %i.bv = icmp ult i32 %1, 9
  br i1 %i.bv, label %bb.l, label %.thread, !prof !10

bb.l:                                             ; preds = %_ZN2v88internal6detail10IsOnly8BitEPKtj.exit41
  %.not146 = icmp eq i32 %1, 1
  br i1 %.not146, label %bb.n, label %bb.m, !prof !12

bb.m:                                             ; preds = %bb.l
  %i.bw = getelementptr i8, ptr %0, i64 %i.bi
  %i.bx = getelementptr i8, ptr %i.bw, i64 -4     ; 2 uses
  %.0.copyload.i = load i32, ptr %0, align 2
  %i.by = zext i32 %.0.copyload.i to i64
  %i.bz = shl nuw i64 %i.by, 32
  %.0.copyload.i42 = load i32, ptr %i.bx, align 1
  %i.ca = zext i32 %.0.copyload.i42 to i64
  %i.cb = or disjoint i64 %i.bz, %i.ca
  %i.cc = and i64 %i.bi, 24
  %i.cd = lshr i64 %i.bi, 3
  %i.ce = lshr exact i64 %i.cc, %i.cd             ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 %i.ce
  %.0.copyload.i43 = load i32, ptr %i.cf, align 1
  %i.cg = zext i32 %.0.copyload.i43 to i64
  %i.ch = shl nuw i64 %i.cg, 32
  %i.ci = sub nsw i64 0, %i.ce
  %i.cj = getelementptr inbounds i8, ptr %i.bx, i64 %i.ci
  %.0.copyload.i44 = load i32, ptr %i.cj, align 1
  %i.ck = zext i32 %.0.copyload.i44 to i64
  %i.cl = or disjoint i64 %i.ch, %i.ck
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i

bb.n:                                             ; preds = %bb.l
  %i.cm = and i16 %i.d, 255
  %i.cn = zext nneg i16 %i.cm to i64
  %i.co = shl nuw i64 %i.cn, 56
  %i.cp = shl nuw nsw i64 %i.i, 32
  %i.cq = or disjoint i64 %i.cp, %i.co
  %i.cr = getelementptr i8, ptr %0, i64 %i.bi
  %i.cs = getelementptr i8, ptr %i.cr, i64 -1
  %i.ct = load i8, ptr %i.cs, align 1
  %i.cu = zext i8 %i.ct to i64
  %i.cv = or disjoint i64 %i.cq, %i.cu
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i

.thread:                                          ; preds = %_ZN2v88internal6detail10IsOnly8BitEPKtj.exit41
  %.0.copyload.i51 = load i64, ptr %0, align 2
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cx = load i64, ptr %i.cw, align 8
  %i.cy = xor i64 %i.cx, %.0.copyload.i51
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0.copyload.i52 = load i64, ptr %i.cz, align 2
  %i.da = xor i64 %i.bm, %.0.copyload.i52
  %i.db = xor i64 %i.da, %i.bu
  %i.dc = zext i64 %i.cy to i128
  %i.dd = zext i64 %i.db to i128
  %i.de = mul nuw i128 %i.dd, %i.dc               ; 2 uses
  %i.df = lshr i128 %i.de, 64
  %i.dg = xor i128 %i.df, %i.de
  %i.dh = trunc i128 %i.dg to i64
  %i.di = getelementptr i8, ptr %0, i64 %i.bi     ; 2 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 -16
  %.0.copyload.i55 = load i64, ptr %i.dj, align 1
  %i.dk = getelementptr i8, ptr %i.di, i64 -8
  %.0.copyload.i56 = load i64, ptr %i.dk, align 1
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i

_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i:  ; preds = %.thread, %bb.n, %bb.m
  %.0108 = phi i64 [ %i.cl, %bb.m ], [ %.0.copyload.i56, %.thread ], [ 0, %bb.n ]
  %.0107 = phi i64 [ %i.cb, %bb.m ], [ %.0.copyload.i55, %.thread ], [ %i.cv, %bb.n ]
  %.3.i.i = phi i64 [ %i.bu, %bb.m ], [ %i.dh, %.thread ], [ %i.bu, %bb.n ]
  %i.dl = xor i64 %.0107, %i.bm
  %i.dm = xor i64 %.3.i.i, %.0108
  %i.dn = zext i64 %i.dl to i128
  %i.do = zext i64 %i.dm to i128
  %i.dp = mul nuw i128 %i.do, %i.dn               ; 2 uses
  %i.dq = trunc i128 %i.dp to i64
  %i.dr = lshr i128 %i.dp, 64
  %i.ds = xor i64 %i.bi, %i.dq
  %i.dt = xor i64 %i.ds, %i.bj
  %i.du = zext i64 %i.dt to i128
  %i.dv = xor i128 %i.dr, %i.bo
  %i.dw = mul nuw i128 %i.dv, %i.du               ; 2 uses
  %i.dx = lshr i128 %i.dw, 64
  %i.dy = xor i128 %i.dx, %i.dw
  %i.dz = trunc i128 %i.dy to i64
  br label %_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit

_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit: ; preds = %bb.k, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i
  %.0.i = phi i64 [ %i.bg, %bb.k ], [ %i.dz, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i ]
  %i.ea = trunc i64 %.0.i to i32
  %i.eb = and i32 %i.ea, 1073741823               ; 2 uses
  %i.ec = icmp eq i32 %i.eb, 0
  %i.ed = shl nuw i32 %i.eb, 2
  %i.ee = select i1 %i.ec, i32 108, i32 %i.ed     ; 3 uses
  %i.ef = icmp ult i32 %i.ee, 536870912
  %i.eg = or i32 %i.ee, 536870912
  %spec.select = select i1 %i.ef, i32 %i.eg, i32 %i.ee
  br label %bb.z

bb.o:                                             ; preds = %bb.b
  %i.eh = icmp ugt i32 %1, 16383
  br i1 %i.eh, label %bb.p, label %.lr.ph167.preheader

bb.p:                                             ; preds = %bb.o
  %i.ei = shl i32 %1, 2
  %i.ej = or disjoint i32 %i.ei, 2
  br label %bb.z

.lr.ph167.preheader:                              ; preds = %.lr.ph, %.lr.ph162, %._crit_edge163, %bb.o, %bb.c, %bb.e
  %i.ek = load i64, ptr %2, align 8               ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %wide.trip.count192 = zext i32 %1 to i64
  br label %.lr.ph167

bb.q:                                             ; preds = %.lr.ph167
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1 ; 2 uses
  %exitcond193.not = icmp eq i64 %indvars.iv.next190, %wide.trip.count192
  br i1 %exitcond193.not, label %._crit_edge168, label %.lr.ph167, !llvm.loop !47

.lr.ph167:                                        ; preds = %.lr.ph167.preheader, %bb.q
  %indvars.iv189 = phi i64 [ 0, %.lr.ph167.preheader ], [ %indvars.iv.next190, %bb.q ] ; 2 uses
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv189
  %i.en = load i16, ptr %i.em, align 2
  %i.eo = icmp ugt i16 %i.en, 255
  br i1 %i.eo, label %_ZN2v88internal6detail10IsOnly8BitEPKtj.exit, label %bb.q

._crit_edge168:                                   ; preds = %bb.q, %.thread133.thread206
  %i.ep = phi ptr [ %i.b, %.thread133.thread206 ], [ %i.el, %bb.q ]
  %i.eq = phi i64 [ %i.a, %.thread133.thread206 ], [ %i.ek, %bb.q ]
  %i.er = tail call noundef i64 @_ZN2v88internal6detail20HashConvertingTo8BitEPKtjmPKm(ptr noundef %0, i32 noundef %1, i64 noundef %i.eq, ptr noundef nonnull %i.ep) #16
  br label %_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit37

_ZN2v88internal6detail10IsOnly8BitEPKtj.exit:     ; preds = %.lr.ph167
  %i.es = shl i32 %1, 1                           ; 5 uses
  %i.et = zext i32 %i.es to i64                   ; 9 uses
  %i.eu = load i64, ptr %i.el, align 8            ; 3 uses
  %i.ev = xor i64 %i.eu, %i.ek
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ex = load i64, ptr %i.ew, align 8            ; 4 uses
  %i.ey = zext i64 %i.ev to i128
  %i.ez = zext i64 %i.ex to i128                  ; 2 uses
  %i.fa = mul nuw i128 %i.ez, %i.ey               ; 2 uses
  %i.fb = lshr i128 %i.fa, 64
  %i.fc = xor i128 %i.fb, %i.fa
  %i.fd = trunc i128 %i.fc to i64
  %i.fe = xor i64 %i.et, %i.fd
  %i.ff = xor i64 %i.fe, %i.ek                    ; 7 uses
  %i.fg = icmp ult i32 %i.es, 17
  br i1 %i.fg, label %bb.r, label %bb.v, !prof !10

bb.r:                                             ; preds = %_ZN2v88internal6detail10IsOnly8BitEPKtj.exit
  %i.fh = icmp samesign ugt i32 %i.es, 3
  br i1 %i.fh, label %bb.s, label %bb.t, !prof !10

bb.s:                                             ; preds = %bb.r
  %i.fi = getelementptr i8, ptr %0, i64 %i.et
  %i.fj = getelementptr i8, ptr %i.fi, i64 -4     ; 2 uses
  %.0.copyload.i57 = load i32, ptr %0, align 1
  %i.fk = zext i32 %.0.copyload.i57 to i64
  %i.fl = shl nuw i64 %i.fk, 32
  %.0.copyload.i58 = load i32, ptr %i.fj, align 1
  %i.fm = zext i32 %.0.copyload.i58 to i64
  %i.fn = or disjoint i64 %i.fl, %i.fm
  %i.fo = and i64 %i.et, 24
  %i.fp = lshr i64 %i.et, 3
  %i.fq = lshr exact i64 %i.fo, %i.fp             ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 %i.fq
  %.0.copyload.i59 = load i32, ptr %i.fr, align 1
  %i.fs = zext i32 %.0.copyload.i59 to i64
  %i.ft = shl nuw i64 %i.fs, 32
  %i.fu = sub nsw i64 0, %i.fq
  %i.fv = getelementptr inbounds i8, ptr %i.fj, i64 %i.fu
  %.0.copyload.i60 = load i32, ptr %i.fv, align 1
  %i.fw = zext i32 %.0.copyload.i60 to i64
  %i.fx = or disjoint i64 %i.ft, %i.fw
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i28

bb.t:                                             ; preds = %bb.r
  %.not.i.i36 = icmp eq i32 %i.es, 0
  br i1 %.not.i.i36, label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i28, label %bb.u, !prof !12

bb.u:                                             ; preds = %bb.t
  %i.fy = load i8, ptr %0, align 1
  %i.fz = zext i8 %i.fy to i64
  %i.ga = shl nuw i64 %i.fz, 56
  %i.gb = lshr exact i64 %i.et, 1
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1
  %i.ge = zext i8 %i.gd to i64
  %i.gf = shl nuw nsw i64 %i.ge, 32
  %i.gg = or disjoint i64 %i.gf, %i.ga
  %i.gh = getelementptr i8, ptr %0, i64 %i.et
  %i.gi = getelementptr i8, ptr %i.gh, i64 -1
  %i.gj = load i8, ptr %i.gi, align 1
  %i.gk = zext i8 %i.gj to i64
  %i.gl = or disjoint i64 %i.gg, %i.gk
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i28

bb.v:                                             ; preds = %_ZN2v88internal6detail10IsOnly8BitEPKtj.exit
  %i.gm = icmp ugt i32 %i.es, 48
  %i.gn = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.go = load i64, ptr %i.gn, align 8            ; 3 uses
  br i1 %i.gm, label %.preheader, label %.thread137, !prof !12

.preheader:                                       ; preds = %bb.v, %.preheader
  %.065.i.i31 = phi i64 [ %i.gx, %.preheader ], [ %i.ff, %bb.v ]
  %.063.i.i32 = phi ptr [ %i.hs, %.preheader ], [ %0, %bb.v ] ; 7 uses
  %.062.i.i33 = phi i64 [ %i.ht, %.preheader ], [ %i.et, %bb.v ]
  %.061.i.i34 = phi i64 [ %i.hh, %.preheader ], [ %i.ff, %bb.v ]
  %.0.i.i35 = phi i64 [ %i.hr, %.preheader ], [ %i.ff, %bb.v ]
  %.0.copyload.i61 = load i64, ptr %.063.i.i32, align 1
  %i.gp = xor i64 %.0.copyload.i61, %i.eu
  %i.gq = getelementptr inbounds nuw i8, ptr %.063.i.i32, i64 8
  %.0.copyload.i62 = load i64, ptr %i.gq, align 1
  %i.gr = xor i64 %.0.copyload.i62, %.065.i.i31
  %i.gs = zext i64 %i.gp to i128
  %i.gt = zext i64 %i.gr to i128
  %i.gu = mul nuw i128 %i.gt, %i.gs               ; 2 uses
  %i.gv = lshr i128 %i.gu, 64
  %i.gw = xor i128 %i.gv, %i.gu
  %i.gx = trunc i128 %i.gw to i64                 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.063.i.i32, i64 16
  %.0.copyload.i63 = load i64, ptr %i.gy, align 1
  %i.gz = xor i64 %.0.copyload.i63, %i.ex
  %i.ha = getelementptr inbounds nuw i8, ptr %.063.i.i32, i64 24
  %.0.copyload.i64 = load i64, ptr %i.ha, align 1
  %i.hb = xor i64 %.0.copyload.i64, %.061.i.i34
  %i.hc = zext i64 %i.gz to i128
  %i.hd = zext i64 %i.hb to i128
  %i.he = mul nuw i128 %i.hd, %i.hc               ; 2 uses
  %i.hf = lshr i128 %i.he, 64
  %i.hg = xor i128 %i.hf, %i.he
  %i.hh = trunc i128 %i.hg to i64                 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.063.i.i32, i64 32
  %.0.copyload.i65 = load i64, ptr %i.hi, align 1
  %i.hj = xor i64 %i.go, %.0.copyload.i65
  %i.hk = getelementptr inbounds nuw i8, ptr %.063.i.i32, i64 40
  %.0.copyload.i66 = load i64, ptr %i.hk, align 1
  %i.hl = xor i64 %.0.copyload.i66, %.0.i.i35
  %i.hm = zext i64 %i.hj to i128
  %i.hn = zext i64 %i.hl to i128
  %i.ho = mul nuw i128 %i.hn, %i.hm               ; 2 uses
  %i.hp = lshr i128 %i.ho, 64
  %i.hq = xor i128 %i.hp, %i.ho
  %i.hr = trunc i128 %i.hq to i64                 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.063.i.i32, i64 48 ; 3 uses
  %i.ht = add i64 %.062.i.i33, -48                ; 5 uses
  %i.hu = icmp ugt i64 %i.ht, 47
  br i1 %i.hu, label %.preheader, label %bb.w, !prof !10, !llvm.loop !2

bb.w:                                             ; preds = %.preheader
  %i.hv = xor i64 %i.hh, %i.gx
  %i.hw = xor i64 %i.hv, %i.hr                    ; 2 uses
  %i.hx = icmp samesign ugt i64 %i.ht, 16
  br i1 %i.hx, label %.thread137, label %bb.y

.thread137:                                       ; preds = %bb.v, %bb.w
  %.1.i.i26145 = phi i64 [ %i.ht, %bb.w ], [ %i.et, %bb.v ] ; 3 uses
  %.164.i.i25143 = phi ptr [ %i.hs, %bb.w ], [ %0, %bb.v ] ; 6 uses
  %.166.i.i24141 = phi i64 [ %i.hw, %bb.w ], [ %i.ff, %bb.v ]
  %.0.copyload.i67 = load i64, ptr %.164.i.i25143, align 1
  %i.hy = xor i64 %i.go, %.0.copyload.i67
  %i.hz = getelementptr inbounds nuw i8, ptr %.164.i.i25143, i64 8
  %.0.copyload.i68 = load i64, ptr %i.hz, align 1
  %i.ia = xor i64 %.166.i.i24141, %.0.copyload.i68
  %i.ib = xor i64 %i.ia, %i.ex
  %i.ic = zext i64 %i.hy to i128
  %i.id = zext i64 %i.ib to i128
  %i.ie = mul nuw i128 %i.id, %i.ic               ; 2 uses
  %i.if = lshr i128 %i.ie, 64
  %i.ig = xor i128 %i.if, %i.ie
  %i.ih = trunc i128 %i.ig to i64                 ; 2 uses
  %i.ii = icmp samesign ugt i64 %.1.i.i26145, 32
  br i1 %i.ii, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.thread137
  %i.ij = getelementptr inbounds nuw i8, ptr %.164.i.i25143, i64 16
  %.0.copyload.i69 = load i64, ptr %i.ij, align 1
  %i.ik = xor i64 %.0.copyload.i69, %i.go
  %i.il = getelementptr inbounds nuw i8, ptr %.164.i.i25143, i64 24
  %.0.copyload.i70 = load i64, ptr %i.il, align 1
  %i.im = xor i64 %.0.copyload.i70, %i.ih
  %i.in = zext i64 %i.ik to i128
  %i.io = zext i64 %i.im to i128
  %i.ip = mul nuw i128 %i.io, %i.in               ; 2 uses
  %i.iq = lshr i128 %i.ip, 64
  %i.ir = xor i128 %i.iq, %i.ip
  %i.is = trunc i128 %i.ir to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.thread137, %bb.w
  %.1.i.i26144 = phi i64 [ %.1.i.i26145, %bb.x ], [ %.1.i.i26145, %.thread137 ], [ %i.ht, %bb.w ]
  %.164.i.i25142 = phi ptr [ %.164.i.i25143, %bb.x ], [ %.164.i.i25143, %.thread137 ], [ %i.hs, %bb.w ]
  %.2.i.i27 = phi i64 [ %i.is, %bb.x ], [ %i.ih, %.thread137 ], [ %i.hw, %bb.w ]
  %i.it = getelementptr i8, ptr %.164.i.i25142, i64 %.1.i.i26144 ; 2 uses
  %i.iu = getelementptr i8, ptr %i.it, i64 -16
  %.0.copyload.i71 = load i64, ptr %i.iu, align 1
  %i.iv = getelementptr i8, ptr %i.it, i64 -8
  %.0.copyload.i72 = load i64, ptr %i.iv, align 1
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i28

_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i28: ; preds = %bb.t, %bb.y, %bb.u, %bb.s
  %.0106 = phi i64 [ %i.fx, %bb.s ], [ %.0.copyload.i72, %bb.y ], [ 0, %bb.u ], [ 0, %bb.t ]
  %.0105 = phi i64 [ %i.fn, %bb.s ], [ %.0.copyload.i71, %bb.y ], [ %i.gl, %bb.u ], [ 0, %bb.t ]
  %.3.i.i29 = phi i64 [ %i.ff, %bb.s ], [ %.2.i.i27, %bb.y ], [ %i.ff, %bb.u ], [ %i.ff, %bb.t ]
  %i.iw = xor i64 %.0105, %i.ex
  %i.ix = xor i64 %.3.i.i29, %.0106
  %i.iy = zext i64 %i.iw to i128
  %i.iz = zext i64 %i.ix to i128
  %i.ja = mul nuw i128 %i.iz, %i.iy               ; 2 uses
  %i.jb = trunc i128 %i.ja to i64
  %i.jc = lshr i128 %i.ja, 64
  %i.jd = xor i64 %i.et, %i.jb
  %i.je = xor i64 %i.jd, %i.eu
  %i.jf = zext i64 %i.je to i128
  %i.jg = xor i128 %i.jc, %i.ez
  %i.jh = mul nuw i128 %i.jg, %i.jf               ; 2 uses
  %i.ji = lshr i128 %i.jh, 64
  %i.jj = xor i128 %i.ji, %i.jh
  %i.jk = trunc i128 %i.jj to i64
  br label %_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit37

_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit37: ; preds = %._crit_edge168, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i28
  %.0.i30 = phi i64 [ %i.er, %._crit_edge168 ], [ %i.jk, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i28 ]
  %i.jl = trunc i64 %.0.i30 to i32
  %i.jm = and i32 %i.jl, 1073741823               ; 2 uses
  %i.jn = icmp eq i32 %i.jm, 0
  %i.jo = shl nuw i32 %i.jm, 2
  %i.jp = or disjoint i32 %i.jo, 2
  %i.jq = select i1 %i.jn, i32 110, i32 %i.jp
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge.thread, %_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit, %_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit37, %bb.p
  %.1 = phi i32 [ %i.jq, %_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit37 ], [ %i.ej, %bb.p ], [ %spec.select, %_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit ], [ %i.ar, %._crit_edge.thread ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal15AstValueFactory9GetStringENS0_6TaggedINS0_6StringEEERKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::PerThreadAssertScopeEmpty", align 1 ; 4 uses
  %4 = alloca %"class.v8::internal::String::FlatContent", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.a = add i64 %1, -1
  %i.b = inttoptr i64 %i.a to ptr                 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !noalias !60
  %i.e = load atomic volatile i64, ptr %i.b acquire, align 8, !noalias !61
  %i.f = add i64 %i.e, 11
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i16, ptr %i.g monotonic, align 2, !noalias !61
  %i.i = and i16 %i.h, 15
  switch i16 %i.i, label %bb.l [
    i16 8, label %bb.b
    i16 0, label %bb.c
    i16 9, label %bb.m
    i16 1, label %bb.m
    i16 10, label %bb.d
    i16 2, label %bb.h
    i16 11, label %bb.m
    i16 3, label %bb.m
    i16 13, label %bb.m
    i16 5, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noalias !62
  %i.n = inttoptr i64 %i.m to ptr                 ; 6 uses
  %i.o = load atomic volatile i64, ptr %i.b monotonic, align 8, !noalias !62
  %i.p = add i64 %i.o, 11
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i16, ptr %i.q monotonic, align 2, !noalias !62
  %i.s = and i16 %i.r, 16
  %.not.i = icmp eq i16 %i.s, 0
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.n, align 8, !noalias !62
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !noalias !62
  %i.w = tail call noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.n) #16, !noalias !62, !inline_history !56
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #16, !noalias !62
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !noalias !62
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.z = load ptr, ptr %i.n, align 8, !noalias !62
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !62
  %i.ac = tail call noundef ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #16, !noalias !62, !inline_history !56
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.h:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !63
  %i.af = inttoptr i64 %i.ae to ptr               ; 6 uses
  %i.ag = load atomic volatile i64, ptr %i.b monotonic, align 8, !noalias !63
  %i.ah = add i64 %i.ag, 11
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load atomic volatile i16, ptr %i.ai monotonic, align 2, !noalias !63
  %i.ak = and i16 %i.aj, 16
  %.not.i5 = icmp eq i16 %i.ak, 0
  br i1 %.not.i5, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = load ptr, ptr %i.af, align 8, !noalias !63
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !noalias !63
  %i.ao = tail call noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.af) #16, !noalias !63, !inline_history !59
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #16, !noalias !63
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !63
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.ar = load ptr, ptr %i.af, align 8, !noalias !63
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %i.at = load ptr, ptr %i.as, align 8, !noalias !63
  %i.au = tail call noundef ptr %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #16, !noalias !63, !inline_history !59
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.l:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1) #17, !noalias !64
  unreachable

_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit: ; preds = %bb.j, %bb.f, %bb.k, %bb.g, %bb.c, %bb.b
  %.sroa.010.sroa.8.0.ph = phi i32 [ 2, %bb.j ], [ 1, %bb.f ], [ 2, %bb.k ], [ 1, %bb.g ], [ 2, %bb.c ], [ 1, %bb.b ] ; 2 uses
  %.sroa.010.sroa.0.0.ph = phi ptr [ %i.aq, %bb.j ], [ %i.y, %bb.f ], [ %i.au, %bb.k ], [ %i.ac, %bb.g ], [ %i.k, %bb.c ], [ %i.j, %bb.b ]
  store ptr %.sroa.010.sroa.0.0.ph, ptr %4, align 8
  %.sroa.010.sroa.7.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.d, ptr %.sroa.010.sroa.7.0..sroa_idx48, align 8
  %.sroa.010.sroa.8.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %.sroa.010.sroa.8.0.ph, ptr %.sroa.010.sroa.8.0..sroa_idx54, align 4
  %.sroa.010.sroa.9.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %3, ptr %.sroa.010.sroa.9.0..sroa_idx60, align 8
  br label %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.m:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  call void @_ZN2v88internal6String18SlowGetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::String::FlatContent") align 8 %4, ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %2) #16
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 12
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit

_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit: ; preds = %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit, %bb.m
  %i.av = phi i32 [ %.sroa.010.sroa.8.0.ph, %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit ], [ %.pre, %bb.m ]
  %i.aw = icmp eq i32 %i.av, 1
  br i1 %i.aw, label %bb.n, label %bb.r

bb.n:                                             ; preds = %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit
  %i.ax = load ptr, ptr %4, align 8               ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.az = load i32, ptr %i.ay, align 8            ; 4 uses
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = icmp sgt i32 %i.az, -1
  br i1 %i.bb, label %_ZNK2v84base6VectorIKhE6lengthEv.exit.i, label %bb.o, !prof !10

bb.o:                                             ; preds = %bb.n
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #17
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit.i:          ; preds = %bb.n
  %i.bc = icmp eq i32 %i.az, 1
  br i1 %i.bc, label %bb.p, label %_ZNK2v84base6VectorIKhE6lengthEv.exit8.i

bb.p:                                             ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit.i
  %i.bd = load i8, ptr %i.ax, align 1             ; 2 uses
  %i.be = icmp sgt i8 %i.bd, -1
  br i1 %i.be, label %bb.q, label %_ZNK2v84base6VectorIKhE6lengthEv.exit8.i

bb.q:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 88
  %i.bi = zext nneg i8 %i.bd to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bi
  %i.bk = load ptr, ptr %i.bj, align 8
  br label %_ZN2v88internal15AstValueFactory24GetOneByteStringInternalENS_4base6VectorIKhEE.exit

_ZNK2v84base6VectorIKhE6lengthEv.exit8.i:         ; preds = %bb.p, %_ZNK2v84base6VectorIKhE6lengthEv.exit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.01.0.copyload.i = load ptr, ptr %i.bl, align 8
  %i.bm = call noundef i32 @_ZN2v88internal12StringHasher20HashSequentialStringIhEEjPKT_jNS0_8HashSeedE(ptr noundef %i.ax, i32 noundef %i.az, ptr %.sroa.01.0.copyload.i)
  %i.bn = call noundef ptr @_ZN2v88internal15AstValueFactory9GetStringEjbNS_4base6VectorIKhEE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %i.bm, i1 noundef zeroext true, ptr %i.ax, i64 %i.ba)
  br label %_ZN2v88internal15AstValueFactory24GetOneByteStringInternalENS_4base6VectorIKhEE.exit

bb.r:                                             ; preds = %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bp = load i32, ptr %i.bo, align 8            ; 3 uses
  %i.bq = icmp sgt i32 %i.bp, -1
  br i1 %i.bq, label %_ZN2v88internal15AstValueFactory24GetTwoByteStringInternalENS_4base6VectorIKtEE.exit, label %bb.s, !prof !10

bb.s:                                             ; preds = %bb.r
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #17
  unreachable

_ZN2v88internal15AstValueFactory24GetTwoByteStringInternalENS_4base6VectorIKtEE.exit: ; preds = %bb.r
  %i.br = load ptr, ptr %4, align 8               ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.03.0.copyload.i = load ptr, ptr %i.bs, align 8
  %i.bt = call noundef i32 @_ZN2v88internal12StringHasher20HashSequentialStringItEEjPKT_jNS0_8HashSeedE(ptr noundef %i.br, i32 noundef %i.bp, ptr %.sroa.03.0.copyload.i)
  %i.bu = shl nuw i32 %i.bp, 1
  %i.bv = zext i32 %i.bu to i64
  %i.bw = call noundef ptr @_ZN2v88internal15AstValueFactory9GetStringEjbNS_4base6VectorIKhEE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %i.bt, i1 noundef zeroext false, ptr %i.br, i64 %i.bv)
  br label %_ZN2v88internal15AstValueFactory24GetOneByteStringInternalENS_4base6VectorIKhEE.exit

_ZN2v88internal15AstValueFactory24GetOneByteStringInternalENS_4base6VectorIKhEE.exit: ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit8.i, %bb.q, %_ZN2v88internal15AstValueFactory24GetTwoByteStringInternalENS_4base6VectorIKtEE.exit
  %.0 = phi ptr [ %i.bw, %_ZN2v88internal15AstValueFactory24GetTwoByteStringInternalENS_4base6VectorIKtEE.exit ], [ %i.bn, %_ZNK2v84base6VectorIKhE6lengthEv.exit8.i ], [ %i.bk, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal15AstValueFactory13NewConsStringEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = sub i64 %i.d, %i.f
  %i.h = icmp ult i64 %i.g, 24
  br i1 %i.h, label %bb.b, label %_ZN2v88internal4Zone3NewINS0_13AstConsStringEJEEEPT_DpOT0_.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 noundef 24) #16
  %.pre.i.i = load i64, ptr %i.e, align 8
  br label %_ZN2v88internal4Zone3NewINS0_13AstConsStringEJEEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_13AstConsStringEJEEEPT_DpOT0_.exit: ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ %.pre.i.i, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = add i64 %i.i, 24
  store i64 %i.k, ptr %i.e, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  ret ptr %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal15AstValueFactory13NewConsStringEPKNS0_12AstRawStringE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = sub i64 %i.d, %i.f
  %i.h = icmp ult i64 %i.g, 24
  br i1 %i.h, label %bb.b, label %_ZN2v88internal15AstValueFactory13NewConsStringEv.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 noundef 24) #16
  %.pre.i.i.i = load i64, ptr %i.e, align 8
  br label %_ZN2v88internal15AstValueFactory13NewConsStringEv.exit

_ZN2v88internal15AstValueFactory13NewConsStringEv.exit: ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ %.pre.i.i.i, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.j = inttoptr i64 %i.i to ptr                 ; 3 uses
  %i.k = add i64 %i.i, 24
  store i64 %i.k, ptr %i.e, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = icmp ult i64 %i.m, 2147483648
  br i1 %i.n, label %_ZNK2v88internal12AstRawString7IsEmptyEv.exit.i, label %bb.c, !prof !10

bb.c:                                             ; preds = %_ZN2v88internal15AstValueFactory13NewConsStringEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #17
  unreachable

_ZNK2v88internal12AstRawString7IsEmptyEv.exit.i:  ; preds = %_ZN2v88internal15AstValueFactory13NewConsStringEv.exit
  %i.o = icmp eq i64 %i.m, 0
  br i1 %i.o, label %_ZN2v88internal13AstConsString9AddStringEPNS0_4ZoneEPKNS0_12AstRawStringE.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK2v88internal12AstRawString7IsEmptyEv.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %1, ptr %i.p, align 8
  br label %_ZN2v88internal13AstConsString9AddStringEPNS0_4ZoneEPKNS0_12AstRawStringE.exit

_ZN2v88internal13AstConsString9AddStringEPNS0_4ZoneEPKNS0_12AstRawStringE.exit: ; preds = %_ZNK2v88internal12AstRawString7IsEmptyEv.exit.i, %bb.d
  ret ptr %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal15AstValueFactory13NewConsStringEPKNS0_12AstRawStringES4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = sub i64 %i.d, %i.f
  %i.h = icmp ult i64 %i.g, 24
  br i1 %i.h, label %bb.b, label %_ZN2v88internal15AstValueFactory13NewConsStringEv.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 noundef 24) #16
  %.pre.i.i.i = load i64, ptr %i.e, align 8
  br label %_ZN2v88internal15AstValueFactory13NewConsStringEv.exit

_ZN2v88internal15AstValueFactory13NewConsStringEv.exit: ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ %.pre.i.i.i, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.j = inttoptr i64 %i.i to ptr                 ; 5 uses
  %i.k = add i64 %i.i, 24
  store i64 %i.k, ptr %i.e, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = icmp ult i64 %i.m, 2147483648
  br i1 %i.n, label %_ZNK2v88internal12AstRawString7IsEmptyEv.exit.i, label %bb.c, !prof !10

bb.c:                                             ; preds = %_ZN2v88internal15AstValueFactory13NewConsStringEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #17
  unreachable

_ZNK2v88internal12AstRawString7IsEmptyEv.exit.i:  ; preds = %_ZN2v88internal15AstValueFactory13NewConsStringEv.exit
  %i.o = icmp eq i64 %i.m, 0                      ; 2 uses
  br i1 %i.o, label %_ZN2v88internal13AstConsString9AddStringEPNS0_4ZoneEPKNS0_12AstRawStringE.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK2v88internal12AstRawString7IsEmptyEv.exit.i
end_hunk_2
begin_hunk_3_@_ZN2v88internal6String18SlowGetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #9

declare void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal19SequentialStringKeyIhED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #20
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal14StringTableKeyD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal19SequentialStringKeyItED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #20
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE6ResizeEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = shl i32 %i.c, 1                          ; 2 uses
  %i.g = zext i32 %i.f to i64
  %i.h = shl nuw nsw i64 %i.g, 4
  %calloc.i = tail call ptr @calloc(i64 1, i64 %i.h) ; 2 uses
  store ptr %calloc.i, ptr %0, align 8
  %i.i = icmp eq ptr %calloc.i, null
  br i1 %i.i, label %bb.b, label %_ZN2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE10InitializeEj.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5) #17
  unreachable

_ZN2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE10InitializeEj.exit: ; preds = %bb.a
  store i32 %i.f, ptr %i.b, align 8
  store i32 0, ptr %i.d, align 4
  %.not14 = icmp eq i32 %i.e, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %_ZN2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE10InitializeEj.exit
  tail call void @free(ptr noundef %i.a) #16
  ret void

.lr.ph:                                           ; preds = %_ZN2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE10InitializeEj.exit, %bb.e
  %.016 = phi ptr [ %i.bx, %bb.e ], [ %i.a, %_ZN2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE10InitializeEj.exit ] ; 5 uses
  %.01315 = phi i32 [ %.1, %bb.e ], [ %i.e, %_ZN2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE10InitializeEj.exit ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.016, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8              ; 3 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %i.m = and i32 %i.k, 2147483647                 ; 3 uses
  %i.n = load i32, ptr %i.b, align 8              ; 2 uses
  %i.o = add i32 %i.n, 2147483647
  %i.p = and i32 %i.o, %i.m
  %i.q = zext nneg i32 %i.p to i64                ; 2 uses
  %i.r = load ptr, ptr %0, align 8                ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.q ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i32, ptr %i.t, align 8              ; 2 uses
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph.i, label %_ZNK2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE5ProbeIS5_EEPNS0_20TemplateHashMapEntryIS5_S6_EERKT_j.exit

.lr.ph.i:                                         ; preds = %bb.c, %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i
  %i.w = phi i32 [ %i.ae, %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i ], [ %i.n, %bb.c ]
  %i.x = phi i32 [ %i.al, %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i ], [ %i.u, %bb.c ]
  %i.y = phi ptr [ %i.aj, %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i ], [ %i.s, %bb.c ] ; 2 uses
  %.013.i = phi i64 [ %i.ai, %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i ], [ %i.q, %bb.c ]
  %i.z = and i32 %i.x, 2147483647
  %i.aa = icmp eq i32 %i.m, %i.z
  br i1 %i.aa, label %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.i, label %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i

_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.i: ; preds = %.lr.ph.i
  %i.ab = load ptr, ptr %i.y, align 8
  %i.ac = load ptr, ptr %.016, align 8
  %i.ad = tail call noundef zeroext i1 @_ZN2v88internal12AstRawString5EqualEPKS1_S3_(ptr noundef %i.ac, ptr noundef %i.ab)
  br i1 %i.ad, label %_ZNK2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE5ProbeIS5_EEPNS0_20TemplateHashMapEntryIS5_S6_EERKT_j.exit.loopexit, label %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit._ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread_crit_edge.i

_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit._ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread_crit_edge.i: ; preds = %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.i
  %.pre.i = load i32, ptr %i.b, align 8
  br label %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i

_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i: ; preds = %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit._ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread_crit_edge.i, %.lr.ph.i
  %i.ae = phi i32 [ %.pre.i, %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit._ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread_crit_edge.i ], [ %i.w, %.lr.ph.i ] ; 2 uses
  %i.af = add nsw i64 %.013.i, 1
  %i.ag = add i32 %i.ae, -1
  %i.ah = zext i32 %i.ag to i64
  %i.ai = and i64 %i.af, %i.ah                    ; 2 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.ai ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i32, ptr %i.ak, align 8            ; 2 uses
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph.i, label %_ZNK2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE5ProbeIS5_EEPNS0_20TemplateHashMapEntryIS5_S6_EERKT_j.exit.loopexit, !llvm.loop !0

_ZNK2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE5ProbeIS5_EEPNS0_20TemplateHashMapEntryIS5_S6_EERKT_j.exit.loopexit: ; preds = %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i, %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.i
  %.lcssa.i.ph = phi ptr [ %i.aj, %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i ], [ %i.y, %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.i ]
  %.pre = load i32, ptr %i.j, align 8             ; 2 uses
  %.pre19 = and i32 %.pre, 2147483647
  br label %_ZNK2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE5ProbeIS5_EEPNS0_20TemplateHashMapEntryIS5_S6_EERKT_j.exit

_ZNK2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE5ProbeIS5_EEPNS0_20TemplateHashMapEntryIS5_S6_EERKT_j.exit: ; preds = %_ZNK2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE5ProbeIS5_EEPNS0_20TemplateHashMapEntryIS5_S6_EERKT_j.exit.loopexit, %bb.c
  %.pre-phi = phi i32 [ %.pre19, %_ZNK2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE5ProbeIS5_EEPNS0_20TemplateHashMapEntryIS5_S6_EERKT_j.exit.loopexit ], [ %i.m, %bb.c ] ; 2 uses
  %i.an = phi i32 [ %.pre, %_ZNK2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE5ProbeIS5_EEPNS0_20TemplateHashMapEntryIS5_S6_EERKT_j.exit.loopexit ], [ %i.k, %bb.c ]
  %.lcssa.i = phi ptr [ %.lcssa.i.ph, %_ZNK2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE5ProbeIS5_EEPNS0_20TemplateHashMapEntryIS5_S6_EERKT_j.exit.loopexit ], [ %i.s, %bb.c ] ; 2 uses
  %i.ao = load ptr, ptr %.016, align 8
  store ptr %i.ao, ptr %.lcssa.i, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 8
  %i.aq = or i32 %i.an, -2147483648
  store i32 %i.aq, ptr %i.ap, align 8
  %i.ar = load i32, ptr %i.d, align 4
  %i.as = add i32 %i.ar, 1                        ; 3 uses
  store i32 %i.as, ptr %i.d, align 4
  %i.at = lshr i32 %i.as, 2
  %i.au = add i32 %i.at, %i.as
  %i.av = load i32, ptr %i.b, align 8
  %.not.i = icmp ult i32 %i.au, %i.av
  br i1 %.not.i, label %_ZN2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE14FillEmptyEntryEPNS0_20TemplateHashMapEntryIS5_S6_EERKS5_RKS6_j.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE5ProbeIS5_EEPNS0_20TemplateHashMapEntryIS5_S6_EERKT_j.exit
  tail call void @_ZN2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE6ResizeEv(ptr noundef nonnull align 8 dereferenceable(16) %0), !inline_history !1
  %i.aw = load i32, ptr %i.b, align 8             ; 2 uses
  %i.ax = add i32 %i.aw, 2147483647
  %i.ay = and i32 %i.ax, %.pre-phi
  %i.az = zext nneg i32 %i.ay to i64              ; 2 uses
  %i.ba = load ptr, ptr %0, align 8               ; 2 uses
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %i.az ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load i32, ptr %i.bc, align 8            ; 2 uses
  %i.be = icmp slt i32 %i.bd, 0
  br i1 %i.be, label %.lr.ph.i.i, label %_ZN2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE14FillEmptyEntryEPNS0_20TemplateHashMapEntryIS5_S6_EERKS5_RKS6_j.exit

.lr.ph.i.i:                                       ; preds = %bb.d, %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i.i
  %i.bf = phi i32 [ %i.bn, %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i.i ], [ %i.aw, %bb.d ]
  %i.bg = phi i32 [ %i.bu, %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i.i ], [ %i.bd, %bb.d ]
  %i.bh = phi ptr [ %i.bs, %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i.i ], [ %i.bb, %bb.d ]
  %.013.i.i = phi i64 [ %i.br, %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i.i ], [ %i.az, %bb.d ]
  %i.bi = and i32 %i.bg, 2147483647
  %i.bj = icmp eq i32 %.pre-phi, %i.bi
  br i1 %i.bj, label %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.i.i, label %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i.i

_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.bk = load ptr, ptr %i.bh, align 8
  %i.bl = load ptr, ptr %.016, align 8
  %i.bm = tail call noundef zeroext i1 @_ZN2v88internal12AstRawString5EqualEPKS1_S3_(ptr noundef %i.bl, ptr noundef %i.bk), !inline_history !1
  br i1 %i.bm, label %_ZN2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE14FillEmptyEntryEPNS0_20TemplateHashMapEntryIS5_S6_EERKS5_RKS6_j.exit, label %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit._ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread_crit_edge.i.i

_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit._ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread_crit_edge.i.i: ; preds = %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.i.i
  %.pre.i.i = load i32, ptr %i.b, align 8
  br label %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i.i

_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i.i: ; preds = %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit._ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread_crit_edge.i.i, %.lr.ph.i.i
  %i.bn = phi i32 [ %.pre.i.i, %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit._ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread_crit_edge.i.i ], [ %i.bf, %.lr.ph.i.i ] ; 2 uses
  %i.bo = add nsw i64 %.013.i.i, 1
  %i.bp = add i32 %i.bn, -1
  %i.bq = zext i32 %i.bp to i64
  %i.br = and i64 %i.bo, %i.bq                    ; 2 uses
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %i.br ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load i32, ptr %i.bt, align 8            ; 2 uses
  %i.bv = icmp slt i32 %i.bu, 0
  br i1 %i.bv, label %.lr.ph.i.i, label %_ZN2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE14FillEmptyEntryEPNS0_20TemplateHashMapEntryIS5_S6_EERKS5_RKS6_j.exit, !llvm.loop !0

_ZN2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE14FillEmptyEntryEPNS0_20TemplateHashMapEntryIS5_S6_EERKS5_RKS6_j.exit: ; preds = %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.i.i, %_ZNK2v88internal22AstRawStringMapMatcherclEjjPKNS0_12AstRawStringES4_.exit.thread.i.i, %bb.d, %_ZNK2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE5ProbeIS5_EEPNS0_20TemplateHashMapEntryIS5_S6_EERKT_j.exit
  %i.bw = add i32 %.01315, -1
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZN2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE14FillEmptyEntryEPNS0_20TemplateHashMapEntryIS5_S6_EERKS5_RKS6_j.exit
  %.1 = phi i32 [ %i.bw, %_ZN2v84base19TemplateHashMapImplIPKNS_8internal12AstRawStringENS0_14NoHashMapValueENS2_22AstRawStringMapMatcherENS0_23DefaultAllocationPolicyEE14FillEmptyEntryEPNS0_20TemplateHashMapEntryIS5_S6_EERKS5_RKS6_j.exit ], [ %.01315, %.lr.ph ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.016, i64 16
  %.not = icmp eq i32 %.1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !65
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #12

declare noundef i64 @_ZN2v88internal6detail20HashConvertingTo8BitEPKtjmPKm(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #15

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { builtin nounwind allocsize(0) }
attributes #20 = { builtin nounwind }

!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !{!0, !11}
!1 = distinct !{null}
!2 = distinct !{!2, !11}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!8 = !{i8 0, i8 2}
!9 = !{}
!10 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !"LVerDomain"}
!19 = distinct !{!19, !18}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, !11, !26, !27}
!22 = distinct !{!22, !11, !26, !27}
!23 = distinct !{!23, !11, !26}
!24 = !{!19}
!25 = !{!20}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
!28 = !{!"branch_weights", i32 4, i32 12}
!29 = distinct !{!29, !11}
!30 = distinct !{!30, !11}
!31 = distinct !{!31, !11}
!32 = distinct !{!32, !11}
!33 = distinct !{!33, !11}
!34 = distinct !{!34, !11}
!35 = distinct !{!35, !11}
!36 = distinct !{!36, !11}
!37 = distinct !{!37, !11}
!38 = distinct !{!38, !11}
!39 = !{!"branch_weights", !"expected", i32 2145332246, i32 2151402}
!40 = !{!"branch_weights", !"expected", i32 2145331167, i32 2152481}
!41 = distinct !{!41, !11}
!42 = distinct !{!42, !11}
!43 = distinct !{!43, !11}
!44 = distinct !{!44, !11}
!45 = distinct !{!45, !11}
!46 = distinct !{!46, !11}
!47 = distinct !{!47, !11}
!48 = distinct !{!48, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE"}
!49 = distinct !{!49, !48, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE: argument 0"}
!50 = distinct !{!50, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_"}
!51 = distinct !{!51, !50, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_: argument 0"}
!52 = distinct !{!52, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_"}
!53 = distinct !{!53, !52, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_: argument 0"}
!54 = distinct !{!54, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_"}
!55 = distinct !{!55, !54, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_: argument 0"}
!56 = distinct !{null}
!57 = distinct !{!57, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_"}
!58 = distinct !{!58, !57, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_: argument 0"}
!59 = distinct !{null}
!60 = !{!49}
!61 = !{!51, !49}
!62 = !{!55, !53, !49}
!63 = !{!58, !53, !49}
!64 = !{!53, !49}
!65 = distinct !{!65, !11}
end_hunk_3
