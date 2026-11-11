Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_kit-e87e91e97b3e7920.typst_kit.8c87759b606a0684-cgu.0?download=true
inline.NumInlined: 3957
inline.NumDeleted: 1749
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 63
loop-unroll.NumUnrolled: 76
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvMNtCsc4241EHy6Do_9typst_kit6serverNtB2_10HttpServer3new:bb.a
  %i.je = call noundef i32 @close(i32 noundef range(i32 0, -1) %i.db) #40, !noalias !5549 ; 0 uses
  br label %bb.l

bb.cs:                                            ; preds = %bb.cu, %_RINvMs1_CsbGiR87yI9G2_9tiny_httpNtB6_6Server13from_listenerNtNtNtCsaL1QbXo9JQH_3std3net3tcp11TcpListenerECsc4241EHy6Do_9typst_kit.exit.thread.i
  %i.jf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.u) #44
          to label %bb.cz unwind label %bb.cy, !noalias !5600

bb.ct:                                            ; preds = %_RINvMs1_CsbGiR87yI9G2_9tiny_httpNtB6_6Server13from_listenerNtNtNtCsaL1QbXo9JQH_3std3net3tcp11TcpListenerECsc4241EHy6Do_9typst_kit.exit.thread.i
  br i1 %i.iz, label %bb.cu, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit.i.i, !prof !23

bb.cu:                                            ; preds = %bb.ct
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @188, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @198, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @185) #47
          to label %.noexc.i123.i unwind label %bb.cs, !noalias !5600

.noexc.i123.i:                                    ; preds = %bb.cu
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit.i.i: ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !5599
  %i.jg = load <2 x ptr>, ptr %i.u, align 16, !noalias !5605
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !5599
  %.val24.i.i = load ptr, ptr %i.v, align 8, !noalias !5599 ; 5 uses
  %.val25.i.i = load ptr, ptr %i.iy, align 8, !noalias !5599, !nonnull !17, !align !25, !noundef !17 ; 5 uses
  %i.jh = load ptr, ptr %.val25.i.i, align 8, !invariant.load !17, !noalias !5600 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.jh, null
  br i1 %.not.i.i.i, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val24.i.i) ]
  invoke void %i.jh(ptr noundef nonnull %.val24.i.i)
          to label %bb.cw unwind label %bb.cx, !noalias !5600

bb.cw:                                            ; preds = %bb.cv, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit.i.i
  %i.ji = getelementptr inbounds nuw i8, ptr %.val25.i.i, i64 8
  %i.jj = load i64, ptr %i.ji, align 8, !range !21, !invariant.load !17, !noalias !5600 ; 2 uses
  %i.jk = icmp eq i64 %i.jj, 0
  br i1 %i.jk, label %_RNCNvNtCsc4241EHy6Do_9typst_kit6server12start_server0B5_.exit.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.cw
  %i.jl = getelementptr inbounds nuw i8, ptr %.val25.i.i, i64 16
  %i.jm = load i64, ptr %i.jl, align 8, !range !24, !invariant.load !17, !noalias !5600
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val24.i.i) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val24.i.i, i64 noundef %i.jj, i64 noundef range(i64 1, -9223372036854775807) %i.jm) #40, !noalias !5600
  br label %_RNCNvNtCsc4241EHy6Do_9typst_kit6server12start_server0B5_.exit.i

bb.cx:                                            ; preds = %bb.cv
  %i.jn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.val25.i.i, i64 8
  %i.jp = load i64, ptr %i.jo, align 8, !range !21, !invariant.load !17, !noalias !5600 ; 2 uses
  %i.jq = icmp eq i64 %i.jp, 0
  br i1 %i.jq, label %common.resume, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.cx
  %i.jr = getelementptr inbounds nuw i8, ptr %.val25.i.i, i64 16
  %i.js = load i64, ptr %i.jr, align 8, !range !24, !invariant.load !17, !noalias !5600
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val24.i.i, i64 noundef %i.jp, i64 noundef range(i64 1, -9223372036854775807) %i.js) #40, !noalias !5600
  br label %common.resume

bb.cy:                                            ; preds = %bb.cz, %bb.cs
  %i.jt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #45, !noalias !5600
  unreachable

bb.cz:                                            ; preds = %bb.cs
  %.val.i.i = load ptr, ptr %i.v, align 8, !noalias !5599
  %.val23.i.i = load ptr, ptr %i.iy, align 8, !noalias !5599, !nonnull !17, !align !25, !noundef !17
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECsc4241EHy6Do_9typst_kit(ptr %.val.i.i, ptr nonnull %.val23.i.i) #44
          to label %common.resume unwind label %bb.cy, !noalias !5600

_RNCNvNtCsc4241EHy6Do_9typst_kit6server12start_server0B5_.exit.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !5544
  br label %_RNvNtCsc4241EHy6Do_9typst_kit6server12start_server.exit.thread

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i: ; preds = %bb.k, %bb.j, %bb.i, %.noexc118.i
  %.sroa.0.0.i.i = phi i8 [ %i.cz, %bb.k ], [ %switch.idx.cast.i.i.i.i, %bb.i ], [ %i.cx, %bb.j ], [ %i.cs, %.noexc118.i ]
  %i.ju = icmp eq i8 %.sroa.0.0.i.i, 8
  br i1 %i.ju, label %bb.da, label %.split209.us.i

.split209.us.i:                                   ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.5.i, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.4.i, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.3.i, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.2.i, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.1.i, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.us.i
  %.us-phi210.i = phi ptr [ %i.bs, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.us.i ], [ %i.ck, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i ], [ %i.kx, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.1.i ], [ %i.lu, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.2.i ], [ %i.mr, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.3.i ], [ %i.no, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.4.i ], [ %i.ol, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.5.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !5544
  store ptr %.us-phi210.i, ptr %i.ay, align 8, !noalias !5544
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !5544
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(15) %i.ax, i8 0, i64 15, i1 false), !noalias !5544
  %.sroa.449.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 15
  store i8 -128, ptr %.sroa.449.0..sroa_idx.i, align 1, !noalias !5544
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !5544
  store ptr %i.ay, ptr %i.aw, align 8, !noalias !5544
  %.sroa.493.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr @_RNvXs3_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.493.0..sroa_idx.i, align 8, !noalias !5544
  %i.jv = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.ax, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @115, ptr noundef nonnull @267, ptr noundef nonnull %i.aw)
          to label %bb.dc unwind label %bb.db, !noalias !5544

bb.da:                                            ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !5544
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !5606
  switch i64 %i.cm, label %default.unreachable [
    i64 2, label %.lr.ph.split.us.i.1.i
    i64 3, label %bb.ds
    i64 0, label %.lr.ph.split.us.i.1.i
    i64 1, label %bb.dt
  ], !prof !30

bb.db:                                            ; preds = %bb.dd, %.split209.us.i
  %i.jw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ax) #44
          to label %bb.dj unwind label %bb.di, !noalias !5544

bb.dc:                                            ; preds = %.split209.us.i
  br i1 %i.jv, label %bb.dd, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit117.i, !prof !23

bb.dd:                                            ; preds = %bb.dc
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @188, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @198, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @268) #47
          to label %.noexc116.i unwind label %bb.db, !noalias !5544

.noexc116.i:                                      ; preds = %bb.dd
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit117.i: ; preds = %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !5544
  %i.jx = load <2 x ptr>, ptr %i.ax, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !5544
  call void @llvm.experimental.noalias.scope.decl(metadata !5607)
  %.val.i124.i = load ptr, ptr %i.ay, align 8, !alias.scope !5607, !noalias !5544, !nonnull !17, !noundef !17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !5608
  %i.jy = ptrtoint ptr %.val.i124.i to i64        ; 2 uses
  %i.jz = and i64 %i.jy, 3
  switch i64 %i.jz, label %default.unreachable [
    i64 2, label %bb.dg
    i64 3, label %bb.de
    i64 0, label %bb.dg
    i64 1, label %bb.df
  ], !prof !30

bb.de:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit117.i
  %i.ka = icmp ult ptr %.val.i124.i, inttoptr (i64 188978561024 to ptr)
  %i.kb = and i64 %i.jy, 1095216660480
  %i.kc = icmp ne i64 %i.kb, 1095216660480
  call void @llvm.assume(i1 %i.ka)
  call void @llvm.assume(i1 %i.kc)
  br label %bb.dg

bb.df:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit117.i
  %i.kd = getelementptr i8, ptr %.val.i124.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kd) ]
  %i.ke = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store ptr %i.kd, ptr %i.ke, align 8, !alias.scope !5609, !noalias !5608
  store i8 3, ptr %i.s, align 8, !alias.scope !5609, !noalias !5608
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ke), !noalias !5544
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit117.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit117.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !5608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !5544
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dw, %bb.dg
  %i.kf = phi <2 x ptr> [ %i.kl, %bb.dw ], [ %i.jx, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !5544
  br label %_RNvNtCsc4241EHy6Do_9typst_kit6server12start_server.exit.thread

bb.di:                                            ; preds = %.split206.loopexit.split-lp.i, %bb.du, %bb.dq, %bb.dk, %bb.dj, %bb.db
  %i.kg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #45, !noalias !5544
  unreachable

bb.dj:                                            ; preds = %bb.db
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ay) #44
          to label %common.resume unwind label %bb.di, !noalias !5544

bb.dk:                                            ; preds = %bb.dm, %.split212.us.i
  %i.kh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bb) #44
          to label %bb.dq unwind label %bb.di, !noalias !5544

bb.dl:                                            ; preds = %.split212.us.i
  br i1 %i.cj, label %bb.dm, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit.i, !prof !23

bb.dm:                                            ; preds = %bb.dl
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @188, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @198, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @270) #47
          to label %.noexc.i unwind label %bb.dk, !noalias !5544

.noexc.i:                                         ; preds = %bb.dm
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit.i: ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !5544
  %i.ki = load <2 x ptr>, ptr %i.bb, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !5544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !5544
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dv, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit.i
  %i.kj = phi ptr [ %i.bs, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit.i ], [ %i.ol, %bb.dv ] ; 3 uses
  %i.kk = phi i64 [ %i.bu, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit.i ], [ %i.on, %bb.dv ]
  %i.kl = phi <2 x ptr> [ %i.ki, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit.i ], [ %i.ku, %bb.dv ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !5610
  switch i64 %i.kk, label %default.unreachable [
    i64 2, label %bb.dw
    i64 3, label %bb.do
    i64 0, label %bb.dw
    i64 1, label %bb.dp
  ], !prof !30

bb.do:                                            ; preds = %bb.dn
  %6 = ptrtoint ptr %i.kj to i64
  %i.km = icmp ult ptr %i.kj, inttoptr (i64 188978561024 to ptr)
  %7 = and i64 %6, 1095216660480
  %8 = icmp ne i64 %7, 1095216660480
  call void @llvm.assume(i1 %i.km)
  call void @llvm.assume(i1 %8)
  br label %bb.dw

bb.dp:                                            ; preds = %bb.dn
  %i.kn = getelementptr i8, ptr %i.kj, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kn) ]
  %i.ko = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  store ptr %i.kn, ptr %i.ko, align 8, !alias.scope !5611, !noalias !5610
  store i8 3, ptr %i.r, align 8, !alias.scope !5611, !noalias !5610
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ko), !noalias !5544
  br label %bb.dw

bb.dq:                                            ; preds = %bb.du, %bb.dk
  %.pn.i = phi { ptr, i32 } [ %i.kh, %bb.dk ], [ %i.kt, %bb.du ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bd) #44
          to label %common.resume unwind label %bb.di, !noalias !5544

bb.dr:                                            ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.5.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !5544
  store ptr %i.ol, ptr %i.bd, align 8, !noalias !5544
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !5544
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(15) %i.az, i8 0, i64 15, i1 false), !noalias !5544
  %.sroa.477.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 15
  store i8 -128, ptr %.sroa.477.0..sroa_idx.i, align 1, !noalias !5544
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.az, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @271, i64 noundef 40)
          to label %bb.dv unwind label %bb.du, !noalias !5544

bb.ds:                                            ; preds = %bb.da
  %i.kp = icmp ult ptr %i.ck, inttoptr (i64 188978561024 to ptr)
  %i.kq = and i64 %i.cl, 1095216660480
  %i.kr = icmp ne i64 %i.kq, 1095216660480
  call void @llvm.assume(i1 %i.kp)
  call void @llvm.assume(i1 %i.kr)
  br label %.lr.ph.split.us.i.1.i

bb.dt:                                            ; preds = %bb.da
  %i.ks = getelementptr i8, ptr %i.ck, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ks) ]
  store ptr %i.ks, ptr %i.bn, align 8, !alias.scope !5612, !noalias !5606
  store i8 3, ptr %i.q, align 8, !alias.scope !5612, !noalias !5606
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bn), !noalias !5544
  br label %.lr.ph.split.us.i.1.i

bb.du:                                            ; preds = %bb.dr
  %i.kt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.az) #44
          to label %bb.dq unwind label %bb.di, !noalias !5544

bb.dv:                                            ; preds = %bb.dr
  %i.ku = load <2 x ptr>, ptr %i.az, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !5544
  br label %bb.dn

bb.dw:                                            ; preds = %bb.dp, %bb.do, %bb.dn, %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !5610
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !5544
  br label %bb.dh

.lr.ph.split.us.i.1.i:                            ; preds = %bb.dt, %bb.ds, %bb.da, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !5544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !5544
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !5544
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !5544
  call void @llvm.experimental.noalias.scope.decl(metadata !5613)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !5614
  store i16 0, ptr %i.at, align 4, !noalias !5614
  store i32 16777343, ptr %.sroa.727.0..sroa_idx.i.i, align 2, !noalias !5615
  store i16 3001, ptr %.sroa.6.2..sroa.727.0..sroa_idx.i.sroa_idx.i, align 2, !noalias !5615
  call void @_RNvNvMs7_NtNtNtNtCsaL1QbXo9JQH_3std3sys3net10connection6socketNtB7_11TcpListener4bind5inner(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.au, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %i.at), !noalias !5548
  %i.kv = load i32, ptr %i.au, align 8, !range !28, !alias.scope !5613, !noalias !5544, !noundef !17
  %i.kw = trunc nuw i32 %i.kv to i1
  br i1 %i.kw, label %bb.dx, label %.split204.us.sink.split.i

bb.dx:                                            ; preds = %.lr.ph.split.us.i.1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !5614
  %i.kx = load ptr, ptr %i.bl, align 8, !noalias !5544, !nonnull !17, !noundef !17 ; 8 uses
  store ptr %i.kx, ptr %i.bm, align 8, !noalias !5544
  store i32 1, ptr %i.be, align 8, !noalias !5544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !5544
  %i.ky = ptrtoint ptr %i.kx to i64               ; 4 uses
  %i.kz = and i64 %i.ky, 3                        ; 2 uses
  switch i64 %i.kz, label %default.unreachable [
    i64 2, label %bb.eb
    i64 3, label %bb.ea
    i64 0, label %bb.dz
    i64 1, label %bb.dy
  ], !prof !30

bb.dy:                                            ; preds = %bb.dx
  %i.la = getelementptr i8, ptr %i.kx, i64 31
  %i.lb = load i8, ptr %i.la, align 8, !range !36, !noalias !5544, !noundef !17
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.1.i

bb.dz:                                            ; preds = %bb.dx
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  %i.ld = load i8, ptr %i.lc, align 8, !range !36, !noalias !5544, !noundef !17
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.1.i

bb.ea:                                            ; preds = %bb.dx
  %i.le = lshr i64 %i.ky, 32
  %i.lf = icmp ult ptr %i.kx, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.1.i = trunc i64 %i.le to i8 ; 2 uses
  %i.lg = icmp ne i8 %switch.idx.cast.i.i.i.1.i, -1
  call void @llvm.assume(i1 %i.lf)
  call void @llvm.assume(i1 %i.lg)
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.1.i

bb.eb:                                            ; preds = %bb.dx
  %i.lh = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc118.1.i unwind label %.split206.loopexit.split-lp.i, !noalias !5544

.noexc118.1.i:                                    ; preds = %bb.eb
  %i.li = lshr i64 %i.ky, 32
  %i.lj = trunc nuw i64 %i.li to i32
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.ll = load ptr, ptr %i.lk, align 8, !noalias !5544, !nonnull !17, !noundef !17
  %i.lm = invoke noundef i8 %i.ll(i32 noundef %i.lj)
          to label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.1.i unwind label %.split206.loopexit.split-lp.i, !noalias !5544, !inline_history !1

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.1.i: ; preds = %.noexc118.1.i, %bb.ea, %bb.dz, %bb.dy
  %.sroa.0.0.i.1.i = phi i8 [ %i.lb, %bb.dy ], [ %switch.idx.cast.i.i.i.1.i, %bb.ea ], [ %i.ld, %bb.dz ], [ %i.lm, %.noexc118.1.i ]
  %i.ln = icmp eq i8 %.sroa.0.0.i.1.i, 8
  br i1 %i.ln, label %bb.ec, label %.split209.us.i

bb.ec:                                            ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.1.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !5544
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !5606
  switch i64 %i.kz, label %default.unreachable [
    i64 2, label %.lr.ph.split.us.i.2.i
    i64 3, label %bb.ee
    i64 0, label %.lr.ph.split.us.i.2.i
    i64 1, label %bb.ed
  ], !prof !30

bb.ed:                                            ; preds = %bb.ec
  %i.lo = getelementptr i8, ptr %i.kx, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lo) ]
  store ptr %i.lo, ptr %i.bn, align 8, !alias.scope !5612, !noalias !5606
  store i8 3, ptr %i.q, align 8, !alias.scope !5612, !noalias !5606
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bn), !noalias !5544
  br label %.lr.ph.split.us.i.2.i

bb.ee:                                            ; preds = %bb.ec
  %i.lp = icmp ult ptr %i.kx, inttoptr (i64 188978561024 to ptr)
  %i.lq = and i64 %i.ky, 1095216660480
  %i.lr = icmp ne i64 %i.lq, 1095216660480
  call void @llvm.assume(i1 %i.lp)
  call void @llvm.assume(i1 %i.lr)
  br label %.lr.ph.split.us.i.2.i

.lr.ph.split.us.i.2.i:                            ; preds = %bb.ee, %bb.ed, %bb.ec, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !5544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !5544
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !5544
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !5544
  call void @llvm.experimental.noalias.scope.decl(metadata !5616)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !5617
  store i16 0, ptr %i.at, align 4, !noalias !5617
  store i32 16777343, ptr %.sroa.727.0..sroa_idx.i.i, align 2, !noalias !5618
  store i16 3002, ptr %.sroa.6.2..sroa.727.0..sroa_idx.i.sroa_idx.i, align 2, !noalias !5618
  call void @_RNvNvMs7_NtNtNtNtCsaL1QbXo9JQH_3std3sys3net10connection6socketNtB7_11TcpListener4bind5inner(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.au, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %i.at), !noalias !5548
  %i.ls = load i32, ptr %i.au, align 8, !range !28, !alias.scope !5616, !noalias !5544, !noundef !17
  %i.lt = trunc nuw i32 %i.ls to i1
  br i1 %i.lt, label %bb.ef, label %.split204.us.sink.split.i

bb.ef:                                            ; preds = %.lr.ph.split.us.i.2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !5617
  %i.lu = load ptr, ptr %i.bl, align 8, !noalias !5544, !nonnull !17, !noundef !17 ; 8 uses
  store ptr %i.lu, ptr %i.bm, align 8, !noalias !5544
  store i32 1, ptr %i.be, align 8, !noalias !5544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !5544
  %i.lv = ptrtoint ptr %i.lu to i64               ; 4 uses
  %i.lw = and i64 %i.lv, 3                        ; 2 uses
  switch i64 %i.lw, label %default.unreachable [
    i64 2, label %bb.ej
    i64 3, label %bb.ei
    i64 0, label %bb.eh
    i64 1, label %bb.eg
  ], !prof !30

bb.eg:                                            ; preds = %bb.ef
  %i.lx = getelementptr i8, ptr %i.lu, i64 31
  %i.ly = load i8, ptr %i.lx, align 8, !range !36, !noalias !5544, !noundef !17
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.2.i

bb.eh:                                            ; preds = %bb.ef
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  %i.ma = load i8, ptr %i.lz, align 8, !range !36, !noalias !5544, !noundef !17
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.2.i

bb.ei:                                            ; preds = %bb.ef
  %i.mb = lshr i64 %i.lv, 32
  %i.mc = icmp ult ptr %i.lu, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.2.i = trunc i64 %i.mb to i8 ; 2 uses
  %i.md = icmp ne i8 %switch.idx.cast.i.i.i.2.i, -1
  call void @llvm.assume(i1 %i.mc)
  call void @llvm.assume(i1 %i.md)
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.2.i
end_hunk_0
