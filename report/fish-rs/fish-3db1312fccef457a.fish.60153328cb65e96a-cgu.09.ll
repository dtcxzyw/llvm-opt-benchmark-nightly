Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.09?download=true
inline.NumInlined: 2082
inline.NumDeleted: 649
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_RNvMs3_NtCs8frGy5WneL6_4fish6screenNtB5_11LayoutCache18calc_prompt_layout:bb.a
  call void @llvm.assume(i1 %i.ew)
  %i.ex = add nuw nsw i64 %i.ev, 1
  %i.ey = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !2037, !noundef !13 ; 3 uses
  %i.ez = load i64, ptr %i.p, align 8, !range !14, !alias.scope !2037, !noundef !13
  %i.fa = icmp eq i64 %i.ey, %i.ez
  br i1 %i.fa, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs5UXtnEuoeIl_11fish_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p) #37
          to label %bb.bk unwind label %.thread97.loopexit.split-lp.loopexit

bb.bi:                                            ; preds = %bb.bl, %bb.bk, %bb.af
  %i.fb = load i64, ptr %.sroa.519.0..sroa_idx, align 8, !alias.scope !2040, !noundef !13 ; 3 uses
  %i.fc = load i64, ptr %i.o, align 8, !range !14, !alias.scope !2040, !noundef !13
  %i.fd = icmp eq i64 %i.fb, %i.fc
  br i1 %i.fd, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #37
          to label %bb.bm unwind label %.thread97.loopexit.split-lp.loopexit

bb.bk:                                            ; preds = %bb.bg, %bb.bh
  %i.fe = load ptr, ptr %.sroa.416.0..sroa_idx, align 8, !alias.scope !2037, !nonnull !13, !noundef !13
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %i.ey
  store i64 %i.ex, ptr %i.ff, align 8
  %i.fg = add i64 %i.ey, 1
  store i64 %i.fg, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !2037
  %i.fh = icmp eq i64 %i.cn, %i.y
  br i1 %i.fh, label %bb.bl, label %bb.bi

bb.bl:                                            ; preds = %bb.bk
  store i64 0, ptr %i.r, align 8
  br label %bb.bi

bb.bm:                                            ; preds = %bb.bi, %bb.bj
  %i.fi = load ptr, ptr %.sroa.418.0..sroa_idx, align 8, !alias.scope !2040, !nonnull !13, !noundef !13
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.fb
  store i32 %i.co, ptr %i.fj, align 4
  %i.fk = add i64 %i.fb, 1
  store i64 %i.fk, ptr %.sroa.519.0..sroa_idx, align 8, !alias.scope !2040
  %i.fl = icmp eq i64 %i.cn, -1
  br i1 %i.fl, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.fm = add nuw i64 %i.cn, 1                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.fn = icmp ult i64 %i.fm, %3
  br i1 %i.fn, label %bb.f, label %.loopexit108

bb.bo:                                            ; preds = %bb.bm
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #40
          to label %bb.ab unwind label %.thread97.loopexit.split-lp.loopexit.split-lp

.thread:                                          ; preds = %.thread97.loopexit, %.thread97.loopexit.split-lp.loopexit.split-lp, %.thread97.loopexit.split-lp.loopexit, %bb.y, %.loopexit.split-lp, %.thread91
  %.pn84 = phi { ptr, i32 } [ %eh.lpad-body.i, %.thread91 ], [ %i.cl, %bb.y ], [ %lpad.phi, %.loopexit.split-lp ], [ %lpad.loopexit106, %.thread97.loopexit ], [ %lpad.loopexit109, %.thread97.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp110, %.thread97.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #35
          to label %.thread94 unwind label %bb.aa

common.resume:                                    ; preds = %.thread94, %.body.i78
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i79, %.body.i78 ], [ %.pn.pn, %.thread94 ]
  resume { ptr, i32 } %common.resume.op

bb.bp:                                            ; preds = %bb.c
  %.not44 = icmp eq ptr %4, null
  br i1 %.not44, label %bb.bv, label %bb.br

bb.bq:                                            ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @230) #38
  unreachable

bb.br:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2043
  %i.fo = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  call void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fo), !noalias !2047
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %4)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i80 unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.fp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %4)
          to label %.body.i78 unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.fq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i80: ; preds = %bb.br
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %4)
          to label %_RNCNvMs3_NtCs8frGy5WneL6_4fish6screenNtB7_11LayoutCache18calc_prompt_layout0B9_.exit unwind label %bb.bu

bb.bu:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i80
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i78

.body.i78:                                        ; preds = %bb.bu, %bb.bs
  %eh.lpad-body.i79 = phi { ptr, i32 } [ %i.fr, %bb.bu ], [ %i.fp, %bb.bs ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !2048
  br label %common.resume

_RNCNvMs3_NtCs8frGy5WneL6_4fish6screenNtB7_11LayoutCache18calc_prompt_layout0B9_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !2048
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2043
  br label %bb.bv

bb.bv:                                            ; preds = %_RNCNvMs3_NtCs8frGy5WneL6_4fish6screenNtB7_11LayoutCache18calc_prompt_layout0B9_.exit, %bb.bp
  %i.fs = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  call void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecjENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fs)
  %i.ft = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.fu = load i64, ptr %i.ft, align 8, !noundef !13
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.fu, ptr %i.fv, align 8
  br label %bb.be
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @_RNvMs3_NtCs8frGy5WneL6_4fish6screenNtB5_11LayoutCache18escape_code_length(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = tail call noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef 0)
  %i.d = icmp eq i32 %i.c, 27
  br i1 %i.d, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @_RNvMs3_NtCs8frGy5WneL6_4fish6screenNtB5_11LayoutCache16find_escape_code(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2) ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.g = tail call { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen18escape_code_length(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2) ; 2 uses
  %i.h = extractvalue { i64, i64 } %i.g, 0
  %i.i = extractvalue { i64, i64 } %i.g, 1        ; 7 uses
  %i.j = trunc nuw i64 %i.h to i1
  br i1 %i.j, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.not = icmp ugt i64 %i.i, %2
  br i1 %.not, label %bb.f, label %bb.e, !prof !1261

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %i.k = load i64, ptr %i.a, align 8, !range !527, !noundef !13
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !528, !noundef !13 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.l, label %bb.g, label %bb.h, !prof !420

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @186, i64 noundef 19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @231) #38
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.p = load i64, ptr %i.o, align 8
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #40
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.o, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.r = icmp ule i64 %i.i, %i.n
  tail call void @llvm.assume(i1 %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not12 = icmp eq i64 %i.i, 0
  br i1 %.not12, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.j, %bb.h
  store i64 %i.n, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.q, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.i, ptr %.sroa.6.0..sroa_idx, align 8
  call void @_RNvMs3_NtCs8frGy5WneL6_4fish6screenNtB5_11LayoutCache15add_escape_code(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.s = shl nuw nsw i64 %i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.q, ptr nonnull align 4 %1, i64 %i.s, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.c, %bb.a, %bb.i, %bb.b
  %.sroa.0.0 = phi i64 [ %i.i, %bb.i ], [ 0, %bb.a ], [ %i.e, %bb.b ], [ 0, %bb.c ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs3_NtCs8frGy5WneL6_4fish6screenNtB5_11LayoutCache18find_prompt_layout(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(none) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 5 uses
  %i.b = alloca [88 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !13 ; 5 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.i = load ptr, ptr %i.d, align 8, !noundef !13
  %i.j = shl nuw i64 %2, 2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.sroa.01.022 = phi i64 [ %i.w, %bb.d ], [ 0, %.lr.ph.preheader ] ; 6 uses
  %.sroa.06.021 = phi i64 [ %i.k, %bb.d ], [ %i.g, %.lr.ph.preheader ]
  %.sroa.08.020 = phi ptr [ %i.m, %bb.d ], [ %i.i, %.lr.ph.preheader ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.020) ]
  %i.k = add i64 %.sroa.06.021, -1                ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.08.020, i64 88
  %i.m = load ptr, ptr %i.l, align 8, !noundef !13
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.08.020, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !13
  %i.p = icmp eq i64 %i.o, %2
  br i1 %i.p, label %bb.b, label %bb.d

._crit_edge:                                      ; preds = %bb.c
  %.not18 = icmp uge i64 %.sroa.01.022, %i.g
  %.not = icmp eq i64 %.sroa.01.022, 0
  %or.cond = or i1 %.not18, %.not
  br i1 %or.cond, label %._crit_edge.thread, label %bb.e

bb.b:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.08.020, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !13, !noundef !13
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.r, ptr nonnull %1, i64 %i.j)
  %i.s = icmp eq i32 %bcmp, 0
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.08.020, i64 80
  %i.u = load i64, ptr %i.t, align 8, !noundef !13
  %i.v = icmp eq i64 %i.u, %3
  br i1 %i.v, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.b, %.lr.ph, %bb.c
  %i.w = add nuw i64 %.sroa.01.022, 1
  %i.x = icmp eq i64 %i.k, 0
  br i1 %i.x, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.d, %bb.a, %bb.o, %._crit_edge
  %.sroa.01.0.lcssa33 = phi i64 [ %.sroa.01.022, %._crit_edge ], [ %.sroa.01.022, %bb.o ], [ 0, %bb.a ], [ %i.g, %bb.d ]
  %4 = icmp ult i64 %.sroa.01.0.lcssa33, %i.g
  ret i1 %4

bb.e:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs6_NtNtCs1xwejQucwHj_5alloc11collections11linked_listINtB5_10LinkedListNtNtCs8frGy5WneL6_4fish6screen16PromptCacheEntryE9split_offB1f_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %.sroa.01.022)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs6_NtNtCs1xwejQucwHj_5alloc11collections11linked_listINtB5_10LinkedListNtNtCs8frGy5WneL6_4fish6screen16PromptCacheEntryE9pop_frontB1f_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListNtNtCs8frGy5WneL6_4fish6screen16PromptCacheEntryEEB27_.exit, %bb.i, %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs7_NtNtCs1xwejQucwHj_5alloc11collections11linked_listINtB5_10LinkedListNtNtCs8frGy5WneL6_4fish6screen16PromptCacheEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListNtNtCs8frGy5WneL6_4fish6screen16PromptCacheEntryEEB1I_.exit unwind label %bb.p

bb.g:                                             ; preds = %bb.e
  %i.z = load i64, ptr %i.a, align 8, !range !381, !noundef !13
  %.not15 = icmp eq i64 %i.z, -1
  br i1 %.not15, label %bb.i, label %bb.h, !prof !420

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aa = load ptr, ptr %i.e, align 8, !noundef !13 ; 3 uses
  %.not16 = icmp eq ptr %i.aa, null
  br i1 %.not16, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @232) #40
          to label %bb.j unwind label %bb.f

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.ab = load ptr, ptr %i.c, align 8, !noundef !13 ; 3 uses
  store ptr null, ptr %i.c, align 8
  %.not17 = icmp eq ptr %i.ab, null
  br i1 %.not17, label %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListNtNtCs8frGy5WneL6_4fish6screen16PromptCacheEntryEEB27_.exit, label %bb.n

bb.l:                                             ; preds = %bb.h
  invoke void @_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs8frGy5WneL6_4fish(ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, i64 noundef 3)
          to label %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListNtNtCs8frGy5WneL6_4fish6screen16PromptCacheEntryEEB27_.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #36
  unreachable

_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListNtNtCs8frGy5WneL6_4fish6screen16PromptCacheEntryEEB27_.exit: ; preds = %bb.l, %bb.k, %bb.n
  %i.ad = invoke noundef nonnull align 8 ptr @_RNvMs6_NtNtCs1xwejQucwHj_5alloc11collections11linked_listINtB5_10LinkedListNtNtCs8frGy5WneL6_4fish6screen16PromptCacheEntryE14push_front_mutB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %i.b)
          to label %bb.o unwind label %bb.f       ; 0 uses

bb.n:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 88
  store ptr %i.ab, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  store ptr %i.aa, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !noundef !13
  store ptr null, ptr %i.ag, align 8
  store ptr %i.ah, ptr %i.e, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !13
  store i64 0, ptr %i.ai, align 8
  %i.ak = load i64, ptr %i.f, align 8, !noundef !13
  %i.al = add i64 %i.ak, %i.aj
  store i64 %i.al, ptr %i.f, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListNtNtCs8frGy5WneL6_4fish6screen16PromptCacheEntryEEB27_.exit

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListNtNtCs8frGy5WneL6_4fish6screen16PromptCacheEntryEEB27_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvXs7_NtNtCs1xwejQucwHj_5alloc11collections11linked_listINtB5_10LinkedListNtNtCs8frGy5WneL6_4fish6screen16PromptCacheEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %._crit_edge.thread

bb.p:                                             ; preds = %bb.f
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListNtNtCs8frGy5WneL6_4fish6screen16PromptCacheEntryEEB1I_.exit: ; preds = %bb.f
  resume { ptr, i32 } %i.y
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs3_NtCs8frGy5WneL6_4fish6screenNtB5_11LayoutCache5clear(ptr noalias nofree noundef align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !13 ; 4 uses
  store i64 0, ptr %i.d, align 8
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i
  %i.g = icmp eq i64 %i.i, %i.e
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  %.sroa.0.0.i13 = phi i64 [ %i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.sroa.0.0.i13 ; 3 uses
  %i.i = add nuw nsw i64 %.sroa.0.0.i13, 1        ; 4 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i: ; preds = %.lr.ph
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph15
  %i.l = add i64 %.sroa.0.1.i14, 1                ; 2 uses
  %i.m = icmp eq i64 %i.l, %i.e
  br i1 %i.m, label %._crit_edge, label %.lr.ph15

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.j, %bb.b ]
  %i.o = icmp eq i64 %i.i, %i.e
  br i1 %i.o, label %._crit_edge, label %.lr.ph15

.lr.ph15:                                         ; preds = %.body.i, %bb.d
  %.sroa.0.1.i14 = phi i64 [ %i.l, %bb.d ], [ %i.i, %.body.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.sroa.0.1.i14
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #35
          to label %bb.d unwind label %bb.f

._crit_edge:                                      ; preds = %bb.d, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

bb.f:                                             ; preds = %.lr.ph15
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !noundef !13
  store i64 0, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.x = load <2 x ptr>, ptr %i.r, align 8
  store ptr null, ptr %i.r, align 8
  store ptr null, ptr %i.s, align 8
  store <2 x ptr> %i.x, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.u, ptr %i.y, align 8
  store ptr %i.v, ptr %i.a, align 8
  call void @_RNvXs7_NtNtCs1xwejQucwHj_5alloc11collections11linked_listINtB5_10LinkedListNtNtCs8frGy5WneL6_4fish6screen16PromptCacheEntryRNtNtB9_5alloc6GlobalENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCs8frGy5WneL6_4fish8terminalNtB5_20OutputterStyleWriter11write_color(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i8 noundef range(i8 0, 3) %1, i32 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %2, ptr %i.a, align 4
  %i.b = load atomic i8, ptr @_RNvNtCs8frGy5WneL6_4fish8terminal13COLOR_SUPPORT.0 monotonic, align 1
  %i.c = and i8 %i.b, 2
  %i.d = icmp ne i8 %i.c, 0
  %i.e = and i32 %2, 255
  %i.f = icmp eq i32 %i.e, 2
  %or.cond = select i1 %i.d, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.05.0.extract.trunc.mask.i = and i32 %2, 255
  %i.g = icmp eq i32 %.sroa.05.0.extract.trunc.mask.i, 1
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load atomic i8, ptr @_RNvNtCs8frGy5WneL6_4fish8terminal13COLOR_SUPPORT.0 monotonic, align 1
  %i.i = and i8 %i.h, 1
  %.not.i = icmp eq i8 %i.i, 0
  br i1 %.not.i, label %bb.d, label %bb.e
end_hunk_0
