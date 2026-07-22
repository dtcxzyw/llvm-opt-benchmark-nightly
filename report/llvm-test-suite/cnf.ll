inline.NumInlined: 2507
inline.NumDeleted: 162
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 12
begin_hunk_0_@cnf_DefConvert:bb.a
  store ptr %.0.i, ptr %i.bu, align 8
  %i.bv = getelementptr i8, ptr %.val68.val, i64 16
  %.val61 = load ptr, ptr %i.bv, align 8
  %.val61.val = load ptr, ptr %.val61, align 8
  %i.bw = getelementptr i8, ptr %.val61.val, i64 8
  %.val61.val.val = load ptr, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %.val61.val.val, i64 8
  store ptr %.val68.val, ptr %i.bx, align 8
  br label %.thread

bb.o:                                             ; preds = %bb.j
  %.not53 = icmp eq ptr %.val65.val.val, null
  br i1 %.not53, label %.thread, label %.thread77

.thread77:                                        ; preds = %bb.i, %bb.l, %bb.m, %bb.o
  %.05081 = phi ptr [ %.val65.val.val, %bb.o ], [ %.0.i, %bb.m ], [ %.0.i, %bb.l ], [ %.val67.val.val, %bb.i ] ; 4 uses
  %.050.val = load i32, ptr %.05081, align 8
  %i.by = load i32, ptr @fol_EQUIV, align 4
  %.not85 = icmp eq i32 %.050.val, %i.by
  br i1 %.not85, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.thread77
  store ptr null, ptr %2, align 8
  br label %.thread

bb.q:                                             ; preds = %.thread77
  %i.bz = getelementptr i8, ptr %.05081, i64 16   ; 4 uses
  %.050.val58 = load ptr, ptr %i.bz, align 8
  %.val71 = load ptr, ptr %i.c, align 8           ; 2 uses
  %i.ca = tail call ptr @list_PointerDeleteElement(ptr noundef %.050.val58, ptr noundef %.val71) #19
  store ptr %i.ca, ptr %i.bz, align 8
  %i.cb = tail call ptr @term_Copy(ptr noundef nonnull %.05081) #19 ; 2 uses
  store ptr %i.cb, ptr %2, align 8
  %i.cc = load i32, ptr @fol_NOT, align 4
  %i.cd = tail call noundef ptr @memory_Malloc(i32 noundef 16) #19 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %i.cb, ptr %i.ce, align 8
  store ptr null, ptr %i.cd, align 8
  %i.cf = tail call ptr @term_Create(i32 noundef %i.cc, ptr noundef nonnull %i.cd) #19 ; 4 uses
  store ptr %i.cf, ptr %2, align 8
  %i.cg = tail call ptr @cnf_NegationNormalFormula(ptr noundef %i.cf) ; 0 uses
  store ptr %i.cf, ptr %2, align 8
  tail call void @term_AddFatherLinks(ptr noundef %i.cf) #19
  %i.ch = load i32, ptr @fol_IMPLIES, align 4
  store i32 %i.ch, ptr %.05081, align 8
  %i.ci = load i32, ptr @fol_NOT, align 4
  %i.cj = load i32, ptr @fol_OR, align 4
  %.050.val57 = load ptr, ptr %i.bz, align 8
  %i.ck = tail call ptr @term_Create(i32 noundef %i.cj, ptr noundef %.050.val57) #19
  %i.cl = tail call noundef ptr @memory_Malloc(i32 noundef 16) #19 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr %i.ck, ptr %i.cm, align 8
  store ptr null, ptr %i.cl, align 8
  %i.cn = tail call ptr @term_Create(i32 noundef %i.ci, ptr noundef nonnull %i.cl) #19
  %i.co = tail call noundef ptr @memory_Malloc(i32 noundef 16) #19 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr %.val71, ptr %i.cp, align 8
  store ptr null, ptr %i.co, align 8
  %i.cq = tail call noundef ptr @memory_Malloc(i32 noundef 16) #19 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store ptr %i.cn, ptr %i.cr, align 8
  store ptr %i.co, ptr %i.cq, align 8
  store ptr %i.cq, ptr %i.bz, align 8
  %i.cs = tail call ptr @cnf_NegationNormalFormula(ptr noundef nonnull %.0.i) ; 0 uses
  tail call void @term_AddFatherLinks(ptr noundef nonnull %.0.i) #19
  br label %.thread

.thread:                                          ; preds = %bb.n, %bb.k, %bb.p, %bb.q, %bb.o
  %.2 = phi ptr [ %.0.i, %bb.o ], [ %.0.i, %bb.p ], [ %.0.i, %bb.q ], [ %.val68.val, %bb.n ], [ %.0.i, %bb.k ]
  ret ptr %.2
}

declare ptr @list_PointerDeleteElement(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @cnf_HandleDefinition(ptr nofree noundef captures(none) %0, ptr nofree noundef returned captures(ret: address, provenance) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 12 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca ptr, align 8                      ; 11 uses
  %i.e = alloca ptr, align 8                      ; 9 uses
  %i.f = alloca ptr, align 8                      ; 7 uses
  %i.g = alloca ptr, align 8                      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.h = getelementptr i8, ptr %0, i64 112
  %.val71 = load ptr, ptr %i.h, align 8           ; 4 uses
  %i.i = getelementptr i8, ptr %0, i64 104
  %.val72 = load ptr, ptr %i.i, align 8
  %.val70 = load ptr, ptr %1, align 8             ; 2 uses
  store ptr null, ptr %i.a, align 8
  %i.j = call fastcc range(i32 0, 2) i32 @cnf_ContainsDefinitionIntern(ptr noundef %.val70, i32 noundef 1, ptr noundef nonnull %i.a)
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.k = call ptr @list_Copy(ptr noundef %2) #19  ; 3 uses
  %i.l = call ptr @list_Copy(ptr noundef %3) #19  ; 4 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %list_Nconc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not16.i = icmp eq ptr %i.l, null
  br i1 %.not16.i, label %list_Nconc.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c, %.preheader.i
  %.012.i = phi ptr [ %.012.val15.i, %.preheader.i ], [ %i.k, %bb.c ] ; 2 uses
  %.012.val15.i = load ptr, ptr %.012.i, align 8  ; 2 uses
  %.not17.i = icmp eq ptr %.012.val15.i, null
  br i1 %.not17.i, label %bb.d, label %.preheader.i, !llvm.loop !19

bb.d:                                             ; preds = %.preheader.i
  store ptr %i.l, ptr %.012.i, align 8
  br label %list_Nconc.exit.thread

list_Nconc.exit.thread:                           ; preds = %bb.d, %bb.c
  %i.m = call ptr @list_Copy(ptr noundef %4) #19
  br label %bb.e

list_Nconc.exit:                                  ; preds = %bb.b
  %i.n = call ptr @list_Copy(ptr noundef %4) #19  ; 2 uses
  %.not.i74 = icmp eq ptr %i.l, null
  br i1 %.not.i74, label %list_Nconc.exit81, label %bb.e

bb.e:                                             ; preds = %list_Nconc.exit.thread, %list_Nconc.exit
  %i.o = phi ptr [ %i.m, %list_Nconc.exit.thread ], [ %i.n, %list_Nconc.exit ] ; 2 uses
  %.0.i109 = phi ptr [ %i.k, %list_Nconc.exit.thread ], [ %i.l, %list_Nconc.exit ] ; 3 uses
  %.not16.i75 = icmp eq ptr %i.o, null
  br i1 %.not16.i75, label %list_Nconc.exit81, label %.preheader.i76

.preheader.i76:                                   ; preds = %bb.e, %.preheader.i76
  %.012.i77 = phi ptr [ %.012.val15.i78, %.preheader.i76 ], [ %.0.i109, %bb.e ] ; 2 uses
  %.012.val15.i78 = load ptr, ptr %.012.i77, align 8 ; 2 uses
  %.not17.i79 = icmp eq ptr %.012.val15.i78, null
  br i1 %.not17.i79, label %bb.f, label %.preheader.i76, !llvm.loop !19

bb.f:                                             ; preds = %.preheader.i76
  store ptr %i.o, ptr %.012.i77, align 8
  br label %list_Nconc.exit81

list_Nconc.exit81:                                ; preds = %list_Nconc.exit, %bb.e, %bb.f
  %.0.i80 = phi ptr [ %.0.i109, %bb.f ], [ %i.n, %list_Nconc.exit ], [ %.0.i109, %bb.e ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val71, i64 148 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4
  %.not50 = icmp eq i32 %i.q, 0
  br i1 %.not50, label %bb.h, label %bb.g

bb.g:                                             ; preds = %list_Nconc.exit81
  %i.r = load ptr, ptr @stdout, align 8
  %i.s = call i64 @fwrite(ptr nonnull @.str.14, i64 13, i64 1, ptr %i.r) ; 0 uses
  %i.t = load ptr, ptr %i.a, align 8
  %.val59 = load i32, ptr %i.t, align 8
  call void @symbol_Print(i32 noundef %.val59) #19
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %list_Nconc.exit81
  %i.u = load ptr, ptr %i.a, align 8
  %i.v = call ptr @cnf_DefConvert(ptr noundef %.val70, ptr noundef %i.u, ptr noundef nonnull %i.b) ; 5 uses
  %i.w = load ptr, ptr %i.b, align 8
  %.fr113 = freeze ptr %i.w                       ; 2 uses
  %i.x = icmp eq ptr %.fr113, null                ; 2 uses
  %i.y = call ptr @term_Copy(ptr noundef %i.v) #19
  %.val73 = load ptr, ptr %0, align 8
  %i.z = call noundef ptr @memory_Malloc(i32 noundef 16) #19 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.y, ptr %i.aa, align 8
  store ptr %.val73, ptr %i.z, align 8
  store ptr %i.z, ptr %0, align 8
  %i.ab = load i32, ptr %i.p, align 4
  %i.ac = icmp ne i32 %i.ab, 0
  %or.cond = and i1 %i.x, %i.ac
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ad = load ptr, ptr @stdout, align 8
  %i.ae = call i64 @fwrite(ptr nonnull @.str.15, i64 25, i64 1, ptr %i.ad) ; 0 uses
  call void @fol_PrettyPrint(ptr noundef %i.v) #19
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.af = load ptr, ptr %i.a, align 8
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  %.val65 = load ptr, ptr %i.ag, align 8
  %i.ah = getelementptr i8, ptr %.val65, i64 16
  %.val64 = load ptr, ptr %i.ah, align 8
  %.val64.val = load ptr, ptr %.val64, align 8
  %i.ai = getelementptr i8, ptr %.val64.val, i64 8
  %.val64.val.val = load ptr, ptr %i.ai, align 8  ; 2 uses
  %cond = icmp eq ptr %.0.i80, null
  br i1 %cond, label %list_Delete.exit106, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  br i1 %i.x, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.q
  %.047112.us = phi ptr [ %.3.us, %bb.q ], [ %.0.i80, %.lr.ph ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.aj = getelementptr i8, ptr %.047112.us, i64 8
  %.047.val.us = load ptr, ptr %i.aj, align 8     ; 4 uses
  %.not53.us = icmp eq ptr %.047.val.us, null
  br i1 %.not53.us, label %bb.p, label %bb.k

bb.k:                                             ; preds = %.lr.ph.split.us
  %.val69.us = load ptr, ptr %.047.val.us, align 8 ; 2 uses
  %.not54.us = icmp eq ptr %i.v, %.val69.us
  br i1 %.not54.us, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  store ptr null, ptr %i.g, align 8
  store ptr null, ptr %i.d, align 8
  %i.ak = load ptr, ptr %i.a, align 8
  %.val.us = load i32, ptr %i.ak, align 8
  %i.al = call fastcc range(i32 0, 2) i32 @cnf_ContainsPredicateIntern(ptr noundef %.val69.us, i32 noundef %.val.us, i32 noundef 1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.d, ptr noundef nonnull %i.g)
  %.not57.us = icmp eq i32 %i.al, 0
  br i1 %.not57.us, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = load ptr, ptr %i.a, align 8
  %.val66.us = load ptr, ptr %.047.val.us, align 8
  %i.an = load ptr, ptr %i.e, align 8
  %i.ao = call ptr @cnf_ApplyDefinitionOnce(ptr noundef %i.am, ptr noundef %.val64.val.val, ptr noundef %.val66.us, ptr noundef %i.an, ptr noundef %.val71)
  store ptr %i.ao, ptr %.047.val.us, align 8
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %.047.val63.us = load ptr, ptr %.047112.us, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1.us = phi ptr [ %.047112.us, %bb.m ], [ %.047.val63.us, %bb.n ]
  %i.ap = load ptr, ptr %i.d, align 8             ; 2 uses
  %.not6.i89.us = icmp eq ptr %i.ap, null
  br i1 %.not6.i89.us, label %list_Delete.exit94.us, label %.lr.ph.i90.us

.lr.ph.i90.us:                                    ; preds = %bb.o, %.lr.ph.i90.us
  %.07.i91.us = phi ptr [ %.0.val.i92.us, %.lr.ph.i90.us ], [ %i.ap, %bb.o ] ; 3 uses
  %.0.val.i92.us = load ptr, ptr %.07.i91.us, align 8 ; 2 uses
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = sext i32 %i.as to i64
  %i.au = load i64, ptr @memory_FREEDBYTES, align 8
  %i.av = add i64 %i.au, %i.at
  store i64 %i.av, ptr @memory_FREEDBYTES, align 8
  %i.aw = load ptr, ptr %i.aq, align 8
  store ptr %i.aw, ptr %.07.i91.us, align 8
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i91.us, ptr %i.ax, align 8
  %.not.i93.us = icmp eq ptr %.0.val.i92.us, null
  br i1 %.not.i93.us, label %list_Delete.exit94.us, label %.lr.ph.i90.us, !llvm.loop !12

list_Delete.exit94.us:                            ; preds = %.lr.ph.i90.us, %bb.o
  %i.ay = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not6.i95.us = icmp eq ptr %i.ay, null
  br i1 %.not6.i95.us, label %list_Delete.exit100.us, label %.lr.ph.i96.us

.lr.ph.i96.us:                                    ; preds = %list_Delete.exit94.us, %.lr.ph.i96.us
  %.07.i97.us = phi ptr [ %.0.val.i98.us, %.lr.ph.i96.us ], [ %i.ay, %list_Delete.exit94.us ] ; 3 uses
  %.0.val.i98.us = load ptr, ptr %.07.i97.us, align 8 ; 2 uses
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load i32, ptr %i.ba, align 8
  %i.bc = sext i32 %i.bb to i64
  %i.bd = load i64, ptr @memory_FREEDBYTES, align 8
  %i.be = add i64 %i.bd, %i.bc
  store i64 %i.be, ptr @memory_FREEDBYTES, align 8
  %i.bf = load ptr, ptr %i.az, align 8
  store ptr %i.bf, ptr %.07.i97.us, align 8
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i97.us, ptr %i.bg, align 8
  %.not.i99.us = icmp eq ptr %.0.val.i98.us, null
  br i1 %.not.i99.us, label %list_Delete.exit100.us, label %.lr.ph.i96.us, !llvm.loop !12

list_Delete.exit100.us:                           ; preds = %.lr.ph.i96.us, %list_Delete.exit94.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  br label %bb.q

bb.p:                                             ; preds = %bb.k, %.lr.ph.split.us
  %.047.val62.us = load ptr, ptr %.047112.us, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %list_Delete.exit100.us
  %.3.us = phi ptr [ %.1.us, %list_Delete.exit100.us ], [ %.047.val62.us, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %.not110.us = icmp eq ptr %.3.us, null
  br i1 %.not110.us, label %.lr.ph.i102.preheader, label %.lr.ph.split.us, !llvm.loop !156

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.x
  %.047112 = phi ptr [ %.3, %bb.x ], [ %.0.i80, %.lr.ph ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.bh = getelementptr i8, ptr %.047112, i64 8
  %.047.val = load ptr, ptr %i.bh, align 8        ; 4 uses
  %.not53 = icmp eq ptr %.047.val, null
  br i1 %.not53, label %bb.w, label %bb.r

bb.r:                                             ; preds = %.lr.ph.split
  %.val69 = load ptr, ptr %.047.val, align 8      ; 3 uses
  %.not54 = icmp eq ptr %i.v, %.val69
  br i1 %.not54, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  store ptr null, ptr %i.g, align 8
  store ptr null, ptr %i.d, align 8
  store i32 0, ptr %i.c, align 4
  %i.bi = load ptr, ptr %i.a, align 8
  %.val58 = load i32, ptr %i.bi, align 8
  %i.bj = call fastcc range(i32 0, 2) i32 @cnf_ContainsPredicateIntern(ptr noundef %.val69, i32 noundef %.val58, i32 noundef 1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.d, ptr noundef nonnull %i.g)
  %.not55 = icmp eq i32 %i.bj, 0
  br i1 %.not55, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = call ptr @term_Copy(ptr noundef nonnull %.fr113) #19
  %i.bl = load ptr, ptr %i.f, align 8
  %i.bm = load ptr, ptr %i.a, align 8
  %i.bn = getelementptr i8, ptr %i.bm, i64 16
  %.val61 = load ptr, ptr %i.bn, align 8
  %i.bo = load ptr, ptr %i.e, align 8
  %i.bp = getelementptr i8, ptr %i.bo, i64 16
  %.val60 = load ptr, ptr %i.bp, align 8
  %i.bq = load ptr, ptr %i.g, align 8
  %i.br = call ptr @cnf_DefTargetConvert(ptr noundef %.val69, ptr noundef %i.bl, ptr noundef %i.bk, ptr noundef %.val61, ptr noundef %.val60, ptr poison, ptr noundef %i.bq, ptr noundef %.val71, ptr noundef %.val72, ptr noundef nonnull %i.c) ; 2 uses
  %i.bs = load ptr, ptr %i.d, align 8             ; 2 uses
  %.not6.i = icmp eq ptr %i.bs, null
  br i1 %.not6.i, label %list_Delete.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.t, %.lr.ph.i
  %.07.i = phi ptr [ %.0.val.i, %.lr.ph.i ], [ %i.bs, %bb.t ] ; 3 uses
  %.0.val.i = load ptr, ptr %.07.i, align 8       ; 2 uses
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.bv = load i32, ptr %i.bu, align 8
  %i.bw = sext i32 %i.bv to i64
  %i.bx = load i64, ptr @memory_FREEDBYTES, align 8
  %i.by = add i64 %i.bx, %i.bw
  store i64 %i.by, ptr @memory_FREEDBYTES, align 8
  %i.bz = load ptr, ptr %i.bt, align 8
  store ptr %i.bz, ptr %.07.i, align 8
  %i.ca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i, ptr %i.ca, align 8
  %.not.i82 = icmp eq ptr %.0.val.i, null
  br i1 %.not.i82, label %list_Delete.exit, label %.lr.ph.i, !llvm.loop !12

list_Delete.exit:                                 ; preds = %.lr.ph.i, %bb.t
  %i.cb = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not6.i83 = icmp eq ptr %i.cb, null
  br i1 %.not6.i83, label %list_Delete.exit88, label %.lr.ph.i84

.lr.ph.i84:                                       ; preds = %list_Delete.exit, %.lr.ph.i84
  %.07.i85 = phi ptr [ %.0.val.i86, %.lr.ph.i84 ], [ %i.cb, %list_Delete.exit ] ; 3 uses
  %.0.val.i86 = load ptr, ptr %.07.i85, align 8   ; 2 uses
  %i.cc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load i32, ptr %i.cd, align 8
  %i.cf = sext i32 %i.ce to i64
  %i.cg = load i64, ptr @memory_FREEDBYTES, align 8
  %i.ch = add i64 %i.cg, %i.cf
  store i64 %i.ch, ptr @memory_FREEDBYTES, align 8
  %i.ci = load ptr, ptr %i.cc, align 8
  store ptr %i.ci, ptr %.07.i85, align 8
  %i.cj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i85, ptr %i.cj, align 8
  %.not.i87 = icmp eq ptr %.0.val.i86, null
  br i1 %.not.i87, label %list_Delete.exit88, label %.lr.ph.i84, !llvm.loop !12

list_Delete.exit88:                               ; preds = %.lr.ph.i84, %list_Delete.exit
  store ptr null, ptr %i.g, align 8
  store ptr null, ptr %i.d, align 8
  store ptr %i.br, ptr %.047.val, align 8
  %i.ck = load i32, ptr %i.c, align 4
  %.not56 = icmp eq i32 %i.ck, 0
  br i1 %.not56, label %bb.v, label %bb.u

bb.u:                                             ; preds = %list_Delete.exit88
  %i.cl = load ptr, ptr %i.a, align 8
  %i.cm = load ptr, ptr %i.e, align 8
  %i.cn = call ptr @cnf_ApplyDefinitionOnce(ptr noundef %i.cl, ptr noundef %.val64.val.val, ptr noundef %i.br, ptr noundef %i.cm, ptr noundef %.val71)
  store ptr %i.cn, ptr %.047.val, align 8
  br label %bb.v

bb.v:                                             ; preds = %list_Delete.exit88, %bb.u, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  br label %bb.x

bb.w:                                             ; preds = %bb.r, %.lr.ph.split
  %.047.val62 = load ptr, ptr %.047112, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.3 = phi ptr [ %.047112, %bb.v ], [ %.047.val62, %bb.w ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %.not110 = icmp eq ptr %.3, null
  br i1 %.not110, label %.lr.ph.i102.preheader, label %.lr.ph.split, !llvm.loop !156

.lr.ph.i102.preheader:                            ; preds = %bb.x, %bb.q
  br label %.lr.ph.i102

.lr.ph.i102:                                      ; preds = %.lr.ph.i102.preheader, %.lr.ph.i102
  %.07.i103 = phi ptr [ %.0.val.i104, %.lr.ph.i102 ], [ %.0.i80, %.lr.ph.i102.preheader ] ; 3 uses
  %.0.val.i104 = load ptr, ptr %.07.i103, align 8 ; 2 uses
  %i.co = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.cq = load i32, ptr %i.cp, align 8
  %i.cr = sext i32 %i.cq to i64
  %i.cs = load i64, ptr @memory_FREEDBYTES, align 8
  %i.ct = add i64 %i.cs, %i.cr
  store i64 %i.ct, ptr @memory_FREEDBYTES, align 8
  %i.cu = load ptr, ptr %i.co, align 8
  store ptr %i.cu, ptr %.07.i103, align 8
  %i.cv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i103, ptr %i.cv, align 8
  %.not.i105 = icmp eq ptr %.0.val.i104, null
  br i1 %.not.i105, label %list_Delete.exit106, label %.lr.ph.i102, !llvm.loop !12

list_Delete.exit106:                              ; preds = %.lr.ph.i102, %bb.j
  %i.cw = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not52 = icmp eq ptr %i.cw, null
  br i1 %.not52, label %bb.z, label %bb.y

bb.y:                                             ; preds = %list_Delete.exit106
  call void @term_Delete(ptr noundef nonnull %i.cw) #19
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %list_Delete.exit106
  store ptr %i.v, ptr %1, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %1
}

declare void @symbol_Print(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @cnf_ApplyDefinitionToClause(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 68         ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %.val.i68 = load i32, ptr %i.b, align 8
  %.val3.i69 = load i32, ptr %i.c, align 4
  %i.e = add nsw i32 %.val3.i69, %.val.i68
  %.val4.i70 = load i32, ptr %i.d, align 8
  %i.f = sub i32 0, %.val4.i70
  %.not85 = icmp eq i32 %i.e, %i.f
  br i1 %.not85, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 56
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.04472 = phi i32 [ 0, %.lr.ph ], [ %i.o, %bb.b ] ; 2 uses
  %.04871 = phi ptr [ null, %.lr.ph ], [ %i.m, %bb.b ]
  %.val62 = load ptr, ptr %i.g, align 8
  %i.h = sext i32 %.04472 to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %.val62, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %i.j, i64 24
  %.val1.i = load ptr, ptr %i.k, align 8
  %i.l = tail call ptr @term_Copy(ptr noundef %.val1.i) #19
  %i.m = tail call noundef ptr @memory_Malloc(i32 noundef 16) #19 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.l, ptr %i.n, align 8
  store ptr %.04871, ptr %i.m, align 8
  %i.o = add nuw i32 %.04472, 1                   ; 2 uses
  %.val.i = load i32, ptr %i.b, align 8
  %.val3.i = load i32, ptr %i.c, align 4
  %i.p = add nsw i32 %.val3.i, %.val.i
  %.val4.i = load i32, ptr %i.d, align 8
  %i.q = add nsw i32 %i.p, %.val4.i
  %i.r = icmp ult i32 %i.o, %i.q
  br i1 %i.r, label %bb.b, label %._crit_edge, !llvm.loop !157

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.048.lcssa = phi ptr [ null, %bb.a ], [ %i.m, %bb.b ]
  %i.s = load i32, ptr @fol_OR, align 4
  %i.t = tail call ptr @term_Create(i32 noundef %i.s, ptr noundef %.048.lcssa) #19 ; 3 uses
  %i.u = getelementptr i8, ptr %i.t, i64 16
  %.04773 = load ptr, ptr %i.u, align 8           ; 2 uses
  %.not74 = icmp eq ptr %.04773, null
  br i1 %.not74, label %._crit_edge79.thread, label %.lr.ph78

.lr.ph78:                                         ; preds = %._crit_edge, %cont_BackTrack.exit
  %.04776 = phi ptr [ %.047, %cont_BackTrack.exit ], [ %.04773, %._crit_edge ] ; 2 uses
  %.04975 = phi i32 [ %.1, %cont_BackTrack.exit ], [ 0, %._crit_edge ]
  %i.v = getelementptr i8, ptr %.04776, i64 8     ; 3 uses
  %.047.val58 = load ptr, ptr %i.v, align 8       ; 3 uses
  %.val = load i32, ptr %.047.val58, align 8
  %i.w = load i32, ptr @fol_NOT, align 4
  %.not67 = icmp eq i32 %.val, %i.w               ; 2 uses
  br i1 %.not67, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph78
  %i.x = getelementptr i8, ptr %.047.val58, i64 16
  %.val61 = load ptr, ptr %i.x, align 8
  %i.y = getelementptr i8, ptr %.val61, i64 8
  %.val61.val = load ptr, ptr %i.y, align 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph78, %bb.c
  %.046 = phi ptr [ %.val61.val, %bb.c ], [ %.047.val58, %.lr.ph78 ]
  %i.z = load i32, ptr @cont_BINDINGS, align 4
  %i.aa = load i32, ptr @cont_STACKPOINTER, align 4 ; 2 uses
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr @cont_STACKPOINTER, align 4
  %i.ac = sext i32 %i.aa to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr @cont_STACK, i64 %i.ac
  store i32 %i.z, ptr %i.ad, align 4
  store i32 0, ptr @cont_BINDINGS, align 4
  %i.ae = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %i.af = tail call i32 @unify_Match(ptr noundef %i.ae, ptr noundef %1, ptr noundef %.046) #19
  %.not55 = icmp eq i32 %i.af, 0
  br i1 %.not55, label %bb.h, label %bb.e

end_hunk_0
