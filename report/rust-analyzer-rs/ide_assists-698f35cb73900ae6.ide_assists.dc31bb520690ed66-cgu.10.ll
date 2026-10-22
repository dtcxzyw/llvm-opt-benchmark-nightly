Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_assists-698f35cb73900ae6.ide_assists.dc31bb520690ed66-cgu.10?download=true
inline.NumInlined: 4181
inline.NumDeleted: 1354
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvNtCsiU5vK8fN4ZC_11ide_assists5utils22does_pat_match_variant:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38, !noalias !1215
  unreachable

_RNCNCNvNtCsiU5vK8fN4ZC_11ide_assists5utils22does_pat_match_variant00B7_.exit.i47: ; preds = %bb.an, %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode4text.exit.i.i46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !noalias !1216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1213
  br label %_RNCNvNtCsiU5vK8fN4ZC_11ide_assists5utils22does_pat_match_variant0B5_.exit53

bb.ap:                                            ; preds = %.noexc49
  store ptr null, ptr %i.d, align 8, !alias.scope !1212
  br label %_RNCNvNtCsiU5vK8fN4ZC_11ide_assists5utils22does_pat_match_variant0B5_.exit53

.body51:                                          ; preds = %bb.ax, %bb.ay, %bb.as, %bb.am, %bb.al
  %.pn8 = phi { ptr, i32 } [ %i.ci, %bb.al ], [ %i.cv, %bb.as ], [ %i.ci, %bb.am ], [ %i.de, %bb.ay ], [ %i.de, %bb.ax ] ; 3 uses
  %.val24 = load ptr, ptr %i.h, align 8, !noundef !4 ; 3 uses
  %i.cq = icmp eq ptr %.val24, null
  br i1 %i.cq, label %common.resume, label %bb.aq

bb.aq:                                            ; preds = %.body51
  %i.cr = getelementptr inbounds nuw i8, ptr %.val24, i64 48 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !noundef !4
  %i.ct = add i32 %i.cs, -1                       ; 2 uses
  store i32 %i.ct, ptr %i.cr, align 4
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %bb.ar, label %common.resume

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val24) #39
          to label %common.resume unwind label %bb.ag

bb.as:                                            ; preds = %bb.av, %bb.an, %_RNCNvNtCsiU5vK8fN4ZC_11ide_assists5utils22does_pat_match_variant0B5_.exit
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %.body51

_RNCNvNtCsiU5vK8fN4ZC_11ide_assists5utils22does_pat_match_variant0B5_.exit53: ; preds = %bb.ap, %_RNCNCNvNtCsiU5vK8fN4ZC_11ide_assists5utils22does_pat_match_variant00B7_.exit.i47
  %i.cw = load ptr, ptr %i.h, align 8, !noundef !4 ; 3 uses
  %.not6 = icmp eq ptr %i.cw, null                ; 2 uses
  %i.cx = load ptr, ptr %i.d, align 8, !noundef !4 ; 5 uses
  %i.cy = icmp eq ptr %i.cx, null                 ; 2 uses
  br i1 %.not6, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_RNCNvNtCsiU5vK8fN4ZC_11ide_assists5utils22does_pat_match_variant0B5_.exit53
  br i1 %i.cy, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9GitHPCrz2Q_5rowan11syntax_text10SyntaxTextEECsiU5vK8fN4ZC_11ide_assists.exit56.thread, label %bb.aw

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9GitHPCrz2Q_5rowan11syntax_text10SyntaxTextEECsiU5vK8fN4ZC_11ide_assists.exit56.thread: ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.az

bb.au:                                            ; preds = %_RNCNvNtCsiU5vK8fN4ZC_11ide_assists5utils22does_pat_match_variant0B5_.exit53
  br i1 %i.cy, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9GitHPCrz2Q_5rowan11syntax_text10SyntaxTextEECsiU5vK8fN4ZC_11ide_assists.exit56.thread83, label %.thread63

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9GitHPCrz2Q_5rowan11syntax_text10SyntaxTextEECsiU5vK8fN4ZC_11ide_assists.exit56.thread83: ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9GitHPCrz2Q_5rowan11syntax_text10SyntaxTextEECsiU5vK8fN4ZC_11ide_assists.exit59

.thread63:                                        ; preds = %bb.aw, %bb.au
  %.sroa.0.1.shrunk67 = phi i1 [ false, %bb.au ], [ %i.dd, %bb.aw ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 48 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !noundef !4
  %i.db = add i32 %i.da, -1                       ; 2 uses
  store i32 %i.db, ptr %i.cz, align 4
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.av, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9GitHPCrz2Q_5rowan11syntax_text10SyntaxTextEECsiU5vK8fN4ZC_11ide_assists.exit56

bb.av:                                            ; preds = %.thread63
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.cx) #39
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9GitHPCrz2Q_5rowan11syntax_text10SyntaxTextEECsiU5vK8fN4ZC_11ide_assists.exit56 unwind label %bb.as

bb.aw:                                            ; preds = %bb.at
  %i.dd = invoke noundef zeroext i1 @_RNvXs6_NtCs9GitHPCrz2Q_5rowan11syntax_textNtB5_10SyntaxTextNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d)
          to label %.thread63 unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.de = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cx, i64 48 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !noundef !4
  %i.dh = add i32 %i.dg, -1                       ; 2 uses
  store i32 %i.dh, ptr %i.df, align 4
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.ay, label %.body51

bb.ay:                                            ; preds = %bb.ax
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.cx) #39
          to label %.body51 unwind label %bb.ag

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9GitHPCrz2Q_5rowan11syntax_text10SyntaxTextEECsiU5vK8fN4ZC_11ide_assists.exit56: ; preds = %.thread63, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.not6, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9GitHPCrz2Q_5rowan11syntax_text10SyntaxTextEECsiU5vK8fN4ZC_11ide_assists.exit59, label %bb.az

bb.az:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9GitHPCrz2Q_5rowan11syntax_text10SyntaxTextEECsiU5vK8fN4ZC_11ide_assists.exit56.thread, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9GitHPCrz2Q_5rowan11syntax_text10SyntaxTextEECsiU5vK8fN4ZC_11ide_assists.exit56
  %.sroa.0.1.shrunk6271 = phi i1 [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9GitHPCrz2Q_5rowan11syntax_text10SyntaxTextEECsiU5vK8fN4ZC_11ide_assists.exit56.thread ], [ %.sroa.0.1.shrunk67, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9GitHPCrz2Q_5rowan11syntax_text10SyntaxTextEECsiU5vK8fN4ZC_11ide_assists.exit56 ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cw, i64 48 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !noundef !4
  %i.dl = add i32 %i.dk, -1                       ; 2 uses
  store i32 %i.dl, ptr %i.dj, align 4
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %bb.ba, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9GitHPCrz2Q_5rowan11syntax_text10SyntaxTextEECsiU5vK8fN4ZC_11ide_assists.exit59

bb.ba:                                            ; preds = %bb.az
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.cw) #39
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9GitHPCrz2Q_5rowan11syntax_text10SyntaxTextEECsiU5vK8fN4ZC_11ide_assists.exit59
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvNtCsiU5vK8fN4ZC_11ide_assists5utils23generate_impl_with_item(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef nonnull ptr @_RNvNtCsiU5vK8fN4ZC_11ide_assists5utils19generate_impl_inner(ptr noundef nonnull align 8 %0, i1 noundef zeroext false, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, i64 noundef -1, ptr undef, i1 noundef zeroext true, ptr noundef %2)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvNtCsiU5vK8fN4ZC_11ide_assists5utils25invert_boolean_expression(ptr noundef nonnull align 8 %0, i64 noundef range(i64 0, 37) %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 3 uses
  store i64 %1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 6 uses
  store ptr %2, ptr %i.h, align 8
  switch i64 %1, label %.thread [
    i64 4, label %bb.b
    i64 18, label %bb.c
    i64 22, label %bb.d
    i64 26, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = invoke i16 @_RNvMs5_NtNtCsjJXvCMGntp8_6syntax3ast8expr_extNtNtNtB7_9generated5nodes7BinExpr7op_kind(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h)
          to label %.noexc unwind label %.body.thread43 ; 5 uses

.noexc:                                           ; preds = %bb.b
  %i.j = and i16 %i.i, 255
  %.not88.i = icmp eq i16 %i.j, 255
  br i1 %.not88.i, label %.thread, label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1227
  invoke void @_RNvMsa_NtNtCsjJXvCMGntp8_6syntax3ast8expr_extNtNtNtB7_9generated5nodes7Literal4kind(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h)
          to label %.noexc9 unwind label %.body.thread43

.noexc9:                                          ; preds = %bb.c
  %i.k = load i8, ptr %i.d, align 8, !range !1228, !noalias !1227, !noundef !4
  %i.l = icmp eq i8 %i.k, 7
  br i1 %i.l, label %.invoke.i, label %bb.t

bb.d:                                             ; preds = %bb.a
  %i.m = invoke fastcc { i64, ptr } @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists(ptr nonnull %2) #37
          to label %.noexc10 unwind label %.body.thread43 ; 2 uses

.noexc10:                                         ; preds = %bb.d
  %i.n = extractvalue { i64, ptr } %i.m, 0        ; 2 uses
  %.not77.i = icmp eq i64 %i.n, -1
  br i1 %.not77.i, label %.thread, label %bb.u

bb.e:                                             ; preds = %bb.a
  %i.o = invoke noundef i8 @_RNvMs4_NtNtCsjJXvCMGntp8_6syntax3ast8expr_extNtNtNtB7_9generated5nodes10PrefixExpr7op_kind(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h)
          to label %.noexc11 unwind label %.body.thread43

.noexc11:                                         ; preds = %bb.e
  %cond.i = icmp eq i8 %i.o, 1
  br i1 %cond.i, label %bb.az, label %.thread

bb.f:                                             ; preds = %.noexc
  %.sroa.07.0.extract.trunc.i = trunc i16 %i.i to i8 ; 3 uses
  %i.p = icmp ne i8 %.sroa.07.0.extract.trunc.i, 5
  call void @llvm.assume(i1 %i.p)
  %i.q = icmp ult i8 %.sroa.07.0.extract.trunc.i, 3
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.not89.i = icmp eq i8 %.sroa.07.0.extract.trunc.i, 2
  br i1 %.not89.i, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.r = invoke fastcc { i64, ptr } @_RNvXsvy_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_4ExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g) #37
          to label %.noexc12 unwind label %.body.thread43 ; 2 uses

.noexc12:                                         ; preds = %bb.h
  %i.s = extractvalue { i64, ptr } %i.r, 0
  %i.t = extractvalue { i64, ptr } %i.r, 1
  %i.u = invoke noundef nonnull ptr @_RNvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB4_13SyntaxFactory10expr_paren(ptr noundef nonnull align 8 %0, i64 noundef %i.s, ptr noundef %i.t)
          to label %.noexc13 unwind label %.body.thread43

.noexc13:                                         ; preds = %.noexc12
  %i.v = invoke noundef nonnull ptr @_RNvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB4_13SyntaxFactory11expr_prefix(ptr noundef nonnull align 8 %0, i16 noundef 34, i64 noundef 24, ptr noundef nonnull %i.u)
          to label %.thread50 unwind label %.body.thread43

bb.i:                                             ; preds = %bb.g
  %i.w = trunc i16 %i.i to i1
  %.lobit.i = and i16 %i.i, 256                   ; 2 uses
  br i1 %i.w, label %bb.l, label %bb.m

bb.j:                                             ; preds = %bb.g
  %i.x = and i16 %i.i, 258
  %.sroa.016.0.insert.insert.i = xor i16 %i.x, 256
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %bb.l, %bb.j
  %.sroa.012.0.i = phi i16 [ %.sroa.421.0.insert.ext.i, %bb.l ], [ %.sroa.018.0.insert.insert.i, %bb.m ], [ %.sroa.016.0.insert.insert.i, %bb.j ]
  %i.y = invoke { i64, ptr } @_RNvMs5_NtNtCsjJXvCMGntp8_6syntax3ast8expr_extNtNtNtB7_9generated5nodes7BinExpr3lhs(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h)
          to label %.noexc15 unwind label %.body.thread43 ; 2 uses

.noexc15:                                         ; preds = %bb.k
  %i.z = extractvalue { i64, ptr } %i.y, 0        ; 2 uses
  %.not91.i = icmp eq i64 %i.z, -1
  br i1 %.not91.i, label %.thread, label %bb.n

bb.l:                                             ; preds = %bb.i
  %.sroa.421.0.insert.ext.i = xor i16 %.lobit.i, 256
  br label %bb.k

bb.m:                                             ; preds = %bb.i
  %.sroa.018.0.insert.insert.i = xor i16 %.lobit.i, 257
  br label %bb.k

bb.n:                                             ; preds = %.noexc15
  %i.aa = extractvalue { i64, ptr } %i.y, 1       ; 7 uses
  %i.ab = invoke { i64, ptr } @_RNvMs5_NtNtCsjJXvCMGntp8_6syntax3ast8expr_extNtNtNtB7_9generated5nodes7BinExpr3rhs(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h)
          to label %bb.p unwind label %bb.o       ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 48 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !noundef !4
  %i.af = add i32 %i.ae, -1                       ; 2 uses
  store i32 %i.af, ptr %i.ad, align 4
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i, label %.body.thread

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i: ; preds = %bb.o
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.aa) #39
          to label %.body.thread unwind label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.ah = extractvalue { i64, ptr } %i.ab, 0      ; 2 uses
  %.not94.i = icmp eq i64 %i.ah, -1
  br i1 %.not94.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ai = extractvalue { i64, ptr } %i.ab, 1
  %i.aj = invoke noundef nonnull ptr @_RNvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB4_13SyntaxFactory8expr_bin(ptr noundef nonnull align 8 %0, i64 noundef %i.z, ptr noundef %i.aa, i16 %.sroa.012.0.i, i64 noundef %i.ah, ptr noundef %i.ai)
          to label %.thread50 unwind label %.body.thread43

bb.r:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 48 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !noundef !4
  %i.am = add i32 %i.al, -1                       ; 2 uses
  store i32 %i.am, ptr %i.ak, align 4
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i129.i.invoke, label %.thread

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i129.i.invoke: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsiU5vK8fN4ZC_11ide_assists.exit135.i, %bb.r
  %i.ao = phi ptr [ %i.aa, %bb.r ], [ %i.bb, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsiU5vK8fN4ZC_11ide_assists.exit135.i ]
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ao) #39
          to label %.thread unwind label %.body.thread43

bb.s:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i157.i, %bb.be, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i149.i, %bb.ax, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i144.i, %bb.x, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38
  unreachable

.invoke.i:                                        ; preds = %.noexc9
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !range !16, !noalias !1227, !noundef !4
  %i.as = trunc nuw i8 %i.ar to i1                ; 2 uses
  %..i = select i1 %i.as, ptr @73, ptr @72
  %.208.i = select i1 %i.as, i64 5, i64 4
  %i.at = invoke noundef nonnull ptr @_RNvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB4_13SyntaxFactory12expr_literal(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %..i, i64 noundef %.208.i)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast8expr_ext11LiteralKindECsiU5vK8fN4ZC_11ide_assists.exit.i unwind label %.body.thread43

bb.t:                                             ; preds = %.noexc9
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val122.i = load ptr, ptr %i.au, align 8, !noalias !1227, !nonnull !4, !noundef !4 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.val122.i, i64 48 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !noundef !4
  %i.ax = add i32 %i.aw, -1                       ; 2 uses
  store i32 %i.ax, ptr %i.av, align 4
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast8expr_ext11LiteralKindECsiU5vK8fN4ZC_11ide_assists.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i: ; preds = %bb.t
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val122.i) #39
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast8expr_ext11LiteralKindECsiU5vK8fN4ZC_11ide_assists.exit.i unwind label %.body.thread43

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast8expr_ext11LiteralKindECsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i, %bb.t, %.invoke.i
  %.sroa.0.2178.i = phi i64 [ -1, %bb.t ], [ 18, %.invoke.i ], [ -1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i ] ; 2 uses
  %.sroa.19.2177.i = phi ptr [ undef, %bb.t ], [ %i.at, %.invoke.i ], [ undef, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1227
  %i.az = insertvalue { i64, ptr } poison, i64 %.sroa.0.2178.i, 0
  %i.ba = insertvalue { i64, ptr } %i.az, ptr %.sroa.19.2177.i, 1
  br label %bb.bj

bb.u:                                             ; preds = %.noexc10
  %i.bb = extractvalue { i64, ptr } %i.m, 1       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1227
  %i.bc = invoke fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes7NameRefECsiU5vK8fN4ZC_11ide_assists(ptr nonnull %2)
          to label %bb.v unwind label %.split.thread.i, !noalias !1227 ; 8 uses

.noexc133.i:                                      ; preds = %bb.x, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7ArgListECsiU5vK8fN4ZC_11ide_assists.exit148.i
  br i1 %.sroa.066.2.i, label %bb.ay, label %.body.thread

.split.thread.i:                                  ; preds = %bb.ab, %bb.u
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.v:                                             ; preds = %bb.u
  %.not78.i = icmp eq ptr %i.bc, null
  br i1 %.not78.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsiU5vK8fN4ZC_11ide_assists.exit135.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  store ptr %i.bc, ptr %i.f, align 8, !noalias !1227
  %i.bd = invoke fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes7ArgListECsiU5vK8fN4ZC_11ide_assists(ptr nonnull %2)
          to label %bb.z unwind label %bb.y, !noalias !1227 ; 6 uses

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsiU5vK8fN4ZC_11ide_assists.exit135.i: ; preds = %bb.ab, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7ArgListECsiU5vK8fN4ZC_11ide_assists.exit.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1227
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bb) ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 48 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !noalias !1227, !noundef !4
  %i.bg = add i32 %i.bf, -1                       ; 2 uses
  store i32 %i.bg, ptr %i.be, align 4, !noalias !1227
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i129.i.invoke, label %.thread

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7ArgListECsiU5vK8fN4ZC_11ide_assists.exit148.i: ; preds = %bb.ax, %bb.aw, %bb.ar, %bb.y
  %.sroa.066.2.i = phi i1 [ false, %bb.ar ], [ true, %bb.y ], [ %.sroa.066.3.ph.i, %bb.ax ], [ %.sroa.066.3.ph.i, %bb.aw ]
  %.pn83.pn.i = phi { ptr, i32 } [ %i.eg, %bb.ar ], [ %i.bm, %bb.y ], [ %.pn83.ph.i, %bb.ax ], [ %.pn83.ph.i, %bb.aw ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 48 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !noalias !1227, !noundef !4
  %i.bk = add i32 %i.bj, -1                       ; 2 uses
  store i32 %i.bk, ptr %i.bi, align 4, !noalias !1227
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.x, label %.noexc133.i

bb.x:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7ArgListECsiU5vK8fN4ZC_11ide_assists.exit148.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bc) #39
          to label %.noexc133.i unwind label %bb.s, !noalias !1227

bb.y:                                             ; preds = %bb.an, %bb.w
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7ArgListECsiU5vK8fN4ZC_11ide_assists.exit148.i

bb.z:                                             ; preds = %bb.w
  %.not79.i = icmp eq ptr %i.bd, null
  br i1 %.not79.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7ArgListECsiU5vK8fN4ZC_11ide_assists.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1227
  invoke void @_RNvMs0_NtNtCsjJXvCMGntp8_6syntax3ast8node_extNtNtNtB7_9generated5nodes7NameRef4text(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f)
          to label %bb.ad unwind label %bb.ac, !noalias !1227

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7ArgListECsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %bb.an, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsjJXvCMGntp8_6syntax10token_text9TokenTextECsiU5vK8fN4ZC_11ide_assists.exit.i, %bb.z
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 48 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !noalias !1227, !noundef !4
  %i.bp = add i32 %i.bo, -1                       ; 2 uses
  store i32 %i.bp, ptr %i.bn, align 4, !noalias !1227
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.ab, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsiU5vK8fN4ZC_11ide_assists.exit135.i

bb.ab:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7ArgListECsiU5vK8fN4ZC_11ide_assists.exit.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bc) #39
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsiU5vK8fN4ZC_11ide_assists.exit135.i unwind label %.split.thread.i, !noalias !1227

bb.ac:                                            ; preds = %bb.aq, %bb.am, %bb.aa
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.ad:                                            ; preds = %bb.aa
  %i.bs = load ptr, ptr %i.e, align 8, !noalias !1227, !noundef !4 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, null                 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br i1 %i.bt, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.bv = load ptr, ptr %i.bu, align 8, !noalias !1227, !nonnull !4, !noundef !4 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !noalias !1227, !noundef !4
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.bz = load i64, ptr %i.bu, align 8, !noalias !1227, !noundef !4 ; 2 uses
  %i.ca = inttoptr i64 %i.bz to ptr
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.val116.i = phi ptr [ %i.bv, %bb.ae ], [ %i.ca, %bb.af ] ; 6 uses
  %.sroa.651.0.i = phi i64 [ %i.bx, %bb.ae ], [ %i.bz, %bb.af ]
end_hunk_0
