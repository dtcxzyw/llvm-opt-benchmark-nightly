inline.NumInlined: 473
inline.NumDeleted: 96
begin_hunk_0_@dfg_parse:bb.a
  %i.aje = phi i64 [ %i.ajd, %bb.lo ], [ 2, %bb.ln ]
  %i.ajf = icmp slt i16 %i.ad, 0
  %i.ajg = sub nsw i32 0, %i.ae
  %i.ajh = select i1 %i.ajf, i32 %i.ajg, i32 0    ; 3 uses
  %i.aji = icmp slt i32 %i.ajh, 172
  br i1 %i.aji, label %.lr.ph938.preheader, label %._crit_edge

.lr.ph938.preheader:                              ; preds = %bb.lp
  %i.ajj = sext i32 %i.ajh to i64
  %i.ajk = sext i16 %i.ad to i64
  %invariant.gep = getelementptr [2 x i8], ptr @yycheck, i64 %i.ajk
  br label %.lr.ph938

.lr.ph938:                                        ; preds = %.lr.ph938.preheader, %bb.lr
  %indvars.iv = phi i64 [ %i.ajj, %.lr.ph938.preheader ], [ %indvars.iv.next, %bb.lr ] ; 6 uses
  %.0381937 = phi i32 [ 0, %.lr.ph938.preheader ], [ %.1382, %bb.lr ] ; 2 uses
  %.0389935 = phi i64 [ 0, %.lr.ph938.preheader ], [ %.1390, %bb.lr ] ; 2 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ajl = load i16, ptr %gep, align 2
  %i.ajm = sext i16 %i.ajl to i64
  %i.ajn = icmp eq i64 %indvars.iv, %i.ajm
  %i.ajo = icmp ne i64 %indvars.iv, 1
  %or.cond9 = and i1 %i.ajo, %i.ajn
  br i1 %or.cond9, label %bb.lq, label %bb.lr

bb.lq:                                            ; preds = %.lr.ph938
  %i.ajp = getelementptr inbounds [8 x i8], ptr @yytname, i64 %indvars.iv
  %i.ajq = load ptr, ptr %i.ajp, align 8
  %i.ajr = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ajq) #15
  %i.ajs = add i64 %.0389935, 15
  %i.ajt = add i64 %i.ajs, %i.ajr
  %i.aju = add nsw i32 %.0381937, 1
  br label %bb.lr

bb.lr:                                            ; preds = %.lr.ph938, %bb.lq
  %.1390 = phi i64 [ %i.ajt, %bb.lq ], [ %.0389935, %.lr.ph938 ] ; 2 uses
  %.1382 = phi i32 [ %i.aju, %bb.lq ], [ %.0381937, %.lr.ph938 ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.ajv = icmp slt i64 %indvars.iv, 171
  br i1 %i.ajv, label %.lr.ph938, label %._crit_edge.loopexit, !llvm.loop !9

._crit_edge.loopexit:                             ; preds = %bb.lr
  %i.ajw = add i64 %.1390, 25
  %i.ajx = icmp slt i32 %.1382, 5
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.lp
  %.0389.lcssa = phi i64 [ 25, %bb.lp ], [ %i.ajw, %._crit_edge.loopexit ]
  %.0381.lcssa = phi i1 [ false, %bb.lp ], [ %i.ajx, %._crit_edge.loopexit ]
  %i.ajy = getelementptr inbounds nuw [8 x i8], ptr @yytname, i64 %i.aje
  %i.ajz = load ptr, ptr %i.ajy, align 8          ; 2 uses
  %i.aka = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ajz) #15
  %i.akb = add i64 %.0389.lcssa, %i.aka
  %i.akc = alloca i8, i64 %i.akb, align 16        ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(25) %i.akc, ptr noundef nonnull align 1 dereferenceable(25) @.str.16, i64 25, i1 false)
  %scevgep = getelementptr i8, ptr %i.akc, i64 24
  br label %yystpcpy.exit

yystpcpy.exit:                                    ; preds = %._crit_edge, %yystpcpy.exit
  %.05.i698 = phi ptr [ %i.akf, %yystpcpy.exit ], [ %scevgep, %._crit_edge ] ; 3 uses
  %.0.i699 = phi ptr [ %i.akd, %yystpcpy.exit ], [ %i.ajz, %._crit_edge ] ; 2 uses
  %i.akd = getelementptr inbounds nuw i8, ptr %.0.i699, i64 1
  %i.ake = load i8, ptr %.0.i699, align 1         ; 2 uses
  %i.akf = getelementptr inbounds nuw i8, ptr %.05.i698, i64 1
  store i8 %i.ake, ptr %.05.i698, align 1
  %.not.i700 = icmp eq i8 %i.ake, 0
  br i1 %.not.i700, label %yystpcpy.exit701, label %yystpcpy.exit, !llvm.loop !10

yystpcpy.exit701:                                 ; preds = %yystpcpy.exit
  br i1 %.0381.lcssa, label %.lr.ph943.preheader, label %.loopexit

.lr.ph943.preheader:                              ; preds = %yystpcpy.exit701
  %i.akg = sext i32 %i.ajh to i64
  %i.akh = sext i16 %i.ad to i64
  %invariant.gep1326 = getelementptr [2 x i8], ptr @yycheck, i64 %i.akh
  br label %.lr.ph943

.lr.ph943:                                        ; preds = %.lr.ph943.preheader, %bb.lv
  %indvars.iv1141 = phi i64 [ %i.akg, %.lr.ph943.preheader ], [ %indvars.iv.next1142, %bb.lv ] ; 6 uses
  %.0380942 = phi ptr [ %.05.i698, %.lr.ph943.preheader ], [ %.1, %bb.lv ] ; 2 uses
  %.2941 = phi i32 [ 0, %.lr.ph943.preheader ], [ %.3, %bb.lv ] ; 3 uses
  %gep1327 = getelementptr [2 x i8], ptr %invariant.gep1326, i64 %indvars.iv1141
  %i.aki = load i16, ptr %gep1327, align 2
  %i.akj = sext i16 %i.aki to i64
  %i.akk = icmp eq i64 %indvars.iv1141, %i.akj
  %i.akl = icmp ne i64 %indvars.iv1141, 1
  %or.cond11 = and i1 %i.akl, %i.akk
  br i1 %or.cond11, label %bb.ls, label %bb.lv

bb.ls:                                            ; preds = %.lr.ph943
  %.not544 = icmp eq i32 %.2941, 0
  %i.akm = select i1 %.not544, ptr @.str.17, ptr @.str.18
  br label %bb.lt

bb.lt:                                            ; preds = %bb.lt, %bb.ls
  %.05.i702 = phi ptr [ %.0380942, %bb.ls ], [ %i.akp, %bb.lt ] ; 3 uses
  %.0.i703 = phi ptr [ %i.akm, %bb.ls ], [ %i.akn, %bb.lt ] ; 2 uses
  %i.akn = getelementptr inbounds nuw i8, ptr %.0.i703, i64 1
  %i.ako = load i8, ptr %.0.i703, align 1         ; 2 uses
  %i.akp = getelementptr inbounds nuw i8, ptr %.05.i702, i64 1
  store i8 %i.ako, ptr %.05.i702, align 1
  %.not.i704 = icmp eq i8 %i.ako, 0
  br i1 %.not.i704, label %yystpcpy.exit705, label %bb.lt, !llvm.loop !10

yystpcpy.exit705:                                 ; preds = %bb.lt
  %i.akq = getelementptr inbounds [8 x i8], ptr @yytname, i64 %indvars.iv1141
  %i.akr = load ptr, ptr %i.akq, align 8
  br label %bb.lu

bb.lu:                                            ; preds = %bb.lu, %yystpcpy.exit705
  %.05.i706 = phi ptr [ %.05.i702, %yystpcpy.exit705 ], [ %i.aku, %bb.lu ] ; 3 uses
  %.0.i707 = phi ptr [ %i.akr, %yystpcpy.exit705 ], [ %i.aks, %bb.lu ] ; 2 uses
  %i.aks = getelementptr inbounds nuw i8, ptr %.0.i707, i64 1
  %i.akt = load i8, ptr %.0.i707, align 1         ; 2 uses
  %i.aku = getelementptr inbounds nuw i8, ptr %.05.i706, i64 1
  store i8 %i.akt, ptr %.05.i706, align 1
  %.not.i708 = icmp eq i8 %i.akt, 0
  br i1 %.not.i708, label %yystpcpy.exit709, label %bb.lu, !llvm.loop !10

yystpcpy.exit709:                                 ; preds = %bb.lu
  %i.akv = add nsw i32 %.2941, 1
  br label %bb.lv

bb.lv:                                            ; preds = %.lr.ph943, %yystpcpy.exit709
  %.3 = phi i32 [ %i.akv, %yystpcpy.exit709 ], [ %.2941, %.lr.ph943 ]
  %.1 = phi ptr [ %.05.i706, %yystpcpy.exit709 ], [ %.0380942, %.lr.ph943 ]
  %indvars.iv.next1142 = add nsw i64 %indvars.iv1141, 1
  %i.akw = icmp slt i64 %indvars.iv1141, 171
  br i1 %i.akw, label %.lr.ph943, label %.loopexit, !llvm.loop !11

.thread726:                                       ; preds = %bb.lm
  call void @dfg_error(ptr noundef nonnull @.str.20)
  unreachable

.loopexit:                                        ; preds = %bb.lv, %yystpcpy.exit701
  call void @dfg_error(ptr noundef nonnull %i.akc)
  unreachable

bb.lw:                                            ; preds = %bb.d
  call void @dfg_error(ptr noundef nonnull @.str.21)
  unreachable

.thread716:                                       ; preds = %bb.e, %bb.o, %bb.u
  %.0391 = phi i32 [ 0, %bb.u ], [ 1, %bb.e ], [ 0, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0391
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @dfg_lex() local_unnamed_addr #2

declare void @string_StringFree(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal fastcc void @dfg_SymbolDecl(i32 noundef range(i32 284, 301) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  switch i32 %2, label %bb.c [
    i32 -2, label %bb.d
    i32 -1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @stdout, align 8
  %i.b = tail call i32 @fflush(ptr noundef %i.a)  ; 0 uses
  %i.c = load i32, ptr @dfg_LINENUMBER, align 4
  tail call void (ptr, ...) @misc_UserErrorReport(ptr noundef nonnull @.str.216, i32 noundef %i.c) #12
  tail call fastcc void @misc_Error()
  unreachable

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.033 = phi i32 [ %2, %bb.c ], [ 0, %bb.a ]     ; 3 uses
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #15
  %i.e = and i64 %i.d, 4294967232
  %.not = icmp eq i64 %i.e, 0                     ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 63
  store i8 0, ptr %i.f, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.g = tail call i32 @symbol_Lookup(ptr noundef nonnull %1) #12 ; 9 uses
  %.not36 = icmp eq i32 %i.g, 0
  br i1 %.not36, label %bb.p, label %bb.g

bb.g:                                             ; preds = %bb.f
  %3 = add nsw i32 %0, -284                       ; 2 uses
  %4 = tail call i32 @llvm.fshl.i32(i32 %3, i32 %3, i32 31)
  switch i32 %4, label %bb.m [
    i32 0, label %bb.h
    i32 7, label %bb.j
    i32 8, label %bb.k
    i32 5, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  %.not.i = icmp sgt i32 %i.g, -1
  %.pre.a = load i32, ptr @symbol_TYPEMASK, align 4 ; 6 uses
  br i1 %.not.i, label %symbol_IsFunction.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.h = sub nsw i32 0, %i.g                      ; 2 uses
  %i.i = and i32 %.pre.a, %i.h
  %switch = icmp samesign ult i32 %i.i, 2
  br i1 %switch, label %symbol_IsFunction.exit.thread45, label %symbol_IsFunction.exit.thread

symbol_IsFunction.exit.thread45:                  ; preds = %bb.i
  switch i32 %0, label %bb.m [
    i32 298, label %symbol_IsPredicate.exit
    i32 300, label %symbol_IsFunction.exit.thread
    i32 294, label %symbol_IsFunction.exit.thread
  ]

bb.j:                                             ; preds = %bb.g
  %.not.i42 = icmp sgt i32 %i.g, -1
  %.pre57 = load i32, ptr @symbol_TYPEMASK, align 4 ; 2 uses
  br i1 %.not.i42, label %symbol_IsFunction.exit.thread, label %.symbol_IsPredicate.exit_crit_edge

.symbol_IsPredicate.exit_crit_edge:               ; preds = %bb.j
  %.pre58 = sub nsw i32 0, %i.g
  br label %symbol_IsPredicate.exit

symbol_IsPredicate.exit:                          ; preds = %.symbol_IsPredicate.exit_crit_edge, %symbol_IsFunction.exit.thread45
  %.pre-phi = phi i32 [ %.pre58, %.symbol_IsPredicate.exit_crit_edge ], [ %i.h, %symbol_IsFunction.exit.thread45 ]
  %5 = phi i32 [ %.pre57, %.symbol_IsPredicate.exit_crit_edge ], [ %.pre.a, %symbol_IsFunction.exit.thread45 ] ; 4 uses
  %i.j = and i32 %5, %.pre-phi
  %.not53 = icmp eq i32 %i.j, 2
  br i1 %.not53, label %6, label %symbol_IsFunction.exit.thread

6:                                                ; preds = %symbol_IsPredicate.exit
  switch i32 %0, label %bb.m [
    i32 300, label %symbol_IsFunction.exit.thread
    i32 294, label %symbol_IsFunction.exit.thread
  ]

bb.k:                                             ; preds = %bb.g, %bb.g
  %.not.i43 = icmp sgt i32 %i.g, -1
  %.pre56 = load i32, ptr @symbol_TYPEMASK, align 4 ; 3 uses
  br i1 %.not.i43, label %symbol_IsFunction.exit.thread, label %symbol_IsJunctor.exit

symbol_IsJunctor.exit:                            ; preds = %bb.k
  %.pre59 = sub nsw i32 0, %i.g
  %.pre61 = and i32 %.pre56, %.pre59
  %i.k = icmp eq i32 %.pre61, 3
  br i1 %i.k, label %bb.m, label %symbol_IsFunction.exit.thread

symbol_IsFunction.exit.thread:                    ; preds = %symbol_IsFunction.exit.thread45, %symbol_IsFunction.exit.thread45, %6, %6, %bb.i, %bb.k, %bb.j, %bb.h, %symbol_IsJunctor.exit, %symbol_IsPredicate.exit
  %7 = phi i32 [ %.pre.a, %bb.i ], [ %.pre56, %bb.k ], [ %.pre57, %bb.j ], [ %.pre.a, %bb.h ], [ %.pre56, %symbol_IsJunctor.exit ], [ %5, %symbol_IsPredicate.exit ], [ %.pre.a, %symbol_IsFunction.exit.thread45 ], [ %.pre.a, %symbol_IsFunction.exit.thread45 ], [ %5, %6 ], [ %5, %6 ]
  %i.l = load ptr, ptr @stdout, align 8
  %i.m = tail call i32 @fflush(ptr noundef %i.l)  ; 0 uses
  %i.n = load i32, ptr @dfg_LINENUMBER, align 4
  tail call void (ptr, ...) @misc_UserErrorReport(ptr noundef nonnull @.str.217, i32 noundef %i.n, ptr noundef nonnull %1) #12
  %i.o = sub nsw i32 0, %i.g
  %i.p = and i32 %7, %i.o                         ; 2 uses
  %i.q = icmp ult i32 %i.p, 4
  br i1 %i.q, label %switch.lookup, label %bb.l

switch.lookup:                                    ; preds = %symbol_IsFunction.exit.thread
  %i.r = zext nneg i32 %i.p to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dfg_SymbolDecl, i64 %i.r
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.l

bb.l:                                             ; preds = %symbol_IsFunction.exit.thread, %switch.lookup
  %.str.221.sink = phi ptr [ %switch.load, %switch.lookup ], [ @.str.221, %symbol_IsFunction.exit.thread ]
  tail call void (ptr, ...) @misc_UserErrorReport(ptr noundef nonnull %.str.221.sink) #12
  tail call fastcc void @misc_Error()
  unreachable

bb.m:                                             ; preds = %bb.g, %symbol_IsFunction.exit.thread45, %6, %symbol_IsJunctor.exit
  %.not40 = icmp eq i32 %2, -2
  br i1 %.not40, label %bb.v, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.s = sub nsw i32 0, %i.g
  %i.t = load i32, ptr @symbol_TYPESTATBITS, align 4
  %i.u = ashr i32 %i.s, %i.t
  %i.v = load ptr, ptr @symbol_SIGNATURE, align 8
  %i.w = sext i32 %i.u to i64                     ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i32, ptr %i.z, align 8
  %.not41 = icmp eq i32 %2, %i.aa
  br i1 %.not41, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = load ptr, ptr @stdout, align 8
  %i.ac = tail call i32 @fflush(ptr noundef %i.ab) ; 0 uses
  %i.ad = load i32, ptr @dfg_LINENUMBER, align 4
  %i.ae = load ptr, ptr @symbol_SIGNATURE, align 8
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.w
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load i32, ptr %i.ah, align 8
  tail call void (ptr, ...) @misc_UserErrorReport(ptr noundef nonnull @.str.222, i32 noundef %i.ad, ptr noundef nonnull %1, i32 noundef %i.ai) #12
  tail call fastcc void @misc_Error()
  unreachable

bb.p:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr @dfg_PRECEDENCE, align 8  ; 3 uses
  switch i32 %0, label %bb.s [
    i32 284, label %bb.q
    i32 298, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.ak = tail call i32 @symbol_CreateFunction(ptr noundef nonnull %1, i32 noundef %.033, i32 noundef 0, ptr noundef %i.aj) #12
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.al = tail call i32 @symbol_CreatePredicate(ptr noundef nonnull %1, i32 noundef %.033, i32 noundef 0, ptr noundef %i.aj) #12
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.am = tail call i32 @symbol_CreateJunctor(ptr noundef nonnull %1, i32 noundef %.033, i32 noundef 0, ptr noundef %i.aj) #12
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.0 = phi i32 [ %i.am, %bb.s ], [ %i.ak, %bb.q ], [ %i.al, %bb.r ]
  %i.an = icmp eq i32 %2, -2
  br i1 %i.an, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ao = tail call ptr @memory_Malloc(i32 noundef 12) #12 ; 4 uses
  store i32 %.0, ptr %i.ao, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store i32 0, ptr %i.ap, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i32 0, ptr %i.aq, align 4
  %i.ar = load ptr, ptr @dfg_SYMBOLLIST, align 8
  %i.as = tail call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.ao, ptr %i.at, align 8
  store ptr %i.ar, ptr %i.as, align 8
  store ptr %i.as, ptr @dfg_SYMBOLLIST, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.m, %bb.n
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 63
  store i8 32, ptr %i.au, align 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  tail call void @string_StringFree(ptr noundef nonnull %1) #12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @dfg_CreateQuantifier(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not121 = icmp eq ptr %1, null
  br i1 %.not121, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %list_Nconc.exit88
  %.0124 = phi ptr [ %.val.i, %list_Nconc.exit88 ], [ %1, %bb.a ] ; 4 uses
  %.050123 = phi ptr [ %.151, %list_Nconc.exit88 ], [ null, %bb.a ] ; 4 uses
  %.052122 = phi ptr [ %.153, %list_Nconc.exit88 ], [ null, %bb.a ] ; 6 uses
  %i.a = getelementptr i8, ptr %.0124, i64 8
  %.0.val = load ptr, ptr %i.a, align 8           ; 4 uses
  %.val69 = load i32, ptr %.0.val, align 8        ; 2 uses
  %i.b = icmp slt i32 %.val69, 1
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = zext nneg i32 %.val69 to i64
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = tail call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.d, ptr %i.f, align 8
  store ptr null, ptr %i.e, align 8
  %.not.i = icmp eq ptr %.052122, null
  br i1 %.not.i, label %list_Nconc.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b, %.preheader.i
  %.012.i = phi ptr [ %.012.val15.i, %.preheader.i ], [ %.052122, %bb.b ] ; 2 uses
  %.012.val15.i = load ptr, ptr %.012.i, align 8  ; 2 uses
  %.not17.i = icmp eq ptr %.012.val15.i, null
  br i1 %.not17.i, label %bb.c, label %.preheader.i, !llvm.loop !4

bb.c:                                             ; preds = %.preheader.i
  store ptr %i.e, ptr %.012.i, align 8
  br label %list_Nconc.exit

list_Nconc.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %.052122, %bb.c ], [ %i.e, %bb.b ]
  tail call void @term_Delete(ptr noundef nonnull %.0.val) #12
  br label %list_Nconc.exit88

bb.d:                                             ; preds = %.lr.ph
  %i.g = getelementptr i8, ptr %.0.val, i64 16
  %.val70 = load ptr, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %.val70, i64 8
  %.val70.val = load ptr, ptr %i.h, align 8
  %.val67 = load i32, ptr %.val70.val, align 8
  %i.i = sext i32 %.val67 to i64
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = tail call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.j, ptr %i.l, align 8
  store ptr null, ptr %i.k, align 8
  %.not.i73 = icmp eq ptr %.052122, null
  br i1 %.not.i73, label %list_Nconc.exit80, label %.preheader.i75

.preheader.i75:                                   ; preds = %bb.d, %.preheader.i75
  %.012.i76 = phi ptr [ %.012.val15.i77, %.preheader.i75 ], [ %.052122, %bb.d ] ; 2 uses
  %.012.val15.i77 = load ptr, ptr %.012.i76, align 8 ; 2 uses
  %.not17.i78 = icmp eq ptr %.012.val15.i77, null
  br i1 %.not17.i78, label %bb.e, label %.preheader.i75, !llvm.loop !4

bb.e:                                             ; preds = %.preheader.i75
  store ptr %i.k, ptr %.012.i76, align 8
  br label %list_Nconc.exit80

list_Nconc.exit80:                                ; preds = %bb.d, %bb.e
  %.0.i79 = phi ptr [ %.052122, %bb.e ], [ %i.k, %bb.d ] ; 2 uses
  %i.m = tail call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.0.val, ptr %i.n, align 8
  store ptr null, ptr %i.m, align 8
  %.not.i81 = icmp eq ptr %.050123, null
  br i1 %.not.i81, label %list_Nconc.exit88, label %.preheader.i83

.preheader.i83:                                   ; preds = %list_Nconc.exit80, %.preheader.i83
  %.012.i84 = phi ptr [ %.012.val15.i85, %.preheader.i83 ], [ %.050123, %list_Nconc.exit80 ] ; 2 uses
  %.012.val15.i85 = load ptr, ptr %.012.i84, align 8 ; 2 uses
  %.not17.i86 = icmp eq ptr %.012.val15.i85, null
  br i1 %.not17.i86, label %bb.f, label %.preheader.i83, !llvm.loop !4

bb.f:                                             ; preds = %.preheader.i83
  store ptr %i.m, ptr %.012.i84, align 8
  br label %list_Nconc.exit88

list_Nconc.exit88:                                ; preds = %bb.f, %list_Nconc.exit80, %list_Nconc.exit
  %.153 = phi ptr [ %.0.i, %list_Nconc.exit ], [ %.0.i79, %list_Nconc.exit80 ], [ %.0.i79, %bb.f ] ; 2 uses
  %.151 = phi ptr [ %.050123, %list_Nconc.exit ], [ %i.m, %list_Nconc.exit80 ], [ %.050123, %bb.f ] ; 2 uses
  %.val.i = load ptr, ptr %.0124, align 8         ; 2 uses
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load i32, ptr %i.p, align 8
  %i.r = sext i32 %i.q to i64
  %i.s = load i64, ptr @memory_FREEDBYTES, align 8
  %i.t = add i64 %i.s, %i.r
  store i64 %i.t, ptr @memory_FREEDBYTES, align 8
  %i.u = load ptr, ptr %i.o, align 8
  store ptr %i.u, ptr %.0124, align 8
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.0124, ptr %i.v, align 8
  %.not = icmp eq ptr %.val.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !12

._crit_edge:                                      ; preds = %list_Nconc.exit88, %bb.a
  %.052.lcssa = phi ptr [ null, %bb.a ], [ %.153, %list_Nconc.exit88 ]
  %.050.lcssa = phi ptr [ null, %bb.a ], [ %.151, %list_Nconc.exit88 ] ; 12 uses
  %i.w = tail call ptr @list_PointerDeleteDuplicates(ptr noundef %.052.lcssa) #12 ; 3 uses
  %.not113126 = icmp eq ptr %i.w, null
  br i1 %.not113126, label %._crit_edge130, label %.lr.ph129

.lr.ph129:                                        ; preds = %._crit_edge, %.lr.ph129
  %.049127 = phi ptr [ %.049.val65, %.lr.ph129 ], [ %i.w, %._crit_edge ] ; 2 uses
  %i.x = getelementptr i8, ptr %.049127, i64 8    ; 2 uses
  %.049.val = load ptr, ptr %i.x, align 8
  %i.y = ptrtoint ptr %.049.val to i64
  %i.z = trunc i64 %i.y to i32
  %i.aa = tail call ptr @term_Create(i32 noundef %i.z, ptr noundef null) #12
  store ptr %i.aa, ptr %i.x, align 8
  %.049.val65 = load ptr, ptr %.049127, align 8   ; 2 uses
end_hunk_0
begin_hunk_1_@dfg_TermParser:bb.a
  %.0.val.i39 = load ptr, ptr %i.dd, align 8      ; 4 uses
  %i.de = getelementptr i8, ptr %.0.val.i39, i64 8
  %.val.i40 = load ptr, ptr %i.de, align 8
  tail call void @string_StringFree(ptr noundef %.val.i40) #12
  %.val7.i = load ptr, ptr %.0.val.i39, align 8
  %i.df = getelementptr i8, ptr %.val7.i, i64 8
  %.val7.val.i = load ptr, ptr %i.df, align 8
  tail call void @term_Delete(ptr noundef %.val7.val.i) #12
  %.val8.i = load ptr, ptr %.0.val.i39, align 8
  %.val8.val.i = load ptr, ptr %.val8.i, align 8
  %i.dg = getelementptr i8, ptr %.val8.val.i, i64 8
  %.val8.val.val.i = load ptr, ptr %i.dg, align 8
  tail call void @list_DeleteWithElement(ptr noundef %.val8.val.val.i, ptr noundef nonnull @string_StringFree) #12
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i38
  %.07.i.i = phi ptr [ %.0.val.i.i, %.lr.ph.i.i ], [ %.0.val.i39, %.lr.ph.i38 ] ; 3 uses
  %.0.val.i.i = load ptr, ptr %.07.i.i, align 8   ; 2 uses
  %i.dh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dj = load i32, ptr %i.di, align 8
  %i.dk = sext i32 %i.dj to i64
  %i.dl = load i64, ptr @memory_FREEDBYTES, align 8
  %i.dm = add i64 %i.dl, %i.dk
  store i64 %i.dm, ptr @memory_FREEDBYTES, align 8
  %i.dn = load ptr, ptr %i.dh, align 8
  store ptr %i.dn, ptr %.07.i.i, align 8
  %i.do = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i.i, ptr %i.do, align 8
  %.not.i.i = icmp eq ptr %.0.val.i.i, null
  br i1 %.not.i.i, label %list_Delete.exit.i, label %.lr.ph.i.i, !llvm.loop !6

list_Delete.exit.i:                               ; preds = %.lr.ph.i.i
  %.val.i.i41 = load ptr, ptr %.010.i, align 8    ; 2 uses
  %i.dp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %i.dr = load i32, ptr %i.dq, align 8
  %i.ds = sext i32 %i.dr to i64
  %i.dt = load i64, ptr @memory_FREEDBYTES, align 8
  %i.du = add i64 %i.dt, %i.ds
  store i64 %i.du, ptr @memory_FREEDBYTES, align 8
  %i.dv = load ptr, ptr %i.dp, align 8
  store ptr %i.dv, ptr %.010.i, align 8
  %i.dw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.010.i, ptr %i.dw, align 8
  %.not.i42 = icmp eq ptr %.val.i.i41, null
  br i1 %.not.i42, label %dfg_DeleteProofList.exit, label %.lr.ph.i38, !llvm.loop !20

dfg_DeleteProofList.exit:                         ; preds = %list_Delete.exit.i, %dfg_DeleteFormulaPairList.exit37
  %i.dx = load ptr, ptr @dfg_SORTDECLLIST, align 8 ; 2 uses
  %.not10.i43 = icmp eq ptr %i.dx, null
  br i1 %.not10.i43, label %dfg_DeleteFormulaPairList.exit52, label %.lr.ph.i44

.lr.ph.i44:                                       ; preds = %dfg_DeleteProofList.exit, %bb.n
  %.011.i45 = phi ptr [ %.val.i.i50, %bb.n ], [ %i.dx, %dfg_DeleteProofList.exit ] ; 4 uses
  %i.dy = getelementptr i8, ptr %.011.i45, i64 8
  %.0.val.i46 = load ptr, ptr %i.dy, align 8      ; 4 uses
  %.val.i47 = load ptr, ptr %.0.val.i46, align 8
  tail call void @term_Delete(ptr noundef %.val.i47) #12
  %i.dz = getelementptr i8, ptr %.0.val.i46, i64 8
  %.val9.i48 = load ptr, ptr %i.dz, align 8       ; 2 uses
  %.not7.i49 = icmp eq ptr %.val9.i48, null
  br i1 %.not7.i49, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i44
  tail call void @string_StringFree(ptr noundef nonnull %.val9.i48) #12
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i44
  %i.ea = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.ec = load i32, ptr %i.eb, align 8
  %i.ed = sext i32 %i.ec to i64
  %i.ee = load i64, ptr @memory_FREEDBYTES, align 8
  %i.ef = add i64 %i.ee, %i.ed
  store i64 %i.ef, ptr @memory_FREEDBYTES, align 8
  %i.eg = load ptr, ptr %i.ea, align 8
  store ptr %i.eg, ptr %.0.val.i46, align 8
  %i.eh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.0.val.i46, ptr %i.eh, align 8
  %.val.i.i50 = load ptr, ptr %.011.i45, align 8  ; 2 uses
  %i.ei = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  %i.ek = load i32, ptr %i.ej, align 8
  %i.el = sext i32 %i.ek to i64
  %i.em = load i64, ptr @memory_FREEDBYTES, align 8
  %i.en = add i64 %i.em, %i.el
  store i64 %i.en, ptr @memory_FREEDBYTES, align 8
  %i.eo = load ptr, ptr %i.ei, align 8
  store ptr %i.eo, ptr %.011.i45, align 8
  %i.ep = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.011.i45, ptr %i.ep, align 8
  %.not.i51 = icmp eq ptr %.val.i.i50, null
  br i1 %.not.i51, label %dfg_DeleteFormulaPairList.exit52, label %.lr.ph.i44, !llvm.loop !23

dfg_DeleteFormulaPairList.exit52:                 ; preds = %bb.n, %dfg_DeleteProofList.exit
  %i.eq = load ptr, ptr @dfg_TERMLIST, align 8
  ret ptr %i.eq
}

; Function Attrs: nounwind uwtable
define dso_local void @dfg_StripLabelsFromList(ptr noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not13 = icmp eq ptr %0, null
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.014 = phi ptr [ %.0.val10, %bb.c ], [ %0, %bb.a ] ; 2 uses
  %i.a = getelementptr i8, ptr %.014, i64 8       ; 2 uses
  %.0.val = load ptr, ptr %i.a, align 8           ; 4 uses
  %.val = load ptr, ptr %.0.val, align 8
  store ptr %.val, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %.0.val, i64 8
  %.val12 = load ptr, ptr %i.b, align 8           ; 2 uses
  %.not9 = icmp eq ptr %.val12, null
  br i1 %.not9, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @string_StringFree(ptr noundef nonnull %.val12) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load i32, ptr %i.d, align 8
  %i.f = sext i32 %i.e to i64
  %i.g = load i64, ptr @memory_FREEDBYTES, align 8
  %i.h = add i64 %i.g, %i.f
  store i64 %i.h, ptr @memory_FREEDBYTES, align 8
  %i.i = load ptr, ptr %i.c, align 8
  store ptr %i.i, ptr %.0.val, align 8
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.0.val, ptr %i.j, align 8
  %.0.val10 = load ptr, ptr %.014, align 8        ; 2 uses
  %.not = icmp eq ptr %.0.val10, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !24

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret void
}

declare ptr @list_PointerDeleteDuplicates(ptr noundef) local_unnamed_addr #2

declare ptr @fol_CreateQuantifier(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @clause_CreateFromLiterals(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @memory_Malloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

declare i32 @list_Length(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

declare void @list_DeleteWithElement(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @flag_Minimum(i32 noundef) local_unnamed_addr #2

declare ptr @flag_Name(i32 noundef) local_unnamed_addr #2

declare i32 @flag_Maximum(i32 noundef) local_unnamed_addr #2

declare i32 @symbol_GetIncreasedOrderingCounter() local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #9

declare i32 @symbol_CreateFunction(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @symbol_CreatePredicate(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @symbol_CreateJunctor(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @term_Copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @dfg_VarFree(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call void @string_StringFree(ptr noundef %i.a) #12
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i32, ptr %i.c, align 8
  %i.e = sext i32 %i.d to i64
  %i.f = load i64, ptr @memory_FREEDBYTES, align 8
  %i.g = add i64 %i.f, %i.e
  store i64 %i.g, ptr @memory_FREEDBYTES, align 8
  %i.h = load ptr, ptr %i.b, align 8
  store ptr %i.h, ptr %0, align 8
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %0, ptr %i.i, align 8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nofree nounwind }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { cold }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { cold noreturn nounwind }
attributes #17 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
end_hunk_1
