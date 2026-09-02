Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.07?download=true
inline.NumInlined: 1670
inline.NumDeleted: 581
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_RNvNtNtCs8frGy5WneL6_4fish8builtins4bind4bind:bb.a
  %.sroa.44.0.copyload.i.i.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2057, !noalias !2062, !nonnull !10, !noundef !10 ; 3 uses
  %.sroa.55.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.sroa.55.0.copyload.i.i.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2057, !noalias !2062 ; 2 uses
  %i.hc = icmp ult i64 %.sroa.55.0.copyload.i.i.i.i, 192153584101141163
  call void @llvm.assume(i1 %i.hc)
  %i.hd = getelementptr inbounds nuw [48 x i8], ptr %.sroa.44.0.copyload.i.i.i.i, i64 %.sroa.55.0.copyload.i.i.i.i
  store ptr %i.gw, ptr %i.at, align 8, !noalias !2036
  %.sroa.0.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.gw, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2036
  %.sroa.0.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 %i.gx, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2036
  %.sroa.0.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store ptr %i.hb, ptr %.sroa.0.sroa.6.0..sroa_idx.i.i, align 8, !noalias !2036
  %.sroa.4.0..sroa_idx1.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  store ptr %.sroa.44.0.copyload.i.i.i.i, ptr %.sroa.4.0..sroa_idx1.i.i, align 8, !noalias !2036
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  store ptr %.sroa.44.0.copyload.i.i.i.i, ptr %.sroa.5.0..sroa_idx2.i.i, align 8, !noalias !2036
  %.sroa.6.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  store i64 %.sroa.03.0.copyload.i.i.i.i, ptr %.sroa.6.0..sroa_idx3.i.i, align 8, !noalias !2036
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  store ptr %i.hd, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !2036
  invoke void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB2u_5chain5ChainINtNtB6_9into_iter8IntoIterNtNtNtCs8frGy5WneL6_4fish5input7binding11BindingNameEB3y_ENCNvMs_NtNtB45_8builtins4bindNtB52_11BuiltinBind10list_modes0EE9from_iterB45_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.au, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.at)
          to label %.noexc6 unwind label %bb.hg

.noexc6:                                          ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !2036
  %i.he = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.hf = load ptr, ptr %i.he, align 8, !noalias !2036, !nonnull !10, !noundef !10 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  %i.hh = load i64, ptr %i.hg, align 8, !noalias !2036, !noundef !10 ; 4 uses
  %i.hi = icmp ult i64 %i.hh, 2
  br i1 %i.hi, label %bb.bv, label %bb.bs, !prof !8

bb.bs:                                            ; preds = %.noexc6
  %i.hj = icmp ult i64 %i.hh, 21
  br i1 %i.hj, label %bb.bu, label %bb.bt, !prof !8

bb.bt:                                            ; preds = %bb.bs
  invoke void @_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort8unstable7ipnsortNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYBT_NtNtB8_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 %i.hf, i64 noundef %i.hh, ptr noalias nofree noundef nonnull %i.a)
          to label %bb.bv unwind label %bb.ce

bb.bu:                                            ; preds = %bb.bs
  invoke void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB1m_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 %i.hf, i64 noundef %i.hh, i64 noundef 1, ptr noalias nofree noundef nonnull %i.a)
          to label %bb.bv unwind label %bb.ce

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %.noexc6
  invoke void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8dedup_byNCNvMs5_B5_Bv_5dedup0ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %bb.bw unwind label %bb.ce

bb.bw:                                            ; preds = %bb.bv
  %i.hk = load ptr, ptr %i.he, align 8, !noalias !2036, !nonnull !10, !noundef !10 ; 4 uses
  %i.hl = load i64, ptr %i.au, align 8, !range !42, !noalias !2036, !noundef !10
  %i.hm = load i64, ptr %i.hg, align 8, !noalias !2036, !noundef !10 ; 3 uses
  %i.hn = icmp ult i64 %i.hm, 384307168202282326
  call void @llvm.assume(i1 %i.hn)
  %.idx.i.i = mul nuw nsw i64 %i.hm, 24
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hk, i64 %.idx.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !2036
  store ptr %i.hk, ptr %i.as, align 8, !noalias !2036
  %.sroa.4.0..sroa_idx.i18.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 3 uses
  store ptr %i.hk, ptr %.sroa.4.0..sroa_idx.i18.i, align 8, !noalias !2036
  %.sroa.5.0..sroa_idx.i19.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i64 %i.hl, ptr %.sroa.5.0..sroa_idx.i19.i, align 8, !noalias !2036
  %.sroa.6.0..sroa_idx.i20.i = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 2 uses
  store ptr %i.ho, ptr %.sroa.6.0..sroa_idx.i20.i, align 8, !noalias !2036
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.79.i.i)
  %i.hp = icmp eq i64 %i.hm, 0
  br i1 %i.hp, label %_RNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB4_11BuiltinBind10list_modes.exit.i, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.lr.ph.i.i

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.lr.ph.i.i: ; preds = %bb.bw
  %.sroa.79.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  br label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i

.body.i21.i:                                      ; preds = %bb.cb, %bb.bz, %bb.bx
  %.pn.i22.i = phi { ptr, i32 } [ %i.hu, %bb.bz ], [ %i.hq, %bb.bx ], [ %i.hv, %bb.cb ]
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.as)
          to label %.body unwind label %bb.cd

bb.bx:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i.i
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i21.i

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.lr.ph.i.i
  %i.hr = phi ptr [ %i.hk, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.lr.ph.i.i ], [ %i.hy, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2066)
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 24
  store ptr %i.hs, ptr %.sroa.4.0..sroa_idx.i18.i, align 8, !alias.scope !2066, !noalias !2069
  %.sroa.0.0.copyload8.i.i = load i64, ptr %i.hr, align 8, !noalias !2066 ; 2 uses
  %.sroa.79.0..sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.79.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.79.0..sroa_idx10.i.i, i64 16, i1 false), !noalias !2066
  %.not.i.i = icmp eq i64 %.sroa.0.0.copyload8.i.i, -1
  br i1 %.not.i.i, label %_RNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB4_11BuiltinBind10list_modes.exit.i, label %bb.by

bb.by:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !2036
  store i64 %.sroa.0.0.copyload8.i.i, ptr %i.ar, align 8, !noalias !2036
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.79.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.79.i.i, i64 16, i1 false), !noalias !2036
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val15.i) ]
  %i.ht = invoke noundef zeroext i1 @_RINvMsc_NtCs8frGy5WneL6_4fish2ioNtB6_12OutputStream8appendlnRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val15.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ar)
          to label %bb.ca unwind label %bb.bz     ; 0 uses

bb.bz:                                            ; preds = %bb.by
  %i.hu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ar) #28
          to label %.body.i21.i unwind label %bb.cd

bb.ca:                                            ; preds = %bb.by
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i.i unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.hv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %.body.i21.i unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.hw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %bb.ca
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.bx

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !2036
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.79.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.79.i.i)
  %i.hx = load ptr, ptr %.sroa.6.0..sroa_idx.i20.i, align 8, !alias.scope !2071, !noalias !2069, !nonnull !10, !noundef !10
  %i.hy = load ptr, ptr %.sroa.4.0..sroa_idx.i18.i, align 8, !alias.scope !2071, !noalias !2069, !nonnull !10, !noundef !10 ; 2 uses
  %i.hz = icmp eq ptr %i.hy, %i.hx
  br i1 %i.hz, label %_RNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB4_11BuiltinBind10list_modes.exit.i, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i

bb.cd:                                            ; preds = %bb.cf, %bb.ce, %bb.bz, %.body.i21.i
  %i.ia = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.ce:                                            ; preds = %bb.bv, %bb.bu, %bb.bt
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.au) #28
          to label %.body unwind label %bb.cd

bb.cf:                                            ; preds = %.noexc5
  %i.ib = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish5input7binding11BindingNameEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aw) #28
          to label %.body unwind label %bb.cd

_RNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB4_11BuiltinBind10list_modes.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.79.i.i)
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.as)
          to label %.noexc7 unwind label %bb.hg

.noexc7:                                          ; preds = %_RNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB4_11BuiltinBind10list_modes.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !2036
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !2036
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !2036
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !2036
  br label %_RNvMs0_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB5_11BuiltinBind4bind.exit

bb.cg:                                            ; preds = %bb.bp
  %i.ic = load i8, ptr %i.ct, align 2, !range !13, !alias.scope !2022, !noalias !2055, !noundef !10
  %i.id = trunc nuw i8 %i.ic to i1                ; 2 uses
  %i.ie = load i8, ptr %i.cq, align 4, !range !13, !alias.scope !2022, !noalias !2055
  %i.if = trunc nuw i8 %i.ie to i1                ; 2 uses
  %or.cond.i = select i1 %i.id, i1 true, i1 %i.if ; 2 uses
  br i1 %or.cond.i, label %bb.ci, label %bb.cj

bb.ch:                                            ; preds = %bb.bp
  invoke void @_RNvNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc18builtin_print_help(ptr noalias nofree noundef nonnull align 8 dereferenceable(432) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.bk, i64 noundef %i.bm)
          to label %_RNvMs0_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB5_11BuiltinBind4bind.exit unwind label %bb.hg

bb.ci:                                            ; preds = %bb.cj, %bb.cg
  %i.ig = load i8, ptr %i.cz, align 1, !range !2073, !alias.scope !2022, !noalias !2055, !noundef !10
  switch i8 %i.ig, label %default.unreachable [
    i8 0, label %bb.ck
    i8 1, label %bb.gf
    i8 2, label %bb.gg
    i8 3, label %bb.gw
  ]

bb.cj:                                            ; preds = %bb.cg
  store i8 1, ptr %i.cr, align 1, !alias.scope !2022, !noalias !2055
  br label %bb.ci

default.unreachable:                              ; preds = %bb.ci
  unreachable

bb.ck:                                            ; preds = %bb.ci
  call void @llvm.experimental.noalias.scope.decl(metadata !2074)
  call void @llvm.experimental.noalias.scope.decl(metadata !2077)
  %i.ih = load ptr, ptr %2, align 8, !alias.scope !2079, !noalias !2080, !nonnull !10, !align !12, !noundef !10 ; 3 uses
  %i.ii = load i64, ptr %i.bl, align 8, !alias.scope !2079, !noalias !2080, !noundef !10 ; 3 uses
  %i.ij = sub nsw i64 %3, %.sroa.0.052.i          ; 2 uses
  %i.ik = icmp ult i64 %3, %.sroa.0.052.i
  br i1 %i.ik, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.il = icmp ult i64 %i.ij, 2
  br i1 %i.il, label %bb.co, label %bb.cn

bb.cm:                                            ; preds = %bb.ck
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1631) #31
          to label %.noexc9 unwind label %bb.hg

.noexc9:                                          ; preds = %bb.cm
  unreachable

bb.cn:                                            ; preds = %bb.cl
  %or.cond.i.i = select i1 %i.id, i1 %i.if, i1 false
  br i1 %or.cond.i.i, label %bb.cp, label %bb.cq

bb.co:                                            ; preds = %bb.cl
  br i1 %or.cond.i, label %bb.cq, label %bb.cy

bb.cp:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !2083
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !2083
  store i64 0, ptr %i.ap, align 8, !noalias !2083
  %.sroa.425.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.425.0..sroa_idx.i.i, align 8, !noalias !2083
  %.sroa.526.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 0, ptr %.sroa.526.0..sroa_idx.i.i, align 8, !noalias !2083
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !2083
  %i.im = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1499)
          to label %bb.cs unwind label %bb.cr     ; 2 uses

bb.cq:                                            ; preds = %bb.cy, %bb.co, %bb.cn
  switch i64 %i.ij, label %bb.dd [
    i64 0, label %bb.cz
    i64 1, label %bb.dc
  ]

.body.i34.i:                                      ; preds = %bb.cw, %.peel.begin.i.i, %bb.ct, %bb.cr
  %.pn.i35.i = phi { ptr, i32 } [ %i.ir, %bb.ct ], [ %i.in, %bb.cr ], [ %i.iy, %bb.cw ], [ %i.iy, %.peel.begin.i.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ap) #28
          to label %.body unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cr:                                            ; preds = %bb.cp
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %.body.i34.i

bb.cs:                                            ; preds = %bb.cp
  %i.io = extractvalue { ptr, i64 } %i.im, 0
  %i.ip = extractvalue { ptr, i64 } %i.im, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !2083
  store i64 0, ptr %i.an, align 8, !noalias !2083
  %.sroa.4.0..sroa_idx.i36.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr @1632, ptr %.sroa.4.0..sroa_idx.i36.i, align 8, !noalias !2083
  %.sroa.5.0..sroa_idx.i37.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 8, ptr %.sroa.5.0..sroa_idx.i37.i, align 8, !noalias !2083
  %i.iq = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  store i64 0, ptr %i.iq, align 8, !noalias !2083
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  store ptr @1633, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !noalias !2083
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  store i64 6, ptr %.sroa.59.0..sroa_idx.i.i, align 8, !noalias !2083
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.ao, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.io, i64 noundef %i.ip, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @67, ptr noalias nofree noundef nonnull align 8 %i.an, i64 noundef 2)
          to label %bb.cu unwind label %bb.ct

bb.ct:                                            ; preds = %bb.cv, %bb.cs
  %i.ir = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj2_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(64) %i.an) #28
          to label %.body.i34.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cu:                                            ; preds = %bb.cs
  call void @llvm.experimental.noalias.scope.decl(metadata !2084)
  %i.is = load i8, ptr %i.ao, align 8, !range !13, !alias.scope !2084, !noalias !2087, !noundef !10
  %i.it = trunc nuw i8 %i.is to i1
  br i1 %i.it, label %bb.cv, label %.preheader.i.i.preheader, !prof !372

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2089
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.iv = load i8, ptr %i.iu, align 1, !range !773, !alias.scope !2084, !noalias !2087, !noundef !10
  store i8 %i.iv, ptr %i.r, align 1, !noalias !2089
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1480, i64 noundef 43, ptr noundef nonnull %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1482, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1634) #31
          to label %.noexc65.i.i unwind label %bb.ct

.noexc65.i.i:                                     ; preds = %bb.cv
  unreachable

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader
  %i.iw = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.iw)
          to label %.preheader.i.i.1 unwind label %.peel.begin.i.i

.preheader.i.i.1:                                 ; preds = %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !2083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !2083
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false), !noalias !2083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !2083
  %.sroa.4.0..sroa_idx91.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr %i.ih, ptr %.sroa.4.0..sroa_idx91.i.i, align 8, !alias.scope !2090, !noalias !2094
  %.sroa.6.0..sroa_idx.i38.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store i64 %i.ii, ptr %.sroa.6.0..sroa_idx.i38.i, align 8, !alias.scope !2090, !noalias !2094
  %.sroa.7.0..sroa_idx.i39.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  store ptr null, ptr %.sroa.7.0..sroa_idx.i39.i, align 8, !alias.scope !2090, !noalias !2094
  %.sroa.892.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  store ptr null, ptr %.sroa.892.0..sroa_idx.i.i, align 8, !alias.scope !2090, !noalias !2094
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  store i8 0, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !alias.scope !2090, !noalias !2094
  invoke void @_RNvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB2_5Error6finish(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.aq, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %.noexc10 unwind label %bb.hg

.preheader.i.i.preheader:                         ; preds = %bb.cu
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.an)
          to label %.preheader.i.i unwind label %.peel.begin.i.i

.peel.begin.i.i:                                  ; preds = %.preheader.i.i, %.preheader.i.i.preheader
  %i.ix = phi i1 [ false, %.preheader.i.i.preheader ], [ true, %.preheader.i.i ]
  %i.iy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ix, label %.body.i34.i, label %bb.cw

bb.cw:                                            ; preds = %.peel.begin.i.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.iq) #28
          to label %.body.i34.i unwind label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %lpad.loopexit.split-lp144.i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29
  unreachable

.noexc10:                                         ; preds = %.preheader.i.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !2083
  br label %_RNvMs0_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB5_11BuiltinBind4bind.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.dy, %bb.ei, %bb.ge, %bb.gd, %bb.el, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit76.i.i, %bb.ed, %bb.eb, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i.i, %.body69.i.i, %bb.ct, %.body.i34.i
  %lpad.loopexit.split-lp107 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.cy:                                            ; preds = %bb.co
  store i8 1, ptr %i.cu, align 1, !alias.scope !2096, !noalias !2097
  store i8 1, ptr %i.cr, align 1, !alias.scope !2096, !noalias !2097
  br label %bb.cq

bb.cz:                                            ; preds = %bb.cq
  %i.iz = load i64, ptr %i.bd, align 8, !range !477, !alias.scope !2096, !noalias !2097, !noundef !10
  %.not56.i.i = icmp eq i64 %i.iz, -1             ; 2 uses
  %i.ja = load ptr, ptr %.sroa.5115.0..sroa_idx116.i.i, align 8, !alias.scope !2096, !noalias !2097, !nonnull !10
  %i.jb = load i64, ptr %.sroa.6118.0..sroa_idx119.i.i, align 8, !alias.scope !2096, !noalias !2097
  %.sroa.413.0.i.i = select i1 %.not56.i.i, i64 undef, i64 %i.jb ; 2 uses
  %.sroa.011.0.i.i = select i1 %.not56.i.i, ptr null, ptr %i.ja ; 2 uses
  %i.jc = load i8, ptr %i.cu, align 1, !range !13, !alias.scope !2096, !noalias !2097, !noundef !10
  %i.jd = trunc nuw i8 %i.jc to i1
  br i1 %i.jd, label %bb.da, label %.noexc11

.noexc11:                                         ; preds = %bb.da, %bb.cz
  %i.je = load i8, ptr %i.cr, align 1, !range !13, !alias.scope !2096, !noalias !2097, !noundef !10
  %i.jf = trunc nuw i8 %i.je to i1
  br i1 %i.jf, label %bb.db, label %_RNvMs0_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB5_11BuiltinBind4bind.exit

bb.da:                                            ; preds = %bb.cz
  invoke fastcc void @_RNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB4_11BuiltinBind4list(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bd, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) %.sroa.011.0.i.i, i64 %.sroa.413.0.i.i, i1 noundef zeroext false, ptr noalias nofree noundef nonnull align 8 dereferenceable(432) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %.noexc11 unwind label %bb.hg

bb.db:                                            ; preds = %.noexc11
  invoke fastcc void @_RNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB4_11BuiltinBind4list(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bd, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) %.sroa.011.0.i.i, i64 %.sroa.413.0.i.i, i1 noundef zeroext true, ptr noalias nofree noundef nonnull align 8 dereferenceable(432) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %_RNvMs0_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB5_11BuiltinBind4bind.exit unwind label %bb.hg

bb.dc:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.795.i.i)
  %i.jg = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.sroa.0.052.i ; 2 uses
  %i.jh = load ptr, ptr %i.jg, align 8, !alias.scope !2079, !noalias !2080, !nonnull !10, !align !12, !noundef !10 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.jj = load i64, ptr %i.ji, align 8, !alias.scope !2079, !noalias !2080, !noundef !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2083
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2098
  invoke void @_RNvNtCs8frGy5WneL6_4fish3key10parse_keys(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.q, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.jh, i64 noundef %i.jj)
          to label %.noexc13 unwind label %bb.hg

.noexc13:                                         ; preds = %bb.dc
  %i.jk = load i64, ptr %i.q, align 8, !range !475, !noalias !2098, !noundef !10
  %i.jl = trunc nuw i64 %i.jk to i1
  %i.jm = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  br i1 %i.jl, label %_RNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB4_11BuiltinBind11compute_seq.exit.thread.i.i, label %_RNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB4_11BuiltinBind11compute_seq.exit.i.i

bb.dd:                                            ; preds = %bb.cq
  %i.jn = icmp samesign ult i64 %.sroa.0.052.i, %3
  br i1 %i.jn, label %bb.er, label %.invoke102

_RNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB4_11BuiltinBind11compute_seq.exit.thread.i.i: ; preds = %.noexc13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.jm, i64 24, i1 false), !noalias !2098
  %i.jo = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.jp = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.jq = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store ptr null, ptr %i.jq, align 8, !noalias !2098
  %i.jr = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store ptr null, ptr %i.jr, align 8, !noalias !2098
  %i.js = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  store i8 0, ptr %i.js, align 8, !noalias !2098
  store ptr @1625, ptr %i.jo, align 8, !noalias !2098
  store i64 4, ptr %i.jp, align 8, !noalias !2098
end_hunk_0
begin_hunk_1_@_RNvNtNtCs8frGy5WneL6_4fish8builtins6printf6printf:bb.a
  %.pn211.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp347.i, %.loopexit.split-lp345.i ], [ %lpad.loopexit346.i, %.loopexit344.i ], [ %lpad.phi141, %bb.iy ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aw) #28
          to label %.body256.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2166

.loopexit344.i:                                   ; preds = %.noexc252.i.preheader
  %lpad.loopexit346.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit251.i

.loopexit.split-lp345.i:                          ; preds = %bb.iw
  %lpad.loopexit.split-lp347.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit251.i

bb.ix:                                            ; preds = %bb.iw
  %i.sl = add nuw i64 %i.lf, 1
  %..i.i = call noundef i64 @llvm.umin.i64(i64 %i.sl, i64 %.sroa.47.1.i)
  %i.sm = extractvalue { ptr, i64 } %i.sk, 0
  %i.sn = extractvalue { ptr, i64 } %i.sk, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !2168
  store i64 1, ptr %i.av, align 8, !noalias !2168
  store ptr %.sroa.0.1.i, ptr %.sroa.4148.0..sroa_idx.i, align 8, !noalias !2168
  store i64 %..i.i, ptr %.sroa.5149.0..sroa_idx.i, align 8, !noalias !2168
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.ax, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.sm, i64 noundef %i.sn, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @67, ptr noalias nofree noundef nonnull align 8 %i.av, i64 noundef 1)
          to label %bb.iz unwind label %.loopexit137, !noalias !2166

.loopexit137:                                     ; preds = %bb.ix
  %lpad.loopexit139 = landingpad { ptr, i32 }
          cleanup
  br label %bb.iy

.loopexit.split-lp138:                            ; preds = %bb.ja
  %lpad.loopexit.split-lp140 = landingpad { ptr, i32 }
          cleanup
  br label %bb.iy

bb.iy:                                            ; preds = %.loopexit137, %.loopexit.split-lp138
  %lpad.phi141 = phi { ptr, i32 } [ %lpad.loopexit139, %.loopexit137 ], [ %lpad.loopexit.split-lp140, %.loopexit.split-lp138 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.av)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit251.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2166

bb.iz:                                            ; preds = %bb.ix
  call void @llvm.experimental.noalias.scope.decl(metadata !2275)
  %i.so = load i8, ptr %i.ax, align 8, !range !13, !alias.scope !2275, !noalias !2278, !noundef !10
  %i.sp = trunc nuw i8 %i.so to i1
  br i1 %i.sp, label %bb.ja, label %.noexc252.i.preheader, !prof !372

bb.ja:                                            ; preds = %bb.iz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !2280
  %i.sq = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  %i.sr = load i8, ptr %i.sq, align 1, !range !773, !alias.scope !2275, !noalias !2278, !noundef !10
  store i8 %i.sr, ptr %i.au, align 1, !noalias !2280
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1480, i64 noundef 43, ptr noundef nonnull %i.au, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1482, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1564) #31
          to label %.noexc.i unwind label %.loopexit.split-lp138, !noalias !2166

.noexc.i:                                         ; preds = %bb.ja
  unreachable

.noexc252.i.preheader:                            ; preds = %bb.iz
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.av)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit253.i unwind label %.loopexit344.i, !noalias !2166

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit253.i: ; preds = %.noexc252.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !2168
  %i.ss = load i64, ptr %i.aw, align 8, !range !477, !alias.scope !2281, !noalias !2168, !noundef !10
  %i.st = icmp eq i64 %i.ss, -1
  br i1 %i.st, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit259.i, label %bb.jb

bb.jb:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit253.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i255.i unwind label %bb.jc, !noalias !2166

bb.jc:                                            ; preds = %bb.jb
  %i.su = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %.body256.i unwind label %bb.jd, !noalias !2166

bb.jd:                                            ; preds = %bb.jc
  %i.sv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29, !noalias !2166
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i255.i: ; preds = %bb.jb
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit259.i unwind label %bb.je, !noalias !2166

.body256.i:                                       ; preds = %bb.je, %bb.jc, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit251.i
  %.pn213.i = phi { ptr, i32 } [ %.pn211.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit251.i ], [ %i.sw, %bb.je ], [ %i.su, %bb.jc ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ay) #28
          to label %.body unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2166

bb.je:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i255.i
  %i.sw = landingpad { ptr, i32 }
          cleanup
  br label %.body256.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit259.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i255.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit253.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !2168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !2168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i64 24, i1 false), !noalias !2168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !2168
  store ptr null, ptr %i.ev, align 8, !alias.scope !2284, !noalias !2287
  store ptr null, ptr %i.ew, align 8, !alias.scope !2284, !noalias !2287
  store ptr null, ptr %i.ex, align 8, !alias.scope !2284, !noalias !2287
  store i8 0, ptr %i.ey, align 8, !alias.scope !2284, !noalias !2287
  invoke fastcc void @_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins6printfNtB5_5State14nonfatal_error(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.bn, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.az)
          to label %.noexc75 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc75:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit259.i
  store i8 1, ptr %i.bu, align 8, !alias.scope !2289, !noalias !2292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !2168
  br label %bb.jk

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.sroa.0126.2851.i3146 = phi i64 [ %i.tb, %.lr.ph.i ], [ %.sroa.0126.0847.i, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.47.4852.i3145 = phi i64 [ %i.sy, %.lr.ph.i ], [ %.sroa.47.2848.i, %.lr.ph.i.preheader ]
  %.sroa.0.4853.i3144 = phi ptr [ %i.sz, %.lr.ph.i ], [ %.sroa.0.2849.i, %.lr.ph.i.preheader ]
  %i.sx = icmp eq i64 %.sroa.0126.2851.i3146, -1
  br i1 %i.sx, label %.invoke2654, label %bb.jf

bb.jf:                                            ; preds = %.lr.ph
  %i.sy = add i64 %.sroa.47.4852.i3145, -1        ; 4 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %.sroa.0.4853.i3144, i64 4 ; 3 uses
  %i.ta = invoke noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.sz, i64 noundef %i.sy, i64 noundef 0)
          to label %.noexc77 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc77:                                         ; preds = %bb.jf
  %i.tb = add nuw i64 %.sroa.0126.2851.i3146, 1   ; 2 uses
  %i.tc = add nsw i32 %i.ta, -48
  %.sroa.0.0.i.i = icmp ult i32 %i.tc, 10
  br i1 %.sroa.0.0.i.i, label %.lr.ph.i, label %.loopexit385.i

_RNvNtNtCs8frGy5WneL6_4fish8builtins6printf32modify_allowed_format_specifiers.exit270.loopexit.i: ; preds = %.noexc45
  store i8 0, ptr %i.eg, align 1, !alias.scope !2294, !noalias !2297
  store i8 0, ptr %i.eh, align 1, !alias.scope !2294, !noalias !2297
  store i8 0, ptr %i.ch, align 1, !alias.scope !2294, !noalias !2297
  store i8 0, ptr %i.ej, align 1, !alias.scope !2294, !noalias !2297
  store i8 0, ptr %i.ek, align 1, !alias.scope !2294, !noalias !2297
  store i8 0, ptr %i.eo, align 1, !alias.scope !2294, !noalias !2297
  store i8 0, ptr %i.ep, align 1, !alias.scope !2294, !noalias !2297
  store i8 0, ptr %i.er, align 1, !alias.scope !2294, !noalias !2297
  store i8 0, ptr %i.es, align 1, !alias.scope !2294, !noalias !2297
  br label %_RNvNtNtCs8frGy5WneL6_4fish8builtins6printf32modify_allowed_format_specifiers.exit270.i

_RNvNtNtCs8frGy5WneL6_4fish8builtins6printf32modify_allowed_format_specifiers.exit270.loopexit886.i: ; preds = %.noexc45
  store i8 0, ptr %i.ch, align 1, !alias.scope !2299, !noalias !2302
  store i8 0, ptr %i.ei, align 1, !alias.scope !2299, !noalias !2302
  store i8 0, ptr %i.en, align 1, !alias.scope !2299, !noalias !2302
  store i8 0, ptr %i.ep, align 1, !alias.scope !2299, !noalias !2302
  store i8 0, ptr %i.eq, align 1, !alias.scope !2299, !noalias !2302
  br label %_RNvNtNtCs8frGy5WneL6_4fish8builtins6printf32modify_allowed_format_specifiers.exit270.i

.split.i:                                         ; preds = %.noexc45
  store i8 0, ptr %i.ch, align 1, !alias.scope !2304, !noalias !2307
  store i8 0, ptr %i.ep, align 1, !alias.scope !2304, !noalias !2307
  br label %_RNvNtNtCs8frGy5WneL6_4fish8builtins6printf32modify_allowed_format_specifiers.exit270.i

_RNvNtNtCs8frGy5WneL6_4fish8builtins6printf32modify_allowed_format_specifiers.exit.i: ; preds = %bb.jg
  %i.td = add i64 %.sroa.47.2848.i, -1
  %i.te = add nuw i64 %.sroa.0126.0847.i, 1
  %i.tf = getelementptr inbounds nuw i8, ptr %.sroa.0.2849.i, i64 4
  br label %_RNvNtNtCs8frGy5WneL6_4fish8builtins6printf32modify_allowed_format_specifiers.exit.preheader.split.i

_RNvNtNtCs8frGy5WneL6_4fish8builtins6printf32modify_allowed_format_specifiers.exit270.i: ; preds = %.split.i, %_RNvNtNtCs8frGy5WneL6_4fish8builtins6printf32modify_allowed_format_specifiers.exit270.loopexit886.i, %_RNvNtNtCs8frGy5WneL6_4fish8builtins6printf32modify_allowed_format_specifiers.exit270.loopexit.i, %.noexc45, %.noexc45, %.noexc45
  %i.tg = icmp eq i64 %.sroa.47.2848.i, 0
  br i1 %i.tg, label %.invoke, label %bb.jg, !prof !372

bb.jg:                                            ; preds = %_RNvNtNtCs8frGy5WneL6_4fish8builtins6printf32modify_allowed_format_specifiers.exit270.i
  %i.th = icmp eq i64 %.sroa.0126.0847.i, -1
  br i1 %i.th, label %.invoke2654, label %_RNvNtNtCs8frGy5WneL6_4fish8builtins6printf32modify_allowed_format_specifiers.exit.i

bb.jh:                                            ; preds = %.noexc33
  %i.ti = sub nuw i64 %.sroa.47.1.i, %i.gf
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.1.i, i64 %i.gf
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %bb.jh, %.noexc72, %_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins6printfNtB5_5State16print_esc_string.exit.i, %bb.w, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit.i222.i, %bb.s, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit.i.i, %bb.n
  %.sroa.0116.0.i.be = phi i64 [ %.sroa.0116.0.i, %bb.jh ], [ %.sroa.0116.4.i, %.noexc72 ], [ %i.hr, %_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins6printfNtB5_5State16print_esc_string.exit.i ], [ 0, %bb.w ], [ %.sroa.0116.0.i, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit.i222.i ], [ %.sroa.0116.0.i, %bb.s ], [ %.sroa.0116.0.i, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit.i.i ], [ %.sroa.0116.0.i, %bb.n ]
  %.sroa.26.0.i.be = phi i64 [ %.sroa.26.0.i, %bb.jh ], [ %.sroa.26.4.i, %.noexc72 ], [ %i.ht, %_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins6printfNtB5_5State16print_esc_string.exit.i ], [ %.sroa.26.0.i, %bb.w ], [ %.sroa.26.0.i, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit.i222.i ], [ %.sroa.26.0.i, %bb.s ], [ %.sroa.26.0.i, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit.i.i ], [ %.sroa.26.0.i, %bb.n ]
  %.sroa.074.0.i.be = phi ptr [ %.sroa.074.0.i, %bb.jh ], [ %.sroa.074.4.i, %.noexc72 ], [ %i.hs, %_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins6printfNtB5_5State16print_esc_string.exit.i ], [ %.sroa.074.0.i, %bb.w ], [ %.sroa.074.0.i, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit.i222.i ], [ %.sroa.074.0.i, %bb.s ], [ %.sroa.074.0.i, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit.i.i ], [ %.sroa.074.0.i, %bb.n ]
  %.sroa.47.0.i.be = phi i64 [ %i.ti, %bb.jh ], [ %.sroa.47.7.i, %.noexc72 ], [ %i.gh, %_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins6printfNtB5_5State16print_esc_string.exit.i ], [ %i.gh, %bb.w ], [ %i.gh, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit.i222.i ], [ %i.gh, %bb.s ], [ %.sroa.47.1.i, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit.i.i ], [ %.sroa.47.1.i, %bb.n ]
  %.sroa.0.0.i.be = phi ptr [ %i.tj, %bb.jh ], [ %.sroa.0.7.i, %.noexc72 ], [ %i.gi, %_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins6printfNtB5_5State16print_esc_string.exit.i ], [ %i.gi, %bb.w ], [ %i.gi, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit.i222.i ], [ %i.gi, %bb.s ], [ %.sroa.0.1.i, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit.i.i ], [ %.sroa.0.1.i, %bb.n ]
  br label %.backedge.i

bb.ji:                                            ; preds = %bb.m
  %i.tk = sub nuw nsw i64 %.sroa.10.0, %.sroa.0116.0.i
  br label %bb.jk

bb.jj:                                            ; preds = %bb.m
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1570) #31
          to label %.noexc82 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc82:                                         ; preds = %bb.jj
  unreachable

bb.jk:                                            ; preds = %bb.ji, %.noexc75
  %.sroa.0115.0.i = phi i64 [ %i.tk, %bb.ji ], [ 0, %.noexc75 ] ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !2168
  %i.tl = sub i64 %.sroa.04.0, %.sroa.0115.0.i    ; 2 uses
  %i.tm = icmp ult i64 %.sroa.04.0, %.sroa.0115.0.i
  br i1 %i.tm, label %bb.jm, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %i.tn = icmp ugt i64 %.sroa.0115.0.i, %.sroa.10.0
  br i1 %i.tn, label %bb.jo, label %bb.jn, !prof !372

bb.jm:                                            ; preds = %bb.jk
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1818) #30
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.jn:                                            ; preds = %bb.jl
  %i.to = sub nuw nsw i64 %.sroa.10.0, %.sroa.0115.0.i
  %i.tp = getelementptr inbounds nuw [16 x i8], ptr %.sroa.010.0, i64 %.sroa.0115.0.i
  %i.tq = load i64, ptr %i.ee, align 8, !noundef !10 ; 2 uses
  %i.tr = icmp ult i64 %i.tq, 2305843009213693952
  call void @llvm.assume(i1 %i.tr)
  %i.ts = icmp eq i64 %i.tq, 0
  br i1 %i.ts, label %bb.jq, label %bb.jp

bb.jo:                                            ; preds = %bb.jl
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0115.0.i, i64 noundef %.sroa.10.0, i64 noundef %.sroa.10.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1819) #30
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.jp:                                            ; preds = %bb.jn
  %i.tt = load ptr, ptr %i.bs, align 8, !nonnull !10, !align !11, !noundef !10
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 8
  %i.tv = load ptr, ptr %i.tu, align 8, !nonnull !10, !align !11, !noundef !10
  %i.tw = invoke noundef zeroext i1 @_RINvMsc_NtCs8frGy5WneL6_4fish2ioNtB6_12OutputStream6appendRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.tv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bn)
          to label %bb.jr unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

bb.jq:                                            ; preds = %bb.jr, %bb.jn
  %.not = icmp eq i64 %.sroa.0115.0.i, 0
  br i1 %.not, label %bb.js, label %bb.jv

bb.jr:                                            ; preds = %bb.jp
  store i64 0, ptr %i.ee, align 8
  br label %bb.jq

bb.js:                                            ; preds = %bb.jv, %bb.jq
  %.sroa.0.0.copyload = load i64, ptr %i.bt, align 8
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.bn)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish8builtins6printf5StateEBH_.exit unwind label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.tx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.bn)
          to label %common.resume unwind label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.ty = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29
  unreachable

common.resume:                                    ; preds = %bb.e, %.body, %bb.jt
  %common.resume.op = phi { ptr, i32 } [ %i.tx, %bb.jt ], [ %eh.lpad-body, %.body ], [ %i.br, %bb.e ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish8builtins6printf5StateEBH_.exit: ; preds = %bb.js
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  br label %bb.jw

bb.jv:                                            ; preds = %bb.jq
  %i.tz = icmp eq i64 %i.tl, 0
  %i.ua = load i8, ptr %i.bu, align 8, !range !13
  %i.ub = trunc nuw i8 %i.ua to i1
  %or.cond = select i1 %i.tz, i1 true, i1 %i.ub
  br i1 %or.cond, label %bb.js, label %bb.h

bb.jw:                                            ; preds = %bb.b, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish8builtins6printf5StateEBH_.exit
  %.sroa.0.0.insert.insert = phi i64 [ %.sroa.0.0.copyload, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish8builtins6printf5StateEBH_.exit ], [ 8589934593, %bb.b ]
  ret i64 %.sroa.0.0.insert.insert

bb.jx:                                            ; preds = %.body, %bb.e
  %i.uc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define range(i64 0, -4294967292) i64 @_RNvNtNtCs8frGy5WneL6_4fish8builtins6return18parse_return_value(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef align 8 dereferenceable(432) %2, ptr noalias nofree noundef align 8 dereferenceable(48) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [136 x i8], align 8               ; 30 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [72 x i8], align 8                ; 9 uses
  %i.h = alloca [72 x i8], align 8                ; 11 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !nonnull !10, !align !12, !noundef !10 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noundef !10 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2309)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2312
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %0, ptr %i.l, align 8, !noalias !2312
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %1, ptr %i.m, align 8, !noalias !2312
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr null, ptr %i.n, align 8, !noalias !2312
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @1822, ptr %i.o, align 8, !noalias !2312
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 1, ptr %i.p, align 8, !noalias !2312
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @1823, ptr %i.q, align 8, !noalias !2312
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 1, ptr %i.r, align 8, !noalias !2312
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr inttoptr (i64 4 to ptr), ptr %i.s, align 8, !noalias !2312
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 0, ptr %i.t, align 8, !noalias !2312
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 5 uses
  store i64 0, ptr %i.u, align 8, !noalias !2312
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store i32 63, ptr %i.v, align 8, !noalias !2312
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 134
  store i8 1, ptr %i.w, align 2, !noalias !2312
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  store i8 0, ptr %i.y, align 4, !noalias !2312
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 133
  store i8 0, ptr %i.z, align 1, !noalias !2312
  store i64 0, ptr %i.b, align 8, !noalias !2312
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false), !noalias !2312
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2312
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2312
  %i.aa = invoke noundef i32 @_RNvMCshMbxjpSxucW_12fish_wgetoptNtB2_9WGetopter8next_opt(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.b)
          to label %bb.c unwind label %.loopexit.loopexit.split-lp.i, !noalias !2315

bb.c:                                             ; preds = %bb.b
  switch i32 %i.aa, label %.loopexit26.i [
    i32 -1, label %.loopexit27.i
    i32 104, label %.peel.next.i
    i32 58, label %.loopexit28.i
    i32 59, label %.loopexit29.i
    i32 63, label %.loopexit30.i
  ], !prof !2316

.peel.next.i:                                     ; preds = %bb.c, %bb.d
  %i.ab = invoke noundef i32 @_RNvMCshMbxjpSxucW_12fish_wgetoptNtB2_9WGetopter8next_opt(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.b)
          to label %bb.d unwind label %.loopexit.loopexit.i, !noalias !2315

.loopexit.loopexit.i:                             ; preds = %.peel.next.i
  %lpad.loopexit23.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

.loopexit.loopexit.split-lp.i:                    ; preds = %bb.b
  %lpad.loopexit.split-lp24.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

.loopexit.split-lp.i:                             ; preds = %bb.n, %.invoke36.i, %bb.i, %.invoke.i, %.loopexit26.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.split-lp.i, %.loopexit.loopexit.split-lp.i, %.loopexit.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit23.i, %.loopexit.loopexit.i ], [ %lpad.loopexit.split-lp24.i, %.loopexit.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCshMbxjpSxucW_12fish_wgetopt9WGetopterECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(136) %i.b) #28
          to label %common.resume unwind label %bb.p, !noalias !2317

bb.d:                                             ; preds = %.peel.next.i
  switch i32 %i.ab, label %.loopexit26.i [
    i32 -1, label %.loopexit27.i
    i32 104, label %.peel.next.i
    i32 58, label %.loopexit28.i
    i32 59, label %.loopexit29.i
    i32 63, label %.loopexit30.i
  ], !prof !2316, !llvm.loop !2318

.loopexit27.i:                                    ; preds = %bb.d, %bb.c
  %.sroa.0.0.lcssa18.i = phi i8 [ 0, %bb.c ], [ 1, %bb.d ]
  %i.ac = load i64, ptr %i.u, align 8, !noalias !2312, !noundef !10
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.b)
          to label %_RNvNtNtCs8frGy5WneL6_4fish8builtins6return13parse_options.exit.thread unwind label %bb.e, !noalias !2315

_RNvNtNtCs8frGy5WneL6_4fish8builtins6return13parse_options.exit.thread: ; preds = %.loopexit27.i
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.b), !noalias !2317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2312
  br label %bb.r

bb.e:                                             ; preds = %.loopexit27.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.b)
          to label %common.resume unwind label %bb.f, !noalias !2315

end_hunk_1
begin_hunk_2_@_RNvXs_NtNtNtCs8frGy5WneL6_4fish8builtins6string4trimNtB4_4TrimNtB6_16StringSubCommand6handle:bb.a

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr %i.g, align 8
  store i8 1, ptr %i.j, align 1
  br label %bb.b

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit, %bb.b
  %.sroa.03.0 = phi i64 [ 0, %bb.b ], [ %i.bu, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvXs3_NtNtNtCs8frGy5WneL6_4fish8builtins6shared4miscNtB5_9ArgumentsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.e)
          to label %bb.e unwind label %.loopexit

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ah, %bb.ac, %bb.l
  %.pn = phi { ptr, i32 } [ %lpad.phi59, %bb.l ], [ %i.ci, %bb.ac ], [ %i.co, %bb.ah ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc9ArgumentsEBJ_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.e) #28
          to label %bb.ak unwind label %bb.aj

.loopexit:                                        ; preds = %bb.d, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i48
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.d
  %i.ai = load i64, ptr %i.d, align 8, !range !483, !noundef !10
  %.not = icmp eq i64 %i.ai, -2
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.aj = load i8, ptr %i.r, align 8, !range !13, !noundef !10
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.s, label %bb.i, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNCNvXs_NtNtNtCs8frGy5WneL6_4fish8builtins6string4trimNtB2e_4TrimNtB2g_16StringSubCommand6handles_00ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3J_5count0EB2k_.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc9ArgumentsEBJ_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.not32 = icmp eq i64 %.sroa.03.0, 0
  %. = zext i1 %.not32 to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit52
  %.sroa.0.0 = phi i32 [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit52 ], [ %., %bb.g ]
  %i.al = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.am = insertvalue { i32, i32 } %i.al, i32 1, 1
  ret { i32, i32 } %i.am

bb.i:                                             ; preds = %bb.f
  %i.an = load ptr, ptr %i.t, align 8, !nonnull !10 ; 2 uses
  %i.ao = load i64, ptr %i.u, align 8             ; 2 uses
  %.idx = shl i64 %i.ao, 2                        ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx
  %i.aq = icmp eq i64 %i.ao, 0
  br i1 %i.aq, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNCNvXs_NtNtNtCs8frGy5WneL6_4fish8builtins6string4trimNtB2e_4TrimNtB2g_16StringSubCommand6handles_00ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3J_5count0EB2k_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.i
  %i.ar = add i64 %.idx, -4
  %i.as = lshr exact i64 %i.ar, 2
  %i.at = add nuw nsw i64 %i.as, 1
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvXs_NtNtNtCs8frGy5WneL6_4fish8builtins6string4trimNtB2Z_4TrimNtB31_16StringSubCommand6handles_00NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32B2Q_EB1i_5count0E0E0B35_.exit.i.i.i
  %.sroa.01.024.i.i.i = phi i64 [ %i.bl, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvXs_NtNtNtCs8frGy5WneL6_4fish8builtins6string4trimNtB2Z_4TrimNtB31_16StringSubCommand6handles_00NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32B2Q_EB1i_5count0E0E0B35_.exit.i.i.i ], [ 0, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.au = phi ptr [ %i.av, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvXs_NtNtNtCs8frGy5WneL6_4fish8builtins6string4trimNtB2Z_4TrimNtB31_16StringSubCommand6handles_00NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32B2Q_EB1i_5count0E0E0B35_.exit.i.i.i ], [ %i.an, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4 ; 2 uses
  %i.aw = load i32, ptr %i.au, align 4, !noalias !3230, !noundef !10 ; 5 uses
  %i.ax = xor i32 %i.aw, 55296
  %i.ay = add i32 %i.ax, -1114112
  %i.az = icmp ult i32 %i.ay, -1112064
  br i1 %i.az, label %.split.i.i.i.i, label %bb.j

.split.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3230
  store i32 %i.aw, ptr %i.a, align 4, !noalias !3230
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1480, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1481, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2092) #31
          to label %.noexc unwind label %.loopexit.split-lp56

.noexc:                                           ; preds = %.split.i.i.i.i
  unreachable

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.ba = icmp ult i32 %i.aw, 1114112
  call void @llvm.assume(i1 %i.ba)
  br i1 %.not.i.i.i.i.i.i130, label %.preheader.i.i.i.preheader, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECs8frGy5WneL6_4fish.exit.i.i.i.i.i.i.preheader

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECs8frGy5WneL6_4fish.exit.i.i.i.i.i.i.preheader: ; preds = %bb.j
  %i.bb = insertelement <16 x i32> poison, i32 %i.aw, i64 0
  %i.bc = shufflevector <16 x i32> %i.bb, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECs8frGy5WneL6_4fish.exit.i.i.i.i.i.i

bb.k:                                             ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECs8frGy5WneL6_4fish.exit.i.i.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i.i132, i64 64
  %i.be = add nsw i64 %.sroa.5.0.i.i.i.i.i.i131, -16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.be, 0
  br i1 %.not.i.i.i.i.i.i, label %.preheader.i.i.i.preheader, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECs8frGy5WneL6_4fish.exit.i.i.i.i.i.i

.preheader.i.i.i.preheader:                       ; preds = %bb.k, %bb.j
  br i1 %.not.not.not.i.not.not.i.not.i.i.i.i.i133, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNCNvXs_NtNtNtCs8frGy5WneL6_4fish8builtins6string4trimNtB2e_4TrimNtB2g_16StringSubCommand6handles_00ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3J_5count0EB2k_.exit, label %.lr.ph

.preheader.i.i.i:                                 ; preds = %.lr.ph
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bg, i64 4 ; 2 uses
  %.not.not.not.i.not.not.i.not.i.i.i.i.i = icmp eq ptr %i.bf, %i.y
  br i1 %.not.not.not.i.not.not.i.not.i.i.i.i.i, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNCNvXs_NtNtNtCs8frGy5WneL6_4fish8builtins6string4trimNtB2e_4TrimNtB2g_16StringSubCommand6handles_00ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3J_5count0EB2k_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i.i.i.preheader, %.preheader.i.i.i
  %i.bg = phi ptr [ %i.bf, %.preheader.i.i.i ], [ %i.w, %.preheader.i.i.i.preheader ] ; 2 uses
  %.val2.i.i.i.i.i.i.i = load i32, ptr %i.bg, align 4, !range !88, !alias.scope !3241, !noalias !3244, !noundef !10
  %i.bh = icmp eq i32 %.val2.i.i.i.i.i.i.i, %i.aw
  br i1 %i.bh, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvXs_NtNtNtCs8frGy5WneL6_4fish8builtins6string4trimNtB2Z_4TrimNtB31_16StringSubCommand6handles_00NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32B2Q_EB1i_5count0E0E0B35_.exit.i.i.i, label %.preheader.i.i.i

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECs8frGy5WneL6_4fish.exit.i.i.i.i.i.i: ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECs8frGy5WneL6_4fish.exit.i.i.i.i.i.i.preheader, %bb.k
  %.sroa.0.05.i.i.i.i.i.i132 = phi ptr [ %i.bd, %bb.k ], [ %i.o, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECs8frGy5WneL6_4fish.exit.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.5.0.i.i.i.i.i.i131 = phi i64 [ %i.be, %bb.k ], [ %i.v, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECs8frGy5WneL6_4fish.exit.i.i.i.i.i.i.preheader ]
  %i.bi = load <16 x i32>, ptr %.sroa.0.05.i.i.i.i.i.i132, align 4, !alias.scope !3241, !noalias !3248
  %i.bj = icmp eq <16 x i32> %i.bi, %i.bc
  %i.bk = bitcast <16 x i1> %i.bj to i16
  %.not136 = icmp eq i16 %i.bk, 0
  br i1 %.not136, label %bb.k, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvXs_NtNtNtCs8frGy5WneL6_4fish8builtins6string4trimNtB2Z_4TrimNtB31_16StringSubCommand6handles_00NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32B2Q_EB1i_5count0E0E0B35_.exit.i.i.i

_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvXs_NtNtNtCs8frGy5WneL6_4fish8builtins6string4trimNtB2Z_4TrimNtB31_16StringSubCommand6handles_00NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32B2Q_EB1i_5count0E0E0B35_.exit.i.i.i: ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECs8frGy5WneL6_4fish.exit.i.i.i.i.i.i, %.lr.ph
  %i.bl = add nuw nsw i64 %.sroa.01.024.i.i.i, 1
  %i.bm = icmp eq ptr %i.av, %i.ap
  br i1 %i.bm, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNCNvXs_NtNtNtCs8frGy5WneL6_4fish8builtins6string4trimNtB2e_4TrimNtB2g_16StringSubCommand6handles_00ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3J_5count0EB2k_.exit, label %.lr.ph.i.i.i

_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNCNvXs_NtNtNtCs8frGy5WneL6_4fish8builtins6string4trimNtB2e_4TrimNtB2g_16StringSubCommand6handles_00ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3J_5count0EB2k_.exit: ; preds = %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvXs_NtNtNtCs8frGy5WneL6_4fish8builtins6string4trimNtB2Z_4TrimNtB31_16StringSubCommand6handles_00NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32B2Q_EB1i_5count0E0E0B35_.exit.i.i.i, %.preheader.i.i.i.preheader, %.preheader.i.i.i, %bb.i, %bb.f
  %.sroa.06.0 = phi i64 [ 0, %bb.f ], [ %.sroa.01.024.i.i.i, %.preheader.i.i.i ], [ 0, %bb.i ], [ %i.at, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvXs_NtNtNtCs8frGy5WneL6_4fish8builtins6string4trimNtB2Z_4TrimNtB31_16StringSubCommand6handles_00NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32B2Q_EB1i_5count0E0E0B35_.exit.i.i.i ], [ %.sroa.01.024.i.i.i, %.preheader.i.i.i.preheader ] ; 6 uses
  br i1 %i.z, label %bb.m, label %bb.o

.loopexit55:                                      ; preds = %bb.x, %bb.ae, %bb.n
  %lpad.loopexit57 = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp56:                             ; preds = %.invoke, %bb.w, %bb.y, %.split.i.i.i.i
  %lpad.loopexit.split-lp58 = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp56, %.loopexit55
  %lpad.phi59 = phi { ptr, i32 } [ %lpad.loopexit57, %.loopexit55 ], [ %lpad.loopexit.split-lp58, %.loopexit.split-lp56 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #28
          to label %.body unwind label %bb.aj

bb.m:                                             ; preds = %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNCNvXs_NtNtNtCs8frGy5WneL6_4fish8builtins6string4trimNtB2e_4TrimNtB2g_16StringSubCommand6handles_00ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3J_5count0EB2k_.exit
  %i.bn = load i64, ptr %i.u, align 8             ; 2 uses
  %.not35 = icmp eq i64 %.sroa.06.0, %i.bn
  br i1 %.not35, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bo = load ptr, ptr %i.t, align 8, !nonnull !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bn
  store ptr %i.bo, ptr %i.b, align 8
  store ptr %i.bp, ptr %i.aa, align 8
  store i8 0, ptr %i.ab, align 8
  store ptr %i.o, ptr %i.ac, align 8
  store i64 %i.q, ptr %i.ad, align 8
  %i.bq = invoke { i64, i64 } @_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3revINtB5_3RevNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENtNtNtB9_6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtB7_10take_whileINtB2K_9TakeWhileppEB1R_8try_fold5checkcjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCNCNvXs_NtNtNtCs8frGy5WneL6_4fish8builtins6string4trimNtB4y_4TrimNtB4A_16StringSubCommand6handle00NCINvMB3J_B3G_10wrap_mut_2jcNCNvYIB32_BM_B4p_EB1R_5count0E0E0INtNtB3L_12control_flow11ControlFlowB3G_jEEB4E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b, i64 noundef 0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noalias nofree noundef nonnull dereferenceable(1) %i.ab)
          to label %bb.p unwind label %.loopexit55

bb.o:                                             ; preds = %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNCNvXs_NtNtNtCs8frGy5WneL6_4fish8builtins6string4trimNtB2e_4TrimNtB2g_16StringSubCommand6handles_00ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3J_5count0EB2k_.exit, %bb.m, %bb.p
  %.sroa.015.0 = phi i64 [ %i.bt, %bb.p ], [ 0, %bb.m ], [ 0, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNCNvXs_NtNtNtCs8frGy5WneL6_4fish8builtins6string4trimNtB2e_4TrimNtB2g_16StringSubCommand6handles_00ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3J_5count0EB2k_.exit ] ; 3 uses
  %i.br = add i64 %.sroa.015.0, %.sroa.06.0       ; 2 uses
  %i.bs = icmp ult i64 %i.br, %.sroa.06.0
  br i1 %i.bs, label %.invoke, label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bt = extractvalue { i64, i64 } %i.bq, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.o

bb.q:                                             ; preds = %bb.o
  %i.bu = add i64 %i.br, %.sroa.03.0              ; 3 uses
  %i.bv = icmp ult i64 %i.bu, %.sroa.03.0
  br i1 %i.bv, label %.invoke, label %bb.s

.invoke:                                          ; preds = %bb.q, %bb.o
  %i.bw = phi ptr [ @2107, %bb.o ], [ @2108, %bb.q ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bw) #30
          to label %.cont unwind label %.loopexit.split-lp56

.cont:                                            ; preds = %.invoke
  unreachable

bb.r:                                             ; preds = %bb.y, %bb.w
  unreachable

bb.s:                                             ; preds = %bb.q
  br i1 %i.ag, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bx = load ptr, ptr %i.ah, align 8, !nonnull !10, !align !11, !noundef !10
  %i.by = load ptr, ptr %i.t, align 8, !nonnull !10
  %i.bz = load i64, ptr %i.u, align 8             ; 2 uses
  %i.ca = sub i64 %i.bz, %.sroa.015.0             ; 2 uses
  %i.cb = icmp ult i64 %i.bz, %.sroa.015.0
  br i1 %i.cb, label %bb.w, label %bb.v

bb.u:                                             ; preds = %bb.s
  %.not40 = icmp eq i64 %i.bu, 0
  br i1 %.not40, label %bb.aa, label %bb.af

bb.v:                                             ; preds = %bb.t
  %i.cc = icmp ult i64 %i.ca, %.sroa.06.0
  br i1 %i.cc, label %bb.y, label %bb.x, !prof !1279

bb.w:                                             ; preds = %bb.t
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2109) #30
          to label %bb.r unwind label %.loopexit.split-lp56

bb.x:                                             ; preds = %bb.v
  %i.cd = sub nuw i64 %i.ca, %.sroa.06.0
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %.sroa.06.0
  %i.cf = invoke noundef zeroext i1 @_RINvMsc_NtCs8frGy5WneL6_4fish2ioNtB6_12OutputStream6appendRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ce, i64 noundef %i.cd)
          to label %bb.z unwind label %.loopexit55 ; 0 uses

bb.y:                                             ; preds = %bb.v
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1542, i64 noundef 19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2110) #30
          to label %bb.r unwind label %.loopexit.split-lp56

bb.z:                                             ; preds = %bb.x
  br i1 %i.ak, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.u, %bb.ae, %bb.z
  %i.cg = load i64, ptr %i.c, align 8, !range !477, !alias.scope !3251, !noundef !10
  %i.ch = icmp eq i64 %i.cg, -1
  br i1 %i.ch, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.ab
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit unwind label %.loopexit

bb.ae:                                            ; preds = %bb.z
  %i.ck = load ptr, ptr %i.ah, align 8, !nonnull !10, !align !11, !noundef !10
  %i.cl = invoke noundef zeroext i1 @_RINvMsc_NtCs8frGy5WneL6_4fish2ioNtB6_12OutputStream6appendcEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ck, i32 noundef 10)
          to label %bb.aa unwind label %.loopexit55 ; 0 uses

bb.af:                                            ; preds = %bb.u
  %i.cm = load i64, ptr %i.c, align 8, !range !477, !alias.scope !3254, !noundef !10
  %i.cn = icmp eq i64 %i.cm, -1
  br i1 %i.cn, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit52, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i48 unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i48: ; preds = %bb.ag
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit52 unwind label %.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit: ; preds = %bb.aa, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.d

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit52: ; preds = %bb.af, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc9ArgumentsEBJ_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.h

bb.aj:                                            ; preds = %bb.l, %.body
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.ak:                                            ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtCs8frGy5WneL6_4fish8builtins6string4trimNtB4_4TrimNtB6_16StringSubCommand9parse_opt(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(24) %1, i32 noundef range(i32 0, 1114112) %2, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) %3, i64 %4) unnamed_addr #1 {
bb.a:
  switch i32 %2, label %bb.h [
    i32 99, label %bb.b
    i32 108, label %bb.c
    i32 114, label %bb.d
    i32 113, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.g, label %bb.f, !prof !372

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 1, ptr %i.a, align 8
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 1, ptr %i.b, align 1
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i8 1, ptr %i.c, align 2
  br label %bb.h

bb.f:                                             ; preds = %bb.b
  store ptr %3, ptr %1, align 8, !captures !2272
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %4, ptr %i.d, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2111) #31
  unreachable

bb.h:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.a
  %storemerge = phi i64 [ -2, %bb.a ], [ -3, %bb.f ], [ -3, %bb.e ], [ -3, %bb.d ], [ -3, %bb.c ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i32, i32 } @_RNvXs_NtNtNtCs8frGy5WneL6_4fish8builtins6string7shortenNtB4_7ShortenNtB6_16StringSubCommand6handle(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree readnone align 8 captures(none) %1, ptr noalias nofree noundef align 8 dereferenceable(48) %2, ptr noalias nofree noundef align 8 dereferenceable(8) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef range(i64 0, 576460752303423488) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 14 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 24 uses
  %.sroa.9 = alloca [16 x i8], align 8            ; 11 uses
  %i.i = alloca [32 x i8], align 8                ; 10 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [48 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = alloca [48 x i8], align 8                ; 11 uses
  %i.o = alloca [24 x i8], align 8                ; 13 uses
  %i.p = alloca [32 x i8], align 8                ; 6 uses
  %i.q = alloca [80 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 9 uses
  %i.s = alloca [32 x i8], align 8                ; 6 uses
  %i.t = alloca [80 x i8], align 8                ; 6 uses
  %i.u = alloca [80 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i64 0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 6 uses
  store i64 0, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  invoke void @_RNvNtNtCs8frGy5WneL6_4fish8builtins6string9arguments(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef %5, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %2)
          to label %bb.c unwind label %bb.b

.thread264:                                       ; preds = %bb.ec, %bb.j
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.z = load i64, ptr %0, align 8, !range !475, !noundef !10
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = trunc nuw i64 %i.z to i1                ; 2 uses
end_hunk_2
