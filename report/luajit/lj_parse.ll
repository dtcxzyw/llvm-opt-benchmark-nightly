Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_parse?download=true
inline.NumInlined: 342
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@parse_chunk:bb.a
    i8 54, label %bb.ff
  ]

bb.fd:                                            ; preds = %bb.fc
  %i.agt = lshr i32 %i.ags, 16                    ; 2 uses
  %i.agu = load i32, ptr %i.adm, align 8, !tbaa !66
  %.not32.i = icmp ult i32 %i.agt, %i.agu
  br i1 %.not32.i, label %bb.fm, label %parse_for_iter.exit.i

bb.fe:                                            ; preds = %bb.fc
  %i.agv = lshr i32 %i.ags, 16
  br label %bb.fm

bb.ff:                                            ; preds = %bb.fc
  %i.agw = load ptr, ptr %i.adg, align 8, !tbaa !32
  %i.agx = load ptr, ptr %i.k, align 8, !tbaa !26
  %i.agy = call ptr @lj_str_new(ptr noundef %i.agx, ptr noundef nonnull @.str.6, i64 noundef 5) #12
  %i.agz = call ptr @lj_tab_getstr(ptr noundef %i.agw, ptr noundef %i.agy) #12 ; 3 uses
  %.not.i109 = icmp eq ptr %i.agz, null
  br i1 %.not.i109, label %bb.fi, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agz, i64 4
  %i.ahb = load i32, ptr %i.aha, align 4, !tbaa !33
  %i.ahc = icmp eq i32 %i.ahb, 0
  br i1 %i.ahc, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  %i.ahd = load i32, ptr %i.agz, align 8, !tbaa !33
  %i.ahe = lshr i32 %i.ags, 16
  %i.ahf = icmp eq i32 %i.ahd, %i.ahe
  br i1 %i.ahf, label %parse_for_iter.exit.i, label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg, %bb.ff
  %i.ahg = load ptr, ptr %i.adg, align 8, !tbaa !32
  %i.ahh = load ptr, ptr %i.k, align 8, !tbaa !26
  %i.ahi = call ptr @lj_str_new(ptr noundef %i.ahh, ptr noundef nonnull @.str.7, i64 noundef 4) #12
  %i.ahj = call ptr @lj_tab_getstr(ptr noundef %i.ahg, ptr noundef %i.ahi) #12 ; 3 uses
  %.not31.i = icmp eq ptr %i.ahj, null
  br i1 %.not31.i, label %bb.fl, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahj, i64 4
  %i.ahl = load i32, ptr %i.ahk, align 4, !tbaa !33
  %i.ahm = icmp eq i32 %i.ahl, 0
  br i1 %i.ahm, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  %i.ahn = load i32, ptr %i.ahj, align 8, !tbaa !33
  %i.aho = lshr i32 %i.ags, 16
  %i.ahp = icmp eq i32 %i.ahn, %i.aho
  br i1 %i.ahp, label %parse_for_iter.exit.i, label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj, %bb.fi
  br label %parse_for_iter.exit.i

bb.fm:                                            ; preds = %bb.fd, %bb.fe
  %.sink43.i = phi i32 [ %i.agv, %bb.fe ], [ %i.agt, %bb.fd ]
  %i.ahq = phi i64 [ 492, %bb.fe ], [ 92, %bb.fd ]
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.adg, i64 %i.ahq
  %.sink.i110 = load ptr, ptr %i.h, align 8, !tbaa !91
  %i.ahs = zext nneg i32 %.sink43.i to i64
  %i.aht = getelementptr inbounds nuw [2 x i8], ptr %i.ahr, i64 %i.ahs
  %i.ahu = load i16, ptr %i.aht, align 2, !tbaa !78
  %i.ahv = zext i16 %i.ahu to i64
  %i.ahw = getelementptr inbounds nuw [24 x i8], ptr %.sink.i110, i64 %i.ahv
  %.0.in.i = load i64, ptr %i.ahw, align 8, !tbaa !93
  %.0.i111 = inttoptr i64 %.0.in.i to ptr         ; 3 uses
  %i.ahx = getelementptr inbounds nuw i8, ptr %.0.i111, i64 20
  %i.ahy = load i32, ptr %i.ahx, align 4, !tbaa !100
  switch i32 %i.ahy, label %parse_for_iter.exit.i [
    i32 5, label %bb.fn
    i32 4, label %bb.fo
  ]

bb.fn:                                            ; preds = %bb.fm
  %i.ahz = getelementptr inbounds nuw i8, ptr %.0.i111, i64 24
  %i.aia = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ahz, ptr noundef nonnull dereferenceable(6) @.str.6) #13
  %.not33.i = icmp eq i32 %i.aia, 0
  br label %parse_for_iter.exit.i

bb.fo:                                            ; preds = %bb.fm
  %i.aib = getelementptr inbounds nuw i8, ptr %.0.i111, i64 24
  %i.aic = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aib, ptr noundef nonnull dereferenceable(5) @.str.7) #13
  %.not34.i = icmp eq i32 %i.aic, 0
  br label %parse_for_iter.exit.i

parse_for_iter.exit.i:                            ; preds = %bb.fo, %bb.fn, %bb.fm, %bb.fl, %bb.fk, %bb.fh, %bb.fd, %bb.fc, %bb.fb, %bcreg_bump.exit
  %i.aid = phi i1 [ false, %bb.fb ], [ false, %bcreg_bump.exit ], [ true, %bb.fk ], [ false, %bb.fl ], [ false, %bb.fc ], [ false, %bb.fd ], [ true, %bb.fh ], [ %.not33.i, %bb.fn ], [ false, %bb.fm ], [ %.not34.i, %bb.fo ] ; 2 uses
  %i.aie = load ptr, ptr %0, align 8, !tbaa !27   ; 3 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aie, i64 56 ; 2 uses
  %i.aig = load i32, ptr %i.aif, align 8, !tbaa !66 ; 5 uses
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aie, i64 92 ; 3 uses
  %i.aii = load ptr, ptr %i.h, align 8, !tbaa !91 ; 3 uses
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aie, i64 40 ; 2 uses
  %i.aik = zext i32 %i.aig to i64
  %i.ail = getelementptr inbounds nuw [2 x i8], ptr %i.aih, i64 %i.aik
  %i.aim = load i16, ptr %i.ail, align 2, !tbaa !78 ; 2 uses
  %i.ain = zext i16 %i.aim to i64
  %i.aio = getelementptr inbounds nuw [24 x i8], ptr %i.aii, i64 %i.ain ; 4 uses
  %i.aip = load i64, ptr %i.aio, align 8, !tbaa !93 ; 2 uses
  %i.aiq = icmp ult i64 %i.aip, 7
  br i1 %i.aiq, label %var_hash.exit.thread.i107, label %var_hash.exit.i102

var_hash.exit.thread.i107:                        ; preds = %parse_for_iter.exit.i
  %i.air = load i32, ptr %i.aij, align 8, !tbaa !58
  br label %bb.fp

var_hash.exit.i102:                               ; preds = %parse_for_iter.exit.i
  %i.ais = inttoptr i64 %i.aip to ptr
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ais, i64 12
  %i.aiu = load i32, ptr %i.ait, align 4, !tbaa !97
  %i.aiv = and i32 %i.aiu, 31
  %i.aiw = zext nneg i32 %i.aiv to i64
  %i.aix = load i32, ptr %i.aij, align 8, !tbaa !58
  %i.aiy = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.aiw ; 2 uses
  %i.aiz = load i16, ptr %i.aiy, align 2, !tbaa !78
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aio, i64 18
  store i16 %i.aiz, ptr %i.aja, align 2, !tbaa !98
  store i16 %i.aim, ptr %i.aiy, align 2, !tbaa !78
  br label %bb.fp

bb.fp:                                            ; preds = %var_hash.exit.i102, %var_hash.exit.thread.i107
  %i.ajb = phi i32 [ %i.air, %var_hash.exit.thread.i107 ], [ %i.aix, %var_hash.exit.i102 ] ; 3 uses
  %.sink.i104 = trunc i32 %i.aig to i8
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.aio, i64 8
  store i32 %i.ajb, ptr %i.ajc, align 8, !tbaa !94
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.aio, i64 16
  store i8 %.sink.i104, ptr %i.ajd, align 8, !tbaa !95
  %i.aje = add i32 %i.aig, 1                      ; 2 uses
  %i.ajf = zext i32 %i.aje to i64
  %i.ajg = getelementptr inbounds nuw [2 x i8], ptr %i.aih, i64 %i.ajf
  %i.ajh = load i16, ptr %i.ajg, align 2, !tbaa !78 ; 2 uses
  %i.aji = zext i16 %i.ajh to i64
  %i.ajj = getelementptr inbounds nuw [24 x i8], ptr %i.aii, i64 %i.aji ; 4 uses
  %i.ajk = load i64, ptr %i.ajj, align 8, !tbaa !93 ; 2 uses
  %i.ajl = icmp ult i64 %i.ajk, 7
  br i1 %i.ajl, label %var_hash.exit.thread.i107.1, label %var_hash.exit.i102.1

var_hash.exit.i102.1:                             ; preds = %bb.fp
  %i.ajm = inttoptr i64 %i.ajk to ptr
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajm, i64 12
  %i.ajo = load i32, ptr %i.ajn, align 4, !tbaa !97
  %i.ajp = and i32 %i.ajo, 31
  %i.ajq = zext nneg i32 %i.ajp to i64
  %i.ajr = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.ajq ; 2 uses
  %i.ajs = load i16, ptr %i.ajr, align 2, !tbaa !78
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajj, i64 18
  store i16 %i.ajs, ptr %i.ajt, align 2, !tbaa !98
  store i16 %i.ajh, ptr %i.ajr, align 2, !tbaa !78
  br label %var_hash.exit.thread.i107.1

var_hash.exit.thread.i107.1:                      ; preds = %bb.fp, %var_hash.exit.i102.1
  %.sink.i104.1 = trunc i32 %i.aje to i8
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajj, i64 8
  store i32 %i.ajb, ptr %i.aju, align 8, !tbaa !94
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.ajj, i64 16
  store i8 %.sink.i104.1, ptr %i.ajv, align 8, !tbaa !95
  %i.ajw = add i32 %i.aig, 2                      ; 2 uses
  %i.ajx = zext i32 %i.ajw to i64
  %i.ajy = getelementptr inbounds nuw [2 x i8], ptr %i.aih, i64 %i.ajx
  %i.ajz = load i16, ptr %i.ajy, align 2, !tbaa !78 ; 2 uses
  %i.aka = zext i16 %i.ajz to i64
  %i.akb = getelementptr inbounds nuw [24 x i8], ptr %i.aii, i64 %i.aka ; 4 uses
  %i.akc = load i64, ptr %i.akb, align 8, !tbaa !93 ; 2 uses
  %i.akd = icmp ult i64 %i.akc, 7
  br i1 %i.akd, label %var_add.exit108, label %var_hash.exit.i102.2

var_hash.exit.i102.2:                             ; preds = %var_hash.exit.thread.i107.1
  %i.ake = inttoptr i64 %i.akc to ptr
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ake, i64 12
  %i.akg = load i32, ptr %i.akf, align 4, !tbaa !97
  %i.akh = and i32 %i.akg, 31
  %i.aki = zext nneg i32 %i.akh to i64
  %i.akj = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.aki ; 2 uses
  %i.akk = load i16, ptr %i.akj, align 2, !tbaa !78
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akb, i64 18
  store i16 %i.akk, ptr %i.akl, align 2, !tbaa !98
  store i16 %i.ajz, ptr %i.akj, align 2, !tbaa !78
  br label %var_add.exit108

var_add.exit108:                                  ; preds = %var_hash.exit.thread.i107.1, %var_hash.exit.i102.2
  %.sink.i104.2 = trunc i32 %i.ajw to i8
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akb, i64 8
  store i32 %i.ajb, ptr %i.akm, align 8, !tbaa !94
  %i.akn = getelementptr inbounds nuw i8, ptr %i.akb, i64 16
  store i8 %.sink.i104.2, ptr %i.akn, align 8, !tbaa !95
  %i.ako = add i32 %i.aig, 3
  store i32 %i.ako, ptr %i.aif, align 8, !tbaa !66
  %i.akp = load i32, ptr %i.e, align 4, !tbaa !72
  %.not.i98 = icmp eq i32 %i.akp, 261
  br i1 %.not.i98, label %lex_check.exit, label %bb.fq

bb.fq:                                            ; preds = %var_add.exit108
  call fastcc void @err_token(ptr noundef nonnull %0, i32 noundef 261) #14
  unreachable

lex_check.exit:                                   ; preds = %var_add.exit108
  call void @lj_lex_next(ptr noundef nonnull %0) #12
  %i.akq = select i1 %i.aid, i32 72, i32 88
  %i.akr = shl i32 %i.adi, 8                      ; 2 uses
  %i.aks = add i32 %i.akr, 768                    ; 2 uses
  %i.akt = or disjoint i32 %i.aks, %i.akq
  %i.aku = or i32 %i.akt, 2147418112
  %i.akv = call fastcc i32 @bcemit_INS(ptr noundef nonnull %i.adg, i32 noundef %i.aku), !inline_history !130 ; 3 uses
  %i.akw = load i32, ptr %i.adm, align 8, !tbaa !66
  %i.akx = trunc i32 %i.akw to i8
  store i8 %i.akx, ptr %i.aa, align 4, !tbaa !68
  store i8 0, ptr %i.ab, align 1, !tbaa !69
  %i.aky = getelementptr inbounds nuw i8, ptr %i.adg, i64 8 ; 4 uses
  %i.akz = load ptr, ptr %i.aky, align 8, !tbaa !54 ; 2 uses
  %i.ala = getelementptr inbounds nuw i8, ptr %i.akz, i64 156
  %i.alb = load i32, ptr %i.ala, align 4, !tbaa !55
  store i32 %i.alb, ptr %i.ac, align 8, !tbaa !70
  %i.alc = getelementptr inbounds nuw i8, ptr %i.adg, i64 24 ; 3 uses
  %i.ald = load ptr, ptr %i.alc, align 8, !tbaa !62
  store ptr %i.ald, ptr %16, align 8, !tbaa !71
  store ptr %16, ptr %i.alc, align 8, !tbaa !62
  %i.ale = add i32 %.0.i.i52.lcssa, -3            ; 3 uses
  %i.alf = load ptr, ptr %0, align 8, !tbaa !27   ; 6 uses
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alf, i64 56 ; 2 uses
  %i.alh = load i32, ptr %i.alg, align 8, !tbaa !66 ; 2 uses
  %.not25.i = icmp eq i32 %i.ale, 0
  br i1 %.not25.i, label %var_add.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %lex_check.exit
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alf, i64 92
  %i.alj = load ptr, ptr %i.h, align 8, !tbaa !91
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alf, i64 40 ; 2 uses
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fs, %.lr.ph.i
  %.in.i = phi i32 [ %i.ale, %.lr.ph.i ], [ %i.all, %bb.fs ]
  %.026.i = phi i32 [ %i.alh, %.lr.ph.i ], [ %i.amf, %bb.fs ] ; 3 uses
  %i.all = add i32 %.in.i, -1                     ; 2 uses
  %i.alm = zext i32 %.026.i to i64
  %i.aln = getelementptr inbounds nuw [2 x i8], ptr %i.ali, i64 %i.alm
  %i.alo = load i16, ptr %i.aln, align 2, !tbaa !78 ; 2 uses
  %i.alp = zext i16 %i.alo to i64
  %i.alq = getelementptr inbounds nuw [24 x i8], ptr %i.alj, i64 %i.alp ; 4 uses
  %i.alr = load i64, ptr %i.alq, align 8, !tbaa !93 ; 2 uses
  %i.als = icmp ult i64 %i.alr, 7
  br i1 %i.als, label %var_hash.exit.thread.i, label %var_hash.exit.i

var_hash.exit.thread.i:                           ; preds = %bb.fr
  %i.alt = load i32, ptr %i.alk, align 8, !tbaa !58
  br label %bb.fs

var_hash.exit.i:                                  ; preds = %bb.fr
  %i.alu = inttoptr i64 %i.alr to ptr
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alu, i64 12
  %i.alw = load i32, ptr %i.alv, align 4, !tbaa !97
  %i.alx = and i32 %i.alw, 31
  %i.aly = zext nneg i32 %i.alx to i64
  %i.alz = load i32, ptr %i.alk, align 8, !tbaa !58
  %i.ama = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.aly ; 2 uses
  %i.amb = load i16, ptr %i.ama, align 2, !tbaa !78
  %i.amc = getelementptr inbounds nuw i8, ptr %i.alq, i64 18
  store i16 %i.amb, ptr %i.amc, align 2, !tbaa !98
  store i16 %i.alo, ptr %i.ama, align 2, !tbaa !78
  br label %bb.fs

bb.fs:                                            ; preds = %var_hash.exit.i, %var_hash.exit.thread.i
  %.sink27.i = phi i32 [ %i.alt, %var_hash.exit.thread.i ], [ %i.alz, %var_hash.exit.i ]
  %.sink.i = trunc i32 %.026.i to i8
  %i.amd = getelementptr inbounds nuw i8, ptr %i.alq, i64 8
  store i32 %.sink27.i, ptr %i.amd, align 8, !tbaa !94
  %i.ame = getelementptr inbounds nuw i8, ptr %i.alq, i64 16
  store i8 %.sink.i, ptr %i.ame, align 8, !tbaa !95
  %i.amf = add i32 %.026.i, 1                     ; 2 uses
  %.not.i97 = icmp eq i32 %i.all, 0
  br i1 %.not.i97, label %var_add.exit, label %bb.fr, !llvm.loop !2

var_add.exit:                                     ; preds = %bb.fs, %lex_check.exit
  %.0.lcssa.i = phi i32 [ %i.alh, %lex_check.exit ], [ %i.amf, %bb.fs ] ; 2 uses
  store i32 %.0.lcssa.i, ptr %i.alg, align 8, !tbaa !66
  %i.amg = load i32, ptr %i.adh, align 4, !tbaa !89
  %i.amh = add i32 %i.amg, %i.ale                 ; 4 uses
  %i.ami = load i8, ptr %i.agd, align 2, !tbaa !64
  %i.amj = zext i8 %i.ami to i32
  %i.amk = icmp ugt i32 %i.amh, %i.amj
  br i1 %i.amk, label %bb.ft, label %bcreg_reserve.exit

bb.ft:                                            ; preds = %var_add.exit
  %i.aml = icmp ugt i32 %i.amh, 249
  br i1 %i.aml, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  call fastcc void @err_syntax(ptr noundef %i.akz, i32 noundef 2426) #14
  unreachable

bb.fv:                                            ; preds = %bb.ft
  %i.amm = trunc nuw i32 %i.amh to i8
  store i8 %i.amm, ptr %i.agd, align 2, !tbaa !64
  br label %bcreg_reserve.exit

bcreg_reserve.exit:                               ; preds = %var_add.exit, %bb.fv
  store i32 %i.amh, ptr %i.adh, align 4, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  %i.amn = trunc i32 %.0.lcssa.i to i8
  store i8 %i.amn, ptr %i.ad, align 4, !tbaa !68
  store i8 0, ptr %i.ae, align 1, !tbaa !69
  %i.amo = getelementptr inbounds nuw i8, ptr %i.alf, i64 8
  %i.amp = load ptr, ptr %i.amo, align 8, !tbaa !54
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amp, i64 156
  %i.amr = load i32, ptr %i.amq, align 4, !tbaa !55
  store i32 %i.amr, ptr %i.af, align 8, !tbaa !70
  %i.ams = getelementptr inbounds nuw i8, ptr %i.alf, i64 24 ; 2 uses
  %i.amt = load ptr, ptr %i.ams, align 8, !tbaa !62
  store ptr %i.amt, ptr %9, align 8, !tbaa !71
  store ptr %9, ptr %i.ams, align 8, !tbaa !62
  call fastcc void @parse_chunk(ptr noundef nonnull %0), !inline_history !132
  call fastcc void @fscope_end(ptr noundef nonnull %i.alf), !inline_history !132
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call fastcc void @fscope_end(ptr noundef nonnull %i.adg), !inline_history !130
  %i.amu = load i32, ptr %i.adj, align 8, !tbaa !58 ; 2 uses
  %i.amv = sub i32 %i.amu, %i.akv
  %i.amw = add i32 %i.amv, 32767                  ; 2 uses
  %i.amx = icmp ugt i32 %i.amw, 65535
  br i1 %i.amx, label %bb.fw, label %jmp_patchins.exit96

bb.fw:                                            ; preds = %bcreg_reserve.exit
  %i.amy = load ptr, ptr %i.aky, align 8, !tbaa !54
  call fastcc void @err_syntax(ptr noundef %i.amy, i32 noundef 2399) #14
  unreachable

jmp_patchins.exit96:                              ; preds = %bcreg_reserve.exit
  %i.amz = getelementptr inbounds nuw i8, ptr %i.adg, i64 72 ; 2 uses
  %i.ana = load ptr, ptr %i.amz, align 8, !tbaa !74
  %i.anb = zext i32 %i.akv to i64
  %i.anc = getelementptr inbounds nuw [8 x i8], ptr %i.ana, i64 %i.anb
  %i.and = trunc nuw i32 %i.amw to i16
  %i.ane = getelementptr inbounds nuw i8, ptr %i.anc, i64 2
  store i16 %i.and, ptr %i.ane, align 2, !tbaa !78
  %i.anf = load ptr, ptr %i.alc, align 8, !tbaa !62 ; 2 uses
  %i.ang = getelementptr inbounds nuw i8, ptr %i.anf, i64 13 ; 2 uses
  %i.anh = load i8, ptr %i.ang, align 1, !tbaa !69 ; 2 uses
  %i.ani = and i8 %i.anh, 32
  %.not.i91 = icmp eq i8 %i.ani, 0
  br i1 %.not.i91, label %fscope_continue.exit, label %bb.fx

bb.fx:                                            ; preds = %jmp_patchins.exit96
  %i.anj = load ptr, ptr %i.aky, align 8, !tbaa !54 ; 8 uses
  %i.ank = and i8 %i.anh, -33
  store i8 %i.ank, ptr %i.ang, align 1, !tbaa !69
  %i.anl = load ptr, ptr %i.anj, align 8, !tbaa !27
  %i.anm = getelementptr inbounds nuw i8, ptr %i.anj, i64 156 ; 2 uses
  %i.ann = load i32, ptr %i.anm, align 4, !tbaa !55 ; 4 uses
  %i.ano = getelementptr inbounds nuw i8, ptr %i.anj, i64 152 ; 2 uses
  %i.anp = load i32, ptr %i.ano, align 8, !tbaa !90 ; 2 uses
  %.not.i.i92 = icmp ult i32 %i.ann, %i.anp
  br i1 %.not.i.i92, label %._crit_edge.i.i93, label %bb.fy, !prof !48

._crit_edge.i.i93:                                ; preds = %bb.fx
  %.phi.trans.insert.i.i94 = getelementptr inbounds nuw i8, ptr %i.anj, i64 144
  %.pre.i.i95 = load ptr, ptr %.phi.trans.insert.i.i94, align 8, !tbaa !91
  br label %gola_new.exit.i

bb.fy:                                            ; preds = %bb.fx
  %i.anq = icmp ugt i32 %i.anp, 65475
  br i1 %i.anq, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  call void (ptr, i32, i32, ...) @lj_lex_error(ptr noundef nonnull %i.anj, i32 noundef 0, i32 noundef 2461, i32 noundef 65476) #15
  unreachable

bb.ga:                                            ; preds = %bb.fy
  %i.anr = getelementptr inbounds nuw i8, ptr %i.anj, i64 8
  %i.ans = load ptr, ptr %i.anr, align 8, !tbaa !26
  %i.ant = getelementptr inbounds nuw i8, ptr %i.anj, i64 144 ; 2 uses
  %i.anu = load ptr, ptr %i.ant, align 8, !tbaa !91
  %i.anv = call ptr @lj_mem_grow(ptr noundef %i.ans, ptr noundef %i.anu, ptr noundef nonnull %i.ano, i32 noundef 65476, i32 noundef 24) #12 ; 2 uses
  store ptr %i.anv, ptr %i.ant, align 8, !tbaa !91
  br label %gola_new.exit.i

gola_new.exit.i:                                  ; preds = %bb.ga, %._crit_edge.i.i93
  %i.anw = phi ptr [ %.pre.i.i95, %._crit_edge.i.i93 ], [ %i.anv, %bb.ga ]
  %i.anx = zext i32 %i.ann to i64
  %i.any = getelementptr inbounds nuw [24 x i8], ptr %i.anw, i64 %i.anx ; 4 uses
  store i64 2, ptr %i.any, align 8, !tbaa !93
  %i.anz = getelementptr inbounds nuw i8, ptr %i.any, i64 8
  store i32 %i.amu, ptr %i.anz, align 8, !tbaa !94
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.anl, i64 56
  %i.aob = load i32, ptr %i.aoa, align 8, !tbaa !66
  %i.aoc = trunc i32 %i.aob to i8
  %i.aod = getelementptr inbounds nuw i8, ptr %i.any, i64 16
  store i8 %i.aoc, ptr %i.aod, align 8, !tbaa !95
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.any, i64 17
  store i8 4, ptr %i.aoe, align 1, !tbaa !96
  store i32 %i.ann, ptr %i.anm, align 4, !tbaa !55
  %i.aof = getelementptr i8, ptr %i.anf, i64 8
  %.val.i = load i32, ptr %i.aof, align 8, !tbaa !70
  call fastcc void @gola_resolve(ptr noundef nonnull %i.anj, i32 %.val.i, i32 noundef %i.ann)
  br label %fscope_continue.exit

fscope_continue.exit:                             ; preds = %jmp_patchins.exit96, %gola_new.exit.i
  %i.aog = select i1 %i.aid, i32 70, i32 69
  %i.aoh = shl i32 %.0.i.i52.lcssa, 24
  %i.aoi = add i32 %i.aoh, -33554432
  %i.aoj = or disjoint i32 %i.aog, %i.aoi
  %i.aok = or i32 %i.aks, %i.aoj
  %i.aol = or i32 %i.aok, 196608
  %i.aom = call fastcc i32 @bcemit_INS(ptr noundef nonnull %i.adg, i32 noundef %i.aol), !inline_history !130 ; 0 uses
  %27 = add i32 %i.akr, 850
  %i.aon = or i32 %27, 2147418112
  %i.aoo = call fastcc i32 @bcemit_INS(ptr noundef nonnull %i.adg, i32 noundef %i.aon), !inline_history !130 ; 3 uses
  %i.aop = load ptr, ptr %i.amz, align 8, !tbaa !74 ; 2 uses
  %i.aoq = add i32 %i.aoo, -1
  %i.aor = zext i32 %i.aoq to i64
  %i.aos = getelementptr inbounds nuw [8 x i8], ptr %i.aop, i64 %i.aor
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aos, i64 4
  store i32 %i.afx, ptr %i.aot, align 4, !tbaa !84
  %i.aou = zext i32 %i.aoo to i64
  %i.aov = getelementptr inbounds nuw [8 x i8], ptr %i.aop, i64 %i.aou ; 2 uses
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aov, i64 4
  store i32 %i.afx, ptr %i.aow, align 4, !tbaa !84
  %i.aox = add i32 %i.akv, 32768
  %i.aoy = sub i32 %i.aox, %i.aoo                 ; 2 uses
  %i.aoz = icmp ugt i32 %i.aoy, 65535
  br i1 %i.aoz, label %bb.gb, label %jmp_patchins.exit

bb.gb:                                            ; preds = %fscope_continue.exit
  %i.apa = load ptr, ptr %i.aky, align 8, !tbaa !54
  call fastcc void @err_syntax(ptr noundef %i.apa, i32 noundef 2399) #14
  unreachable

jmp_patchins.exit:                                ; preds = %fscope_continue.exit
  %i.apb = trunc nuw i32 %i.aoy to i16
  %i.apc = getelementptr inbounds nuw i8, ptr %i.aov, i64 2
  store i16 %i.apb, ptr %i.apc, align 2, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #12
  br label %bb.gd

bb.gc:                                            ; preds = %lex_str.exit.i51
  call fastcc void @err_syntax(ptr noundef nonnull %0, i32 noundef 2826) #14, !inline_history !126
  unreachable

bb.gd:                                            ; preds = %jmp_patchins.exit, %jmp_patchins.exit132
  %i.apd = load i32, ptr %i.e, align 4, !tbaa !72
  %i.ape = icmp eq i32 %i.apd, 264
  br i1 %i.ape, label %parse_for.exit, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.apf = load i32, ptr %i.f, align 8, !tbaa !73
  %i.apg = icmp eq i32 %i.bs, %i.apf
  br i1 %i.apg, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  call fastcc void @err_token(ptr noundef nonnull %0, i32 noundef 264) #14, !inline_history !126
  unreachable

bb.gg:                                            ; preds = %bb.ge
  %i.aph = call ptr @lj_lex_token2str(ptr noundef nonnull %0, i32 noundef 264) #12, !inline_history !126
  %i.api = call ptr @lj_lex_token2str(ptr noundef nonnull %0, i32 noundef 266) #12, !inline_history !126
  %i.apj = load i32, ptr %i.e, align 4, !tbaa !72
  call void (ptr, i32, i32, ...) @lj_lex_error(ptr noundef nonnull %0, i32 noundef %i.apj, i32 noundef 2574, ptr noundef %i.aph, ptr noundef %i.api, i32 noundef %i.bs) #15, !inline_history !126
  unreachable

parse_for.exit:                                   ; preds = %bb.gd
  call void @lj_lex_next(ptr noundef nonnull %0) #12, !inline_history !126
  call fastcc void @fscope_end(ptr noundef %i.rc), !inline_history !126
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #12
  br label %parse_stmt.exit

bb.gh:                                            ; preds = %bb.d
  %i.apk = load ptr, ptr %0, align 8, !tbaa !27   ; 16 uses
  %i.apl = getelementptr inbounds nuw i8, ptr %i.apk, i64 40 ; 5 uses
  %i.apm = load i32, ptr %i.apl, align 8, !tbaa !58 ; 4 uses
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apk, i64 44 ; 4 uses
  store i32 %i.apm, ptr %i.apn, align 4, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #12
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apk, i64 56 ; 2 uses
  %i.app = load i32, ptr %i.apo, align 8, !tbaa !66
  %i.apq = trunc i32 %i.app to i8                 ; 2 uses
  store i8 %i.apq, ptr %i.n, align 4, !tbaa !68
  store i8 1, ptr %i.o, align 1, !tbaa !69
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apk, i64 8 ; 5 uses
  %i.aps = load ptr, ptr %i.apr, align 8, !tbaa !54
  %i.apt = getelementptr inbounds nuw i8, ptr %i.aps, i64 156
  %i.apu = load i32, ptr %i.apt, align 4, !tbaa !55 ; 2 uses
  store i32 %i.apu, ptr %i.p, align 8, !tbaa !70
  %i.apv = getelementptr inbounds nuw i8, ptr %i.apk, i64 24 ; 3 uses
  %i.apw = load ptr, ptr %i.apv, align 8, !tbaa !62
  store ptr %i.apw, ptr %20, align 8, !tbaa !71
  store i8 %i.apq, ptr %i.q, align 4, !tbaa !68
  store i8 0, ptr %i.r, align 1, !tbaa !69
  store i32 %i.apu, ptr %i.s, align 8, !tbaa !70
  store ptr %20, ptr %21, align 8, !tbaa !71
  store ptr %21, ptr %i.apv, align 8, !tbaa !62
  call void @lj_lex_next(ptr noundef nonnull %0) #12, !inline_history !133
  %i.apx = load i32, ptr %i.apo, align 8, !tbaa !66
  %i.apy = shl i32 %i.apx, 8
  %i.apz = or disjoint i32 %i.apy, 85
  %i.aqa = call fastcc i32 @bcemit_INS(ptr noundef %i.apk, i32 noundef %i.apz), !inline_history !133 ; 0 uses
  call fastcc void @parse_chunk(ptr noundef nonnull %0), !inline_history !133
  %i.aqb = load i32, ptr %i.e, align 4, !tbaa !72
  %i.aqc = icmp eq i32 %i.aqb, 279
  br i1 %i.aqc, label %lex_match.exit.i, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.aqd = load i32, ptr %i.f, align 8, !tbaa !73
  %i.aqe = icmp eq i32 %i.bs, %i.aqd
  br i1 %i.aqe, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  call fastcc void @err_token(ptr noundef nonnull %0, i32 noundef 279) #14, !inline_history !133
  unreachable

bb.gk:                                            ; preds = %bb.gi
  %i.aqf = call ptr @lj_lex_token2str(ptr noundef nonnull %0, i32 noundef 279) #12, !inline_history !133
  %i.aqg = call ptr @lj_lex_token2str(ptr noundef nonnull %0, i32 noundef 275) #12, !inline_history !133
  %i.aqh = load i32, ptr %i.e, align 4, !tbaa !72
  call void (ptr, i32, i32, ...) @lj_lex_error(ptr noundef nonnull %0, i32 noundef %i.aqh, i32 noundef 2574, ptr noundef %i.aqf, ptr noundef %i.aqg, i32 noundef %i.bs) #15, !inline_history !133
  unreachable

lex_match.exit.i:                                 ; preds = %bb.gh
  call void @lj_lex_next(ptr noundef nonnull %0) #12, !inline_history !133
  %i.aqi = load i32, ptr %i.apl, align 8, !tbaa !58
  %i.aqj = load ptr, ptr %i.apv, align 8, !tbaa !62 ; 2 uses
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aqj, i64 13 ; 2 uses
  %i.aql = load i8, ptr %i.aqk, align 1, !tbaa !69 ; 2 uses
  %i.aqm = and i8 %i.aql, 32
  %.not.i.i38 = icmp eq i8 %i.aqm, 0
  br i1 %.not.i.i38, label %fscope_continue.exit.i, label %bb.gl

bb.gl:                                            ; preds = %lex_match.exit.i
  %i.aqn = load ptr, ptr %i.apr, align 8, !tbaa !54 ; 8 uses
  %i.aqo = and i8 %i.aql, -33
  store i8 %i.aqo, ptr %i.aqk, align 1, !tbaa !69
  %i.aqp = load ptr, ptr %i.aqn, align 8, !tbaa !27
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqn, i64 156 ; 2 uses
  %i.aqr = load i32, ptr %i.aqq, align 4, !tbaa !55 ; 4 uses
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqn, i64 152 ; 2 uses
  %i.aqt = load i32, ptr %i.aqs, align 8, !tbaa !90 ; 2 uses
  %.not.i.i.i39 = icmp ult i32 %i.aqr, %i.aqt
  br i1 %.not.i.i.i39, label %._crit_edge.i.i.i, label %bb.gm, !prof !48

._crit_edge.i.i.i:                                ; preds = %bb.gl
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.aqn, i64 144
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !91
  br label %gola_new.exit.i.i

bb.gm:                                            ; preds = %bb.gl
  %i.aqu = icmp ugt i32 %i.aqt, 65475
  br i1 %i.aqu, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %bb.gm
  call void (ptr, i32, i32, ...) @lj_lex_error(ptr noundef nonnull %i.aqn, i32 noundef 0, i32 noundef 2461, i32 noundef 65476) #15, !inline_history !133
  unreachable

bb.go:                                            ; preds = %bb.gm
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqn, i64 8
  %i.aqw = load ptr, ptr %i.aqv, align 8, !tbaa !26
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqn, i64 144 ; 2 uses
  %i.aqy = load ptr, ptr %i.aqx, align 8, !tbaa !91
  %i.aqz = call ptr @lj_mem_grow(ptr noundef %i.aqw, ptr noundef %i.aqy, ptr noundef nonnull %i.aqs, i32 noundef 65476, i32 noundef 24) #12, !inline_history !133 ; 2 uses
  store ptr %i.aqz, ptr %i.aqx, align 8, !tbaa !91
  br label %gola_new.exit.i.i

gola_new.exit.i.i:                                ; preds = %bb.go, %._crit_edge.i.i.i
  %i.ara = phi ptr [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.aqz, %bb.go ]
  %i.arb = zext i32 %i.aqr to i64
  %i.arc = getelementptr inbounds nuw [24 x i8], ptr %i.ara, i64 %i.arb ; 4 uses
  store i64 2, ptr %i.arc, align 8, !tbaa !93
  %i.ard = getelementptr inbounds nuw i8, ptr %i.arc, i64 8
  store i32 %i.aqi, ptr %i.ard, align 8, !tbaa !94
  %i.are = getelementptr inbounds nuw i8, ptr %i.aqp, i64 56
  %i.arf = load i32, ptr %i.are, align 8, !tbaa !66
  %i.arg = trunc i32 %i.arf to i8
  %i.arh = getelementptr inbounds nuw i8, ptr %i.arc, i64 16
  store i8 %i.arg, ptr %i.arh, align 8, !tbaa !95
  %i.ari = getelementptr inbounds nuw i8, ptr %i.arc, i64 17
  store i8 4, ptr %i.ari, align 1, !tbaa !96
  store i32 %i.aqr, ptr %i.aqq, align 4, !tbaa !55
  %i.arj = getelementptr i8, ptr %i.aqj, i64 8
  %.val.i.i = load i32, ptr %i.arj, align 8, !tbaa !70
  call fastcc void @gola_resolve(ptr noundef nonnull %i.aqn, i32 %.val.i.i, i32 noundef %i.aqr), !inline_history !133
  br label %fscope_continue.exit.i

fscope_continue.exit.i:                           ; preds = %gola_new.exit.i.i, %lex_match.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #12
  call fastcc void @expr(ptr noundef nonnull %0, ptr noundef %19, i32 noundef 0), !inline_history !134
  %i.ark = load i32, ptr %i.t, align 8, !tbaa !86
  %i.arl = icmp eq i32 %i.ark, 0
  br i1 %i.arl, label %bb.gp, label %expr_cond.exit.i

bb.gp:                                            ; preds = %fscope_continue.exit.i
  store i32 1, ptr %i.t, align 8, !tbaa !86
  br label %expr_cond.exit.i

expr_cond.exit.i:                                 ; preds = %bb.gp, %fscope_continue.exit.i
  %i.arm = load ptr, ptr %0, align 8, !tbaa !27
  call fastcc void @bcemit_branch_t(ptr noundef %i.arm, ptr noundef %19), !inline_history !134
  %i.arn = load i32, ptr %i.u, align 8, !tbaa !87 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #12
  %i.aro = load i8, ptr %i.r, align 1, !tbaa !69
  %i.arp = and i8 %i.aro, 8
  %.not.i40 = icmp eq i8 %i.arp, 0
  br i1 %.not.i40, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %expr_cond.exit.i
  call fastcc void @fscope_end(ptr noundef nonnull %i.apk), !inline_history !133
  br label %bcemit_jmp.exit.i48
end_hunk_0
begin_hunk_1_@expr_toreg:bb.a
  br label %jmp_tohere.exit

jmp_tohere.exit:                                  ; preds = %select.unfold.i51, %.loopexit, %jmp_patchins.exit.i.i62, %bb.u, %bcemit_jmp.exit
  %.040 = phi i32 [ %i.di, %jmp_patchins.exit.i.i62 ], [ %i.di, %bcemit_jmp.exit ], [ %i.di, %bb.u ], [ -1, %.loopexit ], [ -1, %select.unfold.i51 ]
  %.0 = phi i32 [ %i.dp, %jmp_patchins.exit.i.i62 ], [ %i.dp, %bcemit_jmp.exit ], [ %i.dp, %bb.u ], [ -1, %.loopexit ], [ -1, %select.unfold.i51 ]
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !58 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.er, ptr %i.es, align 4, !tbaa !59
  %i.et = load i32, ptr %i.ad, align 8, !tbaa !87
  tail call fastcc void @jmp_patchval(ptr noundef %0, i32 noundef %i.et, i32 noundef %i.er, i32 noundef %2, i32 noundef %.040)
  %i.eu = load i32, ptr %i.ab, align 4, !tbaa !113
  tail call fastcc void @jmp_patchval(ptr noundef %0, i32 noundef %i.eu, i32 noundef %i.er, i32 noundef %2, i32 noundef %.0)
  br label %bb.y

bb.y:                                             ; preds = %jmp_tohere.exit, %jmp_append.exit
  store i32 -1, ptr %i.ab, align 4, !tbaa !113
  store i32 -1, ptr %i.ad, align 8, !tbaa !87
  store i32 %2, ptr %1, align 8, !tbaa !33
  store i32 12, ptr %i.a, align 8, !tbaa !86
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @expr_toreg_nobranch(ptr nofree noundef captures(none) %0, ptr noundef nonnull %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %union.TValue, align 8              ; 4 uses
  %4 = alloca %union.TValue, align 8              ; 4 uses
  tail call fastcc void @expr_discharge(ptr noundef %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !86   ; 3 uses
  switch i32 %i.b, label %bb.w [
    i32 3, label %bb.b
    i32 4, label %bb.e
    i32 5, label %bb.i
    i32 11, label %bb.l
    i32 12, label %bb.m
    i32 0, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.e = ptrtoint ptr %.val to i64
  %i.f = or i64 %i.e, -703687441776640
  store i64 %i.f, ptr %4, align 8, !tbaa !33
  %i.g = load ptr, ptr %0, align 8, !tbaa !32
  %i.h = call ptr @lj_tab_set(ptr noundef %i.d, ptr noundef %i.g, ptr noundef nonnull %4) #12 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !33
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr %i.h, align 8, !tbaa !33
  br label %const_str.exit

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !107
  %i.o = zext i32 %i.n to i64
  store i64 %i.o, ptr %i.h, align 8, !tbaa !33
  %i.p = load i32, ptr %i.m, align 8, !tbaa !107  ; 2 uses
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr %i.m, align 8, !tbaa !107
  br label %const_str.exit

const_str.exit:                                   ; preds = %bb.c, %bb.d
  %.0.i.i = phi i32 [ %i.l, %bb.c ], [ %i.p, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %const_num.exit

bb.e:                                             ; preds = %bb.a
  %i.r = load double, ptr %1, align 8, !tbaa !33
  %i.s = tail call i64 @lj_vm_num2int_check(double noundef %i.r) #16 ; 2 uses
  %i.t = trunc i64 %i.s to i32                    ; 2 uses
  %i.u = trunc i64 %i.s to i16
  %i.v = sext i16 %i.u to i32
  %.not = icmp eq i32 %i.t, %i.v
  br i1 %.not, label %const_num.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !57
  %i.y = load ptr, ptr %0, align 8, !tbaa !32
  %i.z = tail call ptr @lj_tab_set(ptr noundef %i.x, ptr noundef %i.y, ptr noundef nonnull %1) #12 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !33
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = load i32, ptr %i.z, align 8, !tbaa !33
  br label %const_num.exit

bb.h:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !108
  %i.ag = zext i32 %i.af to i64
  store i64 %i.ag, ptr %i.z, align 8, !tbaa !33
  %i.ah = load i32, ptr %i.ae, align 4, !tbaa !108 ; 2 uses
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ae, align 4, !tbaa !108
  br label %const_num.exit

bb.i:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !63
  %i.al = or i8 %i.ak, 4
  store i8 %i.al, ptr %i.aj, align 8, !tbaa !63
  %i.am = load i64, ptr %1, align 8, !tbaa !33
  %i.an = and i64 %i.am, 140737488355327
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.aq = or disjoint i64 %i.an, -1548112371908608
  store i64 %i.aq, ptr %3, align 8, !tbaa !33
  %i.ar = load ptr, ptr %0, align 8, !tbaa !32
  %i.as = call ptr @lj_tab_set(ptr noundef %i.ap, ptr noundef %i.ar, ptr noundef nonnull %3) #12 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !33
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aw = load i32, ptr %i.as, align 8, !tbaa !33
  br label %const_gc.exit

bb.k:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !107
  %i.az = zext i32 %i.ay to i64
  store i64 %i.az, ptr %i.as, align 8, !tbaa !33
  %i.ba = load i32, ptr %i.ax, align 8, !tbaa !107 ; 2 uses
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.ax, align 8, !tbaa !107
  br label %const_gc.exit

const_gc.exit:                                    ; preds = %bb.j, %bb.k
  %.0.i43 = phi i32 [ %i.aw, %bb.j ], [ %i.ba, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %const_num.exit

bb.l:                                             ; preds = %bb.a
  %i.bc = trunc i32 %2 to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !74
  %i.bf = load i32, ptr %1, align 8, !tbaa !33
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  store i8 %i.bc, ptr %i.bi, align 1, !tbaa !33
  br label %bcemit_nil.exit

bb.m:                                             ; preds = %bb.a
  %i.bj = load i32, ptr %1, align 8, !tbaa !33    ; 2 uses
  %i.bk = icmp eq i32 %2, %i.bj
  br i1 %i.bk, label %bcemit_nil.exit, label %const_num.exit

bb.n:                                             ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !58 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !59
  %i.bp = icmp ugt i32 %i.bm, %i.bo
  br i1 %i.bp, label %bb.o, label %.thread.i

bb.o:                                             ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !74
  %i.bs = add i32 %i.bm, -1
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bt ; 3 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !88 ; 5 uses
  %i.bw = lshr i32 %i.bv, 8                       ; 2 uses
  %i.bx = and i32 %i.bw, 255                      ; 3 uses
  %trunc.i = trunc i32 %i.bv to i8
  switch i8 %trunc.i, label %.thread.i [
    i8 43, label %bb.p
    i8 44, label %bb.t
  ]

bb.p:                                             ; preds = %bb.o
  %.not48.i = icmp ult i32 %i.bv, 65536
  br i1 %.not48.i, label %bb.q, label %.thread.i

bb.q:                                             ; preds = %bb.p
  %i.by = icmp eq i32 %2, %i.bx
  br i1 %i.by, label %bcemit_nil.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bz = add nuw nsw i32 %i.bx, 1
  %i.ca = icmp eq i32 %2, %i.bz
  br i1 %i.ca, label %bb.s, label %.thread.i

bb.s:                                             ; preds = %bb.r
  %i.cb = and i32 %i.bv, 65280
  %i.cc = shl nuw nsw i32 %i.bw, 16
  %i.cd = add nuw nsw i32 %i.cc, 65580
  %i.ce = or disjoint i32 %i.cd, %i.cb
  store i32 %i.ce, ptr %i.bu, align 4, !tbaa !88
  br label %bcemit_nil.exit

bb.t:                                             ; preds = %bb.o
  %i.cf = lshr i32 %i.bv, 16                      ; 2 uses
  %.not.i = icmp ugt i32 %i.bx, %2
  %i.cg = add nuw nsw i32 %i.cf, 1
  %.not47.i = icmp ugt i32 %2, %i.cg
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not47.i
  br i1 %or.cond.i, label %.thread.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ch = icmp samesign ugt i32 %2, %i.cf
  br i1 %i.ch, label %bb.v, label %bcemit_nil.exit

bb.v:                                             ; preds = %bb.u
  %i.ci = trunc i32 %2 to i16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  store i16 %i.ci, ptr %i.cj, align 2, !tbaa !78
  br label %bcemit_nil.exit

.thread.i:                                        ; preds = %bb.t, %bb.r, %bb.p, %bb.o, %bb.n
  %i.ck = shl i32 %2, 8
  %i.cl = or disjoint i32 %i.ck, 43
  %i.cm = tail call fastcc i32 @bcemit_INS(ptr noundef nonnull %0, i32 noundef %i.cl) ; 0 uses
  br label %bcemit_nil.exit

bb.w:                                             ; preds = %bb.a
  %i.cn = icmp ult i32 %i.b, 3
  br i1 %i.cn, label %const_num.exit, label %bb.x

const_num.exit:                                   ; preds = %bb.w, %bb.m, %bb.h, %bb.g, %bb.e, %const_gc.exit, %const_str.exit
  %.sink = phi i32 [ %.0.i.i, %const_str.exit ], [ %i.t, %bb.e ], [ %i.bj, %bb.m ], [ %i.ah, %bb.h ], [ %.0.i43, %const_gc.exit ], [ %i.ad, %bb.g ], [ %i.b, %bb.w ]
  %.sink51 = phi i32 [ 39, %const_str.exit ], [ 41, %bb.e ], [ 18, %bb.m ], [ 42, %bb.h ], [ 40, %const_gc.exit ], [ 42, %bb.g ], [ 43, %bb.w ]
  %.sink52 = shl i32 %2, 8
  %i.co = shl i32 %.sink, 16
  %i.cp = or i32 %.sink52, %i.co
  %i.cq = or disjoint i32 %i.cp, %.sink51
  %i.cr = call fastcc i32 @bcemit_INS(ptr noundef %0, i32 noundef %i.cq) ; 0 uses
  br label %bcemit_nil.exit

bcemit_nil.exit:                                  ; preds = %.thread.i, %bb.v, %bb.u, %bb.s, %bb.q, %bb.m, %const_num.exit, %bb.l
  store i32 %2, ptr %1, align 8, !tbaa !33
  store i32 12, ptr %i.a, align 8, !tbaa !86
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bcemit_nil.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @parse_params(ptr noundef %0, i32 noundef range(i32 0, 2) %1, i32 noundef range(i32 40, 125) %2, i32 noundef range(i32 41, 125) %3) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !27     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 5 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !72
  %.not.i = icmp eq i32 %i.c, %2
  br i1 %.not.i, label %lex_check.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @err_token(ptr noundef nonnull %0, i32 noundef range(i32 40, 297) %2) #14
  unreachable

lex_check.exit:                                   ; preds = %bb.a
  tail call void @lj_lex_next(ptr noundef nonnull %0) #12
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %lex_check.exit
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26   ; 4 uses
  %i.f = tail call ptr @lj_str_new(ptr noundef %i.e, ptr noundef nonnull @.str.3, i64 noundef 4) #12 ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !27
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.i = tail call ptr @lj_tab_setstr(ptr noundef %i.e, ptr noundef %i.h, ptr noundef %i.f) #12 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !33
  %i.k = icmp eq i64 %i.j, -1
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 -281474976710657, ptr %i.i, align 8, !tbaa !33
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !37
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !46
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !47
  %.not.i27 = icmp ult i64 %i.p, %i.r
  br i1 %.not.i27, label %lj_parse_keepstr.exit, label %bb.f, !prof !48

bb.f:                                             ; preds = %bb.e
  %i.s = tail call i32 @lj_gc_step(ptr noundef nonnull %i.e) #12 ; 0 uses
  br label %lj_parse_keepstr.exit

lj_parse_keepstr.exit:                            ; preds = %bb.e, %bb.f
  %i.t = tail call fastcc i32 @var_new(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %i.f) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %lj_parse_keepstr.exit, %lex_check.exit
  %.0 = phi i32 [ 1, %lj_parse_keepstr.exit ], [ 0, %lex_check.exit ] ; 2 uses
  %i.u = load i32, ptr %i.b, align 4, !tbaa !72   ; 2 uses
  %.not24 = icmp eq i32 %i.u, %3
  br i1 %.not24, label %lex_opt.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.h

thread-pre-split:                                 ; preds = %lex_str.exit
  tail call void @lj_lex_next(ptr noundef nonnull %0) #12
  %.pr = load i32, ptr %i.b, align 4, !tbaa !72
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %thread-pre-split
  %i.w = phi i32 [ %.pr, %thread-pre-split ], [ %i.u, %.preheader ] ; 2 uses
  %.1 = phi i32 [ %i.x, %thread-pre-split ], [ %.0, %.preheader ] ; 3 uses
  switch i32 %i.w, label %bb.k [
    i32 298, label %lex_isname.exit.thread
    i32 268, label %lex_isname.exit.thread
    i32 260, label %lex_isname.exit.thread
    i32 259, label %lex_isname.exit.thread
    i32 282, label %bb.j
  ]

lex_isname.exit.thread:                           ; preds = %bb.h, %bb.h, %bb.h, %bb.h
  %i.x = add i32 %.1, 1                           ; 2 uses
  switch i32 %i.w, label %bb.i [
    i32 298, label %lex_str.exit
    i32 268, label %lex_str.exit
    i32 260, label %lex_str.exit
    i32 259, label %lex_str.exit
  ]

bb.i:                                             ; preds = %lex_isname.exit.thread
  tail call fastcc void @err_token(ptr noundef nonnull %0, i32 noundef 298) #14
  unreachable

lex_str.exit:                                     ; preds = %lex_isname.exit.thread, %lex_isname.exit.thread, %lex_isname.exit.thread, %lex_isname.exit.thread
  %i.y = load i64, ptr %i.v, align 8, !tbaa !33
  %i.z = and i64 %i.y, 140737488355327
  %i.aa = inttoptr i64 %i.z to ptr
  tail call void @lj_lex_next(ptr noundef nonnull %0) #12
  %i.ab = tail call fastcc i32 @var_new(ptr noundef nonnull %0, i32 noundef %.1, ptr noundef %i.aa) ; 0 uses
  %i.ac = load i32, ptr %i.b, align 4, !tbaa !72
  %i.ad = icmp eq i32 %i.ac, 44
  br i1 %i.ad, label %thread-pre-split, label %lex_opt.exit.thread

bb.j:                                             ; preds = %bb.h
  tail call void @lj_lex_next(ptr noundef nonnull %0) #12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !63
  %i.ag = or i8 %i.af, 2
  store i8 %i.ag, ptr %i.ae, align 8, !tbaa !63
  br label %lex_opt.exit.thread

bb.k:                                             ; preds = %bb.h
  tail call fastcc void @err_syntax(ptr noundef nonnull %0, i32 noundef 2650) #14
  unreachable

lex_opt.exit.thread:                              ; preds = %lex_str.exit, %bb.j, %bb.g
  %.2 = phi i32 [ %.0, %bb.g ], [ %.1, %bb.j ], [ %i.x, %lex_str.exit ] ; 4 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !27    ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !66 ; 2 uses
  %.not25.i = icmp eq i32 %.2, 0
  br i1 %.not25.i, label %var_add.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %lex_opt.exit.thread
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 92
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !91
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 40 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 184
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i
  %.in.i = phi i32 [ %.2, %.lr.ph.i ], [ %i.ap, %bb.m ]
  %.026.i = phi i32 [ %i.aj, %.lr.ph.i ], [ %i.bj, %bb.m ] ; 3 uses
  %i.ap = add i32 %.in.i, -1                      ; 2 uses
  %i.aq = zext i32 %.026.i to i64
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %i.aq
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !78 ; 2 uses
  %i.at = zext i16 %i.as to i64
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %i.at ; 4 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !93 ; 2 uses
  %i.aw = icmp ult i64 %i.av, 7
  br i1 %i.aw, label %var_hash.exit.thread.i, label %var_hash.exit.i

var_hash.exit.thread.i:                           ; preds = %bb.l
  %i.ax = load i32, ptr %i.an, align 8, !tbaa !58
  br label %bb.m

var_hash.exit.i:                                  ; preds = %bb.l
  %i.ay = inttoptr i64 %i.av to ptr
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !97
end_hunk_1
