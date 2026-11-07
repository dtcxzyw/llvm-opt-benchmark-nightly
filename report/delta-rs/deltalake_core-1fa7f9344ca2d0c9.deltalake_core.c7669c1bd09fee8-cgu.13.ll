Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.13?download=true
inline.NumInlined: 13443
inline.NumDeleted: 3890
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 64
loop-unroll.NumUnrolled: 73
begin_hunk_0_@_RNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtB7_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future0Bb_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fj)
  store ptr @604, ptr %i.fj, align 8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store ptr inttoptr (i64 69 to ptr), ptr %i.hq, align 8
  store ptr %i.fj, ptr %i.fk, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store ptr @196, ptr %i.hr, align 8
  store i64 1, ptr %i.fl, align 8
  %.sroa.6.0..sroa_idx157 = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store ptr %i.fk, ptr %.sroa.6.0..sroa_idx157, align 8
  %.sroa.7.0..sroa_idx158 = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  store i64 1, ptr %.sroa.7.0..sroa_idx158, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  store ptr %i.hp, ptr %.sroa.8.0..sroa_idx, align 8
  invoke fastcc void @_RNCNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtB9_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future0s_0Bd_(ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.fl)
          to label %bb.aa unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fk)
  br label %.body

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fk)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.p, %bb.q, %bb.u, %bb.x
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 504
  %.val66 = load ptr, ptr %i.ht, align 8, !nonnull !97, !noundef !97
  %i.hu = getelementptr i8, ptr %1, i64 512
  %.val67 = load ptr, ptr %i.hu, align 8, !nonnull !97, !align !100, !noundef !97 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.val67, i64 16
  %i.hw = load i64, ptr %i.hv, align 8, !range !96, !invariant.load !97
  %i.hx = add nsw i64 %i.hw, -1
  %i.hy = and i64 %i.hx, -16
  %i.hz = getelementptr inbounds nuw i8, ptr %.val66, i64 %i.hy
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fe)
  call void @llvm.experimental.noalias.scope.decl(metadata !25921)
  %i.ib = load ptr, ptr %i.fr, align 8, !noalias !25921, !noundef !97 ; 2 uses
  %.not.i103 = icmp eq ptr %i.ib, null
  br i1 %.not.i103, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ic = load ptr, ptr %i.ib, align 8, !noalias !25921, !nonnull !97, !noundef !97
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 632
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.if = load ptr, ptr %i.ie, align 8, !noalias !25921, !noundef !97
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 624
  %i.ih = load i64, ptr %i.ig, align 8, !noalias !25921, !noundef !97
  invoke void %i.ic(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.fe, ptr noundef nonnull align 8 %i.id, ptr noundef %i.if, i64 noundef %i.ih)
          to label %_RNvXs5_NtCs14kWLkQVSKO_14deltalake_core8logstoreNtB5_13CommitOrBytesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit unwind label %bb.ae, !inline_history !25697

bb.ad:                                            ; preds = %bb.ab
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.ij = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ij, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ii)
          to label %.noexc105 unwind label %bb.ae

.noexc105:                                        ; preds = %bb.ad
  store ptr null, ptr %i.fe, align 8, !alias.scope !25921
  br label %_RNvXs5_NtCs14kWLkQVSKO_14deltalake_core8logstoreNtB5_13CommitOrBytesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

_RNvXs5_NtCs14kWLkQVSKO_14deltalake_core8logstoreNtB5_13CommitOrBytesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit: ; preds = %.noexc105, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fd)
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 592
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.fd, ptr noundef nonnull align 8 dereferenceable(16) %i.il, i64 16, i1 false)
  %i.im = getelementptr inbounds nuw i8, ptr %.val67, i64 88
  %i.in = load ptr, ptr %i.im, align 8, !invariant.load !97, !nonnull !97
  %i.io = invoke { ptr, ptr } %i.in(ptr noundef nonnull %i.ia, i64 noundef 0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.fe, ptr noalias noundef nonnull align 1 captures(address) dereferenceable(16) %i.fd)
          to label %bb.ag unwind label %bb.af     ; 2 uses

bb.af:                                            ; preds = %_RNvXs5_NtCs14kWLkQVSKO_14deltalake_core8logstoreNtB5_13CommitOrBytesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit
  %i.ip = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fd)
  br label %bb.ah

bb.ag:                                            ; preds = %_RNvXs5_NtCs14kWLkQVSKO_14deltalake_core8logstoreNtB5_13CommitOrBytesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fe)
  %i.iq = extractvalue { ptr, ptr } %i.io, 0
  %i.ir = extractvalue { ptr, ptr } %i.io, 1
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 736
  store ptr %i.iq, ptr %i.is, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 744
  store ptr %i.ir, ptr %i.it, align 8
  br label %bb.al

bb.ah:                                            ; preds = %bb.af, %bb.ae
  %.pn11 = phi { ptr, i32 } [ %i.ip, %bb.af ], [ %i.ik, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fe)
  br label %.body106

.body106:                                         ; preds = %bb.au, %bb.at, %bb.as, %bb.ak, %bb.ah, %bb.ei, %bb.eh, %.body122
  %.pn35 = phi { ptr, i32 } [ %.pn11, %bb.ah ], [ %.pn30.pn, %bb.ei ], [ %.pn30.pn, %bb.eh ], [ %.pn30.pn, %.body122 ], [ %i.iv, %bb.ak ], [ %i.jp, %bb.au ], [ %i.jj, %bb.at ], [ %i.jj, %bb.as ]
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 723
  store i8 0, ptr %i.iu, align 1
  br label %.body

bb.ai:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @605) #50
  unreachable

bb.aj:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @605) #50
  unreachable

bb.ak:                                            ; preds = %bb.al
  %i.iv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fc)
  %.val91 = load ptr, ptr %i.ix, align 8
  %i.iw = getelementptr i8, ptr %1, i64 744
  %.val92 = load ptr, ptr %i.iw, align 8, !nonnull !97, !align !100, !noundef !97
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEEB2B_(ptr %.val91, ptr nonnull %.val92) #46
          to label %.body106 unwind label %bb.bu

bb.al:                                            ; preds = %bb.ag, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fc)
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 736 ; 4 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB8_6marker4SendEL_EEB1v_4pollB2i_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.fc, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ix, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.am unwind label %bb.ak

bb.am:                                            ; preds = %bb.al
  %i.iy = load i64, ptr %i.fc, align 8, !range !25922, !noundef !97
  %i.iz = icmp eq i64 %i.iy, -9223372036854775780
  br i1 %i.iz, label %bb.an, label %bb.ao

common.ret:                                       ; preds = %bb.ug, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit, %bb.cm, %bb.by, %bb.an
  %.sink = phi i8 [ 6, %bb.ug ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit ], [ 5, %bb.cm ], [ 4, %bb.by ], [ 3, %bb.an ]
  store i8 %.sink, ptr %i.fm, align 2
  ret void

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fc)
  store i64 21, ptr %0, align 16
  br label %common.ret

bb.ao:                                            ; preds = %bb.am
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 648 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ja, ptr noundef nonnull align 8 dereferenceable(72) %i.fc, i64 72, i1 false)
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 723 ; 2 uses
  store i8 1, ptr %i.jb, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fc)
  %.val89 = load ptr, ptr %i.ix, align 8          ; 5 uses
  %i.jc = getelementptr i8, ptr %1, i64 744       ; 2 uses
  %.val90 = load ptr, ptr %i.jc, align 8, !nonnull !97, !align !100, !noundef !97 ; 5 uses
  %i.jd = load ptr, ptr %.val90, align 8, !invariant.load !97 ; 2 uses
  %.not.i.i = icmp eq ptr %i.jd, null
  br i1 %.not.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val89) ]
  invoke void %i.jd(ptr noundef nonnull %.val89)
          to label %bb.aq unwind label %bb.as

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.je = getelementptr inbounds nuw i8, ptr %.val90, i64 8
  %i.jf = load i64, ptr %i.je, align 8, !range !98, !invariant.load !97 ; 2 uses
  %i.jg = icmp eq i64 %i.jf, 0
  br i1 %i.jg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEEB2B_.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.jh = getelementptr inbounds nuw i8, ptr %.val90, i64 16
  %i.ji = load i64, ptr %i.jh, align 8, !range !96, !invariant.load !97
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val89) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val89, i64 noundef range(i64 1, 0) %i.jf, i64 noundef range(i64 1, 536870913) %i.ji) #40
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEEB2B_.exit

bb.as:                                            ; preds = %bb.ap
  %i.jj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.val90, i64 8
  %i.jl = load i64, ptr %i.jk, align 8, !range !98, !invariant.load !97 ; 2 uses
  %i.jm = icmp eq i64 %i.jl, 0
  br i1 %i.jm, label %.body106, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jn = getelementptr inbounds nuw i8, ptr %.val90, i64 16
  %i.jo = load i64, ptr %i.jn, align 8, !range !96, !invariant.load !97
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val89, i64 noundef range(i64 1, 0) %i.jl, i64 noundef range(i64 1, 536870913) %i.jo) #40
  br label %.body106

bb.au:                                            ; preds = %bb.cq, %bb.dq
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %.body106

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEEB2B_.exit: ; preds = %bb.ar, %bb.aq
  %i.jq = load i64, ptr %i.ja, align 8, !range !139, !noundef !97 ; 3 uses
  %.not13 = icmp eq i64 %i.jq, -9223372036854775781
  br i1 %.not13, label %bb.av, label %3

3:                                                ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEEB2B_.exit
  %4 = icmp ne i64 %i.jq, -9223372036854775788
  call void @llvm.assume(i1 %4)
  %5 = icmp eq i64 %i.jq, -9223372036854775790
  br i1 %5, label %bb.ax, label %bb.ay

bb.av:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEEB2B_.exit
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 726
  store i8 0, ptr %i.jr, align 2
  %i.js = load <2 x i64>, ptr %1, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6290.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6290.0.copyload = load i64, ptr %.sroa.6290.0..sroa_idx, align 8
  %.sroa.7291.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.12273, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7291.0..sroa_idx, i64 16, i1 false)
  %.sroa.8292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.8292.0.copyload = load ptr, ptr %.sroa.8292.0..sroa_idx, align 8
  %.sroa.9293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.14276, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.9293.0..sroa_idx, i64 56, i1 false)
  %.sroa.10294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(392) %.sroa.15277, ptr noundef nonnull align 8 dereferenceable(392) %.sroa.10294.0..sroa_idx, i64 392, i1 false)
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 725
  store i8 0, ptr %i.jt, align 1
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.jv = load <2 x ptr>, ptr %i.ju, align 8
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 724
  store i8 0, ptr %i.jw, align 4
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 576
  %i.jy = load <2 x ptr>, ptr %i.jx, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ci, %bb.dj, %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorINtB5_4IntoNtNtBE_6errors15DeltaTableErrorE4intoBE_.exit, %bb.av
  %.sroa.13274.0 = phi ptr [ %.sroa.8292.0.copyload, %bb.av ], [ %.sroa.3210.sroa.3.0.copyload, %bb.dj ], [ %.sroa.5.sroa.2.0.copyload, %bb.ci ], [ %.sroa.13274.16.copyload, %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorINtB5_4IntoNtNtBE_6errors15DeltaTableErrorE4intoBE_.exit ] ; 4 uses
  %.sroa.10271.0 = phi i64 [ %.sroa.6290.0.copyload, %bb.av ], [ %.sroa.3210.sroa.0.sroa.0.0.copyload, %bb.dj ], [ %.sroa.3.0.copyload, %bb.ci ], [ %.sroa.10271.16.copyload, %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorINtB5_4IntoNtNtBE_6errors15DeltaTableErrorE4intoBE_.exit ] ; 4 uses
  %.sroa.7269.0 = phi i64 [ %.sroa.5.0.copyload, %bb.av ], [ %i.nj, %bb.dj ], [ %i.mj, %bb.ci ], [ %.sroa.7269.16.copyload, %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorINtB5_4IntoNtNtBE_6errors15DeltaTableErrorE4intoBE_.exit ] ; 4 uses
  %i.jz = phi <2 x i64> [ %i.js, %bb.av ], [ <i64 20, i64 undef>, %bb.dj ], [ <i64 20, i64 undef>, %bb.ci ], [ <i64 20, i64 undef>, %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorINtB5_4IntoNtNtBE_6errors15DeltaTableErrorE4intoBE_.exit ] ; 4 uses
  %i.ka = phi <2 x ptr> [ %i.jv, %bb.av ], [ undef, %bb.dj ], [ undef, %bb.ci ], [ undef, %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorINtB5_4IntoNtNtBE_6errors15DeltaTableErrorE4intoBE_.exit ] ; 4 uses
  %i.kb = phi <2 x ptr> [ %i.jy, %bb.av ], [ undef, %bb.dj ], [ undef, %bb.ci ], [ undef, %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorINtB5_4IntoNtNtBE_6errors15DeltaTableErrorE4intoBE_.exit ] ; 4 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 648 ; 2 uses
  %i.kd = load i64, ptr %i.kc, align 8, !range !139, !noundef !97
  %.not34 = icmp eq i64 %i.kd, -9223372036854775781
  br i1 %.not34, label %bb.dl, label %bb.dk

bb.ax:                                            ; preds = %3
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.kf = load i64, ptr %i.ke, align 8, !noundef !97
  %i.kg = icmp eq i64 %i.kf, 0
  br i1 %i.kg, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %3
  store i8 0, ptr %i.jb, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.er, ptr noundef nonnull align 8 dereferenceable(72) %i.ja, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eq)
  invoke void @_RNvXNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtB2_16TransactionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.eq, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.er)
          to label %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorINtB5_4IntoNtNtBE_6errors15DeltaTableErrorE4intoBE_.exit unwind label %bb.bt

bb.az:                                            ; preds = %bb.ax
  %i.kh = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.ki = icmp samesign ult i64 %i.kh, 2
  br i1 %i.ki, label %bb.ba, label %bb.bf

bb.ba:                                            ; preds = %bb.az
  %i.kj = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtB9_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future0s_10___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.kk = icmp ult i8 %i.kj, 3
  br i1 %i.kk, label %bb.bc, label %bb.bb, !prof !170

bb.bb:                                            ; preds = %bb.ba
  %i.kl = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtB9_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future0s_10___CALLSITE) #45
          to label %bb.bc unwind label %bb.bj

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.sroa.0.0.i110 = phi i8 [ %i.kj, %bb.ba ], [ %i.kl, %bb.bb ] ; 2 uses
  %i.km = icmp eq i8 %.sroa.0.0.i110, 0
  br i1 %i.km, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.kn = load ptr, ptr @_RNvNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtB9_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future0s_10___CALLSITE, align 8, !nonnull !97, !align !100, !noundef !97
  %i.ko = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.kn, i8 noundef %.sroa.0.0.i110)
          to label %bb.be unwind label %bb.bj

bb.be:                                            ; preds = %bb.bd
  br i1 %i.ko, label %bb.bo, label %bb.bf

bb.bf:                                            ; preds = %bb.az, %bb.bc, %bb.be
  %i.kp = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not301 = icmp eq i8 %i.kp, 0
  br i1 %.not301, label %bb.bg, label %bb.br

bb.bg:                                            ; preds = %bb.bf
  %i.kq = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.kr = icmp ult i64 %i.kq, 6
  call void @llvm.assume(i1 %i.kr)
  %i.ks = icmp samesign ugt i64 %i.kq, 3
  br i1 %i.ks, label %bb.bh, label %bb.br

bb.bh:                                            ; preds = %bb.bg
  %i.kt = load ptr, ptr @_RNvNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtB9_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future0s_10___CALLSITE, align 8, !nonnull !97, !align !100, !noundef !97 ; 3 uses
  %i.ku = getelementptr i8, ptr %i.kt, i64 32
  %.val81 = load ptr, ptr %i.ku, align 8, !nonnull !97, !noundef !97
  %i.kv = getelementptr i8, ptr %i.kt, i64 40
  %.val82 = load i64, ptr %i.kv, align 8, !noundef !97
  store i64 4, ptr %i.ey, align 8, !alias.scope !25923
  %.sroa.6175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store ptr %.val81, ptr %.sroa.6175.0..sroa_idx, align 8, !alias.scope !25923
  %.sroa.8176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store i64 %.val82, ptr %.sroa.8176.0..sroa_idx, align 8, !alias.scope !25923
  %i.kw = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.bi unwind label %bb.bj     ; 2 uses

bb.bi:                                            ; preds = %bb.bh
  %i.kx = extractvalue { ptr, ptr } %i.kw, 0      ; 2 uses
  %i.ky = extractvalue { ptr, ptr } %i.kw, 1      ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 24
  %i.la = load ptr, ptr %i.kz, align 8, !invariant.load !97, !nonnull !97
  %i.lb = invoke noundef zeroext i1 %i.la(ptr noundef %i.kx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ey)
          to label %bb.bk unwind label %bb.bj

bb.bj:                                            ; preds = %bb.cn, %bb.br, %bb.bd, %bb.bb, %bb.bh, %bb.bi
  %i.lc = landingpad { ptr, i32 }
          cleanup
  br label %.body122

bb.bk:                                            ; preds = %bb.bi
  br i1 %i.lb, label %bb.bl, label %bb.br

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ex)
  %i.ld = load ptr, ptr @_RNvNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtB9_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future0s_10___CALLSITE, align 8, !nonnull !97, !align !100, !noundef !97
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ew)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ev)
  store ptr @606, ptr %i.ev, align 8
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store ptr inttoptr (i64 111 to ptr), ptr %i.lf, align 8
  store ptr %i.ev, ptr %i.ew, align 8
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store ptr @196, ptr %i.lg, align 8
  store i64 1, ptr %i.ex, align 8, !alias.scope !25924
  %.sroa.4.0..sroa_idx.i117 = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store ptr %i.ew, ptr %.sroa.4.0..sroa_idx.i117, align 8, !alias.scope !25924
  %.sroa.5.0..sroa_idx.i118 = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i118, align 8, !alias.scope !25924
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  store ptr %i.le, ptr %i.lh, align 8, !alias.scope !25924
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eg, ptr noundef nonnull align 8 dereferenceable(24) %i.ey, i64 24, i1 false)
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.kt, ptr noundef nonnull %i.kx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ky, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.eg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ex)
          to label %bb.bn unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.li = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ev)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ew)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ex)
  br label %.body122

bb.bn:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ev)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ew)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ex)
  br label %bb.br

bb.bo:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fb)
  %i.lj = load ptr, ptr @_RNvNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtB9_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future0s_10___CALLSITE, align 8, !nonnull !97, !align !100, !noundef !97
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ez)
  store ptr @606, ptr %i.ez, align 8
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store ptr inttoptr (i64 111 to ptr), ptr %i.ll, align 8
  store ptr %i.ez, ptr %i.fa, align 8
  %i.lm = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  store ptr @196, ptr %i.lm, align 8
  store i64 1, ptr %i.fb, align 8
  %.sroa.6168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store ptr %i.fa, ptr %.sroa.6168.0..sroa_idx, align 8
  %.sroa.7169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store i64 1, ptr %.sroa.7169.0..sroa_idx, align 8
  %.sroa.8170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  store ptr %i.lk, ptr %.sroa.8170.0..sroa_idx, align 8
  invoke fastcc void @_RNCNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtB9_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future0s0_0Bd_(ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.fb)
          to label %bb.bq unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ln = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ez)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fa)
  br label %.body122

bb.bq:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ez)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fa)
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bf, %bb.bg, %bb.bk, %bb.bn
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 640
  store i64 2, ptr %i.lo, align 8
  %i.lp = getelementptr inbounds nuw i8, ptr %1, i64 504
  %.val = load ptr, ptr %i.lp, align 8, !nonnull !97, !noundef !97
  %i.lq = getelementptr i8, ptr %1, i64 512
  %.val65 = load ptr, ptr %i.lq, align 8, !nonnull !97, !align !100, !noundef !97 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.val65, i64 16
  %i.ls = load i64, ptr %i.lr, align 8, !range !96, !invariant.load !97
  %i.lt = add nsw i64 %i.ls, -1
  %i.lu = and i64 %i.lt, -16
  %i.lv = getelementptr inbounds nuw i8, ptr %.val, i64 %i.lu
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  %i.lx = getelementptr inbounds nuw i8, ptr %.val65, i64 104
  %i.ly = load ptr, ptr %i.lx, align 8, !invariant.load !97, !nonnull !97
  %i.lz = invoke { ptr, ptr } %i.ly(ptr noundef nonnull %i.lw, i64 noundef 0)
          to label %bb.bs unwind label %bb.bj     ; 2 uses

bb.bs:                                            ; preds = %bb.br
  %i.ma = extractvalue { ptr, ptr } %i.lz, 0
  %i.mb = extractvalue { ptr, ptr } %i.lz, 1
  store ptr %i.ma, ptr %i.ix, align 8
  store ptr %i.mb, ptr %i.jc, align 8
  br label %bb.bw

.body122:                                         ; preds = %bb.cg, %bb.cj, %bb.bv, %bb.cd, %bb.ce, %bb.bm, %bb.bj, %bb.bp, %bb.bt
  %.pn30.pn = phi { ptr, i32 } [ %i.lc, %bb.bj ], [ %i.ms, %bb.ce ], [ %i.ln, %bb.bp ], [ %i.me, %bb.bt ], [ %i.li, %bb.bm ], [ %i.mg, %bb.bv ], [ %i.ms, %bb.cd ], [ %i.na, %bb.cg ], [ %i.nh, %bb.cj ] ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %1, i64 648 ; 2 uses
  %i.md = load i64, ptr %i.mc, align 8, !range !139, !noundef !97
  %.not33 = icmp eq i64 %i.md, -9223372036854775781
  br i1 %.not33, label %.body106, label %bb.eh

bb.bt:                                            ; preds = %bb.ay
  %i.me = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eq)
  br label %.body122

_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorINtB5_4IntoNtNtBE_6errors15DeltaTableErrorE4intoBE_.exit: ; preds = %bb.ay
  %.sroa.7269.16.copyload = load i64, ptr %i.eq, align 16
  %.sroa.10271.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %.sroa.10271.16.copyload = load i64, ptr %.sroa.10271.16..sroa_idx, align 8
  %.sroa.12273.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.12273, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.12273.16..sroa_idx, i64 16, i1 false)
  %.sroa.13274.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  %.sroa.13274.16.copyload = load ptr, ptr %.sroa.13274.16..sroa_idx, align 16
  %.sroa.14276.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eq, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.14276, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.14276.16..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eq)
  br label %bb.aw
end_hunk_0
begin_hunk_1_@_RNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtB7_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future0Bb_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12263.sroa.11)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12263.sroa.22)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtB1H_14PreparedCommitNtNtNtB4_6future11into_future10IntoFuture11into_future00EEB1L_(ptr noundef nonnull align 8 %i.sq) #46
          to label %bb.di unwind label %bb.bu

bb.ek:                                            ; preds = %bb.a, %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12263.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12263.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12263.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12263.sroa.22)
  %i.sq = getelementptr inbounds nuw i8, ptr %1, i64 736 ; 9 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %1, i64 776 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25944)
  %i.ss = load i64, ptr %i.sq, align 8, !range !114, !alias.scope !25944, !noalias !25945, !noundef !97
  %.not.i.i144 = icmp eq i64 %i.ss, 2
  br i1 %.not.i.i144, label %.noexc145, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.st = getelementptr inbounds nuw i8, ptr %1, i64 760
  invoke void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.sq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.st)
          to label %.noexc145 unwind label %bb.ej

.noexc145:                                        ; preds = %bb.el, %bb.ek
  %i.su = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !25945
  %i.sv = icmp eq i8 %i.su, 0
  br i1 %i.sv, label %bb.em, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

bb.em:                                            ; preds = %.noexc145
  %i.sw = getelementptr inbounds nuw i8, ptr %1, i64 768
  %i.sx = load ptr, ptr %i.sw, align 8, !alias.scope !25944, !noalias !25945, !align !100, !noundef !97 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.sx, null
  br i1 %.not4.i.i, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i, label %bb.en

bb.en:                                            ; preds = %bb.em
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed), !noalias !25946
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 16
  %i.sz = load ptr, ptr %i.sy, align 8, !noalias !25947, !nonnull !97, !noundef !97
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sx, i64 24
  %i.tb = load i64, ptr %i.ta, align 8, !noalias !25947, !noundef !97
  store ptr %i.sz, ptr %i.ed, align 8, !noalias !25946
  %i.tc = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store i64 %i.tb, ptr %i.tc, align 8, !noalias !25946
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec), !noalias !25946
  store ptr %i.ed, ptr %i.ec, align 8, !noalias !25946
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !25946
  invoke fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.sq, ptr noalias noundef nonnull readonly captures(address, read_provenance) @645, i64 noundef 21, ptr noundef nonnull @646, ptr noundef nonnull %i.ec) #49
          to label %.noexc146 unwind label %bb.ej

.noexc146:                                        ; preds = %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec), !noalias !25946
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed), !noalias !25946
  br label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i: ; preds = %.noexc146, %bb.em, %.noexc145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !25945
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !25945
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3662.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !25945
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !25945
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !25945
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3618.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !25945
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !noalias !25945
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz), !noalias !25945
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11531.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12532.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13533.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15535.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16536.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17537.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20540.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj), !noalias !25945
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv), !noalias !25945
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %i.td = getelementptr inbounds nuw i8, ptr %1, i64 1518 ; 3 uses
  %i.te = load i8, ptr %i.td, align 2, !range !129, !noalias !25948, !noundef !97
  switch i8 %i.te, label %default.unreachable362 [
    i8 0, label %bb.eo
    i8 1, label %bb.eq
    i8 2, label %bb.er
    i8 3, label %bb.iu
    i8 4, label %bb.mu
    i8 5, label %bb.lx
    i8 6, label %bb.et
    i8 7, label %bb.rv
  ]

bb.eo:                                            ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  %i.tf = getelementptr inbounds nuw i8, ptr %1, i64 1519
  store i8 0, ptr %i.tf, align 1, !noalias !25948
  %i.tg = getelementptr inbounds nuw i8, ptr %1, i64 1520
  %i.th = getelementptr inbounds nuw i8, ptr %1, i64 1525
  store i8 0, ptr %i.th, align 1, !noalias !25948
  %i.ti = getelementptr inbounds nuw i8, ptr %1, i64 1328
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.tg, i8 1, i64 5, i1 false), !noalias !25948
  %i.tj = load i64, ptr %i.ti, align 8, !noalias !25948, !noundef !97
  %i.tk = getelementptr inbounds nuw i8, ptr %1, i64 1408
  %i.tl = add i64 %i.tj, 1                        ; 2 uses
  store i64 %i.tl, ptr %i.tk, align 8, !noalias !25948
  br label %bb.ep

bb.ep:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorEEB19_.exit.i.i, %bb.eo
  %i.tm = phi i64 [ %.pre.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorEEB19_.exit.i.i ], [ %i.tl, %bb.eo ]
  %i.tn = getelementptr inbounds nuw i8, ptr %1, i64 1368 ; 2 uses
  %i.to = load i64, ptr %i.tn, align 8, !noalias !25948, !noundef !97
  %.not.i2.i = icmp ugt i64 %i.to, %i.tm
  br i1 %.not.i2.i, label %bb.hc, label %bb.hb

bb.eq:                                            ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @352) #50
          to label %.noexc.i unwind label %bb.ua, !noalias !25947

.noexc.i:                                         ; preds = %bb.eq
  unreachable

bb.er:                                            ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @352) #50
          to label %.noexc3.i unwind label %bb.ua, !noalias !25947

.noexc3.i:                                        ; preds = %bb.er
  unreachable

bb.es:                                            ; preds = %bb.et
  %i.tp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !25948
  %.val280.i.i = load ptr, ptr %i.tr, align 8, !noalias !25948
  %i.tq = getelementptr i8, ptr %1, i64 1536
  %.val281.i.i = load ptr, ptr %i.tq, align 8, !noalias !25948, !nonnull !97, !align !100, !noundef !97
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEEB2B_(ptr %.val280.i.i, ptr nonnull %.val281.i.i) #46
          to label %.body288.i.i unwind label %bb.gb, !noalias !25949

bb.et:                                            ; preds = %bb.mq, %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !25948
  %i.tr = getelementptr inbounds nuw i8, ptr %1, i64 1528 ; 6 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB8_6marker4SendEL_EEB1v_4pollB2i_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.bx, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.tr, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.eu unwind label %bb.es, !noalias !25949

bb.eu:                                            ; preds = %bb.et
  %i.ts = load i64, ptr %i.bx, align 8, !range !25922, !noalias !25948, !noundef !97
  %i.tt = icmp eq i64 %i.ts, -9223372036854775780
  br i1 %i.tt, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !25948
  br label %bb.ub

bb.ew:                                            ; preds = %bb.eu
  %i.tu = getelementptr inbounds nuw i8, ptr %1, i64 1440 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.tu, ptr noundef nonnull align 8 dereferenceable(72) %i.bx, i64 72, i1 false), !noalias !25948
  %i.tv = getelementptr inbounds nuw i8, ptr %1, i64 1525 ; 3 uses
  store i8 1, ptr %i.tv, align 1, !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !25948
  %.val278.i.i = load ptr, ptr %i.tr, align 8, !noalias !25948 ; 5 uses
  %i.tw = getelementptr i8, ptr %1, i64 1536
  %.val279.i.i = load ptr, ptr %i.tw, align 8, !noalias !25948, !nonnull !97, !align !100, !noundef !97 ; 5 uses
  %i.tx = load ptr, ptr %.val279.i.i, align 8, !invariant.load !97, !noalias !25949 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.tx, null
  br i1 %.not.i.i.i.i, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val278.i.i) ]
  invoke void %i.tx(ptr noundef nonnull %.val278.i.i)
          to label %bb.ey unwind label %bb.fa, !noalias !25949

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %i.ty = getelementptr inbounds nuw i8, ptr %.val279.i.i, i64 8
  %i.tz = load i64, ptr %i.ty, align 8, !range !98, !invariant.load !97, !noalias !25949 ; 2 uses
  %i.ua = icmp eq i64 %i.tz, 0
  br i1 %i.ua, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEEB2B_.exit.i.i, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.ub = getelementptr inbounds nuw i8, ptr %.val279.i.i, i64 16
  %i.uc = load i64, ptr %i.ub, align 8, !range !96, !invariant.load !97, !noalias !25949
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val278.i.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val278.i.i, i64 noundef range(i64 1, 0) %i.tz, i64 noundef range(i64 1, 536870913) %i.uc) #40, !noalias !25949
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEEB2B_.exit.i.i

bb.fa:                                            ; preds = %bb.ex
  %i.ud = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %.val279.i.i, i64 8
  %i.uf = load i64, ptr %i.ue, align 8, !range !98, !invariant.load !97, !noalias !25949 ; 2 uses
  %i.ug = icmp eq i64 %i.uf, 0
  br i1 %i.ug, label %.body288.i.i, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.uh = getelementptr inbounds nuw i8, ptr %.val279.i.i, i64 16
  %i.ui = load i64, ptr %i.uh, align 8, !range !96, !invariant.load !97, !noalias !25949
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val278.i.i, i64 noundef range(i64 1, 0) %i.uf, i64 noundef range(i64 1, 536870913) %i.ui) #40, !noalias !25949
  br label %.body288.i.i

.body288.i.i:                                     ; preds = %bb.tp, %bb.to, %bb.mr, %bb.mp, %bb.gd, %bb.fb, %bb.fa, %bb.es
  %.pn132.i.i = phi { ptr, i32 } [ %.pn89.i.i, %bb.mr ], [ %.pn126.pn.pn.pn.i.i, %bb.tp ], [ %.pn126.pn.pn.pn.i.i, %bb.to ], [ %.pn126.pn.pn.pn.i.i, %bb.gd ], [ %i.tp, %bb.es ], [ %i.aod, %bb.mp ], [ %i.ud, %bb.fb ], [ %i.ud, %bb.fa ]
  %i.uj = getelementptr inbounds nuw i8, ptr %1, i64 1525
  store i8 0, ptr %i.uj, align 1, !noalias !25948
  br label %.body343.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEEB2B_.exit.i.i: ; preds = %bb.ez, %bb.ey
  %i.uk = load i64, ptr %i.tu, align 8, !range !139, !noalias !25948, !noundef !97 ; 3 uses
  %.not91.i.i = icmp eq i64 %i.uk, -9223372036854775781
  br i1 %.not91.i.i, label %bb.fc, label %6

6:                                                ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEEB2B_.exit.i.i
  %7 = icmp ne i64 %i.uk, -9223372036854775788
  call void @llvm.assume(i1 %7)
  %8 = icmp eq i64 %i.uk, -9223372036854775790
  br i1 %8, label %bb.ge, label %bb.ra

bb.fc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEEB2B_.exit.i.i
  %i.ul = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !25948
  %i.um = icmp samesign ult i64 %i.ul, 3
  br i1 %i.um, label %bb.fd, label %bb.fi

bb.fd:                                            ; preds = %bb.fc
  %i.un = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtBb_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future00s2_10___CALLSITE, i64 16) monotonic, align 8, !noalias !25948 ; 2 uses
  %i.uo = icmp ult i8 %i.un, 3
  br i1 %i.uo, label %bb.ff, label %bb.fe, !prof !170

bb.fe:                                            ; preds = %bb.fd
  %i.up = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtBb_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future00s2_10___CALLSITE) #45
          to label %bb.ff unwind label %bb.fm, !noalias !25949

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  %.sroa.0.0.i.i.i = phi i8 [ %i.un, %bb.fd ], [ %i.up, %bb.fe ] ; 2 uses
  %i.uq = icmp eq i8 %.sroa.0.0.i.i.i, 0
  br i1 %i.uq, label %bb.fi, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.ur = load ptr, ptr @_RNvNCNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtBb_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future00s2_10___CALLSITE, align 8, !noalias !25948, !nonnull !97, !align !100, !noundef !97
  %i.us = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ur, i8 noundef %.sroa.0.0.i.i.i)
          to label %bb.fh unwind label %bb.fm, !noalias !25949

bb.fh:                                            ; preds = %bb.fg
  br i1 %i.us, label %bb.fr, label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.ff, %bb.fc
  %i.ut = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !25948
  %.not720.i.i.a = icmp eq i8 %i.ut, 0
  br i1 %.not720.i.i.a, label %bb.fj, label %bb.fu

bb.fj:                                            ; preds = %bb.fi
  %i.uu = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !25948 ; 2 uses
  %i.uv = icmp ult i64 %i.uu, 6
  call void @llvm.assume(i1 %i.uv)
  %i.uw = icmp samesign ugt i64 %i.uu, 2
  br i1 %i.uw, label %bb.fk, label %bb.fu

bb.fk:                                            ; preds = %bb.fj
  %i.ux = load ptr, ptr @_RNvNCNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtBb_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future00s2_10___CALLSITE, align 8, !noalias !25948, !nonnull !97, !align !100, !noundef !97 ; 3 uses
  %i.uy = getelementptr i8, ptr %i.ux, i64 32
  %.val261.i.i = load ptr, ptr %i.uy, align 8, !noalias !25949, !nonnull !97, !noundef !97
  %i.uz = getelementptr i8, ptr %i.ux, i64 40
  %.val262.i.i = load i64, ptr %i.uz, align 8, !noalias !25949, !noundef !97
  store i64 3, ptr %i.bs, align 8, !alias.scope !25950, !noalias !25948
  %.sroa.6631.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %.val261.i.i, ptr %.sroa.6631.0..sroa_idx.i.i, align 8, !alias.scope !25950, !noalias !25948
  %.sroa.8632.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store i64 %.val262.i.i, ptr %.sroa.8632.0..sroa_idx.i.i, align 8, !alias.scope !25950, !noalias !25948
  %i.va = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.fl unwind label %bb.fm, !noalias !25949 ; 2 uses

bb.fl:                                            ; preds = %bb.fk
  %i.vb = extractvalue { ptr, ptr } %i.va, 0      ; 2 uses
  %i.vc = extractvalue { ptr, ptr } %i.va, 1      ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 24
  %i.ve = load ptr, ptr %i.vd, align 8, !invariant.load !97, !noalias !25949, !nonnull !97
  %i.vf = invoke noundef zeroext i1 %i.ve(ptr noundef %i.vb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bs)
          to label %bb.fn unwind label %bb.fm, !noalias !25949

bb.fm:                                            ; preds = %bb.fl, %bb.fk, %bb.fg, %bb.fe
  %i.vg = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

bb.fn:                                            ; preds = %bb.fl
  br i1 %i.vf, label %bb.fo, label %bb.fu

bb.fo:                                            ; preds = %bb.fn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !25948
  %i.vh = load ptr, ptr @_RNvNCNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtBb_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future00s2_10___CALLSITE, align 8, !noalias !25948, !nonnull !97, !align !100, !noundef !97
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !25948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !25948
  store ptr @353, ptr %i.bp, align 8, !noalias !25948
  %i.vj = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr inttoptr (i64 69 to ptr), ptr %i.vj, align 8, !noalias !25948
  %i.vk = getelementptr inbounds nuw i8, ptr %1, i64 1432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !25948
  %i.vl = getelementptr inbounds nuw i8, ptr %1, i64 1368
  %i.vm = load i64, ptr %i.vl, align 8, !noalias !25948, !noundef !97
  %i.vn = add i64 %i.vm, -1
  store i64 %i.vn, ptr %i.bo, align 8, !noalias !25948
  store ptr %i.bp, ptr %i.bq, align 8, !noalias !25948
  %i.vo = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr @196, ptr %i.vo, align 8, !noalias !25948
  %i.vp = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store ptr %i.vk, ptr %i.vp, align 8, !noalias !25948
  %i.vq = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  store ptr @235, ptr %i.vq, align 8, !noalias !25948
  %i.vr = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  store ptr %i.bo, ptr %i.vr, align 8, !noalias !25948
  %i.vs = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  store ptr @309, ptr %i.vs, align 8, !noalias !25948
  store i64 1, ptr %i.br, align 8, !alias.scope !25951, !noalias !25948
  %.sroa.4.0..sroa_idx.i292.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr %i.bq, ptr %.sroa.4.0..sroa_idx.i292.i.i, align 8, !alias.scope !25951, !noalias !25948
  %.sroa.5.0..sroa_idx.i293.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx.i293.i.i, align 8, !alias.scope !25951, !noalias !25948
  %i.vt = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  store ptr %i.vi, ptr %i.vt, align 8, !alias.scope !25951, !noalias !25948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !25948
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 24, i1 false), !noalias !25948
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ux, ptr noundef nonnull %i.vb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.vc, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.br)
          to label %bb.fq unwind label %bb.fp, !noalias !25949

bb.fp:                                            ; preds = %bb.fo
  %i.vu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !25948
  br label %bb.gd

bb.fq:                                            ; preds = %bb.fo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !25948
  br label %bb.fu

bb.fr:                                            ; preds = %bb.fh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !25948
  %i.vv = load ptr, ptr @_RNvNCNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtBb_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future00s2_10___CALLSITE, align 8, !noalias !25948, !nonnull !97, !align !100, !noundef !97
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !25948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !25948
  store ptr @353, ptr %i.bu, align 8, !noalias !25948
  %i.vx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr inttoptr (i64 69 to ptr), ptr %i.vx, align 8, !noalias !25948
  %i.vy = getelementptr inbounds nuw i8, ptr %1, i64 1432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !25948
  %i.vz = getelementptr inbounds nuw i8, ptr %1, i64 1368
  %i.wa = load i64, ptr %i.vz, align 8, !noalias !25948, !noundef !97
  %i.wb = add i64 %i.wa, -1
  store i64 %i.wb, ptr %i.bt, align 8, !noalias !25948
  store ptr %i.bu, ptr %i.bv, align 8, !noalias !25948
  %i.wc = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr @196, ptr %i.wc, align 8, !noalias !25948
  %i.wd = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store ptr %i.vy, ptr %i.wd, align 8, !noalias !25948
  %i.we = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  store ptr @235, ptr %i.we, align 8, !noalias !25948
  %i.wf = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  store ptr %i.bt, ptr %i.wf, align 8, !noalias !25948
  %i.wg = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  store ptr @309, ptr %i.wg, align 8, !noalias !25948
  store i64 1, ptr %i.bw, align 8, !noalias !25948
  %.sroa.7624.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %i.bv, ptr %.sroa.7624.0..sroa_idx.i.i, align 8, !noalias !25948
  %.sroa.8625.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store i64 3, ptr %.sroa.8625.0..sroa_idx.i.i, align 8, !noalias !25948
  %.sroa.9626.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store ptr %i.vw, ptr %.sroa.9626.0..sroa_idx.i.i, align 8, !noalias !25948
  invoke fastcc void @_RNCNCNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtBb_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future00s4_0Bf_(ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.bw)
          to label %bb.ft unwind label %bb.fs, !noalias !25949

bb.fs:                                            ; preds = %bb.fr
  %i.wh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !25948
  br label %bb.gd

bb.ft:                                            ; preds = %bb.fr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !25948
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.fq, %bb.fn, %bb.fj, %bb.fi
  %i.wi = getelementptr inbounds nuw i8, ptr %1, i64 1432
  %i.wj = load i64, ptr %i.wi, align 8, !noalias !25948, !noundef !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !25948
  %i.wk = getelementptr inbounds nuw i8, ptr %1, i64 1524
  store i8 0, ptr %i.wk, align 4, !noalias !25948
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %i.bn, ptr noundef nonnull align 8 dereferenceable(504) %i.sr, i64 504, i1 false), !noalias !25948
  %i.wl = getelementptr inbounds nuw i8, ptr %1, i64 1516
  %i.wm = load i8, ptr %i.wl, align 4, !range !105, !noalias !25948, !noundef !97 ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %1, i64 1517
  %i.wo = load i8, ptr %i.wn, align 1, !noalias !25948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !25948
  %i.wp = getelementptr inbounds nuw i8, ptr %1, i64 1523
  store i8 0, ptr %i.wp, align 1, !noalias !25948
  %i.wq = getelementptr inbounds nuw i8, ptr %1, i64 1312
  %i.wr = load ptr, ptr %i.wq, align 8, !noalias !25948, !nonnull !97, !noundef !97 ; 3 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %1, i64 1320
  %i.wt = load ptr, ptr %i.ws, align 8, !noalias !25948, !nonnull !97, !align !100, !noundef !97 ; 2 uses
  store ptr %i.wr, ptr %i.bm, align 8, !noalias !25948
  %i.wu = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %i.wt, ptr %i.wu, align 8, !noalias !25948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !25948
  %i.wv = getelementptr inbounds nuw i8, ptr %1, i64 1522
  store i8 0, ptr %i.wv, align 2, !noalias !25948
  %i.ww = getelementptr inbounds nuw i8, ptr %1, i64 1280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %i.ww, i64 32, i1 false), !noalias !25948
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !25952
  %i.wx = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 16481) 32, i64 noundef range(i64 8, 17) 8) #40, !noalias !25952 ; 3 uses
  %i.wy = icmp eq ptr %i.wx, null
  br i1 %i.wy, label %bb.fv, label %bb.fz, !prof !101

bb.fv:                                            ; preds = %bb.fu
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #48
          to label %.noexc300.i.i unwind label %bb.fw, !noalias !25949

.noexc300.i.i:                                    ; preds = %bb.fv
  unreachable

bb.fw:                                            ; preds = %bb.fv
  %i.wz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotEBM_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bl) #46
          to label %.body.i.i unwind label %bb.fx, !noalias !25949

bb.fx:                                            ; preds = %bb.fw
  %i.xa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !25949
  unreachable

.body.i.i:                                        ; preds = %bb.fw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !25948
  %i.xb = atomicrmw add ptr %i.wr, i64 -1 release, align 8, !noalias !25953
  %i.xc = icmp eq i64 %i.xb, 1
  br i1 %i.xc, label %bb.fy, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit.i.i

bb.fy:                                            ; preds = %.body.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bm) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit.i.i unwind label %bb.gb, !noalias !25949

bb.fz:                                            ; preds = %bb.fu
  %.not.i296.i.i = icmp eq i8 %i.wm, 2
  %spec.select.i297.i.i = select i1 %.not.i296.i.i, i8 3, i8 %i.wo ; 2 uses
  %.not.i298.i.i = icmp eq i8 %spec.select.i297.i.i, 3
  %spec.select.i299.i.i = select i1 %.not.i298.i.i, i8 2, i8 %spec.select.i297.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.wx, ptr noundef nonnull align 8 dereferenceable(32) %i.bl, i64 32, i1 false), !noalias !25949
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !25948
  %i.xd = getelementptr inbounds nuw i8, ptr %1, i64 1521
  store i8 0, ptr %i.xd, align 1, !noalias !25948
  %i.xe = getelementptr inbounds nuw i8, ptr %1, i64 1336
  %i.xf = getelementptr inbounds nuw i8, ptr %1, i64 1368
  %i.xg = load i64, ptr %i.xf, align 8, !noalias !25948, !noundef !97
  %i.xh = add i64 %i.xg, -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(504) %i.af, ptr noundef nonnull align 8 dereferenceable(504) %i.bn, i64 504, i1 false), !noalias !25948
  %i.xi = and i8 %i.wm, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !25948
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 504
  store ptr %i.wr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !25948
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 512
  store ptr %i.wt, ptr %.sroa.6.0..sroa_idx.i.i, align 16, !noalias !25948
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 520
  store i64 %i.wj, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !25948
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 528
  store ptr %i.wx, ptr %.sroa.8.0..sroa_idx.i.i, align 16, !noalias !25948
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 536
  store ptr @229, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !25948
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 544
  %i.xj = load <2 x ptr>, ptr %i.xe, align 8, !noalias !25948
  store <2 x ptr> %i.xj, ptr %.sroa.10.0..sroa_idx.i.i, align 16, !noalias !25948
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 560
  store i64 %i.xh, ptr %.sroa.12.0..sroa_idx.i.i, align 16, !noalias !25948
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 568
  store i8 %i.xi, ptr %.sroa.13.0..sroa_idx.i.i, align 8, !noalias !25948
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 569
  store i8 %spec.select.i299.i.i, ptr %.sroa.14.0..sroa_idx.i.i, align 1, !noalias !25948
  br label %bb.ga

bb.ga:                                            ; preds = %bb.sk, %bb.fz
  %i.xk = getelementptr inbounds nuw i8, ptr %1, i64 1525
  store i8 0, ptr %i.xk, align 1, !noalias !25948
  br label %bb.qx

bb.gb:                                            ; preds = %bb.tz, %bb.ty, %bb.tw, %bb.tt, %bb.tr, %bb.tp, %bb.tn, %bb.tm, %bb.tl, %bb.tk, %bb.th, %bb.ru, %bb.qr, %bb.qq, %bb.pj, %.body405.i.i, %bb.mg, %bb.lw, %bb.kx, %bb.it, %bb.in, %bb.if, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit.i.i, %bb.hz, %bb.hw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit.i.i, %bb.fy, %bb.es
  %i.xl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !25949
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit.i.i: ; preds = %bb.fy, %.body.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !25948
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction10CommitDataEBM_(ptr noalias noundef align 8 dereferenceable(504) %i.bn) #46
          to label %bb.gc unwind label %bb.gb, !noalias !25949

bb.gc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !25948
  br label %bb.gd

bb.gd:                                            ; preds = %bb.sm, %bb.qz, %bb.gc, %bb.fs, %bb.fp, %bb.fm
  %.pn126.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn126.pn.pn.i.i, %bb.qz ], [ %.pn118.i.i, %bb.sm ], [ %i.wz, %bb.gc ], [ %i.wh, %bb.fs ], [ %i.vg, %bb.fm ], [ %i.vu, %bb.fp ] ; 3 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %1, i64 1440 ; 2 uses
  %i.xn = load i64, ptr %i.xm, align 8, !range !139, !noalias !25948, !noundef !97
  %.not131.i.i = icmp eq i64 %i.xn, -9223372036854775781
  br i1 %.not131.i.i, label %.body288.i.i, label %bb.to

bb.ge:                                            ; preds = %6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !25948
  %i.xo = getelementptr inbounds nuw i8, ptr %1, i64 1448
  %i.xp = load i64, ptr %i.xo, align 8, !noalias !25948, !noundef !97
  store i64 %i.xp, ptr %i.bk, align 8, !noalias !25948
  %i.xq = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !25948
  %i.xr = icmp samesign ult i64 %i.xq, 4
  br i1 %i.xr, label %bb.gf, label %bb.gk

bb.gf:                                            ; preds = %bb.ge
  %i.xs = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtBb_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future00s3_10___CALLSITE, i64 16) monotonic, align 8, !noalias !25948 ; 2 uses
  %i.xt = icmp ult i8 %i.xs, 3
  br i1 %i.xt, label %bb.gh, label %bb.gg, !prof !170

bb.gg:                                            ; preds = %bb.gf
  %i.xu = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtBb_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future00s3_10___CALLSITE) #45
          to label %bb.gh unwind label %bb.go, !noalias !25949

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %.sroa.0.0.i303.i.i = phi i8 [ %i.xs, %bb.gf ], [ %i.xu, %bb.gg ] ; 2 uses
  %i.xv = icmp eq i8 %.sroa.0.0.i303.i.i, 0
  br i1 %i.xv, label %bb.gk, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.xw = load ptr, ptr @_RNvNCNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtBb_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future00s3_10___CALLSITE, align 8, !noalias !25948, !nonnull !97, !align !100, !noundef !97
  %i.xx = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.xw, i8 noundef %.sroa.0.0.i303.i.i)
          to label %bb.gj unwind label %bb.go, !noalias !25949

bb.gj:                                            ; preds = %bb.gi
  br i1 %i.xx, label %bb.gv, label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.gh, %bb.ge
  %i.xy = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !25948
  %.not719.i.i.a = icmp eq i8 %i.xy, 0
  br i1 %.not719.i.i.a, label %bb.gl, label %bb.gt

bb.gl:                                            ; preds = %bb.gk
  %i.xz = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !25948 ; 2 uses
  %i.ya = icmp ult i64 %i.xz, 6
  call void @llvm.assume(i1 %i.ya)
  %i.yb = icmp samesign ugt i64 %i.xz, 1
  br i1 %i.yb, label %bb.gm, label %bb.gt

bb.gm:                                            ; preds = %bb.gl
  %i.yc = load ptr, ptr @_RNvNCNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtBb_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future00s3_10___CALLSITE, align 8, !noalias !25948, !nonnull !97, !align !100, !noundef !97 ; 3 uses
  %i.yd = getelementptr i8, ptr %i.yc, i64 32
  %.val259.i.i = load ptr, ptr %i.yd, align 8, !noalias !25949, !nonnull !97, !noundef !97
  %i.ye = getelementptr i8, ptr %i.yc, i64 40
  %.val260.i.i = load i64, ptr %i.ye, align 8, !noalias !25949, !noundef !97
  store i64 2, ptr %i.bg, align 8, !alias.scope !25954, !noalias !25948
  %.sroa.6643.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %.val259.i.i, ptr %.sroa.6643.0..sroa_idx.i.i, align 8, !alias.scope !25954, !noalias !25948
  %.sroa.8644.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i64 %.val260.i.i, ptr %.sroa.8644.0..sroa_idx.i.i, align 8, !alias.scope !25954, !noalias !25948
  %i.yf = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.gn unwind label %bb.go, !noalias !25949 ; 2 uses

bb.gn:                                            ; preds = %bb.gm
  %i.yg = extractvalue { ptr, ptr } %i.yf, 0      ; 2 uses
  %i.yh = extractvalue { ptr, ptr } %i.yf, 1      ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 24
  %i.yj = load ptr, ptr %i.yi, align 8, !invariant.load !97, !noalias !25949, !nonnull !97
  %i.yk = invoke noundef zeroext i1 %i.yj(ptr noundef %i.yg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bg)
          to label %bb.gp unwind label %bb.go, !noalias !25949

bb.go:                                            ; preds = %bb.gn, %bb.gm, %bb.gi, %bb.gg
  %i.yl = landingpad { ptr, i32 }
          cleanup
  br label %bb.qz

bb.gp:                                            ; preds = %bb.gn
  br i1 %i.yk, label %bb.gq, label %bb.gt

bb.gq:                                            ; preds = %bb.gp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !25948
  %i.ym = load ptr, ptr @_RNvNCNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtBb_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future00s3_10___CALLSITE, align 8, !noalias !25948, !nonnull !97, !align !100, !noundef !97
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !25948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !25948
  store ptr @354, ptr %i.bd, align 8, !noalias !25948
  %i.yo = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr inttoptr (i64 69 to ptr), ptr %i.yo, align 8, !noalias !25948
  %i.yp = getelementptr inbounds nuw i8, ptr %1, i64 1368
  store ptr %i.bd, ptr %i.be, align 8, !noalias !25948
  %i.yq = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr @196, ptr %i.yq, align 8, !noalias !25948
  %i.yr = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store ptr %i.bk, ptr %i.yr, align 8, !noalias !25948
  %i.ys = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr @235, ptr %i.ys, align 8, !noalias !25948
  %i.yt = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  store ptr %i.yp, ptr %i.yt, align 8, !noalias !25948
  %i.yu = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  store ptr @206, ptr %i.yu, align 8, !noalias !25948
  store i64 1, ptr %i.bf, align 8, !alias.scope !25955, !noalias !25948
  %.sroa.4.0..sroa_idx.i310.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.be, ptr %.sroa.4.0..sroa_idx.i310.i.i, align 8, !alias.scope !25955, !noalias !25948
  %.sroa.5.0..sroa_idx.i311.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx.i311.i.i, align 8, !alias.scope !25955, !noalias !25948
  %i.yv = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store ptr %i.yn, ptr %i.yv, align 8, !alias.scope !25955, !noalias !25948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !25948
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 24, i1 false), !noalias !25948
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.yc, ptr noundef nonnull %i.yg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.yh, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bf)
          to label %bb.gs unwind label %bb.gr, !noalias !25949

bb.gr:                                            ; preds = %bb.gq
  %i.yw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !25948
  br label %bb.qz

bb.gs:                                            ; preds = %bb.gq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !25948
  br label %bb.gt

bb.gt:                                            ; preds = %bb.ha, %bb.gs, %bb.gp, %bb.gl, %bb.gk
  %i.yx = getelementptr inbounds nuw i8, ptr %1, i64 1368 ; 2 uses
  %i.yy = load i64, ptr %i.yx, align 8, !noalias !25948, !noundef !97
  %i.yz = add i64 %i.yy, 1
  store i64 %i.yz, ptr %i.yx, align 8, !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !25948
  %i.za = load i64, ptr %i.tu, align 8, !range !139, !alias.scope !25956, !noalias !25948, !noundef !97
  %i.zb = icmp eq i64 %i.za, -9223372036854775781
  br i1 %i.zb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorEEB19_.exit.i.i, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorEBM_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.tu)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorEEB19_.exit.i.i unwind label %bb.mp, !noalias !25949

bb.gv:                                            ; preds = %bb.gj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !25948
  %i.zc = load ptr, ptr @_RNvNCNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtBb_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future00s3_10___CALLSITE, align 8, !noalias !25948, !nonnull !97, !align !100, !noundef !97 ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !25948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !25948
  store ptr @354, ptr %i.bh, align 8, !noalias !25948
  %i.ze = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr inttoptr (i64 69 to ptr), ptr %i.ze, align 8, !noalias !25948
  %i.zf = getelementptr inbounds nuw i8, ptr %1, i64 1368
  store ptr %i.bh, ptr %i.bi, align 8, !noalias !25948
  %i.zg = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr @196, ptr %i.zg, align 8, !noalias !25948
  %i.zh = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store ptr %i.bk, ptr %i.zh, align 8, !noalias !25948
  %i.zi = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store ptr @235, ptr %i.zi, align 8, !noalias !25948
  %i.zj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  store ptr %i.zf, ptr %i.zj, align 8, !noalias !25948
  %i.zk = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  store ptr @206, ptr %i.zk, align 8, !noalias !25948
  store i64 1, ptr %i.bj, align 8, !noalias !25948
  %.sroa.7636.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.bi, ptr %.sroa.7636.0..sroa_idx.i.i, align 8, !noalias !25948
  %.sroa.8637.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store i64 3, ptr %.sroa.8637.0..sroa_idx.i.i, align 8, !noalias !25948
  %.sroa.9638.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  store ptr %i.zd, ptr %.sroa.9638.0..sroa_idx.i.i, align 8, !noalias !25948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !25948
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.zc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bj)
          to label %.noexc316.i.i unwind label %bb.gz, !noalias !25949

.noexc316.i.i:                                    ; preds = %bb.gv
  %i.zl = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !25957
  %i.zm = icmp eq i8 %i.zl, 0
  br i1 %i.zm, label %bb.gw, label %bb.ha

bb.gw:                                            ; preds = %.noexc316.i.i
  %i.zn = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !25957 ; 2 uses
  %i.zo = icmp ult i64 %i.zn, 6
  call void @llvm.assume(i1 %i.zo)
  %i.zp = icmp samesign ugt i64 %i.zn, 1
  br i1 %i.zp, label %bb.gx, label %bb.ha

bb.gx:                                            ; preds = %bb.gw
  %i.zq = load ptr, ptr @_RNvNCNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtBb_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future00s3_10___CALLSITE, align 8, !noalias !25957, !nonnull !97, !align !100, !noundef !97 ; 3 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 32
  %i.zs = load ptr, ptr %i.zr, align 8, !noalias !25949, !nonnull !97, !noundef !97
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zq, i64 40
  %i.zu = load i64, ptr %i.zt, align 8, !noalias !25949, !noundef !97
  store i64 2, ptr %i.w, align 8, !noalias !25957
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.zs, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !25957
  %.sroa.5.0..sroa_idx.i315.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %i.zu, ptr %.sroa.5.0..sroa_idx.i315.i.i, align 8, !noalias !25957
  %i.zv = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc317.i.i unwind label %bb.gz, !noalias !25949 ; 2 uses

.noexc317.i.i:                                    ; preds = %bb.gx
  %i.zw = extractvalue { ptr, ptr } %i.zv, 0      ; 2 uses
  %i.zx = extractvalue { ptr, ptr } %i.zv, 1      ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zx, i64 24
  %i.zz = load ptr, ptr %i.zy, align 8, !invariant.load !97, !noalias !25949, !nonnull !97
  %i.aaa = invoke noundef zeroext i1 %i.zz(ptr noundef %i.zw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w) #49
          to label %.noexc318.i.i unwind label %bb.gz, !noalias !25949, !inline_history !25765

end_hunk_1
begin_hunk_2_@_RNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtB7_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future0Bb_:bb.a
  store ptr @364, ptr %i.avj, align 8, !noalias !25948
  store i64 1, ptr %i.cp, align 8, !alias.scope !26020, !noalias !25948
  %.sroa.4.0..sroa_idx.i421.i.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %i.co, ptr %.sroa.4.0..sroa_idx.i421.i.i, align 8, !alias.scope !26020, !noalias !25948
  %.sroa.5.0..sroa_idx.i422.i.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx.i422.i.i, align 8, !alias.scope !26020, !noalias !25948
  %i.avk = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  store ptr %i.avc, ptr %i.avk, align 8, !alias.scope !26020, !noalias !25948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !25948
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.cq, i64 24, i1 false), !noalias !25948
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aur, ptr noundef nonnull %i.auv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.auw, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cp)
          to label %bb.qi unwind label %bb.qh, !noalias !25949

bb.qh:                                            ; preds = %bb.qg
  %i.avl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !25948
  br label %bb.qq

bb.qi:                                            ; preds = %bb.qg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !25948
  br label %bb.qj

bb.qj:                                            ; preds = %bb.qm, %bb.qi, %bb.qf, %bb.qb, %bb.qa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !noalias !25948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !noalias !25948
  %i.avm = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.avm, ptr noundef nonnull align 8 dereferenceable(24) %i.cv, i64 24, i1 false), !noalias !25948
  store i64 -9223372036854775787, ptr %i.ck, align 8, !noalias !25948
  invoke void @_RNvXNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtB2_16TransactionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.cl, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.ck)
          to label %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorINtB5_4IntoNtNtBE_6errors15DeltaTableErrorE4intoBE_.exit424.i.i unwind label %bb.qo, !noalias !25949

bb.qk:                                            ; preds = %bb.pz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu), !noalias !25948
  %i.avn = load ptr, ptr @_RNvNCNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtBb_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future00s0_10___CALLSITE, align 8, !noalias !25948, !nonnull !97, !align !100, !noundef !97
  %i.avo = getelementptr inbounds nuw i8, ptr %i.avn, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct), !noalias !25948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !noalias !25948
  store ptr @363, ptr %i.cs, align 8, !noalias !25948
  %i.avp = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr inttoptr (i64 79 to ptr), ptr %i.avp, align 8, !noalias !25948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !noalias !25948
  %i.avq = getelementptr inbounds nuw i8, ptr %1, i64 1512
  store ptr %i.cv, ptr %i.cr, align 8, !noalias !25948
  store ptr %i.cs, ptr %i.ct, align 8, !noalias !25948
  %i.avr = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store ptr @196, ptr %i.avr, align 8, !noalias !25948
  %i.avs = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store ptr %i.avq, ptr %i.avs, align 8, !noalias !25948
  %i.avt = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  store ptr @361, ptr %i.avt, align 8, !noalias !25948
  %i.avu = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  store ptr %i.cr, ptr %i.avu, align 8, !noalias !25948
  %i.avv = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  store ptr @364, ptr %i.avv, align 8, !noalias !25948
  store i64 1, ptr %i.cu, align 8, !noalias !25948
  %.sroa.7576.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr %i.ct, ptr %.sroa.7576.0..sroa_idx.i.i, align 8, !noalias !25948
  %.sroa.8577.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store i64 3, ptr %.sroa.8577.0..sroa_idx.i.i, align 8, !noalias !25948
  %.sroa.9578.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  store ptr %i.avo, ptr %.sroa.9578.0..sroa_idx.i.i, align 8, !noalias !25948
  invoke fastcc void @_RNCNCNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtBb_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future00s2_0Bf_(ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.cu)
          to label %bb.qm unwind label %bb.ql, !noalias !25949

bb.ql:                                            ; preds = %bb.qk
  %i.avw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !noalias !25948
  br label %bb.qq

bb.qm:                                            ; preds = %bb.qk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !noalias !25948
  br label %bb.qj

_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorINtB5_4IntoNtNtBE_6errors15DeltaTableErrorE4intoBE_.exit424.i.i: ; preds = %bb.qj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !25948
  %i.avx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.avx, ptr noundef nonnull align 16 dereferenceable(96) %i.cl, i64 96, i1 false), !noalias !25948
  store i64 20, ptr %i.af, align 16, !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !25948
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker15ConflictCheckerEBO_(ptr noalias noundef align 16 dereferenceable(528) %i.cy)
          to label %bb.qn unwind label %bb.ps, !noalias !25949

bb.qn:                                            ; preds = %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorINtB5_4IntoNtNtBE_6errors15DeltaTableErrorE4intoBE_.exit424.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !25948
  br label %bb.qt

bb.qo:                                            ; preds = %bb.qj
  %i.avy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !25948
  br label %bb.qp

bb.qp:                                            ; preds = %bb.qq, %bb.qo
  %.pn62705.i.i = phi { ptr, i32 } [ %.pn62.ph.i.i, %bb.qq ], [ %i.avy, %bb.qo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !25948
  br label %bb.qr

bb.qq:                                            ; preds = %bb.ql, %bb.qh, %bb.qe
  %.pn62.ph.i.i = phi { ptr, i32 } [ %i.avl, %bb.qh ], [ %i.avw, %bb.ql ], [ %i.ava, %bb.qe ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker19CommitConflictErrorEBO_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cv) #46
          to label %bb.qp unwind label %bb.gb, !noalias !25949

bb.qr:                                            ; preds = %bb.qp, %bb.pp
  %.pn62.pn.i.i = phi { ptr, i32 } [ %.pn62705.i.i, %bb.qp ], [ %i.aua, %bb.pp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !25948
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker15ConflictCheckerEBO_(ptr noalias noundef align 16 dereferenceable(528) %i.cy) #46
          to label %bb.qs unwind label %bb.gb, !noalias !25949

bb.qs:                                            ; preds = %bb.qr, %bb.ps, %bb.pn
  %.pn65.i.i = phi { ptr, i32 } [ %i.auf, %bb.ps ], [ %.pn62.pn.i.i, %bb.qr ], [ %i.atz, %bb.pn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !25948
  br label %.body410.i.i

bb.qt:                                            ; preds = %bb.qw, %bb.qu, %bb.qn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd), !noalias !25948
  br label %bb.qx

bb.qu:                                            ; preds = %bb.pl
  %i.avz = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %.sroa.8568.16..sroa_idx570.i.i = getelementptr inbounds nuw i8, ptr %.sroa.8568.i.i, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.8568.16..sroa_idx570.i.i, ptr noundef nonnull align 16 dereferenceable(96) %i.avz, i64 96, i1 false), !alias.scope !26017, !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !noalias !25948
  %i.awa = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.awa, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.8568.16..sroa_idx570.i.i, i64 96, i1 false), !noalias !25948
  store i64 20, ptr %i.af, align 16, !alias.scope !26021, !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8568.i.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker20WinningCommitSummaryEBO_(ptr noalias noundef align 8 dereferenceable(280) %i.dd)
          to label %bb.qt unwind label %bb.qv, !noalias !25949

.body410.i.i:                                     ; preds = %bb.qv, %bb.qs, %bb.pj, %.body405.i.i
  %.pn70.pn.i.i = phi { ptr, i32 } [ %.pn65.i.i, %bb.qs ], [ %i.awb, %bb.qv ], [ %i.atr, %bb.pj ], [ %eh.lpad-body406.i.i, %.body405.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd), !noalias !25948
  br label %.body343.i.i

bb.qv:                                            ; preds = %bb.qu
  %i.awb = landingpad { ptr, i32 }
          cleanup
  br label %.body410.i.i

bb.qw:                                            ; preds = %bb.ph
  %.sroa.7547.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.7547.0..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.11531.i.i, i64 24, i1 false), !noalias !25948
  %.sroa.8548.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8548.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12532.i.i, i64 24, i1 false), !noalias !25948
  call void @llvm.experimental.noalias.scope.decl(metadata !26022)
  %i.awc = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 %.sroa.679.0.i.i.i, ptr %i.awc, align 16, !alias.scope !26023, !noalias !25948
  %.sroa.2542.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i64 %.sroa.1080.0.i.i.i, ptr %.sroa.2542.0..sroa_idx.i.i, align 8, !alias.scope !26023, !noalias !25948
  %.sroa.3543.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store i64 %.sroa.1481.0.i.i.i, ptr %.sroa.3543.0..sroa_idx.i.i, align 16, !alias.scope !26023, !noalias !25948
  %.sroa.4544.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store i64 %.sroa.1682.sroa.0.0.i.i.i, ptr %.sroa.4544.0..sroa_idx.i.i, align 8, !alias.scope !26023, !noalias !25948
  %.sroa.5545.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  store i64 %.sroa.1682.sroa.4.sroa.0.0.i.i.i, ptr %.sroa.5545.0..sroa_idx.i.i, align 16, !alias.scope !26023, !noalias !25948
  %.sroa.6546.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  store i64 %.sroa.1682.sroa.4.sroa.4.sroa.0.0.i.i.i, ptr %.sroa.6546.0..sroa_idx.i.i, align 8, !alias.scope !26023, !noalias !25948
  store i64 20, ptr %i.af, align 16, !alias.scope !26024, !noalias !25948
  br label %bb.qt

bb.qx:                                            ; preds = %bb.qy, %bb.qt, %bb.ms, %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorINtB5_4IntoNtNtBE_6errors15DeltaTableErrorE4intoBE_.exit357.i.i, %bb.ga
  %i.awd = getelementptr inbounds nuw i8, ptr %1, i64 1523
  %i.awe = load i8, ptr %i.awd, align 1, !range !107, !noalias !25948, !noundef !97
  %i.awf = trunc nuw i8 %i.awe to i1
  br i1 %i.awf, label %bb.so, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit449.i.i

bb.qy:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultxNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit.i.i
  %.sroa.3474.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.3474.0..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(80) %.sroa.5.i.i, i64 80, i1 false), !noalias !25948
  call void @llvm.experimental.noalias.scope.decl(metadata !26025)
  %i.awg = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 %i.aec, ptr %i.awg, align 16, !alias.scope !26026, !noalias !25948
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i64 %.sroa.3.0.copyload.i.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !26026, !noalias !25948
  store i64 20, ptr %i.af, align 16, !alias.scope !26027, !noalias !25948
  br label %bb.qx

bb.qz:                                            ; preds = %bb.gz, %bb.gr, %bb.go
  %.pn126.pn.pn.i.i = phi { ptr, i32 } [ %i.aab, %bb.gz ], [ %i.yl, %bb.go ], [ %i.yw, %bb.gr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !25948
  br label %bb.gd

bb.ra:                                            ; preds = %6
  store i8 0, ptr %i.tv, align 1, !noalias !25948
  %i.awh = getelementptr inbounds nuw i8, ptr %1, i64 1519
  store i8 1, ptr %i.awh, align 1, !noalias !25948
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.tr, ptr noundef nonnull align 8 dereferenceable(72) %i.tu, i64 72, i1 false), !noalias !25948
  %i.awi = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !25948
  %i.awj = icmp samesign ult i64 %i.awi, 5
  br i1 %i.awj, label %bb.rb, label %bb.rg

bb.rb:                                            ; preds = %bb.ra
  %i.awk = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtBb_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future00s4_10___CALLSITE, i64 16) monotonic, align 8, !noalias !25948 ; 2 uses
  %i.awl = icmp ult i8 %i.awk, 3
  br i1 %i.awl, label %bb.rd, label %bb.rc, !prof !170

bb.rc:                                            ; preds = %bb.rb
  %i.awm = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtBb_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future00s4_10___CALLSITE) #45
          to label %bb.rd unwind label %bb.se, !noalias !25949

bb.rd:                                            ; preds = %bb.rc, %bb.rb
  %.sroa.0.0.i428.i.i = phi i8 [ %i.awk, %bb.rb ], [ %i.awm, %bb.rc ] ; 2 uses
  %i.awn = icmp eq i8 %.sroa.0.0.i428.i.i, 0
  br i1 %i.awn, label %bb.rg, label %bb.re

bb.re:                                            ; preds = %bb.rd
  %i.awo = load ptr, ptr @_RNvNCNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtBb_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future00s4_10___CALLSITE, align 8, !noalias !25948, !nonnull !97, !align !100, !noundef !97
  %i.awp = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.awo, i8 noundef %.sroa.0.0.i428.i.i)
          to label %bb.rf unwind label %bb.se, !noalias !25949

bb.rf:                                            ; preds = %bb.re
  br i1 %i.awp, label %bb.ro, label %bb.rg

bb.rg:                                            ; preds = %bb.rf, %bb.rd, %bb.ra
  %i.awq = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !25948
  %.not717.i.i = icmp eq i8 %i.awq, 0
  br i1 %.not717.i.i, label %bb.rh, label %bb.rr

bb.rh:                                            ; preds = %bb.rg
  %i.awr = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !25948 ; 2 uses
  %i.aws = icmp ult i64 %i.awr, 6
  call void @llvm.assume(i1 %i.aws)
  %.not718.i.i = icmp eq i64 %i.awr, 0
  br i1 %.not718.i.i, label %bb.rr, label %bb.ri

bb.ri:                                            ; preds = %bb.rh
  %i.awt = load ptr, ptr @_RNvNCNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtBb_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future00s4_10___CALLSITE, align 8, !noalias !25948, !nonnull !97, !align !100, !noundef !97 ; 3 uses
  %i.awu = getelementptr i8, ptr %i.awt, i64 32
  %.val247.i.i = load ptr, ptr %i.awu, align 8, !noalias !25949, !nonnull !97, !noundef !97
  %i.awv = getelementptr i8, ptr %i.awt, i64 40
  %.val248.i.i = load i64, ptr %i.awv, align 8, !noalias !25949, !noundef !97
  store i64 1, ptr %i.ay, align 8, !alias.scope !26028, !noalias !25948
  %.sroa.6655.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %.val247.i.i, ptr %.sroa.6655.0..sroa_idx.i.i, align 8, !alias.scope !26028, !noalias !25948
  %.sroa.8656.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i64 %.val248.i.i, ptr %.sroa.8656.0..sroa_idx.i.i, align 8, !alias.scope !26028, !noalias !25948
  %i.aww = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.rj unwind label %bb.se, !noalias !25949 ; 2 uses

bb.rj:                                            ; preds = %bb.ri
  %i.awx = extractvalue { ptr, ptr } %i.aww, 0    ; 2 uses
  %i.awy = extractvalue { ptr, ptr } %i.aww, 1    ; 2 uses
  %i.awz = getelementptr inbounds nuw i8, ptr %i.awy, i64 24
  %i.axa = load ptr, ptr %i.awz, align 8, !invariant.load !97, !noalias !25949, !nonnull !97
  %i.axb = invoke noundef zeroext i1 %i.axa(ptr noundef %i.awx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ay)
          to label %bb.rk unwind label %bb.se, !noalias !25949

bb.rk:                                            ; preds = %bb.rj
  br i1 %i.axb, label %bb.rl, label %bb.rr

bb.rl:                                            ; preds = %bb.rk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !25948
  %i.axc = load ptr, ptr @_RNvNCNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtBb_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future00s4_10___CALLSITE, align 8, !noalias !25948, !nonnull !97, !align !100, !noundef !97
  %i.axd = getelementptr inbounds nuw i8, ptr %i.axc, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !25948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !25948
  store ptr @365, ptr %i.av, align 8, !noalias !25948
  %i.axe = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr inttoptr (i64 47 to ptr), ptr %i.axe, align 8, !noalias !25948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !25948
  %i.axf = getelementptr inbounds nuw i8, ptr %1, i64 1432
  store ptr %i.tr, ptr %i.au, align 8, !noalias !25948
  store ptr %i.av, ptr %i.aw, align 8, !noalias !25948
  %i.axg = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr @196, ptr %i.axg, align 8, !noalias !25948
  %i.axh = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store ptr %i.axf, ptr %i.axh, align 8, !noalias !25948
  %i.axi = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store ptr @235, ptr %i.axi, align 8, !noalias !25948
  %i.axj = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  store ptr %i.au, ptr %i.axj, align 8, !noalias !25948
  %i.axk = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  store ptr @366, ptr %i.axk, align 8, !noalias !25948
  store i64 1, ptr %i.ax, align 8, !alias.scope !26029, !noalias !25948
  %.sroa.4.0..sroa_idx.i435.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.aw, ptr %.sroa.4.0..sroa_idx.i435.i.i, align 8, !alias.scope !26029, !noalias !25948
  %.sroa.5.0..sroa_idx.i436.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx.i436.i.i, align 8, !alias.scope !26029, !noalias !25948
  %i.axl = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store ptr %i.axd, ptr %i.axl, align 8, !alias.scope !26029, !noalias !25948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !25948
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i64 24, i1 false), !noalias !25948
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.awt, ptr noundef nonnull %i.awx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.awy, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ax)
          to label %bb.rn unwind label %bb.rm, !noalias !25949

bb.rm:                                            ; preds = %bb.rl
  %i.axm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !25948
  br label %.body441.i.i

bb.rn:                                            ; preds = %bb.rl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !25948
  br label %bb.rr

bb.ro:                                            ; preds = %bb.rf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !25948
  %i.axn = load ptr, ptr @_RNvNCNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtBb_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future00s4_10___CALLSITE, align 8, !noalias !25948, !nonnull !97, !align !100, !noundef !97
  %i.axo = getelementptr inbounds nuw i8, ptr %i.axn, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !25948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !25948
  store ptr @365, ptr %i.ba, align 8, !noalias !25948
  %i.axp = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr inttoptr (i64 47 to ptr), ptr %i.axp, align 8, !noalias !25948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !25948
  %i.axq = getelementptr inbounds nuw i8, ptr %1, i64 1432
  store ptr %i.tr, ptr %i.az, align 8, !noalias !25948
  store ptr %i.ba, ptr %i.bb, align 8, !noalias !25948
  %i.axr = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr @196, ptr %i.axr, align 8, !noalias !25948
  %i.axs = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store ptr %i.axq, ptr %i.axs, align 8, !noalias !25948
  %i.axt = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store ptr @235, ptr %i.axt, align 8, !noalias !25948
  %i.axu = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store ptr %i.az, ptr %i.axu, align 8, !noalias !25948
  %i.axv = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  store ptr @366, ptr %i.axv, align 8, !noalias !25948
  store i64 1, ptr %i.bc, align 8, !noalias !25948
  %.sroa.7648.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.bb, ptr %.sroa.7648.0..sroa_idx.i.i, align 8, !noalias !25948
  %.sroa.8649.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store i64 3, ptr %.sroa.8649.0..sroa_idx.i.i, align 8, !noalias !25948
  %.sroa.9650.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store ptr %i.axo, ptr %.sroa.9650.0..sroa_idx.i.i, align 8, !noalias !25948
  invoke fastcc void @_RNCNCNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtBb_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future00s6_0Bf_(ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.bc)
          to label %bb.rq unwind label %bb.rp, !noalias !25949

bb.rp:                                            ; preds = %bb.ro
  %i.axw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !25948
  br label %.body441.i.i

bb.rq:                                            ; preds = %bb.ro
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !25948
  br label %bb.rr

bb.rr:                                            ; preds = %bb.rq, %bb.rn, %bb.rk, %bb.rh, %bb.rg
  %i.axx = getelementptr inbounds nuw i8, ptr %1, i64 1312
  %.val201.i.i = load ptr, ptr %i.axx, align 8, !noalias !25948, !nonnull !97, !noundef !97
  %i.axy = getelementptr i8, ptr %1, i64 1320
  %.val202.i.i = load ptr, ptr %i.axy, align 8, !noalias !25948, !nonnull !97, !align !100, !noundef !97 ; 2 uses
  %i.axz = getelementptr inbounds nuw i8, ptr %.val202.i.i, i64 16
  %i.aya = load i64, ptr %i.axz, align 8, !range !96, !invariant.load !97, !noalias !25949
  %i.ayb = add nsw i64 %i.aya, -1
  %i.ayc = and i64 %i.ayb, -16
  %i.ayd = getelementptr inbounds nuw i8, ptr %.val201.i.i, i64 %i.ayc
  %i.aye = getelementptr inbounds nuw i8, ptr %i.ayd, i64 16
  %i.ayf = getelementptr inbounds nuw i8, ptr %1, i64 1432
  %i.ayg = load i64, ptr %i.ayf, align 8, !noalias !25948, !noundef !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !25948
  %i.ayh = getelementptr inbounds nuw i8, ptr %1, i64 1520
  store i8 0, ptr %i.ayh, align 8, !noalias !25948
  %i.ayi = getelementptr inbounds nuw i8, ptr %1, i64 1376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %i.ayi, i64 32, i1 false), !noalias !25948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !25948
  %i.ayj = getelementptr inbounds nuw i8, ptr %1, i64 1352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.ayj, i64 16, i1 false), !noalias !25948
  %i.ayk = getelementptr inbounds nuw i8, ptr %.val202.i.i, i64 96
  %i.ayl = load ptr, ptr %i.ayk, align 8, !invariant.load !97, !noalias !25949, !nonnull !97
  %i.aym = invoke { ptr, ptr } %i.ayl(ptr noundef nonnull %i.aye, i64 noundef %i.ayg, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.at, ptr noalias noundef nonnull align 1 captures(address) dereferenceable(16) %i.as)
          to label %bb.rt unwind label %bb.rs, !noalias !25949 ; 2 uses

bb.rs:                                            ; preds = %bb.rr
  %i.ayn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !25948
  br label %.body441.i.i
end_hunk_2
begin_hunk_3_@_RNvXs0_NtCscTw95cGIolY_7tracing10instrumentINtB5_12InstrumentedNCNCNvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_ENtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries00ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollB2y_:bb.a
  %i.z = alloca [32 x i8], align 8                ; 9 uses
  %i.aa = alloca [16 x i8], align 16              ; 9 uses
  %i.ab = alloca [16 x i8], align 8               ; 7 uses
  %i.ac = alloca [8 x i8], align 8                ; 5 uses
  %i.ad = alloca [16 x i8], align 8               ; 6 uses
  %i.ae = alloca [48 x i8], align 8               ; 10 uses
  %i.af = alloca [32 x i8], align 8               ; 8 uses
  %i.ag = alloca [24 x i8], align 8               ; 7 uses
  %i.ah = alloca [8 x i8], align 8                ; 5 uses
  %i.ai = alloca [16 x i8], align 8               ; 6 uses
  %i.aj = alloca [48 x i8], align 8               ; 10 uses
  %i.ak = alloca [32 x i8], align 8               ; 9 uses
  %i.al = alloca [72 x i8], align 8               ; 10 uses
  %i.am = alloca [16 x i8], align 8               ; 6 uses
  %i.an = alloca [32 x i8], align 8               ; 8 uses
  %i.ao = alloca [32 x i8], align 8               ; 8 uses
  %i.ap = alloca [24 x i8], align 8               ; 7 uses
  %i.aq = alloca [16 x i8], align 8               ; 6 uses
  %i.ar = alloca [32 x i8], align 8               ; 8 uses
  %i.as = alloca [32 x i8], align 8               ; 9 uses
  %i.at = alloca [48 x i8], align 8               ; 6 uses
  %i.au = alloca [72 x i8], align 8               ; 7 uses
  %i.av = alloca [72 x i8], align 8               ; 18 uses
  %i.aw = alloca [16 x i8], align 8               ; 5 uses
  %i.ax = alloca [16 x i8], align 8               ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30850)
  %i.az = load i64, ptr %1, align 8, !range !114, !alias.scope !30850, !noundef !97
  %.not.i = icmp eq i64 %i.az, 2
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ba)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.bb = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.bc = icmp eq i8 %i.bb, 0
  br i1 %i.bc, label %bb.d, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit

bb.d:                                             ; preds = %bb.c
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !30850, !align !100, !noundef !97 ; 3 uses
  %.not4.i = icmp eq ptr %i.be, null
  br i1 %.not4.i, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !30850
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !97, !noundef !97
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !97
  store ptr %i.bg, ptr %i.ax, align 8, !noalias !30850
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 %i.bi, ptr %i.bj, align 8, !noalias !30850
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !30850
  store ptr %i.ax, ptr %i.aw, align 8, !noalias !30850
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !30850
  call fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @645, i64 noundef 21, ptr noundef nonnull @646, ptr noundef nonnull %i.aw) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !30850
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !30850
  br label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit

_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit: ; preds = %bb.c, %bb.d, %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !30851)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.413.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.516.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 137 ; 3 uses
  %i.bl = load i8, ptr %i.bk, align 1, !range !121, !noalias !30852, !noundef !97
  switch i8 %i.bl, label %default.unreachable [
    i8 0, label %bb.f
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 3, label %bb.g
  ]

default.unreachable:                              ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit
  unreachable

bb.f:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !30852, !nonnull !97, !align !100, !noundef !97
  store ptr %i.bp, ptr %i.bn, align 8, !noalias !30852
  store i8 0, ptr %i.bm, align 8, !noalias !30852
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !30852, !nonnull !97, !noundef !97
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !30852, !noundef !97
  store ptr %i.br, ptr %i.ay, align 8, !noalias !30852
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 %i.bt, ptr %i.bu, align 8, !noalias !30852
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bx = load i64, ptr %i.bw, align 8, !noalias !30852, !noundef !97 ; 2 uses
  store i64 %i.bx, ptr %i.bv, align 8, !noalias !30852
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i64 1, ptr %i.by, align 8, !noalias !30852
  br label %bb.h

bb.g:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !30852
  br label %bb.l

bb.h:                                             ; preds = %bb.bz, %bb.f
  %i.bz = phi i64 [ %.pre265.i, %bb.bz ], [ %i.bx, %bb.f ]
  %i.ca = phi i64 [ %.pre.i, %bb.bz ], [ 1, %bb.f ]
  %.not.i2 = icmp ugt i64 %i.ca, %i.bz
  br i1 %.not.i2, label %bb.ce, label %bb.cb

bb.i:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @374) #50
          to label %.noexc unwind label %bb.ep

.noexc:                                           ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @374) #50
          to label %.noexc3 unwind label %bb.ep

.noexc3:                                          ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.l
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !30852
  %.val106.i = load ptr, ptr %i.cd, align 8, !noalias !30852
  %i.cc = getelementptr i8, ptr %1, i64 64
  %.val107.i = load ptr, ptr %i.cc, align 8, !noalias !30852, !nonnull !97, !align !100, !noundef !97
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %.val106.i, ptr nonnull %.val107.i) #46
          to label %.body.i unwind label %bb.au, !noalias !30851

bb.l:                                             ; preds = %bb.ck, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !30852
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB2d_5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.au, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cd, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.m unwind label %bb.k, !noalias !30851

bb.m:                                             ; preds = %bb.l
  %i.ce = load i64, ptr %i.au, align 8, !range !123, !noalias !30852, !noundef !97
  %i.cf = icmp eq i64 %i.ce, -9223372036854775789
  br i1 %i.cf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !30852
  store i64 -9223372036854775789, ptr %0, align 8, !alias.scope !30851
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !30852
  br label %bb.eq

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.av, ptr noundef nonnull align 8 dereferenceable(72) %i.au, i64 72, i1 false), !noalias !30852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !30852
  %.val104.i = load ptr, ptr %i.cd, align 8, !noalias !30852 ; 5 uses
  %i.cg = getelementptr i8, ptr %1, i64 64
  %.val105.i = load ptr, ptr %i.cg, align 8, !noalias !30852, !nonnull !97, !align !100, !noundef !97 ; 5 uses
  %i.ch = load ptr, ptr %.val105.i, align 8, !invariant.load !97, !noalias !30851 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val104.i) ]
  invoke void %i.ch(ptr noundef nonnull %.val104.i)
          to label %bb.q unwind label %bb.s, !noalias !30851

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ci = getelementptr inbounds nuw i8, ptr %.val105.i, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !range !98, !invariant.load !97, !noalias !30851 ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cl = getelementptr inbounds nuw i8, ptr %.val105.i, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !range !96, !invariant.load !97, !noalias !30851
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val104.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val104.i, i64 noundef range(i64 1, 0) %i.cj, i64 noundef range(i64 1, 536870913) %i.cm) #40, !noalias !30851
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.s:                                             ; preds = %bb.p
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.val105.i, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !range !98, !invariant.load !97, !noalias !30851 ; 2 uses
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %.body.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cr = getelementptr inbounds nuw i8, ptr %.val105.i, i64 16
  %i.cs = load i64, ptr %i.cr, align 8, !range !96, !invariant.load !97, !noalias !30851
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val104.i, i64 noundef range(i64 1, 0) %i.cp, i64 noundef range(i64 1, 536870913) %i.cs) #40, !noalias !30851
  br label %.body.i

.body.i:                                          ; preds = %7, %bb.em, %bb.el, %bb.dj, %bb.cj, %bb.aw, %bb.t, %bb.s, %bb.k
  %.pn72.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn72.pn.pn.pn.i, %bb.em ], [ %.pn72.pn.pn.pn.i, %7 ], [ %.pn72.pn.pn.pn.i, %bb.aw ], [ %i.cn, %bb.s ], [ %i.cb, %bb.k ], [ %i.iu, %bb.cj ], [ %i.cn, %bb.t ], [ %.pn43.pn.pn.i, %bb.dj ], [ %.pn72.pn.pn.i, %bb.el ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !30852
  br label %bb.cg

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.r, %bb.q
  %i.ct = load i64, ptr %i.av, align 8, !range !30853, !noalias !30852, !noundef !97 ; 3 uses
  %.not26.i = icmp eq i64 %i.ct, -9223372036854775790
  br i1 %.not26.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 10 uses
  %i.cv = load i64, ptr %i.cu, align 8, !noalias !30852, !noundef !97
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !noalias !30852, !noundef !97
  %i.cy = icmp eq i64 %i.cv, %i.cx
  br i1 %i.cy, label %bb.dk, label %bb.ax

bb.v:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !30852
  %i.cz = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.at, ptr noundef nonnull align 8 dereferenceable(48) %i.cz, i64 48, i1 false), !noalias !30852
  %i.da = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !30852
  %i.db = icmp samesign ult i64 %i.da, 2
  br i1 %i.db, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.dc = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries0010___CALLSITE, i64 16) monotonic, align 8, !noalias !30852 ; 2 uses
  %i.dd = icmp ult i8 %i.dc, 3
  br i1 %i.dd, label %bb.y, label %bb.x, !prof !170

bb.x:                                             ; preds = %bb.w
  %i.de = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries0010___CALLSITE) #45
          to label %bb.y unwind label %bb.af, !noalias !30851

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sroa.0.0.i.i = phi i8 [ %i.dc, %bb.w ], [ %i.de, %bb.x ] ; 2 uses
  %i.df = icmp eq i8 %.sroa.0.0.i.i, 0
  br i1 %i.df, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dg = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries0010___CALLSITE, align 8, !noalias !30852, !nonnull !97, !align !100, !noundef !97
  %i.dh = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.dg, i8 noundef %.sroa.0.0.i.i)
          to label %bb.aa unwind label %bb.af, !noalias !30851

bb.aa:                                            ; preds = %bb.z
  br i1 %i.dh, label %bb.al, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y, %bb.v
  %i.di = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !30852
  %.not262.i = icmp eq i8 %i.di, 0
  br i1 %.not262.i, label %bb.ac, label %bb.ak

bb.ac:                                            ; preds = %bb.ab
  %i.dj = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !30852 ; 2 uses
  %i.dk = icmp ult i64 %i.dj, 6
  call void @llvm.assume(i1 %i.dk)
  %i.dl = icmp samesign ugt i64 %i.dj, 3
  br i1 %i.dl, label %bb.ad, label %bb.ak

bb.ad:                                            ; preds = %bb.ac
  %i.dm = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries0010___CALLSITE, align 8, !noalias !30852, !nonnull !97, !align !100, !noundef !97 ; 3 uses
  %i.dn = getelementptr i8, ptr %i.dm, i64 32
  %.val134.i = load ptr, ptr %i.dn, align 8, !noalias !30851, !nonnull !97, !noundef !97
  %i.do = getelementptr i8, ptr %i.dm, i64 40
  %.val135.i = load i64, ptr %i.do, align 8, !noalias !30851, !noundef !97
  store i64 4, ptr %i.ap, align 8, !alias.scope !30854, !noalias !30852
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %.val134.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !30854, !noalias !30852
  %.sroa.8207.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 %.val135.i, ptr %.sroa.8207.0..sroa_idx.i, align 8, !alias.scope !30854, !noalias !30852
  %i.dp = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.ae unwind label %bb.af, !noalias !30851 ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  %i.dq = extractvalue { ptr, ptr } %i.dp, 0      ; 2 uses
  %i.dr = extractvalue { ptr, ptr } %i.dp, 1      ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8, !invariant.load !97, !noalias !30851, !nonnull !97
  %i.du = invoke noundef zeroext i1 %i.dt(ptr noundef %i.dq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap)
          to label %bb.ag unwind label %bb.af, !noalias !30851

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.z, %bb.x
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ag:                                            ; preds = %bb.ae
  br i1 %i.du, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !30852
  %i.dw = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries0010___CALLSITE, align 8, !noalias !30852, !nonnull !97, !align !100, !noundef !97
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !30852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !30852
  store ptr @375, ptr %i.am, align 8, !noalias !30852
  %i.dy = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr inttoptr (i64 47 to ptr), ptr %i.dy, align 8, !noalias !30852
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr %i.am, ptr %i.an, align 8, !noalias !30852
  %i.ea = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr @196, ptr %i.ea, align 8, !noalias !30852
  %i.eb = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %i.dz, ptr %i.eb, align 8, !noalias !30852
  %i.ec = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store ptr @206, ptr %i.ec, align 8, !noalias !30852
  store i64 1, ptr %i.ao, align 8, !alias.scope !30855, !noalias !30852
  %.sroa.4.0..sroa_idx.i140.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.an, ptr %.sroa.4.0..sroa_idx.i140.i, align 8, !alias.scope !30855, !noalias !30852
  %.sroa.5.0..sroa_idx.i141.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 2, ptr %.sroa.5.0..sroa_idx.i141.i, align 8, !alias.scope !30855, !noalias !30852
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr %i.dx, ptr %i.ed, align 8, !alias.scope !30855, !noalias !30852
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.dm, ptr noundef nonnull %i.dq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dr, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ap, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ao)
          to label %bb.aj unwind label %bb.ai, !noalias !30851

bb.ai:                                            ; preds = %bb.ah
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !30852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !30852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !30852
  br label %bb.at

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !30852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !30852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !30852
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aq, %bb.aj, %bb.ag, %bb.ac, %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.413.i, ptr noundef nonnull align 8 dereferenceable(48) %i.at, i64 48, i1 false), !noalias !30852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !30852
  br label %bb.ar

bb.al:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !30852
  %i.ef = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries0010___CALLSITE, align 8, !noalias !30852, !nonnull !97, !align !100, !noundef !97 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !30852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !30852
  store ptr @375, ptr %i.aq, align 8, !noalias !30852
  %i.eh = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr inttoptr (i64 47 to ptr), ptr %i.eh, align 8, !noalias !30852
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr %i.aq, ptr %i.ar, align 8, !noalias !30852
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr @196, ptr %i.ej, align 8, !noalias !30852
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr %i.ei, ptr %i.ek, align 8, !noalias !30852
  %i.el = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store ptr @206, ptr %i.el, align 8, !noalias !30852
  store i64 1, ptr %i.as, align 8, !noalias !30852
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.ar, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !30852
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i64 2, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !30852
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store ptr %i.eg, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !30852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.as)
          to label %.noexc19 unwind label %bb.ap

.noexc19:                                         ; preds = %bb.al
  %i.em = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !30856
  %i.en = icmp eq i8 %i.em, 0
  br i1 %i.en, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %.noexc19
  %i.eo = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !30856 ; 2 uses
  %i.ep = icmp ult i64 %i.eo, 6
  call void @llvm.assume(i1 %i.ep), !noalias !30851
  %i.eq = icmp samesign ugt i64 %i.eo, 3
  br i1 %i.eq, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.er = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries0010___CALLSITE, align 8, !noalias !30856, !nonnull !97, !align !100, !noundef !97 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 32
  %i.et = load ptr, ptr %i.es, align 8, !noalias !30851, !nonnull !97, !noundef !97
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 40
  %i.ev = load i64, ptr %i.eu, align 8, !noalias !30851, !noundef !97
  store i64 4, ptr %i.a, align 8, !noalias !30856
  %.sroa.3.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.et, ptr %.sroa.3.0..sroa_idx.i17, align 8, !noalias !30856
  %.sroa.5.0..sroa_idx.i18 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.ev, ptr %.sroa.5.0..sroa_idx.i18, align 8, !noalias !30856
  %i.ew = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc20 unwind label %bb.ap  ; 2 uses

.noexc20:                                         ; preds = %bb.an
  %i.ex = extractvalue { ptr, ptr } %i.ew, 0      ; 2 uses
  %i.ey = extractvalue { ptr, ptr } %i.ew, 1      ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !invariant.load !97, !noalias !30851, !nonnull !97
  %i.fb = invoke noundef zeroext i1 %i.fa(ptr noundef %i.ex, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #49
          to label %.noexc21 unwind label %bb.ap, !inline_history !30796

.noexc21:                                         ; preds = %.noexc20
  br i1 %i.fb, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %.noexc21
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.er, ptr noundef nonnull %i.ex, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ey, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.as)
          to label %bb.aq unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.noexc20, %bb.an, %bb.al
  %i.fc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !30852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !30852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !30852
  br label %bb.at

bb.aq:                                            ; preds = %.noexc21, %bb.am, %.noexc19, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !30852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !30852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !30852
  br label %bb.ak

bb.ar:                                            ; preds = %bb.dz, %bb.db, %bb.ak
  %.sroa.010.0.i = phi i64 [ %.sroa.019.0.copyload.i, %bb.dz ], [ %.sroa.022.0.copyload.i, %bb.db ], [ -9223372036854775790, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !30852
  call void @llvm.experimental.noalias.scope.decl(metadata !30857)
  call void @llvm.experimental.noalias.scope.decl(metadata !30858)
  call void @llvm.experimental.noalias.scope.decl(metadata !30859)
  %i.fd = load ptr, ptr %i.ay, align 8, !alias.scope !30860, !noalias !30852, !nonnull !97, !noundef !97
  %i.fe = atomicrmw add ptr %i.fd, i64 -1 release, align 8, !noalias !30861
  %i.ff = icmp eq i64 %i.fe, 1
  br i1 %i.ff, label %bb.as, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs14kWLkQVSKO_14deltalake_core.exit.i

bb.as:                                            ; preds = %bb.ar
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcSNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE9drop_slowCsjyY8HP3IvQ6_12object_store(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ay) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.eg, !noalias !30851

bb.at:                                            ; preds = %bb.ap, %bb.ai, %bb.af
  %.pn32.pn.pn.i = phi { ptr, i32 } [ %i.fc, %bb.ap ], [ %i.dv, %bb.af ], [ %i.ee, %bb.ai ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store9PutResultECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(48) %i.at) #46
          to label %bb.av unwind label %bb.au, !noalias !30851

bb.au:                                            ; preds = %bb.eo, %7, %bb.ek, %bb.di, %bb.cl, %bb.ch, %bb.at, %bb.k
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !30851
  unreachable

bb.av:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !30852
  br label %bb.aw

bb.aw:                                            ; preds = %.body159.i, %bb.av
  %.pn72.pn.pn.pn.i = phi { ptr, i32 } [ %.pn32.pn.pn.i, %bb.av ], [ %.pn62.i, %.body159.i ] ; 3 uses
  %i.fh = load i64, ptr %i.av, align 8, !range !30853, !noalias !30852, !noundef !97 ; 3 uses
  %.not263.i = icmp eq i64 %i.fh, -9223372036854775790
  br i1 %.not263.i, label %.body.i, label %bb.em

bb.ax:                                            ; preds = %bb.u
  %i.fi = icmp ne i64 %i.ct, -9223372036854775800
  call void @llvm.assume(i1 %i.fi)
  %i.fj = icmp eq i64 %i.ct, -9223372036854775802
  br i1 %i.fj, label %bb.ay, label %bb.cm

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !30852
  %i.fk = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !noalias !30852, !nonnull !97, !noundef !97
  %i.fm = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.fn = load i64, ptr %i.fm, align 8, !noalias !30852, !noundef !97
  store ptr %i.fl, ptr %i.ab, align 8, !noalias !30852
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %i.fn, ptr %i.fo, align 8, !noalias !30852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !30852
  %i.fp = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.fq = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.fr = load <2 x ptr>, ptr %i.fp, align 8, !noalias !30852
  store <2 x ptr> %i.fr, ptr %i.aa, align 16, !noalias !30852
  %i.fs = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !30852
  %i.ft = icmp samesign ult i64 %i.fs, 2
  br i1 %i.ft, label %bb.az, label %bb.be

bb.az:                                            ; preds = %bb.ay
  %i.fu = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries00s0_10___CALLSITE, i64 16) monotonic, align 8, !noalias !30852 ; 2 uses
  %i.fv = icmp ult i8 %i.fu, 3
  br i1 %i.fv, label %bb.bb, label %bb.ba, !prof !170

bb.ba:                                            ; preds = %bb.az
  %i.fw = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries00s0_10___CALLSITE) #45
          to label %bb.bb unwind label %bb.bi, !noalias !30851

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.sroa.0.0.i146.i = phi i8 [ %i.fu, %bb.az ], [ %i.fw, %bb.ba ] ; 2 uses
  %i.fx = icmp eq i8 %.sroa.0.0.i146.i, 0
  br i1 %i.fx, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fy = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries00s0_10___CALLSITE, align 8, !noalias !30852, !nonnull !97, !align !100, !noundef !97
  %i.fz = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fy, i8 noundef %.sroa.0.0.i146.i)
          to label %bb.bd unwind label %bb.bi, !noalias !30851

bb.bd:                                            ; preds = %bb.bc
  br i1 %i.fz, label %bb.bt, label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bb, %bb.ay
  %i.ga = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !30852
  %.not260.i = icmp eq i8 %i.ga, 0
  br i1 %.not260.i, label %bb.bf, label %bb.bn

bb.bf:                                            ; preds = %bb.be
  %i.gb = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !30852 ; 2 uses
  %i.gc = icmp ult i64 %i.gb, 6
  call void @llvm.assume(i1 %i.gc)
  %i.gd = icmp samesign ugt i64 %i.gb, 3
  br i1 %i.gd, label %bb.bg, label %bb.bn

bb.bg:                                            ; preds = %bb.bf
  %i.ge = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries00s0_10___CALLSITE, align 8, !noalias !30852, !nonnull !97, !align !100, !noundef !97 ; 3 uses
  %i.gf = getelementptr i8, ptr %i.ge, i64 32
  %.val132.i = load ptr, ptr %i.gf, align 8, !noalias !30851, !nonnull !97, !noundef !97
  %i.gg = getelementptr i8, ptr %i.ge, i64 40
  %.val133.i = load i64, ptr %i.gg, align 8, !noalias !30851, !noundef !97
  store i64 4, ptr %i.v, align 8, !alias.scope !30862, !noalias !30852
  %.sroa.6235.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %.val132.i, ptr %.sroa.6235.0..sroa_idx.i, align 8, !alias.scope !30862, !noalias !30852
  %.sroa.8236.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %.val133.i, ptr %.sroa.8236.0..sroa_idx.i, align 8, !alias.scope !30862, !noalias !30852
  %i.gh = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.bh unwind label %bb.bi, !noalias !30851 ; 2 uses

bb.bh:                                            ; preds = %bb.bg
  %i.gi = extractvalue { ptr, ptr } %i.gh, 0      ; 2 uses
  %i.gj = extractvalue { ptr, ptr } %i.gh, 1      ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 24
  %i.gl = load ptr, ptr %i.gk, align 8, !invariant.load !97, !noalias !30851, !nonnull !97
  %i.gm = invoke noundef zeroext i1 %i.gl(ptr noundef %i.gi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v)
          to label %bb.bj unwind label %bb.bi, !noalias !30851

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %bb.bc, %bb.ba
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.bj:                                            ; preds = %bb.bh
  br i1 %i.gm, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !30852
  %i.go = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries00s0_10___CALLSITE, align 8, !noalias !30852, !nonnull !97, !align !100, !noundef !97
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !30852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !30852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !30852
  store ptr %i.cu, ptr %i.r, align 8, !noalias !30852
  %.sroa.5238.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.5238.0..sroa_idx.i, align 8, !noalias !30852
  %i.gq = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.ab, ptr %i.gq, align 8, !noalias !30852
  %.sroa.5240.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.5240.0..sroa_idx.i, align 8, !noalias !30852
  %i.gr = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %i.aa, ptr %i.gr, align 8, !noalias !30852
  %.sroa.5242.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store ptr @_RNvXsm_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtBM_3fmt7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.5242.0..sroa_idx.i, align 8, !noalias !30852
  store ptr @376, ptr %i.s, align 8, !noalias !30852
  %i.gs = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.r, ptr %i.gs, align 8, !noalias !30852
  store ptr %i.s, ptr %i.t, align 8, !noalias !30852
  %i.gt = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @196, ptr %i.gt, align 8, !noalias !30852
  store i64 1, ptr %i.u, align 8, !alias.scope !30863, !noalias !30852
  %.sroa.4.0..sroa_idx.i156.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.t, ptr %.sroa.4.0..sroa_idx.i156.i, align 8, !alias.scope !30863, !noalias !30852
  %.sroa.5.0..sroa_idx.i157.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i157.i, align 8, !alias.scope !30863, !noalias !30852
  %i.gu = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr %i.gp, ptr %i.gu, align 8, !alias.scope !30863, !noalias !30852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !30852
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !30852
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ge, ptr noundef nonnull %i.gi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.gj, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.u)
          to label %bb.bm unwind label %bb.bl, !noalias !30851

bb.bl:                                            ; preds = %bb.bk
  %i.gv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !30852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !30852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !30852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !30852
  br label %bb.cl

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !30852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !30852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !30852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !30852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !30852
  br label %bb.bn

bb.bn:                                            ; preds = %bb.by, %bb.bm, %bb.bj, %bb.bf, %bb.be
  %i.gw = load i64, ptr %i.cu, align 8, !noalias !30852, !noundef !97
  %i.gx = add i64 %i.gw, 1
  store i64 %i.gx, ptr %i.cu, align 8, !noalias !30852
  %.val102.i = load ptr, ptr %i.aa, align 16, !noalias !30852 ; 5 uses
  %.val103.i = load ptr, ptr %i.fq, align 8, !noalias !30852, !nonnull !97, !align !100, !noundef !97 ; 5 uses
  %i.gy = load ptr, ptr %.val103.i, align 8, !invariant.load !97, !noalias !30851 ; 2 uses
  %.not.i158.i = icmp eq ptr %i.gy, null
  br i1 %.not.i158.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val102.i) ]
  invoke void %i.gy(ptr noundef nonnull %.val102.i)
          to label %bb.bp unwind label %bb.br, !noalias !30851

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.gz = getelementptr inbounds nuw i8, ptr %.val103.i, i64 8
  %i.ha = load i64, ptr %i.gz, align 8, !range !98, !invariant.load !97, !noalias !30851 ; 2 uses
  %i.hb = icmp eq i64 %i.ha, 0
  br i1 %i.hb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hc = getelementptr inbounds nuw i8, ptr %.val103.i, i64 16
  %i.hd = load i64, ptr %i.hc, align 8, !range !96, !invariant.load !97, !noalias !30851
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val102.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val102.i, i64 noundef range(i64 1, 0) %i.ha, i64 noundef range(i64 1, 536870913) %i.hd) #40, !noalias !30851
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit.i

bb.br:                                            ; preds = %bb.bo
  %i.he = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.val103.i, i64 8
  %i.hg = load i64, ptr %i.hf, align 8, !range !98, !invariant.load !97, !noalias !30851 ; 2 uses
  %i.hh = icmp eq i64 %i.hg, 0
  br i1 %i.hh, label %.body159.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hi = getelementptr inbounds nuw i8, ptr %.val103.i, i64 16
  %i.hj = load i64, ptr %i.hi, align 8, !range !96, !invariant.load !97, !noalias !30851
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val102.i, i64 noundef range(i64 1, 0) %i.hg, i64 noundef range(i64 1, 536870913) %i.hj) #40, !noalias !30851
  br label %.body159.i

bb.bt:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !30852
  %i.hk = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries00s0_10___CALLSITE, align 8, !noalias !30852, !nonnull !97, !align !100, !noundef !97 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !30852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !30852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !30852
  store ptr %i.cu, ptr %i.w, align 8, !noalias !30852
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !30852
  %i.hm = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %i.ab, ptr %i.hm, align 8, !noalias !30852
  %.sroa.5228.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.5228.0..sroa_idx.i, align 8, !noalias !30852
  %i.hn = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store ptr %i.aa, ptr %i.hn, align 8, !noalias !30852
  %.sroa.5230.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store ptr @_RNvXsm_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtBM_3fmt7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.5230.0..sroa_idx.i, align 8, !noalias !30852
  store ptr @376, ptr %i.x, align 8, !noalias !30852
  %i.ho = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.w, ptr %i.ho, align 8, !noalias !30852
  store ptr %i.x, ptr %i.y, align 8, !noalias !30852
  %i.hp = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @196, ptr %i.hp, align 8, !noalias !30852
  store i64 1, ptr %i.z, align 8, !noalias !30852
  %.sroa.6223.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.y, ptr %.sroa.6223.0..sroa_idx.i, align 8, !noalias !30852
  %.sroa.7224.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 1, ptr %.sroa.7224.0..sroa_idx.i, align 8, !noalias !30852
  %.sroa.8225.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr %i.hl, ptr %.sroa.8225.0..sroa_idx.i, align 8, !noalias !30852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !30852
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.hk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z)
          to label %.noexc167.i unwind label %bb.bx, !noalias !30851

.noexc167.i:                                      ; preds = %bb.bt
  %i.hq = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !30864
  %i.hr = icmp eq i8 %i.hq, 0
  br i1 %i.hr, label %bb.bu, label %bb.by

bb.bu:                                            ; preds = %.noexc167.i
  %i.hs = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !30864 ; 2 uses
  %i.ht = icmp ult i64 %i.hs, 6
  call void @llvm.assume(i1 %i.ht)
  %i.hu = icmp samesign ugt i64 %i.hs, 3
  br i1 %i.hu, label %bb.bv, label %bb.by

bb.bv:                                            ; preds = %bb.bu
  %i.hv = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries00s0_10___CALLSITE, align 8, !noalias !30864, !nonnull !97, !align !100, !noundef !97 ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 32
  %i.hx = load ptr, ptr %i.hw, align 8, !noalias !30851, !nonnull !97, !noundef !97
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 40
  %i.hz = load i64, ptr %i.hy, align 8, !noalias !30851, !noundef !97
  store i64 4, ptr %i.f, align 8, !noalias !30864
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.hx, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !30864
  %.sroa.5.0..sroa_idx.i166.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.hz, ptr %.sroa.5.0..sroa_idx.i166.i, align 8, !noalias !30864
  %i.ia = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc168.i unwind label %bb.bx, !noalias !30851 ; 2 uses

.noexc168.i:                                      ; preds = %bb.bv
  %i.ib = extractvalue { ptr, ptr } %i.ia, 0      ; 2 uses
  %i.ic = extractvalue { ptr, ptr } %i.ia, 1      ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  %i.ie = load ptr, ptr %i.id, align 8, !invariant.load !97, !noalias !30851, !nonnull !97
  %i.if = invoke noundef zeroext i1 %i.ie(ptr noundef %i.ib, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f) #49
          to label %.noexc169.i unwind label %bb.bx, !noalias !30851, !inline_history !30810

.noexc169.i:                                      ; preds = %.noexc168.i
  br i1 %i.if, label %bb.bw, label %bb.by

bb.bw:                                            ; preds = %.noexc169.i
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.hv, ptr noundef nonnull %i.ib, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ic, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z)
          to label %bb.by unwind label %bb.bx, !noalias !30851

bb.bx:                                            ; preds = %bb.bw, %.noexc168.i, %bb.bv, %bb.bt
  %i.ig = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !30852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !30852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !30852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !30852
  br label %bb.cl

bb.by:                                            ; preds = %bb.bw, %.noexc169.i, %bb.bu, %.noexc167.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !30852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !30852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !30852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !30852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !30852
  br label %bb.bn

.body159.i:                                       ; preds = %bb.cl, %bb.bs, %bb.br
  %.pn62.i = phi { ptr, i32 } [ %.pn59.pn.i, %bb.cl ], [ %i.he, %bb.br ], [ %i.he, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !30852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !30852
  br label %bb.aw

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.bq, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !30852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !30852
  %i.ih = load i64, ptr %i.av, align 8, !range !30853, !noalias !30852, !noundef !97 ; 3 uses
  %.not64.i = icmp eq i64 %i.ih, -9223372036854775790
  br i1 %.not64.i, label %bb.bz, label %3

3:                                                ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit.i
  %4 = icmp ne i64 %i.ih, -9223372036854775800
  call void @llvm.assume(i1 %4)
  %5 = icmp eq i64 %i.ih, -9223372036854775802
  br i1 %5, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.ca, %3, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !30852
  %.pre.i = load i64, ptr %i.cu, align 8, !noalias !30852
  %.pre265.i = load i64, ptr %i.cw, align 8, !noalias !30852
  br label %bb.h

bb.ca:                                            ; preds = %3
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.av)
          to label %bb.bz unwind label %bb.cj, !noalias !30851

bb.cb:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !30852
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ij = load ptr, ptr %i.ii, align 8, !noalias !30852, !nonnull !97, !align !100, !noundef !97
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.il = load ptr, ptr %i.ik, align 8, !noalias !30852, !nonnull !97, !align !100, !noundef !97
  %.val136.i = load ptr, ptr %i.ay, align 8, !noalias !30852, !nonnull !97, !noundef !97 ; 2 uses
  %i.im = getelementptr i8, ptr %1, i64 48
  %.val137.i = load i64, ptr %i.im, align 8, !noalias !30852
  %i.in = atomicrmw add ptr %.val136.i, i64 1 monotonic, align 8, !noalias !30851
  %i.io = icmp slt i64 %i.in, 0
  br i1 %i.io, label %bb.cc, label %bb.ci

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.trap()
  unreachable

bb.cd:                                            ; preds = %bb.ce
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.ce:                                            ; preds = %bb.h
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @373, ptr noundef nonnull inttoptr (i64 211 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @377) #48
          to label %bb.cf unwind label %bb.cd, !noalias !30851

bb.cf:                                            ; preds = %bb.ce
  unreachable

bb.cg:                                            ; preds = %bb.cd, %.body.i
  %.pn72.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn72.pn.pn.pn.pn.i, %.body.i ], [ %i.ip, %bb.cd ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30865)
  call void @llvm.experimental.noalias.scope.decl(metadata !30866)
  call void @llvm.experimental.noalias.scope.decl(metadata !30867)
  %i.iq = load ptr, ptr %i.ay, align 8, !alias.scope !30868, !noalias !30852, !nonnull !97, !noundef !97
  %i.ir = atomicrmw add ptr %i.iq, i64 -1 release, align 8, !noalias !30869
  %i.is = icmp eq i64 %i.ir, 1
  br i1 %i.is, label %bb.ch, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs14kWLkQVSKO_14deltalake_core.exit172.i

bb.ch:                                            ; preds = %bb.cg
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcSNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE9drop_slowCsjyY8HP3IvQ6_12object_store(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ay) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs14kWLkQVSKO_14deltalake_core.exit172.i unwind label %bb.au, !noalias !30851

bb.ci:                                            ; preds = %bb.cb
  %i.it = invoke { ptr, ptr } @_RNvXsc_CsjyY8HP3IvQ6_12object_storeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB5_11ObjectStoreEL_EB16_3put(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ij, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.il, ptr noundef nonnull %.val136.i, i64 noundef %.val137.i)
          to label %bb.ck unwind label %bb.cj, !noalias !30851 ; 2 uses

bb.cj:                                            ; preds = %bb.ci, %bb.ca
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ck:                                            ; preds = %bb.ci
  %i.iv = extractvalue { ptr, ptr } %i.it, 0
  %i.iw = extractvalue { ptr, ptr } %i.it, 1
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %i.iv, ptr %i.ix, align 8, !noalias !30852
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.iw, ptr %i.iy, align 8, !noalias !30852
  br label %bb.l

bb.cl:                                            ; preds = %bb.bx, %bb.bl, %bb.bi
  %.pn59.pn.i = phi { ptr, i32 } [ %i.ig, %bb.bx ], [ %i.gn, %bb.bi ], [ %i.gv, %bb.bl ]
  %.val.i = load ptr, ptr %i.aa, align 16, !noalias !30852
  %.val101.i = load ptr, ptr %i.fq, align 8, !noalias !30852, !nonnull !97, !align !100, !noundef !97
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core(ptr %.val.i, ptr nonnull %.val101.i) #46
          to label %.body159.i unwind label %bb.au, !noalias !30851

bb.cm:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !30852
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.q, ptr noundef nonnull align 8 dereferenceable(72) %i.av, i64 72, i1 false), !noalias !30852
  %i.iz = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !30852
  %i.ja = icmp samesign ult i64 %i.iz, 5
  br i1 %i.ja, label %bb.cn, label %bb.cs

bb.cn:                                            ; preds = %bb.cm
  %i.jb = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries00s1_10___CALLSITE, i64 16) monotonic, align 8, !noalias !30852 ; 2 uses
  %i.jc = icmp ult i8 %i.jb, 3
  br i1 %i.jc, label %bb.cp, label %bb.co, !prof !170

bb.co:                                            ; preds = %bb.cn
  %i.jd = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries00s1_10___CALLSITE) #45
          to label %bb.cp unwind label %bb.cw, !noalias !30851

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.sroa.0.0.i174.i = phi i8 [ %i.jb, %bb.cn ], [ %i.jd, %bb.co ] ; 2 uses
  %i.je = icmp eq i8 %.sroa.0.0.i174.i, 0
  br i1 %i.je, label %bb.cs, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.jf = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries00s1_10___CALLSITE, align 8, !noalias !30852, !nonnull !97, !align !100, !noundef !97
  %i.jg = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.jf, i8 noundef %.sroa.0.0.i174.i)
          to label %bb.cr unwind label %bb.cw, !noalias !30851

bb.cr:                                            ; preds = %bb.cq
  br i1 %i.jg, label %bb.dc, label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cp, %bb.cm
  %i.jh = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !30852
  %.not258.i = icmp eq i8 %i.jh, 0
  br i1 %.not258.i, label %bb.ct, label %bb.db

bb.ct:                                            ; preds = %bb.cs
  %i.ji = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !30852 ; 2 uses
  %i.jj = icmp ult i64 %i.ji, 6
  call void @llvm.assume(i1 %i.jj)
  %.not259.i = icmp eq i64 %i.ji, 0
  br i1 %.not259.i, label %bb.db, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.jk = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries00s1_10___CALLSITE, align 8, !noalias !30852, !nonnull !97, !align !100, !noundef !97 ; 3 uses
  %i.jl = getelementptr i8, ptr %i.jk, i64 32
  %.val130.i = load ptr, ptr %i.jl, align 8, !noalias !30851, !nonnull !97, !noundef !97
  %i.jm = getelementptr i8, ptr %i.jk, i64 40
  %.val131.i = load i64, ptr %i.jm, align 8, !noalias !30851, !noundef !97
  store i64 1, ptr %i.l, align 8, !alias.scope !30870, !noalias !30852
  %.sroa.6253.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %.val130.i, ptr %.sroa.6253.0..sroa_idx.i, align 8, !alias.scope !30870, !noalias !30852
  %.sroa.8254.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %.val131.i, ptr %.sroa.8254.0..sroa_idx.i, align 8, !alias.scope !30870, !noalias !30852
  %i.jn = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.cv unwind label %bb.cw, !noalias !30851 ; 2 uses

bb.cv:                                            ; preds = %bb.cu
  %i.jo = extractvalue { ptr, ptr } %i.jn, 0      ; 2 uses
  %i.jp = extractvalue { ptr, ptr } %i.jn, 1      ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 24
  %i.jr = load ptr, ptr %i.jq, align 8, !invariant.load !97, !noalias !30851, !nonnull !97
  %i.js = invoke noundef zeroext i1 %i.jr(ptr noundef %i.jo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
          to label %bb.cx unwind label %bb.cw, !noalias !30851

bb.cw:                                            ; preds = %bb.cv, %bb.cu, %bb.cq, %bb.co
  %i.jt = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.cx:                                            ; preds = %bb.cv
  br i1 %i.js, label %bb.cy, label %bb.db

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !30852
  %i.ju = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries00s1_10___CALLSITE, align 8, !noalias !30852, !nonnull !97, !align !100, !noundef !97
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !30852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !30852
  store ptr @378, ptr %i.i, align 8, !noalias !30852
  %i.jw = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr inttoptr (i64 91 to ptr), ptr %i.jw, align 8, !noalias !30852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !30852
  store ptr %i.q, ptr %i.h, align 8, !noalias !30852
  store ptr %i.i, ptr %i.j, align 8, !noalias !30852
  %i.jx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @196, ptr %i.jx, align 8, !noalias !30852
  %i.jy = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.cu, ptr %i.jy, align 8, !noalias !30852
  %i.jz = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr @206, ptr %i.jz, align 8, !noalias !30852
  %i.ka = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %i.h, ptr %i.ka, align 8, !noalias !30852
  %i.kb = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store ptr @200, ptr %i.kb, align 8, !noalias !30852
  store i64 1, ptr %i.k, align 8, !alias.scope !30871, !noalias !30852
  %.sroa.4.0..sroa_idx.i181.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx.i181.i, align 8, !alias.scope !30871, !noalias !30852
  %.sroa.5.0..sroa_idx.i182.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx.i182.i, align 8, !alias.scope !30871, !noalias !30852
  %i.kc = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %i.jv, ptr %i.kc, align 8, !alias.scope !30871, !noalias !30852
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.jk, ptr noundef nonnull %i.jo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.jp, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k)
          to label %bb.da unwind label %bb.cz, !noalias !30851

bb.cz:                                            ; preds = %bb.cy
  %i.kd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !30852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !30852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !30852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !30852
  br label %bb.di

bb.da:                                            ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !30852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !30852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !30852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !30852
  br label %bb.db

bb.db:                                            ; preds = %bb.dh, %bb.da, %bb.cx, %bb.ct, %bb.cs
  %.sroa.022.0.copyload.i = load i64, ptr %i.q, align 8, !noalias !30852
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.413.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.423.0..sroa_idx.i, i64 48, i1 false), !noalias !30852
  %.sroa.524.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.516.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.524.0..sroa_idx.i, i64 16, i1 false), !noalias !30852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !30852
  br label %bb.ar

end_hunk_3
begin_hunk_4_@_RNvXs0_NtCscTw95cGIolY_7tracing10instrumentINtB5_12InstrumentedNCNCNvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_ENtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries00ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollB2y_:bb.a
  store ptr %i.ad, ptr %i.ae, align 8, !noalias !30852
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @196, ptr %i.mb, align 8, !noalias !30852
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %i.cu, ptr %i.mc, align 8, !noalias !30852
  %i.md = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr @206, ptr %i.md, align 8, !noalias !30852
  %i.me = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store ptr %i.ac, ptr %i.me, align 8, !noalias !30852
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  store ptr @200, ptr %i.mf, align 8, !noalias !30852
  store i64 1, ptr %i.af, align 8, !alias.scope !30874, !noalias !30852
  %.sroa.4.0..sroa_idx.i193.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.ae, ptr %.sroa.4.0..sroa_idx.i193.i, align 8, !alias.scope !30874, !noalias !30852
  %.sroa.5.0..sroa_idx.i194.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx.i194.i, align 8, !alias.scope !30874, !noalias !30852
  %i.mg = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store ptr %i.lz, ptr %i.mg, align 8, !alias.scope !30874, !noalias !30852
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.lo, ptr noundef nonnull %i.ls, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.lt, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.af)
          to label %bb.dy unwind label %bb.dx, !noalias !30851

bb.dx:                                            ; preds = %bb.dw
  %i.mh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !30852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !30852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !30852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !30852
  br label %bb.ek

bb.dy:                                            ; preds = %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !30852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !30852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !30852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !30852
  br label %bb.dz

bb.dz:                                            ; preds = %bb.ef, %bb.dy, %bb.dv, %bb.dr, %bb.dq
  %.sroa.019.0.copyload.i = load i64, ptr %i.al, align 8, !noalias !30852
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.413.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.420.0..sroa_idx.i, i64 48, i1 false), !noalias !30852
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.516.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.521.0..sroa_idx.i, i64 16, i1 false), !noalias !30852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !30852
  br label %bb.ar

bb.ea:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !30852
  %i.mi = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries00s_10___CALLSITE, align 8, !noalias !30852, !nonnull !97, !align !100, !noundef !97 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !30852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !30852
  store ptr @379, ptr %i.ai, align 8, !noalias !30852
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr inttoptr (i64 77 to ptr), ptr %i.mk, align 8, !noalias !30852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !30852
  store ptr %i.al, ptr %i.ah, align 8, !noalias !30852
  store ptr %i.ai, ptr %i.aj, align 8, !noalias !30852
  %i.ml = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr @196, ptr %i.ml, align 8, !noalias !30852
  %i.mm = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %i.cu, ptr %i.mm, align 8, !noalias !30852
  %i.mn = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store ptr @206, ptr %i.mn, align 8, !noalias !30852
  %i.mo = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store ptr %i.ah, ptr %i.mo, align 8, !noalias !30852
  %i.mp = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  store ptr @200, ptr %i.mp, align 8, !noalias !30852
  store i64 1, ptr %i.ak, align 8, !noalias !30852
  %.sroa.7211.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.aj, ptr %.sroa.7211.0..sroa_idx.i, align 8, !noalias !30852
  %.sroa.8212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 3, ptr %.sroa.8212.0..sroa_idx.i, align 8, !noalias !30852
  %.sroa.9213.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store ptr %i.mj, ptr %.sroa.9213.0..sroa_idx.i, align 8, !noalias !30852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.mi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ak)
          to label %.noexc6 unwind label %bb.ee

.noexc6:                                          ; preds = %bb.ea
  %i.mq = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !30875
  %i.mr = icmp eq i8 %i.mq, 0
  br i1 %i.mr, label %bb.eb, label %bb.ef

bb.eb:                                            ; preds = %.noexc6
  %i.ms = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !30875 ; 2 uses
  %i.mt = icmp ult i64 %i.ms, 6
  call void @llvm.assume(i1 %i.mt), !noalias !30851
  %i.mu = icmp samesign ugt i64 %i.ms, 1
  br i1 %i.mu, label %bb.ec, label %bb.ef

bb.ec:                                            ; preds = %bb.eb
  %i.mv = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries00s_10___CALLSITE, align 8, !noalias !30875, !nonnull !97, !align !100, !noundef !97 ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 32
  %i.mx = load ptr, ptr %i.mw, align 8, !noalias !30851, !nonnull !97, !noundef !97
  %i.my = getelementptr inbounds nuw i8, ptr %i.mv, i64 40
  %i.mz = load i64, ptr %i.my, align 8, !noalias !30851, !noundef !97
  store i64 2, ptr %i.c, align 8, !noalias !30875
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.mx, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !30875
  %.sroa.5.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.mz, ptr %.sroa.5.0..sroa_idx.i5, align 8, !noalias !30875
  %i.na = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc7 unwind label %bb.ee   ; 2 uses

.noexc7:                                          ; preds = %bb.ec
  %i.nb = extractvalue { ptr, ptr } %i.na, 0      ; 2 uses
  %i.nc = extractvalue { ptr, ptr } %i.na, 1      ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 24
  %i.ne = load ptr, ptr %i.nd, align 8, !invariant.load !97, !noalias !30851, !nonnull !97
  %i.nf = invoke noundef zeroext i1 %i.ne(ptr noundef %i.nb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c) #49
          to label %.noexc8 unwind label %bb.ee, !inline_history !30832

.noexc8:                                          ; preds = %.noexc7
  br i1 %i.nf, label %bb.ed, label %bb.ef

bb.ed:                                            ; preds = %.noexc8
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.mv, ptr noundef nonnull %i.nb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.nc, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ak)
          to label %bb.ef unwind label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %.noexc7, %bb.ec, %bb.ea
  %i.ng = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !30852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !30852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !30852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !30852
  br label %bb.ek

bb.ef:                                            ; preds = %.noexc8, %bb.eb, %.noexc6, %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !30852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !30852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !30852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !30852
  br label %bb.dz

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs14kWLkQVSKO_14deltalake_core.exit172.i: ; preds = %bb.eg, %bb.ch, %bb.cg
  %.pn79.i = phi { ptr, i32 } [ %i.nk, %bb.eg ], [ %.pn72.pn.pn.pn.pn.pn.i, %bb.ch ], [ %.pn72.pn.pn.pn.pn.pn.i, %bb.cg ] ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ni = load i8, ptr %i.nh, align 8, !range !107, !noalias !30852, !noundef !97
  %i.nj = trunc nuw i8 %i.ni to i1
  br i1 %i.nj, label %bb.en, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs14kWLkQVSKO_14deltalake_core.exit200.i

bb.eg:                                            ; preds = %bb.as
  %i.nk = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs14kWLkQVSKO_14deltalake_core.exit172.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.as, %bb.ar
  %i.nl = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.nm = load i8, ptr %i.nl, align 8, !range !107, !noalias !30852, !noundef !97
  %i.nn = trunc nuw i8 %i.nm to i1
  br i1 %i.nn, label %bb.eh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs14kWLkQVSKO_14deltalake_core.exit198.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs14kWLkQVSKO_14deltalake_core.exit198.i: ; preds = %bb.ei, %bb.eh, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs14kWLkQVSKO_14deltalake_core.exit.i
  store i64 %.sroa.010.0.i, ptr %0, align 8, !alias.scope !30851
  %.sroa.413.0..sroa_idx15.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.413.0..sroa_idx15.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.413.i, i64 48, i1 false), !noalias !30876
  %.sroa.516.0..sroa_idx18.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.516.0..sroa_idx18.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.516.i, i64 16, i1 false), !noalias !30876
  br label %bb.eq

bb.eh:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.no = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30877)
  call void @llvm.experimental.noalias.scope.decl(metadata !30878)
  call void @llvm.experimental.noalias.scope.decl(metadata !30879)
  %i.np = load ptr, ptr %i.no, align 8, !alias.scope !30880, !noalias !30852, !nonnull !97, !noundef !97
  %i.nq = atomicrmw add ptr %i.np, i64 -1 release, align 8, !noalias !30881
  %i.nr = icmp eq i64 %i.nq, 1
  br i1 %i.nr, label %bb.ei, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs14kWLkQVSKO_14deltalake_core.exit198.i

bb.ei:                                            ; preds = %bb.eh
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcSNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE9drop_slowCsjyY8HP3IvQ6_12object_store(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.no) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs14kWLkQVSKO_14deltalake_core.exit198.i unwind label %bb.ej, !noalias !30851

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs14kWLkQVSKO_14deltalake_core.exit200.i: ; preds = %bb.eo, %bb.en, %bb.ej, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs14kWLkQVSKO_14deltalake_core.exit172.i
  %.pn81.i = phi { ptr, i32 } [ %i.ns, %bb.ej ], [ %.pn79.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs14kWLkQVSKO_14deltalake_core.exit172.i ], [ %.pn79.i, %bb.eo ], [ %.pn79.i, %bb.en ]
  store i8 2, ptr %i.bk, align 1, !noalias !30852
  br label %.body

bb.ej:                                            ; preds = %bb.ei
  %i.ns = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs14kWLkQVSKO_14deltalake_core.exit200.i

bb.ek:                                            ; preds = %bb.ee, %bb.dx, %bb.du
  %.pn72.pn.pn.i = phi { ptr, i32 } [ %i.ng, %bb.ee ], [ %i.lx, %bb.du ], [ %i.mh, %bb.dx ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.al) #46
          to label %bb.el unwind label %bb.au, !noalias !30851

bb.el:                                            ; preds = %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !30852
  br label %.body.i

bb.em:                                            ; preds = %bb.aw
  %i.nt = icmp ne i64 %i.fh, -9223372036854775800
  call void @llvm.assume(i1 %i.nt)
  %6 = icmp eq i64 %i.fh, -9223372036854775802
  br i1 %6, label %.body.i, label %7

7:                                                ; preds = %bb.em
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.av) #46
          to label %.body.i unwind label %bb.au, !noalias !30851

bb.en:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs14kWLkQVSKO_14deltalake_core.exit172.i
  %i.nu = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30882)
  call void @llvm.experimental.noalias.scope.decl(metadata !30883)
  call void @llvm.experimental.noalias.scope.decl(metadata !30884)
  %i.nv = load ptr, ptr %i.nu, align 8, !alias.scope !30885, !noalias !30852, !nonnull !97, !noundef !97
  %i.nw = atomicrmw add ptr %i.nv, i64 -1 release, align 8, !noalias !30886
  %i.nx = icmp eq i64 %i.nw, 1
  br i1 %i.nx, label %bb.eo, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs14kWLkQVSKO_14deltalake_core.exit200.i

bb.eo:                                            ; preds = %bb.en
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcSNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE9drop_slowCsjyY8HP3IvQ6_12object_store(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.nu) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs14kWLkQVSKO_14deltalake_core.exit200.i unwind label %bb.au, !noalias !30851

bb.ep:                                            ; preds = %bb.j, %bb.i
  %i.ny = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs14kWLkQVSKO_14deltalake_core.exit200.i, %bb.ep
  %eh.lpad-body = phi { ptr, i32 } [ %i.ny, %bb.ep ], [ %.pn81.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs14kWLkQVSKO_14deltalake_core.exit200.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs14kWLkQVSKO_14deltalake_core(ptr nonnull %1) #46
          to label %bb.ew unwind label %bb.ev

bb.eq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs14kWLkQVSKO_14deltalake_core.exit198.i, %bb.n
  %storemerge.i = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs14kWLkQVSKO_14deltalake_core.exit198.i ], [ 3, %bb.n ]
  store i8 %storemerge.i, ptr %i.bk, align 1, !noalias !30852
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.413.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.516.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.experimental.noalias.scope.decl(metadata !30887)
  %i.nz = load i64, ptr %1, align 8, !range !114, !alias.scope !30887, !noalias !30888, !noundef !97
  %.not.i.i.i4 = icmp eq i64 %i.nz, 2
  br i1 %.not.i.i.i4, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.oa = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.oa), !noalias !30888
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  %i.ob = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !30888
  %i.oc = icmp eq i8 %i.ob, 0
  br i1 %i.oc, label %bb.et, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs14kWLkQVSKO_14deltalake_core.exit

bb.et:                                            ; preds = %bb.es
  %i.od = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.oe = load ptr, ptr %i.od, align 8, !alias.scope !30887, !noalias !30888, !align !100, !noundef !97 ; 3 uses
  %.not4.i.i.i = icmp eq ptr %i.oe, null
  br i1 %.not4.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs14kWLkQVSKO_14deltalake_core.exit, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !30889
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 16
  %i.og = load ptr, ptr %i.of, align 8, !noalias !30888, !nonnull !97, !noundef !97
  %i.oh = getelementptr inbounds nuw i8, ptr %i.oe, i64 24
  %i.oi = load i64, ptr %i.oh, align 8, !noalias !30888, !noundef !97
  store ptr %i.og, ptr %i.e, align 8, !noalias !30889
  %i.oj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.oi, ptr %i.oj, align 8, !noalias !30889
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !30889
  store ptr %i.e, ptr %i.d, align 8, !noalias !30889
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.43.0..sroa_idx.i.i.i, align 8, !noalias !30889
  call fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @645, i64 noundef 21, ptr noundef nonnull @644, ptr noundef nonnull %i.d) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !30889
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !30889
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.es, %bb.et, %bb.eu
  ret void

bb.ev:                                            ; preds = %.body
  %i.ok = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.ew:                                            ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtCscTw95cGIolY_7tracing10instrumentINtB5_12InstrumentedNCNvXs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations5writeNtB17_12WriteBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future0ENtNtB2l_6future6Future4pollB1b_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 16 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 16 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !30896 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 9072 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30897)
  %i.f = load i64, ptr %i.e, align 16, !range !114, !alias.scope !30897, !noundef !97
  %.not.i = icmp eq i64 %i.f, 2
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 9096
  tail call void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.d, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 9104
  %i.k = load ptr, ptr %i.j, align 16, !alias.scope !30897, !align !100, !noundef !97 ; 3 uses
  %.not4.i = icmp eq ptr %i.k, null
  br i1 %.not4.i, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !30897
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !97, !noundef !97
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.o = load i64, ptr %i.n, align 8, !noundef !97
  store ptr %i.m, ptr %i.d, align 8, !noalias !30897
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.o, ptr %i.p, align 8, !noalias !30897
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !30897
  store ptr %i.d, ptr %i.c, align 8, !noalias !30897
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !30897
  call fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) @645, i64 noundef 21, ptr noundef nonnull @646, ptr noundef nonnull %i.c) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !30897
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !30897
  br label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit

_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit: ; preds = %bb.c, %bb.d, %bb.e
  invoke fastcc void @_RNCNvXs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations5writeNtB7_12WriteBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future0Bb_(ptr noalias noundef align 16 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 16 %1, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.e) #46
          to label %bb.m unwind label %bb.l

bb.g:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !30898)
  %i.r = load i64, ptr %i.e, align 16, !range !114, !alias.scope !30898, !noalias !30899, !noundef !97
  %.not.i.i.i = icmp eq i64 %i.r, 2
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 9096
  call void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s), !noalias !30899
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.t = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !30899
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 9104
  %i.w = load ptr, ptr %i.v, align 16, !alias.scope !30898, !noalias !30899, !align !100, !noundef !97 ; 3 uses
  %.not4.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not4.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs14kWLkQVSKO_14deltalake_core.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !30900
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !noalias !30899, !nonnull !97, !noundef !97
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !noalias !30899, !noundef !97
  store ptr %i.y, ptr %i.b, align 8, !noalias !30900
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !noalias !30900
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !30900
  store ptr %i.b, ptr %i.a, align 8, !noalias !30900
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.43.0..sroa_idx.i.i.i, align 8, !noalias !30900
  call fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) @645, i64 noundef 21, ptr noundef nonnull @644, ptr noundef nonnull %i.a) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !30900
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !30900
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.i, %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.m:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.q
}

; Function Attrs: inlinehint nonlazybind uwtable
end_hunk_4
