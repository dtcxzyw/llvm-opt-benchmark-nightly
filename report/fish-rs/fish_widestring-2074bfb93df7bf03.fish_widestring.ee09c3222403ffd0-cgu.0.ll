Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish_widestring-2074bfb93df7bf03.fish_widestring.ee09c3222403ffd0-cgu.0?download=true
inline.NumInlined: 68
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvCskr4qsHYS30i_15fish_widestring12wcs2osstring:bb.a
  %i.o = icmp samesign ult i32 %i.h, 128
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = icmp samesign ult i32 %i.h, 2048
  %i.q = and i8 %i.n, 63
  %i.r = or disjoint i8 %i.q, -128                ; 3 uses
  %i.s = lshr i32 %i.h, 6
  %i.t = trunc i32 %i.s to i8                     ; 2 uses
  %i.u = and i8 %i.t, 63
  %i.v = or disjoint i8 %i.u, -128                ; 2 uses
  %i.w = lshr i32 %i.h, 12
  %i.x = trunc i32 %i.w to i8                     ; 2 uses
  %i.y = and i8 %i.x, 63
  %i.z = or disjoint i8 %i.y, -128
  %i.aa = lshr i32 %i.h, 18
  %i.ab = trunc nuw nsw i32 %i.aa to i8
  %i.ac = or disjoint i8 %i.ab, -16
  br i1 %i.p, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  store i8 %i.n, ptr %.sroa.0.i, align 4, !alias.scope !52, !noalias !49
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ad = or disjoint i8 %i.t, -64
  store i8 %i.ad, ptr %.sroa.0.i, align 4, !alias.scope !52, !noalias !49
  store i8 %i.r, ptr %.sroa.0.i.1.i.1.i.1..sroa_idx26, align 1, !alias.scope !52, !noalias !49
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i

bb.i:                                             ; preds = %bb.f
  %i.ae = icmp samesign ult i32 %i.h, 65536
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = or disjoint i8 %i.x, -32
  store i8 %i.af, ptr %.sroa.0.i, align 4, !alias.scope !52, !noalias !49
  store i8 %i.v, ptr %.sroa.0.i.1.i.1.i.1..sroa_idx25, align 1, !alias.scope !52, !noalias !49
  store i8 %i.r, ptr %.sroa.0.i.2.i.2.i.2..sroa_idx27, align 2, !alias.scope !52, !noalias !49
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i

bb.k:                                             ; preds = %bb.i
  store i8 %i.ac, ptr %.sroa.0.i, align 4, !alias.scope !52, !noalias !49
  store i8 %i.z, ptr %.sroa.0.i.1.i.1.i.1..sroa_idx, align 1, !alias.scope !52, !noalias !49
  store i8 %i.v, ptr %.sroa.0.i.2.i.2.i.2..sroa_idx, align 2, !alias.scope !52, !noalias !49
  store i8 %i.r, ptr %.sroa.0.i.3.i.3.i.3..sroa_idx, align 1, !alias.scope !52, !noalias !49
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i

_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i: ; preds = %bb.k, %bb.j, %bb.h, %bb.g, %_RNvXs8_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCskr4qsHYS30i_15fish_widestring.exit.i
  %.pn14.i = phi i64 [ 1, %_RNvXs8_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCskr4qsHYS30i_15fish_widestring.exit.i ], [ 1, %bb.g ], [ 2, %bb.h ], [ 3, %bb.j ], [ 4, %bb.k ] ; 3 uses
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCskr4qsHYS30i_15fish_widestring(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef range(i64 0, 5) %.pn14.i)
          to label %.noexc6 unwind label %.loopexit

.noexc6:                                          ; preds = %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i
  %i.ag = load i64, ptr %i.e, align 8, !alias.scope !53, !noalias !54, !noundef !6 ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, -1
  call void @llvm.assume(i1 %i.ah)
  %i.ai = load ptr, ptr %i.d, align 8, !alias.scope !53, !noalias !54, !nonnull !6, !noundef !6
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aj, ptr noundef nonnull readonly align 4 dereferenceable(1) %.sroa.0.i, i64 range(i64 0, 5) %.pn14.i, i1 false), !noalias !47
  %.pre.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !53, !noalias !54
  %i.ak = add i64 %.pre.i.i.i, %.pn14.i
  store i64 %i.ak, ptr %i.e, align 8, !alias.scope !53, !noalias !54
  %i.al = icmp eq ptr %i.g, %i.f
  br i1 %i.al, label %bb.n, label %bb.c

bb.l:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx, align 8
  br label %bb.o

.loopexit:                                        ; preds = %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp:                               ; preds = %.split.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskr4qsHYS30i_15fish_widestring(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #21
          to label %bb.q unwind label %bb.p

bb.n:                                             ; preds = %.noexc6
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  ret void

bb.p:                                             ; preds = %bb.m
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.q:                                             ; preds = %bb.m
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvCskr4qsHYS30i_15fish_widestring13decoded_width(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.c, ptr %i.e, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  call void @_RINvXs5_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorcE9from_iterNtNtCskr4qsHYS30i_15fish_widestring7decoder7DecoderEB21_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i19.i = icmp samesign eq i64 %i.i, 0
  br i1 %.not.i19.i, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cskr4qsHYS30i_15fish_widestring.exit.i
  %.sroa.0.022.i = phi i64 [ %i.er, %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cskr4qsHYS30i_15fish_widestring.exit.i ], [ 0, %.lr.ph.i.preheader ]
  %.sroa.6.021.i = phi i16 [ %.sroa.51.1.i.i.i, %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cskr4qsHYS30i_15fish_widestring.exit.i ], [ 0, %.lr.ph.i.preheader ] ; 5 uses
  %.sroa.2.020.i = phi ptr [ %.sroa.2.3.ph.i, %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cskr4qsHYS30i_15fish_widestring.exit.i ], [ %i.j, %.lr.ph.i.preheader ] ; 4 uses
  %i.k = getelementptr inbounds i8, ptr %.sroa.2.020.i, i64 -1 ; 3 uses
  %i.l = load i8, ptr %i.k, align 1, !noalias !62, !noundef !6 ; 3 uses
  %i.m = icmp sgt i8 %i.l, -1
  br i1 %i.m, label %bb.b, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskr4qsHYS30i_15fish_widestring.exit17.i.i.i

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskr4qsHYS30i_15fish_widestring.exit17.i.i.i: ; preds = %.lr.ph.i
  %i.n = icmp ne ptr %i.g, %i.k
  call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds i8, ptr %.sroa.2.020.i, i64 -2 ; 3 uses
  %i.p = load i8, ptr %i.o, align 1, !noalias !62, !noundef !6 ; 3 uses
  %i.q = and i8 %i.p, 31
  %i.r = zext nneg i8 %i.q to i32
  %i.s = icmp slt i8 %i.p, -64
  br i1 %i.s, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskr4qsHYS30i_15fish_widestring.exit19.i.i.i, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.t = zext nneg i8 %i.l to i32
  br label %bb.e

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskr4qsHYS30i_15fish_widestring.exit19.i.i.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskr4qsHYS30i_15fish_widestring.exit17.i.i.i
  %i.u = icmp ne ptr %i.g, %i.o
  call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds i8, ptr %.sroa.2.020.i, i64 -3 ; 3 uses
  %i.w = load i8, ptr %i.v, align 1, !noalias !62, !noundef !6 ; 3 uses
  %i.x = and i8 %i.w, 15
  %i.y = zext nneg i8 %i.x to i32
  %i.z = icmp slt i8 %i.w, -64
  br i1 %i.z, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskr4qsHYS30i_15fish_widestring.exit21.i.i.i, label %bb.d

bb.c:                                             ; preds = %bb.d, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskr4qsHYS30i_15fish_widestring.exit17.i.i.i
  %.sroa.2.1.i = phi ptr [ %.sroa.2.2.i, %bb.d ], [ %i.o, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskr4qsHYS30i_15fish_widestring.exit17.i.i.i ]
  %.sroa.010.0.i.i.i = phi i32 [ %i.aq, %bb.d ], [ %i.r, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskr4qsHYS30i_15fish_widestring.exit17.i.i.i ]
  %i.aa = shl nuw nsw i32 %.sroa.010.0.i.i.i, 6
  %i.ab = and i8 %i.l, 63
  %i.ac = zext nneg i8 %i.ab to i32
  %i.ad = or disjoint i32 %i.aa, %i.ac
  br label %bb.e

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskr4qsHYS30i_15fish_widestring.exit21.i.i.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskr4qsHYS30i_15fish_widestring.exit19.i.i.i
  %i.ae = icmp ne ptr %i.g, %i.v
  call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds i8, ptr %.sroa.2.020.i, i64 -4 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !noalias !62, !noundef !6
  %i.ah = and i8 %i.ag, 7
  %i.ai = zext nneg i8 %i.ah to i32
  %i.aj = shl nuw nsw i32 %i.ai, 6
  %i.ak = and i8 %i.w, 63
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = or disjoint i32 %i.aj, %i.al
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskr4qsHYS30i_15fish_widestring.exit21.i.i.i, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskr4qsHYS30i_15fish_widestring.exit19.i.i.i
  %.sroa.2.2.i = phi ptr [ %i.af, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskr4qsHYS30i_15fish_widestring.exit21.i.i.i ], [ %i.v, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskr4qsHYS30i_15fish_widestring.exit19.i.i.i ]
  %.sroa.010.1.i.i.i = phi i32 [ %i.am, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskr4qsHYS30i_15fish_widestring.exit21.i.i.i ], [ %i.y, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskr4qsHYS30i_15fish_widestring.exit19.i.i.i ]
  %i.an = shl nuw nsw i32 %.sroa.010.1.i.i.i, 6
  %i.ao = and i8 %i.p, 63
  %i.ap = zext nneg i8 %i.ao to i32
  %i.aq = or disjoint i32 %i.an, %i.ap
  br label %bb.c

bb.e:                                             ; preds = %bb.c, %bb.b
  %.sroa.2.3.ph.i = phi ptr [ %.sroa.2.1.i, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %spec.select.i.ph.i = phi i32 [ %i.ad, %bb.c ], [ %i.t, %bb.b ] ; 80 uses
  %.not.i.i.i = icmp sgt i16 %.sroa.6.021.i, -1
  br i1 %.not.i.i.i, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = lshr i32 %spec.select.i.ph.i, 10
  switch i32 %i.ar, label %_RNvNtCsfc8f8SDE2Co_13unicode_width6tables29starts_emoji_presentation_seq.exit.thread.i.i.i [
    i32 0, label %_RNvNtCsfc8f8SDE2Co_13unicode_width6tables29starts_emoji_presentation_seq.exit.i.i.i
    i32 8, label %bb.g
    i32 9, label %bb.h
    i32 10, label %bb.i
    i32 12, label %bb.j
    i32 124, label %bb.k
    i32 125, label %bb.l
  ]

bb.g:                                             ; preds = %bb.f
  br label %_RNvNtCsfc8f8SDE2Co_13unicode_width6tables29starts_emoji_presentation_seq.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  br label %_RNvNtCsfc8f8SDE2Co_13unicode_width6tables29starts_emoji_presentation_seq.exit.i.i.i

bb.i:                                             ; preds = %bb.f
  br label %_RNvNtCsfc8f8SDE2Co_13unicode_width6tables29starts_emoji_presentation_seq.exit.i.i.i

bb.j:                                             ; preds = %bb.f
  br label %_RNvNtCsfc8f8SDE2Co_13unicode_width6tables29starts_emoji_presentation_seq.exit.i.i.i

bb.k:                                             ; preds = %bb.f
  br label %_RNvNtCsfc8f8SDE2Co_13unicode_width6tables29starts_emoji_presentation_seq.exit.i.i.i

bb.l:                                             ; preds = %bb.f
  br label %_RNvNtCsfc8f8SDE2Co_13unicode_width6tables29starts_emoji_presentation_seq.exit.i.i.i

_RNvNtCsfc8f8SDE2Co_13unicode_width6tables29starts_emoji_presentation_seq.exit.i.i.i: ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.01.0.i.i.i.i = phi i64 [ 6, %bb.l ], [ 1, %bb.g ], [ 2, %bb.h ], [ 3, %bb.i ], [ 4, %bb.j ], [ 5, %bb.k ], [ 0, %bb.f ]
  %i.as = lshr i32 %spec.select.i.ph.i, 3
  %i.at = and i32 %i.as, 127
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [128 x i8], ptr @_RNvNtCsfc8f8SDE2Co_13unicode_width6tables25EMOJI_PRESENTATION_LEAVES, i64 %.sroa.01.0.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.au
  %i.ax = load i8, ptr %i.aw, align 1, !noundef !6
  %i.ay = trunc i32 %spec.select.i.ph.i to i8
  %i.az = and i8 %i.ay, 7
  %i.ba = lshr i8 %i.ax, %i.az
  %i.bb = trunc i8 %i.ba to i1
  br i1 %i.bb, label %bb.n, label %_RNvNtCsfc8f8SDE2Co_13unicode_width6tables29starts_emoji_presentation_seq.exit.thread.i.i.i

bb.m:                                             ; preds = %bb.o, %bb.e
  %.sroa.0.0.i.i.i = phi i16 [ %i.bg, %bb.o ], [ %.sroa.6.021.i, %bb.e ] ; 13 uses
  %i.bc = icmp samesign ult i32 %spec.select.i.ph.i, 161
  br i1 %i.bc, label %bb.r, label %bb.q

_RNvNtCsfc8f8SDE2Co_13unicode_width6tables29starts_emoji_presentation_seq.exit.thread.i.i.i: ; preds = %_RNvNtCsfc8f8SDE2Co_13unicode_width6tables29starts_emoji_presentation_seq.exit.i.i.i, %bb.f
  %i.bd = and i16 %.sroa.6.021.i, 8192
  %.not81.i.i.i = icmp eq i16 %i.bd, 0
  br i1 %.not81.i.i.i, label %bb.p, label %bb.o

bb.n:                                             ; preds = %_RNvNtCsfc8f8SDE2Co_13unicode_width6tables29starts_emoji_presentation_seq.exit.i.i.i
  %i.be = and i16 %.sroa.6.021.i, -20480
  %i.bf = icmp eq i16 %i.be, -28672
  %..i.i.i = select i1 %i.bf, i8 0, i8 2
  br label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cskr4qsHYS30i_15fish_widestring.exit.i

bb.o:                                             ; preds = %_RNvNtCsfc8f8SDE2Co_13unicode_width6tables29starts_emoji_presentation_seq.exit.thread.i.i.i
  %i.bg = and i16 %.sroa.6.021.i, 32767
  br label %bb.m

bb.p:                                             ; preds = %_RNvNtCsfc8f8SDE2Co_13unicode_width6tables29starts_emoji_presentation_seq.exit.thread.i.i.i
  %i.bh = icmp samesign ult i32 %spec.select.i.ph.i, 161
  br i1 %i.bh, label %bb.cp, label %.thread121.i.i.i

bb.q:                                             ; preds = %bb.m
  %.not82.i.i.i = icmp eq i16 %.sroa.0.0.i.i.i, 0
  br i1 %.not82.i.i.i, label %.thread121.i.i.i, label %bb.s

bb.r:                                             ; preds = %bb.m
  %trunc.i.i.i = trunc nuw i32 %spec.select.i.ph.i to i8
  switch i8 %trunc.i.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cskr4qsHYS30i_15fish_widestring.exit.i [
    i8 10, label %bb.cn
    i8 13, label %bb.co
  ]

.thread121.i.i.i:                                 ; preds = %bb.ci, %bb.cm, %.noexc8, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %.thread137.i.i.i, %bb.cb, %bb.bn, %bb.ax, %bb.ax, %bb.ax, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.q, %bb.p
  %spec.select.i17.i = phi i32 [ %spec.select.i.ph.i, %bb.cm ], [ %spec.select.i.ph.i, %bb.ci ], [ %spec.select.i.ph.i, %.noexc8 ], [ 127988, %bb.cg ], [ %spec.select.i.ph.i, %bb.cf ], [ %spec.select.i.ph.i, %bb.ce ], [ %spec.select.i.ph.i, %bb.cd ], [ %spec.select.i.ph.i, %.thread137.i.i.i ], [ %spec.select.i.ph.i, %bb.cb ], [ %spec.select.i.ph.i, %bb.bn ], [ 11647, %bb.ax ], [ 11647, %bb.ax ], [ 11647, %bb.ax ], [ %spec.select.i.ph.i, %bb.au ], [ %spec.select.i.ph.i, %bb.at ], [ %spec.select.i.ph.i, %bb.as ], [ %spec.select.i.ph.i, %bb.ar ], [ %spec.select.i.ph.i, %bb.q ], [ %spec.select.i.ph.i, %bb.p ]
  %i.bi = invoke fastcc { i8, i16 } @_RNvNtCsfc8f8SDE2Co_13unicode_width6tables12lookup_width(i32 noundef range(i32 0, 1114112) %spec.select.i17.i) #22
          to label %.noexc unwind label %bb.cq    ; 2 uses

.noexc:                                           ; preds = %.thread121.i.i.i
  %i.bj = extractvalue { i8, i16 } %i.bi, 0
  %i.bk = extractvalue { i8, i16 } %i.bi, 1
  br label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cskr4qsHYS30i_15fish_widestring.exit.i

bb.s:                                             ; preds = %bb.q
  switch i32 %spec.select.i.ph.i, label %bb.w [
    i32 65039, label %bb.t
    i32 65025, label %bb.u
    i32 65038, label %bb.v
  ]

bb.t:                                             ; preds = %bb.s
  %i.bl = and i16 %.sroa.0.0.i.i.i, 12288
  %or.cond27.not.i.i.i = icmp eq i16 %i.bl, 0
  %i.bm = or disjoint i16 %.sroa.0.0.i.i.i, -32768
  %.sroa.050.0.i.i.i = select i1 %or.cond27.not.i.i.i, i16 -32768, i16 %i.bm
  br label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cskr4qsHYS30i_15fish_widestring.exit.i

bb.u:                                             ; preds = %bb.s
  %i.bn = and i16 %.sroa.0.0.i.i.i, 8192
  %.not84.i.i.i = icmp eq i16 %i.bn, 0
  %i.bo = or i16 %.sroa.0.0.i.i.i, 512
  %.sroa.051.0.i.i.i = select i1 %.not84.i.i.i, i16 512, i16 %i.bo
  br label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cskr4qsHYS30i_15fish_widestring.exit.i

bb.v:                                             ; preds = %bb.s
  %i.bp = and i16 %.sroa.0.0.i.i.i, 8192
  %.not83.i.i.i = icmp eq i16 %i.bp, 0
  %i.bq = or i16 %.sroa.0.0.i.i.i, 16384
  %.sroa.052.0.i.i.i = select i1 %.not83.i.i.i, i16 16384, i16 %i.bq
  br label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cskr4qsHYS30i_15fish_widestring.exit.i

bb.w:                                             ; preds = %bb.s
  %.not85.i.i.i = icmp samesign ult i16 %.sroa.0.0.i.i.i, 16384
  br i1 %.not85.i.i.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.br = and i16 %.sroa.0.0.i.i.i, 512
  %.not86.i.i.i = icmp eq i16 %i.br, 0
  br i1 %.not86.i.i.i, label %bb.ak, label %bb.ai

bb.y:                                             ; preds = %bb.w
  %i.bs = lshr i32 %spec.select.i.ph.i, 8
  switch i32 %i.bs, label %_RNvNtCsfc8f8SDE2Co_13unicode_width6tables44starts_non_ideographic_text_presentation_seq.exit.thread.i.i.i [
    i32 35, label %bb.ah
    i32 37, label %.thread.i.i.i.i
    i32 38, label %bb.z
    i32 39, label %bb.aa
    i32 43, label %bb.ab
    i32 496, label %bb.ac
    i32 499, label %bb.ad
    i32 500, label %bb.ae
    i32 501, label %bb.af
    i32 502, label %bb.ag
  ]

bb.z:                                             ; preds = %bb.y
  br label %bb.ah

bb.aa:                                            ; preds = %bb.y
  br label %bb.ah

bb.ab:                                            ; preds = %bb.y
  br label %bb.ah

bb.ac:                                            ; preds = %bb.y
  br label %.thread.i.i.i.i

bb.ad:                                            ; preds = %bb.y
  br label %bb.ah

bb.ae:                                            ; preds = %bb.y
  br label %bb.ah

bb.af:                                            ; preds = %bb.y
  br label %bb.ah

bb.ag:                                            ; preds = %bb.y
  br label %bb.ah

.thread.i.i.i.i:                                  ; preds = %bb.ac, %bb.y
  %.sroa.01.0.ph.i.i.i.i = phi ptr [ @_RNvNtCsfc8f8SDE2Co_13unicode_width6tables24TEXT_PRESENTATION_LEAF_5, %bb.ac ], [ @_RNvNtCsfc8f8SDE2Co_13unicode_width6tables24TEXT_PRESENTATION_LEAF_1, %bb.y ]
  %i.bt = trunc i32 %spec.select.i.ph.i to i8
  br label %._crit_edge.i.i.i.i.i

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ab, %bb.aa, %bb.z, %bb.y
  %.sroa.11.0.i.i.i.i = phi i64 [ 10, %bb.ag ], [ 4, %bb.af ], [ 15, %bb.z ], [ 10, %bb.aa ], [ 3, %bb.ab ], [ 4, %bb.y ], [ 13, %bb.ad ], [ 22, %bb.ae ] ; 2 uses
  %.sroa.01.0.i99.i.i.i = phi ptr [ @_RNvNtCsfc8f8SDE2Co_13unicode_width6tables24TEXT_PRESENTATION_LEAF_9, %bb.ag ], [ @_RNvNtCsfc8f8SDE2Co_13unicode_width6tables24TEXT_PRESENTATION_LEAF_8, %bb.af ], [ @_RNvNtCsfc8f8SDE2Co_13unicode_width6tables24TEXT_PRESENTATION_LEAF_2, %bb.z ], [ @_RNvNtCsfc8f8SDE2Co_13unicode_width6tables24TEXT_PRESENTATION_LEAF_3, %bb.aa ], [ @_RNvNtCsfc8f8SDE2Co_13unicode_width6tables24TEXT_PRESENTATION_LEAF_4, %bb.ab ], [ @_RNvNtCsfc8f8SDE2Co_13unicode_width6tables24TEXT_PRESENTATION_LEAF_0, %bb.y ], [ @_RNvNtCsfc8f8SDE2Co_13unicode_width6tables24TEXT_PRESENTATION_LEAF_6, %bb.ad ], [ @_RNvNtCsfc8f8SDE2Co_13unicode_width6tables24TEXT_PRESENTATION_LEAF_7, %bb.ae ] ; 2 uses
  %i.bu = trunc i32 %spec.select.i.ph.i to i8     ; 2 uses
  br label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %.thread.i.i.i.i
  %i.bv = phi i8 [ %i.bt, %.thread.i.i.i.i ], [ %i.bu, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.sroa.01.05.i.i.i.i = phi ptr [ %.sroa.01.0.ph.i.i.i.i, %.thread.i.i.i.i ], [ %.sroa.01.0.i99.i.i.i, %.lr.ph.i.i.i.i.i ]
  %.sroa.05.0.lcssa.i.i.i.i.i = phi i64 [ 0, %.thread.i.i.i.i ], [ %i.cf, %.lr.ph.i.i.i.i.i ]
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.05.i.i.i.i, i64 %.sroa.05.0.lcssa.i.i.i.i.i ; 2 uses
  %.val15.i.i.i.i.i = load i8, ptr %i.bw, align 1, !alias.scope !63, !noalias !64, !noundef !6
  %i.bx = getelementptr i8, ptr %i.bw, i64 1
  %.val16.i.i.i.i.i = load i8, ptr %i.bx, align 1, !alias.scope !63, !noalias !64
  %.not = icmp ult i8 %i.bv, %.val15.i.i.i.i.i
  %i.by = icmp ugt i8 %i.bv, %.val16.i.i.i.i.i
  %i.bz = select i1 %.not, i1 true, i1 %i.by
  br i1 %i.bz, label %_RNvNtCsfc8f8SDE2Co_13unicode_width6tables44starts_non_ideographic_text_presentation_seq.exit.thread.i.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cskr4qsHYS30i_15fish_widestring.exit.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %bb.ah
  %.sroa.01.020.i.i.i.i.i = phi i64 [ %i.cg, %.lr.ph.i.i.i.i.i ], [ %.sroa.11.0.i.i.i.i, %bb.ah ] ; 2 uses
  %.sroa.05.019.i.i.i.i.i = phi i64 [ %i.cf, %.lr.ph.i.i.i.i.i ], [ 0, %bb.ah ] ; 2 uses
  %i.ca = lshr i64 %.sroa.01.020.i.i.i.i.i, 1     ; 2 uses
  %i.cb = add nuw nsw i64 %i.ca, %.sroa.05.019.i.i.i.i.i ; 3 uses
  %i.cc = icmp ult i64 %i.cb, %.sroa.11.0.i.i.i.i
  call void @llvm.assume(i1 %i.cc)
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.0.i99.i.i.i, i64 %i.cb
  %.val12.i.i.i.i.i = load i8, ptr %i.cd, align 1, !alias.scope !63, !noalias !64, !noundef !6
  %i.ce = icmp ugt i8 %.val12.i.i.i.i.i, %i.bu
  %i.cf = select i1 %i.ce, i64 %.sroa.05.019.i.i.i.i.i, i64 %i.cb, !unpredictable !6 ; 2 uses
  %i.cg = sub nuw nsw i64 %.sroa.01.020.i.i.i.i.i, %i.ca ; 2 uses
  %i.ch = icmp ugt i64 %i.cg, 1
  br i1 %i.ch, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

bb.ai:                                            ; preds = %bb.x
  %switch.tableidx = add i32 %spec.select.i.ph.i, -8216 ; 2 uses
  %i.ci = icmp ult i32 %switch.tableidx, 6
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 51, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.ci, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cskr4qsHYS30i_15fish_widestring.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cj = and i16 %.sroa.0.0.i.i.i, 15871
  br label %bb.ak

bb.ak:                                            ; preds = %_RNvNtCsfc8f8SDE2Co_13unicode_width6tables44starts_non_ideographic_text_presentation_seq.exit.thread.i.i.i, %bb.aj, %bb.x
  %.sroa.0.1.i.i.i = phi i16 [ %i.cl, %_RNvNtCsfc8f8SDE2Co_13unicode_width6tables44starts_non_ideographic_text_presentation_seq.exit.thread.i.i.i ], [ %i.cj, %bb.aj ], [ %.sroa.0.0.i.i.i, %bb.x ] ; 17 uses
  %i.ck = and i16 %.sroa.0.1.i.i.i, 2048
  %.not87.i.i.i = icmp eq i16 %i.ck, 0
  br i1 %.not87.i.i.i, label %bb.am, label %bb.al

_RNvNtCsfc8f8SDE2Co_13unicode_width6tables44starts_non_ideographic_text_presentation_seq.exit.thread.i.i.i: ; preds = %._crit_edge.i.i.i.i.i, %bb.y
  %i.cl = and i16 %.sroa.0.0.i.i.i, 16383
  br label %bb.ak

bb.al:                                            ; preds = %bb.ak
  switch i32 %spec.select.i.ph.i, label %bb.ao [
    i32 8205, label %bb.an
    i32 847, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cskr4qsHYS30i_15fish_widestring.exit.i
    i32 6159, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cskr4qsHYS30i_15fish_widestring.exit.i
  ]

bb.am:                                            ; preds = %bb.ao, %bb.ak
  switch i16 %.sroa.0.1.i.i.i, label %bb.ap [
    i16 12543, label %bb.aq
    i16 15360, label %bb.ar
    i16 15367, label %bb.as
    i16 15361, label %bb.at
    i16 15362, label %bb.au
  ]

bb.an:                                            ; preds = %bb.al
  %i.cm = or i16 %.sroa.0.1.i.i.i, 1024
  br label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cskr4qsHYS30i_15fish_widestring.exit.i

bb.ao:                                            ; preds = %bb.al
  %i.cn = and i32 %spec.select.i.ph.i, 2097150
  %or.cond.i.i = icmp eq i32 %i.cn, 6068
  %i.co = add nsw i32 %spec.select.i.ph.i, -6155
  %or.cond1.i.i = icmp ult i32 %i.co, 3
  %or.cond3.i.i = select i1 %or.cond.i.i, i1 true, i1 %or.cond1.i.i
  %i.cp = and i32 %spec.select.i.ph.i, 2097136
  %or.cond2.i.i = icmp eq i32 %i.cp, 65024
  %or.cond4.i.i = or i1 %or.cond2.i.i, %or.cond3.i.i
  %i.cq = add nsw i32 %spec.select.i.ph.i, -917760
  %spec.select.i9.i = icmp ult i32 %i.cq, 240
  %or.cond.i = select i1 %or.cond4.i.i, i1 true, i1 %spec.select.i9.i
  br i1 %or.cond.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cskr4qsHYS30i_15fish_widestring.exit.i, label %bb.am

bb.ap:                                            ; preds = %.noexc7, %bb.am
  %i.cr = icmp eq i32 %spec.select.i.ph.i, 11647
  br i1 %i.cr, label %bb.ax, label %bb.ay

bb.aq:                                            ; preds = %bb.am
  switch i32 %spec.select.i.ph.i, label %bb.av [
    i32 1604, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cskr4qsHYS30i_15fish_widestring.exit.i
    i32 1898, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cskr4qsHYS30i_15fish_widestring.exit.i
    i32 2214, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cskr4qsHYS30i_15fish_widestring.exit.i
    i32 2247, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cskr4qsHYS30i_15fish_widestring.exit.i
  ]

bb.ar:                                            ; preds = %bb.am
  switch i32 %spec.select.i.ph.i, label %.thread105.i.i.i [
    i32 1488, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cskr4qsHYS30i_15fish_widestring.exit.i
    i32 11647, label %.thread121.i.i.i
  ]

bb.as:                                            ; preds = %bb.am
  switch i32 %spec.select.i.ph.i, label %.thread105.i.i.i [
    i32 6098, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cskr4qsHYS30i_15fish_widestring.exit.i
end_hunk_0
