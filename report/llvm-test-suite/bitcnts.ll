inline.NumInlined: 4
begin_hunk_0_@main:bb.a
  %i.p = add i64 %i.o, 12345
  store i64 %i.p, ptr @next, align 8, !tbaa !8
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull @.str.1, i64 noundef 0) ; 0 uses
  %i.r = load i64, ptr @next, align 8, !tbaa !8
  %i.s = mul i64 %i.r, 1103515245
  %i.t = add i64 %i.s, 12345
  store i64 %i.t, ptr @next, align 8, !tbaa !8
  %i.u = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull @.str.2, i64 noundef 0) ; 0 uses
  %i.v = load i64, ptr @next, align 8, !tbaa !8
  %i.w = mul i64 %i.v, 1103515245
  %i.x = add i64 %i.w, 12345
  store i64 %i.x, ptr @next, align 8, !tbaa !8
  %i.y = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull @.str.3, i64 noundef 0) ; 0 uses
  %i.z = load i64, ptr @next, align 8, !tbaa !8
  %i.aa = mul i64 %i.z, 1103515245
  %i.ab = add i64 %i.aa, 12345
  store i64 %i.ab, ptr @next, align 8, !tbaa !8
  %i.ac = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull @.str.4, i64 noundef 0) ; 0 uses
  %i.ad = load i64, ptr @next, align 8, !tbaa !8
  %i.ae = mul i64 %i.ad, 1103515245
  %i.af = add i64 %i.ae, 12345
  store i64 %i.af, ptr @next, align 8, !tbaa !8
  %i.ag = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull @.str.5, i64 noundef 0) ; 0 uses
  %i.ah = load i64, ptr @next, align 8, !tbaa !8
  %i.ai = mul i64 %i.ah, 1103515245
  %i.aj = add i64 %i.ai, 12345
  store i64 %i.aj, ptr @next, align 8, !tbaa !8
  br label %.split20.us

.lr.ph.us.preheader:                              ; preds = %bb.c
  %i.ak = lshr i64 %i.l, 16
  %i.al = trunc i64 %i.ak to i32
  %i.am = urem i32 %i.al, 32767
  %i.an = add nuw nsw i32 %i.am, 1
  %i.ao = zext nneg i32 %i.an to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph.us.preheader, %bb.d
  %.01217.us = phi i64 [ %i.ao, %.lr.ph.us.preheader ], [ %i.at, %bb.d ] ; 2 uses
  %.01316.us = phi i64 [ 0, %.lr.ph.us.preheader ], [ %i.ar, %bb.d ]
  %.01415.us = phi i64 [ 0, %.lr.ph.us.preheader ], [ %i.as, %bb.d ]
  %i.ap = tail call i32 @bit_count(i64 noundef %.01217.us) #11
  %i.aq = sext i32 %i.ap to i64
  %i.ar = add nsw i64 %.01316.us, %i.aq           ; 2 uses
  %i.as = add nuw nsw i64 %.01415.us, 1           ; 2 uses
  %i.at = add nuw nsw i64 %.01217.us, 13
  %exitcond.not = icmp eq i64 %i.as, %i.h
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.d, !llvm.loop !16

._crit_edge.us:                                   ; preds = %bb.d
  %i.au = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull @.str, i64 noundef %i.ar) ; 0 uses
  %i.av = load i64, ptr @next, align 8, !tbaa !8
  %i.aw = mul i64 %i.av, 1103515245
  %i.ax = add i64 %i.aw, 12345                    ; 2 uses
  store i64 %i.ax, ptr @next, align 8, !tbaa !8
  %i.ay = lshr i64 %i.ax, 16
  %i.az = trunc i64 %i.ay to i32
  %i.ba = urem i32 %i.az, 32767
  %i.bb = add nuw nsw i32 %i.ba, 1
  %i.bc = zext nneg i32 %i.bb to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %._crit_edge.us
  %.01217.us.1 = phi i64 [ %i.bc, %._crit_edge.us ], [ %i.bh, %bb.e ] ; 2 uses
  %.01316.us.1 = phi i64 [ 0, %._crit_edge.us ], [ %i.bf, %bb.e ]
  %.01415.us.1 = phi i64 [ 0, %._crit_edge.us ], [ %i.bg, %bb.e ]
  %i.bd = tail call i32 @bitcount(i64 noundef %.01217.us.1) #11
  %i.be = sext i32 %i.bd to i64
  %i.bf = add nsw i64 %.01316.us.1, %i.be         ; 2 uses
  %i.bg = add nuw nsw i64 %.01415.us.1, 1         ; 2 uses
  %i.bh = add nuw nsw i64 %.01217.us.1, 13
  %exitcond.1.not = icmp eq i64 %i.bg, %i.h
  br i1 %exitcond.1.not, label %._crit_edge.us.1, label %bb.e, !llvm.loop !16

._crit_edge.us.1:                                 ; preds = %bb.e
  %i.bi = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull @.str.1, i64 noundef %i.bf) ; 0 uses
  %i.bj = load i64, ptr @next, align 8, !tbaa !8
  %i.bk = mul i64 %i.bj, 1103515245
  %i.bl = add i64 %i.bk, 12345                    ; 2 uses
  store i64 %i.bl, ptr @next, align 8, !tbaa !8
  %i.bm = lshr i64 %i.bl, 16
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = urem i32 %i.bn, 32767
  %i.bp = add nuw nsw i32 %i.bo, 1
  %i.bq = zext nneg i32 %i.bp to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %._crit_edge.us.1
  %.01217.us.2 = phi i64 [ %i.bq, %._crit_edge.us.1 ], [ %i.bv, %bb.f ] ; 2 uses
  %.01316.us.2 = phi i64 [ 0, %._crit_edge.us.1 ], [ %i.bt, %bb.f ]
  %.01415.us.2 = phi i64 [ 0, %._crit_edge.us.1 ], [ %i.bu, %bb.f ]
  %i.br = tail call i32 @ntbl_bitcnt(i64 noundef %.01217.us.2) #11
  %i.bs = sext i32 %i.br to i64
  %i.bt = add nsw i64 %.01316.us.2, %i.bs         ; 2 uses
  %i.bu = add nuw nsw i64 %.01415.us.2, 1         ; 2 uses
  %i.bv = add nuw nsw i64 %.01217.us.2, 13
  %exitcond.2.not = icmp eq i64 %i.bu, %i.h
  br i1 %exitcond.2.not, label %._crit_edge.us.2, label %bb.f, !llvm.loop !16

._crit_edge.us.2:                                 ; preds = %bb.f
  %i.bw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull @.str.2, i64 noundef %i.bt) ; 0 uses
  %i.bx = load i64, ptr @next, align 8, !tbaa !8
  %i.by = mul i64 %i.bx, 1103515245
  %i.bz = add i64 %i.by, 12345                    ; 2 uses
  store i64 %i.bz, ptr @next, align 8, !tbaa !8
  %i.ca = lshr i64 %i.bz, 16
  %i.cb = trunc i64 %i.ca to i32
  %i.cc = urem i32 %i.cb, 32767
  %i.cd = add nuw nsw i32 %i.cc, 1
  %i.ce = zext nneg i32 %i.cd to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %._crit_edge.us.2
  %.01217.us.3 = phi i64 [ %i.ce, %._crit_edge.us.2 ], [ %i.cj, %bb.g ] ; 2 uses
  %.01316.us.3 = phi i64 [ 0, %._crit_edge.us.2 ], [ %i.ch, %bb.g ]
  %.01415.us.3 = phi i64 [ 0, %._crit_edge.us.2 ], [ %i.ci, %bb.g ]
  %i.cf = tail call i32 @ntbl_bitcount(i64 noundef %.01217.us.3) #11
  %i.cg = sext i32 %i.cf to i64
  %i.ch = add nsw i64 %.01316.us.3, %i.cg         ; 2 uses
  %i.ci = add nuw nsw i64 %.01415.us.3, 1         ; 2 uses
  %i.cj = add nuw nsw i64 %.01217.us.3, 13
  %exitcond.3.not = icmp eq i64 %i.ci, %i.h
  br i1 %exitcond.3.not, label %._crit_edge.us.3, label %bb.g, !llvm.loop !16

._crit_edge.us.3:                                 ; preds = %bb.g
  %i.ck = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull @.str.3, i64 noundef %i.ch) ; 0 uses
  %i.cl = load i64, ptr @next, align 8, !tbaa !8
  %i.cm = mul i64 %i.cl, 1103515245
  %i.cn = add i64 %i.cm, 12345                    ; 2 uses
  store i64 %i.cn, ptr @next, align 8, !tbaa !8
  %i.co = lshr i64 %i.cn, 16
  %i.cp = trunc i64 %i.co to i32
  %i.cq = urem i32 %i.cp, 32767
  %i.cr = add nuw nsw i32 %i.cq, 1
  %i.cs = zext nneg i32 %i.cr to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %._crit_edge.us.3
  %.01217.us.4 = phi i64 [ %i.cs, %._crit_edge.us.3 ], [ %i.cx, %bb.h ] ; 2 uses
  %.01316.us.4 = phi i64 [ 0, %._crit_edge.us.3 ], [ %i.cv, %bb.h ]
  %.01415.us.4 = phi i64 [ 0, %._crit_edge.us.3 ], [ %i.cw, %bb.h ]
  %i.ct = tail call i32 @BW_btbl_bitcount(i64 noundef %.01217.us.4) #11
  %i.cu = sext i32 %i.ct to i64
  %i.cv = add nsw i64 %.01316.us.4, %i.cu         ; 2 uses
  %i.cw = add nuw nsw i64 %.01415.us.4, 1         ; 2 uses
  %i.cx = add nuw nsw i64 %.01217.us.4, 13
  %exitcond.4.not = icmp eq i64 %i.cw, %i.h
  br i1 %exitcond.4.not, label %._crit_edge.us.4, label %bb.h, !llvm.loop !16

._crit_edge.us.4:                                 ; preds = %bb.h
  %i.cy = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull @.str.4, i64 noundef %i.cv) ; 0 uses
  %i.cz = load i64, ptr @next, align 8, !tbaa !8
  %i.da = mul i64 %i.cz, 1103515245
  %i.db = add i64 %i.da, 12345                    ; 2 uses
  store i64 %i.db, ptr @next, align 8, !tbaa !8
  %i.dc = lshr i64 %i.db, 16
  %i.dd = trunc i64 %i.dc to i32
  %i.de = urem i32 %i.dd, 32767
  %i.df = add nuw nsw i32 %i.de, 1
  %i.dg = zext nneg i32 %i.df to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %._crit_edge.us.4
  %.01217.us.5 = phi i64 [ %i.dg, %._crit_edge.us.4 ], [ %i.dl, %bb.i ] ; 2 uses
  %.01316.us.5 = phi i64 [ 0, %._crit_edge.us.4 ], [ %i.dj, %bb.i ]
  %.01415.us.5 = phi i64 [ 0, %._crit_edge.us.4 ], [ %i.dk, %bb.i ]
  %i.dh = tail call i32 @AR_btbl_bitcount(i64 noundef %.01217.us.5) #11
  %i.di = sext i32 %i.dh to i64
  %i.dj = add nsw i64 %.01316.us.5, %i.di         ; 2 uses
  %i.dk = add nuw nsw i64 %.01415.us.5, 1         ; 2 uses
  %i.dl = add nuw nsw i64 %.01217.us.5, 13
  %exitcond.5.not = icmp eq i64 %i.dk, %i.h
  br i1 %exitcond.5.not, label %._crit_edge.us.5, label %bb.i, !llvm.loop !16

._crit_edge.us.5:                                 ; preds = %bb.i
  %i.dm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull @.str.5, i64 noundef %i.dj) ; 0 uses
  %i.dn = load i64, ptr @next, align 8, !tbaa !8
  %i.do = mul i64 %i.dn, 1103515245
  %i.dp = add i64 %i.do, 12345                    ; 2 uses
  store i64 %i.dp, ptr @next, align 8, !tbaa !8
  %i.dq = lshr i64 %i.dp, 16
  %i.dr = trunc i64 %i.dq to i32
  %i.ds = urem i32 %i.dr, 32767
  %i.dt = add nuw nsw i32 %i.ds, 1
  %i.du = zext nneg i32 %i.dt to i64              ; 2 uses
  %xtraiter = and i64 %i.f, 1                     ; 2 uses
  %i.dv = icmp eq i64 %sext, 4294967296
  br i1 %i.dv, label %.epil.preheader, label %._crit_edge.us.5.new

._crit_edge.us.5.new:                             ; preds = %._crit_edge.us.5
  %unroll_iter = sub nsw i64 %i.h, %xtraiter
  br label %bb.j

bb.j:                                             ; preds = %bit_shifter.exit.1, %._crit_edge.us.5.new
  %.01217.us.6 = phi i64 [ %i.du, %._crit_edge.us.5.new ], [ %i.ej, %bit_shifter.exit.1 ] ; 3 uses
  %.01316.us.6 = phi i64 [ 0, %._crit_edge.us.5.new ], [ %i.ei, %bit_shifter.exit.1 ]
  %niter = phi i64 [ 0, %._crit_edge.us.5.new ], [ %niter.next.1, %bit_shifter.exit.1 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %.0710.i = phi i32 [ %i.dy, %.lr.ph.i ], [ 0, %bb.j ]
  %.089.i = phi i64 [ %i.dz, %.lr.ph.i ], [ %.01217.us.6, %bb.j ] ; 2 uses
  %i.dw = trunc i64 %.089.i to i32
  %i.dx = and i32 %i.dw, 1
  %i.dy = add nuw nsw i32 %i.dx, %.0710.i         ; 2 uses
  %i.dz = lshr i64 %.089.i, 1                     ; 2 uses
  %.not = icmp eq i64 %i.dz, 0
  br i1 %.not, label %bit_shifter.exit, label %.lr.ph.i, !llvm.loop !18

bit_shifter.exit:                                 ; preds = %.lr.ph.i
  %i.ea = zext nneg i32 %i.dy to i64
  %i.eb = add nuw nsw i64 %.01316.us.6, %i.ea
  %i.ec = add nuw nsw i64 %.01217.us.6, 13
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i.1, %bit_shifter.exit
  %.0710.i.1 = phi i32 [ %i.ef, %.lr.ph.i.1 ], [ 0, %bit_shifter.exit ]
  %.089.i.1 = phi i64 [ %i.eg, %.lr.ph.i.1 ], [ %i.ec, %bit_shifter.exit ] ; 2 uses
  %i.ed = trunc i64 %.089.i.1 to i32
  %i.ee = and i32 %i.ed, 1
  %i.ef = add nuw nsw i32 %i.ee, %.0710.i.1       ; 2 uses
  %i.eg = lshr i64 %.089.i.1, 1                   ; 2 uses
  %.not.1 = icmp eq i64 %i.eg, 0
  br i1 %.not.1, label %bit_shifter.exit.1, label %.lr.ph.i.1, !llvm.loop !18

bit_shifter.exit.1:                               ; preds = %.lr.ph.i.1
  %i.eh = zext nneg i32 %i.ef to i64
  %i.ei = add nuw nsw i64 %i.eb, %i.eh            ; 3 uses
  %i.ej = add nuw nsw i64 %.01217.us.6, 26        ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.split20.us.loopexit.unr-lcssa, label %bb.j, !llvm.loop !16

.split20.us.loopexit.unr-lcssa:                   ; preds = %bit_shifter.exit.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.split20.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %.split20.us.loopexit.unr-lcssa, %._crit_edge.us.5
  %.01217.us.6.epil.init = phi i64 [ %i.du, %._crit_edge.us.5 ], [ %i.ej, %.split20.us.loopexit.unr-lcssa ]
  %.01316.us.6.epil.init = phi i64 [ 0, %._crit_edge.us.5 ], [ %i.ei, %.split20.us.loopexit.unr-lcssa ]
  %lcmp.mod68 = trunc i64 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod68)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.epil.preheader
  %.0710.i.epil = phi i32 [ %i.em, %.lr.ph.i.epil ], [ 0, %.epil.preheader ]
  %.089.i.epil = phi i64 [ %i.en, %.lr.ph.i.epil ], [ %.01217.us.6.epil.init, %.epil.preheader ] ; 2 uses
  %i.ek = trunc i64 %.089.i.epil to i32
  %i.el = and i32 %i.ek, 1
  %i.em = add nuw nsw i32 %i.el, %.0710.i.epil    ; 2 uses
  %i.en = lshr i64 %.089.i.epil, 1                ; 2 uses
  %.not.epil = icmp eq i64 %i.en, 0
  br i1 %.not.epil, label %bit_shifter.exit.epil, label %.lr.ph.i.epil, !llvm.loop !18

bit_shifter.exit.epil:                            ; preds = %.lr.ph.i.epil
  %i.eo = zext nneg i32 %i.em to i64
  %i.ep = add nuw nsw i64 %.01316.us.6.epil.init, %i.eo
  br label %.split20.us

.split20.us:                                      ; preds = %bit_shifter.exit.epil, %.split20.us.loopexit.unr-lcssa, %.split.preheader
  %.sink = phi i64 [ 0, %.split.preheader ], [ %i.ei, %.split20.us.loopexit.unr-lcssa ], [ %i.ep, %bit_shifter.exit.epil ]
  %i.eq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull @.str.6, i64 noundef %.sink) ; 0 uses
  ret i32 0
}

declare i32 @bit_count(i64 noundef) local_unnamed_addr #3

declare i32 @bitcount(i64 noundef) local_unnamed_addr #3

declare i32 @ntbl_bitcnt(i64 noundef) local_unnamed_addr #3

declare i32 @ntbl_bitcount(i64 noundef) local_unnamed_addr #3

declare i32 @BW_btbl_bitcount(i64 noundef) local_unnamed_addr #3

declare i32 @AR_btbl_bitcount(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { cold }
attributes #10 = { cold noreturn nounwind }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"long long", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"p1 omnipotent char", !12, i64 0}
!15 = distinct !{null}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
end_hunk_0
