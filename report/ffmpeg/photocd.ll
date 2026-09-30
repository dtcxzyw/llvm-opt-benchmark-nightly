Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/photocd?download=true
inline.NumInlined: 34
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@decode_huff:bb.a
  %.sroa.0.20 = phi i64 [ %i.ef, %bits_priv_refill_32_be.exit.i ], [ %.sroa.0.19, %bb.v ] ; 2 uses
  %i.ei = phi i32 [ %i.eh, %bits_priv_refill_32_be.exit.i ], [ %.sroa.94.17, %bb.v ] ; 3 uses
  %i.ej = lshr i64 %.sroa.0.20, 62                ; 2 uses
  %i.ek = add i32 %i.ei, -2                       ; 2 uses
  %i.el = icmp ugt i32 %i.ek, 14
  br i1 %i.el, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bits_read_nz_be.exit
  %i.em = shl i64 %.sroa.0.20, 16
  %i.en = add i32 %i.ei, -16
  br label %bits_skip_be.exit108

bb.y:                                             ; preds = %bits_read_nz_be.exit.thread, %bits_read_nz_be.exit
  %i.eo = phi i32 [ 0, %bits_read_nz_be.exit.thread ], [ %i.ek, %bits_read_nz_be.exit ]
  %i.ep = phi i64 [ %i.dy, %bits_read_nz_be.exit.thread ], [ %i.ej, %bits_read_nz_be.exit ] ; 2 uses
  %i.eq = phi i32 [ 2, %bits_read_nz_be.exit.thread ], [ %i.ei, %bits_read_nz_be.exit ]
  %.sroa.65.21256 = phi ptr [ %.sroa.65.20, %bits_read_nz_be.exit.thread ], [ %.sroa.65.21, %bits_read_nz_be.exit ] ; 4 uses
  %i.er = sub nuw nsw i32 16, %i.eq               ; 2 uses
  %.not.i.i103 = icmp ult ptr %.sroa.65.21256, %i.w
  br i1 %.not.i.i103, label %bb.z, label %bits_priv_refill_64_be.exit.i104

bb.z:                                             ; preds = %bb.y
  %i.es = load i64, ptr %.sroa.65.21256, align 1, !tbaa !30
  %i.et = tail call noundef i64 @llvm.bswap.i64(i64 %i.es)
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.65.21256, i64 8
  br label %bits_priv_refill_64_be.exit.i104

bits_priv_refill_64_be.exit.i104:                 ; preds = %bb.z, %bb.y
  %.sroa.94.18 = phi i32 [ 64, %bb.z ], [ 0, %bb.y ] ; 2 uses
  %.sroa.65.22 = phi ptr [ %i.eu, %bb.z ], [ %.sroa.65.21256, %bb.y ] ; 2 uses
  %.sroa.0.21 = phi i64 [ %i.et, %bb.z ], [ 0, %bb.y ] ; 2 uses
  %.not.i105 = icmp eq i32 %i.eo, 14
  br i1 %.not.i105, label %bits_skip_be.exit108, label %bb.aa

bb.aa:                                            ; preds = %bits_priv_refill_64_be.exit.i104
  %i.ev = zext nneg i32 %i.er to i64
  %i.ew = shl i64 %.sroa.0.21, %i.ev
  %i.ex = sub nsw i32 %.sroa.94.18, %i.er
  br label %bits_skip_be.exit108

bits_skip_be.exit108:                             ; preds = %bb.x, %bb.aa, %bits_priv_refill_64_be.exit.i104
  %i.ey = phi i64 [ %i.ep, %bits_priv_refill_64_be.exit.i104 ], [ %i.ep, %bb.aa ], [ %i.ej, %bb.x ] ; 3 uses
  %.sroa.94.19 = phi i32 [ %.sroa.94.18, %bits_priv_refill_64_be.exit.i104 ], [ %i.ex, %bb.aa ], [ %i.en, %bb.x ] ; 2 uses
  %.sroa.65.24 = phi ptr [ %.sroa.65.22, %bits_priv_refill_64_be.exit.i104 ], [ %.sroa.65.22, %bb.aa ], [ %.sroa.65.21, %bb.x ] ; 2 uses
  %.sroa.0.23 = phi i64 [ %.sroa.0.21, %bits_priv_refill_64_be.exit.i104 ], [ %i.ew, %bb.aa ], [ %i.em, %bb.x ] ; 2 uses
  %i.ez = icmp eq i64 %i.ey, 1
  br i1 %i.ez, label %bits_init8_be.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bits_skip_be.exit108
  %i.fa = getelementptr inbounds nuw i8, ptr @__const.decode_huff.type2idx, i64 %i.ey
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !30
  %i.fc = zext i8 %i.fb to i64                    ; 3 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.fc
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !39
  %i.ff = icmp ne i64 %i.ey, 0
  %i.fg = zext i1 %i.ff to i32                    ; 2 uses
  %i.fh = lshr i32 %i.dw, %i.fg
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.fc
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !28
  %i.fk = mul nsw i32 %i.fj, %i.fh
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds i8, ptr %i.fe, i64 %i.fl
  %i.fn = load i32, ptr %i.ah, align 8, !tbaa !40
  %i.fo = add nsw i32 %i.f, %i.fg
  %i.fp = ashr i32 %i.fn, %i.fo                   ; 2 uses
  %.not63227 = icmp sgt i32 %i.fp, 0
  br i1 %.not63227, label %.lr.ph233, label %.preheader.backedge

.preheader.backedge:                              ; preds = %.critedge, %bb.ab
  %.sroa.0.0239.be = phi i64 [ %.sroa.0.23, %bb.ab ], [ %i.ib, %.critedge ]
  %.sroa.65.0238.be = phi ptr [ %.sroa.65.24, %bb.ab ], [ %.sroa.65.28, %.critedge ]
  %.sroa.94.0237.be = phi i32 [ %.sroa.94.19, %bb.ab ], [ %i.hz, %.critedge ]
  br label %.preheader

.lr.ph233:                                        ; preds = %bb.ab
  %i.fq = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %i.fc ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %wide.trip.count = zext nneg i32 %i.fp to i64
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph233, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph233 ], [ %indvars.iv.next, %.critedge ] ; 2 uses
  %.sroa.0.4230 = phi i64 [ %.sroa.0.23, %.lr.ph233 ], [ %i.ib, %.critedge ] ; 3 uses
  %.sroa.65.4229 = phi ptr [ %.sroa.65.24, %.lr.ph233 ], [ %.sroa.65.28, %.critedge ] ; 6 uses
  %.sroa.94.4228 = phi i32 [ %.sroa.94.19, %.lr.ph233 ], [ %i.hz, %.critedge ] ; 6 uses
  %i.fs = ptrtoint ptr %.sroa.65.4229 to i64
  %i.ft = sub i64 %i.r, %i.fs
  %.tr.i109 = trunc i64 %i.ft to i32
  %i.fu = shl i32 %.tr.i109, 3
  %i.fv = add i32 %.sroa.94.4228, %.sroa.134.0
  %i.fw = add i32 %i.fv, %i.fu
  %i.fx = icmp slt i32 %i.fw, 1
  br i1 %i.fx, label %bits_init8_be.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fy = load ptr, ptr %i.fr, align 8, !tbaa !84 ; 2 uses
  %i.fz = load i32, ptr %i.fq, align 8, !tbaa !85 ; 5 uses
  %.not.i.i110 = icmp eq i32 %i.fz, 0
  br i1 %.not.i.i110, label %bits_peek_be.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ga = icmp ugt i32 %i.fz, %.sroa.94.4228
  %.not.i.i.i.i = icmp ult ptr %.sroa.65.4229, %i.w
  %or.cond196 = select i1 %i.ga, i1 %.not.i.i.i.i, i1 false
  br i1 %or.cond196, label %bb.af, label %bits_peek_nz_be.exit.i.i

bb.af:                                            ; preds = %bb.ae
  %i.gb = load i32, ptr %.sroa.65.4229, align 1, !tbaa !30
  %i.gc = tail call i32 @llvm.bswap.i32(i32 %i.gb)
  %i.gd = zext i32 %i.gc to i64
  %i.ge = sub i32 32, %.sroa.94.4228
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = shl i64 %i.gd, %i.gf
  %i.gh = or i64 %i.gg, %.sroa.0.4230
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.65.4229, i64 4
  %i.gj = add i32 %.sroa.94.4228, 32
  br label %bits_peek_nz_be.exit.i.i

bits_peek_nz_be.exit.i.i:                         ; preds = %bb.ae, %bb.af
  %.sroa.94.20 = phi i32 [ %i.gj, %bb.af ], [ %.sroa.94.4228, %bb.ae ]
  %.sroa.65.25 = phi ptr [ %i.gi, %bb.af ], [ %.sroa.65.4229, %bb.ae ]
  %.val.i.i.i = phi i64 [ %i.gh, %bb.af ], [ %.sroa.0.4230, %bb.ae ] ; 2 uses
  %i.gk = sub i32 64, %i.fz
  %i.gl = zext nneg i32 %i.gk to i64
  %i.gm = lshr i64 %.val.i.i.i, %i.gl
  %i.gn = and i64 %i.gm, 4294967295
  br label %bits_peek_be.exit.i

bits_peek_be.exit.i:                              ; preds = %bb.ad, %bits_peek_nz_be.exit.i.i
  %.sroa.94.21 = phi i32 [ %.sroa.94.20, %bits_peek_nz_be.exit.i.i ], [ %.sroa.94.4228, %bb.ad ] ; 2 uses
  %.sroa.65.26 = phi ptr [ %.sroa.65.25, %bits_peek_nz_be.exit.i.i ], [ %.sroa.65.4229, %bb.ad ] ; 5 uses
  %.pre.i = phi i64 [ %.val.i.i.i, %bits_peek_nz_be.exit.i.i ], [ %.sroa.0.4230, %bb.ad ] ; 2 uses
  %.0.i.i111 = phi i64 [ %i.gn, %bits_peek_nz_be.exit.i.i ], [ 0, %bb.ad ]
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %.0.i.i111 ; 2 uses
  %i.gp = load i16, ptr %i.go, align 2, !tbaa !30
  %i.gq = sext i16 %i.gp to i32                   ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 2
  %i.gs = load i16, ptr %i.gr, align 2, !tbaa !30 ; 2 uses
  %i.gt = sext i16 %i.gs to i32                   ; 3 uses
  %i.gu = icmp slt i16 %i.gs, 0
  br i1 %i.gu, label %bb.ag, label %bits_read_vlc_be.exit

bb.ag:                                            ; preds = %bits_peek_be.exit.i
  %i.gv = zext nneg i32 %i.fz to i64
  %i.gw = shl i64 %.pre.i, %i.gv                  ; 2 uses
  %i.gx = sub i32 %.sroa.94.21, %i.fz             ; 4 uses
  %i.gy = sub nsw i32 0, %i.gt
  %i.gz = icmp ult i32 %i.gx, %i.gy
  %.not.i.i.i.i.i = icmp ult ptr %.sroa.65.26, %i.w
  %or.cond197 = select i1 %i.gz, i1 %.not.i.i.i.i.i, i1 false
  br i1 %or.cond197, label %bb.ah, label %bits_priv_set_idx_be.exit.i

bb.ah:                                            ; preds = %bb.ag
  %i.ha = load i32, ptr %.sroa.65.26, align 1, !tbaa !30
  %i.hb = tail call i32 @llvm.bswap.i32(i32 %i.ha)
  %i.hc = zext i32 %i.hb to i64
  %i.hd = sub nsw i32 32, %i.gx
  %i.he = zext nneg i32 %i.hd to i64
  %i.hf = shl i64 %i.hc, %i.he
  %i.hg = or i64 %i.hf, %i.gw
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.65.26, i64 4
  %i.hi = add nuw nsw i32 %i.gx, 32
  br label %bits_priv_set_idx_be.exit.i

bits_priv_set_idx_be.exit.i:                      ; preds = %bb.ah, %bb.ag
  %.sroa.65.27 = phi ptr [ %i.hh, %bb.ah ], [ %.sroa.65.26, %bb.ag ]
  %i.hj = phi i32 [ %i.hi, %bb.ah ], [ %i.gx, %bb.ag ]
  %.val.i.i.i.i = phi i64 [ %i.hg, %bb.ah ], [ %i.gw, %bb.ag ] ; 2 uses
  %i.hk = add nsw i32 %i.gt, 64
  %i.hl = zext nneg i32 %i.hk to i64
  %i.hm = lshr i64 %.val.i.i.i.i, %i.hl
  %i.hn = trunc i64 %i.hm to i32
  %i.ho = add i32 %i.hn, %i.gq
  %i.hp = zext i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %i.hp ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 2
  %i.hs = load i16, ptr %i.hr, align 2, !tbaa !30
  %i.ht = sext i16 %i.hs to i32
  %i.hu = load i16, ptr %i.hq, align 2, !tbaa !30
  %i.hv = sext i16 %i.hu to i32
  br label %bits_read_vlc_be.exit

bits_read_vlc_be.exit:                            ; preds = %bits_peek_be.exit.i, %bits_priv_set_idx_be.exit.i
  %.sroa.65.28 = phi ptr [ %.sroa.65.27, %bits_priv_set_idx_be.exit.i ], [ %.sroa.65.26, %bits_peek_be.exit.i ] ; 2 uses
  %i.hw = phi i32 [ %i.hj, %bits_priv_set_idx_be.exit.i ], [ %.sroa.94.21, %bits_peek_be.exit.i ]
  %i.hx = phi i64 [ %.val.i.i.i.i, %bits_priv_set_idx_be.exit.i ], [ %.pre.i, %bits_peek_be.exit.i ]
  %.023.i = phi i32 [ %i.ht, %bits_priv_set_idx_be.exit.i ], [ %i.gt, %bits_peek_be.exit.i ] ; 2 uses
  %.0.i112 = phi i32 [ %i.hv, %bits_priv_set_idx_be.exit.i ], [ %i.gq, %bits_peek_be.exit.i ] ; 2 uses
  %i.hy = icmp slt i32 %.0.i112, 0
  br i1 %i.hy, label %bits_init8_be.exit.thread, label %.critedge

.critedge:                                        ; preds = %bits_read_vlc_be.exit
  %i.hz = sub i32 %i.hw, %.023.i                  ; 2 uses
  %i.ia = zext nneg i32 %.023.i to i64
  %i.ib = shl i64 %i.hx, %i.ia                    ; 2 uses
  %i.ic = shl i32 %.0.i112, 24
  %i.id = ashr exact i32 %i.ic, 24
  %i.ie = getelementptr inbounds nuw i8, ptr %i.fm, i64 %indvars.iv ; 2 uses
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !30
  %i.ig = zext i8 %i.if to i32
  %i.ih = add nsw i32 %i.id, %i.ig                ; 3 uses
  %4 = icmp ugt i32 %i.ih, 255
  %isnotneg.i = icmp sgt i32 %i.ih, -1
  %5 = sext i1 %isnotneg.i to i8
  %i.ii = trunc nuw i32 %i.ih to i8
  %.0.i = select i1 %4, i8 %5, i8 %i.ii
  store i8 %.0.i, ptr %i.ie, align 1, !tbaa !30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader.backedge, label %bb.ac, !llvm.loop !81

.thread186:                                       ; preds = %bits_peek_be.exit100
  %.pre = load i32, ptr %i.d, align 4, !tbaa !42
  %i.ij = ptrtoint ptr %.sroa.65.20 to i64
  %i.ik = sub i64 %i.ij, %i.r
  %.tr.i113 = trunc i64 %i.ik to i32
  %i.il = shl i32 %.tr.i113, 3
  %reass.sub = sub i32 %i.il, %.sroa.94.17
  %i.im = add i32 %reass.sub, 7
  %i.in = ashr i32 %i.im, 3
  %i.io = add i32 %.pre, 26623
  %i.ip = add i32 %i.io, %i.in
  %i.iq = and i32 %i.ip, -2048
  store i32 %i.iq, ptr %i.d, align 4, !tbaa !42
  br label %bits_init8_be.exit.thread

bits_init8_be.exit.thread:                        ; preds = %bits_skip_be.exit108, %.lr.ph222, %bb.ac, %bits_read_vlc_be.exit, %bb.a, %.thread186
  %.5 = phi i32 [ 0, %.thread186 ], [ -1094995529, %.lr.ph222 ], [ -1094995529, %bb.a ], [ -1094995529, %bb.ac ], [ -1094995529, %bits_read_vlc_be.exit ], [ -1094995529, %bits_skip_be.exit108 ]
  ret i32 %.5
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

declare void @ff_vlc_free(ptr noundef) local_unnamed_addr #3

declare i32 @ff_vlc_init_sparse(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!12 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!"AVRational", !6, i64 0, !6, i64 4}
!16 = !{!"float", !5, i64 0}
!17 = !{!"p1 short", !9, i64 0}
!18 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!19 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!20 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!21 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!22 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!23 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!24 = !{!"p1 int", !9, i64 0}
!25 = !{!"any p2 pointer", !9, i64 0}
!26 = !{!"p2 _ZTS15AVFrameSideData", !25, i64 0}
!27 = !{!"AVCodecContext", !10, i64 0, !6, i64 8, !6, i64 12, !11, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !12, i64 40, !9, i64 48, !13, i64 56, !6, i64 64, !6, i64 68, !14, i64 72, !6, i64 80, !15, i64 84, !15, i64 92, !15, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !15, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !16, i64 204, !16, i64 208, !16, i64 212, !16, i64 216, !16, i64 220, !16, i64 224, !16, i64 228, !16, i64 232, !16, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !17, i64 288, !17, i64 296, !17, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !18, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !16, i64 428, !16, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !19, i64 456, !13, i64 464, !13, i64 472, !16, i64 480, !16, i64 484, !6, i64 488, !6, i64 492, !14, i64 496, !14, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !20, i64 536, !9, i64 544, !21, i64 552, !21, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !22, i64 728, !14, i64 736, !6, i64 744, !6, i64 748, !14, i64 752, !14, i64 760, !14, i64 768, !23, i64 776, !6, i64 784, !6, i64 788, !13, i64 792, !6, i64 800, !6, i64 804, !13, i64 808, !9, i64 816, !13, i64 824, !24, i64 832, !6, i64 840, !26, i64 848, !6, i64 856, !6, i64 860}
!28 = !{!6, !6, i64 0}
!29 = !{!27, !9, i64 32}
!30 = !{!5, !5, i64 0}
!31 = !{!"GetByteContext", !14, i64 0, !14, i64 8, !14, i64 16}
!32 = !{!"PhotoCDContext", !10, i64 0, !6, i64 8, !31, i64 16, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !5, i64 56, !5, i64 312, !5, i64 824, !5, i64 1080}
!33 = !{!"short", !5, i64 0}
!34 = !{!"ImageInfo", !6, i64 0, !33, i64 4, !33, i64 6}
!35 = !{!34, !33, i64 6}
!36 = !{!31, !14, i64 0}
!37 = !{!31, !14, i64 16}
!38 = !{!31, !14, i64 8}
!39 = !{!14, !14, i64 0}
!40 = !{!27, !6, i64 112}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!32, !6, i64 52}
!43 = !{!27, !6, i64 136}
!44 = distinct !{!44, !41}
!45 = distinct !{!45, !41}
!46 = distinct !{!46, !41}
!47 = !{!"AVPacket", !21, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !23, i64 48, !6, i64 56, !13, i64 64, !13, i64 72, !9, i64 80, !21, i64 88, !15, i64 96}
!48 = !{!47, !14, i64 24}
!49 = !{!47, !6, i64 32}
!50 = !{!32, !6, i64 40}
!51 = !{!32, !6, i64 48}
!52 = !{!32, !6, i64 44}
!53 = !{!32, !6, i64 8}
!54 = !{!34, !33, i64 4}
!55 = !{!27, !6, i64 704}
!56 = !{!34, !6, i64 0}
!57 = !{!27, !6, i64 116}
!58 = distinct !{!58, !41}
!59 = distinct !{!59, !41}
!60 = distinct !{!60, !41}
!61 = distinct !{!61, !41}
!62 = distinct !{!62, !41}
!63 = distinct !{!63, !41}
!64 = distinct !{!64, !41}
!65 = distinct !{!65, !41}
!66 = distinct !{!66, !"LVerDomain"}
!67 = distinct !{!67, !66}
!68 = distinct !{!68, !66}
!69 = distinct !{!69, !41, !73, !74}
!70 = distinct !{!70, !41, !73}
!71 = !{!67}
!72 = !{!68}
!73 = !{!"llvm.loop.isvectorized", i32 1}
!74 = !{!"llvm.loop.unroll.runtime.disable"}
!75 = distinct !{!75, !41}
!76 = distinct !{!76, !41}
!77 = distinct !{!77, !41}
!78 = !{!33, !33, i64 0}
!79 = distinct !{!79, !41}
!80 = distinct !{!80, !41}
!81 = distinct !{!81, !41}
!82 = !{!"p1 _ZTS7VLCElem", !9, i64 0}
!83 = !{!"VLC", !6, i64 0, !82, i64 8, !6, i64 16, !6, i64 20}
!84 = !{!83, !82, i64 8}
!85 = !{!83, !6, i64 0}
end_hunk_0
