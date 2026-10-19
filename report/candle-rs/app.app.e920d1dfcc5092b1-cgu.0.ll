Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/app.app.e920d1dfcc5092b1-cgu.0?download=true
inline.NumInlined: 339
inline.NumDeleted: 185
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvCsk0W1NmP9EBN_3app4main:bb.a

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #25
          to label %.noexc11.i.i.i unwind label %bb.ae, !noalias !772

.noexc11.i.i.i:                                   ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ad
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = load i64, ptr %i.bi, align 8, !noalias !774, !noundef !8
  %i.bq = add i64 %i.bp, -1                       ; 2 uses
  store i64 %i.bq, ptr %i.bi, align 8, !noalias !774
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.af, label %.body.i.i

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcINtNtCsf3Ta7LF998c_4core4cell7RefCellINtNtBI_6option6OptionNtNtNtNtCs9OLX912zl7o_3yew4html9component9lifecycle14ComponentStateEEE9drop_slowB1I_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #20
          to label %.body.i.i unwind label %bb.ag, !noalias !772

bb.ag:                                            ; preds = %bb.af
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !noalias !772
  unreachable

bb.ah:                                            ; preds = %bb.ac
  %.sroa.56.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56.0..sroa_idx.i.i.i.i, i8 0, i64 16, i1 false), !noalias !772
  store i64 1, ptr %i.bm, align 8, !noalias !772
  %.sroa.45.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i64 1, ptr %.sroa.45.0..sroa_idx.i.i.i.i, align 8, !noalias !772
  %.sroa.56.sroa.4.0..sroa.56.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.56.sroa.4.0..sroa.56.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !772
  %.sroa.56.sroa.5.0..sroa.56.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  store i64 0, ptr %.sroa.56.sroa.5.0..sroa.56.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !772
  %i.bt = atomicrmw add ptr @_RNvNtNtNtNtCs9OLX912zl7o_3yew4html9component5scope12feat_csr_ssr15COMP_ID_COUNTER, i64 1 seq_cst, align 8, !noalias !772 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !772
  store ptr %i.bm, ptr %i.m, align 8, !noalias !771
  %.sroa.4.0..sroa_idx52.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.bi, ptr %.sroa.4.0..sroa_idx52.i.i, align 8, !noalias !771
  %.sroa.5.0..sroa_idx53.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr null, ptr %.sroa.5.0..sroa_idx53.i.i, align 8, !noalias !771
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 %i.bt, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !771
  %i.bu = invoke noundef nonnull ptr @_RNvMs7_NtNtCs9OLX912zl7o_3yew10dom_bundle12subtree_rootNtB5_8BSubtree11create_root(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.t)
          to label %bb.aj unwind label %bb.ai, !noalias !771 ; 4 uses

bb.ai:                                            ; preds = %bb.bt, %bb.ah
  %.sroa.016.1.i.i = phi i8 [ 0, %bb.bt ], [ 1, %bb.ah ]
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body40.i.i

.body40.i.i:                                      ; preds = %bb.br, %bb.bq, %bb.ax, %.body.i37.i.i, %bb.ai
  %.sroa.016.1.lpad-body.i.i = phi i8 [ %.sroa.016.1.i.i, %bb.ai ], [ 0, %bb.br ], [ 0, %bb.bq ], [ 0, %bb.ax ], [ 0, %.body.i37.i.i ]
  %eh.lpad-body41.i.i = phi { ptr, i32 } [ %i.bv, %bb.ai ], [ %.pn.pn.pn.ph.i.i.i, %bb.br ], [ %.pn.pn.pn.ph.i.i.i, %bb.bq ], [ %.pn.i38.i.i, %bb.ax ], [ %.pn.i38.i.i, %.body.i37.i.i ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs9OLX912zl7o_3yew4html9component5scope5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppEECsk0W1NmP9EBN_3app(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %.body.i.i unwind label %bb.cc, !noalias !771

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !771
  %i.bw = load i32, ptr %i.t, align 4, !noalias !771, !noundef !8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !771
  store i32 0, ptr %i.k, align 8, !noalias !771
  %.sroa.424.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 0, ptr %.sroa.424.0..sroa_idx.i.i, align 4, !noalias !771
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !771
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !771
  store ptr %i.bu, ptr %i.h, align 8, !noalias !775
  store ptr %i.al, ptr %i.g, align 8, !noalias !775
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !775
  store i32 3, ptr %i.f, align 8, !noalias !775
  %.sroa.48.sroa.0.sroa.3.0..sroa.48.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 0, ptr %.sroa.48.sroa.0.sroa.3.0..sroa.48.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !775
  %.sroa.48.sroa.0.sroa.4.0..sroa.48.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.48.sroa.0.sroa.4.0..sroa.48.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !775
  %.sroa.48.sroa.0.sroa.5.0..sroa.48.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.48.sroa.6.0..sroa.48.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.48.sroa.0.sroa.5.0..sroa.48.0..sroa_idx.sroa_idx.i.i.i, i8 0, i64 16, i1 false), !noalias !775
  store i8 1, ptr %.sroa.48.sroa.6.0..sroa.48.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !775
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !775
  %i.bx = invoke noundef nonnull ptr @_RNvMs1_NtNtCs9OLX912zl7o_3yew10dom_bundle8positionNtB5_14DynamicDomSlot3new(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.k)
          to label %bb.al unwind label %bb.ak, !noalias !776 ; 7 uses

bb.ak:                                            ; preds = %bb.aj
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.al:                                            ; preds = %bb.aj
  store ptr %i.bx, ptr %i.e, align 8, !noalias !775
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !775
  %i.bz = load i64, ptr %i.bx, align 8, !noalias !775, !noundef !8 ; 2 uses
  %i.ca = icmp ne i64 %i.bz, 0
  call void @llvm.assume(i1 %i.ca)
  %i.cb = add i64 %i.bz, 1                        ; 2 uses
  store i64 %i.cb, ptr %i.bx, align 8, !noalias !775
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %bb.am, label %bb.an, !prof !20

bb.am:                                            ; preds = %bb.al
  call void @llvm.trap()
  unreachable

bb.an:                                            ; preds = %bb.al
  store i32 1, ptr %i.d, align 8, !noalias !775
  %.sroa.420.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.bx, ptr %.sroa.420.0..sroa_idx.i.i.i, align 8, !noalias !775
  %i.cd = invoke noundef nonnull ptr @_RNvMs1_NtNtCs9OLX912zl7o_3yew10dom_bundle8positionNtB5_14DynamicDomSlot3new(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.d)
          to label %bb.ao unwind label %bb.bj, !noalias !775 ; 9 uses

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !775
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !775
  %i.ce = load i64, ptr %i.cd, align 8, !noalias !775, !noundef !8 ; 2 uses
  %i.cf = icmp ne i64 %i.ce, 0
  call void @llvm.assume(i1 %i.cf)
  %i.cg = add i64 %i.ce, 1                        ; 2 uses
  store i64 %i.cg, ptr %i.cd, align 8, !noalias !775
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %bb.ap, label %bb.aq, !prof !20

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.trap()
  unreachable

bb.aq:                                            ; preds = %bb.ao
  store ptr %i.cd, ptr %i.c, align 8, !noalias !775
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !775
  %i.ci = load i64, ptr %i.bm, align 8, !noalias !777, !noundef !8 ; 2 uses
  %i.cj = icmp ne i64 %i.ci, 0
  call void @llvm.assume(i1 %i.cj)
  %i.ck = add i64 %i.ci, 1                        ; 2 uses
  store i64 %i.ck, ptr %i.bm, align 8, !noalias !777
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %bb.ar, label %bb.as, !prof !20

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.trap()
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.cm = load i64, ptr %i.bi, align 8, !noalias !777, !noundef !8 ; 2 uses
  %i.cn = icmp ne i64 %i.cm, 0
  call void @llvm.assume(i1 %i.cn)
  %i.co = add i64 %i.cm, 1                        ; 2 uses
  store i64 %i.co, ptr %i.bi, align 8, !noalias !777
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %bb.at, label %_RNvXs2_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB5_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsk0W1NmP9EBN_3app.exit.i.i.i, !prof !20

bb.at:                                            ; preds = %bb.as
  call void @llvm.trap()
  unreachable

_RNvXs2_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB5_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsk0W1NmP9EBN_3app.exit.i.i.i: ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 64, i1 false), !noalias !775
  %.sroa.4.0..sroa_idx62.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.bu, ptr %.sroa.4.0..sroa_idx62.i.i.i, align 8, !noalias !775
  %.sroa.5.0..sroa_idx63.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr %i.bx, ptr %.sroa.5.0..sroa_idx63.i.i.i, align 8, !noalias !775
  %.sroa.6.0..sroa_idx64.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %i.cd, ptr %.sroa.6.0..sroa_idx64.i.i.i, align 8, !noalias !775
  %.sroa.7.0..sroa_idx65.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i32 %i.bw, ptr %.sroa.7.0..sroa_idx65.i.i.i, align 8, !noalias !775
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %i.al, ptr %i.cq, align 8, !noalias !775
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store ptr %i.bm, ptr %i.cr, align 8, !noalias !775
  %.sroa.4.0..sroa_idx44.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr %i.bi, ptr %.sroa.4.0..sroa_idx44.i.i.i, align 8, !noalias !775
  %.sroa.545.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store ptr null, ptr %.sroa.545.0..sroa_idx.i.i.i, align 8, !noalias !775
  %.sroa.6.0..sroa_idx46.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store i64 %i.bt, ptr %.sroa.6.0..sroa_idx46.i.i.i, align 8, !noalias !775
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !778
  %i.cs = call noundef align 8 dereferenceable_or_null(136) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 177) 136, i64 noundef range(i64 1, 9) 8) #21, !noalias !778 ; 4 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %bb.au, label %bb.ay, !prof !18

bb.au:                                            ; preds = %_RNvXs2_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB5_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsk0W1NmP9EBN_3app.exit.i.i.i
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 136) #25
          to label %.noexc.i39.i.i unwind label %bb.av, !noalias !775

.noexc.i39.i.i:                                   ; preds = %bb.au
  unreachable

bb.av:                                            ; preds = %bb.au
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs9OLX912zl7o_3yew4html9component9lifecycle12CreateRunnerNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppEECsk0W1NmP9EBN_3app(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.b) #23
          to label %.body.i37.i.i unwind label %bb.aw, !noalias !775

bb.aw:                                            ; preds = %bb.av
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !noalias !775
  unreachable

.body.i37.i.i:                                    ; preds = %bb.bh, %.body27.i.i.i, %0, %bb.av
  %.pn.i38.i.i = phi { ptr, i32 } [ %i.cu, %bb.av ], [ %i.df, %bb.bh ], [ %i.dk, %.body27.i.i.i ], [ %1, %0 ] ; 2 uses
  %i.cw = load i64, ptr %i.cd, align 8, !noalias !779, !noundef !8
  %i.cx = add i64 %i.cw, -1                       ; 2 uses
  store i64 %i.cx, ptr %i.cd, align 8, !noalias !779
  %i.cy = icmp eq i64 %i.cx, 0
  br i1 %i.cy, label %bb.ax, label %.body40.i.i

bb.ax:                                            ; preds = %.body.i37.i.i
  invoke void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcINtNtCsf3Ta7LF998c_4core4cell7RefCellNtNtNtCs9OLX912zl7o_3yew10dom_bundle8position7DomSlotEE9drop_slowB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #20
          to label %.body40.i.i unwind label %bb.bi, !noalias !775

0:                                                ; preds = %bb.bg
  %1 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i37.i.i

bb.ay:                                            ; preds = %_RNvXs2_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB5_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsk0W1NmP9EBN_3app.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.cs, ptr noundef nonnull align 8 dereferenceable(136) %i.b, i64 136, i1 false), !noalias !775
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !775
  %i.cz = load i64, ptr %i.bi, align 8, !noalias !775, !noundef !8 ; 2 uses
  %i.da = icmp ne i64 %i.cz, 0
  call void @llvm.assume(i1 %i.da)
  %i.db = add i64 %i.cz, 1                        ; 2 uses
  store i64 %i.db, ptr %i.bi, align 8, !noalias !775
  %i.dc = icmp eq i64 %i.db, 0
  br i1 %i.dc, label %bb.az, label %bb.ba, !prof !20

bb.az:                                            ; preds = %bb.ay
  call void @llvm.trap()
  unreachable

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !775
  store ptr %i.bi, ptr %i.a, align 8, !noalias !775
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !775
  %i.dd = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 177) 8, i64 noundef range(i64 1, 9) 8) #21, !noalias !775 ; 3 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %bb.bb, label %bb.bf, !prof !18

bb.bb:                                            ; preds = %bb.ba
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #25
          to label %.noexc32.i.i.i unwind label %bb.bc, !noalias !775

.noexc32.i.i.i:                                   ; preds = %bb.bb
  unreachable

bb.bc:                                            ; preds = %bb.bb
  %i.df = landingpad { ptr, i32 }
          cleanup
  %i.dg = load i64, ptr %i.bi, align 8, !noalias !780, !noundef !8
  %i.dh = add i64 %i.dg, -1                       ; 2 uses
  store i64 %i.dh, ptr %i.bi, align 8, !noalias !780
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %bb.bd, label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  invoke void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcINtNtCsf3Ta7LF998c_4core4cell7RefCellINtNtBI_6option6OptionNtNtNtNtCs9OLX912zl7o_3yew4html9component9lifecycle14ComponentStateEEE9drop_slowB1I_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #20
          to label %bb.bh unwind label %bb.be, !noalias !775

bb.be:                                            ; preds = %bb.bd
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !noalias !775
  unreachable

.body27.i.i.i:                                    ; preds = %bb.bf
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %.body.i37.i.i

bb.bf:                                            ; preds = %bb.ba
  store ptr %i.bi, ptr %i.dd, align 8, !noalias !775
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !775
  invoke void @_RNvNtNtCs9OLX912zl7o_3yew9scheduler12feat_csr_ssr21push_component_create(i64 noundef %i.bt, ptr noundef nonnull %i.cs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15, ptr noundef nonnull %i.dd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @16)
          to label %bb.bg unwind label %.body27.i.i.i, !noalias !775

bb.bg:                                            ; preds = %bb.bf
  invoke void @_RNvNtNtCs9OLX912zl7o_3yew9scheduler4arch5start()
          to label %bb.bs unwind label %0, !noalias !775

bb.bh:                                            ; preds = %bb.bd, %bb.bc
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCs9OLX912zl7o_3yew9scheduler8RunnableEL_EECsk0W1NmP9EBN_3app(ptr nonnull %i.cs, ptr nonnull @15) #23
          to label %.body.i37.i.i unwind label %bb.bi, !noalias !775

bb.bi:                                            ; preds = %bb.br, %bb.bl, %bb.bk, %bb.bh, %bb.ax
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !noalias !775
  unreachable

bb.bj:                                            ; preds = %bb.an
  %i.dm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dn = load i64, ptr %i.bx, align 8, !noalias !781, !noundef !8
  %i.do = add i64 %i.dn, -1                       ; 2 uses
  store i64 %i.do, ptr %i.bx, align 8, !noalias !781
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  invoke void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcINtNtCsf3Ta7LF998c_4core4cell7RefCellNtNtNtCs9OLX912zl7o_3yew10dom_bundle8position7DomSlotEE9drop_slowB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #20
          to label %bb.bl unwind label %bb.bi, !noalias !775

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.ak
  %.pn.pn.pn.ph.i.i.i = phi { ptr, i32 } [ %i.by, %bb.ak ], [ %i.dm, %bb.bk ], [ %i.dm, %bb.bj ] ; 2 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew10dom_bundle5bnode5BNodeECsk0W1NmP9EBN_3app(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.f)
          to label %bb.bm unwind label %bb.bi, !noalias !775

bb.bm:                                            ; preds = %bb.bl
  %i.dq = load i64, ptr %i.al, align 8, !noalias !782, !noundef !8
  %i.dr = add i64 %i.dq, -1                       ; 2 uses
  store i64 %i.dr, ptr %i.al, align 8, !noalias !782
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  call fastcc void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcuE9drop_slowCsk0W1NmP9EBN_3app(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.g) #20, !noalias !775
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.dt = icmp ugt i32 %i.bw, 1027
  br i1 %i.dt, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  call void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %i.bw) #21, !noalias !783
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.du = load i64, ptr %i.bu, align 8, !noalias !784, !noundef !8
  %i.dv = add i64 %i.du, -1                       ; 2 uses
  store i64 %i.dv, ptr %i.bu, align 8, !noalias !784
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %bb.br, label %.body40.i.i

bb.br:                                            ; preds = %bb.bq
  invoke void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcNtNtNtCs9OLX912zl7o_3yew10dom_bundle12subtree_root11SubtreeDataE9drop_slowBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #20
          to label %.body40.i.i unwind label %bb.bi, !noalias !775

bb.bs:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !775
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !775
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !775
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !771
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !771
  store ptr %i.cd, ptr %i.l, align 8, !noalias !771
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !771
  %i.dx = load i64, ptr %i.cd, align 8, !noalias !785, !noundef !8
  %i.dy = add i64 %i.dx, -1                       ; 2 uses
  store i64 %i.dy, ptr %i.cd, align 8, !noalias !785
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %bb.bt, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew10dom_bundle8position14DynamicDomSlotECsk0W1NmP9EBN_3app.exit.i.i

bb.bt:                                            ; preds = %bb.bs
  invoke void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcINtNtCsf3Ta7LF998c_4core4cell7RefCellNtNtNtCs9OLX912zl7o_3yew10dom_bundle8position7DomSlotEE9drop_slowB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #20
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew10dom_bundle8position14DynamicDomSlotECsk0W1NmP9EBN_3app.exit.i.i unwind label %bb.ai, !noalias !771

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew10dom_bundle8position14DynamicDomSlotECsk0W1NmP9EBN_3app.exit.i.i: ; preds = %bb.bt, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !771
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !771
  %i.ea = trunc nuw i8 %.sroa.012.2.i.i to i1
  %i.eb = load i64, ptr %i.r, align 8, !range !7, !noalias !771
  %.not.i.i42.i.i = icmp ne i64 %i.eb, 2
  %or.cond70.not.i.i = select i1 %i.ea, i1 %.not.i.i42.i.i, i1 false
  br i1 %or.cond70.not.i.i, label %bb.bu, label %_RNvMs0_NtCs9OLX912zl7o_3yew8rendererINtB5_8RendererNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE6renderCsk0W1NmP9EBN_3app.exit

bb.bu:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew10dom_bundle8position14DynamicDomSlotECsk0W1NmP9EBN_3app.exit.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  invoke void @_RNvMs2_NtCs2ZSzJGZRtAv_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ec)
          to label %.thread.i.i unwind label %.thread56.i.i, !noalias !771

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs95szcO5cFRN_7tracing4span7EnteredECsk0W1NmP9EBN_3app.exit50.i.i: ; preds = %bb.cd, %.body.i.i
  %i.ed = trunc nuw i8 %.sroa.014.0.i.i to i1
  br i1 %i.ed, label %bb.ce, label %bb.cb

.thread56.i.i:                                    ; preds = %bb.bu
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

.thread.i.i:                                      ; preds = %bb.bu
  %.pr.i.i = load i64, ptr %i.r, align 8, !alias.scope !786, !noalias !771 ; 2 uses
  %.not.i.i44.i.i = icmp eq i64 %.pr.i.i, 2
  br i1 %.not.i.i44.i.i, label %_RNvMs0_NtCs9OLX912zl7o_3yew8rendererINtB5_8RendererNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE6renderCsk0W1NmP9EBN_3app.exit, label %bb.bv

bb.bv:                                            ; preds = %.thread.i.i
  %i.ef = load i64, ptr %i.ec, align 8, !range !14, !alias.scope !787, !noalias !771, !noundef !8
  %i.eg = invoke noundef zeroext i1 @_RNvMs2_NtCs2ZSzJGZRtAv_12tracing_core10dispatcherNtB5_8Dispatch9try_close(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.r, i64 noundef %i.ef)
          to label %bb.bx unwind label %bb.bw, !noalias !771 ; 0 uses

bb.bw:                                            ; preds = %bb.bv
  %i.eh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs95szcO5cFRN_7tracing4span5InnerEECsk0W1NmP9EBN_3app(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.r) #23
          to label %common.resume unwind label %bb.ca, !noalias !771

bb.bx:                                            ; preds = %bb.bv
  call void @llvm.experimental.noalias.scope.decl(metadata !788)
  call void @llvm.experimental.noalias.scope.decl(metadata !789)
  call void @llvm.experimental.noalias.scope.decl(metadata !790)
  call void @llvm.experimental.noalias.scope.decl(metadata !791)
  %i.ei = icmp eq i64 %.pr.i.i, 0
  br i1 %i.ei, label %_RNvMs0_NtCs9OLX912zl7o_3yew8rendererINtB5_8RendererNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE6renderCsk0W1NmP9EBN_3app.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ej = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !792)
  call void @llvm.experimental.noalias.scope.decl(metadata !793)
  %i.ek = load ptr, ptr %i.ej, align 8, !alias.scope !794, !noalias !771, !nonnull !8, !noundef !8
  %i.el = atomicrmw sub ptr %i.ek, i64 1 release, align 8, !noalias !795
  %i.em = icmp eq i64 %i.el, 1
  br i1 %i.em, label %bb.bz, label %_RNvMs0_NtCs9OLX912zl7o_3yew8rendererINtB5_8RendererNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE6renderCsk0W1NmP9EBN_3app.exit

bb.bz:                                            ; preds = %bb.by
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDNtNtCs2ZSzJGZRtAv_12tracing_core10subscriber10SubscriberNtNtCsf3Ta7LF998c_4core6marker4SendNtB1D_4SyncEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ej) #20, !noalias !770
  br label %_RNvMs0_NtCs9OLX912zl7o_3yew8rendererINtB5_8RendererNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE6renderCsk0W1NmP9EBN_3app.exit

bb.ca:                                            ; preds = %bb.bw
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !noalias !771
  unreachable

bb.cb:                                            ; preds = %bb.ce, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs95szcO5cFRN_7tracing4span7EnteredECsk0W1NmP9EBN_3app.exit50.i.i
  %.pn33.i.i = phi { ptr, i32 } [ %.pn.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs95szcO5cFRN_7tracing4span7EnteredECsk0W1NmP9EBN_3app.exit50.i.i ], [ %.pn3160.i.i, %bb.ce ] ; 3 uses
  %.sroa.016.3.i.i = phi i8 [ %.sroa.016.0.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs95szcO5cFRN_7tracing4span7EnteredECsk0W1NmP9EBN_3app.exit50.i.i ], [ %.sroa.016.261.i.i, %bb.ce ]
  %cond.i.i = icmp eq i8 %.sroa.016.3.i.i, 0
  br i1 %cond.i.i, label %common.resume, label %bb.cf

bb.cc:                                            ; preds = %bb.ce, %bb.cd, %.body40.i.i
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !noalias !771
  unreachable

bb.cd:                                            ; preds = %.body.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  invoke void @_RNvMs2_NtCs2ZSzJGZRtAv_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ep)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs95szcO5cFRN_7tracing4span7EnteredECsk0W1NmP9EBN_3app.exit50.i.i unwind label %bb.cc, !noalias !771

bb.ce:                                            ; preds = %.thread56.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs95szcO5cFRN_7tracing4span7EnteredECsk0W1NmP9EBN_3app.exit50.i.i
  %.sroa.016.261.i.i = phi i8 [ 0, %.thread56.i.i ], [ %.sroa.016.0.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs95szcO5cFRN_7tracing4span7EnteredECsk0W1NmP9EBN_3app.exit50.i.i ]
  %.pn3160.i.i = phi { ptr, i32 } [ %i.ee, %.thread56.i.i ], [ %.pn.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs95szcO5cFRN_7tracing4span7EnteredECsk0W1NmP9EBN_3app.exit50.i.i ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs95szcO5cFRN_7tracing4span4SpanECsk0W1NmP9EBN_3app(ptr noalias nofree noundef align 8 dereferenceable(40) %i.r) #23
          to label %bb.cb unwind label %bb.cc, !noalias !771

bb.cf:                                            ; preds = %bb.cb
  %i.eq = load i64, ptr %i.al, align 8, !noalias !796, !noundef !8
  %i.er = add i64 %i.eq, -1                       ; 2 uses
  store i64 %i.er, ptr %i.al, align 8, !noalias !796
  %i.es = icmp eq i64 %i.er, 0
  br i1 %i.es, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  call fastcc void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcuE9drop_slowCsk0W1NmP9EBN_3app(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.s) #20, !noalias !771
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.val.i.i = load i32, ptr %i.t, align 4, !alias.scope !797, !noalias !771, !noundef !8 ; 2 uses
  %i.et = icmp ugt i32 %.val.i.i, 1027
  br i1 %i.et, label %common.resume.sink.split, label %common.resume

bb.ci:                                            ; preds = %bb.j
  %i.eu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ev = icmp ugt i32 %i.ak, 1027
  br i1 %i.ev, label %common.resume.sink.split, label %common.resume

bb.cj:                                            ; preds = %_RNvMs0_NtCs9OLX912zl7o_3yew8rendererINtB5_8RendererNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE10with_propsCsk0W1NmP9EBN_3app.exit
  %i.ew = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ex = icmp ugt i32 %i.ak, 1027
  br i1 %i.ex, label %common.resume.sink.split, label %common.resume

_RNvMs0_NtCs9OLX912zl7o_3yew8rendererINtB5_8RendererNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE6renderCsk0W1NmP9EBN_3app.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew10dom_bundle8position14DynamicDomSlotECsk0W1NmP9EBN_3app.exit.i.i, %.thread.i.i, %bb.bx, %bb.by, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !771
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !770
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !770
end_hunk_0
