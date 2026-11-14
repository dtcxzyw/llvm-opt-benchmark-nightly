Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_assists-698f35cb73900ae6.ide_assists.dc31bb520690ed66-cgu.14?download=true
inline.NumInlined: 4397
inline.NumDeleted: 1591
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_armsNtB2_8ArmsEdit24add_comma_after_last_arm:bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 3 uses
  %.sroa.4.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx36, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !nonnull !12, !noundef !12 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 48 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !noundef !12 ; 2 uses
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %.invoke, label %_RNvXso_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsiU5vK8fN4ZC_11ide_assists.exit, !prof !14

bb.i:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit

.invoke:                                          ; preds = %bb.h
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #34
          to label %.cont unwind label %bb.j

.cont:                                            ; preds = %.invoke
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsjJXvCMGntp8_6syntax13syntax_editor8PositionECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %bb.o, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i27, %bb.j
  %.pn = phi { ptr, i32 } [ %i.al, %bb.o ], [ %i.w, %bb.j ], [ %i.al, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i27 ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops5range14RangeInclusiveINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1g_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB25_11SyntaxTokenB2r_EEEECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(40) %i.b) #29
          to label %common.resume unwind label %bb.p

_RNvXso_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %bb.h
  %i.u = add nuw i32 %i.s, 1
  store i32 %i.u, ptr %i.r, align 4
  store i64 %.sroa.4.0.copyload, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.5.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %i.v = invoke noundef nonnull ptr @_RNvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB4_13SyntaxFactory5token(ptr noundef nonnull align 8 %2, i16 noundef 4)
          to label %bb.k unwind label %bb.o

bb.j:                                             ; preds = %.invoke, %bb.k
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsjJXvCMGntp8_6syntax13syntax_editor8PositionECsiU5vK8fN4ZC_11ide_assists.exit

bb.k:                                             ; preds = %_RNvXso_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsiU5vK8fN4ZC_11ide_assists.exit
  invoke void @_RINvMNtCsjJXvCMGntp8_6syntax13syntax_editorNtB3_12SyntaxEditor6insertINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtB5_11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists(ptr noundef nonnull align 8 %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.v)
          to label %bb.l unwind label %bb.j

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload) ]
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 48 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !noalias !926, !noundef !12
  %i.z = add i32 %i.y, -1                         ; 2 uses
  store i32 %i.z, ptr %i.x, align 4, !noalias !926
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECsiU5vK8fN4ZC_11ide_assists.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i: ; preds = %bb.l
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.3.0.copyload) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECsiU5vK8fN4ZC_11ide_assists.exit.i unwind label %bb.m, !noalias !926

bb.m:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 48 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !noalias !926, !noundef !12
  %i.ae = add i32 %i.ad, -1                       ; 2 uses
  store i32 %i.ae, ptr %i.ac, align 4, !noalias !926
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i6.i, label %common.resume

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i6.i: ; preds = %bb.m
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.5.0.copyload) #32
          to label %common.resume unwind label %bb.n, !noalias !926

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i, %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 48 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !noalias !926, !noundef !12
  %i.ai = add i32 %i.ah, -1                       ; 2 uses
  store i32 %i.ai, ptr %i.ag, align 4, !noalias !926
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i9.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops5range14RangeInclusiveINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1g_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB25_11SyntaxTokenB2r_EEEECsiU5vK8fN4ZC_11ide_assists.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i9.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECsiU5vK8fN4ZC_11ide_assists.exit.i
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.5.0.copyload) #32, !noalias !926
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops5range14RangeInclusiveINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1g_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB25_11SyntaxTokenB2r_EEEECsiU5vK8fN4ZC_11ide_assists.exit

bb.n:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i6.i
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30, !noalias !926
  unreachable

common.resume:                                    ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsjJXvCMGntp8_6syntax13syntax_editor8PositionECsiU5vK8fN4ZC_11ide_assists.exit, %bb.m, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i6.i
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %bb.m ], [ %i.ab, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i6.i ], [ %.pn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsjJXvCMGntp8_6syntax13syntax_editor8PositionECsiU5vK8fN4ZC_11ide_assists.exit ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops5range14RangeInclusiveINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1g_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB25_11SyntaxTokenB2r_EEEECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECsiU5vK8fN4ZC_11ide_assists.exit.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit

bb.o:                                             ; preds = %_RNvXso_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsiU5vK8fN4ZC_11ide_assists.exit
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 48 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !noundef !12
  %i.ao = add i32 %i.an, -1                       ; 2 uses
  store i32 %i.ao, ptr %i.am, align 4
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i27, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsjJXvCMGntp8_6syntax13syntax_editor8PositionECsiU5vK8fN4ZC_11ide_assists.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i27: ; preds = %bb.o
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.5.0.copyload) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsjJXvCMGntp8_6syntax13syntax_editor8PositionECsiU5vK8fN4ZC_11ide_assists.exit unwind label %bb.p

bb.p:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i27, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsjJXvCMGntp8_6syntax13syntax_editor8PositionECsiU5vK8fN4ZC_11ide_assists.exit
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_traitNtB2_5Field3new(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 8 %1, ptr %.0.val, ptr %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality !guid !948 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [12 x i8], align 4                ; 4 uses
  %i.c = alloca [8 x i8], align 4                 ; 5 uses
  %i.d = alloca [1 x i8], align 1                 ; 3 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [1 x i8], align 1                 ; 3 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [12 x i8], align 4                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [20 x i8], align 1                ; 3 uses
  %i.n = alloca [32 x i8], align 8                ; 8 uses
  %i.o = alloca [32 x i8], align 8                ; 8 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [16 x i8], align 4                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 11 uses
  %i.s = alloca [24 x i8], align 8                ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 9 uses
  %i.w = alloca [8 x i8], align 8                 ; 9 uses
  %i.x = alloca [24 x i8], align 8                ; 8 uses
  %i.y = alloca [8 x i8], align 8                 ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 9 uses
  %i.aa = alloca [8 x i8], align 8                ; 5 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [16 x i8], align 8               ; 6 uses
  %i.ad = alloca [24 x i8], align 8               ; 9 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !12, !align !24, !noundef !12 ; 5 uses
  %i.ag = invoke noundef i32 @_RNvMNtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB2_13AssistContext11vfs_file_id(ptr noundef nonnull align 8 %1)
          to label %bb.c unwind label %bb.b

.body199:                                         ; preds = %bb.cq, %bb.b, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECsiU5vK8fN4ZC_11ide_assists.exit
  %.sroa.050.0 = phi i8 [ %.sroa.050.3, %bb.cq ], [ %.sroa.050.3, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECsiU5vK8fN4ZC_11ide_assists.exit ], [ %.sroa.050.1, %bb.b ]
  %.sroa.048.0 = phi i8 [ %.sroa.048.2, %bb.cq ], [ %.sroa.048.2, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECsiU5vK8fN4ZC_11ide_assists.exit ], [ %.sroa.048.1, %bb.b ]
  %.pn101.pn.pn = phi { ptr, i32 } [ %i.hc, %bb.cq ], [ %.pn97.pn.pn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECsiU5vK8fN4ZC_11ide_assists.exit ], [ %i.ai, %bb.b ] ; 5 uses
  %i.ah = icmp eq ptr %.0.val, null
  br i1 %i.ah, label %.thread, label %bb.dt

bb.b:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsiU5vK8fN4ZC_11ide_assists.exit.i198, %bb.cj, %bb.ci, %bb.ap, %bb.z, %bb.k, %bb.e, %bb.c, %bb.a
  %.sroa.050.1 = phi i8 [ %.sroa.050.3, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsiU5vK8fN4ZC_11ide_assists.exit.i198 ], [ 0, %bb.cj ], [ 0, %bb.ci ], [ 1, %bb.ap ], [ 1, %bb.z ], [ 1, %bb.k ], [ 1, %bb.e ], [ 1, %bb.c ], [ 1, %bb.a ]
  %.sroa.048.1 = phi i8 [ %.sroa.048.2, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsiU5vK8fN4ZC_11ide_assists.exit.i198 ], [ 1, %bb.cj ], [ 1, %bb.ci ], [ 0, %bb.ap ], [ 0, %bb.z ], [ 1, %bb.k ], [ 1, %bb.e ], [ 1, %bb.c ], [ 1, %bb.a ]
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body199

bb.c:                                             ; preds = %bb.a
  %i.aj = invoke { i32, i32 } @_RINvMs5_NtCs8Xq8PKFYOms_3hir9semanticsINtB6_9SemanticsNtCs6oosyzwIepl_6ide_db12RootDatabaseE18file_to_module_defNtCs4sl5YdnrCxp_3vfs6FileIdECsiU5vK8fN4ZC_11ide_assists(ptr noundef nonnull align 8 %i.ae, i32 noundef %i.ag)
          to label %bb.d unwind label %bb.b       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.ak = extractvalue { i32, i32 } %i.aj, 0      ; 3 uses
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = extractvalue { i32, i32 } %i.aj, 1      ; 2 uses
  %i.am = load ptr, ptr %i.ae, align 8, !nonnull !12, !align !24, !noundef !12
  %i.an = invoke { i32, i32 } @_RNvMs4_Cs8Xq8PKFYOms_3hirNtB5_6Module5krate(i32 noundef %i.ak, i32 noundef %i.al, ptr noundef nonnull %i.am, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @15)
          to label %bb.k unwind label %bb.b       ; 2 uses

bb.f:                                             ; preds = %bb.d
  store i64 -1, ptr %0, align 8
  %.not75 = icmp eq ptr %.0.val, null
  br i1 %.not75, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.cs, %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.val, i64 48 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !noundef !12
  %i.aq = add i32 %i.ap, -1                       ; 2 uses
  store i32 %i.aq, ptr %i.ao, align 4
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.h, label %bb.cv

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.0.val) #32
          to label %bb.cv unwind label %bb.cu

bb.i:                                             ; preds = %bb.ct, %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.as = getelementptr inbounds nuw i8, ptr %.8.val, i64 48 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !noundef !12
  %i.au = add i32 %i.at, -1                       ; 2 uses
  store i32 %i.au, ptr %i.as, align 4
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.j, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldECsiU5vK8fN4ZC_11ide_assists.exit

bb.j:                                             ; preds = %bb.i
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.8.val) #32
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldECsiU5vK8fN4ZC_11ide_assists.exit

bb.k:                                             ; preds = %bb.e
  %i.aw = extractvalue { i32, i32 } %i.an, 0
  %i.ax = extractvalue { i32, i32 } %i.an, 1
  %i.ay = load ptr, ptr %i.ae, align 8, !nonnull !12, !align !24, !noundef !12
  %i.az = invoke noundef i8 @_RNvMs_Cs8Xq8PKFYOms_3hirNtB4_5Crate7edition(i32 noundef %i.aw, i32 noundef %i.ax, ptr noundef nonnull %i.ay, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @15)
          to label %bb.l unwind label %bb.b

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %.not76 = icmp eq ptr %.0.val, null             ; 2 uses
  br i1 %.not76, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr %.0.val, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.8.val, i64 48 ; 8 uses
  %i.bb = load i32, ptr %i.ba, align 4, !noundef !12 ; 2 uses
  %i.bc = icmp eq i32 %i.bb, -1
  br i1 %i.bc, label %bb.o, label %bb.n, !prof !14

bb.n:                                             ; preds = %bb.m
  %i.bd = add nuw i32 %i.bb, 1
  store i32 %i.bd, ptr %i.ba, align 4
  %i.be = invoke noundef ptr @_RNvMsi_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18SyntaxNodeChildren3new(ptr noundef nonnull %.8.val)
          to label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit unwind label %bb.bq

bb.o:                                             ; preds = %bb.m
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #34
          to label %.noexc137 unwind label %bb.bq

.noexc137:                                        ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.bf = invoke fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes4NameECsiU5vK8fN4ZC_11ide_assists(ptr nonnull %.8.val)
          to label %bb.r unwind label %bb.ad      ; 6 uses

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %bb.ar, %bb.al, %bb.ad, %.body, %bb.aa, %bb.au
  %.pn.pn = phi { ptr, i32 } [ %i.df, %bb.au ], [ %i.cb, %bb.ad ], [ %i.da, %bb.ar ], [ %i.bn, %bb.aa ], [ %i.bn, %.body ], [ %i.ct, %bb.al ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.8.val, i64 48 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !noundef !12
  %i.bi = add i32 %i.bh, -1                       ; 2 uses
  store i32 %i.bi, ptr %i.bg, align 4
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.q, label %bb.cw

bb.q:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameECsiU5vK8fN4ZC_11ide_assists.exit
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.8.val) #32
          to label %bb.cw unwind label %bb.at

bb.r:                                             ; preds = %bb.p
  %.not77 = icmp eq ptr %i.bf, null
  br i1 %.not77, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %i.bf, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !949
  store i64 0, ptr %i.h, align 8, !noalias !949
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !949
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !949
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !949
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 1610612768, ptr %i.bk, align 8, !noalias !949
  store ptr %i.h, ptr %i.g, align 8, !noalias !949
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @27, ptr %i.bl, align 8, !noalias !949
  %i.bm = invoke noundef zeroext i1 @_RNvXstL_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_4NameNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.u unwind label %bb.t, !noalias !950

bb.t:                                             ; preds = %bb.v, %bb.s
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #29
          to label %.body unwind label %bb.w, !noalias !950

bb.u:                                             ; preds = %bb.s
  br i1 %i.bm, label %bb.v, label %bb.ab, !prof !14

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @169, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #28
          to label %.noexc.i unwind label %bb.t, !noalias !950

.noexc.i:                                         ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.t
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30, !noalias !950
  unreachable

bb.x:                                             ; preds = %bb.r
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.y

bb.y:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.bp = getelementptr inbounds nuw i8, ptr %.8.val, i64 48 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !noundef !12
  %i.br = add i32 %i.bq, -1                       ; 2 uses
  store i32 %i.br, ptr %i.bp, align 4
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.z, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldECsiU5vK8fN4ZC_11ide_assists.exit141

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.8.val) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldECsiU5vK8fN4ZC_11ide_assists.exit141 unwind label %bb.b

.body:                                            ; preds = %bb.t
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bf, i64 48 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !noundef !12
  %i.bv = add i32 %i.bu, -1                       ; 2 uses
  store i32 %i.bv, ptr %i.bt, align 4
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.aa, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameECsiU5vK8fN4ZC_11ide_assists.exit

bb.aa:                                            ; preds = %.body
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bf) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameECsiU5vK8fN4ZC_11ide_assists.exit unwind label %bb.at

bb.ab:                                            ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !949
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !949
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bf, i64 48 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !noundef !12
  %i.bz = add i32 %i.by, -1                       ; 2 uses
  store i32 %i.bz, ptr %i.bx, align 4
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.ac, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameECsiU5vK8fN4ZC_11ide_assists.exit144

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bf) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameECsiU5vK8fN4ZC_11ide_assists.exit144 unwind label %bb.au

bb.ad:                                            ; preds = %bb.p, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsiU5vK8fN4ZC_11ide_assists.exit.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameECsiU5vK8fN4ZC_11ide_assists.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameECsiU5vK8fN4ZC_11ide_assists.exit144: ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %.8.val, i64 60
  %i.cd = load i8, ptr %i.cc, align 4, !range !13, !noundef !12
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.af, label %bb.ae, !prof !14

bb.ae:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameECsiU5vK8fN4ZC_11ide_assists.exit144
  %i.cf = getelementptr inbounds nuw i8, ptr %.8.val, i64 56
  %i.cg = load i32, ptr %i.cf, align 8, !noundef !12
  br label %.noexc145.a

bb.af:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameECsiU5vK8fN4ZC_11ide_assists.exit144
  %i.ch = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %.8.val)
          to label %.noexc145.a unwind label %bb.al

.noexc145.a:                                      ; preds = %bb.af, %bb.ae
  %.sroa.0.0.i = phi i32 [ %i.cg, %bb.ae ], [ %i.ch, %bb.af ] ; 4 uses
  %i.ci = load i64, ptr %.8.val, align 8, !range !15, !noundef !12
  %i.cj = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.ck = trunc nuw i64 %i.ci to i1
  %i.cl = load ptr, ptr %i.cj, align 8, !nonnull !12, !noundef !12 ; 2 uses
  br i1 %i.ck, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %.noexc145.a
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !noundef !12 ; 2 uses
  %i.co = icmp ugt i64 %i.cn, 4294967295
  %i.cp = shl nuw i64 %i.cn, 32
  %.sroa.09.0.insert.insert.i.i = select i1 %i.co, i64 513, i64 %i.cp ; 2 uses
  %i.cq = trunc i64 %.sroa.09.0.insert.insert.i.i to i1
  br i1 %i.cq, label %bb.ah, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i, !prof !14

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 2, ptr %i.f, align 1
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 43, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @174) #28
          to label %.noexc146.a unwind label %bb.al

.noexc146.a:                                      ; preds = %bb.ah
  unreachable

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i: ; preds = %bb.ag
  %.sroa.6.0.extract.shift.i.i.i = lshr i64 %.sroa.09.0.insert.insert.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i to i32
  br label %bb.aj

bb.ai:                                            ; preds = %.noexc145.a
  %i.cr = load i32, ptr %i.cl, align 8, !noundef !12
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i
  %.sroa.02.0.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i ], [ %i.cr, %bb.ai ]
  %i.cs = add i32 %.sroa.02.0.i, %.sroa.0.0.i     ; 3 uses
  %.not.i = icmp ugt i32 %.sroa.0.0.i, %i.cs
  br i1 %.not.i, label %bb.ak, label %bb.am, !prof !14

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #28
          to label %.noexc147 unwind label %bb.al

.noexc147:                                        ; preds = %bb.ak
  unreachable

bb.al:                                            ; preds = %bb.ak, %bb.ah, %bb.af, %bb.am
  %i.ct = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z) #29
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameECsiU5vK8fN4ZC_11ide_assists.exit unwind label %bb.at

bb.am:                                            ; preds = %bb.aj
  %i.cu = invoke fastcc { i64, ptr } @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes4TypeECsiU5vK8fN4ZC_11ide_assists(ptr nonnull %.8.val)
          to label %bb.an unwind label %bb.al     ; 3 uses

bb.an:                                            ; preds = %bb.am
  %i.cv = extractvalue { i64, ptr } %i.cu, 0      ; 3 uses
  %.not78 = icmp eq i64 %i.cv, -1
  br i1 %.not78, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.cw = getelementptr inbounds nuw i8, ptr %.8.val, i64 48 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 8, !noundef !12
  %i.cy = add i32 %i.cx, -1                       ; 2 uses
  store i32 %i.cy, ptr %i.cw, align 8
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %bb.ap, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldECsiU5vK8fN4ZC_11ide_assists.exit149

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.8.val) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldECsiU5vK8fN4ZC_11ide_assists.exit149 unwind label %bb.b

bb.aq:                                            ; preds = %bb.an
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsiU5vK8fN4ZC_11ide_assists.exit.i unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.da = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameECsiU5vK8fN4ZC_11ide_assists.exit unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %bb.aq
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit unwind label %bb.ad

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsiU5vK8fN4ZC_11ide_assists.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.y

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldECsiU5vK8fN4ZC_11ide_assists.exit141: ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldECsiU5vK8fN4ZC_11ide_assists.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %3, %bb.cv, %bb.cs, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldECsiU5vK8fN4ZC_11ide_assists.exit190, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldECsiU5vK8fN4ZC_11ide_assists.exit141, %bb.j, %bb.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir4ImplEECsiU5vK8fN4ZC_11ide_assists.exit214, %bb.ct
  ret void

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldECsiU5vK8fN4ZC_11ide_assists.exit149: ; preds = %bb.ap, %bb.ao, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldECsiU5vK8fN4ZC_11ide_assists.exit192
  %.sroa.050.3 = phi i8 [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldECsiU5vK8fN4ZC_11ide_assists.exit192 ], [ 1, %bb.ao ], [ 1, %bb.ap ] ; 4 uses
  %.sroa.048.2 = phi i8 [ 1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldECsiU5vK8fN4ZC_11ide_assists.exit192 ], [ 0, %bb.ao ], [ 0, %bb.ap ] ; 4 uses
  %.pn87 = phi { i64, ptr } [ %i.fv, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldECsiU5vK8fN4ZC_11ide_assists.exit192 ], [ %i.cu, %bb.ao ], [ %i.cu, %bb.ap ]
  %.sroa.023.0 = phi i64 [ %i.fw, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldECsiU5vK8fN4ZC_11ide_assists.exit192 ], [ %i.cv, %bb.ao ], [ %i.cv, %bb.ap ] ; 2 uses
  %.sroa.0.0.i168.pn = phi i32 [ %.sroa.0.0.i168, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldECsiU5vK8fN4ZC_11ide_assists.exit192 ], [ %.sroa.0.0.i, %bb.ao ], [ %.sroa.0.0.i, %bb.ap ]
  %.pn74 = phi i32 [ %i.ft, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldECsiU5vK8fN4ZC_11ide_assists.exit192 ], [ %i.cs, %bb.ao ], [ %i.cs, %bb.ap ]
  %.sroa.324.0 = extractvalue { i64, ptr } %.pn87, 1 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store i64 %.sroa.023.0, ptr %i.ac, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %.sroa.324.0, ptr %i.dc, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl12resolve_type(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.u, ptr noundef nonnull align 8 %i.dd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ac)
          to label %bb.cm unwind label %bb.cl

bb.at:                                            ; preds = %.invoke, %bb.dw, %bb.dj, %bb.df, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14TupleFieldListECsiU5vK8fN4ZC_11ide_assists.exit205, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i, %bb.cg, %bb.bc, %bb.av, %bb.aa, %bb.q, %bb.ds, %bb.dr, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5TraitEECsiU5vK8fN4ZC_11ide_assists.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECsiU5vK8fN4ZC_11ide_assists.exit, %bb.by, %bb.au, %bb.al
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.au:                                            ; preds = %bb.ac
  %i.df = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab) #29
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameECsiU5vK8fN4ZC_11ide_assists.exit unwind label %bb.at

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBE_9generated5nodes10TupleFieldEECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %bb.ce, %bb.by, %bb.bq, %bb.bb, %.body158, %bb.bc, %bb.ds
  %.pn101 = phi { ptr, i32 } [ %i.ga, %bb.ce ], [ %i.jw, %bb.ds ], [ %i.fc, %bb.bq ], [ %eh.lpad-body159, %bb.bc ], [ %eh.lpad-body159, %.body158 ], [ %eh.lpad-body159, %bb.bb ], [ %i.fu, %bb.by ] ; 2 uses
  %i.dg = load i32, ptr %i.ba, align 4, !noundef !12
  %i.dh = add i32 %i.dg, -1                       ; 2 uses
  store i32 %i.dh, ptr %i.ba, align 4
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.av, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14TupleFieldListECsiU5vK8fN4ZC_11ide_assists.exit

bb.av:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBE_9generated5nodes10TupleFieldEECsiU5vK8fN4ZC_11ide_assists.exit
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.8.val) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14TupleFieldListECsiU5vK8fN4ZC_11ide_assists.exit unwind label %bb.at

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit: ; preds = %bb.n
  store ptr %i.be, ptr %i.w, align 8
  %i.dj = invoke noundef ptr @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes10TupleFieldENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %.noexc156 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc156:                                        ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit
  %.not9.i = icmp eq ptr %i.dj, null
  br i1 %.not9.i, label %.loopexit76, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc156, %.noexc160
  %i.dk = phi ptr [ %i.dx, %.noexc160 ], [ %i.dj, %.noexc156 ] ; 5 uses
  %i.dl = phi i64 [ %i.dy, %.noexc160 ], [ 0, %.noexc156 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !952
  store ptr %i.dk, ptr %i.e, align 8, !noalias !952
  %i.dm = invoke noundef zeroext i1 @_RNvXsjo_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_10TupleFieldNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
          to label %bb.ay unwind label %bb.aw, !noalias !953

bb.aw:                                            ; preds = %.lr.ph.i
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 48 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !noalias !953, !noundef !12
  %i.dq = add i32 %i.dp, -1                       ; 2 uses
  store i32 %i.dq, ptr %i.do, align 4, !noalias !953
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %bb.ax, label %.body158

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.dk) #32
          to label %.body158 unwind label %bb.ba, !noalias !953

bb.ay:                                            ; preds = %.lr.ph.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dk, i64 48 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !noalias !953, !noundef !12
  %i.du = add i32 %i.dt, -1                       ; 2 uses
  store i32 %i.du, ptr %i.ds, align 4, !noalias !953
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %bb.az, label %_RNCNvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_traitNtB4_5Field3new0B8_.exit.i.i

bb.az:                                            ; preds = %bb.ay
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.dk) #32
          to label %_RNCNvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_traitNtB4_5Field3new0B8_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ba:                                            ; preds = %bb.ax
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30, !noalias !953
  unreachable

_RNCNvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_traitNtB4_5Field3new0B8_.exit.i.i: ; preds = %bb.az, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !952
  br i1 %i.dm, label %bb.bd, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8position5checkNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldNCNvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_traitNtB2k_5Field3new0E0B2o_.exit.i

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8position5checkNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldNCNvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_traitNtB2k_5Field3new0E0B2o_.exit.i: ; preds = %_RNCNvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_traitNtB4_5Field3new0B8_.exit.i.i
  %i.dx = invoke noundef ptr @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes10TupleFieldENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %.noexc160 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc160:                                        ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8position5checkNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldNCNvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_traitNtB2k_5Field3new0E0B2o_.exit.i
  %i.dy = add i64 %i.dl, 1
  %.not.i154 = icmp eq ptr %i.dx, null
  br i1 %.not.i154, label %.loopexit76, label %.lr.ph.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8position5checkNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldNCNvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_traitNtB2k_5Field3new0E0B2o_.exit.i, %bb.az, %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit, %bb.bk, %bb.bi, %bb.bd
  %lpad.loopexit.split-lp128 = landingpad { ptr, i32 }
          cleanup
  br label %.body158

.body158:                                         ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.aw, %bb.ax
  %eh.lpad-body159 = phi { ptr, i32 } [ %i.dn, %bb.aw ], [ %i.dn, %bb.ax ], [ %lpad.loopexit.split-lp128, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.val133 = load ptr, ptr %i.w, align 8, !noundef !12 ; 3 uses
  %i.dz = icmp eq ptr %.val133, null
  br i1 %i.dz, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBE_9generated5nodes10TupleFieldEECsiU5vK8fN4ZC_11ide_assists.exit, label %bb.bb

bb.bb:                                            ; preds = %.body158
  %i.ea = getelementptr inbounds nuw i8, ptr %.val133, i64 48 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !noundef !12
  %i.ec = add i32 %i.eb, -1                       ; 2 uses
  store i32 %i.ec, ptr %i.ea, align 4
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %bb.bc, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBE_9generated5nodes10TupleFieldEECsiU5vK8fN4ZC_11ide_assists.exit

bb.bc:                                            ; preds = %bb.bb
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val133) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBE_9generated5nodes10TupleFieldEECsiU5vK8fN4ZC_11ide_assists.exit unwind label %bb.at

bb.bd:                                            ; preds = %_RNCNvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_traitNtB4_5Field3new0B8_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ee = invoke { ptr, i64 } @_RNvMsk_NtNtNtCshzWfHUSfYae_4core3fmt3num3impj4__fmt(i64 noundef %i.dl, ptr noalias nofree noundef nonnull %i.m, i64 noundef 20)
          to label %bb.bi unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.loopexit76:                                      ; preds = %.noexc160, %.noexc156
  store i64 -1, ptr %0, align 8
  %.val132 = load ptr, ptr %i.w, align 8, !noundef !12 ; 3 uses
  %i.ef = icmp eq ptr %.val132, null
  br i1 %i.ef, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBE_9generated5nodes10TupleFieldEECsiU5vK8fN4ZC_11ide_assists.exit163, label %bb.be

bb.be:                                            ; preds = %.loopexit76
  %i.eg = getelementptr inbounds nuw i8, ptr %.val132, i64 48 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !noundef !12
  %i.ei = add i32 %i.eh, -1                       ; 2 uses
  store i32 %i.ei, ptr %i.eg, align 4
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.bf, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBE_9generated5nodes10TupleFieldEECsiU5vK8fN4ZC_11ide_assists.exit163

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val132) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBE_9generated5nodes10TupleFieldEECsiU5vK8fN4ZC_11ide_assists.exit163 unwind label %bb.bq

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBE_9generated5nodes10TupleFieldEECsiU5vK8fN4ZC_11ide_assists.exit163: ; preds = %bb.be, %.loopexit76, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.bg

bb.bg:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit186, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBE_9generated5nodes10TupleFieldEECsiU5vK8fN4ZC_11ide_assists.exit163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.ek = load i32, ptr %i.ba, align 4, !noundef !12
  %i.el = add i32 %i.ek, -1                       ; 2 uses
  store i32 %i.el, ptr %i.ba, align 4
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %bb.bh, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14TupleFieldListECsiU5vK8fN4ZC_11ide_assists.exit165

bb.bh:                                            ; preds = %bb.bg
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.8.val) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14TupleFieldListECsiU5vK8fN4ZC_11ide_assists.exit165 unwind label %bb.ch

bb.bi:                                            ; preds = %bb.bd
  %i.en = extractvalue { ptr, i64 } %i.ee, 0
  %i.eo = extractvalue { ptr, i64 } %i.ee, 1      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, i64 noundef %i.eo, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bj:                                            ; preds = %bb.bi
  %i.ep = load i64, ptr %i.l, align 8, !range !15, !noundef !12
  %i.eq = trunc nuw i64 %i.ep to i1
  %i.er = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.es = load i64, ptr %i.er, align 8, !range !32, !noundef !12 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  br i1 %i.eq, label %bb.bk, label %bb.bl, !prof !14

bb.bk:                                            ; preds = %bb.bj
  %i.eu = load i64, ptr %i.et, align 8
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.es, i64 %i.eu) #34
          to label %bb.dq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bl:                                            ; preds = %bb.bj
  %i.ev = load ptr, ptr %i.et, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.ew = icmp ule i64 %i.eo, %i.es
  call void @llvm.assume(i1 %i.ew)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.not82 = icmp eq i64 %i.eo, 0
  br i1 %.not82, label %bb.bm, label %bb.bp

bb.bm:                                            ; preds = %bb.bp, %bb.bl
  store i64 %i.es, ptr %i.x, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.ev, ptr %.sroa.466.0..sroa_idx, align 8
  %.sroa.667.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %i.eo, ptr %.sroa.667.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.val131 = load ptr, ptr %i.w, align 8, !noundef !12 ; 3 uses
  %i.ex = icmp eq ptr %.val131, null
  br i1 %i.ex, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBE_9generated5nodes10TupleFieldEECsiU5vK8fN4ZC_11ide_assists.exit167, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ey = getelementptr inbounds nuw i8, ptr %.val131, i64 48 ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !noundef !12
  %i.fa = add i32 %i.ez, -1                       ; 2 uses
  store i32 %i.fa, ptr %i.ey, align 4
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %bb.bo, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBE_9generated5nodes10TupleFieldEECsiU5vK8fN4ZC_11ide_assists.exit167

bb.bo:                                            ; preds = %bb.bn
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val131) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBE_9generated5nodes10TupleFieldEECsiU5vK8fN4ZC_11ide_assists.exit167 unwind label %bb.ds

bb.bp:                                            ; preds = %bb.bl
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ev, ptr align 1 %i.en, i64 %i.eo, i1 false)
  br label %bb.bm

bb.bq:                                            ; preds = %bb.n, %bb.o, %bb.bf, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsiU5vK8fN4ZC_11ide_assists.exit.i182
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBE_9generated5nodes10TupleFieldEECsiU5vK8fN4ZC_11ide_assists.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBE_9generated5nodes10TupleFieldEECsiU5vK8fN4ZC_11ide_assists.exit167: ; preds = %bb.bn, %bb.bm, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  %i.fd = getelementptr inbounds nuw i8, ptr %.0.val, i64 60
  %i.fe = load i8, ptr %i.fd, align 4, !range !13, !noundef !12
  %i.ff = trunc nuw i8 %i.fe to i1
  br i1 %i.ff, label %bb.bs, label %bb.br, !prof !14

bb.br:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBE_9generated5nodes10TupleFieldEECsiU5vK8fN4ZC_11ide_assists.exit167
  %i.fg = getelementptr inbounds nuw i8, ptr %.0.val, i64 56
  %i.fh = load i32, ptr %i.fg, align 8, !noundef !12
  br label %.noexc175.a

bb.bs:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBE_9generated5nodes10TupleFieldEECsiU5vK8fN4ZC_11ide_assists.exit167
  %i.fi = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %.0.val)
          to label %.noexc175.a unwind label %bb.by

.noexc175.a:                                      ; preds = %bb.bs, %bb.br
  %.sroa.0.0.i168 = phi i32 [ %i.fh, %bb.br ], [ %i.fi, %bb.bs ] ; 3 uses
  %i.fj = load i64, ptr %.0.val, align 8, !range !15, !noundef !12
  %i.fk = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.fl = trunc nuw i64 %i.fj to i1
  %i.fm = load ptr, ptr %i.fk, align 8, !nonnull !12, !noundef !12 ; 2 uses
  br i1 %i.fl, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %.noexc175.a
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fo = load i64, ptr %i.fn, align 8, !noundef !12 ; 2 uses
  %i.fp = icmp ugt i64 %i.fo, 4294967295
  %i.fq = shl nuw i64 %i.fo, 32
  %.sroa.09.0.insert.insert.i.i171 = select i1 %i.fp, i64 513, i64 %i.fq ; 2 uses
  %i.fr = trunc i64 %.sroa.09.0.insert.insert.i.i171 to i1
  br i1 %i.fr, label %bb.bu, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i172, !prof !14

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 2, ptr %i.d, align 1
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @174) #28
          to label %.noexc176.a unwind label %bb.by

.noexc176.a:                                      ; preds = %bb.bu
  unreachable

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i172: ; preds = %bb.bt
  %.sroa.6.0.extract.shift.i.i.i173 = lshr i64 %.sroa.09.0.insert.insert.i.i171, 32
  %.sroa.6.0.extract.trunc.i.i.i174 = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i173 to i32
  br label %bb.bw

bb.bv:                                            ; preds = %.noexc175.a
  %i.fs = load i32, ptr %i.fm, align 8, !noundef !12
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i172
  %.sroa.02.0.i169 = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i174, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i172 ], [ %i.fs, %bb.bv ]
  %i.ft = add i32 %.sroa.02.0.i169, %.sroa.0.0.i168 ; 2 uses
  %.not.i170 = icmp ugt i32 %.sroa.0.0.i168, %i.ft
  br i1 %.not.i170, label %bb.bx, label %bb.bz, !prof !14

bb.bx:                                            ; preds = %bb.bw
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #28
          to label %.noexc177 unwind label %bb.by

.noexc177:                                        ; preds = %bb.bx
  unreachable

bb.by:                                            ; preds = %bb.bx, %bb.bu, %bb.bs, %bb.bz
  %i.fu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v) #29
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBE_9generated5nodes10TupleFieldEECsiU5vK8fN4ZC_11ide_assists.exit unwind label %bb.at

bb.bz:                                            ; preds = %bb.bw
  %i.fv = invoke fastcc { i64, ptr } @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes4TypeECsiU5vK8fN4ZC_11ide_assists(ptr nonnull %.0.val)
          to label %bb.ca unwind label %bb.by     ; 2 uses

bb.ca:                                            ; preds = %bb.bz
  %i.fw = extractvalue { i64, ptr } %i.fv, 0      ; 2 uses
  %.not83 = icmp eq i64 %i.fw, -1
  br i1 %.not83, label %bb.cd, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.fx = load i32, ptr %i.ba, align 4, !noundef !12
  %i.fy = add i32 %i.fx, -1                       ; 2 uses
  store i32 %i.fy, ptr %i.ba, align 4
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %bb.cc, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14TupleFieldListECsiU5vK8fN4ZC_11ide_assists.exit180

bb.cc:                                            ; preds = %bb.cb
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.8.val) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14TupleFieldListECsiU5vK8fN4ZC_11ide_assists.exit180 unwind label %bb.ch

bb.cd:                                            ; preds = %bb.ca
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsiU5vK8fN4ZC_11ide_assists.exit.i182 unwind label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ga = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBE_9generated5nodes10TupleFieldEECsiU5vK8fN4ZC_11ide_assists.exit unwind label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.gb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsiU5vK8fN4ZC_11ide_assists.exit.i182: ; preds = %bb.cd
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit186 unwind label %bb.bq

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit186: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsiU5vK8fN4ZC_11ide_assists.exit.i182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.bg

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14TupleFieldListECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBE_9generated5nodes10TupleFieldEECsiU5vK8fN4ZC_11ide_assists.exit, %bb.av, %bb.ch
  %.pn101.pn = phi { ptr, i32 } [ %i.gg, %bb.ch ], [ %.pn101, %bb.av ], [ %.pn101, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBE_9generated5nodes10TupleFieldEECsiU5vK8fN4ZC_11ide_assists.exit ] ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.0.val, i64 48 ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4, !noundef !12
  %i.ge = add i32 %i.gd, -1                       ; 2 uses
  store i32 %i.ge, ptr %i.gc, align 4
  %i.gf = icmp eq i32 %i.ge, 0
  br i1 %i.gf, label %bb.cg, label %bb.cw

bb.cg:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14TupleFieldListECsiU5vK8fN4ZC_11ide_assists.exit
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.0.val) #32
          to label %bb.cw unwind label %bb.at

bb.ch:                                            ; preds = %bb.cc, %bb.bh
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14TupleFieldListECsiU5vK8fN4ZC_11ide_assists.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14TupleFieldListECsiU5vK8fN4ZC_11ide_assists.exit165: ; preds = %bb.bg, %bb.bh
  %i.gh = getelementptr inbounds nuw i8, ptr %.0.val, i64 48 ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 4, !noundef !12
  %i.gj = add i32 %i.gi, -1                       ; 2 uses
  store i32 %i.gj, ptr %i.gh, align 4
  %i.gk = icmp eq i32 %i.gj, 0
  br i1 %i.gk, label %bb.ci, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldECsiU5vK8fN4ZC_11ide_assists.exit190

bb.ci:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14TupleFieldListECsiU5vK8fN4ZC_11ide_assists.exit165
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.0.val) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldECsiU5vK8fN4ZC_11ide_assists.exit190 unwind label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldECsiU5vK8fN4ZC_11ide_assists.exit190: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14TupleFieldListECsiU5vK8fN4ZC_11ide_assists.exit165, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldECsiU5vK8fN4ZC_11ide_assists.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14TupleFieldListECsiU5vK8fN4ZC_11ide_assists.exit180: ; preds = %bb.cb, %bb.cc
  %i.gl = getelementptr inbounds nuw i8, ptr %.0.val, i64 48 ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 8, !noundef !12
  %i.gn = add i32 %i.gm, -1                       ; 2 uses
  store i32 %i.gn, ptr %i.gl, align 8
  %i.go = icmp eq i32 %i.gn, 0
  br i1 %i.go, label %bb.cj, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldECsiU5vK8fN4ZC_11ide_assists.exit192

bb.cj:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14TupleFieldListECsiU5vK8fN4ZC_11ide_assists.exit180
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.0.val) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldECsiU5vK8fN4ZC_11ide_assists.exit192 unwind label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldECsiU5vK8fN4ZC_11ide_assists.exit192: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14TupleFieldListECsiU5vK8fN4ZC_11ide_assists.exit180, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldECsiU5vK8fN4ZC_11ide_assists.exit149

bb.ck:                                            ; preds = %bb.dr, %bb.cy, %bb.cl
  %.pn97.pn = phi { ptr, i32 } [ %.pn9759, %bb.dr ], [ %.pn95, %bb.cy ], [ %i.gt, %bb.cl ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.324.0) ]
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.324.0, i64 48 ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 4, !noundef !12
  %i.gr = add i32 %i.gq, -1                       ; 2 uses
  store i32 %i.gr, ptr %i.gp, align 4
  %i.gs = icmp eq i32 %i.gr, 0
  br i1 %i.gs, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECsiU5vK8fN4ZC_11ide_assists.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i: ; preds = %bb.ck
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.324.0) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECsiU5vK8fN4ZC_11ide_assists.exit unwind label %bb.at

bb.cl:                                            ; preds = %bb.cn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldECsiU5vK8fN4ZC_11ide_assists.exit149
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.cm:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldECsiU5vK8fN4ZC_11ide_assists.exit149
  %i.gu = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 8, !range !26, !noundef !12
  %.not90 = icmp eq i32 %i.gv, -1
  br i1 %.not90, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %.sroa.068.0.copyload = load ptr, ptr %i.u, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.gw, ptr noundef nonnull align 8 dereferenceable(12) %i.gu, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %.sroa.068.0.copyload, ptr %i.s, align 8
  invoke void @_RNvMs1j_Cs8Xq8PKFYOms_3hirNtB6_4Impl12all_for_type(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noundef nonnull %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @15, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.s)
          to label %bb.cx unwind label %bb.cl

bb.co:                                            ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  store i64 -1, ptr %0, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.324.0) ]
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.324.0, i64 48 ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4, !noundef !12
  %i.gz = add i32 %i.gy, -1                       ; 2 uses
  store i32 %i.gz, ptr %i.gx, align 4
  %i.ha = icmp eq i32 %i.gz, 0
  br i1 %i.ha, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i194, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECsiU5vK8fN4ZC_11ide_assists.exit196

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i194: ; preds = %bb.co
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.324.0) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECsiU5vK8fN4ZC_11ide_assists.exit196 unwind label %bb.cp

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %bb.ck, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i, %bb.cp
  %.pn97.pn.pn = phi { ptr, i32 } [ %i.hb, %bb.cp ], [ %.pn97.pn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i ], [ %.pn97.pn, %bb.ck ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad) #29
          to label %.body199 unwind label %bb.at

bb.cp:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i194
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECsiU5vK8fN4ZC_11ide_assists.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECsiU5vK8fN4ZC_11ide_assists.exit196: ; preds = %bb.co, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsiU5vK8fN4ZC_11ide_assists.exit.i198 unwind label %bb.cq

bb.cq:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECsiU5vK8fN4ZC_11ide_assists.exit196
  %i.hc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.body199 unwind label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.hd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsiU5vK8fN4ZC_11ide_assists.exit.i198: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECsiU5vK8fN4ZC_11ide_assists.exit196
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit202 unwind label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit202: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsiU5vK8fN4ZC_11ide_assists.exit.i198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br i1 %.not76, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit202
  %i.he = trunc nuw i8 %.sroa.050.3 to i1
  br i1 %i.he, label %bb.g, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldECsiU5vK8fN4ZC_11ide_assists.exit

bb.ct:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit202
  %i.hf = trunc nuw i8 %.sroa.048.2 to i1
  br i1 %i.hf, label %bb.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldECsiU5vK8fN4ZC_11ide_assists.exit

bb.cu:                                            ; preds = %bb.h
  %2 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.hg = getelementptr inbounds nuw i8, ptr %.8.val, i64 48 ; 2 uses
  %i.hh = load i32, ptr %i.hg, align 4, !noundef !12
  %i.hi = add i32 %i.hh, -1                       ; 2 uses
  store i32 %i.hi, ptr %i.hg, align 4
  %i.hj = icmp eq i32 %i.hi, 0
  br i1 %i.hj, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14TupleFieldListECsiU5vK8fN4ZC_11ide_assists.exit205, label %bb.cw

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14TupleFieldListECsiU5vK8fN4ZC_11ide_assists.exit205: ; preds = %bb.cu
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.8.val) #32
          to label %bb.cw unwind label %bb.at

bb.cv:                                            ; preds = %bb.h, %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.hk = getelementptr inbounds nuw i8, ptr %.8.val, i64 48 ; 2 uses
  %i.hl = load i32, ptr %i.hk, align 4, !noundef !12
  %i.hm = add i32 %i.hl, -1                       ; 2 uses
  store i32 %i.hm, ptr %i.hk, align 4
  %i.hn = icmp eq i32 %i.hm, 0
  br i1 %i.hn, label %3, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldECsiU5vK8fN4ZC_11ide_assists.exit

3:                                                ; preds = %bb.cv
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.8.val) #32
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldECsiU5vK8fN4ZC_11ide_assists.exit

bb.cw:                                            ; preds = %.invoke, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14TupleFieldListECsiU5vK8fN4ZC_11ide_assists.exit, %bb.cg, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameECsiU5vK8fN4ZC_11ide_assists.exit, %bb.q, %.noexc222, %bb.du, %bb.cu, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14TupleFieldListECsiU5vK8fN4ZC_11ide_assists.exit205, %bb.dt, %.thread
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn101.pn.pn, %.invoke ], [ %.pn101.pn.pn, %.thread ], [ %.pn101.pn.pn, %bb.du ], [ %.pn101.pn.pn, %.noexc222 ], [ %.pn101.pn.pn, %bb.dt ], [ %2, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14TupleFieldListECsiU5vK8fN4ZC_11ide_assists.exit205 ], [ %2, %bb.cu ], [ %.pn101.pn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14TupleFieldListECsiU5vK8fN4ZC_11ide_assists.exit ], [ %.pn.pn, %bb.q ], [ %.pn.pn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameECsiU5vK8fN4ZC_11ide_assists.exit ], [ %.pn101.pn, %bb.cg ]
  resume { ptr, i32 } %.pn.pn.pn

bb.cx:                                            ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.ho = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.hp = load i64, ptr %i.ho, align 8, !noundef !12 ; 5 uses
  %i.hq = icmp ult i64 %i.hp, 768614336404564651
  call void @llvm.assume(i1 %i.hq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, i64 noundef %i.hp, i1 noundef zeroext false, i64 noundef 4, i64 noundef 20)
          to label %bb.cz unwind label %.thread56

bb.cy:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5TraitEECsiU5vK8fN4ZC_11ide_assists.exit
  br i1 %.sroa.055.1, label %bb.dr, label %bb.ck

.thread56:                                        ; preds = %bb.cx, %bb.da
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

bb.cz:                                            ; preds = %bb.cx
  %i.hs = load i64, ptr %i.k, align 8, !range !15, !noundef !12
  %i.ht = trunc nuw i64 %i.hs to i1
  %i.hu = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.hv = load i64, ptr %i.hu, align 8, !range !32, !noundef !12 ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  br i1 %i.ht, label %bb.da, label %bb.db, !prof !14

bb.da:                                            ; preds = %bb.cz
  %i.hx = load i64, ptr %i.hw, align 8
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.hv, i64 %i.hx) #34
          to label %bb.dq unwind label %.thread56

bb.db:                                            ; preds = %bb.cz
  %i.hy = load ptr, ptr %i.hw, align 8, !nonnull !12, !noundef !12
  %i.hz = icmp samesign ule i64 %i.hp, %i.hv
  call void @llvm.assume(i1 %i.hz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i64 %i.hv, ptr %i.r, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  store ptr %i.hy, ptr %i.ia, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 5 uses
  store i64 0, ptr %i.ib, align 8
  %.sroa.071.0.copyload = load i32, ptr %.sroa.068.0.copyload, align 8 ; 2 uses
  %i.ic = icmp ne i32 %.sroa.071.0.copyload, 27
  call void @llvm.assume(i1 %i.ic)
  %i.id = icmp eq i32 %.sroa.071.0.copyload, 26
  br i1 %i.id, label %bb.dc, label %bb.dh

bb.dc:                                            ; preds = %bb.db
  %.sroa.572.0..sroa.025.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.068.0.copyload, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.q, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.572.0..sroa.025.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke void @_RNvMs1f_Cs8Xq8PKFYOms_3hirNtB6_9TypeParam12trait_bounds(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.q, ptr noundef nonnull %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @15)
          to label %bb.de unwind label %bb.dd

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5TraitEECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %bb.dj, %bb.df, %bb.dd
  %.sroa.055.1 = phi i1 [ %.sroa.055.2, %bb.dd ], [ true, %bb.df ], [ false, %bb.dj ]
  %.pn95 = phi { ptr, i32 } [ %i.ie, %bb.dd ], [ %i.in, %bb.df ], [ %i.jg, %bb.dj ] ; 2 uses
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait7DelegeeEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #29
          to label %bb.cy unwind label %bb.at

bb.dd:                                            ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir4ImplENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit.thread, %._crit_edge, %bb.dc
  %.sroa.055.2 = phi i1 [ false, %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir4ImplENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit.thread ], [ true, %._crit_edge ], [ true, %bb.dc ]
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5TraitEECsiU5vK8fN4ZC_11ide_assists.exit

bb.de:                                            ; preds = %bb.dc
  %i.if = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ig = load ptr, ptr %i.if, align 8, !nonnull !12, !noundef !12 ; 4 uses
  %i.ih = load i64, ptr %i.p, align 8, !range !28, !noundef !12
  %i.ii = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ij = load i64, ptr %i.ii, align 8, !noundef !12 ; 3 uses
  %i.ik = icmp ult i64 %i.ij, 1152921504606846976
  call void @llvm.assume(i1 %i.ik)
  %.idx = shl nuw nsw i64 %i.ij, 3
  %i.il = getelementptr inbounds nuw i8, ptr %i.ig, i64 %.idx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.ig, ptr %i.o, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  store ptr %i.ig, ptr %.sroa.429.0..sroa_idx, align 8
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.ih, ptr %.sroa.530.0..sroa_idx, align 8
  %.sroa.631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  store ptr %i.il, ptr %.sroa.631.0..sroa_idx, align 8
  %i.im = icmp eq i64 %i.ij, 0
  br i1 %i.im, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.de
  %.pre = load i64, ptr %i.ib, align 8, !alias.scope !954
  br label %.lr.ph

bb.df:                                            ; preds = %bb.dg
  %i.in = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir5TraitENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5TraitEECsiU5vK8fN4ZC_11ide_assists.exit unwind label %bb.at

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.di
  %i.io = phi i64 [ %i.jc, %bb.di ], [ %.pre, %.lr.ph.preheader ] ; 3 uses
  %i.ip = phi ptr [ %i.je, %bb.di ], [ %i.ig, %.lr.ph.preheader ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !955)
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  store ptr %i.iq, ptr %.sroa.429.0..sroa_idx, align 8, !alias.scope !955
  %i.ir = load <2 x i32>, ptr %i.ip, align 4, !noalias !955
  %i.is = load i64, ptr %i.r, align 8, !range !28, !alias.scope !954, !noundef !12
  %i.it = icmp eq i64 %i.io, %i.is
  br i1 %i.it, label %bb.dg, label %bb.di

bb.dg:                                            ; preds = %.lr.ph
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait7DelegeeE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r) #32
          to label %bb.di unwind label %bb.df

._crit_edge:                                      ; preds = %bb.di, %bb.de
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir5TraitENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5TraitEECsiU5vK8fN4ZC_11ide_assists.exit211 unwind label %bb.dd

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5TraitEECsiU5vK8fN4ZC_11ide_assists.exit211: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.dh

bb.dh:                                            ; preds = %bb.db, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5TraitEECsiU5vK8fN4ZC_11ide_assists.exit211
  %i.iu = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.iv = load ptr, ptr %i.iu, align 8, !nonnull !12, !noundef !12 ; 4 uses
  %i.iw = load i64, ptr %i.t, align 8, !range !28, !noundef !12
  %.idx84 = mul nuw nsw i64 %i.hp, 12
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 %.idx84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.iv, ptr %i.n, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  store ptr %i.iv, ptr %.sroa.437.0..sroa_idx, align 8
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %i.iw, ptr %.sroa.538.0..sroa_idx, align 8
  %.sroa.639.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  store ptr %i.ix, ptr %.sroa.639.0..sroa_idx, align 8
  %i.iy = icmp eq i64 %i.hp, 0
  br i1 %i.iy, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir4ImplENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit.thread, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir4ImplENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit.lr.ph

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir4ImplENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit.lr.ph: ; preds = %bb.dh
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.iz = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  br label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir4ImplENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit

bb.di:                                            ; preds = %.lr.ph, %bb.dg
  %i.ja = load ptr, ptr %i.ia, align 8, !alias.scope !954, !nonnull !12, !noundef !12
  %i.jb = getelementptr inbounds nuw [20 x i8], ptr %i.ja, i64 %i.io ; 2 uses
  store i32 2, ptr %i.jb, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  store <2 x i32> %i.ir, ptr %.sroa.4.0..sroa_idx, align 4
  %i.jc = add i64 %i.io, 1                        ; 2 uses
  store i64 %i.jc, ptr %i.ib, align 8, !alias.scope !954
  %i.jd = load ptr, ptr %.sroa.631.0..sroa_idx, align 8, !alias.scope !956, !nonnull !12, !noundef !12
  %i.je = load ptr, ptr %.sroa.429.0..sroa_idx, align 8, !alias.scope !956, !nonnull !12, !noundef !12 ; 2 uses
  %i.jf = icmp eq ptr %i.je, %i.jd
  br i1 %i.jf, label %._crit_edge, label %.lr.ph

bb.dj:                                            ; preds = %bb.do, %.noexc216.a, %bb.dm, %bb.dk
  %i.jg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir4ImplENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5TraitEECsiU5vK8fN4ZC_11ide_assists.exit unwind label %bb.at

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir4ImplENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir4ImplENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit.lr.ph, %.thread68
  %i.jh = phi ptr [ %i.iv, %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir4ImplENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit.lr.ph ], [ %i.ju, %.thread68 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !957)
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 12
  store ptr %i.ji, ptr %.sroa.437.0..sroa_idx, align 8, !alias.scope !957
  %.sroa.015.0.copyload16 = load i32, ptr %i.jh, align 4, !noalias !957 ; 3 uses
  %.sroa.7.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.jh, i64 4
  %.sroa.7.0.copyload19 = load i64, ptr %.sroa.7.0..sroa_idx18, align 4, !noalias !957 ; 2 uses
  %.not93 = icmp eq i32 %.sroa.015.0.copyload16, 2
  br i1 %.not93, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir4ImplENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit.thread, label %bb.dk

bb.dk:                                            ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir4ImplENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i32 %.sroa.015.0.copyload16, ptr %i.i, align 4
  store i64 %.sroa.7.0.copyload19, ptr %.sroa.522.0..sroa_idx, align 4
  %i.jj = invoke { i32, i32 } @_RNvMs1j_Cs8Xq8PKFYOms_3hirNtB6_4Impl6trait_(ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.i, ptr noundef nonnull %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @15)
          to label %bb.dl unwind label %bb.dj     ; 2 uses

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir4ImplENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit.thread: ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir4ImplENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit, %.thread68, %bb.dh
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir4ImplENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir4ImplEECsiU5vK8fN4ZC_11ide_assists.exit214 unwind label %bb.dd

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir4ImplEECsiU5vK8fN4ZC_11ide_assists.exit214: ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir4ImplENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.546.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  %.sroa.647.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.647.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  store i64 %.sroa.023.0, ptr %0, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.324.0, ptr %.sroa.445.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %.sroa.0.0.i168.pn, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %.pn74, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %i.az, ptr %.sroa.9.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldECsiU5vK8fN4ZC_11ide_assists.exit

bb.dl:                                            ; preds = %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.jk = extractvalue { i32, i32 } %i.jj, 0      ; 3 uses
  %i.jl = extractvalue { i32, i32 } %i.jj, 1      ; 2 uses
  %.not.i215 = icmp eq i32 %i.jk, 0
  br i1 %.not.i215, label %.thread68, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %i.jk, ptr %i.c, align 4
  store i32 %i.jl, ptr %i.iz, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !958
  invoke void @_RNvXsE_Cs8Xq8PKFYOms_3hirNtB5_5TraitNtB5_13HasVisibility10visibility(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.b, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noundef nonnull align 8 %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @15)
          to label %.noexc216.a unwind label %bb.dj

.noexc216.a:                                      ; preds = %bb.dm
  %i.jm = invoke noundef zeroext i1 @_RNvMNtCsileJQcQObtj_7hir_def10visibilityNtB2_10Visibility15is_visible_from(ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.b, ptr noundef nonnull align 8 %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) @15, i32 noundef %i.ak, i32 noundef %i.al)
          to label %.noexc217 unwind label %bb.dj

.noexc217:                                        ; preds = %.noexc216.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !958
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.jm, label %bb.dn, label %.thread68

bb.dn:                                            ; preds = %.noexc217
  %i.jn = load i64, ptr %i.ib, align 8, !alias.scope !959, !noundef !12 ; 3 uses
  %i.jo = load i64, ptr %i.r, align 8, !range !28, !alias.scope !959, !noundef !12
  %i.jp = icmp eq i64 %i.jn, %i.jo
  br i1 %i.jp, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait7DelegeeE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r) #32
          to label %bb.dp unwind label %bb.dj

bb.dp:                                            ; preds = %bb.dn, %bb.do
  %i.jq = load ptr, ptr %i.ia, align 8, !alias.scope !959, !nonnull !12, !noundef !12
  %i.jr = getelementptr inbounds nuw [20 x i8], ptr %i.jq, i64 %i.jn ; 4 uses
  store i32 %.sroa.015.0.copyload16, ptr %i.jr, align 4
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jr, i64 4
  store i64 %.sroa.7.0.copyload19, ptr %.sroa.426.0..sroa_idx, align 4
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jr, i64 12
  store i32 %i.jk, ptr %.sroa.527.0..sroa_idx, align 4
  %.sroa.628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  store i32 %i.jl, ptr %.sroa.628.0..sroa_idx, align 4
  %i.js = add i64 %i.jn, 1
  store i64 %i.js, ptr %i.ib, align 8, !alias.scope !959
  br label %.thread68

.thread68:                                        ; preds = %bb.dl, %.noexc217, %bb.dp
  %i.jt = load ptr, ptr %.sroa.639.0..sroa_idx, align 8, !alias.scope !960, !nonnull !12, !noundef !12
  %i.ju = load ptr, ptr %.sroa.437.0..sroa_idx, align 8, !alias.scope !960, !nonnull !12, !noundef !12 ; 2 uses
  %i.jv = icmp eq ptr %i.ju, %i.jt
  br i1 %i.jv, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir4ImplENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit.thread, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir4ImplENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit

bb.dq:                                            ; preds = %bb.da, %bb.bk
  unreachable

bb.dr:                                            ; preds = %.thread56, %bb.cy
  %.pn9759 = phi { ptr, i32 } [ %i.hr, %.thread56 ], [ %.pn95, %bb.cy ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir4ImplEECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #29
          to label %bb.ck unwind label %bb.at

bb.ds:                                            ; preds = %bb.bo
  %i.jw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x) #29
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBE_9generated5nodes10TupleFieldEECsiU5vK8fN4ZC_11ide_assists.exit unwind label %bb.at

.thread:                                          ; preds = %.body199
  %i.jx = trunc nuw i8 %.sroa.048.0 to i1
  br i1 %i.jx, label %bb.du, label %bb.cw

bb.dt:                                            ; preds = %.body199
  %cond = icmp eq i8 %.sroa.050.0, 0
  br i1 %cond, label %bb.cw, label %bb.dv

bb.du:                                            ; preds = %.thread
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.jy = getelementptr inbounds nuw i8, ptr %.8.val, i64 48 ; 2 uses
  %i.jz = load i32, ptr %i.jy, align 4, !noundef !12
  %i.ka = add i32 %i.jz, -1                       ; 2 uses
  store i32 %i.ka, ptr %i.jy, align 4
  %i.kb = icmp eq i32 %i.ka, 0
  br i1 %i.kb, label %.invoke, label %bb.cw

bb.dv:                                            ; preds = %bb.dt
  %i.kc = getelementptr inbounds nuw i8, ptr %.0.val, i64 48 ; 2 uses
  %i.kd = load i32, ptr %i.kc, align 4, !noundef !12
  %i.ke = add i32 %i.kd, -1                       ; 2 uses
  store i32 %i.ke, ptr %i.kc, align 4
  %i.kf = icmp eq i32 %i.ke, 0
  br i1 %i.kf, label %bb.dw, label %.noexc222

bb.dw:                                            ; preds = %bb.dv
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.0.val) #32
          to label %.noexc222 unwind label %bb.at

.noexc222:                                        ; preds = %bb.dv, %bb.dw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.kg = getelementptr inbounds nuw i8, ptr %.8.val, i64 48 ; 2 uses
  %i.kh = load i32, ptr %i.kg, align 4, !noundef !12
  %i.ki = add i32 %i.kh, -1                       ; 2 uses
  store i32 %i.ki, ptr %i.kg, align 4
  %i.kj = icmp eq i32 %i.ki, 0
  br i1 %i.kj, label %.invoke, label %bb.cw

.invoke:                                          ; preds = %.noexc222, %bb.du
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.8.val) #32
          to label %bb.cw unwind label %bb.at
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs0_Cs3gqD4ldeioo_8indexmapINtB5_6BucketNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportuE3keyCsiU5vK8fN4ZC_11ide_assists(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 88)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(96) %1) unnamed_addr #3 !guid !961 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers17generate_functionNtB5_23GeneratedFunctionTarget12insert_fn_at(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(216) %1, i32 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality !guid !981 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [144 x i8], align 8               ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 15 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 3 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [1 x i8], align 1                 ; 4 uses
  %i.u = alloca [1 x i8], align 1                 ; 6 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 2 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 5 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [1 x i8], align 1                ; 5 uses
  %i.ad = alloca [1 x i8], align 1                ; 4 uses
  %i.ae = alloca [24 x i8], align 8               ; 4 uses
  %i.af = alloca [16 x i8], align 8               ; 5 uses
  %i.ag = alloca [24 x i8], align 8               ; 2 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [1 x i8], align 1                ; 5 uses
  %i.aj = alloca [144 x i8], align 8              ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  call void @_RNvMs6_NtCs6oosyzwIepl_6ide_db13source_changeNtB5_19SourceChangeBuilder11make_editor(ptr noalias nofree noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ak)
  %i.al = load i64, ptr %0, align 8, !range !19, !noundef !12
  switch i64 %i.al, label %default.unreachable330 [
    i64 0, label %bb.b
    i64 1, label %bb.d
    i64 2, label %bb.f
  ]

default.unreachable330:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.am = load ptr, ptr %i.ak, align 8, !nonnull !12, !noundef !12 ; 8 uses
  %i.an = getelementptr i8, ptr %i.am, i64 16
  %.val = load ptr, ptr %i.an, align 8, !noundef !12 ; 3 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.ap = load i32, ptr %i.ao, align 4, !noundef !12
  switch i32 %i.ap, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit150 [
    i32 -1, label %.invoke332
    i32 0, label %bb.g
  ], !prof !33

bb.d:                                             ; preds = %bb.a
  %.val120 = load ptr, ptr %i.ak, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val120, i64 48 ; 4 uses
  %i.ar = load i32, ptr %i.aq, align 4, !noundef !12 ; 2 uses
  %i.as = icmp eq i32 %i.ar, -1
  br i1 %i.as, label %.invoke332, label %bb.e, !prof !14

bb.e:                                             ; preds = %bb.d
  %i.at = add nuw i32 %i.ar, 1
  store i32 %i.at, ptr %i.aq, align 4
  %i.au = invoke { i64, ptr } @_RNvMsk_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_21SyntaxElementChildren3new(ptr noundef nonnull %.val120)
          to label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20children_with_tokens.exit unwind label %.thread303 ; 2 uses

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.av = invoke noundef i8 @_RNvMs2_NtNtCsjJXvCMGntp8_6syntax3ast4editNtB5_11IndentLevel9from_node(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ak)
          to label %bb.ab unwind label %.thread303

bb.g:                                             ; preds = %bb.c
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit150 unwind label %.thread303

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 48 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !noundef !12 ; 2 uses
  %i.ay = icmp eq i32 %i.ax, -1
  br i1 %i.ay, label %.invoke332, label %bb.h, !prof !14

bb.h:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit
  %i.az = add nuw i32 %i.ax, 1
  store i32 %i.az, ptr %i.aw, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %.sroa.0.0 = phi i64 [ 2, %bb.h ], [ 0, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %i.ba = invoke noundef i8 @_RNvMs2_NtNtCsjJXvCMGntp8_6syntax3ast4editNtB5_11IndentLevel9from_node(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ak)
          to label %bb.k unwind label %bb.p

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit150: ; preds = %bb.c, %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 48 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !noundef !12 ; 2 uses
  %i.bd = icmp eq i32 %i.bc, -1
  br i1 %i.bd, label %.invoke332, label %bb.j, !prof !14

.invoke332:                                       ; preds = %bb.s, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit150, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit, %bb.d, %bb.c
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #34
          to label %.cont333 unwind label %.thread303

.cont333:                                         ; preds = %.invoke332
  unreachable

bb.j:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit150
  %i.be = add nuw i32 %i.bc, 1
  store i32 %i.be, ptr %i.bb, align 8
  br label %bb.i

bb.k:                                             ; preds = %bb.i
  store i8 %i.ba, ptr %i.ai, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store i64 %.sroa.0.0, ptr %i.ah, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.am, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store ptr %i.ai, ptr %i.af, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr @_RNvXs_NtNtCsjJXvCMGntp8_6syntax3ast4editNtB4_11IndentLevelNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.435.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ag, ptr noundef nonnull @37, ptr noundef nonnull %i.af)
          to label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsiU5vK8fN4ZC_11ide_assists.exit unwind label %bb.n

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store i64 -1, ptr %i.ae, align 8
  %i.bf = load i8, ptr %i.ai, align 1, !noundef !12
  invoke fastcc void @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17generate_function18insert_rendered_fn(ptr noundef nonnull align 8 %i.aj, ptr noalias nofree noundef align 8 dereferenceable(216) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %3, ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.ah, i8 noundef %i.bf, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ag, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ae, i1 noundef zeroext %4)
          to label %bb.l unwind label %.thread303

bb.l:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsiU5vK8fN4ZC_11ide_assists.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.m

bb.m:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes13AssocItemListECsiU5vK8fN4ZC_11ide_assists.exit197, %bb.x, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.e, ptr noundef nonnull align 8 dereferenceable(144) %i.aj, i64 144, i1 false)
  call void @_RINvMs6_NtCs6oosyzwIepl_6ide_db13source_changeNtB6_19SourceChangeBuilder14add_file_editsNtCs4sl5YdnrCxp_3vfs6FileIdECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %1, i32 noundef %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(144) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  ret void

bb.n:                                             ; preds = %bb.k
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 48 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 8, !noundef !12
  %i.bj = add i32 %i.bi, -1                       ; 2 uses
  store i32 %i.bj, ptr %i.bh, align 8
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i, label %.thread

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i: ; preds = %bb.n
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.am) #32
          to label %.thread unwind label %bb.o

bb.o:                                             ; preds = %bb.da, %bb.cn, %bb.bt, %bb.bn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i198, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeAliasECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i, %bb.ah, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i168, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i165, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i156, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i, %.thread, %.body212, %bb.bj, %bb.y
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.p:                                             ; preds = %bb.i
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.am, i64 48 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !noundef !12
  %i.bp = add i32 %i.bo, -1                       ; 2 uses
  store i32 %i.bp, ptr %i.bn, align 8
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i156, label %.thread

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i156: ; preds = %bb.p
end_hunk_0
