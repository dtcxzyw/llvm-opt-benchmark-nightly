Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_assists-698f35cb73900ae6.ide_assists.dc31bb520690ed66-cgu.15?download=true
inline.NumInlined: 3755
inline.NumDeleted: 1308
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes9ParamListECsiU5vK8fN4ZC_11ide_assists:bb.a

.noexc:                                           ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit
  %.not12.i = icmp eq ptr %i.h, null
  br i1 %.not12.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9ParamListEECsiU5vK8fN4ZC_11ide_assists.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc, %.noexc7
  %i.i = phi ptr [ %i.v, %.noexc7 ], [ %i.h, %.noexc ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1924
  store ptr %i.i, ptr %i.a, align 8, !noalias !1924
  %i.j = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !noundef !7
  %i.n = add i32 %i.m, -1                         ; 2 uses
  store i32 %i.n, ptr %i.l, align 4
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %.body

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.i) #39
          to label %.body unwind label %bb.h

bb.e:                                             ; preds = %.lr.ph.i
  %i.p = icmp eq i16 %i.j, 255
  br i1 %i.p, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9ParamListNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EECsiU5vK8fN4ZC_11ide_assists.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !noundef !7
  %i.s = add i32 %i.r, -1                         ; 2 uses
  store i32 %i.s, ptr %i.q, align 4
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.g, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes9ParamListNvYB2M_NtB2S_7AstNode4castE0CsiU5vK8fN4ZC_11ide_assists.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.i) #39
          to label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes9ParamListNvYB2M_NtB2S_7AstNode4castE0CsiU5vK8fN4ZC_11ide_assists.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36
  unreachable

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes9ParamListNvYB2M_NtB2S_7AstNode4castE0CsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1924
  %i.v = invoke noundef ptr @_RNvXs7_NtCs9GitHPCrz2Q_5rowan3apiINtB5_18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.noexc7 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc7:                                          ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes9ParamListNvYB2M_NtB2S_7AstNode4castE0CsiU5vK8fN4ZC_11ide_assists.exit.i
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9ParamListEECsiU5vK8fN4ZC_11ide_assists.exit, label %.lr.ph.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes9ParamListNvYB2M_NtB2S_7AstNode4castE0CsiU5vK8fN4ZC_11ide_assists.exit.i, %bb.g, %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit
  %lpad.loopexit.split-lp17 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.c, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.k, %bb.c ], [ %i.k, %bb.d ], [ %lpad.loopexit.split-lp17, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.val4 = load ptr, ptr %i.b, align 8, !noundef !7 ; 3 uses
  %i.w = icmp eq ptr %.val4, null
  br i1 %i.w, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit, label %bb.i

bb.i:                                             ; preds = %.body
  %i.x = getelementptr inbounds nuw i8, ptr %.val4, i64 48 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !noundef !7
  %i.z = add i32 %i.y, -1                         ; 2 uses
  store i32 %i.z, ptr %i.x, align 4
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.j, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val4) #39
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit unwind label %bb.m

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9ParamListNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1924
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9ParamListEECsiU5vK8fN4ZC_11ide_assists.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9ParamListEECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %.noexc7, %.noexc, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9ParamListNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EECsiU5vK8fN4ZC_11ide_assists.exit
  %i.ab = phi ptr [ %i.i, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9ParamListNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EECsiU5vK8fN4ZC_11ide_assists.exit ], [ null, %.noexc ], [ null, %.noexc7 ]
  %.val3 = load ptr, ptr %i.b, align 8, !noundef !7 ; 3 uses
  %i.ac = icmp eq ptr %.val3, null
  br i1 %i.ac, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit9, label %bb.k

bb.k:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9ParamListEECsiU5vK8fN4ZC_11ide_assists.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %.val3, i64 48 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !noundef !7
  %i.af = add i32 %i.ae, -1                       ; 2 uses
  store i32 %i.af, ptr %i.ad, align 4
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.l, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit9

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val3) #39
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit9

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit9: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9ParamListEECsiU5vK8fN4ZC_11ide_assists.exit, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.ab

bb.m:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %bb.i, %.body, %bb.j
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #5 personality ptr @rust_eh_personality !guid !1927 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1928)
  %i.b = icmp eq i64 %4, 0
  br i1 %i.b, label %bb.e, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8, !range !23, !alias.scope !1928, !noundef !7 ; 2 uses
  %i.f = shl nuw i64 %i.e, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 %i.f)
  %i.g = icmp eq i64 %4, 1
  %i.h = icmp ult i64 %4, 1025
  %..i = select i1 %i.h, i64 4, i64 1
  %.sroa.08.0.i = select i1 %i.g, i64 8, i64 %..i
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1928
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.i, align 8, !alias.scope !1928
  call fastcc void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.e, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !1928
  %i.j = load i64, ptr %i.a, align 8, !range !20, !noalias !1928, !noundef !7
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.l, align 8, !range !24, !noalias !1928, !noundef !7
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noalias !1928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1928
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.b
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.b ], [ %i.o, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ], [ 0, %bb.a ]
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #40
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.l, align 8, !noalias !1928, !nonnull !7, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1928
  store ptr %i.p, ptr %i.i, align 8, !alias.scope !1928
  %i.q = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.q)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !1928
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsiU5vK8fN4ZC_11ide_assists(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 230584300921369396) %2) unnamed_addr #3 personality ptr @rust_eh_personality !guid !1935 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = mul nuw nsw i64 %2, 40                   ; 2 uses
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiU5vK8fN4ZC_11ide_assists.exit.thread, label %bb.b

_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiU5vK8fN4ZC_11ide_assists.exit.thread: ; preds = %bb.a
  store i64 %2, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %.thread

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !1936
  %i.f = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) 8) #38, !noalias !1936 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %.lr.ph.preheader

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.b) #40
  unreachable

.lr.ph.preheader:                                 ; preds = %bb.b
  store i64 %2, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %3 = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %.sroa.015.056 = phi ptr [ %i.j, %bb.i ], [ %1, %.lr.ph.preheader ] ; 11 uses
  %.sroa.7.055 = phi i64 [ %i.k, %bb.i ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.sroa.10.054 = phi i64 [ %4, %bb.i ], [ %2, %.lr.ph.preheader ]
  %4 = add nsw i64 %.sroa.10.054, -1              ; 2 uses
  %5 = icmp eq ptr %.sroa.015.056, %3
  br i1 %5, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.i, %.lr.ph, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiU5vK8fN4ZC_11ide_assists.exit.thread
  %6 = phi ptr [ %i.e, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiU5vK8fN4ZC_11ide_assists.exit.thread ], [ %i.i, %.lr.ph ], [ %i.i, %bb.i ]
  store i64 %2, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.015.056, i64 40
  %i.k = add nuw nsw i64 %.sroa.7.055, 1
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.015.056, i64 24
  %i.m = load <2 x i32>, ptr %i.l, align 8, !alias.scope !1937
  %i.n = load i32, ptr %.sroa.015.056, align 8, !range !18, !alias.scope !1938, !noundef !7 ; 2 uses
  switch i32 %i.n, label %default.unreachable [
    i32 0, label %bb.e
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.h
  ]

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.015.056, i64 8
  %i.p = invoke noundef nonnull ptr @_RNvXsen_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_4NameNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o)
          to label %bb.i unwind label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.015.056, i64 8
  %i.r = invoke noundef nonnull ptr @_RNvXset_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_7NameRefNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q)
          to label %bb.i unwind label %bb.k

bb.g:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.015.056, i64 8
  %i.t = invoke noundef nonnull ptr @_RNvXscl_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_8LifetimeNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s)
          to label %bb.i unwind label %bb.k

bb.h:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.015.056, i64 16
  %i.v = invoke noundef nonnull ptr @_RNvXsV_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokensNtB5_6StringNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.u)
          to label %.noexc14 unwind label %bb.k

.noexc14:                                         ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.015.056, i64 4
  %i.x = load i32, ptr %i.w, align 4, !alias.scope !1938, !noundef !7
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.015.056, i64 8
  %i.z = load i32, ptr %i.y, align 8, !alias.scope !1938, !noundef !7
  %.sroa.5.0.insert.ext.i = zext i32 %i.z to i64
  %i.aa = inttoptr i64 %.sroa.5.0.insert.ext.i to ptr
  br label %bb.i

bb.i:                                             ; preds = %.noexc14, %bb.e, %bb.f, %bb.g
  %.sroa.5.0.i = phi ptr [ %i.aa, %.noexc14 ], [ %i.p, %bb.e ], [ %i.r, %bb.f ], [ %i.t, %bb.g ]
  %.sroa.9.0.i = phi ptr [ %i.v, %.noexc14 ], [ undef, %bb.e ], [ undef, %bb.f ], [ undef, %bb.g ]
  %.sroa.4.0.i = phi i32 [ %i.x, %.noexc14 ], [ undef, %bb.e ], [ undef, %bb.f ], [ undef, %bb.g ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.015.056, i64 32
  %i.ac = load i8, ptr %i.ab, align 8, !alias.scope !1937, !noundef !7
  %i.ad = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %.sroa.7.055 ; 6 uses
  store i32 %i.n, ptr %i.ad, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i32 %.sroa.4.0.i, ptr %.sroa.438.0..sroa_idx, align 4
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %.sroa.5.0.i, ptr %.sroa.539.0..sroa_idx, align 8
  %.sroa.640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %.sroa.9.0.i, ptr %.sroa.640.0..sroa_idx, align 8
  %.sroa.741.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store <2 x i32> %i.m, ptr %.sroa.741.0..sroa_idx, align 8
  %.sroa.943.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store i8 %i.ac, ptr %.sroa.943.0..sroa_idx, align 8
  %i.ae = icmp eq i64 %4, 0
  br i1 %i.ae, label %.thread, label %.lr.ph

bb.j:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.k:                                             ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.055, ptr %i.i, align 8
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceEECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #35
          to label %bb.l unwind label %bb.j

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %lpad.loopexit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvXs5_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6regionNtB6_6RegionINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtNtB8_8interner10DbInternerE9fold_withINtB14_7ShifterB1Y_EECsiU5vK8fN4ZC_11ide_assists(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1) unnamed_addr #0 !guid !1939 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RNvXs9_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4foldINtB5_7ShifterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB5_10TypeFolderBZ_E11fold_regionCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %0)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvXs5_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6regionNtB6_6RegionINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtNtB8_8interner10DbInternerE9fold_withINtNtB16_6binder9ArgFolderB1Y_EECsiU5vK8fN4ZC_11ide_assists(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 !guid !1940 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RNvXsr_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_9ArgFolderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_4fold10TypeFolderB13_E11fold_regionCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %0)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvXs5_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6regionNtB6_6RegionINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtNtB8_8interner10DbInternerE9fold_withINtNtB8_4fold16BoundVarReplacerNtB2E_13FnMutDelegateEECsiU5vK8fN4ZC_11ide_assists(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 dereferenceable(88) %1) unnamed_addr #0 !guid !1941 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RNvXs0_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver4foldINtB5_16BoundVarReplacerNtB5_13FnMutDelegateEINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold10TypeFolderNtNtB7_8interner10DbInternerE11fold_regionCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %0)
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter7sources10successors10SuccessorsINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENvMs4_B19_B16_6parentENtNtNtBa_6traits8iterator8Iterator4findNCINvNvXs0_NtNtBa_8adapters10skip_whileINtB3M_9SkipWhileppEB2Y_4next5checkB16_NCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25destructure_tuple_binding18detect_tuple_index0E0EB4Z_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull captures(none) dereferenceable(1) %1) unnamed_addr #3 personality ptr @rust_eh_personality !guid !1953 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1954)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1955)
  %.promoted.i = load ptr, ptr %0, align 8, !alias.scope !1956 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1957)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1958
  store ptr null, ptr %0, align 8, !alias.scope !1959
  %.not.i14.i = icmp eq ptr %.promoted.i, null
  br i1 %.not.i14.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = load i8, ptr %1, align 1, !range !17, !alias.scope !1955
  %.fr19.i = freeze i8 %i.c
  %i.d = trunc i8 %.fr19.i to i1
  br i1 %i.d, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1960)
  store ptr %.promoted.i, ptr %i.b, align 8, !noalias !1961
  %i.e = invoke noundef ptr @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE6parentCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %.split17.us.i unwind label %.split.us.i, !noalias !1961

.split17.us.i:                                    ; preds = %.lr.ph.split.us.i
  store ptr %i.e, ptr %0, align 8, !alias.scope !1956
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1961
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1962
  br label %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter7sources10successors10SuccessorsINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENvMs4_B19_B16_6parentENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2Y_4find5checkB16_NCINvNvXs0_NtNtBa_8adapters10skip_whileINtB4h_9SkipWhileppEB2Y_4next5checkB16_NCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25destructure_tuple_binding18detect_tuple_index0E0E0INtNtNtBc_3ops12control_flow11ControlFlowB16_EEB5u_.exit

.split.us.i:                                      ; preds = %.lr.ph.split.us.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCINvNvXs0_NtNtBc_8adapters10skip_whileINtB2T_9SkipWhileppEB6_4next5checkB1c_NCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25destructure_tuple_binding18detect_tuple_index0E0E0B45_.exit.i
  %i.g = phi ptr [ %i.h, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCINvNvXs0_NtNtBc_8adapters10skip_whileINtB2T_9SkipWhileppEB6_4next5checkB1c_NCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25destructure_tuple_binding18detect_tuple_index0E0E0B45_.exit.i ], [ %.promoted.i, %.lr.ph.i ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1960)
  store ptr %i.g, ptr %i.b, align 8, !noalias !1961
  %i.h = invoke noundef ptr @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE6parentCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %bb.e unwind label %.split.i, !noalias !1961 ; 3 uses

.split.i:                                         ; preds = %.lr.ph.split.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.b:                                             ; preds = %.split.i, %.split.us.i
  %.us-phi.i = phi ptr [ %i.g, %.split.i ], [ %.promoted.i, %.split.us.i ] ; 2 uses
  %.us-phi15.i = phi { ptr, i32 } [ %i.i, %.split.i ], [ %i.f, %.split.us.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.us-phi.i, i64 48 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !noalias !1961, !noundef !7
  %i.l = add i32 %i.k, -1                         ; 2 uses
  store i32 %i.l, ptr %i.j, align 4, !noalias !1961
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.c, label %common.resume.i

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.us-phi.i) #39
          to label %common.resume.i unwind label %bb.d, !noalias !1961

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36, !noalias !1961
  unreachable

common.resume.i:                                  ; preds = %bb.g, %bb.f, %bb.c, %bb.b
  %common.resume.op.i = phi { ptr, i32 } [ %.us-phi15.i, %bb.b ], [ %.us-phi15.i, %bb.c ], [ %i.p, %bb.g ], [ %i.p, %bb.f ]
  resume { ptr, i32 } %common.resume.op.i

bb.e:                                             ; preds = %.lr.ph.split.i
  store ptr %i.h, ptr %0, align 8, !alias.scope !1956
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1961
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1962
  store ptr %i.g, ptr %i.a, align 8, !noalias !1962
  %i.o = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %.noexc.i.i unwind label %bb.f, !noalias !1962

.noexc.i.i:                                       ; preds = %bb.e
  %.not.i.i.i = icmp eq i16 %i.o, 261
  br i1 %.not.i.i.i, label %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter7sources10successors10SuccessorsINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENvMs4_B19_B16_6parentENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2Y_4find5checkB16_NCINvNvXs0_NtNtBa_8adapters10skip_whileINtB4h_9SkipWhileppEB2Y_4next5checkB16_NCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25destructure_tuple_binding18detect_tuple_index0E0E0INtNtNtBc_3ops12control_flow11ControlFlowB16_EEB5u_.exit, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10skip_whileINtBa_9SkipWhileppENtNtNtBe_6traits8iterator8Iterator4next5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25destructure_tuple_binding18detect_tuple_index0E0B3F_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !noalias !1962, !noundef !7
  %i.s = add i32 %i.r, -1                         ; 2 uses
  store i32 %i.s, ptr %i.q, align 4, !noalias !1962
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.g, label %common.resume.i

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.g) #39
          to label %common.resume.i unwind label %bb.i, !noalias !1962

_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10skip_whileINtBa_9SkipWhileppENtNtNtBe_6traits8iterator8Iterator4next5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25destructure_tuple_binding18detect_tuple_index0E0B3F_.exit.i.i: ; preds = %.noexc.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !noalias !1962, !noundef !7
  %i.w = add i32 %i.v, -1                         ; 2 uses
  store i32 %i.w, ptr %i.u, align 4, !noalias !1962
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.h, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCINvNvXs0_NtNtBc_8adapters10skip_whileINtB2T_9SkipWhileppEB6_4next5checkB1c_NCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25destructure_tuple_binding18detect_tuple_index0E0E0B45_.exit.i

bb.h:                                             ; preds = %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10skip_whileINtBa_9SkipWhileppENtNtNtBe_6traits8iterator8Iterator4next5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25destructure_tuple_binding18detect_tuple_index0E0B3F_.exit.i.i
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.g) #39, !noalias !1962
  br label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCINvNvXs0_NtNtBc_8adapters10skip_whileINtB2T_9SkipWhileppEB6_4next5checkB1c_NCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25destructure_tuple_binding18detect_tuple_index0E0E0B45_.exit.i

bb.i:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36, !noalias !1962
  unreachable

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCINvNvXs0_NtNtBc_8adapters10skip_whileINtB2T_9SkipWhileppEB6_4next5checkB1c_NCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25destructure_tuple_binding18detect_tuple_index0E0E0B45_.exit.i: ; preds = %bb.h, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10skip_whileINtBa_9SkipWhileppENtNtNtBe_6traits8iterator8Iterator4next5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25destructure_tuple_binding18detect_tuple_index0E0B3F_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1962
  call void @llvm.experimental.noalias.scope.decl(metadata !1963)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1964
  store ptr null, ptr %0, align 8, !alias.scope !1965
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit, label %.lr.ph.split.i

_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter7sources10successors10SuccessorsINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENvMs4_B19_B16_6parentENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2Y_4find5checkB16_NCINvNvXs0_NtNtBa_8adapters10skip_whileINtB4h_9SkipWhileppEB2Y_4next5checkB16_NCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25destructure_tuple_binding18detect_tuple_index0E0E0INtNtNtBc_3ops12control_flow11ControlFlowB16_EEB5u_.exit: ; preds = %.noexc.i.i, %.split17.us.i
  %.us-phi18.i = phi ptr [ %.promoted.i, %.split17.us.i ], [ %i.g, %.noexc.i.i ]
  store i8 1, ptr %1, align 1, !alias.scope !1955, !noalias !1966
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1962
  br label %bb.j

bb.j:                                             ; preds = %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter7sources10successors10SuccessorsINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENvMs4_B19_B16_6parentENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2Y_4find5checkB16_NCINvNvXs0_NtNtBa_8adapters10skip_whileINtB4h_9SkipWhileppEB2Y_4next5checkB16_NCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25destructure_tuple_binding18detect_tuple_index0E0E0INtNtNtBc_3ops12control_flow11ControlFlowB16_EEB5u_.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit
  %i.z = phi ptr [ null, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit ], [ %.us-phi18.i, %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter7sources10successors10SuccessorsINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENvMs4_B19_B16_6parentENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2Y_4find5checkB16_NCINvNvXs0_NtNtBa_8adapters10skip_whileINtB4h_9SkipWhileppEB2Y_4next5checkB16_NCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25destructure_tuple_binding18detect_tuple_index0E0E0INtNtNtBc_3ops12control_flow11ControlFlowB16_EEB5u_.exit ]
  ret ptr %i.z

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCINvNvXs0_NtNtBc_8adapters10skip_whileINtB2T_9SkipWhileppEB6_4next5checkB1c_NCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25destructure_tuple_binding18detect_tuple_index0E0E0B45_.exit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1961
  br label %bb.j
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B18_B16_6parentENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtNtBa_8adapters3map12map_try_foldB16_INtNtB1a_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEuINtNtNtBc_3ops12control_flow11ControlFlowNtNtNtNtB41_3ast9generated5nodes2FnENvYB3y_INtNtBc_7convert4FromB16_E4fromNCINvNvB29_8find_map5checkB3y_B5u_NvYB5u_NtB5A_7AstNode4castE0E0B4P_ECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 personality ptr @rust_eh_personality !guid !1973 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %.promoted = load ptr, ptr %0, align 8, !alias.scope !1974 ; 2 uses
  store ptr null, ptr %0, align 8, !alias.scope !1975
  %.not.i14 = icmp eq ptr %.promoted, null
  br i1 %.not.i14, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeINtNtB13_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtB29_3ast9generated5nodes2FnENvYB1G_INtNtBa_7convert4FromBZ_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1G_B3C_NvYB3C_NtB3I_7AstNode4castE0E0CsiU5vK8fN4ZC_11ide_assists.exit
  %.val.i.i.i1315 = phi ptr [ %.val.i.i.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeINtNtB13_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtB29_3ast9generated5nodes2FnENvYB1G_INtNtBa_7convert4FromBZ_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1G_B3C_NvYB3C_NtB3I_7AstNode4castE0E0CsiU5vK8fN4ZC_11ide_assists.exit ], [ %.promoted, %bb.a ] ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1974)
  %i.b = getelementptr i8, ptr %.val.i.i.i1315, i64 16
  %.val.i.i.i = load ptr, ptr %i.b, align 8, !noalias !1974, !noundef !7 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %.val.i.i.i, null   ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 48 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !noalias !1974, !noundef !7 ; 2 uses
  %i.e = icmp eq i32 %i.d, -1
end_hunk_0
