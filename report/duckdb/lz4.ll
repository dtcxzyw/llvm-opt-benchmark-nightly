Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/lz4?download=true
inline.NumInlined: 117
inline.NumDeleted: 34
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN10duckdb_lz414LZ4_uncompressEPKcPci:bb.a
.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.0150.i.i.prol = phi i64 [ %i.bg, %.lr.ph.i.i.prol ], [ %.0150.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.0150.i.i.prol
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !9
  %i.bf = getelementptr inbounds nuw i8, ptr %i.u, i64 %.0150.i.i.prol
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !9
  %i.bg = add nuw i64 %.0150.i.i.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !95

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.0150.i.i.unr = phi i64 [ %.0150.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bg, %.lr.ph.i.i.prol ]
  %i.bh = icmp ult i64 %i.bc, 3
  br i1 %i.bh, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.0150.i.i = phi i64 [ %i.bx, %.lr.ph.i.i ], [ %.0150.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.0150.i.i
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !9
  %i.bk = getelementptr inbounds nuw i8, ptr %i.u, i64 %.0150.i.i
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !9
  %i.bl = add nuw i64 %.0150.i.i, 1               ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !9
  %i.bo = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bl
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !9
  %i.bp = add nuw i64 %.0150.i.i, 2               ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !9
  %i.bs = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bp
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !9
  %i.bt = add nuw i64 %.0150.i.i, 3               ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !9
  %i.bw = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bt
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !9
  %i.bx = add nuw i64 %.0150.i.i, 4
  %exitcond.not.i.i.3 = icmp eq i64 %.0150.i.i, %.080.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !96

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %bb.g
  %i.by = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.am ; 2 uses
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = sub i64 %i.c, %i.bz
  %i.cb = icmp ult i64 %i.ca, 5
  br i1 %i.cb, label %_ZN10duckdb_lz419LZ4_decompress_fastEPKcPci.exit, label %.thread.i.i

bb.h:                                             ; preds = %bb.d
  %i.cc = ptrtoint ptr %i.v to i64
  %i.cd = ptrtoint ptr %0 to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = trunc i64 %i.ce to i32
  br label %_ZN10duckdb_lz419LZ4_decompress_fastEPKcPci.exit

_ZN10duckdb_lz419LZ4_decompress_fastEPKcPci.exit: ; preds = %bb.b, %bb.f, %._crit_edge.i.i, %bb.d, %bb.h
  %.595.i.i = phi i32 [ -1, %bb.d ], [ %i.cf, %bb.h ], [ -1, %._crit_edge.i.i ], [ -1, %bb.f ], [ -1, %bb.b ]
  ret i32 %.595.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN10duckdb_lz432LZ4_uncompress_unknownOutputSizeEPKcPcii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZN10duckdb_lz4L22LZ4_decompress_genericEPKcPciiNS_18earlyEnd_directiveENS_14dict_directiveEPKhS6_m(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 0, i32 noundef 0, ptr noundef %1, ptr noundef null, i64 noundef 0)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_ZN10duckdb_lz421LZ4_sizeofStreamStateEv() local_unnamed_addr #0 {
bb.a:
  ret i32 16416
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef i32 @_ZN10duckdb_lz420LZ4_resetStreamStateEPvPc(ptr nofree noundef writeonly captures(none) initializes((0, 16416)) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #3 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16416) %0, i8 0, i64 16416, i1 false)
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef ptr @_ZN10duckdb_lz410LZ4_createEPc(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16416) ptr @malloc(i64 noundef 16416) #18 ; 4 uses
  %i.b = icmp ne ptr %i.a, null
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = and i64 %i.c, 7
  %.not.i.i = icmp eq i64 %i.d, 0
  %or.cond.i = and i1 %i.b, %.not.i.i
  br i1 %or.cond.i, label %bb.b, label %_ZN10duckdb_lz416LZ4_createStreamEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16416) %i.a, i8 0, i64 16416, i1 false)
  br label %_ZN10duckdb_lz416LZ4_createStreamEv.exit

_ZN10duckdb_lz416LZ4_createStreamEv.exit:         ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZN10duckdb_lz420LZ4_slideInputBufferEPv(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16384
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN10duckdb_lz4L23LZ4_memcpy_using_offsetEPhPKhS0_m(ptr nofree noundef writeonly captures(address) initializes((0, 8)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(address) %2, i64 noundef range(i64 0, 16) %3) unnamed_addr #10 {
bb.a:
  switch i64 %3, label %bb.e [
    i64 1, label %bb.b
    i64 2, label %bb.c
    i64 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !tbaa !9
  %i.b = zext i8 %i.a to i32
  %.sroa.0.0.isplat = mul nuw i32 %i.b, 16843009
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.copyload9 = load i16, ptr %1, align 1
  %.sroa.0.0.insert.ext = zext i16 %.sroa.0.0.copyload9 to i32 ; 2 uses
  %.sroa.0.2.insert.shift = shl nuw i32 %.sroa.0.0.insert.ext, 16
  %.sroa.0.2.insert.insert = or disjoint i32 %.sroa.0.2.insert.shift, %.sroa.0.0.insert.ext
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  %.sroa.0.0.copyload2 = load i32, ptr %1, align 1
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i64 %3, 8
  br i1 %i.c, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %0, align 1, !tbaa !9
  %i.d = load i8, ptr %1, align 1, !tbaa !9
  store i8 %i.d, ptr %0, align 1, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.f, ptr %i.g, align 1, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.i = load i8, ptr %i.h, align 1, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.i, ptr %i.j, align 1, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.l = load i8, ptr %i.k, align 1, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.l, ptr %i.m, align 1, !tbaa !9
  %i.n = getelementptr inbounds nuw [4 x i8], ptr @_ZN10duckdb_lz4L10inc32tableE, i64 %3
  %i.o = load i32, ptr %i.n, align 4, !tbaa !8
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.s = load i32, ptr %i.q, align 1
  store i32 %i.s, ptr %i.r, align 1
  %i.t = getelementptr inbounds nuw [4 x i8], ptr @_ZN10duckdb_lz4L10dec64tableE, i64 %3
  %i.u = load i32, ptr %i.t, align 4, !tbaa !8
  %i.v = sext i32 %i.u to i64
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr inbounds i8, ptr %i.q, i64 %i.w
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.y = load i64, ptr %1, align 1
  store i64 %i.y, ptr %0, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.023.i = phi ptr [ %i.x, %bb.f ], [ %i.z, %bb.g ]
  %.0.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.09.i.i = phi ptr [ %.0.i, %bb.h ], [ %i.ab, %bb.i ] ; 2 uses
  %.0.i.i = phi ptr [ %.023.i, %bb.h ], [ %i.ac, %bb.i ] ; 2 uses
  %i.aa = load i64, ptr %.0.i.i, align 1
  store i64 %i.aa, ptr %.09.i.i, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.ad = icmp ult ptr %i.ab, %2
  br i1 %i.ad, label %bb.i, label %_ZN10duckdb_lz4L28LZ4_memcpy_using_offset_baseEPhPKhS0_m.exit, !llvm.loop !0

bb.j:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.9.0 = phi i32 [ %.sroa.0.0.isplat, %bb.b ], [ %.sroa.0.2.insert.insert, %bb.c ], [ %.sroa.0.0.copyload2, %bb.d ] ; 5 uses
  store i32 %.sroa.9.0, ptr %0, align 1
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 1
  %.025 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.ae = icmp ult ptr %.025, %2
  br i1 %i.ae, label %.lr.ph.preheader, label %_ZN10duckdb_lz4L28LZ4_memcpy_using_offset_baseEPhPKhS0_m.exit

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.af = ptrtoaddr ptr %2 to i64
  %i.ag = ptrtoaddr ptr %0 to i64
  %i.ah = add i64 %i.af, -9
  %i.ai = sub i64 %i.ah, %i.ag                    ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ai, 24
  br i1 %min.iters.check, label %.lr.ph.preheader36, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ak, 4611686018427387900     ; 3 uses
  %i.al = shl i64 %n.vec, 3                       ; 2 uses
  %i.am = getelementptr i8, ptr %.025, i64 %i.al
  %i.an = getelementptr i8, ptr %0, i64 %i.al
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.sroa.9.0, i64 0
  %i.ao = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.025, i64 %i.ap
  %i.aq = getelementptr i8, ptr %.025, i64 %i.ap
  %next.gep33 = getelementptr i8, ptr %i.aq, i64 16
  store <4 x i32> %i.ao, ptr %next.gep, align 1
  store <4 x i32> %i.ao, ptr %next.gep33, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !97

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %_ZN10duckdb_lz4L28LZ4_memcpy_using_offset_baseEPhPKhS0_m.exit, label %.lr.ph.preheader36

.lr.ph.preheader36:                               ; preds = %.lr.ph.preheader, %middle.block
  %.027.ph = phi ptr [ %.025, %.lr.ph.preheader ], [ %i.am, %middle.block ]
  %.pn26.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader36, %.lr.ph
  %.027 = phi ptr [ %.0, %.lr.ph ], [ %.027.ph, %.lr.ph.preheader36 ] ; 3 uses
  %.pn26 = phi ptr [ %.027, %.lr.ph ], [ %.pn26.ph, %.lr.ph.preheader36 ]
  store i32 %.sroa.9.0, ptr %.027, align 1
  %.sroa.9.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %.pn26, i64 12
  store i32 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx3, align 1
  %.0 = getelementptr inbounds nuw i8, ptr %.027, i64 8 ; 2 uses
  %i.as = icmp ult ptr %.0, %2
  br i1 %i.as, label %.lr.ph, label %_ZN10duckdb_lz4L28LZ4_memcpy_using_offset_baseEPhPKhS0_m.exit, !llvm.loop !98

_ZN10duckdb_lz4L28LZ4_memcpy_using_offset_baseEPhPKhS0_m.exit: ; preds = %.lr.ph, %bb.i, %middle.block, %bb.j
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.usub.sat.v4i32(<4 x i32>, <4 x i32>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !20}
!1 = distinct !{!1, !20}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!7, !7, i64 0}
!9 = !{!6, !6, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!"p1 _ZTSN10duckdb_lz421LZ4_stream_t_internalE", !10, i64 0}
!13 = !{!"_ZTSN10duckdb_lz421LZ4_stream_t_internalE", !6, i64 0, !11, i64 16384, !12, i64 16392, !7, i64 16400, !7, i64 16404, !7, i64 16408}
!14 = !{!13, !7, i64 16400}
!15 = !{!13, !12, i64 16392}
!16 = !{!13, !11, i64 16384}
!17 = !{!13, !7, i64 16408}
!18 = !{!13, !7, i64 16404}
!19 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!22 = !{!"branch_weights", i32 127, i32 1}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = !{!"llvm.loop.unroll.runtime.disable"}
!25 = !{!"branch_weights", i32 4, i32 28}
!26 = !{!"llvm.loop.unroll.disable"}
!27 = !{!"long", !6, i64 0}
!28 = !{!"_ZTSN10duckdb_lz427LZ4_streamDecode_t_internalE", !11, i64 0, !11, i64 8, !27, i64 16, !27, i64 24}
!29 = !{!28, !27, i64 24}
!30 = !{!28, !11, i64 8}
!31 = !{!28, !11, i64 0}
!32 = !{!28, !27, i64 16}
!33 = distinct !{!33, !20}
!34 = distinct !{!34, !20}
!35 = distinct !{!35, !20}
!36 = !{!"short", !6, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!"branch_weights", i32 255873, i32 127}
!39 = distinct !{!39, !20}
!40 = distinct !{!40, !20, !23, !24}
!41 = distinct !{!41, !20, !23, !24}
!42 = !{!11, !11, i64 0}
!43 = distinct !{!43, !20}
!44 = distinct !{!44, !20}
!45 = distinct !{!45, !20}
!46 = distinct !{!46, !20, !23, !24}
!47 = distinct !{!47, !20, !23, !24}
!48 = distinct !{!48, !20, !23}
!49 = distinct !{!49, !20}
!50 = distinct !{!50, !20, !23, !24}
!51 = distinct !{!51, !20, !23, !24}
!52 = distinct !{!52, !20, !23}
!53 = distinct !{!53, !20, !23, !24}
!54 = distinct !{!54, !20, !23, !24}
!55 = distinct !{!55, !20, !23}
!56 = distinct !{!56, !20, !23, !24}
!57 = distinct !{!57, !20, !23, !24}
!58 = distinct !{!58, !20, !23}
!59 = !{!"branch_weights", i32 4001, i32 1}
!60 = !{!"branch_weights", i32 127, i32 255873}
!61 = !{!"branch_weights", i32 4001, i32 4000000}
!62 = !{!"branch_weights", i32 1, i32 4001}
!63 = !{!"branch_weights", i32 6002, i32 8002000}
!64 = !{!"branch_weights", i32 8, i32 24}
!65 = distinct !{!65, !20, !23, !24}
!66 = distinct !{!66, !20, !23, !24}
!67 = distinct !{!67, !26}
!68 = distinct !{!68, !20, !23}
!69 = distinct !{!69, !20, !23, !24}
!70 = distinct !{!70, !20, !23, !24}
!71 = distinct !{!71, !26}
!72 = distinct !{!72, !20, !23}
!73 = distinct !{!73, !20, !23, !24}
!74 = distinct !{!74, !20, !23, !24}
!75 = distinct !{!75, !26}
!76 = distinct !{!76, !20, !23}
!77 = distinct !{!77, !20, !23, !24}
!78 = distinct !{!78, !20, !23, !24}
!79 = distinct !{!79, !26}
!80 = distinct !{!80, !20, !23}
!81 = distinct !{!81, !20, !23, !24}
!82 = distinct !{!82, !20, !23, !24}
!83 = distinct !{!83, !26}
!84 = distinct !{!84, !20, !23}
!85 = distinct !{!85, !20, !23, !24}
!86 = distinct !{!86, !20, !23, !24}
!87 = distinct !{!87, !26}
!88 = distinct !{!88, !20, !23}
!89 = distinct !{!89, !20, !23, !24}
!90 = distinct !{!90, !20, !23, !24}
!91 = distinct !{!91, !26}
!92 = distinct !{!92, !20, !23}
!93 = distinct !{!93, !20, !23, !24}
!94 = distinct !{!94, !20, !23, !24}
!95 = distinct !{!95, !26}
!96 = distinct !{!96, !20, !23}
!97 = distinct !{!97, !20, !23, !24}
!98 = distinct !{!98, !20, !24, !23}
end_hunk_0
