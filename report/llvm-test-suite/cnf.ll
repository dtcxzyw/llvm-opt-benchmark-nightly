inline.NumInlined: 2507
inline.NumDeleted: 162
begin_hunk_0_@cnf_DistrQuantorNoVarSub:bb.a
bb.d:                                             ; preds = %.lr.ph, %bb.c
  %.1 = phi ptr [ %.097, %.lr.ph ], [ %i.k, %bb.c ] ; 4 uses
  %.051 = load ptr, ptr %.05198, align 8          ; 2 uses
  %.not91 = icmp eq ptr %.051, null
  br i1 %.not91, label %._crit_edge, label %.lr.ph, !llvm.loop !170

._crit_edge:                                      ; preds = %bb.d
  %.not92 = icmp eq ptr %.1, null
  br i1 %.not92, label %._crit_edge.thread, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %.val62 = load ptr, ptr %i.g, align 8
  %i.m = tail call ptr @list_NPointerDifference(ptr noundef %.val62, ptr noundef nonnull %.1) #19 ; 5 uses
  %.val68 = load ptr, ptr %i.m, align 8
  %.not93 = icmp eq ptr %.val68, null
  br i1 %.not93, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %.val65 = load ptr, ptr %i.n, align 8           ; 3 uses
  %.val = load i32, ptr %.val65, align 8
  %.not94 = icmp eq i32 %.val59, %.val
  br i1 %.not94, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr i8, ptr %.val65, i64 16
  %.val73 = load ptr, ptr %i.o, align 8
  %i.p = getelementptr i8, ptr %.val73, i64 8
  %.val73.val = load ptr, ptr %i.p, align 8
  %i.q = getelementptr i8, ptr %.val73.val, i64 16 ; 2 uses
  %.val76.val.val = load ptr, ptr %i.q, align 8
  %i.r = tail call noundef ptr @memory_Malloc(i32 noundef 16) #19 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %.049.val, ptr %i.s, align 8
  store ptr %.val76.val.val, ptr %i.r, align 8
  store ptr %i.r, ptr %i.q, align 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %.07.i = phi ptr [ %.0.val.i, %.lr.ph.i ], [ %i.m, %bb.g ] ; 3 uses
  %.0.val.i = load ptr, ptr %.07.i, align 8       ; 2 uses
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load i32, ptr %i.u, align 8
  %i.w = sext i32 %i.v to i64
  %i.x = load i64, ptr @memory_FREEDBYTES, align 8
  %i.y = add i64 %i.x, %i.w
  store i64 %i.y, ptr @memory_FREEDBYTES, align 8
  %i.z = load ptr, ptr %i.t, align 8
  store ptr %i.z, ptr %.07.i, align 8
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i, ptr %i.aa, align 8
  %.not.i = icmp eq ptr %.0.val.i, null
  br i1 %.not.i, label %list_Delete.exit, label %.lr.ph.i, !llvm.loop !12

bb.h:                                             ; preds = %bb.f
  %i.ab = tail call noundef ptr @memory_Malloc(i32 noundef 16) #19 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %.049.val, ptr %i.ac, align 8
  store ptr null, ptr %i.ab, align 8
  %i.ad = tail call ptr @fol_CreateQuantifier(i32 noundef %.val59, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.m) #19
  br label %list_Delete.exit

bb.i:                                             ; preds = %bb.e
  %i.ae = tail call noundef ptr @memory_Malloc(i32 noundef 16) #19 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %.049.val, ptr %i.af, align 8
  store ptr null, ptr %i.ae, align 8
  %i.ag = tail call ptr @term_Create(i32 noundef %.val58, ptr noundef nonnull %i.m) #19
  %i.ah = tail call noundef ptr @memory_Malloc(i32 noundef 16) #19 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.ag, ptr %i.ai, align 8
  store ptr null, ptr %i.ah, align 8
  %i.aj = tail call ptr @fol_CreateQuantifier(i32 noundef %.val59, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.ah) #19
  br label %list_Delete.exit

list_Delete.exit:                                 ; preds = %.lr.ph.i, %bb.h, %bb.i
  %.050 = phi ptr [ %i.aj, %bb.i ], [ %i.ad, %bb.h ], [ %.val65, %.lr.ph.i ]
  %i.ak = tail call noundef ptr @memory_Malloc(i32 noundef 16) #19 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %.050, ptr %i.al, align 8
  store ptr %.1, ptr %i.ak, align 8
  store ptr %i.ak, ptr %i.g, align 8
  %.val72 = load ptr, ptr %i.a, align 8
  %i.am = getelementptr i8, ptr %.val72, i64 8
  %.val72.val = load ptr, ptr %i.am, align 8
  %i.an = getelementptr i8, ptr %.val72.val, i64 16 ; 2 uses
  %.val75.val.val = load ptr, ptr %i.an, align 8
  %i.ao = tail call ptr @list_PointerDeleteElement(ptr noundef %.val75.val.val, ptr noundef %.049.val) #19
  store ptr %i.ao, ptr %i.an, align 8
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.b, %._crit_edge, %list_Delete.exit
  %.049.val67 = load ptr, ptr %.049100, align 8   ; 2 uses
  %.not = icmp eq ptr %.049.val67, null
  br i1 %.not, label %._crit_edge103, label %bb.b, !llvm.loop !171

._crit_edge103:                                   ; preds = %._crit_edge.thread, %bb.a
  %.val74 = load ptr, ptr %i.a, align 8
  %i.ap = getelementptr i8, ptr %.val74, i64 8
  %.val74.val = load ptr, ptr %i.ap, align 8      ; 3 uses
  %i.aq = getelementptr i8, ptr %.val74.val, i64 16
  %.val74.val.val = load ptr, ptr %i.aq, align 8
  %.not90 = icmp eq ptr %.val74.val.val, null
  br i1 %.not90, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge103
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 256), align 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load i32, ptr %i.as, align 8
  %i.au = sext i32 %i.at to i64
  %i.av = load i64, ptr @memory_FREEDBYTES, align 8
  %i.aw = add i64 %i.av, %i.au
  store i64 %i.aw, ptr @memory_FREEDBYTES, align 8
  %i.ax = load ptr, ptr %i.ar, align 8
  store ptr %i.ax, ptr %.val74.val, align 8
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 256), align 8
  store ptr %.val74.val, ptr %i.ay, align 8
  %.val61 = load ptr, ptr %i.a, align 8           ; 2 uses
  %.not6.i78 = icmp eq ptr %.val61, null
  br i1 %.not6.i78, label %list_Delete.exit83, label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %bb.j, %.lr.ph.i79
  %.07.i80 = phi ptr [ %.0.val.i81, %.lr.ph.i79 ], [ %.val61, %bb.j ] ; 3 uses
  %.0.val.i81 = load ptr, ptr %.07.i80, align 8   ; 2 uses
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load i32, ptr %i.ba, align 8
  %i.bc = sext i32 %i.bb to i64
  %i.bd = load i64, ptr @memory_FREEDBYTES, align 8
  %i.be = add i64 %i.bd, %i.bc
  store i64 %i.be, ptr @memory_FREEDBYTES, align 8
  %i.bf = load ptr, ptr %i.az, align 8
  store ptr %i.bf, ptr %.07.i80, align 8
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i80, ptr %i.bg, align 8
  %.not.i82 = icmp eq ptr %.0.val.i81, null
  br i1 %.not.i82, label %list_Delete.exit83, label %.lr.ph.i79, !llvm.loop !12

list_Delete.exit83:                               ; preds = %.lr.ph.i79, %bb.j
  store i32 %.val58, ptr %0, align 8
  %i.bh = getelementptr i8, ptr %.val70.val.val, i64 16
  %.val60 = load ptr, ptr %i.bh, align 8
  store ptr %.val60, ptr %i.a, align 8
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 256), align 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = load i32, ptr %i.bj, align 8
  %i.bl = sext i32 %i.bk to i64
  %i.bm = load i64, ptr @memory_FREEDBYTES, align 8
  %i.bn = add i64 %i.bm, %i.bl
  store i64 %i.bn, ptr @memory_FREEDBYTES, align 8
  %i.bo = load ptr, ptr %i.bi, align 8
  store ptr %i.bo, ptr %.val70.val.val, align 8
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 256), align 8
  store ptr %.val70.val.val, ptr %i.bp, align 8
  br label %bb.k

bb.k:                                             ; preds = %list_Delete.exit83, %._crit_edge103
  br i1 %.not99, label %list_Delete.exit89, label %.lr.ph.i85

.lr.ph.i85:                                       ; preds = %bb.k, %.lr.ph.i85
  %.07.i86 = phi ptr [ %.0.val.i87, %.lr.ph.i85 ], [ %i.d, %bb.k ] ; 3 uses
  %.0.val.i87 = load ptr, ptr %.07.i86, align 8   ; 2 uses
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bs = load i32, ptr %i.br, align 8
  %i.bt = sext i32 %i.bs to i64
  %i.bu = load i64, ptr @memory_FREEDBYTES, align 8
  %i.bv = add i64 %i.bu, %i.bt
  store i64 %i.bv, ptr @memory_FREEDBYTES, align 8
  %i.bw = load ptr, ptr %i.bq, align 8
  store ptr %i.bw, ptr %.07.i86, align 8
  %i.bx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i86, ptr %i.bx, align 8
  %.not.i88 = icmp eq ptr %.0.val.i87, null
  br i1 %.not.i88, label %list_Delete.exit89, label %.lr.ph.i85, !llvm.loop !12

list_Delete.exit89:                               ; preds = %.lr.ph.i85, %bb.k
  ret void
}

declare i32 @symbol_CreateSkolemFunction(i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @fol_ReplaceVariable(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @cnf_OptimizedSkolemFormula(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 0, 2) %3, ptr noundef %4, ptr noundef nonnull %5, ptr noundef %6, i32 noundef range(i32 0, 2) %7, ptr noundef %8, i32 noundef %9) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112        ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 104        ; 3 uses
  %.val139367427 = load i32, ptr %4, align 8      ; 3 uses
  %i.c = load i32, ptr @fol_ALL, align 4
  %.not.i368428 = icmp eq i32 %i.c, %.val139367427 ; 2 uses
  %i.d = load i32, ptr @fol_EXIST, align 4
  %i.e = icmp eq i32 %i.d, %.val139367427
  %narrow.i.not369429 = select i1 %.not.i368428, i1 true, i1 %i.e
  br i1 %narrow.i.not369429, label %.lr.ph374.lr.ph, label %tailrecurse.outer._crit_edge

.lr.ph374.lr.ph:                                  ; preds = %bb.a
  %i.f = getelementptr i8, ptr %4, i64 16         ; 19 uses
  %.not320 = icmp eq i32 %7, 0
  %i.g = getelementptr i8, ptr %0, i64 56
  %i.h = getelementptr i8, ptr %1, i64 16         ; 2 uses
  br label %.lr.ph374

.lr.ph374:                                        ; preds = %.lr.ph374.lr.ph, %list_Delete.exit
  %.not.i368434 = phi i1 [ %.not.i368428, %.lr.ph374.lr.ph ], [ %.not.i368, %list_Delete.exit ]
  %.tr341.ph431 = phi i32 [ %9, %.lr.ph374.lr.ph ], [ %.tr341370, %list_Delete.exit ]
  %.tr335.ph430 = phi i32 [ %3, %.lr.ph374.lr.ph ], [ %.0318, %list_Delete.exit ] ; 7 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph374, %cnf_PopAllQuantifier.exit
  %.not.i373 = phi i1 [ %.not.i368434, %.lr.ph374 ], [ %.not.i, %cnf_PopAllQuantifier.exit ]
  %.tr341370 = phi i32 [ %.tr341.ph431, %.lr.ph374 ], [ %.0110, %cnf_PopAllQuantifier.exit ] ; 7 uses
  %.val153371 = load ptr, ptr %i.a, align 8       ; 4 uses
  %.val154372 = load ptr, ptr %i.b, align 8       ; 2 uses
  br i1 %.not.i373, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.val153371, i64 216
  %i.j = load i32, ptr %i.i, align 4
  %.not135 = icmp eq i32 %i.j, 0
  %.val15.i.pre470 = load ptr, ptr %i.f, align 8  ; 3 uses
  br i1 %.not135, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %.val15.i.pre470, i64 8
  %.val152.val = load ptr, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %.val152.val, i64 16
  %.0115362 = load ptr, ptr %i.l, align 8         ; 2 uses
  %.not363 = icmp eq ptr %.0115362, null
  br i1 %.not363, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.m = load ptr, ptr @cnf_VARIABLEDEPTHARRAY, align 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.0115364 = phi ptr [ %.0115362, %.lr.ph ], [ %.0115, %bb.e ] ; 2 uses
  %i.n = getelementptr i8, ptr %.0115364, i64 8
  %.0115.val = load ptr, ptr %i.n, align 8
  %.val138 = load i32, ptr %.0115.val, align 8
  %i.o = sext i32 %.val138 to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.o
  store i32 %.tr341370, ptr %i.p, align 4
  %.0115 = load ptr, ptr %.0115364, align 8       ; 2 uses
  %.not = icmp eq ptr %.0115, null
  br i1 %.not, label %._crit_edge.loopexit, label %bb.e, !llvm.loop !172

._crit_edge.loopexit:                             ; preds = %bb.e
  %.val15.i.pre.pre = load ptr, ptr %i.f, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %.val15.i.pre = phi ptr [ %.val15.i.pre.pre, %._crit_edge.loopexit ], [ %.val15.i.pre470, %bb.d ]
  %i.q = add nsw i32 %.tr341370, 1
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.c
  %.val15.i = phi ptr [ %.val15.i.pre, %._crit_edge ], [ %.val15.i.pre470, %bb.c ]
  %.0110 = phi i32 [ %i.q, %._crit_edge ], [ %.tr341370, %bb.c ] ; 2 uses
  %i.r = getelementptr i8, ptr %.val15.i, i64 8
  %.val15.val.i = load ptr, ptr %i.r, align 8
  %i.s = getelementptr i8, ptr %.val15.val.i, i64 16
  %.val12.i = load ptr, ptr %i.s, align 8
  tail call void @list_DeleteWithElement(ptr noundef %.val12.i, ptr noundef nonnull @term_Delete) #19
  %.val14.i = load ptr, ptr %i.f, align 8
  %i.t = getelementptr i8, ptr %.val14.i, i64 8
  %.val14.val.i = load ptr, ptr %i.t, align 8     ; 2 uses
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 256), align 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load i32, ptr %i.v, align 8
  %i.x = sext i32 %i.w to i64
  %i.y = load i64, ptr @memory_FREEDBYTES, align 8
  %i.z = add i64 %i.y, %i.x
  store i64 %i.z, ptr @memory_FREEDBYTES, align 8
  %i.aa = load ptr, ptr %i.u, align 8
  store ptr %i.aa, ptr %.val14.val.i, align 8
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 256), align 8
  store ptr %.val14.val.i, ptr %i.ab, align 8
  %.val13.i = load ptr, ptr %i.f, align 8         ; 3 uses
  %.val13.val.i = load ptr, ptr %.val13.i, align 8 ; 2 uses
  %i.ac = getelementptr i8, ptr %.val13.val.i, i64 8
  %.val13.val.val.i = load ptr, ptr %i.ac, align 8 ; 4 uses
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = sext i32 %i.af to i64
  %i.ah = load i64, ptr @memory_FREEDBYTES, align 8
  %i.ai = add i64 %i.ah, %i.ag
  store i64 %i.ai, ptr @memory_FREEDBYTES, align 8
  %i.aj = load ptr, ptr %i.ad, align 8
  store ptr %i.aj, ptr %.val13.i, align 8
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.val13.i, ptr %i.ak, align 8
  br label %.lr.ph.ithread-pre-split.i, !llvm.loop !12

.lr.ph.ithread-pre-split.i:                       ; preds = %.lr.ph.ithread-pre-split.i, %bb.f
  %.0.val.i17.i = phi ptr [ %.val13.val.i, %bb.f ], [ %.0.val.i.pr.i, %.lr.ph.ithread-pre-split.i ] ; 3 uses
  %.0.val.i.pr.i = load ptr, ptr %.0.val.i17.i, align 8 ; 2 uses
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = sext i32 %i.an to i64
  %i.ap = load i64, ptr @memory_FREEDBYTES, align 8
  %i.aq = add i64 %i.ap, %i.ao
  store i64 %i.aq, ptr @memory_FREEDBYTES, align 8
  %i.ar = load ptr, ptr %i.al, align 8
  store ptr %i.ar, ptr %.0.val.i17.i, align 8
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.0.val.i17.i, ptr %i.as, align 8
  %.not.i.i = icmp eq ptr %.0.val.i.pr.i, null
  br i1 %.not.i.i, label %cnf_PopAllQuantifier.exit, label %.lr.ph.ithread-pre-split.i, !llvm.loop !12

cnf_PopAllQuantifier.exit:                        ; preds = %.lr.ph.ithread-pre-split.i
  %.val.i = load i32, ptr %.val13.val.val.i, align 8
  store i32 %.val.i, ptr %4, align 8
  %i.at = getelementptr i8, ptr %.val13.val.val.i, i64 16
  %.val10.i = load ptr, ptr %i.at, align 8
  store ptr %.val10.i, ptr %i.f, align 8
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 256), align 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = sext i32 %i.aw to i64
  %i.ay = load i64, ptr @memory_FREEDBYTES, align 8
  %i.az = add i64 %i.ay, %i.ax
  store i64 %i.az, ptr @memory_FREEDBYTES, align 8
  %i.ba = load ptr, ptr %i.au, align 8
  store ptr %i.ba, ptr %.val13.val.val.i, align 8
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 256), align 8
  store ptr %.val13.val.val.i, ptr %i.bb, align 8
  %.val139 = load i32, ptr %4, align 8            ; 3 uses
  %i.bc = load i32, ptr @fol_ALL, align 4
  %.not.i = icmp eq i32 %i.bc, %.val139           ; 2 uses
  %i.bd = load i32, ptr @fol_EXIST, align 4
  %i.be = icmp eq i32 %i.bd, %.val139
  %narrow.i.not = select i1 %.not.i, i1 true, i1 %i.be
  br i1 %narrow.i.not, label %bb.b, label %tailrecurse.outer._crit_edge

bb.g:                                             ; preds = %bb.b
  %i.bf = tail call ptr @fol_FreeVariables(ptr noundef nonnull %4) #19 ; 9 uses
  %.val150 = load ptr, ptr %i.f, align 8          ; 3 uses
  %.val150.val = load ptr, ptr %.val150, align 8
  %i.bg = getelementptr i8, ptr %.val150.val, i64 8
  %.val150.val.val = load ptr, ptr %i.bg, align 8 ; 2 uses
  %.val = load i32, ptr %.val150.val.val, align 8
  %i.bh = load i32, ptr @fol_AND, align 4
  %.not319 = icmp eq i32 %.val, %i.bh
  br i1 %.not319, label %bb.h, label %cnf_StrongSkolemization.exit

bb.h:                                             ; preds = %bb.g
  %i.bi = getelementptr inbounds nuw i8, ptr %.val153371, i64 212
  %i.bj = load i32, ptr %i.bi, align 4
  %.not125 = icmp eq i32 %i.bj, 0
  br i1 %.not125, label %.critedge.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bk = getelementptr i8, ptr %.val150.val.val, i64 16
  %.val142 = load ptr, ptr %i.bk, align 8         ; 2 uses
  %i.bl = getelementptr i8, ptr %.val150, i64 8
  %.val151.val = load ptr, ptr %i.bl, align 8
  %i.bm = getelementptr i8, ptr %.val151.val, i64 16
  %.val141 = load ptr, ptr %i.bm, align 8         ; 3 uses
  %.not443.a = icmp eq ptr %.val142, null
  br i1 %.not443.a, label %.critedge.thread, label %.lr.ph383

.lr.ph383:                                        ; preds = %bb.i
  %.not128 = icmp eq i32 %.tr335.ph430, 0
  %i.bn = getelementptr inbounds nuw i8, ptr %.val153371, i64 132 ; 3 uses
  %.not93.i = icmp eq ptr %.val141, null
  %.not90.i = icmp eq ptr %i.bf, null
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph383, %bb.aw
  %.1116380 = phi ptr [ %.val142, %.lr.ph383 ], [ %.1116.val147, %bb.aw ] ; 4 uses
  br i1 %.not320, label %bb.k, label %cnf_HaveProofOptSkolem.exit.thread

bb.k:                                             ; preds = %bb.j
  br i1 %.not128, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bo = load i32, ptr %i.bn, align 4
  %.not129 = icmp eq i32 %i.bo, 0
  br i1 %.not129, label %cnf_HaveProofOptSkolem.exit.thread.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = load ptr, ptr @stdout, align 8
  %i.bq = tail call i64 @fwrite(ptr nonnull @.str.24, i64 24, i64 1, ptr %i.bp) ; 0 uses
  br label %cnf_HaveProofOptSkolem.exit.thread

bb.n:                                             ; preds = %bb.k
  %i.br = getelementptr i8, ptr %.1116380, i64 8
  %.1116.val145 = load ptr, ptr %i.br, align 8
  %i.bs = tail call ptr @term_Copy(ptr noundef %.1116.val145) #19
  %i.bt = tail call ptr @list_CopyWithElement(ptr noundef %.val141, ptr noundef nonnull @term_Copy) #19
  %i.bu = load i32, ptr @fol_EXIST, align 4
  %i.bv = tail call noundef ptr @memory_Malloc(i32 noundef 16) #19 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %i.bs, ptr %i.bw, align 8
  store ptr null, ptr %i.bv, align 8
  %i.bx = tail call ptr @fol_CreateQuantifier(i32 noundef %i.bu, ptr noundef %i.bt, ptr noundef nonnull %i.bv) #19 ; 3 uses
  %i.by = tail call ptr @fol_FreeVariables(ptr noundef %i.bx) #19 ; 3 uses
  %.not.i155 = icmp eq ptr %i.by, null
  br i1 %.not.i155, label %cnf_QuantifyAndNegate.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bz = tail call ptr @list_CopyWithElement(ptr noundef nonnull %i.by, ptr noundef nonnull @term_Copy) #19
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.o
  %.07.i.i = phi ptr [ %.0.val.i.i, %.lr.ph.i.i ], [ %i.by, %bb.o ] ; 3 uses
  %.0.val.i.i = load ptr, ptr %.07.i.i, align 8   ; 2 uses
  %i.ca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load i32, ptr %i.cb, align 8
  %i.cd = sext i32 %i.cc to i64
  %i.ce = load i64, ptr @memory_FREEDBYTES, align 8
  %i.cf = add i64 %i.ce, %i.cd
  store i64 %i.cf, ptr @memory_FREEDBYTES, align 8
  %i.cg = load ptr, ptr %i.ca, align 8
  store ptr %i.cg, ptr %.07.i.i, align 8
  %i.ch = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i.i, ptr %i.ch, align 8
  %.not.i.i156 = icmp eq ptr %.0.val.i.i, null
  br i1 %.not.i.i156, label %list_Delete.exit.i, label %.lr.ph.i.i, !llvm.loop !12

list_Delete.exit.i:                               ; preds = %.lr.ph.i.i
  %i.ci = load i32, ptr @fol_ALL, align 4
  %i.cj = tail call noundef ptr @memory_Malloc(i32 noundef 16) #19 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %i.bx, ptr %i.ck, align 8
  store ptr null, ptr %i.cj, align 8
  %i.cl = tail call ptr @fol_CreateQuantifier(i32 noundef %i.ci, ptr noundef %i.bz, ptr noundef nonnull %i.cj) #19
  br label %cnf_QuantifyAndNegate.exit

cnf_QuantifyAndNegate.exit:                       ; preds = %bb.n, %list_Delete.exit.i
  %.0.i = phi ptr [ %i.bx, %bb.n ], [ %i.cl, %list_Delete.exit.i ]
  %i.cm = load i32, ptr @fol_NOT, align 4
  %i.cn = tail call noundef ptr @memory_Malloc(i32 noundef 16) #19 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store ptr %.0.i, ptr %i.co, align 8
  store ptr null, ptr %i.cn, align 8
  %i.cp = tail call ptr @term_Create(i32 noundef %i.cm, ptr noundef nonnull %i.cn) #19 ; 2 uses
  %.val49.i = load ptr, ptr %i.a, align 8         ; 4 uses
  %.val50.i = load ptr, ptr %i.b, align 8         ; 2 uses
  tail call void @term_AddFatherLinks(ptr noundef %i.cp) #19
  %i.cq = tail call fastcc ptr @cnf_Cnf(ptr noundef %i.cp, ptr noundef %.val50.i, ptr noundef %6) ; 2 uses
  %i.cr = tail call fastcc ptr @cnf_MakeClauseList(ptr noundef %i.cq, ptr noundef %.val49.i, ptr noundef %.val50.i) ; 3 uses
  tail call void @term_Delete(ptr noundef %i.cq) #19
  %.not3.i = icmp eq ptr %i.cr, null
  br i1 %.not3.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %cnf_QuantifyAndNegate.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %.val49.i, i64 36
  br label %bb.p

bb.p:                                             ; preds = %hsh_Put.exit.i, %.lr.ph.i
  %.04.i = phi ptr [ %i.cr, %.lr.ph.i ], [ %.0.val48.i, %hsh_Put.exit.i ] ; 2 uses
  %i.ct = getelementptr i8, ptr %.04.i, i64 8     ; 2 uses
  %.0.val46.i = load ptr, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.val46.i, i64 48 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 8
  %i.cw = or i32 %i.cv, 8
  store i32 %i.cw, ptr %i.cu, align 8
  %i.cx = load i32, ptr %i.cs, align 4
  %.not44.i = icmp eq i32 %i.cx, 0
  br i1 %.not44.i, label %hsh_Put.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.0.val.i = load ptr, ptr %i.ct, align 8        ; 3 uses
  %i.cy = ptrtoint ptr %.0.val.i to i64
  %i.cz = urem i64 %i.cy, 29
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.cz ; 3 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %bb.q
  %.0.in.i.i = phi ptr [ %i.da, %bb.q ], [ %.0.i.i, %bb.s ]
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8     ; 3 uses
  %.not.i.i157 = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i157, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.db = getelementptr i8, ptr %.0.i.i, i64 8
  %.0.val.i.i158 = load ptr, ptr %i.db, align 8   ; 3 uses
  %i.dc = getelementptr i8, ptr %.0.val.i.i158, i64 8
  %.val.i.i = load ptr, ptr %i.dc, align 8
  %i.dd = icmp eq ptr %.val.i.i, %.0.val.i
  br i1 %i.dd, label %bb.t, label %bb.r, !llvm.loop !96

bb.t:                                             ; preds = %bb.s
  %.val21.i.i = load ptr, ptr %.0.val.i.i158, align 8 ; 3 uses
  %.not6.i.i.i = icmp eq ptr %.val21.i.i, null
  br i1 %.not6.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.t, %bb.u
  %.047.i.i.i = phi ptr [ %.04.val5.i.i.i, %bb.u ], [ %.val21.i.i, %bb.t ] ; 2 uses
  %i.de = getelementptr i8, ptr %.047.i.i.i, i64 8
  %.04.val.i.i.i = load ptr, ptr %i.de, align 8
  %i.df = icmp eq ptr %2, %.04.val.i.i.i
  br i1 %i.df, label %hsh_Put.exit.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.i
  %.04.val5.i.i.i = load ptr, ptr %.047.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.04.val5.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !97

.loopexit.i.i:                                    ; preds = %bb.u, %bb.t
  %i.dg = tail call noundef ptr @memory_Malloc(i32 noundef 16) #19 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store ptr %2, ptr %i.dh, align 8
  store ptr %.val21.i.i, ptr %i.dg, align 8
  store ptr %i.dg, ptr %.0.val.i.i158, align 8
  br label %hsh_Put.exit.i

bb.v:                                             ; preds = %bb.r
  %i.di = tail call noundef ptr @memory_Malloc(i32 noundef 16) #19 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store ptr %2, ptr %i.dj, align 8
  store ptr null, ptr %i.di, align 8
  %i.dk = tail call noundef ptr @memory_Malloc(i32 noundef 16) #19 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store ptr %.0.val.i, ptr %i.dl, align 8
  store ptr %i.di, ptr %i.dk, align 8
  %i.dm = load ptr, ptr %i.da, align 8
  %i.dn = tail call noundef ptr @memory_Malloc(i32 noundef 16) #19 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store ptr %i.dk, ptr %i.do, align 8
  store ptr %i.dm, ptr %i.dn, align 8
  store ptr %i.dn, ptr %i.da, align 8
  br label %hsh_Put.exit.i

hsh_Put.exit.i:                                   ; preds = %.lr.ph.i.i.i, %bb.v, %.loopexit.i.i, %bb.p
  %.0.val48.i = load ptr, ptr %.04.i, align 8     ; 2 uses
  %.not.i159 = icmp eq ptr %.0.val48.i, null
  br i1 %.not.i159, label %._crit_edge.i, label %bb.p, !llvm.loop !173

._crit_edge.i:                                    ; preds = %hsh_Put.exit.i, %cnf_QuantifyAndNegate.exit
  %i.dp = tail call fastcc ptr @cnf_SatUnit(ptr noundef %0, ptr noundef %i.cr) ; 3 uses
  %.not1.i.not = icmp eq ptr %i.dp, null          ; 2 uses
  br i1 %.not1.i.not, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %._crit_edge.i
  %i.dq = getelementptr inbounds nuw i8, ptr %.val49.i, i64 36
  %i.dr = load i32, ptr %i.dq, align 4
  %.not41.i = icmp eq i32 %i.dr, 0
  br i1 %.not41.i, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ds = load ptr, ptr %5, align 8               ; 4 uses
  %i.dt = getelementptr i8, ptr %i.dp, i64 8
  %.val.i160 = load ptr, ptr %i.dt, align 8
  %i.du = tail call fastcc ptr @cnf_GetUsedTerms(ptr noundef %.val.i160, ptr noundef %0, ptr noundef %8) ; 3 uses
  %.not.i52.i = icmp eq ptr %i.ds, null
  br i1 %.not.i52.i, label %list_Nconc.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not16.i.i = icmp eq ptr %i.du, null
  br i1 %.not16.i.i, label %list_Nconc.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.y, %.preheader.i.i
  %.012.i.i = phi ptr [ %.012.val15.i.i, %.preheader.i.i ], [ %i.ds, %bb.y ] ; 2 uses
  %.012.val15.i.i = load ptr, ptr %.012.i.i, align 8 ; 2 uses
  %.not17.i.i = icmp eq ptr %.012.val15.i.i, null
  br i1 %.not17.i.i, label %bb.z, label %.preheader.i.i, !llvm.loop !19

bb.z:                                             ; preds = %.preheader.i.i
  store ptr %i.du, ptr %.012.i.i, align 8
  br label %list_Nconc.exit.i

list_Nconc.exit.i:                                ; preds = %bb.z, %bb.y, %bb.x
  %.0.i53.i = phi ptr [ %i.ds, %bb.z ], [ %i.du, %bb.x ], [ %i.ds, %bb.y ]
  store ptr %.0.i53.i, ptr %5, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %list_Nconc.exit.i, %bb.w
  %i.dv = tail call ptr @list_PointerDeleteDuplicates(ptr noundef nonnull %i.dp) #19
end_hunk_0
begin_hunk_1_@cnf_OptimizedSkolemFormula:bb.a
  %.0115.val.i = load ptr, ptr %i.ls, align 8
  %.val156.i = load ptr, ptr %.0115.val.i, align 8 ; 2 uses
  %.val155.i = load ptr, ptr %i.ln, align 8       ; 2 uses
  %.not26.i = icmp eq ptr %.val156.i, null
  br i1 %.not26.i, label %.preheader.i269, label %.lr.ph.i266

.lr.ph.i266:                                      ; preds = %bb.bg
  %i.lw = load ptr, ptr @cnf_VARIABLEDEPTHARRAY, align 8
  br label %bb.bh

.preheader.i269:                                  ; preds = %bb.bh, %bb.bg
  %.017.lcssa.i = phi i32 [ 0, %bb.bg ], [ %spec.select.i267, %bb.bh ]
  %.not2529.i = icmp eq ptr %.val155.i, null
  br i1 %.not2529.i, label %.loopexit342, label %.lr.ph31.i

.lr.ph31.i:                                       ; preds = %.preheader.i269
  %i.lx = load ptr, ptr @cnf_VARIABLEDEPTHARRAY, align 8
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bh, %.lr.ph.i266
  %.01528.i = phi ptr [ %.val156.i, %.lr.ph.i266 ], [ %.015.val24.i, %bb.bh ] ; 2 uses
  %.01727.i = phi i32 [ 0, %.lr.ph.i266 ], [ %spec.select.i267, %bb.bh ]
  %i.ly = getelementptr i8, ptr %.01528.i, i64 8
  %.015.val.i = load ptr, ptr %i.ly, align 8
  %.val22.i = load i32, ptr %.015.val.i, align 8
  %i.lz = sext i32 %.val22.i to i64
  %i.ma = getelementptr inbounds [4 x i8], ptr %i.lw, i64 %i.lz
  %i.mb = load i32, ptr %i.ma, align 4
  %spec.select.i267 = tail call i32 @llvm.smax.i32(i32 %i.mb, i32 %.01727.i) ; 2 uses
  %.015.val24.i = load ptr, ptr %.01528.i, align 8 ; 2 uses
  %.not.i268 = icmp eq ptr %.015.val24.i, null
  br i1 %.not.i268, label %.preheader.i269, label %bb.bh, !llvm.loop !187

bb.bi:                                            ; preds = %bb.bj, %.lr.ph31.i
  %.11630.i = phi ptr [ %.val155.i, %.lr.ph31.i ], [ %.116.val23.i, %bb.bj ] ; 2 uses
  %i.mc = getelementptr i8, ptr %.11630.i, i64 8
  %.116.val.i = load ptr, ptr %i.mc, align 8
  %.val.i270 = load i32, ptr %.116.val.i, align 8
  %i.md = sext i32 %.val.i270 to i64
  %i.me = getelementptr inbounds [4 x i8], ptr %i.lx, i64 %i.md
  %i.mf = load i32, ptr %i.me, align 4
  %.not21.i = icmp slt i32 %i.mf, %.017.lcssa.i
  br i1 %.not21.i, label %bb.bj, label %cnf_HasDeeperVariable.exit.thread311

bb.bj:                                            ; preds = %bb.bi
  %.116.val23.i = load ptr, ptr %.11630.i, align 8 ; 2 uses
  %.not25.i = icmp eq ptr %.116.val23.i, null
  br i1 %.not25.i, label %.loopexit342, label %bb.bi, !llvm.loop !188

.loopexit342:                                     ; preds = %bb.bj, %.preheader.i269, %bb.be
  %.1116.i = load ptr, ptr %.0115.i388, align 8   ; 2 uses
  %.not327.a = icmp eq ptr %.1116.i, null
  br i1 %.not327.a, label %cnf_HasDeeperVariable.exit.thread314, label %bb.be, !llvm.loop !189

cnf_HasDeeperVariable.exit.thread314:             ; preds = %.loopexit342
  %i.mg = tail call noundef ptr @memory_Malloc(i32 noundef 16) #19 ; 3 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  store ptr %i.ln, ptr %i.mh, align 8
  store ptr null, ptr %i.mg, align 8
  store ptr %i.mg, ptr %.0115.i388, align 8
  br label %bb.bm

cnf_HasDeeperVariable.exit.thread311:             ; preds = %bb.bf, %bb.bi
  %.not328.a = icmp eq ptr %.0118.i387, null
  br i1 %.not328.a, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %cnf_HasDeeperVariable.exit.thread311
  %i.mi = tail call noundef ptr @memory_Malloc(i32 noundef 16) #19 ; 3 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  store ptr %i.ln, ptr %i.mj, align 8
  store ptr %.0.i182391, ptr %i.mi, align 8
  br label %bb.bm

bb.bl:                                            ; preds = %cnf_HasDeeperVariable.exit.thread311
  tail call void @list_InsertNext(ptr noundef nonnull %.0118.i387, ptr noundef nonnull %i.ln) #19, !inline_history !184
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %cnf_HasDeeperVariable.exit.thread314, %bb.bc
  %.2.i = phi ptr [ %i.lp, %bb.bc ], [ %.0.i182391, %cnf_HasDeeperVariable.exit.thread314 ], [ %i.mi, %bb.bk ], [ %.0.i182391, %bb.bl ] ; 2 uses
  %.0121.i = load ptr, ptr %.0121.i392, align 8   ; 2 uses
  %.not321.a = icmp eq ptr %.0121.i, null
  br i1 %.not321.a, label %._crit_edge394, label %bb.ba, !llvm.loop !190

._crit_edge394:                                   ; preds = %bb.bm, %list_Delete.exit298
  %.0.i182.lcssa = phi ptr [ null, %list_Delete.exit298 ], [ %.2.i, %bb.bm ] ; 3 uses
  %i.mk = tail call ptr @fol_FreeVariables(ptr noundef nonnull %4) #19 ; 3 uses
  %.not13.i = icmp eq ptr %i.mk, null
  %.not8.i.i257 = icmp eq ptr %.0.lcssa.i, null   ; 3 uses
  %or.cond.i258 = or i1 %.not8.i.i257, %.not13.i
  br i1 %or.cond.i258, label %cnf_FreeVariablesBut.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %._crit_edge394, %list_Member.exit.thread.i
  %.014.i = phi ptr [ %.0.val10.i, %list_Member.exit.thread.i ], [ %i.mk, %._crit_edge394 ] ; 2 uses
  %i.ml = getelementptr i8, ptr %.014.i, i64 8    ; 2 uses
  %.0.val.i259 = load ptr, ptr %i.ml, align 8
  %.val.i260 = load i32, ptr %.0.val.i259, align 8
  %i.mm = sext i32 %.val.i260 to i64
  %i.mn = inttoptr i64 %i.mm to ptr
  br label %.lr.ph.i.i261

.lr.ph.i.i261:                                    ; preds = %bb.bn, %.lr.ph.i.preheader.i
  %.059.i.i = phi ptr [ %.05.val7.i.i, %bb.bn ], [ %.0.lcssa.i, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.mo = getelementptr i8, ptr %.059.i.i, i64 8
  %.05.val.i.i = load ptr, ptr %i.mo, align 8
  %i.mp = tail call i32 @symbol_Equal(ptr noundef %i.mn, ptr noundef %.05.val.i.i) #19, !callees !13, !inline_history !14
  %.not6.i.i262 = icmp eq i32 %i.mp, 0
  br i1 %.not6.i.i262, label %bb.bn, label %list_Member.exit.i

bb.bn:                                            ; preds = %.lr.ph.i.i261
  %.05.val7.i.i = load ptr, ptr %.059.i.i, align 8 ; 2 uses
  %.not.i.i265 = icmp eq ptr %.05.val7.i.i, null
  br i1 %.not.i.i265, label %list_Member.exit.thread.i, label %.lr.ph.i.i261, !llvm.loop !15

list_Member.exit.i:                               ; preds = %.lr.ph.i.i261
  store ptr null, ptr %i.ml, align 8
  br label %list_Member.exit.thread.i

list_Member.exit.thread.i:                        ; preds = %bb.bn, %list_Member.exit.i
  %.0.val10.i = load ptr, ptr %.014.i, align 8    ; 2 uses
  %.not.i263 = icmp eq ptr %.0.val10.i, null
  br i1 %.not.i263, label %cnf_FreeVariablesBut.exit, label %.lr.ph.i.preheader.i, !llvm.loop !186

cnf_FreeVariablesBut.exit:                        ; preds = %list_Member.exit.thread.i, %._crit_edge394
  %i.mq = tail call ptr @list_PointerDeleteElement(ptr noundef %i.mk, ptr noundef null) #19 ; 3 uses
  %i.mr = tail call i32 @list_Length(ptr noundef %i.mq) #19, !inline_history !184 ; 3 uses
  br i1 %.not8.i.i257, label %._crit_edge400, label %.lr.ph399

.lr.ph399:                                        ; preds = %cnf_FreeVariablesBut.exit, %.lr.ph399
  %.0109.i398 = phi ptr [ %i.nb, %.lr.ph399 ], [ null, %cnf_FreeVariablesBut.exit ]
  %.1122.i397 = phi ptr [ %.1122.val145.i, %.lr.ph399 ], [ %.0.lcssa.i, %cnf_FreeVariablesBut.exit ] ; 2 uses
  %i.ms = tail call i32 @symbol_CreateSkolemFunction(i32 noundef %i.mr, ptr noundef %.val160.i) #19, !inline_history !184
  %i.mt = sext i32 %i.ms to i64
  %i.mu = inttoptr i64 %i.mt to ptr               ; 2 uses
  %i.mv = load ptr, ptr %6, align 8
  %i.mw = tail call noundef ptr @memory_Malloc(i32 noundef 16) #19 ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  store ptr %i.mu, ptr %i.mx, align 8
  store ptr %i.mv, ptr %i.mw, align 8
  store ptr %i.mw, ptr %6, align 8
  %i.my = getelementptr i8, ptr %.1122.i397, i64 8
  %.1122.val.i = load ptr, ptr %i.my, align 8
  %i.mz = tail call noundef ptr @memory_Malloc(i32 noundef 16) #19 ; 3 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  store ptr %.1122.val.i, ptr %i.na, align 8
  store ptr %i.mu, ptr %i.mz, align 8
  %i.nb = tail call noundef ptr @memory_Malloc(i32 noundef 16) #19 ; 4 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  store ptr %i.mz, ptr %i.nc, align 8
  store ptr %.0109.i398, ptr %i.nb, align 8
  %.1122.val145.i = load ptr, ptr %.1122.i397, align 8 ; 2 uses
  %.not322.a = icmp eq ptr %.1122.val145.i, null
  br i1 %.not322.a, label %._crit_edge400, label %.lr.ph399, !llvm.loop !191

._crit_edge400:                                   ; preds = %.lr.ph399, %cnf_FreeVariablesBut.exit
  %.0109.i.lcssa = phi ptr [ null, %cnf_FreeVariablesBut.exit ], [ %i.nb, %.lr.ph399 ] ; 3 uses
  %.not6.i250 = icmp eq ptr %i.mq, null
  br i1 %.not6.i250, label %list_Delete.exit256, label %.lr.ph.i251

.lr.ph.i251:                                      ; preds = %._crit_edge400, %.lr.ph.i251
  %.07.i252 = phi ptr [ %.0.val.i253, %.lr.ph.i251 ], [ %i.mq, %._crit_edge400 ] ; 3 uses
  %.0.val.i253 = load ptr, ptr %.07.i252, align 8 ; 2 uses
  %i.nd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 32
  %i.nf = load i32, ptr %i.ne, align 8
  %i.ng = sext i32 %i.nf to i64
  %i.nh = load i64, ptr @memory_FREEDBYTES, align 8
  %i.ni = add i64 %i.nh, %i.ng
  store i64 %i.ni, ptr @memory_FREEDBYTES, align 8
  %i.nj = load ptr, ptr %i.nd, align 8
  store ptr %i.nj, ptr %.07.i252, align 8
  %i.nk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i252, ptr %i.nk, align 8
  %.not.i254 = icmp eq ptr %.0.val.i253, null
  br i1 %.not.i254, label %list_Delete.exit256, label %.lr.ph.i251, !llvm.loop !12

list_Delete.exit256:                              ; preds = %.lr.ph.i251, %._crit_edge400
  %i.nl = icmp sgt i32 %i.mr, 0
  br i1 %i.nl, label %.lr.ph404, label %.preheader344

.preheader344:                                    ; preds = %.lr.ph404, %list_Delete.exit256
  %.0104.i.lcssa = phi ptr [ null, %list_Delete.exit256 ], [ %i.nn, %.lr.ph404 ] ; 2 uses
  %.not323411 = icmp eq ptr %.0.i182.lcssa, null
  br i1 %.not323411, label %.preheader, label %.lr.ph417

.lr.ph417:                                        ; preds = %.preheader344
  %.not37.i = icmp eq ptr %.0109.i.lcssa, null
  br label %bb.bo

.lr.ph404:                                        ; preds = %list_Delete.exit256, %.lr.ph404
  %.0104.i403 = phi ptr [ %i.nn, %.lr.ph404 ], [ null, %list_Delete.exit256 ]
  %.0111.i402 = phi i32 [ %i.np, %.lr.ph404 ], [ 0, %list_Delete.exit256 ]
  %i.nm = tail call ptr @term_CreateStandardVariable() #19, !inline_history !184
  %i.nn = tail call noundef ptr @memory_Malloc(i32 noundef 16) #19 ; 4 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  store ptr %i.nm, ptr %i.no, align 8
  store ptr %.0104.i403, ptr %i.nn, align 8
  %i.np = add nuw nsw i32 %.0111.i402, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.np, %i.mr
  br i1 %exitcond.not, label %.preheader344, label %.lr.ph404, !llvm.loop !192

.preheader.loopexit:                              ; preds = %list_Delete.exit226
  %10 = icmp ne i32 %spec.select.i, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader344
  %.0120.i.lcssa = phi ptr [ null, %.preheader344 ], [ %i.nr, %.preheader.loopexit ] ; 2 uses
  %.0113.i.lcssa = phi i1 [ false, %.preheader344 ], [ %10, %.preheader.loopexit ]
  %.1105.i.lcssa = phi ptr [ %.0104.i.lcssa, %.preheader344 ], [ %.2106.i.lcssa, %.preheader.loopexit ] ; 2 uses
  %.not324421 = icmp eq ptr %.1105.i.lcssa, null
  br i1 %.not324421, label %._crit_edge424, label %.lr.ph423

bb.bo:                                            ; preds = %.lr.ph417, %list_Delete.exit226
  %.1105.i416 = phi ptr [ %.0104.i.lcssa, %.lr.ph417 ], [ %.2106.i.lcssa, %list_Delete.exit226 ] ; 2 uses
  %.0110.i415 = phi i32 [ 0, %.lr.ph417 ], [ %i.og, %list_Delete.exit226 ] ; 2 uses
  %.0113.i414 = phi i32 [ 0, %.lr.ph417 ], [ %spec.select.i, %list_Delete.exit226 ]
  %.2117.i413 = phi ptr [ %.0.i182.lcssa, %.lr.ph417 ], [ %.2117.val144.i, %list_Delete.exit226 ] ; 2 uses
  %.0120.i412 = phi ptr [ null, %.lr.ph417 ], [ %i.nr, %list_Delete.exit226 ] ; 4 uses
  %i.nq = getelementptr i8, ptr %.2117.i413, i64 8 ; 3 uses
  %.2117.val141.i = load ptr, ptr %i.nq, align 8
  %.val154.i = load ptr, ptr %.2117.val141.i, align 8 ; 3 uses
  %.not.i242 = icmp eq ptr %.0120.i412, null
  br i1 %.not.i242, label %list_Nconc.exit249, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %.not16.i243 = icmp eq ptr %.val154.i, null
  br i1 %.not16.i243, label %list_Nconc.exit249, label %.preheader.i244

.preheader.i244:                                  ; preds = %bb.bp, %.preheader.i244
  %.012.i245 = phi ptr [ %.012.val15.i246, %.preheader.i244 ], [ %.0120.i412, %bb.bp ] ; 2 uses
  %.012.val15.i246 = load ptr, ptr %.012.i245, align 8 ; 2 uses
  %.not17.i247 = icmp eq ptr %.012.val15.i246, null
  br i1 %.not17.i247, label %bb.bq, label %.preheader.i244, !llvm.loop !19

bb.bq:                                            ; preds = %.preheader.i244
  store ptr %.val154.i, ptr %.012.i245, align 8
  br label %list_Nconc.exit249

list_Nconc.exit249:                               ; preds = %bb.bo, %bb.bp, %bb.bq
  %.0.i248 = phi ptr [ %.0120.i412, %bb.bq ], [ %.val154.i, %bb.bo ], [ %.0120.i412, %bb.bp ]
  %i.nr = tail call ptr @list_DeleteDuplicates(ptr noundef %.0.i248, ptr noundef nonnull @term_Equal) #19 ; 6 uses
  %i.ns = tail call i32 @list_Length(ptr noundef %i.nr) #19, !inline_history !184
  %.not444 = icmp eq i32 %i.ns, %.0110.i415
  br i1 %.not444, label %._crit_edge409, label %.lr.ph408

.lr.ph408:                                        ; preds = %list_Nconc.exit249, %.lr.ph408
  %.2106.i407 = phi ptr [ %.val.i241, %.lr.ph408 ], [ %.1105.i416, %list_Nconc.exit249 ] ; 4 uses
  %.1112.i406 = phi i32 [ %i.oc, %.lr.ph408 ], [ 0, %list_Nconc.exit249 ]
  %i.nt = getelementptr i8, ptr %.2106.i407, i64 8
  %.2106.val.i = load ptr, ptr %i.nt, align 8
  tail call void @term_Delete(ptr noundef %.2106.val.i) #19, !inline_history !184
  %.val.i241 = load ptr, ptr %.2106.i407, align 8 ; 2 uses
  %i.nu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 32
  %i.nw = load i32, ptr %i.nv, align 8
  %i.nx = sext i32 %i.nw to i64
  %i.ny = load i64, ptr @memory_FREEDBYTES, align 8
  %i.nz = add i64 %i.ny, %i.nx
  store i64 %i.nz, ptr @memory_FREEDBYTES, align 8
  %i.oa = load ptr, ptr %i.nu, align 8
  store ptr %i.oa, ptr %.2106.i407, align 8
  %i.ob = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.2106.i407, ptr %i.ob, align 8
  %i.oc = add nuw nsw i32 %.1112.i406, 1          ; 2 uses
  %i.od = tail call i32 @list_Length(ptr noundef %i.nr) #19, !inline_history !184
  %i.oe = sub i32 %i.od, %.0110.i415
  %i.of = icmp ult i32 %i.oc, %i.oe
  br i1 %i.of, label %.lr.ph408, label %._crit_edge409, !llvm.loop !193

._crit_edge409:                                   ; preds = %.lr.ph408, %list_Nconc.exit249
  %.2106.i.lcssa = phi ptr [ %.1105.i416, %list_Nconc.exit249 ], [ %.val.i241, %.lr.ph408 ] ; 4 uses
  %i.og = tail call i32 @list_Length(ptr noundef %i.nr) #19, !inline_history !184
  %.not325 = icmp eq ptr %.2106.i.lcssa, null
  %spec.select.i = select i1 %.not325, i32 %.0113.i414, i32 1 ; 2 uses
  %i.oh = tail call ptr @list_Copy(ptr noundef %i.nr) #19, !inline_history !184 ; 4 uses
  %i.oi = tail call ptr @list_Copy(ptr noundef %.2106.i.lcssa) #19, !inline_history !184 ; 3 uses
  %.not.i238 = icmp eq ptr %i.oh, null
  br i1 %.not.i238, label %list_Nconc.exit, label %bb.br

bb.br:                                            ; preds = %._crit_edge409
  %.not16.i = icmp eq ptr %i.oi, null
  br i1 %.not16.i, label %list_Nconc.exit, label %.preheader.i239

.preheader.i239:                                  ; preds = %bb.br, %.preheader.i239
  %.012.i = phi ptr [ %.012.val15.i, %.preheader.i239 ], [ %i.oh, %bb.br ] ; 2 uses
  %.012.val15.i = load ptr, ptr %.012.i, align 8  ; 2 uses
  %.not17.i = icmp eq ptr %.012.val15.i, null
  br i1 %.not17.i, label %bb.bs, label %.preheader.i239, !llvm.loop !19

bb.bs:                                            ; preds = %.preheader.i239
  store ptr %i.oi, ptr %.012.i, align 8
  br label %list_Nconc.exit

list_Nconc.exit:                                  ; preds = %._crit_edge409, %bb.br, %bb.bs
  %.0.i240 = phi ptr [ %i.oh, %bb.bs ], [ %i.oi, %._crit_edge409 ], [ %i.oh, %bb.br ] ; 3 uses
  %.2117.val140.i = load ptr, ptr %i.nq, align 8
  %i.oj = getelementptr i8, ptr %.2117.val140.i, i64 8
  %.val153.i = load ptr, ptr %i.oj, align 8
  %i.ok = load i32, ptr @vec_MAX, align 4         ; 4 uses
  br i1 %.not37.i, label %cnf_SkolemFunctionFormulaMapped.exit, label %.lr.ph40.preheader.i

.lr.ph40.preheader.i:                             ; preds = %list_Nconc.exit
  %i.ol = add nsw i32 %i.ok, 1                    ; 2 uses
  %i.om = sext i32 %i.ok to i64
  %i.on = getelementptr inbounds [8 x i8], ptr @vec_VECTOR, i64 %i.om
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge.i231, %.lr.ph40.preheader.i
  %.01938.i = phi ptr [ %.019.val28.i, %._crit_edge.i231 ], [ %.0109.i.lcssa, %.lr.ph40.preheader.i ] ; 2 uses
  store i32 %i.ol, ptr @vec_MAX, align 4
  store ptr %.val153.i, ptr %i.on, align 8
  %i.oo = getelementptr i8, ptr %.01938.i, i64 8
  %.019.val27.i = load ptr, ptr %i.oo, align 8    ; 2 uses
  %i.op = getelementptr i8, ptr %.019.val27.i, i64 8
  %.val30.i = load ptr, ptr %i.op, align 8
  %i.oq = ptrtoint ptr %.val30.i to i64
  %i.or = trunc i64 %i.oq to i32
  %.val31.i = load ptr, ptr %.019.val27.i, align 8
  %i.os = ptrtoint ptr %.val31.i to i64
  %i.ot = trunc i64 %i.os to i32
  br label %.lr.ph.i227

.lr.ph.i227:                                      ; preds = %.loopexit.i, %.lr.ph.preheader.i
  %i.ou = phi i32 [ %i.pn, %.loopexit.i ], [ %i.ol, %.lr.ph.preheader.i ]
  %i.ov = add nsw i32 %i.ou, -1                   ; 3 uses
  store i32 %i.ov, ptr @vec_MAX, align 4
  %i.ow = sext i32 %i.ov to i64
  %i.ox = getelementptr inbounds [8 x i8], ptr @vec_VECTOR, i64 %i.ow
  %i.oy = load ptr, ptr %i.ox, align 8            ; 4 uses
  %.val.i228 = load i32, ptr %i.oy, align 8
  %.not32.i = icmp eq i32 %.val.i228, %i.or
  br i1 %.not32.i, label %bb.bt, label %.lr.ph._crit_edge.i

.lr.ph._crit_edge.i:                              ; preds = %.lr.ph.i227
  %.phi.trans.insert.i229 = getelementptr i8, ptr %i.oy, i64 16
  %.val25.pre.i = load ptr, ptr %.phi.trans.insert.i229, align 8
  br label %bb.bu

bb.bt:                                            ; preds = %.lr.ph.i227
  store i32 %i.ot, ptr %i.oy, align 8
  %i.oz = getelementptr i8, ptr %i.oy, i64 16     ; 2 uses
  %.val26.i = load ptr, ptr %i.oz, align 8        ; 2 uses
  %.not6.i.i = icmp eq ptr %.val26.i, null
  br i1 %.not6.i.i, label %list_Delete.exit.i237, label %.lr.ph.i.i233

.lr.ph.i.i233:                                    ; preds = %bb.bt, %.lr.ph.i.i233
  %.07.i.i234 = phi ptr [ %.0.val.i.i235, %.lr.ph.i.i233 ], [ %.val26.i, %bb.bt ] ; 3 uses
  %.0.val.i.i235 = load ptr, ptr %.07.i.i234, align 8 ; 2 uses
  %i.pa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 32
  %i.pc = load i32, ptr %i.pb, align 8
  %i.pd = sext i32 %i.pc to i64
  %i.pe = load i64, ptr @memory_FREEDBYTES, align 8
  %i.pf = add i64 %i.pe, %i.pd
  store i64 %i.pf, ptr @memory_FREEDBYTES, align 8
  %i.pg = load ptr, ptr %i.pa, align 8
  store ptr %i.pg, ptr %.07.i.i234, align 8
  %i.ph = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i.i234, ptr %i.ph, align 8
  %.not.i.i236 = icmp eq ptr %.0.val.i.i235, null
  br i1 %.not.i.i236, label %list_Delete.exit.i237, label %.lr.ph.i.i233, !llvm.loop !12

list_Delete.exit.i237:                            ; preds = %.lr.ph.i.i233, %bb.bt
  %i.pi = tail call ptr @list_CopyWithElement(ptr noundef %.0.i240, ptr noundef nonnull @term_Copy) #19 ; 2 uses
  store ptr %i.pi, ptr %i.oz, align 8
  %.pre.pre.i = load i32, ptr @vec_MAX, align 4
  br label %bb.bu

bb.bu:                                            ; preds = %list_Delete.exit.i237, %.lr.ph._crit_edge.i
  %.pre.i = phi i32 [ %i.ov, %.lr.ph._crit_edge.i ], [ %.pre.pre.i, %list_Delete.exit.i237 ] ; 2 uses
  %.val25.i = phi ptr [ %.val25.pre.i, %.lr.ph._crit_edge.i ], [ %i.pi, %list_Delete.exit.i237 ] ; 2 uses
  %.not33.i = icmp eq ptr %.val25.i, null
  br i1 %.not33.i, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.bu
  %i.pj = sext i32 %.pre.i to i64
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bv, %.preheader.i
  %indvars.iv.i = phi i64 [ %i.pj, %.preheader.i ], [ %indvars.iv.next.i, %bb.bv ] ; 2 uses
  %.035.i = phi ptr [ %.val25.i, %.preheader.i ], [ %.0.val29.i, %bb.bv ] ; 2 uses
  %i.pk = getelementptr i8, ptr %.035.i, i64 8
  %.0.val.i230 = load ptr, ptr %i.pk, align 8
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.pl = trunc nsw i64 %indvars.iv.next.i to i32 ; 2 uses
  store i32 %i.pl, ptr @vec_MAX, align 4
  %i.pm = getelementptr inbounds [8 x i8], ptr @vec_VECTOR, i64 %indvars.iv.i
  store ptr %.0.val.i230, ptr %i.pm, align 8
  %.0.val29.i = load ptr, ptr %.035.i, align 8    ; 2 uses
  %.not34.i = icmp eq ptr %.0.val29.i, null
  br i1 %.not34.i, label %.loopexit.i, label %bb.bv, !llvm.loop !194

.loopexit.i:                                      ; preds = %bb.bv, %bb.bu
  %i.pn = phi i32 [ %.pre.i, %bb.bu ], [ %i.pl, %bb.bv ] ; 2 uses
  %.not20.i = icmp eq i32 %i.ok, %i.pn
  br i1 %.not20.i, label %._crit_edge.i231, label %.lr.ph.i227, !llvm.loop !195

._crit_edge.i231:                                 ; preds = %.loopexit.i
  %.019.val28.i = load ptr, ptr %.01938.i, align 8 ; 2 uses
  %.not.i232 = icmp eq ptr %.019.val28.i, null
  br i1 %.not.i232, label %cnf_SkolemFunctionFormulaMapped.exit, label %.lr.ph.preheader.i, !llvm.loop !196

cnf_SkolemFunctionFormulaMapped.exit:             ; preds = %._crit_edge.i231, %list_Nconc.exit
  store i32 %i.ok, ptr @vec_MAX, align 4
  %.not6.i220 = icmp eq ptr %.0.i240, null
  br i1 %.not6.i220, label %list_Delete.exit226, label %.lr.ph.i221

.lr.ph.i221:                                      ; preds = %cnf_SkolemFunctionFormulaMapped.exit, %.lr.ph.i221
  %.07.i222 = phi ptr [ %.0.val.i223, %.lr.ph.i221 ], [ %.0.i240, %cnf_SkolemFunctionFormulaMapped.exit ] ; 3 uses
  %.0.val.i223 = load ptr, ptr %.07.i222, align 8 ; 2 uses
  %i.po = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 32
  %i.pq = load i32, ptr %i.pp, align 8
  %i.pr = sext i32 %i.pq to i64
  %i.ps = load i64, ptr @memory_FREEDBYTES, align 8
  %i.pt = add i64 %i.ps, %i.pr
  store i64 %i.pt, ptr @memory_FREEDBYTES, align 8
  %i.pu = load ptr, ptr %i.po, align 8
  store ptr %i.pu, ptr %.07.i222, align 8
  %i.pv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i222, ptr %i.pv, align 8
  %.not.i224 = icmp eq ptr %.0.val.i223, null
  br i1 %.not.i224, label %list_Delete.exit226, label %.lr.ph.i221, !llvm.loop !12

list_Delete.exit226:                              ; preds = %.lr.ph.i221, %cnf_SkolemFunctionFormulaMapped.exit
  %.2117.val.i = load ptr, ptr %i.nq, align 8
  %i.pw = getelementptr i8, ptr %.2117.val.i, i64 8
  %.val152.i = load ptr, ptr %i.pw, align 8
  tail call fastcc void @cnf_OptimizedSkolemFormula(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 0, 2) %.tr335.ph430, ptr noundef %.val152.i, ptr noundef nonnull %5, ptr noundef %6, i32 noundef range(i32 0, 2) %7, ptr noundef %8, i32 noundef %.tr341370), !inline_history !184
  %.2117.val144.i = load ptr, ptr %.2117.i413, align 8 ; 2 uses
  %.not323.a = icmp eq ptr %.2117.val144.i, null
  br i1 %.not323.a, label %.preheader.loopexit, label %bb.bo, !llvm.loop !197

.lr.ph423:                                        ; preds = %.preheader, %.lr.ph423
  %.3.i422 = phi ptr [ %.val.i219, %.lr.ph423 ], [ %.1105.i.lcssa, %.preheader ] ; 4 uses
  %i.px = getelementptr i8, ptr %.3.i422, i64 8
  %.3.val.i = load ptr, ptr %i.px, align 8
  tail call void @term_Delete(ptr noundef %.3.val.i) #19, !inline_history !184
  %.val.i219 = load ptr, ptr %.3.i422, align 8    ; 2 uses
  %i.py = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 32
  %i.qa = load i32, ptr %i.pz, align 8
  %i.qb = sext i32 %i.qa to i64
  %i.qc = load i64, ptr @memory_FREEDBYTES, align 8
  %i.qd = add i64 %i.qc, %i.qb
  store i64 %i.qd, ptr @memory_FREEDBYTES, align 8
  %i.qe = load ptr, ptr %i.py, align 8
  store ptr %i.qe, ptr %.3.i422, align 8
  %i.qf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.3.i422, ptr %i.qf, align 8
  %.not324.a = icmp eq ptr %.val.i219, null
  br i1 %.not324.a, label %._crit_edge424, label %.lr.ph423, !llvm.loop !198

._crit_edge424:                                   ; preds = %.lr.ph423, %.preheader
  %.not6.i212 = icmp eq ptr %.0120.i.lcssa, null
  br i1 %.not6.i212, label %list_Delete.exit218, label %.lr.ph.i213

.lr.ph.i213:                                      ; preds = %._crit_edge424, %.lr.ph.i213
  %.07.i214 = phi ptr [ %.0.val.i215, %.lr.ph.i213 ], [ %.0120.i.lcssa, %._crit_edge424 ] ; 3 uses
  %.0.val.i215 = load ptr, ptr %.07.i214, align 8 ; 2 uses
  %i.qg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 32
  %i.qi = load i32, ptr %i.qh, align 8
  %i.qj = sext i32 %i.qi to i64
  %i.qk = load i64, ptr @memory_FREEDBYTES, align 8
  %i.ql = add i64 %i.qk, %i.qj
  store i64 %i.ql, ptr @memory_FREEDBYTES, align 8
  %i.qm = load ptr, ptr %i.qg, align 8
  store ptr %i.qm, ptr %.07.i214, align 8
  %i.qn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i214, ptr %i.qn, align 8
  %.not.i216 = icmp eq ptr %.0.val.i215, null
  br i1 %.not.i216, label %list_Delete.exit218, label %.lr.ph.i213, !llvm.loop !12

list_Delete.exit218:                              ; preds = %.lr.ph.i213, %._crit_edge424
  tail call void @list_DeleteWithElement(ptr noundef %.0.i182.lcssa, ptr noundef nonnull @list_PairFree) #19
  br i1 %.not8.i.i257, label %list_Delete.exit211, label %.lr.ph.i206

.lr.ph.i206:                                      ; preds = %list_Delete.exit218, %.lr.ph.i206
  %.07.i207 = phi ptr [ %.0.val.i208, %.lr.ph.i206 ], [ %.0.lcssa.i, %list_Delete.exit218 ] ; 3 uses
  %.0.val.i208 = load ptr, ptr %.07.i207, align 8 ; 2 uses
  %i.qo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 32
  %i.qq = load i32, ptr %i.qp, align 8
  %i.qr = sext i32 %i.qq to i64
  %i.qs = load i64, ptr @memory_FREEDBYTES, align 8
  %i.qt = add i64 %i.qs, %i.qr
  store i64 %i.qt, ptr @memory_FREEDBYTES, align 8
  %i.qu = load ptr, ptr %i.qo, align 8
  store ptr %i.qu, ptr %.07.i207, align 8
  %i.qv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i207, ptr %i.qv, align 8
  %.not.i209 = icmp eq ptr %.0.val.i208, null
  br i1 %.not.i209, label %list_Delete.exit211, label %.lr.ph.i206, !llvm.loop !12

list_Delete.exit211:                              ; preds = %.lr.ph.i206, %list_Delete.exit218
  tail call void @list_DeleteWithElement(ptr noundef %.0109.i.lcssa, ptr noundef nonnull @list_PairFree) #19
  %i.qw = getelementptr inbounds nuw i8, ptr %.val159.i, i64 136
  %i.qx = load i32, ptr %i.qw, align 4
  %i.qy = icmp ne i32 %i.qx, 0
  %or.cond.i = select i1 %i.qy, i1 %.0113.i.lcssa, i1 false
  br i1 %or.cond.i, label %bb.bw, label %cnf_Skolemize.exit

bb.bw:                                            ; preds = %list_Delete.exit211
  %i.qz = load ptr, ptr @stdout, align 8
  %i.ra = tail call i64 @fwrite(ptr nonnull @.str.29, i64 29, i64 1, ptr %i.qz), !inline_history !184 ; 0 uses
  br label %cnf_Skolemize.exit

cnf_StrongSkolemization.exit:                     ; preds = %.critedge.thread.cnf_StrongSkolemization.exit_crit_edge, %bb.g
  %.val20.i = phi ptr [ %.val20.i.pre, %.critedge.thread.cnf_StrongSkolemization.exit_crit_edge ], [ %.val150, %bb.g ]
  %.0 = phi i32 [ %.tr335.ph430, %.critedge.thread.cnf_StrongSkolemization.exit_crit_edge ], [ 0, %bb.g ] ; 2 uses
  %i.rb = getelementptr i8, ptr %.val20.i, i64 8
  %.val20.val.i = load ptr, ptr %i.rb, align 8    ; 2 uses
  %i.rc = getelementptr i8, ptr %.val20.val.i, i64 16
  %.val17.i = load ptr, ptr %i.rc, align 8        ; 2 uses
  %.not8.i.i = icmp eq ptr %.val17.i, null
  br i1 %.not8.i.i, label %.lr.ph.i21thread-pre-split.lr.ph.i, label %.lr.ph.i.i183

.lr.ph.i.i183:                                    ; preds = %cnf_StrongSkolemization.exit, %.lr.ph.i.i183
  %.010.i.i = phi ptr [ %i.rg, %.lr.ph.i.i183 ], [ null, %cnf_StrongSkolemization.exit ]
  %.069.i.i = phi ptr [ %.06.val7.i.i, %.lr.ph.i.i183 ], [ %.val17.i, %cnf_StrongSkolemization.exit ] ; 2 uses
  %i.rd = getelementptr i8, ptr %.069.i.i, i64 8
  %.06.val.i.i = load ptr, ptr %i.rd, align 8
  %.val.i.i184 = load i32, ptr %.06.val.i.i, align 8
  %i.re = sext i32 %.val.i.i184 to i64
  %i.rf = inttoptr i64 %i.re to ptr
  %i.rg = tail call noundef ptr @memory_Malloc(i32 noundef 16) #19 ; 4 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 8
  store ptr %i.rf, ptr %i.rh, align 8
  store ptr %.010.i.i, ptr %i.rg, align 8
  %.06.val7.i.i = load ptr, ptr %.069.i.i, align 8 ; 2 uses
  %.not.i.i185 = icmp eq ptr %.06.val7.i.i, null
  br i1 %.not.i.i185, label %cnf_GetSymbolList.exit.loopexit.i, label %.lr.ph.i.i183, !llvm.loop !185

cnf_GetSymbolList.exit.loopexit.i:                ; preds = %.lr.ph.i.i183
  %.val19.pre.i = load ptr, ptr %i.f, align 8
  %.phi.trans.insert.i = getelementptr i8, ptr %.val19.pre.i, i64 8
  %.val19.val.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8
  br label %.lr.ph.i21thread-pre-split.lr.ph.i

.lr.ph.i21thread-pre-split.lr.ph.i:               ; preds = %cnf_GetSymbolList.exit.loopexit.i, %cnf_StrongSkolemization.exit
  %.val19.val.i = phi ptr [ %.val20.val.i, %cnf_StrongSkolemization.exit ], [ %.val19.val.pre.i, %cnf_GetSymbolList.exit.loopexit.i ]
  %.0.lcssa.i.i = phi ptr [ null, %cnf_StrongSkolemization.exit ], [ %i.rg, %cnf_GetSymbolList.exit.loopexit.i ] ; 3 uses
  tail call void @term_Delete(ptr noundef %.val19.val.i) #19
  %.val18.i = load ptr, ptr %i.f, align 8         ; 3 uses
  %.val18.val.i = load ptr, ptr %.val18.i, align 8 ; 2 uses
  %i.ri = getelementptr i8, ptr %.val18.val.i, i64 8
  %.val18.val.val.i = load ptr, ptr %i.ri, align 8 ; 4 uses
  %i.rj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 32
  %i.rl = load i32, ptr %i.rk, align 8
  %i.rm = sext i32 %i.rl to i64
  %i.rn = load i64, ptr @memory_FREEDBYTES, align 8
  %i.ro = add i64 %i.rn, %i.rm
  store i64 %i.ro, ptr @memory_FREEDBYTES, align 8
  %i.rp = load ptr, ptr %i.rj, align 8
  store ptr %i.rp, ptr %.val18.i, align 8
  %i.rq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.val18.i, ptr %i.rq, align 8
  br label %.lr.ph.i21thread-pre-split.i, !llvm.loop !12

.lr.ph.i21thread-pre-split.i:                     ; preds = %.lr.ph.i21thread-pre-split.i, %.lr.ph.i21thread-pre-split.lr.ph.i
  %.0.val.i48.i = phi ptr [ %.val18.val.i, %.lr.ph.i21thread-pre-split.lr.ph.i ], [ %.0.val.i.pr.i186, %.lr.ph.i21thread-pre-split.i ] ; 3 uses
  %.0.val.i.pr.i186 = load ptr, ptr %.0.val.i48.i, align 8 ; 2 uses
  %i.rr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 32
  %i.rt = load i32, ptr %i.rs, align 8
  %i.ru = sext i32 %i.rt to i64
  %i.rv = load i64, ptr @memory_FREEDBYTES, align 8
  %i.rw = add i64 %i.rv, %i.ru
  store i64 %i.rw, ptr @memory_FREEDBYTES, align 8
  %i.rx = load ptr, ptr %i.rr, align 8
  store ptr %i.rx, ptr %.0.val.i48.i, align 8
  %i.ry = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.0.val.i48.i, ptr %i.ry, align 8
  %.not.i22.i = icmp eq ptr %.0.val.i.pr.i186, null
  br i1 %.not.i22.i, label %list_Delete.exit.i187, label %.lr.ph.i21thread-pre-split.i, !llvm.loop !12

list_Delete.exit.i187:                            ; preds = %.lr.ph.i21thread-pre-split.i
  %.val.i188 = load i32, ptr %.val18.val.val.i, align 8
  store i32 %.val.i188, ptr %4, align 8
  %i.rz = getelementptr i8, ptr %.val18.val.val.i, i64 16
  %.val15.i189 = load ptr, ptr %i.rz, align 8
  store ptr %.val15.i189, ptr %i.f, align 8
  %i.sa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 256), align 8 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 32
  %i.sc = load i32, ptr %i.sb, align 8
  %i.sd = sext i32 %i.sc to i64
  %i.se = load i64, ptr @memory_FREEDBYTES, align 8
  %i.sf = add i64 %i.se, %i.sd
  store i64 %i.sf, ptr @memory_FREEDBYTES, align 8
  %i.sg = load ptr, ptr %i.sa, align 8
  store ptr %i.sg, ptr %.val18.val.val.i, align 8
  %i.sh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 256), align 8
  store ptr %.val18.val.val.i, ptr %i.sh, align 8
  %i.si = load i32, ptr @vec_MAX, align 4         ; 5 uses
  %i.sj = tail call i32 @list_Length(ptr noundef %i.bf) #19
  %.not39.i.i = icmp eq ptr %.0.lcssa.i.i, null
  br i1 %.not39.i.i, label %list_Delete.exit33.thread.i, label %.lr.ph43.preheader.i.i

list_Delete.exit33.thread.i:                      ; preds = %list_Delete.exit.i187
  store i32 %i.si, ptr @vec_MAX, align 4
  br label %cnf_Skolemize.exit

.lr.ph43.preheader.i.i:                           ; preds = %list_Delete.exit.i187
  %.pre.i.i190 = load i32, ptr @vec_MAX, align 4
  br label %.lr.ph43.i.i

.lr.ph43.i.i:                                     ; preds = %._crit_edge.i.i, %.lr.ph43.preheader.i.i
  %i.sk = phi i32 [ %i.si, %._crit_edge.i.i ], [ %.pre.i.i190, %.lr.ph43.preheader.i.i ] ; 2 uses
  %.02341.i.i = phi ptr [ %.023.val32.i.i, %._crit_edge.i.i ], [ %.0.lcssa.i.i, %.lr.ph43.preheader.i.i ] ; 2 uses
  %.02440.i.i = phi ptr [ %i.sr, %._crit_edge.i.i ], [ null, %.lr.ph43.preheader.i.i ]
  %i.sl = add nsw i32 %i.sk, 1
  store i32 %i.sl, ptr @vec_MAX, align 4
  %i.sm = sext i32 %i.sk to i64
  %i.sn = getelementptr inbounds [8 x i8], ptr @vec_VECTOR, i64 %i.sm
  store ptr %4, ptr %i.sn, align 8
  %i.so = tail call i32 @symbol_CreateSkolemFunction(i32 noundef %i.sj, ptr noundef %.val154372) #19 ; 2 uses
  %i.sp = sext i32 %i.so to i64
  %i.sq = inttoptr i64 %i.sp to ptr
  %i.sr = tail call noundef ptr @memory_Malloc(i32 noundef 16) #19 ; 4 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 8
  store ptr %i.sq, ptr %i.ss, align 8
  store ptr %.02440.i.i, ptr %i.sr, align 8
  %i.st = load i32, ptr @vec_MAX, align 4         ; 2 uses
  %.not2538.i.i = icmp eq i32 %i.si, %i.st
  br i1 %.not2538.i.i, label %._crit_edge.i.i, label %.lr.ph.i23.i

.lr.ph.i23.i:                                     ; preds = %.lr.ph43.i.i
  %i.su = getelementptr i8, ptr %.02341.i.i, i64 8
  br label %bb.bx

end_hunk_1
