inline.NumInlined: 29
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@karatsuba_multiply:bb.a
  %i.ef = icmp ult i64 %.04350.i203, %.040.i199
  br i1 %i.ef, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.eg = getelementptr [4 x i8], ptr %.041.i198, i64 %.04350.i203
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !7
  %i.ei = zext i32 %i.eh to i64
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ej = phi i64 [ %i.ei, %bb.aa ], [ 0, %bb.z ]
  %i.ek = add nuw nsw i64 %i.ee, %i.ej            ; 3 uses
  %i.el = urem i64 %i.ek, %3
  %i.em = trunc nuw i64 %i.el to i32
  %i.en = getelementptr [4 x i8], ptr %i.dx, i64 %.04350.i203
  store i32 %i.em, ptr %i.en, align 4, !tbaa !7
  %i.eo = udiv i64 %i.ek, %3                      ; 2 uses
  %i.ep = add nuw i64 %.04350.i203, 1             ; 2 uses
  %exitcond.not.i205 = icmp eq i64 %i.ep, %i.du
  br i1 %exitcond.not.i205, label %._crit_edge.i206, label %.lr.ph.i202, !llvm.loop !44

bb.ac:                                            ; preds = %._crit_edge.i206
  %i.eq = trunc nuw nsw i64 %i.eo to i32
  %i.er = getelementptr [4 x i8], ptr %i.dx, i64 %i.du
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !7
  br label %._crit_edge.thread.i208

._crit_edge.thread.i208:                          ; preds = %bb.ac, %._crit_edge.i206, %.preheader.i200
  %.042.i209 = phi i64 [ %i.dv, %bb.ac ], [ %i.du, %._crit_edge.i206 ], [ 0, %.preheader.i200 ]
  store i64 %.042.i209, ptr %14, align 8, !tbaa !26
  %.sroa.2.0..sroa_idx.i210 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.dx, ptr %.sroa.2.0..sroa_idx.i210, align 8, !tbaa !27
  %.sroa.3.0..sroa_idx.i211 = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 0, ptr %.sroa.3.0..sroa_idx.i211, align 8
  br label %big_add.exit212

big_add.exit212:                                  ; preds = %big_add.exit, %._crit_edge.thread.i208
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  call fastcc void @karatsuba_multiply(ptr noundef %15, ptr noundef %13, ptr noundef nonnull %14, i64 noundef %3)
  %i.es = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !22 ; 3 uses
  %i.eu = icmp eq ptr %i.et, null                 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ew = load i64, ptr %15, align 8              ; 2 uses
  %.045.i = select i1 %i.eu, ptr %i.ev, ptr %i.et
  %.0.i213 = select i1 %i.eu, i64 1, i64 %i.ew    ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !22 ; 4 uses
  %i.ez = icmp eq ptr %i.ey, null                 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.fb = load i64, ptr %11, align 8              ; 2 uses
  %.047.i = select i1 %i.ez, ptr %i.fa, ptr %i.ey
  %.046.i = select i1 %i.ez, i64 1, i64 %i.fb
  %i.fc = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !22 ; 4 uses
  %i.fe = icmp eq ptr %i.fd, null                 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.fg = load i64, ptr %12, align 8              ; 2 uses
  %.052.i = select i1 %i.fe, ptr %i.ff, ptr %i.fd
  %.051.i = select i1 %i.fe, i64 1, i64 %i.fg
  %i.fh = shl i64 %.0.i213, 2
  %i.fi = call noalias ptr @malloc(i64 noundef %i.fh) #14 ; 5 uses
  %.not.i214 = icmp eq i64 %.0.i213, 0
  br i1 %.not.i214, label %big_sub2.exit, label %.lr.ph.i215

.lr.ph.i215:                                      ; preds = %big_add.exit212
  %i.fj = shl nuw nsw i64 %3, 1
  br label %bb.ad

.preheader.i217:                                  ; preds = %bb.aj
  %.not72.i = icmp eq i64 %.0.i213, 1
  br i1 %.not72.i, label %big_sub2.exit, label %.lr.ph63.i

bb.ad:                                            ; preds = %bb.aj, %.lr.ph.i215
  %.04861.i = phi i64 [ 0, %.lr.ph.i215 ], [ %i.gf, %bb.aj ] ; 7 uses
  %.04960.i = phi i64 [ 0, %.lr.ph.i215 ], [ %.150.i, %bb.aj ]
  %i.fk = getelementptr [4 x i8], ptr %.045.i, i64 %.04861.i
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !7
  %i.fm = zext i32 %i.fl to i64
  %i.fn = icmp ult i64 %.04861.i, %.046.i
  br i1 %i.fn, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fo = getelementptr [4 x i8], ptr %.047.i, i64 %.04861.i
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !7
  %i.fq = zext i32 %i.fp to i64
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.fr = phi i64 [ %i.fq, %bb.ae ], [ 0, %bb.ad ]
  %i.fs = icmp ult i64 %.04861.i, %.051.i
  br i1 %i.fs, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ft = getelementptr [4 x i8], ptr %.052.i, i64 %.04861.i
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !7
  %i.fv = zext i32 %i.fu to i64
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.fw = phi i64 [ %i.fv, %bb.ag ], [ 0, %bb.af ]
  %.neg238 = add nsw i64 %.04960.i, %i.fm
  %i.fx = add nuw nsw i64 %i.fr, %i.fw
  %i.fy = sub nsw i64 %.neg238, %i.fx             ; 3 uses
  %i.fz = icmp sgt i64 %i.fy, -1
  br i1 %i.fz, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ga = add nsw i64 %i.fy, %i.fj                ; 2 uses
  %i.gb = urem i64 %i.ga, %3
  %i.gc = sdiv i64 %i.ga, %3
  %i.gd = add nsw i64 %i.gc, -2
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.sink.in.i = phi i64 [ %i.gb, %bb.ai ], [ %i.fy, %bb.ah ]
  %.150.i = phi i64 [ %i.gd, %bb.ai ], [ 0, %bb.ah ]
  %.sink.i = trunc i64 %.sink.in.i to i32
  %i.ge = getelementptr [4 x i8], ptr %i.fi, i64 %.04861.i
  store i32 %.sink.i, ptr %i.ge, align 4, !tbaa !7
  %i.gf = add nuw i64 %.04861.i, 1                ; 2 uses
  %exitcond.not.i216 = icmp eq i64 %i.gf, %.0.i213
  br i1 %exitcond.not.i216, label %.preheader.i217, label %bb.ad, !llvm.loop !51

.lr.ph63.i:                                       ; preds = %.preheader.i217, %bb.ak
  %.162.i = phi i64 [ %i.gk, %bb.ak ], [ %i.ew, %.preheader.i217 ] ; 3 uses
  %i.gg = getelementptr [4 x i8], ptr %i.fi, i64 %.162.i
  %i.gh = getelementptr i8, ptr %i.gg, i64 -4
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !7
  %i.gj = icmp eq i32 %i.gi, 0
  br i1 %i.gj, label %bb.ak, label %big_sub2.exit

bb.ak:                                            ; preds = %.lr.ph63.i
  %i.gk = add i64 %.162.i, -1                     ; 2 uses
  %i.gl = icmp ugt i64 %i.gk, 1
  br i1 %i.gl, label %.lr.ph63.i, label %big_sub2.exit, !llvm.loop !52

big_sub2.exit:                                    ; preds = %.lr.ph63.i, %bb.ak, %big_add.exit212, %.preheader.i217
  %.1.lcssa.i = phi i64 [ 1, %.preheader.i217 ], [ 0, %big_add.exit212 ], [ 1, %bb.ak ], [ %.162.i, %.lr.ph63.i ] ; 3 uses
  %i.gm = add i64 %.0166, %.0                     ; 4 uses
  %i.gn = call noalias ptr @calloc(i64 noundef %i.gm, i64 noundef 4) #15 ; 6 uses
  br i1 %i.ez, label %bb.al, label %bb.am

bb.al:                                            ; preds = %big_sub2.exit
  call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 205, ptr noundef nonnull @__PRETTY_FUNCTION__.karatsuba_multiply) #13
  unreachable

bb.am:                                            ; preds = %big_sub2.exit
  %i.go = shl i64 %i.fb, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.gn, ptr noundef nonnull align 1 %i.ey, i64 noundef %i.go, i1 noundef false) #16
  br i1 %i.fe, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 208, ptr noundef nonnull @__PRETTY_FUNCTION__.karatsuba_multiply) #13
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.gp = and i64 %.1, -2
  %i.gq = getelementptr [4 x i8], ptr %i.gn, i64 %i.gp
  %i.gr = shl i64 %i.fg, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.gq, ptr noundef nonnull align 1 %i.fd, i64 noundef %i.gr, i1 noundef false) #16
  %invariant.gep = getelementptr [4 x i8], ptr %i.gn, i64 %i.bx
  %.not284 = icmp eq i64 %.1.lcssa.i, 0
  br i1 %.not284, label %.preheader241, label %.lr.ph256

._crit_edge257:                                   ; preds = %.lr.ph256
  %.not193259 = icmp ugt i64 %3, %i.gz
  br i1 %.not193259, label %.preheader241, label %.lr.ph263.preheader

.lr.ph263.preheader:                              ; preds = %._crit_edge257
  %i.gs = add i64 %.1.lcssa.i, %i.bx
  br label %.lr.ph263

.lr.ph256:                                        ; preds = %bb.ao, %.lr.ph256
  %.0172254 = phi i64 [ %i.hd, %.lr.ph256 ], [ 0, %bb.ao ] ; 3 uses
  %.0173253 = phi i64 [ %i.hc, %.lr.ph256 ], [ 0, %bb.ao ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %.0172254 ; 2 uses
  %i.gt = load i32, ptr %gep, align 4, !tbaa !7
  %i.gu = zext i32 %i.gt to i64
  %i.gv = add nuw nsw i64 %.0173253, %i.gu
  %i.gw = getelementptr [4 x i8], ptr %i.fi, i64 %.0172254
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !7
  %i.gy = zext i32 %i.gx to i64
  %i.gz = add nuw nsw i64 %i.gv, %i.gy            ; 3 uses
  %i.ha = urem i64 %i.gz, %3
  %i.hb = trunc nuw i64 %i.ha to i32
  store i32 %i.hb, ptr %gep, align 4, !tbaa !7
  %i.hc = udiv i64 %i.gz, %3                      ; 2 uses
  %i.hd = add nuw i64 %.0172254, 1                ; 2 uses
  %exitcond294.not = icmp eq i64 %i.hd, %.1.lcssa.i
  br i1 %exitcond294.not, label %._crit_edge257, label %.lr.ph256, !llvm.loop !53

.preheader241:                                    ; preds = %.lr.ph263, %bb.ao, %._crit_edge257
  %i.he = icmp ugt i64 %i.gm, 1
  br i1 %i.he, label %.lr.ph265, label %pm_integer_free.exit221

.lr.ph263:                                        ; preds = %.lr.ph263.preheader, %.lr.ph263
  %.0171261 = phi i64 [ %i.hm, %.lr.ph263 ], [ %i.gs, %.lr.ph263.preheader ] ; 2 uses
  %.1174260.in = phi i64 [ %i.hl, %.lr.ph263 ], [ %i.hc, %.lr.ph263.preheader ]
  %i.hf = getelementptr [4 x i8], ptr %i.gn, i64 %.0171261 ; 2 uses
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !7
  %i.hh = zext i32 %i.hg to i64
  %i.hi = add nuw nsw i64 %.1174260.in, %i.hh     ; 3 uses
  %i.hj = urem i64 %i.hi, %3
  %i.hk = trunc nuw i64 %i.hj to i32
  store i32 %i.hk, ptr %i.hf, align 4, !tbaa !7
  %i.hl = udiv i64 %i.hi, %3
  %i.hm = add i64 %.0171261, 1
  %.not193 = icmp samesign ugt i64 %3, %i.hi
  br i1 %.not193, label %.preheader241, label %.lr.ph263, !llvm.loop !54

.lr.ph265:                                        ; preds = %.preheader241, %bb.ap
  %.0176264 = phi i64 [ %i.hr, %bb.ap ], [ %i.gm, %.preheader241 ] ; 3 uses
  %i.hn = getelementptr [4 x i8], ptr %i.gn, i64 %.0176264
  %i.ho = getelementptr i8, ptr %i.hn, i64 -4
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !7
  %i.hq = icmp eq i32 %i.hp, 0
  br i1 %i.hq, label %bb.ap, label %pm_integer_free.exit221

bb.ap:                                            ; preds = %.lr.ph265
  %i.hr = add i64 %.0176264, -1                   ; 2 uses
  %i.hs = icmp ugt i64 %i.hr, 1
  br i1 %i.hs, label %.lr.ph265, label %pm_integer_free.exit221, !llvm.loop !55

pm_integer_free.exit221:                          ; preds = %.lr.ph265, %bb.ap, %.preheader241
  %.0176.lcssa = phi i64 [ %i.gm, %.preheader241 ], [ 1, %bb.ap ], [ %.0176264, %.lr.ph265 ]
  call void @free(ptr noundef nonnull %i.ey) #16
  %.not.i222 = icmp eq ptr %i.fi, null
  br i1 %.not.i222, label %pm_integer_free.exit225, label %bb.aq

bb.aq:                                            ; preds = %pm_integer_free.exit221
  call void @free(ptr noundef nonnull %i.fi) #16
  br label %pm_integer_free.exit225

pm_integer_free.exit225:                          ; preds = %pm_integer_free.exit221, %bb.aq
  call void @free(ptr noundef nonnull %i.fd) #16
  %i.ht = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !22 ; 2 uses
  %.not.i226 = icmp eq ptr %i.hu, null
  br i1 %.not.i226, label %pm_integer_free.exit227, label %bb.ar

bb.ar:                                            ; preds = %pm_integer_free.exit225
  call void @free(ptr noundef nonnull %i.hu) #16
  br label %pm_integer_free.exit227

pm_integer_free.exit227:                          ; preds = %pm_integer_free.exit225, %bb.ar
  %i.hv = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !22 ; 2 uses
  %.not.i228 = icmp eq ptr %i.hw, null
  br i1 %.not.i228, label %pm_integer_free.exit229, label %bb.as

bb.as:                                            ; preds = %pm_integer_free.exit227
  call void @free(ptr noundef nonnull %i.hw) #16
  br label %pm_integer_free.exit229

pm_integer_free.exit229:                          ; preds = %pm_integer_free.exit227, %bb.as
  br i1 %i.eu, label %pm_integer_free.exit231, label %bb.at

bb.at:                                            ; preds = %pm_integer_free.exit229
  call void @free(ptr noundef nonnull %i.et) #16
  br label %pm_integer_free.exit231

pm_integer_free.exit231:                          ; preds = %pm_integer_free.exit229, %bb.at
  store i64 %.0176.lcssa, ptr %0, align 8, !tbaa !26
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gn, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !27
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.au

bb.au:                                            ; preds = %.critedge, %bb.j, %pm_integer_free.exit231, %._crit_edge252
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nounwind sspstrong willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(0,1) }
attributes #16 = { nounwind }

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
!11 = !{!9, !9, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = !{!17, !18, i64 0}
!17 = !{!"", !18, i64 0, !19, i64 8, !8, i64 16, !21, i64 20}
!18 = !{!"long", !9, i64 0}
!19 = !{!"p1 int", !20, i64 0}
!20 = !{!"any pointer", !9, i64 0}
!21 = !{!"_Bool", !9, i64 0}
!22 = !{!17, !19, i64 8}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !13}
!26 = !{!18, !18, i64 0}
!27 = !{!19, !19, i64 0}
!28 = distinct !{!28, !13}
!29 = distinct !{!29, !13}
!30 = !{!17, !8, i64 16}
!31 = !{!17, !21, i64 20}
!32 = !{i8 0, i8 2}
!33 = !{}
!34 = distinct !{!34, !13}
!35 = distinct !{!35, !13}
!36 = distinct !{!36, !13}
!37 = distinct !{!37, !13}
!38 = distinct !{!38, !13}
!39 = distinct !{!39, !13}
!40 = distinct !{!40, !13}
!41 = !{i64 0, i64 8, !26, i64 8, i64 8, !27, i64 16, i64 4, !7, i64 20, i64 1, !42}
!42 = !{!21, !21, i64 0}
!43 = distinct !{!43, !13}
!44 = distinct !{!44, !13}
!45 = distinct !{!45, !13}
!46 = distinct !{!46, !13}
!47 = distinct !{!47, !13}
!48 = distinct !{!48, !13}
!49 = distinct !{!49, !13}
!50 = distinct !{!50, !13}
!51 = distinct !{!51, !13}
!52 = distinct !{!52, !13}
!53 = distinct !{!53, !13}
!54 = distinct !{!54, !13}
!55 = distinct !{!55, !13}
end_hunk_0
