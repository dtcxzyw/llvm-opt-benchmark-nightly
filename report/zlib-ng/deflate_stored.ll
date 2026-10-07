Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng/original/deflate_stored?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
begin_hunk_0_@deflate_stored:bb.a
bb.x:                                             ; preds = %bb.w
  switch i32 %1, label %bb.y [
    i32 4, label %bb.aa
    i32 0, label %bb.aa
  ]

bb.y:                                             ; preds = %bb.x
  %i.fk = load ptr, ptr %0, align 64, !tbaa !25
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !28
  %i.fn = icmp eq i32 %i.fm, 0
  br i1 %i.fn, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fo = load i32, ptr %i.k, align 4, !tbaa !32
  %i.fp = icmp eq i32 %i.fh, %i.fo
  br i1 %i.fp, label %bb.ar, label %bb.aa

bb.aa:                                            ; preds = %bb.x, %bb.x, %bb.z, %bb.y
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !50
  %i.fs = sub i32 %i.fr, %i.fh                    ; 4 uses
  %i.ft = load ptr, ptr %0, align 64, !tbaa !25   ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !28 ; 3 uses
  %i.fw = icmp ugt i32 %i.fv, %i.fs
  br i1 %i.fw, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.fx = load i32, ptr %i.k, align 4, !tbaa !32  ; 2 uses
  %i.fy = load i32, ptr %i.d, align 64, !tbaa !24 ; 4 uses
  %.not261 = icmp slt i32 %i.fx, %i.fy
  br i1 %.not261, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fz = sub nsw i32 %i.fx, %i.fy
  store i32 %i.fz, ptr %i.k, align 4, !tbaa !32
  %i.ga = sub i32 %i.fh, %i.fy                    ; 2 uses
  store i32 %i.ga, ptr %i.j, align 4, !tbaa !31
  %i.gb = load ptr, ptr %i.p, align 8, !tbaa !37  ; 2 uses
  %i.gc = zext i32 %i.fy to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.gc
  %i.ge = zext i32 %i.ga to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gb, ptr align 1 %i.gd, i64 %i.ge, i1 false)
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 5976 ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !48 ; 2 uses
  %i.gh = icmp ult i32 %i.gg, 2
  br i1 %i.gh, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.gi = add nuw nsw i32 %i.gg, 1
  store i32 %i.gi, ptr %i.gf, align 8, !tbaa !48
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.gj = load i32, ptr %i.d, align 64, !tbaa !24
  %i.gk = add i32 %i.gj, %i.fs
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 5980 ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !49
  %i.gn = load i32, ptr %i.j, align 4, !tbaa !31  ; 2 uses
  %.269 = tail call i32 @llvm.umin.i32(i32 %i.gm, i32 %i.gn)
  store i32 %.269, ptr %i.gl, align 4, !tbaa !49
  %.pre288 = load ptr, ptr %0, align 64, !tbaa !25 ; 2 uses
  %.phi.trans.insert289 = getelementptr inbounds nuw i8, ptr %.pre288, i64 8
  %.pre290 = load i32, ptr %.phi.trans.insert289, align 8, !tbaa !28
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ab, %bb.aa
  %i.go = phi i32 [ %i.gn, %bb.ae ], [ %i.fh, %bb.ab ], [ %i.fh, %bb.aa ] ; 2 uses
  %i.gp = phi i32 [ %.pre290, %bb.ae ], [ %i.fv, %bb.ab ], [ %i.fv, %bb.aa ]
  %i.gq = phi ptr [ %.pre288, %bb.ae ], [ %i.ft, %bb.ab ], [ %i.ft, %bb.aa ] ; 9 uses
  %.0219 = phi i32 [ %i.gk, %bb.ae ], [ %i.fs, %bb.ab ], [ %i.fs, %bb.aa ]
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8 ; 2 uses
  %..0219 = tail call i32 @llvm.umin.i32(i32 %.0219, i32 %i.gp) ; 7 uses
  %.not262 = icmp eq i32 %..0219, 0
  br i1 %.not262, label %._crit_edge291, label %bb.ag

._crit_edge291:                                   ; preds = %bb.af
  %.pre292 = load i32, ptr %i.d, align 64, !tbaa !24
  br label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %i.gs = load ptr, ptr %i.p, align 8, !tbaa !37
  %i.gt = zext i32 %i.go to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gt ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gq, i64 56
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !39 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 32
  %i.gy = load i32, ptr %i.gx, align 32, !tbaa !40
  switch i32 %i.gy, label %bb.aj [
    i32 2, label %bb.ah
    i32 1, label %bb.ai
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.gz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @functable, i64 56), align 8, !tbaa !42
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 192
  %i.hb = load ptr, ptr %i.gq, align 8, !tbaa !43
  %i.hc = zext i32 %..0219 to i64                 ; 2 uses
  tail call void %i.gz(ptr noundef nonnull %i.ha, ptr noundef %i.gu, ptr noundef %i.hb, i64 noundef %i.hc) #4, !inline_history !8
  br label %read_buf.exit

bb.ai:                                            ; preds = %bb.ag
  %i.hd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @functable, i64 16), align 8, !tbaa !44
  %i.he = getelementptr inbounds nuw i8, ptr %i.gq, i64 92 ; 2 uses
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !45
  %i.hg = load ptr, ptr %i.gq, align 8, !tbaa !43
  %i.hh = zext i32 %..0219 to i64                 ; 2 uses
  %i.hi = tail call i32 %i.hd(i32 noundef %i.hf, ptr noundef %i.gu, ptr noundef %i.hg, i64 noundef %i.hh) #4, !inline_history !8
  store i32 %i.hi, ptr %i.he, align 4, !tbaa !45
  br label %read_buf.exit

bb.aj:                                            ; preds = %bb.ag
  %i.hj = load ptr, ptr %i.gq, align 8, !tbaa !43
  %i.hk = zext i32 %..0219 to i64                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gu, ptr align 1 %i.hj, i64 %i.hk, i1 false)
  br label %read_buf.exit

read_buf.exit:                                    ; preds = %bb.aj, %bb.ai, %bb.ah
  %.pre-phi = phi i64 [ %i.hk, %bb.aj ], [ %i.hh, %bb.ai ], [ %i.hc, %bb.ah ] ; 2 uses
  %i.hl = load i32, ptr %i.gr, align 8, !tbaa !28
  %i.hm = sub i32 %i.hl, %..0219
  store i32 %i.hm, ptr %i.gr, align 8, !tbaa !28
  %i.hn = load ptr, ptr %i.gq, align 8, !tbaa !43
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 %.pre-phi
  store ptr %i.ho, ptr %i.gq, align 8, !tbaa !43
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gq, i64 16 ; 2 uses
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !46
  %i.hr = add i64 %i.hq, %.pre-phi
  store i64 %i.hr, ptr %i.hp, align 8, !tbaa !46
  %i.hs = load i32, ptr %i.j, align 4, !tbaa !31
  %i.ht = add i32 %i.hs, %..0219                  ; 2 uses
  store i32 %i.ht, ptr %i.j, align 4, !tbaa !31
  %i.hu = load i32, ptr %i.d, align 64, !tbaa !24 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 5980 ; 2 uses
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !49 ; 2 uses
  %i.hx = sub i32 %i.hu, %i.hw
  %...0219 = tail call i32 @llvm.umin.i32(i32 %..0219, i32 %i.hx)
  %i.hy = add i32 %...0219, %i.hw
  store i32 %i.hy, ptr %i.hv, align 4, !tbaa !49
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge291, %read_buf.exit
  %i.hz = phi i32 [ %i.hu, %read_buf.exit ], [ %.pre292, %._crit_edge291 ]
  %i.ia = phi i32 [ %i.ht, %read_buf.exit ], [ %i.go, %._crit_edge291 ] ; 3 uses
  %i.ib = load i32, ptr %i.fi, align 16, !tbaa !51
  %.270 = tail call i32 @llvm.umax.i32(i32 %i.ib, i32 %i.ia)
  store i32 %.270, ptr %i.fi, align 16, !tbaa !51
  %i.ic = load i32, ptr %i.i, align 64, !tbaa !29
  %i.id = add nsw i32 %i.ic, 42
  %i.ie = ashr i32 %i.id, 3
  %i.if = load i32, ptr %i.a, align 8, !tbaa !23
  %i.ig = sub i32 %i.if, %i.ie
  %i.ih = tail call i32 @llvm.umin.i32(i32 %i.ig, i32 65535) ; 3 uses
  %i.ii = tail call i32 @llvm.umin.i32(i32 %i.ih, i32 %i.hz)
  %i.ij = load i32, ptr %i.k, align 4, !tbaa !32  ; 3 uses
  %i.ik = sub nsw i32 %i.ia, %i.ij                ; 3 uses
  %.not263 = icmp ult i32 %i.ik, %i.ii
  br i1 %.not263, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.il = icmp ne i32 %i.ia, %i.ij
  %or.cond7 = or i1 %i.l, %i.il
  %or.cond9 = and i1 %i.m, %or.cond7
  br i1 %or.cond9, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %bb.al
  %i.im = load ptr, ptr %0, align 64, !tbaa !25
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.io = load i32, ptr %i.in, align 8, !tbaa !28
  %.not282 = icmp eq i32 %i.io, 0
  br i1 %.not282, label %bb.an, label %bb.ar

bb.an:                                            ; preds = %bb.am, %bb.ak
  %i.ip = tail call i32 @llvm.umin.i32(i32 %i.ik, i32 %i.ih) ; 2 uses
  br i1 %i.l, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.iq = load ptr, ptr %0, align 64, !tbaa !25
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.is = load i32, ptr %i.ir, align 8, !tbaa !28
  %i.it = icmp eq i32 %i.is, 0
  br i1 %i.it, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.iu = icmp ule i32 %i.ik, %i.ih
  %i.iv = zext i1 %i.iu to i32
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an
  %i.iw = phi i32 [ 0, %bb.ao ], [ 0, %bb.an ], [ %i.iv, %bb.ap ] ; 2 uses
  %i.ix = load ptr, ptr %i.p, align 8, !tbaa !37
  %i.iy = sext i32 %i.ij to i64
  %i.iz = getelementptr inbounds i8, ptr %i.ix, i64 %i.iy
  tail call void @zng_tr_stored_block(ptr noundef nonnull %0, ptr noundef %i.iz, i32 noundef %i.ip, i32 noundef %i.iw) #4
  %i.ja = load i32, ptr %i.k, align 4, !tbaa !32
  %i.jb = add nsw i32 %i.ja, %i.ip
  store i32 %i.jb, ptr %i.k, align 4, !tbaa !32
  %i.jc = load ptr, ptr %0, align 64, !tbaa !25
  tail call void @zng_flush_pending(ptr noundef %i.jc) #4
  %2 = shl nuw nsw i32 %i.iw, 1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.am, %bb.aq, %bb.al, %bb.z, %bb.w
  %.0222 = phi i32 [ 1, %bb.z ], [ 3, %bb.w ], [ %2, %bb.aq ], [ 0, %bb.al ], [ 0, %bb.am ]
  ret i32 %.0222
}

declare hidden void @zng_tr_stored_block(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare hidden void @zng_flush_pending(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{null}
!9 = distinct !{!9, !47}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!"p1 _ZTS12zng_stream_s", !10, i64 0}
!12 = !{!"p1 omnipotent char", !10, i64 0}
!13 = !{!"p1 _ZTS15zng_gz_header_s", !10, i64 0}
!14 = !{!"p1 short", !10, i64 0}
!15 = !{!"short", !4, i64 0}
!16 = !{!"crc32_fold_s", !4, i64 0, !5, i64 64}
!17 = !{!"p1 _ZTS9ct_data_s", !10, i64 0}
!18 = !{!"p1 _ZTS18static_tree_desc_s", !10, i64 0}
!19 = !{!"tree_desc_s", !17, i64 0, !5, i64 8, !18, i64 16}
!20 = !{!"long", !4, i64 0}
!21 = !{!"p1 _ZTS16deflate_allocs_s", !10, i64 0}
!22 = !{!"internal_state", !11, i64 0, !12, i64 8, !12, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !13, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !12, i64 88, !14, i64 96, !14, i64 104, !5, i64 112, !5, i64 116, !5, i64 120, !15, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !10, i64 152, !10, i64 160, !10, i64 168, !5, i64 176, !5, i64 180, !5, i64 184, !5, i64 188, !16, i64 192, !4, i64 260, !4, i64 2552, !4, i64 2796, !19, i64 2952, !19, i64 2976, !19, i64 3000, !4, i64 3024, !4, i64 3056, !5, i64 5348, !5, i64 5352, !4, i64 5356, !5, i64 5932, !14, i64 5936, !12, i64 5944, !5, i64 5952, !5, i64 5956, !20, i64 5960, !20, i64 5968, !5, i64 5976, !5, i64 5980, !20, i64 5984, !20, i64 5992, !21, i64 6000, !20, i64 6008, !5, i64 6016, !4, i64 6020}
!23 = !{!22, !5, i64 24}
!24 = !{!22, !5, i64 64}
!25 = !{!22, !11, i64 0}
!26 = !{!"p1 _ZTS14internal_state", !10, i64 0}
!27 = !{!"zng_stream_s", !12, i64 0, !5, i64 8, !20, i64 16, !12, i64 24, !5, i64 32, !20, i64 40, !12, i64 48, !26, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !5, i64 88, !5, i64 92, !20, i64 96}
!28 = !{!27, !5, i64 8}
!29 = !{!22, !5, i64 6016}
!30 = !{!27, !5, i64 32}
!31 = !{!22, !5, i64 132}
!32 = !{!22, !5, i64 116}
!33 = !{!22, !5, i64 28}
!34 = !{!22, !12, i64 8}
!35 = !{!4, !4, i64 0}
!36 = !{!27, !12, i64 24}
!37 = !{!22, !12, i64 88}
!38 = !{!27, !20, i64 40}
!39 = !{!27, !26, i64 56}
!40 = !{!22, !5, i64 32}
!41 = !{!"functable_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104}
!42 = !{!41, !10, i64 56}
!43 = !{!27, !12, i64 0}
!44 = !{!41, !10, i64 16}
!45 = !{!27, !5, i64 92}
!46 = !{!27, !20, i64 16}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!22, !5, i64 5976}
!49 = !{!22, !5, i64 5980}
!50 = !{!22, !5, i64 84}
!51 = !{!22, !5, i64 80}
end_hunk_0
