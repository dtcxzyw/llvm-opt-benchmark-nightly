inline.NumInlined: 561
inline.NumDeleted: 240
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvXsd_NtCseqDwI8vvjGQ_10serde_json3rawNtB6_15BoxedFromStringNtNtCs1gOyXocuPRE_10serde_core2de7Visitor9visit_strNtNtB8_5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs:bb.a
  %i.m = icmp ugt i64 %i.f, %2
  br i1 %i.m, label %bb.e, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE16into_boxed_sliceCsj34PGqTgg0L_16deltalake_lakefs.exit

bb.e:                                             ; preds = %bb.d
  %i.n = invoke { i64, i64 } @_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef range(i64 0, 9223372036854775807) %2, i64 noundef 1, i64 noundef 1)
          to label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.f ; 2 uses

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.i

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.e
  %i.p = extractvalue { i64, i64 } %i.n, 0        ; 2 uses
  %.not.i = icmp eq i64 %i.p, -9223372036854775807
  br i1 %.not.i, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsj34PGqTgg0L_16deltalake_lakefs.exit._crit_edge.i, label %bb.g, !prof !360

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsj34PGqTgg0L_16deltalake_lakefs.exit._crit_edge.i: ; preds = %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %.sroa.511.0.copyload.pre.i = load i64, ptr %i.l, align 8, !alias.scope !361
  %.sroa.410.0.copyload.i.pre = load ptr, ptr %i.k, align 8, !alias.scope !361
  br label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE16into_boxed_sliceCsj34PGqTgg0L_16deltalake_lakefs.exit

bb.g:                                             ; preds = %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %i.q = extractvalue { i64, i64 } %i.n, 1
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.q) #19
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.f
  resume { ptr, i32 } %i.o

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE16into_boxed_sliceCsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.d, %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsj34PGqTgg0L_16deltalake_lakefs.exit._crit_edge.i
  %.sroa.410.0.copyload.i = phi ptr [ %.sroa.410.0.copyload.i.pre, %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsj34PGqTgg0L_16deltalake_lakefs.exit._crit_edge.i ], [ %i.i, %bb.d ]
  %.sroa.511.0.copyload.i = phi i64 [ %.sroa.511.0.copyload.pre.i, %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsj34PGqTgg0L_16deltalake_lakefs.exit._crit_edge.i ], [ %2, %bb.d ] ; 2 uses
  %i.s = icmp sgt i64 %.sroa.511.0.copyload.i, -1
  call void @llvm.assume(i1 %i.s)
  store ptr %.sroa.410.0.copyload.i, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.511.0.copyload.i, ptr %i.t, align 8
  ret void

bb.j:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %2, i1 false)
  store i64 %2, ptr %i.l, align 8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtB8_11Deserialize11deserializeQINtNtB1k_2de12DeserializerNtNtB1k_4read9SliceReadEECsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB1l_5implsINtNtCs6Po7BT7Nknu_5alloc3vec3VecpENtB1l_11Deserialize11deserialize10VecVisitorNtNtB8_5value5ValueEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtCs8ulvy0Wg6Ot_12delta_kernel4pathINtB5_13ParsedLogPathNtCseo6ZV82fEK1_3url3UrlE8try_fromCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 16 captures(none) dereferenceable(160) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(88) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 13 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.063 = alloca [136 x i8], align 8         ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [72 x i8], align 8                ; 4 uses
  %i.j = alloca [72 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 10 uses
  %i.l = alloca [72 x i8], align 8                ; 24 uses
  %i.m = alloca [24 x i8], align 8                ; 13 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
  %i.o = alloca [72 x i8], align 8                ; 6 uses
  %i.p = alloca [72 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_RNvMs_Cseo6ZV82fEK1_3urlNtB4_3Url13path_segments(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.q, %bb.k, %bb.h, %bb.g, %bb.d, %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 52
  %i.s = load i32, ptr %i.r, align 4, !range !364, !noundef !6
  %.not = icmp eq i32 %i.s, 1114112
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.p, ptr noundef nonnull align 8 dereferenceable(72) %i.o, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.t = invoke fastcc { ptr, i64 } @_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE9next_backCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(72) %i.p)
          to label %bb.f unwind label %bb.b       ; 2 uses

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  store i64 -9223372036854775808, ptr %0, align 16
  br label %bb.cu

bb.f:                                             ; preds = %bb.d
  %i.u = extractvalue { ptr, i64 } %i.t, 0        ; 2 uses
  %i.v = extractvalue { ptr, i64 } %i.t, 1        ; 5 uses
  %.not121 = icmp eq ptr %i.u, null
  br i1 %.not121, label %bb.h, label %bb.g, !prof !8

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.v, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.j unwind label %bb.b

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #19
          to label %bb.i unwind label %bb.b

bb.i:                                             ; preds = %bb.at, %bb.k, %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.w = load i64, ptr %i.e, align 8, !range !30, !noundef !6
  %i.x = trunc nuw i64 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !31, !noundef !6 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.x, label %bb.k, label %bb.l, !prof !8

bb.k:                                             ; preds = %bb.j
  %i.ab = load i64, ptr %i.aa, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.z, i64 %i.ab) #19
          to label %bb.i unwind label %bb.b

bb.l:                                             ; preds = %bb.j
  %i.ac = load ptr, ptr %i.aa, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.ad = icmp ule i64 %i.v, %i.z
  tail call void @llvm.assume(i1 %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.not122 = icmp eq i64 %i.v, 0
  br i1 %.not122, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.n, %bb.l
  store i64 %i.z, ptr %i.n, align 8
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store ptr %i.ac, ptr %.sroa.474.0..sroa_idx, align 8
  %.sroa.675.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store i64 %i.v, ptr %.sroa.675.0..sroa_idx, align 8
  %i.ae = invoke fastcc { ptr, i64 } @_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE9next_backCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(72) %i.p)
          to label %bb.o unwind label %.thread192.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull align 1 %i.u, i64 %i.v, i1 false)
  br label %bb.m

.thread192.loopexit:                              ; preds = %bb.ac
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread188

.thread192.loopexit.split-lp.loopexit:            ; preds = %bb.r
  %lpad.loopexit211 = landingpad { ptr, i32 }
          cleanup
  br label %.thread188

.thread192.loopexit.split-lp.loopexit.split-lp:   ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit170, %bb.ah, %bb.m, %select.unfold.i
  %lpad.loopexit.split-lp212 = landingpad { ptr, i32 }
          cleanup
  br label %.thread188

bb.o:                                             ; preds = %bb.m
  %i.af = extractvalue { ptr, i64 } %i.ae, 0      ; 5 uses
  %i.ag = extractvalue { ptr, i64 } %i.ae, 1
  %i.ah = load i64, ptr %.sroa.675.0..sroa_idx, align 8, !noundef !6 ; 11 uses
  %i.ai = icmp sgt i64 %i.ah, -1
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp eq i64 %i.ah, 0
  br i1 %i.aj, label %bb.p, label %.lr.ph.split.preheader.i.i

bb.p:                                             ; preds = %bb.o
  store i64 -9223372036854775808, ptr %0, align 16
  br label %bb.q

bb.q:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECsj34PGqTgg0L_16deltalake_lakefs.exit, %.loopexit, %bb.p
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.b

.lr.ph.split.preheader.i.i:                       ; preds = %bb.o
  %i.ak = load ptr, ptr %.sroa.474.0..sroa_idx, align 8, !nonnull !6, !noundef !6 ; 6 uses
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.u, %.lr.ph.split.preheader.i.i
  %i.al = phi i64 [ %i.ba, %bb.u ], [ 0, %.lr.ph.split.preheader.i.i ] ; 5 uses
  %i.am = sub nuw nsw i64 %i.ah, %i.al            ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.al ; 2 uses
  %i.ao = icmp samesign ult i64 %i.am, 16
  br i1 %i.ao, label %.preheader.i.i.i, label %bb.r

.preheader.i.i.i:                                 ; preds = %.lr.ph.split.i.i
  %.not.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.r:                                             ; preds = %.lr.ph.split.i.i
  %i.ap = invoke { i64, i64 } @_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr14memchr_aligned(i8 noundef 46, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.an, i64 noundef range(i64 0, -9223372036854775808) %i.am)
          to label %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i unwind label %.thread192.loopexit.split-lp.loopexit

._crit_edge.i.i.i:                                ; preds = %bb.s, %.lr.ph.i.i.i, %.preheader.i.i.i
  %.sroa.01.0.lcssa.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %i.am, %bb.s ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ]
  %.sroa.0.1.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ 0, %bb.s ], [ 1, %.lr.ph.i.i.i ]
  %i.aq = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i, 0
  %i.ar = insertvalue { i64, i64 } %i.aq, i64 %.sroa.01.0.lcssa.i.i.i, 1
  br label %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.s
  %.sroa.01.05.i.i.i = phi i64 [ %i.av, %bb.s ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.01.05.i.i.i
  %i.at = load i8, ptr %i.as, align 1, !alias.scope !365, !noalias !368, !noundef !6
  %i.au = icmp eq i8 %i.at, 46
  br i1 %i.au, label %._crit_edge.i.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i
  %i.av = add nuw nsw i64 %.sroa.01.05.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.av, %i.am
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i: ; preds = %bb.r, %._crit_edge.i.i.i
  %.merged.i.i.i = phi { i64, i64 } [ %i.ar, %._crit_edge.i.i.i ], [ %i.ap, %bb.r ] ; 2 uses
  %i.aw = extractvalue { i64, i64 } %.merged.i.i.i, 0
  %i.ax = trunc nuw i64 %i.aw to i1
  br i1 %i.ax, label %bb.t, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i

bb.t:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i
  %i.ay = extractvalue { i64, i64 } %.merged.i.i.i, 1 ; 3 uses
  %i.az = add nuw i64 %i.al, 1
  %i.ba = add i64 %i.az, %i.ay                    ; 5 uses
  %.not13.i.i = icmp ugt i64 %i.ba, %i.ah
  %i.bb = add i64 %i.al, %i.ay
  %or.cond.i.i.not = icmp ult i64 %i.bb, %i.ah
  br i1 %or.cond.i.i.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.v, %bb.t
  br i1 %.not13.i.i, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i, label %.lr.ph.split.i.i

bb.v:                                             ; preds = %bb.t
  %i.bc = add i64 %i.al, %i.ay                    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bc
  %lhsc = load i8, ptr %i.bd, align 1
  %i.be = icmp eq i8 %lhsc, 46
  br i1 %i.be, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i, label %bb.u

_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i: ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i, %bb.u, %bb.v
  %.sroa.9.0 = phi i64 [ %i.ba, %bb.v ], [ %i.ah, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i ], [ %i.ba, %bb.u ]
  %.sroa.17.0 = phi i8 [ 0, %bb.v ], [ 1, %bb.u ], [ 1, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i ]
  %.sroa.0.0 = phi i64 [ %i.ba, %bb.v ], [ 0, %bb.u ], [ 0, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i ]
  %.sroa.4.1.i = phi i64 [ %i.bc, %bb.v ], [ %i.ah, %bb.u ], [ %i.ah, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i ] ; 3 uses
  switch i64 %.sroa.4.1.i, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.w
  ]

bb.w:                                             ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i
  %i.bf = load i8, ptr %i.ak, align 1, !alias.scope !374, !noalias !377, !noundef !6 ; 2 uses
  switch i8 %i.bf, label %bb.x [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i
  %.pr.i = load i8, ptr %i.ak, align 1, !alias.scope !374, !noalias !377
  br label %bb.x

bb.x:                                             ; preds = %thread-pre-split.i, %bb.w
  %i.bg = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.bf, %bb.w ]
  %cond.i = icmp eq i8 %i.bg, 43                  ; 2 uses
  %i.bh = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %.sroa.4.1.i, %i.bh ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.sroa.0.0.idx.i ; 2 uses
  %i.bi = icmp samesign ult i64 %.sroa.15.0.i, 17
  br i1 %i.bi, label %.preheader.i, label %.preheader56.i.preheader

.preheader.i:                                     ; preds = %bb.x
  %.not5366.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5366.i, label %_RNvMsD_NtCsbvkFyIu7lgC_4core3numy16from_ascii_radix.exit, label %.lr.ph.i

.preheader56.i:                                   ; preds = %bb.y
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i153311, i64 1
  %i.bk = add nsw i64 %.sroa.15.1.i310, -1        ; 2 uses
  %.not52.i = icmp eq i64 %i.bk, 0
  br i1 %.not52.i, label %_RNvMsD_NtCsbvkFyIu7lgC_4core3numy16from_ascii_radix.exit, label %.preheader56.i.preheader

.preheader56.i.preheader:                         ; preds = %bb.x, %.preheader56.i
  %.sroa.0.1.i153311 = phi ptr [ %i.bj, %.preheader56.i ], [ %.sroa.0.0.i, %bb.x ] ; 2 uses
  %.sroa.15.1.i310 = phi i64 [ %i.bk, %.preheader56.i ], [ %.sroa.15.0.i, %bb.x ]
  %.sroa.042.0.i309 = phi i64 [ %i.bt, %.preheader56.i ], [ 0, %bb.x ]
  %i.bl = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i309, i64 10) ; 2 uses
  %i.bm = extractvalue { i64, i1 } %i.bl, 1
  br i1 %i.bm, label %.loopexit, label %bb.y, !prof !8

bb.y:                                             ; preds = %.preheader56.i.preheader
  %i.bn = extractvalue { i64, i1 } %i.bl, 0       ; 2 uses
  %i.bo = load i8, ptr %.sroa.0.1.i153311, align 1, !alias.scope !374, !noalias !377, !noundef !6
  %i.bp = zext i8 %i.bo to i32
  %i.bq = add nsw i32 %i.bp, -48                  ; 2 uses
  %i.br = icmp ugt i32 %i.bq, 9
  %i.bs = zext nneg i32 %i.bq to i64
  %i.bt = add i64 %i.bn, %i.bs                    ; 3 uses
  %i.bu = icmp ult i64 %i.bt, %i.bn
  %or.cond201 = select i1 %i.br, i1 true, i1 %i.bu, !prof !47
  br i1 %or.cond201, label %.loopexit, label %.preheader56.i, !prof !47

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.z
  %.sroa.0.269.i = phi ptr [ %i.cb, %bb.z ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.15.268.i = phi i64 [ %i.ca, %bb.z ], [ %.sroa.15.0.i, %.preheader.i ]
  %.sroa.042.267.i = phi i64 [ %i.cd, %bb.z ], [ 0, %.preheader.i ]
  %i.bv = load i8, ptr %.sroa.0.269.i, align 1, !alias.scope !374, !noalias !377, !noundef !6
  %i.bw = zext i8 %i.bv to i32
  %i.bx = add nsw i32 %i.bw, -48                  ; 2 uses
  %i.by = icmp ult i32 %i.bx, 10
  br i1 %i.by, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %.lr.ph.i
  %i.bz = mul i64 %.sroa.042.267.i, 10
  %i.ca = add nsw i64 %.sroa.15.268.i, -1         ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i, i64 1
  %i.cc = zext nneg i32 %i.bx to i64
  %i.cd = add i64 %i.bz, %i.cc                    ; 2 uses
  %.not53.i = icmp eq i64 %i.ca, 0
  br i1 %.not53.i, label %_RNvMsD_NtCsbvkFyIu7lgC_4core3numy16from_ascii_radix.exit, label %.lr.ph.i

_RNvMsD_NtCsbvkFyIu7lgC_4core3numy16from_ascii_radix.exit: ; preds = %.preheader56.i, %bb.z, %.preheader.i
  %.sroa.11177.0 = phi i64 [ %i.cd, %bb.z ], [ 0, %.preheader.i ], [ %i.bt, %.preheader56.i ]
  %i.ce = icmp eq i64 %.sroa.4.1.i, 20
  br i1 %i.ce, label %bb.aa, label %.loopexit

bb.aa:                                            ; preds = %_RNvMsD_NtCsbvkFyIu7lgC_4core3numy16from_ascii_radix.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 %.sroa.0.0, ptr %i.l, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.ah, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.ak, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %i.ah, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i64 %i.ah, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store i32 46, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 52
  store i32 46, ptr %.sroa.14.0..sroa_idx, align 4
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store i8 1, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.16321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  store i8 1, ptr %.sroa.16321.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 65
  store i8 %.sroa.17.0, ptr %.sroa.17.0..sroa_idx, align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !384
  tail call void @llvm.experimental.noalias.scope.decl(metadata !385)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.l, i64 65 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !range !391, !alias.scope !392, !noalias !379, !noundef !6
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %.thread283, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ci = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.val.i.i.i = load ptr, ptr %i.ci, align 8, !alias.scope !392, !noalias !379, !nonnull !6, !noundef !6 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.val1.i.i.i = load i64, ptr %i.cj, align 8, !alias.scope !392, !noalias !379, !noundef !6 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !393)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.cm = load i64, ptr %i.cl, align 8, !alias.scope !396, !noalias !397, !noundef !6 ; 5 uses
  %.not.i.i.i.i = icmp ugt i64 %i.cm, %.val1.i.i.i
  %.promoted.i.i.i.i = load i64, ptr %i.ck, align 8, !alias.scope !396, !noalias !397 ; 2 uses
  %i.cn = icmp ult i64 %i.cm, %.promoted.i.i.i.i
  %or.cond21.i.i.i.i = or i1 %.not.i.i.i.i, %i.cn
  br i1 %or.cond21.i.i.i.i, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i, label %.lr.ph.split.preheader.i.i.i.i

.lr.ph.split.preheader.i.i.i.i:                   ; preds = %bb.ab
  %i.co = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.cq = load i8, ptr %i.cp, align 8, !alias.scope !396, !noalias !397, !noundef !6 ; 2 uses
  %i.cr = zext nneg i8 %i.cq to i64               ; 4 uses
  %i.cs = icmp ult i8 %i.cq, 5
  tail call void @llvm.assume(i1 %i.cs)
  %2 = getelementptr i8, ptr %i.co, i64 %i.cr
  %3 = getelementptr i8, ptr %2, i64 -1
  %.pre.i.i.i.i = load i8, ptr %3, align 1, !alias.scope !396, !noalias !397 ; 2 uses
  br label %.lr.ph.split.i.i.i.i.a

.lr.ph.split.i.i.i.i.a:                           ; preds = %bb.af, %.lr.ph.split.preheader.i.i.i.i
  %i.ct = phi i64 [ %i.di, %bb.af ], [ %.promoted.i.i.i.i, %.lr.ph.split.preheader.i.i.i.i ] ; 3 uses
  %i.cu = sub nuw i64 %i.cm, %i.ct                ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.ct ; 2 uses
  %i.cw = icmp samesign ult i64 %i.cu, 16
  br i1 %i.cw, label %.preheader.i.i.i.i.i, label %bb.ac

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph.split.i.i.i.i.a
  %.not.i.i.i.i.i = icmp eq i64 %i.cu, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.ac:                                            ; preds = %.lr.ph.split.i.i.i.i.a
  %i.cx = invoke { i64, i64 } @_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cv, i64 noundef range(i64 0, -9223372036854775808) %i.cu)
          to label %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i unwind label %.thread192.loopexit

._crit_edge.i.i.i.i.i:                            ; preds = %bb.ad, %.lr.ph.i.i.i.i.i, %.preheader.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i ], [ %i.cu, %bb.ad ], [ %.sroa.01.05.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i ], [ 0, %bb.ad ], [ 1, %.lr.ph.i.i.i.i.i ]
  %i.cy = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i, 0
  %i.cz = insertvalue { i64, i64 } %i.cy, i64 %.sroa.01.0.lcssa.i.i.i.i.i, 1
  br label %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i, %bb.ad
  %.sroa.01.05.i.i.i.i.i = phi i64 [ %i.dd, %bb.ad ], [ 0, %.preheader.i.i.i.i.i ] ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.sroa.01.05.i.i.i.i.i
  %i.db = load i8, ptr %i.da, align 1, !alias.scope !399, !noalias !402, !noundef !6
  %i.dc = icmp eq i8 %i.db, %.pre.i.i.i.i
  br i1 %i.dc, label %._crit_edge.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.dd = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.dd, %i.cu
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i: ; preds = %bb.ac, %._crit_edge.i.i.i.i.i
  %.merged.i.i.i.i.i = phi { i64, i64 } [ %i.cz, %._crit_edge.i.i.i.i.i ], [ %i.cx, %bb.ac ] ; 2 uses
  %i.de = extractvalue { i64, i64 } %.merged.i.i.i.i.i, 0
  %i.df = trunc nuw i64 %i.de to i1
  br i1 %i.df, label %bb.ae, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.sink.split

bb.ae:                                            ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i
  %i.dg = extractvalue { i64, i64 } %.merged.i.i.i.i.i, 1
  %i.dh = add i64 %i.ct, 1
  %i.di = add i64 %i.dh, %i.dg                    ; 8 uses
  %.not12.i.i.i.i = icmp ult i64 %i.di, %i.cr
  %.not13.i.i.i.i = icmp ugt i64 %i.di, %.val1.i.i.i
  %or.cond.i.i.i.i = or i1 %.not12.i.i.i.i, %.not13.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ag, %bb.ae
  %i.dj = icmp ult i64 %i.cm, %i.di
  br i1 %i.dj, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.sink.split, label %.lr.ph.split.i.i.i.i.a

bb.ag:                                            ; preds = %bb.ae
  %i.dk = sub nuw i64 %i.di, %i.cr                ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.dk
  %bcmp.i.i.i.i = call i32 @bcmp(ptr nonnull %i.dl, ptr nonnull %i.co, i64 %i.cr), !noalias !397
  %i.dm = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.dm, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i, label %bb.af

_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i: ; preds = %bb.ag
  store i64 %i.di, ptr %i.ck, align 8
  %i.dn = load i64, ptr %i.l, align 8, !alias.scope !392, !noalias !379, !noundef !6 ; 2 uses
  %i.do = sub nuw i64 %i.dk, %i.dn
  store i64 %i.di, ptr %i.l, align 8, !alias.scope !392, !noalias !379
  br label %select.unfold.i

_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.sink.split: ; preds = %bb.af, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i
  %.sink = phi i64 [ %i.cm, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i ], [ %i.di, %bb.af ]
  store i64 %.sink, ptr %i.ck, align 8
  br label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i

_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i: ; preds = %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.sink.split, %bb.ab
  store i8 1, ptr %i.cf, align 1, !alias.scope !403, !noalias !379
  %i.dp = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.dq = load i8, ptr %i.dp, align 8, !range !391, !alias.scope !403, !noalias !379, !noundef !6
  %i.dr = trunc nuw i8 %i.dq to i1
  %.pre.i2.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !403, !noalias !379 ; 3 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.pre2.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !403, !noalias !379 ; 2 uses
  %.not.i3.i.i.i = icmp ne i64 %.pre2.i.i.i.i, %.pre.i2.i.i.i
  %or.cond.not.i.i.i.i = select i1 %i.dr, i1 true, i1 %.not.i3.i.i.i
  %i.ds = sub nuw i64 %.pre2.i.i.i.i, %.pre.i2.i.i.i
  br i1 %or.cond.not.i.i.i.i, label %select.unfold.i, label %.thread283

select.unfold.i:                                  ; preds = %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i
  %.sroa.4.1.i.i.i = phi i64 [ %i.do, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i ], [ %i.ds, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i ]
  %.pn.i = phi i64 [ %i.dn, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i ], [ %.pre.i2.i.i.i, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !384
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %.noexc158 unwind label %.thread192.loopexit.split-lp.loopexit.split-lp

.noexc158:                                        ; preds = %select.unfold.i
  %i.dt = load i64, ptr %i.a, align 8, !range !30, !noalias !384, !noundef !6
  %i.du = trunc nuw i64 %i.dt to i1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dw = load i64, ptr %i.dv, align 8, !range !31, !noalias !384, !noundef !6 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.du, label %bb.ah, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsj34PGqTgg0L_16deltalake_lakefs.exit.i, !prof !8

bb.ah:                                            ; preds = %.noexc158
  %i.dy = load i64, ptr %i.dx, align 8, !noalias !384
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.dw, i64 %i.dy) #19
          to label %.noexc159 unwind label %.thread192.loopexit.split-lp.loopexit.split-lp

.noexc159:                                        ; preds = %bb.ah
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %.noexc158
  %.sroa.0.1.i.i.i154 = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.pn.i
  %i.dz = load ptr, ptr %i.dx, align 8, !noalias !384, !nonnull !6, !noundef !6 ; 5 uses
  %i.ea = icmp ugt i64 %i.dw, 3
  tail call void @llvm.assume(i1 %i.ea)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !384
  store ptr %.sroa.0.1.i.i.i154, ptr %i.dz, align 8, !noalias !384
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store i64 %.sroa.4.1.i.i.i, ptr %i.eb, align 8, !noalias !384
  store i64 %i.dw, ptr %i.c, align 8, !noalias !384
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.dz, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !384
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %i.l, i64 72, i1 false), !noalias !379
  tail call void @llvm.experimental.noalias.scope.decl(metadata !406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !414)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 2 uses
  %.promoted.i.i.i = load i8, ptr %i.ec, align 1, !alias.scope !416, !noalias !421
  %.promoted13.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !422, !noalias !421 ; 4 uses
  %i.ed = trunc nuw i8 %.promoted.i.i.i to i1
  br i1 %i.ed, label %.loopexit285, label %.lr.ph.i.i.i155

.lr.ph.i.i.i155:                                  ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val.i.i.i.i.i = load ptr, ptr %i.ee, align 8, !alias.scope !416, !noalias !421, !nonnull !6, !noundef !6 ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val1.i.i.i.i.i = load i64, ptr %i.ef, align 8, !alias.scope !416, !noalias !421, !noundef !6 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.eh = load i64, ptr %i.eg, align 8, !alias.scope !423, !noalias !426, !noundef !6 ; 5 uses
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.eh, %.val1.i.i.i.i.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ek = load i8, ptr %i.ej, align 8, !alias.scope !422, !noalias !421 ; 2 uses
  %i.el = zext nneg i8 %i.ek to i64               ; 4 uses
  %i.em = icmp ult i8 %i.ek, 5
  %i.en = getelementptr i8, ptr %i.ei, i64 %i.el
  %i.eo = getelementptr i8, ptr %i.en, i64 -1
  %i.ep = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.eq = load i8, ptr %i.ep, align 8, !range !391, !alias.scope !422, !noalias !421
  %i.er = trunc nuw i8 %i.eq to i1                ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre2.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !alias.scope !422, !noalias !421 ; 4 uses
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.preheader.i.i.i

.lr.ph.split.preheader.i.i.i:                     ; preds = %.lr.ph.i.i.i155
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.promoted17.i.i.i = load i64, ptr %i.es, align 8, !alias.scope !423, !noalias !426
  br label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i155
  %.not.i3.i.i.us.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i, %.promoted13.i.i.i
  %or.cond.not.i.i.i.us.i.i.i = select i1 %i.er, i1 true, i1 %.not.i3.i.i.us.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !429)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !430)
  br i1 %or.cond.not.i.i.i.us.i.i.i, label %._crit_edge.split.us.split.us.i.i.i, label %.loopexit285

._crit_edge.split.us.split.us.i.i.i:              ; preds = %.lr.ph.split.us.i.i.i
  %.sroa.0.1.i.i.us.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.promoted13.i.i.i
  %i.et = sub nuw i64 %.pre2.i.i.i.i.i.i, %.promoted13.i.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store ptr %.sroa.0.1.i.i.us.i.i.i, ptr %i.eu, align 8, !noalias !431
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  store i64 %i.et, ptr %i.ev, align 8, !noalias !431
  store i64 2, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !432, !noalias !431
  br label %.loopexit285

.lr.ph.split.i.i.i:                               ; preds = %.noexc11.i, %.lr.ph.split.preheader.i.i.i
  %i.ew = phi i64 [ %i.ft, %.noexc11.i ], [ %.promoted17.i.i.i, %.lr.ph.split.preheader.i.i.i ] ; 3 uses
  %.lcssa111516.i.i.i = phi i64 [ %.lcssa1114.i.i.i, %.noexc11.i ], [ %.promoted13.i.i.i, %.lr.ph.split.preheader.i.i.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !428)
  call void @llvm.experimental.noalias.scope.decl(metadata !429)
  call void @llvm.experimental.noalias.scope.decl(metadata !430)
  %i.ex = icmp ult i64 %i.eh, %i.ew
  br i1 %i.ex, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i.i

.lr.ph.split.preheader.i.i.i.i.i.i:               ; preds = %.lr.ph.split.i.i.i
  call void @llvm.assume(i1 %i.em)
  %.pre.i.i.i.i.i.i = load i8, ptr %i.eo, align 1, !alias.scope !423, !noalias !426 ; 2 uses
  br label %.lr.ph.split.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i:                         ; preds = %bb.al, %.lr.ph.split.preheader.i.i.i.i.i.i
  %i.ey = phi i64 [ %i.fn, %bb.al ], [ %i.ew, %.lr.ph.split.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.ez = sub nuw i64 %i.eh, %i.ey                ; 5 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.ey ; 2 uses
  %i.fb = icmp samesign ult i64 %i.ez, 16
  br i1 %i.fb, label %.preheader.i.i.i.i.i.i.i, label %bb.ai

.preheader.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.split.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ez, 0
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.ai:                                            ; preds = %.lr.ph.split.i.i.i.i.i.i
  %i.fc = invoke { i64, i64 } @_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fa, i64 noundef range(i64 0, -9223372036854775808) %i.ez)
          to label %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i.i.i unwind label %.loopexit.i156, !noalias !384

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.aj, %.lr.ph.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i ], [ %i.ez, %bb.aj ], [ %.sroa.01.05.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i ], [ 0, %bb.aj ], [ 1, %.lr.ph.i.i.i.i.i.i.i ]
  %i.fd = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i.i.i, 0
  %i.fe = insertvalue { i64, i64 } %i.fd, i64 %.sroa.01.0.lcssa.i.i.i.i.i.i.i, 1
  br label %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.i.i, %bb.aj
  %.sroa.01.05.i.i.i.i.i.i.i = phi i64 [ %i.fi, %bb.aj ], [ 0, %.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 %.sroa.01.05.i.i.i.i.i.i.i
  %i.fg = load i8, ptr %i.ff, align 1, !alias.scope !433, !noalias !436, !noundef !6
  %i.fh = icmp eq i8 %i.fg, %.pre.i.i.i.i.i.i
  br i1 %i.fh, label %._crit_edge.i.i.i.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.fi = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.fi, %i.ez
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i, %bb.ai
  %.merged.i.i.i.i.i.i.i = phi { i64, i64 } [ %i.fe, %._crit_edge.i.i.i.i.i.i.i ], [ %i.fc, %bb.ai ] ; 2 uses
  %i.fj = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i.i, 0
  %i.fk = trunc nuw i64 %i.fj to i1
  br i1 %i.fk, label %bb.ak, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i.i

bb.ak:                                            ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i.i.i
  %i.fl = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i.i, 1
  %i.fm = add i64 %i.ey, 1
  %i.fn = add i64 %i.fm, %i.fl                    ; 8 uses
  %.not12.i.i.i.i.i.i = icmp ult i64 %i.fn, %i.el
  %.not13.i.i.i.i.i.i = icmp ugt i64 %i.fn, %.val1.i.i.i.i.i
  %or.cond.i.i.i.i.i.i = or i1 %.not12.i.i.i.i.i.i, %.not13.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.am, %bb.ak
  %i.fo = icmp ult i64 %i.eh, %i.fn
  br i1 %i.fo, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i

bb.am:                                            ; preds = %bb.ak
  %i.fp = sub nuw i64 %i.fn, %i.el                ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.fp
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.fq, ptr nonnull %i.ei, i64 %i.el), !noalias !437
  %i.fr = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.fr, label %select.unfold.i.i.i, label %bb.al

_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i.i: ; preds = %bb.al, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i.i.i, %.lr.ph.split.i.i.i
  %i.fs = phi i64 [ %i.ew, %.lr.ph.split.i.i.i ], [ %i.fn, %bb.al ], [ %i.eh, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i.i.i ]
  store i8 1, ptr %i.ec, align 1, !alias.scope !438, !noalias !421
  %.not.i3.i.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i, %.lcssa111516.i.i.i
  %or.cond.not.i.i.i.i.i.i = select i1 %i.er, i1 true, i1 %.not.i3.i.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i.i, label %select.unfold.i.i.i, label %.loopexit285

select.unfold.i.i.i:                              ; preds = %bb.am, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i.i
  %i.ft = phi i64 [ %i.fs, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i.i ], [ %i.fn, %bb.am ]
  %.lcssa1114.i.i.i = phi i64 [ %.lcssa111516.i.i.i, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i.i ], [ %i.fn, %bb.am ]
  %i.fu = phi i1 [ true, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i.i ], [ false, %bb.am ]
  %.pn.i.i.i = phi i64 [ %.pre2.i.i.i.i.i.i, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i.i ], [ %i.fp, %bb.am ]
  %.sroa.4.1.i.i.i.i.i = sub nuw i64 %.pn.i.i.i, %.lcssa111516.i.i.i
  %.sroa.0.1.i.i.i.i9.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.lcssa111516.i.i.i
  %i.fv = load i64, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !432, !noalias !431, !noundef !6 ; 5 uses
  %i.fw = icmp ult i64 %i.fv, 576460752303423488
  call void @llvm.assume(i1 %i.fw)
  %i.fx = load i64, ptr %i.c, align 8, !range !7, !alias.scope !432, !noalias !431, !noundef !6
  %i.fy = icmp eq i64 %i.fv, %i.fx
  br i1 %i.fy, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecReE7reserveCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i, label %.noexc11.i

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecReE7reserveCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i: ; preds = %select.unfold.i.i.i
  invoke void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.fv, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 16)
          to label %.noexc11.i unwind label %.loopexit.split-lp.i, !noalias !384

.noexc11.i:                                       ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecReE7reserveCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i, %select.unfold.i.i.i
  %i.fz = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !432, !noalias !431, !nonnull !6, !noundef !6
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.fz, i64 %i.fv ; 2 uses
  store ptr %.sroa.0.1.i.i.i.i9.i, ptr %i.ga, align 8, !noalias !431
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  store i64 %.sroa.4.1.i.i.i.i.i, ptr %i.gb, align 8, !noalias !431
  %i.gc = add nuw nsw i64 %i.fv, 1
  store i64 %i.gc, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !432, !noalias !431
  br i1 %i.fu, label %.loopexit285, label %.lr.ph.split.i.i.i

.thread283:                                       ; preds = %bb.aa, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i
  store i64 0, ptr %i.m, align 8, !alias.scope !379, !noalias !382
  %i.gd = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.gd, align 8, !alias.scope !379, !noalias !382
  %i.ge = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 0, ptr %i.ge, align 8, !alias.scope !379, !noalias !382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  br label %bb.ap

.loopexit.i156:                                   ; preds = %bb.ai
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.loopexit.split-lp.i:                             ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecReE7reserveCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.an:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i156
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i156 ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.thread188 unwind label %bb.ao, !noalias !384

bb.ao:                                            ; preds = %bb.an
  %i.gf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #21, !noalias !384
  unreachable

.loopexit285:                                     ; preds = %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i.i, %.noexc11.i, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsj34PGqTgg0L_16deltalake_lakefs.exit.i, %.lr.ph.split.us.i.i.i, %._crit_edge.split.us.split.us.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !382
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.gg = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.not124 = icmp eq i64 %.pre, 0
  br i1 %.not124, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.thread283, %.loopexit285
  store i64 -9223372036854775808, ptr %0, align 16
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit170

bb.aq:                                            ; preds = %.loopexit285
  %i.gi = load ptr, ptr %i.gg, align 8, !nonnull !6, !noundef !6
  %i.gj = getelementptr [16 x i8], ptr %i.gi, i64 %.pre ; 2 uses
  %i.gk = getelementptr i8, ptr %i.gj, i64 -16
  %i.gl = load ptr, ptr %i.gk, align 8, !nonnull !6, !noundef !6
  %i.gm = getelementptr i8, ptr %i.gj, i64 -8
  %i.gn = load i64, ptr %i.gm, align 8, !noundef !6 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.gn, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.as unwind label %bb.ar

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit170: ; preds = %bb.ch, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %.thread192.loopexit.split-lp.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit164: ; preds = %bb.ba, %bb.ar
  %.pn = phi { ptr, i32 } [ %i.go, %bb.ar ], [ %i.hh, %bb.ba ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.thread188 unwind label %bb.cs

bb.ar:                                            ; preds = %bb.ch, %bb.at, %bb.aq
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit164

bb.as:                                            ; preds = %bb.aq
  %i.gp = load i64, ptr %i.d, align 8, !range !30, !noundef !6
  %i.gq = trunc nuw i64 %i.gp to i1
  %i.gr = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.gs = load i64, ptr %i.gr, align 8, !range !31, !noundef !6 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.gq, label %bb.at, label %bb.au, !prof !8

bb.at:                                            ; preds = %bb.as
  %i.gu = load i64, ptr %i.gt, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.gs, i64 %i.gu) #19
          to label %bb.i unwind label %bb.ar

bb.au:                                            ; preds = %bb.as
  %i.gv = load ptr, ptr %i.gt, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.gw = icmp ule i64 %i.gn, %i.gs
  call void @llvm.assume(i1 %i.gw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not125 = icmp eq i64 %i.gn, 0
  br i1 %.not125, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.aw, %bb.au
  store i64 %i.gs, ptr %i.k, align 8
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.gv, ptr %.sroa.483.0..sroa_idx, align 8
  %.sroa.684.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %i.gn, ptr %.sroa.684.0..sroa_idx, align 8
  %.not126 = icmp eq ptr %i.af, null
  br i1 %.not126, label %bb.bf, label %bb.ax

bb.aw:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gv, ptr nonnull align 1 %i.gl, i64 %i.gn, i1 false)
  br label %bb.av

end_hunk_0
