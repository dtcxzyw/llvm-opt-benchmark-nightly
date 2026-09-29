Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.13?download=true
inline.NumInlined: 2010
inline.NumDeleted: 1053
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_RNvMs_NtNtCs8frGy5WneL6_4fish9highlight9highlightNtB4_22HighlightColorResolver12resolve_spec:bb.a
bb.t:                                             ; preds = %bb.k
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49, !noalias !1875
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.ac

bb.u:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 0, ptr %i.az, align 1, !alias.scope !1872, !noalias !1877
  br label %_RNvMs_NtNtCs8frGy5WneL6_4fish9highlight9highlightNtB4_22HighlightColorResolver21resolve_spec_uncached.exit

_RNvMs_NtNtCs8frGy5WneL6_4fish9highlight9highlightNtB4_22HighlightColorResolver21resolve_spec_uncached.exit: ; preds = %bb.g, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 %i.h, ptr %i.e, align 1
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.412.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.11, i64 3, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.ba, ptr noundef nonnull align 1 dereferenceable(18) %0, i64 18, i1 false)
  %i.bb = call noundef nonnull ptr @_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecNtNtBV_9text_face8TextFaceEE14insert_no_growBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.07.0.copyload, i64 noundef %.sroa.48.0.copyload, ptr noalias nofree noundef nonnull readonly align 1 captures(none) dereferenceable(22) %i.e) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.w

bb.v:                                             ; preds = %bb.a
  %i.bc = load ptr, ptr %i.f, align 8, !nonnull !12, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %0, ptr noundef nonnull align 1 dereferenceable(18) %i.bd, i64 18, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_RNvMs_NtNtCs8frGy5WneL6_4fish9highlight9highlightNtB4_22HighlightColorResolver21resolve_spec_uncached.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCs8frGy5WneL6_4fish9highlight9highlightNtB4_22HighlightColorResolver3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call { i64, i64 } @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @180) ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0
  %i.c = extractvalue { i64, i64 } %i.a, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @182, i64 32, i1 false)
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.b, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.c, ptr %.sroa.53.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs8frGy5WneL6_4fish13topic_monitor18topic_monitor_init() unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 9 uses
  %i.b = load ptr, ptr @_RNvNtCs8frGy5WneL6_4fish13topic_monitor9PRINCIPAL.0, align 8, !noundef !12
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvMs4_NtCs8frGy5WneL6_4fish13topic_monitorNtB5_12TopicMonitor10initialize.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #50
  %i.d = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 97) 64, i64 noundef range(i64 1, 9) 8) #50 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit.i.i, !prof !16

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #53
  unreachable

_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit.i.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs1_NtCs8frGy5WneL6_4fish13topic_monitorNtB5_15BinarySemaphore3new(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(64) %i.a)
          to label %_RNvXs9_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxNtNtCs8frGy5WneL6_4fish13topic_monitor12TopicMonitorENtNtCs3oUPovFnLWP_4core7default7Default7defaultBL_.exit.i unwind label %bb.d

bb.d:                                             ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit.i.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 64, i64 noundef 8) #50
  resume { ptr, i32 } %i.f

_RNvXs9_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxNtNtCs8frGy5WneL6_4fish13topic_monitor12TopicMonitorENtNtCs3oUPovFnLWP_4core7default7Default7defaultBL_.exit.i: ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 0, ptr %i.g, align 8, !alias.scope !1883
  %.sroa.47.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i8 0, ptr %.sroa.47.0..sroa_idx.i.i.i, align 4, !alias.scope !1883
  %.sroa.58.sroa.0.sroa.3.0..sroa.58.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 0, ptr %i.h, align 8, !alias.scope !1883
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  store i8 0, ptr %i.i, align 4, !alias.scope !1883
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.58.sroa.0.sroa.3.0..sroa.58.0..sroa_idx.sroa_idx.i.i.i, i8 0, i64 25, i1 false), !alias.scope !1883
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr @_RNvNtCs8frGy5WneL6_4fish13topic_monitor9PRINCIPAL.0, align 8
  br label %_RNvMs4_NtCs8frGy5WneL6_4fish13topic_monitorNtB5_12TopicMonitor10initialize.exit

_RNvMs4_NtCs8frGy5WneL6_4fish13topic_monitorNtB5_12TopicMonitor10initialize.exit: ; preds = %bb.a, %_RNvXs9_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxNtNtCs8frGy5WneL6_4fish13topic_monitor12TopicMonitorENtNtCs3oUPovFnLWP_4core7default7Default7defaultBL_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvNtCs8frGy5WneL6_4fish13topic_monitor23topic_monitor_principal() unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @_RNvNtCs8frGy5WneL6_4fish13topic_monitor9PRINCIPAL.0, align 8, !noundef !12 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @183, ptr noundef nonnull inttoptr (i64 79 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @184) #54
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCs8frGy5WneL6_4fish3key10parse_keys(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [1 x i8], align 1                 ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [32 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [64 x i8], align 8                ; 10 uses
  %i.n = alloca [24 x i8], align 8                ; 8 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 8 uses
  %i.q = alloca [16 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 9 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [64 x i8], align 8                ; 10 uses
  %i.v = alloca [24 x i8], align 8                ; 11 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [24 x i8], align 8                ; 8 uses
  %i.y = alloca [24 x i8], align 8                ; 10 uses
  %i.z = alloca [24 x i8], align 8                ; 8 uses
  %i.aa = alloca [24 x i8], align 8               ; 7 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [24 x i8], align 8               ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store i64 0, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 5 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 9 uses
  store i64 0, ptr %i.af, align 8
  %i.ag = icmp eq i64 %2, 0
  br i1 %i.ag, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  br label %bb.db

bb.c:                                             ; preds = %bb.a
  %i.ai = load i32, ptr %1, align 4, !range !33, !noundef !12 ; 3 uses
  %i.aj = icmp eq i64 %2, 1
  br i1 %i.aj, label %bb.d, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECs8frGy5WneL6_4fish.exit

.thread306.loopexit:                              ; preds = %bb.da, %bb.di
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread302

.thread306.loopexit.split-lp.loopexit:            ; preds = %bb.cg, %bb.cf, %bb.ce, %bb.cd, %.lr.ph
  %lpad.loopexit339 = landingpad { ptr, i32 }
          cleanup
  br label %.thread302

.thread306.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_RNCNvYNtCskr4qsHYS30i_15fish_widestring17WStrCharSplitIterNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5count0Cs8frGy5WneL6_4fish.exit.i
  %lpad.loopexit342 = landingpad { ptr, i32 }
          cleanup
  br label %.thread302

.thread306.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.backedge, %bb.cy, %bb.q, %bb.u, %bb.at, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterTcRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapcNCNvNtCs8frGy5WneL6_4fish3key10parse_keyss_0EB2A_.exit, %bb.bm, %bb.av, %bb.bj, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE7or_elseNCNvNtCs8frGy5WneL6_4fish3key10parse_keyss0_0EBY_.exit, %bb.s, %._crit_edge
  %lpad.loopexit344 = landingpad { ptr, i32 }
          cleanup
  br label %.thread302

.thread306.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %bb.k, %bb.d, %.split.i262, %bb.ax, %bb.t
  %lpad.loopexit.split-lp345 = landingpad { ptr, i32 }
          cleanup
  br label %.thread302

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %.sroa.0111.0.insert.ext = zext nneg i32 %i.ai to i64
  invoke fastcc void @_RNvNtCs8frGy5WneL6_4fish3key16canonicalize_key(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ac, i64 noundef %.sroa.0111.0.insert.ext)
          to label %bb.e unwind label %.thread306.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECs8frGy5WneL6_4fish.exit: ; preds = %bb.c
  %i.ak = icmp ult i64 %2, 4
  br i1 %i.ak, label %.lr.ph628.preheader, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECs8frGy5WneL6_4fish.exit.thread

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1956)
  %i.al = load i64, ptr %i.ac, align 8, !range !25, !alias.scope !1956, !noalias !1957, !noundef !12
  %.not.i168 = icmp eq i64 %i.al, -1
  br i1 %.not.i168, label %bb.j, label %bb.f, !prof !15

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1958
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !noalias !1957
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 43, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @50, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @185) #53
          to label %bb.h unwind label %bb.g, !noalias !1956

bb.g:                                             ; preds = %bb.f
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #48
          to label %.thread302 unwind label %bb.i, !noalias !1956

bb.h:                                             ; preds = %bb.f
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49, !noalias !1956
  unreachable

bb.j:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.0.0.copyload.i169 = load i64, ptr %i.ao, align 8, !alias.scope !1956, !noalias !1957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.ap = load i64, ptr %i.af, align 8, !alias.scope !1959, !noundef !12 ; 3 uses
  %i.aq = load i64, ptr %i.ad, align 8, !range !17, !alias.scope !1959, !noundef !12
  %i.ar = icmp eq i64 %i.ap, %i.aq
  br i1 %i.ar, label %bb.k, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish3key3KeyE8push_mutBJ_.exit

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish3key3KeyE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad) #47
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish3key3KeyE8push_mutBJ_.exit unwind label %.thread306.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish3key3KeyE8push_mutBJ_.exit: ; preds = %bb.k, %bb.j
  %i.as = load ptr, ptr %i.ae, align 8, !alias.scope !1959, !nonnull !12, !noundef !12
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ap
  store i64 %.sroa.0.0.copyload.i169, ptr %i.at, align 4
  %i.au = add i64 %i.ap, 1
  store i64 %i.au, ptr %i.af, align 8, !alias.scope !1959
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish3key3KeyE8push_mutBJ_.exit265, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish3key3KeyE8push_mutBJ_.exit, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvNtCs8frGy5WneL6_4fish3key24canonicalize_raw_escapes(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.av, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 0, ptr %0, align 8
  br label %bb.db

bb.l:                                             ; preds = %.lr.ph628.preheader
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val2.i.i.1 = load i32, ptr %i.aw, align 4, !range !33, !alias.scope !1960, !noalias !1961, !noundef !12
  %i.ax = icmp eq i32 %.val2.i.i.1, 45
  br i1 %i.ax, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECs8frGy5WneL6_4fish.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.not.not.i.not.not.i.1 = icmp eq i64 %2, 2
  br i1 %.not.not.not.i.not.not.i.1, label %.lr.ph628, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2.i.i.2 = load i32, ptr %i.ay, align 4, !range !33, !alias.scope !1960, !noalias !1961, !noundef !12
  %i.az = icmp eq i32 %.val2.i.i.2, 45
  br i1 %i.az, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECs8frGy5WneL6_4fish.exit.thread, label %.lr.ph628

.lr.ph628.preheader:                              ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECs8frGy5WneL6_4fish.exit
  %.val2.i.i = load i32, ptr %1, align 4, !range !33, !alias.scope !1960, !noalias !1961, !noundef !12
  %3 = icmp eq i32 %.val2.i.i, 45
  br i1 %3, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECs8frGy5WneL6_4fish.exit.thread, label %bb.l

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECs8frGy5WneL6_4fish.exit.thread: ; preds = %.lr.ph628.preheader, %bb.l, %bb.n, %.lr.ph628, %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit.preheader, %.lr.ph628.a, %.split.i.6, %.split.i.13, %.split.i.15, %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECs8frGy5WneL6_4fish.exit
  %.old = icmp samesign ult i32 %i.ai, 32
  br i1 %.old, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECs8frGy5WneL6_4fish.exit.thread._crit_edge, label %.thread310

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECs8frGy5WneL6_4fish.exit.thread._crit_edge: ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECs8frGy5WneL6_4fish.exit.thread
  %.pre = shl nuw nsw i64 %2, 2
  br label %.lr.ph413

_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit.preheader: ; preds = %.lr.ph628
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val2.i.i208.1 = load i32, ptr %i.ba, align 4, !range !33, !alias.scope !1962, !noalias !1963, !noundef !12
  %.not.not.not.i.not.not.i207 = icmp eq i32 %.val2.i.i208.1, 44
  br i1 %.not.not.not.i.not.not.i207, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECs8frGy5WneL6_4fish.exit.thread, label %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit.preheader.1

_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit.preheader.1: ; preds = %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit.preheader
  %.not.not.not.i.not.not.i207.1 = icmp eq i64 %2, 2
  br i1 %.not.not.not.i.not.not.i207.1, label %_RNCNvNtCs8frGy5WneL6_4fish3key10parse_keys0B5_.exit.backedge.i.5, label %.lr.ph628.a

.lr.ph628.a:                                      ; preds = %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit.preheader.1
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2.i.i208.a = load i32, ptr %4, align 4, !range !33, !alias.scope !1962, !noalias !1963, !noundef !12
  %i.bb = icmp eq i32 %.val2.i.i208.a, 44
  br i1 %i.bb, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECs8frGy5WneL6_4fish.exit.thread, label %_RNCNvNtCs8frGy5WneL6_4fish3key10parse_keys0B5_.exit.backedge.i.5

.lr.ph628:                                        ; preds = %bb.m, %bb.n
  %.val2.i.i208 = load i32, ptr %1, align 4, !range !33, !alias.scope !1962, !noalias !1963, !noundef !12
  %5 = icmp eq i32 %.val2.i.i208, 44
  br i1 %5, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECs8frGy5WneL6_4fish.exit.thread, label %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit.preheader

_RNCNvNtCs8frGy5WneL6_4fish3key10parse_keys0B5_.exit.backedge.i.5: ; preds = %.lr.ph628.a, %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit.preheader.1
  %i.bc = shl nuw nsw i64 %2, 2                   ; 5 uses
  switch i64 %2, label %_RNCNvNtCs8frGy5WneL6_4fish3key10parse_keys0B5_.exit.backedge.i.18 [
    i64 2, label %.split.i.6
    i64 3, label %.split.i.13
  ]

.split.i.6:                                       ; preds = %_RNCNvNtCs8frGy5WneL6_4fish3key10parse_keys0B5_.exit.backedge.i.5
  %bcmp.i.i.6 = tail call i32 @bcmp(ptr nonnull readonly @192, ptr nonnull %1, i64 %i.bc), !noalias !1964
  %i.bd = icmp eq i32 %bcmp.i.i.6, 0
  br i1 %i.bd, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECs8frGy5WneL6_4fish.exit.thread, label %_RNCNvNtCs8frGy5WneL6_4fish3key10parse_keys0B5_.exit.backedge.i.18

.split.i.13:                                      ; preds = %_RNCNvNtCs8frGy5WneL6_4fish3key10parse_keys0B5_.exit.backedge.i.5
  %bcmp.i.i.13 = tail call i32 @bcmp(ptr nonnull readonly @199, ptr nonnull %1, i64 %i.bc), !noalias !1964
  %i.be = icmp eq i32 %bcmp.i.i.13, 0
  br i1 %i.be, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECs8frGy5WneL6_4fish.exit.thread, label %.split.i.15

.split.i.15:                                      ; preds = %.split.i.13
  %bcmp.i.i.15 = tail call i32 @bcmp(ptr nonnull readonly @201, ptr nonnull %1, i64 %i.bc), !noalias !1964
  %i.bf = icmp eq i32 %bcmp.i.i.15, 0
  br i1 %i.bf, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECs8frGy5WneL6_4fish.exit.thread, label %_RNCNvNtCs8frGy5WneL6_4fish3key10parse_keys0B5_.exit.backedge.i.18

_RNCNvNtCs8frGy5WneL6_4fish3key10parse_keys0B5_.exit.backedge.i.18: ; preds = %_RNCNvNtCs8frGy5WneL6_4fish3key10parse_keys0B5_.exit.backedge.i.5, %.split.i.15, %.split.i.6
  switch i32 %i.ai, label %.lr.ph413 [
    i32 70, label %.thread310
    i32 102, label %bb.o
  ]

bb.o:                                             ; preds = %_RNCNvNtCs8frGy5WneL6_4fish3key10parse_keys0B5_.exit.backedge.i.18
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !range !33, !alias.scope !1965, !noundef !12
  %i.bi = add nsw i32 %i.bh, -58
  %or.cond = icmp ult i32 %i.bi, -10
  br i1 %or.cond, label %.lr.ph413, label %.thread310

.lr.ph413:                                        ; preds = %bb.o, %_RNCNvNtCs8frGy5WneL6_4fish3key10parse_keys0B5_.exit.backedge.i.18, %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECs8frGy5WneL6_4fish.exit.thread._crit_edge
  %.idx415.pre-phi = phi i64 [ %.pre, %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECs8frGy5WneL6_4fish.exit.thread._crit_edge ], [ %i.bc, %_RNCNvNtCs8frGy5WneL6_4fish3key10parse_keys0B5_.exit.backedge.i.18 ], [ %i.bc, %bb.o ]
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 %.idx415.pre-phi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  br label %bb.cz

.thread310:                                       ; preds = %_RNCNvNtCs8frGy5WneL6_4fish3key10parse_keys0B5_.exit.backedge.i.18, %bb.o, %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECs8frGy5WneL6_4fish.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr %1, ptr %i.aa, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 %2, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i32 44, ptr %.sroa.3.0..sroa_idx, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.thread310
  %i.br = invoke { ptr, i64 } @_RNvXsg_Cskr4qsHYS30i_15fish_widestringNtB5_17WStrCharSplitIterNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %bb.p unwind label %.thread306.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.p:                                             ; preds = %.backedge
  %i.bs = extractvalue { ptr, i64 } %i.br, 0      ; 8 uses
  %i.bt = extractvalue { ptr, i64 } %i.br, 1      ; 6 uses
  %.not = icmp eq ptr %i.bs, null
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = invoke noundef zeroext i1 @_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5eq_byNtNtNtB15_3str4iter5CharsNCINvYB3_BX_2eqB1Y_E0ECs8frGy5WneL6_4fish(ptr noundef nonnull readonly align 4 %i.bs, ptr noundef nonnull readonly %i.bu, ptr noundef nonnull @206, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @206, i64 1))
          to label %_RNvXs1i_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrINtNtCs3oUPovFnLWP_4core3cmp9PartialEqeE2eq.exit unwind label %.thread306.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %.loopexit

_RNvXs1i_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrINtNtCs3oUPovFnLWP_4core3cmp9PartialEqeE2eq.exit: ; preds = %bb.q
  br i1 %i.bv, label %bb.u, label %bb.s

bb.s:                                             ; preds = %_RNvXs1i_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrINtNtCs3oUPovFnLWP_4core3cmp9PartialEqeE2eq.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i32 45, ptr %i.bl, align 8
  store ptr %i.bs, ptr %i.z, align 8
  store i64 %i.bt, ptr %i.bm, align 8
  %i.bw = invoke { ptr, i64 } @_RNvXsg_Cskr4qsHYS30i_15fish_widestringNtB5_17WStrCharSplitIterNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %.noexc216 unwind label %.thread306.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc216:                                        ; preds = %bb.s
  %i.bx = extractvalue { ptr, i64 } %i.bw, 0
  %.not9.i = icmp eq ptr %i.bx, null
  br i1 %.not9.i, label %bb.y, label %_RNCNvYNtCskr4qsHYS30i_15fish_widestring17WStrCharSplitIterNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5count0Cs8frGy5WneL6_4fish.exit.i

.lr.ph.i214:                                      ; preds = %.noexc218
  %i.by = add nuw i64 %.sroa.0.010.i629, 1        ; 2 uses
  %i.bz = icmp eq i64 %i.by, -1
  br i1 %i.bz, label %bb.t, label %_RNCNvYNtCskr4qsHYS30i_15fish_widestring17WStrCharSplitIterNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5count0Cs8frGy5WneL6_4fish.exit.i

bb.t:                                             ; preds = %.lr.ph.i214
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #54
          to label %.noexc217 unwind label %.thread306.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc217:                                        ; preds = %bb.t
  unreachable

_RNCNvYNtCskr4qsHYS30i_15fish_widestring17WStrCharSplitIterNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5count0Cs8frGy5WneL6_4fish.exit.i: ; preds = %.noexc216, %.lr.ph.i214
  %.sroa.0.010.i629 = phi i64 [ %i.by, %.lr.ph.i214 ], [ 0, %.noexc216 ] ; 3 uses
  %i.ca = invoke { ptr, i64 } @_RNvXsg_Cskr4qsHYS30i_15fish_widestringNtB5_17WStrCharSplitIterNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %.noexc218 unwind label %.thread306.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc218:                                        ; preds = %_RNCNvYNtCskr4qsHYS30i_15fish_widestring17WStrCharSplitIterNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5count0Cs8frGy5WneL6_4fish.exit.i
  %i.cb = extractvalue { ptr, i64 } %i.ca, 0
  %.not.i215 = icmp eq ptr %i.cb, null
  br i1 %.not.i215, label %bb.x, label %.lr.ph.i214

bb.u:                                             ; preds = %_RNvXs1i_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrINtNtCs3oUPovFnLWP_4core3cmp9PartialEqeE2eq.exit
  %i.cc = invoke noundef align 4 ptr @_RNvNtNtCs8frGy5WneL6_4fish6reader6reader28get_terminal_mode_on_startup()
          to label %.noexc220 unwind label %.thread306.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc220:                                        ; preds = %bb.u
  %.not.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.noexc220
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 19
  %i.ce = load i8, ptr %i.cd, align 1, !noalias !1966, !noundef !12
  %i.cf = icmp eq i8 %i.ce, 45
  br i1 %i.cf, label %bb.cx, label %bb.w

bb.w:                                             ; preds = %bb.v, %.noexc220
  br label %bb.cx

bb.x:                                             ; preds = %.noexc218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store i32 45, ptr %i.bn, align 8
  store ptr %i.bs, ptr %i.y, align 8
  store i64 %i.bt, ptr %i.bo, align 8
  %.not414 = icmp eq i64 %.sroa.0.010.i629, 0
  br i1 %.not414, label %._crit_edge, label %.lr.ph

bb.y:                                             ; preds = %.noexc216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store i32 45, ptr %i.bn, align 8
  store ptr %i.bs, ptr %i.y, align 8
  store i64 %i.bt, ptr %i.bo, align 8
  br label %.invoke

.invoke:                                          ; preds = %.noexc231, %bb.z, %bb.cc, %bb.y
  %i.cg = phi ptr [ @220, %bb.y ], [ @213, %bb.cc ], [ @207, %bb.z ], [ @210, %.noexc231 ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cg) #53
          to label %.cont unwind label %.thread306.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

._crit_edge.loopexit:                             ; preds = %bb.cw
  %i.ch = zext nneg i8 %.sroa.6.1 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.x
  %.sroa.6.0.lcssa = phi i64 [ 0, %bb.x ], [ %i.ch, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.5.0.lcssa = phi i8 [ 0, %bb.x ], [ %.sroa.5.1, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.421.0.lcssa = phi i8 [ 0, %bb.x ], [ %.sroa.421.1, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.019.0.lcssa = phi i8 [ 0, %bb.x ], [ %.sroa.019.1, %._crit_edge.loopexit ] ; 2 uses
  %i.ci = invoke { ptr, i64 } @_RNvXsg_Cskr4qsHYS30i_15fish_widestringNtB5_17WStrCharSplitIterNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %bb.z unwind label %.thread306.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.lr.ph:                                           ; preds = %bb.x, %bb.cw
  %.sroa.089.0407 = phi i64 [ %i.cj, %bb.cw ], [ 0, %bb.x ]
  %.sroa.019.0406 = phi i8 [ %.sroa.019.1, %bb.cw ], [ 0, %bb.x ] ; 3 uses
  %.sroa.421.0405 = phi i8 [ %.sroa.421.1, %bb.cw ], [ 0, %bb.x ] ; 3 uses
  %.sroa.5.0404 = phi i8 [ %.sroa.5.1, %bb.cw ], [ 0, %bb.x ] ; 3 uses
  %.sroa.6.0403 = phi i8 [ %.sroa.6.1, %bb.cw ], [ 0, %bb.x ] ; 3 uses
  %i.cj = add nuw i64 %.sroa.089.0407, 1          ; 2 uses
  %i.ck = invoke { ptr, i64 } @_RNvXsg_Cskr4qsHYS30i_15fish_widestringNtB5_17WStrCharSplitIterNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %bb.cc unwind label %.thread306.loopexit.split-lp.loopexit ; 2 uses

bb.z:                                             ; preds = %._crit_edge
  %i.cl = extractvalue { ptr, i64 } %i.ci, 0      ; 26 uses
  %i.cm = extractvalue { ptr, i64 } %i.ci, 1      ; 7 uses
  %.not137 = icmp eq ptr %i.cl, null
  br i1 %.not137, label %.invoke, label %.lr.ph.i222, !prof !16

.lr.ph.i222:                                      ; preds = %bb.z
  %i.cn = shl nuw i64 %i.cm, 2                    ; 19 uses
  switch i64 %i.cm, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE7or_elseNCNvNtCs8frGy5WneL6_4fish3key10parse_keyss0_0EBY_.exit [
    i64 5, label %bb.aa
    i64 9, label %bb.ac
    i64 6, label %bb.ad
    i64 2, label %bb.af
    i64 4, label %bb.ag
    i64 8, label %bb.aj
    i64 3, label %bb.al
    i64 11, label %bb.ao
    i64 1, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterTcRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapcNCNvNtCs8frGy5WneL6_4fish3key10parse_keyss_0EB2A_.exit
  ]

bb.aa:                                            ; preds = %.lr.ph.i222
  %bcmp.i.i224 = call i32 @bcmp(ptr nonnull @186, ptr nonnull %i.cl, i64 %i.cn), !noalias !1967
  %i.co = icmp eq i32 %bcmp.i.i224, 0
  br i1 %i.co, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterTcRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapcNCNvNtCs8frGy5WneL6_4fish3key10parse_keyss_0EB2A_.exit, label %bb.ab
end_hunk_0
