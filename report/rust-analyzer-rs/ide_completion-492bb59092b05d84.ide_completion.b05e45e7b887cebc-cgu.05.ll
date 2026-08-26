Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_completion-492bb59092b05d84.ide_completion.b05e45e7b887cebc-cgu.05?download=true
inline.NumInlined: 1386
inline.NumDeleted: 598
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes7RetTypeECsf8NQSppxkmK_14ide_completion:bb.a

bb.i:                                             ; preds = %.body
  %i.x = getelementptr inbounds nuw i8, ptr %.val4, i64 48 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !noundef !4
  %i.z = add i32 %i.y, -1                         ; 2 uses
  store i32 %i.z, ptr %i.x, align 4
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.j, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val4) #25
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit unwind label %bb.m

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes7RetTypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EECsf8NQSppxkmK_14ide_completion.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !191
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7RetTypeEECsf8NQSppxkmK_14ide_completion.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7RetTypeEECsf8NQSppxkmK_14ide_completion.exit: ; preds = %.noexc7, %.noexc, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes7RetTypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EECsf8NQSppxkmK_14ide_completion.exit
  %i.ab = phi ptr [ %i.i, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes7RetTypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EECsf8NQSppxkmK_14ide_completion.exit ], [ null, %.noexc ], [ null, %.noexc7 ]
  %.val3 = load ptr, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.ac = icmp eq ptr %.val3, null
  br i1 %i.ac, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit9, label %bb.k

bb.k:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7RetTypeEECsf8NQSppxkmK_14ide_completion.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %.val3, i64 48 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !noundef !4
  %i.af = add i32 %i.ae, -1                       ; 2 uses
  store i32 %i.af, ptr %i.ad, align 4
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.l, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit9

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val3) #25
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit9

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit9: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7RetTypeEECsf8NQSppxkmK_14ide_completion.exit, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.ab

bb.m:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit: ; preds = %bb.i, %.body, %bb.j
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0EB31_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 104811045873349726) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 104811045873349726) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(88) %5, ptr noalias nofree noundef align 8 dereferenceable(8) %6) unnamed_addr #3 {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph107 = phi ptr [ %i.fw, %.outer ], [ %0, %bb.a ] ; 21 uses
  %.sroa.16.0.ph106 = phi i64 [ %i.fh, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph105 = phi i32 [ %i.f, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph104 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.c = ptrtoint ptr %.sroa.0.0.ph107 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph104, null
  %i.d = icmp eq i32 %.sroa.025.0.ph105, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph234

bb.b:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsf8NQSppxkmK_14ide_completion.exit
  %i.e = icmp eq i32 %i.f, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph234

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsf8NQSppxkmK_14ide_completion.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa98 = phi ptr [ %i.fi, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph107, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsf8NQSppxkmK_14ide_completion.exit ], [ %i.fw, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.11.1.lcssa.i, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsf8NQSppxkmK_14ide_completion.exit ], [ %i.fh, %.outer ]
  call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1s_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0EB3o_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph.lcssa98, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 104811045873349726) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.f

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0100.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph106, %.lr.ph ]
  call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0EB2R_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph107, i64 noundef %.sroa.16.0100.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.f

.lr.ph234:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.099233 = phi i32 [ %i.f, %bb.b ], [ %.sroa.025.0.ph105, %.lr.ph ]
  %.sroa.16.0100232 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph106, %.lr.ph ] ; 21 uses
  %i.f = add i32 %.sroa.025.099233, -1            ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !194)
  %i.g = lshr i64 %.sroa.16.0100232, 3            ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.g, 352
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph107, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw nsw i64 %i.g, 616
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph107, i64 %.idx2.i ; 4 uses
  %i.j = icmp samesign ult i64 %.sroa.16.0100232, 64
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph234
  %i.k = call noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0EB30_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph107, ptr noundef nonnull readonly %i.h, ptr noundef nonnull readonly %i.i, i64 noundef %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph234
  %.val4.i = load ptr, ptr %6, align 8, !alias.scope !194, !noalias !197, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.l = call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0B1R_(ptr nonnull %.val4.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.0.0.ph107, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.h) #30, !noalias !194 ; 2 uses
  %i.m = call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0B1R_(ptr nonnull %.val4.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.0.0.ph107, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.i) #30, !noalias !194
  %i.n = xor i1 %i.l, %i.m
  br i1 %i.n, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0B1R_(ptr nonnull %.val4.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.i) #30, !noalias !194
  %i.p = xor i1 %i.l, %i.o
  %..i.i = select i1 %i.p, ptr %i.i, ptr %i.h
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph._crit_edge, %.outer._crit_edge
  ret void

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.0.0.i.sink.i = phi ptr [ %i.k, %bb.c ], [ %.sroa.0.0.ph107, %bb.d ], [ %..i.i, %bb.e ]
  %i.q = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.r = sub nuw i64 %i.q, %i.c                   ; 2 uses
  %.sroa.0.0.i = udiv exact i64 %i.r, 88          ; 3 uses
  %i.s = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.16.0100232
  call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph107, i64 %i.r ; 20 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.t, i64 88, i1 false)
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val = load ptr, ptr %6, align 8, !nonnull !4, !align !6, !noundef !4
  %i.u = call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0B1R_(ptr nonnull %.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.028.0.ph104, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.t) #30
  br i1 %i.u, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.g, %bb.h
  %.val37 = load ptr, ptr %6, align 8             ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !199)
  call void @llvm.experimental.noalias.scope.decl(metadata !202)
  %.not74 = icmp samesign ult i64 %3, %.sroa.16.0100232
  br i1 %.not74, label %bb.k, label %bb.j, !prof !204

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr [88 x i8], ptr %2, i64 %.sroa.16.0100232 ; 4 uses
  %i.w = getelementptr i8, ptr %.val37, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 28
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 25
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %bb.s, %bb.j
  %.sroa.11.0.i = phi i64 [ 0, %bb.j ], [ %.sroa.11.1.lcssa.i, %bb.s ] ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.0.0.ph107, %bb.j ], [ %i.cd, %bb.s ] ; 3 uses
  %.sroa.19.0.i = phi ptr [ %i.v, %bb.j ], [ %i.cb, %bb.s ] ; 2 uses
  %.sroa.0.0.i39 = phi i64 [ %.sroa.0.0.i, %bb.j ], [ %.sroa.16.0100232, %bb.s ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [88 x i8], ptr %.sroa.0.0.ph107, i64 %.sroa.0.0.i39 ; 2 uses
  %i.ae = icmp ult ptr %.sroa.5.0.i, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val37) ]
  br label %bb.m

._crit_edge.i:                                    ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0B1R_.exit.i, %bb.l
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.l ], [ %i.by, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0B1R_.exit.i ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.l ], [ %i.bz, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0B1R_.exit.i ] ; 2 uses
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.l ], [ %i.bv, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0B1R_.exit.i ]
  %i.af = icmp eq i64 %.sroa.0.0.i39, %.sroa.16.0100232
  br i1 %i.af, label %bb.t, label %bb.s

bb.m:                                             ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0B1R_.exit.i, %.lr.ph.i
  %.sroa.19.111.i = phi ptr [ %.sroa.19.0.i, %.lr.ph.i ], [ %i.bv, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0B1R_.exit.i ]
  %.sroa.5.110.i = phi ptr [ %.sroa.5.0.i, %.lr.ph.i ], [ %i.bz, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0B1R_.exit.i ] ; 11 uses
  %.sroa.11.19.i = phi i64 [ %.sroa.11.0.i, %.lr.ph.i ], [ %i.by, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0B1R_.exit.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !205)
  call void @llvm.experimental.noalias.scope.decl(metadata !208)
  %.val.i.i = load ptr, ptr %.val37, align 8, !noalias !210, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  %.val1.i.i = load ptr, ptr %i.w, align 8, !noalias !210, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !211)
  call void @llvm.experimental.noalias.scope.decl(metadata !214)
  %i.ag = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !216, !nonnull !4, !noundef !4
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !216, !noundef !4
  %i.ak = call noundef i64 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport34compute_fuzzy_completion_order_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.5.110.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef %i.aj, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1.i.i), !noalias !217 ; 2 uses
  %i.al = load ptr, ptr %i.ag, align 8, !noalias !218, !nonnull !4, !noundef !4
  %i.am = load i64, ptr %i.ai, align 8, !noalias !218, !noundef !4
  %i.an = call noundef i64 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport34compute_fuzzy_completion_order_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.al, i64 noundef %i.am, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1.i.i), !noalias !202 ; 2 uses
  %i.ao = call i8 @llvm.ucmp.i8.i64(i64 %i.ak, i64 %i.an)
  %i.ap = icmp eq i64 %i.ak, %i.an
  br i1 %i.ap, label %bb.n, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0B1R_.exit.i

bb.n:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.5.110.i, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !219)
  call void @llvm.experimental.noalias.scope.decl(metadata !222)
  %i.ar = load i8, ptr %i.aq, align 4, !range !224, !alias.scope !225, !noalias !226, !noundef !4 ; 3 uses
  %i.as = load i8, ptr %i.x, align 8, !range !224, !alias.scope !227, !noalias !228, !noundef !4 ; 2 uses
  %i.at = call i8 @llvm.ucmp.i8.i8(i8 %i.ar, i8 %i.as)
  %i.au = icmp eq i8 %i.ar, %i.as
  br i1 %i.au, label %bb.o, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  switch i8 %i.ar, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i [
    i8 1, label %bb.p
    i8 4, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.5.110.i, i64 25
  %i.aw = load i8, ptr %i.av, align 1, !alias.scope !225, !noalias !226, !noundef !4
  %i.ax = load i8, ptr %i.aa, align 1, !alias.scope !227, !noalias !228, !noundef !4
  %i.ay = call i8 @llvm.ucmp.i8.i8(i8 %i.aw, i8 %i.ax)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.5.110.i, i64 28
  %i.ba = load i32, ptr %i.az, align 4, !range !10, !alias.scope !225, !noalias !226, !noundef !4 ; 2 uses
  %i.bb = load i32, ptr %i.y, align 4, !range !10, !alias.scope !227, !noalias !228, !noundef !4 ; 2 uses
  %i.bc = call i8 @llvm.ucmp.i8.i32(i32 %i.ba, i32 %i.bb)
  %i.bd = icmp eq i32 %i.ba, %i.bb
  br i1 %i.bd, label %bb.r, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.5.110.i, i64 32
  %i.bf = load i32, ptr %i.be, align 4, !alias.scope !225, !noalias !226, !noundef !4
  %i.bg = load i32, ptr %i.z, align 8, !alias.scope !227, !noalias !228, !noundef !4
  %i.bh = call i8 @llvm.ucmp.i8.i32(i32 %i.bf, i32 %i.bg)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i: ; preds = %bb.r, %bb.q, %bb.p, %bb.n
  %.sroa.0.0.i.i.i.i = phi i8 [ %i.at, %bb.n ], [ %i.ay, %bb.p ], [ %i.bh, %bb.r ], [ %i.bc, %bb.q ] ; 2 uses
  %i.bi = icmp eq i8 %.sroa.0.0.i.i.i.i, 0
  br i1 %i.bi, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0B1R_.exit.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i, %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !229)
  call void @llvm.experimental.noalias.scope.decl(metadata !232)
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.5.110.i, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !234, !noalias !237, !noundef !4 ; 2 uses
  %i.bl = icmp ugt i64 %i.bk, 1                   ; 2 uses
  %i.bm = load ptr, ptr %.sroa.5.110.i, align 8, !alias.scope !234, !noalias !237, !nonnull !4
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.5.110.i, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !234, !noalias !237
  %.sink11.i.i.i.i.i = select i1 %i.bl, ptr %i.bm, ptr %.sroa.5.110.i
  %.sink10.i.i.i.i.i = select i1 %i.bl, i64 %i.bo, i64 %i.bk
  %i.bp = load i64, ptr %i.ab, align 8, !alias.scope !239, !noalias !242, !noundef !4 ; 2 uses
  %i.bq = icmp ugt i64 %i.bp, 1                   ; 2 uses
  %i.br = load ptr, ptr %i.t, align 8, !alias.scope !239, !noalias !242, !nonnull !4
  %i.bs = load i64, ptr %i.ac, align 8, !alias.scope !239, !noalias !242
  %.sink11.i1.i.i.i.i = select i1 %i.bq, ptr %i.br, ptr %i.t
  %.sink10.i2.i.i.i.i = select i1 %i.bq, i64 %i.bs, i64 %i.bp
  %i.bt = call noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs33K2ylI4knu_10hir_expand4name4NameNtB5_8SliceOrd7compareCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sink11.i.i.i.i.i, i64 noundef %.sink10.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sink11.i1.i.i.i.i, i64 noundef %.sink10.i2.i.i.i.i), !noalias !202
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0B1R_.exit.i

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0B1R_.exit.i: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i, %bb.m
  %.sroa.0.0.i.i.i = phi i8 [ %i.bt, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i ], [ %.sroa.0.0.i.i.i.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i ], [ %i.ao, %bb.m ]
  %i.bu = icmp eq i8 %.sroa.0.0.i.i.i, -1         ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %.sroa.19.111.i, i64 -88 ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.bu, ptr %2, ptr %i.bv
  %i.bw = getelementptr inbounds nuw [88 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.11.19.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bw, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.110.i, i64 88, i1 false), !alias.scope !244, !noalias !245
  %i.bx = zext i1 %i.bu to i64
  %i.by = add i64 %.sroa.11.19.i, %i.bx           ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.5.110.i, i64 88 ; 3 uses
  %i.ca = icmp ult ptr %i.bz, %i.ad
  br i1 %i.ca, label %bb.m, label %._crit_edge.i

bb.s:                                             ; preds = %._crit_edge.i
  %i.cb = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i, i64 -88 ; 2 uses
  %i.cc = getelementptr inbounds nuw [88 x i8], ptr %i.cb, i64 %.sroa.11.1.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.cc, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.1.lcssa.i, i64 88, i1 false), !alias.scope !244, !noalias !248
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i, i64 88
  br label %bb.l

bb.t:                                             ; preds = %._crit_edge.i
  %i.ce = mul nuw nsw i64 %.sroa.11.1.lcssa.i, 88
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph107, ptr nonnull align 8 %2, i64 %i.ce, i1 false), !alias.scope !244
  %i.cf = sub i64 %.sroa.16.0100232, %.sroa.11.1.lcssa.i ; 4 uses
  %.not18.i = icmp eq i64 %.sroa.16.0100232, %.sroa.11.1.lcssa.i
  br i1 %.not18.i, label %.loopexit, label %.lr.ph16.i

.lr.ph16.i:                                       ; preds = %bb.t
  %i.cg = getelementptr [88 x i8], ptr %.sroa.0.0.ph107, i64 %.sroa.11.1.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.11.1.lcssa.i, 1
  %xtraiter = and i64 %i.cf, 1
  %i.ch = icmp eq i64 %.sroa.16.0100232, %.neg
  br i1 %i.ch, label %.epil.preheader, label %.lr.ph16.i.new

.lr.ph16.i.new:                                   ; preds = %.lr.ph16.i
  %unroll_iter = and i64 %i.cf, -2
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph16.i.new
  %.sroa.06.014.i = phi i64 [ 0, %.lr.ph16.i.new ], [ %i.cl, %bb.u ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph16.i.new ], [ %niter.next.1, %bb.u ]
  %i.ci = xor i64 %.sroa.06.014.i, -1
  %i.cj = getelementptr [88 x i8], ptr %i.v, i64 %i.ci
  %i.ck = getelementptr [88 x i8], ptr %i.cg, i64 %.sroa.06.014.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ck, ptr noundef nonnull align 8 dereferenceable(88) %i.cj, i64 88, i1 false), !alias.scope !244
  %i.cl = add nuw i64 %.sroa.06.014.i, 2          ; 2 uses
  %i.cm = xor i64 %.sroa.06.014.i, -2
  %i.cn = getelementptr [88 x i8], ptr %i.v, i64 %i.cm
  %i.co = getelementptr [88 x i8], ptr %i.cg, i64 %.sroa.06.014.i
  %i.cp = getelementptr i8, ptr %i.co, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.cp, ptr noundef nonnull align 8 dereferenceable(88) %i.cn, i64 88, i1 false), !alias.scope !244
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.u

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.u
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph16.i
  %.sroa.06.014.i.epil.init = phi i64 [ 0, %.lr.ph16.i ], [ %i.cl, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod295 = trunc i64 %i.cf to i1
  call void @llvm.assume(i1 %lcmp.mod295)
  %i.cq = xor i64 %.sroa.06.014.i.epil.init, -1
  %i.cr = getelementptr [88 x i8], ptr %i.v, i64 %i.cq
  %i.cs = getelementptr [88 x i8], ptr %i.cg, i64 %.sroa.06.014.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.cs, ptr noundef nonnull align 8 dereferenceable(88) %i.cr, i64 88, i1 false), !alias.scope !244
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.t
  %i.ct = icmp eq i64 %.sroa.11.1.lcssa.i, 0
  br i1 %i.ct, label %.thread, label %bb.v

bb.v:                                             ; preds = %.loopexit
  %.not.i40 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.16.0100232
  br i1 %.not.i40, label %bb.w, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsf8NQSppxkmK_14ide_completion.exit, !prof !67

bb.w:                                             ; preds = %bb.v
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @92, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #27, !noalias !251
  unreachable

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsf8NQSppxkmK_14ide_completion.exit: ; preds = %bb.v
  %i.cu = getelementptr inbounds nuw [88 x i8], ptr %.sroa.0.0.ph107, i64 %.sroa.11.1.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph107) ]
  call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0EB31_(ptr noalias nofree noundef nonnull align 8 %i.cu, i64 noundef %i.cf, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(88) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cv = icmp ult i64 %.sroa.11.1.lcssa.i, 33
  br i1 %i.cv, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.h, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !255)
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %.not75 = icmp samesign ult i64 %3, %.sroa.16.0100232
  br i1 %.not75, label %bb.y, label %bb.x, !prof !204

bb.x:                                             ; preds = %.thread
  %i.cw = getelementptr [88 x i8], ptr %2, i64 %.sroa.16.0100232 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.cy = getelementptr inbounds nuw i8, ptr %i.t, i64 28
  %i.cz = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.da = getelementptr inbounds nuw i8, ptr %i.t, i64 25
  %i.db = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  br label %bb.z

bb.y:                                             ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.z:                                             ; preds = %bb.af, %bb.x
  %.sroa.11.0.i43 = phi i64 [ 0, %bb.x ], [ %i.fe, %bb.af ] ; 2 uses
  %.sroa.5.0.i44 = phi ptr [ %.sroa.0.0.ph107, %bb.x ], [ %i.ff, %bb.af ] ; 3 uses
  %.sroa.19.0.i45 = phi ptr [ %i.cw, %bb.x ], [ %i.fc, %bb.af ] ; 2 uses
  %.sroa.0.0.i46 = phi i64 [ %.sroa.0.0.i, %bb.x ], [ %.sroa.16.0100232, %bb.af ] ; 2 uses
  %i.dd = getelementptr inbounds nuw [88 x i8], ptr %.sroa.0.0.ph107, i64 %.sroa.0.0.i46 ; 2 uses
  %i.de = icmp ult ptr %.sroa.5.0.i44, %i.dd
  br i1 %i.de, label %.lr.ph.i55, label %._crit_edge.i47

._crit_edge.i47:                                  ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0B1R_.exit.i61, %bb.z
  %.sroa.11.1.lcssa.i48 = phi i64 [ %.sroa.11.0.i43, %bb.z ], [ %i.ez, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0B1R_.exit.i61 ] ; 10 uses
  %.sroa.5.1.lcssa.i49 = phi ptr [ %.sroa.5.0.i44, %bb.z ], [ %i.fa, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0B1R_.exit.i61 ] ; 2 uses
  %.sroa.19.1.lcssa.i50 = phi ptr [ %.sroa.19.0.i45, %bb.z ], [ %i.ew, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0B1R_.exit.i61 ]
  %i.df = icmp eq i64 %.sroa.0.0.i46, %.sroa.16.0100232
  br i1 %i.df, label %bb.ag, label %bb.af

.lr.ph.i55:                                       ; preds = %bb.z, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0B1R_.exit.i61
  %.sroa.19.111.i56 = phi ptr [ %i.ew, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0B1R_.exit.i61 ], [ %.sroa.19.0.i45, %bb.z ]
  %.sroa.5.110.i57 = phi ptr [ %i.fa, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0B1R_.exit.i61 ], [ %.sroa.5.0.i44, %bb.z ] ; 11 uses
  %.sroa.11.19.i58 = phi i64 [ %i.ez, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0B1R_.exit.i61 ], [ %.sroa.11.0.i43, %bb.z ] ; 2 uses
  %.val.i.i59 = load ptr, ptr %6, align 8, !noalias !260, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !264)
  call void @llvm.experimental.noalias.scope.decl(metadata !267)
  %.val.i13.i = load ptr, ptr %.val.i.i59, align 8, !noalias !269, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  %i.dg = getelementptr i8, ptr %.val.i.i59, i64 8
  %.val1.i.i60 = load ptr, ptr %i.dg, align 8, !noalias !269, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !270)
  call void @llvm.experimental.noalias.scope.decl(metadata !273)
  %i.dh = getelementptr inbounds nuw i8, ptr %.val.i13.i, i64 8 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !275, !nonnull !4, !noundef !4
  %i.dj = getelementptr inbounds nuw i8, ptr %.val.i13.i, i64 16 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !noalias !275, !noundef !4
  %i.dl = call noundef i64 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport34compute_fuzzy_completion_order_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.di, i64 noundef %i.dk, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1.i.i60), !noalias !276 ; 2 uses
  %i.dm = load ptr, ptr %i.dh, align 8, !noalias !277, !nonnull !4, !noundef !4
  %i.dn = load i64, ptr %i.dj, align 8, !noalias !277, !noundef !4
  %i.do = call noundef i64 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport34compute_fuzzy_completion_order_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.5.110.i57, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dm, i64 noundef %i.dn, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1.i.i60), !noalias !258 ; 2 uses
  %i.dp = call i8 @llvm.ucmp.i8.i64(i64 %i.dl, i64 %i.do)
  %i.dq = icmp eq i64 %i.dl, %i.do
  br i1 %i.dq, label %bb.aa, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0B1R_.exit.i61

bb.aa:                                            ; preds = %.lr.ph.i55
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.5.110.i57, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !278)
  call void @llvm.experimental.noalias.scope.decl(metadata !281)
  %i.ds = load i8, ptr %i.cx, align 4, !range !224, !alias.scope !283, !noalias !284, !noundef !4 ; 3 uses
  %i.dt = load i8, ptr %i.dr, align 4, !range !224, !alias.scope !285, !noalias !286, !noundef !4 ; 2 uses
  %i.du = call i8 @llvm.ucmp.i8.i8(i8 %i.ds, i8 %i.dt)
  %i.dv = icmp eq i8 %i.ds, %i.dt
  br i1 %i.dv, label %bb.ab, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i64

bb.ab:                                            ; preds = %bb.aa
  switch i8 %i.ds, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i66 [
    i8 1, label %bb.ac
    i8 4, label %bb.ad
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.dw = load i8, ptr %i.da, align 1, !alias.scope !283, !noalias !284, !noundef !4
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.5.110.i57, i64 25
  %i.dy = load i8, ptr %i.dx, align 1, !alias.scope !285, !noalias !286, !noundef !4
  %i.dz = call i8 @llvm.ucmp.i8.i8(i8 %i.dw, i8 %i.dy)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i64

bb.ad:                                            ; preds = %bb.ab
  %i.ea = load i32, ptr %i.cy, align 4, !range !10, !alias.scope !283, !noalias !284, !noundef !4 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.5.110.i57, i64 28
  %i.ec = load i32, ptr %i.eb, align 4, !range !10, !alias.scope !285, !noalias !286, !noundef !4 ; 2 uses
  %i.ed = call i8 @llvm.ucmp.i8.i32(i32 %i.ea, i32 %i.ec)
  %i.ee = icmp eq i32 %i.ea, %i.ec
  br i1 %i.ee, label %bb.ae, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i64

bb.ae:                                            ; preds = %bb.ad
  %i.ef = load i32, ptr %i.cz, align 4, !alias.scope !283, !noalias !284, !noundef !4
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.5.110.i57, i64 32
  %i.eh = load i32, ptr %i.eg, align 4, !alias.scope !285, !noalias !286, !noundef !4
  %i.ei = call i8 @llvm.ucmp.i8.i32(i32 %i.ef, i32 %i.eh)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i64

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i64: ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.aa
  %.sroa.0.0.i.i.i.i65 = phi i8 [ %i.du, %bb.aa ], [ %i.dz, %bb.ac ], [ %i.ei, %bb.ae ], [ %i.ed, %bb.ad ] ; 2 uses
  %i.ej = icmp eq i8 %.sroa.0.0.i.i.i.i65, 0
  br i1 %i.ej, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i66, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0B1R_.exit.i61

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i66: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i64, %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !287)
  call void @llvm.experimental.noalias.scope.decl(metadata !290)
  %i.ek = load i64, ptr %i.db, align 8, !alias.scope !292, !noalias !295, !noundef !4 ; 2 uses
  %i.el = icmp ugt i64 %i.ek, 1                   ; 2 uses
  %i.em = load ptr, ptr %i.t, align 8, !alias.scope !292, !noalias !295, !nonnull !4
  %i.en = load i64, ptr %i.dc, align 8, !alias.scope !292, !noalias !295
  %.sink11.i.i.i.i.i67 = select i1 %i.el, ptr %i.em, ptr %i.t
  %.sink10.i.i.i.i.i68 = select i1 %i.el, i64 %i.en, i64 %i.ek
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.5.110.i57, i64 16
  %i.ep = load i64, ptr %i.eo, align 8, !alias.scope !297, !noalias !300, !noundef !4 ; 2 uses
  %i.eq = icmp ugt i64 %i.ep, 1                   ; 2 uses
  %i.er = load ptr, ptr %.sroa.5.110.i57, align 8, !alias.scope !297, !noalias !300, !nonnull !4
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.5.110.i57, i64 8
  %i.et = load i64, ptr %i.es, align 8, !alias.scope !297, !noalias !300
  %.sink11.i1.i.i.i.i69 = select i1 %i.eq, ptr %i.er, ptr %.sroa.5.110.i57
  %.sink10.i2.i.i.i.i70 = select i1 %i.eq, i64 %i.et, i64 %i.ep
  %i.eu = call noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs33K2ylI4knu_10hir_expand4name4NameNtB5_8SliceOrd7compareCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sink11.i.i.i.i.i67, i64 noundef %.sink10.i.i.i.i.i68, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sink11.i1.i.i.i.i69, i64 noundef %.sink10.i2.i.i.i.i70), !noalias !258
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0B1R_.exit.i61

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0B1R_.exit.i61: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i66, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i64, %.lr.ph.i55
  %.sroa.0.0.i.i.i62 = phi i8 [ %i.eu, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i66 ], [ %.sroa.0.0.i.i.i.i65, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i64 ], [ %i.dp, %.lr.ph.i55 ]
  %i.ev = icmp ne i8 %.sroa.0.0.i.i.i62, -1       ; 2 uses
  %i.ew = getelementptr inbounds i8, ptr %.sroa.19.111.i56, i64 -88 ; 3 uses
  %.sroa.01.0.i.i63 = select i1 %i.ev, ptr %2, ptr %i.ew
  %i.ex = getelementptr inbounds nuw [88 x i8], ptr %.sroa.01.0.i.i63, i64 %.sroa.11.19.i58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ex, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.110.i57, i64 88, i1 false), !alias.scope !302, !noalias !303
  %i.ey = zext i1 %i.ev to i64
  %i.ez = add i64 %.sroa.11.19.i58, %i.ey         ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.5.110.i57, i64 88 ; 3 uses
  %i.fb = icmp ult ptr %i.fa, %i.dd
  br i1 %i.fb, label %.lr.ph.i55, label %._crit_edge.i47

bb.af:                                            ; preds = %._crit_edge.i47
  %i.fc = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i50, i64 -88
  %i.fd = getelementptr inbounds nuw [88 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.fd, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.1.lcssa.i49, i64 88, i1 false), !alias.scope !302, !noalias !306
  %i.fe = add i64 %.sroa.11.1.lcssa.i48, 1
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i49, i64 88
  br label %bb.z

bb.ag:                                            ; preds = %._crit_edge.i47
  %i.fg = mul nuw nsw i64 %.sroa.11.1.lcssa.i48, 88
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph107, ptr nonnull align 8 %2, i64 %i.fg, i1 false), !alias.scope !302
  %i.fh = sub i64 %.sroa.16.0100232, %.sroa.11.1.lcssa.i48 ; 6 uses
  %.not18.i51 = icmp eq i64 %.sroa.16.0100232, %.sroa.11.1.lcssa.i48
  %i.fi = getelementptr [88 x i8], ptr %.sroa.0.0.ph107, i64 %.sroa.11.1.lcssa.i48 ; 4 uses
  br i1 %.not18.i51, label %.outer.thread, label %.lr.ph16.i52.preheader

.lr.ph16.i52.preheader:                           ; preds = %bb.ag
  %.neg307 = add i64 %.sroa.11.1.lcssa.i48, 1
  %xtraiter302 = and i64 %i.fh, 1
  %i.fj = icmp eq i64 %.sroa.16.0100232, %.neg307
  br i1 %i.fj, label %.lr.ph16.i52.epil.preheader, label %.lr.ph16.i52.preheader.new

.lr.ph16.i52.preheader.new:                       ; preds = %.lr.ph16.i52.preheader
  %unroll_iter305 = and i64 %i.fh, -2
  br label %.lr.ph16.i52

.lr.ph16.i52:                                     ; preds = %.lr.ph16.i52, %.lr.ph16.i52.preheader.new
  %.sroa.06.014.i53 = phi i64 [ 0, %.lr.ph16.i52.preheader.new ], [ %i.fn, %.lr.ph16.i52 ] ; 5 uses
  %niter306 = phi i64 [ 0, %.lr.ph16.i52.preheader.new ], [ %niter306.next.1, %.lr.ph16.i52 ]
  %i.fk = xor i64 %.sroa.06.014.i53, -1
  %i.fl = getelementptr [88 x i8], ptr %i.cw, i64 %i.fk
  %i.fm = getelementptr [88 x i8], ptr %i.fi, i64 %.sroa.06.014.i53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.fm, ptr noundef nonnull align 8 dereferenceable(88) %i.fl, i64 88, i1 false), !alias.scope !302
  %i.fn = add nuw i64 %.sroa.06.014.i53, 2        ; 2 uses
  %i.fo = xor i64 %.sroa.06.014.i53, -2
  %i.fp = getelementptr [88 x i8], ptr %i.cw, i64 %i.fo
  %i.fq = getelementptr [88 x i8], ptr %i.fi, i64 %.sroa.06.014.i53
  %i.fr = getelementptr i8, ptr %i.fq, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.fr, ptr noundef nonnull align 8 dereferenceable(88) %i.fp, i64 88, i1 false), !alias.scope !302
  %niter306.next.1 = add i64 %niter306, 2         ; 2 uses
  %niter306.ncmp.1 = icmp eq i64 %niter306.next.1, %unroll_iter305
  br i1 %niter306.ncmp.1, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0E0EB3v_.exit.unr-lcssa, label %.lr.ph16.i52

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0E0EB3v_.exit.unr-lcssa: ; preds = %.lr.ph16.i52
  %lcmp.mod303.not = icmp eq i64 %xtraiter302, 0
  br i1 %lcmp.mod303.not, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0E0EB3v_.exit, label %.lr.ph16.i52.epil.preheader

.lr.ph16.i52.epil.preheader:                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0E0EB3v_.exit.unr-lcssa, %.lr.ph16.i52.preheader
  %.sroa.06.014.i53.epil.init = phi i64 [ 0, %.lr.ph16.i52.preheader ], [ %i.fn, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0E0EB3v_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod304 = trunc i64 %i.fh to i1
  call void @llvm.assume(i1 %lcmp.mod304)
  %i.fs = xor i64 %.sroa.06.014.i53.epil.init, -1
  %i.ft = getelementptr [88 x i8], ptr %i.cw, i64 %i.fs
  %i.fu = getelementptr [88 x i8], ptr %i.fi, i64 %.sroa.06.014.i53.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.fu, ptr noundef nonnull align 8 dereferenceable(88) %i.ft, i64 88, i1 false), !alias.scope !302
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0E0EB3v_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0E0EB3v_.exit: ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0E0EB3v_.exit.unr-lcssa, %.lr.ph16.i52.epil.preheader
  %i.fv = icmp ugt i64 %.sroa.11.1.lcssa.i48, %.sroa.16.0100232
  br i1 %i.fv, label %bb.ah, label %.outer, !prof !67

.outer.thread:                                    ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.outer._crit_edge

.outer:                                           ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0E0EB3v_.exit
  %i.fw = getelementptr inbounds nuw [88 x i8], ptr %.sroa.0.0.ph107, i64 %.sroa.11.1.lcssa.i48 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.fx = icmp ult i64 %i.fh, 33
  br i1 %i.fx, label %.outer._crit_edge, label %.lr.ph

bb.ah:                                            ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0E0EB3v_.exit
  call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %.sroa.11.1.lcssa.i48, i64 noundef %.sroa.16.0100232, i64 noundef %.sroa.16.0100232, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #27
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0EB31_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 104811045873349726) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 104811045873349726) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(88) %5, ptr noalias nofree noundef align 8 dereferenceable(8) %6) unnamed_addr #3 {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph107 = phi ptr [ %i.fw, %.outer ], [ %0, %bb.a ] ; 21 uses
  %.sroa.16.0.ph106 = phi i64 [ %i.fh, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph105 = phi i32 [ %i.f, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph104 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.c = ptrtoint ptr %.sroa.0.0.ph107 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph104, null
  %i.d = icmp eq i32 %.sroa.025.0.ph105, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph234

bb.b:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsf8NQSppxkmK_14ide_completion.exit
  %i.e = icmp eq i32 %i.f, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph234

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsf8NQSppxkmK_14ide_completion.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa98 = phi ptr [ %i.fi, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph107, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsf8NQSppxkmK_14ide_completion.exit ], [ %i.fw, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.11.1.lcssa.i, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsf8NQSppxkmK_14ide_completion.exit ], [ %i.fh, %.outer ]
  call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1s_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0EB3o_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph.lcssa98, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 104811045873349726) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.f

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0100.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph106, %.lr.ph ]
  call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0EB2R_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph107, i64 noundef %.sroa.16.0100.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.f

.lr.ph234:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.099233 = phi i32 [ %i.f, %bb.b ], [ %.sroa.025.0.ph105, %.lr.ph ]
  %.sroa.16.0100232 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph106, %.lr.ph ] ; 21 uses
  %i.f = add i32 %.sroa.025.099233, -1            ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !309)
  %i.g = lshr i64 %.sroa.16.0100232, 3            ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.g, 352
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph107, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw nsw i64 %i.g, 616
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph107, i64 %.idx2.i ; 4 uses
  %i.j = icmp samesign ult i64 %.sroa.16.0100232, 64
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph234
  %i.k = call noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0EB30_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph107, ptr noundef nonnull readonly %i.h, ptr noundef nonnull readonly %i.i, i64 noundef %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph234
  %.val4.i = load ptr, ptr %6, align 8, !alias.scope !309, !noalias !312, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.l = call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0B1R_(ptr nonnull %.val4.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.0.0.ph107, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.h) #30, !noalias !309 ; 2 uses
  %i.m = call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0B1R_(ptr nonnull %.val4.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.0.0.ph107, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.i) #30, !noalias !309
  %i.n = xor i1 %i.l, %i.m
  br i1 %i.n, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0B1R_(ptr nonnull %.val4.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.i) #30, !noalias !309
  %i.p = xor i1 %i.l, %i.o
  %..i.i = select i1 %i.p, ptr %i.i, ptr %i.h
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph._crit_edge, %.outer._crit_edge
  ret void

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.0.0.i.sink.i = phi ptr [ %i.k, %bb.c ], [ %.sroa.0.0.ph107, %bb.d ], [ %..i.i, %bb.e ]
  %i.q = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.r = sub nuw i64 %i.q, %i.c                   ; 2 uses
  %.sroa.0.0.i = udiv exact i64 %i.r, 88          ; 3 uses
  %i.s = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.16.0100232
  call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph107, i64 %i.r ; 20 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.t, i64 88, i1 false)
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val = load ptr, ptr %6, align 8, !nonnull !4, !align !6, !noundef !4
  %i.u = call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0B1R_(ptr nonnull %.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.028.0.ph104, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.t) #30
  br i1 %i.u, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.g, %bb.h
  %.val37 = load ptr, ptr %6, align 8             ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !314)
  call void @llvm.experimental.noalias.scope.decl(metadata !317)
  %.not74 = icmp samesign ult i64 %3, %.sroa.16.0100232
  br i1 %.not74, label %bb.k, label %bb.j, !prof !204

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr [88 x i8], ptr %2, i64 %.sroa.16.0100232 ; 4 uses
  %i.w = getelementptr i8, ptr %.val37, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 28
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 25
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %bb.s, %bb.j
  %.sroa.11.0.i = phi i64 [ 0, %bb.j ], [ %.sroa.11.1.lcssa.i, %bb.s ] ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.0.0.ph107, %bb.j ], [ %i.cd, %bb.s ] ; 3 uses
  %.sroa.19.0.i = phi ptr [ %i.v, %bb.j ], [ %i.cb, %bb.s ] ; 2 uses
  %.sroa.0.0.i39 = phi i64 [ %.sroa.0.0.i, %bb.j ], [ %.sroa.16.0100232, %bb.s ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [88 x i8], ptr %.sroa.0.0.ph107, i64 %.sroa.0.0.i39 ; 2 uses
  %i.ae = icmp ult ptr %.sroa.5.0.i, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val37) ]
  br label %bb.m

._crit_edge.i:                                    ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0B1R_.exit.i, %bb.l
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.l ], [ %i.by, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0B1R_.exit.i ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.l ], [ %i.bz, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0B1R_.exit.i ] ; 2 uses
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.l ], [ %i.bv, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0B1R_.exit.i ]
  %i.af = icmp eq i64 %.sroa.0.0.i39, %.sroa.16.0100232
  br i1 %i.af, label %bb.t, label %bb.s

bb.m:                                             ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0B1R_.exit.i, %.lr.ph.i
  %.sroa.19.111.i = phi ptr [ %.sroa.19.0.i, %.lr.ph.i ], [ %i.bv, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0B1R_.exit.i ]
  %.sroa.5.110.i = phi ptr [ %.sroa.5.0.i, %.lr.ph.i ], [ %i.bz, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0B1R_.exit.i ] ; 11 uses
  %.sroa.11.19.i = phi i64 [ %.sroa.11.0.i, %.lr.ph.i ], [ %i.by, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0B1R_.exit.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !319)
  call void @llvm.experimental.noalias.scope.decl(metadata !322)
  %.val.i.i = load ptr, ptr %.val37, align 8, !noalias !324, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  %.val1.i.i = load ptr, ptr %i.w, align 8, !noalias !324, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !325)
  call void @llvm.experimental.noalias.scope.decl(metadata !328)
  %i.ag = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !330, !nonnull !4, !noundef !4
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !330, !noundef !4
  %i.ak = call noundef i64 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport34compute_fuzzy_completion_order_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.5.110.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef %i.aj, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1.i.i), !noalias !331 ; 2 uses
  %i.al = load ptr, ptr %i.ag, align 8, !noalias !332, !nonnull !4, !noundef !4
  %i.am = load i64, ptr %i.ai, align 8, !noalias !332, !noundef !4
  %i.an = call noundef i64 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport34compute_fuzzy_completion_order_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.al, i64 noundef %i.am, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1.i.i), !noalias !317 ; 2 uses
  %i.ao = call i8 @llvm.ucmp.i8.i64(i64 %i.ak, i64 %i.an)
  %i.ap = icmp eq i64 %i.ak, %i.an
  br i1 %i.ap, label %bb.n, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0B1R_.exit.i

bb.n:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.5.110.i, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !333)
  call void @llvm.experimental.noalias.scope.decl(metadata !336)
  %i.ar = load i8, ptr %i.aq, align 4, !range !224, !alias.scope !338, !noalias !339, !noundef !4 ; 3 uses
  %i.as = load i8, ptr %i.x, align 8, !range !224, !alias.scope !340, !noalias !341, !noundef !4 ; 2 uses
  %i.at = call i8 @llvm.ucmp.i8.i8(i8 %i.ar, i8 %i.as)
  %i.au = icmp eq i8 %i.ar, %i.as
  br i1 %i.au, label %bb.o, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  switch i8 %i.ar, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i [
    i8 1, label %bb.p
    i8 4, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.5.110.i, i64 25
  %i.aw = load i8, ptr %i.av, align 1, !alias.scope !338, !noalias !339, !noundef !4
  %i.ax = load i8, ptr %i.aa, align 1, !alias.scope !340, !noalias !341, !noundef !4
  %i.ay = call i8 @llvm.ucmp.i8.i8(i8 %i.aw, i8 %i.ax)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.5.110.i, i64 28
  %i.ba = load i32, ptr %i.az, align 4, !range !10, !alias.scope !338, !noalias !339, !noundef !4 ; 2 uses
  %i.bb = load i32, ptr %i.y, align 4, !range !10, !alias.scope !340, !noalias !341, !noundef !4 ; 2 uses
  %i.bc = call i8 @llvm.ucmp.i8.i32(i32 %i.ba, i32 %i.bb)
  %i.bd = icmp eq i32 %i.ba, %i.bb
  br i1 %i.bd, label %bb.r, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.5.110.i, i64 32
  %i.bf = load i32, ptr %i.be, align 4, !alias.scope !338, !noalias !339, !noundef !4
  %i.bg = load i32, ptr %i.z, align 8, !alias.scope !340, !noalias !341, !noundef !4
  %i.bh = call i8 @llvm.ucmp.i8.i32(i32 %i.bf, i32 %i.bg)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i: ; preds = %bb.r, %bb.q, %bb.p, %bb.n
  %.sroa.0.0.i.i.i.i = phi i8 [ %i.at, %bb.n ], [ %i.ay, %bb.p ], [ %i.bh, %bb.r ], [ %i.bc, %bb.q ] ; 2 uses
  %i.bi = icmp eq i8 %.sroa.0.0.i.i.i.i, 0
  br i1 %i.bi, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0B1R_.exit.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i, %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !342)
  call void @llvm.experimental.noalias.scope.decl(metadata !345)
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.5.110.i, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !347, !noalias !350, !noundef !4 ; 2 uses
  %i.bl = icmp ugt i64 %i.bk, 1                   ; 2 uses
  %i.bm = load ptr, ptr %.sroa.5.110.i, align 8, !alias.scope !347, !noalias !350, !nonnull !4
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.5.110.i, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !347, !noalias !350
  %.sink11.i.i.i.i.i = select i1 %i.bl, ptr %i.bm, ptr %.sroa.5.110.i
  %.sink10.i.i.i.i.i = select i1 %i.bl, i64 %i.bo, i64 %i.bk
  %i.bp = load i64, ptr %i.ab, align 8, !alias.scope !352, !noalias !355, !noundef !4 ; 2 uses
  %i.bq = icmp ugt i64 %i.bp, 1                   ; 2 uses
  %i.br = load ptr, ptr %i.t, align 8, !alias.scope !352, !noalias !355, !nonnull !4
  %i.bs = load i64, ptr %i.ac, align 8, !alias.scope !352, !noalias !355
  %.sink11.i1.i.i.i.i = select i1 %i.bq, ptr %i.br, ptr %i.t
  %.sink10.i2.i.i.i.i = select i1 %i.bq, i64 %i.bs, i64 %i.bp
  %i.bt = call noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs33K2ylI4knu_10hir_expand4name4NameNtB5_8SliceOrd7compareCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sink11.i.i.i.i.i, i64 noundef %.sink10.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sink11.i1.i.i.i.i, i64 noundef %.sink10.i2.i.i.i.i), !noalias !317
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0B1R_.exit.i

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0B1R_.exit.i: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i, %bb.m
  %.sroa.0.0.i.i.i = phi i8 [ %i.bt, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i ], [ %.sroa.0.0.i.i.i.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i ], [ %i.ao, %bb.m ]
  %i.bu = icmp eq i8 %.sroa.0.0.i.i.i, -1         ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %.sroa.19.111.i, i64 -88 ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.bu, ptr %2, ptr %i.bv
  %i.bw = getelementptr inbounds nuw [88 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.11.19.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bw, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.110.i, i64 88, i1 false), !alias.scope !357, !noalias !358
  %i.bx = zext i1 %i.bu to i64
  %i.by = add i64 %.sroa.11.19.i, %i.bx           ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.5.110.i, i64 88 ; 3 uses
  %i.ca = icmp ult ptr %i.bz, %i.ad
  br i1 %i.ca, label %bb.m, label %._crit_edge.i

bb.s:                                             ; preds = %._crit_edge.i
  %i.cb = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i, i64 -88 ; 2 uses
  %i.cc = getelementptr inbounds nuw [88 x i8], ptr %i.cb, i64 %.sroa.11.1.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.cc, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.1.lcssa.i, i64 88, i1 false), !alias.scope !357, !noalias !361
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i, i64 88
  br label %bb.l

bb.t:                                             ; preds = %._crit_edge.i
  %i.ce = mul nuw nsw i64 %.sroa.11.1.lcssa.i, 88
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph107, ptr nonnull align 8 %2, i64 %i.ce, i1 false), !alias.scope !357
  %i.cf = sub i64 %.sroa.16.0100232, %.sroa.11.1.lcssa.i ; 4 uses
  %.not18.i = icmp eq i64 %.sroa.16.0100232, %.sroa.11.1.lcssa.i
  br i1 %.not18.i, label %.loopexit, label %.lr.ph16.i

.lr.ph16.i:                                       ; preds = %bb.t
  %i.cg = getelementptr [88 x i8], ptr %.sroa.0.0.ph107, i64 %.sroa.11.1.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.11.1.lcssa.i, 1
  %xtraiter = and i64 %i.cf, 1
  %i.ch = icmp eq i64 %.sroa.16.0100232, %.neg
  br i1 %i.ch, label %.epil.preheader, label %.lr.ph16.i.new

.lr.ph16.i.new:                                   ; preds = %.lr.ph16.i
  %unroll_iter = and i64 %i.cf, -2
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph16.i.new
  %.sroa.06.014.i = phi i64 [ 0, %.lr.ph16.i.new ], [ %i.cl, %bb.u ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph16.i.new ], [ %niter.next.1, %bb.u ]
  %i.ci = xor i64 %.sroa.06.014.i, -1
  %i.cj = getelementptr [88 x i8], ptr %i.v, i64 %i.ci
  %i.ck = getelementptr [88 x i8], ptr %i.cg, i64 %.sroa.06.014.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ck, ptr noundef nonnull align 8 dereferenceable(88) %i.cj, i64 88, i1 false), !alias.scope !357
  %i.cl = add nuw i64 %.sroa.06.014.i, 2          ; 2 uses
  %i.cm = xor i64 %.sroa.06.014.i, -2
  %i.cn = getelementptr [88 x i8], ptr %i.v, i64 %i.cm
  %i.co = getelementptr [88 x i8], ptr %i.cg, i64 %.sroa.06.014.i
  %i.cp = getelementptr i8, ptr %i.co, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.cp, ptr noundef nonnull align 8 dereferenceable(88) %i.cn, i64 88, i1 false), !alias.scope !357
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.u

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.u
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph16.i
  %.sroa.06.014.i.epil.init = phi i64 [ 0, %.lr.ph16.i ], [ %i.cl, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod295 = trunc i64 %i.cf to i1
  call void @llvm.assume(i1 %lcmp.mod295)
  %i.cq = xor i64 %.sroa.06.014.i.epil.init, -1
  %i.cr = getelementptr [88 x i8], ptr %i.v, i64 %i.cq
  %i.cs = getelementptr [88 x i8], ptr %i.cg, i64 %.sroa.06.014.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.cs, ptr noundef nonnull align 8 dereferenceable(88) %i.cr, i64 88, i1 false), !alias.scope !357
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.t
  %i.ct = icmp eq i64 %.sroa.11.1.lcssa.i, 0
  br i1 %i.ct, label %.thread, label %bb.v

bb.v:                                             ; preds = %.loopexit
  %.not.i40 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.16.0100232
  br i1 %.not.i40, label %bb.w, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsf8NQSppxkmK_14ide_completion.exit, !prof !67

bb.w:                                             ; preds = %bb.v
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @92, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #27, !noalias !364
  unreachable

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsf8NQSppxkmK_14ide_completion.exit: ; preds = %bb.v
  %i.cu = getelementptr inbounds nuw [88 x i8], ptr %.sroa.0.0.ph107, i64 %.sroa.11.1.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph107) ]
  call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0EB31_(ptr noalias nofree noundef nonnull align 8 %i.cu, i64 noundef %i.cf, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(88) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cv = icmp ult i64 %.sroa.11.1.lcssa.i, 33
  br i1 %i.cv, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.h, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !368)
  call void @llvm.experimental.noalias.scope.decl(metadata !371)
  %.not75 = icmp samesign ult i64 %3, %.sroa.16.0100232
  br i1 %.not75, label %bb.y, label %bb.x, !prof !204

bb.x:                                             ; preds = %.thread
  %i.cw = getelementptr [88 x i8], ptr %2, i64 %.sroa.16.0100232 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.cy = getelementptr inbounds nuw i8, ptr %i.t, i64 28
  %i.cz = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.da = getelementptr inbounds nuw i8, ptr %i.t, i64 25
  %i.db = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  br label %bb.z

bb.y:                                             ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.z:                                             ; preds = %bb.af, %bb.x
  %.sroa.11.0.i43 = phi i64 [ 0, %bb.x ], [ %i.fe, %bb.af ] ; 2 uses
  %.sroa.5.0.i44 = phi ptr [ %.sroa.0.0.ph107, %bb.x ], [ %i.ff, %bb.af ] ; 3 uses
  %.sroa.19.0.i45 = phi ptr [ %i.cw, %bb.x ], [ %i.fc, %bb.af ] ; 2 uses
  %.sroa.0.0.i46 = phi i64 [ %.sroa.0.0.i, %bb.x ], [ %.sroa.16.0100232, %bb.af ] ; 2 uses
  %i.dd = getelementptr inbounds nuw [88 x i8], ptr %.sroa.0.0.ph107, i64 %.sroa.0.0.i46 ; 2 uses
  %i.de = icmp ult ptr %.sroa.5.0.i44, %i.dd
  br i1 %i.de, label %.lr.ph.i55, label %._crit_edge.i47

._crit_edge.i47:                                  ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0B1R_.exit.i61, %bb.z
  %.sroa.11.1.lcssa.i48 = phi i64 [ %.sroa.11.0.i43, %bb.z ], [ %i.ez, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0B1R_.exit.i61 ] ; 10 uses
  %.sroa.5.1.lcssa.i49 = phi ptr [ %.sroa.5.0.i44, %bb.z ], [ %i.fa, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0B1R_.exit.i61 ] ; 2 uses
  %.sroa.19.1.lcssa.i50 = phi ptr [ %.sroa.19.0.i45, %bb.z ], [ %i.ew, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0B1R_.exit.i61 ]
  %i.df = icmp eq i64 %.sroa.0.0.i46, %.sroa.16.0100232
  br i1 %i.df, label %bb.ag, label %bb.af

.lr.ph.i55:                                       ; preds = %bb.z, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0B1R_.exit.i61
  %.sroa.19.111.i56 = phi ptr [ %i.ew, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0B1R_.exit.i61 ], [ %.sroa.19.0.i45, %bb.z ]
  %.sroa.5.110.i57 = phi ptr [ %i.fa, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0B1R_.exit.i61 ], [ %.sroa.5.0.i44, %bb.z ] ; 11 uses
  %.sroa.11.19.i58 = phi i64 [ %i.ez, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0B1R_.exit.i61 ], [ %.sroa.11.0.i43, %bb.z ] ; 2 uses
  %.val.i.i59 = load ptr, ptr %6, align 8, !noalias !373, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !377)
  call void @llvm.experimental.noalias.scope.decl(metadata !380)
  %.val.i13.i = load ptr, ptr %.val.i.i59, align 8, !noalias !382, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  %i.dg = getelementptr i8, ptr %.val.i.i59, i64 8
  %.val1.i.i60 = load ptr, ptr %i.dg, align 8, !noalias !382, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !383)
  call void @llvm.experimental.noalias.scope.decl(metadata !386)
  %i.dh = getelementptr inbounds nuw i8, ptr %.val.i13.i, i64 8 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !388, !nonnull !4, !noundef !4
  %i.dj = getelementptr inbounds nuw i8, ptr %.val.i13.i, i64 16 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !noalias !388, !noundef !4
  %i.dl = call noundef i64 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport34compute_fuzzy_completion_order_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.di, i64 noundef %i.dk, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1.i.i60), !noalias !389 ; 2 uses
  %i.dm = load ptr, ptr %i.dh, align 8, !noalias !390, !nonnull !4, !noundef !4
  %i.dn = load i64, ptr %i.dj, align 8, !noalias !390, !noundef !4
  %i.do = call noundef i64 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport34compute_fuzzy_completion_order_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.5.110.i57, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dm, i64 noundef %i.dn, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1.i.i60), !noalias !371 ; 2 uses
  %i.dp = call i8 @llvm.ucmp.i8.i64(i64 %i.dl, i64 %i.do)
  %i.dq = icmp eq i64 %i.dl, %i.do
  br i1 %i.dq, label %bb.aa, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0B1R_.exit.i61

bb.aa:                                            ; preds = %.lr.ph.i55
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.5.110.i57, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !391)
  call void @llvm.experimental.noalias.scope.decl(metadata !394)
  %i.ds = load i8, ptr %i.cx, align 4, !range !224, !alias.scope !396, !noalias !397, !noundef !4 ; 3 uses
  %i.dt = load i8, ptr %i.dr, align 4, !range !224, !alias.scope !398, !noalias !399, !noundef !4 ; 2 uses
  %i.du = call i8 @llvm.ucmp.i8.i8(i8 %i.ds, i8 %i.dt)
  %i.dv = icmp eq i8 %i.ds, %i.dt
  br i1 %i.dv, label %bb.ab, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i64

bb.ab:                                            ; preds = %bb.aa
  switch i8 %i.ds, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i66 [
    i8 1, label %bb.ac
    i8 4, label %bb.ad
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.dw = load i8, ptr %i.da, align 1, !alias.scope !396, !noalias !397, !noundef !4
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.5.110.i57, i64 25
  %i.dy = load i8, ptr %i.dx, align 1, !alias.scope !398, !noalias !399, !noundef !4
  %i.dz = call i8 @llvm.ucmp.i8.i8(i8 %i.dw, i8 %i.dy)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i64

bb.ad:                                            ; preds = %bb.ab
  %i.ea = load i32, ptr %i.cy, align 4, !range !10, !alias.scope !396, !noalias !397, !noundef !4 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.5.110.i57, i64 28
  %i.ec = load i32, ptr %i.eb, align 4, !range !10, !alias.scope !398, !noalias !399, !noundef !4 ; 2 uses
  %i.ed = call i8 @llvm.ucmp.i8.i32(i32 %i.ea, i32 %i.ec)
  %i.ee = icmp eq i32 %i.ea, %i.ec
  br i1 %i.ee, label %bb.ae, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i64

bb.ae:                                            ; preds = %bb.ad
  %i.ef = load i32, ptr %i.cz, align 4, !alias.scope !396, !noalias !397, !noundef !4
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.5.110.i57, i64 32
  %i.eh = load i32, ptr %i.eg, align 4, !alias.scope !398, !noalias !399, !noundef !4
  %i.ei = call i8 @llvm.ucmp.i8.i32(i32 %i.ef, i32 %i.eh)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i64

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i64: ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.aa
  %.sroa.0.0.i.i.i.i65 = phi i8 [ %i.du, %bb.aa ], [ %i.dz, %bb.ac ], [ %i.ei, %bb.ae ], [ %i.ed, %bb.ad ] ; 2 uses
  %i.ej = icmp eq i8 %.sroa.0.0.i.i.i.i65, 0
  br i1 %i.ej, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i66, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0B1R_.exit.i61

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i66: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i64, %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !400)
  call void @llvm.experimental.noalias.scope.decl(metadata !403)
  %i.ek = load i64, ptr %i.db, align 8, !alias.scope !405, !noalias !408, !noundef !4 ; 2 uses
  %i.el = icmp ugt i64 %i.ek, 1                   ; 2 uses
  %i.em = load ptr, ptr %i.t, align 8, !alias.scope !405, !noalias !408, !nonnull !4
  %i.en = load i64, ptr %i.dc, align 8, !alias.scope !405, !noalias !408
  %.sink11.i.i.i.i.i67 = select i1 %i.el, ptr %i.em, ptr %i.t
  %.sink10.i.i.i.i.i68 = select i1 %i.el, i64 %i.en, i64 %i.ek
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.5.110.i57, i64 16
  %i.ep = load i64, ptr %i.eo, align 8, !alias.scope !410, !noalias !413, !noundef !4 ; 2 uses
  %i.eq = icmp ugt i64 %i.ep, 1                   ; 2 uses
  %i.er = load ptr, ptr %.sroa.5.110.i57, align 8, !alias.scope !410, !noalias !413, !nonnull !4
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.5.110.i57, i64 8
  %i.et = load i64, ptr %i.es, align 8, !alias.scope !410, !noalias !413
  %.sink11.i1.i.i.i.i69 = select i1 %i.eq, ptr %i.er, ptr %.sroa.5.110.i57
  %.sink10.i2.i.i.i.i70 = select i1 %i.eq, i64 %i.et, i64 %i.ep
  %i.eu = call noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs33K2ylI4knu_10hir_expand4name4NameNtB5_8SliceOrd7compareCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sink11.i.i.i.i.i67, i64 noundef %.sink10.i.i.i.i.i68, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sink11.i1.i.i.i.i69, i64 noundef %.sink10.i2.i.i.i.i70), !noalias !371
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0B1R_.exit.i61

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0B1R_.exit.i61: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i66, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i64, %.lr.ph.i55
  %.sroa.0.0.i.i.i62 = phi i8 [ %i.eu, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i66 ], [ %.sroa.0.0.i.i.i.i65, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i64 ], [ %i.dp, %.lr.ph.i55 ]
  %i.ev = icmp ne i8 %.sroa.0.0.i.i.i62, -1       ; 2 uses
  %i.ew = getelementptr inbounds i8, ptr %.sroa.19.111.i56, i64 -88 ; 3 uses
  %.sroa.01.0.i.i63 = select i1 %i.ev, ptr %2, ptr %i.ew
  %i.ex = getelementptr inbounds nuw [88 x i8], ptr %.sroa.01.0.i.i63, i64 %.sroa.11.19.i58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ex, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.110.i57, i64 88, i1 false), !alias.scope !415, !noalias !416
  %i.ey = zext i1 %i.ev to i64
  %i.ez = add i64 %.sroa.11.19.i58, %i.ey         ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.5.110.i57, i64 88 ; 3 uses
  %i.fb = icmp ult ptr %i.fa, %i.dd
  br i1 %i.fb, label %.lr.ph.i55, label %._crit_edge.i47

bb.af:                                            ; preds = %._crit_edge.i47
  %i.fc = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i50, i64 -88
  %i.fd = getelementptr inbounds nuw [88 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.fd, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.1.lcssa.i49, i64 88, i1 false), !alias.scope !415, !noalias !419
  %i.fe = add i64 %.sroa.11.1.lcssa.i48, 1
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i49, i64 88
  br label %bb.z

bb.ag:                                            ; preds = %._crit_edge.i47
  %i.fg = mul nuw nsw i64 %.sroa.11.1.lcssa.i48, 88
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph107, ptr nonnull align 8 %2, i64 %i.fg, i1 false), !alias.scope !415
  %i.fh = sub i64 %.sroa.16.0100232, %.sroa.11.1.lcssa.i48 ; 6 uses
  %.not18.i51 = icmp eq i64 %.sroa.16.0100232, %.sroa.11.1.lcssa.i48
  %i.fi = getelementptr [88 x i8], ptr %.sroa.0.0.ph107, i64 %.sroa.11.1.lcssa.i48 ; 4 uses
  br i1 %.not18.i51, label %.outer.thread, label %.lr.ph16.i52.preheader

.lr.ph16.i52.preheader:                           ; preds = %bb.ag
  %.neg307 = add i64 %.sroa.11.1.lcssa.i48, 1
  %xtraiter302 = and i64 %i.fh, 1
  %i.fj = icmp eq i64 %.sroa.16.0100232, %.neg307
  br i1 %i.fj, label %.lr.ph16.i52.epil.preheader, label %.lr.ph16.i52.preheader.new

.lr.ph16.i52.preheader.new:                       ; preds = %.lr.ph16.i52.preheader
  %unroll_iter305 = and i64 %i.fh, -2
  br label %.lr.ph16.i52

.lr.ph16.i52:                                     ; preds = %.lr.ph16.i52, %.lr.ph16.i52.preheader.new
  %.sroa.06.014.i53 = phi i64 [ 0, %.lr.ph16.i52.preheader.new ], [ %i.fn, %.lr.ph16.i52 ] ; 5 uses
  %niter306 = phi i64 [ 0, %.lr.ph16.i52.preheader.new ], [ %niter306.next.1, %.lr.ph16.i52 ]
  %i.fk = xor i64 %.sroa.06.014.i53, -1
  %i.fl = getelementptr [88 x i8], ptr %i.cw, i64 %i.fk
  %i.fm = getelementptr [88 x i8], ptr %i.fi, i64 %.sroa.06.014.i53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.fm, ptr noundef nonnull align 8 dereferenceable(88) %i.fl, i64 88, i1 false), !alias.scope !415
  %i.fn = add nuw i64 %.sroa.06.014.i53, 2        ; 2 uses
  %i.fo = xor i64 %.sroa.06.014.i53, -2
  %i.fp = getelementptr [88 x i8], ptr %i.cw, i64 %i.fo
  %i.fq = getelementptr [88 x i8], ptr %i.fi, i64 %.sroa.06.014.i53
  %i.fr = getelementptr i8, ptr %i.fq, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.fr, ptr noundef nonnull align 8 dereferenceable(88) %i.fp, i64 88, i1 false), !alias.scope !415
  %niter306.next.1 = add i64 %niter306, 2         ; 2 uses
  %niter306.ncmp.1 = icmp eq i64 %niter306.next.1, %unroll_iter305
  br i1 %niter306.ncmp.1, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0E0EB3v_.exit.unr-lcssa, label %.lr.ph16.i52

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0E0EB3v_.exit.unr-lcssa: ; preds = %.lr.ph16.i52
  %lcmp.mod303.not = icmp eq i64 %xtraiter302, 0
  br i1 %lcmp.mod303.not, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0E0EB3v_.exit, label %.lr.ph16.i52.epil.preheader

.lr.ph16.i52.epil.preheader:                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0E0EB3v_.exit.unr-lcssa, %.lr.ph16.i52.preheader
  %.sroa.06.014.i53.epil.init = phi i64 [ 0, %.lr.ph16.i52.preheader ], [ %i.fn, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0E0EB3v_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod304 = trunc i64 %i.fh to i1
  call void @llvm.assume(i1 %lcmp.mod304)
  %i.fs = xor i64 %.sroa.06.014.i53.epil.init, -1
  %i.ft = getelementptr [88 x i8], ptr %i.cw, i64 %i.fs
  %i.fu = getelementptr [88 x i8], ptr %i.fi, i64 %.sroa.06.014.i53.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.fu, ptr noundef nonnull align 8 dereferenceable(88) %i.ft, i64 88, i1 false), !alias.scope !415
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0E0EB3v_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0E0EB3v_.exit: ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0E0EB3v_.exit.unr-lcssa, %.lr.ph16.i52.epil.preheader
  %i.fv = icmp ugt i64 %.sroa.11.1.lcssa.i48, %.sroa.16.0100232
  br i1 %i.fv, label %bb.ah, label %.outer, !prof !67

.outer.thread:                                    ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.outer._crit_edge

.outer:                                           ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0E0EB3v_.exit
  %i.fw = getelementptr inbounds nuw [88 x i8], ptr %.sroa.0.0.ph107, i64 %.sroa.11.1.lcssa.i48 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.fx = icmp ult i64 %i.fh, 33
  br i1 %i.fx, label %.outer._crit_edge, label %.lr.ph

bb.ah:                                            ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0E0EB3v_.exit
  call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %.sroa.11.1.lcssa.i48, i64 noundef %.sroa.16.0100232, i64 noundef %.sroa.16.0100232, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #27
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0EB31_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 104811045873349726) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 104811045873349726) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(88) %5, ptr noalias nofree noundef align 8 dereferenceable(8) %6) unnamed_addr #3 {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph107 = phi ptr [ %i.fw, %.outer ], [ %0, %bb.a ] ; 21 uses
  %.sroa.16.0.ph106 = phi i64 [ %i.fh, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph105 = phi i32 [ %i.f, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph104 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.c = ptrtoint ptr %.sroa.0.0.ph107 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph104, null
  %i.d = icmp eq i32 %.sroa.025.0.ph105, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph234

bb.b:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsf8NQSppxkmK_14ide_completion.exit
  %i.e = icmp eq i32 %i.f, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph234

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsf8NQSppxkmK_14ide_completion.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa98 = phi ptr [ %i.fi, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph107, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsf8NQSppxkmK_14ide_completion.exit ], [ %i.fw, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.11.1.lcssa.i, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsf8NQSppxkmK_14ide_completion.exit ], [ %i.fh, %.outer ]
  call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1s_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0EB3o_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph.lcssa98, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 104811045873349726) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.f

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0100.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph106, %.lr.ph ]
  call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0EB2R_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph107, i64 noundef %.sroa.16.0100.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.f

.lr.ph234:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.099233 = phi i32 [ %i.f, %bb.b ], [ %.sroa.025.0.ph105, %.lr.ph ]
  %.sroa.16.0100232 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph106, %.lr.ph ] ; 21 uses
  %i.f = add i32 %.sroa.025.099233, -1            ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !422)
  %i.g = lshr i64 %.sroa.16.0100232, 3            ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.g, 352
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph107, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw nsw i64 %i.g, 616
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph107, i64 %.idx2.i ; 4 uses
  %i.j = icmp samesign ult i64 %.sroa.16.0100232, 64
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph234
  %i.k = call noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0EB30_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph107, ptr noundef nonnull readonly %i.h, ptr noundef nonnull readonly %i.i, i64 noundef %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph234
  %.val4.i = load ptr, ptr %6, align 8, !alias.scope !422, !noalias !425, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.l = call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0B1R_(ptr nonnull %.val4.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.0.0.ph107, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.h) #30, !noalias !422 ; 2 uses
  %i.m = call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0B1R_(ptr nonnull %.val4.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.0.0.ph107, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.i) #30, !noalias !422
  %i.n = xor i1 %i.l, %i.m
  br i1 %i.n, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0B1R_(ptr nonnull %.val4.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.i) #30, !noalias !422
  %i.p = xor i1 %i.l, %i.o
  %..i.i = select i1 %i.p, ptr %i.i, ptr %i.h
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph._crit_edge, %.outer._crit_edge
  ret void

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.0.0.i.sink.i = phi ptr [ %i.k, %bb.c ], [ %.sroa.0.0.ph107, %bb.d ], [ %..i.i, %bb.e ]
  %i.q = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.r = sub nuw i64 %i.q, %i.c                   ; 2 uses
  %.sroa.0.0.i = udiv exact i64 %i.r, 88          ; 3 uses
  %i.s = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.16.0100232
  call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph107, i64 %i.r ; 20 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.t, i64 88, i1 false)
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val = load ptr, ptr %6, align 8, !nonnull !4, !align !6, !noundef !4
  %i.u = call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0B1R_(ptr nonnull %.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.028.0.ph104, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.t) #30
  br i1 %i.u, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.g, %bb.h
  %.val37 = load ptr, ptr %6, align 8             ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !427)
  call void @llvm.experimental.noalias.scope.decl(metadata !430)
  %.not74 = icmp samesign ult i64 %3, %.sroa.16.0100232
  br i1 %.not74, label %bb.k, label %bb.j, !prof !204

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr [88 x i8], ptr %2, i64 %.sroa.16.0100232 ; 4 uses
  %i.w = getelementptr i8, ptr %.val37, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 28
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 25
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %bb.s, %bb.j
  %.sroa.11.0.i = phi i64 [ 0, %bb.j ], [ %.sroa.11.1.lcssa.i, %bb.s ] ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.0.0.ph107, %bb.j ], [ %i.cd, %bb.s ] ; 3 uses
  %.sroa.19.0.i = phi ptr [ %i.v, %bb.j ], [ %i.cb, %bb.s ] ; 2 uses
  %.sroa.0.0.i39 = phi i64 [ %.sroa.0.0.i, %bb.j ], [ %.sroa.16.0100232, %bb.s ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [88 x i8], ptr %.sroa.0.0.ph107, i64 %.sroa.0.0.i39 ; 2 uses
  %i.ae = icmp ult ptr %.sroa.5.0.i, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val37) ]
  br label %bb.m

._crit_edge.i:                                    ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0B1R_.exit.i, %bb.l
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.l ], [ %i.by, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0B1R_.exit.i ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.l ], [ %i.bz, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0B1R_.exit.i ] ; 2 uses
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.l ], [ %i.bv, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0B1R_.exit.i ]
  %i.af = icmp eq i64 %.sroa.0.0.i39, %.sroa.16.0100232
  br i1 %i.af, label %bb.t, label %bb.s

bb.m:                                             ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0B1R_.exit.i, %.lr.ph.i
  %.sroa.19.111.i = phi ptr [ %.sroa.19.0.i, %.lr.ph.i ], [ %i.bv, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0B1R_.exit.i ]
  %.sroa.5.110.i = phi ptr [ %.sroa.5.0.i, %.lr.ph.i ], [ %i.bz, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0B1R_.exit.i ] ; 11 uses
  %.sroa.11.19.i = phi i64 [ %.sroa.11.0.i, %.lr.ph.i ], [ %i.by, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0B1R_.exit.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !432)
  call void @llvm.experimental.noalias.scope.decl(metadata !435)
  %.val.i.i = load ptr, ptr %.val37, align 8, !noalias !437, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  %.val1.i.i = load ptr, ptr %i.w, align 8, !noalias !437, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !438)
  call void @llvm.experimental.noalias.scope.decl(metadata !441)
  %i.ag = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !443, !nonnull !4, !noundef !4
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !443, !noundef !4
  %i.ak = call noundef i64 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport34compute_fuzzy_completion_order_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.5.110.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef %i.aj, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1.i.i), !noalias !444 ; 2 uses
  %i.al = load ptr, ptr %i.ag, align 8, !noalias !445, !nonnull !4, !noundef !4
  %i.am = load i64, ptr %i.ai, align 8, !noalias !445, !noundef !4
  %i.an = call noundef i64 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport34compute_fuzzy_completion_order_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.al, i64 noundef %i.am, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1.i.i), !noalias !430 ; 2 uses
  %i.ao = call i8 @llvm.ucmp.i8.i64(i64 %i.ak, i64 %i.an)
  %i.ap = icmp eq i64 %i.ak, %i.an
  br i1 %i.ap, label %bb.n, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0B1R_.exit.i

bb.n:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.5.110.i, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !446)
  call void @llvm.experimental.noalias.scope.decl(metadata !449)
  %i.ar = load i8, ptr %i.aq, align 4, !range !224, !alias.scope !451, !noalias !452, !noundef !4 ; 3 uses
  %i.as = load i8, ptr %i.x, align 8, !range !224, !alias.scope !453, !noalias !454, !noundef !4 ; 2 uses
  %i.at = call i8 @llvm.ucmp.i8.i8(i8 %i.ar, i8 %i.as)
  %i.au = icmp eq i8 %i.ar, %i.as
  br i1 %i.au, label %bb.o, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  switch i8 %i.ar, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i [
    i8 1, label %bb.p
    i8 4, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.5.110.i, i64 25
  %i.aw = load i8, ptr %i.av, align 1, !alias.scope !451, !noalias !452, !noundef !4
  %i.ax = load i8, ptr %i.aa, align 1, !alias.scope !453, !noalias !454, !noundef !4
  %i.ay = call i8 @llvm.ucmp.i8.i8(i8 %i.aw, i8 %i.ax)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.5.110.i, i64 28
  %i.ba = load i32, ptr %i.az, align 4, !range !10, !alias.scope !451, !noalias !452, !noundef !4 ; 2 uses
  %i.bb = load i32, ptr %i.y, align 4, !range !10, !alias.scope !453, !noalias !454, !noundef !4 ; 2 uses
  %i.bc = call i8 @llvm.ucmp.i8.i32(i32 %i.ba, i32 %i.bb)
  %i.bd = icmp eq i32 %i.ba, %i.bb
  br i1 %i.bd, label %bb.r, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.5.110.i, i64 32
  %i.bf = load i32, ptr %i.be, align 4, !alias.scope !451, !noalias !452, !noundef !4
  %i.bg = load i32, ptr %i.z, align 8, !alias.scope !453, !noalias !454, !noundef !4
  %i.bh = call i8 @llvm.ucmp.i8.i32(i32 %i.bf, i32 %i.bg)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i: ; preds = %bb.r, %bb.q, %bb.p, %bb.n
  %.sroa.0.0.i.i.i.i = phi i8 [ %i.at, %bb.n ], [ %i.ay, %bb.p ], [ %i.bh, %bb.r ], [ %i.bc, %bb.q ] ; 2 uses
  %i.bi = icmp eq i8 %.sroa.0.0.i.i.i.i, 0
  br i1 %i.bi, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0B1R_.exit.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i, %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !455)
  call void @llvm.experimental.noalias.scope.decl(metadata !458)
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.5.110.i, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !460, !noalias !463, !noundef !4 ; 2 uses
  %i.bl = icmp ugt i64 %i.bk, 1                   ; 2 uses
  %i.bm = load ptr, ptr %.sroa.5.110.i, align 8, !alias.scope !460, !noalias !463, !nonnull !4
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.5.110.i, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !460, !noalias !463
  %.sink11.i.i.i.i.i = select i1 %i.bl, ptr %i.bm, ptr %.sroa.5.110.i
  %.sink10.i.i.i.i.i = select i1 %i.bl, i64 %i.bo, i64 %i.bk
  %i.bp = load i64, ptr %i.ab, align 8, !alias.scope !465, !noalias !468, !noundef !4 ; 2 uses
  %i.bq = icmp ugt i64 %i.bp, 1                   ; 2 uses
  %i.br = load ptr, ptr %i.t, align 8, !alias.scope !465, !noalias !468, !nonnull !4
  %i.bs = load i64, ptr %i.ac, align 8, !alias.scope !465, !noalias !468
  %.sink11.i1.i.i.i.i = select i1 %i.bq, ptr %i.br, ptr %i.t
  %.sink10.i2.i.i.i.i = select i1 %i.bq, i64 %i.bs, i64 %i.bp
  %i.bt = call noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs33K2ylI4knu_10hir_expand4name4NameNtB5_8SliceOrd7compareCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sink11.i.i.i.i.i, i64 noundef %.sink10.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sink11.i1.i.i.i.i, i64 noundef %.sink10.i2.i.i.i.i), !noalias !430
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0B1R_.exit.i

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0B1R_.exit.i: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i, %bb.m
  %.sroa.0.0.i.i.i = phi i8 [ %i.bt, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i ], [ %.sroa.0.0.i.i.i.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i ], [ %i.ao, %bb.m ]
  %i.bu = icmp eq i8 %.sroa.0.0.i.i.i, -1         ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %.sroa.19.111.i, i64 -88 ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.bu, ptr %2, ptr %i.bv
  %i.bw = getelementptr inbounds nuw [88 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.11.19.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bw, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.110.i, i64 88, i1 false), !alias.scope !470, !noalias !471
  %i.bx = zext i1 %i.bu to i64
  %i.by = add i64 %.sroa.11.19.i, %i.bx           ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.5.110.i, i64 88 ; 3 uses
  %i.ca = icmp ult ptr %i.bz, %i.ad
  br i1 %i.ca, label %bb.m, label %._crit_edge.i

bb.s:                                             ; preds = %._crit_edge.i
  %i.cb = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i, i64 -88 ; 2 uses
  %i.cc = getelementptr inbounds nuw [88 x i8], ptr %i.cb, i64 %.sroa.11.1.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.cc, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.1.lcssa.i, i64 88, i1 false), !alias.scope !470, !noalias !474
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i, i64 88
  br label %bb.l

bb.t:                                             ; preds = %._crit_edge.i
  %i.ce = mul nuw nsw i64 %.sroa.11.1.lcssa.i, 88
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph107, ptr nonnull align 8 %2, i64 %i.ce, i1 false), !alias.scope !470
  %i.cf = sub i64 %.sroa.16.0100232, %.sroa.11.1.lcssa.i ; 4 uses
  %.not18.i = icmp eq i64 %.sroa.16.0100232, %.sroa.11.1.lcssa.i
  br i1 %.not18.i, label %.loopexit, label %.lr.ph16.i

.lr.ph16.i:                                       ; preds = %bb.t
  %i.cg = getelementptr [88 x i8], ptr %.sroa.0.0.ph107, i64 %.sroa.11.1.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.11.1.lcssa.i, 1
  %xtraiter = and i64 %i.cf, 1
  %i.ch = icmp eq i64 %.sroa.16.0100232, %.neg
  br i1 %i.ch, label %.epil.preheader, label %.lr.ph16.i.new

.lr.ph16.i.new:                                   ; preds = %.lr.ph16.i
  %unroll_iter = and i64 %i.cf, -2
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph16.i.new
  %.sroa.06.014.i = phi i64 [ 0, %.lr.ph16.i.new ], [ %i.cl, %bb.u ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph16.i.new ], [ %niter.next.1, %bb.u ]
  %i.ci = xor i64 %.sroa.06.014.i, -1
  %i.cj = getelementptr [88 x i8], ptr %i.v, i64 %i.ci
  %i.ck = getelementptr [88 x i8], ptr %i.cg, i64 %.sroa.06.014.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ck, ptr noundef nonnull align 8 dereferenceable(88) %i.cj, i64 88, i1 false), !alias.scope !470
  %i.cl = add nuw i64 %.sroa.06.014.i, 2          ; 2 uses
  %i.cm = xor i64 %.sroa.06.014.i, -2
  %i.cn = getelementptr [88 x i8], ptr %i.v, i64 %i.cm
  %i.co = getelementptr [88 x i8], ptr %i.cg, i64 %.sroa.06.014.i
  %i.cp = getelementptr i8, ptr %i.co, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.cp, ptr noundef nonnull align 8 dereferenceable(88) %i.cn, i64 88, i1 false), !alias.scope !470
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.u

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.u
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph16.i
  %.sroa.06.014.i.epil.init = phi i64 [ 0, %.lr.ph16.i ], [ %i.cl, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod295 = trunc i64 %i.cf to i1
  call void @llvm.assume(i1 %lcmp.mod295)
  %i.cq = xor i64 %.sroa.06.014.i.epil.init, -1
  %i.cr = getelementptr [88 x i8], ptr %i.v, i64 %i.cq
  %i.cs = getelementptr [88 x i8], ptr %i.cg, i64 %.sroa.06.014.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.cs, ptr noundef nonnull align 8 dereferenceable(88) %i.cr, i64 88, i1 false), !alias.scope !470
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.t
  %i.ct = icmp eq i64 %.sroa.11.1.lcssa.i, 0
  br i1 %i.ct, label %.thread, label %bb.v

bb.v:                                             ; preds = %.loopexit
  %.not.i40 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.16.0100232
  br i1 %.not.i40, label %bb.w, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsf8NQSppxkmK_14ide_completion.exit, !prof !67

bb.w:                                             ; preds = %bb.v
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @92, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #27, !noalias !477
  unreachable

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsf8NQSppxkmK_14ide_completion.exit: ; preds = %bb.v
  %i.cu = getelementptr inbounds nuw [88 x i8], ptr %.sroa.0.0.ph107, i64 %.sroa.11.1.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph107) ]
  call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0EB31_(ptr noalias nofree noundef nonnull align 8 %i.cu, i64 noundef %i.cf, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(88) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cv = icmp ult i64 %.sroa.11.1.lcssa.i, 33
  br i1 %i.cv, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.h, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !481)
  call void @llvm.experimental.noalias.scope.decl(metadata !484)
  %.not75 = icmp samesign ult i64 %3, %.sroa.16.0100232
  br i1 %.not75, label %bb.y, label %bb.x, !prof !204

bb.x:                                             ; preds = %.thread
  %i.cw = getelementptr [88 x i8], ptr %2, i64 %.sroa.16.0100232 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.cy = getelementptr inbounds nuw i8, ptr %i.t, i64 28
  %i.cz = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.da = getelementptr inbounds nuw i8, ptr %i.t, i64 25
  %i.db = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  br label %bb.z

bb.y:                                             ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.z:                                             ; preds = %bb.af, %bb.x
  %.sroa.11.0.i43 = phi i64 [ 0, %bb.x ], [ %i.fe, %bb.af ] ; 2 uses
  %.sroa.5.0.i44 = phi ptr [ %.sroa.0.0.ph107, %bb.x ], [ %i.ff, %bb.af ] ; 3 uses
  %.sroa.19.0.i45 = phi ptr [ %i.cw, %bb.x ], [ %i.fc, %bb.af ] ; 2 uses
  %.sroa.0.0.i46 = phi i64 [ %.sroa.0.0.i, %bb.x ], [ %.sroa.16.0100232, %bb.af ] ; 2 uses
  %i.dd = getelementptr inbounds nuw [88 x i8], ptr %.sroa.0.0.ph107, i64 %.sroa.0.0.i46 ; 2 uses
  %i.de = icmp ult ptr %.sroa.5.0.i44, %i.dd
  br i1 %i.de, label %.lr.ph.i55, label %._crit_edge.i47

._crit_edge.i47:                                  ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0B1R_.exit.i61, %bb.z
  %.sroa.11.1.lcssa.i48 = phi i64 [ %.sroa.11.0.i43, %bb.z ], [ %i.ez, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0B1R_.exit.i61 ] ; 10 uses
  %.sroa.5.1.lcssa.i49 = phi ptr [ %.sroa.5.0.i44, %bb.z ], [ %i.fa, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0B1R_.exit.i61 ] ; 2 uses
  %.sroa.19.1.lcssa.i50 = phi ptr [ %.sroa.19.0.i45, %bb.z ], [ %i.ew, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0B1R_.exit.i61 ]
  %i.df = icmp eq i64 %.sroa.0.0.i46, %.sroa.16.0100232
  br i1 %i.df, label %bb.ag, label %bb.af

.lr.ph.i55:                                       ; preds = %bb.z, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0B1R_.exit.i61
  %.sroa.19.111.i56 = phi ptr [ %i.ew, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0B1R_.exit.i61 ], [ %.sroa.19.0.i45, %bb.z ]
  %.sroa.5.110.i57 = phi ptr [ %i.fa, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0B1R_.exit.i61 ], [ %.sroa.5.0.i44, %bb.z ] ; 11 uses
  %.sroa.11.19.i58 = phi i64 [ %i.ez, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0B1R_.exit.i61 ], [ %.sroa.11.0.i43, %bb.z ] ; 2 uses
  %.val.i.i59 = load ptr, ptr %6, align 8, !noalias !486, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !490)
  call void @llvm.experimental.noalias.scope.decl(metadata !493)
  %.val.i13.i = load ptr, ptr %.val.i.i59, align 8, !noalias !495, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  %i.dg = getelementptr i8, ptr %.val.i.i59, i64 8
  %.val1.i.i60 = load ptr, ptr %i.dg, align 8, !noalias !495, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !496)
  call void @llvm.experimental.noalias.scope.decl(metadata !499)
  %i.dh = getelementptr inbounds nuw i8, ptr %.val.i13.i, i64 8 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !501, !nonnull !4, !noundef !4
  %i.dj = getelementptr inbounds nuw i8, ptr %.val.i13.i, i64 16 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !noalias !501, !noundef !4
  %i.dl = call noundef i64 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport34compute_fuzzy_completion_order_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.di, i64 noundef %i.dk, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1.i.i60), !noalias !502 ; 2 uses
  %i.dm = load ptr, ptr %i.dh, align 8, !noalias !503, !nonnull !4, !noundef !4
  %i.dn = load i64, ptr %i.dj, align 8, !noalias !503, !noundef !4
  %i.do = call noundef i64 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport34compute_fuzzy_completion_order_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.5.110.i57, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dm, i64 noundef %i.dn, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1.i.i60), !noalias !484 ; 2 uses
  %i.dp = call i8 @llvm.ucmp.i8.i64(i64 %i.dl, i64 %i.do)
  %i.dq = icmp eq i64 %i.dl, %i.do
  br i1 %i.dq, label %bb.aa, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0B1R_.exit.i61

bb.aa:                                            ; preds = %.lr.ph.i55
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.5.110.i57, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !504)
  call void @llvm.experimental.noalias.scope.decl(metadata !507)
  %i.ds = load i8, ptr %i.cx, align 4, !range !224, !alias.scope !509, !noalias !510, !noundef !4 ; 3 uses
  %i.dt = load i8, ptr %i.dr, align 4, !range !224, !alias.scope !511, !noalias !512, !noundef !4 ; 2 uses
  %i.du = call i8 @llvm.ucmp.i8.i8(i8 %i.ds, i8 %i.dt)
  %i.dv = icmp eq i8 %i.ds, %i.dt
  br i1 %i.dv, label %bb.ab, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i64

bb.ab:                                            ; preds = %bb.aa
  switch i8 %i.ds, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i66 [
    i8 1, label %bb.ac
    i8 4, label %bb.ad
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.dw = load i8, ptr %i.da, align 1, !alias.scope !509, !noalias !510, !noundef !4
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.5.110.i57, i64 25
  %i.dy = load i8, ptr %i.dx, align 1, !alias.scope !511, !noalias !512, !noundef !4
  %i.dz = call i8 @llvm.ucmp.i8.i8(i8 %i.dw, i8 %i.dy)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i64

bb.ad:                                            ; preds = %bb.ab
  %i.ea = load i32, ptr %i.cy, align 4, !range !10, !alias.scope !509, !noalias !510, !noundef !4 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.5.110.i57, i64 28
  %i.ec = load i32, ptr %i.eb, align 4, !range !10, !alias.scope !511, !noalias !512, !noundef !4 ; 2 uses
  %i.ed = call i8 @llvm.ucmp.i8.i32(i32 %i.ea, i32 %i.ec)
  %i.ee = icmp eq i32 %i.ea, %i.ec
  br i1 %i.ee, label %bb.ae, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i64

bb.ae:                                            ; preds = %bb.ad
  %i.ef = load i32, ptr %i.cz, align 4, !alias.scope !509, !noalias !510, !noundef !4
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.5.110.i57, i64 32
  %i.eh = load i32, ptr %i.eg, align 4, !alias.scope !511, !noalias !512, !noundef !4
  %i.ei = call i8 @llvm.ucmp.i8.i32(i32 %i.ef, i32 %i.eh)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i64

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i64: ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.aa
  %.sroa.0.0.i.i.i.i65 = phi i8 [ %i.du, %bb.aa ], [ %i.dz, %bb.ac ], [ %i.ei, %bb.ae ], [ %i.ed, %bb.ad ] ; 2 uses
  %i.ej = icmp eq i8 %.sroa.0.0.i.i.i.i65, 0
  br i1 %i.ej, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i66, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0B1R_.exit.i61

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i66: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i64, %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !513)
  call void @llvm.experimental.noalias.scope.decl(metadata !516)
  %i.ek = load i64, ptr %i.db, align 8, !alias.scope !518, !noalias !521, !noundef !4 ; 2 uses
  %i.el = icmp ugt i64 %i.ek, 1                   ; 2 uses
  %i.em = load ptr, ptr %i.t, align 8, !alias.scope !518, !noalias !521, !nonnull !4
  %i.en = load i64, ptr %i.dc, align 8, !alias.scope !518, !noalias !521
  %.sink11.i.i.i.i.i67 = select i1 %i.el, ptr %i.em, ptr %i.t
  %.sink10.i.i.i.i.i68 = select i1 %i.el, i64 %i.en, i64 %i.ek
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.5.110.i57, i64 16
  %i.ep = load i64, ptr %i.eo, align 8, !alias.scope !523, !noalias !526, !noundef !4 ; 2 uses
  %i.eq = icmp ugt i64 %i.ep, 1                   ; 2 uses
  %i.er = load ptr, ptr %.sroa.5.110.i57, align 8, !alias.scope !523, !noalias !526, !nonnull !4
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.5.110.i57, i64 8
  %i.et = load i64, ptr %i.es, align 8, !alias.scope !523, !noalias !526
  %.sink11.i1.i.i.i.i69 = select i1 %i.eq, ptr %i.er, ptr %.sroa.5.110.i57
  %.sink10.i2.i.i.i.i70 = select i1 %i.eq, i64 %i.et, i64 %i.ep
  %i.eu = call noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs33K2ylI4knu_10hir_expand4name4NameNtB5_8SliceOrd7compareCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sink11.i.i.i.i.i67, i64 noundef %.sink10.i.i.i.i.i68, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sink11.i1.i.i.i.i69, i64 noundef %.sink10.i2.i.i.i.i70), !noalias !484
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0B1R_.exit.i61

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0B1R_.exit.i61: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i66, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i64, %.lr.ph.i55
  %.sroa.0.0.i.i.i62 = phi i8 [ %i.eu, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i66 ], [ %.sroa.0.0.i.i.i.i65, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i64 ], [ %i.dp, %.lr.ph.i55 ]
  %i.ev = icmp ne i8 %.sroa.0.0.i.i.i62, -1       ; 2 uses
  %i.ew = getelementptr inbounds i8, ptr %.sroa.19.111.i56, i64 -88 ; 3 uses
  %.sroa.01.0.i.i63 = select i1 %i.ev, ptr %2, ptr %i.ew
  %i.ex = getelementptr inbounds nuw [88 x i8], ptr %.sroa.01.0.i.i63, i64 %.sroa.11.19.i58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ex, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.110.i57, i64 88, i1 false), !alias.scope !528, !noalias !529
  %i.ey = zext i1 %i.ev to i64
  %i.ez = add i64 %.sroa.11.19.i58, %i.ey         ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.5.110.i57, i64 88 ; 3 uses
  %i.fb = icmp ult ptr %i.fa, %i.dd
  br i1 %i.fb, label %.lr.ph.i55, label %._crit_edge.i47

bb.af:                                            ; preds = %._crit_edge.i47
  %i.fc = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i50, i64 -88
  %i.fd = getelementptr inbounds nuw [88 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.fd, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.1.lcssa.i49, i64 88, i1 false), !alias.scope !528, !noalias !532
  %i.fe = add i64 %.sroa.11.1.lcssa.i48, 1
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i49, i64 88
  br label %bb.z

bb.ag:                                            ; preds = %._crit_edge.i47
  %i.fg = mul nuw nsw i64 %.sroa.11.1.lcssa.i48, 88
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph107, ptr nonnull align 8 %2, i64 %i.fg, i1 false), !alias.scope !528
  %i.fh = sub i64 %.sroa.16.0100232, %.sroa.11.1.lcssa.i48 ; 6 uses
  %.not18.i51 = icmp eq i64 %.sroa.16.0100232, %.sroa.11.1.lcssa.i48
  %i.fi = getelementptr [88 x i8], ptr %.sroa.0.0.ph107, i64 %.sroa.11.1.lcssa.i48 ; 4 uses
  br i1 %.not18.i51, label %.outer.thread, label %.lr.ph16.i52.preheader

.lr.ph16.i52.preheader:                           ; preds = %bb.ag
  %.neg307 = add i64 %.sroa.11.1.lcssa.i48, 1
  %xtraiter302 = and i64 %i.fh, 1
  %i.fj = icmp eq i64 %.sroa.16.0100232, %.neg307
  br i1 %i.fj, label %.lr.ph16.i52.epil.preheader, label %.lr.ph16.i52.preheader.new

.lr.ph16.i52.preheader.new:                       ; preds = %.lr.ph16.i52.preheader
  %unroll_iter305 = and i64 %i.fh, -2
  br label %.lr.ph16.i52

.lr.ph16.i52:                                     ; preds = %.lr.ph16.i52, %.lr.ph16.i52.preheader.new
  %.sroa.06.014.i53 = phi i64 [ 0, %.lr.ph16.i52.preheader.new ], [ %i.fn, %.lr.ph16.i52 ] ; 5 uses
  %niter306 = phi i64 [ 0, %.lr.ph16.i52.preheader.new ], [ %niter306.next.1, %.lr.ph16.i52 ]
  %i.fk = xor i64 %.sroa.06.014.i53, -1
  %i.fl = getelementptr [88 x i8], ptr %i.cw, i64 %i.fk
  %i.fm = getelementptr [88 x i8], ptr %i.fi, i64 %.sroa.06.014.i53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.fm, ptr noundef nonnull align 8 dereferenceable(88) %i.fl, i64 88, i1 false), !alias.scope !528
  %i.fn = add nuw i64 %.sroa.06.014.i53, 2        ; 2 uses
  %i.fo = xor i64 %.sroa.06.014.i53, -2
  %i.fp = getelementptr [88 x i8], ptr %i.cw, i64 %i.fo
  %i.fq = getelementptr [88 x i8], ptr %i.fi, i64 %.sroa.06.014.i53
  %i.fr = getelementptr i8, ptr %i.fq, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.fr, ptr noundef nonnull align 8 dereferenceable(88) %i.fp, i64 88, i1 false), !alias.scope !528
  %niter306.next.1 = add i64 %niter306, 2         ; 2 uses
  %niter306.ncmp.1 = icmp eq i64 %niter306.next.1, %unroll_iter305
  br i1 %niter306.ncmp.1, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0E0EB3v_.exit.unr-lcssa, label %.lr.ph16.i52

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0E0EB3v_.exit.unr-lcssa: ; preds = %.lr.ph16.i52
  %lcmp.mod303.not = icmp eq i64 %xtraiter302, 0
  br i1 %lcmp.mod303.not, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0E0EB3v_.exit, label %.lr.ph16.i52.epil.preheader

.lr.ph16.i52.epil.preheader:                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0E0EB3v_.exit.unr-lcssa, %.lr.ph16.i52.preheader
  %.sroa.06.014.i53.epil.init = phi i64 [ 0, %.lr.ph16.i52.preheader ], [ %i.fn, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0E0EB3v_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod304 = trunc i64 %i.fh to i1
  call void @llvm.assume(i1 %lcmp.mod304)
  %i.fs = xor i64 %.sroa.06.014.i53.epil.init, -1
  %i.ft = getelementptr [88 x i8], ptr %i.cw, i64 %i.fs
  %i.fu = getelementptr [88 x i8], ptr %i.fi, i64 %.sroa.06.014.i53.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.fu, ptr noundef nonnull align 8 dereferenceable(88) %i.ft, i64 88, i1 false), !alias.scope !528
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0E0EB3v_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0E0EB3v_.exit: ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0E0EB3v_.exit.unr-lcssa, %.lr.ph16.i52.epil.preheader
  %i.fv = icmp ugt i64 %.sroa.11.1.lcssa.i48, %.sroa.16.0100232
  br i1 %i.fv, label %bb.ah, label %.outer, !prof !67

.outer.thread:                                    ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.outer._crit_edge

.outer:                                           ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0E0EB3v_.exit
  %i.fw = getelementptr inbounds nuw [88 x i8], ptr %.sroa.0.0.ph107, i64 %.sroa.11.1.lcssa.i48 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.fx = icmp ult i64 %i.fh, 33
  br i1 %i.fx, label %.outer._crit_edge, label %.lr.ph

bb.ah:                                            ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0E0EB3v_.exit
  call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %.sroa.11.1.lcssa.i48, i64 noundef %.sroa.16.0100232, i64 noundef %.sroa.16.0100232, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #27
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyB17_NCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string13format_string0E0EB3f_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(16) %5, ptr noalias nofree noundef align 8 dereferenceable(8) %6) unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph119 = phi ptr [ %i.er, %.outer ], [ %0, %bb.a ] ; 22 uses
  %.sroa.16.0.ph118 = phi i64 [ %i.ec, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph117 = phi i32 [ %i.f, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph116 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.c = ptrtoint ptr %.sroa.0.0.ph119 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph116, null
  %i.d = icmp eq i32 %.sroa.025.0.ph117, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph264

bb.b:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE12split_at_mutCsf8NQSppxkmK_14ide_completion.exit
  %i.e = icmp eq i32 %i.f, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph264

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCshzWfHUSfYae_4core5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE12split_at_mutCsf8NQSppxkmK_14ide_completion.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa110 = phi ptr [ %i.ed, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph119, %_RNvMNtCshzWfHUSfYae_4core5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE12split_at_mutCsf8NQSppxkmK_14ide_completion.exit ], [ %i.er, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.27.2.lcssa.i, %_RNvMNtCshzWfHUSfYae_4core5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE12split_at_mutCsf8NQSppxkmK_14ide_completion.exit ], [ %i.ec, %.outer ]
  call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1s_11sort_by_keyB1u_NCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string13format_string0E0EB3C_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph.lcssa110, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.f

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0112.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph118, %.lr.ph ]
  call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_11sort_by_keyBY_NCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string13format_string0E0EB34_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph119, i64 noundef %.sroa.16.0112.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.f

.lr.ph264:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0111263 = phi i32 [ %i.f, %bb.b ], [ %.sroa.025.0.ph117, %.lr.ph ]
  %.sroa.16.0112262 = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph118, %.lr.ph ] ; 21 uses
  %i.f = add i32 %.sroa.025.0111263, -1           ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !535)
  %i.g = lshr i64 %.sroa.16.0112262, 3            ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.g, 6
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph119, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.g, 112
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph119, i64 %.idx2.i ; 3 uses
  %i.j = icmp samesign ult i64 %.sroa.16.0112262, 64
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph264
  %i.k = call noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_11sort_by_keyB16_NCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string13format_string0E0EB3e_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph119, ptr noundef nonnull readonly %i.h, ptr noundef nonnull readonly %i.i, i64 noundef %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph264
  %.val6.i = load ptr, ptr %.sroa.0.0.ph119, align 8, !alias.scope !535, !noalias !538, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  %.val7.i = load ptr, ptr %i.h, align 8, !alias.scope !535, !noalias !538 ; 2 uses
  %i.l = call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE11sort_by_keyBA_NCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string13format_string0E0B24_(ptr %.val6.i, ptr %.val7.i) #30, !noalias !540 ; 2 uses
  %.val5.i = load ptr, ptr %i.i, align 8, !alias.scope !535, !noalias !538 ; 2 uses
  %i.m = call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE11sort_by_keyBA_NCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string13format_string0E0B24_(ptr %.val6.i, ptr %.val5.i) #30, !noalias !540
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyB17_NCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function12ref_of_param0E0EB3f_:bb.a
bb.y:                                             ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalENCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyB1f_NCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function12ref_of_param0E0E0EB3J_.exit
  call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %.sroa.27.2.lcssa.i50, i64 noundef %.sroa.16.0112262, i64 noundef %.sroa.16.0112262, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #27
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters6copied9copy_foldBQ_uNCINvNvBT_8for_each4callBQ_NCNvNtNtNtCsf8NQSppxkmK_14ide_completion11completions9attribute3cfg12complete_cfg0E0E0EB2V_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull align 8 %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [360 x i8], align 8               ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [360 x i8], align 8               ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.f = icmp eq ptr %0, %1
  br i1 %i.f, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 630
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 400
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied9copy_foldReuNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBY_NCNvNtNtNtCsf8NQSppxkmK_14ide_completion11completions9attribute3cfg12complete_cfg0E0E0B27_.exit, %bb.b
  %.sroa.01.0 = phi i64 [ 0, %bb.b ], [ %i.w, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied9copy_foldReuNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBY_NCNvNtNtNtCsf8NQSppxkmK_14ide_completion11completions9attribute3cfg12complete_cfg0E0E0B27_.exit ] ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0 ; 2 uses
  %.val9 = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %.val10 = load i64, ptr %i.o, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !651
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !651
  store ptr %.val9, ptr %i.e, align 8, !noalias !654
  store i64 %.val10, ptr %i.k, align 8, !noalias !654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !654
  %i.p = call { i32, i32 } @_RNvMs1_NtCsf8NQSppxkmK_14ide_completion7contextNtB5_17CompletionContext12source_range(ptr noundef nonnull align 8 %2) ; 2 uses
  %i.q = extractvalue { i32, i32 } %i.p, 0
  %i.r = extractvalue { i32, i32 } %i.p, 1
  %i.s = load i8, ptr %i.l, align 2, !range !657, !noalias !654, !noundef !4
  call void @_RINvMs1_NtCsf8NQSppxkmK_14ide_completion4itemNtB6_14CompletionItem3newNtCs6oosyzwIepl_6ide_db10SymbolKindReEB8_(ptr noalias nofree noundef nonnull sret([360 x i8]) align 8 captures(none) dereferenceable(360) %i.d, i8 noundef 1, i32 noundef %i.q, i32 noundef %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val9, i64 noundef %.val10, i8 noundef %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !654
  store ptr %i.e, ptr %i.b, align 8, !noalias !654
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCsf8NQSppxkmK_14ide_completion, ptr %.sroa.43.0..sroa_idx.i.i.i, align 8, !noalias !654
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @85, ptr noundef nonnull %i.b)
          to label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsf8NQSppxkmK_14ide_completion.exit.i.i.i unwind label %bb.e

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsf8NQSppxkmK_14ide_completion.exit.i.i.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !654
  %i.t = invoke noundef nonnull align 8 ptr @_RINvMs2_NtCsf8NQSppxkmK_14ide_completion4itemNtB6_7Builder11insert_textNtNtCsbSS6DM8SDEO_5alloc6string6StringEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(360) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied9copy_foldReuNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBY_NCNvNtNtNtCsf8NQSppxkmK_14ide_completion11completions9attribute3cfg12complete_cfg0E0E0B27_.exit unwind label %bb.e ; 0 uses

bb.d:                                             ; preds = %bb.e
  resume { ptr, i32 } %lpad.thr_comm.i.i.i

bb.e:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsf8NQSppxkmK_14ide_completion.exit.i.i.i, %bb.c
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsf8NQSppxkmK_14ide_completion4item7BuilderEBF_(ptr noalias nofree noundef align 8 dereferenceable(360) %i.d) #28
          to label %bb.d unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #26
  unreachable

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied9copy_foldReuNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBY_NCNvNtNtNtCsf8NQSppxkmK_14ide_completion11completions9attribute3cfg12complete_cfg0E0E0B27_.exit: ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsf8NQSppxkmK_14ide_completion.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !654
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.a, ptr noundef nonnull align 8 dereferenceable(360) %i.d, i64 360, i1 false), !noalias !654
  %i.v = load ptr, ptr %i.m, align 8, !noalias !654, !nonnull !4, !align !6, !noundef !4
  call void @_RNvMs_NtCsf8NQSppxkmK_14ide_completion11completionsNtNtB6_4item7Builder6add_to(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(360) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !651
  %i.w = add nuw i64 %.sroa.01.0, 1               ; 2 uses
  %i.x = icmp eq i64 %i.w, %i.j
  br i1 %i.x, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied9copy_foldReuNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBY_NCNvNtNtNtCsf8NQSppxkmK_14ide_completion11completions9attribute3cfg12complete_cfg0E0E0B27_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs3_NtNtCshzWfHUSfYae_4core5array4iterINtB6_8IntoIterReKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvB10_8for_each4callBT_NCNvNtNtNtCsf8NQSppxkmK_14ide_completion11completions9attribute3cfg12complete_cfg0E0EB2n_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [360 x i8], align 8               ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [360 x i8], align 8               ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !658)
  %i.g = load i64, ptr %0, align 8, !alias.scope !658, !noalias !661, !noundef !4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !658, !noalias !661, !noundef !4 ; 3 uses
  %i.j = icmp ule i64 %i.g, %i.i
  tail call void @llvm.assume(i1 %i.j)
  %.not1.i = icmp eq i64 %i.g, %i.i
  br i1 %.not1.i, label %_RINvXs_NtNtCshzWfHUSfYae_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs8_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitReEE8try_folduNCINvMNtB7_9try_traitINtB3S_17NeverShortCircuituE10wrap_mut_2uB3y_NCINvNvB10_8for_each4callB3y_NCNvNtNtNtCsf8NQSppxkmK_14ide_completion11completions9attribute3cfg12complete_cfg0E0E0B47_E0B47_EB5t_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 630
  %.sroa.43.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 400
  br label %.noexc

.noexc:                                           ; preds = %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitReEE8try_folduNCINvMNtNtBe_3ops9try_traitINtB2h_17NeverShortCircuituE10wrap_mut_2uB1X_NCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8for_each4callB1X_NCNvNtNtNtCsf8NQSppxkmK_14ide_completion11completions9attribute3cfg12complete_cfg0E0E0B2C_E0B4z_.exit.i, %.lr.ph.i
  %i.n = phi i64 [ %i.g, %.lr.ph.i ], [ %i.o, %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitReEE8try_folduNCINvMNtNtBe_3ops9try_traitINtB2h_17NeverShortCircuituE10wrap_mut_2uB1X_NCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8for_each4callB1X_NCNvNtNtNtCsf8NQSppxkmK_14ide_completion11completions9attribute3cfg12complete_cfg0E0E0B2C_E0B4z_.exit.i ] ; 3 uses
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %i.p = icmp ult i64 %i.n, 2
  call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.n ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !noalias !663, !nonnull !4, !noundef !4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load i64, ptr %i.s, align 8, !noalias !663, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !666
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !666
  store ptr %i.r, ptr %i.e, align 8, !noalias !671
  store i64 %i.t, ptr %i.k, align 8, !noalias !671
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !671
  %i.u = call { i32, i32 } @_RNvMs1_NtCsf8NQSppxkmK_14ide_completion7contextNtB5_17CompletionContext12source_range(ptr noundef nonnull align 8 %1) ; 2 uses
  %i.v = extractvalue { i32, i32 } %i.u, 0
  %i.w = extractvalue { i32, i32 } %i.u, 1
  %i.x = load i8, ptr %i.l, align 2, !range !657, !noalias !671, !noundef !4
  call void @_RINvMs1_NtCsf8NQSppxkmK_14ide_completion4itemNtB6_14CompletionItem3newNtCs6oosyzwIepl_6ide_db10SymbolKindReEB8_(ptr noalias nofree noundef nonnull sret([360 x i8]) align 8 captures(none) dereferenceable(360) %i.d, i8 noundef 1, i32 noundef %i.v, i32 noundef %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef %i.t, i8 noundef %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !671
  store ptr %i.e, ptr %i.b, align 8, !noalias !671
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCsf8NQSppxkmK_14ide_completion, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i, align 8, !noalias !671
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @85, ptr noundef nonnull %i.b)
          to label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsf8NQSppxkmK_14ide_completion.exit.i.i.i.i.i unwind label %bb.b, !noalias !663

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsf8NQSppxkmK_14ide_completion.exit.i.i.i.i.i: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !671
  %i.y = invoke noundef nonnull align 8 ptr @_RINvMs2_NtCsf8NQSppxkmK_14ide_completion4itemNtB6_7Builder11insert_textNtNtCsbSS6DM8SDEO_5alloc6string6StringEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(360) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitReEE8try_folduNCINvMNtNtBe_3ops9try_traitINtB2h_17NeverShortCircuituE10wrap_mut_2uB1X_NCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8for_each4callB1X_NCNvNtNtNtCsf8NQSppxkmK_14ide_completion11completions9attribute3cfg12complete_cfg0E0E0B2C_E0B4z_.exit.i unwind label %bb.b, !noalias !663 ; 0 uses

bb.b:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsf8NQSppxkmK_14ide_completion.exit.i.i.i.i.i, %.noexc
  %lpad.thr_comm.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsf8NQSppxkmK_14ide_completion4item7BuilderEBF_(ptr noalias nofree noundef align 8 dereferenceable(360) %i.d) #28
          to label %.body unwind label %bb.c, !noalias !663

bb.c:                                             ; preds = %bb.b
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #26, !noalias !663
  unreachable

_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitReEE8try_folduNCINvMNtNtBe_3ops9try_traitINtB2h_17NeverShortCircuituE10wrap_mut_2uB1X_NCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8for_each4callB1X_NCNvNtNtNtCsf8NQSppxkmK_14ide_completion11completions9attribute3cfg12complete_cfg0E0E0B2C_E0B4z_.exit.i: ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsf8NQSppxkmK_14ide_completion.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !671
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.a, ptr noundef nonnull align 8 dereferenceable(360) %i.d, i64 360, i1 false), !noalias !671
  %i.aa = load ptr, ptr %i.m, align 8, !noalias !671, !nonnull !4, !align !6, !noundef !4
  call void @_RNvMs_NtCsf8NQSppxkmK_14ide_completion11completionsNtNtB6_4item7Builder6add_to(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(360) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !666
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !666
  %.not.i = icmp eq i64 %i.o, %i.i
  br i1 %.not.i, label %_RINvXs_NtNtCshzWfHUSfYae_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs8_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitReEE8try_folduNCINvMNtB7_9try_traitINtB3S_17NeverShortCircuituE10wrap_mut_2uB3y_NCINvNvB10_8for_each4callB3y_NCNvNtNtNtCsf8NQSppxkmK_14ide_completion11completions9attribute3cfg12complete_cfg0E0E0B47_E0B47_EB5t_.exit, label %.noexc

_RINvXs_NtNtCshzWfHUSfYae_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs8_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitReEE8try_folduNCINvMNtB7_9try_traitINtB3S_17NeverShortCircuituE10wrap_mut_2uB3y_NCINvNvB10_8for_each4callB3y_NCNvNtNtNtCsf8NQSppxkmK_14ide_completion11completions9attribute3cfg12complete_cfg0E0E0B47_E0B47_EB5t_.exit: ; preds = %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitReEE8try_folduNCINvMNtNtBe_3ops9try_traitINtB2h_17NeverShortCircuituE10wrap_mut_2uB1X_NCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8for_each4callB1X_NCNvNtNtNtCsf8NQSppxkmK_14ide_completion11completions9attribute3cfg12complete_cfg0E0E0B2C_E0B4z_.exit.i, %bb.a
  ret void

.body:                                            ; preds = %bb.b
  resume { ptr, i32 } %lpad.thr_comm.i.i.i.i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0B1R_(ptr nofree readonly captures(none) %.0.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1) unnamed_addr #2 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val = load ptr, ptr %.0.val, align 8, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  %i.a = getelementptr i8, ptr %.0.val, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !674)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !677)
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noalias !679, !nonnull !4, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noalias !679, !noundef !4
  %i.f = tail call noundef i64 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport34compute_fuzzy_completion_order_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1), !noalias !677 ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8, !noalias !679, !nonnull !4, !noundef !4
  %i.h = load i64, ptr %i.d, align 8, !noalias !679, !noundef !4
  %i.i = tail call noundef i64 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport34compute_fuzzy_completion_order_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1) ; 2 uses
  %i.j = tail call i8 @llvm.ucmp.i8.i64(i64 %i.f, i64 %i.i)
  %i.k = icmp eq i64 %i.f, %i.i
  br i1 %i.k, label %bb.b, label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0B7_.exit

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !680)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !683)
  %i.n = load i8, ptr %i.l, align 8, !range !224, !alias.scope !685, !noalias !686, !noundef !4 ; 3 uses
  %i.o = load i8, ptr %i.m, align 8, !range !224, !alias.scope !686, !noalias !685, !noundef !4 ; 2 uses
  %i.p = tail call i8 @llvm.ucmp.i8.i8(i8 %i.n, i8 %i.o)
  %i.q = icmp eq i8 %i.n, %i.o
  br i1 %i.q, label %bb.c, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i

bb.c:                                             ; preds = %bb.b
  switch i8 %i.n, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i [
    i8 1, label %bb.d
    i8 4, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !685, !noalias !686, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !686, !noalias !685, !noundef !4
  %i.v = tail call i8 @llvm.ucmp.i8.i8(i8 %i.s, i8 %i.u)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.x = load i32, ptr %i.w, align 4, !range !10, !alias.scope !685, !noalias !686, !noundef !4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.z = load i32, ptr %i.y, align 4, !range !10, !alias.scope !686, !noalias !685, !noundef !4 ; 2 uses
  %i.aa = tail call i8 @llvm.ucmp.i8.i32(i32 %i.x, i32 %i.z)
  %i.ab = icmp eq i32 %i.x, %i.z
  br i1 %i.ab, label %bb.f, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !alias.scope !685, !noalias !686, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !alias.scope !686, !noalias !685, !noundef !4
  %i.ag = tail call i8 @llvm.ucmp.i8.i32(i32 %i.ad, i32 %i.af)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i8 [ %i.p, %bb.b ], [ %i.v, %bb.d ], [ %i.ag, %bb.f ], [ %i.aa, %bb.e ] ; 2 uses
  %i.ah = icmp eq i8 %.sroa.0.0.i.i, 0
  br i1 %i.ah, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i, label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0B7_.exit

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i, %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !687)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !690)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !692, !noalias !695, !noundef !4 ; 2 uses
  %i.ak = icmp ugt i64 %i.aj, 1                   ; 2 uses
  %i.al = load ptr, ptr %0, align 8, !alias.scope !692, !noalias !695, !nonnull !4
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !692, !noalias !695
  %.sink11.i.i.i = select i1 %i.ak, ptr %i.al, ptr %0
  %.sink10.i.i.i = select i1 %i.ak, i64 %i.an, i64 %i.aj
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !697, !noalias !700, !noundef !4 ; 2 uses
  %i.aq = icmp ugt i64 %i.ap, 1                   ; 2 uses
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !697, !noalias !700, !nonnull !4
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !697, !noalias !700
  %.sink11.i1.i.i = select i1 %i.aq, ptr %i.ar, ptr %1
  %.sink10.i2.i.i = select i1 %i.aq, i64 %i.at, i64 %i.ap
  %i.au = tail call noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs33K2ylI4knu_10hir_expand4name4NameNtB5_8SliceOrd7compareCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sink11.i.i.i, i64 noundef %.sink10.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sink11.i1.i.i, i64 noundef %.sink10.i2.i.i)
  br label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0B7_.exit

_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0B7_.exit: ; preds = %bb.a, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i
  %.sroa.0.0.i = phi i8 [ %i.au, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i ], [ %.sroa.0.0.i.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i ], [ %i.j, %bb.a ]
  %i.av = icmp eq i8 %.sroa.0.0.i, -1
  ret i1 %i.av
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0B1R_(ptr nofree readonly captures(none) %.0.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1) unnamed_addr #2 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val = load ptr, ptr %.0.val, align 8, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  %i.a = getelementptr i8, ptr %.0.val, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !702)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !705)
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noalias !707, !nonnull !4, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noalias !707, !noundef !4
  %i.f = tail call noundef i64 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport34compute_fuzzy_completion_order_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1), !noalias !705 ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8, !noalias !707, !nonnull !4, !noundef !4
  %i.h = load i64, ptr %i.d, align 8, !noalias !707, !noundef !4
  %i.i = tail call noundef i64 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport34compute_fuzzy_completion_order_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1) ; 2 uses
  %i.j = tail call i8 @llvm.ucmp.i8.i64(i64 %i.f, i64 %i.i)
  %i.k = icmp eq i64 %i.f, %i.i
  br i1 %i.k, label %bb.b, label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0B7_.exit

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !708)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !711)
  %i.n = load i8, ptr %i.l, align 8, !range !224, !alias.scope !713, !noalias !714, !noundef !4 ; 3 uses
  %i.o = load i8, ptr %i.m, align 8, !range !224, !alias.scope !714, !noalias !713, !noundef !4 ; 2 uses
  %i.p = tail call i8 @llvm.ucmp.i8.i8(i8 %i.n, i8 %i.o)
  %i.q = icmp eq i8 %i.n, %i.o
  br i1 %i.q, label %bb.c, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i

bb.c:                                             ; preds = %bb.b
  switch i8 %i.n, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i [
    i8 1, label %bb.d
    i8 4, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !713, !noalias !714, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !714, !noalias !713, !noundef !4
  %i.v = tail call i8 @llvm.ucmp.i8.i8(i8 %i.s, i8 %i.u)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.x = load i32, ptr %i.w, align 4, !range !10, !alias.scope !713, !noalias !714, !noundef !4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.z = load i32, ptr %i.y, align 4, !range !10, !alias.scope !714, !noalias !713, !noundef !4 ; 2 uses
  %i.aa = tail call i8 @llvm.ucmp.i8.i32(i32 %i.x, i32 %i.z)
  %i.ab = icmp eq i32 %i.x, %i.z
  br i1 %i.ab, label %bb.f, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !alias.scope !713, !noalias !714, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !alias.scope !714, !noalias !713, !noundef !4
  %i.ag = tail call i8 @llvm.ucmp.i8.i32(i32 %i.ad, i32 %i.af)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i8 [ %i.p, %bb.b ], [ %i.v, %bb.d ], [ %i.ag, %bb.f ], [ %i.aa, %bb.e ] ; 2 uses
  %i.ah = icmp eq i8 %.sroa.0.0.i.i, 0
  br i1 %i.ah, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i, label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0B7_.exit

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i, %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !715)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !718)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !720, !noalias !723, !noundef !4 ; 2 uses
  %i.ak = icmp ugt i64 %i.aj, 1                   ; 2 uses
  %i.al = load ptr, ptr %0, align 8, !alias.scope !720, !noalias !723, !nonnull !4
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !720, !noalias !723
  %.sink11.i.i.i = select i1 %i.ak, ptr %i.al, ptr %0
  %.sink10.i.i.i = select i1 %i.ak, i64 %i.an, i64 %i.aj
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !725, !noalias !728, !noundef !4 ; 2 uses
  %i.aq = icmp ugt i64 %i.ap, 1                   ; 2 uses
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !725, !noalias !728, !nonnull !4
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !725, !noalias !728
  %.sink11.i1.i.i = select i1 %i.aq, ptr %i.ar, ptr %1
  %.sink10.i2.i.i = select i1 %i.aq, i64 %i.at, i64 %i.ap
  %i.au = tail call noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs33K2ylI4knu_10hir_expand4name4NameNtB5_8SliceOrd7compareCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sink11.i.i.i, i64 noundef %.sink10.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sink11.i1.i.i, i64 noundef %.sink10.i2.i.i)
  br label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0B7_.exit

_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0B7_.exit: ; preds = %bb.a, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i
  %.sroa.0.0.i = phi i8 [ %i.au, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i ], [ %.sroa.0.0.i.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i ], [ %i.j, %bb.a ]
  %i.av = icmp eq i8 %.sroa.0.0.i, -1
  ret i1 %i.av
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0B1R_(ptr nofree readonly captures(none) %.0.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1) unnamed_addr #2 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val = load ptr, ptr %.0.val, align 8, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  %i.a = getelementptr i8, ptr %.0.val, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !730)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !733)
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noalias !735, !nonnull !4, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noalias !735, !noundef !4
  %i.f = tail call noundef i64 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport34compute_fuzzy_completion_order_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1), !noalias !733 ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8, !noalias !735, !nonnull !4, !noundef !4
  %i.h = load i64, ptr %i.d, align 8, !noalias !735, !noundef !4
  %i.i = tail call noundef i64 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport34compute_fuzzy_completion_order_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1) ; 2 uses
  %i.j = tail call i8 @llvm.ucmp.i8.i64(i64 %i.f, i64 %i.i)
  %i.k = icmp eq i64 %i.f, %i.i
  br i1 %i.k, label %bb.b, label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0B7_.exit

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !736)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !739)
  %i.n = load i8, ptr %i.l, align 8, !range !224, !alias.scope !741, !noalias !742, !noundef !4 ; 3 uses
  %i.o = load i8, ptr %i.m, align 8, !range !224, !alias.scope !742, !noalias !741, !noundef !4 ; 2 uses
  %i.p = tail call i8 @llvm.ucmp.i8.i8(i8 %i.n, i8 %i.o)
  %i.q = icmp eq i8 %i.n, %i.o
  br i1 %i.q, label %bb.c, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i

bb.c:                                             ; preds = %bb.b
  switch i8 %i.n, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i [
    i8 1, label %bb.d
    i8 4, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !741, !noalias !742, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !742, !noalias !741, !noundef !4
  %i.v = tail call i8 @llvm.ucmp.i8.i8(i8 %i.s, i8 %i.u)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.x = load i32, ptr %i.w, align 4, !range !10, !alias.scope !741, !noalias !742, !noundef !4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.z = load i32, ptr %i.y, align 4, !range !10, !alias.scope !742, !noalias !741, !noundef !4 ; 2 uses
  %i.aa = tail call i8 @llvm.ucmp.i8.i32(i32 %i.x, i32 %i.z)
  %i.ab = icmp eq i32 %i.x, %i.z
  br i1 %i.ab, label %bb.f, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !alias.scope !741, !noalias !742, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !alias.scope !742, !noalias !741, !noundef !4
  %i.ag = tail call i8 @llvm.ucmp.i8.i32(i32 %i.ad, i32 %i.af)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i8 [ %i.p, %bb.b ], [ %i.v, %bb.d ], [ %i.ag, %bb.f ], [ %i.aa, %bb.e ] ; 2 uses
  %i.ah = icmp eq i8 %.sroa.0.0.i.i, 0
  br i1 %i.ah, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i, label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0B7_.exit

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i, %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !743)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !746)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !748, !noalias !751, !noundef !4 ; 2 uses
  %i.ak = icmp ugt i64 %i.aj, 1                   ; 2 uses
  %i.al = load ptr, ptr %0, align 8, !alias.scope !748, !noalias !751, !nonnull !4
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !748, !noalias !751
  %.sink11.i.i.i = select i1 %i.ak, ptr %i.al, ptr %0
  %.sink10.i.i.i = select i1 %i.ak, i64 %i.an, i64 %i.aj
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !753, !noalias !756, !noundef !4 ; 2 uses
  %i.aq = icmp ugt i64 %i.ap, 1                   ; 2 uses
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !753, !noalias !756, !nonnull !4
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !753, !noalias !756
  %.sink11.i1.i.i = select i1 %i.aq, ptr %i.ar, ptr %1
  %.sink10.i2.i.i = select i1 %i.aq, i64 %i.at, i64 %i.ap
  %i.au = tail call noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs33K2ylI4knu_10hir_expand4name4NameNtB5_8SliceOrd7compareCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sink11.i.i.i, i64 noundef %.sink10.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sink11.i1.i.i, i64 noundef %.sink10.i2.i.i)
  br label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0B7_.exit

_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0B7_.exit: ; preds = %bb.a, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i
  %.sroa.0.0.i = phi i8 [ %i.au, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i ], [ %.sroa.0.0.i.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i ], [ %i.j, %bb.a ]
  %i.av = icmp eq i8 %.sroa.0.0.i, -1
  ret i1 %i.av
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE11sort_by_keyBA_NCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string13format_string0E0B24_(ptr nonnull captures(address, read_provenance) %.0.val, ptr captures(address, read_provenance) %.0.val1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = tail call noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.0.val) ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val1) ]
  %i.f = invoke noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.0.val1)
          to label %bb.c unwind label %bb.b       ; 3 uses

bb.b:                                             ; preds = %.noexc9, %bb.e, %bb.d, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsf8NQSppxkmK_14ide_completion(ptr nonnull %i.e) #28
          to label %bb.j unwind label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = and i64 %i.h, 1                          ; 2 uses
  %i.j = sub nsw i64 0, %i.i
  %i.k = getelementptr i8, ptr %i.e, i64 %i.j     ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !4 ; 2 uses
  %i.o = ptrtoint ptr %i.f to i64
  %i.p = and i64 %i.o, 1                          ; 2 uses
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr i8, ptr %i.f, i64 %i.q     ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load i64, ptr %i.t, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.u)
  %i.v = tail call i32 @memcmp(ptr nonnull %i.l, ptr nonnull %i.s, i64 %spec.store.select.i.i.i) ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsf8NQSppxkmK_14ide_completion.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr i8, ptr %i.f, i64 -1       ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  %i.x = invoke noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCsf8NQSppxkmK_14ide_completion(ptr noundef nonnull %i.w)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.d
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr inbounds i8, ptr %i.w, i64 %i.y ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.z, ptr %i.d, align 8
  %i.aa = load atomic i64, ptr %i.z acquire, align 8
  %i.ab = icmp eq i64 %i.aa, 2
  br i1 %i.ab, label %bb.e, label %.noexc9, !prof !67

bb.e:                                             ; preds = %.noexc
  invoke void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d)
          to label %.noexc9 unwind label %bb.b

.noexc9:                                          ; preds = %bb.e, %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.z, ptr %i.c, align 8
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc10 unwind label %bb.b

.noexc10:                                         ; preds = %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsf8NQSppxkmK_14ide_completion.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsf8NQSppxkmK_14ide_completion.exit: ; preds = %.noexc10, %bb.c
  %.not.i.i.i.i11 = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i.i11, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsf8NQSppxkmK_14ide_completion.exit12, label %bb.f

bb.f:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsf8NQSppxkmK_14ide_completion.exit
  %i.ac = getelementptr i8, ptr %i.e, i64 -1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ac) ]
  %i.ad = call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCsf8NQSppxkmK_14ide_completion(ptr noundef nonnull %i.ac)
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = getelementptr inbounds i8, ptr %i.ac, i64 %i.ae ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.af, ptr %i.b, align 8
  %i.ag = load atomic i64, ptr %i.af acquire, align 8
  %i.ah = icmp eq i64 %i.ag, 2
  br i1 %i.ah, label %bb.g, label %bb.h, !prof !67

bb.g:                                             ; preds = %bb.f
  call void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.af, ptr %i.a, align 8
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsf8NQSppxkmK_14ide_completion.exit12

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsf8NQSppxkmK_14ide_completion.exit12: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsf8NQSppxkmK_14ide_completion.exit, %bb.h
  %i.ai = icmp eq i32 %i.v, 0
  %i.aj = sub i64 %i.n, %i.u
  %i.ak = sext i32 %i.v to i64
  %spec.select.i.i.i = select i1 %i.ai, i64 %i.aj, i64 %i.ak
  %i.al = icmp slt i64 %spec.select.i.i.i, 0
  ret i1 %i.al

bb.i:                                             ; preds = %bb.b
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.j:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE11sort_by_keyBA_NCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function12ref_of_param0E0B24_(ptr nonnull captures(address, read_provenance) %.0.val, ptr captures(address, read_provenance) %.0.val1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = tail call noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.0.val) ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val1) ]
  %i.f = invoke noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.0.val1)
          to label %bb.c unwind label %bb.b       ; 3 uses

bb.b:                                             ; preds = %.noexc9, %bb.e, %bb.d, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsf8NQSppxkmK_14ide_completion(ptr nonnull %i.e) #28
          to label %bb.j unwind label %bb.i
end_hunk_1
begin_hunk_2_@_RNvMsK_Cs8Xq8PKFYOms_3hirNtB5_5Macro4name
declare noundef nonnull ptr @_RNvMsK_Cs8Xq8PKFYOms_3hirNtB5_5Macro4name(ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvMsy_Cs8Xq8PKFYOms_3hirNtB5_5Const4name(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_Cs42xZ1oUXfIG_8smol_strNtB5_7SmolStrNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtCsf8NQSppxkmK_14ide_completion4itemNtB6_14CompletionItem3newNtCs6oosyzwIepl_6ide_db10SymbolKindNtCs42xZ1oUXfIG_8smol_str7SmolStrEB8_(ptr dead_on_unwind noalias nofree noundef writable sret([360 x i8]) align 8 captures(none) dereferenceable(360), i8 noundef range(i8 0, 30), i32 noundef, i32 noundef, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), i8 noundef range(i8 0, 4)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsF_Cs42xZ1oUXfIG_8smol_strNtB5_14SmolStrBuilder8push_str(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYNtCs42xZ1oUXfIG_8smol_str14SmolStrBuilderNtNtCshzWfHUSfYae_4core3fmt5Write10write_charCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 dereferenceable(32), i32 noundef range(i32 0, 1114112)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYNtCs42xZ1oUXfIG_8smol_str14SmolStrBuilderNtNtCshzWfHUSfYae_4core3fmt5Write9write_fmtCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsF_Cs42xZ1oUXfIG_8smol_strNtB5_14SmolStrBuilder6finish(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs2_NtCsf8NQSppxkmK_14ide_completion4itemNtB6_7Builder9lookup_byNtCs42xZ1oUXfIG_8smol_str7SmolStrEB8_(ptr noalias nofree noundef align 8 dereferenceable(360), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtCs8Xq8PKFYOms_3hir5ConstNtNtCs6oosyzwIepl_6ide_db13documentation7HasDocs4docsCsf8NQSppxkmK_14ide_completion(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs2_NtCsf8NQSppxkmK_14ide_completion4itemNtB5_7Builder17set_documentation(ptr noalias nofree noundef align 8 dereferenceable(360), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs2_NtCsf8NQSppxkmK_14ide_completion4itemNtB5_7Builder13set_relevance(ptr noalias nofree noundef align 8 dereferenceable(360), ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCs6oosyzwIepl_6ide_db9text_editNtB4_8TextEdit7replace(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), i32 noundef, i32 noundef, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs2_NtCsf8NQSppxkmK_14ide_completion4itemNtB5_7Builder9text_edit(ptr noalias nofree noundef align 8 dereferenceable(360), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs2_NtCsf8NQSppxkmK_14ide_completion4itemNtB5_7Builder12snippet_edit(ptr noalias nofree noundef align 8 dereferenceable(360), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMsr_Cs8Xq8PKFYOms_3hirNtB5_8Function4name(ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsr_Cs8Xq8PKFYOms_3hirNtB5_8Function8is_async(ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsr_Cs8Xq8PKFYOms_3hirNtB5_8Function19returns_impl_future(ptr noalias nofree noundef readonly align 4 captures(address) dead_on_return dereferenceable(12), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsr_Cs8Xq8PKFYOms_3hirNtB5_8Function15assoc_fn_params(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtCs33K2ylI4knu_10hir_expand4nameNtB5_7DisplayNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsr_Cs8Xq8PKFYOms_3hirNtB5_8Function14has_self_param(ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtCsf8NQSppxkmK_14ide_completion4itemNtB6_14CompletionItem3newNtB6_18CompletionItemKindNtCs42xZ1oUXfIG_8smol_str7SmolStrEB8_(ptr dead_on_unwind noalias nofree noundef writable sret([360 x i8]) align 8 captures(none) dereferenceable(360), i8 noundef range(i8 0, 37), i32 noundef, i32 noundef, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), i8 noundef range(i8 0, 4)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs2_NtCsf8NQSppxkmK_14ide_completion4itemNtB6_7Builder9lookup_byNtNtCsbSS6DM8SDEO_5alloc6string6StringEB8_(ptr noalias nofree noundef align 8 dereferenceable(360), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtCs8Xq8PKFYOms_3hir8FunctionNtNtCs6oosyzwIepl_6ide_db13documentation7HasDocs4docsCsf8NQSppxkmK_14ide_completion(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 4 captures(address) dead_on_return dereferenceable(12), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i32, i32 } @_RNvMs1j_Cs8Xq8PKFYOms_3hirNtB6_4Impl6trait_(ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl5scope(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88), ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs6oosyzwIepl_6ide_db14path_transformNtB2_13PathTransform10trait_impl(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMNtCs6oosyzwIepl_6ide_db14path_transformNtB2_13PathTransform5apply(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCsjJXvCMGntp8_6syntax13syntax_editorNtB3_12SyntaxEditor13with_ast_nodeNtNtNtNtB5_3ast9generated5nodes2FnECsf8NQSppxkmK_14ide_completion(ptr dead_on_unwind noalias nofree noundef writable sret([152 x i8]) align 8 captures(none) dereferenceable(152), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB4_13SyntaxFactory2ty(ptr noundef nonnull align 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB4_13SyntaxFactory8ret_type(ptr noundef nonnull align 8, i64 noundef range(i64 0, 15), ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCsjJXvCMGntp8_6syntax13syntax_editorNtB3_12SyntaxEditor22insert_with_whitespaceRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB5_11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXssg_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_4TypeNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCsjJXvCMGntp8_6syntax13syntax_editorNtB3_12SyntaxEditor7replaceRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB5_11syntax_node12RustLanguageEB16_ECsf8NQSppxkmK_14ide_completion(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCsjJXvCMGntp8_6syntax13syntax_editorNtB3_12SyntaxEditor6deleteINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtB5_11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion(ptr noundef nonnull align 8, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes4TypeENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCsjJXvCMGntp8_6syntax13syntax_editorNtB3_12SyntaxEditor6deleteRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB5_11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB4_13SyntaxFactory5token(ptr noundef nonnull align 8, i16 noundef range(i16 0, 329)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCsjJXvCMGntp8_6syntax13syntax_editorNtB3_12SyntaxEditor22insert_with_whitespaceINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtB5_11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16), ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsjJXvCMGntp8_6syntax13syntax_editorNtB2_12SyntaxEditor6finish(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(144)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMsF_Cs8Xq8PKFYOms_3hirNtB5_9TypeAlias4name(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsD_Cs42xZ1oUXfIG_8smol_streNtB5_9ToSmolStr10to_smolstrCsf8NQSppxkmK_14ide_completion(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtCs8Xq8PKFYOms_3hir9TypeAliasNtNtCs6oosyzwIepl_6ide_db13documentation7HasDocs4docsCsf8NQSppxkmK_14ide_completion(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCs9GitHPCrz2Q_5rowan11syntax_textNtB3_10SyntaxText5sliceINtNtNtCshzWfHUSfYae_4core3ops5range7RangeToNtNtCsuAhG64lL82_9text_size4size8TextSizeEECsf8NQSppxkmK_14ide_completion(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMNtCshzWfHUSfYae_4core3stre16trim_end_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs6oosyzwIepl_6ide_db6traits23get_missing_assoc_items(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB6_8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1y_8adapters6filter11filter_foldBX_uNCNvNtNtNtCsf8NQSppxkmK_14ide_completion11completions9item_list10trait_impl19complete_trait_impl0NCINvNvB1s_8for_each4callBX_NCB3f_s_0E0E0EB3n_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs1_NtCs33K2ylI4knu_10hir_expand8span_mapNtB7_11MacroCallId18expansion_span_map(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvNtCs33K2ylI4knu_10hir_expand25prettify_macro_expansion_24prettify_macro_expansion(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE19last_child_or_tokenCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCs9GitHPCrz2Q_5rowan11syntax_textNtB3_10SyntaxText5sliceNtNtCsuAhG64lL82_9text_size5range9TextRangeECsf8NQSppxkmK_14ide_completion(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsD_Cs42xZ1oUXfIG_8smol_strNtNtCs9GitHPCrz2Q_5rowan11syntax_text10SyntaxTextNtB5_9ToSmolStr10to_smolstrCsf8NQSppxkmK_14ide_completion(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCsjJXvCMGntp8_6syntax13syntax_editorNtB3_12SyntaxEditor13with_ast_nodeNtNtNtNtB5_3ast9generated5nodes9AssocItemECsf8NQSppxkmK_14ide_completion(ptr dead_on_unwind noalias nofree noundef writable sret([160 x i8]) align 8 captures(none) dereferenceable(160), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtCs9GitHPCrz2Q_5rowan3apiINtB4_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core3fmt7Display3fmtCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core3fmt7Display3fmtCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsfy_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_4PathNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsse_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_3PatNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXstR_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_5ParamNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCs9GitHPCrz2Q_5rowan3arcINtB5_3ArcINtB5_11HeaderSliceNtNtNtB7_5green5token14GreenTokenHeadShEE9drop_slowB7_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs33K2ylI4knu_10hir_expand4name4NameNtB5_8SliceOrd7compareCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 1152921504606846976), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 1152921504606846976)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtCs9GitHPCrz2Q_5rowan11syntax_textNtB5_10SyntaxTextNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtCsgIpRO4v45SJ_7base_db5FilesE10drop_innerCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtCsgIpRO4v45SJ_7base_db5input9CratesMapE10drop_innerCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8, i8) #16

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCshzWfHUSfYae_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsu_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcher3new(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvXs_NvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator10advance_byINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtB4_13SpecAdvanceBy15spec_advance_byCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef i8 @_RNvMs2_NtNtCsjJXvCMGntp8_6syntax3ast4editNtB5_11IndentLevel9from_node(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMs2_NtNtCsjJXvCMGntp8_6syntax3ast4editNtB5_11IndentLevel21clone_decrease_indent(i8 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCsjJXvCMGntp8_6syntax13syntax_editorNtB3_12SyntaxEditor6deleteINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1a_3api10SyntaxNodeNtNtB5_11syntax_node12RustLanguageEINtB1Z_11SyntaxTokenB2l_EEECsf8NQSppxkmK_14ide_completion(ptr noundef nonnull align 8, i64 noundef range(i64 0, 2), ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtNtCsjJXvCMGntp8_6syntax3ast9token_extNtB5_12QuoteOffsets3new(ptr dead_on_unwind noalias nofree noundef writable sret([28 x i8]) align 4 captures(none) dereferenceable(28), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

attributes #0 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #21 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #23 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { noinline }
attributes #26 = { cold noreturn nounwind }
attributes #27 = { noinline noreturn }
attributes #28 = { cold }
attributes #29 = { noreturn }
attributes #30 = { inlinehint }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.99.0-nightly (73dc9167f 2026-08-01)"}
!4 = !{}
!5 = !{i64 0, i64 3}
!6 = !{i64 8}
!7 = !{i64 -1, i64 3}
!8 = !{i32 0, i32 3}
!9 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!10 = !{i32 1, i32 0}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_RNCNCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB9_13SemanticsImpl26ancestors_with_macros_file00Csf8NQSppxkmK_14ide_completion: argument 0"}
!13 = distinct !{!13, !"_RNCNCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB9_13SemanticsImpl26ancestors_with_macros_file00Csf8NQSppxkmK_14ide_completion"}
!14 = !{!12, !15}
!15 = distinct !{!15, !13, !"_RNCNCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB9_13SemanticsImpl26ancestors_with_macros_file00Csf8NQSppxkmK_14ide_completion: argument 1"}
!16 = !{!15}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_RNvMNtCs8Xq8PKFYOms_3hir9semanticsNtB2_14PathResolution10in_type_ns: argument 0"}
!19 = distinct !{!19, !"_RNvMNtCs8Xq8PKFYOms_3hir9semanticsNtB2_14PathResolution10in_type_ns"}
!20 = !{i32 0, i32 11}
!21 = !{!22}
!22 = distinct !{!22, !19, !"_RNvMNtCs8Xq8PKFYOms_3hir9semanticsNtB2_14PathResolution10in_type_ns: argument 1"}
!23 = !{i8 0, i8 10}
!24 = !{!18, !22}
!25 = !{i32 0, i32 2}
!26 = !{i8 0, i8 6}
!27 = !{i32 -1, i32 9}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_RNvMNtCs8Xq8PKFYOms_3hir9semanticsNtB2_14PathResolution10in_type_ns: argument 0"}
!30 = distinct !{!30, !"_RNvMNtCs8Xq8PKFYOms_3hir9semanticsNtB2_14PathResolution10in_type_ns"}
!31 = !{!32}
!32 = distinct !{!32, !30, !"_RNvMNtCs8Xq8PKFYOms_3hir9semanticsNtB2_14PathResolution10in_type_ns: argument 1"}
!33 = !{!29, !32}
!34 = !{i8 -1, i8 26}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsf8NQSppxkmK_14ide_completion: argument 0"}
!37 = distinct !{!37, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsf8NQSppxkmK_14ide_completion"}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str4ReprECsf8NQSppxkmK_14ide_completion: argument 0"}
!40 = distinct !{!40, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str4ReprECsf8NQSppxkmK_14ide_completion"}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArceEECsf8NQSppxkmK_14ide_completion: argument 0"}
!43 = distinct !{!43, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArceEECsf8NQSppxkmK_14ide_completion"}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion: argument 0"}
!46 = distinct !{!46, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion"}
!47 = !{!45, !42, !39, !36}
!48 = !{i64 -2, i64 -9223372036854775808}
!49 = !{i64 -1, i64 -9223372036854775808}
!50 = !{!51}
!51 = distinct !{!51, !52, !"_RNvXs9_NtCscFGNKo4Sl5v_9itertools11groupbylazyINtB5_5GroupbINtNtNtNtCshzWfHUSfYae_4core4iter8adapters10take_while9TakeWhileINtNtB10_4skip4SkipINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9attribute20parse_comma_sep_expr0ENCB40_s_0ENtNtNtB14_3ops4drop4Drop4dropB46_: argument 0"}
!52 = distinct !{!52, !"_RNvXs9_NtCscFGNKo4Sl5v_9itertools11groupbylazyINtB5_5GroupbINtNtNtNtCshzWfHUSfYae_4core4iter8adapters10take_while9TakeWhileINtNtB10_4skip4SkipINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9attribute20parse_comma_sep_expr0ENCB40_s_0ENtNtNtB14_3ops4drop4Drop4dropB46_"}
!53 = !{!54}
!54 = distinct !{!54, !55, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCscFGNKo4Sl5v_9itertools11groupbylazy10GroupInnerbINtNtNtNtB4_4iter8adapters10take_while9TakeWhileINtNtB1U_4skip4SkipINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9attribute20parse_comma_sep_expr0ENCB4E_s_0EEEB4K_: argument 0"}
!55 = distinct !{!55, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCscFGNKo4Sl5v_9itertools11groupbylazy10GroupInnerbINtNtNtNtB4_4iter8adapters10take_while9TakeWhileINtNtB1U_4skip4SkipINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9attribute20parse_comma_sep_expr0ENCB4E_s_0EEEB4K_"}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCscFGNKo4Sl5v_9itertools11groupbylazy10GroupInnerbINtNtNtNtB4_4iter8adapters10take_while9TakeWhileINtNtB1Y_4skip4SkipINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9attribute20parse_comma_sep_expr0ENCB4I_s_0EEEB4O_: argument 0"}
!58 = distinct !{!58, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCscFGNKo4Sl5v_9itertools11groupbylazy10GroupInnerbINtNtNtNtB4_4iter8adapters10take_while9TakeWhileINtNtB1Y_4skip4SkipINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9attribute20parse_comma_sep_expr0ENCB4I_s_0EEEB4O_"}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCscFGNKo4Sl5v_9itertools11groupbylazy10GroupInnerbINtNtNtNtB4_4iter8adapters10take_while9TakeWhileINtNtB1z_4skip4SkipINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9attribute20parse_comma_sep_expr0ENCB4j_s_0EEB4p_: argument 0"}
!61 = distinct !{!61, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCscFGNKo4Sl5v_9itertools11groupbylazy10GroupInnerbINtNtNtNtB4_4iter8adapters10take_while9TakeWhileINtNtB1z_4skip4SkipINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9attribute20parse_comma_sep_expr0ENCB4j_s_0EEB4p_"}
!62 = !{!60, !57, !54}
!63 = !{i8 0, i8 2}
!64 = !{!65}
!65 = distinct !{!65, !66, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str18SmolStrBuilderReprECsf8NQSppxkmK_14ide_completion: argument 0"}
!66 = distinct !{!66, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str18SmolStrBuilderReprECsf8NQSppxkmK_14ide_completion"}
!67 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!68 = !{!69}
!69 = distinct !{!69, !70, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs42xZ1oUXfIG_8smol_str7SmolStrEECsf8NQSppxkmK_14ide_completion: argument 0"}
!70 = distinct !{!70, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs42xZ1oUXfIG_8smol_str7SmolStrEECsf8NQSppxkmK_14ide_completion"}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsf8NQSppxkmK_14ide_completion: argument 0"}
!73 = distinct !{!73, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsf8NQSppxkmK_14ide_completion"}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str4ReprECsf8NQSppxkmK_14ide_completion: argument 0"}
!76 = distinct !{!76, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str4ReprECsf8NQSppxkmK_14ide_completion"}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArceEECsf8NQSppxkmK_14ide_completion: argument 0"}
!79 = distinct !{!79, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArceEECsf8NQSppxkmK_14ide_completion"}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion: argument 0"}
!82 = distinct !{!82, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion"}
!83 = !{!81, !78, !75, !72, !69}
!84 = !{!85}
!85 = distinct !{!85, !86, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs42xZ1oUXfIG_8smol_str7SmolStrEECsf8NQSppxkmK_14ide_completion: argument 0"}
!86 = distinct !{!86, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs42xZ1oUXfIG_8smol_str7SmolStrEECsf8NQSppxkmK_14ide_completion"}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsf8NQSppxkmK_14ide_completion: argument 0"}
!89 = distinct !{!89, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsf8NQSppxkmK_14ide_completion"}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str4ReprECsf8NQSppxkmK_14ide_completion: argument 0"}
!92 = distinct !{!92, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str4ReprECsf8NQSppxkmK_14ide_completion"}
!93 = !{!94}
!94 = distinct !{!94, !95, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArceEECsf8NQSppxkmK_14ide_completion: argument 0"}
!95 = distinct !{!95, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArceEECsf8NQSppxkmK_14ide_completion"}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion: argument 0"}
!98 = distinct !{!98, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion"}
!99 = !{!97, !94, !91, !88, !85}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsf8NQSppxkmK_14ide_completion: argument 0"}
!102 = distinct !{!102, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsf8NQSppxkmK_14ide_completion"}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str4ReprECsf8NQSppxkmK_14ide_completion: argument 0"}
!105 = distinct !{!105, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str4ReprECsf8NQSppxkmK_14ide_completion"}
!106 = !{i8 0, i8 26}
!107 = !{!104, !101}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArceEECsf8NQSppxkmK_14ide_completion: argument 0"}
!110 = distinct !{!110, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArceEECsf8NQSppxkmK_14ide_completion"}
!111 = !{!112}
!112 = distinct !{!112, !113, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion: argument 0"}
!113 = distinct !{!113, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion"}
!114 = !{!112, !109, !104, !101}
!115 = !{!116}
!116 = distinct !{!116, !117, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsf8NQSppxkmK_14ide_completion: argument 0"}
end_hunk_2
