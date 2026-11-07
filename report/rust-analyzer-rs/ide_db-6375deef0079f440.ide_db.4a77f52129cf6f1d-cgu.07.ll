Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_db-6375deef0079f440.ide_db.4a77f52129cf6f1d-cgu.07?download=true
inline.NumInlined: 1914
inline.NumDeleted: 864
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtNtCs6oosyzwIepl_6ide_db7imports13import_assets21path_import_candidate:bb.a

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListEECs6oosyzwIepl_6ide_db.exit.i.i.i: ; preds = %bb.ao
  %i.cd = load i32, ptr %i.ap, align 4, !noalias !1670, !noundef !34
  %i.ce = add i32 %i.cd, -1                       ; 2 uses
  store i32 %i.ce, ptr %i.ap, align 4, !noalias !1670
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit67.sink.split.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit67.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit67.sink.split.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListEECs6oosyzwIepl_6ide_db.exit64.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListEECs6oosyzwIepl_6ide_db.exit.i.i.i
  %.sroa.20.sroa.0.2.ph.i.i.i = phi i24 [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListEECs6oosyzwIepl_6ide_db.exit64.i.i.i ], [ 65793, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListEECs6oosyzwIepl_6ide_db.exit.i.i.i ]
  %.sroa.185.2.ph.i.i.i = phi i64 [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListEECs6oosyzwIepl_6ide_db.exit64.i.i.i ], [ 4294967296, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListEECs6oosyzwIepl_6ide_db.exit.i.i.i ]
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.y) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit67.i.i.i unwind label %.thread135

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit67.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit67.sink.split.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListEECs6oosyzwIepl_6ide_db.exit64.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListEECs6oosyzwIepl_6ide_db.exit.i.i.i
  %.sroa.20.sroa.0.2.i.i.i = phi i24 [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListEECs6oosyzwIepl_6ide_db.exit64.i.i.i ], [ 65793, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListEECs6oosyzwIepl_6ide_db.exit.i.i.i ], [ %.sroa.20.sroa.0.2.ph.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit67.sink.split.i.i.i ] ; 2 uses
  %.sroa.185.2.i.i.i = phi i64 [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListEECs6oosyzwIepl_6ide_db.exit64.i.i.i ], [ 4294967296, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListEECs6oosyzwIepl_6ide_db.exit.i.i.i ], [ %.sroa.185.2.ph.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit67.sink.split.i.i.i ]
  %spec.select46.i.i.i = select i1 %i.r, i64 %.sroa.185.2.i.i.i, i64 4294967296
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs6oosyzwIepl_6ide_db.exit.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListEECs6oosyzwIepl_6ide_db.exit64.i.i.i: ; preds = %bb.aq, %bb.ap
  %i.cg = load i32, ptr %i.ap, align 4, !noalias !1670, !noundef !34
  %i.ch = add i32 %i.cg, -1                       ; 2 uses
  store i32 %i.ch, ptr %i.ap, align 4, !noalias !1670
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit67.sink.split.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit67.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs6oosyzwIepl_6ide_db.exit.i.i.i: ; preds = %bb.y, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit67.i.i.i, %bb.x
  %.sroa.18.sroa.0.3.i.i.i = phi i24 [ %.sroa.20.sroa.0.2.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit67.i.i.i ], [ %.sroa.18.sroa.0.1.i.i.i, %bb.x ], [ %.sroa.18.sroa.0.1.i.i.i, %bb.y ]
  %.sroa.20.sroa.0.3.i.i.i = phi i24 [ %.sroa.20.sroa.0.2.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit67.i.i.i ], [ %.sroa.20.sroa.0.1.i.i.i, %bb.x ], [ %.sroa.20.sroa.0.1.i.i.i, %bb.y ]
  %.sroa.185.3.i.i.i = phi i64 [ %spec.select46.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit67.i.i.i ], [ %spec.select.i.i.i, %bb.x ], [ %spec.select.i.i.i, %bb.y ]
  %.sroa.0.3.i.i.i = phi i64 [ 1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit67.i.i.i ], [ %spec.select45.i.i.i, %bb.x ], [ %spec.select45.i.i.i, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1670
  %i.cj = zext nneg i24 %.sroa.20.sroa.0.3.i.i.i to i64
  %i.ck = shl nuw nsw i64 %i.cj, 40
  %i.cl = zext nneg i24 %.sroa.18.sroa.0.3.i.i.i to i64
  %i.cm = shl nuw nsw i64 %i.cl, 8
  %i.cn = or i64 %i.cm, %.sroa.185.3.i.i.i
  %i.co = or i64 %i.cn, %i.ck
  %i.cp = or i64 %i.co, %.sroa.0.3.i.i.i
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathE6map_orNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets19PathDefinitionKindsNCNvB1L_21path_import_candidate0EB1P_.exit

bb.ar:                                            ; preds = %bb.bb, %bb.an
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35, !noalias !1670
  unreachable

bb.as:                                            ; preds = %bb.f
  %i.cr = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !1670
  %i.cs = icmp ult i64 %i.cr, 5
  br i1 %i.cs, label %bb.at, label %bb.x

bb.at:                                            ; preds = %bb.as
  %i.ct = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtCs6oosyzwIepl_6ide_db7imports13import_assetsNtB4_19PathDefinitionKinds16deduce_from_path10___CALLSITE, i64 16) monotonic, align 8, !noalias !1670 ; 3 uses
  switch i8 %i.ct, label %bb.au [
    i8 0, label %bb.x
    i8 1, label %bb.av
    i8 2, label %bb.av
  ], !prof !48

bb.au:                                            ; preds = %bb.at
  %i.cu = invoke noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMNtNtCs6oosyzwIepl_6ide_db7imports13import_assetsNtB4_19PathDefinitionKinds16deduce_from_path10___CALLSITE)
          to label %bb.aw unwind label %bb.ba, !noalias !1670 ; 2 uses

bb.av:                                            ; preds = %bb.at, %bb.aw, %bb.at
  %.sroa.027.0.i.i.i = phi i8 [ %i.cu, %bb.aw ], [ %i.ct, %bb.at ], [ %i.ct, %bb.at ]
  %i.cv = load ptr, ptr @_RNvNvMNtNtCs6oosyzwIepl_6ide_db7imports13import_assetsNtB4_19PathDefinitionKinds16deduce_from_path10___CALLSITE, align 8, !noalias !1670, !nonnull !34, !align !35, !noundef !34
  %i.cw = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cv, i8 noundef %.sroa.027.0.i.i.i)
          to label %bb.ax unwind label %bb.ba, !noalias !1670

bb.aw:                                            ; preds = %bb.au
  %i.cx = icmp eq i8 %i.cu, 0
  br i1 %i.cx, label %bb.x, label %bb.av

bb.ax:                                            ; preds = %bb.av
  br i1 %i.cw, label %bb.ay, label %bb.x

bb.ay:                                            ; preds = %bb.ax
  %i.cy = load ptr, ptr @_RNvNvMNtNtCs6oosyzwIepl_6ide_db7imports13import_assetsNtB4_19PathDefinitionKinds16deduce_from_path10___CALLSITE, align 8, !noalias !1670, !nonnull !34, !align !35, !noundef !34 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1670
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1670
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1670
  store ptr %i.j, ptr %i.g, align 8, !noalias !1670
  %.sroa.437.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXNtCs9GitHPCrz2Q_5rowan3apiINtB2_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCs6oosyzwIepl_6ide_db, ptr %.sroa.437.0..sroa_idx.i.i.i, align 8, !noalias !1670
  store ptr @27, ptr %i.h, align 8, !noalias !1670
  %i.da = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.g, ptr %i.da, align 8, !noalias !1670
  store ptr %i.h, ptr %i.i, align 8, !noalias !1670
  %i.db = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @28, ptr %i.db, align 8, !noalias !1670
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1670
  store i64 1, ptr %i.f, align 8, !noalias !1670
  %.sroa.029.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.i, ptr %.sroa.029.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !1670
  %.sroa.029.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 1, ptr %.sroa.029.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !1670
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.cz, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !1670
  invoke void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cy, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f)
          to label %bb.az unwind label %bb.ba, !noalias !1670

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1670
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1670
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1670
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1670
  br label %bb.x

bb.ba:                                            ; preds = %bb.ay, %bb.av, %bb.au, %bb.e
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.j, align 8, !noalias !1670, !nonnull !34, !noundef !34 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 48 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !noalias !1670, !noundef !34
  %i.de = add i32 %i.dd, -1                       ; 2 uses
  store i32 %i.de, ptr %i.dc, align 4, !noalias !1670
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %bb.bb, label %.thread

bb.bb:                                            ; preds = %bb.ba
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val.i.i.i) #37
          to label %.thread unwind label %bb.ar, !noalias !1670

.thread135:                                       ; preds = %bb.bs, %bb.bp, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit67.sink.split.i.i.i, %bb.d, %bb.u, %bb.y, %.noexc83
  %.sroa.059.1.ph = phi i1 [ true, %.noexc83 ], [ true, %bb.y ], [ true, %bb.u ], [ true, %bb.d ], [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit67.sink.split.i.i.i ], [ false, %bb.bp ], [ true, %bb.bs ]
  %.sroa.060.1.ph = phi i1 [ true, %.noexc83 ], [ true, %bb.y ], [ true, %bb.u ], [ true, %bb.d ], [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit67.sink.split.i.i.i ], [ false, %bb.bp ], [ false, %bb.bs ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathE6map_orNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets19PathDefinitionKindsNCNvB1L_21path_import_candidate0EB1P_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs6oosyzwIepl_6ide_db.exit.i.i.i, %bb.b, %bb.a
  %.sroa.05.0.i = phi i64 [ 72340172838076673, %bb.a ], [ %i.cp, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs6oosyzwIepl_6ide_db.exit.i.i.i ], [ 72340172838076673, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.sroa.0.sroa.11.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathE6map_orNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets19PathDefinitionKindsNCNvB1L_21path_import_candidate0EB1P_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %3, ptr %i.q, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  invoke void @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl12resolve_path(ptr noalias nofree noundef nonnull sret([32 x i8]) align 4 captures(none) dereferenceable(32) %i.m, ptr noundef nonnull align 8 %i.dg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q)
          to label %bb.bh unwind label %bb.bf

bb.bd:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathE6map_orNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets19PathDefinitionKindsNCNvB1L_21path_import_candidate0EB1P_.exit
  %.sroa.057.0.copyload = load i64, ptr %4, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, i64 24, i1 false)
  %.sroa.0120.0.copyload = load i64, ptr %5, align 8
  %.sroa.4121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.sroa.0.sroa.11.sroa.10, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4121.0..sroa_idx, i64 16, i1 false)
  br label %bb.be

bb.be:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECs6oosyzwIepl_6ide_db.exit100, %bb.bd
  %.sroa.10.sroa.0.sroa.11.sroa.0.0 = phi i64 [ %.sroa.0120.0.copyload, %bb.bd ], [ %.sroa.0117.0.copyload, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECs6oosyzwIepl_6ide_db.exit100 ]
  %.sroa.10.sroa.0.sroa.0.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.bd ], [ %.sroa.462.0.copyload, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECs6oosyzwIepl_6ide_db.exit100 ]
  %.sroa.10.sroa.0.sroa.10.0 = phi i64 [ 0, %bb.bd ], [ %.sroa.5.0.copyload, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECs6oosyzwIepl_6ide_db.exit100 ]
  %.sroa.10.sroa.11.0 = phi i64 [ %.sroa.057.0.copyload, %bb.bd ], [ %.sroa.029.0.copyload, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECs6oosyzwIepl_6ide_db.exit100 ]
  %.sroa.04.0 = phi i64 [ 0, %bb.bd ], [ %i.fa, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECs6oosyzwIepl_6ide_db.exit100 ]
  store i64 %.sroa.04.0, ptr %0, align 8
  %.sroa.10.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.sroa.0.sroa.0.0, ptr %.sroa.10.0..sroa_idx8, align 8
  %.sroa.10.sroa.0.sroa.10.0..sroa.10.0..sroa_idx8.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.10.sroa.0.sroa.10.0, ptr %.sroa.10.sroa.0.sroa.10.0..sroa.10.0..sroa_idx8.sroa_idx, align 8
  %.sroa.10.sroa.0.sroa.11.0..sroa.10.0..sroa_idx8.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.10.sroa.0.sroa.11.sroa.0.0, ptr %.sroa.10.sroa.0.sroa.11.0..sroa.10.0..sroa_idx8.sroa_idx, align 8
  %.sroa.10.sroa.0.sroa.11.sroa.10.0..sroa.10.sroa.0.sroa.11.0..sroa.10.0..sroa_idx8.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.sroa.0.sroa.11.sroa.10.0..sroa.10.sroa.0.sroa.11.0..sroa.10.0..sroa_idx8.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.sroa.0.sroa.11.sroa.10, i64 16, i1 false)
  %.sroa.10.sroa.10.0..sroa.10.0..sroa_idx8.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.05.0.i, ptr %.sroa.10.sroa.10.0..sroa.10.0..sroa_idx8.sroa_idx, align 8
  %.sroa.10.sroa.11.0..sroa.10.0..sroa_idx8.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.10.sroa.11.0, ptr %.sroa.10.sroa.11.0..sroa.10.0..sroa_idx8.sroa_idx, align 8
  %.sroa.12.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.0..sroa_idx11, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.sroa.0.sroa.11.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs33K2ylI4knu_10hir_expand4name4NameEECs6oosyzwIepl_6ide_db.exit

bb.bf:                                            ; preds = %bb.cc, %bb.ch, %bb.ce, %bb.bm, %bb.bl, %bb.bi, %bb.bc
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %.body97

.body97:                                          ; preds = %bb.bz, %bb.ca, %bb.bf
  %eh.lpad-body98 = phi { ptr, i32 } [ %i.dh, %bb.bf ], [ %i.ep, %bb.ca ], [ %i.ep, %bb.bz ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !noundef !34
  %i.dk = add i32 %i.dj, -1                       ; 2 uses
  store i32 %i.dk, ptr %i.di, align 4
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %bb.bg, label %.thread

bb.bg:                                            ; preds = %.body97
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %3) #37
          to label %.thread unwind label %bb.cq

bb.bh:                                            ; preds = %bb.bc
  %i.dm = load i32, ptr %i.m, align 4, !range !62, !noundef !34
  switch i32 %i.dm, label %bb.bk [
    i32 -1, label %bb.bi
    i32 3, label %bb.bj
  ]

bb.bi:                                            ; preds = %bb.bh, %bb.bj
  %i.dn = invoke noundef ptr @_RNvMsf_NtNtCsjJXvCMGntp8_6syntax3ast8node_extNtNtNtB7_9generated5nodes4Path15first_qualifier(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q)
          to label %bb.bx unwind label %bb.bf     ; 6 uses

bb.bj:                                            ; preds = %bb.bh
  %i.do = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.dp = load i8, ptr %i.do, align 4, !range !64, !noundef !34
  switch i8 %i.dp, label %bb.bk [
    i8 2, label %bb.bl
    i8 7, label %bb.bm
    i8 8, label %bb.bi
  ]

bb.bk:                                            ; preds = %bb.bh, %bb.bj
  store i64 -1, ptr %0, align 8
  br label %bb.br

bb.bl:                                            ; preds = %bb.bj
  %i.dq = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.dr = load ptr, ptr %1, align 8, !nonnull !34, !align !35, !noundef !34
  invoke void @_RNvMsi_Cs8Xq8PKFYOms_3hirNtB5_3Adt2ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.dq, ptr noundef nonnull %i.dr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @14)
          to label %bb.bn unwind label %bb.bf

bb.bm:                                            ; preds = %bb.bj
  %i.ds = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.dt = load i32, ptr %i.ds, align 4, !range !52, !noundef !34
  %i.du = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.dv = load i32, ptr %i.du, align 4, !noundef !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.dw = load ptr, ptr %1, align 8, !nonnull !34, !align !35, !noundef !34
  invoke void @_RNvMsF_Cs8Xq8PKFYOms_3hirNtB5_9TypeAlias2ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, i32 noundef %i.dt, i32 noundef %i.dv, ptr noundef nonnull %i.dw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @14)
          to label %bb.bq unwind label %bb.bf

bb.bn:                                            ; preds = %bb.bl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.sroa.0.sroa.11.sroa.10, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dx = load <2 x i64>, ptr %.sroa.435.0..sroa_idx, align 8
  %.sroa.031.sroa.0.0.copyload = load ptr, ptr %i.l, align 8
  %.sroa.031.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.dy = load <2 x i64>, ptr %.sroa.031.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.bo

bb.bo:                                            ; preds = %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit, %bb.bn
  %.sroa.10.sroa.0.sroa.0.1 = phi ptr [ %.sroa.031.sroa.0.0.copyload, %bb.bn ], [ %.val81, %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit ]
  %i.dz = phi <2 x i64> [ %i.dy, %bb.bn ], [ %i.ei, %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit ]
  %i.ea = phi <2 x i64> [ %i.dx, %bb.bn ], [ %i.eh, %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit ]
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !noundef !34
  %i.ed = add i32 %i.ec, -1                       ; 2 uses
  store i32 %i.ed, ptr %i.eb, align 4
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %bb.bp, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECs6oosyzwIepl_6ide_db.exit89

bb.bp:                                            ; preds = %bb.bo
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %3) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECs6oosyzwIepl_6ide_db.exit89 unwind label %.thread135

bb.bq:                                            ; preds = %bb.bm
  %.val81 = load ptr, ptr %i.k, align 8, !nonnull !34, !noundef !34 ; 2 uses
  %.sroa.09.0.copyload.i = load i32, ptr %.val81, align 8, !noalias !1672 ; 2 uses
  %i.ef = icmp ne i32 %.sroa.09.0.copyload.i, 27
  call void @llvm.assume(i1 %i.ef)
  %i.eg = icmp eq i32 %.sroa.09.0.copyload.i, 7
  br i1 %i.eg, label %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit, label %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.thread

_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit: ; preds = %bb.bq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.sroa.0.sroa.11.sroa.10, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.eh = load <2 x i64>, ptr %.sroa.441.0..sroa_idx, align 8
  %.sroa.037.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ei = load <2 x i64>, ptr %.sroa.037.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.bo

_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.thread: ; preds = %bb.bq
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.br

bb.br:                                            ; preds = %bb.cg, %bb.cl, %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.thread, %bb.bk
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !noundef !34
  %i.el = add i32 %i.ek, -1                       ; 2 uses
  store i32 %i.el, ptr %i.ej, align 4
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %bb.bs, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECs6oosyzwIepl_6ide_db.exit91

bb.bs:                                            ; preds = %bb.br
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %3) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECs6oosyzwIepl_6ide_db.exit91 unwind label %.thread135

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECs6oosyzwIepl_6ide_db.exit89: ; preds = %bb.bo, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.10.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.sroa.0.sroa.0.1, ptr %.sroa.10.0..sroa_idx9, align 8
  %.sroa.10.sroa.0.sroa.10.0..sroa.10.0..sroa_idx9.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %i.dz, ptr %.sroa.10.sroa.0.sroa.10.0..sroa.10.0..sroa_idx9.sroa_idx, align 8
  %.sroa.10.sroa.0.sroa.11.sroa.10.0..sroa.10.sroa.0.sroa.11.0..sroa.10.0..sroa_idx9.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.sroa.0.sroa.11.sroa.10.0..sroa.10.sroa.0.sroa.11.0..sroa.10.0..sroa_idx9.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.sroa.0.sroa.11.sroa.10, i64 16, i1 false)
  %.sroa.10.sroa.10.0..sroa.10.0..sroa_idx9.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x i64> %i.ea, ptr %.sroa.10.sroa.10.0..sroa.10.0..sroa_idx9.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.sroa.0.sroa.11.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.bu unwind label %bb.bt

bb.bt:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECs6oosyzwIepl_6ide_db.exit89
  %i.en = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %5)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECs6oosyzwIepl_6ide_db.exit108 unwind label %bb.bv

bb.bu:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECs6oosyzwIepl_6ide_db.exit89
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %5)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs33K2ylI4knu_10hir_expand4name4NameEECs6oosyzwIepl_6ide_db.exit

bb.bv:                                            ; preds = %bb.bt
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.bw:                                            ; preds = %.thread
  br i1 %.sroa.059.0126, label %.body93.thread, label %bb.cp

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs33K2ylI4knu_10hir_expand4name4NameEECs6oosyzwIepl_6ide_db.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs33K2ylI4knu_10hir_expand4name4NameEECs6oosyzwIepl_6ide_db.exit106, %bb.bu, %bb.be
  ret void

bb.bx:                                            ; preds = %bb.bi
  %.not69 = icmp eq ptr %i.dn, null
  br i1 %.not69, label %bb.ce, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.dn, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl12resolve_path(ptr noalias nofree noundef nonnull sret([32 x i8]) align 4 captures(none) dereferenceable(32) %i.a, ptr noundef nonnull align 8 %i.dg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %bb.cb unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ep = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dn, i64 48 ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4, !noundef !34
  %i.es = add i32 %i.er, -1                       ; 2 uses
  store i32 %i.es, ptr %i.eq, align 4
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %bb.ca, label %.body97

bb.ca:                                            ; preds = %bb.bz
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.dn) #37
          to label %.body97 unwind label %bb.cd

bb.cb:                                            ; preds = %bb.by
  %i.eu = load i32, ptr %i.a, align 4, !range !62, !noundef !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dn, i64 48 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !noundef !34
  %i.ex = add i32 %i.ew, -1                       ; 2 uses
  store i32 %i.ex, ptr %i.ev, align 4
  %i.ey = icmp eq i32 %i.ex, 0
  br i1 %i.ey, label %bb.cc, label %bb.cf

bb.cc:                                            ; preds = %bb.cb
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.dn) #37
          to label %bb.cf unwind label %bb.bf

bb.cd:                                            ; preds = %bb.ca
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.ce:                                            ; preds = %bb.bx, %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RNvMsf_NtNtCsjJXvCMGntp8_6syntax3ast8node_extNtNtNtB7_9generated5nodes4Path8segments(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q)
          to label %bb.ch unwind label %bb.bf

bb.cf:                                            ; preds = %bb.cb, %bb.cc
  %.not.i95 = icmp eq i32 %i.eu, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %.not.i95, label %bb.ce, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  store i64 -1, ptr %0, align 8
  br label %bb.br

bb.ch:                                            ; preds = %bb.ce
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke void @_RINvNtNtCshzWfHUSfYae_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB4_7sources10successors10SuccessorsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNCNvMsf_NtB1S_8node_extNtB1O_4Path8segments0ENCNvNtNtCs6oosyzwIepl_6ide_db7imports13import_assets21path_import_candidates0_0ENtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtB6_6option6OptionNtNtB6_7convert10InfallibleENCINvXsI_B5u_IB5s_INtNtCsbSS6DM8SDEO_5alloc3vec3VecB4N_EEINtNtNtB4_6traits7collect12FromIteratorIB5s_B4N_EE9from_iterBQ_E0B6x_EB3D_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.o)
          to label %bb.ci unwind label %bb.bf

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.fa = load i64, ptr %i.p, align 8, !range !43, !noundef !34 ; 2 uses
  %.not70 = icmp eq i64 %i.fa, -1
  br i1 %.not70, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.462.0.copyload = load ptr, ptr %.sroa.462.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx63, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.sroa.029.0.copyload = load i64, ptr %4, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.430.0..sroa_idx, i64 24, i1 false)
  %.sroa.0117.0.copyload = load i64, ptr %5, align 8
end_hunk_0
