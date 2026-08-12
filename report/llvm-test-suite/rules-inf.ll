inline.NumInlined: 1388
inline.NumDeleted: 170
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@inf_HyperResolvents:bb.a
  store ptr %i.eg, ptr %i.et, align 8
  %.val.i122 = load ptr, ptr %.070136, align 8    ; 2 uses
  %i.eu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  %i.ew = load i32, ptr %i.ev, align 8
  %i.ex = sext i32 %i.ew to i64
  %i.ey = load i64, ptr @memory_FREEDBYTES, align 8
  %i.ez = add i64 %i.ey, %i.ex
  store i64 %i.ez, ptr @memory_FREEDBYTES, align 8
  %i.fa = load ptr, ptr %i.eu, align 8
  store ptr %i.fa, ptr %.070136, align 8
  %i.fb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.070136, ptr %i.fb, align 8
  %.not128 = icmp eq ptr %.val.i122, null
  br i1 %.not128, label %._crit_edge, label %.lr.ph, !llvm.loop !98

._crit_edge:                                      ; preds = %list_Nconc.exit, %bb.g, %inf_GetHyperResolutionPartnerLits.exit
  %.172.lcssa = phi ptr [ %.071, %inf_GetHyperResolutionPartnerLits.exit ], [ %.071, %bb.g ], [ %.0.i120, %list_Nconc.exit ] ; 2 uses
  %.169.lcssa = phi ptr [ %.068, %inf_GetHyperResolutionPartnerLits.exit ], [ %.068, %bb.g ], [ %.val.i121, %list_Nconc.exit ]
  br i1 %.not77, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %._crit_edge
  %.val88 = load i32, ptr %i.ag, align 8
  %i.fc = load i32, ptr @fol_EQUALITY, align 4
  %.not129 = icmp eq i32 %.val88, %i.fc
  br i1 %.not129, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %.val.i123 = load ptr, ptr %i.aj, align 8       ; 2 uses
  %i.fd = getelementptr i8, ptr %.val.i123, i64 8 ; 2 uses
  %.val.val.i = load ptr, ptr %i.fd, align 8
  %.val6.val.i124 = load ptr, ptr %.val.i123, align 8
  %i.fe = getelementptr i8, ptr %.val6.val.i124, i64 8
  %.val6.val.val.i = load ptr, ptr %i.fe, align 8
  store ptr %.val6.val.val.i, ptr %i.fd, align 8
  %.val7.i = load ptr, ptr %i.aj, align 8
  %.val5.i = load ptr, ptr %.val7.i, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %.val5.i, i64 8
  store ptr %.val.val.i, ptr %i.ff, align 8
  br label %bb.g

bb.ad:                                            ; preds = %._crit_edge, %bb.ab
  %.not6.i = icmp eq ptr %.val.i93, null
  br i1 %.not6.i, label %list_Delete.exit, label %.lr.ph.i125

.lr.ph.i125:                                      ; preds = %bb.ad, %.lr.ph.i125
  %.07.i = phi ptr [ %.0.val.i, %.lr.ph.i125 ], [ %.val.i93, %bb.ad ] ; 3 uses
  %.0.val.i = load ptr, ptr %.07.i, align 8       ; 2 uses
  %i.fg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.fi = load i32, ptr %i.fh, align 8
  %i.fj = sext i32 %i.fi to i64
  %i.fk = load i64, ptr @memory_FREEDBYTES, align 8
  %i.fl = add i64 %i.fk, %i.fj
  store i64 %i.fl, ptr @memory_FREEDBYTES, align 8
  %i.fm = load ptr, ptr %i.fg, align 8
  store ptr %i.fm, ptr %.07.i, align 8
  %i.fn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i, ptr %i.fn, align 8
  %.not.i126 = icmp eq ptr %.0.val.i, null
  br i1 %.not.i126, label %list_Delete.exit, label %.lr.ph.i125, !llvm.loop !54

list_Delete.exit:                                 ; preds = %.lr.ph.i125, %bb.ad
  call void @term_Delete(ptr noundef %i.ag) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.loopexit

.loopexit:                                        ; preds = %clause_LiteralGetIndex.exit, %.split, %list_Delete.exit
  %.1 = phi ptr [ %.172.lcssa, %list_Delete.exit ], [ %i.o, %.split ], [ null, %clause_LiteralGetIndex.exit ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @inf_BuildHyperResolvent(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.b, align 8
  store ptr null, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 64         ; 3 uses
  %.val91 = load i32, ptr %i.c, align 8           ; 3 uses
  %.not.not157 = icmp sgt i32 %.val91, 0
  br i1 %.not.not157, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 56
  %wide.trip.count = zext nneg i32 %.val91 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %clause_GetLiteralAtom.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %clause_GetLiteralAtom.exit ] ; 2 uses
  %.0139158 = phi ptr [ null, %.lr.ph ], [ %i.m, %clause_GetLiteralAtom.exit ]
  %.val85 = load ptr, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %.val85, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 24
  %.val1.i = load ptr, ptr %i.g, align 8          ; 3 uses
  %.val5.val.i.i = load i32, ptr %.val1.i, align 8
  %i.h = load i32, ptr @fol_NOT, align 4
  %.not.i.i = icmp eq i32 %.val5.val.i.i, %i.h
  br i1 %.not.i.i, label %bb.c, label %clause_GetLiteralAtom.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %.val1.i, i64 16
  %.val6.i.i = load ptr, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %.val6.i.i, i64 8
  %.val6.val.i.i = load ptr, ptr %i.j, align 8
  br label %clause_GetLiteralAtom.exit

clause_GetLiteralAtom.exit:                       ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %.val6.val.i.i, %bb.c ], [ %.val1.i, %bb.b ]
  %i.k = tail call ptr @term_Copy(ptr noundef %.0.i.i) #14
  %i.l = tail call ptr @subst_Apply(ptr noundef %1, ptr noundef %i.k) #14
  %i.m = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.l, ptr %i.n, align 8
  store ptr %.0139158, ptr %i.m, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !99

._crit_edge.loopexit:                             ; preds = %clause_GetLiteralAtom.exit
  %.val3.i.i.pre = load i32, ptr %i.c, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.val3.i.i = phi i32 [ %.val91, %bb.a ], [ %.val3.i.i.pre, %._crit_edge.loopexit ] ; 3 uses
  %.0139.lcssa = phi ptr [ null, %bb.a ], [ %i.m, %._crit_edge.loopexit ] ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 68         ; 2 uses
  %.val.i.i = load i32, ptr %i.o, align 4         ; 3 uses
  %i.p = getelementptr i8, ptr %0, i64 72
  %.val4.i.i = load i32, ptr %i.p, align 8        ; 2 uses
  %i.q = add i32 %.val.i.i, %.val3.i.i            ; 3 uses
  %i.r = add i32 %i.q, -1
  %i.s = add i32 %i.r, %.val4.i.i
  %.not74160 = icmp sgt i32 %i.q, %i.s
  br i1 %.not74160, label %._crit_edge165, label %.lr.ph164

.lr.ph164:                                        ; preds = %._crit_edge
  %i.t = getelementptr i8, ptr %0, i64 56
  %i.u = sext i32 %.val3.i.i to i64
  %i.v = sext i32 %.val.i.i to i64
  %i.w = add nsw i64 %i.u, %i.v
  %i.x = add i32 %i.q, %.val4.i.i
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph164, %clause_GetLiteralAtom.exit99
  %indvars.iv197 = phi i64 [ %i.w, %.lr.ph164 ], [ %indvars.iv.next198, %clause_GetLiteralAtom.exit99 ] ; 2 uses
  %.0136161 = phi ptr [ null, %.lr.ph164 ], [ %i.ag, %clause_GetLiteralAtom.exit99 ]
  %.val84 = load ptr, ptr %i.t, align 8
  %i.y = getelementptr inbounds [8 x i8], ptr %.val84, i64 %indvars.iv197
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr i8, ptr %i.z, i64 24
  %.val1.i93 = load ptr, ptr %i.aa, align 8       ; 3 uses
  %.val5.val.i.i94 = load i32, ptr %.val1.i93, align 8
  %i.ab = load i32, ptr @fol_NOT, align 4
  %.not.i.i95 = icmp eq i32 %.val5.val.i.i94, %i.ab
  br i1 %.not.i.i95, label %bb.e, label %clause_GetLiteralAtom.exit99

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr i8, ptr %.val1.i93, i64 16
  %.val6.i.i97 = load ptr, ptr %i.ac, align 8
  %i.ad = getelementptr i8, ptr %.val6.i.i97, i64 8
  %.val6.val.i.i98 = load ptr, ptr %i.ad, align 8
  br label %clause_GetLiteralAtom.exit99

clause_GetLiteralAtom.exit99:                     ; preds = %bb.d, %bb.e
  %.0.i.i96 = phi ptr [ %.val6.val.i.i98, %bb.e ], [ %.val1.i93, %bb.d ]
  %i.ae = tail call ptr @term_Copy(ptr noundef %.0.i.i96) #14
  %i.af = tail call ptr @subst_Apply(ptr noundef %1, ptr noundef %i.ae) #14
  %i.ag = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.af, ptr %i.ah, align 8
  store ptr %.0136161, ptr %i.ag, align 8
  %indvars.iv.next198 = add nsw i64 %indvars.iv197, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next198 to i32
  %exitcond200.not = icmp eq i32 %i.x, %lftr.wideiv
  br i1 %exitcond200.not, label %._crit_edge165.loopexit, label %bb.d, !llvm.loop !100

._crit_edge165.loopexit:                          ; preds = %clause_GetLiteralAtom.exit99
  %.val80.pre = load i32, ptr %i.c, align 8
  %.val81.pre = load i32, ptr %i.o, align 4
  br label %._crit_edge165

._crit_edge165:                                   ; preds = %._crit_edge165.loopexit, %._crit_edge
  %.val81 = phi i32 [ %.val.i.i, %._crit_edge ], [ %.val81.pre, %._crit_edge165.loopexit ] ; 2 uses
  %.val80 = phi i32 [ %.val3.i.i, %._crit_edge ], [ %.val80.pre, %._crit_edge165.loopexit ] ; 4 uses
  %.0136.lcssa = phi ptr [ null, %._crit_edge ], [ %i.ag, %._crit_edge165.loopexit ] ; 2 uses
  %i.ai = getelementptr i8, ptr %0, i64 8
  %.val88 = load i32, ptr %i.ai, align 8          ; 2 uses
  %i.aj = add i32 %.val80, -1
  %i.ak = add i32 %i.aj, %.val81
  %.not75173 = icmp sgt i32 %.val80, %i.ak
  br i1 %.not75173, label %._crit_edge183, label %.lr.ph182

.lr.ph182:                                        ; preds = %._crit_edge165
  %i.al = getelementptr i8, ptr %0, i64 56
  %.not167 = icmp eq ptr %2, null
  %i.am = add i32 %.val81, %.val80
  br i1 %.not167, label %._crit_edge171.thread, label %.lr.ph182.split.preheader

.lr.ph182.split.preheader:                        ; preds = %.lr.ph182
  %6 = sext i32 %.val80 to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph182.split.preheader, %inf_CopyHyperElectron.exit
  %indvars.iv201 = phi i64 [ %indvars.iv.next202, %inf_CopyHyperElectron.exit ], [ %6, %.lr.ph182.split.preheader ] ; 3 uses
  %.067180 = phi i32 [ %i.bf, %inf_CopyHyperElectron.exit ], [ %.val88, %.lr.ph182.split.preheader ]
  %.071178 = phi ptr [ %i.bx, %inf_CopyHyperElectron.exit ], [ null, %.lr.ph182.split.preheader ]
  %.072177 = phi ptr [ %i.br, %inf_CopyHyperElectron.exit ], [ null, %.lr.ph182.split.preheader ]
  %.073176 = phi ptr [ %i.bg, %inf_CopyHyperElectron.exit ], [ %i.a, %.lr.ph182.split.preheader ]
  %.1137175 = phi ptr [ %.4, %inf_CopyHyperElectron.exit ], [ %.0136.lcssa, %.lr.ph182.split.preheader ] ; 2 uses
  %.1140174 = phi ptr [ %.4143, %inf_CopyHyperElectron.exit ], [ %.0139.lcssa, %.lr.ph182.split.preheader ] ; 2 uses
  %.val83 = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds [8 x i8], ptr %.val83, i64 %indvars.iv201
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  br label %.lr.ph170

.lr.ph170:                                        ; preds = %bb.f, %bb.g
  %.070168 = phi ptr [ %.070.val86, %bb.g ], [ %2, %bb.f ] ; 2 uses
  %i.ap = getelementptr i8, ptr %.070168, i64 8
  %.070.val = load ptr, ptr %i.ap, align 8        ; 4 uses
  %i.aq = load ptr, ptr %.070.val, align 8
  %i.ar = icmp eq ptr %i.aq, %i.ao
  br i1 %i.ar, label %.thread.thread, label %bb.g

bb.g:                                             ; preds = %.lr.ph170
  %.070.val86 = load ptr, ptr %.070168, align 8   ; 2 uses
  %.not = icmp eq ptr %.070.val86, null
  br i1 %.not, label %.thread, label %.lr.ph170, !llvm.loop !101

.thread:                                          ; preds = %bb.g
  %.pre = load ptr, ptr %.070.val, align 8
  %i.as = icmp eq ptr %.pre, %i.ao
  br i1 %i.as, label %.thread.thread, label %._crit_edge171.thread

._crit_edge171.thread:                            ; preds = %.thread, %.lr.ph182
  %i.at = load ptr, ptr @stdout, align 8
  %i.au = tail call i32 @fflush(ptr noundef %i.at) ; 0 uses
  %i.av = load ptr, ptr @stderr, align 8
  %i.aw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.av, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 3637) #15 ; 0 uses
  tail call void (ptr, ...) @misc_ErrorReport(ptr noundef nonnull @.str.11) #14
  %i.ax = load ptr, ptr @stderr, align 8
  %i.ay = tail call i64 @fwrite(ptr nonnull @.str.3, i64 132, i64 1, ptr %i.ax) #16 ; 0 uses
  tail call fastcc void @misc_DumpCore()
  unreachable

.thread.thread:                                   ; preds = %.lr.ph170, %.thread
  %i.az = getelementptr inbounds nuw i8, ptr %.070.val, i64 8
  %i.ba = load ptr, ptr %i.az, align 8            ; 3 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 16     ; 3 uses
  %.val92 = load ptr, ptr %i.bb, align 8          ; 7 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.070.val, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = getelementptr i8, ptr %.val92, i64 8
  %.val87 = load i32, ptr %i.be, align 8
  %i.bf = tail call i32 @misc_Max(i32 noundef %.067180, i32 noundef %.val87) #14 ; 2 uses
  %i.bg = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %.val92, ptr %i.bh, align 8
  store ptr %.073176, ptr %i.bg, align 8
  %.val90 = load i32, ptr %0, align 8
  %i.bi = sext i32 %.val90 to i64
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bj, ptr %i.bl, align 8
  store ptr %.072177, ptr %i.bk, align 8
  %i.bm = inttoptr i64 %indvars.iv201 to ptr
  %i.bn = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %i.bm, ptr %i.bo, align 8
  store ptr %.071178, ptr %i.bn, align 8
  %.val89 = load i32, ptr %.val92, align 8
  %i.bp = sext i32 %.val89 to i64
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr %i.bq, ptr %i.bs, align 8
  store ptr %i.bk, ptr %i.br, align 8
  %.val4.i = load ptr, ptr %i.bb, align 8
  %i.bt = getelementptr i8, ptr %.val4.i, i64 56
  %.val.i = load ptr, ptr %i.bt, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.thread.thread
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.h ], [ 0, %.thread.thread ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %indvars.iv.i
  %i.bv = load ptr, ptr %i.bu, align 8
  %.not.i = icmp eq ptr %i.bv, %i.ba
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %.not.i, label %clause_LiteralGetIndex.exit, label %bb.h, !llvm.loop !18

clause_LiteralGetIndex.exit:                      ; preds = %bb.h
  %i.bw = inttoptr i64 %indvars.iv.i to ptr
  %i.bx = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr %i.bw, ptr %i.by, align 8
  store ptr %i.bn, ptr %i.bx, align 8
  %.val4.i100 = load ptr, ptr %i.bb, align 8
  %i.bz = getelementptr i8, ptr %.val4.i100, i64 56
  %.val.i101 = load ptr, ptr %i.bz, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %clause_LiteralGetIndex.exit
  %indvars.iv.i102 = phi i64 [ %indvars.iv.next.i104, %bb.i ], [ 0, %clause_LiteralGetIndex.exit ] ; 3 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.val.i101, i64 %indvars.iv.i102
  %i.cb = load ptr, ptr %i.ca, align 8
  %.not.i103 = icmp eq ptr %i.cb, %i.ba
  %indvars.iv.next.i104 = add nuw nsw i64 %indvars.iv.i102, 1
  br i1 %.not.i103, label %clause_LiteralGetIndex.exit105, label %bb.i, !llvm.loop !18

clause_LiteralGetIndex.exit105:                   ; preds = %bb.i
  %i.cc = getelementptr i8, ptr %.val92, i64 64
  %.val3.i.i.i = load i32, ptr %i.cc, align 8     ; 2 uses
  %i.cd = getelementptr i8, ptr %.val92, i64 68
  %.val.i.i.i = load i32, ptr %i.cd, align 4
  %i.ce = getelementptr i8, ptr %.val92, i64 72
  %.val4.i.i.i = load i32, ptr %i.ce, align 8
  %i.cf = add i32 %.val3.i.i.i, -1                ; 2 uses
  %i.cg = add i32 %.val4.i.i.i, %.val.i.i.i       ; 2 uses
  %i.ch = add i32 %i.cg, %i.cf
  %.not23.i = icmp slt i32 %i.ch, 0
  br i1 %.not23.i, label %inf_CopyHyperElectron.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %clause_LiteralGetIndex.exit105
  %i.ci = getelementptr i8, ptr %.val92, i64 56
  %i.cj = sext i32 %i.cf to i64
  %i.ck = add i32 %i.cg, %.val3.i.i.i
  %wide.trip.count.i = zext i32 %i.ck to i64
  br label %bb.j

bb.j:                                             ; preds = %clause_GetLiteralAtom.exit.i.cont, %.lr.ph.i
  %.2141 = phi ptr [ %.1140174, %.lr.ph.i ], [ %.3142, %clause_GetLiteralAtom.exit.i.cont ] ; 3 uses
  %.2138 = phi ptr [ %.1137175, %.lr.ph.i ], [ %.3, %clause_GetLiteralAtom.exit.i.cont ] ; 3 uses
  %indvars.iv.i106 = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i108, %clause_GetLiteralAtom.exit.i.cont ] ; 4 uses
  %.not20.i = icmp eq i64 %indvars.iv.i106, %indvars.iv.i102
  br i1 %.not20.i, label %clause_GetLiteralAtom.exit.i.cont, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val.i107 = load ptr, ptr %i.ci, align 8
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.val.i107, i64 %indvars.iv.i106
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = getelementptr i8, ptr %i.cm, i64 24
  %.val1.i.i = load ptr, ptr %i.cn, align 8       ; 3 uses
  %.val5.val.i.i.i = load i32, ptr %.val1.i.i, align 8
  %i.co = load i32, ptr @fol_NOT, align 4
  %.not.i.i.i = icmp eq i32 %.val5.val.i.i.i, %i.co
  br i1 %.not.i.i.i, label %bb.l, label %clause_GetLiteralAtom.exit.i

bb.l:                                             ; preds = %bb.k
  %i.cp = getelementptr i8, ptr %.val1.i.i, i64 16
  %.val6.i.i.i = load ptr, ptr %i.cp, align 8
  %i.cq = getelementptr i8, ptr %.val6.i.i.i, i64 8
  %.val6.val.i.i.i = load ptr, ptr %i.cq, align 8
  br label %clause_GetLiteralAtom.exit.i

clause_GetLiteralAtom.exit.i:                     ; preds = %bb.l, %bb.k
  %.0.i.i.i = phi ptr [ %.val6.val.i.i.i, %bb.l ], [ %.val1.i.i, %bb.k ]
  %i.cr = tail call ptr @term_Copy(ptr noundef %.0.i.i.i) #14
  %i.cs = tail call ptr @subst_Apply(ptr noundef %i.bd, ptr noundef %i.cr) #14
  %i.ct = tail call ptr @subst_Apply(ptr noundef %1, ptr noundef %i.cs) #14
  %.not21.i = icmp sgt i64 %indvars.iv.i106, %i.cj ; 3 uses
  %.sroa.speculated = select i1 %.not21.i, ptr %.2138, ptr %.2141
  %i.cu = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr %i.ct, ptr %i.cv, align 8
  store ptr %.sroa.speculated, ptr %i.cu, align 8
  %spec.select = select i1 %.not21.i, ptr %.2141, ptr %i.cu
  %spec.select149 = select i1 %.not21.i, ptr %i.cu, ptr %.2138
  br label %clause_GetLiteralAtom.exit.i.cont

clause_GetLiteralAtom.exit.i.cont:                ; preds = %clause_GetLiteralAtom.exit.i, %bb.j
  %.3142 = phi ptr [ %.2141, %bb.j ], [ %spec.select, %clause_GetLiteralAtom.exit.i ] ; 2 uses
  %.3 = phi ptr [ %.2138, %bb.j ], [ %spec.select149, %clause_GetLiteralAtom.exit.i ] ; 2 uses
  %indvars.iv.next.i108 = add nuw nsw i64 %indvars.iv.i106, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i108, %wide.trip.count.i
  br i1 %exitcond.not.i, label %inf_CopyHyperElectron.exit, label %bb.j, !llvm.loop !102

inf_CopyHyperElectron.exit:                       ; preds = %clause_GetLiteralAtom.exit.i.cont, %clause_LiteralGetIndex.exit105
  %.4143 = phi ptr [ %.1140174, %clause_LiteralGetIndex.exit105 ], [ %.3142, %clause_GetLiteralAtom.exit.i.cont ] ; 2 uses
  %.4 = phi ptr [ %.1137175, %clause_LiteralGetIndex.exit105 ], [ %.3, %clause_GetLiteralAtom.exit.i.cont ] ; 2 uses
  %indvars.iv.next202 = add nsw i64 %indvars.iv201, 1 ; 2 uses
  %lftr.wideiv204 = trunc i64 %indvars.iv.next202 to i32
  %exitcond205.not = icmp eq i32 %i.am, %lftr.wideiv204
  br i1 %exitcond205.not, label %._crit_edge183, label %bb.f, !llvm.loop !103

._crit_edge183:                                   ; preds = %inf_CopyHyperElectron.exit, %._crit_edge165
  %.1140.lcssa = phi ptr [ %.0139.lcssa, %._crit_edge165 ], [ %.4143, %inf_CopyHyperElectron.exit ] ; 3 uses
  %.1137.lcssa = phi ptr [ %.0136.lcssa, %._crit_edge165 ], [ %.4, %inf_CopyHyperElectron.exit ] ; 3 uses
  %.073.lcssa = phi ptr [ %i.a, %._crit_edge165 ], [ %i.bg, %inf_CopyHyperElectron.exit ] ; 3 uses
  %.072.lcssa = phi ptr [ null, %._crit_edge165 ], [ %i.br, %inf_CopyHyperElectron.exit ]
  %.071.lcssa = phi ptr [ null, %._crit_edge165 ], [ %i.bx, %inf_CopyHyperElectron.exit ]
  %.067.lcssa = phi i32 [ %.val88, %._crit_edge165 ], [ %i.bf, %inf_CopyHyperElectron.exit ]
  %i.cw = tail call ptr @clause_Create(ptr noundef %.1140.lcssa, ptr noundef null, ptr noundef %.1137.lcssa, ptr noundef %4, ptr noundef %5) #14 ; 11 uses
  %.not76 = icmp eq i32 %3, 0
  %spec.select229 = select i1 %.not76, i32 10, i32 11
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 76
  store i32 %spec.select229, ptr %i.cx, align 4
  %i.cy = add nsw i32 %.067.lcssa, 1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i32 %i.cy, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 24 ; 3 uses
  %i.db = load i32, ptr %i.da, align 8            ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 48 ; 2 uses
  %i.dd = getelementptr i8, ptr %i.cw, i64 12     ; 2 uses
  %.promoted.i = load i32, ptr %i.dd, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %._crit_edge183
  %spec.select5459.i = phi i32 [ %.promoted.i, %._crit_edge183 ], [ %spec.select54.i, %bb.o ]
  %.058.i = phi i32 [ %i.db, %._crit_edge183 ], [ %spec.select.i, %bb.o ]
  %.04057.i = phi ptr [ %.073.lcssa, %._crit_edge183 ], [ %.040.val.i, %bb.o ] ; 2 uses
  %i.de = getelementptr i8, ptr %.04057.i, i64 8
  %.040.val53.i = load ptr, ptr %i.de, align 8    ; 3 uses
  %i.df = getelementptr i8, ptr %.040.val53.i, i64 48
  %.val.i110 = load i32, ptr %i.df, align 8
  %i.dg = and i32 %.val.i110, 8
  %.not47.i = icmp eq i32 %i.dg, 0
  br i1 %.not47.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dh = load i32, ptr %i.dc, align 8
  %i.di = or i32 %i.dh, 8
  store i32 %i.di, ptr %i.dc, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.dj = getelementptr i8, ptr %.040.val53.i, i64 12
  %.val51.i = load i32, ptr %i.dj, align 4
  %spec.select54.i = tail call i32 @llvm.umax.i32(i32 %.val51.i, i32 %spec.select5459.i) ; 2 uses
  store i32 %spec.select54.i, ptr %i.dd, align 4
  %i.dk = getelementptr inbounds nuw i8, ptr %.040.val53.i, i64 24
  %i.dl = load i32, ptr %i.dk, align 8
  %spec.select.i = tail call i32 @llvm.umax.i32(i32 %.058.i, i32 %i.dl) ; 4 uses
  %.040.val.i = load ptr, ptr %.04057.i, align 8  ; 2 uses
  %.not.i111 = icmp eq ptr %.040.val.i, null
end_hunk_0
