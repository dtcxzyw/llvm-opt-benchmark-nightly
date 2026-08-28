Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/syntax-43d35de622208d94.syntax.e5f0618c8c3ca174-cgu.01?download=true
inline.NumInlined: 3091
inline.NumDeleted: 981
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMs5_NtNtCsjJXvCMGntp8_6syntax3ast4editNtNtNtB7_9generated5nodes8IdentPat7set_pat:bb.a
_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8IdentPatEBJ_.exit167: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameEBJ_.exit164, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ck, i64 48 ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 4, !noalias !441, !noundef !5
  %i.fx = add i32 %i.fw, -1                       ; 2 uses
  store i32 %i.fx, ptr %i.fv, align 4, !noalias !441
  %i.fy = icmp eq i32 %i.fx, 0
  br i1 %i.fy, label %bb.cg, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameEBJ_.exit170

bb.cg:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8IdentPatEBJ_.exit167
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ck) #19
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameEBJ_.exit170 unwind label %bb.w

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameEBJ_.exit170: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8IdentPatEBJ_.exit167, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.fz = load i32, ptr %i.dm, align 4, !noalias !5, !noundef !5
  %i.ga = add i32 %i.fz, -1                       ; 2 uses
  store i32 %i.ga, ptr %i.dm, align 4, !noalias !5
  %i.gb = icmp eq i32 %i.ga, 0
  br i1 %i.gb, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatEBJ_.exit.sink.split.i171, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatEBJ_.exit173

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatEBJ_.exit.sink.split.i171: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameEBJ_.exit170
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %2) #19
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatEBJ_.exit173

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatEBJ_.exit173: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatEBJ_.exit.sink.split.i171, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameEBJ_.exit170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.bg

bb.ch:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8IdentPatEBJ_.exit
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsjJXvCMGntp8_6syntax13syntax_editor12SyntaxEditorEBF_(ptr noalias nofree noundef align 8 dereferenceable(144) %i.k) #20
          to label %bb.aw unwind label %bb.t

bb.ci:                                            ; preds = %bb.aw
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1d_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB22_11SyntaxTokenB2o_EEEEB2s_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #20
          to label %bb.al unwind label %bb.t

.thread:                                          ; preds = %bb.m, %bb.n, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatEBJ_.exit125, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatEBJ_.exit.sink.split.i, %bb.u, %bb.v, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEEB1U_.exit
  %.pn62220 = phi { ptr, i32 } [ %i.as, %bb.n ], [ %.pn60, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatEBJ_.exit125 ], [ %.pn60, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatEBJ_.exit.sink.split.i ], [ %i.as, %bb.m ], [ %eh.lpad-body234, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEEB1U_.exit ], [ %.pn39229, %bb.u ], [ %.pn39229, %bb.v ]
  resume { ptr, i32 } %.pn62220
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs5_NtNtCsjJXvCMGntp8_6syntax3ast8expr_extNtNtNtB7_9generated5nodes7BinExpr10op_details(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 48 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !noundef !5 ; 2 uses
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.b, label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20children_with_tokens.exit, !prof !138

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #21
  unreachable

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20children_with_tokens.exit: ; preds = %bb.a
  %i.f = add nuw i32 %i.d, 1
  store i32 %i.f, ptr %i.c, align 4
  %i.g = tail call { i64, ptr } @_RNvMsk_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_21SyntaxElementChildren3new(ptr noundef nonnull %.val) ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.g, 0
  %i.i = extractvalue { i64, ptr } %i.g, 1
  store i64 %i.h, ptr %i.b, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.i, ptr %i.j, align 8
  %i.k = invoke { i64, ptr } @_RNvXs8_NtCs9GitHPCrz2Q_5rowan3apiINtB5_21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %.noexc unwind label %.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20children_with_tokens.exit
  %i.l = extractvalue { i64, ptr } %i.k, 0        ; 2 uses
  %.not57.i = icmp eq i64 %i.l, 2
  br i1 %.not57.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtB21_3ast9operators8BinaryOpEEEB21_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc, %.noexc10
  %i.m = phi i64 [ %i.ah, %.noexc10 ], [ %i.l, %.noexc ]
  %i.n = phi { i64, ptr } [ %i.ag, %.noexc10 ], [ %i.k, %.noexc ]
  %i.o = extractvalue { i64, ptr } %i.n, 1        ; 10 uses
  %i.p = trunc nuw i64 %i.m to i1
  br i1 %i.p, label %_RNCNvMs5_NtNtCsjJXvCMGntp8_6syntax3ast8expr_extNtNtNtB9_9generated5nodes7BinExpr10op_details0Bb_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !noalias !444, !noundef !5
  %i.s = add i32 %i.r, -1                         ; 2 uses
  store i32 %i.s, ptr %i.q, align 4, !noalias !444
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.sink.split.i.i.i.i, label %.noexc8

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.sink.split.i.i.i.i: ; preds = %bb.c
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.o) #19
          to label %.noexc8 unwind label %.loopexit

_RNCNvMs5_NtNtCsjJXvCMGntp8_6syntax3ast8expr_extNtNtNtB9_9generated5nodes7BinExpr10op_details0Bb_.exit.i.i: ; preds = %.lr.ph.i
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %.noexc8, label %bb.d

bb.d:                                             ; preds = %_RNCNvMs5_NtNtCsjJXvCMGntp8_6syntax3ast8expr_extNtNtNtB9_9generated5nodes7BinExpr10op_details0Bb_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !449
  store ptr %i.o, ptr %i.a, align 8, !noalias !453
  %i.u = invoke noundef i16 @_RNvMs5_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindBS_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.g unwind label %bb.e, !noalias !456

bb.e:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !noalias !456, !noundef !5
  %i.y = add i32 %i.x, -1                         ; 2 uses
  store i32 %i.y, ptr %i.w, align 4, !noalias !456
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.f, label %.body

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.o) #19
          to label %.body unwind label %bb.j, !noalias !456

bb.g:                                             ; preds = %bb.d
  %switch.tableidx = add nsw i16 %i.u, -11        ; 4 uses
  %i.aa = icmp ult i16 %switch.tableidx, 43
  br i1 %i.aa, label %switch.hole_check, label %bb.h

bb.h:                                             ; preds = %switch.hole_check, %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !noalias !456, !noundef !5
  %i.ad = add i32 %i.ac, -1                       ; 2 uses
  store i32 %i.ad, ptr %i.ab, align 4, !noalias !456
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.i, label %.noexc9

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.o) #19
          to label %.noexc9 unwind label %.loopexit

bb.j:                                             ; preds = %bb.f
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18, !noalias !456
  unreachable

.noexc9:                                          ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !449
  br label %.noexc8

.noexc8:                                          ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.sink.split.i.i.i.i, %.noexc9, %_RNCNvMs5_NtNtCsjJXvCMGntp8_6syntax3ast8expr_extNtNtNtB9_9generated5nodes7BinExpr10op_details0Bb_.exit.i.i, %bb.c
  %i.ag = invoke { i64, ptr } @_RNvXs8_NtCs9GitHPCrz2Q_5rowan3apiINtB5_21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %.noexc10 unwind label %.loopexit ; 2 uses

.noexc10:                                         ; preds = %.noexc8
  %i.ah = extractvalue { i64, ptr } %i.ag, 0      ; 2 uses
  %.not.i = icmp eq i64 %i.ah, 2
  br i1 %.not.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtB21_3ast9operators8BinaryOpEEEB21_.exit, label %.lr.ph.i

.loopexit:                                        ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.sink.split.i.i.i.i, %bb.i, %.noexc8
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20children_with_tokens.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.e, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.v, %bb.e ], [ %i.v, %bb.f ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.val4 = load i64, ptr %i.b, align 8, !range !4, !noundef !5
  %.val5 = load ptr, ptr %i.j, align 8            ; 3 uses
  %i.ai = icmp eq i64 %.val4, 2
  br i1 %i.ai, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvMs5_NtNtB2h_3ast8expr_extNtNtNtB3e_9generated5nodes7BinExpr10op_details0EEB2h_.exit, label %bb.k

bb.k:                                             ; preds = %.body
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.val5, i64 48 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !noundef !5
  %i.al = add i32 %i.ak, -1                       ; 2 uses
  store i32 %i.al, ptr %i.aj, align 4
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsjJXvCMGntp8_6syntax.exit.sink.split.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvMs5_NtNtB2h_3ast8expr_extNtNtNtB3e_9generated5nodes7BinExpr10op_details0EEB2h_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsjJXvCMGntp8_6syntax.exit.sink.split.i.i.i.i.i: ; preds = %bb.k
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val5) #19
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvMs5_NtNtB2h_3ast8expr_extNtNtNtB3e_9generated5nodes7BinExpr10op_details0EEB2h_.exit unwind label %bb.n

switch.hole_check:                                ; preds = %bb.g
  %switch.maskindex = zext nneg i16 %switch.tableidx to i64
  %switch.shifted = lshr i64 8796012289987, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.h

switch.lookup:                                    ; preds = %switch.hole_check
  %i.an = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvMs5_NtNtCsjJXvCMGntp8_6syntax3ast8expr_extNtNtNtB7_9generated5nodes7BinExpr10op_details, i64 %i.an
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.ao = zext nneg i16 %switch.tableidx to i64
  %switch.gep160 = getelementptr inbounds nuw i8, ptr @switch.table._RNvMs5_NtNtCsjJXvCMGntp8_6syntax3ast8expr_extNtNtNtB7_9generated5nodes7BinExpr10op_details.510, i64 %i.ao
  %switch.load161 = load i8, ptr %switch.gep160, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !449
  store ptr %i.o, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %switch.load161, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %switch.load, ptr %.sroa.517.0..sroa_idx, align 1
  br label %bb.l

bb.l:                                             ; preds = %switch.lookup, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtB21_3ast9operators8BinaryOpEEEB21_.exit
  %.val2 = load i64, ptr %i.b, align 8, !range !4, !noundef !5
  %.val3 = load ptr, ptr %i.j, align 8            ; 3 uses
  %i.ap = icmp eq i64 %.val2, 2
  br i1 %i.ap, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvMs5_NtNtB2h_3ast8expr_extNtNtNtB3e_9generated5nodes7BinExpr10op_details0EEB2h_.exit13, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.val3, i64 48 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !noundef !5
  %i.as = add i32 %i.ar, -1                       ; 2 uses
  store i32 %i.as, ptr %i.aq, align 4
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsjJXvCMGntp8_6syntax.exit.sink.split.i.i.i.i.i12, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvMs5_NtNtB2h_3ast8expr_extNtNtNtB3e_9generated5nodes7BinExpr10op_details0EEB2h_.exit13

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsjJXvCMGntp8_6syntax.exit.sink.split.i.i.i.i.i12: ; preds = %bb.m
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val3) #19
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvMs5_NtNtB2h_3ast8expr_extNtNtNtB3e_9generated5nodes7BinExpr10op_details0EEB2h_.exit13

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvMs5_NtNtB2h_3ast8expr_extNtNtNtB3e_9generated5nodes7BinExpr10op_details0EEB2h_.exit13: ; preds = %bb.l, %bb.m, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsjJXvCMGntp8_6syntax.exit.sink.split.i.i.i.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtB21_3ast9operators8BinaryOpEEEB21_.exit: ; preds = %.noexc10, %.noexc
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 -1, ptr %i.au, align 8
  br label %bb.l

bb.n:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsjJXvCMGntp8_6syntax.exit.sink.split.i.i.i.i.i
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvMs5_NtNtB2h_3ast8expr_extNtNtNtB3e_9generated5nodes7BinExpr10op_details0EEB2h_.exit: ; preds = %bb.k, %.body, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsjJXvCMGntp8_6syntax.exit.sink.split.i.i.i.i.i
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMs5_NtNtCsjJXvCMGntp8_6syntax3ast8expr_extNtNtNtB7_9generated5nodes7BinExpr3lhs(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 48 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !noundef !5 ; 2 uses
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.b, label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit, !prof !138

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #21
  unreachable

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit: ; preds = %bb.a
  %i.e = add nuw i32 %i.c, 1
  store i32 %i.e, ptr %i.b, align 4
  %i.f = tail call noundef ptr @_RNvMsi_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18SyntaxNodeChildren3new(ptr noundef nonnull %.val)
  store ptr %i.f, ptr %i.a, align 8
  %i.g = invoke { i64, ptr } @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes4ExprENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB6_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  %.val2 = load ptr, ptr %i.a, align 8, !noundef !5 ; 3 uses
  %i.i = icmp eq ptr %.val2, null
  br i1 %i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBE_9generated5nodes4ExprEEBG_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.val2, i64 48 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !noundef !5
  %i.l = add i32 %i.k, -1                         ; 2 uses
  store i32 %i.l, ptr %i.j, align 4
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBE_9generated5nodes4ExprEEBG_.exit

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val2) #19
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBE_9generated5nodes4ExprEEBG_.exit unwind label %bb.i

bb.f:                                             ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit
  %.val1 = load ptr, ptr %i.a, align 8, !noundef !5 ; 3 uses
  %i.n = icmp eq ptr %.val1, null
  br i1 %i.n, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBE_9generated5nodes4ExprEEBG_.exit3, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.val1, i64 48 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !noundef !5
  %i.q = add i32 %i.p, -1                         ; 2 uses
  store i32 %i.q, ptr %i.o, align 4
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.h, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBE_9generated5nodes4ExprEEBG_.exit3

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val1) #19
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBE_9generated5nodes4ExprEEBG_.exit3

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBE_9generated5nodes4ExprEEBG_.exit3: ; preds = %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.g

bb.i:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBE_9generated5nodes4ExprEEBG_.exit: ; preds = %bb.d, %bb.c, %bb.e
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMs5_NtNtCsjJXvCMGntp8_6syntax3ast8expr_extNtNtNtB7_9generated5nodes7BinExpr3rhs(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 48 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !noundef !5 ; 2 uses
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.b, label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit, !prof !138

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #21
  unreachable

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit: ; preds = %bb.a
  %i.e = add nuw i32 %i.c, 1
  store i32 %i.e, ptr %i.b, align 4
  %i.f = tail call noundef ptr @_RNvMsi_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18SyntaxNodeChildren3new(ptr noundef nonnull %.val)
  store ptr %i.f, ptr %i.a, align 8
  %i.g = invoke { i64, ptr } @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes4ExprENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB6_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit
  %i.h = extractvalue { i64, ptr } %i.g, 0
  %.not.i = icmp eq i64 %i.h, -1
  br i1 %.not.i, label %_RINvYINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB6_9generated5nodes4ExprENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1n_3num7nonzero7NonZerojENCNvXs_NvB1f_10advance_byB3_NtB2X_13SpecAdvanceBy15spec_advance_by0INtNtB1n_6option6OptionB2j_EEB8_.exit, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.i = extractvalue { i64, ptr } %i.g, 1        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !noalias !5, !noundef !5
  %i.l = add i32 %i.k, -1                         ; 2 uses
  store i32 %i.l, ptr %i.j, align 4, !noalias !5
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprEBJ_.exit.sink.split.i.i.i, label %bb.g

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprEBJ_.exit.sink.split.i.i.i: ; preds = %bb.c
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.i) #19
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprEBJ_.exit.sink.split.i.i.i, %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit, %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  %.val3 = load ptr, ptr %i.a, align 8, !noundef !5 ; 3 uses
  %i.o = icmp eq ptr %.val3, null
  br i1 %i.o, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBE_9generated5nodes4ExprEEBG_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.val3, i64 48 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !noundef !5
  %i.r = add i32 %i.q, -1                         ; 2 uses
  store i32 %i.r, ptr %i.p, align 4
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBE_9generated5nodes4ExprEEBG_.exit

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val3) #19
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBE_9generated5nodes4ExprEEBG_.exit unwind label %bb.k

bb.g:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprEBJ_.exit.sink.split.i.i.i, %bb.c
  %i.t = invoke { i64, ptr } @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes4ExprENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB6_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.h unwind label %bb.d       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.u = extractvalue { i64, ptr } %i.t, 0
  %i.v = extractvalue { i64, ptr } %i.t, 1
  br label %_RINvYINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB6_9generated5nodes4ExprENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1n_3num7nonzero7NonZerojENCNvXs_NvB1f_10advance_byB3_NtB2X_13SpecAdvanceBy15spec_advance_by0INtNtB1n_6option6OptionB2j_EEB8_.exit

_RINvYINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB6_9generated5nodes4ExprENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1n_3num7nonzero7NonZerojENCNvXs_NvB1f_10advance_byB3_NtB2X_13SpecAdvanceBy15spec_advance_by0INtNtB1n_6option6OptionB2j_EEB8_.exit: ; preds = %.noexc, %bb.h
  %.sroa.3.0 = phi ptr [ %i.v, %bb.h ], [ undef, %.noexc ]
  %.sroa.0.0 = phi i64 [ %i.u, %bb.h ], [ -1, %.noexc ]
  %.val2 = load ptr, ptr %i.a, align 8, !noundef !5 ; 3 uses
  %i.w = icmp eq ptr %.val2, null
  br i1 %i.w, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBE_9generated5nodes4ExprEEBG_.exit6, label %bb.i

bb.i:                                             ; preds = %_RINvYINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB6_9generated5nodes4ExprENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1n_3num7nonzero7NonZerojENCNvXs_NvB1f_10advance_byB3_NtB2X_13SpecAdvanceBy15spec_advance_by0INtNtB1n_6option6OptionB2j_EEB8_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %.val2, i64 48 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !noundef !5
  %i.z = add i32 %i.y, -1                         ; 2 uses
  store i32 %i.z, ptr %i.x, align 4
  %i.aa = icmp eq i32 %i.z, 0
end_hunk_0
