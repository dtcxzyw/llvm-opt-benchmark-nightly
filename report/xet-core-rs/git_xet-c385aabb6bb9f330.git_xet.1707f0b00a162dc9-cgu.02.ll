Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/git_xet-c385aabb6bb9f330.git_xet.1707f0b00a162dc9-cgu.02?download=true
inline.NumInlined: 190
inline.NumDeleted: 107
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvYNtNtNtCskKLDkoKarTP_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCs1YANDSn9Kib_7git_xet:bb.a
  %.promoted65 = load i64, ptr %i.p, align 8      ; 20 uses
  %.promoted66 = load i64, ptr %i.q, align 8
  switch i64 %i.a, label %default.unreachable [
    i64 0, label %.split.us
    i64 1, label %.split.us81
    i64 2, label %.split.us93
  ]

.split.us:                                        ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.v = load i8, ptr %i.u, align 2, !range !236
  %i.w = trunc nuw i8 %i.v to i1
  %.promoted111 = load i8, ptr %i.t, align 1      ; 4 uses
  br i1 %i.w, label %_RNvXsw_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.thread5, label %.lr.ph

.lr.ph:                                           ; preds = %.split.us
  %i.x = icmp eq i64 %.promoted65, 0
  %.not.i.i.us = icmp ult i64 %.promoted65, %i.i  ; 2 uses
  %i.y = icmp eq i64 %.promoted65, %i.i           ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 %.promoted65 ; 6 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -1 ; 2 uses
  %i.ab = icmp ne i64 %.promoted65, 1             ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 -2 ; 2 uses
  %i.ad = icmp ne i64 %.promoted65, 2             ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.z, i64 -3 ; 2 uses
  %i.af = icmp ne i64 %.promoted65, 3             ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.z, i64 -4 ; 2 uses
  br i1 %i.x, label %.lr.ph.split.us.split, label %.lr.ph.split.split.peel

.lr.ph.split.split.peel:                          ; preds = %.lr.ph
  %i.ah = trunc nuw i8 %.promoted111 to i1
  br i1 %.not.i.i.us, label %bb.b, label %.split.i.i.us.peel

.split.i.i.us.peel:                               ; preds = %.lr.ph.split.split.peel
  br i1 %i.y, label %bb.c, label %.split72.us

bb.b:                                             ; preds = %.lr.ph.split.split.peel
  %i.ai = load i8, ptr %i.z, align 1, !alias.scope !237, !noalias !238, !noundef !4
  %i.aj = icmp sgt i8 %i.ai, -65
  br i1 %i.aj, label %bb.c, label %.split72.us

bb.c:                                             ; preds = %bb.b, %.split.i.i.us.peel
  %i.ak = load i8, ptr %i.aa, align 1, !noalias !239, !noundef !4 ; 3 uses
  %i.al = icmp sgt i8 %i.ak, -1
  br i1 %i.al, label %bb.f, label %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit17.i.i.us.peel

_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit17.i.i.us.peel: ; preds = %bb.c
  tail call void @llvm.assume(i1 %i.ab)
  %i.am = load i8, ptr %i.ac, align 1, !noalias !239, !noundef !4 ; 3 uses
  %i.an = and i8 %i.am, 31
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = icmp slt i8 %i.am, -64
  br i1 %i.ap, label %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit19.i.i.us.peel, label %bb.e

_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit19.i.i.us.peel: ; preds = %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit17.i.i.us.peel
  tail call void @llvm.assume(i1 %i.ad)
  %i.aq = load i8, ptr %i.ae, align 1, !noalias !239, !noundef !4 ; 3 uses
  %i.ar = and i8 %i.aq, 15
  %i.as = zext nneg i8 %i.ar to i32
  %i.at = icmp slt i8 %i.aq, -64
  br i1 %i.at, label %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit21.i.i.us.peel, label %bb.d

_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit21.i.i.us.peel: ; preds = %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit19.i.i.us.peel
  tail call void @llvm.assume(i1 %i.af)
  %i.au = load i8, ptr %i.ag, align 1, !noalias !239, !noundef !4
  %i.av = and i8 %i.au, 7
  %i.aw = zext nneg i8 %i.av to i32
  %i.ax = shl nuw nsw i32 %i.aw, 6
  %i.ay = and i8 %i.aq, 63
  %i.az = zext nneg i8 %i.ay to i32
  %i.ba = or disjoint i32 %i.ax, %i.az
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit21.i.i.us.peel, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit19.i.i.us.peel
  %.sroa.010.1.i.i.us.peel = phi i32 [ %i.ba, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit21.i.i.us.peel ], [ %i.as, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit19.i.i.us.peel ]
  %i.bb = shl nuw nsw i32 %.sroa.010.1.i.i.us.peel, 6
  %i.bc = and i8 %i.am, 63
  %i.bd = zext nneg i8 %i.bc to i32
  %i.be = or disjoint i32 %i.bb, %i.bd
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit17.i.i.us.peel
  %.sroa.010.0.i.i.us.peel = phi i32 [ %i.be, %bb.d ], [ %i.ao, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit17.i.i.us.peel ]
  %i.bf = shl nuw nsw i32 %.sroa.010.0.i.i.us.peel, 6
  %i.bg = and i8 %i.ak, 63
  %i.bh = zext nneg i8 %i.bg to i32
  %i.bi = or disjoint i32 %i.bf, %i.bh
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.bj = zext nneg i8 %i.ak to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.4.1.i.ph.i.us.peel = phi i32 [ %i.bj, %bb.f ], [ %i.bi, %bb.e ] ; 2 uses
  %i.bk = icmp samesign ult i32 %.sroa.4.1.i.ph.i.us.peel, 1114112
  tail call void @llvm.assume(i1 %i.bk)
  br i1 %i.ah, label %.lr.ph.split.split, label %.split76.us

.lr.ph.split.us.split:                            ; preds = %.lr.ph
  %i.bl = trunc nuw i8 %.promoted111 to i1
  br i1 %i.bl, label %.lr.ph127, label %.split80.us

.lr.ph127:                                        ; preds = %.lr.ph.split.us.split
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  br label %.split80.us

.lr.ph.split.split:                               ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  br i1 %.not.i.i.us, label %bb.h, label %.split.i.i.us

.split.i.i.us:                                    ; preds = %.lr.ph.split.split
  br i1 %i.y, label %bb.i, label %.split72.us

bb.h:                                             ; preds = %.lr.ph.split.split
  %i.bm = load i8, ptr %i.z, align 1, !alias.scope !237, !noalias !240, !noundef !4
  %i.bn = icmp sgt i8 %i.bm, -65
  br i1 %i.bn, label %bb.i, label %.split72.us

bb.i:                                             ; preds = %bb.h, %.split.i.i.us
  %i.bo = load i8, ptr %i.aa, align 1, !noalias !241, !noundef !4 ; 3 uses
  %i.bp = icmp sgt i8 %i.bo, -1
  br i1 %i.bp, label %bb.l, label %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit17.i.i.us

_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit17.i.i.us: ; preds = %bb.i
  tail call void @llvm.assume(i1 %i.ab)
  %i.bq = load i8, ptr %i.ac, align 1, !noalias !241, !noundef !4 ; 3 uses
  %i.br = and i8 %i.bq, 31
  %i.bs = zext nneg i8 %i.br to i32
  %i.bt = icmp slt i8 %i.bq, -64
  br i1 %i.bt, label %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit19.i.i.us, label %bb.k

_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit19.i.i.us: ; preds = %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit17.i.i.us
  tail call void @llvm.assume(i1 %i.ad)
  %i.bu = load i8, ptr %i.ae, align 1, !noalias !241, !noundef !4 ; 3 uses
  %i.bv = and i8 %i.bu, 15
  %i.bw = zext nneg i8 %i.bv to i32
  %i.bx = icmp slt i8 %i.bu, -64
  br i1 %i.bx, label %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit21.i.i.us, label %bb.j

_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit21.i.i.us: ; preds = %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit19.i.i.us
  tail call void @llvm.assume(i1 %i.af)
  %i.by = load i8, ptr %i.ag, align 1, !noalias !241, !noundef !4
  %i.bz = and i8 %i.by, 7
  %i.ca = zext nneg i8 %i.bz to i32
  %i.cb = shl nuw nsw i32 %i.ca, 6
  %i.cc = and i8 %i.bu, 63
  %i.cd = zext nneg i8 %i.cc to i32
  %i.ce = or disjoint i32 %i.cb, %i.cd
  br label %bb.j

bb.j:                                             ; preds = %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit21.i.i.us, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit19.i.i.us
  %.sroa.010.1.i.i.us = phi i32 [ %i.ce, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit21.i.i.us ], [ %i.bw, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit19.i.i.us ]
  %i.cf = shl nuw nsw i32 %.sroa.010.1.i.i.us, 6
  %i.cg = and i8 %i.bq, 63
  %i.ch = zext nneg i8 %i.cg to i32
  %i.ci = or disjoint i32 %i.cf, %i.ch
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit17.i.i.us
  %.sroa.010.0.i.i.us = phi i32 [ %i.ci, %bb.j ], [ %i.bs, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit17.i.i.us ]
  %i.cj = shl nuw nsw i32 %.sroa.010.0.i.i.us, 6
  %i.ck = and i8 %i.bo, 63
  %i.cl = zext nneg i8 %i.ck to i32
  %i.cm = or disjoint i32 %i.cj, %i.cl
  br label %.split76.us.loopexit

bb.l:                                             ; preds = %bb.i
  %i.cn = zext nneg i8 %i.bo to i32
  br label %.split76.us.loopexit

.split76.us.loopexit:                             ; preds = %bb.l, %bb.k
  %.sroa.4.1.i.ph.i.us = phi i32 [ %i.cn, %bb.l ], [ %i.cm, %bb.k ] ; 2 uses
  %i.co = icmp samesign ult i32 %.sroa.4.1.i.ph.i.us, 1114112
  tail call void @llvm.assume(i1 %i.co)
  br label %.split76.us

.split72.us:                                      ; preds = %.split.i.i.us, %bb.h, %bb.b, %.split.i.i.us.peel
  %.lcssa = phi i8 [ %.promoted111, %.split.i.i.us.peel ], [ %.promoted111, %bb.b ], [ 0, %bb.h ], [ 0, %.split.i.i.us ]
  %i.cp = xor i8 %.lcssa, 1
  store i8 %i.cp, ptr %i.t, align 1, !alias.scope !235
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.i, i64 noundef 0, i64 noundef %.promoted65, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #22, !noalias !240
  unreachable

.split76.us:                                      ; preds = %.split76.us.loopexit, %bb.g
  %.sroa.4.1.i.ph.i.us.lcssa = phi i32 [ %.sroa.4.1.i.ph.i.us.peel, %bb.g ], [ %.sroa.4.1.i.ph.i.us, %.split76.us.loopexit ] ; 3 uses
  store i8 1, ptr %i.t, align 1, !alias.scope !235
  %i.cq = icmp samesign ult i32 %.sroa.4.1.i.ph.i.us.lcssa, 128
  br i1 %i.cq, label %bb.ab, label %bb.z

.split80.us:                                      ; preds = %.lr.ph127, %.lr.ph.split.us.split
  store i8 1, ptr %i.t, align 1, !alias.scope !235
  store i8 1, ptr %i.u, align 2, !alias.scope !235
  br label %_RNvXsw_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.thread5

.split.us81:                                      ; preds = %bb.a
  %i.cr = icmp eq i64 %.promoted65, 0
  br i1 %i.cr, label %_RNvXsw_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.thread5, label %.lr.ph128.preheader

.lr.ph128.preheader:                              ; preds = %.split.us81
  %i.cs = add i64 %.promoted65, -1                ; 2 uses
  %.first_iter = icmp ult i64 %i.cs, %i.i
  br i1 %.first_iter, label %.lr.ph128, label %bb.n

.lr.ph128:                                        ; preds = %.lr.ph128.preheader, %bb.m
  %i.ct = phi i64 [ %i.cu, %bb.m ], [ %.promoted65, %.lr.ph128.preheader ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  %i.cu = add i64 %i.ct, -1                       ; 7 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.cu
  %3 = load i8, ptr %2, align 1, !noalias !240, !noundef !4 ; 2 uses
  %4 = icmp eq i8 %3, %i.s
  br i1 %4, label %bb.m, label %.split87.us.split.us

bb.m:                                             ; preds = %.lr.ph128
  store i64 %i.cu, ptr %i.p, align 8, !alias.scope !235
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %_RNvXsw_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.thread5, label %.lr.ph128

.split87.us.split.us:                             ; preds = %.lr.ph128
  %5 = icmp sgt i8 %3, -65
  br i1 %5, label %_RNvMNtCskKLDkoKarTP_4core3stre19floor_char_boundary.exit.i, label %bb.ac

bb.n:                                             ; preds = %.lr.ph128.preheader
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cs, i64 noundef %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #22, !noalias !240
  unreachable

.split.us93:                                      ; preds = %bb.a
  %i.cw = icmp eq i64 %.promoted, 0
  br i1 %i.cw, label %_RNvXsw_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.thread5, label %.lr.ph129

.lr.ph129:                                        ; preds = %.split.us93
  %i.cx = load i64, ptr %i.r, align 8             ; 2 uses
  %umax53.i.i.us = tail call i64 @llvm.umax.i64(i64 %.promoted65, i64 range(i64 0, -9223372036854775808) %i.m) ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph129, %bb.y
  %i.cy = phi i64 [ %.promoted, %.lr.ph129 ], [ %i.df, %bb.y ] ; 6 uses
  %i.cz = phi i64 [ %.promoted66, %.lr.ph129 ], [ %i.eh, %bb.y ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %i.da = sub i64 %i.cy, %i.m                     ; 2 uses
  %i.db = icmp ult i64 %i.da, %i.i
  br i1 %i.db, label %.lr.ph.i.i.us, label %.loopexit.i

.lr.ph.i.i.us:                                    ; preds = %bb.o
  %invariant.op.i.i.us = sub i64 %i.cy, %.promoted65
  %i.dc = sub i64 %i.cy, %i.cx                    ; 3 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.w, %.lr.ph.i.i.us
  %i.dd = phi i64 [ %i.cz, %.lr.ph.i.i.us ], [ %i.ec, %bb.w ] ; 4 uses
  %i.de = phi i64 [ %i.cz, %.lr.ph.i.i.us ], [ %i.ed, %bb.w ] ; 5 uses
  %i.df = phi i64 [ %i.da, %.lr.ph.i.i.us ], [ %i.ef, %bb.w ] ; 9 uses
  %i.dg = phi i64 [ %i.cy, %.lr.ph.i.i.us ], [ %i.ee, %bb.w ] ; 2 uses
  %.not.i14.i.us = icmp eq i64 %i.cy, %i.dg
  br i1 %.not.i14.i.us, label %bb.q, label %.loopexit.i

bb.q:                                             ; preds = %bb.p
  %i.dh = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.df
  %i.di = load i8, ptr %i.dh, align 1, !alias.scope !243, !noalias !240, !noundef !4
  %i.dj = and i8 %i.di, 63
  %i.dk = zext nneg i8 %i.dj to i64
  %i.dl = shl nuw i64 1, %i.dk
  %i.dm = and i64 %i.dl, %i.o
  %.not19.i.i.us = icmp eq i64 %i.dm, 0
  br i1 %.not19.i.i.us, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %..i.i.i.us = tail call i64 @llvm.umin.i64(i64 %i.de, i64 %.promoted65)
  %.sroa.03.0.i.i.us = select i1 %i.e, i64 %.promoted65, i64 %..i.i.i.us
  %.sroa.03.0.i.fr.i.us = freeze i64 %.sroa.03.0.i.i.us ; 3 uses
  %i.dn = add i64 %.sroa.03.0.i.fr.i.us, -1       ; 2 uses
  %.first_iter.i.i.us = icmp ult i64 %i.dn, %i.m
  %.not20.i.us.i.us231 = icmp eq i64 %.sroa.03.0.i.fr.i.us, 0 ; 2 uses
  br i1 %.first_iter.i.i.us, label %.split.us.i.us.preheader, label %.split.i.us

.split.us.i.us.preheader:                         ; preds = %bb.r
  br i1 %.not20.i.us.i.us231, label %.split39.us.i.us, label %.lr.ph233

.split.i.us:                                      ; preds = %bb.r
  br i1 %.not20.i.us.i.us231, label %.split39.us.i.us, label %.split104.us

.split.us.i.us:                                   ; preds = %.lr.ph233
  %.not20.i.us.i.us = icmp eq i64 %i.do, 0
  br i1 %.not20.i.us.i.us, label %.split39.us.i.us, label %.lr.ph233

.lr.ph233:                                        ; preds = %.split.us.i.us.preheader, %.split.us.i.us
  %.sroa.2.0.i.us.i.us232 = phi i64 [ %i.do, %.split.us.i.us ], [ %.sroa.03.0.i.fr.i.us, %.split.us.i.us.preheader ]
  %i.do = add i64 %.sroa.2.0.i.us.i.us232, -1     ; 5 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !alias.scope !244, !noalias !240, !noundef !4
  %i.dr = add i64 %i.do, %i.df                    ; 2 uses
  %i.ds = icmp ult i64 %i.dr, %i.i
  tail call void @llvm.assume(i1 %i.ds)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.dr
  %i.du = load i8, ptr %i.dt, align 1, !alias.scope !243, !noalias !240, !noundef !4
  %.not22.i.us.i.us = icmp eq i8 %i.dq, %i.du
  br i1 %.not22.i.us.i.us, label %.split.us.i.us, label %.split41.us.i.us

.split41.us.i.us:                                 ; preds = %.lr.ph233
  %.reass.i.i.us = add i64 %i.do, %invariant.op.i.i.us ; 3 uses
  store i64 %.reass.i.i.us, ptr %i.b, align 8, !alias.scope !245
  br i1 %i.e, label %bb.w, label %.sink.split.i.i.us

.split39.us.i.us:                                 ; preds = %.split.us.i.us, %.split.us.i.us.preheader, %.split.i.us
  %.sroa.08.0.i.i.us = select i1 %i.e, i64 %i.m, i64 %i.de ; 2 uses
  %umax.i.i.us = tail call i64 @llvm.umax.i64(i64 %.sroa.08.0.i.i.us, i64 %.promoted65)
  %exitcond.not.i.i.us234.not = icmp ult i64 %.promoted65, %.sroa.08.0.i.i.us
  br i1 %exitcond.not.i.i.us234.not, label %.lr.ph236, label %.split39.us.i.us._crit_edge

bb.s:                                             ; preds = %bb.t
  %i.dv = add nuw i64 %.sroa.09.0.i.i.us235, 1    ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %i.dv, %umax.i.i.us
  br i1 %exitcond.not.i.i.us, label %.split39.us.i.us._crit_edge, label %.lr.ph236

.lr.ph236:                                        ; preds = %.split39.us.i.us, %bb.s
  %.sroa.09.0.i.i.us235 = phi i64 [ %i.dv, %bb.s ], [ %.promoted65, %.split39.us.i.us ] ; 4 uses
  %exitcond54.not.i.i.us = icmp eq i64 %.sroa.09.0.i.i.us235, %umax53.i.i.us
  br i1 %exitcond54.not.i.i.us, label %.split108.us, label %bb.t

bb.t:                                             ; preds = %.lr.ph236
  %i.dw = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.09.0.i.i.us235
  %i.dx = load i8, ptr %i.dw, align 1, !alias.scope !244, !noalias !240, !noundef !4
  %i.dy = add i64 %.sroa.09.0.i.i.us235, %i.df    ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %i.i
  tail call void @llvm.assume(i1 %i.dz)
  %i.ea = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.dy
  %i.eb = load i8, ptr %i.ea, align 1, !alias.scope !243, !noalias !240, !noundef !4
  %.not21.i.i.us = icmp eq i8 %i.dx, %i.eb
  br i1 %.not21.i.i.us, label %bb.s, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i64 %i.dc, ptr %i.b, align 8, !alias.scope !245
  br i1 %i.e, label %bb.w, label %.sink.split.i.i.us

bb.v:                                             ; preds = %bb.q
  store i64 %i.df, ptr %i.b, align 8, !alias.scope !245
  br i1 %i.e, label %bb.w, label %.sink.split.i.i.us

.sink.split.i.i.us:                               ; preds = %bb.v, %bb.u, %.split41.us.i.us
  %.sink75.i.i.us = phi i64 [ %i.cx, %bb.u ], [ %i.m, %.split41.us.i.us ], [ %i.m, %bb.v ] ; 3 uses
  %.ph74.i.i.us = phi i64 [ %i.dc, %bb.u ], [ %.reass.i.i.us, %.split41.us.i.us ], [ %i.df, %bb.v ]
  store i64 %.sink75.i.i.us, ptr %i.q, align 8, !alias.scope !245
  br label %bb.w

bb.w:                                             ; preds = %.sink.split.i.i.us, %bb.v, %bb.u, %.split41.us.i.us
  %i.ec = phi i64 [ %i.dd, %.split41.us.i.us ], [ %i.dd, %bb.v ], [ %i.dd, %bb.u ], [ %.sink75.i.i.us, %.sink.split.i.i.us ]
  %i.ed = phi i64 [ %i.de, %.split41.us.i.us ], [ %i.de, %bb.v ], [ %i.de, %bb.u ], [ %.sink75.i.i.us, %.sink.split.i.i.us ]
  %i.ee = phi i64 [ %.reass.i.i.us, %.split41.us.i.us ], [ %i.df, %bb.v ], [ %i.dc, %bb.u ], [ %.ph74.i.i.us, %.sink.split.i.i.us ] ; 2 uses
  %i.ef = sub i64 %i.ee, %i.m                     ; 2 uses
  %i.eg = icmp ult i64 %i.ef, %i.i
  br i1 %i.eg, label %bb.p, label %.loopexit.i

.split39.us.i.us._crit_edge:                      ; preds = %.split39.us.i.us, %bb.s
  store i64 %i.df, ptr %i.b, align 8, !alias.scope !245
  br i1 %i.e, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.split39.us.i.us._crit_edge
  store i64 %i.m, ptr %i.q, align 8, !alias.scope !245
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.split39.us.i.us._crit_edge
  %i.eh = phi i64 [ %i.m, %bb.x ], [ %i.dd, %.split39.us.i.us._crit_edge ]
  %i.ei = icmp eq i64 %i.df, 0
  br i1 %i.ei, label %_RNvXsw_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.thread5, label %bb.o

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.z:                                             ; preds = %.split76.us
  %i.ej = icmp samesign ult i32 %.sroa.4.1.i.ph.i.us.lcssa, 2048
  br i1 %i.ej, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ek = icmp samesign ult i32 %.sroa.4.1.i.ph.i.us.lcssa, 65536
  %..i = select i1 %i.ek, i64 -3, i64 -4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %.split76.us
  %.sroa.01.0.neg.i = phi i64 [ -2, %bb.z ], [ %..i, %bb.aa ], [ -1, %.split76.us ]
  %i.el = add i64 %.sroa.01.0.neg.i, %.promoted65 ; 2 uses
  store i64 %i.el, ptr %i.p, align 8, !alias.scope !235
  br label %_RNvXsw_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit

bb.ac:                                            ; preds = %.split87.us.split.us
  %i.em = icmp ne i64 %i.cu, 0
  tail call void @llvm.assume(i1 %i.em)
  %i.en = add i64 %i.ct, -2                       ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !alias.scope !246, !noalias !240, !noundef !4
  %i.eq = icmp sgt i8 %i.ep, -65
  br i1 %i.eq, label %_RNvMNtCskKLDkoKarTP_4core3stre19floor_char_boundary.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.er = icmp ugt i64 %i.cu, 1
  tail call void @llvm.assume(i1 %i.er)
  %i.es = add i64 %i.ct, -3                       ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !alias.scope !246, !noalias !240, !noundef !4
  %i.ev = icmp sgt i8 %i.eu, -65
  %i.ew = add i64 %i.ct, -4
  %spec.select.i.i = select i1 %i.ev, i64 %i.es, i64 %i.ew
  br label %_RNvMNtCskKLDkoKarTP_4core3stre19floor_char_boundary.exit.i

_RNvMNtCskKLDkoKarTP_4core3stre19floor_char_boundary.exit.i: ; preds = %bb.ad, %bb.ac, %.split87.us.split.us
  %.sroa.0.0.i13.i = phi i64 [ %i.en, %bb.ac ], [ %spec.select.i.i, %bb.ad ], [ %i.cu, %.split87.us.split.us ] ; 2 uses
  store i64 %.sroa.0.0.i13.i, ptr %i.p, align 8, !alias.scope !235
  br label %_RNvXsw_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit

.split104.us:                                     ; preds = %.split.i.us
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.dn, i64 noundef range(i64 0, -9223372036854775808) %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #22, !noalias !247
  unreachable

.split108.us:                                     ; preds = %.lr.ph236
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax53.i.i.us, i64 noundef range(i64 0, -9223372036854775808) %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #22, !noalias !247
  unreachable

.loopexit.i:                                      ; preds = %bb.o, %bb.w, %bb.p
  %i.ex = phi i64 [ 0, %bb.w ], [ %i.dg, %bb.p ], [ 0, %bb.o ] ; 9 uses
  %.not.i15.i = icmp ult i64 %i.ex, %i.i
  br i1 %.not.i15.i, label %bb.ae, label %_RNvMNtCskKLDkoKarTP_4core3stre19floor_char_boundary.exit18.i

bb.ae:                                            ; preds = %.loopexit.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !alias.scope !248, !noalias !240, !noundef !4
  %i.fa = icmp sgt i8 %i.ez, -65
  br i1 %i.fa, label %_RNvMNtCskKLDkoKarTP_4core3stre19floor_char_boundary.exit18.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fb = icmp ne i64 %i.ex, 0
  tail call void @llvm.assume(i1 %i.fb)
  %i.fc = add i64 %i.ex, -1                       ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !alias.scope !248, !noalias !240, !noundef !4
  %i.ff = icmp sgt i8 %i.fe, -65
  br i1 %i.ff, label %_RNvMNtCskKLDkoKarTP_4core3stre19floor_char_boundary.exit18.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fg = icmp ugt i64 %i.ex, 1
  tail call void @llvm.assume(i1 %i.fg)
  %i.fh = add i64 %i.ex, -2                       ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1, !alias.scope !248, !noalias !240, !noundef !4
  %i.fk = icmp sgt i8 %i.fj, -65
  %i.fl = add i64 %i.ex, -3
  %spec.select.i17.i = select i1 %i.fk, i64 %i.fh, i64 %i.fl
  br label %_RNvMNtCskKLDkoKarTP_4core3stre19floor_char_boundary.exit18.i

_RNvMNtCskKLDkoKarTP_4core3stre19floor_char_boundary.exit18.i: ; preds = %bb.ag, %bb.af, %bb.ae, %.loopexit.i
  %.sroa.0.0.i16.i = phi i64 [ %i.i, %.loopexit.i ], [ %spec.select.i17.i, %bb.ag ], [ %i.ex, %bb.ae ], [ %i.fc, %bb.af ] ; 2 uses
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.ex, i64 %.sroa.0.0.i16.i)
  store i64 %..i.i, ptr %i.b, align 8, !alias.scope !235
  br label %_RNvXsw_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit

_RNvXsw_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit: ; preds = %_RNvMNtCskKLDkoKarTP_4core3stre19floor_char_boundary.exit18.i, %_RNvMNtCskKLDkoKarTP_4core3stre19floor_char_boundary.exit.i, %bb.ab
  %.sroa.12.0 = phi i64 [ %.promoted65, %bb.ab ], [ %i.ct, %_RNvMNtCskKLDkoKarTP_4core3stre19floor_char_boundary.exit.i ], [ %i.cy, %_RNvMNtCskKLDkoKarTP_4core3stre19floor_char_boundary.exit18.i ]
  %.sroa.5.0 = phi i64 [ %i.el, %bb.ab ], [ %.sroa.0.0.i13.i, %_RNvMNtCskKLDkoKarTP_4core3stre19floor_char_boundary.exit.i ], [ %.sroa.0.0.i16.i, %_RNvMNtCskKLDkoKarTP_4core3stre19floor_char_boundary.exit18.i ]
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0, ptr %i.fm, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.12.0, ptr %i.fn, align 8
  br label %_RNvXsw_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.thread5

_RNvXsw_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.thread5: ; preds = %bb.y, %bb.m, %.split.us, %.split.us93, %.split.us81, %.split80.us, %_RNvXsw_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit
  %storemerge = phi i64 [ 1, %_RNvXsw_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit ], [ 0, %.split80.us ], [ 0, %bb.m ], [ 0, %.split.us81 ], [ 0, %.split.us93 ], [ 0, %.split.us ], [ 0, %bb.y ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nonlazybind uwtable
declare void @_RNvXso_NtCsexYYUdYSQU6_5alloc6stringRNtB5_6StringNtNtNtCskKLDkoKarTP_4core3str7pattern7Pattern13into_searcher(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(address) dereferenceable(104), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMs_NtNtNtCsiAynQAjgDuT_10xet_client6common4auth6basicsNtB4_22BearerCredentialHelper3new(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsdCDTHl3mYPb_4http6header3map6BucketNtNtBK_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsdCDTHl3mYPb_4http6header3map3PosENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsdCDTHl3mYPb_4http6header3map6BucketNtNtBR_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdCDTHl3mYPb_4http6header3map3PosENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNvMNtCsexYYUdYSQU6_5alloc6stringNtB5_6String6retainNtB2_10PanicGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsdCDTHl3mYPb_4http6header3map3PosE11extend_withCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef, i16 noundef, i16 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvCskAvCZhvKF0K_11shell_words5quote(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCs1YANDSn9Kib_7git_xet5utils16process_wrapping38run_git_captured_with_input_and_outputRNtNtCsG258MDvU3F_3std4path4PathReAB20_j1_B20_EB6_(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCs1YANDSn9Kib_7git_xet5utils16process_wrappingNtB2_15CapturedCommand5stdin(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 4 dereferenceable(28)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYNtNtCsG258MDvU3F_3std7process10ChildStdinNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 4 dereferenceable(4), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs1YANDSn9Kib_7git_xet5utils16process_wrappingNtB2_15CapturedCommand16wait_with_output(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(28)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreaderINtB2_9BufReaderINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorINtNtB8_3vec3VechEEE13with_capacityCs1YANDSn9Kib_7git_xet(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCs1YANDSn9Kib_7git_xet6errorsNtB3_11GitXetError12config_errorNtNtCsexYYUdYSQU6_5alloc6string6StringEB5_(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCskKLDkoKarTP_4core5sliceSh11starts_withCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1YANDSn9Kib_7git_xet(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsdCDTHl3mYPb_4http6header3map3PosE16into_boxed_sliceCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs12_NtNtCsdCDTHl3mYPb_4http6header3mapNtB6_6Danger7set_red(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @close(i32 noundef) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorINtNtBb_3vec3VechEEENtNtB9_8buf_read7BufRead9read_lineCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCskKLDkoKarTP_4core5sliceSh9ends_withCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsu_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcher3new(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { inlinehint }
attributes #18 = { cold }
attributes #19 = { nounwind }
attributes #20 = { cold noreturn nounwind }
attributes #21 = { noreturn }
attributes #22 = { noinline noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{}
!5 = !{i64 0, i64 2}
!6 = !{i64 0, i64 -9223372036854775807}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = !{i64 -1, i64 -9223372036854775808}
!9 = !{i64 0, i64 3}
!10 = distinct !{!10, i1 true, !"_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectINtNtNtB6_8adapters5chain5ChainINtNtNtB8_5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringEB1g_ENtB2_12IntoIterator9into_iterCs1YANDSn9Kib_7git_xet"}
!11 = distinct !{!11, !10, !"_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectINtNtNtB6_8adapters5chain5ChainINtNtNtB8_5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringEB1g_ENtB2_12IntoIterator9into_iterCs1YANDSn9Kib_7git_xet: argument 1"}
!12 = distinct !{!12, !10, !"_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectINtNtNtB6_8adapters5chain5ChainINtNtNtB8_5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringEB1g_ENtB2_12IntoIterator9into_iterCs1YANDSn9Kib_7git_xet: argument 0"}
!13 = distinct !{!13, i1 true, !"_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringEB10_ENtNtNtB9_6traits8iterator8Iterator4foldB1q_NCINvCskAvCZhvKF0K_11shell_words4joinBO_RB1q_E0ECs1YANDSn9Kib_7git_xet"}
!14 = distinct !{!14, !13, !"_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringEB10_ENtNtNtB9_6traits8iterator8Iterator4foldB1q_NCINvCskAvCZhvKF0K_11shell_words4joinBO_RB1q_E0ECs1YANDSn9Kib_7git_xet: argument 1"}
!15 = distinct !{!15, !13, !"_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringEB10_ENtNtNtB9_6traits8iterator8Iterator4foldB1q_NCINvCskAvCZhvKF0K_11shell_words4joinBO_RB1q_E0ECs1YANDSn9Kib_7git_xet: argument 0"}
!16 = distinct !{!16, !13, !"_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringEB10_ENtNtNtB9_6traits8iterator8Iterator4foldB1q_NCINvCskAvCZhvKF0K_11shell_words4joinBO_RB1q_E0ECs1YANDSn9Kib_7git_xet: argument 2"}
!17 = distinct !{!17, i1 true, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_QNCINvCskAvCZhvKF0K_11shell_words4joinINtNtNtB1z_8adapters5chain5ChainBF_BF_ERBQ_E0ECs1YANDSn9Kib_7git_xet"}
!18 = distinct !{!18, !17, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_QNCINvCskAvCZhvKF0K_11shell_words4joinINtNtNtB1z_8adapters5chain5ChainBF_BF_ERBQ_E0ECs1YANDSn9Kib_7git_xet: argument 1"}
!19 = distinct !{!19, !17, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_QNCINvCskAvCZhvKF0K_11shell_words4joinINtNtNtB1z_8adapters5chain5ChainBF_BF_ERBQ_E0ECs1YANDSn9Kib_7git_xet: argument 0"}
!20 = distinct !{!20, i1 true, !"_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvCskAvCZhvKF0K_11shell_words4joinINtNtNtNtBb_4iter8adapters5chain5ChainINtNtNtBb_5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringEB21_ERB2r_E0INtB7_5FnMutTB2r_B39_EE8call_mutCs1YANDSn9Kib_7git_xet"}
!21 = distinct !{!21, !20, !"_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvCskAvCZhvKF0K_11shell_words4joinINtNtNtNtBb_4iter8adapters5chain5ChainINtNtNtBb_5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringEB21_ERB2r_E0INtB7_5FnMutTB2r_B39_EE8call_mutCs1YANDSn9Kib_7git_xet: argument 2"}
!22 = distinct !{!22, !20, !"_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvCskAvCZhvKF0K_11shell_words4joinINtNtNtNtBb_4iter8adapters5chain5ChainINtNtNtBb_5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringEB21_ERB2r_E0INtB7_5FnMutTB2r_B39_EE8call_mutCs1YANDSn9Kib_7git_xet: argument 1"}
!23 = distinct !{!23, !20, !"_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvCskAvCZhvKF0K_11shell_words4joinINtNtNtNtBb_4iter8adapters5chain5ChainINtNtNtBb_5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringEB21_ERB2r_E0INtB7_5FnMutTB2r_B39_EE8call_mutCs1YANDSn9Kib_7git_xet: argument 0"}
!24 = distinct !{!24, i1 true, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCINvCskAvCZhvKF0K_11shell_words4joinINtNtNtB1z_8adapters5chain5ChainBF_BF_ERBQ_E0ECs1YANDSn9Kib_7git_xet"}
!25 = distinct !{!25, !24, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCINvCskAvCZhvKF0K_11shell_words4joinINtNtNtB1z_8adapters5chain5ChainBF_BF_ERBQ_E0ECs1YANDSn9Kib_7git_xet: argument 1"}
!26 = distinct !{!26, !24, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCINvCskAvCZhvKF0K_11shell_words4joinINtNtNtB1z_8adapters5chain5ChainBF_BF_ERBQ_E0ECs1YANDSn9Kib_7git_xet: argument 0"}
!27 = distinct !{!27, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String3pop"}
!28 = distinct !{!28, !27, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String3pop: argument 0"}
!29 = distinct !{!29, i1 true, !"_RINvNtNtCskKLDkoKarTP_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs1YANDSn9Kib_7git_xet"}
!30 = distinct !{!30, !29, !"_RINvNtNtCskKLDkoKarTP_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs1YANDSn9Kib_7git_xet: argument 0"}
end_hunk_0
