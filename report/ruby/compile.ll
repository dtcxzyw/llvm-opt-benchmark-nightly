Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/compile?download=true
inline.NumInlined: 6690
inline.NumDeleted: 334
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 109
loop-unroll.NumUnrolled: 112
begin_hunk_0_@pm_parse_errors_format:bb.a
  %i.gq = icmp eq i64 %.0220291, %i.gp
  br i1 %i.gq, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.gr = load i64, ptr %i.bt, align 8, !tbaa !765 ; 2 uses
  %i.gs = trunc i64 %i.gr to i32
  %i.gt = load i32, ptr %i.a, align 8, !tbaa !540
  %i.gu = add i32 %i.gt, %i.gs
  %i.gv = load ptr, ptr %i.bv, align 8, !tbaa !762
  %i.gw = load ptr, ptr %i.bu, align 8, !tbaa !764
  %i.gx = getelementptr [8 x i8], ptr %i.gw, i64 %i.gr
  %i.gy = getelementptr i8, ptr %i.gx, i64 -8
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !36
  %i.ha = getelementptr i8, ptr %i.gv, i64 %i.gz
  %i.hb = load ptr, ptr %i.bw, align 8, !tbaa !763
  %i.hc = icmp eq ptr %i.ha, %i.hb
  %i.hd = sext i1 %i.hc to i32
  %spec.select248 = add i32 %i.gu, %i.hd
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  %i.he = getelementptr i8, ptr %i.bz, i64 32
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !1568
  br label %bb.be

bb.be:                                            ; preds = %bb.bc, %bb.bd
  %.0 = phi i32 [ %i.hf, %bb.bd ], [ %spec.select248, %bb.bc ] ; 2 uses
  %i.hg = sub i32 %.0, %i.gn
  %i.hh = icmp sgt i32 %i.hg, 1
  br i1 %i.hh, label %bb.bf, label %pm_parse_errors_format_line.exit269

bb.bf:                                            ; preds = %bb.be
  tail call void @pm_buffer_append_string(ptr noundef nonnull %2, ptr noundef nonnull @.str.336, i64 noundef 2) #37
  %i.hi = add i32 %i.gn, 1                        ; 5 uses
  %.val250 = load i64, ptr %i.bt, align 8, !tbaa !765
  %.val251 = load ptr, ptr %i.bu, align 8, !tbaa !764
  %i.hj = load i32, ptr %i.a, align 8, !tbaa !540
  %i.hk = sub i32 %i.hi, %i.hj
  %i.hl = sext i32 %i.hk to i64                   ; 2 uses
  %i.hm = load ptr, ptr %i.bv, align 8, !tbaa !762 ; 2 uses
  %i.hn = getelementptr [8 x i8], ptr %.val251, i64 %i.hl ; 2 uses
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !36
  %i.hp = getelementptr i8, ptr %i.hm, i64 %i.ho  ; 2 uses
  %i.hq = add i64 %.val250, -1
  %.not.i265 = icmp ugt i64 %i.hq, %i.hl
  br i1 %.not.i265, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hr = load ptr, ptr %i.bw, align 8, !tbaa !763
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  %i.hs = getelementptr i8, ptr %i.hn, i64 8
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !36
  %i.hu = getelementptr i8, ptr %i.hm, i64 %i.ht
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.054.i266 = phi ptr [ %i.hr, %bb.bg ], [ %i.hu, %bb.bh ] ; 3 uses
  tail call void (ptr, ptr, ...) @pm_buffer_append_format(ptr noundef nonnull %2, ptr noundef nonnull %.sroa.0129.0, i32 noundef %i.hi) #37
  %i.hv = ptrtoint ptr %.054.i266 to i64
  %i.hw = ptrtoint ptr %i.hp to i64
  %i.hx = sub i64 %i.hv, %i.hw
  tail call void @pm_buffer_append_string(ptr noundef nonnull %2, ptr noundef %i.hp, i64 noundef %i.hx) #37
  %i.hy = load ptr, ptr %i.bw, align 8, !tbaa !763
  %i.hz = icmp eq ptr %.054.i266, %i.hy
  br i1 %i.hz, label %bb.bj, label %pm_parse_errors_format_line.exit269

bb.bj:                                            ; preds = %bb.bi
  %i.ia = getelementptr i8, ptr %.054.i266, i64 -1
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !20
  %.not63.i268 = icmp eq i8 %i.ib, 10
  br i1 %.not63.i268, label %pm_parse_errors_format_line.exit269, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  tail call void @pm_buffer_append_string(ptr noundef nonnull %2, ptr noundef nonnull @.str.346, i64 noundef 1) #37
  br label %pm_parse_errors_format_line.exit269

pm_parse_errors_format_line.exit269:              ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.be
  %.1224 = phi i32 [ %i.gn, %bb.be ], [ %i.hi, %bb.bi ], [ %i.hi, %bb.bj ], [ %i.hi, %bb.bk ] ; 3 uses
  %i.ic = sub i32 %.0, %.1224
  %i.id = icmp sgt i32 %i.ic, 1
  br i1 %i.id, label %bb.bl, label %pm_parse_errors_format_line.exit274

bb.bl:                                            ; preds = %pm_parse_errors_format_line.exit269
  tail call void @pm_buffer_append_string(ptr noundef nonnull %2, ptr noundef nonnull @.str.336, i64 noundef 2) #37
  %i.ie = add i32 %.1224, 1                       ; 5 uses
  %.val = load i64, ptr %i.bt, align 8, !tbaa !765
  %.val249 = load ptr, ptr %i.bu, align 8, !tbaa !764
  %i.if = load i32, ptr %i.a, align 8, !tbaa !540
  %i.ig = sub i32 %i.ie, %i.if
  %i.ih = sext i32 %i.ig to i64                   ; 2 uses
  %i.ii = load ptr, ptr %i.bv, align 8, !tbaa !762 ; 2 uses
  %i.ij = getelementptr [8 x i8], ptr %.val249, i64 %i.ih ; 2 uses
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !36
  %i.il = getelementptr i8, ptr %i.ii, i64 %i.ik  ; 2 uses
  %i.im = add i64 %.val, -1
  %.not.i270 = icmp ugt i64 %i.im, %i.ih
  br i1 %.not.i270, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.in = load ptr, ptr %i.bw, align 8, !tbaa !763
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  %i.io = getelementptr i8, ptr %i.ij, i64 8
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !36
  %i.iq = getelementptr i8, ptr %i.ii, i64 %i.ip
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.054.i271 = phi ptr [ %i.in, %bb.bm ], [ %i.iq, %bb.bn ] ; 3 uses
  tail call void (ptr, ptr, ...) @pm_buffer_append_format(ptr noundef nonnull %2, ptr noundef nonnull %.sroa.0129.0, i32 noundef %i.ie) #37
  %i.ir = ptrtoint ptr %.054.i271 to i64
  %i.is = ptrtoint ptr %i.il to i64
  %i.it = sub i64 %i.ir, %i.is
  tail call void @pm_buffer_append_string(ptr noundef nonnull %2, ptr noundef %i.il, i64 noundef %i.it) #37
  %i.iu = load ptr, ptr %i.bw, align 8, !tbaa !763
  %i.iv = icmp eq ptr %.054.i271, %i.iu
  br i1 %i.iv, label %bb.bp, label %pm_parse_errors_format_line.exit274

bb.bp:                                            ; preds = %bb.bo
  %i.iw = getelementptr i8, ptr %.054.i271, i64 -1
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !20
  %.not63.i273 = icmp eq i8 %i.ix, 10
  br i1 %.not63.i273, label %pm_parse_errors_format_line.exit274, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  tail call void @pm_buffer_append_string(ptr noundef nonnull %2, ptr noundef nonnull @.str.346, i64 noundef 1) #37
  br label %pm_parse_errors_format_line.exit274

pm_parse_errors_format_line.exit274:              ; preds = %bb.bq, %bb.bp, %bb.bo, %pm_parse_errors_format_line.exit269
  %.2225 = phi i32 [ %.1224, %pm_parse_errors_format_line.exit269 ], [ %i.ie, %bb.bo ], [ %i.ie, %bb.bp ], [ %i.ie, %bb.bq ]
  %i.iy = add nuw i64 %.0220291, 1                ; 2 uses
  %i.iz = load i64, ptr %1, align 8, !tbaa !786
  %i.ja = icmp ult i64 %i.iy, %i.iz
  br i1 %i.ja, label %bb.s, label %._crit_edge294, !llvm.loop !1577
}

declare i64 @rb_exc_new(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @pm_buffer_free(ptr noundef) local_unnamed_addr #4

declare i64 @rb_enc_str_new_cstr(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @rb_locale_encoding() local_unnamed_addr #4

declare i64 @pm_encoding_utf_8_char_width(ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @pm_buffer_append_string(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @pm_parse_errors_format_line(ptr nofree noundef readonly captures(none) %0, i64 %.8.val, ptr nofree readonly captures(none) %.24.val, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %5) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 664
  %i.b = load i32, ptr %i.a, align 8, !tbaa !540
  %i.c = sub i32 %2, %i.b
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 304
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !762  ; 2 uses
  %i.g = getelementptr [8 x i8], ptr %.24.val, i64 %i.d ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !36
  %i.i = getelementptr i8, ptr %i.f, i64 %i.h     ; 4 uses
  %i.j = add i64 %.8.val, -1
  %.not = icmp ugt i64 %i.j, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %0, i64 312
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !763
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %i.g, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !36
  %i.o = getelementptr i8, ptr %i.f, i64 %i.n
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.054 = phi ptr [ %i.l, %bb.b ], [ %i.o, %bb.c ] ; 3 uses
  tail call void (ptr, ptr, ...) @pm_buffer_append_format(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %2) #37
  %.not62 = icmp eq i32 %4, 0
  br i1 %.not62, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = zext i32 %4 to i64
  %i.q = getelementptr i8, ptr %i.i, i64 %i.p     ; 2 uses
  %i.r = ptrtoint ptr %.054 to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = icmp sgt i64 %i.t, 29
  br i1 %i.u, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr i8, ptr %i.q, i64 30
  %i.w = getelementptr i8, ptr %0, i64 520
  %i.x = getelementptr i8, ptr %0, i64 312
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.051 = phi ptr [ %i.v, %bb.f ], [ %.152, %bb.h ] ; 5 uses
  %.050 = phi ptr [ %i.i, %bb.f ], [ %.1, %bb.h ] ; 6 uses
  %i.y = icmp ult ptr %.050, %.051
  br i1 %i.y, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !769
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1574
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !763
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %.050 to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = tail call i64 %i.aa(ptr noundef %.050, i64 noundef %i.ae) #37 ; 2 uses
  %i.ag = icmp ne i64 %i.af, 0
  %i.ah = getelementptr i8, ptr %.050, i64 %i.af  ; 3 uses
  %i.ai = icmp ule ptr %i.ah, %.051               ; 2 uses
  %.152 = select i1 %i.ai, ptr %.051, ptr %.050   ; 2 uses
  %6 = icmp ugt ptr %i.ah, %.051
  %.1 = select i1 %6, ptr %.050, ptr %i.ah
  %cond = and i1 %i.ag, %i.ai
  br i1 %cond, label %bb.g, label %.loopexit, !llvm.loop !1578

.loopexit:                                        ; preds = %bb.h, %bb.g, %bb.e, %bb.d
  %.155 = phi ptr [ %.054, %bb.d ], [ %.054, %bb.e ], [ %.051, %bb.g ], [ %.152, %bb.h ] ; 3 uses
  %.053 = phi i1 [ false, %bb.d ], [ false, %bb.e ], [ true, %bb.g ], [ true, %bb.h ]
  %i.aj = icmp ugt i32 %3, 29
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.loopexit
  tail call void @pm_buffer_append_string(ptr noundef nonnull %5, ptr noundef nonnull @.str.344, i64 noundef 4) #37
  %i.ak = zext i32 %3 to i64
  %i.al = getelementptr i8, ptr %i.i, i64 %i.ak
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.loopexit
  %.056 = phi ptr [ %i.al, %bb.i ], [ %i.i, %.loopexit ] ; 2 uses
  %i.am = ptrtoint ptr %.155 to i64
  %i.an = ptrtoint ptr %.056 to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @pm_buffer_append_string(ptr noundef nonnull %5, ptr noundef %.056, i64 noundef %i.ao) #37
  br i1 %.053, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @pm_buffer_append_string(ptr noundef nonnull %5, ptr noundef nonnull @.str.345, i64 noundef 5) #37
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.ap = getelementptr i8, ptr %0, i64 312
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !763
  %i.ar = icmp eq ptr %.155, %i.aq
  br i1 %i.ar, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr i8, ptr %.155, i64 -1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !20
  %.not63 = icmp eq i8 %i.at, 10
  br i1 %.not63, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @pm_buffer_append_string(ptr noundef nonnull %5, ptr noundef nonnull @.str.346, i64 noundef 1) #37
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n, %bb.k
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @rb_enc_dummy_p(ptr noundef) local_unnamed_addr #26

declare i64 @rb_io_gets_limit_internal(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #32

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #32

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint nounwind sspstrong memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn }
attributes #16 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { allocsize(1,2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree nounwind sspstrong willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { noreturn nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #33 = { nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { inlinehint nofree nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nounwind }
attributes #38 = { cold noreturn nounwind }
attributes #39 = { nounwind allocsize(0,1) }
attributes #40 = { nounwind allocsize(1,2) }
attributes #41 = { noreturn nounwind }
attributes #42 = { nounwind allocsize(0) }
attributes #43 = { "function-inline-cost-multiplier"="2" }
attributes #44 = { nounwind willreturn memory(read) }
attributes #45 = { nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #46 = { cold nounwind }
attributes #47 = { nounwind willreturn memory(none) }
attributes #48 = { nounwind allocsize(1) }
attributes #49 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !14, i64 24}
!12 = !{!"iseq_link_anchor", !13, i64 0, !14, i64 24}
!13 = !{!"iseq_link_element", !8, i64 0, !14, i64 8, !14, i64 16}
!14 = !{!"p1 _ZTS17iseq_link_element", !15, i64 0}
!15 = !{!"any pointer", !9, i64 0}
!16 = !{!17, !15, i64 16}
!17 = !{!"rb_iseq_new_with_callback_callback_func", !18, i64 0, !18, i64 8, !15, i64 16, !15, i64 24}
!18 = !{!"long", !9, i64 0}
!19 = !{!17, !15, i64 24}
!20 = !{!9, !9, i64 0}
!21 = !{!22, !8, i64 128}
!22 = !{!"iseq_compile_data", !18, i64 0, !18, i64 8, !8, i64 16, !23, i64 24, !24, i64 32, !9, i64 40, !25, i64 48, !25, i64 56, !25, i64 64, !26, i64 72, !27, i64 80, !28, i64 88, !28, i64 104, !24, i64 120, !24, i64 121, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !30, i64 152, !31, i64 160, !32, i64 168, !33, i64 176, !24, i64 184}
!23 = !{!"p1 long", !15, i64 0}
!24 = !{!"_Bool", !9, i64 0}
!25 = !{!"p1 _ZTS15iseq_label_data", !15, i64 0}
!26 = !{!"p1 _ZTS14rb_iseq_struct", !15, i64 0}
!27 = !{!"p1 _ZTS35iseq_compile_data_ensure_node_stack", !15, i64 0}
!28 = !{!"", !29, i64 0, !29, i64 8}
!29 = !{!"p1 _ZTS25iseq_compile_data_storage", !15, i64 0}
!30 = !{!"p1 _ZTS24rb_compile_option_struct", !15, i64 0}
!31 = !{!"p1 _ZTS11rb_id_table", !15, i64 0}
!32 = !{!"p1 _ZTS19rb_builtin_function", !15, i64 0}
!33 = !{!"p1 _ZTS5RNode", !15, i64 0}
!34 = !{!13, !14, i64 16}
!35 = !{!13, !14, i64 8}
!36 = !{!18, !18, i64 0}
!37 = !{!29, !29, i64 0}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = distinct !{!40, !39}
!41 = !{!22, !18, i64 0}
!42 = !{!22, !30, i64 152}
!43 = !{!44, !45, i64 16}
!44 = !{!"rb_iseq_struct", !18, i64 0, !18, i64 8, !45, i64 16, !9, i64 24}
!45 = !{!"p1 _ZTS21rb_iseq_constant_body", !15, i64 0}
!46 = !{!47, !8, i64 0}
!47 = !{!"rb_iseq_constant_body", !8, i64 0, !8, i64 4, !23, i64 8, !48, i64 16, !51, i64 64, !54, i64 112, !23, i64 144, !15, i64 152, !58, i64 160, !26, i64 168, !26, i64 176, !59, i64 184, !60, i64 192, !61, i64 200, !8, i64 240, !8, i64 244, !8, i64 248, !8, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !24, i64 272, !9, i64 280, !31, i64 288, !26, i64 296, !15, i64 304, !18, i64 312, !15, i64 320, !18, i64 328, !15, i64 336, !18, i64 344, !15, i64 352}
!48 = !{!"rb_iseq_parameters", !49, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !23, i64 32, !50, i64 40}
!49 = !{!"", !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1}
!50 = !{!"p1 _ZTS21rb_iseq_param_keyword", !15, i64 0}
!51 = !{!"rb_iseq_location_struct", !18, i64 0, !18, i64 8, !18, i64 16, !8, i64 24, !8, i64 28, !52, i64 32}
!52 = !{!"rb_code_location_struct", !53, i64 0, !53, i64 8}
!53 = !{!"rb_code_position_struct", !8, i64 0, !8, i64 4}
!54 = !{!"iseq_insn_info", !55, i64 0, !56, i64 8, !8, i64 16, !57, i64 24}
!55 = !{!"p1 _ZTS20iseq_insn_info_entry", !15, i64 0}
!56 = !{!"p1 int", !15, i64 0}
!57 = !{!"p1 _ZTS16succ_index_table", !15, i64 0}
!58 = !{!"p1 _ZTS16iseq_catch_table", !15, i64 0}
!59 = !{!"p1 _ZTS25iseq_inline_storage_entry", !15, i64 0}
!60 = !{!"p1 _ZTS12rb_call_data", !15, i64 0}
!61 = !{!"", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !23, i64 32}
!62 = !{!12, !14, i64 8}
!63 = !{!13, !8, i64 0}
!64 = !{!65, !8, i64 24}
!65 = !{!"iseq_insn_data", !13, i64 0, !8, i64 24, !8, i64 28, !8, i64 32, !23, i64 40, !66, i64 48}
!66 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8}
!67 = !{!65, !14, i64 8}
!68 = !{!65, !23, i64 40}
!69 = !{!70, !18, i64 24}
!70 = !{!"rb_callinfo", !18, i64 0, !71, i64 8, !18, i64 16, !18, i64 24, !18, i64 32}
!71 = !{!"p1 _ZTS17rb_callinfo_kwarg", !15, i64 0}
!72 = !{!70, !18, i64 32}
!73 = !{!70, !18, i64 16}
!74 = !{!75, !18, i64 0}
end_hunk_0
