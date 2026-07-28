inline.NumInlined: 2066
inline.NumDeleted: 252
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@ripper_yyparse:bb.a

bb.aju:                                           ; preds = %bb.ajt, %.lr.ph.i7461
  %i.hzx = add nuw nsw i32 %.013.i, 1             ; 2 uses
  %exitcond.not.i7463 = icmp eq i32 %i.hzx, %i.ml
  br i1 %exitcond.not.i7463, label %._crit_edge.i, label %.lr.ph.i7461, !llvm.loop !181

bb.ajv:                                           ; preds = %._crit_edge.i
  %i.hzy = load i64, ptr %i.x, align 8, !tbaa !58
  call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.569, i64 noundef %i.hzy) #29
  br label %after_reduce.exit

after_reduce.exit:                                ; preds = %._crit_edge.i, %bb.ajv
  %i.hzz = load i64, ptr %i.w, align 8, !tbaa !57
  %i.iaa = load i64, ptr %i.x, align 8, !tbaa !58
  %i.iab = call i64 @rb_ary_push(i64 noundef %i.hzz, i64 noundef %i.iaa) #29 ; 0 uses
  store i64 4, ptr %i.x, align 8, !tbaa !58
  %i.iac = getelementptr inbounds nuw i8, ptr %i.hzn, i64 8 ; 2 uses
  %i.iad = load i64, ptr %5, align 8, !tbaa !10
  store i64 %i.iad, ptr %i.iac, align 8, !tbaa !10
  %i.iae = getelementptr inbounds nuw i8, ptr %i.hzp, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.iae, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !13
  %i.iaf = getelementptr inbounds [2 x i8], ptr @yyr1, i64 %i.mi
  %i.iag = load i16, ptr %i.iaf, align 2, !tbaa !14
  %i.iah = sext i16 %i.iag to i64
  %i.iai = add nsw i64 %i.iah, -162               ; 2 uses
  %i.iaj = getelementptr inbounds [2 x i8], ptr @yypgoto, i64 %i.iai
  %i.iak = load i16, ptr %i.iaj, align 2, !tbaa !14
  %i.ial = sext i16 %i.iak to i32
  %i.iam = load i16, ptr %i.hzo, align 2, !tbaa !14 ; 2 uses
  %i.ian = sext i16 %i.iam to i32
  %i.iao = add nsw i32 %i.ian, %i.ial             ; 2 uses
  %or.cond7 = icmp ult i32 %i.iao, 16093
  br i1 %or.cond7, label %bb.ajw, label %bb.ajy

bb.ajw:                                           ; preds = %after_reduce.exit
  %i.iap = zext nneg i32 %i.iao to i64            ; 2 uses
  %i.iaq = getelementptr inbounds nuw [2 x i8], ptr @yycheck, i64 %i.iap
  %i.iar = load i16, ptr %i.iaq, align 2, !tbaa !14
  %i.ias = icmp eq i16 %i.iar, %i.iam
  br i1 %i.ias, label %bb.ajx, label %bb.ajy

bb.ajx:                                           ; preds = %bb.ajw
  %i.iat = getelementptr inbounds nuw [2 x i8], ptr @yytable, i64 %i.iap
  br label %bb.ajz

bb.ajy:                                           ; preds = %bb.ajw, %after_reduce.exit
  %i.iau = getelementptr inbounds [2 x i8], ptr @yydefgoto, i64 %i.iai
  br label %bb.ajz

bb.ajz:                                           ; preds = %bb.ajy, %bb.ajx
  %.in.in = phi ptr [ %i.iat, %bb.ajx ], [ %i.iau, %bb.ajy ]
  %.in = load i16, ptr %.in.in, align 2, !tbaa !14
  %i.iav = sext i16 %.in to i32
  br label %bb.d

bb.aka:                                           ; preds = %bb.ao
  %i.iaw = icmp eq i32 %.4, -2
  br i1 %i.iaw, label %bb.akc, label %.thread7553

.thread7553:                                      ; preds = %bb.ai, %bb.aka
  %.67555 = phi i32 [ %.4, %bb.aka ], [ %.3, %bb.ai ] ; 4 uses
  %or.cond9 = icmp ult i32 %.67555, 362
  br i1 %or.cond9, label %bb.akb, label %bb.akc

bb.akb:                                           ; preds = %.thread7553
  %i.iax = zext nneg i32 %.67555 to i64
  %i.iay = getelementptr inbounds nuw i8, ptr @yytranslate, i64 %i.iax
  %i.iaz = load i8, ptr %i.iay, align 1, !tbaa !10
  %i.iba = zext i8 %i.iaz to i32
  br label %bb.akc

bb.akc:                                           ; preds = %bb.akb, %.thread7553, %bb.aka
  %.67556 = phi i32 [ -2, %bb.aka ], [ %.67555, %bb.akb ], [ %.67555, %.thread7553 ] ; 6 uses
  %i.ibb = phi i32 [ -2, %bb.aka ], [ %i.iba, %bb.akb ], [ 2, %.thread7553 ] ; 3 uses
  %.not6535 = icmp eq i32 %.16292, 0
  br i1 %.not6535, label %bb.akd, label %bb.ako

bb.akd:                                           ; preds = %bb.akc
  %i.ibc = call fastcc i32 @yysyntax_error(ptr noundef %i.c, ptr %.17501, ptr nonnull %.36308, i32 %i.ibb, ptr noundef %0)
  switch i32 %i.ibc, label %bb.akk [
    i32 0, label %bb.ake
    i32 -1, label %bb.akf
  ]

bb.ake:                                           ; preds = %bb.akd
  br label %bb.akk

bb.akf:                                           ; preds = %bb.akd
  %.not6536 = icmp eq ptr %.17501, %i.b
  br i1 %.not6536, label %bb.akh, label %bb.akg

bb.akg:                                           ; preds = %bb.akf
  call void @free(ptr noundef %.17501) #29
  br label %bb.akh

bb.akh:                                           ; preds = %bb.akg, %bb.akf
  %i.ibd = load i64, ptr %i.c, align 8, !tbaa !11
  %i.ibe = call noalias ptr @malloc(i64 noundef %i.ibd) #30 ; 4 uses
  %.not6537 = icmp eq ptr %i.ibe, null
  br i1 %.not6537, label %bb.akj, label %bb.aki

bb.aki:                                           ; preds = %bb.akh
  %i.ibf = call fastcc i32 @yysyntax_error(ptr noundef %i.c, ptr nonnull %i.ibe, ptr nonnull %.36308, i32 %i.ibb, ptr noundef %0)
  %i.ibg = icmp eq i32 %i.ibf, -2
  br label %bb.akk

bb.akj:                                           ; preds = %bb.akh
  store i64 128, ptr %i.c, align 8, !tbaa !11
  br label %bb.akk

bb.akk:                                           ; preds = %bb.akd, %bb.akj, %bb.aki, %bb.ake
  %.27502 = phi ptr [ %.17501, %bb.akd ], [ %.17501, %bb.ake ], [ %i.b, %bb.akj ], [ %i.ibe, %bb.aki ] ; 2 uses
  %.06281 = phi ptr [ @.str.64, %bb.akd ], [ %.17501, %bb.ake ], [ @.str.64, %bb.akj ], [ %i.ibe, %bb.aki ] ; 2 uses
  %.0 = phi i1 [ true, %bb.akd ], [ false, %bb.ake ], [ true, %bb.akj ], [ %i.ibg, %bb.aki ]
  %i.ibh = load i32, ptr %i.l, align 4, !tbaa !42 ; 2 uses
  %i.ibi = load i32, ptr %2, align 8, !tbaa !51
  %i.ibj = icmp eq i32 %i.ibh, %i.ibi
  %i.ibk = load i32, ptr %i.u, align 8
  %i.ibl = icmp eq i32 %i.ibh, %i.ibk
  %or.cond7618 = select i1 %i.ibj, i1 %i.ibl, i1 false
  br i1 %or.cond7618, label %bb.akl, label %bb.akm

bb.akl:                                           ; preds = %bb.akk
  %i.ibm = load ptr, ptr %i.r, align 8, !tbaa !48
  %i.ibn = load ptr, ptr %i.k, align 8, !tbaa !41
  %i.ibo = load ptr, ptr %i.n, align 8, !tbaa !44 ; 2 uses
  %i.ibp = load i32, ptr %i.t, align 4, !tbaa !54
  %i.ibq = sext i32 %i.ibp to i64
  %i.ibr = getelementptr inbounds i8, ptr %i.ibo, i64 %i.ibq
  store ptr %i.ibr, ptr %i.k, align 8, !tbaa !41
  %i.ibs = load i32, ptr %i.v, align 4, !tbaa !56
  %i.ibt = sext i32 %i.ibs to i64
  %i.ibu = getelementptr inbounds i8, ptr %i.ibo, i64 %i.ibt
  store ptr %i.ibu, ptr %i.r, align 8, !tbaa !48
  br label %bb.akm

bb.akm:                                           ; preds = %bb.akl, %bb.akk
  %.019.i = phi ptr [ %i.ibm, %bb.akl ], [ null, %bb.akk ] ; 2 uses
  %.0.i7464 = phi ptr [ %i.ibn, %bb.akl ], [ null, %bb.akk ]
  %i.ibv = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.06281) #32
  %i.ibw = load ptr, ptr %i.s, align 8, !tbaa !49
  %i.ibx = call i64 @rb_enc_str_new(ptr noundef nonnull %.06281, i64 noundef %i.ibv, ptr noundef %i.ibw) #29
  %.val.i.i7465 = load i64, ptr %i.p, align 8, !tbaa !46
  %i.iby = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i.i7465, i64 noundef %i.hh, i32 noundef 1, i64 noundef %i.ibx) #29 ; 0 uses
  %i.ibz = load i16, ptr %i.e, align 8
  %i.ica = or i16 %i.ibz, 512
  store i16 %i.ica, ptr %i.e, align 8
  %.not.i7466 = icmp eq ptr %.019.i, null
  br i1 %.not.i7466, label %parser_yyerror.exit, label %bb.akn

bb.akn:                                           ; preds = %bb.akm
  store ptr %.0.i7464, ptr %i.k, align 8, !tbaa !41
  store ptr %.019.i, ptr %i.r, align 8, !tbaa !48
  br label %parser_yyerror.exit

parser_yyerror.exit:                              ; preds = %bb.akm, %bb.akn
  br i1 %.0, label %.thread7515, label %.thread7557

.thread7557:                                      ; preds = %parser_yyerror.exit
  %.sroa.2.16.copyload74957560 = load i64, ptr %2, align 8
  br label %bb.aks

bb.ako:                                           ; preds = %bb.akc
  %.sroa.2.16.copyload7495 = load i64, ptr %2, align 8 ; 3 uses
  %i.icb = icmp eq i32 %.16292, 3
  br i1 %i.icb, label %bb.akp, label %bb.aks

bb.akp:                                           ; preds = %bb.ako
  %i.icc = icmp slt i32 %.67556, 1
  br i1 %i.icc, label %bb.akq, label %bb.akr

bb.akq:                                           ; preds = %bb.akp
  %i.icd = icmp eq i32 %.67556, 0
  br i1 %i.icd, label %.thread7583, label %bb.aks

bb.akr:                                           ; preds = %bb.akp
  call fastcc void @yydestruct(ptr noundef nonnull @.str.65, i32 noundef %i.ibb, ptr noundef %1, ptr noundef %2, ptr noundef %0)
  br label %bb.aks

bb.aks:                                           ; preds = %.thread7557, %bb.ako, %bb.akq, %bb.akr, %bb.aa
  %.47504 = phi ptr [ %.17501, %bb.akq ], [ %.17501, %bb.akr ], [ %.17501, %bb.ako ], [ %.17501, %bb.aa ], [ %.27502, %.thread7557 ] ; 2 uses
  %.sroa.2.0 = phi i64 [ %.sroa.2.16.copyload7495, %bb.akq ], [ %.sroa.2.16.copyload7495, %bb.akr ], [ %.sroa.2.16.copyload7495, %bb.ako ], [ %.sroa.2.16.copyload, %bb.aa ], [ %.sroa.2.16.copyload74957560, %.thread7557 ]
  %.7 = phi i32 [ %.67556, %bb.akq ], [ -2, %bb.akr ], [ %.67556, %bb.ako ], [ 257, %bb.aa ], [ %.67556, %.thread7557 ] ; 2 uses
  br label %bb.akt

bb.akt:                                           ; preds = %bb.akz, %bb.aks
  %i.ice = phi i16 [ %i.iz, %bb.aks ], [ %.pre7738, %bb.akz ] ; 2 uses
  %.sroa.2.1 = phi i64 [ %.sroa.2.0, %bb.aks ], [ %.sroa.2.16.copyload7496, %bb.akz ]
  %.46335 = phi ptr [ %.36334, %bb.aks ], [ %i.icv, %bb.akz ] ; 8 uses
  %.46322 = phi ptr [ %.36321, %bb.aks ], [ %i.ict, %bb.akz ] ; 4 uses
  %.46309 = phi ptr [ %.36308, %bb.aks ], [ %i.icu, %bb.akz ] ; 4 uses
  %.26290 = phi i32 [ %.16289, %bb.aks ], [ %i.idh, %bb.akz ]
  %i.icf = sext i32 %.26290 to i64
  %i.icg = add i16 %i.ice, 1
  %or.cond11 = icmp ult i16 %i.icg, 16093
  br i1 %or.cond11, label %bb.aku, label %bb.akw

bb.aku:                                           ; preds = %bb.akt
  %i.ich = sext i16 %i.ice to i64
  %i.ici = add nsw i64 %i.ich, 1                  ; 2 uses
  %i.icj = getelementptr inbounds [2 x i8], ptr @yycheck, i64 %i.ici
  %i.ick = load i16, ptr %i.icj, align 2, !tbaa !14
  %i.icl = icmp eq i16 %i.ick, 1
  br i1 %i.icl, label %bb.akv, label %bb.akw

bb.akv:                                           ; preds = %bb.aku
  %i.icm = getelementptr inbounds [2 x i8], ptr @yytable, i64 %i.ici
  %i.icn = load i16, ptr %i.icm, align 2, !tbaa !14 ; 3 uses
  %i.ico = icmp sgt i16 %i.icn, 0
  br i1 %i.ico, label %bb.ala, label %bb.akw

bb.akw:                                           ; preds = %bb.aku, %bb.akv, %bb.akt
  %i.icp = icmp eq ptr %.46309, %.36301
  br i1 %i.icp, label %parser_yyerror.exit7479, label %bb.akx

bb.akx:                                           ; preds = %bb.akw
  %.sroa.2.16.copyload7496 = load i64, ptr %.46335, align 4
  %i.icq = getelementptr inbounds [2 x i8], ptr @yystos, i64 %i.icf
  %i.icr = load i16, ptr %i.icq, align 2, !tbaa !14
  %i.ics = sext i16 %i.icr to i32
  call fastcc void @yydestruct(ptr noundef nonnull @.str.66, i32 noundef %i.ics, ptr noundef %.46322, ptr noundef %.46335, ptr noundef %0)
  %i.ict = getelementptr inbounds i8, ptr %.46322, i64 -8
  %i.icu = getelementptr inbounds i8, ptr %.46309, i64 -2 ; 5 uses
  %i.icv = getelementptr inbounds i8, ptr %.46335, i64 -16
  %i.icw = load i64, ptr %i.w, align 8, !tbaa !57
  %i.icx = call i64 @rb_ary_pop(i64 noundef %i.icw) #29
  %i.icy = load i16, ptr %i.e, align 8
  %i.icz = and i16 %i.icy, 32
  %.not.i7467 = icmp eq i16 %i.icz, 0
  br i1 %.not.i7467, label %after_pop_stack.exit.thread, label %after_pop_stack.exit

after_pop_stack.exit.thread:                      ; preds = %bb.akx
  %i.ida = load i16, ptr %i.icu, align 2, !tbaa !14
  br label %bb.akz

after_pop_stack.exit:                             ; preds = %bb.akx
  call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.576, i64 noundef %i.icx) #29
  %.pre7739 = load i16, ptr %i.e, align 8
  %.pre7742 = and i16 %.pre7739, 32
  %i.idb = icmp eq i16 %.pre7742, 0
  %i.idc = load i16, ptr %i.icu, align 2, !tbaa !14 ; 2 uses
  br i1 %i.idb, label %bb.akz, label %bb.aky

bb.aky:                                           ; preds = %after_pop_stack.exit
  call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.70) #29
  %.not7.i7468 = icmp ugt ptr %.36301, %i.icu
  br i1 %.not7.i7468, label %yy_stack_print.exit7473, label %.lr.ph.i7469

.lr.ph.i7469:                                     ; preds = %bb.aky, %.lr.ph.i7469
  %.08.i7470 = phi ptr [ %i.idf, %.lr.ph.i7469 ], [ %.36301, %bb.aky ] ; 2 uses
  %i.idd = load i16, ptr %.08.i7470, align 2, !tbaa !14
  %i.ide = sext i16 %i.idd to i32
  call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.71, i32 noundef %i.ide) #29
  %i.idf = getelementptr inbounds nuw i8, ptr %.08.i7470, i64 2 ; 2 uses
  %.not.i7471 = icmp ugt ptr %i.idf, %i.icu
  br i1 %.not.i7471, label %yy_stack_print.exit7473, label %.lr.ph.i7469, !llvm.loop !16

yy_stack_print.exit7473:                          ; preds = %.lr.ph.i7469, %bb.aky
  call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.7) #29
  br label %bb.akz

bb.akz:                                           ; preds = %after_pop_stack.exit.thread, %yy_stack_print.exit7473, %after_pop_stack.exit
  %i.idg = phi i16 [ %i.ida, %after_pop_stack.exit.thread ], [ %i.idc, %yy_stack_print.exit7473 ], [ %i.idc, %after_pop_stack.exit ] ; 2 uses
  %i.idh = sext i16 %i.idg to i32
  %.phi.trans.insert = sext i16 %i.idg to i64
  %.phi.trans.insert7737 = getelementptr inbounds [2 x i8], ptr @yypact, i64 %.phi.trans.insert
  %.pre7738 = load i16, ptr %.phi.trans.insert7737, align 2, !tbaa !14
  br label %bb.akt

bb.ala:                                           ; preds = %bb.akv
  %i.idi = zext nneg i16 %i.icn to i32
  %i.idj = getelementptr inbounds nuw i8, ptr %.46322, i64 8 ; 3 uses
  %i.idk = load i64, ptr %1, align 8, !tbaa !10
  store i64 %i.idk, ptr %i.idj, align 8, !tbaa !10
  %.sroa.87499.32.copyload = load i64, ptr %i.u, align 8
  %i.idl = getelementptr inbounds nuw i8, ptr %.46335, i64 16 ; 3 uses
  store i64 %.sroa.2.1, ptr %i.idl, align 4
  %i.idm = getelementptr inbounds nuw i8, ptr %.46335, i64 24 ; 2 uses
  store i64 %.sroa.87499.32.copyload, ptr %i.idm, align 4
  %i.idn = load i16, ptr %i.e, align 8
  %i.ido = and i16 %i.idn, 32
  %.not6538 = icmp eq i16 %i.ido, 0
  br i1 %.not6538, label %after_shift_error_token.exit, label %bb.alb

bb.alb:                                           ; preds = %bb.ala
  call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.8) #29
  %i.idp = zext nneg i16 %i.icn to i64
  %i.idq = getelementptr inbounds nuw [2 x i8], ptr @yystos, i64 %i.idp
  %i.idr = load i16, ptr %i.idq, align 2, !tbaa !14 ; 3 uses
  %i.ids = sext i16 %i.idr to i32
  %i.idt = icmp slt i16 %i.idr, 162
  %i.idu = select i1 %i.idt, ptr @.str.73, ptr @.str.74
  %i.idv = sext i16 %i.idr to i64
  %i.idw = getelementptr inbounds [8 x i8], ptr @yytname, i64 %i.idv
  %i.idx = load ptr, ptr %i.idw, align 8, !tbaa !50
  call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.72, ptr noundef nonnull %i.idu, ptr noundef %i.idx) #29
  %i.idy = load i32, ptr %i.idl, align 4, !tbaa !51
  %i.idz = getelementptr inbounds nuw i8, ptr %.46335, i64 20
  %i.iea = load i32, ptr %i.idz, align 4, !tbaa !54
  %i.ieb = load i32, ptr %i.idm, align 4, !tbaa !55
  %i.iec = getelementptr inbounds nuw i8, ptr %.46335, i64 28
  %i.ied = load i32, ptr %i.iec, align 4, !tbaa !56
  call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.75, i32 noundef %i.idy, i32 noundef %i.iea, i32 noundef %i.ieb, i32 noundef %i.ied) #29
  call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.76) #29
  call fastcc void @yy_symbol_value_print(i32 noundef range(i32 -32768, 32768) %i.ids, ptr noundef nonnull %i.idj, ptr noundef nonnull %0)
  call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.77) #29
  call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.7) #29
  %.pre7740 = load i16, ptr %i.e, align 8
  %.pre7741 = and i16 %.pre7740, 32
  %i.iee = icmp eq i16 %.pre7741, 0
  br i1 %i.iee, label %after_shift_error_token.exit, label %bb.alc

bb.alc:                                           ; preds = %bb.alb
  call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.577) #29
  br label %after_shift_error_token.exit

after_shift_error_token.exit:                     ; preds = %bb.ala, %bb.alb, %bb.alc
  %i.ief = load i64, ptr %i.w, align 8, !tbaa !57
  %i.ieg = call i64 @rb_ary_push(i64 noundef %i.ief, i64 noundef 4) #29 ; 0 uses
  br label %bb.d

.thread7515:                                      ; preds = %bb.k, %bb.j, %parser_yyerror.exit
  %.57505 = phi ptr [ %.27502, %parser_yyerror.exit ], [ %.17501, %bb.j ], [ %.17501, %bb.k ] ; 2 uses
  %.66337 = phi ptr [ %.36334, %parser_yyerror.exit ], [ %.16332, %bb.j ], [ %.16332, %bb.k ] ; 2 uses
  %.66324 = phi ptr [ %.36321, %parser_yyerror.exit ], [ %.16319, %bb.j ], [ %.16319, %bb.k ] ; 2 uses
  %.66311 = phi ptr [ %.36308, %parser_yyerror.exit ], [ %.16306, %bb.j ], [ %.16306, %bb.k ] ; 2 uses
  %.56303 = phi ptr [ %.36301, %parser_yyerror.exit ], [ %.06298, %bb.j ], [ %.06298, %bb.k ] ; 2 uses
  %.9 = phi i32 [ %.67556, %parser_yyerror.exit ], [ %.1, %bb.j ], [ %.1, %bb.k ] ; 2 uses
  %i.ieh = load i32, ptr %i.l, align 4, !tbaa !42 ; 2 uses
  %i.iei = load i32, ptr %2, align 8, !tbaa !51
  %i.iej = icmp eq i32 %i.ieh, %i.iei
  %i.iek = load i32, ptr %i.u, align 8
  %i.iel = icmp eq i32 %i.ieh, %i.iek
  %or.cond7621 = select i1 %i.iej, i1 %i.iel, i1 false
  br i1 %or.cond7621, label %bb.ald, label %bb.ale

bb.ald:                                           ; preds = %.thread7515
  %i.iem = load ptr, ptr %i.r, align 8, !tbaa !48
  %i.ien = load ptr, ptr %i.k, align 8, !tbaa !41
  %i.ieo = load ptr, ptr %i.n, align 8, !tbaa !44 ; 2 uses
  %i.iep = load i32, ptr %i.t, align 4, !tbaa !54
  %i.ieq = sext i32 %i.iep to i64
  %i.ier = getelementptr inbounds i8, ptr %i.ieo, i64 %i.ieq
  store ptr %i.ier, ptr %i.k, align 8, !tbaa !41
  %i.ies = load i32, ptr %i.v, align 4, !tbaa !56
  %i.iet = sext i32 %i.ies to i64
  %i.ieu = getelementptr inbounds i8, ptr %i.ieo, i64 %i.iet
  store ptr %i.ieu, ptr %i.r, align 8, !tbaa !48
  br label %bb.ale

bb.ale:                                           ; preds = %bb.ald, %.thread7515
  %.019.i7475 = phi ptr [ %i.iem, %bb.ald ], [ null, %.thread7515 ] ; 2 uses
  %.0.i7476 = phi ptr [ %i.ien, %bb.ald ], [ null, %.thread7515 ]
  %i.iev = load i64, ptr getelementptr inbounds nuw (i8, ptr @ripper_parser_ids, i64 656), align 8, !tbaa !182
  %i.iew = load ptr, ptr %i.s, align 8, !tbaa !49
  %i.iex = call i64 @rb_enc_str_new(ptr noundef nonnull @.str.67, i64 noundef 16, ptr noundef %i.iew) #29
  %.val.i.i7477 = load i64, ptr %i.p, align 8, !tbaa !46
  %i.iey = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i.i7477, i64 noundef %i.iev, i32 noundef 1, i64 noundef %i.iex) #29 ; 0 uses
  %i.iez = load i16, ptr %i.e, align 8
  %i.ifa = or i16 %i.iez, 512
  store i16 %i.ifa, ptr %i.e, align 8
  %.not.i7478 = icmp eq ptr %.019.i7475, null
  br i1 %.not.i7478, label %parser_yyerror.exit7479, label %bb.alf

bb.alf:                                           ; preds = %bb.ale
  store ptr %.0.i7476, ptr %i.k, align 8, !tbaa !41
  store ptr %.019.i7475, ptr %i.r, align 8, !tbaa !48
  br label %parser_yyerror.exit7479

parser_yyerror.exit7479:                          ; preds = %bb.p, %.thread7524, %bb.akw, %bb.alf, %bb.ale
  %.67506 = phi ptr [ %.57505, %bb.ale ], [ %.47504, %bb.akw ], [ %.57505, %bb.alf ], [ %.17501, %.thread7524 ], [ %.17501, %bb.p ] ; 3 uses
  %.06342 = phi i32 [ 2, %bb.ale ], [ 1, %bb.akw ], [ 2, %bb.alf ], [ 0, %.thread7524 ], [ 1, %bb.p ] ; 3 uses
  %.76338 = phi ptr [ %.66337, %bb.ale ], [ %.46335, %bb.akw ], [ %.66337, %bb.alf ], [ %.36334, %.thread7524 ], [ %i.it, %bb.p ] ; 3 uses
  %.76325 = phi ptr [ %.66324, %bb.ale ], [ %.46322, %bb.akw ], [ %.66324, %bb.alf ], [ %.36321, %.thread7524 ], [ %i.ir, %bb.p ] ; 3 uses
  %.76312 = phi ptr [ %.66311, %bb.ale ], [ %.46309, %bb.akw ], [ %.66311, %bb.alf ], [ %.36308, %.thread7524 ], [ %i.ip, %bb.p ] ; 3 uses
  %.66304 = phi ptr [ %.56303, %bb.ale ], [ %.36301, %bb.akw ], [ %.56303, %bb.alf ], [ %.36301, %.thread7524 ], [ %i.ic, %bb.p ] ; 3 uses
  %.10 = phi i32 [ %.9, %bb.ale ], [ %.7, %bb.akw ], [ %.9, %bb.alf ], [ %.1, %.thread7524 ], [ %.1, %bb.p ] ; 3 uses
  %.not6540 = icmp eq i32 %.10, -2
  br i1 %.not6540, label %bb.ali, label %bb.alg

bb.alg:                                           ; preds = %parser_yyerror.exit7479
  %or.cond13 = icmp ult i32 %.10, 362
  br i1 %or.cond13, label %.thread7583, label %bb.alh

.thread7583:                                      ; preds = %bb.akq, %bb.alg
  %.6750675707604 = phi ptr [ %.67506, %bb.alg ], [ %.17501, %bb.akq ]
  %.0634275727602 = phi i32 [ %.06342, %bb.alg ], [ 1, %bb.akq ]
  %.7633875747600 = phi ptr [ %.76338, %bb.alg ], [ %.36334, %bb.akq ]
  %.7632575767598 = phi ptr [ %.76325, %bb.alg ], [ %.36321, %bb.akq ]
  %.7631275787596 = phi ptr [ %.76312, %bb.alg ], [ %.36308, %bb.akq ]
  %.6630475807594 = phi ptr [ %.66304, %bb.alg ], [ %.36301, %bb.akq ]
  %.1075827592 = phi i32 [ %.10, %bb.alg ], [ 0, %bb.akq ]
  %i.ifb = zext nneg i32 %.1075827592 to i64
  %i.ifc = getelementptr inbounds nuw i8, ptr @yytranslate, i64 %i.ifb
  %i.ifd = load i8, ptr %i.ifc, align 1, !tbaa !10
  %i.ife = zext i8 %i.ifd to i32
  br label %bb.alh

bb.alh:                                           ; preds = %bb.alg, %.thread7583
  %.6750675707603 = phi ptr [ %.6750675707604, %.thread7583 ], [ %.67506, %bb.alg ]
  %.0634275727601 = phi i32 [ %.0634275727602, %.thread7583 ], [ %.06342, %bb.alg ]
  %.7633875747599 = phi ptr [ %.7633875747600, %.thread7583 ], [ %.76338, %bb.alg ]
  %.7632575767597 = phi ptr [ %.7632575767598, %.thread7583 ], [ %.76325, %bb.alg ]
  %.7631275787595 = phi ptr [ %.7631275787596, %.thread7583 ], [ %.76312, %bb.alg ]
  %.6630475807593 = phi ptr [ %.6630475807594, %.thread7583 ], [ %.66304, %bb.alg ]
  %i.iff = phi i32 [ %i.ife, %.thread7583 ], [ 2, %bb.alg ]
  call fastcc void @yydestruct(ptr noundef nonnull @.str.68, i32 noundef %i.iff, ptr noundef %1, ptr noundef %2, ptr noundef %0)
end_hunk_0
