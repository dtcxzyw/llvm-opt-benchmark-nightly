Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.15?download=true
inline.NumInlined: 862
inline.NumDeleted: 412
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_RNvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder16limit_string_len:bb.a
_RNvXNtNtCsj6eKBz9Db1c_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi i64 [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  %i.g = icmp ugt i64 %.sroa.0.0.i, %3
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvXNtNtCsj6eKBz9Db1c_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.h = load i64, ptr %i.b, align 8, !range !20, !noundef !5
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !24, !noundef !5 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.p, label %bb.q, !prof !21

bb.e:                                             ; preds = %_RNvXNtNtCsj6eKBz9Db1c_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1026
  store i64 0, ptr %i.a, align 8, !noalias !1026
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 6 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1026
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 8 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1026
  %i.m = lshr i64 %2, 2
  %i.n = and i64 %2, 3
  %.not.i.i.i.i.i = icmp ne i64 %i.n, 0
  %i.o = zext i1 %.not.i.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i.i = add nuw nsw i64 %i.m, %i.o
  %..i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %3, i64 %.sroa.0.0.i.i.i.i.i)
  %i.p = add nuw nsw i64 %..i.i.i.i.i, 1
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.p)
          to label %.noexc4.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !1026

.noexc4.i:                                        ; preds = %bb.e, %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcuINtNtNtBf_3ops9try_trait17NeverShortCircuituENCINvMB1W_B1T_10wrap_mut_2ucQNCINvNvB14_8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB3E_6StringINtNtB18_7collect6ExtendcE6extendINtNtBb_5chain5ChainIBS_NtNtNtBf_3str4iter5CharsEB5f_EE0E0E0E0Csa5QsYiPB8Gl_5image.exit.i.i.i.i.i.i.i.i
  %i.q = phi i64 [ %i.cp, %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcuINtNtNtBf_3ops9try_trait17NeverShortCircuituENCINvMB1W_B1T_10wrap_mut_2ucQNCINvNvB14_8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB3E_6StringINtNtB18_7collect6ExtendcE6extendINtNtBb_5chain5ChainIBS_NtNtNtBf_3str4iter5CharsEB5f_EE0E0E0E0Csa5QsYiPB8Gl_5image.exit.i.i.i.i.i.i.i.i ], [ %3, %bb.e ] ; 2 uses
  %i.r = phi ptr [ %i.cq, %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcuINtNtNtBf_3ops9try_trait17NeverShortCircuituENCINvMB1W_B1T_10wrap_mut_2ucQNCINvNvB14_8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB3E_6StringINtNtB18_7collect6ExtendcE6extendINtNtBb_5chain5ChainIBS_NtNtNtBf_3str4iter5CharsEB5f_EE0E0E0E0Csa5QsYiPB8Gl_5image.exit.i.i.i.i.i.i.i.i ], [ %1, %bb.e ] ; 6 uses
  %.not.i.not.not.not.i.not.i.i.i.i.i.i.i = icmp eq ptr %i.r, %i.c
  br i1 %.not.i.not.not.not.i.not.i.i.i.i.i.i.i, label %.noexc4.i._RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB5_4TakeNtNtNtBb_3str4iter5CharsENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNvB1n_8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB2B_6StringINtNtB1r_7collect6ExtendcE6extendINtNtB7_5chain5ChainBN_BY_EE0E0ECsa5QsYiPB8Gl_5image.exit.i.i.thread22.i.i_crit_edge, label %bb.f

.noexc4.i._RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB5_4TakeNtNtNtBb_3str4iter5CharsENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNvB1n_8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB2B_6StringINtNtB1r_7collect6ExtendcE6extendINtNtB7_5chain5ChainBN_BY_EE0E0ECsa5QsYiPB8Gl_5image.exit.i.i.thread22.i.i_crit_edge: ; preds = %.noexc4.i
  %.pre = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1027, !noalias !1028
  br label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB5_4TakeNtNtNtBb_3str4iter5CharsENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNvB1n_8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB2B_6StringINtNtB1r_7collect6ExtendcE6extendINtNtB7_5chain5ChainBN_BY_EE0E0ECsa5QsYiPB8Gl_5image.exit.i.i.thread22.i.i

bb.f:                                             ; preds = %.noexc4.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 3 uses
  %i.t = load i8, ptr %i.r, align 1, !noalias !1029, !noundef !5 ; 5 uses
  %i.u = icmp sgt i8 %i.t, -1
  br i1 %i.u, label %.thread.i.i.i.i.i.i.i.i, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i.i.i.i.i.i.i.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.v = and i8 %i.t, 31
  %i.w = zext nneg i8 %i.v to i32                 ; 3 uses
  %i.x = icmp ne ptr %i.s, %i.c
  call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 2 ; 3 uses
  %i.z = load i8, ptr %i.s, align 1, !noalias !1029, !noundef !5
  %i.aa = shl nuw nsw i32 %i.w, 6
  %i.ab = and i8 %i.z, 63
  %i.ac = zext nneg i8 %i.ab to i32               ; 2 uses
  %i.ad = or disjoint i32 %i.aa, %i.ac
  %i.ae = icmp samesign ugt i8 %i.t, -33
  br i1 %i.ae, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i.i.i.i.i.i.i.i, label %bb.g

.thread.i.i.i.i.i.i.i.i:                          ; preds = %bb.f
  %i.af = zext nneg i8 %i.t to i32
  %i.ag = add i64 %i.q, -1
  %i.ah = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1030, !noalias !1031, !noundef !5 ; 2 uses
  %i.ai = icmp sgt i64 %i.ah, -1
  call void @llvm.assume(i1 %i.ai)
  br label %bb.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i.i.i.i.i.i.i.i
  %i.aj = icmp ne ptr %i.y, %i.c
  call void @llvm.assume(i1 %i.aj)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 3 ; 3 uses
  %i.al = load i8, ptr %i.y, align 1, !noalias !1029, !noundef !5
  %i.am = shl nuw nsw i32 %i.ac, 6
  %i.an = and i8 %i.al, 63
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = or disjoint i32 %i.am, %i.ao            ; 2 uses
  %i.aq = shl nuw nsw i32 %i.w, 12
  %i.ar = or disjoint i32 %i.ap, %i.aq
  %i.as = icmp samesign ugt i8 %i.t, -17
  br i1 %i.as, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit16.i.i.i.i.i.i.i.i.i.i, label %bb.g

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit16.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i.i.i.i.i.i.i.i
  %i.at = icmp ne ptr %i.ak, %i.c
  call void @llvm.assume(i1 %i.at)
  %i.au = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.av = load i8, ptr %i.ak, align 1, !noalias !1029, !noundef !5
  %i.aw = shl nuw nsw i32 %i.w, 18
  %i.ax = and i32 %i.aw, 1835008
  %i.ay = shl nuw nsw i32 %i.ap, 6
  %i.az = and i8 %i.av, 63
  %i.ba = zext nneg i8 %i.az to i32
  %i.bb = or disjoint i32 %i.ay, %i.ba
  %i.bc = or disjoint i32 %i.bb, %i.ax
  br label %bb.g

bb.g:                                             ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit16.i.i.i.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i.i.i.i.i.i.i.i
  %i.bd = phi ptr [ %i.ak, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i.i.i.i.i.i.i.i ], [ %i.au, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit16.i.i.i.i.i.i.i.i.i.i ], [ %i.y, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %spec.select.i.ph.i.i.i.i.i.i.i.i = phi i32 [ %i.ar, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i.i.i.i.i.i.i.i ], [ %i.bc, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit16.i.i.i.i.i.i.i.i.i.i ], [ %i.ad, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i.i.i.i.i.i.i.i ] ; 8 uses
  %i.be = add i64 %i.q, -1                        ; 4 uses
  %i.bf = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1030, !noalias !1031, !noundef !5 ; 6 uses
  %i.bg = icmp sgt i64 %i.bf, -1
  call void @llvm.assume(i1 %i.bg)
  %i.bh = icmp samesign ult i32 %spec.select.i.ph.i.i.i.i.i.i.i.i, 128
  br i1 %i.bh, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = icmp samesign ult i32 %spec.select.i.ph.i.i.i.i.i.i.i.i, 2048 ; 2 uses
  %i.bj = icmp samesign ult i32 %spec.select.i.ph.i.i.i.i.i.i.i.i, 65536 ; 2 uses
  %..i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bj, i64 3, i64 4
  %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bi, i64 2, i64 %..i.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc5.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !1026

.noexc5.i:                                        ; preds = %bb.h
  %i.bk = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1030, !noalias !1031, !nonnull !5, !noundef !5
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bf ; 9 uses
  %i.bm = trunc i32 %spec.select.i.ph.i.i.i.i.i.i.i.i to i8
  %i.bn = and i8 %i.bm, 63
  %i.bo = or disjoint i8 %i.bn, -128              ; 3 uses
  %i.bp = lshr i32 %spec.select.i.ph.i.i.i.i.i.i.i.i, 6
  %i.bq = trunc i32 %i.bp to i8                   ; 2 uses
  %i.br = and i8 %i.bq, 63
  %i.bs = or disjoint i8 %i.br, -128              ; 2 uses
  %i.bt = lshr i32 %spec.select.i.ph.i.i.i.i.i.i.i.i, 12
  %i.bu = trunc i32 %i.bt to i8                   ; 2 uses
  %i.bv = and i8 %i.bu, 63
  %i.bw = or disjoint i8 %i.bv, -128
  %i.bx = lshr i32 %spec.select.i.ph.i.i.i.i.i.i.i.i, 18
  %i.by = trunc nuw nsw i32 %i.bx to i8
  %i.bz = or disjoint i8 %i.by, -16
  br i1 %i.bi, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.g, %.thread.i.i.i.i.i.i.i.i
  %i.ca = phi i64 [ %i.ah, %.thread.i.i.i.i.i.i.i.i ], [ %i.bf, %bb.g ] ; 2 uses
  %i.cb = phi i64 [ %i.ag, %.thread.i.i.i.i.i.i.i.i ], [ %i.be, %bb.g ]
  %spec.select.i.ph16.i.i.i.i.i.i.i.i = phi i32 [ %i.af, %.thread.i.i.i.i.i.i.i.i ], [ %spec.select.i.ph.i.i.i.i.i.i.i.i, %bb.g ]
  %i.cc = phi ptr [ %i.s, %.thread.i.i.i.i.i.i.i.i ], [ %i.bd, %bb.g ]
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1)
          to label %.noexc6.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !1026

.noexc6.i:                                        ; preds = %bb.i
  %i.cd = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1030, !noalias !1031, !nonnull !5, !noundef !5
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ca
  %i.cf = trunc nuw nsw i32 %spec.select.i.ph16.i.i.i.i.i.i.i.i to i8
  store i8 %i.cf, ptr %i.ce, align 1, !noalias !1031
  br label %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcuINtNtNtBf_3ops9try_trait17NeverShortCircuituENCINvMB1W_B1T_10wrap_mut_2ucQNCINvNvB14_8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB3E_6StringINtNtB18_7collect6ExtendcE6extendINtNtBb_5chain5ChainIBS_NtNtNtBf_3str4iter5CharsEB5f_EE0E0E0E0Csa5QsYiPB8Gl_5image.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %.noexc5.i
  %i.cg = or disjoint i8 %i.bq, -64
  store i8 %i.cg, ptr %i.bl, align 1, !noalias !1031
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  store i8 %i.bo, ptr %i.ch, align 1, !noalias !1031
  br label %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcuINtNtNtBf_3ops9try_trait17NeverShortCircuituENCINvMB1W_B1T_10wrap_mut_2ucQNCINvNvB14_8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB3E_6StringINtNtB18_7collect6ExtendcE6extendINtNtBb_5chain5ChainIBS_NtNtNtBf_3str4iter5CharsEB5f_EE0E0E0E0Csa5QsYiPB8Gl_5image.exit.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %.noexc5.i
  br i1 %i.bj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ci = or disjoint i8 %i.bu, -32
  store i8 %i.ci, ptr %i.bl, align 1, !noalias !1031
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  store i8 %i.bs, ptr %i.cj, align 1, !noalias !1031
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  store i8 %i.bo, ptr %i.ck, align 1, !noalias !1031
  br label %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcuINtNtNtBf_3ops9try_trait17NeverShortCircuituENCINvMB1W_B1T_10wrap_mut_2ucQNCINvNvB14_8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB3E_6StringINtNtB18_7collect6ExtendcE6extendINtNtBb_5chain5ChainIBS_NtNtNtBf_3str4iter5CharsEB5f_EE0E0E0E0Csa5QsYiPB8Gl_5image.exit.i.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  store i8 %i.bz, ptr %i.bl, align 1, !noalias !1031
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  store i8 %i.bw, ptr %i.cl, align 1, !noalias !1031
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  store i8 %i.bs, ptr %i.cm, align 1, !noalias !1031
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bl, i64 3
  store i8 %i.bo, ptr %i.cn, align 1, !noalias !1031
  br label %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcuINtNtNtBf_3ops9try_trait17NeverShortCircuituENCINvMB1W_B1T_10wrap_mut_2ucQNCINvNvB14_8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB3E_6StringINtNtB18_7collect6ExtendcE6extendINtNtBb_5chain5ChainIBS_NtNtNtBf_3str4iter5CharsEB5f_EE0E0E0E0Csa5QsYiPB8Gl_5image.exit.i.i.i.i.i.i.i.i

_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcuINtNtNtBf_3ops9try_trait17NeverShortCircuituENCINvMB1W_B1T_10wrap_mut_2ucQNCINvNvB14_8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB3E_6StringINtNtB18_7collect6ExtendcE6extendINtNtBb_5chain5ChainIBS_NtNtNtBf_3str4iter5CharsEB5f_EE0E0E0E0Csa5QsYiPB8Gl_5image.exit.i.i.i.i.i.i.i.i: ; preds = %bb.m, %bb.l, %bb.j, %.noexc6.i
  %i.co = phi i64 [ %i.ca, %.noexc6.i ], [ %i.bf, %bb.j ], [ %i.bf, %bb.l ], [ %i.bf, %bb.m ]
  %i.cp = phi i64 [ %i.cb, %.noexc6.i ], [ %i.be, %bb.j ], [ %i.be, %bb.l ], [ %i.be, %bb.m ] ; 2 uses
  %i.cq = phi ptr [ %i.cc, %.noexc6.i ], [ %i.bd, %bb.j ], [ %i.bd, %bb.l ], [ %i.bd, %bb.m ]
  %.sroa.0.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %.noexc6.i ], [ 2, %bb.j ], [ 3, %bb.l ], [ 4, %bb.m ]
  %i.cr = add nuw i64 %.sroa.0.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.co ; 2 uses
  store i64 %i.cr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1030, !noalias !1031
  %i.cs = icmp eq i64 %i.cp, 0
  br i1 %i.cs, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB5_4TakeNtNtNtBb_3str4iter5CharsENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNvB1n_8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB2B_6StringINtNtB1r_7collect6ExtendcE6extendINtNtB7_5chain5ChainBN_BY_EE0E0ECsa5QsYiPB8Gl_5image.exit.i.i.thread22.i.i, label %.noexc4.i

_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB5_4TakeNtNtNtBb_3str4iter5CharsENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNvB1n_8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB2B_6StringINtNtB1r_7collect6ExtendcE6extendINtNtB7_5chain5ChainBN_BY_EE0E0ECsa5QsYiPB8Gl_5image.exit.i.i.thread22.i.i: ; preds = %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcuINtNtNtBf_3ops9try_trait17NeverShortCircuituENCINvMB1W_B1T_10wrap_mut_2ucQNCINvNvB14_8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB3E_6StringINtNtB18_7collect6ExtendcE6extendINtNtBb_5chain5ChainIBS_NtNtNtBf_3str4iter5CharsEB5f_EE0E0E0E0Csa5QsYiPB8Gl_5image.exit.i.i.i.i.i.i.i.i, %.noexc4.i._RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB5_4TakeNtNtNtBb_3str4iter5CharsENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNvB1n_8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB2B_6StringINtNtB1r_7collect6ExtendcE6extendINtNtB7_5chain5ChainBN_BY_EE0E0ECsa5QsYiPB8Gl_5image.exit.i.i.thread22.i.i_crit_edge
  %i.ct = phi i64 [ %.pre, %.noexc4.i._RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB5_4TakeNtNtNtBb_3str4iter5CharsENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNvB1n_8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB2B_6StringINtNtB1r_7collect6ExtendcE6extendINtNtB7_5chain5ChainBN_BY_EE0E0ECsa5QsYiPB8Gl_5image.exit.i.i.thread22.i.i_crit_edge ], [ %i.cr, %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcuINtNtNtBf_3ops9try_trait17NeverShortCircuituENCINvMB1W_B1T_10wrap_mut_2ucQNCINvNvB14_8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB3E_6StringINtNtB18_7collect6ExtendcE6extendINtNtBb_5chain5ChainIBS_NtNtNtBf_3str4iter5CharsEB5f_EE0E0E0E0Csa5QsYiPB8Gl_5image.exit.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.cu = icmp sgt i64 %i.ct, -1
  call void @llvm.assume(i1 %i.cu)
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1)
          to label %.noexc9.i unwind label %.loopexit.i, !noalias !1026

.noexc9.i:                                        ; preds = %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB5_4TakeNtNtNtBb_3str4iter5CharsENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNvB1n_8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB2B_6StringINtNtB1r_7collect6ExtendcE6extendINtNtB7_5chain5ChainBN_BY_EE0E0ECsa5QsYiPB8Gl_5image.exit.i.i.thread22.i.i
  %i.cv = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1027, !noalias !1028, !nonnull !5, !noundef !5
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.ct
  store i8 46, ptr %i.cw, align 1, !noalias !1028
  %i.cx = add nuw i64 %i.ct, 1                    ; 3 uses
  store i64 %i.cx, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1027, !noalias !1028
  %4 = icmp sgt i64 %i.cx, -1
  call void @llvm.assume(i1 %4)
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1)
          to label %.noexc9.i.1 unwind label %.loopexit.i, !noalias !1026

.noexc9.i.1:                                      ; preds = %.noexc9.i
  %i.cy = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1027, !noalias !1028, !nonnull !5, !noundef !5
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cx
  store i8 46, ptr %i.cz, align 1, !noalias !1028
  %i.da = add nuw i64 %i.ct, 2                    ; 3 uses
  store i64 %i.da, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1027, !noalias !1028
  %5 = icmp sgt i64 %i.da, -1
  call void @llvm.assume(i1 %5)
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1)
          to label %.noexc9.i.2 unwind label %.loopexit.i, !noalias !1026

.noexc9.i.2:                                      ; preds = %.noexc9.i.1
  %i.db = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1027, !noalias !1028, !nonnull !5, !noundef !5
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.da
  store i8 46, ptr %i.dc, align 1, !noalias !1028
  %i.dd = add nuw i64 %i.ct, 3
  store i64 %i.dd, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1027, !noalias !1028
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !1032
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1026
  br label %bb.t

.loopexit.i:                                      ; preds = %.noexc9.i.1, %.noexc9.i, %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB5_4TakeNtNtNtBb_3str4iter5CharsENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNvB1n_8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB2B_6StringINtNtB1r_7collect6ExtendcE6extendINtNtB7_5chain5ChainBN_BY_EE0E0ECsa5QsYiPB8Gl_5image.exit.i.i.thread22.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.i, %bb.h
  %lpad.loopexit10.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %bb.e
  %lpad.loopexit.split-lp11.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit10.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp11.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #31
          to label %bb.o unwind label %bb.n, !noalias !1026

bb.n:                                             ; preds = %.loopexit.split-lp.i
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1026
  unreachable

bb.o:                                             ; preds = %.loopexit.split-lp.i
  resume { ptr, i32 } %lpad.phi.i

bb.p:                                             ; preds = %bb.d
  %i.df = load i64, ptr %i.l, align 8
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.df) #32
  unreachable

bb.q:                                             ; preds = %bb.d
  %i.dg = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.dh = icmp ule i64 %2, %i.k
  tail call void @llvm.assume(i1 %i.dh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.s, %bb.q
  store i64 %i.k, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dg, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dg, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %bb.r

bb.t:                                             ; preds = %bb.r, %.noexc9.i.2
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder21parse_dimensions_line(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 2 uses
  %.sroa.4167 = alloca [31 x i8], align 1         ; 2 uses
  %i.k = alloca [32 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [64 x i8], align 8                ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %2
  store i64 0, ptr %i.m, align 8
  %.sroa.4187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %2, ptr %.sroa.4187.0..sroa_idx, align 8
  %.sroa.5188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %1, ptr %.sroa.5188.0..sroa_idx, align 8
  %.sroa.5188.sroa.4.0..sroa.5188.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 %2, ptr %.sroa.5188.sroa.4.0..sroa.5188.0..sroa_idx.sroa_idx, align 8
  %.sroa.5188.sroa.5.0..sroa.5188.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr %1, ptr %.sroa.5188.sroa.5.0..sroa.5188.0..sroa_idx.sroa_idx, align 8
  %.sroa.5188.sroa.6.0..sroa.5188.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store ptr %i.n, ptr %.sroa.5188.sroa.6.0..sroa.5188.0..sroa_idx.sroa_idx, align 8
  %.sroa.5188.sroa.7.0..sroa.5188.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store i64 0, ptr %.sroa.5188.sroa.7.0..sroa.5188.0..sroa_idx.sroa_idx, align 8
  %.sroa.6189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store i8 1, ptr %.sroa.6189.0..sroa_idx, align 8
  %.sroa.7190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 57
  store i8 0, ptr %.sroa.7190.0..sroa_idx, align 1
  %i.o = call fastcc { ptr, i64 } @_RINvYINtNtNtCsj6eKBz9Db1c_4core3str4iter5SplitNtB8_12IsWhitespaceENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB12_4find5checkReQNtB8_10IsNotEmptyE0INtNtNtBa_3ops12control_flow11ControlFlowB2d_EECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(64) %i.m) #34 ; 2 uses
  %i.p = extractvalue { ptr, i64 } %i.o, 0        ; 3 uses
  %i.q = extractvalue { ptr, i64 } %i.o, 1        ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = call fastcc { ptr, i64 } @_RINvYINtNtNtCsj6eKBz9Db1c_4core3str4iter5SplitNtB8_12IsWhitespaceENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB12_4find5checkReQNtB8_10IsNotEmptyE0INtNtNtBa_3ops12control_flow11ControlFlowB2d_EECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(64) %i.m) #34 ; 2 uses
  %i.s = extractvalue { ptr, i64 } %i.r, 0        ; 2 uses
  %i.t = extractvalue { ptr, i64 } %i.r, 1
  %.not296 = icmp eq ptr %i.s, null
  br i1 %.not296, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 7, ptr %i.f, align 8
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr null, ptr %.sroa.522.0..sroa_idx, align 8
  %.sroa.623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 4, ptr %.sroa.623.0..sroa_idx, align 8
  call void @_RNvXs_NtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoderNtNtBa_5error10ImageErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtB4_12DecoderErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.af

bb.d:                                             ; preds = %bb.b
  %i.u = call fastcc { ptr, i64 } @_RINvYINtNtNtCsj6eKBz9Db1c_4core3str4iter5SplitNtB8_12IsWhitespaceENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB12_4find5checkReQNtB8_10IsNotEmptyE0INtNtNtBa_3ops12control_flow11ControlFlowB2d_EECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(64) %i.m) #34 ; 2 uses
  %i.v = extractvalue { ptr, i64 } %i.u, 0        ; 3 uses
  %i.w = extractvalue { ptr, i64 } %i.u, 1        ; 2 uses
  %.not297 = icmp eq ptr %i.v, null
  br i1 %.not297, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 7, ptr %i.e, align 8
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.552.0..sroa_idx, align 8
  %.sroa.653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 4, ptr %.sroa.653.0..sroa_idx, align 8
  call void @_RNvXs_NtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoderNtNtBa_5error10ImageErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtB4_12DecoderErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.af

bb.f:                                             ; preds = %bb.d
  %i.x = call fastcc { ptr, i64 } @_RINvYINtNtNtCsj6eKBz9Db1c_4core3str4iter5SplitNtB8_12IsWhitespaceENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB12_4find5checkReQNtB8_10IsNotEmptyE0INtNtNtBa_3ops12control_flow11ControlFlowB2d_EECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(64) %i.m) #34 ; 2 uses
  %i.y = extractvalue { ptr, i64 } %i.x, 0        ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.x, 1
  %.not298 = icmp eq ptr %i.y, null
  br i1 %.not298, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 7, ptr %i.d, align 8
  %.sroa.582.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.582.0..sroa_idx, align 8
  %.sroa.683.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 4, ptr %.sroa.683.0..sroa_idx, align 8
  call void @_RNvXs_NtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoderNtNtBa_5error10ImageErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtB4_12DecoderErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.af

bb.h:                                             ; preds = %bb.f
  br i1 %3, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 7, ptr %i.c, align 8
  %.sroa.5112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 3 to ptr), ptr %.sroa.5112.0..sroa_idx, align 8
  %.sroa.6113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 4, ptr %.sroa.6113.0..sroa_idx, align 8
  call void @_RNvXs_NtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoderNtNtBa_5error10ImageErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtB4_12DecoderErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.af

bb.j:                                             ; preds = %bb.k, %bb.h
  %i.aa = icmp eq i64 %i.q, 2
  br i1 %i.aa, label %bb.m, label %bb.n

bb.k:                                             ; preds = %bb.h
  %i.ab = call fastcc { ptr, i64 } @_RINvYINtNtNtCsj6eKBz9Db1c_4core3str4iter5SplitNtB8_12IsWhitespaceENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB12_4find5checkReQNtB8_10IsNotEmptyE0INtNtNtBa_3ops12control_flow11ControlFlowB2d_EECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(64) %i.m) #34
  %i.ac = extractvalue { ptr, i64 } %i.ab, 0
  %.not299 = icmp eq ptr %i.ac, null
  br i1 %.not299, label %bb.j, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 4, ptr %i.ad, align 8
  store i8 8, ptr %i.l, align 8
  call void @_RNvXs_NtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoderNtNtBa_5error10ImageErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtB4_12DecoderErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.af

end_hunk_0
