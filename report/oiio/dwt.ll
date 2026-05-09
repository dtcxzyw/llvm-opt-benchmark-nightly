inline.NumInlined: 158
inline.NumDeleted: 40
begin_hunk_0_@opj_dwt_encode_and_deinterleave_v:bb.a
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %.not = icmp ne i32 %3, 0                       ; 5 uses
  %i.c = zext i1 %.not to i32
  %i.d = add i32 %2, %i.c                         ; 4 uses
  %i.e = lshr i32 %i.d, 1                         ; 13 uses
end_hunk_0
begin_hunk_1_@opj_dwt_encode_and_deinterleave_v:bb.a
  br i1 %i.g, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.loopexit
  %6 = select i1 %.not, i32 0, i32 8              ; 2 uses
  %i.ov = zext nneg i32 %i.e to i64
  %i.ow = zext i32 %4 to i64                      ; 11 uses
  %i.ox = mul nuw nsw i64 %i.ov, %i.ow
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ox ; 2 uses
  %7 = xor i32 %6, 8
  %.not61.i = icmp eq i32 %i.e, 0
  br i1 %.not61.i, label %._crit_edge.i, label %.lr.ph.preheader.i242

.lr.ph.preheader.i242:                            ; preds = %bb.n
  %.pn70.pn.i = zext nneg i32 %6 to i64
  %.05375.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.pn70.pn.i ; 2 uses
  %xtraiter389 = and i32 %i.e, 3                  ; 2 uses
  %lcmp.mod390.not = icmp eq i32 %xtraiter389, 0
end_hunk_1
begin_hunk_2_@opj_dwt_encode_and_deinterleave_v:bb.a
  br i1 %.not61.1.i, label %opj_dwt_deinterleave_v_cols.exit, label %.lr.ph.preheader.1.i

.lr.ph.preheader.1.i:                             ; preds = %._crit_edge.i
  %.pn70.pn.1.i = zext nneg i32 %7 to i64
  %.05375.1.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.pn70.pn.1.i ; 2 uses
  %xtraiter392 = and i32 %i.f, 3                  ; 2 uses
  %lcmp.mod393.not = icmp eq i32 %xtraiter392, 0
end_hunk_2
begin_hunk_3_@opj_dwt_encode_and_deinterleave_v:bb.a
bb.o:                                             ; preds = %.loopexit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %8 = select i1 %.not, i32 0, i32 8              ; 2 uses
  %i.qa = zext nneg i32 %i.e to i64
  %i.qb = zext i32 %4 to i64                      ; 3 uses
  %i.qc = mul nuw nsw i64 %i.qa, %i.qb
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.qc
  %9 = xor i32 %8, 8
  %.not61.i245 = icmp eq i32 %i.e, 0
  br i1 %.not61.i245, label %._crit_edge.i254, label %.lr.ph.preheader.i246

.lr.ph.preheader.i246:                            ; preds = %bb.o
  %.pn70.pn.i247 = zext nneg i32 %8 to i64
  %.05375.i248 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.pn70.pn.i247
  br label %.lr.ph.i249

end_hunk_3
begin_hunk_4_@opj_dwt_encode_and_deinterleave_v:bb.a
  br i1 %.not61.1.i255, label %opj_dwt_deinterleave_v_cols.exit, label %.lr.ph.preheader.1.i256

.lr.ph.preheader.1.i256:                          ; preds = %._crit_edge.i254
  %.pn70.pn.1.i257 = zext nneg i32 %9 to i64
  %.05375.1.i258 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.pn70.pn.1.i257
  br label %.lr.ph.1.i259

end_hunk_4
begin_hunk_5_@opj_dwt_encode_and_deinterleave_v_real:bb.a
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %.not = icmp ne i32 %3, 0                       ; 8 uses
  %i.c = zext i1 %.not to i32
  %i.d = add i32 %2, %i.c                         ; 3 uses
  %i.e = lshr i32 %i.d, 1                         ; 16 uses
end_hunk_5
begin_hunk_6_@opj_dwt_encode_and_deinterleave_v_real:bb.a
  %..neg = sext i1 %not..not145 to i32
  %.68.neg = sext i1 %.not to i32
  %i.ea = select i1 %.not, i64 0, i64 8
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ea ; 17 uses
  %i.ec = select i1 %.not, i64 8, i64 0
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ec ; 17 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 32 ; 6 uses
  %i.ef = add nsw i32 %i.e, %.68.neg
  %i.eg = tail call noundef i32 @llvm.smin.i32(i32 %i.f, i32 %i.ef) ; 2 uses
end_hunk_6
begin_hunk_7_@opj_dwt_encode_and_deinterleave_v_real:bb.a
  br label %opj_v8dwt_encode_step1.exit115.thread

opj_v8dwt_encode_step1.exit115.thread:            ; preds = %opj_v8dwt_encode_step1.exit115.thread.unr-lcssa, %.lr.ph.i111.epil.preheader
  %6 = select i1 %.not, i32 0, i32 8              ; 3 uses
  %i.ms = zext i32 %4 to i64                      ; 10 uses
  %.pn70.pn.i = zext nneg i32 %6 to i64
  %.05375.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.pn70.pn.i ; 3 uses
  br i1 %i.h, label %.lr.ph.i118.preheader, label %.lr.ph.i125

.lr.ph.i118.preheader:                            ; preds = %opj_v8dwt_encode_step1.exit115.thread
end_hunk_7
begin_hunk_8_@opj_dwt_encode_and_deinterleave_v_real:bb.a

.lr.ph.i118.prol:                                 ; preds = %.lr.ph.i118.preheader, %.lr.ph.i118.prol
  %.in.i.prol = phi i32 [ %i.mt, %.lr.ph.i118.prol ], [ %i.e, %.lr.ph.i118.preheader ]
  %.15469.i.prol = phi ptr [ %i.mv, %.lr.ph.i118.prol ], [ %.05375.i, %.lr.ph.i118.preheader ] ; 2 uses
  %.15662.i.prol = phi ptr [ %i.mu, %.lr.ph.i118.prol ], [ %0, %.lr.ph.i118.preheader ] ; 2 uses
  %prol.iter201 = phi i32 [ %prol.iter201.next, %.lr.ph.i118.prol ], [ 0, %.lr.ph.i118.preheader ]
  %i.mt = add nsw i32 %.in.i.prol, -1             ; 2 uses
end_hunk_8
begin_hunk_9_@opj_dwt_encode_and_deinterleave_v_real:bb.a

.lr.ph.i118.prol.loopexit:                        ; preds = %.lr.ph.i118.prol, %.lr.ph.i118.preheader
  %.in.i.unr = phi i32 [ %i.e, %.lr.ph.i118.preheader ], [ %i.mt, %.lr.ph.i118.prol ]
  %.15469.i.unr = phi ptr [ %.05375.i, %.lr.ph.i118.preheader ], [ %i.mv, %.lr.ph.i118.prol ]
  %.15662.i.unr = phi ptr [ %0, %.lr.ph.i118.preheader ], [ %i.mu, %.lr.ph.i118.prol ]
  %i.mw = icmp ult i32 %i.d, 8
  br i1 %i.mw, label %._crit_edge.i.loopexit, label %.lr.ph.i118

bb.k:                                             ; preds = %opj_v8dwt_encode_step1.exit115
  %i.mx = zext i32 %4 to i64
  %7 = select i1 %.not, i32 8, i32 0
  br label %._crit_edge.i

.lr.ph.i118:                                      ; preds = %.lr.ph.i118.prol.loopexit, %.lr.ph.i118
end_hunk_9
begin_hunk_10_@opj_dwt_encode_and_deinterleave_v_real:bb.a
._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i118, %.lr.ph.i118.prol.loopexit
  %i.nh = zext nneg i32 %i.e to i64
  %i.ni = mul nuw nsw i64 %i.nh, %i.ms
  %8 = xor i32 %6, 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.k
  %9 = phi i32 [ %7, %bb.k ], [ %8, %._crit_edge.i.loopexit ]
  %.pn147 = phi i64 [ 0, %bb.k ], [ %i.ni, %._crit_edge.i.loopexit ]
  %i.nj = phi i64 [ %i.mx, %bb.k ], [ %i.ms, %._crit_edge.i.loopexit ] ; 5 uses
  br i1 %.not.i107, label %opj_dwt_deinterleave_v_cols.exit, label %.lr.ph.preheader.1.i

.lr.ph.preheader.1.i:                             ; preds = %._crit_edge.i
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.pn147 ; 2 uses
  %.pn70.pn.1.i = zext nneg i32 %9 to i64
  %.05375.1.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.pn70.pn.1.i ; 2 uses
  %xtraiter202 = and i32 %i.f, 3                  ; 2 uses
  %lcmp.mod203.not = icmp eq i32 %xtraiter202, 0
  br i1 %lcmp.mod203.not, label %.lr.ph.1.i.prol.loopexit, label %.lr.ph.1.i.prol

.lr.ph.1.i.prol:                                  ; preds = %.lr.ph.preheader.1.i, %.lr.ph.1.i.prol
  %.in.1.i.prol = phi i32 [ %i.nl, %.lr.ph.1.i.prol ], [ %i.f, %.lr.ph.preheader.1.i ]
  %.15469.1.i.prol = phi ptr [ %i.nn, %.lr.ph.1.i.prol ], [ %.05375.1.i, %.lr.ph.preheader.1.i ] ; 2 uses
  %.15662.1.i.prol = phi ptr [ %i.nm, %.lr.ph.1.i.prol ], [ %i.nk, %.lr.ph.preheader.1.i ] ; 2 uses
  %prol.iter204 = phi i32 [ %prol.iter204.next, %.lr.ph.1.i.prol ], [ 0, %.lr.ph.preheader.1.i ]
  %i.nl = add nsw i32 %.in.1.i.prol, -1           ; 2 uses
end_hunk_10
begin_hunk_11_@opj_dwt_encode_and_deinterleave_v_real:bb.a

.lr.ph.1.i.prol.loopexit:                         ; preds = %.lr.ph.1.i.prol, %.lr.ph.preheader.1.i
  %.in.1.i.unr = phi i32 [ %i.f, %.lr.ph.preheader.1.i ], [ %i.nl, %.lr.ph.1.i.prol ]
  %.15469.1.i.unr = phi ptr [ %.05375.1.i, %.lr.ph.preheader.1.i ], [ %i.nn, %.lr.ph.1.i.prol ]
  %.15662.1.i.unr = phi ptr [ %i.nk, %.lr.ph.preheader.1.i ], [ %i.nm, %.lr.ph.1.i.prol ]
  %i.no = sub i32 %i.e, %2
  %i.np = icmp ugt i32 %i.no, -4
end_hunk_11
begin_hunk_12_@opj_dwt_encode_and_deinterleave_v_real:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %i.nz = zext i32 %4 to i64
  %10 = select i1 %.not, i32 8, i32 0
  br label %._crit_edge.i130

.lr.ph.i125:                                      ; preds = %opj_v8dwt_encode_step1.exit115.thread, %bb.s
  %.in.i126 = phi i32 [ %i.oa, %bb.s ], [ %i.e, %opj_v8dwt_encode_step1.exit115.thread ]
  %.15469.i127 = phi ptr [ %i.pg, %bb.s ], [ %.05375.i, %opj_v8dwt_encode_step1.exit115.thread ] ; 8 uses
  %.15662.i128 = phi ptr [ %i.pf, %bb.s ], [ %0, %opj_v8dwt_encode_step1.exit115.thread ] ; 8 uses
  %i.oa = add nsw i32 %.in.i126, -1               ; 2 uses
  switch i32 %5, label %bb.s [
end_hunk_12
begin_hunk_13_@opj_dwt_encode_and_deinterleave_v_real:bb.a
._crit_edge.i130.loopexit:                        ; preds = %bb.s
  %i.ph = zext nneg i32 %i.e to i64
  %i.pi = mul nuw nsw i64 %i.ph, %i.ms
  %11 = xor i32 %6, 8
  br label %._crit_edge.i130

._crit_edge.i130:                                 ; preds = %._crit_edge.i130.loopexit, %bb.l
  %12 = phi i32 [ %10, %bb.l ], [ %11, %._crit_edge.i130.loopexit ]
  %.pn = phi i64 [ 0, %bb.l ], [ %i.pi, %._crit_edge.i130.loopexit ]
  %i.pj = phi i64 [ %i.nz, %bb.l ], [ %i.ms, %._crit_edge.i130.loopexit ]
  br i1 %.not.i107, label %opj_dwt_deinterleave_v_cols.exit, label %.lr.ph.preheader.1.i132

.lr.ph.preheader.1.i132:                          ; preds = %._crit_edge.i130
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.pn
  %.pn70.pn.1.i133 = zext nneg i32 %12 to i64
  %.05375.1.i134 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.pn70.pn.1.i133
  br label %.lr.ph.1.i135

.lr.ph.1.i135:                                    ; preds = %bb.ab, %.lr.ph.preheader.1.i132
  %.in.1.i136 = phi i32 [ %i.pl, %bb.ab ], [ %i.f, %.lr.ph.preheader.1.i132 ]
  %.15469.1.i137 = phi ptr [ %i.qr, %bb.ab ], [ %.05375.1.i134, %.lr.ph.preheader.1.i132 ] ; 9 uses
  %.15662.1.i138 = phi ptr [ %i.qq, %bb.ab ], [ %i.pk, %.lr.ph.preheader.1.i132 ] ; 9 uses
  %i.pl = add nsw i32 %.in.1.i136, -1             ; 2 uses
  switch i32 %5, label %bb.aa [
end_hunk_13
