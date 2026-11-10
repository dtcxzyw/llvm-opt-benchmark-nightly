Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide-9d1e44b117047edd.ide.fd86062d077aef10-cgu.15?download=true
inline.NumInlined: 2576
inline.NumDeleted: 969
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvNtNtCslLuZgPVt6hg_3ide19syntax_highlighting9highlight5tokenNCNvB4_8traverses1_0EB6_:bb.a
bb.k:                                             ; preds = %bb.dw, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens7CommentECslLuZgPVt6hg_3ide.exit69
  %.sroa.4.0 = phi i64 [ 25769803776, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens7CommentECslLuZgPVt6hg_3ide.exit69 ], [ 1095216660480, %bb.dw ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %., %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens7CommentECslLuZgPVt6hg_3ide.exit69 ], [ 0, %bb.dw ] ; 2 uses
  %i.af = load i32, ptr %i.o, align 4, !noundef !11
  %i.ag = add i32 %i.af, -1                       ; 2 uses
  store i32 %i.ag, ptr %i.o, align 4
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.l, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %1) #34
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit

bb.m:                                             ; preds = %bb.ed, %bb.h
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.n:                                             ; preds = %bb.f
  switch i16 %i.u, label %bb.o [
    i16 143, label %bb.t
    i16 144, label %bb.p
    i16 145, label %bb.q
    i16 146, label %bb.p
    i16 147, label %bb.r
    i16 148, label %bb.r
    i16 149, label %bb.p
    i16 153, label %bb.s
  ]

bb.o:                                             ; preds = %bb.n
  %.off = add nsw i16 %i.u, -2
  %switch = icmp ult i16 %.off, 52
  br i1 %switch, label %bb.v, label %.thread85

bb.p:                                             ; preds = %bb.n, %bb.n, %bb.n
  br label %bb.t

bb.q:                                             ; preds = %bb.n
  br label %bb.t

bb.r:                                             ; preds = %bb.n, %bb.n
  br label %bb.t

bb.s:                                             ; preds = %bb.n
  br i1 %4, label %bb.t, label %.thread85

bb.t:                                             ; preds = %bb.ec, %bb.s, %bb.n, %bb.r, %bb.q, %bb.p
  %.sroa.1021.0 = phi i64 [ 68719476736, %bb.s ], [ 17179869184, %bb.n ], [ 21474836480, %bb.q ], [ 47244640256, %bb.r ], [ 60129542144, %bb.p ], [ 68719476736, %bb.ec ] ; 2 uses
  %i.aj = load i32, ptr %i.o, align 4, !noundef !11
  %i.ak = add i32 %i.aj, -1                       ; 2 uses
  store i32 %i.ak, ptr %i.o, align 4
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.u, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %1) #34
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit

.thread85:                                        ; preds = %bb.s, %bb.o
  %i.am = invoke noundef zeroext i1 @_RNvMNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generatedNtB2_10SyntaxKind10is_keyword(i16 noundef %i.u, i8 noundef %2)
          to label %bb.dw unwind label %.thread82

bb.v:                                             ; preds = %bb.o
  %.val65 = load ptr, ptr %3, align 8             ; 10 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val66 = load ptr, ptr %i.an, align 8          ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ao = getelementptr i8, ptr %1, i64 16        ; 2 uses
  %.val117.i = load ptr, ptr %i.ao, align 8, !noundef !11 ; 16 uses
  %.not.i.i = icmp eq ptr %.val117.i, null        ; 11 uses
  br i1 %.not.i.i, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit.thread.i, label %bb.w

_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit.thread.i: ; preds = %bb.v
  store ptr null, ptr %i.l, align 8
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEE6map_orNtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindNvMs4_BM_BJ_4kindECslLuZgPVt6hg_3ide.exit.i

bb.w:                                             ; preds = %bb.v
  %i.ap = getelementptr inbounds nuw i8, ptr %.val117.i, i64 48 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !noundef !11 ; 2 uses
  %i.ar = icmp eq i32 %i.aq, -1
  br i1 %i.ar, label %bb.x, label %bb.z, !prof !13

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #33
          to label %.noexc.i unwind label %bb.aa

.noexc.i:                                         ; preds = %bb.x
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit174.i: ; preds = %bb.du, %bb.dt, %.thread.i, %bb.aa
  %.pn107.i = phi { ptr, i32 } [ %.pn9.i, %bb.dt ], [ %lpad.thr_comm.split-lp.i, %bb.aa ], [ %.pn9.i, %bb.du ], [ %.pn9.i, %.thread.i ] ; 2 uses
  %i.as = load i32, ptr %i.o, align 8, !noundef !11
  %i.at = add i32 %i.as, -1                       ; 2 uses
  store i32 %i.at, ptr %i.o, align 8
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.y, label %.thread79

bb.y:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit174.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %1) #34
          to label %.thread79 unwind label %bb.az

bb.z:                                             ; preds = %bb.w
  %i.av = add nuw i32 %i.aq, 1
  store i32 %i.av, ptr %i.ap, align 4
  store ptr %.val117.i, ptr %i.l, align 8
  %i.aw = invoke noundef range(i16 0, 329) i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) dereferenceable_or_null(8) %i.l)
          to label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEE6map_orNtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindNvMs4_BM_BJ_4kindECslLuZgPVt6hg_3ide.exit.i unwind label %.thread20.i

bb.aa:                                            ; preds = %bb.ct, %bb.cq, %bb.co, %bb.cg, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i, %bb.bl, %bb.bj, %bb.bg, %bb.be, %bb.aj, %bb.x
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit174.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEE6map_orNtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindNvMs4_BM_BJ_4kindECslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.z, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit.thread.i
  %.sroa.02.0.i.i = phi i16 [ 1, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit.thread.i ], [ %i.aw, %bb.z ] ; 6 uses
  switch i16 %i.u, label %bb.ab [
    i16 13, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit162.thread.i
    i16 16, label %bb.ac
    i16 17, label %bb.ad
    i16 20, label %bb.ae
    i16 25, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit162.thread.i
    i16 26, label %bb.af
    i16 28, label %bb.af
    i16 30, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit162.thread.i
    i16 31, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit162.thread.i
    i16 33, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit162.thread.i
    i16 34, label %bb.ah
    i16 36, label %bb.ai
    i16 37, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit162.thread.i
  ]

bb.ab:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEE6map_orNtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindNvMs4_BM_BJ_4kindECslLuZgPVt6hg_3ide.exit.i
  switch i16 %.sroa.02.0.i.i, label %.thread37.i [
    i16 176, label %bb.bo
    i16 179, label %bb.bp
  ]

bb.ac:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEE6map_orNtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindNvMs4_BM_BJ_4kindECslLuZgPVt6hg_3ide.exit.i
  switch i16 %.sroa.02.0.i.i, label %.thread35.i [
    i16 298, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit162.thread.i
    i16 176, label %bb.bo
  ]

bb.ad:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEE6map_orNtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindNvMs4_BM_BJ_4kindECslLuZgPVt6hg_3ide.exit.i
  switch i16 %.sroa.02.0.i.i, label %.thread35.i [
    i16 179, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit162.thread.i
    i16 279, label %bb.ak
    i16 280, label %bb.ak
    i16 176, label %bb.bo
  ]

bb.ae:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEE6map_orNtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindNvMs4_BM_BJ_4kindECslLuZgPVt6hg_3ide.exit.i
  switch i16 %.sroa.02.0.i.i, label %.thread35.i [
    i16 267, label %bb.al
    i16 268, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit162.thread.i
    i16 176, label %bb.bo
    i16 179, label %.thread39.i
  ]

bb.af:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEE6map_orNtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindNvMs4_BM_BJ_4kindECslLuZgPVt6hg_3ide.exit.i, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEE6map_orNtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindNvMs4_BM_BJ_4kindECslLuZgPVt6hg_3ide.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %.val116.i = load ptr, ptr %i.ao, align 8, !noundef !11 ; 3 uses
  %.not.i145.i = icmp eq ptr %.val116.i, null
  br i1 %.not.i145.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatECslLuZgPVt6hg_3ide.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ax = getelementptr inbounds nuw i8, ptr %.val116.i, i64 48 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !noundef !11 ; 2 uses
  %i.az = icmp eq i32 %i.ay, -1
  br i1 %i.az, label %.invoke.i, label %bb.as, !prof !13

.invoke.i:                                        ; preds = %bb.bw, %bb.ag
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #33
          to label %.cont.i unwind label %.thread20.i

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ah:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEE6map_orNtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindNvMs4_BM_BJ_4kindECslLuZgPVt6hg_3ide.exit.i
  switch i16 %.sroa.02.0.i.i, label %.thread35.i [
    i16 233, label %bb.bb
    i16 238, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit162.thread.i
    i16 250, label %bb.bc
    i16 267, label %bb.bd
    i16 176, label %bb.bo
  ]

bb.ai:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEE6map_orNtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindNvMs4_BM_BJ_4kindECslLuZgPVt6hg_3ide.exit.i
  switch i16 %.sroa.02.0.i.i, label %.thread35.i [
    i16 267, label %bb.bi
    i16 176, label %bb.bo
    i16 179, label %.thread39.i
  ]

_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit162.thread.i: ; preds = %bb.ce, %bb.cd, %bb.bz, %.thread35.i, %bb.bt, %bb.bs, %bb.br, %.thread39.i, %bb.bq, %bb.bp, %bb.bp, %bb.bp, %bb.bp, %bb.bp, %bb.bp, %bb.bo, %.thread37.i, %bb.bd, %bb.bc, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatECslLuZgPVt6hg_3ide.exit.i, %bb.ak, %bb.ah, %bb.ae, %bb.ad, %bb.ac, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEE6map_orNtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindNvMs4_BM_BJ_4kindECslLuZgPVt6hg_3ide.exit.i, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEE6map_orNtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindNvMs4_BM_BJ_4kindECslLuZgPVt6hg_3ide.exit.i, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEE6map_orNtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindNvMs4_BM_BJ_4kindECslLuZgPVt6hg_3ide.exit.i, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEE6map_orNtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindNvMs4_BM_BJ_4kindECslLuZgPVt6hg_3ide.exit.i, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEE6map_orNtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindNvMs4_BM_BJ_4kindECslLuZgPVt6hg_3ide.exit.i, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEE6map_orNtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindNvMs4_BM_BJ_4kindECslLuZgPVt6hg_3ide.exit.i
  %.sroa.79.0.i = phi i64 [ 4398046511104, %bb.bp ], [ 9895604649984, %.thread35.i ], [ 0, %bb.bo ], [ 1099511627776, %.thread39.i ], [ 8796093022208, %bb.ah ], [ 1099511627776, %bb.br ], [ 2199023255552, %bb.bt ], [ 0, %bb.bq ], [ 0, %bb.bs ], [ 5497558138880, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEE6map_orNtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindNvMs4_BM_BJ_4kindECslLuZgPVt6hg_3ide.exit.i ], [ 5497558138880, %bb.ac ], [ 5497558138880, %bb.ak ], [ 6597069766656, %bb.ce ], [ 5497558138880, %bb.cd ], [ 0, %bb.ae ], [ 0, %bb.ad ], [ 5497558138880, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatECslLuZgPVt6hg_3ide.exit.i ], [ 7696581394432, %bb.bz ], [ 0, %bb.bc ], [ 3298534883328, %bb.bd ], [ 5497558138880, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEE6map_orNtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindNvMs4_BM_BJ_4kindECslLuZgPVt6hg_3ide.exit.i ], [ 5497558138880, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEE6map_orNtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindNvMs4_BM_BJ_4kindECslLuZgPVt6hg_3ide.exit.i ], [ 5497558138880, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEE6map_orNtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindNvMs4_BM_BJ_4kindECslLuZgPVt6hg_3ide.exit.i ], [ 5497558138880, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEE6map_orNtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindNvMs4_BM_BJ_4kindECslLuZgPVt6hg_3ide.exit.i ], [ 5497558138880, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEE6map_orNtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindNvMs4_BM_BJ_4kindECslLuZgPVt6hg_3ide.exit.i ], [ 3298534883328, %.thread37.i ], [ 4398046511104, %bb.bp ], [ 4398046511104, %bb.bp ], [ 4398046511104, %bb.bp ], [ 4398046511104, %bb.bp ], [ 4398046511104, %bb.bp ] ; 2 uses
  %.sroa.50.0.i = phi i64 [ 51539607552, %bb.bp ], [ 55834574848, %.thread35.i ], [ 4294967296, %bb.bo ], [ 51539607552, %.thread39.i ], [ 55834574848, %bb.ah ], [ 51539607552, %bb.br ], [ 51539607552, %bb.bt ], [ 51539607552, %bb.bq ], [ 51539607552, %bb.bs ], [ 51539607552, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEE6map_orNtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindNvMs4_BM_BJ_4kindECslLuZgPVt6hg_3ide.exit.i ], [ 51539607552, %bb.ac ], [ 51539607552, %bb.ak ], [ 55834574848, %bb.ce ], [ 55834574848, %bb.cd ], [ 42949672960, %bb.ae ], [ 51539607552, %bb.ad ], [ 51539607552, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatECslLuZgPVt6hg_3ide.exit.i ], [ 55834574848, %bb.bz ], [ 12884901888, %bb.bc ], [ 51539607552, %bb.bd ], [ 51539607552, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEE6map_orNtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindNvMs4_BM_BJ_4kindECslLuZgPVt6hg_3ide.exit.i ], [ 51539607552, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEE6map_orNtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindNvMs4_BM_BJ_4kindECslLuZgPVt6hg_3ide.exit.i ], [ 51539607552, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEE6map_orNtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindNvMs4_BM_BJ_4kindECslLuZgPVt6hg_3ide.exit.i ], [ 51539607552, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEE6map_orNtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindNvMs4_BM_BJ_4kindECslLuZgPVt6hg_3ide.exit.i ], [ 51539607552, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEE6map_orNtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindNvMs4_BM_BJ_4kindECslLuZgPVt6hg_3ide.exit.i ], [ 55834574848, %.thread37.i ], [ 51539607552, %bb.bp ], [ 51539607552, %bb.bp ], [ 51539607552, %bb.bp ], [ 51539607552, %bb.bp ], [ 51539607552, %bb.bp ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ 0, %bb.bp ], [ 0, %.thread35.i ], [ 0, %bb.bo ], [ 0, %.thread39.i ], [ 0, %bb.ah ], [ 131072, %bb.br ], [ 0, %bb.bt ], [ 0, %bb.bq ], [ 131072, %bb.bs ], [ 0, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEE6map_orNtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindNvMs4_BM_BJ_4kindECslLuZgPVt6hg_3ide.exit.i ], [ 64, %bb.ac ], [ 0, %bb.ak ], [ 0, %bb.ce ], [ 0, %bb.cd ], [ 0, %bb.ae ], [ 0, %bb.ad ], [ %.sroa.0.1.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatECslLuZgPVt6hg_3ide.exit.i ], [ 0, %bb.bz ], [ 0, %bb.bc ], [ 0, %bb.bd ], [ 0, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEE6map_orNtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindNvMs4_BM_BJ_4kindECslLuZgPVt6hg_3ide.exit.i ], [ 0, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEE6map_orNtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindNvMs4_BM_BJ_4kindECslLuZgPVt6hg_3ide.exit.i ], [ 0, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEE6map_orNtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindNvMs4_BM_BJ_4kindECslLuZgPVt6hg_3ide.exit.i ], [ 0, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEE6map_orNtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindNvMs4_BM_BJ_4kindECslLuZgPVt6hg_3ide.exit.i ], [ 0, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEE6map_orNtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindNvMs4_BM_BJ_4kindECslLuZgPVt6hg_3ide.exit.i ], [ 0, %.thread37.i ], [ 0, %bb.bp ], [ 0, %bb.bp ], [ 0, %bb.bp ], [ 0, %bb.bp ], [ 0, %bb.bp ] ; 2 uses
  br i1 %.not.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit.i, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit162.thread.thread.i

_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit162.thread.thread.i: ; preds = %bb.df, %bb.dq, %bb.ds, %bb.dh, %bb.by, %bb.bv, %bb.ar, %bb.ap, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit162.thread.i
  %.sroa.0.059.i = phi i64 [ %.sroa.0.0.i, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit162.thread.i ], [ 0, %bb.bv ], [ 0, %bb.dh ], [ 0, %bb.ds ], [ %spec.select.i, %bb.ar ], [ 0, %bb.ap ], [ 0, %bb.by ], [ 0, %bb.dq ], [ 0, %bb.df ] ; 2 uses
  %.sroa.50.058.i = phi i64 [ %.sroa.50.0.i, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit162.thread.i ], [ 55834574848, %bb.bv ], [ 55834574848, %bb.dh ], [ 55834574848, %bb.ds ], [ 51539607552, %bb.ar ], [ 51539607552, %bb.ap ], [ %spec.select112.i, %bb.by ], [ 55834574848, %bb.dq ], [ 55834574848, %bb.df ] ; 2 uses
  %.sroa.79.057.i = phi i64 [ %.sroa.79.0.i, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit162.thread.i ], [ 3298534883328, %bb.bv ], [ 1099511627776, %bb.dh ], [ 0, %bb.ds ], [ 5497558138880, %bb.ar ], [ 5497558138880, %bb.ap ], [ %spec.select111.i, %bb.by ], [ 0, %bb.dq ], [ 1099511627776, %bb.df ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.val117.i, i64 48 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !noundef !11
  %i.bc = add i32 %i.bb, -1                       ; 2 uses
  store i32 %i.bc, ptr %i.ba, align 4
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.aj, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit.i

bb.aj:                                            ; preds = %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit162.thread.thread.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val117.i) #34
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit.i unwind label %bb.aa

bb.ak:                                            ; preds = %bb.ad, %bb.ad
  br label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit162.thread.i

bb.al:                                            ; preds = %bb.ae
  br i1 %.not.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvMNtCs9GitHPCrz2Q_5rowan3astINtB2_13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE3newCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l)
          to label %bb.an unwind label %.thread20.i

bb.an:                                            ; preds = %bb.am
  %i.be = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bf = load i16, ptr %i.be, align 8, !range !40, !noundef !11 ; 2 uses
  %i.bg = invoke noundef zeroext i1 @_RNvXs0_NtCsjJXvCMGntp8_6syntax3astINtCs83ee1IJTiSq_6either6EitherNtNtNtB5_9generated5nodes4ExprNtB13_3PatENtB5_7AstNode8can_castCslLuZgPVt6hg_3ide(i16 noundef %i.bf)
          to label %bb.ao unwind label %.thread20.i

bb.ao:                                            ; preds = %bb.an
  br i1 %i.bg, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit162.thread.thread.i

bb.aq:                                            ; preds = %bb.ao
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 10
  %.sroa.6.0.copyload.i = load i16, ptr %.sroa.6.0..sroa_idx.i, align 2
  %.sroa.068.0.copyload.i = load i64, ptr %i.h, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val65) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !713
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val66) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull readonly align 4 dereferenceable(12) %.val66, i64 12, i1 false), !noalias !713
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i64 %.sroa.068.0.copyload.i, ptr %i.bh, align 4
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store i16 %i.bf, ptr %.sroa.45.0..sroa_idx.i, align 4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 22
  store i16 %.sroa.6.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 2
  %i.bi = invoke noundef zeroext i1 @_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBT_9HirFileIdINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrINtCs83ee1IJTiSq_6either6EitherNtNtNtNtB1Y_3ast9generated5nodes4ExprNtB31_3PatEEEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12contains_keyBO_ECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val65, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.e)
          to label %bb.ar unwind label %.thread20.i

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !713
  %spec.select.i = select i1 %i.bi, i64 4194304, i64 0
  br label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit162.thread.thread.i

bb.as:                                            ; preds = %bb.ag
  %i.bj = add nuw i32 %i.ay, 1
  store i32 %i.bj, ptr %i.ax, align 4
  %i.bk = invoke fastcc { i64, ptr } @_RNvXsnY_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_3PatNtBa_7AstNode4cast(ptr noundef nonnull %.val116.i)
          to label %bb.at unwind label %.thread20.i ; 2 uses

bb.at:                                            ; preds = %bb.as
  %i.bl = extractvalue { i64, ptr } %i.bk, 0      ; 2 uses
  %i.bm = extractvalue { i64, ptr } %i.bk, 1      ; 8 uses
  store i64 %i.bl, ptr %i.k, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %i.bm, ptr %i.bn, align 8
  %.not87.i = icmp eq i64 %i.bl, -1
  br i1 %.not87.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatECslLuZgPVt6hg_3ide.exit.i, label %bb.av

bb.au:                                            ; preds = %bb.aw, %bb.av
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bm) ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 48 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !noundef !11
  %i.br = add i32 %i.bq, -1                       ; 2 uses
  store i32 %i.br, ptr %i.bp, align 4
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECslLuZgPVt6hg_3ide.exit.sink.split.i153.i, label %.thread.i

bb.av:                                            ; preds = %bb.at
  invoke void @_RNvMNtCs9GitHPCrz2Q_5rowan3astINtB2_13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE3newCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bn)
          to label %bb.aw unwind label %bb.au

bb.aw:                                            ; preds = %bb.av
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !714
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bt, ptr noundef nonnull align 4 dereferenceable(12) %i.i, i64 12, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val65), "nonnull"(ptr %.val66) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.d, ptr noundef nonnull readonly align 4 dereferenceable(12) %.val66, i64 12, i1 false), !noalias !714
  %i.bu = invoke noundef zeroext i1 @_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBT_9HirFileIdINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrINtCs83ee1IJTiSq_6either6EitherNtNtNtNtB1Y_3ast9generated5nodes4ExprNtB31_3PatEEEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12contains_keyBO_ECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val65, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.d)
          to label %bb.ax unwind label %bb.au

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !714
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bm) ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 48 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !noundef !11
  %i.bx = add i32 %i.bw, -1                       ; 2 uses
  store i32 %i.bx, ptr %i.bv, align 4
  %i.by = icmp eq i32 %i.bx, 0                    ; 2 uses
  br i1 %i.bu, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  br i1 %i.by, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECslLuZgPVt6hg_3ide.exit.sink.split.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatECslLuZgPVt6hg_3ide.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECslLuZgPVt6hg_3ide.exit.sink.split.i.i: ; preds = %bb.ay
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bm) #34
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatECslLuZgPVt6hg_3ide.exit.i unwind label %.thread20.i

.thread20.i:                                      ; preds = %bb.dr, %bb.dp, %bb.do, %bb.dm, %bb.dk, %bb.di, %bb.dg, %bb.de, %bb.dd, %bb.db, %bb.cz, %bb.cx, %bb.cl, %bb.cj, %bb.ch, %bb.bx, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECslLuZgPVt6hg_3ide.exit.sink.split.i156.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECslLuZgPVt6hg_3ide.exit.sink.split.i.i, %bb.as, %bb.aq, %bb.an, %bb.am, %.invoke.i, %bb.z
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatECslLuZgPVt6hg_3ide.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECslLuZgPVt6hg_3ide.exit.sink.split.i156.i, %bb.ba, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECslLuZgPVt6hg_3ide.exit.sink.split.i.i, %bb.ay, %bb.at, %bb.af
  %.sroa.0.1.i = phi i64 [ 0, %bb.ba ], [ 4194304, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECslLuZgPVt6hg_3ide.exit.sink.split.i.i ], [ 4194304, %bb.ay ], [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECslLuZgPVt6hg_3ide.exit.sink.split.i156.i ], [ 0, %bb.at ], [ 0, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit162.thread.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECslLuZgPVt6hg_3ide.exit.sink.split.i153.i: ; preds = %bb.au
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bm) #34
          to label %.thread.i unwind label %bb.az

bb.az:                                            ; preds = %bb.du, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECslLuZgPVt6hg_3ide.exit.sink.split.i153.i, %bb.y
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.ba:                                            ; preds = %bb.ax
  br i1 %i.by, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECslLuZgPVt6hg_3ide.exit.sink.split.i156.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatECslLuZgPVt6hg_3ide.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECslLuZgPVt6hg_3ide.exit.sink.split.i156.i: ; preds = %bb.ba
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bm) #34
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatECslLuZgPVt6hg_3ide.exit.i unwind label %.thread20.i

bb.bb:                                            ; preds = %bb.ah
  br i1 %.not.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit.i, label %bb.be

bb.bc:                                            ; preds = %bb.ah
  br label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit162.thread.i

bb.bd:                                            ; preds = %bb.ah
  br label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit162.thread.i

bb.be:                                            ; preds = %bb.bb
  %i.cb = invoke fastcc noundef ptr @_RNvXscR_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_9MacroCallNtBa_7AstNode4cast(ptr noundef nonnull %.val117.i)
          to label %bb.bf unwind label %bb.aa     ; 2 uses

bb.bf:                                            ; preds = %bb.be
  %.not85.i = icmp eq ptr %i.cb, null
  br i1 %.not85.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.cc = invoke fastcc noundef zeroext i1 @_RNCINvNtNtCslLuZgPVt6hg_3ide19syntax_highlighting9highlight11punctuationNCNvB6_8traverses1_0E0B8_(ptr noundef nonnull align 8 %0, ptr noundef nonnull %i.cb)
          to label %bb.bh unwind label %bb.aa

bb.bh:                                            ; preds = %bb.bg
  %spec.select109.i = select i1 %i.cc, i64 4194304, i64 0
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit.i

bb.bi:                                            ; preds = %bb.ai
  br i1 %.not.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.cd = invoke fastcc noundef ptr @_RNvXsg9_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_10PrefixExprNtBa_7AstNode4cast(ptr noundef nonnull %.val117.i)
          to label %bb.bk unwind label %bb.aa     ; 2 uses

bb.bk:                                            ; preds = %bb.bj
  %.not82.i = icmp eq ptr %i.cd, null
  br i1 %.not82.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ce = invoke fastcc { i64, ptr } @_RNCINvNtNtCslLuZgPVt6hg_3ide19syntax_highlighting9highlight11punctuationNCNvB6_8traverses1_0Es0_0B8_(ptr noundef nonnull %i.cd)
          to label %bb.bm unwind label %bb.aa

bb.bm:                                            ; preds = %bb.bl
  %.fr41.i = freeze { i64, ptr } %i.ce            ; 2 uses
  %i.cf = extractvalue { i64, ptr } %.fr41.i, 0   ; 2 uses
  %i.cg = extractvalue { i64, ptr } %.fr41.i, 1   ; 3 uses
  %cond.i = icmp eq i64 %i.cf, 18
  %spec.select40.i = select i1 %cond.i, i64 47244640256, i64 51539607552 ; 3 uses
  %i.ch = icmp eq i64 %i.cf, -1
  br i1 %i.ch, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cg) ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 48 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !noundef !11
  %i.ck = add i32 %i.cj, -1                       ; 2 uses
  store i32 %i.ck, ptr %i.ci, align 4
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i: ; preds = %bb.bn
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.cg) #34
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit.i unwind label %bb.aa

.thread37.i:                                      ; preds = %bb.ab
  switch i16 %i.u, label %.thread35.i [
    i16 12, label %bb.bu
    i16 3, label %bb.bz
    i16 4, label %bb.cf
    i16 5, label %bb.ca
    i16 6, label %bb.ca
    i16 7, label %bb.cb
    i16 8, label %bb.cb
    i16 9, label %bb.cc
    i16 10, label %bb.cc
    i16 11, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit162.thread.i
    i16 29, label %bb.ce
    i16 25, label %bb.cd
  ]

bb.bo:                                            ; preds = %bb.ai, %bb.ah, %bb.ae, %bb.ad, %bb.ac, %bb.ab
  br label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit162.thread.i

bb.bp:                                            ; preds = %bb.ab
  switch i16 %i.u, label %.thread35.i [
    i16 11, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit162.thread.i
    i16 12, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit162.thread.i
    i16 17, label %bb.bq
    i16 18, label %bb.bq
    i16 19, label %.thread39.i
    i16 20, label %.thread39.i
    i16 21, label %.thread39.i
    i16 22, label %bb.bq
    i16 23, label %.thread39.i
    i16 32, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit162.thread.i
    i16 35, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit162.thread.i
    i16 36, label %.thread39.i
    i16 38, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit162.thread.i
    i16 39, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit162.thread.i
    i16 40, label %bb.br
    i16 41, label %bb.br
    i16 42, label %bb.bs
    i16 43, label %bb.bs
    i16 44, label %bb.bs
    i16 45, label %bb.br
    i16 46, label %bb.br
    i16 47, label %bb.br
    i16 48, label %bb.bt
    i16 49, label %bb.bt
    i16 50, label %bb.bq
    i16 51, label %bb.bq
    i16 52, label %bb.bs
    i16 53, label %bb.bs
    i16 3, label %bb.bz
    i16 4, label %bb.cf
    i16 5, label %bb.ca
    i16 6, label %bb.ca
    i16 7, label %bb.cb
    i16 8, label %bb.cb
    i16 9, label %bb.cc
    i16 10, label %bb.cc
    i16 29, label %bb.ce
    i16 25, label %bb.cd
  ]

bb.bq:                                            ; preds = %bb.bp, %bb.bp, %bb.bp, %bb.bp, %bb.bp
  br label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit162.thread.i

.thread39.i:                                      ; preds = %bb.bp, %bb.bp, %bb.bp, %bb.bp, %bb.bp, %bb.ai, %bb.ae
  br label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit162.thread.i

bb.br:                                            ; preds = %bb.bp, %bb.bp, %bb.bp, %bb.bp, %bb.bp
  br label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit162.thread.i

bb.bs:                                            ; preds = %bb.bp, %bb.bp, %bb.bp, %bb.bp, %bb.bp
  br label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit162.thread.i

bb.bt:                                            ; preds = %bb.bp, %bb.bp
  br label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit162.thread.i

bb.bu:                                            ; preds = %.thread37.i
  br i1 %.not.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.cm = getelementptr i8, ptr %.val117.i, i64 16
  %.val115.i = load ptr, ptr %i.cm, align 8, !noundef !11 ; 3 uses
  %.not.i160.i = icmp eq ptr %.val115.i, null
  br i1 %.not.i160.i, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit162.thread.thread.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.cn = getelementptr inbounds nuw i8, ptr %.val115.i, i64 48 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !noundef !11 ; 2 uses
  %i.cp = icmp eq i32 %i.co, -1
  br i1 %i.cp, label %.invoke.i, label %bb.bx, !prof !13

bb.bx:                                            ; preds = %bb.bw
  %i.cq = add nuw i32 %i.co, 1
  store i32 %i.cq, ptr %i.cn, align 4
  %i.cr = invoke fastcc noundef zeroext i1 @_RNCINvNtNtCslLuZgPVt6hg_3ide19syntax_highlighting9highlight11punctuationNCNvB6_8traverses1_0Es1_0B8_(ptr noundef nonnull %.val115.i)
          to label %bb.by unwind label %.thread20.i ; 2 uses

bb.by:                                            ; preds = %bb.bx
  %spec.select111.i = select i1 %i.cr, i64 5497558138880, i64 3298534883328
  %spec.select112.i = select i1 %i.cr, i64 51539607552, i64 55834574848
  br label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit162.thread.thread.i

.thread35.i:                                      ; preds = %bb.bp, %.thread37.i, %bb.ai, %bb.ah, %bb.ae, %bb.ad, %bb.ac
  br label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit162.thread.i

bb.bz:                                            ; preds = %bb.bp, %.thread37.i
  br label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit162.thread.i

bb.ca:                                            ; preds = %bb.bp, %bb.bp, %.thread37.i, %.thread37.i
  br i1 %.not.i.i, label %bb.cm, label %bb.ch

bb.cb:                                            ; preds = %bb.bp, %bb.bp, %.thread37.i, %.thread37.i
  br i1 %.not.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit.i, label %bb.cx

bb.cc:                                            ; preds = %bb.bp, %bb.bp, %.thread37.i, %.thread37.i
  br i1 %.not.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit.i, label %bb.di

bb.cd:                                            ; preds = %bb.bp, %.thread37.i
  br label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit162.thread.i

bb.ce:                                            ; preds = %bb.bp, %.thread37.i
  br label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit162.thread.i

bb.cf:                                            ; preds = %bb.bp, %.thread37.i
  br i1 %.not.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit164.i, label %.thread67.i

.thread67.i:                                      ; preds = %bb.ds, %bb.dn, %bb.dh, %bb.dc, %bb.cn, %bb.cf
  %.sroa.0.271.i = phi i64 [ 0, %bb.cf ], [ 4194304, %bb.ds ], [ 4194304, %bb.dn ], [ 4194304, %bb.dh ], [ 4194304, %bb.dc ], [ 4194304, %bb.cn ] ; 2 uses
  %.sroa.79.270.i = phi i64 [ 4398046511104, %bb.cf ], [ 0, %bb.ds ], [ 0, %bb.dn ], [ 1099511627776, %bb.dh ], [ 1099511627776, %bb.dc ], [ 2199023255552, %bb.cn ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.val117.i, i64 48 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !noundef !11
  %i.cu = add i32 %i.ct, -1                       ; 2 uses
  store i32 %i.cu, ptr %i.cs, align 4
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.cg, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit164.i

bb.cg:                                            ; preds = %.thread67.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val117.i) #34
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit164.i unwind label %bb.aa

bb.ch:                                            ; preds = %bb.ca
  %i.cw = invoke fastcc noundef ptr @_RNCINvNtNtCslLuZgPVt6hg_3ide19syntax_highlighting9highlight11punctuationNCNvB6_8traverses1_0Es8_0B8_(ptr nonnull %.val117.i)
          to label %bb.ci unwind label %.thread20.i ; 2 uses

bb.ci:                                            ; preds = %bb.ch
  %.not99.i = icmp eq ptr %i.cw, null
  br i1 %.not99.i, label %bb.co, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.cx = invoke fastcc noundef ptr @_RNvXscR_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_9MacroCallNtBa_7AstNode4cast(ptr noundef nonnull %i.cw)
          to label %bb.ck unwind label %.thread20.i ; 2 uses

bb.ck:                                            ; preds = %bb.cj
  %.not100.i = icmp eq ptr %i.cx, null
  br i1 %.not100.i, label %bb.co, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.cy = invoke fastcc noundef zeroext i1 @_RNCINvNtNtCslLuZgPVt6hg_3ide19syntax_highlighting9highlight11punctuationNCNvB6_8traverses1_0Es9_0B8_(ptr noundef nonnull align 8 %0, ptr noundef nonnull %i.cx)
          to label %bb.cn unwind label %.thread20.i

bb.cm:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  br label %bb.cr

bb.cn:                                            ; preds = %bb.cl
  br i1 %i.cy, label %.thread67.i, label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.ck, %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.cz = invoke fastcc noundef ptr @_RNCINvNtNtCslLuZgPVt6hg_3ide19syntax_highlighting9highlight11punctuationNCNvB6_8traverses1_0Esa_0B8_(ptr noundef nonnull %.val117.i)
          to label %bb.cp unwind label %bb.aa     ; 2 uses

bb.cp:                                            ; preds = %bb.co
  %.not102.i = icmp eq ptr %i.cz, null
  br i1 %.not102.i, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  invoke fastcc void @_RNCINvNtNtCslLuZgPVt6hg_3ide19syntax_highlighting9highlight11punctuationNCNvB6_8traverses1_0Esb_0B8_(ptr noalias nofree noundef align 4 captures(none) dereferenceable(12) %i.j, ptr noundef nonnull %i.cz)
          to label %bb.cs unwind label %bb.aa

bb.cr:                                            ; preds = %bb.cs, %bb.cp, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit.i

bb.cs:                                            ; preds = %bb.cq
  %i.da = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.db = load i16, ptr %i.da, align 4, !range !715, !noundef !11
  %.not103.i = icmp eq i16 %i.db, -1
  br i1 %.not103.i, label %bb.cr, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.dc = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !716
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dc, ptr noundef nonnull align 4 dereferenceable(12) %i.j, i64 12, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val65), "nonnull"(ptr %.val66) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(12) %.val66, i64 12, i1 false), !noalias !716
  %i.dd = invoke noundef zeroext i1 @_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBT_9HirFileIdINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrINtCs83ee1IJTiSq_6either6EitherNtNtNtNtB1Y_3ast9generated5nodes4ExprNtB31_3PatEEEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12contains_keyBO_ECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val65, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.c)
          to label %bb.cu unwind label %bb.aa

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !716
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br i1 %i.dd, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit164.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.cb, %bb.cc, %bb.cu, %bb.cr, %bb.bu, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i, %bb.bn, %bb.bm, %bb.bk, %bb.bi, %bb.bh, %bb.bf, %bb.bb, %bb.al, %bb.aj, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit162.thread.thread.i, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit162.thread.i
  %.sroa.79.3.i = phi i64 [ 2199023255552, %bb.cu ], [ 2199023255552, %bb.cr ], [ 8796093022208, %bb.bh ], [ %.sroa.79.057.i, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit162.thread.thread.i ], [ 8796093022208, %bb.bb ], [ 8796093022208, %bb.bf ], [ %.sroa.79.057.i, %bb.aj ], [ %.sroa.79.0.i, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit162.thread.i ], [ 5497558138880, %bb.bn ], [ 5497558138880, %bb.bm ], [ 5497558138880, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i ], [ 5497558138880, %bb.bk ], [ 5497558138880, %bb.bi ], [ 5497558138880, %bb.al ], [ 3298534883328, %bb.bu ], [ 0, %bb.cc ], [ 1099511627776, %bb.cb ]
  %.sroa.50.3.i = phi i64 [ 55834574848, %bb.cu ], [ 55834574848, %bb.cr ], [ 55834574848, %bb.bh ], [ %.sroa.50.058.i, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit162.thread.thread.i ], [ 55834574848, %bb.bb ], [ 55834574848, %bb.bf ], [ %.sroa.50.058.i, %bb.aj ], [ %.sroa.50.0.i, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit162.thread.i ], [ %spec.select40.i, %bb.bn ], [ %spec.select40.i, %bb.bm ], [ %spec.select40.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i ], [ 51539607552, %bb.bk ], [ 51539607552, %bb.bi ], [ 51539607552, %bb.al ], [ 55834574848, %bb.bu ], [ 55834574848, %bb.cc ], [ 55834574848, %bb.cb ]
  %.sroa.0.3.i = phi i64 [ 0, %bb.cu ], [ 0, %bb.cr ], [ %spec.select109.i, %bb.bh ], [ %.sroa.0.059.i, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit162.thread.thread.i ], [ 0, %bb.bb ], [ 0, %bb.bf ], [ %.sroa.0.059.i, %bb.aj ], [ %.sroa.0.0.i, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit162.thread.i ], [ 0, %bb.bn ], [ 0, %bb.bm ], [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i ], [ 0, %bb.bk ], [ 0, %bb.bi ], [ 0, %bb.al ], [ 0, %bb.bu ], [ 0, %bb.cc ], [ 0, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.de = load i32, ptr %i.o, align 8, !noundef !11
  %i.df = add i32 %i.de, -1                       ; 2 uses
  store i32 %i.df, ptr %i.o, align 8
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.cv, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit167.i

bb.cv:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit.i
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %1) #34
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit167.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit167.i: ; preds = %bb.cv, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit.i
  %i.dh = and i64 %.sroa.50.3.i, 1095216660480
  br label %_RINvNtNtCslLuZgPVt6hg_3ide19syntax_highlighting9highlight11punctuationNCNvB4_8traverses1_0EB6_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit164.i: ; preds = %bb.cu, %bb.cg, %.thread67.i, %bb.cf
  %.sroa.79.4.i = phi i64 [ 2199023255552, %bb.cu ], [ %.sroa.79.270.i, %bb.cg ], [ 4398046511104, %bb.cf ], [ %.sroa.79.270.i, %.thread67.i ] ; 2 uses
  %.sroa.0.4.i = phi i64 [ 4194304, %bb.cu ], [ %.sroa.0.271.i, %bb.cg ], [ 0, %bb.cf ], [ %.sroa.0.271.i, %.thread67.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.di = load i32, ptr %i.o, align 8, !noundef !11
  %i.dj = add i32 %i.di, -1                       ; 2 uses
  store i32 %i.dj, ptr %i.o, align 8
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.cw, label %_RINvNtNtCslLuZgPVt6hg_3ide19syntax_highlighting9highlight11punctuationNCNvB4_8traverses1_0EB6_.exit

bb.cw:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit164.i
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %1) #34
  br label %_RINvNtNtCslLuZgPVt6hg_3ide19syntax_highlighting9highlight11punctuationNCNvB4_8traverses1_0EB6_.exit

bb.cx:                                            ; preds = %bb.cb
  %i.dl = invoke fastcc noundef ptr @_RNCINvNtNtCslLuZgPVt6hg_3ide19syntax_highlighting9highlight11punctuationNCNvB6_8traverses1_0Es5_0B8_(ptr nonnull %.val117.i)
          to label %bb.cy unwind label %.thread20.i ; 2 uses

bb.cy:                                            ; preds = %bb.cx
  %.not95.i = icmp eq ptr %i.dl, null
  br i1 %.not95.i, label %bb.dd, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.dm = invoke fastcc noundef ptr @_RNvXscR_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_9MacroCallNtBa_7AstNode4cast(ptr noundef nonnull %i.dl)
          to label %bb.da unwind label %.thread20.i ; 2 uses

bb.da:                                            ; preds = %bb.cz
  %.not96.i = icmp eq ptr %i.dm, null
  br i1 %.not96.i, label %bb.dd, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.dn = invoke fastcc noundef zeroext i1 @_RNCINvNtNtCslLuZgPVt6hg_3ide19syntax_highlighting9highlight11punctuationNCNvB6_8traverses1_0Es6_0B8_(ptr noundef nonnull align 8 %0, ptr noundef nonnull %i.dm)
          to label %bb.dc unwind label %.thread20.i

bb.dc:                                            ; preds = %bb.db
  br i1 %i.dn, label %.thread67.i, label %bb.dd
end_hunk_0
