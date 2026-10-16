Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_wasm_example_whisper-601b0015d81a4374.candle_wasm_example_whisper.b1eff805deae52af-cgu.12?download=true
inline.NumInlined: 730
inline.NumDeleted: 376
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvXNtCsfh9HxMbthk9_27candle_wasm_example_whisper3appNtB2_3AppNtNtNtCs9OLX912zl7o_3yew4html9component9Component4view:bb.a
  %.sroa.579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 112
  store ptr %i.hu, ptr %.sroa.579.0..sroa_idx, align 8
  %.sroa.680.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 120
  store ptr null, ptr %.sroa.680.0..sroa_idx, align 8
  %.sroa.882.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 136
  store ptr null, ptr %.sroa.882.0..sroa_idx, align 8
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !1344
  %i.ii = call noundef align 8 dereferenceable_or_null(152) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 4, 153) 152, i64 noundef range(i64 4, 9) 8) #31, !noalias !1344 ; 3 uses
  %i.ij = icmp eq ptr %i.ii, null
  br i1 %i.ij, label %bb.bp, label %bb.bs, !prof !8

bb.bp:                                            ; preds = %bb.bo
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 152) #30
          to label %.noexc362 unwind label %bb.bq

.noexc362:                                        ; preds = %bb.bp
  unreachable

bb.bq:                                            ; preds = %bb.bp
  %i.ik = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc7RcInnerNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vtag4VTagEECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.af) #27
          to label %.body251 unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.il = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

.body251:                                         ; preds = %bb.bq, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsfh9HxMbthk9_27candle_wasm_example_whisper.exit478
  %.pn210 = phi { ptr, i32 } [ %.pn208, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsfh9HxMbthk9_27candle_wasm_example_whisper.exit478 ], [ %i.ik, %bb.bq ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(32) %i.cr) #27
          to label %.body254 unwind label %bb.ds

bb.bs:                                            ; preds = %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.ii, ptr noundef nonnull align 8 dereferenceable(152) %i.af, i64 152, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.078.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cs, ptr noundef nonnull align 8 dereferenceable(32) %i.cr, i64 32, i1 false)
  %i.im = getelementptr inbounds nuw i8, ptr %i.cs, i64 32 ; 2 uses
  store i32 0, ptr %i.im, align 8
  %.sroa.276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  store ptr %i.ii, ptr %.sroa.276.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  invoke fastcc void @_RINvXNvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ct, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.cs, i64 noundef 2)
          to label %bb.bu unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bv, %bb.bu, %bb.bs
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %.body274

.body274:                                         ; preds = %bb.by, %bb.bt
  %eh.lpad-body275 = phi { ptr, i32 } [ %i.in, %bb.bt ], [ %i.it, %bb.by ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom9listeners9ListenersECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr null, i64 undef) #27
          to label %bb.hk unwind label %bb.ds

bb.bu:                                            ; preds = %bb.bs
  %i.io = invoke noundef ptr @_RNvMs1_NtNtNtCs9OLX912zl7o_3yew4html9component8childrenINtB5_16ChildrenRendererNtNtNtBb_11virtual_dom5vnode5VNodeE3newCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ct)
          to label %bb.bv unwind label %bb.bt

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  invoke void @_RNvXs6_NtNtNtCs9OLX912zl7o_3yew4html9component8childrenNtNtNtBb_11virtual_dom5vlist5VListINtNtCsf3Ta7LF998c_4core7convert4FromINtB5_16ChildrenRendererNtNtBV_5vnode5VNodeEE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ae, ptr noundef %i.io)
          to label %bb.bw unwind label %bb.bt

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store i64 1, ptr %i.ad, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 1, ptr %i.ip, align 8
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.iq, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 32, i1 false)
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !1345
  %i.ir = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 4, 153) 48, i64 noundef range(i64 4, 9) 8) #31, !noalias !1345 ; 3 uses
  %i.is = icmp eq ptr %i.ir, null
  br i1 %i.is, label %bb.bx, label %bb.ca, !prof !8

bb.bx:                                            ; preds = %bb.bw
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #30
          to label %.noexc364 unwind label %bb.by

.noexc364:                                        ; preds = %bb.bx
  unreachable

bb.by:                                            ; preds = %bb.bx
  %i.it = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc7RcInnerNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vlist5VListEECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ad) #27
          to label %.body274 unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.iu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.ca:                                            ; preds = %bb.bw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ir, ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %.sroa.04.sroa.0.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.sroa.0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.sroa.0.40..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.cx, i64 24, i1 false)
  %i.iv = load ptr, ptr %i.cw, align 8, !nonnull !5, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.04.sroa.0, ptr noundef nonnull align 8 dereferenceable(40) %i.cu, i64 40, i1 false)
  %i.iw = load ptr, ptr %i.cv, align 8, !noundef !5
  %i.ix = load i64, ptr %i.du, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store i64 1, ptr %i.ac, align 8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 1, ptr %i.iy, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.iz, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.04.sroa.0, i64 64, i1 false)
  %.sroa.04.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  store i32 3, ptr %.sroa.04.sroa.5.0..sroa_idx, align 8
  %.sroa.04.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  store ptr %i.ir, ptr %.sroa.04.sroa.7.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 112
  store ptr %i.iv, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 120
  store ptr null, ptr %.sroa.66.0..sroa_idx, align 8
  %.sroa.88.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 136
  store ptr %i.iw, ptr %.sroa.88.0..sroa_idx, align 8
  %.sroa.99.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  store i64 %i.ix, ptr %.sroa.99.0..sroa_idx, align 8
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !1346
  %i.ja = call noundef align 8 dereferenceable_or_null(152) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 4, 153) 152, i64 noundef range(i64 4, 9) 8) #31, !noalias !1346 ; 3 uses
  %i.jb = icmp eq ptr %i.ja, null
  br i1 %i.jb, label %bb.cb, label %bb.ce, !prof !8

bb.cb:                                            ; preds = %bb.ca
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 152) #30
          to label %.noexc366 unwind label %bb.cc

.noexc366:                                        ; preds = %bb.cb
  unreachable

bb.cc:                                            ; preds = %bb.cb
  %i.jc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc7RcInnerNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vtag4VTagEECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.ac) #27
          to label %.body248 unwind label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.jd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

.body248:                                         ; preds = %bb.cc, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsfh9HxMbthk9_27candle_wasm_example_whisper.exit474
  %.pn214 = phi { ptr, i32 } [ %eh.lpad-body275, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsfh9HxMbthk9_27candle_wasm_example_whisper.exit474 ], [ %i.jc, %bb.cc ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueANtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodej2_ECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(64) %i.cs) #27
          to label %.body unwind label %bb.ds

bb.ce:                                            ; preds = %bb.ca
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.ja, ptr noundef nonnull align 8 dereferenceable(152) %i.ac, i64 152, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.je = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr %i.ja, ptr %i.je, align 8
  store i32 0, ptr %i.cy, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04.sroa.0)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(32) %i.cs)
          to label %bb.cf unwind label %.peel.begin

bb.cf:                                            ; preds = %bb.ce
  %i.jf = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(32) %i.jf)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueANtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodej2_ECsfh9HxMbthk9_27candle_wasm_example_whisper.exit unwind label %.peel.begin

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueANtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodej2_ECsfh9HxMbthk9_27candle_wasm_example_whisper.exit: ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cz, ptr noundef nonnull align 8 dereferenceable(32) %i.cy, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  %i.jg = load i64, ptr %i.do, align 8, !alias.scope !1347, !noundef !5 ; 3 uses
  %i.jh = load i64, ptr %i.da, align 8, !range !17, !alias.scope !1347, !noundef !5
  %i.ji = icmp eq i64 %i.jg, %i.jh
  br i1 %i.ji, label %bb.ci, label %bb.cm

.peel.begin:                                      ; preds = %bb.cf, %bb.ce
  %i.jj = phi i1 [ false, %bb.ce ], [ true, %bb.cf ]
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br i1 %i.jj, label %.body370, label %bb.cg

bb.cg:                                            ; preds = %.peel.begin
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(32) %i.im) #27
          to label %.body370 unwind label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

.body370:                                         ; preds = %.peel.begin, %bb.cg
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(32) %i.cy) #27
          to label %.body unwind label %bb.ds

bb.ci:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueANtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodej2_ECsfh9HxMbthk9_27candle_wasm_example_whisper.exit
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.da)
          to label %bb.cm unwind label %bb.cj, !noalias !1348

bb.cj:                                            ; preds = %bb.ci
  %i.jl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cz) #27
          to label %.body unwind label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.jm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

.body:                                            ; preds = %bb.gr, %bb.gn, %bb.fa, %bb.eo, %bb.dq, %bb.dl, %bb.da, %bb.cw, %bb.cl, %bb.cj, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsfh9HxMbthk9_27candle_wasm_example_whisper.exit466, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsfh9HxMbthk9_27candle_wasm_example_whisper.exit462, %bb.fg, %bb.ev, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsfh9HxMbthk9_27candle_wasm_example_whisper.exit429, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsfh9HxMbthk9_27candle_wasm_example_whisper.exit, %bb.dg, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsfh9HxMbthk9_27candle_wasm_example_whisper.exit470, %.body370, %.body248, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsfh9HxMbthk9_27candle_wasm_example_whisper.exit502
  %.pn227 = phi { ptr, i32 } [ %.pn210.pn.pn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsfh9HxMbthk9_27candle_wasm_example_whisper.exit502 ], [ %.pn225, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsfh9HxMbthk9_27candle_wasm_example_whisper.exit462 ], [ %i.ol, %bb.fg ], [ %i.nx, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsfh9HxMbthk9_27candle_wasm_example_whisper.exit466 ], [ %i.nu, %bb.ev ], [ %.pn220.pn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsfh9HxMbthk9_27candle_wasm_example_whisper.exit429 ], [ %i.lg, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsfh9HxMbthk9_27candle_wasm_example_whisper.exit ], [ %i.ld, %bb.dg ], [ %.pn216, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsfh9HxMbthk9_27candle_wasm_example_whisper.exit470 ], [ %i.jk, %.body370 ], [ %.pn214, %.body248 ], [ %i.od, %bb.fa ], [ %i.nm, %bb.eo ], [ %i.ls, %bb.dq ], [ %i.kq, %bb.da ], [ %i.qi, %bb.gn ], [ %i.jl, %bb.cj ], [ %i.kk, %bb.cw ], [ %i.lm, %bb.dl ], [ %i.jn, %bb.cl ], [ %i.qo, %bb.gr ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeEECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(24) %i.da) #27
          to label %.body269 unwind label %bb.ds

bb.cl:                                            ; preds = %bb.fd
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cm:                                            ; preds = %bb.ci, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueANtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodej2_ECsfh9HxMbthk9_27candle_wasm_example_whisper.exit
  %i.jo = load ptr, ptr %i.dn, align 8, !alias.scope !1347, !nonnull !5, !noundef !5
  %i.jp = getelementptr inbounds nuw [32 x i8], ptr %i.jo, i64 %i.jg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jp, ptr noundef nonnull align 8 dereferenceable(32) %i.cz, i64 32, i1 false)
  %i.jq = add i64 %i.jg, 1
  store i64 %i.jq, ptr %i.do, align 8, !alias.scope !1347
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.087.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  %i.jr = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr @113, ptr %i.jr, align 8
  %i.js = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store i64 2, ptr %i.js, align 8
  store i64 0, ptr %i.bp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31
  %i.jt = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 4, 153) 32, i64 noundef range(i64 4, 9) 8) #31 ; 9 uses
  %i.ju = icmp eq ptr %i.jt, null
  br i1 %i.ju, label %bb.cn, label %bb.cp, !prof !8

bb.cn:                                            ; preds = %bb.cm
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #30
          to label %.noexc377 unwind label %bb.co

.noexc377:                                        ; preds = %bb.cn
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsfh9HxMbthk9_27candle_wasm_example_whisper.exit470: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9OLX912zl7o_3yew11virtual_dom3key3KeyEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit468, %bb.hj, %bb.co
  %.pn216 = phi { ptr, i32 } [ %i.jv, %bb.co ], [ %eh.lpad-body380, %bb.hj ], [ %eh.lpad-body380, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9OLX912zl7o_3yew11virtual_dom3key3KeyEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit468 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsjlHezul7jxg_14implicit_clone6unsync6string7IStringECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bp) #27
          to label %.body unwind label %bb.ds

bb.co:                                            ; preds = %bb.cn
  %i.jv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsfh9HxMbthk9_27candle_wasm_example_whisper.exit470

bb.cp:                                            ; preds = %bb.cm
  store i64 1, ptr %i.jt, align 8
  %.sroa.45.0..sroa_idx.i374 = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  store i64 1, ptr %.sroa.45.0..sroa_idx.i374, align 8
  %.sroa.56.0..sroa_idx.i375 = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  store i64 0, ptr %.sroa.56.0..sroa_idx.i375, align 8
  %.sroa.56.sroa.4.0..sroa.56.0..sroa_idx.sroa_idx.i376 = getelementptr inbounds nuw i8, ptr %i.jt, i64 24
  store i32 0, ptr %.sroa.56.sroa.4.0..sroa.56.0..sroa_idx.sroa_idx.i376, align 8
  store ptr %i.jt, ptr %i.bo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  %i.jw = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.jw, align 8
  %i.jx = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i64 0, ptr %i.jx, align 8
  store i64 0, ptr %i.bn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.494)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.experimental.noalias.scope.decl(metadata !1349)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1350
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1351
  store i64 0, ptr %i.i, align 8, !noalias !1351
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !1351
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !1351
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1351
  %i.jy = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 1610612768, ptr %i.jy, align 8, !noalias !1351
  store ptr %i.i, ptr %i.h, align 8, !noalias !1351
  %i.jz = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @142, ptr %i.jz, align 8, !noalias !1351
  %i.ka = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i.i.i.i = load ptr, ptr %i.ka, align 8, !alias.scope !1349, !noalias !1352, !nonnull !5, !noundef !5
  %i.kb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val1.i.i.i.i = load i64, ptr %i.kb, align 8, !alias.scope !1349, !noalias !1352, !noundef !5
  %i.kc = invoke noundef zeroext i1 @_RNvXsi_NtCsf3Ta7LF998c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i.i, i64 noundef %.val1.i.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtCsgCecv3eZDcN_5alloc6string6StringNtB6_7Display3fmtCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i unwind label %bb.cq, !noalias !1351

bb.cq:                                            ; preds = %bb.cr, %bb.cp
  %i.kd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i) #27
          to label %.body379 unwind label %bb.cs, !noalias !1351

_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtCsgCecv3eZDcN_5alloc6string6StringNtB6_7Display3fmtCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i: ; preds = %bb.cp
  br i1 %i.kc, label %bb.cr, label %_RNvXsB_NtCsgCecv3eZDcN_5alloc6stringRNtB5_6StringNtB5_8ToString9to_stringCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i, !prof !8

bb.cr:                                            ; preds = %_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtCsgCecv3eZDcN_5alloc6string6StringNtB6_7Display3fmtCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @95, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #28
          to label %.noexc.i.i.i unwind label %bb.cq, !noalias !1351

.noexc.i.i.i:                                     ; preds = %bb.cr
  unreachable

bb.cs:                                            ; preds = %bb.cq
  %i.ke = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !1351
  unreachable

_RNvXsB_NtCsgCecv3eZDcN_5alloc6stringRNtB5_6StringNtB5_8ToString9to_stringCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i: ; preds = %_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtCsgCecv3eZDcN_5alloc6string6StringNtB6_7Display3fmtCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !1350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1351
  invoke void @_RNvXs3_NtNtCsjlHezul7jxg_14implicit_clone6unsync6stringNtB5_7IStringINtNtCsf3Ta7LF998c_4core7convert4FromNtNtCsgCecv3eZDcN_5alloc6string6StringE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.j)
          to label %bb.cu unwind label %bb.ct

bb.ct:                                            ; preds = %_RNvXsB_NtCsgCecv3eZDcN_5alloc6stringRNtB5_6StringNtB5_8ToString9to_stringCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i
  %i.kf = landingpad { ptr, i32 }
          cleanup
  br label %.body379

.body379:                                         ; preds = %bb.cq, %bb.ct
  %eh.lpad-body380 = phi { ptr, i32 } [ %i.kf, %bb.ct ], [ %i.kd, %bb.cq ] ; 2 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom9listeners9ListenersECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr null, i64 undef) #27
          to label %bb.hi unwind label %bb.ds

bb.cu:                                            ; preds = %_RNvXsB_NtCsgCecv3eZDcN_5alloc6stringRNtB5_6StringNtB5_8ToString9to_stringCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1350
  %.sroa.494.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.494, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.494.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %.sroa.087.sroa.0.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.087.sroa.0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.087.sroa.0.40..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i64 24, i1 false)
  %.sroa.087.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.087.sroa.6.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.494, i64 28, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.087.sroa.0, ptr noundef nonnull align 8 dereferenceable(40) %i.bn, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.494)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  store i64 1, ptr %i.aa, align 8
  %i.kg = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 1, ptr %i.kg, align 8
  %i.kh = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.kh, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.087.sroa.0, i64 64, i1 false)
  %.sroa.087.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  store i32 1, ptr %.sroa.087.sroa.5.0..sroa_idx, align 8
  %.sroa.588.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 112
  store ptr %i.jt, ptr %.sroa.588.0..sroa_idx, align 8
  %.sroa.689.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 120
  store ptr null, ptr %.sroa.689.0..sroa_idx, align 8
  %.sroa.891.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 136
  store ptr null, ptr %.sroa.891.0..sroa_idx, align 8
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !1353
  %i.ki = call noundef align 8 dereferenceable_or_null(152) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 4, 153) 152, i64 noundef range(i64 4, 9) 8) #31, !noalias !1353 ; 3 uses
  %i.kj = icmp eq ptr %i.ki, null
  br i1 %i.kj, label %bb.cv, label %bb.cy, !prof !8

bb.cv:                                            ; preds = %bb.cu
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 152) #30
          to label %.noexc382 unwind label %bb.cw

.noexc382:                                        ; preds = %bb.cv
  unreachable

bb.cw:                                            ; preds = %bb.cv
  %i.kk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc7RcInnerNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vtag4VTagEECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.aa) #27
          to label %.body unwind label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.kl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.cy:                                            ; preds = %bb.cu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.ki, ptr noundef nonnull align 8 dereferenceable(152) %i.aa, i64 152, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.km = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr %i.ki, ptr %i.km, align 8
  store i32 0, ptr %i.bq, align 8
end_hunk_0
