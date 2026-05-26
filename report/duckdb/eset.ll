inline.NumInlined: 39
inline.NumDeleted: 26
begin_hunk_0_@duckdb_je_eset_fit:bb.a
  %i.bn = shl nsw i32 %i.bm, 1
  %i.bo = tail call i32 @llvm.ucmp.i32.i64(i64 %i.bl, i64 %.sroa.5.043.i)
  %i.bp = add nsw i32 %i.bn, %i.bo
  %i.bq = icmp slt i32 %i.bp, 0
  br i1 %i.bq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.br = getelementptr inbounds nuw [32 x i8], ptr %i.az, i64 %.025.in45.i ; 3 uses
  %i.bs = tail call ptr @duckdb_je_edata_heap_first(ptr noundef nonnull %i.br) #7
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %.sroa.0.0.copyload.i = load i64, ptr %i.bt, align 8, !tbaa !22
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !22
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1.i = phi ptr [ %i.bs, %bb.j ], [ %.02741.i, %bb.i ] ; 5 uses
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.copyload.i, %bb.j ], [ %.sroa.0.042.i, %bb.i ]
  %.sroa.5.1.i = phi i64 [ %.sroa.5.0.copyload.i, %bb.j ], [ %.sroa.5.043.i, %bb.i ]
  %i.bu = icmp eq i64 %.025.in45.i, 199
  br i1 %i.bu, label %eset_first_fit.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bv = add nuw nsw i64 %.025.in45.i, 1         ; 2 uses
  %i.bw = lshr i64 %i.bv, 6                       ; 3 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !22
  %i.bz = and i64 %i.bv, 63
  %notmask.i.i29.i = shl nsw i64 -1, %i.bz
  %i.ca = and i64 %i.by, %notmask.i.i29.i         ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %.lr.ph.i34.i.preheader, label %fb_ffs.exit36.i

.lr.ph.i34.i.preheader:                           ; preds = %bb.l
  %i.cc = add nuw nsw i64 %i.bw, 1                ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 4
  br i1 %i.cd, label %eset_first_fit.exit, label %.lr.ph87

.lr.ph.i34.i:                                     ; preds = %.lr.ph87
  %i.ce = add nuw nsw i64 %i.cg, 1                ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 4
  br i1 %i.cf, label %eset_first_fit.exit, label %.lr.ph87

.lr.ph87:                                         ; preds = %.lr.ph.i34.i.preheader, %.lr.ph.i34.i
  %i.cg = phi i64 [ %i.ce, %.lr.ph.i34.i ], [ %i.cc, %.lr.ph.i34.i.preheader ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !22 ; 2 uses
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %.lr.ph.i34.i, label %fb_ffs.exit36.i

fb_ffs.exit36.i:                                  ; preds = %.lr.ph87, %bb.l
  %.141.i.lcssa.i31.i = phi i64 [ %i.ca, %bb.l ], [ %i.ci, %.lr.ph87 ]
  %.039.i.lcssa.i32.i = phi i64 [ %i.bw, %bb.l ], [ %i.cg, %.lr.ph87 ]
  %i.ck = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.141.i.lcssa.i31.i, i1 true)
  %i.cl = shl nuw nsw i64 %.039.i.lcssa.i32.i, 6
  %i.cm = or disjoint i64 %i.cl, %i.ck            ; 2 uses
  %i.cn = icmp samesign ult i64 %i.cm, 200
  br i1 %i.cn, label %bb.g, label %eset_first_fit.exit

eset_first_fit.exit:                              ; preds = %.lr.ph.i.i, %.lr.ph.i.i.1, %.lr.ph.2, %bb.g, %bb.k, %fb_ffs.exit36.i, %.lr.ph.i34.i.preheader, %.lr.ph.i34.i, %.lr.ph.i.i.preheader, %bb.d, %bb.e, %fb_ffs.exit.i
  %.0.i = phi ptr [ null, %bb.d ], [ %i.z, %bb.e ], [ null, %fb_ffs.exit.i ], [ %.1.i, %.lr.ph.i34.i ], [ %.1.i, %.lr.ph.i34.i.preheader ], [ null, %.lr.ph.i.i.preheader ], [ %.02741.i, %bb.g ], [ %.1.i, %bb.k ], [ %.1.i, %fb_ffs.exit36.i ], [ null, %.lr.ph.2 ], [ null, %.lr.ph.i.i.1 ], [ null, %.lr.ph.i.i ] ; 2 uses
  %i.co = icmp ugt i64 %2, 4096
  %i.cp = icmp eq ptr %.0.i, null
  %or.cond = select i1 %i.co, i1 %i.cp, i1 false
  br i1 %or.cond, label %bb.m, label %eset_fit_alignment.exit

bb.m:                                             ; preds = %eset_first_fit.exit
  %i.cq = tail call i64 @duckdb_je_sz_psz_quantize_ceil(i64 noundef %1) #7 ; 4 uses
  %i.cr = icmp ugt i64 %i.cq, 8070450532247928832
  br i1 %i.cr, label %sz_psz2ind.exit37.i, label %bb.n, !prof !17

bb.n:                                             ; preds = %bb.m
  %i.cs = icmp ne i64 %i.cq, 0
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = add nsw i64 %i.cq, -1                   ; 2 uses
  %i.cu = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ct, i1 false)
  %i.cv = trunc nuw nsw i64 %i.cu to i32
  %i.cw = tail call i32 @llvm.usub.sat.i32(i32 50, i32 %i.cv) ; 2 uses
  %i.cx = icmp samesign ult i64 %i.cq, 16385
  %i.cy = add nuw nsw i32 %i.cw, 11
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = select i1 %i.cx, i64 12, i64 %i.cz
  %i.db = lshr i64 %i.ct, %i.da
  %i.dc = trunc i64 %i.db to i32
  %i.dd = and i32 %i.dc, 3
  %i.de = shl nuw nsw i32 %i.cw, 2
  %i.df = or disjoint i32 %i.dd, %i.de
  %i.dg = zext nneg i32 %i.df to i64
  br label %sz_psz2ind.exit37.i

sz_psz2ind.exit37.i:                              ; preds = %bb.n, %bb.m
  %.0.i36.i = phi i64 [ %i.dg, %bb.n ], [ 199, %bb.m ] ; 2 uses
  %i.dh = tail call i64 @duckdb_je_sz_psz_quantize_ceil(i64 noundef %i.d) #7 ; 4 uses
  %i.di = icmp ugt i64 %i.dh, 8070450532247928832
  br i1 %i.di, label %sz_psz2ind.exit.i20, label %bb.o, !prof !17

bb.o:                                             ; preds = %sz_psz2ind.exit37.i
  %i.dj = icmp ne i64 %i.dh, 0
  tail call void @llvm.assume(i1 %i.dj)
  %i.dk = add nsw i64 %i.dh, -1                   ; 2 uses
  %i.dl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dk, i1 false)
  %i.dm = trunc nuw nsw i64 %i.dl to i32
  %i.dn = tail call i32 @llvm.usub.sat.i32(i32 50, i32 %i.dm) ; 2 uses
  %i.do = icmp samesign ult i64 %i.dh, 16385
  %i.dp = add nuw nsw i32 %i.dn, 11
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = select i1 %i.do, i64 12, i64 %i.dq
  %i.ds = lshr i64 %i.dk, %i.dr
  %i.dt = trunc i64 %i.ds to i32
  %i.du = and i32 %i.dt, 3
  %i.dv = shl nuw nsw i32 %i.dn, 2
  %i.dw = or disjoint i32 %i.du, %i.dv
  br label %sz_psz2ind.exit.i20

sz_psz2ind.exit.i20:                              ; preds = %bb.o, %sz_psz2ind.exit37.i
  %.0.i.i21 = phi i32 [ %i.dw, %bb.o ], [ 199, %sz_psz2ind.exit37.i ] ; 2 uses
  %i.dx = lshr i64 %.0.i36.i, 6                   ; 5 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dx
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !22
  %i.ea = and i64 %.0.i36.i, 63
  %notmask.i.i.i22 = shl nsw i64 -1, %i.ea
  %i.eb = and i64 %i.dz, %notmask.i.i.i22         ; 2 uses
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %.lr.ph.i.i27.preheader, label %._crit_edge.i.i

.lr.ph.i.i27.preheader:                           ; preds = %sz_psz2ind.exit.i20
  %i.ed = add nuw nsw i64 %i.dx, 1                ; 3 uses
  %i.ee = icmp eq i64 %i.ed, 4
  br i1 %i.ee, label %fb_ffs.exit.i25, label %.lr.ph89

.lr.ph.i.i27:                                     ; preds = %.lr.ph89
  %i.ef = add nuw nsw i64 %i.dx, 2                ; 3 uses
  %i.eg = icmp eq i64 %i.ef, 4
  br i1 %i.eg, label %fb_ffs.exit.i25, label %.lr.ph89.1

.lr.ph89.1:                                       ; preds = %.lr.ph.i.i27
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ef
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !22 ; 2 uses
  %i.ej = icmp eq i64 %i.ei, 0
  br i1 %i.ej, label %.lr.ph.i.i27.1, label %._crit_edge.i.i

.lr.ph.i.i27.1:                                   ; preds = %.lr.ph89.1
  %i.ek = add nuw nsw i64 %i.dx, 3                ; 3 uses
  %i.el = icmp eq i64 %i.ek, 4
  br i1 %i.el, label %fb_ffs.exit.i25, label %.lr.ph89.2

.lr.ph89.2:                                       ; preds = %.lr.ph.i.i27.1
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ek
  %i.en = load i64, ptr %i.em, align 8, !tbaa !22 ; 2 uses
  %i.eo = icmp eq i64 %i.en, 0
  br i1 %i.eo, label %fb_ffs.exit.i25, label %._crit_edge.i.i

.lr.ph89:                                         ; preds = %.lr.ph.i.i27.preheader
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ed
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !22 ; 2 uses
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %.lr.ph.i.i27, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph89, %.lr.ph89.1, %.lr.ph89.2, %sz_psz2ind.exit.i20
  %.141.i.lcssa.i.i23 = phi i64 [ %i.eb, %sz_psz2ind.exit.i20 ], [ %i.eq, %.lr.ph89 ], [ %i.ei, %.lr.ph89.1 ], [ %i.en, %.lr.ph89.2 ]
  %.039.i.lcssa.i.i24 = phi i64 [ %i.dx, %sz_psz2ind.exit.i20 ], [ %i.ed, %.lr.ph89 ], [ %i.ef, %.lr.ph89.1 ], [ %i.ek, %.lr.ph89.2 ]
  %i.es = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.141.i.lcssa.i.i23, i1 true)
  %i.et = shl nuw nsw i64 %.039.i.lcssa.i.i24, 6
  %i.eu = or disjoint i64 %i.et, %i.es
  br label %fb_ffs.exit.i25

fb_ffs.exit.i25:                                  ; preds = %.lr.ph.i.i27, %.lr.ph.i.i27.1, %.lr.ph89.2, %.lr.ph.i.i27.preheader, %._crit_edge.i.i
  %.1.i.i.i = phi i64 [ %i.eu, %._crit_edge.i.i ], [ 200, %.lr.ph.i.i27.preheader ], [ 200, %.lr.ph89.2 ], [ 200, %.lr.ph.i.i27.1 ], [ 200, %.lr.ph.i.i27 ] ; 2 uses
  %i.ev = add i64 %i.b, -1
  %.02855.i = trunc nuw nsw i64 %.1.i.i.i to i32
  %.not3556.i = icmp ugt i32 %.0.i.i21, %.02855.i
  br i1 %.not3556.i, label %.lr.ph.i26, label %eset_fit_alignment.exit

.lr.ph.i26:                                       ; preds = %fb_ffs.exit.i25
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ex = sub i64 0, %i.b
  br label %bb.p

bb.p:                                             ; preds = %fb_ffs.exit46.i, %.lr.ph.i26
  %.028.in57.i = phi i64 [ %.1.i.i.i, %.lr.ph.i26 ], [ %.1.i.i43.i, %fb_ffs.exit46.i ]
  %i.ey = and i64 %.028.in57.i, 4294967295        ; 2 uses
  %i.ez = getelementptr inbounds nuw [32 x i8], ptr %i.ew, i64 %i.ey
  %i.fa = tail call ptr @duckdb_je_edata_heap_first(ptr noundef nonnull %i.ez) #7 ; 3 uses
  %i.fb = getelementptr i8, ptr %i.fa, i64 8
  %.val38.i = load ptr, ptr %i.fb, align 8, !tbaa !18 ; 2 uses
  %i.fc = ptrtoint ptr %.val38.i to i64
  %i.fd = and i64 %i.fc, 4095
  %i.fe = sub nsw i64 0, %i.fd
  %i.ff = getelementptr inbounds i8, ptr %.val38.i, i64 %i.fe
  %i.fg = ptrtoint ptr %i.ff to i64               ; 3 uses
  %i.fh = getelementptr i8, ptr %i.fa, i64 16
  %.val.i = load i64, ptr %i.fh, align 8, !tbaa !16
  %i.fi = and i64 %.val.i, -4096
  %i.fj = add i64 %i.ev, %i.fg
  %i.fk = and i64 %i.fj, %i.ex                    ; 3 uses
  %i.fl = icmp ult i64 %i.fk, %i.fg
  %i.fm = add i64 %i.fi, %i.fg                    ; 2 uses
  %.not.i = icmp ule i64 %i.fm, %i.fk
  %or.cond.not79.i = select i1 %i.fl, i1 true, i1 %.not.i
  %i.fn = sub nuw i64 %i.fm, %i.fk
  %.fr.i = freeze i64 %i.fn
  %.not34.i = icmp ult i64 %.fr.i, %1
  %or.cond78.i = or i1 %or.cond.not79.i, %.not34.i
  br i1 %or.cond78.i, label %select.unfold.i, label %eset_fit_alignment.exit

select.unfold.i:                                  ; preds = %bb.p
  %i.fo = add nuw nsw i64 %i.ey, 1                ; 2 uses
  %i.fp = lshr i64 %i.fo, 6                       ; 3 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fp
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !22
  %i.fs = and i64 %i.fo, 63
  %notmask.i.i39.i = shl nsw i64 -1, %i.fs
  %i.ft = and i64 %i.fr, %notmask.i.i39.i         ; 2 uses
  %i.fu = icmp eq i64 %i.ft, 0
  br i1 %i.fu, label %.lr.ph.i44.i.preheader, label %._crit_edge.i40.i

.lr.ph.i44.i.preheader:                           ; preds = %select.unfold.i
  %i.fv = add nuw nsw i64 %i.fp, 1                ; 2 uses
  %i.fw = icmp eq i64 %i.fv, 4
  br i1 %i.fw, label %fb_ffs.exit46.i, label %.lr.ph90

.lr.ph.i44.i:                                     ; preds = %.lr.ph90
  %i.fx = add nuw nsw i64 %i.fz, 1                ; 2 uses
  %i.fy = icmp eq i64 %i.fx, 4
  br i1 %i.fy, label %fb_ffs.exit46.i, label %.lr.ph90

.lr.ph90:                                         ; preds = %.lr.ph.i44.i.preheader, %.lr.ph.i44.i
  %i.fz = phi i64 [ %i.fx, %.lr.ph.i44.i ], [ %i.fv, %.lr.ph.i44.i.preheader ] ; 3 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fz
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !22 ; 2 uses
  %i.gc = icmp eq i64 %i.gb, 0
  br i1 %i.gc, label %.lr.ph.i44.i, label %._crit_edge.i40.i

._crit_edge.i40.i:                                ; preds = %.lr.ph90, %select.unfold.i
  %.141.i.lcssa.i41.i = phi i64 [ %i.ft, %select.unfold.i ], [ %i.gb, %.lr.ph90 ]
  %.039.i.lcssa.i42.i = phi i64 [ %i.fp, %select.unfold.i ], [ %i.fz, %.lr.ph90 ]
  %i.gd = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.141.i.lcssa.i41.i, i1 true)
  %i.ge = shl i64 %.039.i.lcssa.i42.i, 6
  %i.gf = or disjoint i64 %i.ge, %i.gd
  br label %fb_ffs.exit46.i

fb_ffs.exit46.i:                                  ; preds = %.lr.ph.i44.i, %.lr.ph.i44.i.preheader, %._crit_edge.i40.i
  %.1.i.i43.i = phi i64 [ %i.gf, %._crit_edge.i40.i ], [ 200, %.lr.ph.i44.i.preheader ], [ 200, %.lr.ph.i44.i ] ; 2 uses
  %.028.i = trunc i64 %.1.i.i43.i to i32
  %.not35.i = icmp ugt i32 %.0.i.i21, %.028.i
  br i1 %.not35.i, label %bb.p, label %eset_fit_alignment.exit

eset_fit_alignment.exit:                          ; preds = %fb_ffs.exit46.i, %bb.p, %fb_ffs.exit.i25, %eset_first_fit.exit, %bb.a
  %.016 = phi ptr [ null, %bb.a ], [ %.0.i, %eset_first_fit.exit ], [ null, %fb_ffs.exit.i25 ], [ null, %fb_ffs.exit46.i ], [ %i.fa, %bb.p ]
  ret ptr %.016
}

declare void @duckdb_je_edata_heap_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #5

declare i64 @duckdb_je_sz_psz_quantize_ceil(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !10, i64 0}
!8 = !{!"", !9, i64 0}
!9 = !{!"", !10, i64 0}
!10 = !{!"p1 _ZTS7edata_s", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!13, !4, i64 9648}
!13 = !{!"eset_s", !5, i64 0, !5, i64 32, !5, i64 6432, !8, i64 9632, !14, i64 9640, !4, i64 9648}
!14 = !{!"", !15, i64 0}
!15 = !{!"long", !5, i64 0}
!16 = !{!5, !5, i64 0}
!17 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!18 = !{!19, !11, i64 8}
!19 = !{!"edata_s", !15, i64 0, !11, i64 8, !5, i64 16, !20, i64 24, !15, i64 32, !5, i64 40, !5, i64 64}
!20 = !{!"p1 _ZTS8hpdata_s", !11, i64 0}
!21 = !{!19, !15, i64 32}
!22 = !{!15, !15, i64 0}
end_hunk_0
