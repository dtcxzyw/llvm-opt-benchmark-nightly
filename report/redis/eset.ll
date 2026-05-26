inline.NumInlined: 39
inline.NumDeleted: 26
begin_hunk_0_@je_eset_fit:bb.a
  %i.bk = icmp ult i64 %i.bj, %.sroa.0.043.i
  br i1 %i.bk, label %bb.k, label %bb.l

edata_cmp_summary_comp.exit.i:                    ; preds = %bb.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = icmp ult i64 %i.bm, %.sroa.5.044.i
  br i1 %i.bn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %edata_cmp_summary_comp.exit.i, %bb.j, %bb.h
  %i.bo = getelementptr inbounds nuw [32 x i8], ptr %i.az, i64 %.025.in46.i ; 3 uses
  %i.bp = tail call ptr @je_edata_heap_first(ptr noundef nonnull %i.bo) #7
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %.sroa.0.0.copyload.i = load i64, ptr %i.bq, align 8, !tbaa !28
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !28
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %edata_cmp_summary_comp.exit.i, %bb.j
  %.1.i = phi ptr [ %i.bp, %bb.k ], [ %.02742.i, %edata_cmp_summary_comp.exit.i ], [ %.02742.i, %bb.j ] ; 5 uses
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.copyload.i, %bb.k ], [ %.sroa.0.043.i, %edata_cmp_summary_comp.exit.i ], [ %.sroa.0.043.i, %bb.j ]
  %.sroa.5.1.i = phi i64 [ %.sroa.5.0.copyload.i, %bb.k ], [ %.sroa.5.044.i, %edata_cmp_summary_comp.exit.i ], [ %.sroa.5.044.i, %bb.j ]
  %i.br = icmp eq i64 %.025.in46.i, 199
  br i1 %i.br, label %eset_first_fit.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bs = add nuw nsw i64 %.025.in46.i, 1         ; 2 uses
  %i.bt = lshr i64 %i.bs, 6                       ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !28
  %i.bw = and i64 %i.bs, 63
  %notmask.i.i30.i = shl nsw i64 -1, %i.bw
  %i.bx = and i64 %i.bv, %notmask.i.i30.i         ; 2 uses
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %.lr.ph.i35.i.preheader, label %fb_ffs.exit37.i

.lr.ph.i35.i.preheader:                           ; preds = %bb.m
  %i.bz = add nuw nsw i64 %i.bt, 1                ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 4
  br i1 %i.ca, label %eset_first_fit.exit, label %.lr.ph89

.lr.ph.i35.i:                                     ; preds = %.lr.ph89
  %i.cb = add nuw nsw i64 %i.cd, 1                ; 2 uses
  %i.cc = icmp eq i64 %i.cb, 4
  br i1 %i.cc, label %eset_first_fit.exit, label %.lr.ph89, !llvm.loop !29

.lr.ph89:                                         ; preds = %.lr.ph.i35.i.preheader, %.lr.ph.i35.i
  %i.cd = phi i64 [ %i.cb, %.lr.ph.i35.i ], [ %i.bz, %.lr.ph.i35.i.preheader ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cd
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !28 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %.lr.ph.i35.i, label %fb_ffs.exit37.i, !llvm.loop !29

fb_ffs.exit37.i:                                  ; preds = %.lr.ph89, %bb.m
  %.141.i.lcssa.i32.i = phi i64 [ %i.bx, %bb.m ], [ %i.cf, %.lr.ph89 ]
  %.039.i.lcssa.i33.i = phi i64 [ %i.bt, %bb.m ], [ %i.cd, %.lr.ph89 ]
  %i.ch = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.141.i.lcssa.i32.i, i1 true)
  %i.ci = shl nuw nsw i64 %.039.i.lcssa.i33.i, 6
  %i.cj = or disjoint i64 %i.ci, %i.ch            ; 2 uses
  %i.ck = icmp samesign ult i64 %i.cj, 200
  br i1 %i.ck, label %bb.g, label %eset_first_fit.exit, !llvm.loop !30

eset_first_fit.exit:                              ; preds = %.lr.ph.i.i, %.lr.ph.i.i.1, %.lr.ph.2, %bb.g, %bb.l, %fb_ffs.exit37.i, %.lr.ph.i35.i.preheader, %.lr.ph.i35.i, %.lr.ph.i.i.preheader, %bb.d, %bb.e, %fb_ffs.exit.i
  %.0.i = phi ptr [ null, %bb.d ], [ %i.z, %bb.e ], [ null, %fb_ffs.exit.i ], [ %.1.i, %.lr.ph.i35.i ], [ %.1.i, %.lr.ph.i35.i.preheader ], [ null, %.lr.ph.i.i.preheader ], [ %.02742.i, %bb.g ], [ %.1.i, %bb.l ], [ %.1.i, %fb_ffs.exit37.i ], [ null, %.lr.ph.2 ], [ null, %.lr.ph.i.i.1 ], [ null, %.lr.ph.i.i ] ; 2 uses
  %i.cl = icmp ugt i64 %2, 4096
  %i.cm = icmp eq ptr %.0.i, null
  %or.cond = select i1 %i.cl, i1 %i.cm, i1 false
  br i1 %or.cond, label %bb.n, label %eset_fit_alignment.exit

bb.n:                                             ; preds = %eset_first_fit.exit
  %i.cn = tail call i64 @je_sz_psz_quantize_ceil(i64 noundef %1) #7 ; 4 uses
  %i.co = icmp ugt i64 %i.cn, 8070450532247928832
  br i1 %i.co, label %sz_psz2ind.exit37.i, label %bb.o, !prof !23

bb.o:                                             ; preds = %bb.n
  %i.cp = icmp ne i64 %i.cn, 0
  tail call void @llvm.assume(i1 %i.cp)
  %i.cq = add nsw i64 %i.cn, -1                   ; 2 uses
  %i.cr = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cq, i1 false)
  %i.cs = trunc nuw nsw i64 %i.cr to i32
  %i.ct = tail call i32 @llvm.usub.sat.i32(i32 50, i32 %i.cs) ; 2 uses
  %i.cu = icmp samesign ult i64 %i.cn, 16385
  %i.cv = add nuw nsw i32 %i.ct, 11
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = select i1 %i.cu, i64 12, i64 %i.cw
  %i.cy = lshr i64 %i.cq, %i.cx
  %i.cz = trunc i64 %i.cy to i32
  %i.da = and i32 %i.cz, 3
  %i.db = shl nuw nsw i32 %i.ct, 2
  %i.dc = or disjoint i32 %i.da, %i.db
  %i.dd = zext nneg i32 %i.dc to i64
  br label %sz_psz2ind.exit37.i

sz_psz2ind.exit37.i:                              ; preds = %bb.o, %bb.n
  %.0.i36.i = phi i64 [ %i.dd, %bb.o ], [ 199, %bb.n ] ; 2 uses
  %i.de = tail call i64 @je_sz_psz_quantize_ceil(i64 noundef %i.d) #7 ; 4 uses
  %i.df = icmp ugt i64 %i.de, 8070450532247928832
  br i1 %i.df, label %sz_psz2ind.exit.i20, label %bb.p, !prof !23

bb.p:                                             ; preds = %sz_psz2ind.exit37.i
  %i.dg = icmp ne i64 %i.de, 0
  tail call void @llvm.assume(i1 %i.dg)
  %i.dh = add nsw i64 %i.de, -1                   ; 2 uses
  %i.di = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dh, i1 false)
  %i.dj = trunc nuw nsw i64 %i.di to i32
  %i.dk = tail call i32 @llvm.usub.sat.i32(i32 50, i32 %i.dj) ; 2 uses
  %i.dl = icmp samesign ult i64 %i.de, 16385
  %i.dm = add nuw nsw i32 %i.dk, 11
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = select i1 %i.dl, i64 12, i64 %i.dn
  %i.dp = lshr i64 %i.dh, %i.do
  %i.dq = trunc i64 %i.dp to i32
  %i.dr = and i32 %i.dq, 3
  %i.ds = shl nuw nsw i32 %i.dk, 2
  %i.dt = or disjoint i32 %i.dr, %i.ds
  br label %sz_psz2ind.exit.i20

sz_psz2ind.exit.i20:                              ; preds = %bb.p, %sz_psz2ind.exit37.i
  %.0.i.i21 = phi i32 [ %i.dt, %bb.p ], [ 199, %sz_psz2ind.exit37.i ] ; 2 uses
  %i.du = lshr i64 %.0.i36.i, 6                   ; 5 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.du
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !28
  %i.dx = and i64 %.0.i36.i, 63
  %notmask.i.i.i22 = shl nsw i64 -1, %i.dx
  %i.dy = and i64 %i.dw, %notmask.i.i.i22         ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %.lr.ph.i.i27.preheader, label %._crit_edge.i.i

.lr.ph.i.i27.preheader:                           ; preds = %sz_psz2ind.exit.i20
  %i.ea = add nuw nsw i64 %i.du, 1                ; 3 uses
  %i.eb = icmp eq i64 %i.ea, 4
  br i1 %i.eb, label %fb_ffs.exit.i25, label %.lr.ph91

.lr.ph.i.i27:                                     ; preds = %.lr.ph91
  %i.ec = add nuw nsw i64 %i.du, 2                ; 3 uses
  %i.ed = icmp eq i64 %i.ec, 4
  br i1 %i.ed, label %fb_ffs.exit.i25, label %.lr.ph91.1

.lr.ph91.1:                                       ; preds = %.lr.ph.i.i27
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ec
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !28 ; 2 uses
  %i.eg = icmp eq i64 %i.ef, 0
  br i1 %i.eg, label %.lr.ph.i.i27.1, label %._crit_edge.i.i, !llvm.loop !29

.lr.ph.i.i27.1:                                   ; preds = %.lr.ph91.1
  %i.eh = add nuw nsw i64 %i.du, 3                ; 3 uses
  %i.ei = icmp eq i64 %i.eh, 4
  br i1 %i.ei, label %fb_ffs.exit.i25, label %.lr.ph91.2

.lr.ph91.2:                                       ; preds = %.lr.ph.i.i27.1
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.eh
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !28 ; 2 uses
  %i.el = icmp eq i64 %i.ek, 0
  br i1 %i.el, label %fb_ffs.exit.i25, label %._crit_edge.i.i, !llvm.loop !29

.lr.ph91:                                         ; preds = %.lr.ph.i.i27.preheader
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ea
  %i.en = load i64, ptr %i.em, align 8, !tbaa !28 ; 2 uses
  %i.eo = icmp eq i64 %i.en, 0
  br i1 %i.eo, label %.lr.ph.i.i27, label %._crit_edge.i.i, !llvm.loop !29

._crit_edge.i.i:                                  ; preds = %.lr.ph91, %.lr.ph91.1, %.lr.ph91.2, %sz_psz2ind.exit.i20
  %.141.i.lcssa.i.i23 = phi i64 [ %i.dy, %sz_psz2ind.exit.i20 ], [ %i.en, %.lr.ph91 ], [ %i.ef, %.lr.ph91.1 ], [ %i.ek, %.lr.ph91.2 ]
  %.039.i.lcssa.i.i24 = phi i64 [ %i.du, %sz_psz2ind.exit.i20 ], [ %i.ea, %.lr.ph91 ], [ %i.ec, %.lr.ph91.1 ], [ %i.eh, %.lr.ph91.2 ]
  %i.ep = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.141.i.lcssa.i.i23, i1 true)
  %i.eq = shl nuw nsw i64 %.039.i.lcssa.i.i24, 6
  %i.er = or disjoint i64 %i.eq, %i.ep
  br label %fb_ffs.exit.i25

fb_ffs.exit.i25:                                  ; preds = %.lr.ph.i.i27, %.lr.ph.i.i27.1, %.lr.ph91.2, %.lr.ph.i.i27.preheader, %._crit_edge.i.i
  %.1.i.i.i = phi i64 [ %i.er, %._crit_edge.i.i ], [ 200, %.lr.ph.i.i27.preheader ], [ 200, %.lr.ph91.2 ], [ 200, %.lr.ph.i.i27.1 ], [ 200, %.lr.ph.i.i27 ] ; 2 uses
  %i.es = add i64 %2, -1
  %.02855.i = trunc nuw nsw i64 %.1.i.i.i to i32
  %.not3556.i = icmp ugt i32 %.0.i.i21, %.02855.i
  br i1 %.not3556.i, label %.lr.ph.i26, label %eset_fit_alignment.exit

.lr.ph.i26:                                       ; preds = %fb_ffs.exit.i25
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.eu = sub i64 0, %i.b
  br label %bb.q

bb.q:                                             ; preds = %fb_ffs.exit46.i, %.lr.ph.i26
  %.028.in57.i = phi i64 [ %.1.i.i.i, %.lr.ph.i26 ], [ %.1.i.i43.i, %fb_ffs.exit46.i ]
  %i.ev = and i64 %.028.in57.i, 4294967295        ; 2 uses
  %i.ew = getelementptr inbounds nuw [32 x i8], ptr %i.et, i64 %i.ev
  %i.ex = tail call ptr @je_edata_heap_first(ptr noundef nonnull %i.ew) #7 ; 3 uses
  %i.ey = getelementptr i8, ptr %i.ex, i64 8
  %.val38.i = load ptr, ptr %i.ey, align 8, !tbaa !24
  %i.ez = ptrtoint ptr %.val38.i to i64
  %i.fa = and i64 %i.ez, -4096                    ; 3 uses
  %i.fb = getelementptr i8, ptr %i.ex, i64 16
  %.val.i = load i64, ptr %i.fb, align 8, !tbaa !22
  %i.fc = and i64 %.val.i, -4096
  %i.fd = add i64 %i.es, %i.fa
  %i.fe = and i64 %i.fd, %i.eu                    ; 3 uses
  %i.ff = icmp ult i64 %i.fe, %i.fa
  %i.fg = add i64 %i.fc, %i.fa                    ; 2 uses
  %.not.i = icmp ule i64 %i.fg, %i.fe
  %or.cond.not80.i = select i1 %i.ff, i1 true, i1 %.not.i
  %i.fh = sub nuw i64 %i.fg, %i.fe
  %.not34.i = icmp ult i64 %i.fh, %1
  %or.cond77.i = select i1 %or.cond.not80.i, i1 true, i1 %.not34.i
  br i1 %or.cond77.i, label %select.unfold.i, label %eset_fit_alignment.exit

select.unfold.i:                                  ; preds = %bb.q
  %i.fi = add nuw nsw i64 %i.ev, 1                ; 2 uses
  %i.fj = lshr i64 %i.fi, 6                       ; 3 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fj
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !28
  %i.fm = and i64 %i.fi, 63
  %notmask.i.i39.i = shl nsw i64 -1, %i.fm
  %i.fn = and i64 %i.fl, %notmask.i.i39.i         ; 2 uses
  %i.fo = icmp eq i64 %i.fn, 0
  br i1 %i.fo, label %.lr.ph.i44.i.preheader, label %._crit_edge.i40.i

.lr.ph.i44.i.preheader:                           ; preds = %select.unfold.i
  %i.fp = add nuw nsw i64 %i.fj, 1                ; 2 uses
  %i.fq = icmp eq i64 %i.fp, 4
  br i1 %i.fq, label %fb_ffs.exit46.i, label %.lr.ph92

.lr.ph.i44.i:                                     ; preds = %.lr.ph92
  %i.fr = add nuw nsw i64 %i.ft, 1                ; 2 uses
  %i.fs = icmp eq i64 %i.fr, 4
  br i1 %i.fs, label %fb_ffs.exit46.i, label %.lr.ph92, !llvm.loop !29

.lr.ph92:                                         ; preds = %.lr.ph.i44.i.preheader, %.lr.ph.i44.i
  %i.ft = phi i64 [ %i.fr, %.lr.ph.i44.i ], [ %i.fp, %.lr.ph.i44.i.preheader ] ; 3 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ft
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !28 ; 2 uses
  %i.fw = icmp eq i64 %i.fv, 0
  br i1 %i.fw, label %.lr.ph.i44.i, label %._crit_edge.i40.i, !llvm.loop !29

._crit_edge.i40.i:                                ; preds = %.lr.ph92, %select.unfold.i
  %.141.i.lcssa.i41.i = phi i64 [ %i.fn, %select.unfold.i ], [ %i.fv, %.lr.ph92 ]
  %.039.i.lcssa.i42.i = phi i64 [ %i.fj, %select.unfold.i ], [ %i.ft, %.lr.ph92 ]
  %i.fx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.141.i.lcssa.i41.i, i1 true)
  %i.fy = shl i64 %.039.i.lcssa.i42.i, 6
  %i.fz = or disjoint i64 %i.fy, %i.fx
  br label %fb_ffs.exit46.i

fb_ffs.exit46.i:                                  ; preds = %.lr.ph.i44.i, %.lr.ph.i44.i.preheader, %._crit_edge.i40.i
  %.1.i.i43.i = phi i64 [ %i.fz, %._crit_edge.i40.i ], [ 200, %.lr.ph.i44.i.preheader ], [ 200, %.lr.ph.i44.i ] ; 2 uses
  %.028.i = trunc i64 %.1.i.i43.i to i32
  %.not35.i = icmp ugt i32 %.0.i.i21, %.028.i
  br i1 %.not35.i, label %bb.q, label %eset_fit_alignment.exit, !llvm.loop !31

eset_fit_alignment.exit:                          ; preds = %fb_ffs.exit46.i, %bb.q, %fb_ffs.exit.i25, %eset_first_fit.exit, %bb.a
  %.016 = phi ptr [ null, %bb.a ], [ %.0.i, %eset_first_fit.exit ], [ null, %fb_ffs.exit.i25 ], [ null, %fb_ffs.exit46.i ], [ %i.ex, %bb.q ]
  ret ptr %.016
}

declare void @je_edata_heap_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #4

declare i64 @je_sz_psz_quantize_ceil(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !14, i64 0}
!12 = !{!"", !13, i64 0}
!13 = !{!"", !14, i64 0}
!14 = !{!"p1 _ZTS7edata_s", !15, i64 0}
!15 = !{!"any pointer", !9, i64 0}
!16 = !{!17, !8, i64 9648}
!17 = !{!"eset_s", !9, i64 0, !9, i64 32, !9, i64 6432, !12, i64 9632, !18, i64 9640, !8, i64 9648}
!18 = !{!"", !19, i64 0}
!19 = !{!"long", !9, i64 0}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!9, !9, i64 0}
!23 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!24 = !{!25, !15, i64 8}
!25 = !{!"edata_s", !19, i64 0, !15, i64 8, !9, i64 16, !26, i64 24, !19, i64 32, !9, i64 40, !9, i64 64}
!26 = !{!"p1 _ZTS8hpdata_s", !15, i64 0}
!27 = !{!25, !19, i64 32}
!28 = !{!19, !19, i64 0}
!29 = distinct !{!29, !21}
!30 = distinct !{!30, !21}
!31 = distinct !{!31, !21}
end_hunk_0
