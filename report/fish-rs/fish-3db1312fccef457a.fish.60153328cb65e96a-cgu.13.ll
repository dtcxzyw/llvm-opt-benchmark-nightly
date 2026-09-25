Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.13?download=true
inline.NumInlined: 2010
inline.NumDeleted: 1053
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RNvNtNtCs8frGy5WneL6_4fish9highlight9highlight33autosuggest_validate_from_history:bb.a

bb.bs:                                            ; preds = %bb.br, %bb.bq, %bb.bp
  %.sroa.4.0.i19 = phi ptr [ @58, %bb.bp ], [ %i.dm, %bb.bq ], [ %i.dq, %bb.br ]
  %.sroa.0.0.i20 = phi ptr [ %i.di, %bb.bp ], [ %i.dk, %bb.bq ], [ %i.do, %bb.br ]
  invoke void @_RNvNtCs8frGy5WneL6_4fish4path13path_get_path(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.dd, i64 noundef %i.de, ptr noundef nonnull %.sroa.0.0.i20, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.4.0.i19)
          to label %bb.bt unwind label %bb.an

bb.bt:                                            ; preds = %bb.bs
  %i.dr = load i64, ptr %i.g, align 8, !range !25, !noundef !12
  %i.ds = icmp eq i64 %i.dr, -1
  br i1 %i.ds, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit.thread, label %bb.bu

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit.thread: ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.bi

bb.bu:                                            ; preds = %bb.bt
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i23 unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.dt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i23: ; preds = %bb.bu
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit unwind label %bb.an

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.bx

bb.bx:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit, %bb.bl, %bb.bn
  %i.dv = invoke noundef zeroext i1 @_RNvNtNtCs8frGy5WneL6_4fish7history7history19all_paths_are_valid(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef %5, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %8)
          to label %bb.by unwind label %bb.an

bb.by:                                            ; preds = %bb.bx
  br i1 %i.dv, label %bb.bz, label %bb.bi

bb.bz:                                            ; preds = %bb.by
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i27 unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body17 unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i27: ; preds = %bb.bz
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit31 unwind label %bb.cc

.body17:                                          ; preds = %bb.bj, %bb.ca, %bb.cc, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.cy, %bb.bj ], [ %i.dy, %bb.cc ], [ %i.dw, %bb.ca ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j) #48
          to label %common.resume unwind label %bb.ci

bb.cc:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i27, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %.body17

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit34 unwind label %bb.cd

bb.cd:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  %i.dz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit34: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ch

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit31: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit37 unwind label %bb.cf

bb.cf:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit31
  %i.eb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit37: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit31
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ch

bb.ch:                                            ; preds = %bb.e, %bb.am, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit34, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit37
  %.sroa.0.2 = phi i1 [ true, %bb.am ], [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit37 ], [ %.sroa.0.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit34 ], [ false, %bb.e ]
  ret i1 %.sroa.0.2

bb.ci:                                            ; preds = %.body17, %.body
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs8frGy5WneL6_4fish9highlight9highlight8colorize(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(none) %3, i64 noundef range(i64 0, 2305843009213693952) %4, ptr noundef nonnull %5, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %6) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  %i.b = alloca [18 x i8], align 1                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [18 x i8], align 4                ; 9 uses
  %i.e = alloca [18 x i8], align 1                ; 3 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = alloca [56 x i8], align 8                ; 16 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %4, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 %2, ptr %i.i, align 8
  %i.k = icmp eq i64 %4, %2
  br i1 %i.k, label %bb.c, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  call void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @474) #54
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2508)
  %i.l = tail call { i64, i64 } @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @180), !noalias !2508 ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0
  %i.n = extractvalue { i64, i64 } %i.l, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(32) @182, i64 32, i1 false)
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 %i.m, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !2508
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i64 %i.n, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !2508
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  store i8 3, ptr %i.o, align 2
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  store i8 3, ptr %i.p, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 14
  store i8 3, ptr %i.q, align 2
  store <4 x i8> <i8 0, i8 0, i8 1, i8 1>, ptr %i.d, align 4
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i8 1, ptr %.sroa.517.0..sroa_idx, align 4
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  store i8 6, ptr %.sroa.618.0..sroa_idx, align 1
  store i64 0, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i32 0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  store i32 -1, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.t, ptr noundef nonnull align 4 dereferenceable(18) %i.d, i64 18, i1 false)
  %.idx = shl nuw nsw i64 %4, 2
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.v = icmp eq i64 %4, 0
  br i1 %i.v, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.y
  %.sroa.022.061 = phi i8 [ 0, %.lr.ph ], [ %.sroa.022.1, %bb.y ] ; 2 uses
  %.sroa.021.060 = phi i8 [ 0, %.lr.ph ], [ %.sroa.021.1, %bb.y ] ; 2 uses
  %.sroa.020.059 = phi i8 [ 0, %.lr.ph ], [ %.sroa.020.1, %bb.y ] ; 2 uses
  %.sroa.019.058 = phi i8 [ 0, %.lr.ph ], [ %.sroa.019.1, %bb.y ] ; 2 uses
  %.sroa.0.057 = phi ptr [ %1, %.lr.ph ], [ %i.x, %bb.y ] ; 2 uses
  %.sroa.7.056 = phi i64 [ 0, %.lr.ph ], [ %i.ad, %bb.y ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.057, i64 4 ; 2 uses
  %i.y = load i32, ptr %.sroa.0.057, align 4, !noalias !2509, !noundef !12 ; 5 uses
  %i.z = xor i32 %i.y, 55296
  %i.aa = add i32 %i.z, -1114112
  %i.ab = icmp ult i32 %i.aa, -1112064
  br i1 %i.ab, label %.split.i.i, label %bb.f

.split.i.i:                                       ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2510
  store i32 %i.y, ptr %i.a, align 4, !noalias !2510
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @732) #54
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.split.i.i
  unreachable

.loopexit:                                        ; preds = %bb.s, %bb.t, %bb.v, %bb.w
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp:                               ; preds = %._crit_edge, %bb.g, %bb.i, %bb.r, %.split.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8terminal9OutputterEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.g) #48
          to label %.body unwind label %bb.z

bb.f:                                             ; preds = %bb.d
  %i.ac = icmp ult i32 %i.y, 1114112
  call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %.sroa.7.056, 1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %exitcond.not = icmp eq i64 %.sroa.7.056, %4
  br i1 %exitcond.not, label %bb.r, label %bb.q

._crit_edge:                                      ; preds = %bb.y, %bb.c
  invoke void @_RNvMs_NtCs8frGy5WneL6_4fish8terminalNtB4_9Outputter13set_text_face(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.g, ptr noalias nofree noundef nonnull align 1 captures(address) dereferenceable(18) %i.d)
          to label %bb.g unwind label %.loopexit.split-lp

bb.g:                                             ; preds = %._crit_edge
  %i.ae = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !12, !noundef !12
  %i.af = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !noundef !12 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.af, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.h unwind label %.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  %i.ag = load i64, ptr %i.c, align 8, !range !27, !noundef !12
  %i.ah = trunc nuw i64 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !range !28, !noundef !12 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.ah, label %bb.i, label %bb.j, !prof !16

bb.i:                                             ; preds = %bb.h
  %i.al = load i64, ptr %i.ak, align 8
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.aj, i64 %i.al) #53
          to label %bb.p unwind label %.loopexit.split-lp

bb.j:                                             ; preds = %bb.h
  %i.am = load ptr, ptr %i.ak, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.an = icmp ule i64 %i.af, %i.aj
  call void @llvm.assume(i1 %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.aj, ptr %0, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.ap, align 8
  %.not30 = icmp eq i64 %i.af, 0
  br i1 %.not30, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.n, %bb.j
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.g)
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.k
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8terminal9OutputterEBF_.exit unwind label %bb.o

bb.n:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.am, ptr nonnull align 1 %i.ae, i64 %i.af, i1 false)
  store i64 %i.af, ptr %i.ap, align 8
  br label %bb.k

.body:                                            ; preds = %bb.o, %bb.l, %bb.e
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.e ], [ %i.as, %bb.o ], [ %i.aq, %bb.l ]
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecNtNtBV_9text_face8TextFaceEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.h)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish9highlight9highlight22HighlightColorResolverEBH_.exit unwind label %bb.z

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8terminal9OutputterEBF_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecNtNtBV_9text_face8TextFaceEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.p:                                             ; preds = %bb.r, %bb.i
  unreachable

bb.q:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sroa.7.056
  %i.au = load i32, ptr %i.at, align 1            ; 5 uses
  store i32 %i.au, ptr %i.f, align 4
  %7 = trunc i32 %i.au to i8                      ; 2 uses
  %8 = icmp eq i8 %.sroa.019.058, %7
  %9 = lshr i32 %i.au, 8
  %10 = trunc i32 %9 to i8                        ; 2 uses
  %11 = icmp eq i8 %.sroa.022.061, %10
  %or.cond35 = select i1 %8, i1 %11, i1 false
  %12 = lshr i32 %i.au, 16
  %13 = trunc i32 %12 to i8                       ; 2 uses
  %14 = icmp eq i8 %.sroa.020.059, %13
  %or.cond38 = select i1 %or.cond35, i1 %14, i1 false
  %15 = lshr i32 %i.au, 24
  %16 = trunc nuw i32 %15 to i8                   ; 2 uses
  %.not31 = icmp eq i8 %.sroa.021.060, %16
  %or.cond40 = select i1 %or.cond38, i1 %.not31, i1 false
  br i1 %or.cond40, label %bb.u, label %bb.s

bb.r:                                             ; preds = %bb.f
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %4, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @475) #53
          to label %bb.p unwind label %.loopexit.split-lp

bb.s:                                             ; preds = %bb.q
  invoke void @_RNvMs_NtNtCs8frGy5WneL6_4fish9highlight9highlightNtB4_22HighlightColorResolver12resolve_spec(ptr noalias nofree noundef nonnull sret([18 x i8]) align 1 captures(address) dereferenceable(18) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %i.f, ptr noundef nonnull %5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %6)
          to label %bb.t unwind label %.loopexit

bb.t:                                             ; preds = %bb.s
  store i8 3, ptr %i.w, align 1
  invoke void @_RNvMs_NtCs8frGy5WneL6_4fish8terminalNtB4_9Outputter13set_text_face(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.g, ptr noalias nofree noundef nonnull align 1 captures(address) dereferenceable(18) %i.e)
          to label %bb.u unwind label %.loopexit

bb.u:                                             ; preds = %bb.t, %bb.q
  %.sroa.019.1 = phi i8 [ %.sroa.019.058, %bb.q ], [ %7, %bb.t ]
  %.sroa.020.1 = phi i8 [ %.sroa.020.059, %bb.q ], [ %13, %bb.t ]
  %.sroa.021.1 = phi i8 [ %.sroa.021.060, %bb.q ], [ %16, %bb.t ]
  %.sroa.022.1 = phi i8 [ %.sroa.022.061, %bb.q ], [ %10, %bb.t ]
  %i.av = icmp eq i64 %i.ad, %4
  %i.aw = icmp eq i32 %i.y, 10
  %or.cond = and i1 %i.av, %i.aw
  br i1 %or.cond, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.x
  invoke void @_RNvMs_NtCs8frGy5WneL6_4fish8terminalNtB4_9Outputter7writech(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.g, i32 noundef %i.y)
          to label %bb.y unwind label %.loopexit

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.b, ptr noundef nonnull align 4 dereferenceable(18) %i.d, i64 18, i1 false)
  invoke void @_RNvMs_NtCs8frGy5WneL6_4fish8terminalNtB4_9Outputter13set_text_face(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.g, ptr noalias nofree noundef nonnull align 1 captures(address) dereferenceable(18) %i.b)
          to label %bb.x unwind label %.loopexit

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.v

bb.y:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ax = icmp eq ptr %i.x, %i.u
  br i1 %i.ax, label %._crit_edge, label %bb.d

bb.z:                                             ; preds = %.body, %bb.e
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish9highlight9highlight22HighlightColorResolverEBH_.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookup(i32 noundef range(i32 133, 1114112) %0) unnamed_addr #22 {
bb.a:
  %i.a = lshr i32 %0, 8
  switch i32 %i.a, label %bb.e [
    i32 0, label %bb.d
    i32 22, label %bb.b
    i32 32, label %bb.f
    i32 48, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %0, 5760
  %i.c = zext i1 %i.b to i8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %0, 12288
  %i.e = zext i1 %i.d to i8
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.f = and i32 %0, 255
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !noundef !12
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.f, %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi i8 [ %i.e, %bb.c ], [ %i.i, %bb.d ], [ %i.c, %bb.b ], [ %i.o, %bb.f ], [ 0, %bb.a ]
  %i.j = trunc i8 %.sroa.0.0 to i1
  ret i1 %i.j

bb.f:                                             ; preds = %bb.a
  %i.k = and i32 %0, 255
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !noundef !12
  %i.o = lshr i8 %i.n, 1
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNvNtNtCs8frGy5WneL6_4fish8builtins6random6random8parse_ll(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef %5) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [72 x i8], align 8                ; 7 uses
  tail call void @_RNvNtNtCs8frGy5WneL6_4fish5wutil6wcstoi11fish_wcstol(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef %5)
  %i.f = load i8, ptr %0, align 8, !range !14, !noundef !12
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit9, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.g = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @477)
          to label %bb.d unwind label %.loopexit.split-lp11 ; 2 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit: ; preds = %bb.e, %.loopexit10, %.loopexit.split-lp11
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp13, %.loopexit.split-lp11 ], [ %lpad.loopexit12, %.loopexit10 ], [ %i.j, %bb.e ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #48
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit10:                                      ; preds = %.noexc8.preheader
  %lpad.loopexit12 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit

.loopexit.split-lp11:                             ; preds = %bb.c
  %lpad.loopexit.split-lp13 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit

bb.d:                                             ; preds = %bb.c
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %4, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %5, ptr %.sroa.5.0..sroa_idx, align 8
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.h, i64 noundef %i.i, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @16, ptr noalias nofree noundef nonnull align 8 %i.b, i64 noundef 1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !2514)
  %i.k = load i8, ptr %i.c, align 8, !range !14, !alias.scope !2514, !noalias !2515, !noundef !12
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %.noexc8.preheader, !prof !16

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2516
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.n = load i8, ptr %i.m, align 1, !range !36, !alias.scope !2514, !noalias !2515, !noundef !12
  store i8 %i.n, ptr %i.a, align 1, !noalias !2516
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @478) #54
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.g
  unreachable

.noexc8.preheader:                                ; preds = %bb.f
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit9 unwind label %.loopexit10

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit9: ; preds = %.noexc8.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr null, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr null, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i8 0, ptr %i.s, align 8
  store ptr %2, ptr %i.o, align 8
  store i64 %3, ptr %i.p, align 8
  call void @_RNvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB2_5Error6finish(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
  br label %bb.b

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCskt5MLIAl8nl_9hashbrownNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrINtB2_10EquivalentNtNtBu_9utfstring11Utf32StringE10equivalentCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(none) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #23 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1 = load i64, ptr %i.a, align 8, !noundef !12
  %i.b = icmp eq i64 %1, %.val1
  br i1 %i.b, label %bb.b, label %_RNvXs1t_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !12, !noundef !12
  %i.d = shl nuw nsw i64 %1, 2
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 4 %0, ptr nonnull readonly align 4 %.val, i64 %i.d), !alias.scope !2523
  %i.e = icmp eq i32 %bcmp.i.i.i, 0
  br label %_RNvXs1t_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit
end_hunk_0
