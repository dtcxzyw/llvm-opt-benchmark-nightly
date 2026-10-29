Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_def-69be49bbc58c11b8.hir_def.d5a59ee3d62324f7-cgu.05?download=true
inline.NumInlined: 4400
inline.NumDeleted: 1749
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector18maybe_collect_expr:bb.a
  %.sroa.079.0 = select i1 %.not202.not, i32 %., i32 2
  %i.ail = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ail, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 24, i1 false)
  %.sroa.081.0.copyload = load i64, ptr %i.bb, align 8
  %i.aim = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  store i64 %.sroa.081.0.copyload, ptr %i.aim, align 8
  %i.ain = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  store i32 %.sroa.079.0, ptr %i.ain, align 16
  %i.aio = getelementptr inbounds nuw i8, ptr %i.bc, i64 36
  store i32 %.sroa.373.0, ptr %i.aio, align 4
  store i32 19, ptr %i.bc, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  %i.aip = getelementptr inbounds nuw i8, ptr %i.ahq, i64 48 ; 2 uses
  %i.aiq = load i32, ptr %i.aip, align 4, !noundef !8
  %i.air = add i32 %i.aiq, -1                     ; 2 uses
  store i32 %i.air, ptr %i.aip, align 4
  %i.ais = icmp eq i32 %i.air, 0
  br i1 %i.ais, label %bb.oi, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes19RecordExprFieldListECsileJQcQObtj_7hir_def.exit617

bb.oi:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsileJQcQObtj_7hir_def.exit615
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ahq) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes19RecordExprFieldListECsileJQcQObtj_7hir_def.exit617 unwind label %.thread844

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes19RecordExprFieldListECsileJQcQObtj_7hir_def.exit617: ; preds = %bb.oi, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsileJQcQObtj_7hir_def.exit615, %bb.ok
  %i.ait = invoke fastcc noundef i32 @_RNvMs3_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector10alloc_expr(ptr noalias nofree noundef align 8 dereferenceable(1120) %0, ptr noalias nofree noundef align 16 captures(address) dereferenceable(48) %i.bc, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(12) %i.b)
          to label %bb.ol unwind label %.thread844 ; 2 uses

bb.oj:                                            ; preds = %bb.nw
  %i.aiu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def10expr_store4path4PathEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ba) #39
          to label %.thread837 unwind label %bb.cn

bb.ok:                                            ; preds = %bb.nw
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aiv, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 24, i1 false)
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  store i64 %i.ahs, ptr %i.aiw, align 8
  %i.aix = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  store i32 0, ptr %i.aix, align 16
  store i32 19, ptr %i.bc, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes19RecordExprFieldListECsileJQcQObtj_7hir_def.exit617

bb.ol:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes19RecordExprFieldListECsileJQcQObtj_7hir_def.exit617
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.jz, i64 48 ; 2 uses
  %i.aiz = load i32, ptr %i.aiy, align 4, !noundef !8
  %i.aja = add i32 %i.aiz, -1                     ; 2 uses
  store i32 %i.aja, ptr %i.aiy, align 4
  %i.ajb = icmp eq i32 %i.aja, 0
  br i1 %i.ajb, label %bb.om, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10BecomeExprECsileJQcQObtj_7hir_def.exit480

bb.om:                                            ; preds = %bb.ol
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.jz) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10BecomeExprECsileJQcQObtj_7hir_def.exit480 unwind label %bb.b

.thread833:                                       ; preds = %bb.nx, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecNtNtCsileJQcQObtj_7hir_def3hir14RecordLitFieldEEB1d_.exit, %bb.nt
  %.pn206836 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp843, %bb.nt ], [ %.pn204, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecNtNtCsileJQcQObtj_7hir_def3hir14RecordLitFieldEEB1d_.exit ], [ %.pn204, %bb.nx ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def10expr_store4path4PathEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bd) #39
          to label %.thread837 unwind label %bb.cn

bb.on:                                            ; preds = %bb.nr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.jz, i64 48 ; 2 uses
  %i.ajd = load i32, ptr %i.ajc, align 4, !noundef !8
  %i.aje = add i32 %i.ajd, -1                     ; 2 uses
  store i32 %i.aje, ptr %i.ajc, align 4
  %i.ajf = icmp eq i32 %i.aje, 0
  br i1 %i.ajf, label %bb.oo, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10RecordExprECsileJQcQObtj_7hir_def.exit621

bb.oo:                                            ; preds = %bb.on
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.jz) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10RecordExprECsileJQcQObtj_7hir_def.exit621 unwind label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10RecordExprECsileJQcQObtj_7hir_def.exit621: ; preds = %bb.on, %bb.oo
  %i.ajg = load i64, ptr %i.cf, align 8, !range !48, !noundef !8
  switch i64 %i.ajg, label %bb.e [
    i64 0, label %bb.f
    i64 1, label %bb.g
    i64 2, label %bb.h
    i64 3, label %bb.i
    i64 4, label %bb.j
    i64 5, label %bb.k
    i64 6, label %bb.l
    i64 7, label %bb.m
    i64 8, label %bb.n
    i64 9, label %bb.o
    i64 10, label %bb.p
    i64 11, label %bb.q
    i64 12, label %bb.r
    i64 13, label %bb.s
    i64 14, label %bb.t
    i64 16, label %bb.u
    i64 17, label %bb.v
    i64 18, label %bb.w
    i64 19, label %bb.x
    i64 20, label %bb.y
    i64 21, label %bb.z
    i64 22, label %bb.aa
    i64 23, label %bb.ab
    i64 24, label %bb.ac
    i64 25, label %bb.ad
    i64 26, label %bb.ae
    i64 27, label %bb.af
    i64 28, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsileJQcQObtj_7hir_def.exit
    i64 29, label %bb.ah
    i64 30, label %bb.ai
    i64 31, label %bb.aj
    i64 32, label %bb.ak
    i64 34, label %bb.al
    i64 35, label %bb.am
    i64 36, label %bb.an
  ]

bb.op:                                            ; preds = %bb.oq
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.kb) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9ArrayExprECsileJQcQObtj_7hir_def.exit468 unwind label %bb.cn

bb.oq:                                            ; preds = %bb.pc, %bb.oz, %bb.ov, %bb.os, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsileJQcQObtj_7hir_def.exit625, %bb.ow, %bb.bu, %bb.pd, %bb.or
  %i.ajh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %i.kb, i64 48 ; 2 uses
  %i.ajj = load i32, ptr %i.aji, align 4, !noundef !8
  %i.ajk = add i32 %i.ajj, -1                     ; 2 uses
  store i32 %i.ajk, ptr %i.aji, align 4
  %i.ajl = icmp eq i32 %i.ajk, 0
  br i1 %i.ajl, label %bb.op, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9ArrayExprECsileJQcQObtj_7hir_def.exit468

bb.or:                                            ; preds = %bb.bu
  %i.ajm = extractvalue { i64, ptr } %i.kc, 0
  %i.ajn = extractvalue { i64, ptr } %i.kc, 1
  %i.ajo = invoke fastcc noundef i32 @_RNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector16collect_expr_opt(ptr noalias nofree noundef align 8 dereferenceable(1120) %0, i64 noundef %i.ajm, ptr %i.ajn)
          to label %bb.os unwind label %bb.oq

bb.os:                                            ; preds = %bb.or
  %i.ajp = invoke fastcc noundef ptr @_RNvNtNtCsjJXvCMGntp8_6syntax3ast7support5token(ptr nonnull %i.kb, i16 noundef 136)
          to label %bb.ot unwind label %bb.oq     ; 3 uses

bb.ot:                                            ; preds = %bb.os
  %.not859 = icmp eq ptr %i.ajp, null             ; 2 uses
  br i1 %.not859, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsileJQcQObtj_7hir_def.exit625, label %bb.ou

bb.ou:                                            ; preds = %bb.ot
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajp, i64 48 ; 2 uses
  %i.ajr = load i32, ptr %i.ajq, align 4, !noundef !8
  %i.ajs = add i32 %i.ajr, -1                     ; 2 uses
  store i32 %i.ajs, ptr %i.ajq, align 4
  %i.ajt = icmp eq i32 %i.ajs, 0
  br i1 %i.ajt, label %bb.ov, label %bb.ow

bb.ov:                                            ; preds = %bb.ou
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ajp) #37
          to label %bb.ow unwind label %bb.oq

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsileJQcQObtj_7hir_def.exit625: ; preds = %bb.ot
  %i.aju = invoke fastcc noundef ptr @_RNvNtNtCsjJXvCMGntp8_6syntax3ast7support5token(ptr nonnull %i.kb, i16 noundef 80)
          to label %bb.ox unwind label %bb.oq     ; 3 uses

bb.ow:                                            ; preds = %bb.ou, %bb.ov
  %i.ajv = invoke fastcc noundef ptr @_RNvNtNtCsjJXvCMGntp8_6syntax3ast7support5token(ptr nonnull %i.kb, i16 noundef 80)
          to label %bb.pa unwind label %bb.oq     ; 3 uses

bb.ox:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsileJQcQObtj_7hir_def.exit625
  %i.ajw = icmp ne ptr %i.aju, null               ; 2 uses
  br i1 %i.ajw, label %bb.oy, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsileJQcQObtj_7hir_def.exit629

bb.oy:                                            ; preds = %bb.ox
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.aju, i64 48 ; 2 uses
  %i.ajy = load i32, ptr %i.ajx, align 4, !noundef !8
  %i.ajz = add i32 %i.ajy, -1                     ; 2 uses
  store i32 %i.ajz, ptr %i.ajx, align 4
  %i.aka = icmp eq i32 %i.ajz, 0
  br i1 %i.aka, label %bb.oz, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsileJQcQObtj_7hir_def.exit629

bb.oz:                                            ; preds = %bb.oy
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.aju) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsileJQcQObtj_7hir_def.exit629 unwind label %bb.oq

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsileJQcQObtj_7hir_def.exit629: ; preds = %bb.oy, %bb.ox, %bb.oz
  %i.akb = zext i1 %i.ajw to i8
  br label %bb.pd

bb.pa:                                            ; preds = %bb.ow
  %.not196 = icmp eq ptr %i.ajv, null
  br i1 %.not196, label %bb.pd, label %bb.pb

bb.pb:                                            ; preds = %bb.pa
  %i.akc = getelementptr inbounds nuw i8, ptr %i.ajv, i64 48 ; 2 uses
  %i.akd = load i32, ptr %i.akc, align 4, !noundef !8
  %i.ake = add i32 %i.akd, -1                     ; 2 uses
  store i32 %i.ake, ptr %i.akc, align 4
  %i.akf = icmp eq i32 %i.ake, 0
  br i1 %i.akf, label %bb.pc, label %bb.pd

bb.pc:                                            ; preds = %bb.pb
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ajv) #37
          to label %bb.pd unwind label %bb.oq

bb.pd:                                            ; preds = %bb.pc, %bb.pb, %bb.pa, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsileJQcQObtj_7hir_def.exit629
  %.sroa.090.0 = phi i8 [ 0, %bb.pa ], [ %i.akb, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsileJQcQObtj_7hir_def.exit629 ], [ 1, %bb.pb ], [ 1, %bb.pc ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  %i.akg = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i32 %i.ajo, ptr %i.akg, align 4
  %i.akh = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.aki = zext i1 %.not859 to i8
  store i8 %i.aki, ptr %i.akh, align 8
  %i.akj = getelementptr inbounds nuw i8, ptr %i.ar, i64 9
  store i8 %.sroa.090.0, ptr %i.akj, align 1
  store i32 23, ptr %i.ar, align 16
  %i.akk = invoke fastcc noundef i32 @_RNvMs3_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector10alloc_expr(ptr noalias nofree noundef align 8 dereferenceable(1120) %0, ptr noalias nofree noundef align 16 captures(address) dereferenceable(48) %i.ar, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(12) %i.b)
          to label %bb.pe unwind label %bb.oq     ; 2 uses

bb.pe:                                            ; preds = %bb.pd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %i.akl = getelementptr inbounds nuw i8, ptr %i.kb, i64 48 ; 2 uses
  %i.akm = load i32, ptr %i.akl, align 4, !noundef !8
  %i.akn = add i32 %i.akm, -1                     ; 2 uses
  store i32 %i.akn, ptr %i.akl, align 4
  %i.ako = icmp eq i32 %i.akn, 0
  br i1 %i.ako, label %bb.pf, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10BecomeExprECsileJQcQObtj_7hir_def.exit480

bb.pf:                                            ; preds = %bb.pe
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.kb) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10BecomeExprECsileJQcQObtj_7hir_def.exit480 unwind label %bb.b

bb.pg:                                            ; preds = %bb.pj, %bb.bv, %_RNCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB7_13ExprCollector18maybe_collect_exprsg_0Bb_.exit
  %i.akp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.akq = getelementptr inbounds nuw i8, ptr %i.kd, i64 48 ; 2 uses
  %i.akr = load i32, ptr %i.akq, align 4, !noundef !8
  %i.aks = add i32 %i.akr, -1                     ; 2 uses
  store i32 %i.aks, ptr %i.akq, align 4
  %i.akt = icmp eq i32 %i.aks, 0
  br i1 %i.akt, label %bb.ph, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9ArrayExprECsileJQcQObtj_7hir_def.exit468

bb.ph:                                            ; preds = %bb.pg
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.kd) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9ArrayExprECsileJQcQObtj_7hir_def.exit468 unwind label %bb.cn

bb.pi:                                            ; preds = %bb.bv
  %i.aku = extractvalue { i64, ptr } %i.ke, 0     ; 2 uses
  %.not195 = icmp eq i64 %i.aku, -1
  br i1 %.not195, label %_RNCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB7_13ExprCollector18maybe_collect_exprsg_0Bb_.exit, label %bb.pj

bb.pj:                                            ; preds = %bb.pi
  %i.akv = extractvalue { i64, ptr } %i.ke, 1
  %i.akw = invoke fastcc noundef i32 @_RNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector12collect_expr(ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %0, i64 noundef range(i64 0, 37) %i.aku, ptr noundef %i.akv)
          to label %_RNCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB7_13ExprCollector18maybe_collect_exprsg_0Bb_.exit unwind label %bb.pg, !inline_history !5342

_RNCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB7_13ExprCollector18maybe_collect_exprsg_0Bb_.exit: ; preds = %bb.pj, %bb.pi
  %.sroa.344.0 = phi i32 [ undef, %bb.pi ], [ %i.akw, %bb.pj ]
  %.sroa.043.0 = phi i32 [ 0, %bb.pi ], [ 1, %bb.pj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  %i.akx = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  store i32 %.sroa.043.0, ptr %i.akx, align 4
  %i.aky = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i32 %.sroa.344.0, ptr %i.aky, align 8
  store i32 15, ptr %i.bi, align 16
  %i.akz = invoke fastcc noundef i32 @_RNvMs3_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector10alloc_expr(ptr noalias nofree noundef align 8 dereferenceable(1120) %0, ptr noalias nofree noundef align 16 captures(address) dereferenceable(48) %i.bi, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(12) %i.b)
          to label %bb.pk unwind label %bb.pg     ; 2 uses

bb.pk:                                            ; preds = %_RNCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB7_13ExprCollector18maybe_collect_exprsg_0Bb_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  %i.ala = getelementptr inbounds nuw i8, ptr %i.kd, i64 48 ; 2 uses
  %i.alb = load i32, ptr %i.ala, align 4, !noundef !8
  %i.alc = add i32 %i.alb, -1                     ; 2 uses
  store i32 %i.alc, ptr %i.ala, align 4
  %i.ald = icmp eq i32 %i.alc, 0
  br i1 %i.ald, label %bb.pl, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10BecomeExprECsileJQcQObtj_7hir_def.exit480

bb.pl:                                            ; preds = %bb.pk
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.kd) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10BecomeExprECsileJQcQObtj_7hir_def.exit480 unwind label %bb.b

bb.pm:                                            ; preds = %bb.pq, %bb.pz
  %.pn = phi { ptr, i32 } [ %lpad.thr_comm849, %bb.pz ], [ %lpad.thr_comm.split-lp850, %bb.pq ] ; 2 uses
  %i.ale = getelementptr inbounds nuw i8, ptr %i.kh, i64 48 ; 2 uses
  %i.alf = load i32, ptr %i.ale, align 4, !noundef !8
  %i.alg = add i32 %i.alf, -1                     ; 2 uses
  store i32 %i.alg, ptr %i.ale, align 4
  %i.alh = icmp eq i32 %i.alg, 0
  br i1 %i.alh, label %bb.pn, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9ArrayExprECsileJQcQObtj_7hir_def.exit468

bb.pn:                                            ; preds = %bb.pm
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.kh) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9ArrayExprECsileJQcQObtj_7hir_def.exit468 unwind label %bb.cn

bb.po:                                            ; preds = %bb.bx
  invoke void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB3F_9generated5nodes4ExprENCNvMs2_NtNtB1z_10expr_store5lowerNtB4X_13ExprCollector18maybe_collect_exprsp_0EE9from_iterB1z_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ai, ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %0, ptr noundef %i.ki)
          to label %bb.pp unwind label %bb.pq

bb.pp:                                            ; preds = %bb.po
  %i.ali = invoke fastcc noundef ptr @_RNvNtNtCsjJXvCMGntp8_6syntax3ast7support5token(ptr nonnull %i.kh, i16 noundef 5)
          to label %bb.pr unwind label %bb.pz

bb.pq:                                            ; preds = %bb.po, %bb.bx, %bb.pw, %bb.pu
  %lpad.thr_comm.split-lp850 = landingpad { ptr, i32 }
          cleanup
  br label %bb.pm

bb.pr:                                            ; preds = %bb.pp
  %i.alj = invoke fastcc noundef zeroext i1 @_RNvNtNtCsileJQcQObtj_7hir_def10expr_store5lower19comma_follows_token(ptr noundef %i.ali)
          to label %bb.ps unwind label %bb.pz

bb.ps:                                            ; preds = %bb.pr
  br i1 %i.alj, label %bb.pt, label %bb.pu

bb.pt:                                            ; preds = %bb.ps
  %i.alk = invoke fastcc noundef i32 @_RNvMs3_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector12missing_expr(ptr noalias nofree noundef align 8 dereferenceable(1120) %0)
          to label %bb.pv unwind label %bb.pz

bb.pu:                                            ; preds = %bb.pv, %bb.ps
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  %i.all = invoke { ptr, i64 } @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEE16into_boxed_sliceB1c_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ag)
          to label %bb.pw unwind label %bb.pq     ; 2 uses

bb.pv:                                            ; preds = %bb.pt
  invoke fastcc void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEE10insert_mutB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ai, i32 noundef %i.alk)
          to label %bb.pu unwind label %bb.pz

bb.pw:                                            ; preds = %bb.pu
  %i.alm = extractvalue { ptr, i64 } %i.all, 0
  %i.aln = extractvalue { ptr, i64 } %i.all, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.alo = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.alm, ptr %i.alo, align 8
  %i.alp = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 %i.aln, ptr %i.alp, align 16
  store i32 30, ptr %i.ah, align 16
  %i.alq = invoke fastcc noundef i32 @_RNvMs3_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector10alloc_expr(ptr noalias nofree noundef align 8 dereferenceable(1120) %0, ptr noalias nofree noundef align 16 captures(address) dereferenceable(48) %i.ah, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(12) %i.b)
          to label %bb.px unwind label %bb.pq     ; 2 uses

bb.px:                                            ; preds = %bb.pw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %i.alr = getelementptr inbounds nuw i8, ptr %i.kh, i64 48 ; 2 uses
  %i.als = load i32, ptr %i.alr, align 4, !noundef !8
  %i.alt = add i32 %i.als, -1                     ; 2 uses
  store i32 %i.alt, ptr %i.alr, align 4
  %i.alu = icmp eq i32 %i.alt, 0
  br i1 %i.alu, label %bb.py, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10BecomeExprECsileJQcQObtj_7hir_def.exit480

bb.py:                                            ; preds = %bb.px
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.kh) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10BecomeExprECsileJQcQObtj_7hir_def.exit480 unwind label %bb.b

bb.pz:                                            ; preds = %bb.pv, %bb.pt, %bb.pr, %bb.pp
  %lpad.thr_comm849 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEEEB1G_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ai) #39
          to label %bb.pm unwind label %bb.cn

bb.qa:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10BecomeExprECsileJQcQObtj_7hir_def.exit480

bb.qb:                                            ; preds = %bb.qe, %bb.ca, %_RNCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB7_13ExprCollector18maybe_collect_exprsk_0Bb_.exit
  %i.alv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.alw = getelementptr inbounds nuw i8, ptr %i.km, i64 48 ; 2 uses
  %i.alx = load i32, ptr %i.alw, align 4, !noundef !8
  %i.aly = add i32 %i.alx, -1                     ; 2 uses
  store i32 %i.aly, ptr %i.alw, align 4
  %i.alz = icmp eq i32 %i.aly, 0
  br i1 %i.alz, label %bb.qc, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9ArrayExprECsileJQcQObtj_7hir_def.exit468

bb.qc:                                            ; preds = %bb.qb
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.km) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9ArrayExprECsileJQcQObtj_7hir_def.exit468 unwind label %bb.cn

bb.qd:                                            ; preds = %bb.ca
  %i.ama = extractvalue { i64, ptr } %i.kn, 0     ; 2 uses
  %.not193 = icmp eq i64 %i.ama, -1
  br i1 %.not193, label %_RNCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB7_13ExprCollector18maybe_collect_exprsk_0Bb_.exit, label %bb.qe

bb.qe:                                            ; preds = %bb.qd
  %i.amb = extractvalue { i64, ptr } %i.kn, 1
  %i.amc = invoke fastcc noundef i32 @_RNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector12collect_expr(ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %0, i64 noundef range(i64 0, 37) %i.ama, ptr noundef %i.amb)
          to label %_RNCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB7_13ExprCollector18maybe_collect_exprsk_0Bb_.exit unwind label %bb.qb, !inline_history !5343

_RNCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB7_13ExprCollector18maybe_collect_exprsk_0Bb_.exit: ; preds = %bb.qe, %bb.qd
  %.sroa.363.0 = phi i32 [ undef, %bb.qd ], [ %i.amc, %bb.qe ]
  %.sroa.062.0 = phi i32 [ 0, %bb.qd ], [ 1, %bb.qe ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  %i.amd = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  store i32 %.sroa.062.0, ptr %i.amd, align 4
  %i.ame = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i32 %.sroa.363.0, ptr %i.ame, align 8
  store i32 18, ptr %i.bf, align 16
  %i.amf = invoke fastcc noundef i32 @_RNvMs3_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector10alloc_expr(ptr noalias nofree noundef align 8 dereferenceable(1120) %0, ptr noalias nofree noundef align 16 captures(address) dereferenceable(48) %i.bf, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(12) %i.b)
          to label %bb.qf unwind label %bb.qb     ; 2 uses

bb.qf:                                            ; preds = %_RNCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB7_13ExprCollector18maybe_collect_exprsk_0Bb_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  %i.amg = getelementptr inbounds nuw i8, ptr %i.km, i64 48 ; 2 uses
  %i.amh = load i32, ptr %i.amg, align 4, !noundef !8
  %i.ami = add i32 %i.amh, -1                     ; 2 uses
end_hunk_0
