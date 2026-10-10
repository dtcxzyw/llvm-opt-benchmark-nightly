Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_assists-698f35cb73900ae6.ide_assists.dc31bb520690ed66-cgu.11?download=true
inline.NumInlined: 4635
inline.NumDeleted: 1658
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variable11source_expr:bb.a
  %.val3.i = load ptr, ptr %i.bj, align 8, !alias.scope !2034, !nonnull !4, !noundef !4 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val3.i, i64 48 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !noalias !2034, !noundef !4
  %i.bm = add i32 %i.bl, -1                       ; 2 uses
  store i32 %i.bm, ptr %i.bk, align 4, !noalias !2034
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i6.i, label %common.resume

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i6.i: ; preds = %bb.aa
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val3.i) #32
          to label %common.resume unwind label %bb.ab, !noalias !2034

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i = load ptr, ptr %i.bo, align 8, !alias.scope !2034, !nonnull !4, !noundef !4 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.val1.i, i64 48 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !noalias !2034, !noundef !4
  %i.br = add i32 %i.bq, -1                       ; 2 uses
  store i32 %i.br, ptr %i.bp, align 4, !noalias !2034
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i9.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops5range14RangeInclusiveINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1g_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB25_11SyntaxTokenB2r_EEEECsiU5vK8fN4ZC_11ide_assists.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i9.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECsiU5vK8fN4ZC_11ide_assists.exit.i
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val1.i) #32, !noalias !2034
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops5range14RangeInclusiveINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1g_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB25_11SyntaxTokenB2r_EEEECsiU5vK8fN4ZC_11ide_assists.exit

bb.ab:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i6.i
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !2034
  unreachable

common.resume:                                    ; preds = %.body22, %bb.aa, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i6.i
  %common.resume.op = phi { ptr, i32 } [ %i.bi, %bb.aa ], [ %i.bi, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i6.i ], [ %.pn4, %.body22 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops5range14RangeInclusiveINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1g_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB25_11SyntaxTokenB2r_EEEECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECsiU5vK8fN4ZC_11ide_assists.exit.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i9.i
  ret { i64, ptr } %i.ba

bb.ac:                                            ; preds = %bb.t, %bb.p, %bb.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan11syntax_text10SyntaxTextECsiU5vK8fN4ZC_11ide_assists.exit19, %.body22
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variable16extract_variable(ptr noalias nofree noundef align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [24 x i8], align 16               ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 8 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [1 x i8], align 1                 ; 3 uses
  %i.h = alloca [1 x i8], align 1                 ; 2 uses
  %i.i = alloca [1 x i8], align 1                 ; 2 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [1 x i8], align 1                 ; 2 uses
  %i.l = alloca [1 x i8], align 1                 ; 2 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [1 x i8], align 1                 ; 3 uses
  %i.r = alloca [8 x i8], align 8                 ; 5 uses
  %i.s = alloca [8 x i8], align 8                 ; 5 uses
  %i.t = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.4138 = alloca [12 x i8], align 4         ; 3 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [32 x i8], align 8                ; 4 uses
  %i.x = alloca [16 x i8], align 8                ; 6 uses
  %i.y = alloca [24 x i8], align 8                ; 7 uses
  %i.z = alloca [96 x i8], align 8                ; 15 uses
  %i.aa = alloca [40 x i8], align 8               ; 7 uses
  %i.ab = alloca [24 x i8], align 8               ; 10 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [24 x i8], align 8               ; 6 uses
  %i.ae = alloca [24 x i8], align 8               ; 12 uses
  %i.af = alloca [16 x i8], align 8               ; 5 uses
  %i.ag = alloca [1 x i8], align 1                ; 6 uses
  %i.ah = alloca [88 x i8], align 8               ; 6 uses
  %i.ai = alloca [88 x i8], align 8               ; 9 uses
  %i.aj = alloca [1 x i8], align 1                ; 6 uses
  %i.ak = alloca [16 x i8], align 8               ; 9 uses
  %i.al = alloca [16 x i8], align 8               ; 6 uses
  %i.am = alloca [24 x i8], align 8               ; 12 uses
  %i.an = alloca [8 x i8], align 8                ; 10 uses
  %i.ao = alloca [40 x i8], align 8               ; 7 uses
  %i.ap = alloca [48 x i8], align 8               ; 17 uses
  %i.aq = alloca [16 x i8], align 4               ; 6 uses
  %i.ar = alloca [24 x i8], align 8               ; 7 uses
  %i.as = alloca [16 x i8], align 8               ; 5 uses
  %i.at = alloca [8 x i8], align 4                ; 6 uses
  %i.au = alloca [1 x i8], align 1                ; 5 uses
  %i.av = alloca [16 x i8], align 8               ; 9 uses
  %i.aw = alloca [40 x i8], align 8               ; 14 uses
  %i.ax = alloca [8 x i8], align 4                ; 6 uses
  %i.ay = alloca [24 x i8], align 8               ; 6 uses
  %i.az = alloca [8 x i8], align 8                ; 8 uses
  %i.ba = alloca [16 x i8], align 8               ; 5 uses
  %i.bb = alloca [8 x i8], align 8                ; 8 uses
  %i.bc = alloca [24 x i8], align 8               ; 12 uses
  %i.bd = alloca [24 x i8], align 8               ; 23 uses
  %i.be = alloca [8 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 5 uses
  %i.bg = load i32, ptr %i.bf, align 8, !noundef !4
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 348 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !noundef !4
  %i.bj = icmp eq i32 %i.bg, %i.bi
  br i1 %i.bj, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  %i.bk = tail call { i64, ptr } @_RNvMNtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB2_13AssistContext16covering_element(ptr noundef nonnull align 8 %1) ; 2 uses
  %i.bl = extractvalue { i64, ptr } %i.bk, 0      ; 2 uses
  %i.bm = extractvalue { i64, ptr } %i.bk, 1      ; 20 uses
  store i64 %i.bl, ptr %i.ba, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  store ptr %i.bm, ptr %i.bn, align 8
  %i.bo = trunc nuw i64 %i.bl to i1
  br i1 %i.bo, label %bb.j, label %bb.k

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @_RNvMNtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB2_13AssistContext15token_at_offset(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bd, ptr noundef nonnull align 8 %1)
  %i.bp = invoke noundef ptr @_RNvXs3_NtCs9GitHPCrz2Q_5rowan13utility_typesINtB5_13TokenAtOffsetINtNtB7_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %.noexc331 unwind label %.loopexit.split-lp873 ; 2 uses

.noexc331:                                        ; preds = %bb.c
  %.not12.i = icmp eq ptr %i.bp, null
  br i1 %.not12.i, label %.thread790, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc331, %.noexc333
  %i.bq = phi ptr [ %i.cd, %.noexc333 ], [ %i.bp, %.noexc331 ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !2098
  store ptr %i.bq, ptr %i.s, align 8, !noalias !2098
  %i.br = invoke noundef i16 @_RNvMs5_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 48 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !noundef !4
  %i.bv = add i32 %i.bu, -1                       ; 2 uses
  store i32 %i.bv, ptr %i.bt, align 4
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.e, label %.body

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bq) #32
          to label %.body unwind label %bb.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.bx = icmp eq i16 %i.br, 3
  br i1 %i.bx, label %bb.ab, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.by = getelementptr inbounds nuw i8, ptr %i.bq, i64 48 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !noundef !4
  %i.ca = add i32 %i.bz, -1                       ; 2 uses
  store i32 %i.ca, ptr %i.by, align 4
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.h, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variable16extract_variable0E0B2R_.exit.i

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bq) #32
          to label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variable16extract_variable0E0B2R_.exit.i unwind label %.loopexit872

bb.i:                                             ; preds = %bb.e
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variable16extract_variable0E0B2R_.exit.i: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2098
  %i.cd = invoke noundef ptr @_RNvXs3_NtCs9GitHPCrz2Q_5rowan13utility_typesINtB5_13TokenAtOffsetINtNtB7_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %.noexc333 unwind label %.loopexit872 ; 2 uses

.noexc333:                                        ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variable16extract_variable0E0B2R_.exit.i
  %.not.i330 = icmp eq ptr %i.cd, null
  br i1 %.not.i330, label %.thread790, label %.lr.ph.i

bb.j:                                             ; preds = %bb.b
  %i.ce = invoke noundef i16 @_RNvMs5_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bn)
          to label %bb.l unwind label %2

bb.k:                                             ; preds = %bb.b
  store ptr %i.bm, ptr %i.be, align 8
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit338

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit338: ; preds = %bb.u, %bb.t, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit414

bb.l:                                             ; preds = %bb.j
  %i.cf = icmp eq i16 %i.ce, 150
  br i1 %i.cf, label %.noexc, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cg = getelementptr i8, ptr %i.bm, i64 16
  %.val299 = load ptr, ptr %i.cg, align 8, !noundef !4 ; 3 uses
  %.not.i334 = icmp eq ptr %.val299, null
  br i1 %.not.i334, label %bb.v, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ch = getelementptr inbounds nuw i8, ptr %.val299, i64 48 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !noundef !4 ; 2 uses
  %i.cj = icmp eq i32 %i.ci, -1
  br i1 %i.cj, label %bb.o, label %bb.t, !prof !16

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #37
          to label %.noexc335 unwind label %bb.r

.noexc335:                                        ; preds = %bb.o
  unreachable

.noexc:                                           ; preds = %bb.l
  %i.ck = load atomic i64, ptr @_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt5LEVEL monotonic, align 8 ; 2 uses
  %.not.i = icmp eq i64 %i.ck, 0
  br i1 %.not.i, label %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit, label %bb.p, !prof !13

bb.p:                                             ; preds = %.noexc
  %i.cl = icmp slt i64 %i.ck, 0
  br i1 %i.cl, label %bb.q, label %.noexc214

.noexc214:                                        ; preds = %bb.q, %bb.p
  invoke void @_RNvNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit8hit_cold(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @78, i64 noundef 40)
          to label %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit unwind label %bb.y

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit13add_to_survey(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @78, i64 noundef 40)
          to label %.noexc214 unwind label %bb.y

bb.r:                                             ; preds = %bb.o
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bm) ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 8, !noundef !4
  %i.cp = add i32 %i.co, -1                       ; 2 uses
  store i32 %i.cp, ptr %i.cn, align 8
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.s, label %common.resume

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bm) #32
          to label %common.resume unwind label %bb.x

bb.t:                                             ; preds = %bb.n
  %i.cr = add nuw i32 %i.ci, 1
  store i32 %i.cr, ptr %i.ch, align 4
  store ptr %.val299, ptr %i.be, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bm) ]
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bm, i64 48 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 8, !noundef !4
  %i.cu = add i32 %i.ct, -1                       ; 2 uses
  store i32 %i.cu, ptr %i.cs, align 8
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.u, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit338

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bm) #32
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit338

bb.v:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bm) ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bm, i64 48 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 8, !noundef !4
  %i.cy = add i32 %i.cx, -1                       ; 2 uses
  store i32 %i.cy, ptr %i.cw, align 8
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit340.sink.split, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit340

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit340.sink.split: ; preds = %bb.v, %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bm) #32
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit340

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit340: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit340.sink.split, %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit402

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit414: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i413, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsiU5vK8fN4ZC_11ide_assists.exit412, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types13TokenAtOffsetINtNtBG_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit384, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  %.val312 = load ptr, ptr %i.be, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.val312, i64 48 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !noundef !4 ; 2 uses
  %i.dc = icmp eq i32 %i.db, -1
  br i1 %i.dc, label %bb.w, label %bb.cu, !prof !16

bb.w:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit414
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #37
          to label %.noexc341 unwind label %bb.ct

.noexc341:                                        ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i640, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i595, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i587, %bb.jh, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i567, %bb.iz, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i533, %bb.ib, %bb.hl, %bb.hd, %bb.gs, %bb.gi, %bb.gd, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i460, %bb.dk, %bb.cs, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i403, %bb.cl, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i, %bb.bd, %bb.ak, %bb.aa, %bb.z, %bb.s, %bb.oo, %.body643, %bb.ld, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit569, %bb.fd, %bb.bn, %.body
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.y:                                             ; preds = %bb.q, %.noexc214
  %i.de = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bm) ]
  %i.df = getelementptr inbounds nuw i8, ptr %i.bm, i64 48 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !noundef !4
  %i.dh = add i32 %i.dg, -1                       ; 2 uses
  store i32 %i.dh, ptr %i.df, align 4
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.z, label %common.resume

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bm) #32
          to label %common.resume unwind label %bb.x

_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit:     ; preds = %.noexc, %.noexc214
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bm) ]
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bm, i64 48 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !noundef !4
  %i.dl = add i32 %i.dk, -1                       ; 2 uses
  store i32 %i.dl, ptr %i.dj, align 4
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit340.sink.split, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit340

common.resume:                                    ; preds = %bb.br, %bb.bk, %bb.bl, %bb.az, %bb.ba, %bb.ah, %bb.ai, %.body, %bb.bn, %bb.aa, %2, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i, %.body386, %bb.cs, %.body419, %bb.s, %bb.r, %bb.z, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.hf, %bb.bk ], [ %i.de, %bb.y ], [ %i.ec, %bb.ah ], [ %i.fz, %bb.az ], [ %.pn153, %.body386 ], [ %.pn159, %.body ], [ %lpad.thr_comm.split-lp, %2 ], [ %i.hr, %bb.bn ], [ %.pn210, %.body419 ], [ %i.ht, %bb.br ], [ %lpad.thr_comm.split-lp, %bb.aa ], [ %.pn153, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i ], [ %.pn210, %bb.cs ], [ %i.cm, %bb.r ], [ %i.cm, %bb.s ], [ %i.de, %bb.z ], [ %i.ec, %bb.ai ], [ %i.fz, %bb.ba ], [ %i.hf, %bb.bl ]
  resume { ptr, i32 } %common.resume.op

2:                                                ; preds = %bb.j
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bm) ]
  %3 = getelementptr inbounds nuw i8, ptr %i.bm, i64 48 ; 2 uses
  %4 = load i32, ptr %3, align 4, !noundef !4
  %5 = add i32 %4, -1                             ; 2 uses
  store i32 %5, ptr %3, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %bb.aa, label %common.resume

bb.aa:                                            ; preds = %2
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bm) #32
          to label %common.resume unwind label %bb.x

.body:                                            ; preds = %.loopexit872, %.loopexit.split-lp873, %.body355, %bb.ak, %bb.e, %bb.d
  %.pn159 = phi { ptr, i32 } [ %i.bs, %bb.d ], [ %.pn157, %.body355 ], [ %i.bs, %bb.e ], [ %.pn157, %bb.ak ], [ %lpad.loopexit874, %.loopexit872 ], [ %lpad.loopexit.split-lp875, %.loopexit.split-lp873 ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types13TokenAtOffsetINtNtBG_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bd) #34
          to label %common.resume unwind label %bb.x

.loopexit872:                                     ; preds = %bb.h, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variable16extract_variable0E0B2R_.exit.i
  %lpad.loopexit874 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp873:                            ; preds = %bb.c, %bb.at, %bb.bg
  %lpad.loopexit.split-lp875 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ab:                                            ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2098
  %i.dn = getelementptr i8, ptr %i.bq, i64 16
  %..val = load ptr, ptr %i.dn, align 8, !noundef !4 ; 8 uses
  %.not.i349 = icmp eq ptr %..val, null
  br i1 %.not.i349, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit351.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.do = getelementptr inbounds nuw i8, ptr %..val, i64 48 ; 10 uses
  %i.dp = load i32, ptr %i.do, align 4, !noundef !4 ; 2 uses
  %i.dq = icmp eq i32 %i.dp, -1
  br i1 %i.dq, label %bb.ad, label %bb.am, !prof !16

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #37
          to label %.noexc350 unwind label %bb.al

.noexc350:                                        ; preds = %bb.ad
  unreachable

.thread790:                                       ; preds = %.noexc333, %.noexc331
  call void @llvm.experimental.noalias.scope.decl(metadata !2099)
  %i.dr = load i64, ptr %i.bd, align 8, !range !12, !alias.scope !2099, !noundef !4
  switch i64 %i.dr, label %bb.ae [
    i64 0, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types13TokenAtOffsetINtNtBG_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit
    i64 1, label %bb.ag
  ]

bb.ae:                                            ; preds = %.thread790
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.val3.i = load ptr, ptr %i.ds, align 8, !alias.scope !2099, !nonnull !4, !noundef !4 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.val3.i, i64 48 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !noalias !2099, !noundef !4
  %i.dv = add i32 %i.du, -1                       ; 2 uses
  store i32 %i.dv, ptr %i.dt, align 4, !noalias !2099
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %bb.af, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.i

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val3.i) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.i unwind label %bb.ah, !noalias !2099

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit4.sink.split.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.i, %bb.ag
  %.val.sink.i = phi ptr [ %.val2.i, %bb.ag ], [ %.val.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.i ]
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val.sink.i) #32, !noalias !2099
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types13TokenAtOffsetINtNtBG_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit

bb.ag:                                            ; preds = %.thread790
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.val2.i = load ptr, ptr %i.dx, align 8, !alias.scope !2099, !nonnull !4, !noundef !4 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.val2.i, i64 48 ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !noalias !2099, !noundef !4
  %i.ea = add i32 %i.dz, -1                       ; 2 uses
  store i32 %i.ea, ptr %i.dy, align 4, !noalias !2099
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit4.sink.split.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types13TokenAtOffsetINtNtBG_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit

bb.ah:                                            ; preds = %bb.af
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %.val1.i = load ptr, ptr %i.ed, align 8, !alias.scope !2099, !nonnull !4, !noundef !4 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val1.i, i64 48 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !noalias !2099, !noundef !4
  %i.eg = add i32 %i.ef, -1                       ; 2 uses
  store i32 %i.eg, ptr %i.ee, align 4, !noalias !2099
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %bb.ai, label %common.resume

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val1.i) #32
          to label %common.resume unwind label %bb.aj, !noalias !2099

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %bb.af, %bb.ae
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %.val.i = load ptr, ptr %i.ei, align 8, !alias.scope !2099, !nonnull !4, !noundef !4 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.val.i, i64 48 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !noalias !2099, !noundef !4
  %i.el = add i32 %i.ek, -1                       ; 2 uses
  store i32 %i.el, ptr %i.ej, align 4, !noalias !2099
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit4.sink.split.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types13TokenAtOffsetINtNtBG_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit

bb.aj:                                            ; preds = %bb.ai
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !2099
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types13TokenAtOffsetINtNtBG_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %.thread790, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit4.sink.split.i, %bb.ag, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.eq = load i32, ptr %i.ep, align 8, !noundef !4
  call void @_RNvNtCsjJXvCMGntp8_6syntax4algo19ancestors_at_offset(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.eo, i32 noundef %i.eq)
  %i.er = invoke noundef ptr @_RNvXs4_NtCscFGNKo4Sl5v_9itertools11kmerge_implINtB5_8KMergeByINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB14_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B2u_B2s_6parentENvYINtNtB2w_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB16_7convert4FromB2s_E4fromENCNvNtB41_4algo19ancestors_at_offsets_0ENtNtNtB14_6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %bb.bo unwind label %bb.bn     ; 2 uses

.body355:                                         ; preds = %bb.bc, %bb.bd, %bb.an, %bb.ao, %bb.al
  %.pn157 = phi { ptr, i32 } [ %i.ez, %bb.an ], [ %i.ew, %bb.al ], [ %i.ez, %bb.ao ], [ %i.gl, %bb.bd ], [ %i.gl, %bb.bc ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.bq, i64 48 ; 2 uses
  %i.et = load i32, ptr %i.es, align 8, !noundef !4
  %i.eu = add i32 %i.et, -1                       ; 2 uses
  store i32 %i.eu, ptr %i.es, align 8
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %bb.ak, label %.body

bb.ak:                                            ; preds = %.body355
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bq) #32
          to label %.body unwind label %bb.x

bb.al:                                            ; preds = %bb.bf, %bb.ar, %bb.ad
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %.body355

bb.am:                                            ; preds = %bb.ac
  %i.ex = add nuw i32 %i.dp, 1
  store i32 %i.ex, ptr %i.do, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %..val, ptr %i.r, align 8
  %i.ey = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r)
          to label %bb.ap unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ez = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fa = load i32, ptr %i.do, align 4, !noundef !4
  %i.fb = add i32 %i.fa, -1                       ; 2 uses
  store i32 %i.fb, ptr %i.do, align 4
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %bb.ao, label %.body355

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %..val) #32
          to label %.body355 unwind label %bb.as

bb.ap:                                            ; preds = %bb.am
  %i.fd = icmp eq i16 %i.ey, 198
  br i1 %i.fd, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fe = load i32, ptr %i.do, align 4, !noundef !4
  %i.ff = add i32 %i.fe, -1                       ; 2 uses
  store i32 %i.ff, ptr %i.do, align 4
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %bb.ar, label %.thread793

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %..val) #32
          to label %.thread793 unwind label %bb.al

bb.as:                                            ; preds = %bb.ao
  %i.fh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit351.thread: ; preds = %bb.ab, %.thread793
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bq, i64 48 ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 8, !noundef !4
  %i.fk = add i32 %i.fj, -1                       ; 2 uses
  store i32 %i.fk, ptr %i.fi, align 8
  %i.fl = icmp eq i32 %i.fk, 0
  br i1 %i.fl, label %bb.at, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit358

bb.at:                                            ; preds = %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit351.thread
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bq) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit358 unwind label %.loopexit.split-lp873

.thread793:                                       ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit351.thread

bb.au:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.fm = load i32, ptr %i.do, align 4, !noundef !4 ; 3 uses
  %i.fn = icmp eq i32 %i.fm, -1
  br i1 %i.fn, label %bb.av, label %bb.be, !prof !16

end_hunk_0
