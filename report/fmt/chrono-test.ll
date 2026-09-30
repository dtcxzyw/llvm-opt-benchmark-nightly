Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/chrono-test?download=true
inline.NumInlined: 21374
inline.NumDeleted: 3955
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumRuntimeUnrolled: 160
loop-unroll.NumUnrolled: 225
begin_hunk_0_@_ZN3fmt3v126detail18duration_formatterIciSt5ratioILl1ELl1000000000000000000EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSF_SG_EEEvRK2tmT_DpT0_:bb.a

bb.n:                                             ; preds = %.body
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %7) #30
  br label %_ZN3fmt3v126detail10get_localeD2Ev.exit

_ZN3fmt3v126detail10get_localeD2Ev.exit:          ; preds = %.body, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  resume { ptr, i32 } %eh.lpad-body

bb.o:                                             ; preds = %bb.k
  %i.ai = inttoptr i64 %2 to ptr
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %i.aj = phi ptr [ %i.ae, %bb.l ], [ %i.ai, %bb.o ]
  invoke void %i.aj(ptr noundef nonnull align 8 dereferenceable(40) %i.z, i32 noundef %4, i32 noundef %5)
          to label %bb.q unwind label %bb.m

bb.q:                                             ; preds = %bb.p
  %.sroa.0.0.copyload.i = load ptr, ptr %i.w, align 8, !tbaa !351
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8, !tbaa !351
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.ak = load i8, ptr %i.e, align 8, !tbaa !341, !range !249, !noundef !250
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %7) #30
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail24write_fractional_secondsIcNS0_14basic_appenderIcEENSt6chrono8durationIjSt5ratioILl1ELl1000000000000000000EEEEEEvRT0_T1_i(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 %1, i32 noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 6 uses
  %i.b = or i64 %i.a, 1
  %i.c = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.b, i1 true)
  %i.d = xor i64 %i.c, 63
  %i.e = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !232   ; 2 uses
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = zext i8 %i.f to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !255
  %i.k = icmp ugt i64 %i.j, %i.a
  %.neg.i.i = sext i1 %i.k to i32                 ; 2 uses
  %i.l = add nsw i32 %.neg.i.i, %i.g              ; 8 uses
  %i.m = icmp slt i32 %i.l, 18
  %i.n = tail call i32 @llvm.smin.i32(i32 %i.l, i32 18)
  %.sroa.speculated = sub i32 18, %i.n            ; 2 uses
  %i.o = icmp slt i32 %2, 0
  br i1 %i.o, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !351 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !354  ; 2 uses
  %i.r = add i64 %i.q, 1                          ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !339
  %i.u = icmp ugt i64 %i.r, %i.t
  br i1 %i.u, label %bb.c, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !260
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, i64 noundef %i.r), !inline_history !10
  %.pre.i.i = load i64, ptr %i.p, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.b, %bb.c
  %.pre-phi.i.i = phi i64 [ %i.r, %bb.b ], [ %.pre2.i.i, %bb.c ]
  %i.x = phi i64 [ %i.q, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.y = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !338
  store i64 %.pre-phi.i.i, ptr %i.p, align 8, !tbaa !354
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  store i8 46, ptr %i.z, align 1, !tbaa !232
  %.sroa.016.0.copyload = load ptr, ptr %0, align 8, !tbaa !351 ; 7 uses
  br i1 %i.m, label %.lr.ph.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit

.lr.ph.i:                                         ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 8 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 24
  br label %bb.d

bb.d:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %.lr.ph.i
  %.04.i = phi i32 [ 0, %.lr.ph.i ], [ %i.al, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ]
  %i.ad = load i64, ptr %i.aa, align 8, !tbaa !354 ; 2 uses
  %i.ae = add i64 %i.ad, 1                        ; 3 uses
  %i.af = load i64, ptr %i.ab, align 8, !tbaa !339
  %i.ag = icmp ugt i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.e, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !260
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.016.0.copyload, i64 noundef %i.ae), !inline_history !34
  %.pre.i.i.i = load i64, ptr %i.aa, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.e, %bb.d
  %.pre-phi.i.i.i = phi i64 [ %i.ae, %bb.d ], [ %.pre2.i.i.i, %bb.e ]
  %i.ai = phi i64 [ %i.ad, %bb.d ], [ %.pre.i.i.i, %bb.e ]
  %i.aj = load ptr, ptr %.sroa.016.0.copyload, align 8, !tbaa !338
  store i64 %.pre-phi.i.i.i, ptr %i.aa, align 8, !tbaa !354
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ai
  store i8 48, ptr %i.ak, align 1, !tbaa !232
  %i.al = add nuw nsw i32 %.04.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.al, %.sroa.speculated
  br i1 %exitcond.not.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, label %bb.d, !llvm.loop !14

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  store ptr %.sroa.016.0.copyload, ptr %0, align 8, !tbaa !351
  %i.am = tail call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.016.0.copyload, i64 noundef %i.a, i32 noundef %i.l)
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.copyload.i66 = load ptr, ptr %0, align 8, !tbaa !351 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i66, i64 8 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !354 ; 2 uses
  %i.ap = add i64 %i.ao, 1                        ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i66, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !339
  %i.as = icmp ugt i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.h, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i66, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !260
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i66, i64 noundef %i.ap), !inline_history !10
  %.pre.i.i68 = load i64, ptr %i.an, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i69 = add i64 %.pre.i.i68, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70

_ZN3fmt3v1214basic_appenderIcEaSEc.exit70:        ; preds = %bb.g, %bb.h
  %.pre-phi.i.i67 = phi i64 [ %i.ap, %bb.g ], [ %.pre2.i.i69, %bb.h ]
  %i.av = phi i64 [ %i.ao, %bb.g ], [ %.pre.i.i68, %bb.h ]
  %i.aw = load ptr, ptr %.sroa.0.0.copyload.i66, align 8, !tbaa !338
  store i64 %.pre-phi.i.i67, ptr %i.an, align 8, !tbaa !354
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.av
  store i8 46, ptr %i.ax, align 1, !tbaa !232
  %i.ay = tail call i32 @llvm.umin.i32(i32 %.sroa.speculated, i32 %2) ; 3 uses
  %i.az = sub nsw i32 %2, %i.ay                   ; 5 uses
  %.sroa.07.0.copyload = load ptr, ptr %0, align 8, !tbaa !351 ; 9 uses
  %.not97 = icmp sgt i32 %i.l, 17
  br i1 %.not97, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78, label %.lr.ph.i71

.lr.ph.i71:                                       ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 8 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 24
  br label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73, %.lr.ph.i71
  %.04.i72 = phi i32 [ 0, %.lr.ph.i71 ], [ %i.bl, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73 ]
  %i.bd = load i64, ptr %i.ba, align 8, !tbaa !354 ; 2 uses
  %i.be = add i64 %i.bd, 1                        ; 3 uses
  %i.bf = load i64, ptr %i.bb, align 8, !tbaa !339
  %i.bg = icmp ugt i64 %i.be, %i.bf
  br i1 %i.bg, label %bb.j, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73

bb.j:                                             ; preds = %bb.i
  %i.bh = load ptr, ptr %i.bc, align 8, !tbaa !260
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.07.0.copyload, i64 noundef %i.be), !inline_history !34
  %.pre.i.i.i76 = load i64, ptr %i.ba, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i.i77 = add i64 %.pre.i.i.i76, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73:      ; preds = %bb.j, %bb.i
  %.pre-phi.i.i.i74 = phi i64 [ %i.be, %bb.i ], [ %.pre2.i.i.i77, %bb.j ]
  %i.bi = phi i64 [ %i.bd, %bb.i ], [ %.pre.i.i.i76, %bb.j ]
  %i.bj = load ptr, ptr %.sroa.07.0.copyload, align 8, !tbaa !338
  store i64 %.pre-phi.i.i.i74, ptr %i.ba, align 8, !tbaa !354
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bi
  store i8 48, ptr %i.bk, align 1, !tbaa !232
  %i.bl = add nuw nsw i32 %.04.i72, 1             ; 2 uses
  %exitcond.not.i75 = icmp eq i32 %i.bl, %i.ay
  br i1 %exitcond.not.i75, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78, label %bb.i, !llvm.loop !14

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70
  store ptr %.sroa.07.0.copyload, ptr %0, align 8, !tbaa !351
  %.not65 = icmp slt i32 %i.az, %i.l
  br i1 %.not65, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78
  %i.bm = sub nsw i32 %i.l, %i.az                 ; 3 uses
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %_ZN3fmt3v126detail5pow10Ej.exit, label %tailrecurse.i.preheader

tailrecurse.i.preheader:                          ; preds = %bb.k
  %i.bo = add nsw i32 %i.ay, %.neg.i.i
  %i.bp = add i32 %i.bo, %i.g
  %xtraiter = and i32 %i.bm, 7                    ; 3 uses
  %i.bq = sub i32 %2, %i.bp
  %i.br = icmp ugt i32 %i.bq, -8
  br i1 %i.br, label %tailrecurse.i.epil.preheader, label %tailrecurse.i.preheader.new

tailrecurse.i.preheader.new:                      ; preds = %tailrecurse.i.preheader
  %unroll_iter = and i32 %i.bm, -8
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i, %tailrecurse.i.preheader.new
  %accumulator.tr2.i = phi i64 [ 1, %tailrecurse.i.preheader.new ], [ %i.bs, %tailrecurse.i ]
  %niter = phi i32 [ 0, %tailrecurse.i.preheader.new ], [ %niter.next.7, %tailrecurse.i ]
  %i.bs = mul i64 %accumulator.tr2.i, 100000000   ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa, label %tailrecurse.i

_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa: ; preds = %tailrecurse.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3fmt3v126detail5pow10Ej.exit, label %tailrecurse.i.epil.preheader

tailrecurse.i.epil.preheader:                     ; preds = %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa, %tailrecurse.i.preheader
  %accumulator.tr2.i.epil.init = phi i64 [ 1, %tailrecurse.i.preheader ], [ %i.bs, %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa ]
  %lcmp.mod118 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod118)
  br label %tailrecurse.i.epil

tailrecurse.i.epil:                               ; preds = %tailrecurse.i.epil, %tailrecurse.i.epil.preheader
  %accumulator.tr2.i.epil = phi i64 [ %i.bt, %tailrecurse.i.epil ], [ %accumulator.tr2.i.epil.init, %tailrecurse.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %tailrecurse.i.epil ], [ 0, %tailrecurse.i.epil.preheader ]
  %i.bt = mul i64 %accumulator.tr2.i.epil, 10     ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN3fmt3v126detail5pow10Ej.exit, label %tailrecurse.i.epil, !llvm.loop !5076

_ZN3fmt3v126detail5pow10Ej.exit:                  ; preds = %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa, %tailrecurse.i.epil, %bb.k
  %accumulator.tr.lcssa.i = phi i64 [ 1, %bb.k ], [ %i.bs, %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa ], [ %i.bt, %tailrecurse.i.epil ] ; 2 uses
  %.not64 = icmp ugt i64 %accumulator.tr.lcssa.i, %i.a
  br i1 %.not64, label %bb.r, label %bb.l

bb.l:                                             ; preds = %_ZN3fmt3v126detail5pow10Ej.exit
  %i.bu = udiv i64 %i.a, %accumulator.tr.lcssa.i
  %i.bv = tail call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.07.0.copyload, i64 noundef %i.bu, i32 noundef %i.az)
  br label %.sink.split

bb.m:                                             ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78
  %.not63 = icmp eq i32 %1, 0
  br i1 %.not63, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bw = tail call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.07.0.copyload, i64 noundef %i.a, i32 noundef %i.l) ; 2 uses
  store ptr %i.bw, ptr %0, align 8, !tbaa !351
  %i.bx = sub nsw i32 %i.az, %i.l
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.0.0.copyload = phi ptr [ %i.bw, %bb.n ], [ %.sroa.07.0.copyload, %bb.m ] ; 7 uses
  %.056 = phi i32 [ %i.bx, %bb.n ], [ %i.az, %bb.m ] ; 2 uses
  %i.by = icmp sgt i32 %.056, 0
  br i1 %i.by, label %.lr.ph.i79, label %.sink.split

.lr.ph.i79:                                       ; preds = %bb.o
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  br label %bb.p

bb.p:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81, %.lr.ph.i79
  %.04.i80 = phi i32 [ 0, %.lr.ph.i79 ], [ %i.ck, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81 ]
  %i.cc = load i64, ptr %i.bz, align 8, !tbaa !354 ; 2 uses
  %i.cd = add i64 %i.cc, 1                        ; 3 uses
  %i.ce = load i64, ptr %i.ca, align 8, !tbaa !339
  %i.cf = icmp ugt i64 %i.cd, %i.ce
  br i1 %i.cf, label %bb.q, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81

bb.q:                                             ; preds = %bb.p
  %i.cg = load ptr, ptr %i.cb, align 8, !tbaa !260
  tail call void %i.cg(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload, i64 noundef %i.cd), !inline_history !34
  %.pre.i.i.i84 = load i64, ptr %i.bz, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i.i85 = add i64 %.pre.i.i.i84, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81:      ; preds = %bb.q, %bb.p
  %.pre-phi.i.i.i82 = phi i64 [ %i.cd, %bb.p ], [ %.pre2.i.i.i85, %bb.q ]
  %i.ch = phi i64 [ %i.cc, %bb.p ], [ %.pre.i.i.i84, %bb.q ]
  %i.ci = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !338
  store i64 %.pre-phi.i.i.i82, ptr %i.bz, align 8, !tbaa !354
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ch
  store i8 48, ptr %i.cj, align 1, !tbaa !232
  %i.ck = add nuw nsw i32 %.04.i80, 1             ; 2 uses
  %exitcond.not.i83 = icmp eq i32 %i.ck, %.056
  br i1 %exitcond.not.i83, label %.sink.split, label %bb.p, !llvm.loop !14

.sink.split:                                      ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81, %bb.o, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, %bb.l
  %.sroa.0.0.copyload.sink = phi ptr [ %i.am, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit ], [ %i.bv, %bb.l ], [ %.sroa.0.0.copyload, %bb.o ], [ %.sroa.0.0.copyload, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81 ]
  store ptr %.sroa.0.0.copyload.sink, ptr %0, align 8, !tbaa !351
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %_ZN3fmt3v126detail5pow10Ej.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIciSt5ratioILl1ELl1000000000000000000EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvvEJEEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 %2, i64 %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.fmt::v12::locale_ref", align 8 ; 5 uses
  %5 = alloca %"class.fmt::v12::detail::get_locale", align 8 ; 8 uses
  %6 = alloca %"class.fmt::v12::detail::tm_writer", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !392, !range !249, !noundef !250 ; 2 uses
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.02.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !335
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %.sroa.02.0.copyload, ptr %4, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i8 %i.b, ptr %i.e, align 8, !tbaa !341
  br i1 %i.c, label %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit, label %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread

_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  br label %bb.b

_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit: ; preds = %bb.a
  call void @_ZNK3fmt3v1210locale_ref3getISt6localeEET_v(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 dereferenceable(9) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %.pre = load i8, ptr %i.e, align 8, !tbaa !341, !range !249
  %i.f = trunc nuw i8 %.pre to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  br i1 %i.f, label %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit
  %i.g = load atomic i8, ptr @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, !prof !342

bb.c:                                             ; preds = %bb.b
  %i.i = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %i.j, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %.body

_ZN3fmt3v126detail18get_classic_localeEv.exit.i:  ; preds = %bb.e, %bb.c, %bb.b
  %i.l = load ptr, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344, !nonnull !250, !align !336
  br label %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit

_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit: ; preds = %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit
  %i.m = phi ptr [ %i.l, %_ZN3fmt3v126detail18get_classic_localeEv.exit.i ], [ %5, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit ] ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8, !tbaa !351
  store ptr %i.m, ptr %6, align 8, !tbaa !344
  %i.n = load atomic i8, ptr @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale acquire, align 8
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.k, !prof !342

bb.g:                                             ; preds = %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit
  %i.p = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  %.not.i.i13 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i13, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %i.q, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %.body

bb.k:                                             ; preds = %bb.i, %bb.g, %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.t = load ptr, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344, !nonnull !250, !align !336
  %i.u = call noundef zeroext i1 @_ZNKSt6localeeqERKS_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.t) #30
  %i.v = zext i1 %i.u to i8
  store i8 %i.v, ptr %i.s, align 8, !tbaa !350
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %.sroa.01.0.copyload, ptr %i.w, align 8, !tbaa !351
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 24
end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail18duration_formatterIciSt5ratioILl1ELl1000000000000000EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSF_SG_EEEvRK2tmT_DpT0_:bb.a

bb.n:                                             ; preds = %.body
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %7) #30
  br label %_ZN3fmt3v126detail10get_localeD2Ev.exit

_ZN3fmt3v126detail10get_localeD2Ev.exit:          ; preds = %.body, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  resume { ptr, i32 } %eh.lpad-body

bb.o:                                             ; preds = %bb.k
  %i.ai = inttoptr i64 %2 to ptr
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %i.aj = phi ptr [ %i.ae, %bb.l ], [ %i.ai, %bb.o ]
  invoke void %i.aj(ptr noundef nonnull align 8 dereferenceable(40) %i.z, i32 noundef %4, i32 noundef %5)
          to label %bb.q unwind label %bb.m

bb.q:                                             ; preds = %bb.p
  %.sroa.0.0.copyload.i = load ptr, ptr %i.w, align 8, !tbaa !351
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8, !tbaa !351
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.ak = load i8, ptr %i.e, align 8, !tbaa !341, !range !249, !noundef !250
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %7) #30
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail24write_fractional_secondsIcNS0_14basic_appenderIcEENSt6chrono8durationIjSt5ratioILl1ELl1000000000000000EEEEEEvRT0_T1_i(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 %1, i32 noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 6 uses
  %i.b = or i64 %i.a, 1
  %i.c = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.b, i1 true)
  %i.d = xor i64 %i.c, 63
  %i.e = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !232   ; 2 uses
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = zext i8 %i.f to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !255
  %i.k = icmp ugt i64 %i.j, %i.a
  %.neg.i.i = sext i1 %i.k to i32                 ; 2 uses
  %i.l = add nsw i32 %.neg.i.i, %i.g              ; 8 uses
  %i.m = icmp slt i32 %i.l, 15
  %i.n = tail call i32 @llvm.smin.i32(i32 %i.l, i32 15)
  %.sroa.speculated = sub i32 15, %i.n            ; 2 uses
  %i.o = icmp slt i32 %2, 0
  br i1 %i.o, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !351 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !354  ; 2 uses
  %i.r = add i64 %i.q, 1                          ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !339
  %i.u = icmp ugt i64 %i.r, %i.t
  br i1 %i.u, label %bb.c, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !260
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, i64 noundef %i.r), !inline_history !10
  %.pre.i.i = load i64, ptr %i.p, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.b, %bb.c
  %.pre-phi.i.i = phi i64 [ %i.r, %bb.b ], [ %.pre2.i.i, %bb.c ]
  %i.x = phi i64 [ %i.q, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.y = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !338
  store i64 %.pre-phi.i.i, ptr %i.p, align 8, !tbaa !354
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  store i8 46, ptr %i.z, align 1, !tbaa !232
  %.sroa.016.0.copyload = load ptr, ptr %0, align 8, !tbaa !351 ; 7 uses
  br i1 %i.m, label %.lr.ph.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit

.lr.ph.i:                                         ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 8 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 24
  br label %bb.d

bb.d:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %.lr.ph.i
  %.04.i = phi i32 [ 0, %.lr.ph.i ], [ %i.al, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ]
  %i.ad = load i64, ptr %i.aa, align 8, !tbaa !354 ; 2 uses
  %i.ae = add i64 %i.ad, 1                        ; 3 uses
  %i.af = load i64, ptr %i.ab, align 8, !tbaa !339
  %i.ag = icmp ugt i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.e, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !260
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.016.0.copyload, i64 noundef %i.ae), !inline_history !34
  %.pre.i.i.i = load i64, ptr %i.aa, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.e, %bb.d
  %.pre-phi.i.i.i = phi i64 [ %i.ae, %bb.d ], [ %.pre2.i.i.i, %bb.e ]
  %i.ai = phi i64 [ %i.ad, %bb.d ], [ %.pre.i.i.i, %bb.e ]
  %i.aj = load ptr, ptr %.sroa.016.0.copyload, align 8, !tbaa !338
  store i64 %.pre-phi.i.i.i, ptr %i.aa, align 8, !tbaa !354
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ai
  store i8 48, ptr %i.ak, align 1, !tbaa !232
  %i.al = add nuw nsw i32 %.04.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.al, %.sroa.speculated
  br i1 %exitcond.not.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, label %bb.d, !llvm.loop !14

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  store ptr %.sroa.016.0.copyload, ptr %0, align 8, !tbaa !351
  %i.am = tail call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.016.0.copyload, i64 noundef %i.a, i32 noundef %i.l)
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.copyload.i66 = load ptr, ptr %0, align 8, !tbaa !351 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i66, i64 8 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !354 ; 2 uses
  %i.ap = add i64 %i.ao, 1                        ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i66, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !339
  %i.as = icmp ugt i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.h, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i66, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !260
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i66, i64 noundef %i.ap), !inline_history !10
  %.pre.i.i68 = load i64, ptr %i.an, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i69 = add i64 %.pre.i.i68, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70

_ZN3fmt3v1214basic_appenderIcEaSEc.exit70:        ; preds = %bb.g, %bb.h
  %.pre-phi.i.i67 = phi i64 [ %i.ap, %bb.g ], [ %.pre2.i.i69, %bb.h ]
  %i.av = phi i64 [ %i.ao, %bb.g ], [ %.pre.i.i68, %bb.h ]
  %i.aw = load ptr, ptr %.sroa.0.0.copyload.i66, align 8, !tbaa !338
  store i64 %.pre-phi.i.i67, ptr %i.an, align 8, !tbaa !354
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.av
  store i8 46, ptr %i.ax, align 1, !tbaa !232
  %i.ay = tail call i32 @llvm.umin.i32(i32 %.sroa.speculated, i32 %2) ; 3 uses
  %i.az = sub nsw i32 %2, %i.ay                   ; 5 uses
  %.sroa.07.0.copyload = load ptr, ptr %0, align 8, !tbaa !351 ; 9 uses
  %.not97 = icmp sgt i32 %i.l, 14
  br i1 %.not97, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78, label %.lr.ph.i71

.lr.ph.i71:                                       ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 8 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 24
  br label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73, %.lr.ph.i71
  %.04.i72 = phi i32 [ 0, %.lr.ph.i71 ], [ %i.bl, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73 ]
  %i.bd = load i64, ptr %i.ba, align 8, !tbaa !354 ; 2 uses
  %i.be = add i64 %i.bd, 1                        ; 3 uses
  %i.bf = load i64, ptr %i.bb, align 8, !tbaa !339
  %i.bg = icmp ugt i64 %i.be, %i.bf
  br i1 %i.bg, label %bb.j, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73

bb.j:                                             ; preds = %bb.i
  %i.bh = load ptr, ptr %i.bc, align 8, !tbaa !260
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.07.0.copyload, i64 noundef %i.be), !inline_history !34
  %.pre.i.i.i76 = load i64, ptr %i.ba, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i.i77 = add i64 %.pre.i.i.i76, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73:      ; preds = %bb.j, %bb.i
  %.pre-phi.i.i.i74 = phi i64 [ %i.be, %bb.i ], [ %.pre2.i.i.i77, %bb.j ]
  %i.bi = phi i64 [ %i.bd, %bb.i ], [ %.pre.i.i.i76, %bb.j ]
  %i.bj = load ptr, ptr %.sroa.07.0.copyload, align 8, !tbaa !338
  store i64 %.pre-phi.i.i.i74, ptr %i.ba, align 8, !tbaa !354
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bi
  store i8 48, ptr %i.bk, align 1, !tbaa !232
  %i.bl = add nuw nsw i32 %.04.i72, 1             ; 2 uses
  %exitcond.not.i75 = icmp eq i32 %i.bl, %i.ay
  br i1 %exitcond.not.i75, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78, label %bb.i, !llvm.loop !14

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70
  store ptr %.sroa.07.0.copyload, ptr %0, align 8, !tbaa !351
  %.not65 = icmp slt i32 %i.az, %i.l
  br i1 %.not65, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78
  %i.bm = sub nsw i32 %i.l, %i.az                 ; 3 uses
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %_ZN3fmt3v126detail5pow10Ej.exit, label %tailrecurse.i.preheader

tailrecurse.i.preheader:                          ; preds = %bb.k
  %i.bo = add nsw i32 %i.ay, %.neg.i.i
  %i.bp = add i32 %i.bo, %i.g
  %xtraiter = and i32 %i.bm, 7                    ; 3 uses
  %i.bq = sub i32 %2, %i.bp
  %i.br = icmp ugt i32 %i.bq, -8
  br i1 %i.br, label %tailrecurse.i.epil.preheader, label %tailrecurse.i.preheader.new

tailrecurse.i.preheader.new:                      ; preds = %tailrecurse.i.preheader
  %unroll_iter = and i32 %i.bm, -8
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i, %tailrecurse.i.preheader.new
  %accumulator.tr2.i = phi i64 [ 1, %tailrecurse.i.preheader.new ], [ %i.bs, %tailrecurse.i ]
  %niter = phi i32 [ 0, %tailrecurse.i.preheader.new ], [ %niter.next.7, %tailrecurse.i ]
  %i.bs = mul i64 %accumulator.tr2.i, 100000000   ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa, label %tailrecurse.i

_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa: ; preds = %tailrecurse.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3fmt3v126detail5pow10Ej.exit, label %tailrecurse.i.epil.preheader

tailrecurse.i.epil.preheader:                     ; preds = %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa, %tailrecurse.i.preheader
  %accumulator.tr2.i.epil.init = phi i64 [ 1, %tailrecurse.i.preheader ], [ %i.bs, %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa ]
  %lcmp.mod118 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod118)
  br label %tailrecurse.i.epil

tailrecurse.i.epil:                               ; preds = %tailrecurse.i.epil, %tailrecurse.i.epil.preheader
  %accumulator.tr2.i.epil = phi i64 [ %i.bt, %tailrecurse.i.epil ], [ %accumulator.tr2.i.epil.init, %tailrecurse.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %tailrecurse.i.epil ], [ 0, %tailrecurse.i.epil.preheader ]
  %i.bt = mul i64 %accumulator.tr2.i.epil, 10     ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN3fmt3v126detail5pow10Ej.exit, label %tailrecurse.i.epil, !llvm.loop !5101

_ZN3fmt3v126detail5pow10Ej.exit:                  ; preds = %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa, %tailrecurse.i.epil, %bb.k
  %accumulator.tr.lcssa.i = phi i64 [ 1, %bb.k ], [ %i.bs, %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa ], [ %i.bt, %tailrecurse.i.epil ] ; 2 uses
  %.not64 = icmp ugt i64 %accumulator.tr.lcssa.i, %i.a
  br i1 %.not64, label %bb.r, label %bb.l

bb.l:                                             ; preds = %_ZN3fmt3v126detail5pow10Ej.exit
  %i.bu = udiv i64 %i.a, %accumulator.tr.lcssa.i
  %i.bv = tail call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.07.0.copyload, i64 noundef %i.bu, i32 noundef %i.az)
  br label %.sink.split

bb.m:                                             ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78
  %.not63 = icmp eq i32 %1, 0
  br i1 %.not63, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bw = tail call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.07.0.copyload, i64 noundef %i.a, i32 noundef %i.l) ; 2 uses
  store ptr %i.bw, ptr %0, align 8, !tbaa !351
  %i.bx = sub nsw i32 %i.az, %i.l
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.0.0.copyload = phi ptr [ %i.bw, %bb.n ], [ %.sroa.07.0.copyload, %bb.m ] ; 7 uses
  %.056 = phi i32 [ %i.bx, %bb.n ], [ %i.az, %bb.m ] ; 2 uses
  %i.by = icmp sgt i32 %.056, 0
  br i1 %i.by, label %.lr.ph.i79, label %.sink.split

.lr.ph.i79:                                       ; preds = %bb.o
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  br label %bb.p

bb.p:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81, %.lr.ph.i79
  %.04.i80 = phi i32 [ 0, %.lr.ph.i79 ], [ %i.ck, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81 ]
  %i.cc = load i64, ptr %i.bz, align 8, !tbaa !354 ; 2 uses
  %i.cd = add i64 %i.cc, 1                        ; 3 uses
  %i.ce = load i64, ptr %i.ca, align 8, !tbaa !339
  %i.cf = icmp ugt i64 %i.cd, %i.ce
  br i1 %i.cf, label %bb.q, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81

bb.q:                                             ; preds = %bb.p
  %i.cg = load ptr, ptr %i.cb, align 8, !tbaa !260
  tail call void %i.cg(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload, i64 noundef %i.cd), !inline_history !34
  %.pre.i.i.i84 = load i64, ptr %i.bz, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i.i85 = add i64 %.pre.i.i.i84, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81:      ; preds = %bb.q, %bb.p
  %.pre-phi.i.i.i82 = phi i64 [ %i.cd, %bb.p ], [ %.pre2.i.i.i85, %bb.q ]
  %i.ch = phi i64 [ %i.cc, %bb.p ], [ %.pre.i.i.i84, %bb.q ]
  %i.ci = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !338
  store i64 %.pre-phi.i.i.i82, ptr %i.bz, align 8, !tbaa !354
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ch
  store i8 48, ptr %i.cj, align 1, !tbaa !232
  %i.ck = add nuw nsw i32 %.04.i80, 1             ; 2 uses
  %exitcond.not.i83 = icmp eq i32 %i.ck, %.056
  br i1 %exitcond.not.i83, label %.sink.split, label %bb.p, !llvm.loop !14

.sink.split:                                      ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81, %bb.o, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, %bb.l
  %.sroa.0.0.copyload.sink = phi ptr [ %i.am, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit ], [ %i.bv, %bb.l ], [ %.sroa.0.0.copyload, %bb.o ], [ %.sroa.0.0.copyload, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81 ]
  store ptr %.sroa.0.0.copyload.sink, ptr %0, align 8, !tbaa !351
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %_ZN3fmt3v126detail5pow10Ej.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIciSt5ratioILl1ELl1000000000000000EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvvEJEEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 %2, i64 %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.fmt::v12::locale_ref", align 8 ; 5 uses
  %5 = alloca %"class.fmt::v12::detail::get_locale", align 8 ; 8 uses
  %6 = alloca %"class.fmt::v12::detail::tm_writer", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !397, !range !249, !noundef !250 ; 2 uses
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.02.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !335
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %.sroa.02.0.copyload, ptr %4, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i8 %i.b, ptr %i.e, align 8, !tbaa !341
  br i1 %i.c, label %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit, label %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread

_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  br label %bb.b

_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit: ; preds = %bb.a
  call void @_ZNK3fmt3v1210locale_ref3getISt6localeEET_v(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 dereferenceable(9) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %.pre = load i8, ptr %i.e, align 8, !tbaa !341, !range !249
  %i.f = trunc nuw i8 %.pre to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  br i1 %i.f, label %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit
  %i.g = load atomic i8, ptr @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, !prof !342

bb.c:                                             ; preds = %bb.b
  %i.i = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %i.j, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %.body

_ZN3fmt3v126detail18get_classic_localeEv.exit.i:  ; preds = %bb.e, %bb.c, %bb.b
  %i.l = load ptr, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344, !nonnull !250, !align !336
  br label %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit

_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit: ; preds = %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit
  %i.m = phi ptr [ %i.l, %_ZN3fmt3v126detail18get_classic_localeEv.exit.i ], [ %5, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit ] ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8, !tbaa !351
  store ptr %i.m, ptr %6, align 8, !tbaa !344
  %i.n = load atomic i8, ptr @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale acquire, align 8
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.k, !prof !342

bb.g:                                             ; preds = %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit
  %i.p = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  %.not.i.i13 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i13, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %i.q, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %.body

bb.k:                                             ; preds = %bb.i, %bb.g, %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.t = load ptr, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344, !nonnull !250, !align !336
  %i.u = call noundef zeroext i1 @_ZNKSt6localeeqERKS_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.t) #30
  %i.v = zext i1 %i.u to i8
  store i8 %i.v, ptr %i.s, align 8, !tbaa !350
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %.sroa.01.0.copyload, ptr %i.w, align 8, !tbaa !351
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 24
end_hunk_1
begin_hunk_2_@_ZN3fmt3v126detail18duration_formatterIciSt5ratioILl1ELl1000000000000EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSF_SG_EEEvRK2tmT_DpT0_:bb.a

bb.n:                                             ; preds = %.body
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %7) #30
  br label %_ZN3fmt3v126detail10get_localeD2Ev.exit

_ZN3fmt3v126detail10get_localeD2Ev.exit:          ; preds = %.body, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  resume { ptr, i32 } %eh.lpad-body

bb.o:                                             ; preds = %bb.k
  %i.ai = inttoptr i64 %2 to ptr
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %i.aj = phi ptr [ %i.ae, %bb.l ], [ %i.ai, %bb.o ]
  invoke void %i.aj(ptr noundef nonnull align 8 dereferenceable(40) %i.z, i32 noundef %4, i32 noundef %5)
          to label %bb.q unwind label %bb.m

bb.q:                                             ; preds = %bb.p
  %.sroa.0.0.copyload.i = load ptr, ptr %i.w, align 8, !tbaa !351
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8, !tbaa !351
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.ak = load i8, ptr %i.e, align 8, !tbaa !341, !range !249, !noundef !250
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %7) #30
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail24write_fractional_secondsIcNS0_14basic_appenderIcEENSt6chrono8durationIjSt5ratioILl1ELl1000000000000EEEEEEvRT0_T1_i(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 %1, i32 noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 6 uses
  %i.b = or i64 %i.a, 1
  %i.c = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.b, i1 true)
  %i.d = xor i64 %i.c, 63
  %i.e = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !232   ; 2 uses
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = zext i8 %i.f to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !255
  %i.k = icmp ugt i64 %i.j, %i.a
  %.neg.i.i = sext i1 %i.k to i32                 ; 2 uses
  %i.l = add nsw i32 %.neg.i.i, %i.g              ; 8 uses
  %i.m = icmp slt i32 %i.l, 12
  %i.n = tail call i32 @llvm.smin.i32(i32 %i.l, i32 12)
  %.sroa.speculated = sub i32 12, %i.n            ; 2 uses
  %i.o = icmp slt i32 %2, 0
  br i1 %i.o, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !351 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !354  ; 2 uses
  %i.r = add i64 %i.q, 1                          ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !339
  %i.u = icmp ugt i64 %i.r, %i.t
  br i1 %i.u, label %bb.c, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !260
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, i64 noundef %i.r), !inline_history !10
  %.pre.i.i = load i64, ptr %i.p, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.b, %bb.c
  %.pre-phi.i.i = phi i64 [ %i.r, %bb.b ], [ %.pre2.i.i, %bb.c ]
  %i.x = phi i64 [ %i.q, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.y = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !338
  store i64 %.pre-phi.i.i, ptr %i.p, align 8, !tbaa !354
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  store i8 46, ptr %i.z, align 1, !tbaa !232
  %.sroa.016.0.copyload = load ptr, ptr %0, align 8, !tbaa !351 ; 7 uses
  br i1 %i.m, label %.lr.ph.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit

.lr.ph.i:                                         ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 8 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 24
  br label %bb.d

bb.d:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %.lr.ph.i
  %.04.i = phi i32 [ 0, %.lr.ph.i ], [ %i.al, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ]
  %i.ad = load i64, ptr %i.aa, align 8, !tbaa !354 ; 2 uses
  %i.ae = add i64 %i.ad, 1                        ; 3 uses
  %i.af = load i64, ptr %i.ab, align 8, !tbaa !339
  %i.ag = icmp ugt i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.e, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !260
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.016.0.copyload, i64 noundef %i.ae), !inline_history !34
  %.pre.i.i.i = load i64, ptr %i.aa, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.e, %bb.d
  %.pre-phi.i.i.i = phi i64 [ %i.ae, %bb.d ], [ %.pre2.i.i.i, %bb.e ]
  %i.ai = phi i64 [ %i.ad, %bb.d ], [ %.pre.i.i.i, %bb.e ]
  %i.aj = load ptr, ptr %.sroa.016.0.copyload, align 8, !tbaa !338
  store i64 %.pre-phi.i.i.i, ptr %i.aa, align 8, !tbaa !354
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ai
  store i8 48, ptr %i.ak, align 1, !tbaa !232
  %i.al = add nuw nsw i32 %.04.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.al, %.sroa.speculated
  br i1 %exitcond.not.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, label %bb.d, !llvm.loop !14

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  store ptr %.sroa.016.0.copyload, ptr %0, align 8, !tbaa !351
  %i.am = tail call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.016.0.copyload, i64 noundef %i.a, i32 noundef %i.l)
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.copyload.i66 = load ptr, ptr %0, align 8, !tbaa !351 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i66, i64 8 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !354 ; 2 uses
  %i.ap = add i64 %i.ao, 1                        ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i66, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !339
  %i.as = icmp ugt i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.h, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i66, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !260
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i66, i64 noundef %i.ap), !inline_history !10
  %.pre.i.i68 = load i64, ptr %i.an, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i69 = add i64 %.pre.i.i68, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70

_ZN3fmt3v1214basic_appenderIcEaSEc.exit70:        ; preds = %bb.g, %bb.h
  %.pre-phi.i.i67 = phi i64 [ %i.ap, %bb.g ], [ %.pre2.i.i69, %bb.h ]
  %i.av = phi i64 [ %i.ao, %bb.g ], [ %.pre.i.i68, %bb.h ]
  %i.aw = load ptr, ptr %.sroa.0.0.copyload.i66, align 8, !tbaa !338
  store i64 %.pre-phi.i.i67, ptr %i.an, align 8, !tbaa !354
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.av
  store i8 46, ptr %i.ax, align 1, !tbaa !232
  %i.ay = tail call i32 @llvm.umin.i32(i32 %.sroa.speculated, i32 %2) ; 3 uses
  %i.az = sub nsw i32 %2, %i.ay                   ; 5 uses
  %.sroa.07.0.copyload = load ptr, ptr %0, align 8, !tbaa !351 ; 9 uses
  %.not97 = icmp sgt i32 %i.l, 11
  br i1 %.not97, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78, label %.lr.ph.i71

.lr.ph.i71:                                       ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 8 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 24
  br label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73, %.lr.ph.i71
  %.04.i72 = phi i32 [ 0, %.lr.ph.i71 ], [ %i.bl, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73 ]
  %i.bd = load i64, ptr %i.ba, align 8, !tbaa !354 ; 2 uses
  %i.be = add i64 %i.bd, 1                        ; 3 uses
  %i.bf = load i64, ptr %i.bb, align 8, !tbaa !339
  %i.bg = icmp ugt i64 %i.be, %i.bf
  br i1 %i.bg, label %bb.j, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73

bb.j:                                             ; preds = %bb.i
  %i.bh = load ptr, ptr %i.bc, align 8, !tbaa !260
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.07.0.copyload, i64 noundef %i.be), !inline_history !34
  %.pre.i.i.i76 = load i64, ptr %i.ba, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i.i77 = add i64 %.pre.i.i.i76, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73:      ; preds = %bb.j, %bb.i
  %.pre-phi.i.i.i74 = phi i64 [ %i.be, %bb.i ], [ %.pre2.i.i.i77, %bb.j ]
  %i.bi = phi i64 [ %i.bd, %bb.i ], [ %.pre.i.i.i76, %bb.j ]
  %i.bj = load ptr, ptr %.sroa.07.0.copyload, align 8, !tbaa !338
  store i64 %.pre-phi.i.i.i74, ptr %i.ba, align 8, !tbaa !354
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bi
  store i8 48, ptr %i.bk, align 1, !tbaa !232
  %i.bl = add nuw nsw i32 %.04.i72, 1             ; 2 uses
  %exitcond.not.i75 = icmp eq i32 %i.bl, %i.ay
  br i1 %exitcond.not.i75, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78, label %bb.i, !llvm.loop !14

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70
  store ptr %.sroa.07.0.copyload, ptr %0, align 8, !tbaa !351
  %.not65 = icmp slt i32 %i.az, %i.l
  br i1 %.not65, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78
  %i.bm = sub nsw i32 %i.l, %i.az                 ; 3 uses
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %_ZN3fmt3v126detail5pow10Ej.exit, label %tailrecurse.i.preheader

tailrecurse.i.preheader:                          ; preds = %bb.k
  %i.bo = add nsw i32 %i.ay, %.neg.i.i
  %i.bp = add i32 %i.bo, %i.g
  %xtraiter = and i32 %i.bm, 7                    ; 3 uses
  %i.bq = sub i32 %2, %i.bp
  %i.br = icmp ugt i32 %i.bq, -8
  br i1 %i.br, label %tailrecurse.i.epil.preheader, label %tailrecurse.i.preheader.new

tailrecurse.i.preheader.new:                      ; preds = %tailrecurse.i.preheader
  %unroll_iter = and i32 %i.bm, -8
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i, %tailrecurse.i.preheader.new
  %accumulator.tr2.i = phi i64 [ 1, %tailrecurse.i.preheader.new ], [ %i.bs, %tailrecurse.i ]
  %niter = phi i32 [ 0, %tailrecurse.i.preheader.new ], [ %niter.next.7, %tailrecurse.i ]
  %i.bs = mul i64 %accumulator.tr2.i, 100000000   ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa, label %tailrecurse.i

_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa: ; preds = %tailrecurse.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3fmt3v126detail5pow10Ej.exit, label %tailrecurse.i.epil.preheader

tailrecurse.i.epil.preheader:                     ; preds = %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa, %tailrecurse.i.preheader
  %accumulator.tr2.i.epil.init = phi i64 [ 1, %tailrecurse.i.preheader ], [ %i.bs, %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa ]
  %lcmp.mod118 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod118)
  br label %tailrecurse.i.epil

tailrecurse.i.epil:                               ; preds = %tailrecurse.i.epil, %tailrecurse.i.epil.preheader
  %accumulator.tr2.i.epil = phi i64 [ %i.bt, %tailrecurse.i.epil ], [ %accumulator.tr2.i.epil.init, %tailrecurse.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %tailrecurse.i.epil ], [ 0, %tailrecurse.i.epil.preheader ]
  %i.bt = mul i64 %accumulator.tr2.i.epil, 10     ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN3fmt3v126detail5pow10Ej.exit, label %tailrecurse.i.epil, !llvm.loop !5125

_ZN3fmt3v126detail5pow10Ej.exit:                  ; preds = %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa, %tailrecurse.i.epil, %bb.k
  %accumulator.tr.lcssa.i = phi i64 [ 1, %bb.k ], [ %i.bs, %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa ], [ %i.bt, %tailrecurse.i.epil ] ; 2 uses
  %.not64 = icmp ugt i64 %accumulator.tr.lcssa.i, %i.a
  br i1 %.not64, label %bb.r, label %bb.l

bb.l:                                             ; preds = %_ZN3fmt3v126detail5pow10Ej.exit
  %i.bu = udiv i64 %i.a, %accumulator.tr.lcssa.i
  %i.bv = tail call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.07.0.copyload, i64 noundef %i.bu, i32 noundef %i.az)
  br label %.sink.split

bb.m:                                             ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78
  %.not63 = icmp eq i32 %1, 0
  br i1 %.not63, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bw = tail call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.07.0.copyload, i64 noundef %i.a, i32 noundef %i.l) ; 2 uses
  store ptr %i.bw, ptr %0, align 8, !tbaa !351
  %i.bx = sub nsw i32 %i.az, %i.l
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.0.0.copyload = phi ptr [ %i.bw, %bb.n ], [ %.sroa.07.0.copyload, %bb.m ] ; 7 uses
  %.056 = phi i32 [ %i.bx, %bb.n ], [ %i.az, %bb.m ] ; 2 uses
  %i.by = icmp sgt i32 %.056, 0
  br i1 %i.by, label %.lr.ph.i79, label %.sink.split

.lr.ph.i79:                                       ; preds = %bb.o
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  br label %bb.p

bb.p:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81, %.lr.ph.i79
  %.04.i80 = phi i32 [ 0, %.lr.ph.i79 ], [ %i.ck, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81 ]
  %i.cc = load i64, ptr %i.bz, align 8, !tbaa !354 ; 2 uses
  %i.cd = add i64 %i.cc, 1                        ; 3 uses
  %i.ce = load i64, ptr %i.ca, align 8, !tbaa !339
  %i.cf = icmp ugt i64 %i.cd, %i.ce
  br i1 %i.cf, label %bb.q, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81

bb.q:                                             ; preds = %bb.p
  %i.cg = load ptr, ptr %i.cb, align 8, !tbaa !260
  tail call void %i.cg(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload, i64 noundef %i.cd), !inline_history !34
  %.pre.i.i.i84 = load i64, ptr %i.bz, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i.i85 = add i64 %.pre.i.i.i84, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81:      ; preds = %bb.q, %bb.p
  %.pre-phi.i.i.i82 = phi i64 [ %i.cd, %bb.p ], [ %.pre2.i.i.i85, %bb.q ]
  %i.ch = phi i64 [ %i.cc, %bb.p ], [ %.pre.i.i.i84, %bb.q ]
  %i.ci = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !338
  store i64 %.pre-phi.i.i.i82, ptr %i.bz, align 8, !tbaa !354
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ch
  store i8 48, ptr %i.cj, align 1, !tbaa !232
  %i.ck = add nuw nsw i32 %.04.i80, 1             ; 2 uses
  %exitcond.not.i83 = icmp eq i32 %i.ck, %.056
  br i1 %exitcond.not.i83, label %.sink.split, label %bb.p, !llvm.loop !14

.sink.split:                                      ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81, %bb.o, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, %bb.l
  %.sroa.0.0.copyload.sink = phi ptr [ %i.am, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit ], [ %i.bv, %bb.l ], [ %.sroa.0.0.copyload, %bb.o ], [ %.sroa.0.0.copyload, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81 ]
  store ptr %.sroa.0.0.copyload.sink, ptr %0, align 8, !tbaa !351
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %_ZN3fmt3v126detail5pow10Ej.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIciSt5ratioILl1ELl1000000000000EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvvEJEEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 %2, i64 %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.fmt::v12::locale_ref", align 8 ; 5 uses
  %5 = alloca %"class.fmt::v12::detail::get_locale", align 8 ; 8 uses
  %6 = alloca %"class.fmt::v12::detail::tm_writer", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !402, !range !249, !noundef !250 ; 2 uses
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.02.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !335
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %.sroa.02.0.copyload, ptr %4, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i8 %i.b, ptr %i.e, align 8, !tbaa !341
  br i1 %i.c, label %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit, label %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread

_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  br label %bb.b

_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit: ; preds = %bb.a
  call void @_ZNK3fmt3v1210locale_ref3getISt6localeEET_v(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 dereferenceable(9) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %.pre = load i8, ptr %i.e, align 8, !tbaa !341, !range !249
  %i.f = trunc nuw i8 %.pre to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  br i1 %i.f, label %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit
  %i.g = load atomic i8, ptr @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, !prof !342

bb.c:                                             ; preds = %bb.b
  %i.i = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %i.j, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %.body

_ZN3fmt3v126detail18get_classic_localeEv.exit.i:  ; preds = %bb.e, %bb.c, %bb.b
  %i.l = load ptr, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344, !nonnull !250, !align !336
  br label %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit

_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit: ; preds = %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit
  %i.m = phi ptr [ %i.l, %_ZN3fmt3v126detail18get_classic_localeEv.exit.i ], [ %5, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit ] ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8, !tbaa !351
  store ptr %i.m, ptr %6, align 8, !tbaa !344
  %i.n = load atomic i8, ptr @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale acquire, align 8
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.k, !prof !342

bb.g:                                             ; preds = %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit
  %i.p = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  %.not.i.i13 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i13, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %i.q, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %.body

bb.k:                                             ; preds = %bb.i, %bb.g, %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.t = load ptr, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344, !nonnull !250, !align !336
  %i.u = call noundef zeroext i1 @_ZNKSt6localeeqERKS_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.t) #30
  %i.v = zext i1 %i.u to i8
  store i8 %i.v, ptr %i.s, align 8, !tbaa !350
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %.sroa.01.0.copyload, ptr %i.w, align 8, !tbaa !351
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 24
end_hunk_2
begin_hunk_3_@_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1000000000EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSF_SG_EEEvRK2tmT_DpT0_:bb.a
bb.n:                                             ; preds = %.body
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %7) #30
  br label %_ZN3fmt3v126detail10get_localeD2Ev.exit

_ZN3fmt3v126detail10get_localeD2Ev.exit:          ; preds = %.body, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  resume { ptr, i32 } %eh.lpad-body

bb.o:                                             ; preds = %bb.k
  %i.ai = inttoptr i64 %2 to ptr
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %i.aj = phi ptr [ %i.ae, %bb.l ], [ %i.ai, %bb.o ]
  invoke void %i.aj(ptr noundef nonnull align 8 dereferenceable(40) %i.z, i32 noundef %4, i32 noundef %5)
          to label %bb.q unwind label %bb.m

bb.q:                                             ; preds = %bb.p
  %.sroa.0.0.copyload.i = load ptr, ptr %i.w, align 8, !tbaa !351
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8, !tbaa !351
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.ak = load i8, ptr %i.e, align 8, !tbaa !341, !range !249, !noundef !250
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %7) #30
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail24write_fractional_secondsIcNS0_14basic_appenderIcEENSt6chrono8durationImSt5ratioILl1ELl1000000000EEEEEEvRT0_T1_i(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, i32 noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %.fr = freeze i64 %1
  %i.a = urem i64 %.fr, 1000000000                ; 7 uses
  %i.b = or i64 %i.a, 1
  %i.c = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.b, i1 true)
  %i.d = xor i64 %i.c, 63
  %i.e = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !232   ; 2 uses
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = zext i8 %i.f to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !255
  %i.k = icmp ult i64 %i.a, %i.j
  %.neg.i.i = sext i1 %i.k to i32                 ; 2 uses
  %i.l = add nsw i32 %.neg.i.i, %i.g              ; 8 uses
  %i.m = icmp slt i32 %i.l, 9
  %i.n = tail call i32 @llvm.smin.i32(i32 %i.l, i32 9)
  %.sroa.speculated = sub i32 9, %i.n             ; 2 uses
  %i.o = icmp slt i32 %2, 0
  br i1 %i.o, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !351 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !354  ; 2 uses
  %i.r = add i64 %i.q, 1                          ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !339
  %i.u = icmp ugt i64 %i.r, %i.t
  br i1 %i.u, label %bb.c, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !260
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, i64 noundef %i.r), !inline_history !10
  %.pre.i.i = load i64, ptr %i.p, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.b, %bb.c
  %.pre-phi.i.i = phi i64 [ %i.r, %bb.b ], [ %.pre2.i.i, %bb.c ]
  %i.x = phi i64 [ %i.q, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.y = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !338
  store i64 %.pre-phi.i.i, ptr %i.p, align 8, !tbaa !354
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  store i8 46, ptr %i.z, align 1, !tbaa !232
  %.sroa.016.0.copyload = load ptr, ptr %0, align 8, !tbaa !351 ; 7 uses
  br i1 %i.m, label %.lr.ph.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit

.lr.ph.i:                                         ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 8 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 24
  br label %bb.d

bb.d:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %.lr.ph.i
  %.04.i = phi i32 [ 0, %.lr.ph.i ], [ %i.al, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ]
  %i.ad = load i64, ptr %i.aa, align 8, !tbaa !354 ; 2 uses
  %i.ae = add i64 %i.ad, 1                        ; 3 uses
  %i.af = load i64, ptr %i.ab, align 8, !tbaa !339
  %i.ag = icmp ugt i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.e, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !260
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.016.0.copyload, i64 noundef %i.ae), !inline_history !34
  %.pre.i.i.i = load i64, ptr %i.aa, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.e, %bb.d
  %.pre-phi.i.i.i = phi i64 [ %i.ae, %bb.d ], [ %.pre2.i.i.i, %bb.e ]
  %i.ai = phi i64 [ %i.ad, %bb.d ], [ %.pre.i.i.i, %bb.e ]
  %i.aj = load ptr, ptr %.sroa.016.0.copyload, align 8, !tbaa !338
  store i64 %.pre-phi.i.i.i, ptr %i.aa, align 8, !tbaa !354
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ai
  store i8 48, ptr %i.ak, align 1, !tbaa !232
  %i.al = add nuw nsw i32 %.04.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.al, %.sroa.speculated
  br i1 %exitcond.not.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, label %bb.d, !llvm.loop !14

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  store ptr %.sroa.016.0.copyload, ptr %0, align 8, !tbaa !351
  %i.am = tail call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.016.0.copyload, i64 noundef %i.a, i32 noundef %i.l)
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.copyload.i66 = load ptr, ptr %0, align 8, !tbaa !351 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i66, i64 8 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !354 ; 2 uses
  %i.ap = add i64 %i.ao, 1                        ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i66, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !339
  %i.as = icmp ugt i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.h, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i66, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !260
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i66, i64 noundef %i.ap), !inline_history !10
  %.pre.i.i68 = load i64, ptr %i.an, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i69 = add i64 %.pre.i.i68, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70

_ZN3fmt3v1214basic_appenderIcEaSEc.exit70:        ; preds = %bb.g, %bb.h
  %.pre-phi.i.i67 = phi i64 [ %i.ap, %bb.g ], [ %.pre2.i.i69, %bb.h ]
  %i.av = phi i64 [ %i.ao, %bb.g ], [ %.pre.i.i68, %bb.h ]
  %i.aw = load ptr, ptr %.sroa.0.0.copyload.i66, align 8, !tbaa !338
  store i64 %.pre-phi.i.i67, ptr %i.an, align 8, !tbaa !354
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.av
  store i8 46, ptr %i.ax, align 1, !tbaa !232
  %i.ay = tail call i32 @llvm.umin.i32(i32 %.sroa.speculated, i32 %2) ; 3 uses
  %i.az = sub nsw i32 %2, %i.ay                   ; 5 uses
  %.sroa.07.0.copyload = load ptr, ptr %0, align 8, !tbaa !351 ; 9 uses
  %.not97 = icmp sgt i32 %i.l, 8
  br i1 %.not97, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78, label %.lr.ph.i71

.lr.ph.i71:                                       ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 8 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 24
  br label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73, %.lr.ph.i71
  %.04.i72 = phi i32 [ 0, %.lr.ph.i71 ], [ %i.bl, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73 ]
  %i.bd = load i64, ptr %i.ba, align 8, !tbaa !354 ; 2 uses
  %i.be = add i64 %i.bd, 1                        ; 3 uses
  %i.bf = load i64, ptr %i.bb, align 8, !tbaa !339
  %i.bg = icmp ugt i64 %i.be, %i.bf
  br i1 %i.bg, label %bb.j, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73

bb.j:                                             ; preds = %bb.i
  %i.bh = load ptr, ptr %i.bc, align 8, !tbaa !260
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.07.0.copyload, i64 noundef %i.be), !inline_history !34
  %.pre.i.i.i76 = load i64, ptr %i.ba, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i.i77 = add i64 %.pre.i.i.i76, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73:      ; preds = %bb.j, %bb.i
  %.pre-phi.i.i.i74 = phi i64 [ %i.be, %bb.i ], [ %.pre2.i.i.i77, %bb.j ]
  %i.bi = phi i64 [ %i.bd, %bb.i ], [ %.pre.i.i.i76, %bb.j ]
  %i.bj = load ptr, ptr %.sroa.07.0.copyload, align 8, !tbaa !338
  store i64 %.pre-phi.i.i.i74, ptr %i.ba, align 8, !tbaa !354
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bi
  store i8 48, ptr %i.bk, align 1, !tbaa !232
  %i.bl = add nuw nsw i32 %.04.i72, 1             ; 2 uses
  %exitcond.not.i75 = icmp eq i32 %i.bl, %i.ay
  br i1 %exitcond.not.i75, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78, label %bb.i, !llvm.loop !14

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70
  store ptr %.sroa.07.0.copyload, ptr %0, align 8, !tbaa !351
  %.not65 = icmp slt i32 %i.az, %i.l
  br i1 %.not65, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78
  %i.bm = sub nsw i32 %i.l, %i.az                 ; 3 uses
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %_ZN3fmt3v126detail5pow10Ej.exit, label %tailrecurse.i.preheader

tailrecurse.i.preheader:                          ; preds = %bb.k
  %i.bo = add nsw i32 %i.ay, %.neg.i.i
  %i.bp = add i32 %i.bo, %i.g
  %xtraiter = and i32 %i.bm, 7                    ; 3 uses
  %i.bq = sub i32 %2, %i.bp
  %i.br = icmp ugt i32 %i.bq, -8
  br i1 %i.br, label %tailrecurse.i.epil.preheader, label %tailrecurse.i.preheader.new

tailrecurse.i.preheader.new:                      ; preds = %tailrecurse.i.preheader
  %unroll_iter = and i32 %i.bm, -8
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i, %tailrecurse.i.preheader.new
  %accumulator.tr2.i = phi i64 [ 1, %tailrecurse.i.preheader.new ], [ %i.bs, %tailrecurse.i ]
  %niter = phi i32 [ 0, %tailrecurse.i.preheader.new ], [ %niter.next.7, %tailrecurse.i ]
  %i.bs = mul i64 %accumulator.tr2.i, 100000000   ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa, label %tailrecurse.i

_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa: ; preds = %tailrecurse.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3fmt3v126detail5pow10Ej.exit, label %tailrecurse.i.epil.preheader

tailrecurse.i.epil.preheader:                     ; preds = %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa, %tailrecurse.i.preheader
  %accumulator.tr2.i.epil.init = phi i64 [ 1, %tailrecurse.i.preheader ], [ %i.bs, %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa ]
  %lcmp.mod119 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod119)
  br label %tailrecurse.i.epil

tailrecurse.i.epil:                               ; preds = %tailrecurse.i.epil, %tailrecurse.i.epil.preheader
  %accumulator.tr2.i.epil = phi i64 [ %i.bt, %tailrecurse.i.epil ], [ %accumulator.tr2.i.epil.init, %tailrecurse.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %tailrecurse.i.epil ], [ 0, %tailrecurse.i.epil.preheader ]
  %i.bt = mul i64 %accumulator.tr2.i.epil, 10     ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN3fmt3v126detail5pow10Ej.exit, label %tailrecurse.i.epil, !llvm.loop !5149

_ZN3fmt3v126detail5pow10Ej.exit:                  ; preds = %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa, %tailrecurse.i.epil, %bb.k
  %accumulator.tr.lcssa.i = phi i64 [ 1, %bb.k ], [ %i.bs, %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa ], [ %i.bt, %tailrecurse.i.epil ] ; 2 uses
  %.not64 = icmp ugt i64 %accumulator.tr.lcssa.i, %i.a
  br i1 %.not64, label %bb.r, label %bb.l

bb.l:                                             ; preds = %_ZN3fmt3v126detail5pow10Ej.exit
  %i.bu = udiv i64 %i.a, %accumulator.tr.lcssa.i
  %i.bv = tail call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.07.0.copyload, i64 noundef %i.bu, i32 noundef %i.az)
  br label %.sink.split

bb.m:                                             ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78
  %.not63 = icmp eq i64 %i.a, 0
  br i1 %.not63, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bw = tail call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.07.0.copyload, i64 noundef %i.a, i32 noundef %i.l) ; 2 uses
  store ptr %i.bw, ptr %0, align 8, !tbaa !351
  %i.bx = sub nsw i32 %i.az, %i.l
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.0.0.copyload = phi ptr [ %i.bw, %bb.n ], [ %.sroa.07.0.copyload, %bb.m ] ; 7 uses
  %.056 = phi i32 [ %i.bx, %bb.n ], [ %i.az, %bb.m ] ; 2 uses
  %i.by = icmp sgt i32 %.056, 0
  br i1 %i.by, label %.lr.ph.i79, label %.sink.split

.lr.ph.i79:                                       ; preds = %bb.o
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  br label %bb.p

bb.p:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81, %.lr.ph.i79
  %.04.i80 = phi i32 [ 0, %.lr.ph.i79 ], [ %i.ck, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81 ]
  %i.cc = load i64, ptr %i.bz, align 8, !tbaa !354 ; 2 uses
  %i.cd = add i64 %i.cc, 1                        ; 3 uses
  %i.ce = load i64, ptr %i.ca, align 8, !tbaa !339
  %i.cf = icmp ugt i64 %i.cd, %i.ce
  br i1 %i.cf, label %bb.q, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81

bb.q:                                             ; preds = %bb.p
  %i.cg = load ptr, ptr %i.cb, align 8, !tbaa !260
  tail call void %i.cg(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload, i64 noundef %i.cd), !inline_history !34
  %.pre.i.i.i84 = load i64, ptr %i.bz, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i.i85 = add i64 %.pre.i.i.i84, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81:      ; preds = %bb.q, %bb.p
  %.pre-phi.i.i.i82 = phi i64 [ %i.cd, %bb.p ], [ %.pre2.i.i.i85, %bb.q ]
  %i.ch = phi i64 [ %i.cc, %bb.p ], [ %.pre.i.i.i84, %bb.q ]
  %i.ci = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !338
  store i64 %.pre-phi.i.i.i82, ptr %i.bz, align 8, !tbaa !354
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ch
  store i8 48, ptr %i.cj, align 1, !tbaa !232
  %i.ck = add nuw nsw i32 %.04.i80, 1             ; 2 uses
  %exitcond.not.i83 = icmp eq i32 %i.ck, %.056
  br i1 %exitcond.not.i83, label %.sink.split, label %bb.p, !llvm.loop !14

.sink.split:                                      ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81, %bb.o, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, %bb.l
  %.sroa.0.0.copyload.sink = phi ptr [ %i.am, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit ], [ %i.bv, %bb.l ], [ %.sroa.0.0.copyload, %bb.o ], [ %.sroa.0.0.copyload, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81 ]
  store ptr %.sroa.0.0.copyload.sink, ptr %0, align 8, !tbaa !351
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %_ZN3fmt3v126detail5pow10Ej.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1000000000EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvvEJEEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 %2, i64 %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.fmt::v12::locale_ref", align 8 ; 5 uses
  %5 = alloca %"class.fmt::v12::detail::get_locale", align 8 ; 8 uses
  %6 = alloca %"class.fmt::v12::detail::tm_writer", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !407, !range !249, !noundef !250 ; 2 uses
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.02.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !335
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %.sroa.02.0.copyload, ptr %4, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i8 %i.b, ptr %i.e, align 8, !tbaa !341
  br i1 %i.c, label %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit, label %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread

_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  br label %bb.b

_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit: ; preds = %bb.a
  call void @_ZNK3fmt3v1210locale_ref3getISt6localeEET_v(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 dereferenceable(9) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %.pre = load i8, ptr %i.e, align 8, !tbaa !341, !range !249
  %i.f = trunc nuw i8 %.pre to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  br i1 %i.f, label %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit
  %i.g = load atomic i8, ptr @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, !prof !342

bb.c:                                             ; preds = %bb.b
  %i.i = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %i.j, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %.body

_ZN3fmt3v126detail18get_classic_localeEv.exit.i:  ; preds = %bb.e, %bb.c, %bb.b
  %i.l = load ptr, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344, !nonnull !250, !align !336
  br label %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit

_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit: ; preds = %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit
  %i.m = phi ptr [ %i.l, %_ZN3fmt3v126detail18get_classic_localeEv.exit.i ], [ %5, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit ] ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8, !tbaa !351
  store ptr %i.m, ptr %6, align 8, !tbaa !344
  %i.n = load atomic i8, ptr @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale acquire, align 8
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.k, !prof !342

bb.g:                                             ; preds = %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit
  %i.p = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  %.not.i.i13 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i13, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %i.q, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %.body

bb.k:                                             ; preds = %bb.i, %bb.g, %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.t = load ptr, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344, !nonnull !250, !align !336
  %i.u = call noundef zeroext i1 @_ZNKSt6localeeqERKS_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.t) #30
  %i.v = zext i1 %i.u to i8
  store i8 %i.v, ptr %i.s, align 8, !tbaa !350
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %.sroa.01.0.copyload, ptr %i.w, align 8, !tbaa !351
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 24
end_hunk_3
begin_hunk_4_@_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1000000EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSF_SG_EEEvRK2tmT_DpT0_:bb.a
bb.n:                                             ; preds = %.body
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %7) #30
  br label %_ZN3fmt3v126detail10get_localeD2Ev.exit

_ZN3fmt3v126detail10get_localeD2Ev.exit:          ; preds = %.body, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  resume { ptr, i32 } %eh.lpad-body

bb.o:                                             ; preds = %bb.k
  %i.ai = inttoptr i64 %2 to ptr
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %i.aj = phi ptr [ %i.ae, %bb.l ], [ %i.ai, %bb.o ]
  invoke void %i.aj(ptr noundef nonnull align 8 dereferenceable(40) %i.z, i32 noundef %4, i32 noundef %5)
          to label %bb.q unwind label %bb.m

bb.q:                                             ; preds = %bb.p
  %.sroa.0.0.copyload.i = load ptr, ptr %i.w, align 8, !tbaa !351
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8, !tbaa !351
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.ak = load i8, ptr %i.e, align 8, !tbaa !341, !range !249, !noundef !250
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %7) #30
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail24write_fractional_secondsIcNS0_14basic_appenderIcEENSt6chrono8durationImSt5ratioILl1ELl1000000EEEEEEvRT0_T1_i(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, i32 noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %.fr = freeze i64 %1
  %i.a = urem i64 %.fr, 1000000                   ; 7 uses
  %i.b = or i64 %i.a, 1
  %i.c = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.b, i1 true)
  %i.d = xor i64 %i.c, 63
  %i.e = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !232   ; 2 uses
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = zext i8 %i.f to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !255
  %i.k = icmp ult i64 %i.a, %i.j
  %.neg.i.i = sext i1 %i.k to i32                 ; 2 uses
  %i.l = add nsw i32 %.neg.i.i, %i.g              ; 8 uses
  %i.m = icmp slt i32 %i.l, 6
  %i.n = tail call i32 @llvm.smin.i32(i32 %i.l, i32 6)
  %.sroa.speculated = sub i32 6, %i.n             ; 2 uses
  %i.o = icmp slt i32 %2, 0
  br i1 %i.o, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !351 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !354  ; 2 uses
  %i.r = add i64 %i.q, 1                          ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !339
  %i.u = icmp ugt i64 %i.r, %i.t
  br i1 %i.u, label %bb.c, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !260
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, i64 noundef %i.r), !inline_history !10
  %.pre.i.i = load i64, ptr %i.p, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.b, %bb.c
  %.pre-phi.i.i = phi i64 [ %i.r, %bb.b ], [ %.pre2.i.i, %bb.c ]
  %i.x = phi i64 [ %i.q, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.y = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !338
  store i64 %.pre-phi.i.i, ptr %i.p, align 8, !tbaa !354
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  store i8 46, ptr %i.z, align 1, !tbaa !232
  %.sroa.016.0.copyload = load ptr, ptr %0, align 8, !tbaa !351 ; 7 uses
  br i1 %i.m, label %.lr.ph.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit

.lr.ph.i:                                         ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 8 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 24
  br label %bb.d

bb.d:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %.lr.ph.i
  %.04.i = phi i32 [ 0, %.lr.ph.i ], [ %i.al, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ]
  %i.ad = load i64, ptr %i.aa, align 8, !tbaa !354 ; 2 uses
  %i.ae = add i64 %i.ad, 1                        ; 3 uses
  %i.af = load i64, ptr %i.ab, align 8, !tbaa !339
  %i.ag = icmp ugt i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.e, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !260
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.016.0.copyload, i64 noundef %i.ae), !inline_history !34
  %.pre.i.i.i = load i64, ptr %i.aa, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.e, %bb.d
  %.pre-phi.i.i.i = phi i64 [ %i.ae, %bb.d ], [ %.pre2.i.i.i, %bb.e ]
  %i.ai = phi i64 [ %i.ad, %bb.d ], [ %.pre.i.i.i, %bb.e ]
  %i.aj = load ptr, ptr %.sroa.016.0.copyload, align 8, !tbaa !338
  store i64 %.pre-phi.i.i.i, ptr %i.aa, align 8, !tbaa !354
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ai
  store i8 48, ptr %i.ak, align 1, !tbaa !232
  %i.al = add nuw nsw i32 %.04.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.al, %.sroa.speculated
  br i1 %exitcond.not.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, label %bb.d, !llvm.loop !14

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  store ptr %.sroa.016.0.copyload, ptr %0, align 8, !tbaa !351
  %i.am = tail call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.016.0.copyload, i64 noundef %i.a, i32 noundef %i.l)
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.copyload.i66 = load ptr, ptr %0, align 8, !tbaa !351 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i66, i64 8 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !354 ; 2 uses
  %i.ap = add i64 %i.ao, 1                        ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i66, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !339
  %i.as = icmp ugt i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.h, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i66, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !260
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i66, i64 noundef %i.ap), !inline_history !10
  %.pre.i.i68 = load i64, ptr %i.an, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i69 = add i64 %.pre.i.i68, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70

_ZN3fmt3v1214basic_appenderIcEaSEc.exit70:        ; preds = %bb.g, %bb.h
  %.pre-phi.i.i67 = phi i64 [ %i.ap, %bb.g ], [ %.pre2.i.i69, %bb.h ]
  %i.av = phi i64 [ %i.ao, %bb.g ], [ %.pre.i.i68, %bb.h ]
  %i.aw = load ptr, ptr %.sroa.0.0.copyload.i66, align 8, !tbaa !338
  store i64 %.pre-phi.i.i67, ptr %i.an, align 8, !tbaa !354
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.av
  store i8 46, ptr %i.ax, align 1, !tbaa !232
  %i.ay = tail call i32 @llvm.umin.i32(i32 %.sroa.speculated, i32 %2) ; 3 uses
  %i.az = sub nsw i32 %2, %i.ay                   ; 5 uses
  %.sroa.07.0.copyload = load ptr, ptr %0, align 8, !tbaa !351 ; 9 uses
  %.not97 = icmp sgt i32 %i.l, 5
  br i1 %.not97, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78, label %.lr.ph.i71

.lr.ph.i71:                                       ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 8 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 24
  br label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73, %.lr.ph.i71
  %.04.i72 = phi i32 [ 0, %.lr.ph.i71 ], [ %i.bl, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73 ]
  %i.bd = load i64, ptr %i.ba, align 8, !tbaa !354 ; 2 uses
  %i.be = add i64 %i.bd, 1                        ; 3 uses
  %i.bf = load i64, ptr %i.bb, align 8, !tbaa !339
  %i.bg = icmp ugt i64 %i.be, %i.bf
  br i1 %i.bg, label %bb.j, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73

bb.j:                                             ; preds = %bb.i
  %i.bh = load ptr, ptr %i.bc, align 8, !tbaa !260
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.07.0.copyload, i64 noundef %i.be), !inline_history !34
  %.pre.i.i.i76 = load i64, ptr %i.ba, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i.i77 = add i64 %.pre.i.i.i76, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73:      ; preds = %bb.j, %bb.i
  %.pre-phi.i.i.i74 = phi i64 [ %i.be, %bb.i ], [ %.pre2.i.i.i77, %bb.j ]
  %i.bi = phi i64 [ %i.bd, %bb.i ], [ %.pre.i.i.i76, %bb.j ]
  %i.bj = load ptr, ptr %.sroa.07.0.copyload, align 8, !tbaa !338
  store i64 %.pre-phi.i.i.i74, ptr %i.ba, align 8, !tbaa !354
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bi
  store i8 48, ptr %i.bk, align 1, !tbaa !232
  %i.bl = add nuw nsw i32 %.04.i72, 1             ; 2 uses
  %exitcond.not.i75 = icmp eq i32 %i.bl, %i.ay
  br i1 %exitcond.not.i75, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78, label %bb.i, !llvm.loop !14

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70
  store ptr %.sroa.07.0.copyload, ptr %0, align 8, !tbaa !351
  %.not65 = icmp slt i32 %i.az, %i.l
  br i1 %.not65, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78
  %i.bm = sub nsw i32 %i.l, %i.az                 ; 3 uses
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %_ZN3fmt3v126detail5pow10Ej.exit, label %tailrecurse.i.preheader

tailrecurse.i.preheader:                          ; preds = %bb.k
  %i.bo = add nsw i32 %i.ay, %.neg.i.i
  %i.bp = add i32 %i.bo, %i.g
  %xtraiter = and i32 %i.bm, 7                    ; 3 uses
  %i.bq = sub i32 %2, %i.bp
  %i.br = icmp ugt i32 %i.bq, -8
  br i1 %i.br, label %tailrecurse.i.epil.preheader, label %tailrecurse.i.preheader.new

tailrecurse.i.preheader.new:                      ; preds = %tailrecurse.i.preheader
  %unroll_iter = and i32 %i.bm, -8
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i, %tailrecurse.i.preheader.new
  %accumulator.tr2.i = phi i64 [ 1, %tailrecurse.i.preheader.new ], [ %i.bs, %tailrecurse.i ]
  %niter = phi i32 [ 0, %tailrecurse.i.preheader.new ], [ %niter.next.7, %tailrecurse.i ]
  %i.bs = mul i64 %accumulator.tr2.i, 100000000   ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa, label %tailrecurse.i

_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa: ; preds = %tailrecurse.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3fmt3v126detail5pow10Ej.exit, label %tailrecurse.i.epil.preheader

tailrecurse.i.epil.preheader:                     ; preds = %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa, %tailrecurse.i.preheader
  %accumulator.tr2.i.epil.init = phi i64 [ 1, %tailrecurse.i.preheader ], [ %i.bs, %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa ]
  %lcmp.mod119 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod119)
  br label %tailrecurse.i.epil

tailrecurse.i.epil:                               ; preds = %tailrecurse.i.epil, %tailrecurse.i.epil.preheader
  %accumulator.tr2.i.epil = phi i64 [ %i.bt, %tailrecurse.i.epil ], [ %accumulator.tr2.i.epil.init, %tailrecurse.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %tailrecurse.i.epil ], [ 0, %tailrecurse.i.epil.preheader ]
  %i.bt = mul i64 %accumulator.tr2.i.epil, 10     ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN3fmt3v126detail5pow10Ej.exit, label %tailrecurse.i.epil, !llvm.loop !5174

_ZN3fmt3v126detail5pow10Ej.exit:                  ; preds = %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa, %tailrecurse.i.epil, %bb.k
  %accumulator.tr.lcssa.i = phi i64 [ 1, %bb.k ], [ %i.bs, %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa ], [ %i.bt, %tailrecurse.i.epil ] ; 2 uses
  %.not64 = icmp ugt i64 %accumulator.tr.lcssa.i, %i.a
  br i1 %.not64, label %bb.r, label %bb.l

bb.l:                                             ; preds = %_ZN3fmt3v126detail5pow10Ej.exit
  %i.bu = udiv i64 %i.a, %accumulator.tr.lcssa.i
  %i.bv = tail call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.07.0.copyload, i64 noundef %i.bu, i32 noundef %i.az)
  br label %.sink.split

bb.m:                                             ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78
  %.not63 = icmp eq i64 %i.a, 0
  br i1 %.not63, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bw = tail call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.07.0.copyload, i64 noundef %i.a, i32 noundef %i.l) ; 2 uses
  store ptr %i.bw, ptr %0, align 8, !tbaa !351
  %i.bx = sub nsw i32 %i.az, %i.l
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.0.0.copyload = phi ptr [ %i.bw, %bb.n ], [ %.sroa.07.0.copyload, %bb.m ] ; 7 uses
  %.056 = phi i32 [ %i.bx, %bb.n ], [ %i.az, %bb.m ] ; 2 uses
  %i.by = icmp sgt i32 %.056, 0
  br i1 %i.by, label %.lr.ph.i79, label %.sink.split

.lr.ph.i79:                                       ; preds = %bb.o
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  br label %bb.p

bb.p:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81, %.lr.ph.i79
  %.04.i80 = phi i32 [ 0, %.lr.ph.i79 ], [ %i.ck, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81 ]
  %i.cc = load i64, ptr %i.bz, align 8, !tbaa !354 ; 2 uses
  %i.cd = add i64 %i.cc, 1                        ; 3 uses
  %i.ce = load i64, ptr %i.ca, align 8, !tbaa !339
  %i.cf = icmp ugt i64 %i.cd, %i.ce
  br i1 %i.cf, label %bb.q, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81

bb.q:                                             ; preds = %bb.p
  %i.cg = load ptr, ptr %i.cb, align 8, !tbaa !260
  tail call void %i.cg(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload, i64 noundef %i.cd), !inline_history !34
  %.pre.i.i.i84 = load i64, ptr %i.bz, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i.i85 = add i64 %.pre.i.i.i84, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81:      ; preds = %bb.q, %bb.p
  %.pre-phi.i.i.i82 = phi i64 [ %i.cd, %bb.p ], [ %.pre2.i.i.i85, %bb.q ]
  %i.ch = phi i64 [ %i.cc, %bb.p ], [ %.pre.i.i.i84, %bb.q ]
  %i.ci = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !338
  store i64 %.pre-phi.i.i.i82, ptr %i.bz, align 8, !tbaa !354
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ch
  store i8 48, ptr %i.cj, align 1, !tbaa !232
  %i.ck = add nuw nsw i32 %.04.i80, 1             ; 2 uses
  %exitcond.not.i83 = icmp eq i32 %i.ck, %.056
  br i1 %exitcond.not.i83, label %.sink.split, label %bb.p, !llvm.loop !14

.sink.split:                                      ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81, %bb.o, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, %bb.l
  %.sroa.0.0.copyload.sink = phi ptr [ %i.am, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit ], [ %i.bv, %bb.l ], [ %.sroa.0.0.copyload, %bb.o ], [ %.sroa.0.0.copyload, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81 ]
  store ptr %.sroa.0.0.copyload.sink, ptr %0, align 8, !tbaa !351
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %_ZN3fmt3v126detail5pow10Ej.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1000000EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvvEJEEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 %2, i64 %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.fmt::v12::locale_ref", align 8 ; 5 uses
  %5 = alloca %"class.fmt::v12::detail::get_locale", align 8 ; 8 uses
  %6 = alloca %"class.fmt::v12::detail::tm_writer", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !412, !range !249, !noundef !250 ; 2 uses
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.02.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !335
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %.sroa.02.0.copyload, ptr %4, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i8 %i.b, ptr %i.e, align 8, !tbaa !341
  br i1 %i.c, label %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit, label %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread

_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  br label %bb.b

_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit: ; preds = %bb.a
  call void @_ZNK3fmt3v1210locale_ref3getISt6localeEET_v(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 dereferenceable(9) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %.pre = load i8, ptr %i.e, align 8, !tbaa !341, !range !249
  %i.f = trunc nuw i8 %.pre to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  br i1 %i.f, label %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit
  %i.g = load atomic i8, ptr @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, !prof !342

bb.c:                                             ; preds = %bb.b
  %i.i = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %i.j, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %.body

_ZN3fmt3v126detail18get_classic_localeEv.exit.i:  ; preds = %bb.e, %bb.c, %bb.b
  %i.l = load ptr, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344, !nonnull !250, !align !336
  br label %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit

_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit: ; preds = %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit
  %i.m = phi ptr [ %i.l, %_ZN3fmt3v126detail18get_classic_localeEv.exit.i ], [ %5, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit ] ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8, !tbaa !351
  store ptr %i.m, ptr %6, align 8, !tbaa !344
  %i.n = load atomic i8, ptr @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale acquire, align 8
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.k, !prof !342

bb.g:                                             ; preds = %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit
  %i.p = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  %.not.i.i13 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i13, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %i.q, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %.body

bb.k:                                             ; preds = %bb.i, %bb.g, %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.t = load ptr, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344, !nonnull !250, !align !336
  %i.u = call noundef zeroext i1 @_ZNKSt6localeeqERKS_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.t) #30
  %i.v = zext i1 %i.u to i8
  store i8 %i.v, ptr %i.s, align 8, !tbaa !350
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %.sroa.01.0.copyload, ptr %i.w, align 8, !tbaa !351
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 24
end_hunk_4
begin_hunk_5_@_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1000EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSF_SG_EEEvRK2tmT_DpT0_:bb.a
bb.n:                                             ; preds = %.body
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %7) #30
  br label %_ZN3fmt3v126detail10get_localeD2Ev.exit

_ZN3fmt3v126detail10get_localeD2Ev.exit:          ; preds = %.body, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  resume { ptr, i32 } %eh.lpad-body

bb.o:                                             ; preds = %bb.k
  %i.ai = inttoptr i64 %2 to ptr
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %i.aj = phi ptr [ %i.ae, %bb.l ], [ %i.ai, %bb.o ]
  invoke void %i.aj(ptr noundef nonnull align 8 dereferenceable(40) %i.z, i32 noundef %4, i32 noundef %5)
          to label %bb.q unwind label %bb.m

bb.q:                                             ; preds = %bb.p
  %.sroa.0.0.copyload.i = load ptr, ptr %i.w, align 8, !tbaa !351
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8, !tbaa !351
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.ak = load i8, ptr %i.e, align 8, !tbaa !341, !range !249, !noundef !250
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %7) #30
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail24write_fractional_secondsIcNS0_14basic_appenderIcEENSt6chrono8durationImSt5ratioILl1ELl1000EEEEEEvRT0_T1_i(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, i32 noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %.fr = freeze i64 %1
  %i.a = urem i64 %.fr, 1000                      ; 7 uses
  %i.b = or i64 %i.a, 1
  %i.c = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.b, i1 true)
  %i.d = xor i64 %i.c, 63
  %i.e = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !232   ; 2 uses
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = zext i8 %i.f to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !255
  %i.k = icmp ult i64 %i.a, %i.j
  %.neg.i.i = sext i1 %i.k to i32                 ; 2 uses
  %i.l = add nsw i32 %.neg.i.i, %i.g              ; 8 uses
  %i.m = icmp slt i32 %i.l, 3
  %i.n = tail call i32 @llvm.smin.i32(i32 %i.l, i32 3)
  %.sroa.speculated = sub i32 3, %i.n             ; 2 uses
  %i.o = icmp slt i32 %2, 0
  br i1 %i.o, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !351 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !354  ; 2 uses
  %i.r = add i64 %i.q, 1                          ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !339
  %i.u = icmp ugt i64 %i.r, %i.t
  br i1 %i.u, label %bb.c, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !260
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, i64 noundef %i.r), !inline_history !10
  %.pre.i.i = load i64, ptr %i.p, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.b, %bb.c
  %.pre-phi.i.i = phi i64 [ %i.r, %bb.b ], [ %.pre2.i.i, %bb.c ]
  %i.x = phi i64 [ %i.q, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.y = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !338
  store i64 %.pre-phi.i.i, ptr %i.p, align 8, !tbaa !354
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  store i8 46, ptr %i.z, align 1, !tbaa !232
  %.sroa.016.0.copyload = load ptr, ptr %0, align 8, !tbaa !351 ; 7 uses
  br i1 %i.m, label %.lr.ph.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit

.lr.ph.i:                                         ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 8 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 24
  br label %bb.d

bb.d:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %.lr.ph.i
  %.04.i = phi i32 [ 0, %.lr.ph.i ], [ %i.al, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ]
  %i.ad = load i64, ptr %i.aa, align 8, !tbaa !354 ; 2 uses
  %i.ae = add i64 %i.ad, 1                        ; 3 uses
  %i.af = load i64, ptr %i.ab, align 8, !tbaa !339
  %i.ag = icmp ugt i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.e, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !260
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.016.0.copyload, i64 noundef %i.ae), !inline_history !34
  %.pre.i.i.i = load i64, ptr %i.aa, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.e, %bb.d
  %.pre-phi.i.i.i = phi i64 [ %i.ae, %bb.d ], [ %.pre2.i.i.i, %bb.e ]
  %i.ai = phi i64 [ %i.ad, %bb.d ], [ %.pre.i.i.i, %bb.e ]
  %i.aj = load ptr, ptr %.sroa.016.0.copyload, align 8, !tbaa !338
  store i64 %.pre-phi.i.i.i, ptr %i.aa, align 8, !tbaa !354
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ai
  store i8 48, ptr %i.ak, align 1, !tbaa !232
  %i.al = add nuw nsw i32 %.04.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.al, %.sroa.speculated
  br i1 %exitcond.not.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, label %bb.d, !llvm.loop !14

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  store ptr %.sroa.016.0.copyload, ptr %0, align 8, !tbaa !351
  %i.am = tail call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.016.0.copyload, i64 noundef %i.a, i32 noundef %i.l)
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.copyload.i66 = load ptr, ptr %0, align 8, !tbaa !351 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i66, i64 8 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !354 ; 2 uses
  %i.ap = add i64 %i.ao, 1                        ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i66, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !339
  %i.as = icmp ugt i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.h, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i66, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !260
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i66, i64 noundef %i.ap), !inline_history !10
  %.pre.i.i68 = load i64, ptr %i.an, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i69 = add i64 %.pre.i.i68, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70

_ZN3fmt3v1214basic_appenderIcEaSEc.exit70:        ; preds = %bb.g, %bb.h
  %.pre-phi.i.i67 = phi i64 [ %i.ap, %bb.g ], [ %.pre2.i.i69, %bb.h ]
  %i.av = phi i64 [ %i.ao, %bb.g ], [ %.pre.i.i68, %bb.h ]
  %i.aw = load ptr, ptr %.sroa.0.0.copyload.i66, align 8, !tbaa !338
  store i64 %.pre-phi.i.i67, ptr %i.an, align 8, !tbaa !354
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.av
  store i8 46, ptr %i.ax, align 1, !tbaa !232
  %i.ay = tail call i32 @llvm.umin.i32(i32 %.sroa.speculated, i32 %2) ; 3 uses
  %i.az = sub nsw i32 %2, %i.ay                   ; 5 uses
  %.sroa.07.0.copyload = load ptr, ptr %0, align 8, !tbaa !351 ; 9 uses
  %.not97 = icmp sgt i32 %i.l, 2
  br i1 %.not97, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78, label %.lr.ph.i71

.lr.ph.i71:                                       ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 8 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 24
  br label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73, %.lr.ph.i71
  %.04.i72 = phi i32 [ 0, %.lr.ph.i71 ], [ %i.bl, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73 ]
  %i.bd = load i64, ptr %i.ba, align 8, !tbaa !354 ; 2 uses
  %i.be = add i64 %i.bd, 1                        ; 3 uses
  %i.bf = load i64, ptr %i.bb, align 8, !tbaa !339
  %i.bg = icmp ugt i64 %i.be, %i.bf
  br i1 %i.bg, label %bb.j, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73

bb.j:                                             ; preds = %bb.i
  %i.bh = load ptr, ptr %i.bc, align 8, !tbaa !260
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.07.0.copyload, i64 noundef %i.be), !inline_history !34
  %.pre.i.i.i76 = load i64, ptr %i.ba, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i.i77 = add i64 %.pre.i.i.i76, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73:      ; preds = %bb.j, %bb.i
  %.pre-phi.i.i.i74 = phi i64 [ %i.be, %bb.i ], [ %.pre2.i.i.i77, %bb.j ]
  %i.bi = phi i64 [ %i.bd, %bb.i ], [ %.pre.i.i.i76, %bb.j ]
  %i.bj = load ptr, ptr %.sroa.07.0.copyload, align 8, !tbaa !338
  store i64 %.pre-phi.i.i.i74, ptr %i.ba, align 8, !tbaa !354
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bi
  store i8 48, ptr %i.bk, align 1, !tbaa !232
  %i.bl = add nuw nsw i32 %.04.i72, 1             ; 2 uses
  %exitcond.not.i75 = icmp eq i32 %i.bl, %i.ay
  br i1 %exitcond.not.i75, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78, label %bb.i, !llvm.loop !14

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70
  store ptr %.sroa.07.0.copyload, ptr %0, align 8, !tbaa !351
  %.not65 = icmp slt i32 %i.az, %i.l
  br i1 %.not65, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78
  %i.bm = sub nsw i32 %i.l, %i.az                 ; 3 uses
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %_ZN3fmt3v126detail5pow10Ej.exit, label %tailrecurse.i.preheader

tailrecurse.i.preheader:                          ; preds = %bb.k
  %i.bo = add nsw i32 %i.ay, %.neg.i.i
  %i.bp = add i32 %i.bo, %i.g
  %xtraiter = and i32 %i.bm, 7                    ; 3 uses
  %i.bq = sub i32 %2, %i.bp
  %i.br = icmp ugt i32 %i.bq, -8
  br i1 %i.br, label %tailrecurse.i.epil.preheader, label %tailrecurse.i.preheader.new

tailrecurse.i.preheader.new:                      ; preds = %tailrecurse.i.preheader
  %unroll_iter = and i32 %i.bm, -8
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i, %tailrecurse.i.preheader.new
  %accumulator.tr2.i = phi i64 [ 1, %tailrecurse.i.preheader.new ], [ %i.bs, %tailrecurse.i ]
  %niter = phi i32 [ 0, %tailrecurse.i.preheader.new ], [ %niter.next.7, %tailrecurse.i ]
  %i.bs = mul i64 %accumulator.tr2.i, 100000000   ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa, label %tailrecurse.i

_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa: ; preds = %tailrecurse.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3fmt3v126detail5pow10Ej.exit, label %tailrecurse.i.epil.preheader

tailrecurse.i.epil.preheader:                     ; preds = %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa, %tailrecurse.i.preheader
  %accumulator.tr2.i.epil.init = phi i64 [ 1, %tailrecurse.i.preheader ], [ %i.bs, %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa ]
  %lcmp.mod119 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod119)
  br label %tailrecurse.i.epil

tailrecurse.i.epil:                               ; preds = %tailrecurse.i.epil, %tailrecurse.i.epil.preheader
  %accumulator.tr2.i.epil = phi i64 [ %i.bt, %tailrecurse.i.epil ], [ %accumulator.tr2.i.epil.init, %tailrecurse.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %tailrecurse.i.epil ], [ 0, %tailrecurse.i.epil.preheader ]
  %i.bt = mul i64 %accumulator.tr2.i.epil, 10     ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN3fmt3v126detail5pow10Ej.exit, label %tailrecurse.i.epil, !llvm.loop !5198

_ZN3fmt3v126detail5pow10Ej.exit:                  ; preds = %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa, %tailrecurse.i.epil, %bb.k
  %accumulator.tr.lcssa.i = phi i64 [ 1, %bb.k ], [ %i.bs, %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa ], [ %i.bt, %tailrecurse.i.epil ] ; 2 uses
  %.not64 = icmp ugt i64 %accumulator.tr.lcssa.i, %i.a
  br i1 %.not64, label %bb.r, label %bb.l

bb.l:                                             ; preds = %_ZN3fmt3v126detail5pow10Ej.exit
  %i.bu = udiv i64 %i.a, %accumulator.tr.lcssa.i
  %i.bv = tail call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.07.0.copyload, i64 noundef %i.bu, i32 noundef %i.az)
  br label %.sink.split

bb.m:                                             ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78
  %.not63 = icmp eq i64 %i.a, 0
  br i1 %.not63, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bw = tail call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.07.0.copyload, i64 noundef %i.a, i32 noundef %i.l) ; 2 uses
  store ptr %i.bw, ptr %0, align 8, !tbaa !351
  %i.bx = sub nsw i32 %i.az, %i.l
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.0.0.copyload = phi ptr [ %i.bw, %bb.n ], [ %.sroa.07.0.copyload, %bb.m ] ; 7 uses
  %.056 = phi i32 [ %i.bx, %bb.n ], [ %i.az, %bb.m ] ; 2 uses
  %i.by = icmp sgt i32 %.056, 0
  br i1 %i.by, label %.lr.ph.i79, label %.sink.split

.lr.ph.i79:                                       ; preds = %bb.o
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  br label %bb.p

bb.p:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81, %.lr.ph.i79
  %.04.i80 = phi i32 [ 0, %.lr.ph.i79 ], [ %i.ck, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81 ]
  %i.cc = load i64, ptr %i.bz, align 8, !tbaa !354 ; 2 uses
  %i.cd = add i64 %i.cc, 1                        ; 3 uses
  %i.ce = load i64, ptr %i.ca, align 8, !tbaa !339
  %i.cf = icmp ugt i64 %i.cd, %i.ce
  br i1 %i.cf, label %bb.q, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81

bb.q:                                             ; preds = %bb.p
  %i.cg = load ptr, ptr %i.cb, align 8, !tbaa !260
  tail call void %i.cg(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload, i64 noundef %i.cd), !inline_history !34
  %.pre.i.i.i84 = load i64, ptr %i.bz, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i.i85 = add i64 %.pre.i.i.i84, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81:      ; preds = %bb.q, %bb.p
  %.pre-phi.i.i.i82 = phi i64 [ %i.cd, %bb.p ], [ %.pre2.i.i.i85, %bb.q ]
  %i.ch = phi i64 [ %i.cc, %bb.p ], [ %.pre.i.i.i84, %bb.q ]
  %i.ci = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !338
  store i64 %.pre-phi.i.i.i82, ptr %i.bz, align 8, !tbaa !354
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ch
  store i8 48, ptr %i.cj, align 1, !tbaa !232
  %i.ck = add nuw nsw i32 %.04.i80, 1             ; 2 uses
  %exitcond.not.i83 = icmp eq i32 %i.ck, %.056
  br i1 %exitcond.not.i83, label %.sink.split, label %bb.p, !llvm.loop !14

.sink.split:                                      ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81, %bb.o, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, %bb.l
  %.sroa.0.0.copyload.sink = phi ptr [ %i.am, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit ], [ %i.bv, %bb.l ], [ %.sroa.0.0.copyload, %bb.o ], [ %.sroa.0.0.copyload, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81 ]
  store ptr %.sroa.0.0.copyload.sink, ptr %0, align 8, !tbaa !351
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %_ZN3fmt3v126detail5pow10Ej.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1000EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvvEJEEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 %2, i64 %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.fmt::v12::locale_ref", align 8 ; 5 uses
  %5 = alloca %"class.fmt::v12::detail::get_locale", align 8 ; 8 uses
  %6 = alloca %"class.fmt::v12::detail::tm_writer", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !417, !range !249, !noundef !250 ; 2 uses
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.02.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !335
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %.sroa.02.0.copyload, ptr %4, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i8 %i.b, ptr %i.e, align 8, !tbaa !341
  br i1 %i.c, label %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit, label %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread

_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  br label %bb.b

_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit: ; preds = %bb.a
  call void @_ZNK3fmt3v1210locale_ref3getISt6localeEET_v(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 dereferenceable(9) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %.pre = load i8, ptr %i.e, align 8, !tbaa !341, !range !249
  %i.f = trunc nuw i8 %.pre to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  br i1 %i.f, label %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit
  %i.g = load atomic i8, ptr @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, !prof !342

bb.c:                                             ; preds = %bb.b
  %i.i = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %i.j, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %.body

_ZN3fmt3v126detail18get_classic_localeEv.exit.i:  ; preds = %bb.e, %bb.c, %bb.b
  %i.l = load ptr, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344, !nonnull !250, !align !336
  br label %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit

_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit: ; preds = %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit
  %i.m = phi ptr [ %i.l, %_ZN3fmt3v126detail18get_classic_localeEv.exit.i ], [ %5, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit ] ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8, !tbaa !351
  store ptr %i.m, ptr %6, align 8, !tbaa !344
  %i.n = load atomic i8, ptr @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale acquire, align 8
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.k, !prof !342

bb.g:                                             ; preds = %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit
  %i.p = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  %.not.i.i13 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i13, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %i.q, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %.body

bb.k:                                             ; preds = %bb.i, %bb.g, %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.t = load ptr, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344, !nonnull !250, !align !336
  %i.u = call noundef zeroext i1 @_ZNKSt6localeeqERKS_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.t) #30
  %i.v = zext i1 %i.u to i8
  store i8 %i.v, ptr %i.s, align 8, !tbaa !350
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %.sroa.01.0.copyload, ptr %i.w, align 8, !tbaa !351
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 24
end_hunk_5
begin_hunk_6_@_ZN3fmt3v126detail18duration_formatterIciSt5ratioILl1ELl100EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSF_SG_EEEvRK2tmT_DpT0_:bb.a

_ZN3fmt3v126detail10get_localeD2Ev.exit:          ; preds = %.body, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  resume { ptr, i32 } %eh.lpad-body

bb.o:                                             ; preds = %bb.k
  %i.ai = inttoptr i64 %2 to ptr
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %i.aj = phi ptr [ %i.ae, %bb.l ], [ %i.ai, %bb.o ]
  invoke void %i.aj(ptr noundef nonnull align 8 dereferenceable(40) %i.z, i32 noundef %4, i32 noundef %5)
          to label %bb.q unwind label %bb.m

bb.q:                                             ; preds = %bb.p
  %.sroa.0.0.copyload.i = load ptr, ptr %i.w, align 8, !tbaa !351
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8, !tbaa !351
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.ak = load i8, ptr %i.e, align 8, !tbaa !341, !range !249, !noundef !250
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %7) #30
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail24write_fractional_secondsIcNS0_14basic_appenderIcEENSt6chrono8durationIjSt5ratioILl1ELl100EEEEEEvRT0_T1_i(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 %1, i32 noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = udiv i32 %1, 100
  %i.b = zext nneg i32 %i.a to i64
  %i.c = zext i32 %1 to i64
  %.neg.i = mul nsw i64 %i.b, -100
  %i.d = add nsw i64 %.neg.i, %i.c                ; 7 uses
  %i.e = or i64 %i.d, 1
  %i.f = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.e, i1 true)
  %i.g = xor i64 %i.f, 63
  %i.h = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !232   ; 2 uses
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %i.k = zext i8 %i.i to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !255
  %i.n = icmp ult i64 %i.d, %i.m
  %.neg.i.i = sext i1 %i.n to i32                 ; 2 uses
  %i.o = add nsw i32 %.neg.i.i, %i.j              ; 8 uses
  %i.p = icmp slt i32 %i.o, 2
  %i.q = tail call i32 @llvm.smin.i32(i32 %i.o, i32 2)
  %.sroa.speculated = sub i32 2, %i.q             ; 2 uses
  %i.r = icmp slt i32 %2, 0
  br i1 %i.r, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !351 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !354  ; 2 uses
  %i.u = add i64 %i.t, 1                          ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !339
  %i.x = icmp ugt i64 %i.u, %i.w
  br i1 %i.x, label %bb.c, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !260
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, i64 noundef %i.u), !inline_history !10
  %.pre.i.i = load i64, ptr %i.s, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.b, %bb.c
  %.pre-phi.i.i = phi i64 [ %i.u, %bb.b ], [ %.pre2.i.i, %bb.c ]
  %i.aa = phi i64 [ %i.t, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.ab = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !338
  store i64 %.pre-phi.i.i, ptr %i.s, align 8, !tbaa !354
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  store i8 46, ptr %i.ac, align 1, !tbaa !232
  %.sroa.016.0.copyload = load ptr, ptr %0, align 8, !tbaa !351 ; 7 uses
  br i1 %i.p, label %.lr.ph.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit

.lr.ph.i:                                         ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 8 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 24
  br label %bb.d

bb.d:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %.lr.ph.i
  %.04.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ao, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ]
  %i.ag = load i64, ptr %i.ad, align 8, !tbaa !354 ; 2 uses
  %i.ah = add i64 %i.ag, 1                        ; 3 uses
  %i.ai = load i64, ptr %i.ae, align 8, !tbaa !339
  %i.aj = icmp ugt i64 %i.ah, %i.ai
  br i1 %i.aj, label %bb.e, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !260
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.016.0.copyload, i64 noundef %i.ah), !inline_history !34
  %.pre.i.i.i = load i64, ptr %i.ad, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.e, %bb.d
  %.pre-phi.i.i.i = phi i64 [ %i.ah, %bb.d ], [ %.pre2.i.i.i, %bb.e ]
  %i.al = phi i64 [ %i.ag, %bb.d ], [ %.pre.i.i.i, %bb.e ]
  %i.am = load ptr, ptr %.sroa.016.0.copyload, align 8, !tbaa !338
  store i64 %.pre-phi.i.i.i, ptr %i.ad, align 8, !tbaa !354
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al
  store i8 48, ptr %i.an, align 1, !tbaa !232
  %i.ao = add nuw nsw i32 %.04.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ao, %.sroa.speculated
  br i1 %exitcond.not.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, label %bb.d, !llvm.loop !14

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  store ptr %.sroa.016.0.copyload, ptr %0, align 8, !tbaa !351
  %i.ap = tail call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.016.0.copyload, i64 noundef %i.d, i32 noundef %i.o)
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.copyload.i66 = load ptr, ptr %0, align 8, !tbaa !351 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i66, i64 8 ; 3 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !354 ; 2 uses
  %i.as = add i64 %i.ar, 1                        ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i66, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !339
  %i.av = icmp ugt i64 %i.as, %i.au
  br i1 %i.av, label %bb.h, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i66, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !260
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i66, i64 noundef %i.as), !inline_history !10
  %.pre.i.i68 = load i64, ptr %i.aq, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i69 = add i64 %.pre.i.i68, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70

_ZN3fmt3v1214basic_appenderIcEaSEc.exit70:        ; preds = %bb.g, %bb.h
  %.pre-phi.i.i67 = phi i64 [ %i.as, %bb.g ], [ %.pre2.i.i69, %bb.h ]
  %i.ay = phi i64 [ %i.ar, %bb.g ], [ %.pre.i.i68, %bb.h ]
  %i.az = load ptr, ptr %.sroa.0.0.copyload.i66, align 8, !tbaa !338
  store i64 %.pre-phi.i.i67, ptr %i.aq, align 8, !tbaa !354
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ay
  store i8 46, ptr %i.ba, align 1, !tbaa !232
  %i.bb = tail call i32 @llvm.umin.i32(i32 %.sroa.speculated, i32 %2) ; 3 uses
  %i.bc = sub nsw i32 %2, %i.bb                   ; 5 uses
  %.sroa.07.0.copyload = load ptr, ptr %0, align 8, !tbaa !351 ; 9 uses
  %.not97 = icmp sgt i32 %i.o, 1
  br i1 %.not97, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78, label %.lr.ph.i71

.lr.ph.i71:                                       ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 8 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 24
  br label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73, %.lr.ph.i71
  %.04.i72 = phi i32 [ 0, %.lr.ph.i71 ], [ %i.bo, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73 ]
  %i.bg = load i64, ptr %i.bd, align 8, !tbaa !354 ; 2 uses
  %i.bh = add i64 %i.bg, 1                        ; 3 uses
  %i.bi = load i64, ptr %i.be, align 8, !tbaa !339
  %i.bj = icmp ugt i64 %i.bh, %i.bi
  br i1 %i.bj, label %bb.j, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73

bb.j:                                             ; preds = %bb.i
  %i.bk = load ptr, ptr %i.bf, align 8, !tbaa !260
  tail call void %i.bk(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.07.0.copyload, i64 noundef %i.bh), !inline_history !34
  %.pre.i.i.i76 = load i64, ptr %i.bd, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i.i77 = add i64 %.pre.i.i.i76, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73:      ; preds = %bb.j, %bb.i
  %.pre-phi.i.i.i74 = phi i64 [ %i.bh, %bb.i ], [ %.pre2.i.i.i77, %bb.j ]
  %i.bl = phi i64 [ %i.bg, %bb.i ], [ %.pre.i.i.i76, %bb.j ]
  %i.bm = load ptr, ptr %.sroa.07.0.copyload, align 8, !tbaa !338
  store i64 %.pre-phi.i.i.i74, ptr %i.bd, align 8, !tbaa !354
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bl
  store i8 48, ptr %i.bn, align 1, !tbaa !232
  %i.bo = add nuw nsw i32 %.04.i72, 1             ; 2 uses
  %exitcond.not.i75 = icmp eq i32 %i.bo, %i.bb
  br i1 %exitcond.not.i75, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78, label %bb.i, !llvm.loop !14

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70
  store ptr %.sroa.07.0.copyload, ptr %0, align 8, !tbaa !351
  %.not65 = icmp slt i32 %i.bc, %i.o
  br i1 %.not65, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78
  %i.bp = sub nsw i32 %i.o, %i.bc                 ; 3 uses
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %_ZN3fmt3v126detail5pow10Ej.exit, label %tailrecurse.i.preheader

tailrecurse.i.preheader:                          ; preds = %bb.k
  %i.br = add nsw i32 %i.bb, %.neg.i.i
  %i.bs = add i32 %i.br, %i.j
  %xtraiter = and i32 %i.bp, 7                    ; 3 uses
  %i.bt = sub i32 %2, %i.bs
  %i.bu = icmp ugt i32 %i.bt, -8
  br i1 %i.bu, label %tailrecurse.i.epil.preheader, label %tailrecurse.i.preheader.new

tailrecurse.i.preheader.new:                      ; preds = %tailrecurse.i.preheader
  %unroll_iter = and i32 %i.bp, -8
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i, %tailrecurse.i.preheader.new
  %accumulator.tr2.i = phi i64 [ 1, %tailrecurse.i.preheader.new ], [ %i.bv, %tailrecurse.i ]
  %niter = phi i32 [ 0, %tailrecurse.i.preheader.new ], [ %niter.next.7, %tailrecurse.i ]
  %i.bv = mul i64 %accumulator.tr2.i, 100000000   ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa, label %tailrecurse.i

_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa: ; preds = %tailrecurse.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3fmt3v126detail5pow10Ej.exit, label %tailrecurse.i.epil.preheader

tailrecurse.i.epil.preheader:                     ; preds = %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa, %tailrecurse.i.preheader
  %accumulator.tr2.i.epil.init = phi i64 [ 1, %tailrecurse.i.preheader ], [ %i.bv, %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa ]
  %lcmp.mod119 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod119)
  br label %tailrecurse.i.epil

tailrecurse.i.epil:                               ; preds = %tailrecurse.i.epil, %tailrecurse.i.epil.preheader
  %accumulator.tr2.i.epil = phi i64 [ %i.bw, %tailrecurse.i.epil ], [ %accumulator.tr2.i.epil.init, %tailrecurse.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %tailrecurse.i.epil ], [ 0, %tailrecurse.i.epil.preheader ]
  %i.bw = mul i64 %accumulator.tr2.i.epil, 10     ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN3fmt3v126detail5pow10Ej.exit, label %tailrecurse.i.epil, !llvm.loop !5222

_ZN3fmt3v126detail5pow10Ej.exit:                  ; preds = %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa, %tailrecurse.i.epil, %bb.k
  %accumulator.tr.lcssa.i = phi i64 [ 1, %bb.k ], [ %i.bv, %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa ], [ %i.bw, %tailrecurse.i.epil ] ; 2 uses
  %.not64 = icmp ugt i64 %accumulator.tr.lcssa.i, %i.d
  br i1 %.not64, label %bb.r, label %bb.l

bb.l:                                             ; preds = %_ZN3fmt3v126detail5pow10Ej.exit
  %i.bx = udiv i64 %i.d, %accumulator.tr.lcssa.i
  %i.by = tail call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.07.0.copyload, i64 noundef %i.bx, i32 noundef %i.bc)
  br label %.sink.split

bb.m:                                             ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78
  %.not63 = icmp eq i64 %i.d, 0
  br i1 %.not63, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bz = tail call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.07.0.copyload, i64 noundef %i.d, i32 noundef %i.o) ; 2 uses
  store ptr %i.bz, ptr %0, align 8, !tbaa !351
  %i.ca = sub nsw i32 %i.bc, %i.o
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.0.0.copyload = phi ptr [ %i.bz, %bb.n ], [ %.sroa.07.0.copyload, %bb.m ] ; 7 uses
  %.056 = phi i32 [ %i.ca, %bb.n ], [ %i.bc, %bb.m ] ; 2 uses
  %i.cb = icmp sgt i32 %.056, 0
  br i1 %i.cb, label %.lr.ph.i79, label %.sink.split

.lr.ph.i79:                                       ; preds = %bb.o
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  br label %bb.p

bb.p:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81, %.lr.ph.i79
  %.04.i80 = phi i32 [ 0, %.lr.ph.i79 ], [ %i.cn, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81 ]
  %i.cf = load i64, ptr %i.cc, align 8, !tbaa !354 ; 2 uses
  %i.cg = add i64 %i.cf, 1                        ; 3 uses
  %i.ch = load i64, ptr %i.cd, align 8, !tbaa !339
  %i.ci = icmp ugt i64 %i.cg, %i.ch
  br i1 %i.ci, label %bb.q, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81

bb.q:                                             ; preds = %bb.p
  %i.cj = load ptr, ptr %i.ce, align 8, !tbaa !260
  tail call void %i.cj(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload, i64 noundef %i.cg), !inline_history !34
  %.pre.i.i.i84 = load i64, ptr %i.cc, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i.i85 = add i64 %.pre.i.i.i84, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81:      ; preds = %bb.q, %bb.p
  %.pre-phi.i.i.i82 = phi i64 [ %i.cg, %bb.p ], [ %.pre2.i.i.i85, %bb.q ]
  %i.ck = phi i64 [ %i.cf, %bb.p ], [ %.pre.i.i.i84, %bb.q ]
  %i.cl = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !338
  store i64 %.pre-phi.i.i.i82, ptr %i.cc, align 8, !tbaa !354
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ck
  store i8 48, ptr %i.cm, align 1, !tbaa !232
  %i.cn = add nuw nsw i32 %.04.i80, 1             ; 2 uses
  %exitcond.not.i83 = icmp eq i32 %i.cn, %.056
  br i1 %exitcond.not.i83, label %.sink.split, label %bb.p, !llvm.loop !14

.sink.split:                                      ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81, %bb.o, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, %bb.l
  %.sroa.0.0.copyload.sink = phi ptr [ %i.ap, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit ], [ %i.by, %bb.l ], [ %.sroa.0.0.copyload, %bb.o ], [ %.sroa.0.0.copyload, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81 ]
  store ptr %.sroa.0.0.copyload.sink, ptr %0, align 8, !tbaa !351
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %_ZN3fmt3v126detail5pow10Ej.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIciSt5ratioILl1ELl100EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvvEJEEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 %2, i64 %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.fmt::v12::locale_ref", align 8 ; 5 uses
  %5 = alloca %"class.fmt::v12::detail::get_locale", align 8 ; 8 uses
  %6 = alloca %"class.fmt::v12::detail::tm_writer", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !422, !range !249, !noundef !250 ; 2 uses
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.02.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !335
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %.sroa.02.0.copyload, ptr %4, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i8 %i.b, ptr %i.e, align 8, !tbaa !341
  br i1 %i.c, label %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit, label %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread

_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  br label %bb.b

_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit: ; preds = %bb.a
  call void @_ZNK3fmt3v1210locale_ref3getISt6localeEET_v(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 dereferenceable(9) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %.pre = load i8, ptr %i.e, align 8, !tbaa !341, !range !249
  %i.f = trunc nuw i8 %.pre to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  br i1 %i.f, label %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit
  %i.g = load atomic i8, ptr @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, !prof !342

bb.c:                                             ; preds = %bb.b
  %i.i = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %i.j, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %.body

_ZN3fmt3v126detail18get_classic_localeEv.exit.i:  ; preds = %bb.e, %bb.c, %bb.b
  %i.l = load ptr, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344, !nonnull !250, !align !336
  br label %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit

_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit: ; preds = %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit
  %i.m = phi ptr [ %i.l, %_ZN3fmt3v126detail18get_classic_localeEv.exit.i ], [ %5, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit ] ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8, !tbaa !351
  store ptr %i.m, ptr %6, align 8, !tbaa !344
  %i.n = load atomic i8, ptr @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale acquire, align 8
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.k, !prof !342

bb.g:                                             ; preds = %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit
  %i.p = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  %.not.i.i13 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i13, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %i.q, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %.body

bb.k:                                             ; preds = %bb.i, %bb.g, %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.t = load ptr, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344, !nonnull !250, !align !336
  %i.u = call noundef zeroext i1 @_ZNKSt6localeeqERKS_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.t) #30
  %i.v = zext i1 %i.u to i8
  store i8 %i.v, ptr %i.s, align 8, !tbaa !350
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %.sroa.01.0.copyload, ptr %i.w, align 8, !tbaa !351
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 24
end_hunk_6
begin_hunk_7_@_ZN3fmt3v126detail18duration_formatterIciSt5ratioILl1ELl10EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSF_SG_EEEvRK2tmT_DpT0_:bb.a

_ZN3fmt3v126detail10get_localeD2Ev.exit:          ; preds = %.body, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  resume { ptr, i32 } %eh.lpad-body

bb.o:                                             ; preds = %bb.k
  %i.ai = inttoptr i64 %2 to ptr
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %i.aj = phi ptr [ %i.ae, %bb.l ], [ %i.ai, %bb.o ]
  invoke void %i.aj(ptr noundef nonnull align 8 dereferenceable(40) %i.z, i32 noundef %4, i32 noundef %5)
          to label %bb.q unwind label %bb.m

bb.q:                                             ; preds = %bb.p
  %.sroa.0.0.copyload.i = load ptr, ptr %i.w, align 8, !tbaa !351
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8, !tbaa !351
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.ak = load i8, ptr %i.e, align 8, !tbaa !341, !range !249, !noundef !250
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %7) #30
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail24write_fractional_secondsIcNS0_14basic_appenderIcEENSt6chrono8durationIjSt5ratioILl1ELl10EEEEEEvRT0_T1_i(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 %1, i32 noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = udiv i32 %1, 10
  %i.b = zext nneg i32 %i.a to i64
  %i.c = zext i32 %1 to i64
  %.neg.i = mul nsw i64 %i.b, -10
  %i.d = add nsw i64 %.neg.i, %i.c                ; 7 uses
  %i.e = or i64 %i.d, 1
  %i.f = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.e, i1 true)
  %i.g = xor i64 %i.f, 63
  %i.h = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !232   ; 2 uses
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %i.k = zext i8 %i.i to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !255
  %i.n = icmp ult i64 %i.d, %i.m
  %.neg.i.i = sext i1 %i.n to i32                 ; 2 uses
  %i.o = add nsw i32 %.neg.i.i, %i.j              ; 8 uses
  %i.p = icmp slt i32 %i.o, 1
  %i.q = tail call i32 @llvm.smin.i32(i32 %i.o, i32 1)
  %.sroa.speculated = sub i32 1, %i.q             ; 2 uses
  %i.r = icmp slt i32 %2, 0
  br i1 %i.r, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !351 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !354  ; 2 uses
  %i.u = add i64 %i.t, 1                          ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !339
  %i.x = icmp ugt i64 %i.u, %i.w
  br i1 %i.x, label %bb.c, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !260
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, i64 noundef %i.u), !inline_history !10
  %.pre.i.i = load i64, ptr %i.s, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.b, %bb.c
  %.pre-phi.i.i = phi i64 [ %i.u, %bb.b ], [ %.pre2.i.i, %bb.c ]
  %i.aa = phi i64 [ %i.t, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.ab = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !338
  store i64 %.pre-phi.i.i, ptr %i.s, align 8, !tbaa !354
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  store i8 46, ptr %i.ac, align 1, !tbaa !232
  %.sroa.016.0.copyload = load ptr, ptr %0, align 8, !tbaa !351 ; 7 uses
  br i1 %i.p, label %.lr.ph.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit

.lr.ph.i:                                         ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 8 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 24
  br label %bb.d

bb.d:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %.lr.ph.i
  %.04.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ao, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ]
  %i.ag = load i64, ptr %i.ad, align 8, !tbaa !354 ; 2 uses
  %i.ah = add i64 %i.ag, 1                        ; 3 uses
  %i.ai = load i64, ptr %i.ae, align 8, !tbaa !339
  %i.aj = icmp ugt i64 %i.ah, %i.ai
  br i1 %i.aj, label %bb.e, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !260
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.016.0.copyload, i64 noundef %i.ah), !inline_history !34
  %.pre.i.i.i = load i64, ptr %i.ad, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.e, %bb.d
  %.pre-phi.i.i.i = phi i64 [ %i.ah, %bb.d ], [ %.pre2.i.i.i, %bb.e ]
  %i.al = phi i64 [ %i.ag, %bb.d ], [ %.pre.i.i.i, %bb.e ]
  %i.am = load ptr, ptr %.sroa.016.0.copyload, align 8, !tbaa !338
  store i64 %.pre-phi.i.i.i, ptr %i.ad, align 8, !tbaa !354
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al
  store i8 48, ptr %i.an, align 1, !tbaa !232
  %i.ao = add nuw nsw i32 %.04.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ao, %.sroa.speculated
  br i1 %exitcond.not.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, label %bb.d, !llvm.loop !14

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  store ptr %.sroa.016.0.copyload, ptr %0, align 8, !tbaa !351
  %i.ap = tail call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.016.0.copyload, i64 noundef %i.d, i32 noundef %i.o)
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.copyload.i66 = load ptr, ptr %0, align 8, !tbaa !351 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i66, i64 8 ; 3 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !354 ; 2 uses
  %i.as = add i64 %i.ar, 1                        ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i66, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !339
  %i.av = icmp ugt i64 %i.as, %i.au
  br i1 %i.av, label %bb.h, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i66, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !260
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i66, i64 noundef %i.as), !inline_history !10
  %.pre.i.i68 = load i64, ptr %i.aq, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i69 = add i64 %.pre.i.i68, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70

_ZN3fmt3v1214basic_appenderIcEaSEc.exit70:        ; preds = %bb.g, %bb.h
  %.pre-phi.i.i67 = phi i64 [ %i.as, %bb.g ], [ %.pre2.i.i69, %bb.h ]
  %i.ay = phi i64 [ %i.ar, %bb.g ], [ %.pre.i.i68, %bb.h ]
  %i.az = load ptr, ptr %.sroa.0.0.copyload.i66, align 8, !tbaa !338
  store i64 %.pre-phi.i.i67, ptr %i.aq, align 8, !tbaa !354
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ay
  store i8 46, ptr %i.ba, align 1, !tbaa !232
  %i.bb = tail call i32 @llvm.umin.i32(i32 %.sroa.speculated, i32 %2) ; 3 uses
  %i.bc = sub nsw i32 %2, %i.bb                   ; 5 uses
  %.sroa.07.0.copyload = load ptr, ptr %0, align 8, !tbaa !351 ; 9 uses
  %.not97 = icmp sgt i32 %i.o, 0
  br i1 %.not97, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78, label %.lr.ph.i71

.lr.ph.i71:                                       ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 8 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 24
  br label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73, %.lr.ph.i71
  %.04.i72 = phi i32 [ 0, %.lr.ph.i71 ], [ %i.bo, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73 ]
  %i.bg = load i64, ptr %i.bd, align 8, !tbaa !354 ; 2 uses
  %i.bh = add i64 %i.bg, 1                        ; 3 uses
  %i.bi = load i64, ptr %i.be, align 8, !tbaa !339
  %i.bj = icmp ugt i64 %i.bh, %i.bi
  br i1 %i.bj, label %bb.j, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73

bb.j:                                             ; preds = %bb.i
  %i.bk = load ptr, ptr %i.bf, align 8, !tbaa !260
  tail call void %i.bk(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.07.0.copyload, i64 noundef %i.bh), !inline_history !34
  %.pre.i.i.i76 = load i64, ptr %i.bd, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i.i77 = add i64 %.pre.i.i.i76, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73:      ; preds = %bb.j, %bb.i
  %.pre-phi.i.i.i74 = phi i64 [ %i.bh, %bb.i ], [ %.pre2.i.i.i77, %bb.j ]
  %i.bl = phi i64 [ %i.bg, %bb.i ], [ %.pre.i.i.i76, %bb.j ]
  %i.bm = load ptr, ptr %.sroa.07.0.copyload, align 8, !tbaa !338
  store i64 %.pre-phi.i.i.i74, ptr %i.bd, align 8, !tbaa !354
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bl
  store i8 48, ptr %i.bn, align 1, !tbaa !232
  %i.bo = add nuw nsw i32 %.04.i72, 1             ; 2 uses
  %exitcond.not.i75 = icmp eq i32 %i.bo, %i.bb
  br i1 %exitcond.not.i75, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78, label %bb.i, !llvm.loop !14

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70
  store ptr %.sroa.07.0.copyload, ptr %0, align 8, !tbaa !351
  %.not65 = icmp slt i32 %i.bc, %i.o
  br i1 %.not65, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78
  %i.bp = sub nsw i32 %i.o, %i.bc                 ; 3 uses
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %_ZN3fmt3v126detail5pow10Ej.exit, label %tailrecurse.i.preheader

tailrecurse.i.preheader:                          ; preds = %bb.k
  %i.br = add nsw i32 %i.bb, %.neg.i.i
  %i.bs = add i32 %i.br, %i.j
  %xtraiter = and i32 %i.bp, 7                    ; 3 uses
  %i.bt = sub i32 %2, %i.bs
  %i.bu = icmp ugt i32 %i.bt, -8
  br i1 %i.bu, label %tailrecurse.i.epil.preheader, label %tailrecurse.i.preheader.new

tailrecurse.i.preheader.new:                      ; preds = %tailrecurse.i.preheader
  %unroll_iter = and i32 %i.bp, -8
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i, %tailrecurse.i.preheader.new
  %accumulator.tr2.i = phi i64 [ 1, %tailrecurse.i.preheader.new ], [ %i.bv, %tailrecurse.i ]
  %niter = phi i32 [ 0, %tailrecurse.i.preheader.new ], [ %niter.next.7, %tailrecurse.i ]
  %i.bv = mul i64 %accumulator.tr2.i, 100000000   ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa, label %tailrecurse.i

_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa: ; preds = %tailrecurse.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3fmt3v126detail5pow10Ej.exit, label %tailrecurse.i.epil.preheader

tailrecurse.i.epil.preheader:                     ; preds = %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa, %tailrecurse.i.preheader
  %accumulator.tr2.i.epil.init = phi i64 [ 1, %tailrecurse.i.preheader ], [ %i.bv, %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa ]
  %lcmp.mod119 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod119)
  br label %tailrecurse.i.epil

tailrecurse.i.epil:                               ; preds = %tailrecurse.i.epil, %tailrecurse.i.epil.preheader
  %accumulator.tr2.i.epil = phi i64 [ %i.bw, %tailrecurse.i.epil ], [ %accumulator.tr2.i.epil.init, %tailrecurse.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %tailrecurse.i.epil ], [ 0, %tailrecurse.i.epil.preheader ]
  %i.bw = mul i64 %accumulator.tr2.i.epil, 10     ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN3fmt3v126detail5pow10Ej.exit, label %tailrecurse.i.epil, !llvm.loop !5247

_ZN3fmt3v126detail5pow10Ej.exit:                  ; preds = %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa, %tailrecurse.i.epil, %bb.k
  %accumulator.tr.lcssa.i = phi i64 [ 1, %bb.k ], [ %i.bv, %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa ], [ %i.bw, %tailrecurse.i.epil ] ; 2 uses
  %.not64 = icmp ugt i64 %accumulator.tr.lcssa.i, %i.d
  br i1 %.not64, label %bb.r, label %bb.l

bb.l:                                             ; preds = %_ZN3fmt3v126detail5pow10Ej.exit
  %i.bx = udiv i64 %i.d, %accumulator.tr.lcssa.i
  %i.by = tail call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.07.0.copyload, i64 noundef %i.bx, i32 noundef %i.bc)
  br label %.sink.split

bb.m:                                             ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78
  %.not63 = icmp eq i64 %i.d, 0
  br i1 %.not63, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bz = tail call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.07.0.copyload, i64 noundef %i.d, i32 noundef %i.o) ; 2 uses
  store ptr %i.bz, ptr %0, align 8, !tbaa !351
  %i.ca = sub nsw i32 %i.bc, %i.o
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.0.0.copyload = phi ptr [ %i.bz, %bb.n ], [ %.sroa.07.0.copyload, %bb.m ] ; 7 uses
  %.056 = phi i32 [ %i.ca, %bb.n ], [ %i.bc, %bb.m ] ; 2 uses
  %i.cb = icmp sgt i32 %.056, 0
  br i1 %i.cb, label %.lr.ph.i79, label %.sink.split

.lr.ph.i79:                                       ; preds = %bb.o
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  br label %bb.p

bb.p:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81, %.lr.ph.i79
  %.04.i80 = phi i32 [ 0, %.lr.ph.i79 ], [ %i.cn, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81 ]
  %i.cf = load i64, ptr %i.cc, align 8, !tbaa !354 ; 2 uses
  %i.cg = add i64 %i.cf, 1                        ; 3 uses
  %i.ch = load i64, ptr %i.cd, align 8, !tbaa !339
  %i.ci = icmp ugt i64 %i.cg, %i.ch
  br i1 %i.ci, label %bb.q, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81

bb.q:                                             ; preds = %bb.p
  %i.cj = load ptr, ptr %i.ce, align 8, !tbaa !260
  tail call void %i.cj(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload, i64 noundef %i.cg), !inline_history !34
  %.pre.i.i.i84 = load i64, ptr %i.cc, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i.i85 = add i64 %.pre.i.i.i84, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81:      ; preds = %bb.q, %bb.p
  %.pre-phi.i.i.i82 = phi i64 [ %i.cg, %bb.p ], [ %.pre2.i.i.i85, %bb.q ]
  %i.ck = phi i64 [ %i.cf, %bb.p ], [ %.pre.i.i.i84, %bb.q ]
  %i.cl = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !338
  store i64 %.pre-phi.i.i.i82, ptr %i.cc, align 8, !tbaa !354
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ck
  store i8 48, ptr %i.cm, align 1, !tbaa !232
  %i.cn = add nuw nsw i32 %.04.i80, 1             ; 2 uses
  %exitcond.not.i83 = icmp eq i32 %i.cn, %.056
  br i1 %exitcond.not.i83, label %.sink.split, label %bb.p, !llvm.loop !14

.sink.split:                                      ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81, %bb.o, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, %bb.l
  %.sroa.0.0.copyload.sink = phi ptr [ %i.ap, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit ], [ %i.by, %bb.l ], [ %.sroa.0.0.copyload, %bb.o ], [ %.sroa.0.0.copyload, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81 ]
  store ptr %.sroa.0.0.copyload.sink, ptr %0, align 8, !tbaa !351
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %_ZN3fmt3v126detail5pow10Ej.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIciSt5ratioILl1ELl10EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvvEJEEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 %2, i64 %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.fmt::v12::locale_ref", align 8 ; 5 uses
  %5 = alloca %"class.fmt::v12::detail::get_locale", align 8 ; 8 uses
  %6 = alloca %"class.fmt::v12::detail::tm_writer", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !427, !range !249, !noundef !250 ; 2 uses
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.02.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !335
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %.sroa.02.0.copyload, ptr %4, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i8 %i.b, ptr %i.e, align 8, !tbaa !341
  br i1 %i.c, label %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit, label %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread

_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  br label %bb.b

_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit: ; preds = %bb.a
  call void @_ZNK3fmt3v1210locale_ref3getISt6localeEET_v(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 dereferenceable(9) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %.pre = load i8, ptr %i.e, align 8, !tbaa !341, !range !249
  %i.f = trunc nuw i8 %.pre to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  br i1 %i.f, label %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit
  %i.g = load atomic i8, ptr @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, !prof !342

bb.c:                                             ; preds = %bb.b
  %i.i = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %i.j, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %.body

_ZN3fmt3v126detail18get_classic_localeEv.exit.i:  ; preds = %bb.e, %bb.c, %bb.b
  %i.l = load ptr, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344, !nonnull !250, !align !336
  br label %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit

_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit: ; preds = %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit
  %i.m = phi ptr [ %i.l, %_ZN3fmt3v126detail18get_classic_localeEv.exit.i ], [ %5, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit ] ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8, !tbaa !351
  store ptr %i.m, ptr %6, align 8, !tbaa !344
  %i.n = load atomic i8, ptr @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale acquire, align 8
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.k, !prof !342

bb.g:                                             ; preds = %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit
  %i.p = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  %.not.i.i13 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i13, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %i.q, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %.body

bb.k:                                             ; preds = %bb.i, %bb.g, %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.t = load ptr, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344, !nonnull !250, !align !336
  %i.u = call noundef zeroext i1 @_ZNKSt6localeeqERKS_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.t) #30
  %i.v = zext i1 %i.u to i8
  store i8 %i.v, ptr %i.s, align 8, !tbaa !350
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %.sroa.01.0.copyload, ptr %i.w, align 8, !tbaa !351
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 24
end_hunk_7
begin_hunk_8_@_ZN3fmt3v126detail18duration_formatterIciSt5ratioILl15ELl4EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSF_SG_EEEvRK2tmT_DpT0_:bb.a
  br label %_ZN3fmt3v126detail10get_localeD2Ev.exit

_ZN3fmt3v126detail10get_localeD2Ev.exit:          ; preds = %.body, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  resume { ptr, i32 } %eh.lpad-body

bb.o:                                             ; preds = %bb.k
  %i.ai = inttoptr i64 %2 to ptr
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %i.aj = phi ptr [ %i.ae, %bb.l ], [ %i.ai, %bb.o ]
  invoke void %i.aj(ptr noundef nonnull align 8 dereferenceable(40) %i.z, i32 noundef %4, i32 noundef %5)
          to label %bb.q unwind label %bb.m

bb.q:                                             ; preds = %bb.p
  %.sroa.0.0.copyload.i = load ptr, ptr %i.w, align 8, !tbaa !351
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8, !tbaa !351
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.ak = load i8, ptr %i.e, align 8, !tbaa !341, !range !249, !noundef !250
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %7) #30
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail24write_fractional_secondsIcNS0_14basic_appenderIcEENSt6chrono8durationIjSt5ratioILl15ELl4EEEEEEvRT0_T1_i(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 %1, i32 noundef %2) local_unnamed_addr #2 comdat {
_ZN3fmt3v126detail13duration_castINSt6chrono8durationIlSt5ratioILl1ELl100EEEElS5_ILl1ELl4EETnNSt9enable_ifIXaasr3std11is_integralIT0_EE5valuesr3std11is_integralINT_3repEEE5valueEiE4typeELi0EEESB_NS4_ISA_T1_EE.exit:
  %i.a = mul i32 %1, 3
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %narrow = mul nuw nsw i32 %i.b, 25
  %i.c = zext nneg i32 %narrow to i64             ; 6 uses
  %i.d = or i64 %i.c, 1
  %i.e = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.f = xor i64 %i.e, 63
  %i.g = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !232   ; 2 uses
  %i.i = zext i8 %i.h to i32                      ; 2 uses
  %i.j = zext i8 %i.h to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !255
  %i.m = icmp ugt i64 %i.l, %i.c
  %.neg.i.i = sext i1 %i.m to i32                 ; 2 uses
  %i.n = add nsw i32 %.neg.i.i, %i.i              ; 8 uses
  %i.o = icmp slt i32 %i.n, 2
  %i.p = tail call i32 @llvm.smin.i32(i32 %i.n, i32 2)
  %.sroa.speculated = sub i32 2, %i.p             ; 2 uses
  %i.q = icmp slt i32 %2, 0
  br i1 %i.q, label %bb.a, label %bb.e

bb.a:                                             ; preds = %_ZN3fmt3v126detail13duration_castINSt6chrono8durationIlSt5ratioILl1ELl100EEEElS5_ILl1ELl4EETnNSt9enable_ifIXaasr3std11is_integralIT0_EE5valuesr3std11is_integralINT_3repEEE5valueEiE4typeELi0EEESB_NS4_ISA_T1_EE.exit
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !351 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !354  ; 2 uses
  %i.t = add i64 %i.s, 1                          ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !339
  %i.w = icmp ugt i64 %i.t, %i.v
  br i1 %i.w, label %bb.b, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !260
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, i64 noundef %i.t), !inline_history !10
  %.pre.i.i = load i64, ptr %i.r, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.a, %bb.b
  %.pre-phi.i.i = phi i64 [ %i.t, %bb.a ], [ %.pre2.i.i, %bb.b ]
  %i.z = phi i64 [ %i.s, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.aa = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !338
  store i64 %.pre-phi.i.i, ptr %i.r, align 8, !tbaa !354
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.z
  store i8 46, ptr %i.ab, align 1, !tbaa !232
  %.sroa.016.0.copyload = load ptr, ptr %0, align 8, !tbaa !351 ; 7 uses
  br i1 %i.o, label %.lr.ph.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit

.lr.ph.i:                                         ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 8 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 24
  br label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %.lr.ph.i
  %.04.i = phi i32 [ 0, %.lr.ph.i ], [ %i.an, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ]
  %i.af = load i64, ptr %i.ac, align 8, !tbaa !354 ; 2 uses
  %i.ag = add i64 %i.af, 1                        ; 3 uses
  %i.ah = load i64, ptr %i.ad, align 8, !tbaa !339
  %i.ai = icmp ugt i64 %i.ag, %i.ah
  br i1 %i.ai, label %bb.d, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.d:                                             ; preds = %bb.c
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !260
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.016.0.copyload, i64 noundef %i.ag), !inline_history !34
  %.pre.i.i.i = load i64, ptr %i.ac, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.d, %bb.c
  %.pre-phi.i.i.i = phi i64 [ %i.ag, %bb.c ], [ %.pre2.i.i.i, %bb.d ]
  %i.ak = phi i64 [ %i.af, %bb.c ], [ %.pre.i.i.i, %bb.d ]
  %i.al = load ptr, ptr %.sroa.016.0.copyload, align 8, !tbaa !338
  store i64 %.pre-phi.i.i.i, ptr %i.ac, align 8, !tbaa !354
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ak
  store i8 48, ptr %i.am, align 1, !tbaa !232
  %i.an = add nuw nsw i32 %.04.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.an, %.sroa.speculated
  br i1 %exitcond.not.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, label %bb.c, !llvm.loop !14

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  store ptr %.sroa.016.0.copyload, ptr %0, align 8, !tbaa !351
  %i.ao = tail call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.016.0.copyload, i64 noundef %i.c, i32 noundef %i.n)
  br label %.sink.split

bb.e:                                             ; preds = %_ZN3fmt3v126detail13duration_castINSt6chrono8durationIlSt5ratioILl1ELl100EEEElS5_ILl1ELl4EETnNSt9enable_ifIXaasr3std11is_integralIT0_EE5valuesr3std11is_integralINT_3repEEE5valueEiE4typeELi0EEESB_NS4_ISA_T1_EE.exit
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.q, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.0.0.copyload.i66 = load ptr, ptr %0, align 8, !tbaa !351 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i66, i64 8 ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !354 ; 2 uses
  %i.ar = add i64 %i.aq, 1                        ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i66, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !339
  %i.au = icmp ugt i64 %i.ar, %i.at
  br i1 %i.au, label %bb.g, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i66, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !260
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i66, i64 noundef %i.ar), !inline_history !10
  %.pre.i.i68 = load i64, ptr %i.ap, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i69 = add i64 %.pre.i.i68, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70

_ZN3fmt3v1214basic_appenderIcEaSEc.exit70:        ; preds = %bb.f, %bb.g
  %.pre-phi.i.i67 = phi i64 [ %i.ar, %bb.f ], [ %.pre2.i.i69, %bb.g ]
  %i.ax = phi i64 [ %i.aq, %bb.f ], [ %.pre.i.i68, %bb.g ]
  %i.ay = load ptr, ptr %.sroa.0.0.copyload.i66, align 8, !tbaa !338
  store i64 %.pre-phi.i.i67, ptr %i.ap, align 8, !tbaa !354
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ax
  store i8 46, ptr %i.az, align 1, !tbaa !232
  %i.ba = tail call i32 @llvm.umin.i32(i32 %.sroa.speculated, i32 %2) ; 3 uses
  %i.bb = sub nsw i32 %2, %i.ba                   ; 5 uses
  %.sroa.07.0.copyload = load ptr, ptr %0, align 8, !tbaa !351 ; 9 uses
  %.not97 = icmp sgt i32 %i.n, 1
  br i1 %.not97, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78, label %.lr.ph.i71

.lr.ph.i71:                                       ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 8 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 24
  br label %bb.h

bb.h:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73, %.lr.ph.i71
  %.04.i72 = phi i32 [ 0, %.lr.ph.i71 ], [ %i.bn, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73 ]
  %i.bf = load i64, ptr %i.bc, align 8, !tbaa !354 ; 2 uses
  %i.bg = add i64 %i.bf, 1                        ; 3 uses
  %i.bh = load i64, ptr %i.bd, align 8, !tbaa !339
  %i.bi = icmp ugt i64 %i.bg, %i.bh
  br i1 %i.bi, label %bb.i, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73

bb.i:                                             ; preds = %bb.h
  %i.bj = load ptr, ptr %i.be, align 8, !tbaa !260
  tail call void %i.bj(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.07.0.copyload, i64 noundef %i.bg), !inline_history !34
  %.pre.i.i.i76 = load i64, ptr %i.bc, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i.i77 = add i64 %.pre.i.i.i76, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73:      ; preds = %bb.i, %bb.h
  %.pre-phi.i.i.i74 = phi i64 [ %i.bg, %bb.h ], [ %.pre2.i.i.i77, %bb.i ]
  %i.bk = phi i64 [ %i.bf, %bb.h ], [ %.pre.i.i.i76, %bb.i ]
  %i.bl = load ptr, ptr %.sroa.07.0.copyload, align 8, !tbaa !338
  store i64 %.pre-phi.i.i.i74, ptr %i.bc, align 8, !tbaa !354
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bk
  store i8 48, ptr %i.bm, align 1, !tbaa !232
  %i.bn = add nuw nsw i32 %.04.i72, 1             ; 2 uses
  %exitcond.not.i75 = icmp eq i32 %i.bn, %i.ba
  br i1 %exitcond.not.i75, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78, label %bb.h, !llvm.loop !14

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70
  store ptr %.sroa.07.0.copyload, ptr %0, align 8, !tbaa !351
  %.not65 = icmp slt i32 %i.bb, %i.n
  br i1 %.not65, label %bb.j, label %bb.l

bb.j:                                             ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78
  %i.bo = sub nsw i32 %i.n, %i.bb                 ; 3 uses
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %_ZN3fmt3v126detail5pow10Ej.exit, label %tailrecurse.i.preheader

tailrecurse.i.preheader:                          ; preds = %bb.j
  %i.bq = add nsw i32 %i.ba, %.neg.i.i
  %i.br = add i32 %i.bq, %i.i
  %xtraiter = and i32 %i.bo, 7                    ; 3 uses
  %i.bs = sub i32 %2, %i.br
  %i.bt = icmp ugt i32 %i.bs, -8
  br i1 %i.bt, label %tailrecurse.i.epil.preheader, label %tailrecurse.i.preheader.new

tailrecurse.i.preheader.new:                      ; preds = %tailrecurse.i.preheader
  %unroll_iter = and i32 %i.bo, -8
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i, %tailrecurse.i.preheader.new
  %accumulator.tr2.i = phi i64 [ 1, %tailrecurse.i.preheader.new ], [ %i.bu, %tailrecurse.i ]
  %niter = phi i32 [ 0, %tailrecurse.i.preheader.new ], [ %niter.next.7, %tailrecurse.i ]
  %i.bu = mul i64 %accumulator.tr2.i, 100000000   ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa, label %tailrecurse.i

_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa: ; preds = %tailrecurse.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3fmt3v126detail5pow10Ej.exit, label %tailrecurse.i.epil.preheader

tailrecurse.i.epil.preheader:                     ; preds = %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa, %tailrecurse.i.preheader
  %accumulator.tr2.i.epil.init = phi i64 [ 1, %tailrecurse.i.preheader ], [ %i.bu, %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa ]
  %lcmp.mod118 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod118)
  br label %tailrecurse.i.epil

tailrecurse.i.epil:                               ; preds = %tailrecurse.i.epil, %tailrecurse.i.epil.preheader
  %accumulator.tr2.i.epil = phi i64 [ %i.bv, %tailrecurse.i.epil ], [ %accumulator.tr2.i.epil.init, %tailrecurse.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %tailrecurse.i.epil ], [ 0, %tailrecurse.i.epil.preheader ]
  %i.bv = mul i64 %accumulator.tr2.i.epil, 10     ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN3fmt3v126detail5pow10Ej.exit, label %tailrecurse.i.epil, !llvm.loop !5549

_ZN3fmt3v126detail5pow10Ej.exit:                  ; preds = %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa, %tailrecurse.i.epil, %bb.j
  %accumulator.tr.lcssa.i = phi i64 [ 1, %bb.j ], [ %i.bu, %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa ], [ %i.bv, %tailrecurse.i.epil ] ; 2 uses
  %.not64 = icmp ugt i64 %accumulator.tr.lcssa.i, %i.c
  br i1 %.not64, label %bb.q, label %bb.k

bb.k:                                             ; preds = %_ZN3fmt3v126detail5pow10Ej.exit
  %i.bw = udiv i64 %i.c, %accumulator.tr.lcssa.i
  %i.bx = tail call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.07.0.copyload, i64 noundef %i.bw, i32 noundef %i.bb)
  br label %.sink.split

bb.l:                                             ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78
  %.not63 = icmp eq i32 %i.b, 0
  br i1 %.not63, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.by = tail call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.07.0.copyload, i64 noundef %i.c, i32 noundef %i.n) ; 2 uses
  store ptr %i.by, ptr %0, align 8, !tbaa !351
  %i.bz = sub nsw i32 %i.bb, %i.n
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.copyload = phi ptr [ %i.by, %bb.m ], [ %.sroa.07.0.copyload, %bb.l ] ; 7 uses
  %.056 = phi i32 [ %i.bz, %bb.m ], [ %i.bb, %bb.l ] ; 2 uses
  %i.ca = icmp sgt i32 %.056, 0
  br i1 %i.ca, label %.lr.ph.i79, label %.sink.split

.lr.ph.i79:                                       ; preds = %bb.n
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  br label %bb.o

bb.o:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81, %.lr.ph.i79
  %.04.i80 = phi i32 [ 0, %.lr.ph.i79 ], [ %i.cm, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81 ]
  %i.ce = load i64, ptr %i.cb, align 8, !tbaa !354 ; 2 uses
  %i.cf = add i64 %i.ce, 1                        ; 3 uses
  %i.cg = load i64, ptr %i.cc, align 8, !tbaa !339
  %i.ch = icmp ugt i64 %i.cf, %i.cg
  br i1 %i.ch, label %bb.p, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81

bb.p:                                             ; preds = %bb.o
  %i.ci = load ptr, ptr %i.cd, align 8, !tbaa !260
  tail call void %i.ci(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload, i64 noundef %i.cf), !inline_history !34
  %.pre.i.i.i84 = load i64, ptr %i.cb, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i.i85 = add i64 %.pre.i.i.i84, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81:      ; preds = %bb.p, %bb.o
  %.pre-phi.i.i.i82 = phi i64 [ %i.cf, %bb.o ], [ %.pre2.i.i.i85, %bb.p ]
  %i.cj = phi i64 [ %i.ce, %bb.o ], [ %.pre.i.i.i84, %bb.p ]
  %i.ck = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !338
  store i64 %.pre-phi.i.i.i82, ptr %i.cb, align 8, !tbaa !354
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cj
  store i8 48, ptr %i.cl, align 1, !tbaa !232
  %i.cm = add nuw nsw i32 %.04.i80, 1             ; 2 uses
  %exitcond.not.i83 = icmp eq i32 %i.cm, %.056
  br i1 %exitcond.not.i83, label %.sink.split, label %bb.o, !llvm.loop !14

.sink.split:                                      ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81, %bb.n, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, %bb.k
  %.sroa.0.0.copyload.sink = phi ptr [ %i.ao, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit ], [ %i.bx, %bb.k ], [ %.sroa.0.0.copyload, %bb.n ], [ %.sroa.0.0.copyload, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81 ]
  store ptr %.sroa.0.0.copyload.sink, ptr %0, align 8, !tbaa !351
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %_ZN3fmt3v126detail5pow10Ej.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIciSt5ratioILl15ELl4EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvvEJEEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 %2, i64 %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.fmt::v12::locale_ref", align 8 ; 5 uses
  %5 = alloca %"class.fmt::v12::detail::get_locale", align 8 ; 8 uses
  %6 = alloca %"class.fmt::v12::detail::tm_writer", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !492, !range !249, !noundef !250 ; 2 uses
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.02.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !335
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %.sroa.02.0.copyload, ptr %4, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i8 %i.b, ptr %i.e, align 8, !tbaa !341
  br i1 %i.c, label %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit, label %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread

_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  br label %bb.b

_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit: ; preds = %bb.a
  call void @_ZNK3fmt3v1210locale_ref3getISt6localeEET_v(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 dereferenceable(9) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %.pre = load i8, ptr %i.e, align 8, !tbaa !341, !range !249
  %i.f = trunc nuw i8 %.pre to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  br i1 %i.f, label %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit
  %i.g = load atomic i8, ptr @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, !prof !342

bb.c:                                             ; preds = %bb.b
  %i.i = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %i.j, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %.body

_ZN3fmt3v126detail18get_classic_localeEv.exit.i:  ; preds = %bb.e, %bb.c, %bb.b
  %i.l = load ptr, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344, !nonnull !250, !align !336
  br label %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit

_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit: ; preds = %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit
  %i.m = phi ptr [ %i.l, %_ZN3fmt3v126detail18get_classic_localeEv.exit.i ], [ %5, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit ] ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8, !tbaa !351
  store ptr %i.m, ptr %6, align 8, !tbaa !344
  %i.n = load atomic i8, ptr @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale acquire, align 8
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.k, !prof !342

bb.g:                                             ; preds = %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit
  %i.p = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  %.not.i.i13 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i13, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %i.q, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %.body

bb.k:                                             ; preds = %bb.i, %bb.g, %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.t = load ptr, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344, !nonnull !250, !align !336
  %i.u = call noundef zeroext i1 @_ZNKSt6localeeqERKS_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.t) #30
  %i.v = zext i1 %i.u to i8
  store i8 %i.v, ptr %i.s, align 8, !tbaa !350
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %.sroa.01.0.copyload, ptr %i.w, align 8, !tbaa !351
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 24
end_hunk_8
begin_hunk_9_@_ZN3fmt3v126detail18duration_formatterIcaSt5ratioILl1ELl1000EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSF_SG_EEEvRK2tmT_DpT0_:bb.a

_ZN3fmt3v126detail10get_localeD2Ev.exit:          ; preds = %.body, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  resume { ptr, i32 } %eh.lpad-body

bb.o:                                             ; preds = %bb.k
  %i.ai = inttoptr i64 %2 to ptr
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %i.aj = phi ptr [ %i.ae, %bb.l ], [ %i.ai, %bb.o ]
  invoke void %i.aj(ptr noundef nonnull align 8 dereferenceable(40) %i.z, i32 noundef %4, i32 noundef %5)
          to label %bb.q unwind label %bb.m

bb.q:                                             ; preds = %bb.p
  %.sroa.0.0.copyload.i = load ptr, ptr %i.w, align 8, !tbaa !351
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8, !tbaa !351
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.ak = load i8, ptr %i.e, align 8, !tbaa !341, !range !249, !noundef !250
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %7) #30
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail24write_fractional_secondsIcNS0_14basic_appenderIcEENSt6chrono8durationIjSt5ratioILl1ELl1000EEEEEEvRT0_T1_i(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 %1, i32 noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = udiv i32 %1, 1000
  %i.b = zext nneg i32 %i.a to i64
  %i.c = zext i32 %1 to i64
  %.neg.i = mul nsw i64 %i.b, -1000
  %i.d = add nsw i64 %.neg.i, %i.c                ; 7 uses
  %i.e = or i64 %i.d, 1
  %i.f = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.e, i1 true)
  %i.g = xor i64 %i.f, 63
  %i.h = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !232   ; 2 uses
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %i.k = zext i8 %i.i to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !255
  %i.n = icmp ult i64 %i.d, %i.m
  %.neg.i.i = sext i1 %i.n to i32                 ; 2 uses
  %i.o = add nsw i32 %.neg.i.i, %i.j              ; 8 uses
  %i.p = icmp slt i32 %i.o, 3
  %i.q = tail call i32 @llvm.smin.i32(i32 %i.o, i32 3)
  %.sroa.speculated = sub i32 3, %i.q             ; 2 uses
  %i.r = icmp slt i32 %2, 0
  br i1 %i.r, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !351 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !354  ; 2 uses
  %i.u = add i64 %i.t, 1                          ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !339
  %i.x = icmp ugt i64 %i.u, %i.w
  br i1 %i.x, label %bb.c, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !260
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, i64 noundef %i.u), !inline_history !10
  %.pre.i.i = load i64, ptr %i.s, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.b, %bb.c
  %.pre-phi.i.i = phi i64 [ %i.u, %bb.b ], [ %.pre2.i.i, %bb.c ]
  %i.aa = phi i64 [ %i.t, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.ab = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !338
  store i64 %.pre-phi.i.i, ptr %i.s, align 8, !tbaa !354
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  store i8 46, ptr %i.ac, align 1, !tbaa !232
  %.sroa.016.0.copyload = load ptr, ptr %0, align 8, !tbaa !351 ; 7 uses
  br i1 %i.p, label %.lr.ph.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit

.lr.ph.i:                                         ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 8 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 24
  br label %bb.d

bb.d:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %.lr.ph.i
  %.04.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ao, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ]
  %i.ag = load i64, ptr %i.ad, align 8, !tbaa !354 ; 2 uses
  %i.ah = add i64 %i.ag, 1                        ; 3 uses
  %i.ai = load i64, ptr %i.ae, align 8, !tbaa !339
  %i.aj = icmp ugt i64 %i.ah, %i.ai
  br i1 %i.aj, label %bb.e, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !260
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.016.0.copyload, i64 noundef %i.ah), !inline_history !34
  %.pre.i.i.i = load i64, ptr %i.ad, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.e, %bb.d
  %.pre-phi.i.i.i = phi i64 [ %i.ah, %bb.d ], [ %.pre2.i.i.i, %bb.e ]
  %i.al = phi i64 [ %i.ag, %bb.d ], [ %.pre.i.i.i, %bb.e ]
  %i.am = load ptr, ptr %.sroa.016.0.copyload, align 8, !tbaa !338
  store i64 %.pre-phi.i.i.i, ptr %i.ad, align 8, !tbaa !354
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al
  store i8 48, ptr %i.an, align 1, !tbaa !232
  %i.ao = add nuw nsw i32 %.04.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ao, %.sroa.speculated
  br i1 %exitcond.not.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, label %bb.d, !llvm.loop !14

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  store ptr %.sroa.016.0.copyload, ptr %0, align 8, !tbaa !351
  %i.ap = tail call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.016.0.copyload, i64 noundef %i.d, i32 noundef %i.o)
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.copyload.i66 = load ptr, ptr %0, align 8, !tbaa !351 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i66, i64 8 ; 3 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !354 ; 2 uses
  %i.as = add i64 %i.ar, 1                        ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i66, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !339
  %i.av = icmp ugt i64 %i.as, %i.au
  br i1 %i.av, label %bb.h, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i66, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !260
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i66, i64 noundef %i.as), !inline_history !10
  %.pre.i.i68 = load i64, ptr %i.aq, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i69 = add i64 %.pre.i.i68, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70

_ZN3fmt3v1214basic_appenderIcEaSEc.exit70:        ; preds = %bb.g, %bb.h
  %.pre-phi.i.i67 = phi i64 [ %i.as, %bb.g ], [ %.pre2.i.i69, %bb.h ]
  %i.ay = phi i64 [ %i.ar, %bb.g ], [ %.pre.i.i68, %bb.h ]
  %i.az = load ptr, ptr %.sroa.0.0.copyload.i66, align 8, !tbaa !338
  store i64 %.pre-phi.i.i67, ptr %i.aq, align 8, !tbaa !354
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ay
  store i8 46, ptr %i.ba, align 1, !tbaa !232
  %i.bb = tail call i32 @llvm.umin.i32(i32 %.sroa.speculated, i32 %2) ; 3 uses
  %i.bc = sub nsw i32 %2, %i.bb                   ; 5 uses
  %.sroa.07.0.copyload = load ptr, ptr %0, align 8, !tbaa !351 ; 9 uses
  %.not97 = icmp sgt i32 %i.o, 2
  br i1 %.not97, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78, label %.lr.ph.i71

.lr.ph.i71:                                       ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 8 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 24
  br label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73, %.lr.ph.i71
  %.04.i72 = phi i32 [ 0, %.lr.ph.i71 ], [ %i.bo, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73 ]
  %i.bg = load i64, ptr %i.bd, align 8, !tbaa !354 ; 2 uses
  %i.bh = add i64 %i.bg, 1                        ; 3 uses
  %i.bi = load i64, ptr %i.be, align 8, !tbaa !339
  %i.bj = icmp ugt i64 %i.bh, %i.bi
  br i1 %i.bj, label %bb.j, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73

bb.j:                                             ; preds = %bb.i
  %i.bk = load ptr, ptr %i.bf, align 8, !tbaa !260
  tail call void %i.bk(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.07.0.copyload, i64 noundef %i.bh), !inline_history !34
  %.pre.i.i.i76 = load i64, ptr %i.bd, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i.i77 = add i64 %.pre.i.i.i76, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73:      ; preds = %bb.j, %bb.i
  %.pre-phi.i.i.i74 = phi i64 [ %i.bh, %bb.i ], [ %.pre2.i.i.i77, %bb.j ]
  %i.bl = phi i64 [ %i.bg, %bb.i ], [ %.pre.i.i.i76, %bb.j ]
  %i.bm = load ptr, ptr %.sroa.07.0.copyload, align 8, !tbaa !338
  store i64 %.pre-phi.i.i.i74, ptr %i.bd, align 8, !tbaa !354
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bl
  store i8 48, ptr %i.bn, align 1, !tbaa !232
  %i.bo = add nuw nsw i32 %.04.i72, 1             ; 2 uses
  %exitcond.not.i75 = icmp eq i32 %i.bo, %i.bb
  br i1 %exitcond.not.i75, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78, label %bb.i, !llvm.loop !14

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70
  store ptr %.sroa.07.0.copyload, ptr %0, align 8, !tbaa !351
  %.not65 = icmp slt i32 %i.bc, %i.o
  br i1 %.not65, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78
  %i.bp = sub nsw i32 %i.o, %i.bc                 ; 3 uses
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %_ZN3fmt3v126detail5pow10Ej.exit, label %tailrecurse.i.preheader

tailrecurse.i.preheader:                          ; preds = %bb.k
  %i.br = add nsw i32 %i.bb, %.neg.i.i
  %i.bs = add i32 %i.br, %i.j
  %xtraiter = and i32 %i.bp, 7                    ; 3 uses
  %i.bt = sub i32 %2, %i.bs
  %i.bu = icmp ugt i32 %i.bt, -8
  br i1 %i.bu, label %tailrecurse.i.epil.preheader, label %tailrecurse.i.preheader.new

tailrecurse.i.preheader.new:                      ; preds = %tailrecurse.i.preheader
  %unroll_iter = and i32 %i.bp, -8
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i, %tailrecurse.i.preheader.new
  %accumulator.tr2.i = phi i64 [ 1, %tailrecurse.i.preheader.new ], [ %i.bv, %tailrecurse.i ]
  %niter = phi i32 [ 0, %tailrecurse.i.preheader.new ], [ %niter.next.7, %tailrecurse.i ]
  %i.bv = mul i64 %accumulator.tr2.i, 100000000   ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa, label %tailrecurse.i

_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa: ; preds = %tailrecurse.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3fmt3v126detail5pow10Ej.exit, label %tailrecurse.i.epil.preheader

tailrecurse.i.epil.preheader:                     ; preds = %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa, %tailrecurse.i.preheader
  %accumulator.tr2.i.epil.init = phi i64 [ 1, %tailrecurse.i.preheader ], [ %i.bv, %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa ]
  %lcmp.mod119 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod119)
  br label %tailrecurse.i.epil

tailrecurse.i.epil:                               ; preds = %tailrecurse.i.epil, %tailrecurse.i.epil.preheader
  %accumulator.tr2.i.epil = phi i64 [ %i.bw, %tailrecurse.i.epil ], [ %accumulator.tr2.i.epil.init, %tailrecurse.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %tailrecurse.i.epil ], [ 0, %tailrecurse.i.epil.preheader ]
  %i.bw = mul i64 %accumulator.tr2.i.epil, 10     ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN3fmt3v126detail5pow10Ej.exit, label %tailrecurse.i.epil, !llvm.loop !5901

_ZN3fmt3v126detail5pow10Ej.exit:                  ; preds = %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa, %tailrecurse.i.epil, %bb.k
  %accumulator.tr.lcssa.i = phi i64 [ 1, %bb.k ], [ %i.bv, %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa ], [ %i.bw, %tailrecurse.i.epil ] ; 2 uses
  %.not64 = icmp ugt i64 %accumulator.tr.lcssa.i, %i.d
  br i1 %.not64, label %bb.r, label %bb.l

bb.l:                                             ; preds = %_ZN3fmt3v126detail5pow10Ej.exit
  %i.bx = udiv i64 %i.d, %accumulator.tr.lcssa.i
  %i.by = tail call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.07.0.copyload, i64 noundef %i.bx, i32 noundef %i.bc)
  br label %.sink.split

bb.m:                                             ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78
  %.not63 = icmp eq i64 %i.d, 0
  br i1 %.not63, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bz = tail call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.07.0.copyload, i64 noundef %i.d, i32 noundef %i.o) ; 2 uses
  store ptr %i.bz, ptr %0, align 8, !tbaa !351
  %i.ca = sub nsw i32 %i.bc, %i.o
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.0.0.copyload = phi ptr [ %i.bz, %bb.n ], [ %.sroa.07.0.copyload, %bb.m ] ; 7 uses
  %.056 = phi i32 [ %i.ca, %bb.n ], [ %i.bc, %bb.m ] ; 2 uses
  %i.cb = icmp sgt i32 %.056, 0
  br i1 %i.cb, label %.lr.ph.i79, label %.sink.split

.lr.ph.i79:                                       ; preds = %bb.o
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  br label %bb.p

bb.p:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81, %.lr.ph.i79
  %.04.i80 = phi i32 [ 0, %.lr.ph.i79 ], [ %i.cn, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81 ]
  %i.cf = load i64, ptr %i.cc, align 8, !tbaa !354 ; 2 uses
  %i.cg = add i64 %i.cf, 1                        ; 3 uses
  %i.ch = load i64, ptr %i.cd, align 8, !tbaa !339
  %i.ci = icmp ugt i64 %i.cg, %i.ch
  br i1 %i.ci, label %bb.q, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81

bb.q:                                             ; preds = %bb.p
  %i.cj = load ptr, ptr %i.ce, align 8, !tbaa !260
  tail call void %i.cj(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload, i64 noundef %i.cg), !inline_history !34
  %.pre.i.i.i84 = load i64, ptr %i.cc, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i.i85 = add i64 %.pre.i.i.i84, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81:      ; preds = %bb.q, %bb.p
  %.pre-phi.i.i.i82 = phi i64 [ %i.cg, %bb.p ], [ %.pre2.i.i.i85, %bb.q ]
  %i.ck = phi i64 [ %i.cf, %bb.p ], [ %.pre.i.i.i84, %bb.q ]
  %i.cl = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !338
  store i64 %.pre-phi.i.i.i82, ptr %i.cc, align 8, !tbaa !354
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ck
  store i8 48, ptr %i.cm, align 1, !tbaa !232
  %i.cn = add nuw nsw i32 %.04.i80, 1             ; 2 uses
  %exitcond.not.i83 = icmp eq i32 %i.cn, %.056
  br i1 %exitcond.not.i83, label %.sink.split, label %bb.p, !llvm.loop !14

.sink.split:                                      ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81, %bb.o, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, %bb.l
  %.sroa.0.0.copyload.sink = phi ptr [ %i.ap, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit ], [ %i.by, %bb.l ], [ %.sroa.0.0.copyload, %bb.o ], [ %.sroa.0.0.copyload, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81 ]
  store ptr %.sroa.0.0.copyload.sink, ptr %0, align 8, !tbaa !351
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %_ZN3fmt3v126detail5pow10Ej.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcaSt5ratioILl1ELl1000EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvvEJEEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 %2, i64 %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.fmt::v12::locale_ref", align 8 ; 5 uses
  %5 = alloca %"class.fmt::v12::detail::get_locale", align 8 ; 8 uses
  %6 = alloca %"class.fmt::v12::detail::tm_writer", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !577, !range !249, !noundef !250 ; 2 uses
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.02.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !335
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %.sroa.02.0.copyload, ptr %4, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i8 %i.b, ptr %i.e, align 8, !tbaa !341
  br i1 %i.c, label %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit, label %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread

_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  br label %bb.b

_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit: ; preds = %bb.a
  call void @_ZNK3fmt3v1210locale_ref3getISt6localeEET_v(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 dereferenceable(9) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %.pre = load i8, ptr %i.e, align 8, !tbaa !341, !range !249
  %i.f = trunc nuw i8 %.pre to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  br i1 %i.f, label %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit
  %i.g = load atomic i8, ptr @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, !prof !342

bb.c:                                             ; preds = %bb.b
  %i.i = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %i.j, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %.body

_ZN3fmt3v126detail18get_classic_localeEv.exit.i:  ; preds = %bb.e, %bb.c, %bb.b
  %i.l = load ptr, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344, !nonnull !250, !align !336
  br label %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit

_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit: ; preds = %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit
  %i.m = phi ptr [ %i.l, %_ZN3fmt3v126detail18get_classic_localeEv.exit.i ], [ %5, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit ] ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8, !tbaa !351
  store ptr %i.m, ptr %6, align 8, !tbaa !344
  %i.n = load atomic i8, ptr @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale acquire, align 8
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.k, !prof !342

bb.g:                                             ; preds = %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit
  %i.p = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  %.not.i.i13 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i13, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %i.q, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %.body

bb.k:                                             ; preds = %bb.i, %bb.g, %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.t = load ptr, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344, !nonnull !250, !align !336
  %i.u = call noundef zeroext i1 @_ZNKSt6localeeqERKS_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.t) #30
  %i.v = zext i1 %i.u to i8
  store i8 %i.v, ptr %i.s, align 8, !tbaa !350
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %.sroa.01.0.copyload, ptr %i.w, align 8, !tbaa !351
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 24
end_hunk_9
begin_hunk_10_@_ZN3fmt3v126detail18duration_formatterIcxSt5ratioILl1ELl1000000000000000000EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSF_SG_EEEvRK2tmT_DpT0_:bb.a
bb.n:                                             ; preds = %.body
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %7) #30
  br label %_ZN3fmt3v126detail10get_localeD2Ev.exit

_ZN3fmt3v126detail10get_localeD2Ev.exit:          ; preds = %.body, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  resume { ptr, i32 } %eh.lpad-body

bb.o:                                             ; preds = %bb.k
  %i.ai = inttoptr i64 %2 to ptr
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %i.aj = phi ptr [ %i.ae, %bb.l ], [ %i.ai, %bb.o ]
  invoke void %i.aj(ptr noundef nonnull align 8 dereferenceable(40) %i.z, i32 noundef %4, i32 noundef %5)
          to label %bb.q unwind label %bb.m

bb.q:                                             ; preds = %bb.p
  %.sroa.0.0.copyload.i = load ptr, ptr %i.w, align 8, !tbaa !351
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8, !tbaa !351
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.ak = load i8, ptr %i.e, align 8, !tbaa !341, !range !249, !noundef !250
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %7) #30
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail24write_fractional_secondsIcNS0_14basic_appenderIcEENSt6chrono8durationIySt5ratioILl1ELl1000000000000000000EEEEEEvRT0_T1_i(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, i32 noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %.fr = freeze i64 %1
  %i.a = urem i64 %.fr, 1000000000000000000       ; 7 uses
  %i.b = or i64 %i.a, 1
  %i.c = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.b, i1 true)
  %i.d = xor i64 %i.c, 63
  %i.e = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !232   ; 2 uses
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = zext i8 %i.f to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !255
  %i.k = icmp ult i64 %i.a, %i.j
  %.neg.i.i = sext i1 %i.k to i32                 ; 2 uses
  %i.l = add nsw i32 %.neg.i.i, %i.g              ; 8 uses
  %i.m = icmp slt i32 %i.l, 18
  %i.n = tail call i32 @llvm.smin.i32(i32 %i.l, i32 18)
  %.sroa.speculated = sub i32 18, %i.n            ; 2 uses
  %i.o = icmp slt i32 %2, 0
  br i1 %i.o, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !351 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !354  ; 2 uses
  %i.r = add i64 %i.q, 1                          ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !339
  %i.u = icmp ugt i64 %i.r, %i.t
  br i1 %i.u, label %bb.c, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !260
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, i64 noundef %i.r), !inline_history !10
  %.pre.i.i = load i64, ptr %i.p, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.b, %bb.c
  %.pre-phi.i.i = phi i64 [ %i.r, %bb.b ], [ %.pre2.i.i, %bb.c ]
  %i.x = phi i64 [ %i.q, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.y = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !338
  store i64 %.pre-phi.i.i, ptr %i.p, align 8, !tbaa !354
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  store i8 46, ptr %i.z, align 1, !tbaa !232
  %.sroa.016.0.copyload = load ptr, ptr %0, align 8, !tbaa !351 ; 7 uses
  br i1 %i.m, label %.lr.ph.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit

.lr.ph.i:                                         ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 8 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 24
  br label %bb.d

bb.d:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %.lr.ph.i
  %.04.i = phi i32 [ 0, %.lr.ph.i ], [ %i.al, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ]
  %i.ad = load i64, ptr %i.aa, align 8, !tbaa !354 ; 2 uses
  %i.ae = add i64 %i.ad, 1                        ; 3 uses
  %i.af = load i64, ptr %i.ab, align 8, !tbaa !339
  %i.ag = icmp ugt i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.e, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !260
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.016.0.copyload, i64 noundef %i.ae), !inline_history !34
  %.pre.i.i.i = load i64, ptr %i.aa, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.e, %bb.d
  %.pre-phi.i.i.i = phi i64 [ %i.ae, %bb.d ], [ %.pre2.i.i.i, %bb.e ]
  %i.ai = phi i64 [ %i.ad, %bb.d ], [ %.pre.i.i.i, %bb.e ]
  %i.aj = load ptr, ptr %.sroa.016.0.copyload, align 8, !tbaa !338
  store i64 %.pre-phi.i.i.i, ptr %i.aa, align 8, !tbaa !354
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ai
  store i8 48, ptr %i.ak, align 1, !tbaa !232
  %i.al = add nuw nsw i32 %.04.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.al, %.sroa.speculated
  br i1 %exitcond.not.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, label %bb.d, !llvm.loop !14

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  store ptr %.sroa.016.0.copyload, ptr %0, align 8, !tbaa !351
  %i.am = tail call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.016.0.copyload, i64 noundef %i.a, i32 noundef %i.l)
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.copyload.i66 = load ptr, ptr %0, align 8, !tbaa !351 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i66, i64 8 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !354 ; 2 uses
  %i.ap = add i64 %i.ao, 1                        ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i66, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !339
  %i.as = icmp ugt i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.h, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i66, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !260
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i66, i64 noundef %i.ap), !inline_history !10
  %.pre.i.i68 = load i64, ptr %i.an, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i69 = add i64 %.pre.i.i68, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70

_ZN3fmt3v1214basic_appenderIcEaSEc.exit70:        ; preds = %bb.g, %bb.h
  %.pre-phi.i.i67 = phi i64 [ %i.ap, %bb.g ], [ %.pre2.i.i69, %bb.h ]
  %i.av = phi i64 [ %i.ao, %bb.g ], [ %.pre.i.i68, %bb.h ]
  %i.aw = load ptr, ptr %.sroa.0.0.copyload.i66, align 8, !tbaa !338
  store i64 %.pre-phi.i.i67, ptr %i.an, align 8, !tbaa !354
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.av
  store i8 46, ptr %i.ax, align 1, !tbaa !232
  %i.ay = tail call i32 @llvm.umin.i32(i32 %.sroa.speculated, i32 %2) ; 3 uses
  %i.az = sub nsw i32 %2, %i.ay                   ; 5 uses
  %.sroa.07.0.copyload = load ptr, ptr %0, align 8, !tbaa !351 ; 9 uses
  %.not97 = icmp sgt i32 %i.l, 17
  br i1 %.not97, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78, label %.lr.ph.i71

.lr.ph.i71:                                       ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 8 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 24
  br label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73, %.lr.ph.i71
  %.04.i72 = phi i32 [ 0, %.lr.ph.i71 ], [ %i.bl, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73 ]
  %i.bd = load i64, ptr %i.ba, align 8, !tbaa !354 ; 2 uses
  %i.be = add i64 %i.bd, 1                        ; 3 uses
  %i.bf = load i64, ptr %i.bb, align 8, !tbaa !339
  %i.bg = icmp ugt i64 %i.be, %i.bf
  br i1 %i.bg, label %bb.j, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73

bb.j:                                             ; preds = %bb.i
  %i.bh = load ptr, ptr %i.bc, align 8, !tbaa !260
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.07.0.copyload, i64 noundef %i.be), !inline_history !34
  %.pre.i.i.i76 = load i64, ptr %i.ba, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i.i77 = add i64 %.pre.i.i.i76, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73:      ; preds = %bb.j, %bb.i
  %.pre-phi.i.i.i74 = phi i64 [ %i.be, %bb.i ], [ %.pre2.i.i.i77, %bb.j ]
  %i.bi = phi i64 [ %i.bd, %bb.i ], [ %.pre.i.i.i76, %bb.j ]
  %i.bj = load ptr, ptr %.sroa.07.0.copyload, align 8, !tbaa !338
  store i64 %.pre-phi.i.i.i74, ptr %i.ba, align 8, !tbaa !354
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bi
  store i8 48, ptr %i.bk, align 1, !tbaa !232
  %i.bl = add nuw nsw i32 %.04.i72, 1             ; 2 uses
  %exitcond.not.i75 = icmp eq i32 %i.bl, %i.ay
  br i1 %exitcond.not.i75, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78, label %bb.i, !llvm.loop !14

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70
  store ptr %.sroa.07.0.copyload, ptr %0, align 8, !tbaa !351
  %.not65 = icmp slt i32 %i.az, %i.l
  br i1 %.not65, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78
  %i.bm = sub nsw i32 %i.l, %i.az                 ; 3 uses
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %_ZN3fmt3v126detail5pow10Ej.exit, label %tailrecurse.i.preheader

tailrecurse.i.preheader:                          ; preds = %bb.k
  %i.bo = add nsw i32 %i.ay, %.neg.i.i
  %i.bp = add i32 %i.bo, %i.g
  %xtraiter = and i32 %i.bm, 7                    ; 3 uses
  %i.bq = sub i32 %2, %i.bp
  %i.br = icmp ugt i32 %i.bq, -8
  br i1 %i.br, label %tailrecurse.i.epil.preheader, label %tailrecurse.i.preheader.new

tailrecurse.i.preheader.new:                      ; preds = %tailrecurse.i.preheader
  %unroll_iter = and i32 %i.bm, -8
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i, %tailrecurse.i.preheader.new
  %accumulator.tr2.i = phi i64 [ 1, %tailrecurse.i.preheader.new ], [ %i.bs, %tailrecurse.i ]
  %niter = phi i32 [ 0, %tailrecurse.i.preheader.new ], [ %niter.next.7, %tailrecurse.i ]
  %i.bs = mul i64 %accumulator.tr2.i, 100000000   ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa, label %tailrecurse.i

_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa: ; preds = %tailrecurse.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3fmt3v126detail5pow10Ej.exit, label %tailrecurse.i.epil.preheader

tailrecurse.i.epil.preheader:                     ; preds = %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa, %tailrecurse.i.preheader
  %accumulator.tr2.i.epil.init = phi i64 [ 1, %tailrecurse.i.preheader ], [ %i.bs, %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa ]
  %lcmp.mod119 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod119)
  br label %tailrecurse.i.epil

tailrecurse.i.epil:                               ; preds = %tailrecurse.i.epil, %tailrecurse.i.epil.preheader
  %accumulator.tr2.i.epil = phi i64 [ %i.bt, %tailrecurse.i.epil ], [ %accumulator.tr2.i.epil.init, %tailrecurse.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %tailrecurse.i.epil ], [ 0, %tailrecurse.i.epil.preheader ]
  %i.bt = mul i64 %accumulator.tr2.i.epil, 10     ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN3fmt3v126detail5pow10Ej.exit, label %tailrecurse.i.epil, !llvm.loop !6099

_ZN3fmt3v126detail5pow10Ej.exit:                  ; preds = %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa, %tailrecurse.i.epil, %bb.k
  %accumulator.tr.lcssa.i = phi i64 [ 1, %bb.k ], [ %i.bs, %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa ], [ %i.bt, %tailrecurse.i.epil ] ; 2 uses
  %.not64 = icmp ugt i64 %accumulator.tr.lcssa.i, %i.a
  br i1 %.not64, label %bb.r, label %bb.l

bb.l:                                             ; preds = %_ZN3fmt3v126detail5pow10Ej.exit
  %i.bu = udiv i64 %i.a, %accumulator.tr.lcssa.i
  %i.bv = tail call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.07.0.copyload, i64 noundef %i.bu, i32 noundef %i.az)
  br label %.sink.split

bb.m:                                             ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78
  %.not63 = icmp eq i64 %i.a, 0
  br i1 %.not63, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bw = tail call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.07.0.copyload, i64 noundef %i.a, i32 noundef %i.l) ; 2 uses
  store ptr %i.bw, ptr %0, align 8, !tbaa !351
  %i.bx = sub nsw i32 %i.az, %i.l
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.0.0.copyload = phi ptr [ %i.bw, %bb.n ], [ %.sroa.07.0.copyload, %bb.m ] ; 7 uses
  %.056 = phi i32 [ %i.bx, %bb.n ], [ %i.az, %bb.m ] ; 2 uses
  %i.by = icmp sgt i32 %.056, 0
  br i1 %i.by, label %.lr.ph.i79, label %.sink.split

.lr.ph.i79:                                       ; preds = %bb.o
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  br label %bb.p

bb.p:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81, %.lr.ph.i79
  %.04.i80 = phi i32 [ 0, %.lr.ph.i79 ], [ %i.ck, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81 ]
  %i.cc = load i64, ptr %i.bz, align 8, !tbaa !354 ; 2 uses
  %i.cd = add i64 %i.cc, 1                        ; 3 uses
  %i.ce = load i64, ptr %i.ca, align 8, !tbaa !339
  %i.cf = icmp ugt i64 %i.cd, %i.ce
  br i1 %i.cf, label %bb.q, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81

bb.q:                                             ; preds = %bb.p
  %i.cg = load ptr, ptr %i.cb, align 8, !tbaa !260
  tail call void %i.cg(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload, i64 noundef %i.cd), !inline_history !34
  %.pre.i.i.i84 = load i64, ptr %i.bz, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i.i85 = add i64 %.pre.i.i.i84, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81:      ; preds = %bb.q, %bb.p
  %.pre-phi.i.i.i82 = phi i64 [ %i.cd, %bb.p ], [ %.pre2.i.i.i85, %bb.q ]
  %i.ch = phi i64 [ %i.cc, %bb.p ], [ %.pre.i.i.i84, %bb.q ]
  %i.ci = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !338
  store i64 %.pre-phi.i.i.i82, ptr %i.bz, align 8, !tbaa !354
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ch
  store i8 48, ptr %i.cj, align 1, !tbaa !232
  %i.ck = add nuw nsw i32 %.04.i80, 1             ; 2 uses
  %exitcond.not.i83 = icmp eq i32 %i.ck, %.056
  br i1 %exitcond.not.i83, label %.sink.split, label %bb.p, !llvm.loop !14

.sink.split:                                      ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81, %bb.o, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, %bb.l
  %.sroa.0.0.copyload.sink = phi ptr [ %i.am, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit ], [ %i.bv, %bb.l ], [ %.sroa.0.0.copyload, %bb.o ], [ %.sroa.0.0.copyload, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81 ]
  store ptr %.sroa.0.0.copyload.sink, ptr %0, align 8, !tbaa !351
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %_ZN3fmt3v126detail5pow10Ej.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcxSt5ratioILl1ELl1000000000000000000EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvvEJEEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 %2, i64 %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.fmt::v12::locale_ref", align 8 ; 5 uses
  %5 = alloca %"class.fmt::v12::detail::get_locale", align 8 ; 8 uses
  %6 = alloca %"class.fmt::v12::detail::tm_writer", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !626, !range !249, !noundef !250 ; 2 uses
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.02.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !335
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %.sroa.02.0.copyload, ptr %4, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i8 %i.b, ptr %i.e, align 8, !tbaa !341
  br i1 %i.c, label %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit, label %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread

_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  br label %bb.b

_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit: ; preds = %bb.a
  call void @_ZNK3fmt3v1210locale_ref3getISt6localeEET_v(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 dereferenceable(9) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %.pre = load i8, ptr %i.e, align 8, !tbaa !341, !range !249
  %i.f = trunc nuw i8 %.pre to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  br i1 %i.f, label %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit
  %i.g = load atomic i8, ptr @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, !prof !342

bb.c:                                             ; preds = %bb.b
  %i.i = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %i.j, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %.body

_ZN3fmt3v126detail18get_classic_localeEv.exit.i:  ; preds = %bb.e, %bb.c, %bb.b
  %i.l = load ptr, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344, !nonnull !250, !align !336
  br label %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit

_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit: ; preds = %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit
  %i.m = phi ptr [ %i.l, %_ZN3fmt3v126detail18get_classic_localeEv.exit.i ], [ %5, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit ] ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8, !tbaa !351
  store ptr %i.m, ptr %6, align 8, !tbaa !344
  %i.n = load atomic i8, ptr @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale acquire, align 8
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.k, !prof !342

bb.g:                                             ; preds = %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit
  %i.p = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  %.not.i.i13 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i13, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %i.q, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %.body

bb.k:                                             ; preds = %bb.i, %bb.g, %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.t = load ptr, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344, !nonnull !250, !align !336
  %i.u = call noundef zeroext i1 @_ZNKSt6localeeqERKS_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.t) #30
  %i.v = zext i1 %i.u to i8
  store i8 %i.v, ptr %i.s, align 8, !tbaa !350
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %.sroa.01.0.copyload, ptr %i.w, align 8, !tbaa !351
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 24
end_hunk_10
begin_hunk_11_@_ZN3fmt3v126detail18duration_formatterIcxSt5ratioILl1ELl3EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSF_SG_EEEvRK2tmT_DpT0_:bb.a
_ZN3fmt3v126detail10get_localeD2Ev.exit:          ; preds = %.body, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  resume { ptr, i32 } %eh.lpad-body

bb.o:                                             ; preds = %bb.k
  %i.ai = inttoptr i64 %2 to ptr
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %i.aj = phi ptr [ %i.ae, %bb.l ], [ %i.ai, %bb.o ]
  invoke void %i.aj(ptr noundef nonnull align 8 dereferenceable(40) %i.z, i32 noundef %4, i32 noundef %5)
          to label %bb.q unwind label %bb.m

bb.q:                                             ; preds = %bb.p
  %.sroa.0.0.copyload.i = load ptr, ptr %i.w, align 8, !tbaa !351
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8, !tbaa !351
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.ak = load i8, ptr %i.e, align 8, !tbaa !341, !range !249, !noundef !250
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %7) #30
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail24write_fractional_secondsIcNS0_14basic_appenderIcEENSt6chrono8durationIySt5ratioILl1ELl3EEEEEEvRT0_T1_i(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, i32 noundef %2) local_unnamed_addr #2 comdat {
_ZN3fmt3v126detail13duration_castINSt6chrono8durationIySt5ratioILl1ELl1000000EEEEyS5_ILl1ELl3EETnNSt9enable_ifIXaasr3std11is_integralIT0_EE5valuesr3std11is_integralINT_3repEEE5valueEiE4typeELi0EEESB_NS4_ISA_T1_EE.exit:
  %.fr = freeze i64 %1
  %i.a = urem i64 %.fr, 3                         ; 2 uses
  %i.b = trunc nuw nsw i64 %i.a to i32
  %.lhs.trunc = mul nuw nsw i32 %i.b, 1000000
  %i.c = udiv i32 %.lhs.trunc, 3
  %.zext = zext nneg i32 %i.c to i64              ; 6 uses
  %i.d = or i64 %.zext, 1
  %i.e = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.f = xor i64 %i.e, 63
  %i.g = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !232   ; 2 uses
  %i.i = zext i8 %i.h to i32                      ; 2 uses
  %i.j = zext i8 %i.h to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !255
  %i.m = icmp ugt i64 %i.l, %.zext
  %.neg.i.i = sext i1 %i.m to i32                 ; 2 uses
  %i.n = add nsw i32 %.neg.i.i, %i.i              ; 8 uses
  %i.o = icmp slt i32 %i.n, 6
  %i.p = tail call i32 @llvm.smin.i32(i32 %i.n, i32 6)
  %.sroa.speculated = sub i32 6, %i.p             ; 2 uses
  %i.q = icmp slt i32 %2, 0
  br i1 %i.q, label %bb.a, label %bb.e

bb.a:                                             ; preds = %_ZN3fmt3v126detail13duration_castINSt6chrono8durationIySt5ratioILl1ELl1000000EEEEyS5_ILl1ELl3EETnNSt9enable_ifIXaasr3std11is_integralIT0_EE5valuesr3std11is_integralINT_3repEEE5valueEiE4typeELi0EEESB_NS4_ISA_T1_EE.exit
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !351 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !354  ; 2 uses
  %i.t = add i64 %i.s, 1                          ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !339
  %i.w = icmp ugt i64 %i.t, %i.v
  br i1 %i.w, label %bb.b, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !260
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, i64 noundef %i.t), !inline_history !10
  %.pre.i.i = load i64, ptr %i.r, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.a, %bb.b
  %.pre-phi.i.i = phi i64 [ %i.t, %bb.a ], [ %.pre2.i.i, %bb.b ]
  %i.z = phi i64 [ %i.s, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.aa = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !338
  store i64 %.pre-phi.i.i, ptr %i.r, align 8, !tbaa !354
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.z
  store i8 46, ptr %i.ab, align 1, !tbaa !232
  %.sroa.016.0.copyload = load ptr, ptr %0, align 8, !tbaa !351 ; 7 uses
  br i1 %i.o, label %.lr.ph.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit

.lr.ph.i:                                         ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 8 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 24
  br label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %.lr.ph.i
  %.04.i = phi i32 [ 0, %.lr.ph.i ], [ %i.an, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ]
  %i.af = load i64, ptr %i.ac, align 8, !tbaa !354 ; 2 uses
  %i.ag = add i64 %i.af, 1                        ; 3 uses
  %i.ah = load i64, ptr %i.ad, align 8, !tbaa !339
  %i.ai = icmp ugt i64 %i.ag, %i.ah
  br i1 %i.ai, label %bb.d, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.d:                                             ; preds = %bb.c
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !260
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.016.0.copyload, i64 noundef %i.ag), !inline_history !34
  %.pre.i.i.i = load i64, ptr %i.ac, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.d, %bb.c
  %.pre-phi.i.i.i = phi i64 [ %i.ag, %bb.c ], [ %.pre2.i.i.i, %bb.d ]
  %i.ak = phi i64 [ %i.af, %bb.c ], [ %.pre.i.i.i, %bb.d ]
  %i.al = load ptr, ptr %.sroa.016.0.copyload, align 8, !tbaa !338
  store i64 %.pre-phi.i.i.i, ptr %i.ac, align 8, !tbaa !354
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ak
  store i8 48, ptr %i.am, align 1, !tbaa !232
  %i.an = add nuw nsw i32 %.04.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.an, %.sroa.speculated
  br i1 %exitcond.not.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, label %bb.c, !llvm.loop !14

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  store ptr %.sroa.016.0.copyload, ptr %0, align 8, !tbaa !351
  %i.ao = tail call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.016.0.copyload, i64 noundef %.zext, i32 noundef %i.n)
  br label %.sink.split

bb.e:                                             ; preds = %_ZN3fmt3v126detail13duration_castINSt6chrono8durationIySt5ratioILl1ELl1000000EEEEyS5_ILl1ELl3EETnNSt9enable_ifIXaasr3std11is_integralIT0_EE5valuesr3std11is_integralINT_3repEEE5valueEiE4typeELi0EEESB_NS4_ISA_T1_EE.exit
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.q, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.0.0.copyload.i66 = load ptr, ptr %0, align 8, !tbaa !351 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i66, i64 8 ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !354 ; 2 uses
  %i.ar = add i64 %i.aq, 1                        ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i66, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !339
  %i.au = icmp ugt i64 %i.ar, %i.at
  br i1 %i.au, label %bb.g, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i66, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !260
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i66, i64 noundef %i.ar), !inline_history !10
  %.pre.i.i68 = load i64, ptr %i.ap, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i69 = add i64 %.pre.i.i68, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70

_ZN3fmt3v1214basic_appenderIcEaSEc.exit70:        ; preds = %bb.f, %bb.g
  %.pre-phi.i.i67 = phi i64 [ %i.ar, %bb.f ], [ %.pre2.i.i69, %bb.g ]
  %i.ax = phi i64 [ %i.aq, %bb.f ], [ %.pre.i.i68, %bb.g ]
  %i.ay = load ptr, ptr %.sroa.0.0.copyload.i66, align 8, !tbaa !338
  store i64 %.pre-phi.i.i67, ptr %i.ap, align 8, !tbaa !354
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ax
  store i8 46, ptr %i.az, align 1, !tbaa !232
  %i.ba = tail call i32 @llvm.umin.i32(i32 %.sroa.speculated, i32 %2) ; 3 uses
  %i.bb = sub nsw i32 %2, %i.ba                   ; 5 uses
  %.sroa.07.0.copyload = load ptr, ptr %0, align 8, !tbaa !351 ; 9 uses
  %.not97 = icmp sgt i32 %i.n, 5
  br i1 %.not97, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78, label %.lr.ph.i71

.lr.ph.i71:                                       ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 8 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 24
  br label %bb.h

bb.h:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73, %.lr.ph.i71
  %.04.i72 = phi i32 [ 0, %.lr.ph.i71 ], [ %i.bn, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73 ]
  %i.bf = load i64, ptr %i.bc, align 8, !tbaa !354 ; 2 uses
  %i.bg = add i64 %i.bf, 1                        ; 3 uses
  %i.bh = load i64, ptr %i.bd, align 8, !tbaa !339
  %i.bi = icmp ugt i64 %i.bg, %i.bh
  br i1 %i.bi, label %bb.i, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73

bb.i:                                             ; preds = %bb.h
  %i.bj = load ptr, ptr %i.be, align 8, !tbaa !260
  tail call void %i.bj(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.07.0.copyload, i64 noundef %i.bg), !inline_history !34
  %.pre.i.i.i76 = load i64, ptr %i.bc, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i.i77 = add i64 %.pre.i.i.i76, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73:      ; preds = %bb.i, %bb.h
  %.pre-phi.i.i.i74 = phi i64 [ %i.bg, %bb.h ], [ %.pre2.i.i.i77, %bb.i ]
  %i.bk = phi i64 [ %i.bf, %bb.h ], [ %.pre.i.i.i76, %bb.i ]
  %i.bl = load ptr, ptr %.sroa.07.0.copyload, align 8, !tbaa !338
  store i64 %.pre-phi.i.i.i74, ptr %i.bc, align 8, !tbaa !354
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bk
  store i8 48, ptr %i.bm, align 1, !tbaa !232
  %i.bn = add nuw nsw i32 %.04.i72, 1             ; 2 uses
  %exitcond.not.i75 = icmp eq i32 %i.bn, %i.ba
  br i1 %exitcond.not.i75, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78, label %bb.h, !llvm.loop !14

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70
  store ptr %.sroa.07.0.copyload, ptr %0, align 8, !tbaa !351
  %.not65 = icmp slt i32 %i.bb, %i.n
  br i1 %.not65, label %bb.j, label %bb.l

bb.j:                                             ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78
  %i.bo = sub nsw i32 %i.n, %i.bb                 ; 3 uses
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %_ZN3fmt3v126detail5pow10Ej.exit, label %tailrecurse.i.preheader

tailrecurse.i.preheader:                          ; preds = %bb.j
  %i.bq = add nsw i32 %i.ba, %.neg.i.i
  %i.br = add i32 %i.bq, %i.i
  %xtraiter = and i32 %i.bo, 7                    ; 3 uses
  %i.bs = sub i32 %2, %i.br
  %i.bt = icmp ugt i32 %i.bs, -8
  br i1 %i.bt, label %tailrecurse.i.epil.preheader, label %tailrecurse.i.preheader.new

tailrecurse.i.preheader.new:                      ; preds = %tailrecurse.i.preheader
  %unroll_iter = and i32 %i.bo, -8
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i, %tailrecurse.i.preheader.new
  %accumulator.tr2.i = phi i64 [ 1, %tailrecurse.i.preheader.new ], [ %i.bu, %tailrecurse.i ]
  %niter = phi i32 [ 0, %tailrecurse.i.preheader.new ], [ %niter.next.7, %tailrecurse.i ]
  %i.bu = mul i64 %accumulator.tr2.i, 100000000   ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa, label %tailrecurse.i

_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa: ; preds = %tailrecurse.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3fmt3v126detail5pow10Ej.exit, label %tailrecurse.i.epil.preheader

tailrecurse.i.epil.preheader:                     ; preds = %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa, %tailrecurse.i.preheader
  %accumulator.tr2.i.epil.init = phi i64 [ 1, %tailrecurse.i.preheader ], [ %i.bu, %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa ]
  %lcmp.mod118 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod118)
  br label %tailrecurse.i.epil

tailrecurse.i.epil:                               ; preds = %tailrecurse.i.epil, %tailrecurse.i.epil.preheader
  %accumulator.tr2.i.epil = phi i64 [ %i.bv, %tailrecurse.i.epil ], [ %accumulator.tr2.i.epil.init, %tailrecurse.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %tailrecurse.i.epil ], [ 0, %tailrecurse.i.epil.preheader ]
  %i.bv = mul i64 %accumulator.tr2.i.epil, 10     ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN3fmt3v126detail5pow10Ej.exit, label %tailrecurse.i.epil, !llvm.loop !6164

_ZN3fmt3v126detail5pow10Ej.exit:                  ; preds = %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa, %tailrecurse.i.epil, %bb.j
  %accumulator.tr.lcssa.i = phi i64 [ 1, %bb.j ], [ %i.bu, %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa ], [ %i.bv, %tailrecurse.i.epil ] ; 2 uses
  %.not64 = icmp ugt i64 %accumulator.tr.lcssa.i, %.zext
  br i1 %.not64, label %bb.q, label %bb.k

bb.k:                                             ; preds = %_ZN3fmt3v126detail5pow10Ej.exit
  %i.bw = udiv i64 %.zext, %accumulator.tr.lcssa.i
  %i.bx = tail call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.07.0.copyload, i64 noundef %i.bw, i32 noundef %i.bb)
  br label %.sink.split

bb.l:                                             ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78
  %.not63 = icmp eq i64 %i.a, 0
  br i1 %.not63, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.by = tail call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.07.0.copyload, i64 noundef %.zext, i32 noundef %i.n) ; 2 uses
  store ptr %i.by, ptr %0, align 8, !tbaa !351
  %i.bz = sub nsw i32 %i.bb, %i.n
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.copyload = phi ptr [ %i.by, %bb.m ], [ %.sroa.07.0.copyload, %bb.l ] ; 7 uses
  %.056 = phi i32 [ %i.bz, %bb.m ], [ %i.bb, %bb.l ] ; 2 uses
  %i.ca = icmp sgt i32 %.056, 0
  br i1 %i.ca, label %.lr.ph.i79, label %.sink.split

.lr.ph.i79:                                       ; preds = %bb.n
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  br label %bb.o

bb.o:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81, %.lr.ph.i79
  %.04.i80 = phi i32 [ 0, %.lr.ph.i79 ], [ %i.cm, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81 ]
  %i.ce = load i64, ptr %i.cb, align 8, !tbaa !354 ; 2 uses
  %i.cf = add i64 %i.ce, 1                        ; 3 uses
  %i.cg = load i64, ptr %i.cc, align 8, !tbaa !339
  %i.ch = icmp ugt i64 %i.cf, %i.cg
  br i1 %i.ch, label %bb.p, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81

bb.p:                                             ; preds = %bb.o
  %i.ci = load ptr, ptr %i.cd, align 8, !tbaa !260
  tail call void %i.ci(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload, i64 noundef %i.cf), !inline_history !34
  %.pre.i.i.i84 = load i64, ptr %i.cb, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i.i85 = add i64 %.pre.i.i.i84, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81:      ; preds = %bb.p, %bb.o
  %.pre-phi.i.i.i82 = phi i64 [ %i.cf, %bb.o ], [ %.pre2.i.i.i85, %bb.p ]
  %i.cj = phi i64 [ %i.ce, %bb.o ], [ %.pre.i.i.i84, %bb.p ]
  %i.ck = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !338
  store i64 %.pre-phi.i.i.i82, ptr %i.cb, align 8, !tbaa !354
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cj
  store i8 48, ptr %i.cl, align 1, !tbaa !232
  %i.cm = add nuw nsw i32 %.04.i80, 1             ; 2 uses
  %exitcond.not.i83 = icmp eq i32 %i.cm, %.056
  br i1 %exitcond.not.i83, label %.sink.split, label %bb.o, !llvm.loop !14

.sink.split:                                      ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81, %bb.n, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, %bb.k
  %.sroa.0.0.copyload.sink = phi ptr [ %i.ao, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit ], [ %i.bx, %bb.k ], [ %.sroa.0.0.copyload, %bb.n ], [ %.sroa.0.0.copyload, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81 ]
  store ptr %.sroa.0.0.copyload.sink, ptr %0, align 8, !tbaa !351
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %_ZN3fmt3v126detail5pow10Ej.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcxSt5ratioILl1ELl3EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvvEJEEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 %2, i64 %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.fmt::v12::locale_ref", align 8 ; 5 uses
  %5 = alloca %"class.fmt::v12::detail::get_locale", align 8 ; 8 uses
  %6 = alloca %"class.fmt::v12::detail::tm_writer", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !637, !range !249, !noundef !250 ; 2 uses
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.02.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !335
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %.sroa.02.0.copyload, ptr %4, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i8 %i.b, ptr %i.e, align 8, !tbaa !341
  br i1 %i.c, label %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit, label %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread

_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  br label %bb.b

_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit: ; preds = %bb.a
  call void @_ZNK3fmt3v1210locale_ref3getISt6localeEET_v(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 dereferenceable(9) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %.pre = load i8, ptr %i.e, align 8, !tbaa !341, !range !249
  %i.f = trunc nuw i8 %.pre to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  br i1 %i.f, label %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit
  %i.g = load atomic i8, ptr @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, !prof !342

bb.c:                                             ; preds = %bb.b
  %i.i = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %i.j, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %.body

_ZN3fmt3v126detail18get_classic_localeEv.exit.i:  ; preds = %bb.e, %bb.c, %bb.b
  %i.l = load ptr, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344, !nonnull !250, !align !336
  br label %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit

_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit: ; preds = %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit
  %i.m = phi ptr [ %i.l, %_ZN3fmt3v126detail18get_classic_localeEv.exit.i ], [ %5, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit ] ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8, !tbaa !351
  store ptr %i.m, ptr %6, align 8, !tbaa !344
  %i.n = load atomic i8, ptr @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale acquire, align 8
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.k, !prof !342

bb.g:                                             ; preds = %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit
  %i.p = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  %.not.i.i13 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i13, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %i.q, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %.body

bb.k:                                             ; preds = %bb.i, %bb.g, %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.t = load ptr, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344, !nonnull !250, !align !336
  %i.u = call noundef zeroext i1 @_ZNKSt6localeeqERKS_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.t) #30
  %i.v = zext i1 %i.u to i8
  store i8 %i.v, ptr %i.s, align 8, !tbaa !350
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %.sroa.01.0.copyload, ptr %i.w, align 8, !tbaa !351
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 24
end_hunk_11
begin_hunk_12_@_ZN3fmt3v126detail18duration_formatterIcxSt5ratioILl1ELl7EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSF_SG_EEEvRK2tmT_DpT0_:bb.a
_ZN3fmt3v126detail10get_localeD2Ev.exit:          ; preds = %.body, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  resume { ptr, i32 } %eh.lpad-body

bb.o:                                             ; preds = %bb.k
  %i.ai = inttoptr i64 %2 to ptr
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %i.aj = phi ptr [ %i.ae, %bb.l ], [ %i.ai, %bb.o ]
  invoke void %i.aj(ptr noundef nonnull align 8 dereferenceable(40) %i.z, i32 noundef %4, i32 noundef %5)
          to label %bb.q unwind label %bb.m

bb.q:                                             ; preds = %bb.p
  %.sroa.0.0.copyload.i = load ptr, ptr %i.w, align 8, !tbaa !351
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8, !tbaa !351
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.ak = load i8, ptr %i.e, align 8, !tbaa !341, !range !249, !noundef !250
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %7) #30
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail24write_fractional_secondsIcNS0_14basic_appenderIcEENSt6chrono8durationIySt5ratioILl1ELl7EEEEEEvRT0_T1_i(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, i32 noundef %2) local_unnamed_addr #2 comdat {
_ZN3fmt3v126detail13duration_castINSt6chrono8durationIySt5ratioILl1ELl1000000EEEEyS5_ILl1ELl7EETnNSt9enable_ifIXaasr3std11is_integralIT0_EE5valuesr3std11is_integralINT_3repEEE5valueEiE4typeELi0EEESB_NS4_ISA_T1_EE.exit:
  %.fr = freeze i64 %1
  %i.a = urem i64 %.fr, 7                         ; 2 uses
  %i.b = trunc nuw nsw i64 %i.a to i32
  %.lhs.trunc = mul nuw nsw i32 %i.b, 1000000
  %i.c = udiv i32 %.lhs.trunc, 7
  %.zext = zext nneg i32 %i.c to i64              ; 6 uses
  %i.d = or i64 %.zext, 1
  %i.e = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.f = xor i64 %i.e, 63
  %i.g = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !232   ; 2 uses
  %i.i = zext i8 %i.h to i32                      ; 2 uses
  %i.j = zext i8 %i.h to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !255
  %i.m = icmp ugt i64 %i.l, %.zext
  %.neg.i.i = sext i1 %i.m to i32                 ; 2 uses
  %i.n = add nsw i32 %.neg.i.i, %i.i              ; 8 uses
  %i.o = icmp slt i32 %i.n, 6
  %i.p = tail call i32 @llvm.smin.i32(i32 %i.n, i32 6)
  %.sroa.speculated = sub i32 6, %i.p             ; 2 uses
  %i.q = icmp slt i32 %2, 0
  br i1 %i.q, label %bb.a, label %bb.e

bb.a:                                             ; preds = %_ZN3fmt3v126detail13duration_castINSt6chrono8durationIySt5ratioILl1ELl1000000EEEEyS5_ILl1ELl7EETnNSt9enable_ifIXaasr3std11is_integralIT0_EE5valuesr3std11is_integralINT_3repEEE5valueEiE4typeELi0EEESB_NS4_ISA_T1_EE.exit
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !351 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !354  ; 2 uses
  %i.t = add i64 %i.s, 1                          ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !339
  %i.w = icmp ugt i64 %i.t, %i.v
  br i1 %i.w, label %bb.b, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !260
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, i64 noundef %i.t), !inline_history !10
  %.pre.i.i = load i64, ptr %i.r, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.a, %bb.b
  %.pre-phi.i.i = phi i64 [ %i.t, %bb.a ], [ %.pre2.i.i, %bb.b ]
  %i.z = phi i64 [ %i.s, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.aa = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !338
  store i64 %.pre-phi.i.i, ptr %i.r, align 8, !tbaa !354
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.z
  store i8 46, ptr %i.ab, align 1, !tbaa !232
  %.sroa.016.0.copyload = load ptr, ptr %0, align 8, !tbaa !351 ; 7 uses
  br i1 %i.o, label %.lr.ph.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit

.lr.ph.i:                                         ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 8 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 24
  br label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %.lr.ph.i
  %.04.i = phi i32 [ 0, %.lr.ph.i ], [ %i.an, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ]
  %i.af = load i64, ptr %i.ac, align 8, !tbaa !354 ; 2 uses
  %i.ag = add i64 %i.af, 1                        ; 3 uses
  %i.ah = load i64, ptr %i.ad, align 8, !tbaa !339
  %i.ai = icmp ugt i64 %i.ag, %i.ah
  br i1 %i.ai, label %bb.d, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.d:                                             ; preds = %bb.c
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !260
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.016.0.copyload, i64 noundef %i.ag), !inline_history !34
  %.pre.i.i.i = load i64, ptr %i.ac, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.d, %bb.c
  %.pre-phi.i.i.i = phi i64 [ %i.ag, %bb.c ], [ %.pre2.i.i.i, %bb.d ]
  %i.ak = phi i64 [ %i.af, %bb.c ], [ %.pre.i.i.i, %bb.d ]
  %i.al = load ptr, ptr %.sroa.016.0.copyload, align 8, !tbaa !338
  store i64 %.pre-phi.i.i.i, ptr %i.ac, align 8, !tbaa !354
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ak
  store i8 48, ptr %i.am, align 1, !tbaa !232
  %i.an = add nuw nsw i32 %.04.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.an, %.sroa.speculated
  br i1 %exitcond.not.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, label %bb.c, !llvm.loop !14

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  store ptr %.sroa.016.0.copyload, ptr %0, align 8, !tbaa !351
  %i.ao = tail call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.016.0.copyload, i64 noundef %.zext, i32 noundef %i.n)
  br label %.sink.split

bb.e:                                             ; preds = %_ZN3fmt3v126detail13duration_castINSt6chrono8durationIySt5ratioILl1ELl1000000EEEEyS5_ILl1ELl7EETnNSt9enable_ifIXaasr3std11is_integralIT0_EE5valuesr3std11is_integralINT_3repEEE5valueEiE4typeELi0EEESB_NS4_ISA_T1_EE.exit
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.q, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.0.0.copyload.i66 = load ptr, ptr %0, align 8, !tbaa !351 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i66, i64 8 ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !354 ; 2 uses
  %i.ar = add i64 %i.aq, 1                        ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i66, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !339
  %i.au = icmp ugt i64 %i.ar, %i.at
  br i1 %i.au, label %bb.g, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i66, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !260
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i66, i64 noundef %i.ar), !inline_history !10
  %.pre.i.i68 = load i64, ptr %i.ap, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i69 = add i64 %.pre.i.i68, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70

_ZN3fmt3v1214basic_appenderIcEaSEc.exit70:        ; preds = %bb.f, %bb.g
  %.pre-phi.i.i67 = phi i64 [ %i.ar, %bb.f ], [ %.pre2.i.i69, %bb.g ]
  %i.ax = phi i64 [ %i.aq, %bb.f ], [ %.pre.i.i68, %bb.g ]
  %i.ay = load ptr, ptr %.sroa.0.0.copyload.i66, align 8, !tbaa !338
  store i64 %.pre-phi.i.i67, ptr %i.ap, align 8, !tbaa !354
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ax
  store i8 46, ptr %i.az, align 1, !tbaa !232
  %i.ba = tail call i32 @llvm.umin.i32(i32 %.sroa.speculated, i32 %2) ; 3 uses
  %i.bb = sub nsw i32 %2, %i.ba                   ; 5 uses
  %.sroa.07.0.copyload = load ptr, ptr %0, align 8, !tbaa !351 ; 9 uses
  %.not97 = icmp sgt i32 %i.n, 5
  br i1 %.not97, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78, label %.lr.ph.i71

.lr.ph.i71:                                       ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 8 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 24
  br label %bb.h

bb.h:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73, %.lr.ph.i71
  %.04.i72 = phi i32 [ 0, %.lr.ph.i71 ], [ %i.bn, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73 ]
  %i.bf = load i64, ptr %i.bc, align 8, !tbaa !354 ; 2 uses
  %i.bg = add i64 %i.bf, 1                        ; 3 uses
  %i.bh = load i64, ptr %i.bd, align 8, !tbaa !339
  %i.bi = icmp ugt i64 %i.bg, %i.bh
  br i1 %i.bi, label %bb.i, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73

bb.i:                                             ; preds = %bb.h
  %i.bj = load ptr, ptr %i.be, align 8, !tbaa !260
  tail call void %i.bj(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.07.0.copyload, i64 noundef %i.bg), !inline_history !34
  %.pre.i.i.i76 = load i64, ptr %i.bc, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i.i77 = add i64 %.pre.i.i.i76, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73:      ; preds = %bb.i, %bb.h
  %.pre-phi.i.i.i74 = phi i64 [ %i.bg, %bb.h ], [ %.pre2.i.i.i77, %bb.i ]
  %i.bk = phi i64 [ %i.bf, %bb.h ], [ %.pre.i.i.i76, %bb.i ]
  %i.bl = load ptr, ptr %.sroa.07.0.copyload, align 8, !tbaa !338
  store i64 %.pre-phi.i.i.i74, ptr %i.bc, align 8, !tbaa !354
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bk
  store i8 48, ptr %i.bm, align 1, !tbaa !232
  %i.bn = add nuw nsw i32 %.04.i72, 1             ; 2 uses
  %exitcond.not.i75 = icmp eq i32 %i.bn, %i.ba
  br i1 %exitcond.not.i75, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78, label %bb.h, !llvm.loop !14

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70
  store ptr %.sroa.07.0.copyload, ptr %0, align 8, !tbaa !351
  %.not65 = icmp slt i32 %i.bb, %i.n
  br i1 %.not65, label %bb.j, label %bb.l

bb.j:                                             ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78
  %i.bo = sub nsw i32 %i.n, %i.bb                 ; 3 uses
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %_ZN3fmt3v126detail5pow10Ej.exit, label %tailrecurse.i.preheader

tailrecurse.i.preheader:                          ; preds = %bb.j
  %i.bq = add nsw i32 %i.ba, %.neg.i.i
  %i.br = add i32 %i.bq, %i.i
  %xtraiter = and i32 %i.bo, 7                    ; 3 uses
  %i.bs = sub i32 %2, %i.br
  %i.bt = icmp ugt i32 %i.bs, -8
  br i1 %i.bt, label %tailrecurse.i.epil.preheader, label %tailrecurse.i.preheader.new

tailrecurse.i.preheader.new:                      ; preds = %tailrecurse.i.preheader
  %unroll_iter = and i32 %i.bo, -8
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i, %tailrecurse.i.preheader.new
  %accumulator.tr2.i = phi i64 [ 1, %tailrecurse.i.preheader.new ], [ %i.bu, %tailrecurse.i ]
  %niter = phi i32 [ 0, %tailrecurse.i.preheader.new ], [ %niter.next.7, %tailrecurse.i ]
  %i.bu = mul i64 %accumulator.tr2.i, 100000000   ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa, label %tailrecurse.i

_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa: ; preds = %tailrecurse.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3fmt3v126detail5pow10Ej.exit, label %tailrecurse.i.epil.preheader

tailrecurse.i.epil.preheader:                     ; preds = %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa, %tailrecurse.i.preheader
  %accumulator.tr2.i.epil.init = phi i64 [ 1, %tailrecurse.i.preheader ], [ %i.bu, %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa ]
  %lcmp.mod118 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod118)
  br label %tailrecurse.i.epil

tailrecurse.i.epil:                               ; preds = %tailrecurse.i.epil, %tailrecurse.i.epil.preheader
  %accumulator.tr2.i.epil = phi i64 [ %i.bv, %tailrecurse.i.epil ], [ %accumulator.tr2.i.epil.init, %tailrecurse.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %tailrecurse.i.epil ], [ 0, %tailrecurse.i.epil.preheader ]
  %i.bv = mul i64 %accumulator.tr2.i.epil, 10     ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN3fmt3v126detail5pow10Ej.exit, label %tailrecurse.i.epil, !llvm.loop !6181

_ZN3fmt3v126detail5pow10Ej.exit:                  ; preds = %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa, %tailrecurse.i.epil, %bb.j
  %accumulator.tr.lcssa.i = phi i64 [ 1, %bb.j ], [ %i.bu, %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa ], [ %i.bv, %tailrecurse.i.epil ] ; 2 uses
  %.not64 = icmp ugt i64 %accumulator.tr.lcssa.i, %.zext
  br i1 %.not64, label %bb.q, label %bb.k

bb.k:                                             ; preds = %_ZN3fmt3v126detail5pow10Ej.exit
  %i.bw = udiv i64 %.zext, %accumulator.tr.lcssa.i
  %i.bx = tail call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.07.0.copyload, i64 noundef %i.bw, i32 noundef %i.bb)
  br label %.sink.split

bb.l:                                             ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78
  %.not63 = icmp eq i64 %i.a, 0
  br i1 %.not63, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.by = tail call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.07.0.copyload, i64 noundef %.zext, i32 noundef %i.n) ; 2 uses
  store ptr %i.by, ptr %0, align 8, !tbaa !351
  %i.bz = sub nsw i32 %i.bb, %i.n
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.copyload = phi ptr [ %i.by, %bb.m ], [ %.sroa.07.0.copyload, %bb.l ] ; 7 uses
  %.056 = phi i32 [ %i.bz, %bb.m ], [ %i.bb, %bb.l ] ; 2 uses
  %i.ca = icmp sgt i32 %.056, 0
  br i1 %i.ca, label %.lr.ph.i79, label %.sink.split

.lr.ph.i79:                                       ; preds = %bb.n
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  br label %bb.o

bb.o:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81, %.lr.ph.i79
  %.04.i80 = phi i32 [ 0, %.lr.ph.i79 ], [ %i.cm, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81 ]
  %i.ce = load i64, ptr %i.cb, align 8, !tbaa !354 ; 2 uses
  %i.cf = add i64 %i.ce, 1                        ; 3 uses
  %i.cg = load i64, ptr %i.cc, align 8, !tbaa !339
  %i.ch = icmp ugt i64 %i.cf, %i.cg
  br i1 %i.ch, label %bb.p, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81

bb.p:                                             ; preds = %bb.o
  %i.ci = load ptr, ptr %i.cd, align 8, !tbaa !260
  tail call void %i.ci(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload, i64 noundef %i.cf), !inline_history !34
  %.pre.i.i.i84 = load i64, ptr %i.cb, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i.i85 = add i64 %.pre.i.i.i84, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81:      ; preds = %bb.p, %bb.o
  %.pre-phi.i.i.i82 = phi i64 [ %i.cf, %bb.o ], [ %.pre2.i.i.i85, %bb.p ]
  %i.cj = phi i64 [ %i.ce, %bb.o ], [ %.pre.i.i.i84, %bb.p ]
  %i.ck = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !338
  store i64 %.pre-phi.i.i.i82, ptr %i.cb, align 8, !tbaa !354
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cj
  store i8 48, ptr %i.cl, align 1, !tbaa !232
  %i.cm = add nuw nsw i32 %.04.i80, 1             ; 2 uses
  %exitcond.not.i83 = icmp eq i32 %i.cm, %.056
  br i1 %exitcond.not.i83, label %.sink.split, label %bb.o, !llvm.loop !14

.sink.split:                                      ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81, %bb.n, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, %bb.k
  %.sroa.0.0.copyload.sink = phi ptr [ %i.ao, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit ], [ %i.bx, %bb.k ], [ %.sroa.0.0.copyload, %bb.n ], [ %.sroa.0.0.copyload, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81 ]
  store ptr %.sroa.0.0.copyload.sink, ptr %0, align 8, !tbaa !351
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %_ZN3fmt3v126detail5pow10Ej.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcxSt5ratioILl1ELl7EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvvEJEEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 %2, i64 %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.fmt::v12::locale_ref", align 8 ; 5 uses
  %5 = alloca %"class.fmt::v12::detail::get_locale", align 8 ; 8 uses
  %6 = alloca %"class.fmt::v12::detail::tm_writer", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !642, !range !249, !noundef !250 ; 2 uses
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.02.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !335
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %.sroa.02.0.copyload, ptr %4, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i8 %i.b, ptr %i.e, align 8, !tbaa !341
  br i1 %i.c, label %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit, label %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread

_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  br label %bb.b

_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit: ; preds = %bb.a
  call void @_ZNK3fmt3v1210locale_ref3getISt6localeEET_v(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 dereferenceable(9) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %.pre = load i8, ptr %i.e, align 8, !tbaa !341, !range !249
  %i.f = trunc nuw i8 %.pre to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  br i1 %i.f, label %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit
  %i.g = load atomic i8, ptr @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, !prof !342

bb.c:                                             ; preds = %bb.b
  %i.i = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %i.j, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %.body

_ZN3fmt3v126detail18get_classic_localeEv.exit.i:  ; preds = %bb.e, %bb.c, %bb.b
  %i.l = load ptr, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344, !nonnull !250, !align !336
  br label %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit

_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit: ; preds = %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit
  %i.m = phi ptr [ %i.l, %_ZN3fmt3v126detail18get_classic_localeEv.exit.i ], [ %5, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit ] ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8, !tbaa !351
  store ptr %i.m, ptr %6, align 8, !tbaa !344
  %i.n = load atomic i8, ptr @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale acquire, align 8
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.k, !prof !342

bb.g:                                             ; preds = %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit
  %i.p = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  %.not.i.i13 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i13, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %i.q, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %.body

bb.k:                                             ; preds = %bb.i, %bb.g, %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.t = load ptr, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344, !nonnull !250, !align !336
  %i.u = call noundef zeroext i1 @_ZNKSt6localeeqERKS_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.t) #30
  %i.v = zext i1 %i.u to i8
  store i8 %i.v, ptr %i.s, align 8, !tbaa !350
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %.sroa.01.0.copyload, ptr %i.w, align 8, !tbaa !351
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 24
end_hunk_12
begin_hunk_13_@_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIxSt5ratioILl1ELl3EEEEE6write2EiNS1_8pad_typeE:bb.a
  %i.au = or disjoint i8 %i.at, 48
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8 ; 3 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !354 ; 2 uses
  %i.ax = add i64 %i.aw, 1                        ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !339
  %i.ba = icmp ugt i64 %i.ax, %i.az
  br i1 %i.ba, label %bb.h, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit17

bb.h:                                             ; preds = %_ZN3fmt3v126detail13write_paddingINS0_14basic_appenderIcEEEET_S5_NS1_8pad_typeE.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !260
  tail call void %i.bc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload, i64 noundef %i.ax), !inline_history !10
  %.pre.i.i15 = load i64, ptr %i.av, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i16 = add i64 %.pre.i.i15, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit17

_ZN3fmt3v1214basic_appenderIcEaSEc.exit17:        ; preds = %_ZN3fmt3v126detail13write_paddingINS0_14basic_appenderIcEEEET_S5_NS1_8pad_typeE.exit, %bb.h
  %.pre-phi.i.i14 = phi i64 [ %i.ax, %_ZN3fmt3v126detail13write_paddingINS0_14basic_appenderIcEEEET_S5_NS1_8pad_typeE.exit ], [ %.pre2.i.i16, %bb.h ]
  %i.bd = phi i64 [ %i.aw, %_ZN3fmt3v126detail13write_paddingINS0_14basic_appenderIcEEEET_S5_NS1_8pad_typeE.exit ], [ %.pre.i.i15, %bb.h ]
  %i.be = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !338
  store i64 %.pre-phi.i.i14, ptr %i.av, align 8, !tbaa !354
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bd
  store i8 %i.au, ptr %i.bf, align 1, !tbaa !232
  br label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit17, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit12
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail24write_fractional_secondsIcNS0_14basic_appenderIcEENSt6chrono8durationIxSt5ratioILl1ELl3EEEEEEvRT0_T1_i(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, i32 noundef %2) local_unnamed_addr #2 comdat {
_ZN3fmt3v126detail13duration_castINSt6chrono8durationIxSt5ratioILl1ELl1000000EEEExS5_ILl1ELl3EETnNSt9enable_ifIXaasr3std11is_integralIT0_EE5valuesr3std11is_integralINT_3repEEE5valueEiE4typeELi0EEESB_NS4_ISA_T1_EE.exit:
  %.fr = freeze i64 %1
  %i.a = srem i64 %.fr, 3
  %i.b = mul nsw i64 %i.a, 1000000                ; 2 uses
  %.lhs.trunc = trunc nsw i64 %i.b to i32
  %i.c = sdiv i32 %.lhs.trunc, 3
  %.sext = sext i32 %i.c to i64                   ; 6 uses
  %i.d = or i64 %.sext, 1
  %i.e = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.f = xor i64 %i.e, 63
  %i.g = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !232   ; 2 uses
  %i.i = zext i8 %i.h to i32                      ; 2 uses
  %i.j = zext i8 %i.h to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !255
  %i.m = icmp ugt i64 %i.l, %.sext
  %.neg.i.i = sext i1 %i.m to i32                 ; 2 uses
  %i.n = add nsw i32 %.neg.i.i, %i.i              ; 8 uses
  %i.o = icmp slt i32 %i.n, 6
  %i.p = tail call i32 @llvm.smin.i32(i32 %i.n, i32 6)
  %.sroa.speculated = sub i32 6, %i.p             ; 2 uses
  %i.q = icmp slt i32 %2, 0
  br i1 %i.q, label %bb.a, label %bb.e

bb.a:                                             ; preds = %_ZN3fmt3v126detail13duration_castINSt6chrono8durationIxSt5ratioILl1ELl1000000EEEExS5_ILl1ELl3EETnNSt9enable_ifIXaasr3std11is_integralIT0_EE5valuesr3std11is_integralINT_3repEEE5valueEiE4typeELi0EEESB_NS4_ISA_T1_EE.exit
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !351 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !354  ; 2 uses
  %i.t = add i64 %i.s, 1                          ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !339
  %i.w = icmp ugt i64 %i.t, %i.v
  br i1 %i.w, label %bb.b, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !260
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, i64 noundef %i.t), !inline_history !10
  %.pre.i.i = load i64, ptr %i.r, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.a, %bb.b
  %.pre-phi.i.i = phi i64 [ %i.t, %bb.a ], [ %.pre2.i.i, %bb.b ]
  %i.z = phi i64 [ %i.s, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.aa = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !338
  store i64 %.pre-phi.i.i, ptr %i.r, align 8, !tbaa !354
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.z
  store i8 46, ptr %i.ab, align 1, !tbaa !232
  %.sroa.016.0.copyload = load ptr, ptr %0, align 8, !tbaa !351 ; 7 uses
  br i1 %i.o, label %.lr.ph.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit

.lr.ph.i:                                         ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 8 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 24
  br label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %.lr.ph.i
  %.04.i = phi i32 [ 0, %.lr.ph.i ], [ %i.an, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ]
  %i.af = load i64, ptr %i.ac, align 8, !tbaa !354 ; 2 uses
  %i.ag = add i64 %i.af, 1                        ; 3 uses
  %i.ah = load i64, ptr %i.ad, align 8, !tbaa !339
  %i.ai = icmp ugt i64 %i.ag, %i.ah
  br i1 %i.ai, label %bb.d, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.d:                                             ; preds = %bb.c
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !260
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.016.0.copyload, i64 noundef %i.ag), !inline_history !34
  %.pre.i.i.i = load i64, ptr %i.ac, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.d, %bb.c
  %.pre-phi.i.i.i = phi i64 [ %i.ag, %bb.c ], [ %.pre2.i.i.i, %bb.d ]
  %i.ak = phi i64 [ %i.af, %bb.c ], [ %.pre.i.i.i, %bb.d ]
  %i.al = load ptr, ptr %.sroa.016.0.copyload, align 8, !tbaa !338
  store i64 %.pre-phi.i.i.i, ptr %i.ac, align 8, !tbaa !354
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ak
  store i8 48, ptr %i.am, align 1, !tbaa !232
  %i.an = add nuw nsw i32 %.04.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.an, %.sroa.speculated
  br i1 %exitcond.not.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, label %bb.c, !llvm.loop !14

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  store ptr %.sroa.016.0.copyload, ptr %0, align 8, !tbaa !351
  %i.ao = tail call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.016.0.copyload, i64 noundef %.sext, i32 noundef %i.n)
  br label %.sink.split

bb.e:                                             ; preds = %_ZN3fmt3v126detail13duration_castINSt6chrono8durationIxSt5ratioILl1ELl1000000EEEExS5_ILl1ELl3EETnNSt9enable_ifIXaasr3std11is_integralIT0_EE5valuesr3std11is_integralINT_3repEEE5valueEiE4typeELi0EEESB_NS4_ISA_T1_EE.exit
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.q, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.0.0.copyload.i66 = load ptr, ptr %0, align 8, !tbaa !351 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i66, i64 8 ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !354 ; 2 uses
  %i.ar = add i64 %i.aq, 1                        ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i66, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !339
  %i.au = icmp ugt i64 %i.ar, %i.at
  br i1 %i.au, label %bb.g, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i66, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !260
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i66, i64 noundef %i.ar), !inline_history !10
  %.pre.i.i68 = load i64, ptr %i.ap, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i69 = add i64 %.pre.i.i68, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70

_ZN3fmt3v1214basic_appenderIcEaSEc.exit70:        ; preds = %bb.f, %bb.g
  %.pre-phi.i.i67 = phi i64 [ %i.ar, %bb.f ], [ %.pre2.i.i69, %bb.g ]
  %i.ax = phi i64 [ %i.aq, %bb.f ], [ %.pre.i.i68, %bb.g ]
  %i.ay = load ptr, ptr %.sroa.0.0.copyload.i66, align 8, !tbaa !338
  store i64 %.pre-phi.i.i67, ptr %i.ap, align 8, !tbaa !354
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ax
  store i8 46, ptr %i.az, align 1, !tbaa !232
  %i.ba = tail call i32 @llvm.umin.i32(i32 %.sroa.speculated, i32 %2) ; 3 uses
  %i.bb = sub nsw i32 %2, %i.ba                   ; 5 uses
  %.sroa.07.0.copyload = load ptr, ptr %0, align 8, !tbaa !351 ; 9 uses
  %.not97 = icmp sgt i32 %i.n, 5
  br i1 %.not97, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78, label %.lr.ph.i71

.lr.ph.i71:                                       ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 8 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 24
  br label %bb.h

bb.h:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73, %.lr.ph.i71
  %.04.i72 = phi i32 [ 0, %.lr.ph.i71 ], [ %i.bn, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73 ]
  %i.bf = load i64, ptr %i.bc, align 8, !tbaa !354 ; 2 uses
  %i.bg = add i64 %i.bf, 1                        ; 3 uses
  %i.bh = load i64, ptr %i.bd, align 8, !tbaa !339
  %i.bi = icmp ugt i64 %i.bg, %i.bh
  br i1 %i.bi, label %bb.i, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73

bb.i:                                             ; preds = %bb.h
  %i.bj = load ptr, ptr %i.be, align 8, !tbaa !260
  tail call void %i.bj(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.07.0.copyload, i64 noundef %i.bg), !inline_history !34
  %.pre.i.i.i76 = load i64, ptr %i.bc, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i.i77 = add i64 %.pre.i.i.i76, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73:      ; preds = %bb.i, %bb.h
  %.pre-phi.i.i.i74 = phi i64 [ %i.bg, %bb.h ], [ %.pre2.i.i.i77, %bb.i ]
  %i.bk = phi i64 [ %i.bf, %bb.h ], [ %.pre.i.i.i76, %bb.i ]
  %i.bl = load ptr, ptr %.sroa.07.0.copyload, align 8, !tbaa !338
  store i64 %.pre-phi.i.i.i74, ptr %i.bc, align 8, !tbaa !354
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bk
  store i8 48, ptr %i.bm, align 1, !tbaa !232
  %i.bn = add nuw nsw i32 %.04.i72, 1             ; 2 uses
  %exitcond.not.i75 = icmp eq i32 %i.bn, %i.ba
  br i1 %exitcond.not.i75, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78, label %bb.h, !llvm.loop !14

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70
  store ptr %.sroa.07.0.copyload, ptr %0, align 8, !tbaa !351
  %.not65 = icmp slt i32 %i.bb, %i.n
  br i1 %.not65, label %bb.j, label %bb.l

bb.j:                                             ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78
  %i.bo = sub nsw i32 %i.n, %i.bb                 ; 3 uses
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %_ZN3fmt3v126detail5pow10Ej.exit, label %tailrecurse.i.preheader

tailrecurse.i.preheader:                          ; preds = %bb.j
  %i.bq = add nsw i32 %i.ba, %.neg.i.i
  %i.br = add i32 %i.bq, %i.i
  %xtraiter = and i32 %i.bo, 7                    ; 3 uses
  %i.bs = sub i32 %2, %i.br
  %i.bt = icmp ugt i32 %i.bs, -8
  br i1 %i.bt, label %tailrecurse.i.epil.preheader, label %tailrecurse.i.preheader.new

tailrecurse.i.preheader.new:                      ; preds = %tailrecurse.i.preheader
  %unroll_iter = and i32 %i.bo, -8
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i, %tailrecurse.i.preheader.new
  %accumulator.tr2.i = phi i64 [ 1, %tailrecurse.i.preheader.new ], [ %i.bu, %tailrecurse.i ]
  %niter = phi i32 [ 0, %tailrecurse.i.preheader.new ], [ %niter.next.7, %tailrecurse.i ]
  %i.bu = mul i64 %accumulator.tr2.i, 100000000   ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa, label %tailrecurse.i

_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa: ; preds = %tailrecurse.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3fmt3v126detail5pow10Ej.exit, label %tailrecurse.i.epil.preheader

tailrecurse.i.epil.preheader:                     ; preds = %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa, %tailrecurse.i.preheader
  %accumulator.tr2.i.epil.init = phi i64 [ 1, %tailrecurse.i.preheader ], [ %i.bu, %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa ]
  %lcmp.mod118 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod118)
  br label %tailrecurse.i.epil

tailrecurse.i.epil:                               ; preds = %tailrecurse.i.epil, %tailrecurse.i.epil.preheader
  %accumulator.tr2.i.epil = phi i64 [ %i.bv, %tailrecurse.i.epil ], [ %accumulator.tr2.i.epil.init, %tailrecurse.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %tailrecurse.i.epil ], [ 0, %tailrecurse.i.epil.preheader ]
  %i.bv = mul i64 %accumulator.tr2.i.epil, 10     ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN3fmt3v126detail5pow10Ej.exit, label %tailrecurse.i.epil, !llvm.loop !6365

_ZN3fmt3v126detail5pow10Ej.exit:                  ; preds = %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa, %tailrecurse.i.epil, %bb.j
  %accumulator.tr.lcssa.i = phi i64 [ 1, %bb.j ], [ %i.bu, %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa ], [ %i.bv, %tailrecurse.i.epil ] ; 2 uses
  %.not64 = icmp ugt i64 %accumulator.tr.lcssa.i, %.sext
  br i1 %.not64, label %bb.q, label %bb.k

bb.k:                                             ; preds = %_ZN3fmt3v126detail5pow10Ej.exit
  %i.bw = udiv i64 %.sext, %accumulator.tr.lcssa.i
  %i.bx = tail call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.07.0.copyload, i64 noundef %i.bw, i32 noundef %i.bb)
  br label %.sink.split

bb.l:                                             ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78
  %.off = or disjoint i64 %i.b, 2
  %.not63 = icmp ult i64 %.off, 5
  br i1 %.not63, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.by = tail call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.07.0.copyload, i64 noundef %.sext, i32 noundef %i.n) ; 2 uses
  store ptr %i.by, ptr %0, align 8, !tbaa !351
  %i.bz = sub nsw i32 %i.bb, %i.n
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.copyload = phi ptr [ %i.by, %bb.m ], [ %.sroa.07.0.copyload, %bb.l ] ; 7 uses
  %.056 = phi i32 [ %i.bz, %bb.m ], [ %i.bb, %bb.l ] ; 2 uses
  %i.ca = icmp sgt i32 %.056, 0
  br i1 %i.ca, label %.lr.ph.i79, label %.sink.split

.lr.ph.i79:                                       ; preds = %bb.n
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  br label %bb.o

bb.o:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81, %.lr.ph.i79
  %.04.i80 = phi i32 [ 0, %.lr.ph.i79 ], [ %i.cm, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81 ]
  %i.ce = load i64, ptr %i.cb, align 8, !tbaa !354 ; 2 uses
  %i.cf = add i64 %i.ce, 1                        ; 3 uses
  %i.cg = load i64, ptr %i.cc, align 8, !tbaa !339
  %i.ch = icmp ugt i64 %i.cf, %i.cg
  br i1 %i.ch, label %bb.p, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81

bb.p:                                             ; preds = %bb.o
  %i.ci = load ptr, ptr %i.cd, align 8, !tbaa !260
  tail call void %i.ci(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload, i64 noundef %i.cf), !inline_history !34
  %.pre.i.i.i84 = load i64, ptr %i.cb, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i.i85 = add i64 %.pre.i.i.i84, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81:      ; preds = %bb.p, %bb.o
  %.pre-phi.i.i.i82 = phi i64 [ %i.cf, %bb.o ], [ %.pre2.i.i.i85, %bb.p ]
  %i.cj = phi i64 [ %i.ce, %bb.o ], [ %.pre.i.i.i84, %bb.p ]
  %i.ck = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !338
  store i64 %.pre-phi.i.i.i82, ptr %i.cb, align 8, !tbaa !354
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cj
  store i8 48, ptr %i.cl, align 1, !tbaa !232
  %i.cm = add nuw nsw i32 %.04.i80, 1             ; 2 uses
  %exitcond.not.i83 = icmp eq i32 %i.cm, %.056
  br i1 %exitcond.not.i83, label %.sink.split, label %bb.o, !llvm.loop !14

.sink.split:                                      ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81, %bb.n, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, %bb.k
  %.sroa.0.0.copyload.sink = phi ptr [ %i.ao, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit ], [ %i.bx, %bb.k ], [ %.sroa.0.0.copyload, %bb.n ], [ %.sroa.0.0.copyload, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i81 ]
  store ptr %.sroa.0.0.copyload.sink, ptr %0, align 8, !tbaa !351
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %_ZN3fmt3v126detail5pow10Ej.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIxSt5ratioILl1ELl3EEEEE16write_utc_offsetExNS1_14numeric_systemE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i = load ptr, ptr %i.b, align 8, !tbaa !351 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !354  ; 3 uses
  %i.e = add i64 %i.d, 1                          ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !339
  %i.h = icmp ugt i64 %i.e, %i.g                  ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.c, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !260
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, i64 noundef %i.e), !inline_history !10
  %.pre.i.i = load i64, ptr %i.c, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.b, %bb.c
  %.pre-phi.i.i = phi i64 [ %i.e, %bb.b ], [ %.pre2.i.i, %bb.c ]
  %i.k = phi i64 [ %i.d, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.l = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !338
  store i64 %.pre-phi.i.i, ptr %i.c, align 8, !tbaa !354
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.k
  store i8 45, ptr %i.m, align 1, !tbaa !232
  %i.n = sub nsw i64 0, %1
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.e, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit11

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !260
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, i64 noundef %i.e), !inline_history !10
  %.pre.i.i9 = load i64, ptr %i.c, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i10 = add i64 %.pre.i.i9, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit11

_ZN3fmt3v1214basic_appenderIcEaSEc.exit11:        ; preds = %bb.d, %bb.e
  %.pre-phi.i.i8 = phi i64 [ %i.e, %bb.d ], [ %.pre2.i.i10, %bb.e ]
  %i.q = phi i64 [ %i.d, %bb.d ], [ %.pre.i.i9, %bb.e ]
  %i.r = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !338
  store i64 %.pre-phi.i.i8, ptr %i.c, align 8, !tbaa !354
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.q
  store i8 43, ptr %i.s, align 1, !tbaa !232
  br label %bb.f

bb.f:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit11, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  %.0 = phi i64 [ %i.n, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit ], [ %1, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit11 ] ; 2 uses
  %i.t = udiv i64 %.0, 3600
  %i.u = trunc i64 %i.t to i32
  %i.v = urem i32 %i.u, 100
  %i.w = shl nuw nsw i32 %i.v, 1
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.aa = load i8, ptr %i.y, align 2, !tbaa !232
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.ab, align 8, !tbaa !351 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 8 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !354 ; 2 uses
  %i.ae = add i64 %i.ad, 1                        ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !339
  %i.ah = icmp ugt i64 %i.ae, %i.ag
  br i1 %i.ah, label %bb.g, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !260
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i, i64 noundef %i.ae), !inline_history !167
  %.pre.i.i.i = load i64, ptr %i.ac, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.g, %bb.f
  %.pre-phi.i.i.i = phi i64 [ %i.ae, %bb.f ], [ %.pre2.i.i.i, %bb.g ]
  %i.ak = phi i64 [ %i.ad, %bb.f ], [ %.pre.i.i.i, %bb.g ]
  %i.al = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !338
  store i64 %.pre-phi.i.i.i, ptr %i.ac, align 8, !tbaa !354
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ak
  store i8 %i.aa, ptr %i.am, align 1, !tbaa !232
  %i.an = load i8, ptr %i.z, align 1, !tbaa !232
  %.sroa.0.0.copyload.i3.i = load ptr, ptr %i.ab, align 8, !tbaa !351 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i3.i, i64 8 ; 3 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !354 ; 2 uses
  %i.aq = add i64 %i.ap, 1                        ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i3.i, i64 16
end_hunk_13
