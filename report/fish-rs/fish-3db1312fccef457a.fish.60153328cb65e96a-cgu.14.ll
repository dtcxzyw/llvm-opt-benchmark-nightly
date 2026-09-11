Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.14?download=true
inline.NumInlined: 1814
inline.NumDeleted: 645
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNvNtNtCs8frGy5WneL6_4fish8builtins11commandline12replace_part:bb.a

.noexc:                                           ; preds = %bb.h
  %i.w = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1942, !noalias !1943, !noundef !8 ; 3 uses
  %i.x = icmp ult i64 %i.w, 2305843009213693952
  call void @llvm.assume(i1 %i.x)
  %.not.i.i = icmp eq i64 %4, 0
  br i1 %.not.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.noexc
  %i.y = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1942, !noalias !1943, !nonnull !8, !noundef !8
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.w
  %i.aa = shl nuw nsw i64 %4, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.z, ptr nonnull readonly align 4 %3, i64 %i.aa, i1 false)
  %.pre.i.i = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1942, !noalias !1943
  br label %bb.k

bb.j:                                             ; preds = %bb.f, %bb.f
  %.not28 = icmp ult i64 %8, %1
  br i1 %.not28, label %.invoke143, label %bb.m, !prof !9

.thread99:                                        ; preds = %.invoke143, %.invoke, %bb.ch, %bb.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i59, %bb.s, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i, %bb.cf, %bb.cd, %bb.q, %bb.r
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread90

bb.k:                                             ; preds = %bb.i, %.noexc
  %i.ab = phi i64 [ %.pre.i.i, %bb.i ], [ %i.w, %.noexc ]
  %i.ac = add i64 %i.ab, %4                       ; 3 uses
  store i64 %i.ac, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1942, !noalias !1943
  %i.ad = icmp ult i64 %i.ac, 2305843009213693952
  call void @llvm.assume(i1 %i.ad)
  br label %bb.l

bb.l:                                             ; preds = %_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit72, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit64, %bb.k
  %.sroa.0.0 = phi i64 [ %i.ac, %bb.k ], [ %i.ep, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit64 ], [ %8, %_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit72 ] ; 2 uses
  %i.ae = icmp ult i64 %7, %2
  br i1 %i.ae, label %.invoke, label %bb.ch, !prof !9

bb.m:                                             ; preds = %bb.j
  %.not29 = icmp ugt i64 %8, %2
  br i1 %.not29, label %.invoke143, label %bb.o, !prof !9

bb.n:                                             ; preds = %bb.ca, %bb.bu
  unreachable

.invoke143:                                       ; preds = %bb.m, %bb.j
  %i.af = phi ptr [ @594, %bb.j ], [ @596, %bb.m ]
  %i.ag = phi i64 [ 43, %bb.j ], [ 41, %bb.m ]
  %i.ah = phi ptr [ @595, %bb.j ], [ @597, %bb.m ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ah) #34
          to label %.cont144 unwind label %.thread99

.cont144:                                         ; preds = %.invoke143
  unreachable

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.ai = sub nuw i64 %8, %1                      ; 11 uses
  %.not30 = icmp ugt i64 %8, %7
  br i1 %.not30, label %.invoke, label %bb.p, !prof !9

bb.p:                                             ; preds = %bb.o
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ak = icmp eq i8 %5, 2
  br i1 %i.ak, label %bb.q, label %.thread103

bb.q:                                             ; preds = %bb.p
  %i.al = invoke { i64, i64 } @_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt4findRB3_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @604, i64 noundef 2)
          to label %.noexc37 unwind label %.thread99

.noexc37:                                         ; preds = %bb.q
  %i.am = extractvalue { i64, i64 } %i.al, 0
  %i.an = trunc nuw i64 %i.am to i1
  br i1 %i.an, label %bb.r, label %.thread103

bb.r:                                             ; preds = %.noexc37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1944
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1944
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1944
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.ai, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc38 unwind label %.thread99

.noexc38:                                         ; preds = %bb.r
  %i.ao = load i64, ptr %i.a, align 8, !range !10, !noalias !1944, !noundef !8
  %i.ap = trunc nuw i64 %i.ao to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !range !30, !noalias !1944, !noundef !8 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.ap, label %bb.s, label %bb.t, !prof !9

bb.s:                                             ; preds = %.noexc38
  %i.at = load i64, ptr %i.as, align 8, !noalias !1944
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.ar, i64 %i.at) #34
          to label %.noexc39 unwind label %.thread99

.noexc39:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %.noexc38
  %i.au = load ptr, ptr %i.as, align 8, !noalias !1944, !nonnull !8, !noundef !8 ; 2 uses
  %i.av = icmp ule i64 %i.ai, %i.ar
  tail call void @llvm.assume(i1 %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1944
  %.not.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.y, %bb.t
  store i64 %i.ar, ptr %i.g, align 8, !noalias !1944
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.au, ptr %.sroa.418.0..sroa_idx.i, align 8, !noalias !1944
  %.sroa.619.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 4 uses
  store i64 %i.ai, ptr %.sroa.619.0..sroa_idx.i, align 8, !noalias !1944
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1945)
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef range(i64 0, 4611686018427387904) %4)
          to label %.noexc.i.i unwind label %bb.w, !noalias !1946

.noexc.i.i:                                       ; preds = %bb.u
  %i.aw = load i64, ptr %.sroa.619.0..sroa_idx.i, align 8, !alias.scope !1947, !noalias !1948, !noundef !8 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 2305843009213693952
  call void @llvm.assume(i1 %i.ax)
  %.not.i.i.i.i = icmp eq i64 %4, 0
  br i1 %.not.i.i.i.i, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %.noexc.i.i
  %i.ay = load ptr, ptr %.sroa.418.0..sroa_idx.i, align 8, !alias.scope !1947, !noalias !1948, !nonnull !8, !noundef !8
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.aw
  %i.ba = shl nuw nsw i64 %4, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.az, ptr nonnull readonly align 4 %3, i64 %i.ba, i1 false), !noalias !1949
  %.pre.i.i.i.i = load i64, ptr %.sroa.619.0..sroa_idx.i, align 8, !alias.scope !1947, !noalias !1948
  br label %bb.aa

bb.w:                                             ; preds = %bb.u
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #29
          to label %.thread90 unwind label %bb.x, !noalias !1946

bb.x:                                             ; preds = %bb.w
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !noalias !1946
  unreachable

bb.y:                                             ; preds = %bb.t
  %i.bd = shl nuw nsw i64 %i.ai, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.au, ptr nonnull readonly align 4 %i.aj, i64 %i.bd, i1 false), !noalias !1950
  br label %bb.u

.body43.i:                                        ; preds = %bb.bj, %bb.ao, %bb.z
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.bj ], [ %i.be, %bb.z ], [ %i.cf, %bb.ao ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #29
          to label %.thread90 unwind label %bb.bi, !noalias !1951

bb.z:                                             ; preds = %bb.ap, %bb.aa
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body43.i

bb.aa:                                            ; preds = %bb.v, %.noexc.i.i
  %i.bf = phi i64 [ %.pre.i.i.i.i, %bb.v ], [ %i.aw, %.noexc.i.i ]
  %i.bg = add i64 %i.bf, %4
  store i64 %i.bg, ptr %.sroa.619.0..sroa_idx.i, align 8, !alias.scope !1947, !noalias !1948
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !alias.scope !1952, !noalias !1953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1944
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1944
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 5 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !1944, !nonnull !8, !noundef !8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  %i.bk = load i64, ptr %i.bj, align 8, !noalias !1944, !noundef !8
  invoke void @_RNvNtCs8frGy5WneL6_4fish3ast5parse(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.f, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.bi, i64 noundef %i.bk, i48 16842752, ptr noalias nofree noundef align 8 dereferenceable_or_null(24) null)
          to label %bb.ab unwind label %bb.z, !noalias !1951

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1944
  store i64 0, ptr %i.e, align 8, !noalias !1944
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.421.0..sroa_idx.i, align 8, !noalias !1944
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 7 uses
  store i64 0, ptr %.sroa.522.0..sroa_idx.i, align 8, !noalias !1944
  invoke void @_RNvMsz_NtCs8frGy5WneL6_4fish3astNtB5_3Ast4walkB7_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.f)
          to label %bb.ad unwind label %bb.ac, !noalias !1951

.body.i:                                          ; preds = %bb.ai, %.loopexit.i, %bb.ac
  %.pn.i = phi { ptr, i32 } [ %lpad.phi.i, %.loopexit.i ], [ %i.bl, %bb.ac ], [ %i.bs, %bb.ai ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #29
          to label %bb.bj unwind label %bb.bi, !noalias !1951

bb.ac:                                            ; preds = %bb.al, %bb.ak, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryEEB1c_.exit.i.i, %bb.ab
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1944
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !1944
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %.outer.i.outer

.outer.i.outer:                                   ; preds = %bb.bh, %bb.ad
  %.sroa.011.0.ph.i.ph = phi i64 [ %14, %bb.bh ], [ %i.ai, %bb.ad ] ; 7 uses
  br label %.outer.i

.outer.i:                                         ; preds = %.outer.i.backedge, %.outer.i.outer
  br label %bb.ae

bb.ae:                                            ; preds = %.backedge, %.outer.i
  %i.bn = invoke { ptr, ptr } @_RNvXsx_NtCs8frGy5WneL6_4fish3astNtB5_9TraversalNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.af unwind label %.loopexit.loopexit.i, !noalias !1951 ; 2 uses

.loopexit.loopexit.i:                             ; preds = %bb.ag, %bb.ae
  %lpad.loopexit52.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

.loopexit.loopexit.split-lp.i.loopexit:           ; preds = %bb.bc
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

.loopexit.loopexit.split-lp.i.loopexit.split-lp:  ; preds = %bb.bg
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

.loopexit.split-lp.i:                             ; preds = %bb.bf, %.invoke.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.split-lp.i.loopexit, %.loopexit.loopexit.split-lp.i.loopexit.split-lp, %.loopexit.split-lp.i, %.loopexit.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit52.i, %.loopexit.loopexit.i ], [ %lpad.loopexit, %.loopexit.loopexit.split-lp.i.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.loopexit.split-lp.i.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9TraversalEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #29
          to label %.body.i unwind label %bb.bi, !noalias !1951

bb.af:                                            ; preds = %bb.ae
  %i.bo = extractvalue { ptr, ptr } %i.bn, 0      ; 2 uses
  %.not34.i = icmp eq ptr %i.bo, null
  br i1 %.not34.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bp = extractvalue { ptr, ptr } %i.bn, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bp) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1944
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  %i.br = load ptr, ptr %i.bq, align 8, !invariant.load !8, !noalias !1951, !nonnull !8
  invoke void %i.br(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.bo)
          to label %bb.at unwind label %.loopexit.loopexit.i, !noalias !1951

bb.ah:                                            ; preds = %bb.af
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryEEB1c_.exit.i.i unwind label %bb.ai, !noalias !1951

bb.ai:                                            ; preds = %bb.ah
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body.i unwind label %bb.aj, !noalias !1951

bb.aj:                                            ; preds = %bb.ai
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !noalias !1951
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryEEB1c_.exit.i.i: ; preds = %bb.ah
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9TraversalEBF_.exit.i unwind label %bb.ac, !noalias !1951

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9TraversalEBF_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryEEB1c_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1944
  %.val40.i = load i64, ptr %i.bj, align 8, !noalias !1944, !noundef !8 ; 3 uses
  %i.bu = icmp ult i64 %.val40.i, %.sroa.011.0.ph.i.ph
  br i1 %i.bu, label %bb.ak, label %bb.al, !prof !9

bb.ak:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9TraversalEBF_.exit.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @605) #28
          to label %.noexc.i unwind label %bb.ac, !noalias !1951

.noexc.i:                                         ; preds = %bb.ak
  unreachable

bb.al:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9TraversalEBF_.exit.i
  %.val39.i = load ptr, ptr %i.bh, align 8, !noalias !1944, !nonnull !8, !noundef !8
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.val39.i, i64 %.sroa.011.0.ph.i.ph
  %i.bw = sub nuw nsw i64 %.val40.i, %.sroa.011.0.ph.i.ph ; 3 uses
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef range(i64 0, 4611686018427387904) %i.bw)
          to label %.noexc41.i unwind label %bb.ac, !noalias !1951

.noexc41.i:                                       ; preds = %bb.al
  %i.bx = load i64, ptr %.sroa.522.0..sroa_idx.i, align 8, !alias.scope !1954, !noalias !1955, !noundef !8 ; 3 uses
  %i.by = icmp ult i64 %i.bx, 2305843009213693952
  call void @llvm.assume(i1 %i.by)
  %.not.i.i.i = icmp eq i64 %.val40.i, %.sroa.011.0.ph.i.ph
  br i1 %.not.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.noexc41.i
  %i.bz = load ptr, ptr %.sroa.421.0..sroa_idx.i, align 8, !alias.scope !1954, !noalias !1955, !nonnull !8, !noundef !8
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.bx
  %i.cb = shl nuw nsw i64 %i.bw, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ca, ptr nonnull readonly align 4 %i.bv, i64 %i.cb, i1 false), !noalias !1951
  %.pre.i.i.i = load i64, ptr %.sroa.522.0..sroa_idx.i, align 8, !alias.scope !1954, !noalias !1955
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.noexc41.i
  %i.cc = phi i64 [ %.pre.i.i.i, %bb.am ], [ %i.bx, %.noexc41.i ]
  %i.cd = add i64 %i.cc, %i.bw
  store i64 %i.cd, ptr %.sroa.522.0..sroa_idx.i, align 8, !alias.scope !1954, !noalias !1955
  %.sroa.077.0.copyload78 = load i64, ptr %i.e, align 8, !noalias !1956 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.421.0..sroa_idx.i, i64 16, i1 false), !noalias !1956
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1944
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ce)
          to label %bb.ap unwind label %bb.ao, !noalias !1951

bb.ao:                                            ; preds = %bb.an
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast6ExtrasEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.f) #29
          to label %.body43.i unwind label %bb.aq, !noalias !1951

bb.ap:                                            ; preds = %bb.an
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast6ExtrasEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast3AstEBF_.exit.i unwind label %bb.z, !noalias !1951

bb.aq:                                            ; preds = %bb.ao
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !noalias !1951
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast3AstEBF_.exit.i: ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1944
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.ar, !noalias !1951

bb.ar:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast3AstEBF_.exit.i
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.thread90 unwind label %bb.as, !noalias !1951

bb.as:                                            ; preds = %bb.ar
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !noalias !1951
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast3AstEBF_.exit.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.bk unwind label %.thread99

bb.at:                                            ; preds = %bb.ag
  %i.cj = load i64, ptr %i.b, align 8, !range !37, !noalias !1944, !noundef !8
  %i.ck = icmp eq i64 %i.cj, 24
  br i1 %i.ck, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1944
  br label %.backedge

bb.av:                                            ; preds = %bb.at
  %i.cl = load ptr, ptr %i.bm, align 8, !noalias !1944, !nonnull !8, !align !17, !noundef !8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1944
  %.sroa.051.0.copyload.i = load i32, ptr %i.cl, align 8, !alias.scope !1957, !noalias !1951
  %i.cm = trunc nuw i32 %.sroa.051.0.copyload.i to i1
  br i1 %i.cm, label %bb.aw, label %.backedge

bb.aw:                                            ; preds = %bb.av
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 4, !alias.scope !1957, !noalias !1951 ; 2 uses
  %i.cn = zext i32 %.sroa.5.0.copyload.i to i64   ; 10 uses
  %i.co = icmp ugt i64 %i.ai, %i.cn
  br i1 %i.co, label %.backedge, label %bb.ax

.backedge:                                        ; preds = %bb.aw, %bb.av, %bb.au
  br label %bb.ae

bb.ax:                                            ; preds = %bb.aw
  %i.cp = icmp eq i32 %.sroa.5.0.copyload.i, 0
  %.pre.i = load i64, ptr %i.bj, align 8, !noalias !1944 ; 3 uses
  br i1 %i.cp, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ba, %bb.ax
  %i.cq = icmp ugt i64 %.pre.i, %i.cn
  br i1 %i.cq, label %bb.bb, label %.invoke.i

bb.az:                                            ; preds = %bb.ax
  %i.cr = add nsw i64 %i.cn, -1                   ; 3 uses
  %i.cs = icmp ult i64 %i.cr, %.pre.i
  br i1 %i.cs, label %bb.ba, label %.invoke.i

bb.ba:                                            ; preds = %bb.az
  %i.ct = load ptr, ptr %i.bh, align 8, !noalias !1944, !nonnull !8, !noundef !8
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cr
  %i.cv = load i32, ptr %i.cu, align 4, !range !27, !noalias !1951, !noundef !8
  %i.cw = icmp eq i32 %i.cv, 10
  br i1 %i.cw, label %bb.ay, label %.outer.i.backedge

.invoke.i:                                        ; preds = %bb.az, %bb.ay
  %i.cx = phi i64 [ %i.cr, %bb.az ], [ %i.cn, %bb.ay ]
  %i.cy = phi ptr [ @606, %bb.az ], [ @607, %bb.ay ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.cx, i64 noundef %.pre.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cy) #34
          to label %.cont.i unwind label %.loopexit.split-lp.i, !noalias !1951

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.bb:                                            ; preds = %bb.ay
  %i.cz = load ptr, ptr %i.bh, align 8, !noalias !1944, !nonnull !8, !noundef !8
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.cn
  %i.db = load i32, ptr %i.da, align 4, !range !27, !noalias !1951, !noundef !8
  %i.dc = icmp eq i32 %i.db, 36
  br i1 %i.dc, label %bb.bc, label %.outer.i.backedge

bb.bc:                                            ; preds = %bb.bb
  %i.dd = add nuw nsw i64 %i.cn, 1
  %i.de = invoke noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h, i64 noundef %i.dd)
          to label %bb.bd unwind label %.loopexit.loopexit.split-lp.i.loopexit, !noalias !1951

bb.bd:                                            ; preds = %bb.bc
  %i.df = icmp eq i32 %i.de, 32
  br i1 %i.df, label %bb.be, label %.outer.i.backedge

.outer.i.backedge:                                ; preds = %bb.bd, %bb.bb, %bb.ba
  br label %.outer.i

bb.be:                                            ; preds = %bb.bd
  %.val37.i = load i64, ptr %i.bj, align 8, !noalias !1944, !noundef !8
  %i.dg = icmp ugt i64 %.sroa.011.0.ph.i.ph, %i.cn
  %.not.i.i45.i = icmp ult i64 %.val37.i, %i.cn
  %or.cond.i.i.i = or i1 %i.dg, %.not.i.i45.i
  br i1 %or.cond.i.i.i, label %bb.bf, label %bb.bg, !prof !9

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @608) #28
          to label %.noexc46.i unwind label %.loopexit.split-lp.i, !noalias !1951

.noexc46.i:                                       ; preds = %bb.bf
  unreachable

bb.bg:                                            ; preds = %bb.be
  %.val.i = load ptr, ptr %i.bh, align 8, !noalias !1944, !nonnull !8, !noundef !8
  %i.dh = sub nuw nsw i64 %i.cn, %.sroa.011.0.ph.i.ph ; 3 uses
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef range(i64 0, 4611686018427387904) %i.dh)
          to label %bb.bh unwind label %.loopexit.loopexit.split-lp.i.loopexit.split-lp, !noalias !1951

bb.bh:                                            ; preds = %bb.bg
  %10 = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.sroa.011.0.ph.i.ph
  %11 = load i64, ptr %.sroa.522.0..sroa_idx.i, align 8, !alias.scope !1958, !noalias !1959, !noundef !8 ; 2 uses
  %12 = icmp ult i64 %11, 2305843009213693952
  call void @llvm.assume(i1 %12)
  %i.di = load ptr, ptr %.sroa.421.0..sroa_idx.i, align 8, !alias.scope !1958, !noalias !1959, !nonnull !8, !noundef !8
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %11
  %i.dk = shl nuw nsw i64 %i.dh, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dj, ptr nonnull readonly align 4 %10, i64 %i.dk, i1 false), !noalias !1951
  %.pre.i.i48.i = load i64, ptr %.sroa.522.0..sroa_idx.i, align 8, !alias.scope !1958, !noalias !1959
  %13 = add i64 %.pre.i.i48.i, %i.dh
  store i64 %13, ptr %.sroa.522.0..sroa_idx.i, align 8, !alias.scope !1958, !noalias !1959
  %14 = add nuw nsw i64 %i.cn, 2
  br label %.outer.i.outer

bb.bi:                                            ; preds = %bb.bj, %.loopexit.i, %.body.i, %.body43.i
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !noalias !1951
  unreachable

bb.bj:                                            ; preds = %.body.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast3AstEBF_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.f) #29
          to label %.body43.i unwind label %bb.bi, !noalias !1951

.thread103:                                       ; preds = %bb.p, %.noexc37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.bl

bb.bk:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1944
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not31 = icmp eq i64 %.sroa.077.0.copyload78, -1
  br i1 %.not31, label %bb.bl, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit

bb.bl:                                            ; preds = %.thread103, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  store i64 -1, ptr %i.l, align 8
  %.sroa.6.0..sroa_idx118 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %3, ptr %.sroa.6.0..sroa_idx118, align 8
  %.sroa.8119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %4, ptr %.sroa.8119.0..sroa_idx, align 8
  br label %bb.bm

bb.bm:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit, %bb.bl
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef range(i64 0, 4611686018427387904) %i.ai)
          to label %.noexc43 unwind label %bb.bo

.noexc43:                                         ; preds = %bb.bm
  %i.dm = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1960, !noalias !1961, !noundef !8 ; 3 uses
  %i.dn = icmp ult i64 %i.dm, 2305843009213693952
  call void @llvm.assume(i1 %i.dn)
  %.not.i.i41 = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i41, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %.noexc43
  %i.do = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1960, !noalias !1961, !nonnull !8, !noundef !8
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.dm
  %i.dq = shl nuw nsw i64 %i.ai, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dp, ptr nonnull readonly align 4 %i.aj, i64 %i.dq, i1 false)
  %.pre.i.i42 = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1960, !noalias !1961
  br label %bb.bp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit: ; preds = %bb.bk
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.485.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  store i64 %.sroa.077.0.copyload78, ptr %i.l, align 8
  br label %bb.bm

bb.bo:                                            ; preds = %bb.bs, %.noexc52, %bb.bp, %bb.bm, %bb.ca, %bb.bu
  %i.dr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #29
          to label %.thread90 unwind label %bb.cb

bb.bp:                                            ; preds = %bb.bn, %.noexc43
  %i.ds = phi i64 [ %.pre.i.i42, %bb.bn ], [ %i.dm, %.noexc43 ]
  %i.dt = add i64 %i.ds, %i.ai
  store i64 %i.dt, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1960, !noalias !1961
  %i.du = invoke { ptr, i64 } @_RNvXse_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEINtNtCs3oUPovFnLWP_4core7convert5AsRefBI_E6as_refCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
          to label %.noexc52 unwind label %bb.bo  ; 2 uses

.noexc52:                                         ; preds = %bb.bp
  %i.dv = extractvalue { ptr, i64 } %i.du, 1      ; 4 uses
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef range(i64 0, 4611686018427387904) %i.dv)
          to label %.noexc53 unwind label %bb.bo

.noexc53:                                         ; preds = %.noexc52
  %i.dw = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1962, !noalias !1963, !noundef !8 ; 3 uses
  %i.dx = icmp ult i64 %i.dw, 2305843009213693952
  call void @llvm.assume(i1 %i.dx)
  %.not.i.i50 = icmp eq i64 %i.dv, 0
  br i1 %.not.i.i50, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %.noexc53
  %i.dy = extractvalue { ptr, i64 } %i.du, 0
  %i.dz = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1962, !noalias !1963, !nonnull !8, !noundef !8
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.dw
  %i.eb = shl nuw nsw i64 %i.dv, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ea, ptr nonnull readonly align 4 %i.dy, i64 %i.eb, i1 false)
  %.pre.i.i51 = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1962, !noalias !1963
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %.noexc53
  %i.ec = phi i64 [ %.pre.i.i51, %bb.bq ], [ %i.dw, %.noexc53 ]
  %i.ed = add i64 %i.ec, %i.dv
  store i64 %i.ed, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1962, !noalias !1963
  %.not32 = icmp ugt i64 %2, %7
  br i1 %.not32, label %bb.bu, label %bb.bs, !prof !34

bb.bs:                                            ; preds = %bb.br
  %i.ee = sub nuw i64 %2, %8                      ; 3 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %8
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef range(i64 0, 4611686018427387904) %i.ee)
          to label %.noexc56 unwind label %bb.bo

.noexc56:                                         ; preds = %bb.bs
  %i.eg = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1964, !noalias !1965, !noundef !8 ; 3 uses
  %i.eh = icmp ult i64 %i.eg, 2305843009213693952
  call void @llvm.assume(i1 %i.eh)
  %.not.i.i54 = icmp eq i64 %2, %8
  br i1 %.not.i.i54, label %bb.bv, label %bb.bt

bb.bt:                                            ; preds = %.noexc56
  %i.ei = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1964, !noalias !1965, !nonnull !8, !noundef !8
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.eg
  %i.ek = shl nuw nsw i64 %i.ee, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ej, ptr nonnull readonly align 4 %i.ef, i64 %i.ek, i1 false)
  %.pre.i.i55 = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1964, !noalias !1965
  br label %bb.bv

bb.bu:                                            ; preds = %bb.br
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @599) #34
          to label %bb.n unwind label %bb.bo

bb.bv:                                            ; preds = %bb.bt, %.noexc56
  %i.el = phi i64 [ %.pre.i.i55, %bb.bt ], [ %i.eg, %.noexc56 ]
  %i.em = add i64 %i.el, %i.ee
  store i64 %i.em, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1964, !noalias !1965
  %i.en = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.eo = load i64, ptr %i.en, align 8
  %i.ep = add i64 %i.eo, %8                       ; 2 uses
  %i.eq = icmp ult i64 %i.ep, %8
  br i1 %i.eq, label %bb.ca, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.er = load i64, ptr %i.l, align 8, !range !14, !noundef !8
  %.not33 = icmp eq i64 %i.er, -1
  br i1 %.not33, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit64, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i59 unwind label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.es = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.thread90 unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i59: ; preds = %bb.bx
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit64 unwind label %.thread99

bb.ca:                                            ; preds = %bb.bv
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @598) #34
          to label %bb.n unwind label %bb.bo

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit64: ; preds = %bb.bw, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.l

bb.cb:                                            ; preds = %.thread90, %bb.bo
  %i.eu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.cc:                                            ; preds = %bb.f
  %i.ev = icmp ult i64 %2, %1
  %.not27 = icmp ugt i64 %2, %7
  %or.cond35 = or i1 %i.ev, %.not27
  br i1 %or.cond35, label %.invoke, label %bb.cd, !prof !34

bb.cd:                                            ; preds = %bb.cc
  %i.ew = sub nuw i64 %2, %1                      ; 3 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %1
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef range(i64 0, 4611686018427387904) %i.ew)
          to label %.noexc67 unwind label %.thread99

.noexc67:                                         ; preds = %bb.cd
  %i.ey = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1966, !noalias !1967, !noundef !8 ; 3 uses
  %i.ez = icmp ult i64 %i.ey, 2305843009213693952
  call void @llvm.assume(i1 %i.ez)
  %.not.i.i65 = icmp eq i64 %2, %1
  br i1 %.not.i.i65, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %.noexc67
  %i.fa = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1966, !noalias !1967, !nonnull !8, !noundef !8
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.ey
  %i.fc = shl nuw nsw i64 %i.ew, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fb, ptr nonnull readonly align 4 %i.ex, i64 %i.fc, i1 false)
  %.pre.i.i66 = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1966, !noalias !1967
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %.noexc67
end_hunk_0
