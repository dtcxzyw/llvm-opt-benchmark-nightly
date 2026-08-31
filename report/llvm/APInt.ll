Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/APInt?download=true
inline.NumInlined: 1396
inline.NumDeleted: 239
loop-unroll.NumRuntimeUnrolled: 94
loop-unroll.NumUnrolled: 94
begin_hunk_0_@_ZN4llvm5APInt8tcDivideEPmPKmS1_S1_j:bb.a
  %i.cy = zext nneg i32 %i.cx to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 %i.cy, i1 false)
  br label %_ZN4llvm5APInt11tcShiftLeftEPmjj.exit

_ZN4llvm5APInt11tcShiftLeftEPmjj.exit:            ; preds = %_ZN4llvm5APInt8tcAssignEPmPKmj.exit, %.loopexit.i
  br i1 %.not.i45, label %_ZN4llvm5APInt8tcAssignEPmPKmj.exit57.thread, label %.lr.ph.preheader.i51

_ZN4llvm5APInt8tcAssignEPmPKmj.exit57.thread:     ; preds = %_ZN4llvm5APInt11tcShiftLeftEPmjj.exit
  store i64 0, ptr %0, align 8, !tbaa !11
  br label %_ZN4llvm5APInt5tcSetEPmmj.exit

.lr.ph.preheader.i51:                             ; preds = %_ZN4llvm5APInt11tcShiftLeftEPmjj.exit
  %wide.trip.count.i52 = zext i32 %4 to i64       ; 6 uses
  %min.iters.check130 = icmp ult i32 %4, 8
  %i.cz = sub i64 %i.a, %i.b
  %diff.check128 = icmp ugt i64 %i.cz, -32
  %or.cond141 = or i1 %min.iters.check130, %diff.check128
  br i1 %or.cond141, label %.lr.ph.i53.preheader, label %vector.ph131

vector.ph131:                                     ; preds = %.lr.ph.preheader.i51
  %n.vec132 = and i64 %wide.trip.count.i52, 4294967292 ; 3 uses
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph131
  %index134 = phi i64 [ 0, %vector.ph131 ], [ %index.next137, %vector.body133 ] ; 3 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index134 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %wide.load135 = load <2 x i64>, ptr %i.da, align 8, !tbaa !11
  %wide.load136 = load <2 x i64>, ptr %i.db, align 8, !tbaa !11
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index134 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store <2 x i64> %wide.load135, ptr %i.dc, align 8, !tbaa !11
  store <2 x i64> %wide.load136, ptr %i.dd, align 8, !tbaa !11
  %index.next137 = add nuw i64 %index134, 4       ; 2 uses
  %i.de = icmp eq i64 %index.next137, %n.vec132
  br i1 %i.de, label %middle.block138, label %vector.body133, !llvm.loop !540

middle.block138:                                  ; preds = %vector.body133
  %cmp.n139 = icmp eq i64 %n.vec132, %wide.trip.count.i52
  br i1 %cmp.n139, label %_ZN4llvm5APInt8tcAssignEPmPKmj.exit57, label %.lr.ph.i53.preheader

.lr.ph.i53.preheader:                             ; preds = %.lr.ph.preheader.i51, %middle.block138
  %indvars.iv.i54.ph = phi i64 [ 0, %.lr.ph.preheader.i51 ], [ %n.vec132, %middle.block138 ] ; 3 uses
  %xtraiter155 = and i64 %wide.trip.count.i52, 3  ; 2 uses
  %lcmp.mod156.not = icmp eq i64 %xtraiter155, 0
  br i1 %lcmp.mod156.not, label %.lr.ph.i53.prol.loopexit, label %.lr.ph.i53.prol

.lr.ph.i53.prol:                                  ; preds = %.lr.ph.i53.preheader, %.lr.ph.i53.prol
  %indvars.iv.i54.prol = phi i64 [ %indvars.iv.next.i55.prol, %.lr.ph.i53.prol ], [ %indvars.iv.i54.ph, %.lr.ph.i53.preheader ] ; 3 uses
  %prol.iter157 = phi i64 [ %prol.iter157.next, %.lr.ph.i53.prol ], [ 0, %.lr.ph.i53.preheader ]
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i54.prol
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !11
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i54.prol
  store i64 %i.dg, ptr %i.dh, align 8, !tbaa !11
  %indvars.iv.next.i55.prol = add nuw nsw i64 %indvars.iv.i54.prol, 1 ; 2 uses
  %prol.iter157.next = add i64 %prol.iter157, 1   ; 2 uses
  %prol.iter157.cmp.not = icmp eq i64 %prol.iter157.next, %xtraiter155
  br i1 %prol.iter157.cmp.not, label %.lr.ph.i53.prol.loopexit, label %.lr.ph.i53.prol, !llvm.loop !541

.lr.ph.i53.prol.loopexit:                         ; preds = %.lr.ph.i53.prol, %.lr.ph.i53.preheader
  %indvars.iv.i54.unr = phi i64 [ %indvars.iv.i54.ph, %.lr.ph.i53.preheader ], [ %indvars.iv.next.i55.prol, %.lr.ph.i53.prol ]
  %i.di = sub nsw i64 %indvars.iv.i54.ph, %wide.trip.count.i52
  %i.dj = icmp ugt i64 %i.di, -4
  br i1 %i.dj, label %_ZN4llvm5APInt8tcAssignEPmPKmj.exit57, label %.lr.ph.i53

.lr.ph.i53:                                       ; preds = %.lr.ph.i53.prol.loopexit, %.lr.ph.i53
  %indvars.iv.i54 = phi i64 [ %indvars.iv.next.i55.3, %.lr.ph.i53 ], [ %indvars.iv.i54.unr, %.lr.ph.i53.prol.loopexit ] ; 6 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i54
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !11
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i54
  store i64 %i.dl, ptr %i.dm, align 8, !tbaa !11
  %indvars.iv.next.i55 = add nuw nsw i64 %indvars.iv.i54, 1 ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i55
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !11
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i55
  store i64 %i.do, ptr %i.dp, align 8, !tbaa !11
  %indvars.iv.next.i55.1 = add nuw nsw i64 %indvars.iv.i54, 2 ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i55.1
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !11
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i55.1
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !11
  %indvars.iv.next.i55.2 = add nuw nsw i64 %indvars.iv.i54, 3 ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i55.2
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !11
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i55.2
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !11
  %indvars.iv.next.i55.3 = add nuw nsw i64 %indvars.iv.i54, 4 ; 2 uses
  %exitcond.not.i56.3 = icmp eq i64 %indvars.iv.next.i55.3, %wide.trip.count.i52
  br i1 %exitcond.not.i56.3, label %_ZN4llvm5APInt8tcAssignEPmPKmj.exit57, label %.lr.ph.i53, !llvm.loop !542

_ZN4llvm5APInt8tcAssignEPmPKmj.exit57:            ; preds = %.lr.ph.i53.prol.loopexit, %.lr.ph.i53, %middle.block138
  store i64 0, ptr %0, align 8, !tbaa !11
  %.not = icmp eq i32 %4, 1
  br i1 %.not, label %_ZN4llvm5APInt5tcSetEPmmj.exit, label %.lr.ph.preheader.i58

.lr.ph.preheader.i58:                             ; preds = %_ZN4llvm5APInt8tcAssignEPmPKmj.exit57
  %scevgep.i = getelementptr i8, ptr %0, i64 8
  %i.dw = add i32 %4, -1
  %i.dx = zext i32 %i.dw to i64
  %i.dy = shl nuw nsw i64 %i.dx, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.dy, i1 false), !tbaa !11
  br label %_ZN4llvm5APInt5tcSetEPmmj.exit

_ZN4llvm5APInt5tcSetEPmmj.exit:                   ; preds = %_ZN4llvm5APInt8tcAssignEPmPKmj.exit57.thread, %_ZN4llvm5APInt8tcAssignEPmPKmj.exit57, %.lr.ph.preheader.i58
  %.pre-phi = phi i64 [ 0, %_ZN4llvm5APInt8tcAssignEPmPKmj.exit57.thread ], [ 1, %_ZN4llvm5APInt8tcAssignEPmPKmj.exit57 ], [ %wide.trip.count.i52, %.lr.ph.preheader.i58 ] ; 5 uses
  %.not32.i91 = icmp eq i32 %4, 1
  %i.dz = add nsw i64 %.pre-phi, -1               ; 3 uses
  %.not.i60123 = icmp eq i64 %.pre-phi, 0
  %xtraiter158 = and i64 %i.dz, 1
  %i.ea = icmp eq i64 %.pre-phi, 2
  %unroll_iter = and i64 %i.dz, -2
  %lcmp.mod162.not = icmp eq i64 %xtraiter158, 0
  %lcmp.mod163 = trunc i64 %i.dz to i1
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %_ZN4llvm5APInt5tcSetEPmmj.exit
  %.039 = phi i32 [ %i.q, %_ZN4llvm5APInt5tcSetEPmmj.exit ], [ %i.ev, %.loopexit ] ; 2 uses
  %.035 = phi i32 [ %i.r, %_ZN4llvm5APInt5tcSetEPmmj.exit ], [ %spec.select, %.loopexit ] ; 2 uses
  %.0 = phi i64 [ %i.u, %_ZN4llvm5APInt5tcSetEPmmj.exit ], [ %spec.select44, %.loopexit ] ; 2 uses
  br i1 %.not.i60123, label %select.unfold, label %.lr.ph125

bb.h:                                             ; preds = %.lr.ph125
  %.not.i60 = icmp eq i64 %i.eb, 0
  br i1 %.not.i60, label %select.unfold, label %.lr.ph125, !llvm.loop !68

.lr.ph125:                                        ; preds = %bb.g, %bb.h
  %indvars.iv.i59124 = phi i64 [ %i.eb, %bb.h ], [ %.pre-phi, %bb.g ]
  %i.eb = add nsw i64 %indvars.iv.i59124, -1      ; 4 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.eb
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !11 ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.eb
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !11 ; 2 uses
  %.not13.i = icmp eq i64 %i.ed, %i.ef
  br i1 %.not13.i, label %bb.h, label %bb.i, !llvm.loop !68

bb.i:                                             ; preds = %.lr.ph125
  %i.eg = icmp ugt i64 %i.ed, %i.ef
  br i1 %i.eg, label %select.unfold, label %_ZN4llvm5APInt9tcCompareEPKmS2_j.exit

select.unfold:                                    ; preds = %bb.h, %bb.g, %bb.i
  br i1 %.not.i45, label %_ZN4llvm5APInt10tcSubtractEPmPKmmj.exit, label %.lr.ph.i64

.lr.ph.i64:                                       ; preds = %select.unfold, %bb.l
  %indvars.iv.i65 = phi i64 [ %indvars.iv.next.i67, %bb.l ], [ 0, %select.unfold ] ; 3 uses
  %.02021.i = phi i1 [ %i.ep, %bb.l ], [ true, %select.unfold ]
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i65 ; 2 uses
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !11 ; 4 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i65
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !11 ; 3 uses
  br i1 %.02021.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i64
  %.neg.i = xor i64 %i.ek, -1
  %i.el = add i64 %i.ei, %.neg.i                  ; 2 uses
  %i.em = icmp uge i64 %i.el, %i.ei
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph.i64
  %i.en = sub i64 %i.ei, %i.ek
  %i.eo = icmp ugt i64 %i.ek, %i.ei
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sink.i = phi i64 [ %i.en, %bb.k ], [ %i.el, %bb.j ]
  %.1.in.i = phi i1 [ %i.eo, %bb.k ], [ %i.em, %bb.j ]
  store i64 %.sink.i, ptr %i.eh, align 8, !tbaa !11
  %indvars.iv.next.i67 = add nuw nsw i64 %indvars.iv.i65, 1 ; 2 uses
  %exitcond.not.i68 = icmp eq i64 %indvars.iv.next.i67, %.pre-phi
  %i.ep = xor i1 %.1.in.i, true
  br i1 %exitcond.not.i68, label %_ZN4llvm5APInt10tcSubtractEPmPKmmj.exit, label %.lr.ph.i64, !llvm.loop !36

_ZN4llvm5APInt10tcSubtractEPmPKmmj.exit:          ; preds = %bb.l, %select.unfold
  %i.eq = zext i32 %.035 to i64
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.eq ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !tbaa !11
  %i.et = or i64 %i.es, %.0
  store i64 %i.et, ptr %i.er, align 8, !tbaa !11
  br label %_ZN4llvm5APInt9tcCompareEPKmS2_j.exit

_ZN4llvm5APInt9tcCompareEPKmS2_j.exit:            ; preds = %bb.i, %_ZN4llvm5APInt10tcSubtractEPmPKmmj.exit
  %i.eu = icmp eq i32 %.039, 0
  br i1 %i.eu, label %_ZN4llvm5APInt5tcMSBEPKmj.exit.thread, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm5APInt9tcCompareEPKmS2_j.exit
  %i.ev = add i32 %.039, -1
  br i1 %.not.i45, label %.loopexit, label %.lr.ph.i72.preheader

.lr.ph.i72.preheader:                             ; preds = %bb.m
  %i.ew = load i64, ptr %3, align 8, !tbaa !11
  %i.ex = lshr i64 %i.ew, 1                       ; 3 uses
  store i64 %i.ex, ptr %3, align 8, !tbaa !11
  br i1 %.not32.i91, label %.loopexit, label %.lr.ph.i72.preheader142

.lr.ph.i72.preheader142:                          ; preds = %.lr.ph.i72.preheader
  br i1 %i.ea, label %.lr.ph.i72.epil.preheader, label %.lr.ph.i72

.lr.ph.i72:                                       ; preds = %.lr.ph.i72.preheader142, %.lr.ph.i72
  %indvars.iv.next.i7493 = phi i64 [ %indvars.iv.next.i74.1, %.lr.ph.i72 ], [ 1, %.lr.ph.i72.preheader142 ] ; 4 uses
  %i.ey = phi i64 [ %i.fl, %.lr.ph.i72 ], [ %i.ex, %.lr.ph.i72.preheader142 ]
  %i.ez = phi ptr [ %i.fk, %.lr.ph.i72 ], [ %3, %.lr.ph.i72.preheader142 ]
  %indvars.iv.i7392 = phi i64 [ %i.fg, %.lr.ph.i72 ], [ 0, %.lr.ph.i72.preheader142 ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i72 ], [ 0, %.lr.ph.i72.preheader142 ]
  %5 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i7392
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fa = load i64, ptr %6, align 8, !tbaa !11
  %i.fb = shl i64 %i.fa, 63
  %i.fc = or disjoint i64 %i.fb, %i.ey
  store i64 %i.fc, ptr %i.ez, align 8, !tbaa !11
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i7493 ; 3 uses
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !11
  %i.ff = lshr i64 %i.fe, 1                       ; 2 uses
  store i64 %i.ff, ptr %i.fd, align 8, !tbaa !11
  %i.fg = add nuw nsw i64 %indvars.iv.next.i7493, 1 ; 3 uses
  %7 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i7493
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fh = load i64, ptr %8, align 8, !tbaa !11    ; 2 uses
  %i.fi = shl i64 %i.fh, 63
  %i.fj = or disjoint i64 %i.fi, %i.ff
  store i64 %i.fj, ptr %i.fd, align 8, !tbaa !11
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.fg ; 3 uses
  %i.fl = lshr i64 %i.fh, 1                       ; 3 uses
  store i64 %i.fl, ptr %i.fk, align 8, !tbaa !11
  %indvars.iv.next.i74.1 = add nuw nsw i64 %indvars.iv.next.i7493, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i72

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i72
  br i1 %lcmp.mod162.not, label %.loopexit, label %.lr.ph.i72.epil.preheader

.lr.ph.i72.epil.preheader:                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i72.preheader142
  %indvars.iv.next.i7493.epil.init = phi i64 [ 1, %.lr.ph.i72.preheader142 ], [ %indvars.iv.next.i74.1, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init = phi i64 [ %i.ex, %.lr.ph.i72.preheader142 ], [ %i.fl, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init161 = phi ptr [ %3, %.lr.ph.i72.preheader142 ], [ %i.fk, %.loopexit.loopexit.unr-lcssa ]
  %indvars.iv.i7392.epil.init = phi i64 [ 0, %.lr.ph.i72.preheader142 ], [ %i.fg, %.loopexit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod163)
  %9 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i7392.epil.init
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.fm = load i64, ptr %10, align 8, !tbaa !11
  %i.fn = shl i64 %i.fm, 63
  %i.fo = or disjoint i64 %i.fn, %.epil.init
  store i64 %i.fo, ptr %.epil.init161, align 8, !tbaa !11
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i7493.epil.init ; 2 uses
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !11
  %i.fr = lshr i64 %i.fq, 1
  store i64 %i.fr, ptr %i.fp, align 8, !tbaa !11
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i72.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.lr.ph.i72.preheader, %bb.m
  %i.fs = lshr i64 %.0, 1                         ; 2 uses
  %i.ft = icmp eq i64 %i.fs, 0                    ; 2 uses
  %i.fu = sext i1 %i.ft to i32
  %spec.select = add i32 %.035, %i.fu
  %spec.select44 = select i1 %i.ft, i64 -9223372036854775808, i64 %i.fs
  br label %bb.g

_ZN4llvm5APInt5tcMSBEPKmj.exit.thread:            ; preds = %bb.c, %_ZN4llvm5APInt9tcCompareEPKmS2_j.exit, %_ZN4llvm5APInt5tcMSBEPKmj.exit
  %.041 = phi i32 [ 1, %_ZN4llvm5APInt5tcMSBEPKmj.exit ], [ 0, %_ZN4llvm5APInt9tcCompareEPKmS2_j.exit ], [ 1, %bb.c ]
  ret i32 %.041
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm8APIntOps12RoundingUDivERKNS_5APIntES3_NS1_8RoundingE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::APInt") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(12) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.llvm::APInt", align 8       ; 9 uses
  %5 = alloca %"class.llvm::APInt", align 8       ; 8 uses
  %i.a = icmp eq i32 %3, 2
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK4llvm5APInt4udivERKS0_(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %2)
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store i32 1, ptr %i.b, align 8, !tbaa !8
  store i64 0, ptr %4, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i32 1, ptr %i.c, align 8, !tbaa !8
  store i64 0, ptr %5, align 8, !tbaa !10
  call void @_ZN4llvm5APInt7udivremERKS0_S2_RS0_S3_(ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %5)
  %i.d = load i32, ptr %i.c, align 8, !tbaa !8    ; 7 uses
  %i.e = icmp ult i32 %i.d, 65
  br i1 %i.e, label %.split, label %.lr.ph.i.i

.split:                                           ; preds = %bb.c
  %i.f = load i64, ptr %5, align 8, !tbaa !10
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.f, label %bb.g

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.h = zext i32 %i.d to i64
  %i.i = add nuw nsw i64 %i.h, 63
  %i.j = lshr i64 %i.i, 6                         ; 2 uses
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = load ptr, ptr %5, align 8, !tbaa !10
  %i.m = shl i32 %i.k, 6
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.e ], [ %i.j, %.lr.ph.i.i ] ; 2 uses
  %.019.i.i = phi i32 [ %i.t, %bb.e ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next.i
  %i.o = load i64, ptr %i.n, align 8, !tbaa !11   ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.e, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.d
  %i.q = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.o, i1 true)
  %i.r = trunc nuw nsw i64 %i.q to i32
  %i.s = or disjoint i32 %.019.i.i, %i.r
  br label %_ZNK4llvm5APInt6isZeroEv.exit

bb.e:                                             ; preds = %bb.d
  %i.t = add i32 %.019.i.i, 64
  %i.u = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.u, label %bb.d, label %_ZNK4llvm5APInt6isZeroEv.exit, !llvm.loop !30

_ZNK4llvm5APInt6isZeroEv.exit:                    ; preds = %bb.e, %.thread.i.i
  %.2.i.i = phi i32 [ %i.s, %.thread.i.i ], [ %i.m, %bb.e ]
  %i.v = and i32 %i.d, 63
  %.not.i.i = icmp eq i32 %i.v, 0
  %.neg.i.i = or i32 %i.d, -64
  %.neg15.i.i = select i1 %.not.i.i, i32 0, i32 %.neg.i.i
  %i.w = add i32 %.2.i.i, %.neg15.i.i
  %i.x = icmp eq i32 %i.w, %i.d
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.split, %_ZNK4llvm5APInt6isZeroEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load i32, ptr %i.b, align 8, !tbaa !8
  store i32 %i.z, ptr %i.y, align 8, !tbaa !8
  %i.aa = load i64, ptr %4, align 8
  store i64 %i.aa, ptr %0, align 8
  store i32 0, ptr %i.b, align 8, !tbaa !8
  br label %bb.h

bb.g:                                             ; preds = %.split, %_ZNK4llvm5APInt6isZeroEv.exit
  %i.ab = load i32, ptr %i.b, align 8, !tbaa !8   ; 6 uses
  %i.ac = icmp ult i32 %i.ab, 65
  br i1 %i.ac, label %_ZN4llvm5APInt9tcAddPartEPmmj.exit.thread2.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.g
  %i.ad = zext i32 %i.ab to i64
  %i.ae = add nuw nsw i64 %i.ad, 63               ; 2 uses
  %i.af = lshr i64 %i.ae, 3
  %i.ag = and i64 %i.af, 1073741816               ; 2 uses
  %i.ah = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ag) #21 ; 6 uses
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = load ptr, ptr %4, align 8, !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.aj, i64 %i.ag, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !543)
  %i.ak = lshr i64 %i.ae, 6                       ; 2 uses
  %i.al = load i64, ptr %i.ah, align 8, !tbaa !11, !noalias !543
  %i.am = add i64 %i.al, 1                        ; 2 uses
  store i64 %i.am, ptr %i.ah, align 8, !tbaa !11, !noalias !543
  %.not.peel.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.peel.i.i.i, label %.lr.ph.i.i.i, label %.thread.i.i4

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.preheader.i.i.i, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ], [ 1, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.i.i.i ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !11, !noalias !543
  %i.ap = add i64 %i.ao, 1                        ; 2 uses
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !11, !noalias !543
  %.not.i.i.i = icmp ne i64 %i.ap, 0
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.ak
  %or.cond.i.i = select i1 %.not.i.i.i, i1 true, i1 %exitcond.not.i.i.i
  br i1 %or.cond.i.i, label %.thread.i.i4, label %.lr.ph.i.i.i, !llvm.loop !14

_ZN4llvm5APInt9tcAddPartEPmmj.exit.thread2.i.i:   ; preds = %bb.g
  %i.aq = load i64, ptr %4, align 8, !tbaa !10
  %i.ar = add i64 %i.aq, 1
  %i.as = sub nsw i32 0, %i.ab
  %i.at = and i32 %i.as, 63
  %i.au = zext nneg i32 %i.at to i64
  %i.av = lshr i64 -1, %i.au
  %i.aw = icmp eq i32 %i.ab, 0
  %spec.select.i.i = select i1 %i.aw, i64 0, i64 %i.av, !prof !17
  %i.ax = and i64 %i.ar, %spec.select.i.i
  br label %_ZN4llvm5APIntD2Ev.exit

.thread.i.i4:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.pn.in.in.i.i = sub i32 0, %i.ab
  %.pn.in.i.i = and i32 %.pn.in.in.i.i, 63
  %.pn.i.i = zext nneg i32 %.pn.in.i.i to i64
  %i.ay = lshr i64 -1, %.pn.i.i
  %i.az = add nuw nsw i64 %i.ak, 4294967295
  %i.ba = and i64 %i.az, 4294967295
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ba ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !11, !noalias !543
  %i.bd = and i64 %i.bc, %i.ay
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !11, !noalias !543
  %.pre.pre = load i32, ptr %i.c, align 8, !tbaa !8
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %.thread.i.i4, %_ZN4llvm5APInt9tcAddPartEPmmj.exit.thread2.i.i
  %.pre = phi i32 [ %i.d, %_ZN4llvm5APInt9tcAddPartEPmmj.exit.thread2.i.i ], [ %.pre.pre, %.thread.i.i4 ]
  %.sroa.0.1 = phi i64 [ %i.ax, %_ZN4llvm5APInt9tcAddPartEPmmj.exit.thread2.i.i ], [ %i.ai, %.thread.i.i4 ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ab, ptr %i.be, align 8, !tbaa !8, !alias.scope !543
  store i64 %.sroa.0.1, ptr %0, align 8, !alias.scope !543
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit, %bb.f
  %i.bf = phi i32 [ %.pre, %_ZN4llvm5APIntD2Ev.exit ], [ %i.d, %bb.f ]
  %i.bg = icmp ugt i32 %i.bf, 64
  br i1 %i.bg, label %bb.i, label %_ZN4llvm5APIntD2Ev.exit5

bb.i:                                             ; preds = %bb.h
  %i.bh = load ptr, ptr %5, align 8, !tbaa !10    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %_ZN4llvm5APIntD2Ev.exit5, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.bh) #22
  br label %_ZN4llvm5APIntD2Ev.exit5

_ZN4llvm5APIntD2Ev.exit5:                         ; preds = %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.bj = load i32, ptr %i.b, align 8, !tbaa !8
  %i.bk = icmp ugt i32 %i.bj, 64
  br i1 %i.bk, label %bb.k, label %_ZN4llvm5APIntD2Ev.exit6

bb.k:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit5
  %i.bl = load ptr, ptr %4, align 8, !tbaa !10    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %_ZN4llvm5APIntD2Ev.exit6, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZdaPv(ptr noundef nonnull %i.bl) #22
  br label %_ZN4llvm5APIntD2Ev.exit6

_ZN4llvm5APIntD2Ev.exit6:                         ; preds = %_ZN4llvm5APIntD2Ev.exit5, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
end_hunk_0
