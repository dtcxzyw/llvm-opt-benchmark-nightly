inline.NumInlined: 11
begin_hunk_0_@mbedtls_asn1_get_bitstring:bb.a
  br i1 %epil.iter.cmp.not, label %.loopexit.i.i, label %.lr.ph.i.i.epil, !llvm.loop !24

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.e
  %i.ap = phi ptr [ %i.m, %bb.e ], [ %storemerge.i.i.3, %.loopexit.i.i.loopexit.unr-lcssa ], [ %storemerge.i.i.epil, %.lr.ph.i.i.epil ] ; 3 uses
  %i.aq = phi i64 [ %i.o, %bb.e ], [ %i.ak, %.loopexit.i.i.loopexit.unr-lcssa ], [ %i.ao, %.lr.ph.i.i.epil ] ; 2 uses
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.b, %i.ar
  %i.at = add i64 %i.aq, -1
end_hunk_0
begin_hunk_1_@mbedtls_asn1_get_bitstring:bb.a
  br i1 %or.cond.not, label %bb.h, label %mbedtls_asn1_get_tag.exit.thread

bb.h:                                             ; preds = %.loopexit.i.i
  %i.au = add i64 %i.aq, -1                       ; 2 uses
  store i64 %i.au, ptr %2, align 8, !tbaa !25
  %i.av = load i8, ptr %i.ap, align 1, !tbaa !10  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
end_hunk_1
begin_hunk_2_@mbedtls_asn1_get_bitstring:bb.a
  br i1 %i.ax, label %mbedtls_asn1_get_tag.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 1 ; 2 uses
  store ptr %i.ay, ptr %0, align 8, !tbaa !7
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !28
  %3 = load ptr, ptr %0, align 8, !tbaa !7
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 %i.au ; 2 uses
  store ptr %i.ba, ptr %0, align 8, !tbaa !7
  %.not18 = icmp eq ptr %i.ba, %1
  %. = select i1 %.not18, i32 0, i32 -102
end_hunk_2
