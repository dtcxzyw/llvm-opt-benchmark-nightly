inline.NumInlined: 2198
inline.NumDeleted: 126
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@Test_EvalFrame:bb.a
  br label %.thread13712

.thread13712:                                     ; preds = %bb.bej, %bb.bei, %bb.beh
  %.4.val9969 = load ptr, ptr %i.jaz, align 8, !tbaa !65
  %i.jbf = getelementptr i8, ptr %.32, i64 2      ; 2 uses
  %i.jbg = load i16, ptr %i.jbf, align 2, !tbaa !34
  %i.jbh = shl i16 %i.jbg, 1
  %i.jbi = or disjoint i16 %i.jbh, 1
  store i16 %i.jbi, ptr %i.jbf, align 2, !tbaa !34
  br label %bb.bel

bb.bek:                                           ; preds = %bb.beg
  %i.jbj = getelementptr i8, ptr %.32, i64 2      ; 2 uses
  %i.jbk = load i16, ptr %i.jbj, align 2, !tbaa !34
  %i.jbl = shl i16 %i.jbk, 1
  store i16 %i.jbl, ptr %i.jbj, align 2, !tbaa !34
  %i.jbm = load i8, ptr %i.jaw, align 2, !tbaa !34
  %i.jbn = icmp eq i8 %i.jbm, 28
  %i.jbo = zext i1 %i.jbn to i32
  br label %bb.bel

bb.bel:                                           ; preds = %.thread13712, %bb.bek
  %.5313715 = phi ptr [ %.4.val1003611565, %bb.bek ], [ %.4.val9969, %.thread13712 ]
  %i.jbp = phi i32 [ %i.jbo, %bb.bek ], [ %.09034, %.thread13712 ]
  %i.jbq = sext i32 %i.jbp to i64
  %i.jbr = getelementptr [2 x i8], ptr %i.jaw, i64 %i.jbq ; 2 uses
  %i.jbs = getelementptr i8, ptr %.5313715, i64 -8
  %i.jbt = load i16, ptr %i.jbr, align 2, !tbaa !66 ; 2 uses
  %.sroa.2758.0.extract.shift = lshr i16 %i.jbt, 8
  %.sroa.2758.0.extract.trunc = zext nneg i16 %.sroa.2758.0.extract.shift to i32
  %i.jbu = and i16 %i.jbt, 255
  %i.jbv = zext nneg i16 %i.jbu to i64
  br label %.backedge.backedge

bb.bem:                                           ; preds = %.backedge
  %i.jbw = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.jbw, align 8, !tbaa !47
  %i.jbx = getelementptr i8, ptr %.32, i64 4      ; 2 uses
  %i.jby = getelementptr i8, ptr %.4.val1003611565, i64 -8 ; 2 uses
  %.sroa.0754.0.copyload = load i64, ptr %i.jby, align 8, !tbaa !34
  %i.jbz = icmp eq i64 %.sroa.0754.0.copyload, %i.lun ; 2 uses
  %i.jca = zext i1 %i.jbz to i16
  %i.jcb = getelementptr i8, ptr %.32, i64 2      ; 2 uses
  %i.jcc = load i16, ptr %i.jcb, align 2, !tbaa !34
  %i.jcd = shl i16 %i.jcc, 1
  %i.jce = or disjoint i16 %i.jcd, %i.jca
  store i16 %i.jce, ptr %i.jcb, align 2, !tbaa !34
  br i1 %i.jbz, label %bb.beo, label %bb.ben

bb.ben:                                           ; preds = %bb.bem
  %i.jcf = load i8, ptr %i.jbx, align 2, !tbaa !34
  %i.jcg = icmp eq i8 %i.jcf, 28
  %i.jch = zext i1 %i.jcg to i32
  br label %bb.beo

bb.beo:                                           ; preds = %bb.bem, %bb.ben
  %i.jci = phi i32 [ %i.jch, %bb.ben ], [ %.09034, %bb.bem ]
  %i.jcj = sext i32 %i.jci to i64
  %i.jck = getelementptr [2 x i8], ptr %i.jbx, i64 %i.jcj ; 2 uses
  %i.jcl = load i16, ptr %i.jck, align 2, !tbaa !66 ; 2 uses
  %.sroa.2751.0.extract.shift = lshr i16 %i.jcl, 8
  %.sroa.2751.0.extract.trunc = zext nneg i16 %.sroa.2751.0.extract.shift to i32
  %i.jcm = and i16 %i.jcl, 255
  %i.jcn = zext nneg i16 %i.jcm to i64
  br label %.backedge.backedge

bb.bep:                                           ; preds = %.backedge
  %i.jco = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.jco, align 8, !tbaa !47
  %i.jcp = getelementptr i8, ptr %.32, i64 2      ; 2 uses
  %i.jcq = getelementptr i8, ptr %.4.val1003611565, i64 -8 ; 2 uses
  %.sroa.0749.0.copyload = load i64, ptr %i.jcq, align 8, !tbaa !34 ; 2 uses
  %i.jcr = getelementptr i8, ptr %.4, i64 64      ; 2 uses
  store ptr %i.jcq, ptr %i.jcr, align 8, !tbaa !65
  %i.jcs = and i64 %.sroa.0749.0.copyload, 1
  %.not.not.i11240 = icmp eq i64 %i.jcs, 0
  br i1 %.not.not.i11240, label %bb.beq, label %PyStackRef_XCLOSE.exit11241

bb.beq:                                           ; preds = %bb.bep
  %i.jct = inttoptr i64 %.sroa.0749.0.copyload to ptr ; 3 uses
  %i.jcu = load i32, ptr %i.jct, align 8, !tbaa !34
  %i.jcv = add i32 %i.jcu, -1                     ; 2 uses
  store i32 %i.jcv, ptr %i.jct, align 8, !tbaa !34
  %i.jcw = icmp eq i32 %i.jcv, 0
  br i1 %i.jcw, label %bb.ber, label %PyStackRef_XCLOSE.exit11241

bb.ber:                                           ; preds = %bb.beq
  call void @_Py_Dealloc(ptr noundef nonnull %i.jct) #8
  br label %PyStackRef_XCLOSE.exit11241

PyStackRef_XCLOSE.exit11241:                      ; preds = %bb.bep, %bb.beq, %bb.ber
  %.4.val9968 = load ptr, ptr %i.jcr, align 8, !tbaa !65
  %i.jcx = load i16, ptr %i.jcp, align 2, !tbaa !66 ; 2 uses
  %.sroa.2748.0.extract.shift = lshr i16 %i.jcx, 8
  %.sroa.2748.0.extract.trunc = zext nneg i16 %.sroa.2748.0.extract.shift to i32
  %i.jcy = and i16 %i.jcx, 255
  %i.jcz = zext nneg i16 %i.jcy to i64
  br label %.backedge.backedge

bb.bes:                                           ; preds = %.backedge
  %i.jda = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.jda, align 8, !tbaa !47
  %i.jdb = getelementptr i8, ptr %.32, i64 2      ; 2 uses
  %i.jdc = getelementptr i8, ptr %.4.val1003611565, i64 -8 ; 2 uses
  %.sroa.0745.0.copyload = load i64, ptr %i.jdc, align 8, !tbaa !34 ; 2 uses
  %i.jdd = load ptr, ptr %i.lus, align 8, !tbaa !226 ; 2 uses
  %i.jde = load ptr, ptr %i.jdd, align 8, !tbaa !270 ; 3 uses
  %.not9712 = icmp eq ptr %i.jde, null
  br i1 %.not9712, label %bb.beu, label %bb.bet

bb.bet:                                           ; preds = %bb.bes
  %i.jdf = getelementptr i8, ptr %i.jde, i64 6
  %i.jdg = load i16, ptr %i.jdf, align 2, !tbaa !34
  %i.jdh = and i16 %i.jdg, 1
  %i.jdi = ptrtoint ptr %i.jde to i64
  %i.jdj = zext nneg i16 %i.jdh to i64
  %i.jdk = or i64 %i.jdj, %i.jdi
  br label %bb.beu

bb.beu:                                           ; preds = %bb.bes, %bb.bet
  %.sroa.0744.0 = phi i64 [ %i.jdk, %bb.bet ], [ %i.aa, %bb.bes ]
  %i.jdl = and i64 %.sroa.0745.0.copyload, -2
  %i.jdm = inttoptr i64 %i.jdl to ptr             ; 3 uses
  %i.jdn = load i32, ptr %i.jdm, align 8, !tbaa !34 ; 2 uses
  %i.jdo = icmp ugt i32 %i.jdn, -1073741825
  br i1 %i.jdo, label %_Py_NewRef.exit11242, label %bb.bev

bb.bev:                                           ; preds = %bb.beu
  %i.jdp = add nuw i32 %i.jdn, 1
  store i32 %i.jdp, ptr %i.jdm, align 8, !tbaa !34
  br label %_Py_NewRef.exit11242

_Py_NewRef.exit11242:                             ; preds = %bb.beu, %bb.bev
  store ptr %i.jdm, ptr %i.jdd, align 8, !tbaa !270
  store i64 %.sroa.0744.0, ptr %i.jdc, align 8, !tbaa !34
  store i64 %.sroa.0745.0.copyload, ptr %.4.val1003611565, align 8, !tbaa !34
  %i.jdq = getelementptr i8, ptr %.4.val1003611565, i64 8
  %i.jdr = load i16, ptr %i.jdb, align 2, !tbaa !66 ; 2 uses
  %.sroa.2736.0.extract.shift = lshr i16 %i.jdr, 8
  %.sroa.2736.0.extract.trunc = zext nneg i16 %.sroa.2736.0.extract.shift to i32
  %i.jds = and i16 %i.jdr, 255
  %i.jdt = zext nneg i16 %i.jds to i64
  br label %.backedge.backedge

bb.bew:                                           ; preds = %.backedge
  %i.jdu = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.jdu, align 8, !tbaa !47
  %i.jdv = getelementptr i8, ptr %.32, i64 2      ; 2 uses
  store i64 1, ptr %.4.val1003611565, align 8, !tbaa !34
  %i.jdw = getelementptr i8, ptr %.4.val1003611565, i64 8
  %i.jdx = load i16, ptr %i.jdv, align 2, !tbaa !66 ; 2 uses
  %.sroa.2732.0.extract.shift = lshr i16 %i.jdx, 8
  %.sroa.2732.0.extract.trunc = zext nneg i16 %.sroa.2732.0.extract.shift to i32
  %i.jdy = and i16 %i.jdx, 255
  %i.jdz = zext nneg i16 %i.jdy to i64
  br label %.backedge.backedge

bb.bex:                                           ; preds = %.backedge
  %i.jea = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.jea, align 8, !tbaa !47
  %i.jeb = getelementptr i8, ptr %.32, i64 2      ; 7 uses
  %i.jec = sub i32 0, %.09034
  %i.jed = sext i32 %i.jec to i64
  %i.jee = getelementptr [8 x i8], ptr %.4.val1003611565, i64 %i.jed ; 5 uses
  %i.jef = icmp eq i32 %.09034, 2
  br i1 %i.jef, label %bb.bey, label %PyStackRef_AsPyObjectSteal.exit11245

bb.bey:                                           ; preds = %bb.bex
  %i.jeg = getelementptr i8, ptr %i.jee, i64 8
  %i.jeh = load i64, ptr %i.jeg, align 8          ; 3 uses
  %i.jei = and i64 %i.jeh, 1
  %.not.not.i11243 = icmp eq i64 %i.jei, 0
  br i1 %.not.not.i11243, label %bb.bez, label %bb.bfa

bb.bez:                                           ; preds = %bb.bey
  %i.jej = inttoptr i64 %i.jeh to ptr
  br label %PyStackRef_AsPyObjectSteal.exit11245.thread

bb.bfa:                                           ; preds = %bb.bey
  %i.jek = and i64 %i.jeh, -2
  %i.jel = inttoptr i64 %i.jek to ptr             ; 4 uses
  %i.jem = load i32, ptr %i.jel, align 8, !tbaa !34 ; 2 uses
  %i.jen = icmp ugt i32 %i.jem, -1073741825
  br i1 %i.jen, label %PyStackRef_AsPyObjectSteal.exit11245.thread, label %bb.bfb

bb.bfb:                                           ; preds = %bb.bfa
  %i.jeo = add nuw i32 %i.jem, 1
  store i32 %i.jeo, ptr %i.jel, align 8, !tbaa !34
  br label %PyStackRef_AsPyObjectSteal.exit11245.thread

PyStackRef_AsPyObjectSteal.exit11245:             ; preds = %bb.bex
  %i.jep = icmp sgt i32 %.09034, 0
  br i1 %i.jep, label %PyStackRef_AsPyObjectSteal.exit11245.thread, label %PyStackRef_AsPyObjectSteal.exit11248.thread11584

PyStackRef_AsPyObjectSteal.exit11248.thread11584: ; preds = %PyStackRef_AsPyObjectSteal.exit11245
  %i.jeq = getelementptr i8, ptr %.4, i64 64      ; 2 uses
  store ptr %i.jee, ptr %i.jeq, align 8, !tbaa !65
  br label %bb.bfe

PyStackRef_AsPyObjectSteal.exit11245.thread:      ; preds = %bb.bez, %bb.bfa, %bb.bfb, %PyStackRef_AsPyObjectSteal.exit11245
  %i.jer = phi ptr [ null, %PyStackRef_AsPyObjectSteal.exit11245 ], [ %i.jel, %bb.bfb ], [ %i.jel, %bb.bfa ], [ %i.jej, %bb.bez ] ; 20 uses
  %i.jes = load i64, ptr %i.jee, align 8          ; 4 uses
  %i.jet = and i64 %i.jes, 1
  %.not.not.i11246 = icmp eq i64 %i.jet, 0
  br i1 %.not.not.i11246, label %PyStackRef_AsPyObjectSteal.exit11248, label %bb.bfc

bb.bfc:                                           ; preds = %PyStackRef_AsPyObjectSteal.exit11245.thread
  %i.jeu = and i64 %i.jes, -2
  %i.jev = inttoptr i64 %i.jeu to ptr             ; 3 uses
  %i.jew = load i32, ptr %i.jev, align 8, !tbaa !34 ; 2 uses
  %i.jex = icmp ugt i32 %i.jew, -1073741825
  br i1 %i.jex, label %PyStackRef_AsPyObjectSteal.exit11248.thread, label %bb.bfd

bb.bfd:                                           ; preds = %bb.bfc
  %i.jey = add nuw i32 %i.jew, 1
  store i32 %i.jey, ptr %i.jev, align 8, !tbaa !34
  br label %PyStackRef_AsPyObjectSteal.exit11248.thread

PyStackRef_AsPyObjectSteal.exit11248.thread:      ; preds = %bb.bfc, %bb.bfd
  %i.jez = getelementptr i8, ptr %.4, i64 64      ; 2 uses
  store ptr %i.jee, ptr %i.jez, align 8, !tbaa !65
  br label %bb.bfi

PyStackRef_AsPyObjectSteal.exit11248:             ; preds = %PyStackRef_AsPyObjectSteal.exit11245.thread
  %i.jfa = inttoptr i64 %i.jes to ptr
  %i.jfb = getelementptr i8, ptr %.4, i64 64      ; 3 uses
  store ptr %i.jee, ptr %i.jfb, align 8, !tbaa !65
  %i.jfc = icmp eq i64 %i.jes, 0
  br i1 %i.jfc, label %bb.bfe, label %bb.bfi

bb.bfe:                                           ; preds = %PyStackRef_AsPyObjectSteal.exit11248.thread11584, %PyStackRef_AsPyObjectSteal.exit11248
  %i.jfd = phi ptr [ %i.jeq, %PyStackRef_AsPyObjectSteal.exit11248.thread11584 ], [ %i.jfb, %PyStackRef_AsPyObjectSteal.exit11248 ]
  %i.jfe = call ptr @_PyErr_GetTopmostException(ptr noundef %0) #8
  %i.jff = load ptr, ptr %i.jfe, align 8, !tbaa !270 ; 5 uses
  %i.jfg = icmp eq ptr %i.jff, @_Py_NoneStruct
  %i.jfh = icmp eq ptr %i.jff, null
  %or.cond.i = or i1 %i.jfg, %i.jfh
  br i1 %or.cond.i, label %bb.bff, label %bb.bfg

bb.bff:                                           ; preds = %bb.bfe
  %i.jfi = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !78
  call void @_PyErr_SetString(ptr noundef %0, ptr noundef %i.jfi, ptr noundef nonnull @.str.22) #8
  br label %do_raise.exit

bb.bfg:                                           ; preds = %bb.bfe
  %i.jfj = load i32, ptr %i.jff, align 8, !tbaa !34 ; 2 uses
  %i.jfk = icmp ugt i32 %i.jfj, -1073741825
  br i1 %i.jfk, label %bb.bhp, label %bb.bfh

bb.bfh:                                           ; preds = %bb.bfg
  %i.jfl = add nuw i32 %i.jfj, 1
  store i32 %i.jfl, ptr %i.jff, align 8, !tbaa !34
  br label %bb.bhp

bb.bfi:                                           ; preds = %PyStackRef_AsPyObjectSteal.exit11248.thread, %PyStackRef_AsPyObjectSteal.exit11248
  %i.jfm = phi ptr [ %i.jez, %PyStackRef_AsPyObjectSteal.exit11248.thread ], [ %i.jfb, %PyStackRef_AsPyObjectSteal.exit11248 ] ; 7 uses
  %i.jfn = phi ptr [ %i.jev, %PyStackRef_AsPyObjectSteal.exit11248.thread ], [ %i.jfa, %PyStackRef_AsPyObjectSteal.exit11248 ] ; 16 uses
  %i.jfo = getelementptr i8, ptr %i.jfn, i64 8    ; 3 uses
  %.val225.i.a = load ptr, ptr %i.jfo, align 8, !tbaa !58 ; 6 uses
  %i.jfp = getelementptr i8, ptr %.val225.i.a, i64 168
  %.val225.val.i.a = load i64, ptr %i.jfp, align 8, !tbaa !145 ; 2 uses
  %i.jfq = and i64 %.val225.val.i.a, 2147483648
  %.not249.i = icmp eq i64 %i.jfq, 0
  br i1 %.not249.i, label %bb.bfo, label %bb.bfj

bb.bfj:                                           ; preds = %bb.bfi
  %i.jfr = getelementptr i8, ptr %i.jfn, i64 168
  %.val223.i.a = load i64, ptr %i.jfr, align 8, !tbaa !145
  %i.jfs = and i64 %.val223.i.a, 1073741824
  %.not170.i = icmp eq i64 %i.jfs, 0
  br i1 %.not170.i, label %bb.bfo, label %bb.bfk

bb.bfk:                                           ; preds = %bb.bfj
  %i.jft = call ptr @_PyThreadState_GetCurrent() #8 ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %i.jfo, align 8, !tbaa !58 ; 2 uses
  %i.jfu = getelementptr i8, ptr %.val.i.i.i.i, i64 168
  %.val6.i.i.i.i = load i64, ptr %i.jfu, align 8, !tbaa !145
  %i.jfv = and i64 %.val6.i.i.i.i, 2048
  %.not.i.i.i.i11249 = icmp eq i64 %i.jfv, 0
  br i1 %.not.i.i.i.i11249, label %_PyVectorcall_FunctionInline.exit.thread.i.i.i, label %_PyVectorcall_FunctionInline.exit.i.i.i

_PyVectorcall_FunctionInline.exit.i.i.i:          ; preds = %bb.bfk
  %i.jfw = getelementptr i8, ptr %.val.i.i.i.i, i64 56
  %i.jfx = load i64, ptr %i.jfw, align 8, !tbaa !271
  %i.jfy = getelementptr i8, ptr %i.jfn, i64 %i.jfx
  %.0.copyload.i.i.i.i = load ptr, ptr %i.jfy, align 1 ; 2 uses
  %i.jfz = icmp eq ptr %.0.copyload.i.i.i.i, null
  br i1 %i.jfz, label %_PyVectorcall_FunctionInline.exit.thread.i.i.i, label %bb.bfl

_PyVectorcall_FunctionInline.exit.thread.i.i.i:   ; preds = %_PyVectorcall_FunctionInline.exit.i.i.i, %bb.bfk
  %i.jga = call ptr @_PyObject_MakeTpCall(ptr noundef %i.jft, ptr noundef nonnull %i.jfn, ptr noundef null, i64 noundef 0, ptr noundef null) #8
  br label %_PyObject_CallNoArgs.exit.i

bb.bfl:                                           ; preds = %_PyVectorcall_FunctionInline.exit.i.i.i
  %i.jgb = call ptr %.0.copyload.i.i.i.i(ptr noundef nonnull %i.jfn, ptr noundef null, i64 noundef 0, ptr noundef null) #8, !inline_history !272
  %i.jgc = call ptr @_Py_CheckFunctionResult(ptr noundef %i.jft, ptr noundef nonnull %i.jfn, ptr noundef %i.jgb, ptr noundef null) #8
  br label %_PyObject_CallNoArgs.exit.i

_PyObject_CallNoArgs.exit.i:                      ; preds = %bb.bfl, %_PyVectorcall_FunctionInline.exit.thread.i.i.i
  %.0.i.i.i11250 = phi ptr [ %i.jga, %_PyVectorcall_FunctionInline.exit.thread.i.i.i ], [ %i.jgc, %bb.bfl ] ; 4 uses
  %i.jgd = icmp eq ptr %.0.i.i.i11250, null
  br i1 %i.jgd, label %.thread242.i, label %bb.bfm

bb.bfm:                                           ; preds = %_PyObject_CallNoArgs.exit.i
  %i.jge = getelementptr i8, ptr %.0.i.i.i11250, i64 8
  %.val217.i = load ptr, ptr %i.jge, align 8, !tbaa !58 ; 2 uses
  %i.jgf = getelementptr i8, ptr %.val217.i, i64 168
  %.val222.i = load i64, ptr %i.jgf, align 8, !tbaa !145
  %i.jgg = and i64 %.val222.i, 1073741824
  %.not174.i = icmp eq i64 %i.jgg, 0
  br i1 %.not174.i, label %bb.bfn, label %Py_INCREF.exit.i

bb.bfn:                                           ; preds = %bb.bfm
  %i.jgh = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !78
  %i.jgi = call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef %0, ptr noundef %i.jgh, ptr noundef nonnull @.str.23, ptr noundef nonnull %i.jfn, ptr noundef nonnull %.val217.i) #8 ; 0 uses
  br label %.thread.i

bb.bfo:                                           ; preds = %bb.bfj, %bb.bfi
  %i.jgj = and i64 %.val225.val.i.a, 1073741824
  %.not171.i = icmp eq i64 %i.jgj, 0
  br i1 %.not171.i, label %bb.bfr, label %bb.bfp

bb.bfp:                                           ; preds = %bb.bfo
  %i.jgk = load i32, ptr %.val225.i.a, align 8, !tbaa !34 ; 2 uses
  %i.jgl = icmp ugt i32 %i.jgk, -1073741825
  br i1 %i.jgl, label %Py_INCREF.exit.i, label %bb.bfq

bb.bfq:                                           ; preds = %bb.bfp
  %i.jgm = add nuw i32 %i.jgk, 1
  store i32 %i.jgm, ptr %.val225.i.a, align 8, !tbaa !34
  br label %Py_INCREF.exit.i

bb.bfr:                                           ; preds = %bb.bfo
  %i.jgn = load i32, ptr %i.jfn, align 8, !tbaa !34 ; 2 uses
  %.not172.i = icmp sgt i32 %i.jgn, -1
  br i1 %.not172.i, label %bb.bfs, label %.thread246.i

bb.bfs:                                           ; preds = %bb.bfr
  %i.jgo = add nsw i32 %i.jgn, -1                 ; 2 uses
  store i32 %i.jgo, ptr %i.jfn, align 8, !tbaa !34
  %i.jgp = icmp eq i32 %i.jgo, 0
  br i1 %i.jgp, label %bb.bft, label %.thread246.i

bb.bft:                                           ; preds = %bb.bfs
  %i.jgq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !54 ; 2 uses
  %.not173.i = icmp eq ptr %i.jgq, null
  br i1 %.not173.i, label %bb.bfv, label %bb.bfu

bb.bfu:                                           ; preds = %bb.bft
  %i.jgr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !56
  %i.jgs = call i32 %i.jgq(ptr noundef nonnull %i.jfn, i32 noundef 1, ptr noundef %i.jgr) #8, !inline_history !273 ; 0 uses
  %.val213.pre.i = load ptr, ptr %i.jfo, align 8, !tbaa !58
  br label %bb.bfv

bb.bfv:                                           ; preds = %bb.bfu, %bb.bft
  %.val213.i.a = phi ptr [ %.val213.pre.i, %bb.bfu ], [ %.val225.i.a, %bb.bft ]
  %i.jgt = getelementptr i8, ptr %.val213.i.a, i64 48
  %i.jgu = load ptr, ptr %i.jgt, align 8, !tbaa !59
  call void %i.jgu(ptr noundef nonnull %i.jfn) #8, !inline_history !273
  br label %.thread246.i

.thread246.i:                                     ; preds = %bb.bfv, %bb.bfs, %bb.bfr
  %i.jgv = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !78
  call void @_PyErr_SetString(ptr noundef %0, ptr noundef %i.jgv, ptr noundef nonnull @.str.24) #8
  br label %bb.bhj

Py_INCREF.exit.i:                                 ; preds = %bb.bfq, %bb.bfp, %bb.bfm
  %.0150.i = phi ptr [ %.0.i.i.i11250, %bb.bfm ], [ %i.jfn, %bb.bfp ], [ %i.jfn, %bb.bfq ] ; 12 uses
  %.0148.i = phi ptr [ %i.jfn, %bb.bfm ], [ %.val225.i.a, %bb.bfp ], [ %.val225.i.a, %bb.bfq ] ; 11 uses
  %.not175.i = icmp eq ptr %i.jer, null
  br i1 %.not175.i, label %bb.bgr, label %bb.bfw

bb.bfw:                                           ; preds = %Py_INCREF.exit.i
  %i.jgw = getelementptr i8, ptr %i.jer, i64 8    ; 4 uses
  %.val224.i = load ptr, ptr %i.jgw, align 8, !tbaa !58
  %i.jgx = getelementptr i8, ptr %.val224.i, i64 168
  %.val224.val.i = load i64, ptr %i.jgx, align 8, !tbaa !145 ; 2 uses
  %i.jgy = and i64 %.val224.val.i, 2147483648
  %.not.i11251 = icmp eq i64 %i.jgy, 0
  br i1 %.not.i11251, label %bb.bgj, label %bb.bfx

bb.bfx:                                           ; preds = %bb.bfw
  %i.jgz = getelementptr i8, ptr %i.jer, i64 168
  %.val220.i.a = load i64, ptr %i.jgz, align 8, !tbaa !145
  %i.jha = and i64 %.val220.i.a, 1073741824
  %.not177.i = icmp eq i64 %i.jha, 0
  br i1 %.not177.i, label %bb.bgj, label %bb.bfy

bb.bfy:                                           ; preds = %bb.bfx
  %i.jhb = call ptr @_PyThreadState_GetCurrent() #8 ; 2 uses
  %.val.i.i.i226.i = load ptr, ptr %i.jgw, align 8, !tbaa !58 ; 2 uses
  %i.jhc = getelementptr i8, ptr %.val.i.i.i226.i, i64 168
  %.val6.i.i.i227.i = load i64, ptr %i.jhc, align 8, !tbaa !145
  %i.jhd = and i64 %.val6.i.i.i227.i, 2048
  %.not.i.i.i228.i = icmp eq i64 %i.jhd, 0
  br i1 %.not.i.i.i228.i, label %_PyVectorcall_FunctionInline.exit.thread.i.i232.i, label %_PyVectorcall_FunctionInline.exit.i.i229.i

_PyVectorcall_FunctionInline.exit.i.i229.i:       ; preds = %bb.bfy
  %i.jhe = getelementptr i8, ptr %.val.i.i.i226.i, i64 56
  %i.jhf = load i64, ptr %i.jhe, align 8, !tbaa !271
  %i.jhg = getelementptr i8, ptr %i.jer, i64 %i.jhf
  %.0.copyload.i.i.i230.i = load ptr, ptr %i.jhg, align 1 ; 2 uses
  %i.jhh = icmp eq ptr %.0.copyload.i.i.i230.i, null
  br i1 %i.jhh, label %_PyVectorcall_FunctionInline.exit.thread.i.i232.i, label %bb.bfz

_PyVectorcall_FunctionInline.exit.thread.i.i232.i: ; preds = %_PyVectorcall_FunctionInline.exit.i.i229.i, %bb.bfy
  %i.jhi = call ptr @_PyObject_MakeTpCall(ptr noundef %i.jhb, ptr noundef nonnull %i.jer, ptr noundef null, i64 noundef 0, ptr noundef null) #8
  br label %_PyObject_CallNoArgs.exit233.i

bb.bfz:                                           ; preds = %_PyVectorcall_FunctionInline.exit.i.i229.i
  %i.jhj = call ptr %.0.copyload.i.i.i230.i(ptr noundef nonnull %i.jer, ptr noundef null, i64 noundef 0, ptr noundef null) #8, !inline_history !272
  %i.jhk = call ptr @_Py_CheckFunctionResult(ptr noundef %i.jhb, ptr noundef nonnull %i.jer, ptr noundef %i.jhj, ptr noundef null) #8
  br label %_PyObject_CallNoArgs.exit233.i

_PyObject_CallNoArgs.exit233.i:                   ; preds = %bb.bfz, %_PyVectorcall_FunctionInline.exit.thread.i.i232.i
  %.0.i.i231.i = phi ptr [ %i.jhi, %_PyVectorcall_FunctionInline.exit.thread.i.i232.i ], [ %i.jhk, %bb.bfz ] ; 10 uses
  %i.jhl = icmp eq ptr %.0.i.i231.i, null
  br i1 %i.jhl, label %.thread.i, label %bb.bga

bb.bga:                                           ; preds = %_PyObject_CallNoArgs.exit233.i
  %i.jhm = getelementptr i8, ptr %.0.i.i231.i, i64 8 ; 2 uses
  %.val212.i = load ptr, ptr %i.jhm, align 8, !tbaa !58 ; 2 uses
  %i.jhn = getelementptr i8, ptr %.val212.i, i64 168
  %.val219.i = load i64, ptr %i.jhn, align 8, !tbaa !145
  %i.jho = and i64 %.val219.i, 1073741824
  %.not181.i = icmp eq i64 %i.jho, 0
  br i1 %.not181.i, label %bb.bgb, label %bb.bgg

bb.bgb:                                           ; preds = %bb.bga
  %i.jhp = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !78
  %i.jhq = call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef %0, ptr noundef %i.jhp, ptr noundef nonnull @.str.23, ptr noundef nonnull %i.jer, ptr noundef nonnull %.val212.i) #8 ; 0 uses
  %i.jhr = load i32, ptr %.0.i.i231.i, align 8, !tbaa !34 ; 2 uses
  %.not182.i = icmp sgt i32 %i.jhr, -1
  br i1 %.not182.i, label %bb.bgc, label %.thread.i

bb.bgc:                                           ; preds = %bb.bgb
  %i.jhs = add nsw i32 %i.jhr, -1                 ; 2 uses
  store i32 %i.jhs, ptr %.0.i.i231.i, align 8, !tbaa !34
  %i.jht = icmp eq i32 %i.jhs, 0
  br i1 %i.jht, label %bb.bgd, label %.thread.i

bb.bgd:                                           ; preds = %bb.bgc
  %i.jhu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !54 ; 2 uses
  %.not183.i = icmp eq ptr %i.jhu, null
  br i1 %.not183.i, label %bb.bgf, label %bb.bge

bb.bge:                                           ; preds = %bb.bgd
  %i.jhv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !56
  %i.jhw = call i32 %i.jhu(ptr noundef nonnull %.0.i.i231.i, i32 noundef 1, ptr noundef %i.jhv) #8, !inline_history !273 ; 0 uses
  br label %bb.bgf

bb.bgf:                                           ; preds = %bb.bge, %bb.bgd
  %.val210.i = load ptr, ptr %i.jhm, align 8, !tbaa !58
  %i.jhx = getelementptr i8, ptr %.val210.i, i64 48
  %i.jhy = load ptr, ptr %i.jhx, align 8, !tbaa !59
  call void %i.jhy(ptr noundef nonnull %.0.i.i231.i) #8, !inline_history !273
  br label %.thread.i

bb.bgg:                                           ; preds = %bb.bga
  %i.jhz = load i32, ptr %i.jer, align 8, !tbaa !34 ; 2 uses
  %.not184.i = icmp sgt i32 %i.jhz, -1
  br i1 %.not184.i, label %bb.bgh, label %bb.bgq

bb.bgh:                                           ; preds = %bb.bgg
  %i.jia = add nsw i32 %i.jhz, -1                 ; 2 uses
  store i32 %i.jia, ptr %i.jer, align 8, !tbaa !34
  %i.jib = icmp eq i32 %i.jia, 0
  br i1 %i.jib, label %bb.bgi, label %bb.bgq

bb.bgi:                                           ; preds = %bb.bgh
  %i.jic = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !54 ; 2 uses
  %.not185.i = icmp eq ptr %i.jic, null
  br i1 %.not185.i, label %.sink.split.i, label %6

6:                                                ; preds = %bb.bgi
  %7 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !56
  %8 = call i32 %i.jic(ptr noundef nonnull %i.jer, i32 noundef 1, ptr noundef %7) #8, !inline_history !273 ; 0 uses
  br label %.sink.split.i

bb.bgj:                                           ; preds = %bb.bfx, %bb.bfw
  %i.jid = and i64 %.val224.val.i, 1073741824
  %.not178.i = icmp eq i64 %i.jid, 0
  br i1 %.not178.i, label %bb.bgk, label %bb.bgq

bb.bgk:                                           ; preds = %bb.bgj
  %i.jie = icmp eq ptr %i.jer, @_Py_NoneStruct
  br i1 %i.jie, label %bb.bgl, label %bb.bgp

bb.bgl:                                           ; preds = %bb.bgk
  %i.jif = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !34 ; 2 uses
  %.not179.i = icmp sgt i32 %i.jif, -1
  br i1 %.not179.i, label %bb.bgm, label %bb.bgq

bb.bgm:                                           ; preds = %bb.bgl
  %i.jig = add nsw i32 %i.jif, -1                 ; 2 uses
  store i32 %i.jig, ptr @_Py_NoneStruct, align 8, !tbaa !34
  %i.jih = icmp eq i32 %i.jig, 0
  br i1 %i.jih, label %bb.bgn, label %bb.bgq

bb.bgn:                                           ; preds = %bb.bgm
  %i.jii = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !54 ; 2 uses
  %.not180.i = icmp eq ptr %i.jii, null
  br i1 %.not180.i, label %.sink.split.i, label %bb.bgo

bb.bgo:                                           ; preds = %bb.bgn
  %i.jij = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !56
  %i.jik = call i32 %i.jii(ptr noundef nonnull @_Py_NoneStruct, i32 noundef 1, ptr noundef %i.jij) #8, !inline_history !273 ; 0 uses
  br label %.sink.split.i

bb.bgp:                                           ; preds = %bb.bgk
  %9 = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !78
  call void @_PyErr_SetString(ptr noundef %0, ptr noundef %9, ptr noundef nonnull @.str.25) #8
  br label %.thread.i

.sink.split.i:                                    ; preds = %bb.bgn, %bb.bgo, %bb.bgi, %6
  %.val209.sink.in.i = phi ptr [ %i.jgw, %bb.bgi ], [ %i.jgw, %6 ], [ getelementptr inbounds nuw (i8, ptr @_Py_NoneStruct, i64 8), %bb.bgo ], [ getelementptr inbounds nuw (i8, ptr @_Py_NoneStruct, i64 8), %bb.bgn ]
  %.0153.ph.i = phi ptr [ %.0.i.i231.i, %bb.bgi ], [ %.0.i.i231.i, %6 ], [ null, %bb.bgo ], [ null, %bb.bgn ]
  %.val209.sink.i = load ptr, ptr %.val209.sink.in.i, align 8, !tbaa !58
  %i.jil = getelementptr i8, ptr %.val209.sink.i, i64 48
  %i.jim = load ptr, ptr %i.jil, align 8, !tbaa !59
  call void %i.jim(ptr noundef nonnull %i.jer) #8, !inline_history !273
  br label %bb.bgq

bb.bgq:                                           ; preds = %.sink.split.i, %bb.bgm, %bb.bgl, %bb.bgj, %bb.bgh, %bb.bgg
  %.0153.i = phi ptr [ %i.jer, %bb.bgj ], [ %.0.i.i231.i, %bb.bgg ], [ %.0.i.i231.i, %bb.bgh ], [ null, %bb.bgl ], [ null, %bb.bgm ], [ %.0153.ph.i, %.sink.split.i ]
  call void @PyException_SetCause(ptr noundef nonnull %.0150.i, ptr noundef %.0153.i) #8
  br label %bb.bgr

bb.bgr:                                           ; preds = %bb.bgq, %Py_INCREF.exit.i
  call void @_PyErr_SetObject(ptr noundef %0, ptr noundef nonnull %.0148.i, ptr noundef nonnull %.0150.i) #8
  %i.jin = load i32, ptr %.0150.i, align 8, !tbaa !34 ; 2 uses
  %.not186.i = icmp sgt i32 %i.jin, -1
  br i1 %.not186.i, label %bb.bgs, label %bb.bgw

bb.bgs:                                           ; preds = %bb.bgr
  %i.jio = add nsw i32 %i.jin, -1                 ; 2 uses
  store i32 %i.jio, ptr %.0150.i, align 8, !tbaa !34
  %i.jip = icmp eq i32 %i.jio, 0
  br i1 %i.jip, label %bb.bgt, label %bb.bgw

bb.bgt:                                           ; preds = %bb.bgs
  %i.jiq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !54 ; 2 uses
  %.not187.i = icmp eq ptr %i.jiq, null
  br i1 %.not187.i, label %bb.bgv, label %bb.bgu

bb.bgu:                                           ; preds = %bb.bgt
  %i.jir = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !56
  %i.jis = call i32 %i.jiq(ptr noundef nonnull %.0150.i, i32 noundef 1, ptr noundef %i.jir) #8, !inline_history !273 ; 0 uses
  br label %bb.bgv

bb.bgv:                                           ; preds = %bb.bgu, %bb.bgt
  %i.jit = getelementptr i8, ptr %.0150.i, i64 8
  %.0150.val.i = load ptr, ptr %i.jit, align 8, !tbaa !58
  %i.jiu = getelementptr i8, ptr %.0150.val.i, i64 48
  %i.jiv = load ptr, ptr %i.jiu, align 8, !tbaa !59
  call void %i.jiv(ptr noundef nonnull %.0150.i) #8, !inline_history !273
  br label %bb.bgw

bb.bgw:                                           ; preds = %bb.bgv, %bb.bgs, %bb.bgr
  %i.jiw = load i32, ptr %.0148.i, align 8, !tbaa !34 ; 2 uses
  %.not188.i = icmp sgt i32 %i.jiw, -1
  br i1 %.not188.i, label %bb.bgx, label %do_raise.exit

bb.bgx:                                           ; preds = %bb.bgw
  %i.jix = add nsw i32 %i.jiw, -1                 ; 2 uses
  store i32 %i.jix, ptr %.0148.i, align 8, !tbaa !34
  %i.jiy = icmp eq i32 %i.jix, 0
  br i1 %i.jiy, label %bb.bgy, label %do_raise.exit

bb.bgy:                                           ; preds = %bb.bgx
  %i.jiz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !54 ; 2 uses
  %.not189.i = icmp eq ptr %i.jiz, null
  br i1 %.not189.i, label %bb.bha, label %bb.bgz

bb.bgz:                                           ; preds = %bb.bgy
  %i.jja = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !56
  %i.jjb = call i32 %i.jiz(ptr noundef nonnull %.0148.i, i32 noundef 1, ptr noundef %i.jja) #8, !inline_history !273 ; 0 uses
  br label %bb.bha

bb.bha:                                           ; preds = %bb.bgz, %bb.bgy
  %i.jjc = getelementptr i8, ptr %.0148.i, i64 8
  %.0148.val.i = load ptr, ptr %i.jjc, align 8, !tbaa !58
  %i.jjd = getelementptr i8, ptr %.0148.val.i, i64 48
  %i.jje = load ptr, ptr %i.jjd, align 8, !tbaa !59
  call void %i.jje(ptr noundef nonnull %.0148.i) #8, !inline_history !273
  br label %do_raise.exit

.thread.i:                                        ; preds = %bb.bgp, %bb.bgf, %bb.bgc, %bb.bgb, %_PyObject_CallNoArgs.exit233.i, %bb.bfn
  %.1151.i = phi ptr [ %.0.i.i.i11250, %bb.bfn ], [ %.0150.i, %bb.bgp ], [ %.0150.i, %_PyObject_CallNoArgs.exit233.i ], [ %.0150.i, %bb.bgc ], [ %.0150.i, %bb.bgf ], [ %.0150.i, %bb.bgb ] ; 5 uses
  %.1149.i = phi ptr [ %i.jfn, %bb.bfn ], [ %.0148.i, %bb.bgp ], [ %.0148.i, %_PyObject_CallNoArgs.exit233.i ], [ %.0148.i, %bb.bgc ], [ %.0148.i, %bb.bgf ], [ %.0148.i, %bb.bgb ] ; 3 uses
  %i.jjf = load i32, ptr %.1151.i, align 8, !tbaa !34 ; 2 uses
  %.not191.i = icmp sgt i32 %i.jjf, -1
  br i1 %.not191.i, label %bb.bhb, label %.thread242.i

bb.bhb:                                           ; preds = %.thread.i
  %i.jjg = add nsw i32 %i.jjf, -1                 ; 2 uses
  store i32 %i.jjg, ptr %.1151.i, align 8, !tbaa !34
  %i.jjh = icmp eq i32 %i.jjg, 0
  br i1 %i.jjh, label %bb.bhc, label %.thread242.i

bb.bhc:                                           ; preds = %bb.bhb
  %i.jji = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !54 ; 2 uses
  %.not192.i = icmp eq ptr %i.jji, null
  br i1 %.not192.i, label %bb.bhe, label %bb.bhd

bb.bhd:                                           ; preds = %bb.bhc
  %i.jjj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !56
  %i.jjk = call i32 %i.jji(ptr noundef nonnull %.1151.i, i32 noundef 1, ptr noundef %i.jjj) #8, !inline_history !273 ; 0 uses
  br label %bb.bhe

bb.bhe:                                           ; preds = %bb.bhd, %bb.bhc
  %i.jjl = getelementptr i8, ptr %.1151.i, i64 8
  %.1151.val.i = load ptr, ptr %i.jjl, align 8, !tbaa !58
  %i.jjm = getelementptr i8, ptr %.1151.val.i, i64 48
  %i.jjn = load ptr, ptr %i.jjm, align 8, !tbaa !59
  call void %i.jjn(ptr noundef nonnull %.1151.i) #8, !inline_history !273
  br label %.thread242.i

.thread242.i:                                     ; preds = %bb.bhe, %bb.bhb, %.thread.i, %_PyObject_CallNoArgs.exit.i
  %.1149240245.i = phi ptr [ %i.jfn, %_PyObject_CallNoArgs.exit.i ], [ %.1149.i, %.thread.i ], [ %.1149.i, %bb.bhe ], [ %.1149.i, %bb.bhb ] ; 5 uses
  %i.jjo = load i32, ptr %.1149240245.i, align 8, !tbaa !34 ; 2 uses
  %.not194.i = icmp sgt i32 %i.jjo, -1
  br i1 %.not194.i, label %bb.bhf, label %bb.bhj

bb.bhf:                                           ; preds = %.thread242.i
  %i.jjp = add nsw i32 %i.jjo, -1                 ; 2 uses
  store i32 %i.jjp, ptr %.1149240245.i, align 8, !tbaa !34
  %i.jjq = icmp eq i32 %i.jjp, 0
  br i1 %i.jjq, label %bb.bhg, label %bb.bhj

bb.bhg:                                           ; preds = %bb.bhf
  %i.jjr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !54 ; 2 uses
  %.not195.i = icmp eq ptr %i.jjr, null
  br i1 %.not195.i, label %bb.bhi, label %bb.bhh

bb.bhh:                                           ; preds = %bb.bhg
  %i.jjs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !56
  %i.jjt = call i32 %i.jjr(ptr noundef nonnull %.1149240245.i, i32 noundef 1, ptr noundef %i.jjs) #8, !inline_history !273 ; 0 uses
  br label %bb.bhi

bb.bhi:                                           ; preds = %bb.bhh, %bb.bhg
  %i.jju = getelementptr i8, ptr %.1149240245.i, i64 8
  %.1149.val.i = load ptr, ptr %i.jju, align 8, !tbaa !58
  %i.jjv = getelementptr i8, ptr %.1149.val.i, i64 48
  %i.jjw = load ptr, ptr %i.jjv, align 8, !tbaa !59
  call void %i.jjw(ptr noundef nonnull %.1149240245.i) #8, !inline_history !273
  br label %bb.bhj

bb.bhj:                                           ; preds = %bb.bhi, %bb.bhf, %.thread242.i, %.thread246.i
  %.not196.i = icmp eq ptr %i.jer, null
  br i1 %.not196.i, label %do_raise.exit, label %bb.bhk

bb.bhk:                                           ; preds = %bb.bhj
  %i.jjx = load i32, ptr %i.jer, align 8, !tbaa !34 ; 2 uses
  %.not197.i = icmp sgt i32 %i.jjx, -1
  br i1 %.not197.i, label %bb.bhl, label %do_raise.exit

bb.bhl:                                           ; preds = %bb.bhk
  %i.jjy = add nsw i32 %i.jjx, -1                 ; 2 uses
  store i32 %i.jjy, ptr %i.jer, align 8, !tbaa !34
  %i.jjz = icmp eq i32 %i.jjy, 0
  br i1 %i.jjz, label %bb.bhm, label %do_raise.exit

bb.bhm:                                           ; preds = %bb.bhl
  %i.jka = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !54 ; 2 uses
  %.not198.i = icmp eq ptr %i.jka, null
  br i1 %.not198.i, label %bb.bho, label %bb.bhn

bb.bhn:                                           ; preds = %bb.bhm
  %i.jkb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !56
  %i.jkc = call i32 %i.jka(ptr noundef nonnull %i.jer, i32 noundef 1, ptr noundef %i.jkb) #8, !inline_history !273 ; 0 uses
  br label %bb.bho

bb.bho:                                           ; preds = %bb.bhn, %bb.bhm
  %i.jkd = getelementptr i8, ptr %i.jer, i64 8
  %.val.i11252 = load ptr, ptr %i.jkd, align 8, !tbaa !58
  %i.jke = getelementptr i8, ptr %.val.i11252, i64 48
  %i.jkf = load ptr, ptr %i.jke, align 8, !tbaa !59
  call void %i.jkf(ptr noundef nonnull %i.jer) #8, !inline_history !273
  br label %do_raise.exit

do_raise.exit:                                    ; preds = %bb.bff, %bb.bgw, %bb.bgx, %bb.bha, %bb.bhj, %bb.bhk, %bb.bhl, %bb.bho
  %i.jkg = phi ptr [ %i.jfd, %bb.bff ], [ %i.jfm, %bb.bgw ], [ %i.jfm, %bb.bhj ], [ %i.jfm, %bb.bgx ], [ %i.jfm, %bb.bha ], [ %i.jfm, %bb.bhk ], [ %i.jfm, %bb.bho ], [ %i.jfm, %bb.bhl ]
  %.4.val9967 = load ptr, ptr %i.jkg, align 8, !tbaa !65
  br label %.loopexit

bb.bhp:                                           ; preds = %bb.bfg, %bb.bfh
  call void @_PyErr_SetRaisedException(ptr noundef %0, ptr noundef nonnull %i.jff) #8
  %.val.i11253 = load ptr, ptr %i.luq, align 8, !tbaa !46
  %i.jkh = getelementptr i8, ptr %.val.i11253, i64 223471
  %i.jki = load i8, ptr %i.jkh, align 1, !tbaa !34
  %i.jkj = icmp eq i8 %i.jki, 0
  br i1 %i.jkj, label %.preheader, label %bb.bhq

bb.bhq:                                           ; preds = %bb.bhp
  %.val.i.i11254 = load i64, ptr %.4, align 8
  %i.jkk = and i64 %.val.i.i11254, -2
  %i.jkl = inttoptr i64 %i.jkk to ptr
  %i.jkm = getelementptr i8, ptr %i.jkl, i64 48
  %i.jkn = load i32, ptr %i.jkm, align 8, !tbaa !48
  %i.jko = and i32 %i.jkn, 33554432
  %.not.i.i11255 = icmp eq i32 %i.jko, 0
  br i1 %.not.i.i11255, label %bb.bhr, label %.preheader

bb.bhr:                                           ; preds = %bb.bhq
  %i.jkp = call ptr @PyErr_GetRaisedException() #8 ; 7 uses
  %i.jkq = call i32 @_Py_call_instrumentation_arg(ptr noundef nonnull %0, i32 noundef 15, ptr noundef nonnull %.4, ptr noundef %.32, ptr noundef %i.jkp) #8
  %i.jkr = icmp eq i32 %i.jkq, 0
  br i1 %i.jkr, label %bb.bhs, label %bb.bht

bb.bhs:                                           ; preds = %bb.bhr
  call void @PyErr_SetRaisedException(ptr noundef %i.jkp) #8
  br label %.preheader

bb.bht:                                           ; preds = %bb.bhr
  %i.jks = load i32, ptr %i.jkp, align 8, !tbaa !34 ; 2 uses
  %.not21.i.i11256 = icmp sgt i32 %i.jks, -1
  br i1 %.not21.i.i11256, label %bb.bhu, label %.preheader

bb.bhu:                                           ; preds = %bb.bht
  %i.jkt = add nsw i32 %i.jks, -1                 ; 2 uses
  store i32 %i.jkt, ptr %i.jkp, align 8, !tbaa !34
  %i.jku = icmp eq i32 %i.jkt, 0
  br i1 %i.jku, label %bb.bhv, label %.preheader

bb.bhv:                                           ; preds = %bb.bhu
  %i.jkv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !54 ; 2 uses
  %.not22.i.i11257 = icmp eq ptr %i.jkv, null
  br i1 %.not22.i.i11257, label %bb.bhx, label %bb.bhw

bb.bhw:                                           ; preds = %bb.bhv
  %i.jkw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !56
  %i.jkx = call i32 %i.jkv(ptr noundef nonnull %i.jkp, i32 noundef 1, ptr noundef %i.jkw) #8, !inline_history !215 ; 0 uses
  br label %bb.bhx

bb.bhx:                                           ; preds = %bb.bhw, %bb.bhv
  %i.jky = getelementptr i8, ptr %i.jkp, i64 8
  %.val23.i.i11258 = load ptr, ptr %i.jky, align 8, !tbaa !58
  %i.jkz = getelementptr i8, ptr %.val23.i.i11258, i64 48
  %i.jla = load ptr, ptr %i.jkz, align 8, !tbaa !59
  call void %i.jla(ptr noundef nonnull %i.jkp) #8, !inline_history !215
  br label %.preheader

bb.bhy:                                           ; preds = %.backedge
  %i.jlb = getelementptr i8, ptr %.4, i64 56      ; 2 uses
  store ptr %.32, ptr %i.jlb, align 8, !tbaa !47
  %i.jlc = getelementptr i8, ptr %.32, i64 2      ; 6 uses
  %i.jld = getelementptr i8, ptr %.4.val1003611565, i64 -8 ; 2 uses
  %.sroa.0722.0.copyload = load i64, ptr %i.jld, align 8, !tbaa !34 ; 3 uses
  %i.jle = and i64 %.sroa.0722.0.copyload, 1
  %.not.not.i11260 = icmp eq i64 %i.jle, 0
  br i1 %.not.not.i11260, label %bb.bhz, label %bb.bia

bb.bhz:                                           ; preds = %bb.bhy
  %i.jlf = inttoptr i64 %.sroa.0722.0.copyload to ptr
  br label %PyStackRef_AsPyObjectSteal.exit11262

bb.bia:                                           ; preds = %bb.bhy
  %i.jlg = and i64 %.sroa.0722.0.copyload, -2
  %i.jlh = inttoptr i64 %i.jlg to ptr             ; 4 uses
  %i.jli = load i32, ptr %i.jlh, align 8, !tbaa !34 ; 2 uses
  %i.jlj = icmp ugt i32 %i.jli, -1073741825
  br i1 %i.jlj, label %PyStackRef_AsPyObjectSteal.exit11262, label %bb.bib

bb.bib:                                           ; preds = %bb.bia
  %i.jlk = add nuw i32 %i.jli, 1
  store i32 %i.jlk, ptr %i.jlh, align 8, !tbaa !34
  br label %PyStackRef_AsPyObjectSteal.exit11262

PyStackRef_AsPyObjectSteal.exit11262:             ; preds = %bb.bhz, %bb.bia, %bb.bib
  %.0.i11261 = phi ptr [ %i.jlf, %bb.bhz ], [ %i.jlh, %bb.bia ], [ %i.jlh, %bb.bib ]
  %.not9647 = icmp eq i32 %.09034, 0
  br i1 %.not9647, label %bb.bid, label %bb.bic

bb.bic:                                           ; preds = %PyStackRef_AsPyObjectSteal.exit11262
  %i.jll = xor i32 %.09034, -1
  %i.jlm = sext i32 %i.jll to i64
  %i.jln = getelementptr [8 x i8], ptr %.4.val1003611565, i64 %i.jlm
  %.4.val10451 = load i64, ptr %.4, align 8
  %i.jlo = and i64 %.4.val10451, -2
  %i.jlp = inttoptr i64 %i.jlo to ptr
  %i.jlq = getelementptr i8, ptr %i.jlp, i64 208
  %i.jlr = load i64, ptr %i.jln, align 8
  %i.jls = ashr i64 %i.jlr, 2
  %i.jlt = getelementptr [2 x i8], ptr %i.jlq, i64 %i.jls
  store ptr %i.jlt, ptr %i.jlb, align 8, !tbaa !47
  br label %bb.bid

bb.bid:                                           ; preds = %bb.bic, %PyStackRef_AsPyObjectSteal.exit11262
  %i.jlu = getelementptr i8, ptr %.4, i64 64
end_hunk_0
