Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ra_ap_rustc_lexer-6c335829b7c909b1.ra_ap_rustc_lexer.a9b99cc5f65ee691-cgu.0?download=true
inline.NumInlined: 302
inline.NumDeleted: 119
begin_hunk_0_@_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor12line_comment:bb.a
_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i4: ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  %i.s = and i8 %i.p, 31
  %i.t = zext nneg i8 %i.s to i32                 ; 3 uses
  %i.u = icmp ne ptr %i.r, %i.c
  tail call void @llvm.assume(i1 %i.u)
  %i.v = load i8, ptr %i.r, align 1, !noalias !359, !noundef !4
  %i.w = shl nuw nsw i32 %i.t, 6
  %i.x = and i8 %i.v, 63
  %i.y = zext nneg i8 %i.x to i32                 ; 2 uses
  %i.z = or disjoint i32 %i.w, %i.y
  %i.aa = icmp samesign ugt i8 %i.p, -33
  br i1 %i.aa, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i6, label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit

bb.d:                                             ; preds = %bb.c
  %i.ab = zext nneg i8 %i.p to i32
  br label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i6: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 2 ; 2 uses
  %i.ad = icmp ne ptr %i.ac, %i.c
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = load i8, ptr %i.ac, align 1, !noalias !359, !noundef !4
  %i.af = shl nuw nsw i32 %i.y, 6
  %i.ag = and i8 %i.ae, 63
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = or disjoint i32 %i.af, %i.ah            ; 2 uses
  %i.aj = shl nuw nsw i32 %i.t, 12
  %i.ak = or disjoint i32 %i.ai, %i.aj
  %i.al = icmp samesign ugt i8 %i.p, -17
  br i1 %i.al, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit16.i.i7, label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit16.i.i7: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i6
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 3 ; 2 uses
  %i.an = icmp ne ptr %i.am, %i.c
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = load i8, ptr %i.am, align 1, !noalias !359, !noundef !4
  %i.ap = shl nuw nsw i32 %i.t, 18
  %i.aq = and i32 %i.ap, 1835008
  %i.ar = shl nuw nsw i32 %i.ai, 6
  %i.as = and i8 %i.ao, 63
  %i.at = zext nneg i8 %i.as to i32
  %i.au = or disjoint i32 %i.ar, %i.at
  %i.av = or disjoint i32 %i.au, %i.aq
  br label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit

_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i4, %bb.d, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i6, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit16.i.i7
  %spec.select.i5 = phi i32 [ %i.ab, %bb.d ], [ %i.z, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i4 ], [ %i.av, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit16.i.i7 ], [ %i.ak, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i6 ]
  switch i32 %spec.select.i5, label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit.thread [
    i32 33, label %bb.e
    i32 47, label %bb.f
  ]

bb.e:                                             ; preds = %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit
  br label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit.thread

bb.f:                                             ; preds = %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  br i1 %i.q, label %_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsezrqMfYJdg3_17ra_ap_rustc_lexer.exit.i, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i8

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i8: ; preds = %bb.f
  %i.ax = icmp ne ptr %i.aw, %i.c
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.o, i64 2 ; 2 uses
  %i.az = icmp samesign ugt i8 %i.p, -33
  br i1 %i.az, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i11, label %_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsezrqMfYJdg3_17ra_ap_rustc_lexer.exit.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i11: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i8
  %i.ba = icmp ne ptr %i.ay, %i.c
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = icmp samesign ugt i8 %i.p, -17
  %spec.select3.v.i = select i1 %i.bb, i64 4, i64 3
  %spec.select3.i = getelementptr inbounds nuw i8, ptr %i.o, i64 %spec.select3.v.i
  br label %_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsezrqMfYJdg3_17ra_ap_rustc_lexer.exit.i

_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsezrqMfYJdg3_17ra_ap_rustc_lexer.exit.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i11, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i8, %bb.f
  %.sroa.0.0.i = phi ptr [ %spec.select3.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i11 ], [ %i.ay, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i8 ], [ %i.aw, %bb.f ] ; 5 uses
  %.not.i9 = icmp eq ptr %.sroa.0.0.i, %i.c
  br i1 %.not.i9, label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit.thread, label %bb.g

bb.g:                                             ; preds = %_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsezrqMfYJdg3_17ra_ap_rustc_lexer.exit.i
  %i.bc = load i8, ptr %.sroa.0.0.i, align 1, !noalias !360, !noundef !4 ; 5 uses
  %i.bd = icmp sgt i8 %i.bc, -1
  br i1 %i.bd, label %bb.h, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i4.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i4.i: ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1 ; 2 uses
  %i.bf = and i8 %i.bc, 31
  %i.bg = zext nneg i8 %i.bf to i32               ; 3 uses
  %i.bh = icmp ne ptr %i.be, %i.c
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = load i8, ptr %i.be, align 1, !noalias !360, !noundef !4
  %i.bj = shl nuw nsw i32 %i.bg, 6
  %i.bk = and i8 %i.bi, 63
  %i.bl = zext nneg i8 %i.bk to i32               ; 2 uses
  %i.bm = or disjoint i32 %i.bj, %i.bl
  %i.bn = icmp samesign ugt i8 %i.bc, -33
  br i1 %i.bn, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i7.i, label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor6second.exit

bb.h:                                             ; preds = %bb.g
  %i.bo = zext nneg i8 %i.bc to i32
  br label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor6second.exit

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i7.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i4.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 2 ; 2 uses
  %i.bq = icmp ne ptr %i.bp, %i.c
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = load i8, ptr %i.bp, align 1, !noalias !360, !noundef !4
  %i.bs = shl nuw nsw i32 %i.bl, 6
  %i.bt = and i8 %i.br, 63
  %i.bu = zext nneg i8 %i.bt to i32
  %i.bv = or disjoint i32 %i.bs, %i.bu            ; 2 uses
  %i.bw = shl nuw nsw i32 %i.bg, 12
  %i.bx = or disjoint i32 %i.bv, %i.bw
  %i.by = icmp samesign ugt i8 %i.bc, -17
  br i1 %i.by, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit16.i8.i, label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor6second.exit

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit16.i8.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i7.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 3 ; 2 uses
  %i.ca = icmp ne ptr %i.bz, %i.c
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = load i8, ptr %i.bz, align 1, !noalias !360, !noundef !4
  %i.cc = shl nuw nsw i32 %i.bg, 18
  %i.cd = and i32 %i.cc, 1835008
  %i.ce = shl nuw nsw i32 %i.bv, 6
  %i.cf = and i8 %i.cb, 63
  %i.cg = zext nneg i8 %i.cf to i32
  %i.ch = or disjoint i32 %i.ce, %i.cg
  %i.ci = or disjoint i32 %i.ch, %i.cd
  br label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor6second.exit

_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor6second.exit: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i4.i, %bb.h, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i7.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit16.i8.i
  %spec.select.i10 = phi i32 [ %i.bo, %bb.h ], [ %i.bm, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i4.i ], [ %i.ci, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit16.i8.i ], [ %i.bx, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i7.i ]
  %spec.select.i10.fr = freeze i32 %spec.select.i10
  %i.cj = icmp eq i32 %spec.select.i10.fr, 47
  %spec.select = select i1 %i.cj, i64 512, i64 0
  br label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit.thread

_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit.thread: ; preds = %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor6second.exit, %_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsezrqMfYJdg3_17ra_ap_rustc_lexer.exit.i, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit, %bb.e
  %.sroa.01.0 = phi i64 [ 512, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit ], [ 256, %bb.e ], [ 512, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit ], [ 0, %_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsezrqMfYJdg3_17ra_ap_rustc_lexer.exit.i ], [ %spec.select, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor6second.exit ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  %i.ck = ptrtoint ptr %i.c to i64
  %i.cl = ptrtoint ptr %i.o to i64                ; 2 uses
  %i.cm = sub nuw i64 %i.ck, %i.cl                ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.cm ; 2 uses
  %i.co = load atomic ptr, ptr @_RNvNvNtNtNtCslLTI5cSnp8O_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !362, !nonnull !4, !noundef !4
  %i.cp = tail call { i64, ptr } %i.co(i8 noundef 10, ptr noundef nonnull readonly %i.o, ptr noundef nonnull readonly %i.cn), !noalias !362, !inline_history !349 ; 2 uses
  %i.cq = extractvalue { i64, ptr } %i.cp, 0
  %i.cr = trunc nuw i64 %i.cq to i1
  br i1 %i.cr, label %bb.i, label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor9eat_until.exit

bb.i:                                             ; preds = %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit.thread
  %i.cs = extractvalue { i64, ptr } %i.cp, 1      ; 3 uses
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = sub i64 %i.ct, %i.cl                    ; 5 uses
  %i.cv = icmp sgt i64 %i.cu, -1
  tail call void @llvm.assume(i1 %i.cv)
  %i.cw = icmp eq ptr %i.cs, %i.o
  br i1 %i.cw, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not.i.i = icmp ult i64 %i.cu, %i.cm
  br i1 %.not.i.i, label %bb.k, label %.split.i.i

.split.i.i:                                       ; preds = %bb.j
  %i.cx = icmp eq ptr %i.cs, %i.c
  br i1 %i.cx, label %bb.l, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.cy = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.cu
  %i.cz = load i8, ptr %i.cy, align 1, !alias.scope !363, !noalias !361, !noundef !4
  %i.da = icmp sgt i8 %i.cz, -65
  br i1 %i.da, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %.split.i.i, %bb.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.cu
  br label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor9eat_until.exit

bb.m:                                             ; preds = %bb.k, %.split.i.i
  tail call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef %i.cm, i64 noundef %i.cu, i64 noundef %i.cm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #16, !noalias !361
  unreachable

_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor9eat_until.exit: ; preds = %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit.thread, %bb.l
  %.sroa.5.0.i = phi ptr [ %i.cn, %bb.l ], [ inttoptr (i64 1 to ptr), %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit.thread ]
  %.sroa.0.0.i12 = phi ptr [ %i.db, %bb.l ], [ inttoptr (i64 1 to ptr), %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit.thread ]
  store ptr %.sroa.0.0.i12, ptr %0, align 8, !alias.scope !361
  store ptr %.sroa.5.0.i, ptr %i.b, align 8, !alias.scope !361
  ret i64 %.sroa.01.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor13advance_token(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 5 uses
  %i.b = alloca [16 x i8], align 4                ; 5 uses
  %i.c = alloca [16 x i8], align 4                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !510)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !511)
  %i.d = load ptr, ptr %1, align 8, !alias.scope !512, !nonnull !4, !noundef !4 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 10 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !512, !nonnull !4, !noundef !4 ; 69 uses
  %.not.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i, label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 4 uses
  store ptr %i.g, ptr %1, align 8, !alias.scope !512
  %i.h = load i8, ptr %i.d, align 1, !noalias !513, !noundef !4 ; 5 uses
  %i.i = icmp sgt i8 %i.h, -1
  br i1 %i.i, label %bb.c, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i: ; preds = %bb.b
  %i.j = and i8 %i.h, 31
  %i.k = zext nneg i8 %i.j to i32                 ; 3 uses
  %i.l = icmp ne ptr %i.g, %i.f
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 4 uses
  store ptr %i.m, ptr %1, align 8, !alias.scope !514
  %i.n = load i8, ptr %i.g, align 1, !noalias !513, !noundef !4
  %i.o = shl nuw nsw i32 %i.k, 6
  %i.p = and i8 %i.n, 63
  %i.q = zext nneg i8 %i.p to i32                 ; 2 uses
  %i.r = or disjoint i32 %i.o, %i.q
  %i.s = icmp samesign ugt i8 %i.h, -33
  br i1 %i.s, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = zext nneg i8 %i.h to i32
  br label %bb.d

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i
  %i.u = icmp ne ptr %i.m, %i.f
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 3 ; 4 uses
  store ptr %i.v, ptr %1, align 8, !alias.scope !515
  %i.w = load i8, ptr %i.m, align 1, !noalias !513, !noundef !4
  %i.x = shl nuw nsw i32 %i.q, 6
  %i.y = and i8 %i.w, 63
  %i.z = zext nneg i8 %i.y to i32
  %i.aa = or disjoint i32 %i.x, %i.z              ; 2 uses
  %i.ab = shl nuw nsw i32 %i.k, 12
  %i.ac = or disjoint i32 %i.aa, %i.ab
  %i.ad = icmp samesign ugt i8 %i.h, -17
  br i1 %i.ad, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit16.i.i, label %bb.d

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit16.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i
  %i.ae = icmp ne ptr %i.v, %i.f
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  store ptr %i.af, ptr %1, align 8, !alias.scope !516
  %i.ag = load i8, ptr %i.v, align 1, !noalias !513, !noundef !4
  %i.ah = shl nuw nsw i32 %i.k, 18
  %i.ai = and i32 %i.ah, 1835008
  %i.aj = shl nuw nsw i32 %i.aa, 6
  %i.ak = and i8 %i.ag, 63
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = or disjoint i32 %i.aj, %i.al
  %i.an = or disjoint i32 %i.am, %i.ai
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit16.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i
  %.promoted = phi ptr [ %i.v, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i ], [ %i.af, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit16.i.i ], [ %i.m, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i ], [ %i.g, %bb.c ] ; 62 uses
  %spec.select.i.ph = phi i32 [ %i.ac, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i ], [ %i.an, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit16.i.i ], [ %i.r, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i ], [ %i.t, %bb.c ] ; 15 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.ap = load i8, ptr %i.ao, align 8, !range !6, !noundef !4
  %i.aq = icmp eq i8 %i.ap, 0
  br i1 %i.aq, label %bb.e, label %bb.f

_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit: ; preds = %bb.a
  store i8 41, ptr %0, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.ar, align 4
  br label %bb.ct

bb.e:                                             ; preds = %bb.d
  switch i32 %spec.select.i.ph, label %bb.w [
    i32 10, label %bb.g
    i32 11, label %bb.g
    i32 12, label %bb.g
    i32 13, label %bb.g
    i32 133, label %bb.g
    i32 8232, label %bb.g
    i32 8233, label %bb.g
    i32 8206, label %bb.g
    i32 8207, label %bb.g
    i32 9, label %bb.g
    i32 32, label %bb.g
    i32 45, label %bb.p
    i32 47, label %bb.m
    i32 114, label %bb.y
    i32 98, label %bb.ac
    i32 99, label %bb.ar
    i32 95, label %_RNvCsezrqMfYJdg3_17ra_ap_rustc_lexer11is_id_start.exit.thread
  ]

bb.f:                                             ; preds = %bb.d
  switch i32 %spec.select.i.ph, label %bb.w [
    i32 99, label %bb.ar
    i32 47, label %bb.m
    i32 10, label %bb.t
    i32 11, label %bb.t
    i32 12, label %bb.t
    i32 13, label %bb.t
    i32 133, label %bb.t
    i32 8232, label %bb.t
    i32 8233, label %bb.t
    i32 8206, label %bb.t
    i32 8207, label %bb.t
    i32 9, label %bb.t
    i32 32, label %bb.t
    i32 114, label %bb.y
    i32 98, label %bb.ac
    i32 95, label %_RNvCsezrqMfYJdg3_17ra_ap_rustc_lexer11is_id_start.exit.thread
  ]

bb.g:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  %.not.i197320 = icmp eq ptr %.promoted, %i.f
  br i1 %.not.i197320, label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit207
  %.sroa.05.0321 = phi i32 [ %spec.select.i204, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit207 ], [ %spec.select.i.ph, %bb.g ]
  %i.as = phi ptr [ %i.dg, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit207 ], [ %.promoted, %bb.g ] ; 9 uses
  %i.at = load i8, ptr %i.as, align 1, !noalias !517, !noundef !4 ; 9 uses
  %i.au = icmp sgt i8 %i.at, -1                   ; 2 uses
  br i1 %i.au, label %bb.h, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i198

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i198: ; preds = %.lr.ph
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 1 ; 2 uses
  %i.aw = and i8 %i.at, 31
  %i.ax = zext nneg i8 %i.aw to i32               ; 3 uses
  %i.ay = icmp ne ptr %i.av, %i.f
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = load i8, ptr %i.av, align 1, !noalias !517, !noundef !4
  %i.ba = shl nuw nsw i32 %i.ax, 6
  %i.bb = and i8 %i.az, 63
  %i.bc = zext nneg i8 %i.bb to i32               ; 2 uses
  %i.bd = or disjoint i32 %i.ba, %i.bc
  %i.be = icmp samesign ugt i8 %i.at, -33
  br i1 %i.be, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i200, label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit

bb.h:                                             ; preds = %.lr.ph
  %i.bf = zext nneg i8 %i.at to i32
  br label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i200: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i198
  %i.bg = getelementptr inbounds nuw i8, ptr %i.as, i64 2 ; 2 uses
  %i.bh = icmp ne ptr %i.bg, %i.f
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = load i8, ptr %i.bg, align 1, !noalias !517, !noundef !4
  %i.bj = shl nuw nsw i32 %i.bc, 6
  %i.bk = and i8 %i.bi, 63
  %i.bl = zext nneg i8 %i.bk to i32
  %i.bm = or disjoint i32 %i.bj, %i.bl            ; 2 uses
  %i.bn = shl nuw nsw i32 %i.ax, 12
  %i.bo = or disjoint i32 %i.bm, %i.bn
  %i.bp = icmp samesign ugt i8 %i.at, -17
  br i1 %i.bp, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit16.i.i201, label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit16.i.i201: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i200
  %i.bq = getelementptr inbounds nuw i8, ptr %i.as, i64 3 ; 2 uses
  %i.br = icmp ne ptr %i.bq, %i.f
  tail call void @llvm.assume(i1 %i.br)
  %i.bs = load i8, ptr %i.bq, align 1, !noalias !517, !noundef !4
  %i.bt = shl nuw nsw i32 %i.ax, 18
  %i.bu = and i32 %i.bt, 1835008
  %i.bv = shl nuw nsw i32 %i.bm, 6
  %i.bw = and i8 %i.bs, 63
  %i.bx = zext nneg i8 %i.bw to i32
  %i.by = or disjoint i32 %i.bv, %i.bx
  %i.bz = or disjoint i32 %i.by, %i.bu
  br label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit

_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i198, %bb.h, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i200, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit16.i.i201
  %spec.select.i199 = phi i32 [ %i.bf, %bb.h ], [ %i.bd, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i198 ], [ %i.bz, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit16.i.i201 ], [ %i.bo, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i200 ]
  switch i32 %spec.select.i199, label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit.thread [
    i32 10, label %bb.i
    i32 11, label %bb.i
    i32 12, label %bb.i
    i32 13, label %bb.i
    i32 133, label %bb.i
    i32 8232, label %bb.i
    i32 8233, label %bb.i
    i32 8206, label %bb.i
    i32 8207, label %bb.i
    i32 9, label %bb.i
    i32 32, label %bb.i
  ]

bb.i:                                             ; preds = %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %i.as, i64 1 ; 4 uses
  store ptr %i.ca, ptr %1, align 8, !alias.scope !518
  br i1 %i.au, label %bb.j, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i203

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i203: ; preds = %bb.i
  %i.cb = and i8 %i.at, 31
  %i.cc = zext nneg i8 %i.cb to i32               ; 3 uses
  %i.cd = icmp ne ptr %i.ca, %i.f
  tail call void @llvm.assume(i1 %i.cd)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.as, i64 2 ; 4 uses
  store ptr %i.ce, ptr %1, align 8, !alias.scope !519
  %i.cf = load i8, ptr %i.ca, align 1, !noalias !520, !noundef !4
  %i.cg = shl nuw nsw i32 %i.cc, 6
  %i.ch = and i8 %i.cf, 63
  %i.ci = zext nneg i8 %i.ch to i32               ; 2 uses
  %i.cj = or disjoint i32 %i.cg, %i.ci
  %i.ck = icmp samesign ugt i8 %i.at, -33
  br i1 %i.ck, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i205, label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit207

bb.j:                                             ; preds = %bb.i
  %i.cl = zext nneg i8 %i.at to i32
  br label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit207

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i205: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i203
  %i.cm = icmp ne ptr %i.ce, %i.f
  tail call void @llvm.assume(i1 %i.cm)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.as, i64 3 ; 4 uses
  store ptr %i.cn, ptr %1, align 8, !alias.scope !521
  %i.co = load i8, ptr %i.ce, align 1, !noalias !520, !noundef !4
  %i.cp = shl nuw nsw i32 %i.ci, 6
  %i.cq = and i8 %i.co, 63
  %i.cr = zext nneg i8 %i.cq to i32
  %i.cs = or disjoint i32 %i.cp, %i.cr            ; 2 uses
  %i.ct = shl nuw nsw i32 %i.cc, 12
  %i.cu = or disjoint i32 %i.cs, %i.ct
  %i.cv = icmp samesign ugt i8 %i.at, -17
  br i1 %i.cv, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit16.i.i206, label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit207

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit16.i.i206: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i205
  %i.cw = icmp ne ptr %i.cn, %i.f
  tail call void @llvm.assume(i1 %i.cw)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.as, i64 4 ; 2 uses
  store ptr %i.cx, ptr %1, align 8, !alias.scope !522
  %i.cy = load i8, ptr %i.cn, align 1, !noalias !520, !noundef !4
  %i.cz = shl nuw nsw i32 %i.cc, 18
  %i.da = and i32 %i.cz, 1835008
  %i.db = shl nuw nsw i32 %i.cs, 6
  %i.dc = and i8 %i.cy, 63
  %i.dd = zext nneg i8 %i.dc to i32
  %i.de = or disjoint i32 %i.db, %i.dd
  %i.df = or disjoint i32 %i.de, %i.da
  br label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit207

_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit207: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i203, %bb.j, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i205, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit16.i.i206
  %i.dg = phi ptr [ %i.ca, %bb.j ], [ %i.ce, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i203 ], [ %i.cx, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit16.i.i206 ], [ %i.cn, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i205 ] ; 3 uses
  %spec.select.i204 = phi i32 [ %i.cl, %bb.j ], [ %i.cj, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i203 ], [ %i.df, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit16.i.i206 ], [ %i.cu, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i205 ] ; 2 uses
  %.not.i197 = icmp eq ptr %i.dg, %i.f
  br i1 %.not.i197, label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit.thread, label %.lr.ph

_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit.thread: ; preds = %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit207, %bb.g
  %i.dh = phi ptr [ %.promoted, %bb.g ], [ %i.dg, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit207 ], [ %i.as, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit ] ; 8 uses
  %.sroa.05.0.lcssa = phi i32 [ %spec.select.i.ph, %bb.g ], [ %spec.select.i204, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit207 ], [ %.sroa.05.0321, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit ]
  %i.di = icmp eq i32 %.sroa.05.0.lcssa, 10
  %i.dj = ptrtoint ptr %i.f to i64
  %i.dk = ptrtoint ptr %i.dh to i64
  %i.dl = sub nuw i64 %i.dj, %i.dk
  %.not.i208 = icmp samesign ult i64 %i.dl, 3
  %or.cond359 = select i1 %i.di, i1 true, i1 %.not.i208
  br i1 %or.cond359, label %.thread292, label %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit: ; preds = %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit.thread
  %i.dm = load i16, ptr %i.dh, align 1
  %i.dn = xor i16 11565, %i.dm
  %i.do = getelementptr i8, ptr %i.dh, i64 2
  %i.dp = load i8, ptr %i.do, align 1
  %i.dq = zext i8 %i.dp to i16
  %i.dr = xor i16 45, %i.dq
  %i.ds = or i16 %i.dn, %i.dr
  %i.dt = icmp ne i16 %i.ds, 0
  %i.du = zext i1 %i.dt to i32
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %bb.k, label %.thread292

bb.k:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !524)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dh, i64 1 ; 2 uses
  store ptr %i.dw, ptr %1, align 8, !alias.scope !525
  %i.dx = load i8, ptr %i.dh, align 1, !noalias !526, !noundef !4 ; 3 uses
  %i.dy = icmp sgt i8 %i.dx, -1
  br i1 %i.dy, label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit214, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i210

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i210: ; preds = %bb.k
  %i.dz = icmp ne ptr %i.dw, %i.f
  tail call void @llvm.assume(i1 %i.dz)
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dh, i64 2 ; 2 uses
  store ptr %i.ea, ptr %1, align 8, !alias.scope !527
  %i.eb = icmp samesign ugt i8 %i.dx, -33
  br i1 %i.eb, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i212, label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit214

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i212: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i210
  %i.ec = icmp ne ptr %i.ea, %i.f
  tail call void @llvm.assume(i1 %i.ec)
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dh, i64 3 ; 2 uses
  store ptr %i.ed, ptr %1, align 8, !alias.scope !528
  %i.ee = icmp samesign ugt i8 %i.dx, -17
  br i1 %i.ee, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit16.i.i213, label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit214

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit16.i.i213: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i212
  %i.ef = icmp ne ptr %i.ed, %i.f
  tail call void @llvm.assume(i1 %i.ef)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  store ptr %i.eg, ptr %1, align 8, !alias.scope !529
  br label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit214

_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit214: ; preds = %bb.k, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i210, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i212, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit16.i.i213
  %i.eh = tail call fastcc i64 @_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor11frontmatter(ptr noalias nofree noundef align 8 dereferenceable(32) %1, i1 noundef zeroext true) ; 3 uses
  %.sroa.0128.0.extract.trunc = trunc i64 %i.eh to i8
  %.sroa.4129.0.extract.shift = lshr i64 %i.eh, 8
  %.sroa.4129.0.extract.trunc = trunc i64 %.sroa.4129.0.extract.shift to i8
  %.sroa.5130.0.extract.shift = lshr i64 %i.eh, 16
  %.sroa.5130.0.extract.trunc = trunc nuw nsw i64 %.sroa.5130.0.extract.shift to i8
  br label %bb.l

.thread292:                                       ; preds = %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit.i.i, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit.i.i, %bb.t, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit.thread, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit, %bb.cs, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit220.thread, %bb.l
  %.sroa.47.sroa.17.0 = phi i8 [ %.sroa.47.sroa.17.1, %bb.l ], [ %.sroa.47.sroa.17.3, %bb.cs ], [ %.sroa.47.sroa.17.2, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit220.thread ], [ undef, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit ], [ undef, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit.thread ], [ 0, %bb.t ], [ 0, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit.i.i ], [ 0, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit.i.i ]
  %.sroa.47.sroa.16.0 = phi i8 [ %.sroa.47.sroa.16.1, %bb.l ], [ %.sroa.47.sroa.16.3, %bb.cs ], [ %.sroa.47.sroa.16.2, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit220.thread ], [ undef, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit ], [ undef, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit.thread ], [ 0, %bb.t ], [ 0, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit.i.i ], [ 0, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit.i.i ]
  %.sroa.47.sroa.0.0 = phi i8 [ %.sroa.47.sroa.0.1, %bb.l ], [ %.sroa.47.sroa.0.3, %bb.cs ], [ %.sroa.47.sroa.0.2, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit220.thread ], [ undef, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit ], [ undef, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit.thread ], [ 0, %bb.t ], [ 0, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit.i.i ], [ 0, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit.i.i ]
  %.sroa.50.0 = phi i32 [ %.sroa.50.1, %bb.l ], [ %.sroa.50.3, %bb.cs ], [ %.sroa.50.2, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit220.thread ], [ undef, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit ], [ undef, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit.thread ], [ 0, %bb.t ], [ 0, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit.i.i ], [ 0, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit.i.i ]
  %.sroa.019.0 = phi i8 [ %.sroa.019.1, %bb.l ], [ %.sroa.019.3, %bb.cs ], [ %.sroa.019.2, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit220.thread ], [ 2, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit ], [ 2, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit.thread ], [ 2, %bb.t ], [ 2, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit.i.i ], [ 2, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit.i.i ]
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ej = load i64, ptr %i.ei, align 8, !noundef !4
  %i.ek = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.el = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %i.em = ptrtoint ptr %i.el to i64               ; 2 uses
  %i.en = ptrtoint ptr %i.ek to i64               ; 2 uses
  %.neg194 = add i64 %i.ej, %i.en
  %i.eo = sub i64 %.neg194, %i.em
  %i.ep = trunc i64 %i.eo to i32
  store i8 %.sroa.019.0, ptr %0, align 4
  %.sroa.47.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.47.sroa.0.0, ptr %.sroa.47.0..sroa_idx32, align 1
  %.sroa.47.sroa.16.0..sroa.47.0..sroa_idx32.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %.sroa.47.sroa.16.0, ptr %.sroa.47.sroa.16.0..sroa.47.0..sroa_idx32.sroa_idx, align 2
  %.sroa.47.sroa.17.0..sroa.47.0..sroa_idx32.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %.sroa.47.sroa.17.0, ptr %.sroa.47.sroa.17.0..sroa.47.0..sroa_idx32.sroa_idx, align 1
  %.sroa.50.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.50.0, ptr %.sroa.50.0..sroa_idx44, align 4
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ep, ptr %i.eq, align 4
  %i.er = sub nuw i64 %i.em, %i.en
  store i64 %i.er, ptr %i.ei, align 8
  br label %bb.ct

bb.l:                                             ; preds = %bb.r, %bb.s, %bb.cr, %bb.cl, %_RNvCsezrqMfYJdg3_17ra_ap_rustc_lexer11is_id_start.exit.thread, %bb.bg, %bb.bd, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor16c_or_byte_string.exit278, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor16c_or_byte_string.exit, %bb.q, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit214
  %.sroa.47.sroa.17.1 = phi i8 [ 0, %_RNvCsezrqMfYJdg3_17ra_ap_rustc_lexer11is_id_start.exit.thread ], [ 0, %bb.cr ], [ %.sroa.6175.0.extract.trunc, %bb.cl ], [ 0, %bb.bd ], [ 0, %bb.bg ], [ %.sroa.6165.0.extract.trunc, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor16c_or_byte_string.exit ], [ %.sroa.6170.0.extract.trunc, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor16c_or_byte_string.exit278 ], [ 0, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit214 ], [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %bb.s ] ; 2 uses
  %.sroa.47.sroa.16.1 = phi i8 [ 0, %_RNvCsezrqMfYJdg3_17ra_ap_rustc_lexer11is_id_start.exit.thread ], [ 0, %bb.cr ], [ %.sroa.5174.0.extract.trunc, %bb.cl ], [ 0, %bb.bd ], [ 0, %bb.bg ], [ %.sroa.5164.0.extract.trunc, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor16c_or_byte_string.exit ], [ %.sroa.5169.0.extract.trunc, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor16c_or_byte_string.exit278 ], [ %.sroa.5130.0.extract.trunc, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit214 ], [ %.sroa.5134.0.extract.trunc, %bb.q ], [ 0, %bb.r ], [ %.sroa.5144.0.extract.trunc, %bb.s ] ; 2 uses
  %.sroa.47.sroa.0.1 = phi i8 [ 0, %_RNvCsezrqMfYJdg3_17ra_ap_rustc_lexer11is_id_start.exit.thread ], [ 0, %bb.cr ], [ %.sroa.4173.0.extract.trunc, %bb.cl ], [ 0, %bb.bd ], [ 0, %bb.bg ], [ %.sroa.4163.0.extract.trunc, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor16c_or_byte_string.exit ], [ %.sroa.4168.0.extract.trunc, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor16c_or_byte_string.exit278 ], [ %.sroa.4129.0.extract.trunc, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit214 ], [ %.sroa.4133.0.extract.trunc, %bb.q ], [ %.sroa.4138.0.extract.trunc, %bb.r ], [ %.sroa.4143.0.extract.trunc, %bb.s ] ; 2 uses
  %.sroa.50.1 = phi i32 [ 0, %_RNvCsezrqMfYJdg3_17ra_ap_rustc_lexer11is_id_start.exit.thread ], [ 0, %bb.cr ], [ %.sroa.7176.0.extract.trunc, %bb.cl ], [ 0, %bb.bd ], [ 0, %bb.bg ], [ %.sroa.7166.0.extract.trunc, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor16c_or_byte_string.exit ], [ %.sroa.7171.0.extract.trunc, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor16c_or_byte_string.exit278 ], [ 0, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit214 ], [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %bb.s ] ; 2 uses
  %.sroa.019.1 = phi i8 [ %.sroa.0184.0.extract.trunc, %_RNvCsezrqMfYJdg3_17ra_ap_rustc_lexer11is_id_start.exit.thread ], [ 5, %bb.cr ], [ %.sroa.0172.0.extract.trunc, %bb.cl ], [ %.sroa.0157.0.extract.trunc, %bb.bd ], [ 6, %bb.bg ], [ %.sroa.02.0.i, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor16c_or_byte_string.exit ], [ %.sroa.02.0.i250, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor16c_or_byte_string.exit278 ], [ %.sroa.0128.0.extract.trunc, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit214 ], [ %.sroa.0132.0.extract.trunc, %bb.q ], [ %.sroa.0137.0.extract.trunc, %bb.r ], [ %.sroa.0142.0.extract.trunc, %bb.s ] ; 3 uses
  %i.es = load i8, ptr %i.ao, align 8, !range !6, !noundef !4
  %i.et = icmp ne i8 %i.es, 0
  %i.eu = icmp eq i8 %.sroa.019.1, 2
  %or.cond4 = select i1 %i.et, i1 true, i1 %i.eu
  br i1 %or.cond4, label %.thread292, label %bb.cs

bb.m:                                             ; preds = %bb.e, %bb.f
  %.not.i215 = icmp eq ptr %.promoted, %i.f
  br i1 %.not.i215, label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit220.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ev = load i8, ptr %.promoted, align 1, !noalias !530, !noundef !4 ; 5 uses
  %i.ew = icmp sgt i8 %i.ev, -1
  br i1 %i.ew, label %bb.o, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i216

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i216: ; preds = %bb.n
  %i.ex = getelementptr inbounds nuw i8, ptr %.promoted, i64 1 ; 2 uses
  %i.ey = and i8 %i.ev, 31
  %i.ez = zext nneg i8 %i.ey to i32               ; 3 uses
  %i.fa = icmp ne ptr %i.ex, %i.f
  tail call void @llvm.assume(i1 %i.fa)
  %i.fb = load i8, ptr %i.ex, align 1, !noalias !530, !noundef !4
  %i.fc = shl nuw nsw i32 %i.ez, 6
  %i.fd = and i8 %i.fb, 63
  %i.fe = zext nneg i8 %i.fd to i32               ; 2 uses
  %i.ff = or disjoint i32 %i.fc, %i.fe
  %i.fg = icmp samesign ugt i8 %i.ev, -33
  br i1 %i.fg, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i218, label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit220

bb.o:                                             ; preds = %bb.n
  %i.fh = zext nneg i8 %i.ev to i32
  br label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit220

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i218: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i216
  %i.fi = getelementptr inbounds nuw i8, ptr %.promoted, i64 2 ; 2 uses
  %i.fj = icmp ne ptr %i.fi, %i.f
  tail call void @llvm.assume(i1 %i.fj)
  %i.fk = load i8, ptr %i.fi, align 1, !noalias !530, !noundef !4
  %i.fl = shl nuw nsw i32 %i.fe, 6
  %i.fm = and i8 %i.fk, 63
  %i.fn = zext nneg i8 %i.fm to i32
  %i.fo = or disjoint i32 %i.fl, %i.fn            ; 2 uses
  %i.fp = shl nuw nsw i32 %i.ez, 12
  %i.fq = or disjoint i32 %i.fo, %i.fp
  %i.fr = icmp samesign ugt i8 %i.ev, -17
  br i1 %i.fr, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit16.i.i219, label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit220

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit16.i.i219: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i218
  %i.fs = getelementptr inbounds nuw i8, ptr %.promoted, i64 3 ; 2 uses
  %i.ft = icmp ne ptr %i.fs, %i.f
  tail call void @llvm.assume(i1 %i.ft)
  %i.fu = load i8, ptr %i.fs, align 1, !noalias !530, !noundef !4
  %i.fv = shl nuw nsw i32 %i.ez, 18
  %i.fw = and i32 %i.fv, 1835008
  %i.fx = shl nuw nsw i32 %i.fo, 6
  %i.fy = and i8 %i.fu, 63
  %i.fz = zext nneg i8 %i.fy to i32
  %i.ga = or disjoint i32 %i.fx, %i.fz
  %i.gb = or disjoint i32 %i.ga, %i.fw
  br label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit220

_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit220: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i216, %bb.o, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i218, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit16.i.i219
  %spec.select.i217 = phi i32 [ %i.fh, %bb.o ], [ %i.ff, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i216 ], [ %i.gb, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit16.i.i219 ], [ %i.fq, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i218 ]
  switch i32 %spec.select.i217, label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit220.thread [
    i32 47, label %bb.r
    i32 42, label %bb.s
  ]

bb.p:                                             ; preds = %bb.e
  %i.gc = ptrtoint ptr %i.f to i64
  %i.gd = ptrtoint ptr %.promoted to i64
  %i.ge = sub nuw i64 %i.gc, %i.gd
  %.not.i221 = icmp samesign ult i64 %i.ge, 2
  br i1 %.not.i221, label %.thread304, label %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit224

_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit224: ; preds = %bb.p
  %i.gf = load i16, ptr %.promoted, align 1
  %i.gg = icmp ne i16 11565, %i.gf
  %i.gh = zext i1 %i.gg to i32
  %i.gi = icmp eq i32 %i.gh, 0
  br i1 %i.gi, label %bb.q, label %.thread304

bb.q:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit224
  %i.gj = tail call fastcc i64 @_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor11frontmatter(ptr noalias nofree noundef align 8 dereferenceable(32) %1, i1 noundef zeroext false) ; 3 uses
  %.sroa.0132.0.extract.trunc = trunc i64 %i.gj to i8
  %.sroa.4133.0.extract.shift = lshr i64 %i.gj, 8
  %.sroa.4133.0.extract.trunc = trunc i64 %.sroa.4133.0.extract.shift to i8
  %.sroa.5134.0.extract.shift = lshr i64 %i.gj, 16
  %.sroa.5134.0.extract.trunc = trunc nuw nsw i64 %.sroa.5134.0.extract.shift to i8
  br label %bb.l

bb.r:                                             ; preds = %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit220
  %i.gk = tail call fastcc i64 @_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor12line_comment(ptr noalias nofree noundef align 8 dereferenceable(32) %1) ; 2 uses
  %.sroa.0137.0.extract.trunc = trunc i64 %i.gk to i8
  %.sroa.4138.0.extract.shift = lshr i64 %i.gk, 8
  %.sroa.4138.0.extract.trunc = trunc nuw nsw i64 %.sroa.4138.0.extract.shift to i8
  br label %bb.l

bb.s:                                             ; preds = %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit220
  %i.gl = tail call fastcc i64 @_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor13block_comment(ptr noalias nofree noundef align 8 dereferenceable(32) %1) ; 3 uses
  %.sroa.0142.0.extract.trunc = trunc i64 %i.gl to i8
  %.sroa.4143.0.extract.shift = lshr i64 %i.gl, 8
  %.sroa.4143.0.extract.trunc = trunc i64 %.sroa.4143.0.extract.shift to i8
  %.sroa.5144.0.extract.shift = lshr i64 %i.gl, 16
  %.sroa.5144.0.extract.trunc = trunc nuw nsw i64 %.sroa.5144.0.extract.shift to i8
  br label %bb.l

_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit220.thread: ; preds = %bb.m, %bb.bl, %bb.cq, %bb.bm, %bb.bj, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit220, %bb.co, %bb.cn, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bk, %.critedge
  %.sroa.47.sroa.17.2 = phi i8 [ %.sroa.0182.2.extract.trunc, %bb.bk ], [ undef, %bb.bm ], [ undef, %bb.bj ], [ undef, %bb.cn ], [ undef, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit220 ], [ undef, %bb.bn ], [ undef, %bb.bo ], [ undef, %bb.bp ], [ undef, %bb.bq ], [ undef, %bb.br ], [ undef, %bb.bs ], [ undef, %bb.bt ], [ undef, %bb.bu ], [ undef, %bb.bv ], [ undef, %bb.bw ], [ undef, %bb.bx ], [ undef, %bb.by ], [ undef, %bb.bz ], [ undef, %bb.ca ], [ undef, %bb.cb ], [ undef, %bb.cc ], [ undef, %bb.cd ], [ undef, %bb.ce ], [ undef, %bb.cf ], [ undef, %bb.cg ], [ undef, %bb.ch ], [ undef, %bb.ci ], [ undef, %bb.cj ], [ undef, %bb.ck ], [ undef, %bb.co ], [ %.sroa.5117.0, %.critedge ], [ undef, %bb.cq ], [ undef, %bb.bl ], [ undef, %bb.m ] ; 2 uses
  %.sroa.47.sroa.16.2 = phi i8 [ %.sroa.0182.1.extract.trunc, %bb.bk ], [ undef, %bb.bm ], [ undef, %bb.bj ], [ undef, %bb.cn ], [ undef, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit220 ], [ undef, %bb.bn ], [ undef, %bb.bo ], [ undef, %bb.bp ], [ undef, %bb.bq ], [ undef, %bb.br ], [ undef, %bb.bs ], [ undef, %bb.bt ], [ undef, %bb.bu ], [ undef, %bb.bv ], [ undef, %bb.bw ], [ undef, %bb.bx ], [ undef, %bb.by ], [ undef, %bb.bz ], [ undef, %bb.ca ], [ undef, %bb.cb ], [ undef, %bb.cc ], [ undef, %bb.cd ], [ undef, %bb.ce ], [ undef, %bb.cf ], [ undef, %bb.cg ], [ undef, %bb.ch ], [ undef, %bb.ci ], [ undef, %bb.cj ], [ undef, %bb.ck ], [ %i.wr, %bb.co ], [ %.sroa.0116.0, %.critedge ], [ undef, %bb.cq ], [ undef, %bb.bl ], [ undef, %bb.m ] ; 2 uses
  %.sroa.47.sroa.0.2 = phi i8 [ %.sroa.0182.0.extract.trunc, %bb.bk ], [ undef, %bb.bm ], [ undef, %bb.bj ], [ undef, %bb.cn ], [ undef, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit220 ], [ undef, %bb.bn ], [ undef, %bb.bo ], [ undef, %bb.bp ], [ undef, %bb.bq ], [ undef, %bb.br ], [ undef, %bb.bs ], [ undef, %bb.bt ], [ undef, %bb.bu ], [ undef, %bb.bv ], [ undef, %bb.bw ], [ undef, %bb.bx ], [ undef, %bb.by ], [ undef, %bb.bz ], [ undef, %bb.ca ], [ undef, %bb.cb ], [ undef, %bb.cc ], [ undef, %bb.cd ], [ undef, %bb.ce ], [ undef, %bb.cf ], [ undef, %bb.cg ], [ undef, %bb.ch ], [ undef, %bb.ci ], [ undef, %bb.cj ], [ undef, %bb.ck ], [ 4, %bb.co ], [ 7, %.critedge ], [ undef, %bb.cq ], [ undef, %bb.bl ], [ undef, %bb.m ] ; 2 uses
  %.sroa.50.2 = phi i32 [ %i.wb, %bb.bk ], [ undef, %bb.bm ], [ undef, %bb.bj ], [ undef, %bb.cn ], [ undef, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit220 ], [ undef, %bb.bn ], [ undef, %bb.bo ], [ undef, %bb.bp ], [ undef, %bb.bq ], [ undef, %bb.br ], [ undef, %bb.bs ], [ undef, %bb.bt ], [ undef, %bb.bu ], [ undef, %bb.bv ], [ undef, %bb.bw ], [ undef, %bb.bx ], [ undef, %bb.by ], [ undef, %bb.bz ], [ undef, %bb.ca ], [ undef, %bb.cb ], [ undef, %bb.cc ], [ undef, %bb.cd ], [ undef, %bb.ce ], [ undef, %bb.cf ], [ undef, %bb.cg ], [ undef, %bb.ch ], [ undef, %bb.ci ], [ undef, %bb.cj ], [ undef, %bb.ck ], [ %i.wp, %bb.co ], [ %i.vn, %.critedge ], [ undef, %bb.cq ], [ undef, %bb.bl ], [ undef, %bb.m ] ; 2 uses
  %.sroa.019.2 = phi i8 [ 11, %bb.bk ], [ 23, %bb.bm ], [ 13, %bb.bj ], [ 10, %bb.cn ], [ 37, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit220 ], [ 14, %bb.bn ], [ 15, %bb.bo ], [ 16, %bb.bp ], [ 17, %bb.bq ], [ 18, %bb.br ], [ 19, %bb.bs ], [ 20, %bb.bt ], [ 21, %bb.bu ], [ 22, %bb.bv ], [ 24, %bb.bw ], [ 25, %bb.bx ], [ 26, %bb.by ], [ 27, %bb.bz ], [ 28, %bb.ca ], [ 29, %bb.cb ], [ 30, %bb.cc ], [ 31, %bb.cd ], [ 32, %bb.ce ], [ 33, %bb.cf ], [ 34, %bb.cg ], [ 35, %bb.ch ], [ 36, %bb.ci ], [ 38, %bb.cj ], [ 39, %bb.ck ], [ 11, %bb.co ], [ 11, %.critedge ], [ 40, %bb.cq ], [ 40, %bb.bl ], [ 37, %bb.m ] ; 2 uses
  %i.gm = load i8, ptr %i.ao, align 8, !range !6, !noundef !4
  %i.gn = icmp eq i8 %i.gm, 0
  br i1 %i.gn, label %bb.cs, label %.thread292

bb.t:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !531)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !532)
  %.not.i10.i.i = icmp eq ptr %.promoted, %i.f
  br i1 %.not.i10.i.i, label %.thread292, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.t, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit.i.i
  %i.go = phi ptr [ %i.if, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit.i.i ], [ %.promoted, %bb.t ] ; 8 uses
  %i.gp = load i8, ptr %i.go, align 1, !noalias !533, !noundef !4 ; 7 uses
  %i.gq = icmp sgt i8 %i.gp, -1                   ; 2 uses
  br i1 %i.gq, label %bb.u, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 1 ; 2 uses
  %i.gs = and i8 %i.gp, 31
  %i.gt = zext nneg i8 %i.gs to i32               ; 3 uses
  %i.gu = icmp ne ptr %i.gr, %i.f
  tail call void @llvm.assume(i1 %i.gu)
  %i.gv = load i8, ptr %i.gr, align 1, !noalias !533, !noundef !4
  %i.gw = shl nuw nsw i32 %i.gt, 6
  %i.gx = and i8 %i.gv, 63
  %i.gy = zext nneg i8 %i.gx to i32               ; 2 uses
  %i.gz = or disjoint i32 %i.gw, %i.gy
  %i.ha = icmp samesign ugt i8 %i.gp, -33
  br i1 %i.ha, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i.i.i, label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit.i.i

bb.u:                                             ; preds = %.lr.ph.i.i
  %i.hb = zext nneg i8 %i.gp to i32
  br label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i.i.i
  %i.hc = getelementptr inbounds nuw i8, ptr %i.go, i64 2 ; 2 uses
  %i.hd = icmp ne ptr %i.hc, %i.f
  tail call void @llvm.assume(i1 %i.hd)
  %i.he = load i8, ptr %i.hc, align 1, !noalias !533, !noundef !4
  %i.hf = shl nuw nsw i32 %i.gy, 6
  %i.hg = and i8 %i.he, 63
  %i.hh = zext nneg i8 %i.hg to i32
  %i.hi = or disjoint i32 %i.hf, %i.hh            ; 2 uses
end_hunk_0
