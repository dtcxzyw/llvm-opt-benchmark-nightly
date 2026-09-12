Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/ginget?download=true
inline.NumInlined: 178
inline.NumDeleted: 37
begin_hunk_0_@entryGetItem:bb.a
  %.not58.i = icmp eq ptr %i.fk, null
  br i1 %.not58.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.backedge.i
  tail call void @pfree(ptr noundef nonnull %i.fk) #7
  store ptr null, ptr %i.cf, align 8
  store i32 0, ptr %i.bw, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.backedge.i
  br i1 %.155.i, label %bb.ai, label %BufferGetPage.exit71.i

bb.ai:                                            ; preds = %bb.ah
  %i.fl = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.fm = load i16, ptr %i.fl, align 8
  %i.fn = zext i16 %i.fm to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 4
  %i.fq = icmp eq i32 %i.fp, -1
  %i.fr = load i32, ptr %i.bt, align 4            ; 2 uses
  br i1 %i.fq, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  tail call void @UnlockReleaseBuffer(i32 noundef %i.fr) #7
  store i32 0, ptr %i.bt, align 4
  store i8 1, ptr %i.cg, align 2
  br label %entryLoadMoreItems.exit

bb.ak:                                            ; preds = %bb.ai
  %i.fs = load ptr, ptr %0, align 8
  %i.ft = tail call i32 @ginStepRight(i32 noundef %i.fr, ptr noundef %i.fs, i32 noundef 1) #7 ; 4 uses
  store i32 %i.ft, ptr %i.bt, align 4
  %i.fu = icmp slt i32 %i.ft, 0
  br i1 %i.fu, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fv = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.fw = xor i32 %i.ft, -1
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %i.fx
  %i.fz = load ptr, ptr %i.fy, align 8
  br label %BufferGetPage.exit71.i

bb.am:                                            ; preds = %bb.ak
  %i.ga = load ptr, ptr @BufferBlocks, align 8
  %i.gb = add nsw i32 %i.ft, -1
  %i.gc = sext i32 %i.gb to i64
  %i.gd = shl nsw i64 %i.gc, 13
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.gd
  br label %BufferGetPage.exit71.i

BufferGetPage.exit71.i:                           ; preds = %bb.am, %bb.al, %bb.ah
  %.1.i = phi ptr [ %.0.i, %bb.ah ], [ %i.fz, %bb.al ], [ %i.ge, %bb.am ] ; 9 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  %i.gg = load i16, ptr %i.gf, align 8
  %i.gh = zext i16 %i.gg to i64
  %i.gi = getelementptr inbounds nuw i8, ptr %.1.i, i64 %i.gh ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 6
  %i.gk = load i16, ptr %i.gj, align 2
  %i.gl = and i16 %i.gk, 4
  %.not59.i = icmp eq i16 %i.gl, 0
  br i1 %.not59.i, label %bb.an, label %.backedge.i.backedge

bb.an:                                            ; preds = %BufferGetPage.exit71.i
  %i.gm = load i32, ptr %i.gi, align 4
  %i.gn = icmp eq i32 %i.gm, -1
  br i1 %i.gn, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.go = getelementptr inbounds nuw i8, ptr %.1.i, i64 24
  %.val6.i75.i = load i16, ptr %i.go, align 8
  %i.gp = getelementptr i8, ptr %.1.i, i64 26
  %.val7.i76.i = load i16, ptr %i.gp, align 2
  %i.gq = zext i16 %.val6.i75.i to i64
  %i.gr = zext i16 %.val7.i76.i to i64
  %i.gs = shl nuw i64 %i.gq, 48
  %i.gt = shl nuw nsw i64 %i.gr, 32
  %i.gu = or disjoint i64 %i.gt, %i.gs
  %i.gv = getelementptr i8, ptr %.1.i, i64 28
  %.val.i77.i = load i16, ptr %i.gv, align 4
  %i.gw = zext i16 %.val.i77.i to i64
  %i.gx = or disjoint i64 %i.gu, %i.gw
  %.not85.i = icmp ult i64 %i.ix, %i.gx
  br i1 %.not85.i, label %bb.ap, label %.backedge.i.backedge

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.gy = tail call ptr @GinDataLeafPageGetItems(ptr noundef nonnull %.1.i, ptr noundef nonnull %i.bw, i48 %.sroa.0.0.insert.insert) #7 ; 2 uses
  store ptr %i.gy, ptr %i.cf, align 8
  %i.gz = load i32, ptr %i.bw, align 8            ; 2 uses
  %i.ha = icmp sgt i32 %i.gz, 0
  br i1 %i.ha, label %.lr.ph.preheader.i, label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %bb.at, %bb.ap, %bb.ao, %BufferGetPage.exit71.i
  br label %.backedge.i

.lr.ph.preheader.i:                               ; preds = %bb.ap
  %wide.trip.count.i = zext nneg i32 %i.gz to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.at, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.at ] ; 3 uses
  %i.hb = getelementptr inbounds nuw [6 x i8], ptr %i.gy, i64 %indvars.iv.i ; 3 uses
  %.val6.i81.i = load i16, ptr %i.hb, align 2
  %i.hc = getelementptr i8, ptr %i.hb, i64 2
  %.val7.i82.i = load i16, ptr %i.hc, align 2
  %i.hd = zext i16 %.val6.i81.i to i64
  %i.he = zext i16 %.val7.i82.i to i64
  %i.hf = shl nuw i64 %i.hd, 48
  %i.hg = shl nuw nsw i64 %i.he, 32
  %i.hh = or disjoint i64 %i.hg, %i.hf
  %i.hi = getelementptr i8, ptr %i.hb, i64 4
  %.val.i83.i = load i16, ptr %i.hi, align 2
  %i.hj = zext i16 %.val.i83.i to i64
  %i.hk = or disjoint i64 %i.hh, %i.hj
  %i.hl = icmp ult i64 %i.ix, %i.hk
  br i1 %i.hl, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %.lr.ph.i
  %i.hm = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  %i.hn = trunc i64 %indvars.iv.i to i16
  store i16 %i.hn, ptr %i.bv, align 4
  %i.ho = load i16, ptr %i.hm, align 8
  %i.hp = zext i16 %i.ho to i64
  %i.hq = getelementptr inbounds nuw i8, ptr %.1.i, i64 %i.hp
  %i.hr = load i32, ptr %i.hq, align 4
  %i.hs = icmp eq i32 %i.hr, -1
  %i.ht = load i32, ptr %i.bt, align 4            ; 2 uses
  br i1 %i.hs, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  tail call void @UnlockReleaseBuffer(i32 noundef %i.ht) #7
  store i32 0, ptr %i.bt, align 4
  br label %entryLoadMoreItems.exit

bb.as:                                            ; preds = %bb.aq
  tail call void @UnlockBuffer(i32 noundef %i.ht) #7
  br label %entryLoadMoreItems.exit

bb.at:                                            ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.backedge.i.backedge, label %.lr.ph.i, !llvm.loop !42

entryLoadMoreItems.exit:                          ; preds = %bb.v, %bb.aj, %bb.ar, %bb.as
  %i.hu = load i8, ptr %i.cg, align 2, !range !5, !noundef !6
  %i.hv = trunc nuw i8 %i.hu to i1
  br i1 %i.hv, label %bb.au, label %.backedge153

.backedge153:                                     ; preds = %entryLoadMoreItems.exit, %bb.av
  br label %bb.t, !llvm.loop !43

bb.au:                                            ; preds = %entryLoadMoreItems.exit
  store i16 -1, ptr %i.bx, align 8
  store i16 -1, ptr %i.by, align 2
  store i16 0, ptr %i.bz, align 4
  br label %.loopexit

bb.av:                                            ; preds = %bb.t
  %i.hw = load ptr, ptr %i.cf, align 8
  %i.hx = add i16 %i.ee, 1
  store i16 %i.hx, ptr %i.bv, align 4
  %i.hy = zext i16 %i.ee to i64
  %i.hz = getelementptr inbounds nuw [6 x i8], ptr %i.hw, i64 %i.hy
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.bx, ptr noundef nonnull align 2 dereferenceable(6) %i.hz, i64 6, i1 false)
  %.val8.i79 = load i16, ptr %i.bx, align 8
  %.val9.i80 = load i16, ptr %i.by, align 2
  %i.ia = zext i16 %.val8.i79 to i64
  %i.ib = zext i16 %.val9.i80 to i64
  %i.ic = shl nuw i64 %i.ia, 48
  %i.id = shl nuw nsw i64 %i.ib, 32
  %i.ie = or disjoint i64 %i.id, %i.ic
  %.val5.i81 = load i16, ptr %i.bz, align 4
  %i.if = zext i16 %.val5.i81 to i64
  %i.ig = or disjoint i64 %i.ie, %i.if
  %.not90 = icmp ugt i64 %i.ig, %i.jo
  br i1 %.not90, label %bb.aw, label %.backedge153

bb.aw:                                            ; preds = %bb.av
  %i.ih = load i8, ptr %i.ch, align 1, !range !5, !noundef !6
  %i.ii = trunc nuw i8 %i.ih to i1
  br i1 %i.ii, label %bb.ax, label %.loopexit

bb.ax:                                            ; preds = %bb.aw
  %i.ij = tail call double @pg_prng_double(ptr noundef nonnull @pg_global_prng_state) #7
  %i.ik = load i32, ptr @GinFuzzySearchLimit, align 4
  %i.il = sitofp i32 %i.ik to double
  %i.im = load i32, ptr %i.ci, align 8
  %i.in = uitofp i32 %i.im to double
  %i.io = fdiv double %i.il, %i.in
  %i.ip = fcmp ogt double %i.ij, %i.io
  br i1 %i.ip, label %bb.ay, label %.loopexit

bb.ay:                                            ; preds = %bb.ax
  %.sroa.0.0.copyload = load i16, ptr %i.bx, align 8
  %.sroa.7.0.copyload = load i16, ptr %i.by, align 2
  %.sroa.11.0.copyload = load i16, ptr %i.bz, align 4
  br label %.outer

.outer:                                           ; preds = %.preheader91, %bb.ay
  %.sroa.11.0.ph = phi i16 [ %.sroa.11.0.extract.trunc, %.preheader91 ], [ %.sroa.11.0.copyload, %bb.ay ] ; 5 uses
  %.sroa.7.0.ph = phi i16 [ %.sroa.7.0.extract.trunc, %.preheader91 ], [ %.sroa.7.0.copyload, %bb.ay ] ; 2 uses
  %.sroa.0.0.ph = phi i16 [ %.sroa.0.0.extract.trunc, %.preheader91 ], [ %.sroa.0.0.copyload, %bb.ay ] ; 3 uses
  %.sroa.11.0.insert.ext = zext i16 %.sroa.11.0.ph to i48
  %.sroa.11.0.insert.shift = shl nuw i48 %.sroa.11.0.insert.ext, 32
  %.sroa.7.0.insert.ext = zext i16 %.sroa.7.0.ph to i48 ; 2 uses
  %.sroa.7.0.insert.shift = shl nuw nsw i48 %.sroa.7.0.insert.ext, 16 ; 2 uses
  %.sroa.0.0.insert.ext = zext i16 %.sroa.0.0.ph to i48
  %i.iq = or disjoint i48 %.sroa.11.0.insert.shift, %.sroa.0.0.insert.ext
  %.sroa.0.0.insert.insert = or disjoint i48 %i.iq, %.sroa.7.0.insert.shift ; 2 uses
  %i.ir = zext i16 %.sroa.0.0.ph to i64
  %i.is = shl nuw i64 %i.ir, 48                   ; 2 uses
  %i.it = shl nuw i48 %.sroa.7.0.insert.ext, 32
  %i.iu = zext i48 %i.it to i64
  %i.iv = or disjoint i64 %i.is, %i.iu
  %i.iw = zext i16 %.sroa.11.0.ph to i64          ; 2 uses
  %i.ix = or disjoint i64 %i.iv, %i.iw            ; 3 uses
  %i.iy = icmp ne i16 %.sroa.11.0.ph, -1
  %i.iz = trunc i48 %.sroa.0.0.insert.insert to i32 ; 2 uses
  %i.ja = shl i32 %i.iz, 16
  %3 = trunc nuw i48 %.sroa.7.0.insert.shift to i32
  %4 = lshr exact i32 %3, 16                      ; 2 uses
  %i.jb = or disjoint i32 %4, %i.ja               ; 2 uses
  %.not.i = icmp eq i32 %i.jb, -1
  %i.jc = add nuw i32 %i.jb, 1                    ; 2 uses
  %i.jd = lshr i32 %i.jc, 16
  %i.je = trunc nuw i32 %i.jd to i16
  %i.jf = trunc i32 %i.jc to i16
  %i.jg = add i16 %.sroa.11.0.ph, 1
  %i.jh = zext i16 %.sroa.0.0.ph to i32
  %i.ji = shl nuw i32 %i.jh, 16
  %i.jj = or disjoint i32 %4, %i.ji
  %i.jk = zext i16 %.sroa.11.0.ph to i32
  %i.jl = zext i16 %.sroa.7.0.ph to i64
  %i.jm = shl nuw nsw i64 %i.jl, 32
  %i.jn = or disjoint i64 %i.is, %i.jm
  %i.jo = or disjoint i64 %i.jn, %i.iw
  %brmerge = select i1 %i.iy, i1 true, i1 %.not.i
  br label %bb.t

.loopexit:                                        ; preds = %.critedge2, %bb.o, %.loopexit94, %bb.aw, %bb.ax, %bb.r, %bb.s, %.critedge2.thread, %bb.k, %._crit_edge, %bb.au
  ret void
}

declare zeroext i1 @tbm_private_iterate(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @tbm_extract_page_tuple(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare double @pg_prng_double(ptr noundef) local_unnamed_addr #2

declare void @ReleaseBuffer(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}

!0 = distinct !{!0, !7, !8}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!5 = !{i8 0, i8 2}
!6 = !{}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{!"llvm.loop.peeled.count", i32 1}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{null}
!18 = distinct !{!18, !7}
!19 = distinct !{null, null}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{null, null}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !7}
!34 = distinct !{null, null}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, !7}
!37 = distinct !{!37, !7}
!38 = distinct !{!38, !7}
!39 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!40 = distinct !{!40, !7}
!41 = distinct !{!41, !7}
!42 = distinct !{!42, !7}
!43 = distinct !{!43, !7}
end_hunk_0
