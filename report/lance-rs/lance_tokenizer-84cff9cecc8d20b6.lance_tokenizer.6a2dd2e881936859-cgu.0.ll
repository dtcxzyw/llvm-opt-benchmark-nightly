Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_tokenizer-84cff9cecc8d20b6.lance_tokenizer.6a2dd2e881936859-cgu.0?download=true
inline.NumInlined: 783
inline.NumDeleted: 427
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter13split_segment:bb.a
  %i.fa = icmp samesign ult i32 %i.em, 192
  br i1 %i.fa, label %_RNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter11is_boundary.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fb = invoke noundef zeroext i1 @_RNvNtNtNtCscI6d9CVNmLh_4core7unicode12unicode_data9uppercase6lookup(i32 noundef %i.em)
          to label %.noexc24 unwind label %.loopexit.split-lp.loopexit

.noexc24:                                         ; preds = %bb.ag
  %i.fc = icmp samesign ult i64 %.sroa.09.046, %i.bs
  %or.cond = select i1 %i.fb, i1 %i.fc, i1 false
  br i1 %or.cond, label %bb.ai, label %_RNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter11is_boundary.exit.thread

bb.ah:                                            ; preds = %bb.ae
  %.old = icmp samesign ult i64 %.sroa.09.046, %i.bs
  br i1 %.old, label %bb.ai, label %_RNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter11is_boundary.exit.thread

bb.ai:                                            ; preds = %.noexc24, %bb.ah
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %.sroa.6.0.copyload.pre, i64 %i.eh
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load i32, ptr %i.fe, align 8, !range !10, !alias.scope !863, !noundef !3 ; 3 uses
  %i.fg = add nsw i32 %i.ff, -97
  %or.cond8.i = icmp ult i32 %i.fg, 26
  br i1 %or.cond8.i, label %_RNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter11is_boundary.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fh = icmp samesign ult i32 %i.ff, 170
  br i1 %i.fh, label %_RNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter11is_boundary.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fi = invoke noundef zeroext i1 @_RNvNtNtNtCscI6d9CVNmLh_4core7unicode12unicode_data9lowercase6lookup(i32 noundef %i.ff)
          to label %.noexc25 unwind label %.loopexit.split-lp.loopexit

.noexc25:                                         ; preds = %bb.ak
  br i1 %i.fi, label %_RNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter11is_boundary.exit, label %_RNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter11is_boundary.exit.thread

.loopexit.split-lp.loopexit:                      ; preds = %bb.x, %bb.ab, %bb.ad, %bb.ag, %bb.ak, %bb.ao
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.s
  %lpad.loopexit.split-lp51 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit
  %.sroa.0.0.copyload80 = phi i64 [ %.sroa.0.0.copyload.pre, %.loopexit.split-lp.loopexit ], [ %.sroa.0.0.copyload81, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.sroa.6.0.copyload78 = phi ptr [ %.sroa.6.0.copyload.pre, %.loopexit.split-lp.loopexit ], [ %.sroa.6.0.copyload79, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp51, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.fj = icmp eq i64 %.sroa.0.0.copyload80, 0
  br i1 %i.fj, label %common.resume, label %bb.al

bb.al:                                            ; preds = %.loopexit.split-lp
  %i.fk = shl nuw i64 %.sroa.0.0.copyload80, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload78) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload78, i64 noundef %i.fk, i64 noundef range(i64 1, -9223372036854775807) 8) #29
  br label %common.resume

bb.am:                                            ; preds = %._crit_edge, %bb.s
  %i.fl = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !alias.scope !862, !nonnull !3, !noundef !3
  %i.fn = getelementptr inbounds nuw [16 x i8], ptr %i.fm, i64 %i.ee ; 2 uses
  store i64 %.sroa.03.0.lcssa, ptr %i.fn, align 8, !noalias !862
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  store i64 %3, ptr %i.fo, align 8, !noalias !862
  %i.fp = add i64 %i.ee, 1
  store i64 %i.fp, ptr %i.ed, align 8, !alias.scope !862
  %i.fq = icmp eq i64 %.sroa.0.0.copyload81, 0
  br i1 %i.fq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter8CharInfoEEB1c_.exit26, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fr = shl nuw i64 %.sroa.0.0.copyload81, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload79) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload79, i64 noundef %i.fr, i64 noundef range(i64 1, -9223372036854775807) 8) #29
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter8CharInfoEEB1c_.exit26

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter8CharInfoEEB1c_.exit26: ; preds = %bb.an, %bb.am, %bb.a
  ret void

_RNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter11is_boundary.exit.thread: ; preds = %bb.y, %.noexc25, %bb.ah, %bb.aj, %.noexc24, %.noexc23, %bb.ac, %bb.af, %bb.ap
  %.sroa.03.1 = phi i64 [ %i.ga, %bb.ap ], [ %.sroa.03.047, %bb.af ], [ %.sroa.03.047, %bb.ac ], [ %.sroa.03.047, %.noexc23 ], [ %.sroa.03.047, %.noexc24 ], [ %.sroa.03.047, %bb.aj ], [ %.sroa.03.047, %bb.ah ], [ %.sroa.03.047, %.noexc25 ], [ %.sroa.03.047, %bb.y ] ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.09.046, %i.bs
  br i1 %exitcond.not, label %._crit_edge, label %bb.t

_RNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter11is_boundary.exit: ; preds = %bb.ai, %.noexc25, %.noexc22, %bb.z, %bb.v
  %i.fs = load i64, ptr %i.ei, align 8, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !864)
  %i.ft = load i64, ptr %i.eb, align 8, !alias.scope !864, !noundef !3 ; 3 uses
  %i.fu = load i64, ptr %5, align 8, !range !7, !alias.scope !864, !noundef !3
  %i.fv = icmp eq i64 %i.ft, %i.fu
  br i1 %i.fv, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_RNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter11is_boundary.exit
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecTjjEE8grow_oneCs97bFUy425Ar_15lance_tokenizer(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.ap unwind label %.loopexit.split-lp.loopexit

bb.ap:                                            ; preds = %bb.ao, %_RNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter11is_boundary.exit
  %i.fw = load ptr, ptr %i.ec, align 8, !alias.scope !864, !nonnull !3, !noundef !3
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %i.fw, i64 %i.ft ; 2 uses
  store i64 %.sroa.03.047, ptr %i.fx, align 8, !noalias !864
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store i64 %i.fs, ptr %i.fy, align 8, !noalias !864
  %i.fz = add i64 %i.ft, 1
  store i64 %i.fz, ptr %i.eb, align 8, !alias.scope !864
  %i.ga = load i64, ptr %i.ei, align 8, !noundef !3
  br label %_RNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter11is_boundary.exit.thread
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter16split_identifier(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 4 uses
  %i.e = icmp samesign eq i64 %2, 0
  br i1 %i.e, label %.thread.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.i
  %.sroa.69.027 = phi i64 [ %.sroa.69.1, %bb.i ], [ undef, %bb.a ] ; 2 uses
  %.sroa.06.026 = phi i64 [ %.sroa.06.1, %bb.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.0.025 = phi ptr [ %.sroa.0.1, %bb.i ], [ %1, %bb.a ] ; 6 uses
  %.sroa.10.024 = phi i64 [ %i.at, %bb.i ], [ 0, %bb.a ] ; 3 uses
  %i.f = ptrtoint ptr %.sroa.0.025 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.025, i64 1 ; 3 uses
  %i.h = load i8, ptr %.sroa.0.025, align 1, !noalias !869, !noundef !3 ; 5 uses
  %i.i = icmp sgt i8 %i.h, -1
  br i1 %i.i, label %bb.b, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit12.i.i

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit12.i.i: ; preds = %.lr.ph
  %i.j = and i8 %i.h, 31
  %i.k = zext nneg i8 %i.j to i32                 ; 3 uses
  %i.l = icmp ne ptr %i.g, %i.d
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.025, i64 2 ; 3 uses
  %i.n = load i8, ptr %i.g, align 1, !noalias !869, !noundef !3
  %i.o = shl nuw nsw i32 %i.k, 6
  %i.p = and i8 %i.n, 63
  %i.q = zext nneg i8 %i.p to i32                 ; 2 uses
  %i.r = or disjoint i32 %i.o, %i.q
  %i.s = icmp samesign ugt i8 %i.h, -33
  br i1 %i.s, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit14.i.i, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.t = zext nneg i8 %i.h to i32
  br label %bb.d

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit14.i.i: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit12.i.i
  %i.u = icmp ne ptr %i.m, %i.d
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.025, i64 3 ; 3 uses
  %i.w = load i8, ptr %i.m, align 1, !noalias !869, !noundef !3
  %i.x = shl nuw nsw i32 %i.q, 6
  %i.y = and i8 %i.w, 63
  %i.z = zext nneg i8 %i.y to i32
  %i.aa = or disjoint i32 %i.x, %i.z              ; 2 uses
  %i.ab = shl nuw nsw i32 %i.k, 12
  %i.ac = or disjoint i32 %i.aa, %i.ab
  %i.ad = icmp samesign ugt i8 %i.h, -17
  br i1 %i.ad, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit16.i.i, label %bb.d

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit16.i.i: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit14.i.i
  %i.ae = icmp ne ptr %i.v, %i.d
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.025, i64 4
  %i.ag = load i8, ptr %i.v, align 1, !noalias !869, !noundef !3
  %i.ah = shl nuw nsw i32 %i.k, 18
  %i.ai = and i32 %i.ah, 1835008
  %i.aj = shl nuw nsw i32 %i.aa, 6
  %i.ak = and i8 %i.ag, 63
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = or disjoint i32 %i.aj, %i.al
  %i.an = or disjoint i32 %i.am, %i.ai
  br label %bb.d

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.h, %bb.e
  %lpad.loopexit.split-lp33 = landingpad { ptr, i32 }
          cleanup
  %.val = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ao = icmp eq i64 %.val, 0
  br i1 %i.ao, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTjjEEECs97bFUy425Ar_15lance_tokenizer.exit, label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val17 = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3
  %i.ap = shl nuw i64 %.val, 4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17, i64 noundef %i.ap, i64 noundef range(i64 1, -9223372036854775807) 8) #29
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTjjEEECs97bFUy425Ar_15lance_tokenizer.exit

bb.d:                                             ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit12.i.i, %bb.b, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit14.i.i, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit16.i.i
  %.sroa.0.1 = phi ptr [ %i.g, %bb.b ], [ %i.af, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit16.i.i ], [ %i.v, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit14.i.i ], [ %i.m, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit12.i.i ] ; 3 uses
  %.sroa.4.0.i.ph.i = phi i32 [ %i.t, %bb.b ], [ %i.an, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit16.i.i ], [ %i.ac, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit14.i.i ], [ %i.r, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit12.i.i ] ; 2 uses
  %i.aq = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 1114112
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = ptrtoint ptr %.sroa.0.1 to i64
  %i.as = sub i64 %.sroa.10.024, %i.f
  %i.at = add i64 %i.as, %i.ar
  %cond = icmp eq i32 %.sroa.4.0.i.ph.i, 95
  br i1 %cond, label %bb.f, label %bb.g

.thread:                                          ; preds = %bb.i
  %4 = trunc nuw i64 %.sroa.06.1 to i1
  br i1 %4, label %bb.e, label %.thread.thread

bb.e:                                             ; preds = %.thread
  invoke fastcc void @_RNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter13split_segment(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %.sroa.69.1, i64 noundef %2, i1 noundef zeroext %3, ptr noalias noundef align 8 dereferenceable(24) %i.a)
          to label %.thread.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread.thread:                                   ; preds = %bb.a, %bb.e, %.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.f:                                             ; preds = %bb.d
  %i.au = trunc nuw i64 %.sroa.06.026 to i1
  br i1 %i.au, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.d
  %.not15 = icmp eq i64 %.sroa.06.026, 1
  %spec.select16 = select i1 %.not15, i64 %.sroa.69.027, i64 %.sroa.10.024
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  invoke fastcc void @_RNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter13split_segment(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %.sroa.69.027, i64 noundef %.sroa.10.024, i1 noundef zeroext %3, ptr noalias noundef align 8 dereferenceable(24) %i.a)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.sroa.06.1 = phi i64 [ 0, %bb.f ], [ 1, %bb.g ], [ 0, %bb.h ] ; 2 uses
  %.sroa.69.1 = phi i64 [ undef, %bb.f ], [ %spec.select16, %bb.g ], [ undef, %bb.h ] ; 2 uses
  %i.av = icmp eq ptr %.sroa.0.1, %i.d
  br i1 %i.av, label %.thread, label %.lr.ph

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTjjEEECs97bFUy425Ar_15lance_tokenizer.exit: ; preds = %bb.c, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp33
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter18is_identifier_text(ptr noalias noundef nonnull readonly captures(address) %0, i64 noundef %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 4 uses
  %.not.i12.not.i = icmp samesign eq i64 %1, 0
  br i1 %.not.i12.not.i, label %_RINvYNtNtNtCscI6d9CVNmLh_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_3any5checkcNCNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter18is_identifier_text0E0INtNtNtB9_3ops12control_flow11ControlFlowuEEB1X_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.backedge.i
  %i.b = phi ptr [ %i.ak, %.backedge.i ], [ %0, %bb.a ] ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  %i.d = load i8, ptr %i.b, align 1, !noalias !876, !noundef !3 ; 5 uses
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.b, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit12.i.i.i

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit12.i.i.i: ; preds = %.lr.ph.i
  %i.f = and i8 %i.d, 31
  %i.g = zext nneg i8 %i.f to i32                 ; 3 uses
  %i.h = icmp ne ptr %i.c, %i.a
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 3 uses
  %i.j = load i8, ptr %i.c, align 1, !noalias !876, !noundef !3
  %i.k = shl nuw nsw i32 %i.g, 6
  %i.l = and i8 %i.j, 63
  %i.m = zext nneg i8 %i.l to i32                 ; 2 uses
  %i.n = or disjoint i32 %i.k, %i.m
  %i.o = icmp samesign ugt i8 %i.d, -33
  br i1 %i.o, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit14.i.i.i, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.p = zext nneg i8 %i.d to i32
  br label %bb.c

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit12.i.i.i
  %i.q = icmp ne ptr %i.i, %i.a
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 3 uses
  %i.s = load i8, ptr %i.i, align 1, !noalias !876, !noundef !3
  %i.t = shl nuw nsw i32 %i.m, 6
  %i.u = and i8 %i.s, 63
  %i.v = zext nneg i8 %i.u to i32
  %i.w = or disjoint i32 %i.t, %i.v               ; 2 uses
  %i.x = shl nuw nsw i32 %i.g, 12
  %i.y = or disjoint i32 %i.w, %i.x
  %i.z = icmp samesign ugt i8 %i.d, -17
  br i1 %i.z, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit16.i.i.i, label %bb.c

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit14.i.i.i
  %i.aa = icmp ne ptr %i.r, %i.a
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ac = load i8, ptr %i.r, align 1, !noalias !876, !noundef !3
  %i.ad = shl nuw nsw i32 %i.g, 18
  %i.ae = and i32 %i.ad, 1835008
  %i.af = shl nuw nsw i32 %i.w, 6
  %i.ag = and i8 %i.ac, 63
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = or disjoint i32 %i.af, %i.ah
  %i.aj = or disjoint i32 %i.ai, %i.ae
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit16.i.i.i, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit14.i.i.i, %bb.b, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit12.i.i.i
  %i.ak = phi ptr [ %i.r, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit14.i.i.i ], [ %i.ab, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit16.i.i.i ], [ %i.i, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit12.i.i.i ], [ %i.c, %bb.b ] ; 2 uses
  %spec.select.i.ph.i = phi i32 [ %i.y, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit14.i.i.i ], [ %i.aj, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit16.i.i.i ], [ %i.n, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit12.i.i.i ], [ %i.p, %bb.b ] ; 7 uses
  %i.al = icmp eq i32 %spec.select.i.ph.i, 95
  br i1 %i.al, label %_RINvYNtNtNtCscI6d9CVNmLh_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_3any5checkcNCNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter18is_identifier_text0E0INtNtNtB9_3ops12control_flow11ControlFlowuEEB1X_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = and i32 %spec.select.i.ph.i, 2097119
  %i.an = add nsw i32 %i.am, -65
  %or.cond4.i.i.i.i = icmp ult i32 %i.an, 26
  %i.ao = add nsw i32 %spec.select.i.ph.i, -48
  %or.cond2.i.i.i.i = icmp ult i32 %i.ao, 10
  %or.cond5.i.i.i.i = select i1 %or.cond4.i.i.i.i, i1 true, i1 %or.cond2.i.i.i.i
  br i1 %or.cond5.i.i.i.i, label %_RINvYNtNtNtCscI6d9CVNmLh_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_3any5checkcNCNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter18is_identifier_text0E0INtNtNtB9_3ops12control_flow11ControlFlowuEEB1X_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = icmp samesign ult i32 %spec.select.i.ph.i, 170
  br i1 %i.ap, label %.backedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = tail call noundef zeroext i1 @_RNvNtNtNtCscI6d9CVNmLh_4core7unicode12unicode_data10alphabetic11lookup_slow(i32 noundef range(i32 0, 1114112) %spec.select.i.ph.i), !noalias !877
  br i1 %i.aq, label %_RINvYNtNtNtCscI6d9CVNmLh_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_3any5checkcNCNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter18is_identifier_text0E0INtNtNtB9_3ops12control_flow11ControlFlowuEEB1X_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = icmp samesign ugt i32 %spec.select.i.ph.i, 177
  br i1 %i.ar, label %.split.i, label %.backedge.i

.split.i:                                         ; preds = %bb.g
  %i.as = tail call noundef zeroext i1 @_RNvNtNtNtCscI6d9CVNmLh_4core7unicode12unicode_data1n11lookup_slow(i32 noundef range(i32 0, 1114112) %spec.select.i.ph.i), !noalias !877
  br i1 %i.as, label %_RINvYNtNtNtCscI6d9CVNmLh_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_3any5checkcNCNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter18is_identifier_text0E0INtNtNtB9_3ops12control_flow11ControlFlowuEEB1X_.exit, label %.backedge.i

.backedge.i:                                      ; preds = %.split.i, %bb.g, %bb.e
  %.not.i.not.i = icmp eq ptr %i.ak, %i.a
  br i1 %.not.i.not.i, label %_RINvYNtNtNtCscI6d9CVNmLh_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_3any5checkcNCNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter18is_identifier_text0E0INtNtNtB9_3ops12control_flow11ControlFlowuEEB1X_.exit, label %.lr.ph.i

_RINvYNtNtNtCscI6d9CVNmLh_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_3any5checkcNCNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter18is_identifier_text0E0INtNtNtB9_3ops12control_flow11ControlFlowuEEB1X_.exit: ; preds = %bb.c, %bb.d, %bb.f, %.split.i, %.backedge.i, %bb.a
  %.not.i.lcssa.i = phi i1 [ false, %bb.a ], [ false, %.backedge.i ], [ true, %.split.i ], [ true, %bb.c ], [ true, %bb.f ], [ true, %bb.d ]
  ret i1 %.not.i.lcssa.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs97bFUy425Ar_15lance_tokenizer3icu10push_token(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %3, %4
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp ugt i64 %3, %4
  br i1 %.not.i, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = icmp eq i64 %3, 0
  br i1 %i.b, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not5.i = icmp ult i64 %3, %2
  br i1 %.not5.i, label %bb.f, label %.split.i

bb.e:                                             ; preds = %bb.f, %.split.i, %bb.c
  %i.c = icmp eq i64 %4, 0
  br i1 %i.c, label %bb.i, label %bb.g

.split.i:                                         ; preds = %bb.d
  %i.d = icmp eq i64 %3, %2
  br i1 %i.d, label %bb.e, label %bb.o

bb.f:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %i.f = load i8, ptr %i.e, align 1, !alias.scope !891, !noundef !3
  %i.g = icmp sgt i8 %i.f, -65
  br i1 %i.g, label %bb.e, label %bb.o

bb.g:                                             ; preds = %bb.e
  %.not6.i = icmp ult i64 %4, %2
  br i1 %.not6.i, label %bb.h, label %.split7.i

.split7.i:                                        ; preds = %bb.g
  %i.h = icmp eq i64 %4, %2
  br i1 %i.h, label %bb.i, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %4
  %i.j = load i8, ptr %i.i, align 1, !alias.scope !891, !noundef !3
  %i.k = icmp sgt i8 %i.j, -65
  br i1 %i.k, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h, %.split7.i, %bb.e
  %i.l = sub nuw i64 %4, %3                       ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %3 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %4 ; 4 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %.backedge.i
  %i.o = phi ptr [ %i.ax, %.backedge.i ], [ %i.m, %bb.i ] ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 3 uses
  %i.q = load i8, ptr %i.o, align 1, !noalias !892, !noundef !3 ; 5 uses
  %i.r = icmp sgt i8 %i.q, -1
  br i1 %i.r, label %bb.j, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit12.i.i.i

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit12.i.i.i: ; preds = %.lr.ph.i
  %i.s = and i8 %i.q, 31
  %i.t = zext nneg i8 %i.s to i32                 ; 3 uses
  %i.u = icmp ne ptr %i.p, %i.n
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 2 ; 3 uses
  %i.w = load i8, ptr %i.p, align 1, !noalias !892, !noundef !3
  %i.x = shl nuw nsw i32 %i.t, 6
  %i.y = and i8 %i.w, 63
  %i.z = zext nneg i8 %i.y to i32                 ; 2 uses
  %i.aa = or disjoint i32 %i.x, %i.z
  %i.ab = icmp samesign ugt i8 %i.q, -33
  br i1 %i.ab, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit14.i.i.i, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i
  %i.ac = zext nneg i8 %i.q to i32
  br label %bb.k

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit12.i.i.i
  %i.ad = icmp ne ptr %i.v, %i.n
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 3 ; 3 uses
  %i.af = load i8, ptr %i.v, align 1, !noalias !892, !noundef !3
  %i.ag = shl nuw nsw i32 %i.z, 6
  %i.ah = and i8 %i.af, 63
  %i.ai = zext nneg i8 %i.ah to i32
  %i.aj = or disjoint i32 %i.ag, %i.ai            ; 2 uses
  %i.ak = shl nuw nsw i32 %i.t, 12
  %i.al = or disjoint i32 %i.aj, %i.ak
  %i.am = icmp samesign ugt i8 %i.q, -17
  br i1 %i.am, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit16.i.i.i, label %bb.k

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit14.i.i.i
end_hunk_0
