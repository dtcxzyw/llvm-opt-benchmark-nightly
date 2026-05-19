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
  br i1 %.not36, label %bb.q, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = tail call i32 @llvm.fshl.i32(i32 %0, i32 %0, i32 31)
  switch i32 %i.h, label %bb.n [
    i32 142, label %bb.h
    i32 149, label %bb.j
    i32 150, label %bb.l
    i32 147, label %bb.l
  ]

bb.h:                                             ; preds = %bb.g
  %.not.i = icmp sgt i32 %i.g, -1
  %.pre = load i32, ptr @symbol_TYPEMASK, align 4 ; 6 uses
  br i1 %.not.i, label %symbol_IsFunction.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = sub nsw i32 0, %i.g                      ; 2 uses
  %i.j = and i32 %.pre, %i.i
  %switch = icmp samesign ult i32 %i.j, 2
  br i1 %switch, label %symbol_IsFunction.exit.thread45, label %symbol_IsFunction.exit.thread

symbol_IsFunction.exit.thread45:                  ; preds = %bb.i
  switch i32 %0, label %bb.n [
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
  %.pre-phi = phi i32 [ %.pre58, %.symbol_IsPredicate.exit_crit_edge ], [ %i.i, %symbol_IsFunction.exit.thread45 ]
  %i.k = phi i32 [ %.pre57, %.symbol_IsPredicate.exit_crit_edge ], [ %.pre, %symbol_IsFunction.exit.thread45 ] ; 4 uses
  %i.l = and i32 %i.k, %.pre-phi
  %.not53 = icmp eq i32 %i.l, 2
  br i1 %.not53, label %bb.k, label %symbol_IsFunction.exit.thread

bb.k:                                             ; preds = %symbol_IsPredicate.exit
  switch i32 %0, label %bb.n [
    i32 300, label %symbol_IsFunction.exit.thread
    i32 294, label %symbol_IsFunction.exit.thread
  ]

bb.l:                                             ; preds = %bb.g, %bb.g
  %.not.i43 = icmp sgt i32 %i.g, -1
  %.pre56 = load i32, ptr @symbol_TYPEMASK, align 4 ; 3 uses
  br i1 %.not.i43, label %symbol_IsFunction.exit.thread, label %symbol_IsJunctor.exit

symbol_IsJunctor.exit:                            ; preds = %bb.l
  %.pre59 = sub nsw i32 0, %i.g
  %.pre61 = and i32 %.pre56, %.pre59
  %i.m = icmp eq i32 %.pre61, 3
  br i1 %i.m, label %bb.n, label %symbol_IsFunction.exit.thread

symbol_IsFunction.exit.thread:                    ; preds = %symbol_IsFunction.exit.thread45, %symbol_IsFunction.exit.thread45, %bb.k, %bb.k, %bb.i, %bb.l, %bb.j, %bb.h, %symbol_IsJunctor.exit, %symbol_IsPredicate.exit
  %i.n = phi i32 [ %.pre, %bb.i ], [ %.pre56, %bb.l ], [ %.pre57, %bb.j ], [ %.pre, %bb.h ], [ %.pre56, %symbol_IsJunctor.exit ], [ %i.k, %symbol_IsPredicate.exit ], [ %.pre, %symbol_IsFunction.exit.thread45 ], [ %.pre, %symbol_IsFunction.exit.thread45 ], [ %i.k, %bb.k ], [ %i.k, %bb.k ]
  %i.o = load ptr, ptr @stdout, align 8
  %i.p = tail call i32 @fflush(ptr noundef %i.o)  ; 0 uses
  %i.q = load i32, ptr @dfg_LINENUMBER, align 4
  tail call void (ptr, ...) @misc_UserErrorReport(ptr noundef nonnull @.str.217, i32 noundef %i.q, ptr noundef nonnull %1) #12
  %i.r = sub nsw i32 0, %i.g
  %i.s = and i32 %i.n, %i.r                       ; 2 uses
  %i.t = icmp ult i32 %i.s, 4
  br i1 %i.t, label %switch.lookup, label %bb.m

switch.lookup:                                    ; preds = %symbol_IsFunction.exit.thread
  %i.u = zext nneg i32 %i.s to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dfg_SymbolDecl, i64 %i.u
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.m

bb.m:                                             ; preds = %symbol_IsFunction.exit.thread, %switch.lookup
  %.str.221.sink = phi ptr [ %switch.load, %switch.lookup ], [ @.str.221, %symbol_IsFunction.exit.thread ]
  tail call void (ptr, ...) @misc_UserErrorReport(ptr noundef nonnull %.str.221.sink) #12
  tail call fastcc void @misc_Error()
  unreachable

bb.n:                                             ; preds = %bb.g, %symbol_IsFunction.exit.thread45, %bb.k, %symbol_IsJunctor.exit
  %.not40 = icmp eq i32 %2, -2
  br i1 %.not40, label %bb.w, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.v = sub nsw i32 0, %i.g
  %i.w = load i32, ptr @symbol_TYPESTATBITS, align 4
  %i.x = ashr i32 %i.v, %i.w
  %i.y = load ptr, ptr @symbol_SIGNATURE, align 8
  %i.z = sext i32 %i.x to i64                     ; 2 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load i32, ptr %i.ac, align 8
  %.not41 = icmp eq i32 %2, %i.ad
  br i1 %.not41, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = load ptr, ptr @stdout, align 8
  %i.af = tail call i32 @fflush(ptr noundef %i.ae) ; 0 uses
  %i.ag = load i32, ptr @dfg_LINENUMBER, align 4
  %i.ah = load ptr, ptr @symbol_SIGNATURE, align 8
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.z
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load i32, ptr %i.ak, align 8
  tail call void (ptr, ...) @misc_UserErrorReport(ptr noundef nonnull @.str.222, i32 noundef %i.ag, ptr noundef nonnull %1, i32 noundef %i.al) #12
  tail call fastcc void @misc_Error()
  unreachable

bb.q:                                             ; preds = %bb.f
  %i.am = load ptr, ptr @dfg_PRECEDENCE, align 8  ; 3 uses
  switch i32 %0, label %bb.t [
    i32 284, label %bb.r
    i32 298, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.an = tail call i32 @symbol_CreateFunction(ptr noundef nonnull %1, i32 noundef %.033, i32 noundef 0, ptr noundef %i.am) #12
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.ao = tail call i32 @symbol_CreatePredicate(ptr noundef nonnull %1, i32 noundef %.033, i32 noundef 0, ptr noundef %i.am) #12
  br label %bb.u

bb.t:                                             ; preds = %bb.q
  %i.ap = tail call i32 @symbol_CreateJunctor(ptr noundef nonnull %1, i32 noundef %.033, i32 noundef 0, ptr noundef %i.am) #12
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %.0 = phi i32 [ %i.ap, %bb.t ], [ %i.an, %bb.r ], [ %i.ao, %bb.s ]
  %i.aq = icmp eq i32 %2, -2
  br i1 %i.aq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ar = tail call ptr @memory_Malloc(i32 noundef 12) #12 ; 4 uses
  store i32 %.0, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i32 0, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i32 0, ptr %i.at, align 4
  %i.au = load ptr, ptr @dfg_SYMBOLLIST, align 8
  %i.av = tail call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.ar, ptr %i.aw, align 8
  store ptr %i.au, ptr %i.av, align 8
  store ptr %i.av, ptr @dfg_SYMBOLLIST, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.n, %bb.o
  br i1 %.not, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 63
  store i8 32, ptr %i.ax, align 1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
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
end_hunk_0
