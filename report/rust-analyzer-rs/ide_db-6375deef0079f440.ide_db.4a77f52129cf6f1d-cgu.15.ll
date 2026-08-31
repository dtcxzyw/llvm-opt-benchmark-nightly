Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_db-6375deef0079f440.ide_db.4a77f52129cf6f1d-cgu.15?download=true
inline.NumInlined: 1645
inline.NumDeleted: 763
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_RNvMNtNtCs6oosyzwIepl_6ide_db14syntax_helpers12suggest_nameNtB2_13NameGenerator16try_for_variable:bb.a
  br i1 %.sroa.014.0, label %bb.me, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECs6oosyzwIepl_6ide_db.exit182

.thread315:                                       ; preds = %.body
  br i1 %.sroa.09.0, label %bb.mf, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECs6oosyzwIepl_6ide_db.exit182

.thread334:                                       ; preds = %.body
  br i1 %.sroa.011.0, label %bb.mg, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECs6oosyzwIepl_6ide_db.exit182

.thread353:                                       ; preds = %.body
  br i1 %.sroa.015.0, label %bb.mh, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECs6oosyzwIepl_6ide_db.exit182

bb.mb:                                            ; preds = %.thread
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.15.0660) ]
  %i.amf = getelementptr inbounds nuw i8, ptr %.sroa.15.0660, i64 48 ; 2 uses
  %i.amg = load i32, ptr %i.amf, align 4, !noundef !18
  %i.amh = add i32 %i.amg, -1                     ; 2 uses
  store i32 %i.amh, ptr %i.amf, align 4
  %i.ami = icmp eq i32 %i.amh, 0
  br i1 %i.ami, label %.invoke, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECs6oosyzwIepl_6ide_db.exit182

bb.mc:                                            ; preds = %.thread258
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.15.0660) ]
  %i.amj = getelementptr inbounds nuw i8, ptr %.sroa.15.0660, i64 48 ; 2 uses
  %i.amk = load i32, ptr %i.amj, align 4, !noundef !18
  %i.aml = add i32 %i.amk, -1                     ; 2 uses
  store i32 %i.aml, ptr %i.amj, align 4
  %i.amm = icmp eq i32 %i.aml, 0
  br i1 %i.amm, label %.invoke, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECs6oosyzwIepl_6ide_db.exit182

.thread277.thread458:                             ; preds = %bb.kj, %bb.kk, %.body.i5.i, %.thread277
  %.sroa.15.1291468 = phi ptr [ %.sroa.15.1, %.thread277 ], [ %.sroa.15.0660, %.body.i5.i ], [ %.sroa.15.0660, %bb.kk ], [ %.sroa.15.0660, %bb.kj ] ; 2 uses
  %.sroa.0.1292467 = phi i64 [ %.sroa.0.1, %.thread277 ], [ 22, %.body.i5.i ], [ 22, %bb.kk ], [ 22, %bb.kj ] ; 2 uses
  %.pn293466 = phi { ptr, i32 } [ %.pn, %.thread277 ], [ %eh.lpad-body.i.i, %.body.i5.i ], [ %i.abx, %bb.kk ], [ %i.abx, %bb.kj ] ; 2 uses
  %.sroa.016.0294465 = phi i1 [ %.sroa.016.0, %.thread277 ], [ false, %.body.i5.i ], [ false, %bb.kk ], [ false, %bb.kj ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.15.0660) ]
  %i.amn = getelementptr inbounds nuw i8, ptr %.sroa.15.0660, i64 48 ; 2 uses
  %i.amo = load i32, ptr %i.amn, align 4, !noundef !18
  %i.amp = add i32 %i.amo, -1                     ; 2 uses
  store i32 %i.amp, ptr %i.amn, align 4
  %i.amq = icmp eq i32 %i.amp, 0
  br i1 %i.amq, label %bb.md, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECs6oosyzwIepl_6ide_db.exit182

bb.md:                                            ; preds = %.thread277.thread458
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.15.0660) #42
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECs6oosyzwIepl_6ide_db.exit182 unwind label %bb.fh

bb.me:                                            ; preds = %.thread296
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.15.0660) ]
  %i.amr = getelementptr inbounds nuw i8, ptr %.sroa.15.0660, i64 48 ; 2 uses
  %i.ams = load i32, ptr %i.amr, align 4, !noundef !18
  %i.amt = add i32 %i.ams, -1                     ; 2 uses
  store i32 %i.amt, ptr %i.amr, align 4
  %i.amu = icmp eq i32 %i.amt, 0
  br i1 %i.amu, label %.invoke, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECs6oosyzwIepl_6ide_db.exit182

bb.mf:                                            ; preds = %.thread315
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.15.0660) ]
  %i.amv = getelementptr inbounds nuw i8, ptr %.sroa.15.0660, i64 48 ; 2 uses
  %i.amw = load i32, ptr %i.amv, align 4, !noundef !18
  %i.amx = add i32 %i.amw, -1                     ; 2 uses
  store i32 %i.amx, ptr %i.amv, align 4
  %i.amy = icmp eq i32 %i.amx, 0
  br i1 %i.amy, label %.invoke, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECs6oosyzwIepl_6ide_db.exit182

bb.mg:                                            ; preds = %.thread334
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.15.0660) ]
  %i.amz = getelementptr inbounds nuw i8, ptr %.sroa.15.0660, i64 48 ; 2 uses
  %i.ana = load i32, ptr %i.amz, align 4, !noundef !18
  %i.anb = add i32 %i.ana, -1                     ; 2 uses
  store i32 %i.anb, ptr %i.amz, align 4
  %i.anc = icmp eq i32 %i.anb, 0
  br i1 %i.anc, label %.invoke, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECs6oosyzwIepl_6ide_db.exit182

bb.mh:                                            ; preds = %.thread353
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.15.0660) ]
  %i.and = getelementptr inbounds nuw i8, ptr %.sroa.15.0660, i64 48 ; 2 uses
  %i.ane = load i32, ptr %i.and, align 4, !noundef !18
  %i.anf = add i32 %i.ane, -1                     ; 2 uses
  store i32 %i.anf, ptr %i.and, align 4
  %i.ang = icmp eq i32 %i.anf, 0
  br i1 %i.ang, label %.invoke, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECs6oosyzwIepl_6ide_db.exit182

.invoke:                                          ; preds = %bb.mh, %bb.mg, %bb.mf, %bb.me, %bb.mc, %bb.mb
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.15.0660) #42
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECs6oosyzwIepl_6ide_db.exit182 unwind label %bb.fh

bb.mi:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECs6oosyzwIepl_6ide_db.exit182
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.15.3) ]
  %i.anh = getelementptr inbounds nuw i8, ptr %.sroa.15.3, i64 48 ; 2 uses
  %i.ani = load i32, ptr %i.anh, align 4, !noundef !18
  %i.anj = add i32 %i.ani, -1                     ; 2 uses
  store i32 %i.anj, ptr %i.anh, align 4
  %i.ank = icmp eq i32 %i.anj, 0
  br i1 %i.ank, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECs6oosyzwIepl_6ide_db.exit.sink.split.i204, label %common.resume

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECs6oosyzwIepl_6ide_db.exit.sink.split.i204: ; preds = %bb.mi
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.15.3) #42
          to label %common.resume unwind label %bb.fh
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCs6oosyzwIepl_6ide_db14syntax_helpers12suggest_nameNtB2_13NameGenerator20split_numeric_suffix(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !963)
  %i.a = icmp samesign eq i64 %2, 0
  br i1 %i.a, label %.loopexit39, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %2
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %.lr.ph.i.i.preheader.i
  %i.c = phi ptr [ %i.am, %bb.g ], [ %i.b, %.lr.ph.i.i.preheader.i ] ; 4 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -1 ; 3 uses
  %i.e = load i8, ptr %i.d, align 1, !alias.scope !963, !noalias !966, !noundef !18 ; 3 uses
  %i.f = icmp sgt i8 %i.e, -1
  br i1 %i.f, label %bb.b, label %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6oosyzwIepl_6ide_db.exit17.i.i.i.i.i.i

_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6oosyzwIepl_6ide_db.exit17.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.g = icmp ne ptr %1, %i.d
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds i8, ptr %i.c, i64 -2 ; 3 uses
  %i.i = load i8, ptr %i.h, align 1, !alias.scope !963, !noalias !966, !noundef !18 ; 3 uses
  %i.j = and i8 %i.i, 31
  %i.k = zext nneg i8 %i.j to i32
  %i.l = icmp slt i8 %i.i, -64
  br i1 %i.l, label %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6oosyzwIepl_6ide_db.exit19.i.i.i.i.i.i, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.m = zext nneg i8 %i.e to i32
  br label %bb.e

_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6oosyzwIepl_6ide_db.exit19.i.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6oosyzwIepl_6ide_db.exit17.i.i.i.i.i.i
  %i.n = icmp ne ptr %1, %i.h
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds i8, ptr %i.c, i64 -3 ; 3 uses
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !963, !noalias !966, !noundef !18 ; 3 uses
  %i.q = and i8 %i.p, 15
  %i.r = zext nneg i8 %i.q to i32
  %i.s = icmp slt i8 %i.p, -64
  br i1 %i.s, label %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6oosyzwIepl_6ide_db.exit21.i.i.i.i.i.i, label %bb.d

bb.c:                                             ; preds = %bb.d, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6oosyzwIepl_6ide_db.exit17.i.i.i.i.i.i
  %i.t = phi ptr [ %i.ah, %bb.d ], [ %i.h, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6oosyzwIepl_6ide_db.exit17.i.i.i.i.i.i ]
  %.sroa.010.0.i.i.i.i.i.i = phi i32 [ %i.al, %bb.d ], [ %i.k, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6oosyzwIepl_6ide_db.exit17.i.i.i.i.i.i ]
  %i.u = shl nuw nsw i32 %.sroa.010.0.i.i.i.i.i.i, 6
  %i.v = and i8 %i.e, 63
  %i.w = zext nneg i8 %i.v to i32
  %i.x = or disjoint i32 %i.u, %i.w
  br label %bb.e

_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6oosyzwIepl_6ide_db.exit21.i.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6oosyzwIepl_6ide_db.exit19.i.i.i.i.i.i
  %i.y = icmp ne ptr %1, %i.o
  tail call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !963, !noalias !966, !noundef !18
  %i.ab = and i8 %i.aa, 7
  %i.ac = zext nneg i8 %i.ab to i32
  %i.ad = shl nuw nsw i32 %i.ac, 6
  %i.ae = and i8 %i.p, 63
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = or disjoint i32 %i.ad, %i.af
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6oosyzwIepl_6ide_db.exit21.i.i.i.i.i.i, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6oosyzwIepl_6ide_db.exit19.i.i.i.i.i.i
  %i.ah = phi ptr [ %i.z, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6oosyzwIepl_6ide_db.exit21.i.i.i.i.i.i ], [ %i.o, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6oosyzwIepl_6ide_db.exit19.i.i.i.i.i.i ]
  %.sroa.010.1.i.i.i.i.i.i = phi i32 [ %i.ag, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6oosyzwIepl_6ide_db.exit21.i.i.i.i.i.i ], [ %i.r, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6oosyzwIepl_6ide_db.exit19.i.i.i.i.i.i ]
  %i.ai = shl nuw nsw i32 %.sroa.010.1.i.i.i.i.i.i, 6
  %i.aj = and i8 %i.i, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ai, %i.ak
  br label %bb.c

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.am = phi ptr [ %i.d, %bb.b ], [ %i.t, %bb.c ] ; 3 uses
  %.sroa.4.1.i.ph.i.i.i.i.i = phi i32 [ %i.m, %bb.b ], [ %i.x, %bb.c ] ; 4 uses
  %i.an = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = add nsw i32 %.sroa.4.1.i.ph.i.i.i.i.i, -48
  %or.cond.i.i.i.i.i.i = icmp ult i32 %i.ao, 10
  br i1 %or.cond.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i.i, 178
  br i1 %i.ap, label %bb.h, label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNCNvMNtNtCs6oosyzwIepl_6ide_db14syntax_helpers12suggest_nameNtBJ_13NameGenerator20split_numeric_suffix0NtB5_11MultiCharEq7matchesBN_.exit.i.i.i.i

_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNCNvMNtNtCs6oosyzwIepl_6ide_db14syntax_helpers12suggest_nameNtBJ_13NameGenerator20split_numeric_suffix0NtB5_11MultiCharEq7matchesBN_.exit.i.i.i.i: ; preds = %bb.f
  %i.aq = tail call noundef zeroext i1 @_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data1n11lookup_slow(i32 noundef range(i32 0, 1114112) %.sroa.4.1.i.ph.i.i.i.i.i) #42, !noalias !980
  br i1 %i.aq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNCNvMNtNtCs6oosyzwIepl_6ide_db14syntax_helpers12suggest_nameNtBJ_13NameGenerator20split_numeric_suffix0NtB5_11MultiCharEq7matchesBN_.exit.i.i.i.i, %bb.e
  %i.ar = icmp eq ptr %1, %i.am
  br i1 %i.ar, label %.loopexit39, label %.lr.ph.i.i.i

bb.h:                                             ; preds = %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNCNvMNtNtCs6oosyzwIepl_6ide_db14syntax_helpers12suggest_nameNtBJ_13NameGenerator20split_numeric_suffix0NtB5_11MultiCharEq7matchesBN_.exit.i.i.i.i, %bb.f
  %i.as = ptrtoint ptr %1 to i64
  %i.at = ptrtoint ptr %i.am to i64
  %i.au = sub i64 %i.at, %i.as
  %i.av = add i64 %i.au, 1                        ; 2 uses
  %.not = icmp ult i64 %i.av, %2
  br i1 %.not, label %.preheader.preheader, label %.loopexit

.loopexit39:                                      ; preds = %bb.g, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #38
  unreachable

.loopexit:                                        ; preds = %.preheader.preheader, %bb.h
  %.sroa.02.0 = phi i64 [ %2, %bb.h ], [ %.sroa.08.0, %.preheader.preheader ] ; 7 uses
  %i.aw = icmp eq i64 %.sroa.02.0, 0
  br i1 %i.aw, label %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit, label %.thread

.thread:                                          ; preds = %.loopexit
  %.not.i = icmp ult i64 %.sroa.02.0, %2
  br i1 %.not.i, label %bb.i, label %.split3.i

.split3.i:                                        ; preds = %.thread
  %i.ax = icmp eq i64 %.sroa.02.0, %2
  br i1 %i.ax, label %.split.i, label %bb.o

bb.i:                                             ; preds = %.thread
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.02.0
  %i.az = load i8, ptr %i.ay, align 1, !alias.scope !981, !noalias !984, !noundef !18
  %i.ba = icmp sgt i8 %i.az, -65
  br i1 %i.ba, label %.split.i, label %bb.o

.split.i:                                         ; preds = %bb.j, %bb.i, %.split3.i
  %.sroa.02.02763 = phi i64 [ %.sroa.02.0, %bb.i ], [ %.sroa.02.0, %.split3.i ], [ %2, %bb.j ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.02.02763
  %i.bc = sub i64 %2, %.sroa.02.02763
  br label %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit

.preheader.preheader:                             ; preds = %bb.h, %bb.j
  %.sroa.08.0 = phi i64 [ %i.bd, %bb.j ], [ %i.av, %bb.h ] ; 3 uses
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.08.0
  %4 = load i8, ptr %3, align 1, !noundef !18
  %5 = icmp sgt i8 %4, -65
  br i1 %5, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %.preheader.preheader
  %i.bd = add nuw i64 %.sroa.08.0, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bd, %2
  br i1 %exitcond.not, label %.split.i, label %.preheader.preheader

_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit: ; preds = %.split.i, %.loopexit
  %.sroa.02.025 = phi i64 [ 0, %.loopexit ], [ %.sroa.02.02763, %.split.i ]
  %.sroa.7.0 = phi ptr [ %1, %.loopexit ], [ %i.bb, %.split.i ] ; 3 uses
  %.sroa.9.0 = phi i64 [ %2, %.loopexit ], [ %i.bc, %.split.i ] ; 3 uses
  switch i64 %.sroa.9.0, label %thread-pre-split.i [
    i64 0, label %_RNvMsv_NtCshzWfHUSfYae_4core3numj27from_ascii_bytes_radix_impl.exit
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit
  %i.be = load i8, ptr %.sroa.7.0, align 1, !alias.scope !986, !noalias !989, !noundef !18 ; 2 uses
  switch i8 %i.be, label %bb.l [
    i8 43, label %_RNvMsv_NtCshzWfHUSfYae_4core3numj27from_ascii_bytes_radix_impl.exit
    i8 45, label %_RNvMsv_NtCshzWfHUSfYae_4core3numj27from_ascii_bytes_radix_impl.exit
  ]

thread-pre-split.i:                               ; preds = %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit
  %.pr.i = load i8, ptr %.sroa.7.0, align 1, !alias.scope !986, !noalias !989
  br label %bb.l

bb.l:                                             ; preds = %thread-pre-split.i, %bb.k
  %i.bf = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.be, %bb.k ]
  %cond.i = icmp eq i8 %i.bf, 43                  ; 2 uses
  %i.bg = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %.sroa.9.0, %i.bg   ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.7.0, i64 %.sroa.0.0.idx.i ; 2 uses
  %i.bh = icmp samesign ult i64 %.sroa.15.0.i, 17
  br i1 %i.bh, label %.preheader.i, label %.preheader56.i.preheader

.preheader.i:                                     ; preds = %bb.l
  %.not5366.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5366.i, label %_RNvMsv_NtCshzWfHUSfYae_4core3numj27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

.preheader56.i:                                   ; preds = %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i83, i64 1
  %i.bj = add nsw i64 %.sroa.15.1.i82, -1         ; 2 uses
  %.not52.i.not = icmp eq i64 %i.bj, 0
  br i1 %.not52.i.not, label %_RNvMsv_NtCshzWfHUSfYae_4core3numj27from_ascii_bytes_radix_impl.exit, label %.preheader56.i.preheader

.preheader56.i.preheader:                         ; preds = %bb.l, %.preheader56.i
  %.sroa.0.1.i83 = phi ptr [ %i.bi, %.preheader56.i ], [ %.sroa.0.0.i, %bb.l ] ; 2 uses
  %.sroa.15.1.i82 = phi i64 [ %i.bj, %.preheader56.i ], [ %.sroa.15.0.i, %bb.l ]
  %.sroa.042.0.i81 = phi i64 [ %i.bs, %.preheader56.i ], [ 0, %bb.l ]
  %i.bk = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i81, i64 10) ; 2 uses
  %i.bl = extractvalue { i64, i1 } %i.bk, 1
  br i1 %i.bl, label %_RNvMsv_NtCshzWfHUSfYae_4core3numj27from_ascii_bytes_radix_impl.exit, label %bb.m, !prof !113

bb.m:                                             ; preds = %.preheader56.i.preheader
  %i.bm = extractvalue { i64, i1 } %i.bk, 0       ; 2 uses
  %i.bn = load i8, ptr %.sroa.0.1.i83, align 1, !alias.scope !986, !noalias !989, !noundef !18
  %i.bo = zext i8 %i.bn to i32
  %i.bp = add nsw i32 %i.bo, -48                  ; 2 uses
  %i.bq = icmp ugt i32 %i.bp, 9
  %i.br = zext nneg i32 %i.bp to i64
  %i.bs = add i64 %i.bm, %i.br                    ; 3 uses
  %i.bt = icmp ult i64 %i.bs, %i.bm
  %or.cond = select i1 %i.bq, i1 true, i1 %i.bt, !prof !991
  br i1 %or.cond, label %_RNvMsv_NtCshzWfHUSfYae_4core3numj27from_ascii_bytes_radix_impl.exit, label %.preheader56.i, !prof !991

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.n
  %.sroa.0.269.i = phi ptr [ %i.ca, %bb.n ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.15.268.i = phi i64 [ %i.bz, %bb.n ], [ %.sroa.15.0.i, %.preheader.i ]
  %.sroa.042.267.i = phi i64 [ %i.cc, %bb.n ], [ 0, %.preheader.i ]
  %i.bu = load i8, ptr %.sroa.0.269.i, align 1, !alias.scope !986, !noalias !989, !noundef !18
  %i.bv = zext i8 %i.bu to i32
  %i.bw = add nsw i32 %i.bv, -48                  ; 2 uses
  %i.bx = icmp ugt i32 %i.bw, 9
  br i1 %i.bx, label %_RNvMsv_NtCshzWfHUSfYae_4core3numj27from_ascii_bytes_radix_impl.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i
  %i.by = mul i64 %.sroa.042.267.i, 10
  %i.bz = add nsw i64 %.sroa.15.268.i, -1         ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i, i64 1
  %i.cb = zext nneg i32 %i.bw to i64
  %i.cc = add i64 %i.by, %i.cb                    ; 2 uses
  %.not53.i = icmp eq i64 %i.bz, 0
  br i1 %.not53.i, label %_RNvMsv_NtCshzWfHUSfYae_4core3numj27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

_RNvMsv_NtCshzWfHUSfYae_4core3numj27from_ascii_bytes_radix_impl.exit: ; preds = %.preheader56.i.preheader, %bb.m, %.preheader56.i, %.lr.ph.i, %bb.n, %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit, %bb.k, %bb.k, %.preheader.i
  %not..sink.i = phi i64 [ 1, %.preheader.i ], [ 0, %bb.k ], [ %.sroa.9.0, %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit ], [ 0, %bb.k ], [ 1, %bb.n ], [ 0, %.lr.ph.i ], [ 0, %bb.m ], [ 0, %.preheader56.i.preheader ], [ 1, %.preheader56.i ]
  %i.cd = phi i64 [ 0, %.preheader.i ], [ undef, %bb.k ], [ undef, %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit ], [ undef, %bb.k ], [ %i.cc, %bb.n ], [ undef, %.lr.ph.i ], [ undef, %bb.m ], [ undef, %.preheader56.i.preheader ], [ %i.bs, %.preheader56.i ]
  store ptr %1, ptr %0, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.02.025, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %not..sink.i, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.cd, ptr %i.cg, align 8
  ret void

bb.o:                                             ; preds = %bb.i, %.split3.i
  tail call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef 0, i64 noundef %.sroa.02.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #38
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs6oosyzwIepl_6ide_db14syntax_helpers12suggest_nameNtB2_13NameGenerator21new_from_scope_locals(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(88) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [88 x i8], align 8                ; 8 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @31, i64 32, i1 false)
  %i.d = load i64, ptr %1, align 8, !range !180, !noundef !18
  %.not = icmp eq i64 %i.d, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  invoke void @_RNvMs8_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_14SemanticsScope17process_all_names(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @32)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8Xq8PKFYOms_3hir9semantics14SemanticsScopeECs6oosyzwIepl_6ide_db.exit, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8Xq8PKFYOms_3hir9semantics14SemanticsScopeECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef align 8 dereferenceable(88) %i.b) #39
          to label %.body unwind label %bb.i

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsileJQcQObtj_7hir_def8resolver5ScopeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.b)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def8resolver8ResolverECs6oosyzwIepl_6ide_db.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsileJQcQObtj_7hir_def8resolver5ScopeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.b)
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #40
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def8resolver8ResolverECs6oosyzwIepl_6ide_db.exit.i: ; preds = %bb.e
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsileJQcQObtj_7hir_def8resolver5ScopeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.b)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8Xq8PKFYOms_3hir9semantics14SemanticsScopeECs6oosyzwIepl_6ide_db.exit unwind label %bb.h

.body:                                            ; preds = %bb.h, %bb.f, %bb.d
  %.pn = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.h, %bb.h ], [ %i.f, %bb.f ]
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtCs42xZ1oUXfIG_8smol_str7SmolStrjEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs6oosyzwIepl_6ide_db14syntax_helpers12suggest_name13NameGeneratorEBH_.exit unwind label %bb.i

bb.h:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def8resolver8ResolverECs6oosyzwIepl_6ide_db.exit.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8Xq8PKFYOms_3hir9semantics14SemanticsScopeECs6oosyzwIepl_6ide_db.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def8resolver8ResolverECs6oosyzwIepl_6ide_db.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.i:                                             ; preds = %.body, %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #40
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs6oosyzwIepl_6ide_db14syntax_helpers12suggest_name13NameGeneratorEBH_.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs6oosyzwIepl_6ide_db14syntax_helpers12suggest_nameNtB2_13NameGenerator25for_impl_trait_as_generic(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 9 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0 = alloca i32, align 4                  ; 16 uses
  %i.h = alloca [24 x i8], align 8                ; 10 uses
  %.val = load ptr, ptr %2, align 8, !nonnull !18, !noundef !18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 48 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !noundef !18 ; 2 uses
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %bb.b, label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit.i, !prof !113

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #43
  unreachable

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit.i: ; preds = %bb.a
  %i.l = add nuw i32 %i.j, 1
  store i32 %i.l, ptr %i.i, align 4
  %i.m = tail call noundef ptr @_RNvMsi_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18SyntaxNodeChildren3new(ptr noundef nonnull %.val)
end_hunk_0
