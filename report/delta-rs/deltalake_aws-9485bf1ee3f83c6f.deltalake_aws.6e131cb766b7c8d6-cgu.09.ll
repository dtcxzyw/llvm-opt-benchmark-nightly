inline.NumInlined: 1606
inline.NumDeleted: 619
begin_hunk_0_@_RINvMNtNtCskQDtHcQtBkN_5tokio7runtime7runtimeNtB3_7Runtime8block_onNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0EB19_:bb.a

bb.bs:                                            ; preds = %bb.br
  %i.gh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i24.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.gg, 2
  br i1 %.not.i.i.i24.i.i.i.i.i.i.i.i.i.i.i.i, label %.body.i.i.i.i.i.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  invoke void @_RNvXNvNtNtCskQDtHcQtBkN_5tokio4task4coop11with_budgetNtB2_10ResetGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.b)
          to label %.body.i.i.i.i.i.i.i.i unwind label %bb.bv, !noalias !217

_RNCNCINvMs7_NtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtBa_9CoreGuard8block_onINtNtCsbvkFyIu7lgC_4core3pin3PinQNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0EE0s_0B29_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.br
  %.not.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.gg, 2
  br i1 %.not.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc30.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bu

bb.bu:                                            ; preds = %_RNCNCINvMs7_NtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtBa_9CoreGuard8block_onINtNtCsbvkFyIu7lgC_4core3pin3PinQNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0EE0s_0B29_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvXNvNtNtCskQDtHcQtBkN_5tokio4task4coop11with_budgetNtB2_10ResetGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.b)
          to label %.noexc30.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i.i.i.i.i, !noalias !202

bb.bv:                                            ; preds = %bb.bx, %bb.bw, %bb.bt
  %i.gi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32, !noalias !217
  unreachable

bb.bw:                                            ; preds = %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gk = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %i.fq)
          to label %.noexc9.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.bv, !noalias !217

.noexc9.i.i.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.bw
  br i1 %i.gk, label %bb.bx, label %.body.i.i.i.i.i.i.i.i

bb.bx:                                            ; preds = %.noexc9.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask7dealloc(ptr noundef nonnull %i.fq)
          to label %.body.i.i.i.i.i.i.i.i unwind label %bb.bv, !noalias !217

.noexc30.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.bu, %_RNCNCINvMs7_NtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtBa_9CoreGuard8block_onINtNtCsbvkFyIu7lgC_4core3pin3PinQNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0EE0s_0B29_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !250
  %i.gl = load i64, ptr %i.cv, align 8, !noalias !246, !noundef !7
  %i.gm = icmp eq i64 %i.gl, 0
  br i1 %i.gm, label %bb.by, label %.noexc31.i.i.i.i.i.i.i.i.i.i.i.i, !prof !191

bb.by:                                            ; preds = %.noexc30.i.i.i.i.i.i.i.i.i.i.i.i
  store i64 -1, ptr %i.cv, align 8, !noalias !246
  %i.gn = load ptr, ptr %i.cy, align 8, !noalias !246, !align !154, !noundef !7 ; 3 uses
  store ptr null, ptr %i.cy, align 8, !noalias !246
  %.not.i25.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gn, null
  br i1 %.not.i25.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bz, label %bb.ck, !prof !60

.noexc31.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.noexc30.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #34
          to label %.noexc7.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i, !noalias !202

.noexc7.i.i.i.i.i.i.i.i.i.i:                      ; preds = %.noexc31.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

bb.bz:                                            ; preds = %bb.by
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #34
          to label %bb.cb unwind label %bb.ca, !noalias !217

bb.ca:                                            ; preds = %bb.bz
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %.thread57.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.cb:                                            ; preds = %bb.bz, %bb.bo
  unreachable

bb.cc:                                            ; preds = %bb.ce, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread4CoreEEECs9rVkZwOUgsI_13deltalake_aws.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cd
  %i.gp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32, !noalias !217
  unreachable

bb.cd:                                            ; preds = %bb.bo
  %i.gq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread4CoreEECs9rVkZwOUgsI_13deltalake_aws(ptr nonnull align 8 %.sroa.0.4140.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread4CoreEEECs9rVkZwOUgsI_13deltalake_aws.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.cc, !noalias !217

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread4CoreEEECs9rVkZwOUgsI_13deltalake_aws.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cd, %bb.bp
  %.pn.i21.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.fv, %bb.bp ], [ %i.gq, %bb.cd ] ; 2 uses
  %i.gr = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %i.fq)
          to label %.noexc15.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.cc, !noalias !217

.noexc15.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread4CoreEEECs9rVkZwOUgsI_13deltalake_aws.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.gr, label %bb.ce, label %.body.i.i.i.i.i.i.i.i

bb.ce:                                            ; preds = %.noexc15.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask7dealloc(ptr noundef nonnull %i.fq)
          to label %.body.i.i.i.i.i.i.i.i unwind label %bb.cc, !noalias !217

bb.cf:                                            ; preds = %bb.bk
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.0.4140.i.i.i.i.i.i.i.i.i.i.i.i, i64 96
  invoke void @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime7metrics5batchNtB2_12MetricsBatch30end_processing_scheduled_tasks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.gs)
          to label %bb.cg unwind label %.thread66.loopexit.split-lp.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, !noalias !217

bb.cg:                                            ; preds = %bb.cf
  %i.gt = invoke noundef zeroext i1 @_RNvMs1_NtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB5_7Context16has_pending_work(ptr noundef nonnull align 8 %i.ct, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %.sroa.0.4140.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.ch unwind label %.thread66.loopexit.split-lp.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, !noalias !217

bb.ch:                                            ; preds = %bb.cg
  %i.gu = load ptr, ptr %i.ct, align 8, !noalias !216, !nonnull !7, !noundef !7
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 128 ; 2 uses
  br i1 %i.gt, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.gw = invoke noundef nonnull align 8 ptr @_RNvMs1_NtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB5_7Context4park(ptr noundef nonnull align 8 %i.ct, ptr noalias noundef nonnull align 8 %.sroa.0.4140.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 128 %i.gv)
          to label %.noexc8.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.i.i.i.i.i.i.i, !noalias !202

bb.cj:                                            ; preds = %bb.ch
  %i.gx = invoke noundef nonnull align 8 ptr @_RNvMs1_NtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB5_7Context10park_yield(ptr noundef nonnull align 8 %i.ct, ptr noalias noundef nonnull align 8 %.sroa.0.4140.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 128 %i.gv)
          to label %.noexc8.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.i.i.i.i.i.i.i, !noalias !202

.noexc8.i.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.cj, %bb.ci
  %.sroa.010.0.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gw, %bb.ci ], [ %i.gx, %bb.cj ] ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i.i.i.i.i.i.i.i.i.i.i, i64 96
  invoke void @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime7metrics5batchNtB2_12MetricsBatch32start_processing_scheduled_tasks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.gy)
          to label %.backedge.i.i.i.i.i.i.i.i.i.i.i.i.backedge unwind label %.thread66.loopexit.split-lp.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, !noalias !217

.backedge.i.i.i.i.i.i.i.i.i.i.i.i.backedge:       ; preds = %.noexc8.i.i.i.i.i.i.i.i.i.i, %.noexc5.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.2.i.i.i.i.i.i.i.i.i.i.i.i.be = phi ptr [ %i.fj, %.noexc5.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.010.0.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc8.i.i.i.i.i.i.i.i.i.i ]
  br label %.backedge.i.i.i.i.i.i.i.i.i.i.i.i

bb.ck:                                            ; preds = %bb.by
  store i64 0, ptr %i.cv, align 8, !noalias !246
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.fd, %i.fa
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.thread66.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i, %.thread66.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i.i, %.thread66.loopexit.split-lp.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, %.thread66.loopexit.i.i.i.i.i.i.i.i.i.i.i.i
  %.pn56.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.dl, %.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, %.thread66.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %lpad.loopexit70.i.i.i.i.i.i.i.i.i.i.i.i, %.thread66.loopexit.split-lp.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp71.i.i.i.i.i.i.i.i.i.i.i.i, %.thread66.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.054.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cz, %.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.4140.i.i.i.i.i.i.i.i.i.i.i.i, %.thread66.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.1.ph.ph.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.thread66.loopexit.split-lp.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cz, %.thread66.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.054.i.i.i.i.i.i.i.i.i.i.i.i) ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread4CoreEECs9rVkZwOUgsI_13deltalake_aws(ptr nonnull %.sroa.0.054.i.i.i.i.i.i.i.i.i.i.i.i) #30
          to label %.body.i.i.i.i.i.i.i.i unwind label %bb.cl, !noalias !217

bb.cl:                                            ; preds = %.thread66.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32, !noalias !217
  unreachable

.thread57.sink.split.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %bb.ca, %bb.aq
  %.pn55.ph.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.go, %bb.ca ], [ %i.ec, %bb.aq ]
  %i.ha = load i64, ptr %i.cv, align 8, !noalias !216, !noundef !7
  %i.hb = add i64 %i.ha, 1
  store i64 %i.hb, ptr %i.cv, align 8, !noalias !216
  br label %.body.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.bu
  %lpad.loopexit.i.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i.i

.loopexit.split-lp.loopexit.i.i.i.i.i.i.i.i.i.i:  ; preds = %bb.cj, %bb.ci, %bb.bi, %bb.au, %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit10.i.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc31.i.i.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp11.i.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i.i

bb.cm:                                            ; preds = %bb.ak
  %i.hc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread4CoreEECs9rVkZwOUgsI_13deltalake_aws(ptr nonnull %i.cz)
          to label %.body.i.i.i.i.i.i unwind label %bb.cn, !noalias !201

bb.cn:                                            ; preds = %bb.cm
  %i.hd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32, !noalias !201
  unreachable

_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE8try_withNCINvBW_13set_schedulerTINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtBY_9scheduler14current_thread4CoreEINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB3z_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEENCINvMs7_B2R_NtB2R_9CoreGuard5enterNCINvB6l_8block_onINtNtB3z_3pin3PinQNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0EE0B3u_E0E0B2f_EB7v_.exit.i.i.i.i.i.i.i: ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(408) %.sroa.7.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(408) %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i, i64 408, i1 false), !noalias !251
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !209
  store ptr %i.dj, ptr %i.di, align 8, !noalias !202
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(408) %.sroa.7.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(408) %.sroa.7.i.i.i.i.i.i.i.i, i64 408, i1 false), !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i.i.i)
  %i.he = icmp eq i64 %.sroa.449.16.copyload.i.i.i.i.i.i.i.i.i.i.i.i, -9223372036854775805
  br i1 %i.he, label %.noexc.i.i.i.i.i.i, label %bb.co, !prof !46

.noexc.i.i.i.i.i.i:                               ; preds = %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE8try_withNCINvBW_13set_schedulerTINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtBY_9scheduler14current_thread4CoreEINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB3z_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEENCINvMs7_B2R_NtB2R_9CoreGuard5enterNCINvB6l_8block_onINtNtB3z_3pin3PinQNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0EE0B3u_E0E0B2f_EB7v_.exit.i.i.i.i.i.i.i, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE8try_withNCINvBW_13set_schedulerTINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtBY_9scheduler14current_thread4CoreEINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB3z_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEENCINvMs7_B2R_NtB2R_9CoreGuard5enterNCINvB6l_8block_onINtNtB3z_3pin3PinQNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0EE0B3u_E0E0B2f_EB7v_.exit.thread.i.i.i.i.i.i.i
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #33
          to label %.noexc15.i.i.i.i.i.i unwind label %bb.ai, !noalias !188

.noexc15.i.i.i.i.i.i:                             ; preds = %.noexc.i.i.i.i.i.i
  unreachable

bb.co:                                            ; preds = %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE8try_withNCINvBW_13set_schedulerTINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtBY_9scheduler14current_thread4CoreEINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB3z_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEENCINvMs7_B2R_NtB2R_9CoreGuard5enterNCINvB6l_8block_onINtNtB3z_3pin3PinQNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0EE0B3u_E0E0B2f_EB7v_.exit.i.i.i.i.i.i.i, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE8try_withNCINvBW_13set_schedulerTINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtBY_9scheduler14current_thread4CoreEINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB3z_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEENCINvMs7_B2R_NtB2R_9CoreGuard5enterNCINvB6l_8block_onINtNtB3z_3pin3PinQNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0EE0B3u_E0E0B2f_EB7v_.exit.thread4.i.i.i.i.i.i.i
  %.sroa.0.0.i8.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.4140.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE8try_withNCINvBW_13set_schedulerTINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtBY_9scheduler14current_thread4CoreEINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB3z_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEENCINvMs7_B2R_NtB2R_9CoreGuard5enterNCINvB6l_8block_onINtNtB3z_3pin3PinQNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0EE0B3u_E0E0B2f_EB7v_.exit.thread4.i.i.i.i.i.i.i ], [ %i.eq, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE8try_withNCINvBW_13set_schedulerTINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtBY_9scheduler14current_thread4CoreEINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB3z_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEENCINvMs7_B2R_NtB2R_9CoreGuard5enterNCINvB6l_8block_onINtNtB3z_3pin3PinQNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0EE0B3u_E0E0B2f_EB7v_.exit.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.0.0.copyload1.i.i.i.i.i = phi i64 [ -9223372036854775806, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE8try_withNCINvBW_13set_schedulerTINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtBY_9scheduler14current_thread4CoreEINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB3z_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEENCINvMs7_B2R_NtB2R_9CoreGuard5enterNCINvB6l_8block_onINtNtB3z_3pin3PinQNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0EE0B3u_E0E0B2f_EB7v_.exit.thread4.i.i.i.i.i.i.i ], [ %.sroa.449.16.copyload.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE8try_withNCINvBW_13set_schedulerTINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtBY_9scheduler14current_thread4CoreEINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB3z_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEENCINvMs7_B2R_NtB2R_9CoreGuard5enterNCINvB6l_8block_onINtNtB3z_3pin3PinQNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0EE0B3u_E0E0B2f_EB7v_.exit.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.6.16..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(408) %.sroa.6.16..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(408) %.sroa.7.i.i.i.i.i.i.i, i64 408, i1 false), !noalias !252
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i8.i.i.i.i.i.i.i) ]
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i, ptr %i.h, align 16, !noalias !252
  %i.hf = load i64, ptr %i.cv, align 8, !noalias !188, !noundef !7
  %i.hg = icmp eq i64 %i.hf, 0
  br i1 %i.hg, label %bb.cp, label %bb.cr, !prof !191

bb.cp:                                            ; preds = %bb.co
  store i64 -1, ptr %i.cv, align 8, !noalias !188
  %.val14.i.i.i.i.i.i = load ptr, ptr %i.cy, align 8, !noalias !188, !align !154, !noundef !7 ; 2 uses
  %i.hh = icmp eq ptr %.val14.i.i.i.i.i.i, null
  br i1 %i.hh, label %bb.cu, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread4CoreEECs9rVkZwOUgsI_13deltalake_aws(ptr nonnull %.val14.i.i.i.i.i.i)
          to label %._crit_edge.i.i.i.i.i.i unwind label %bb.cs, !noalias !188

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.cq
  %.pre132.i.i.i.i.i.i = load i64, ptr %i.cv, align 8, !noalias !188
  %i.hi = add i64 %.pre132.i.i.i.i.i.i, 1
  br label %bb.cu

bb.cr:                                            ; preds = %bb.co
  invoke void @_RNvNtCsbvkFyIu7lgC_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #34
          to label %bb.ag unwind label %bb.cx, !noalias !188

bb.cs:                                            ; preds = %bb.cq
  %i.hj = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.0.0.i8.i.i.i.i.i.i.i, ptr %i.cy, align 8, !noalias !188
  %i.hk = load i64, ptr %i.cv, align 8, !noalias !188, !noundef !7
  %i.hl = add i64 %i.hk, 1
  store i64 %i.hl, ptr %i.cv, align 8, !noalias !188
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread4CoreEEECs9rVkZwOUgsI_13deltalake_aws.exit19.i.i.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread4CoreEEECs9rVkZwOUgsI_13deltalake_aws.exit19.i.i.i.i.i.i: ; preds = %._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread4CoreEEECs9rVkZwOUgsI_13deltalake_aws.exit19_crit_edge.i.i.i.i.i.i, %bb.cs
  %i.hm = phi i64 [ %.pre.i.i.i.i.i.i, %._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread4CoreEEECs9rVkZwOUgsI_13deltalake_aws.exit19_crit_edge.i.i.i.i.i.i ], [ %.sroa.0.0.copyload1.i.i.i.i.i, %bb.cs ]
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.hr, %._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread4CoreEEECs9rVkZwOUgsI_13deltalake_aws.exit19_crit_edge.i.i.i.i.i.i ], [ %i.hj, %bb.cs ] ; 2 uses
  %i.hn = icmp eq i64 %i.hm, -9223372036854775806
  br i1 %i.hn, label %.body.i.i.i.i.i.i, label %bb.ct

bb.ct:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread4CoreEEECs9rVkZwOUgsI_13deltalake_aws.exit19.i.i.i.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 16 dereferenceable(416) %i.h)
          to label %.body.i.i.i.i.i.i unwind label %bb.ah, !noalias !188

bb.cu:                                            ; preds = %._crit_edge.i.i.i.i.i.i, %bb.cp
  %i.ho = phi i64 [ %i.hi, %._crit_edge.i.i.i.i.i.i ], [ 0, %bb.cp ]
  store ptr %.sroa.0.0.i8.i.i.i.i.i.i.i, ptr %i.cy, align 8, !noalias !188
  store i64 %i.ho, ptr %i.cv, align 8, !noalias !188
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(408) %.sroa.5.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(408) %.sroa.6.16..sroa_idx.i.i.i.i.i.i, i64 408, i1 false), !noalias !253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !252
  invoke void @_RNvXs8_NtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB5_9CoreGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.m)
          to label %_RINvMs7_NtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB6_9CoreGuard5enterNCINvB2_8block_onINtNtCsbvkFyIu7lgC_4core3pin3PinQNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0EE0INtNtB1L_6option6OptionINtNtB1L_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB2j_.exit.i.i.i.i.i unwind label %bb.cv, !noalias !188

bb.cv:                                            ; preds = %bb.cu
  %i.hp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler7ContextECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.m) #30
          to label %.body.i.i.i unwind label %bb.cw, !noalias !188

bb.cw:                                            ; preds = %bb.cv
  %i.hq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32, !noalias !188
  unreachable

bb.cx:                                            ; preds = %bb.cr
  %i.hr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread4CoreEECs9rVkZwOUgsI_13deltalake_aws(ptr nonnull %.sroa.0.0.i8.i.i.i.i.i.i.i)
          to label %._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread4CoreEEECs9rVkZwOUgsI_13deltalake_aws.exit19_crit_edge.i.i.i.i.i.i unwind label %bb.ah, !noalias !188

._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread4CoreEEECs9rVkZwOUgsI_13deltalake_aws.exit19_crit_edge.i.i.i.i.i.i: ; preds = %bb.cx
  %.pre.i.i.i.i.i.i = load i64, ptr %i.h, align 16, !range !55, !alias.scope !254, !noalias !252
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread4CoreEEECs9rVkZwOUgsI_13deltalake_aws.exit19.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.ct, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread4CoreEEECs9rVkZwOUgsI_13deltalake_aws.exit19.i.i.i.i.i.i, %bb.cm, %.body.i.i.i.i.i.i.i.i, %bb.ai, %bb.af, %bb.aa
  %.pn.pn.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.cu, %bb.aa ], [ %i.da, %bb.af ], [ %i.hc, %bb.cm ], [ %i.de, %bb.ai ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i ], [ %.pn.i.i.i.i.i.i, %bb.ct ], [ %.pn.i.i.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread4CoreEEECs9rVkZwOUgsI_13deltalake_aws.exit19.i.i.i.i.i.i ]
  invoke void @_RNvXs8_NtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB5_9CoreGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.m)
          to label %bb.cz unwind label %bb.cy, !noalias !188

bb.cy:                                            ; preds = %.body.i.i.i.i.i.i
  %i.hs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler7ContextECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.m) #30
          to label %.body.i.i.i.i.i unwind label %bb.da, !noalias !188

bb.cz:                                            ; preds = %.body.i.i.i.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler7ContextECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.m)
          to label %.body.i.i.i unwind label %bb.ah, !noalias !257

bb.da:                                            ; preds = %bb.cy
  %i.ht = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32, !noalias !188
  unreachable

_RINvMs7_NtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB6_9CoreGuard5enterNCINvB2_8block_onINtNtCsbvkFyIu7lgC_4core3pin3PinQNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0EE0INtNtB1L_6option6OptionINtNtB1L_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB2j_.exit.i.i.i.i.i: ; preds = %bb.cu
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler7ContextECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.m)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !151

.noexc8.i.i.i:                                    ; preds = %_RINvMs7_NtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB6_9CoreGuard5enterNCINvB2_8block_onINtNtCsbvkFyIu7lgC_4core3pin3PinQNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0EE0INtNtB1L_6option6OptionINtNtB1L_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB2j_.exit.i.i.i.i.i
  %.not.i.i.i.i7.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i, -9223372036854775806
  br i1 %.not.i.i.i.i7.i, label %.noexc8.i.i.i.i, label %bb.db, !prof !60

.noexc8.i.i.i.i:                                  ; preds = %.noexc8.i.i.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @14, ptr noundef nonnull inttoptr (i64 171 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #33
          to label %.noexc9.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !151

.noexc9.i.i.i:                                    ; preds = %.noexc8.i.i.i.i
  unreachable

bb.db:                                            ; preds = %.noexc8.i.i.i
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i, ptr %0, align 16, !alias.scope !258, !noalias !259
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(408) %.sroa.5.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(408) %.sroa.5.i.i.i.i.i, i64 408, i1 false), !noalias !259
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !152
  br label %bb.du

bb.dc:                                            ; preds = %bb.dd, %.thread.i.i.i.i, %bb.x
  %i.hu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32, !noalias !155
  unreachable

.thread.i.i.i.i:                                  ; preds = %bb.x, %bb.w, %.thread9.i.i.i.i
  %.pn5.i.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i.i.i, %.thread9.i.i.i.i ], [ %i.cl, %bb.w ], [ %i.cl, %bb.x ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread9CoreGuardECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.o) #30
          to label %.body.i.i.i unwind label %bb.dc, !noalias !155

.loopexit.i.i.i.i:                                ; preds = %.noexc7.i.i.i
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.df
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.dd:                                            ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i
  %lpad.phi.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4sync6notify8NotifiedECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.k) #30
          to label %.body.i.i.i unwind label %bb.dc, !noalias !155

bb.de:                                            ; preds = %.noexc7.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !260)
  %i.hv = load i64, ptr %i.i, align 16, !range !263, !alias.scope !264, !noalias !266, !noundef !7 ; 3 uses
  %i.hw = icmp eq i64 %i.hv, -9223372036854775805
  br i1 %i.hw, label %bb.df, label %bb.dg, !prof !60

bb.df:                                            ; preds = %bb.de
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 27, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @67, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #34
          to label %.noexc9.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i, !noalias !155

.noexc9.i.i.i.i:                                  ; preds = %bb.df
  unreachable

bb.dg:                                            ; preds = %bb.de
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(408) %.sroa.6.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(408) %.sroa.6.0..sroa_idx2.i.i.i.i, i64 408, i1 false), !alias.scope !267, !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !152
  %.not2.i.i.i.i = icmp eq i64 %i.hv, -9223372036854775806
  br i1 %.not2.i.i.i.i, label %bb.dn, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  store i64 %i.hv, ptr %0, align 16, !alias.scope !268, !noalias !269
  %.sroa.6.0..sroa_idx.i5.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(408) %.sroa.6.0..sroa_idx.i5.i.i.i, ptr noundef nonnull align 8 dereferenceable(408) %.sroa.6.i.i.i.i, i64 408, i1 false), !noalias !269
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !152
  invoke void @_RNvXsb_NtNtCskQDtHcQtBkN_5tokio4sync6notifyNtB5_8NotifiedNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.k)
          to label %bb.dk unwind label %bb.di, !noalias !155

bb.di:                                            ; preds = %bb.dh
  %i.hx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i = load ptr, ptr %i.cd, align 8, !noalias !152, !align !154, !noundef !7 ; 2 uses
  %i.hy = icmp eq ptr %.val2.i.i.i.i.i, null
  br i1 %i.hy, label %.body.i.i.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %.val3.i.i.i.i.i = load ptr, ptr %i.ce, align 8, !noalias !152
  %i.hz = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i, i64 24
  %i.ia = load ptr, ptr %i.hz, align 8, !noalias !155, !nonnull !7, !noundef !7
  invoke void %i.ia(ptr noundef %.val3.i.i.i.i.i)
          to label %.body.i.i.i unwind label %bb.dm, !noalias !155, !inline_history !270

bb.dk:                                            ; preds = %bb.dh
  %.val.i.i.i.i.i = load ptr, ptr %i.cd, align 8, !noalias !152, !align !154, !noundef !7 ; 2 uses
  %i.ib = icmp eq ptr %.val.i.i.i.i.i, null
  br i1 %i.ib, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4sync6notify8NotifiedECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %.val1.i.i.i.i.i = load ptr, ptr %i.ce, align 8, !noalias !152
  %i.ic = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 24
  %i.id = load ptr, ptr %i.ic, align 8, !noalias !155, !nonnull !7, !noundef !7
  invoke void %i.id(ptr noundef %.val1.i.i.i.i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4sync6notify8NotifiedECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !151, !inline_history !271

bb.dm:                                            ; preds = %bb.dj
  %i.ie = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_RINvMs_NtNtNtCsaB04DkjCm5a_10aws_config4meta11credentials5chainNtB5_24CredentialsProviderChain9first_tryReNtNtNtBb_3sts11assume_role18AssumeRoleProviderECs9rVkZwOUgsI_13deltalake_aws:bb.a
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config3sts11assume_role18AssumeRoleProviderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(776) %3) #30
          to label %bb.j unwind label %bb.i

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %i.f, align 8, !alias.scope !572, !noalias !577
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %2, ptr %i.g, align 8, !alias.scope !572, !noalias !577
  store i64 -9223372036854775808, ptr %i.b, align 8, !alias.scope !572, !noalias !577
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %i.a, ptr noundef nonnull align 8 dereferenceable(776) %3, i64 776, i1 false)
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !580
  %i.h = tail call noundef align 8 dereferenceable_or_null(776) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 9977) 776, i64 noundef 8) #22, !noalias !580 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.h, !prof !60

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 776) #34
          to label %.noexc9 unwind label %bb.f

.noexc9:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config3sts11assume_role18AssumeRoleProviderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(776) %i.a) #30
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

.body:                                            ; preds = %bb.f
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.b) #30
          to label %bb.c unwind label %bb.i

bb.h:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %i.h, ptr noundef nonnull align 8 dereferenceable(776) %3, i64 776, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.h, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr @22, ptr %.sroa.53.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  ret void

bb.i:                                             ; preds = %.thread, %.body
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.j:                                             ; preds = %bb.c, %.thread
  %.pn.pn14 = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.e, %.thread ]
  resume { ptr, i32 } %.pn.pn14
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsr_NtCs2pqxYH9ZEk8_3std4pathNtB6_7PathBuf4pushNtB6_9ComponentECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %1, align 8, !range !583, !alias.scope !584, !noundef !7 ; 2 uses
  %i.b = icmp samesign ugt i8 %i.a, 5
  %i.c = zext nneg i8 %i.a to i64
  %i.d = add nsw i64 %i.c, -5
  %i.e = select i1 %i.b, i64 %i.d, i64 0          ; 2 uses
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %_RNvXs6_NtCs2pqxYH9ZEk8_3std4pathNtB5_9ComponentINtNtCsbvkFyIu7lgC_4core7convert5AsRefNtB5_4PathE6as_ref.exit
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.3.0.copyload.i.i = load ptr, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !584, !nonnull !7, !noundef !7
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !584
  br label %_RNvXs6_NtCs2pqxYH9ZEk8_3std4pathNtB5_9ComponentINtNtCsbvkFyIu7lgC_4core7convert5AsRefNtB5_4PathE6as_ref.exit

bb.d:                                             ; preds = %bb.a
  br label %_RNvXs6_NtCs2pqxYH9ZEk8_3std4pathNtB5_9ComponentINtNtCsbvkFyIu7lgC_4core7convert5AsRefNtB5_4PathE6as_ref.exit

bb.e:                                             ; preds = %bb.a
  br label %_RNvXs6_NtCs2pqxYH9ZEk8_3std4pathNtB5_9ComponentINtNtCsbvkFyIu7lgC_4core7convert5AsRefNtB5_4PathE6as_ref.exit

bb.f:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !584, !nonnull !7, !noundef !7
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !584, !noundef !7
  br label %_RNvXs6_NtCs2pqxYH9ZEk8_3std4pathNtB5_9ComponentINtNtCsbvkFyIu7lgC_4core7convert5AsRefNtB5_4PathE6as_ref.exit

_RNvXs6_NtCs2pqxYH9ZEk8_3std4pathNtB5_9ComponentINtNtCsbvkFyIu7lgC_4core7convert5AsRefNtB5_4PathE6as_ref.exit: ; preds = %bb.a, %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.6.0.i.i = phi i64 [ %.sroa.4.0.copyload.i.i, %bb.c ], [ %i.i, %bb.f ], [ 1, %bb.d ], [ 2, %bb.e ], [ %i.e, %bb.a ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.3.0.copyload.i.i, %bb.c ], [ %i.g, %bb.f ], [ @71, %bb.d ], [ @72, %bb.e ], [ @70, %bb.a ]
  tail call void @_RNvMsr_NtCs2pqxYH9ZEk8_3std4pathNtB5_7PathBuf5__push(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef %.sroa.6.0.i.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs2pqxYH9ZEk8_3std2fs4readNtNtB4_4path7PathBufECs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !7
  invoke void @_RNvNvNtCs2pqxYH9ZEk8_3std2fs4read5inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #30
          to label %common.resume unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret void

bb.f:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs2pqxYH9ZEk8_3std2fs4readRNtNtB4_4path4PathECs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvNvNtCs2pqxYH9ZEk8_3std2fs4read5inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i64 @_RINvNtCs6Po7BT7Nknu_5alloc4sync11data_offsetINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB4_5boxed3BoxDNtNtNtB2z_6future6future6Futurep6OutputINtNtB2z_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB2z_6marker4SendEL_EEEEECs9rVkZwOUgsI_13deltalake_aws(ptr nofree noundef readnone captures(none) %0) unnamed_addr #1 {
bb.a:
  ret i64 16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i64 @_RINvNtCs6Po7BT7Nknu_5alloc4sync11data_offsetINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEB2F_(ptr nofree noundef readnone captures(none) %0) unnamed_addr #1 {
bb.a:
  ret i64 16
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !7 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !589, !invariant.load !7
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #22
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !589, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #22
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !590)
  %i.a = load i64, ptr %0, align 8, !range !18, !alias.scope !590, !noundef !7
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !590, !noundef !7 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.d, align 8, !alias.scope !590 ; 6 uses
  %i.e = icmp eq ptr %.val.i, null
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.f = load ptr, ptr %.val1.i, align 8, !invariant.load !7, !noalias !590 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void %i.f(ptr noundef nonnull %.val.i)
          to label %bb.e unwind label %bb.g, !noalias !590

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !450, !invariant.load !7, !noalias !590 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !589, !invariant.load !7, !noalias !590
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.h, i64 noundef range(i64 1, 536870913) %i.k) #22, !noalias !590
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !450, !invariant.load !7, !noalias !590 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !589, !invariant.load !7, !noalias !590
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.n, i64 noundef range(i64 1, 536870913) %i.q) #22, !noalias !590
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i.i.i: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %bb.b, %bb.e, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEB2N_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !18, !noundef !7
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEB2o_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = load i8, ptr %i.d, align 8, !range !593, !noundef !7
  switch i8 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEB2o_.exit [
    i8 0, label %bb.c
    i8 3, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %i.c, align 8, !range !594, !alias.scope !595, !noundef !7
  %i.g = icmp eq i64 %i.f, -9223372036854775790
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

common.resume.i.i.i:                              ; preds = %bb.n, %.body.i.i.i, %bb.e
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.s, %.body.i.i.i ], [ %i.i, %bb.e ], [ %i.aa, %bb.n ]
  resume { ptr, i32 } %common.resume.op.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i: ; preds = %bb.d
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEB2o_.exit

bb.g:                                             ; preds = %bb.c
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEB2o_.exit

bb.h:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val.i.i.i = load ptr, ptr %i.k, align 8       ; 5 uses
  %i.l = getelementptr i8, ptr %0, i64 120
  %.val2.i.i.i = load ptr, ptr %i.l, align 8, !nonnull !7, !align !154, !noundef !7 ; 5 uses
  %i.m = load ptr, ptr %.val2.i.i.i, align 8, !invariant.load !7 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  invoke void %i.m(ptr noundef nonnull %.val.i.i.i)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !589, !invariant.load !7
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #22
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i

bb.l:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %.body.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !589, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #22
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.m, %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.y) #30
          to label %common.resume.i.i.i unwind label %bb.p

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.k, %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i unwind label %bb.n

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %common.resume.i.i.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEB2o_.exit

bb.p:                                             ; preds = %.body.i.i.i
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEB2o_.exit: ; preds = %bb.a, %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i, %bb.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB17_6string6StringEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !337, !noundef !7
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtBL_6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtBL_6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs9hC3HWJ95bf_11aws_sdk_sts5types17__provided_context15ProvidedContextEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !337, !noundef !7
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs9hC3HWJ95bf_11aws_sdk_sts5types17__provided_context15ProvidedContextEECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs9hC3HWJ95bf_11aws_sdk_sts5types17__provided_context15ProvidedContextENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs9hC3HWJ95bf_11aws_sdk_sts5types17__provided_context15ProvidedContextEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9hC3HWJ95bf_11aws_sdk_sts5types17__provided_context15ProvidedContextENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtNtCs9hC3HWJ95bf_11aws_sdk_sts5types17__provided_context15ProvidedContextEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtNtCs9hC3HWJ95bf_11aws_sdk_sts5types17__provided_context15ProvidedContextEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs9hC3HWJ95bf_11aws_sdk_sts5types17__provided_context15ProvidedContextEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9hC3HWJ95bf_11aws_sdk_sts5types17__provided_context15ProvidedContextENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs9hC3HWJ95bf_11aws_sdk_sts5types23__policy_descriptor_type20PolicyDescriptorTypeEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !337, !noundef !7
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs9hC3HWJ95bf_11aws_sdk_sts5types23__policy_descriptor_type20PolicyDescriptorTypeEECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs9hC3HWJ95bf_11aws_sdk_sts5types23__policy_descriptor_type20PolicyDescriptorTypeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs9hC3HWJ95bf_11aws_sdk_sts5types23__policy_descriptor_type20PolicyDescriptorTypeEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9hC3HWJ95bf_11aws_sdk_sts5types23__policy_descriptor_type20PolicyDescriptorTypeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtNtCs9hC3HWJ95bf_11aws_sdk_sts5types23__policy_descriptor_type20PolicyDescriptorTypeEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtNtCs9hC3HWJ95bf_11aws_sdk_sts5types23__policy_descriptor_type20PolicyDescriptorTypeEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs9hC3HWJ95bf_11aws_sdk_sts5types23__policy_descriptor_type20PolicyDescriptorTypeEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9hC3HWJ95bf_11aws_sdk_sts5types23__policy_descriptor_type20PolicyDescriptorTypeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs9hC3HWJ95bf_11aws_sdk_sts5types4__tag3TagEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !337, !noundef !7
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs9hC3HWJ95bf_11aws_sdk_sts5types4__tag3TagEECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs9hC3HWJ95bf_11aws_sdk_sts5types4__tag3TagENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs9hC3HWJ95bf_11aws_sdk_sts5types4__tag3TagEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9hC3HWJ95bf_11aws_sdk_sts5types4__tag3TagENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtNtCs9hC3HWJ95bf_11aws_sdk_sts5types4__tag3TagEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtNtCs9hC3HWJ95bf_11aws_sdk_sts5types4__tag3TagEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs9hC3HWJ95bf_11aws_sdk_sts5types4__tag3TagEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9hC3HWJ95bf_11aws_sdk_sts5types4__tag3TagENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjPG5xYjJYir_9aws_types14service_config17LoadServiceConfigEL_EEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !7   ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjPG5xYjJYir_9aws_types14service_config17LoadServiceConfigEL_EECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjPG5xYjJYir_9aws_types14service_config17LoadServiceConfigEL_EECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
end_hunk_1
begin_hunk_2_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEECs9rVkZwOUgsI_13deltalake_aws:bb.a
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %common.resume.i unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit11.i: ; preds = %bb.w
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.z:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit13.i unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %common.resume.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit13.i: ; preds = %bb.z
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.ac:                                            ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit15.i unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %common.resume.i unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit15.i: ; preds = %bb.ac
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.af:                                            ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.al)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.ag:                                            ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !894)
  %i.an = load i64, ptr %i.am, align 8, !range !897, !alias.scope !898, !noundef !7 ; 3 uses
  %i.ao = icmp ne i64 %i.an, -9223372036854775788
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = add nsw i64 %i.an, 9223372036854775790
  %i.aq = icmp ugt i64 %i.an, -9223372036854775791
  %i.ar = select i1 %i.aq, i64 %i.ap, i64 2
  switch i64 %i.ar, label %bb.ah [
    i64 0, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorECs9rVkZwOUgsI_13deltalake_aws.exit
    i64 1, label %bb.ak
    i64 2, label %bb.ap
    i64 3, label %bb.aq
    i64 4, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorECs9rVkZwOUgsI_13deltalake_aws.exit
    i64 5, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorECs9rVkZwOUgsI_13deltalake_aws.exit
    i64 6, label %bb.bg
    i64 7, label %bb.bj
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %.body.i.i unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.ah
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.bn

bb.ak:                                            ; preds = %bb.ag
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val4.i.i = load ptr, ptr %i.av, align 16, !alias.scope !898, !nonnull !7, !noundef !7 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !899)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !902)
  %i.aw = load i64, ptr %.val4.i.i, align 8, !range !885, !alias.scope !905, !noalias !894, !noundef !7
  switch i64 %i.aw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit.i.i [
    i64 0, label %bb.al
    i64 1, label %bb.an
  ]

bb.al:                                            ; preds = %bb.ak
  %i.ax = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 16
  %.val1.i.i.i.i.i.i = load i64, ptr %i.ax, align 8, !alias.scope !905, !noalias !894, !noundef !7 ; 2 uses
  %i.ay = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.ay, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.az = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 8
  %.val.i.i.i.i.i.i = load ptr, ptr %i.az, align 8, !alias.scope !905, !noalias !894, !nonnull !7, !noundef !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i.i, i64 noundef 1) #22, !noalias !906
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.an:                                            ; preds = %bb.ak
  %i.ba = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ba)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.ao, !noalias !894

bb.ao:                                            ; preds = %bb.an
  %i.bb = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i, i64 noundef 40, i64 noundef 8) #22, !noalias !894
  br label %common.resume.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.an, %bb.am, %bb.al, %bb.ak
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i, i64 noundef 40, i64 noundef 8) #22, !noalias !894
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.ap:                                            ; preds = %bb.ag
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.am)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.aq:                                            ; preds = %bb.ag
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !907)
  %i.bd = load i64, ptr %i.bc, align 16, !range !910, !alias.scope !911, !noundef !7 ; 3 uses
  %i.be = icmp ne i64 %i.bd, -9223372036854775803
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = xor i64 %i.bd, -9223372036854775808
  %i.bg = icmp slt i64 %i.bd, 0
  %i.bh = select i1 %i.bg, i64 %i.bf, i64 5
  switch i64 %i.bh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorECs9rVkZwOUgsI_13deltalake_aws.exit [
    i64 5, label %bb.ar
    i64 8, label %bb.au
    i64 9, label %bb.ba
  ]

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %common.resume.i unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.ar
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bc)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.au:                                            ; preds = %bb.aq
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val2.i.i.i = load ptr, ptr %i.bk, align 8, !alias.scope !911 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val3.i.i.i = load ptr, ptr %i.bl, align 16, !alias.scope !911, !nonnull !7, !align !154, !noundef !7 ; 5 uses
  %i.bm = load ptr, ptr %.val3.i.i.i, align 8, !invariant.load !7, !noalias !912 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i.i) ]
  invoke void %i.bm(ptr noundef nonnull %.val2.i.i.i)
          to label %bb.aw unwind label %bb.ay, !noalias !912

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.bn = getelementptr inbounds nuw i8, ptr %.val3.i.i.i, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !range !450, !invariant.load !7, !noalias !912 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.bq = getelementptr inbounds nuw i8, ptr %.val3.i.i.i, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !range !589, !invariant.load !7, !noalias !912
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i, i64 noundef range(i64 1, 0) %i.bo, i64 noundef range(i64 1, 536870913) %i.br) #22, !noalias !912
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.ay:                                            ; preds = %bb.av
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.val3.i.i.i, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !range !450, !invariant.load !7, !noalias !912 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %common.resume.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.bw = getelementptr inbounds nuw i8, ptr %.val3.i.i.i, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !range !589, !invariant.load !7, !noalias !912
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i, i64 noundef range(i64 1, 0) %i.bu, i64 noundef range(i64 1, 536870913) %i.bx) #22, !noalias !912
  br label %common.resume.i

bb.ba:                                            ; preds = %bb.aq
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val.i.i.i = load ptr, ptr %i.by, align 8, !alias.scope !911 ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val1.i.i.i = load ptr, ptr %i.bz, align 16, !alias.scope !911, !nonnull !7, !align !154, !noundef !7 ; 5 uses
  %i.ca = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !7, !noalias !912 ; 2 uses
  %.not.i4.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i4.i.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  invoke void %i.ca(ptr noundef nonnull %.val.i.i.i)
          to label %bb.bc unwind label %bb.be, !noalias !912

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.cb = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !range !450, !invariant.load !7, !noalias !912 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ce = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !range !589, !invariant.load !7, !noalias !912
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.cc, i64 noundef range(i64 1, 536870913) %i.cf) #22, !noalias !912
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.be:                                            ; preds = %bb.bb
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !range !450, !invariant.load !7, !noalias !912 ; 2 uses
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %common.resume.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ck = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !range !589, !invariant.load !7, !noalias !912
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.ci, i64 noundef range(i64 1, 536870913) %i.cl) #22, !noalias !912
  br label %common.resume.i

bb.bg:                                            ; preds = %bb.ag
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cm)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cm)
          to label %common.resume.i unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.bg
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cm)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.bj:                                            ; preds = %bb.ag
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.cq = load i64, ptr %i.cp, align 16, !range !913, !alias.scope !914, !noundef !7
  %switch1.i.i.i = icmp slt i64 %i.cq, -9223372036854775783
  br i1 %switch1.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cp)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i5.i.i unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cp)
          to label %common.resume.i unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i5.i.i: ; preds = %bb.bk
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cp)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.bn:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.bn, %bb.ai
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ct, %bb.bn ], [ %i.at, %bb.ai ]
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val2.i.i = load ptr, ptr %i.cu, align 8, !alias.scope !898
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val3.i.i = load ptr, ptr %i.cv, align 16, !alias.scope !898, !nonnull !7, !align !154, !noundef !7
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws(ptr %.val2.i.i, ptr nonnull %.val3.i.i) #30
          to label %common.resume.i unwind label %bb.bt

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val.i.i = load ptr, ptr %i.cw, align 8, !alias.scope !898 ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val1.i.i = load ptr, ptr %i.cx, align 16, !alias.scope !898, !nonnull !7, !align !154, !noundef !7 ; 5 uses
  %i.cy = load ptr, ptr %.val1.i.i, align 8, !invariant.load !7 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.cy(ptr noundef nonnull %.val.i.i)
          to label %bb.bp unwind label %bb.br

bb.bp:                                            ; preds = %bb.bo, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.dc = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.dd = load i64, ptr %i.dc, align 8, !range !589, !invariant.load !7
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.da, i64 noundef range(i64 1, 536870913) %i.dd) #22
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.br:                                            ; preds = %bb.bo
  %i.de = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.dg = load i64, ptr %i.df, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.dh = icmp eq i64 %i.dg, 0
  br i1 %i.dh, label %common.resume.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.di = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.dj = load i64, ptr %i.di, align 8, !range !589, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.dg, i64 noundef range(i64 1, 536870913) %i.dj) #22
  br label %common.resume.i

bb.bt:                                            ; preds = %.body.i.i
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.bu:                                            ; preds = %bb.c
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dl)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit17.i unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dl)
          to label %common.resume.i unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit17.i: ; preds = %bb.bu
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dl)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.bx:                                            ; preds = %bb.c
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.do)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit19.i unwind label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.dp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.do)
          to label %common.resume.i unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit19.i: ; preds = %bb.bx
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.do)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.ca:                                            ; preds = %bb.c
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i = load ptr, ptr %i.dr, align 8, !alias.scope !876, !nonnull !7, !noundef !7 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !917)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !920)
  %i.ds = load i64, ptr %.val2.i, align 8, !range !885, !alias.scope !923, !noundef !7
  switch i64 %i.ds, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit22.i [
    i64 0, label %bb.cb
    i64 1, label %bb.cd
  ]

bb.cb:                                            ; preds = %bb.ca
  %i.dt = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %.val1.i.i.i.i20.i = load i64, ptr %i.dt, align 8, !alias.scope !923, !noundef !7 ; 2 uses
  %i.du = icmp eq i64 %.val1.i.i.i.i20.i, 0
  br i1 %i.du, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit22.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.dv = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %.val.i.i.i.i21.i = load ptr, ptr %i.dv, align 8, !alias.scope !923, !nonnull !7, !noundef !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i21.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i20.i, i64 noundef 1) #22, !noalias !923
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit22.i

bb.cd:                                            ; preds = %bb.ca
  %i.dw = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.dw)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit22.i unwind label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.dx = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef 40, i64 noundef 8) #22
  br label %common.resume.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit22.i: ; preds = %bb.cd, %bb.cc, %bb.cb, %bb.ca
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef 40, i64 noundef 8) #22
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.cf:                                            ; preds = %bb.c
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dy)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit24.i unwind label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.dz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dy)
          to label %common.resume.i unwind label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit24.i: ; preds = %bb.cf
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dy)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.ci:                                            ; preds = %bb.c
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load ptr, ptr %i.eb, align 8, !alias.scope !876 ; 5 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i = load ptr, ptr %i.ec, align 16, !alias.scope !876, !nonnull !7, !align !154, !noundef !7 ; 5 uses
  %i.ed = load ptr, ptr %.val1.i, align 8, !invariant.load !7 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ed, null
  br i1 %.not.i.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.ed(ptr noundef nonnull %.val.i)
          to label %bb.ck unwind label %bb.cm

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.ee = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ef = load i64, ptr %i.ee, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.eg = icmp eq i64 %i.ef, 0
  br i1 %i.eg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.eh = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ei = load i64, ptr %i.eh, align 8, !range !589, !invariant.load !7
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.ef, i64 noundef range(i64 1, 536870913) %i.ei) #22
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.cm:                                            ; preds = %bb.cj
  %i.ej = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.el = load i64, ptr %i.ek, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.em = icmp eq i64 %i.el, 0
  br i1 %i.em, label %common.resume.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.en = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.eo = load i64, ptr %i.en, align 8, !range !589, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.el, i64 noundef range(i64 1, 536870913) %i.eo) #22
  br label %common.resume.i

bb.co:                                            ; preds = %bb.c
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !924)
  %i.eq = load i64, ptr %i.ep, align 8, !range !927, !alias.scope !928, !noundef !7 ; 3 uses
  %i.er = icmp ne i64 %i.eq, -9223372036854775786
  tail call void @llvm.assume(i1 %i.er)
  %i.es = add nsw i64 %i.eq, 9223372036854775790
  %i.et = icmp ugt i64 %i.eq, -9223372036854775791
  %i.eu = select i1 %i.et, i64 %i.es, i64 4
  switch i64 %i.eu, label %bb.cp [
    i64 0, label %bb.cs
    i64 1, label %bb.ct
    i64 2, label %bb.cw
    i64 3, label %bb.dc
    i64 4, label %bb.dd
    i64 5, label %bb.de
    i64 6, label %bb.dh
    i64 7, label %bb.dk
    i64 8, label %bb.dn
    i64 9, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorECs9rVkZwOUgsI_13deltalake_aws.exit
    i64 10, label %bb.dq
    i64 11, label %bb.dt
    i64 12, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorECs9rVkZwOUgsI_13deltalake_aws.exit
    i64 13, label %bb.dw
    i64 14, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorECs9rVkZwOUgsI_13deltalake_aws.exit
    i64 15, label %bb.eb
    i64 16, label %bb.ef
    i64 17, label %bb.ej
  ]

bb.cp:                                            ; preds = %bb.co
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ev)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i37.i unwind label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ew = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ev)
          to label %.body.i35.i unwind label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.ex = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i37.i: ; preds = %bb.cp
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ev)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i38.i unwind label %bb.et

bb.cs:                                            ; preds = %bb.co
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(32) %i.ey)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.ct:                                            ; preds = %bb.co
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ez)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit8.i.i unwind label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.fa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ez)
          to label %common.resume.i unwind label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.fb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit8.i.i: ; preds = %bb.ct
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ez)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.cw:                                            ; preds = %bb.co
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i32.i = load ptr, ptr %i.fc, align 16, !alias.scope !928 ; 5 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val2.i33.i = load ptr, ptr %i.fd, align 8, !alias.scope !928, !nonnull !7, !align !154, !noundef !7 ; 5 uses
  %i.fe = load ptr, ptr %.val2.i33.i, align 8, !invariant.load !7, !noalias !924 ; 2 uses
  %.not.i.i34.i = icmp eq ptr %i.fe, null
  br i1 %.not.i.i34.i, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i32.i) ]
  invoke void %i.fe(ptr noundef nonnull %.val.i32.i)
          to label %bb.cy unwind label %bb.da, !noalias !924

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.ff = getelementptr inbounds nuw i8, ptr %.val2.i33.i, i64 8
  %i.fg = load i64, ptr %i.ff, align 8, !range !450, !invariant.load !7, !noalias !924 ; 2 uses
  %i.fh = icmp eq i64 %i.fg, 0
  br i1 %i.fh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.fi = getelementptr inbounds nuw i8, ptr %.val2.i33.i, i64 16
  %i.fj = load i64, ptr %i.fi, align 8, !range !589, !invariant.load !7, !noalias !924
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i32.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i32.i, i64 noundef range(i64 1, 0) %i.fg, i64 noundef range(i64 1, 536870913) %i.fj) #22, !noalias !924
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.da:                                            ; preds = %bb.cx
  %i.fk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.val2.i33.i, i64 8
  %i.fm = load i64, ptr %i.fl, align 8, !range !450, !invariant.load !7, !noalias !924 ; 2 uses
  %i.fn = icmp eq i64 %i.fm, 0
  br i1 %i.fn, label %common.resume.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.fo = getelementptr inbounds nuw i8, ptr %.val2.i33.i, i64 16
  %i.fp = load i64, ptr %i.fo, align 8, !range !589, !invariant.load !7, !noalias !924
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i32.i, i64 noundef range(i64 1, 0) %i.fm, i64 noundef range(i64 1, 536870913) %i.fp) #22, !noalias !924
  br label %common.resume.i

bb.dc:                                            ; preds = %bb.co
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(32) %i.fq)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.dd:                                            ; preds = %bb.co
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ep)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.de:                                            ; preds = %bb.co
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fr)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit11.i.i unwind label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.fs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fr)
          to label %common.resume.i unwind label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ft = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit11.i.i: ; preds = %bb.de
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fr)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.dh:                                            ; preds = %bb.co
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fu)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit14.i.i unwind label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.fv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fu)
          to label %common.resume.i unwind label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.fw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit14.i.i: ; preds = %bb.dh
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fu)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.dk:                                            ; preds = %bb.co
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fx)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit17.i.i unwind label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.fy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fx)
          to label %common.resume.i unwind label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.fz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit17.i.i: ; preds = %bb.dk
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fx)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.dn:                                            ; preds = %bb.co
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ga)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit20.i.i unwind label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.gb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ga)
          to label %common.resume.i unwind label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.gc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit20.i.i: ; preds = %bb.dn
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ga)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.dq:                                            ; preds = %bb.co
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gd)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit23.i.i unwind label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.ge = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gd)
          to label %common.resume.i unwind label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.gf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit23.i.i: ; preds = %bb.dq
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gd)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.dt:                                            ; preds = %bb.co
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gg)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit26.i.i unwind label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.gh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gg)
          to label %common.resume.i unwind label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.gi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit26.i.i: ; preds = %bb.dt
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gg)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.dw:                                            ; preds = %bb.co
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val5.i.i = load ptr, ptr %i.gj, align 16, !alias.scope !928, !nonnull !7, !noundef !7 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !929)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !932)
  %i.gk = load i64, ptr %.val5.i.i, align 8, !range !885, !alias.scope !935, !noalias !924, !noundef !7
  switch i64 %i.gk, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit.i29.i [
    i64 0, label %bb.dx
    i64 1, label %bb.dz
  ]

bb.dx:                                            ; preds = %bb.dw
  %i.gl = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 16
  %.val1.i.i.i.i.i30.i = load i64, ptr %i.gl, align 8, !alias.scope !935, !noalias !924, !noundef !7 ; 2 uses
  %i.gm = icmp eq i64 %.val1.i.i.i.i.i30.i, 0
  br i1 %i.gm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit.i29.i, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.gn = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 8
  %.val.i.i.i.i.i31.i = load ptr, ptr %i.gn, align 8, !alias.scope !935, !noalias !924, !nonnull !7, !noundef !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i31.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i30.i, i64 noundef 1) #22, !noalias !936
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit.i29.i

bb.dz:                                            ; preds = %bb.dw
  %i.go = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.go)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit.i29.i unwind label %bb.ea, !noalias !924

bb.ea:                                            ; preds = %bb.dz
  %i.gp = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i, i64 noundef 40, i64 noundef 8) #22, !noalias !924
  br label %common.resume.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit.i29.i: ; preds = %bb.dz, %bb.dy, %bb.dx, %bb.dw
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i, i64 noundef 40, i64 noundef 8) #22, !noalias !924
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.eb:                                            ; preds = %bb.co
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val4.i28.i = load ptr, ptr %i.gq, align 8, !alias.scope !928, !nonnull !7, !noundef !7 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !937)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !940)
  %i.gr = load i64, ptr %.val4.i28.i, align 8, !range !885, !alias.scope !943, !noalias !924, !noundef !7
  switch i64 %i.gr, label %bb.em [
    i64 0, label %bb.ec
    i64 1, label %bb.ee
  ]
end_hunk_2
begin_hunk_3_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerINtNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle6PacketuEEECs9rVkZwOUgsI_13deltalake_aws:bb.a
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws(ptr nonnull %i.ab, ptr nonnull %i.ac) #30
          to label %.body.i unwind label %bb.p, !noalias !971

bb.m:                                             ; preds = %bb.k
  store ptr %i.ad, ptr %i.b, align 8, !noalias !971
  %i.ag = icmp eq ptr %i.ad, null
  br i1 %i.ag, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.l, !noalias !971

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !971
  invoke void @_RNvNtCs2pqxYH9ZEk8_3std7process5abort() #34
          to label %bb.o unwind label %bb.l, !noalias !971

bb.o:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  unreachable

bb.p:                                             ; preds = %bb.l
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32, !noalias !971
  unreachable

bb.q:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  invoke void @_RNvMNtNtCs2pqxYH9ZEk8_3std6thread6scopedNtB2_9ScopeData29decrement_num_running_threads(ptr noundef nonnull align 8 %i.ai, i1 noundef zeroext %.sroa.0.0.i.i)
          to label %bb.u unwind label %bb.r, !noalias !965

bb.r:                                             ; preds = %bb.q
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.r, %bb.l
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.aj, %bb.r ], [ %i.af, %bb.l ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !983)
  %i.ak = load ptr, ptr %i.c, align 8, !alias.scope !986, !noundef !7 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6scoped9ScopeDataEEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.s

bb.s:                                             ; preds = %.body.i
  %i.am = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !987
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.t, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6scoped9ScopeDataEEECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6scoped9ScopeDataE9drop_slowCskQDtHcQtBkN_5tokio(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c) #31
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6scoped9ScopeDataEEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.ae

bb.u:                                             ; preds = %bb.q
  %i.ao = atomicrmw sub ptr %i.ae, i64 1 release, align 8, !noalias !992
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.v, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6scoped9ScopeDataEEECs9rVkZwOUgsI_13deltalake_aws.exit4.i

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6scoped9ScopeDataE9drop_slowCskQDtHcQtBkN_5tokio(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c) #31
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6scoped9ScopeDataEEECs9rVkZwOUgsI_13deltalake_aws.exit4.i unwind label %bb.w

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6scoped9ScopeDataEEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.w, %bb.t, %bb.s, %.body.i
  %.pn.i = phi { ptr, i32 } [ %i.aq, %bb.w ], [ %eh.lpad-body.i, %bb.t ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body.i, %bb.s ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.d) #30
          to label %common.resume.i unwind label %bb.ae

bb.w:                                             ; preds = %bb.v
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6scoped9ScopeDataEEECs9rVkZwOUgsI_13deltalake_aws.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6scoped9ScopeDataEEECs9rVkZwOUgsI_13deltalake_aws.exit4.i: ; preds = %bb.v, %bb.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !999)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1002)
  %i.ar = load i64, ptr %i.d, align 8, !range !18, !alias.scope !1005, !noundef !7
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle6PacketuEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.x

bb.x:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6scoped9ScopeDataEEECs9rVkZwOUgsI_13deltalake_aws.exit4.i
  %.val.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !1005, !noundef !7 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i.i.i = load ptr, ptr %i.at, align 8, !alias.scope !1005 ; 6 uses
  %i.au = icmp eq ptr %.val.i.i.i, null
  br i1 %i.au, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle6PacketuEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i) ]
  %i.av = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !7, !noalias !1006 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke void %i.av(ptr noundef nonnull %.val.i.i.i)
          to label %bb.aa unwind label %bb.ac, !noalias !1006

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.aw = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !range !450, !invariant.load !7, !noalias !1006 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle6PacketuEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.az = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !589, !invariant.load !7, !noalias !1006
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.ax, i64 noundef range(i64 1, 536870913) %i.ba) #22, !noalias !1006
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle6PacketuEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.ac:                                            ; preds = %bb.z
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !range !450, !invariant.load !7, !noalias !1006 ; 2 uses
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %common.resume.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bf = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !range !589, !invariant.load !7, !noalias !1006
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.bd, i64 noundef range(i64 1, 536870913) %i.bg) #22, !noalias !1006
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.ad, %bb.ac, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6scoped9ScopeDataEEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.bb, %bb.ac ], [ %i.bb, %bb.ad ], [ %.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6scoped9ScopeDataEEECs9rVkZwOUgsI_13deltalake_aws.exit.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.ae:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6scoped9ScopeDataEEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.t
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle6PacketuEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6scoped9ScopeDataEEECs9rVkZwOUgsI_13deltalake_aws.exit4.i, %bb.x, %bb.aa, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtNtNtCsjyY8HP3IvQ6_12object_store6client4http10connection23SpawnedReqwestConnectorEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1007)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1010)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1013)
  %i.b = load i64, ptr %i.a, align 8, !range !18, !alias.scope !1016, !noundef !7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1017)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1020)
  %i.e = load ptr, ptr %i.c, align 8, !alias.scope !1023, !nonnull !7, !noundef !7
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !1023
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCsjyY8HP3IvQ6_12object_store6client4http10connection23SpawnedReqwestConnectorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCsjyY8HP3IvQ6_12object_store6client4http10connection23SpawnedReqwestConnectorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1024)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1027)
  %i.h = load ptr, ptr %i.c, align 8, !alias.scope !1030, !nonnull !7, !noundef !7
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !1030
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCsjyY8HP3IvQ6_12object_store6client4http10connection23SpawnedReqwestConnectorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCsjyY8HP3IvQ6_12object_store6client4http10connection23SpawnedReqwestConnectorECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCsjyY8HP3IvQ6_12object_store6client4http10connection23SpawnedReqwestConnectorECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs9rVkZwOUgsI_13deltalake_aws(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !7 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !589, !invariant.load !7
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #22
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !589, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #22
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs9rVkZwOUgsI_13deltalake_aws(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !7 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !589, !invariant.load !7
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #22
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !589, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #22
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !7 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !589, !invariant.load !7
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #22
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !589, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #22
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EECs9rVkZwOUgsI_13deltalake_aws(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !7 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !589, !invariant.load !7
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #22
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !589, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #22
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EECs9rVkZwOUgsI_13deltalake_aws(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !7 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !589, !invariant.load !7
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #22
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !589, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #22
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECs9rVkZwOUgsI_13deltalake_aws(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = load i64, ptr %.0.val, align 8, !range !6, !alias.scope !1031, !noundef !7
  %switch.i.i = icmp samesign ult i64 %i.a, 2
  br i1 %switch.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  invoke void @_RNvXs0_NtNtCs2pqxYH9ZEk8_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %bb.b
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 48, i64 noundef 8) #22
  ret void

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 48, i64 noundef 8) #22
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs9rVkZwOUgsI_13deltalake_aws(ptr nonnull %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(144) %.0.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(144) %.0.val)
          to label %.body.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(144) %.0.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.d, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.d) #30
          to label %.body2.i unwind label %bb.j

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 80
  invoke void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtBL_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e) #30
          to label %.body2.i unwind label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap5inner4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e)
          to label %.body2.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap5inner4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.i

.body2.i:                                         ; preds = %bb.i, %bb.f, %bb.e, %.body.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.m, %bb.i ], [ %i.i, %bb.f ], [ %i.h, %bb.e ]
  %i.l = getelementptr inbounds nuw i8, ptr %.0.val, i64 96
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.l)
          to label %bb.l unwind label %bb.j

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap5inner4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body2.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap5inner4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val, i64 96
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.k

bb.j:                                             ; preds = %.body2.i, %.body.i
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 144, i64 noundef 8) #22
  ret void

bb.l:                                             ; preds = %bb.k, %.body2.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.p, %bb.k ], [ %.pn.i, %.body2.i ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 144, i64 noundef 8) #22
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread4CoreEECs9rVkZwOUgsI_13deltalake_aws(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 64 ; 3 uses
  invoke void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB4_8VecDequeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtB8_4sync3ArcNtNtNtB19_9scheduler14current_thread6HandleEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtB7_4sync3ArcNtNtNtBR_9scheduler14current_thread6HandleEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %.body.i unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtB7_4sync3ArcNtNtNtBR_9scheduler14current_thread6HandleEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtBN_4sync3ArcNtNtNtB1I_9scheduler14current_thread6HandleEEEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.b, %bb.b ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCskQDtHcQtBkN_5tokio7runtime6driver6DriverEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(152) %.0.val) #30
          to label %bb.h unwind label %bb.f

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtBN_4sync3ArcNtNtNtB1I_9scheduler14current_thread6HandleEEEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.c
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCskQDtHcQtBkN_5tokio7runtime6driver6DriverEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(152) %.0.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread4CoreECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.g

bb.f:                                             ; preds = %.body.i
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable
end_hunk_3
begin_hunk_4_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread5queue5LocalINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6handle6HandleEEECs9rVkZwOUgsI_13deltalake_aws
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread5queue5LocalINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6handle6HandleEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs3_NtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread5queueINtB5_5LocalINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB7_6handle6HandleEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1079)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1082)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !1085, !nonnull !7, !noundef !7
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !1085
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread5queue5InnerIBH_NtNtB1j_6handle6HandleEEEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread5queue5InnerIBx_NtNtBL_6handle6HandleEEE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0) #31
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread5queue5InnerIBH_NtNtB1j_6handle6HandleEEEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1086)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1089)
  %i.e = load ptr, ptr %0, align 8, !alias.scope !1092, !nonnull !7, !noundef !7
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !1092
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread5queue5InnerIBH_NtNtB1j_6handle6HandleEEEECs9rVkZwOUgsI_13deltalake_aws.exit1

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread5queue5InnerIBx_NtNtBL_6handle6HandleEEE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread5queue5InnerIBH_NtNtB1j_6handle6HandleEEEECs9rVkZwOUgsI_13deltalake_aws.exit1

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread5queue5InnerIBH_NtNtB1j_6handle6HandleEEEECs9rVkZwOUgsI_13deltalake_aws.exit1: ; preds = %bb.d, %bb.e
  ret void

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread5queue5InnerIBH_NtNtB1j_6handle6HandleEEEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtBN_11credentials19resolve_credentials0INtNtB4_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0EBN_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1093)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1096)
  %i.a = load i64, ptr %0, align 8, !range !18, !alias.scope !1099, !noundef !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = icmp eq i64 %i.a, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1103)
  %i.d = load ptr, ptr %i.b, align 8, !alias.scope !1106, !nonnull !7, !noundef !7
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !1106
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs9rVkZwOUgsI_13deltalake_aws.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #31
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1110)
  %i.g = load ptr, ptr %i.b, align 8, !alias.scope !1113, !nonnull !7, !noundef !7
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !1113
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs9rVkZwOUgsI_13deltalake_aws.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #31
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0EBM_(ptr noundef nonnull align 8 %i.k) #30
          to label %bb.h unwind label %bb.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.d, %bb.b, %bb.c, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0EBM_(ptr noundef nonnull align 8 %i.l)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.h:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle15spawn_uncheckedNCNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB1O_11credentials19resolve_credentials0INtNtB4_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEs_00uEs_0EB1O_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0EBM_(ptr noundef nonnull align 8 %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle15spawn_unchecked13MaybeDanglingNCNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB23_11credentials19resolve_credentials0INtNtB4_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEs_00EEB23_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread9spawnhook15ChildSpawnHooksECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(32) %0) #30
          to label %bb.c unwind label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle15spawn_unchecked13MaybeDanglingNCNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB23_11credentials19resolve_credentials0INtNtB4_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEs_00EEB23_.exit: ; preds = %bb.a
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread9spawnhook15ChildSpawnHooksECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(32) %0)
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.e, %bb.b
  %.pn = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.b, %bb.b ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1117)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1120, !nonnull !7, !noundef !7
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !1120
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle6PacketuEEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle6PacketuEE9drop_slowCskQDtHcQtBkN_5tokio(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #31
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle6PacketuEEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.h

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle15spawn_unchecked13MaybeDanglingNCNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB23_11credentials19resolve_credentials0INtNtB4_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEs_00EEB23_.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle15spawn_unchecked13MaybeDanglingNCNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB23_11credentials19resolve_credentials0INtNtB4_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEs_00EEB23_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1124)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1127, !nonnull !7, !noundef !7
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !1127
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle6PacketuEEECs9rVkZwOUgsI_13deltalake_aws.exit2

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle6PacketuEE9drop_slowCskQDtHcQtBkN_5tokio(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle6PacketuEEECs9rVkZwOUgsI_13deltalake_aws.exit2

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle6PacketuEEECs9rVkZwOUgsI_13deltalake_aws.exit2: ; preds = %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %bb.d, %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle6PacketuEEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00ECs9rVkZwOUgsI_13deltalake_aws(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !range !593, !noundef !7
  %cond = icmp eq i8 %i.b, 3
  br i1 %cond, label %bb.b, label %common.ret

common.ret:                                       ; preds = %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val = load ptr, ptr %i.c, align 8             ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 72
  %.val4 = load ptr, ptr %i.d, align 8, !nonnull !7, !align !154, !noundef !7 ; 5 uses
  %i.e = load ptr, ptr %.val4, align 8, !invariant.load !7 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.e(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %common.ret, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !589, !invariant.load !7
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #22
  br label %common.ret

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !589, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #22
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtBL_12ConfigLoader4load0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2560
  %i.b = load i8, ptr %i.a, align 8, !range !1128, !noundef !7
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %bb.c
    i8 4, label %bb.l
    i8 5, label %bb.u
    i8 6, label %bb.v
    i8 7, label %bb.aa
    i8 8, label %bb.al
    i8 9, label %bb.bj
    i8 10, label %bb.bs
    i8 11, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider27disable_request_compression36disable_request_compression_provider0ECs9rVkZwOUgsI_13deltalake_aws.exit
    i8 12, label %bb.cb
    i8 13, label %bb.cc
    i8 14, label %bb.cd
    i8 15, label %bb.cm
    i8 16, label %bb.cv
    i8 17, label %bb.er
    i8 18, label %bb.fa
    i8 19, label %bb.fj
    i8 20, label %bb.fs
  ]

common.ret:                                       ; preds = %bb.b, %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http16SharedHttpClientEECs9rVkZwOUgsI_13deltalake_aws.exit
  ret void

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config6loader12ConfigLoaderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(624) %0)
  br label %common.ret

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3096
  %i.d = load i8, ptr %i.c, align 8, !range !593, !noundef !7
  %cond.i = icmp eq i8 %i.d, 3
  br i1 %cond.i, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider8use_fips17use_fips_provider0ECs9rVkZwOUgsI_13deltalake_aws.exit

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2616
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.e)
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2608 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1132)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !1135, !noundef !7 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !1136
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.g, label %.body

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g) #31
          to label %.body unwind label %bb.k

bb.h:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2608 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1144)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !1147, !noundef !7 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider8use_fips17use_fips_provider0ECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !1148
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider8use_fips17use_fips_provider0ECs9rVkZwOUgsI_13deltalake_aws.exit

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.l) #31
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider8use_fips17use_fips_provider0ECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.gb

bb.k:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.l:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 3096
  %i.s = load i8, ptr %i.r, align 8, !range !593, !noundef !7
  %cond.i78 = icmp eq i8 %i.s, 3
  br i1 %cond.i78, label %bb.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider8use_fips17use_fips_provider0ECs9rVkZwOUgsI_13deltalake_aws.exit

bb.m:                                             ; preds = %bb.l
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2616
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.t)
          to label %bb.q unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2608 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1156)
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !1159, !noundef !7 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.body, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.y = atomicrmw sub ptr %i.w, i64 1 release, align 8, !noalias !1160
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.p, label %.body

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v) #31
          to label %.body unwind label %bb.t

bb.q:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2608 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1168)
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !1171, !noundef !7 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider8use_fips17use_fips_provider0ECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ad = atomicrmw sub ptr %i.ab, i64 1 release, align 8, !noalias !1172
  %i.ae = icmp eq i64 %i.ad, 1
  br i1 %i.ae, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider8use_fips17use_fips_provider0ECs9rVkZwOUgsI_13deltalake_aws.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aa) #31
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider8use_fips17use_fips_provider0ECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.gc

bb.t:                                             ; preds = %bb.p
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.u:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2600
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCsaB04DkjCm5a_10aws_config4meta6region6future13ProvideRegionECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.ag)
          to label %bb.ge unwind label %bb.gd

bb.v:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2736
  %i.ai = load i8, ptr %i.ah, align 8, !range !593, !noundef !7
  %cond.i83 = icmp eq i8 %i.ai, 3
  br i1 %cond.i83, label %bb.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsaB04DkjCm5a_10aws_config16default_provider6regionNtBL_18DefaultRegionChain6region0ECs9rVkZwOUgsI_13deltalake_aws.exit

bb.w:                                             ; preds = %bb.v
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2728
  %i.ak = load i8, ptr %i.aj, align 8, !range !593, !noundef !7
  %cond.i.i = icmp eq i8 %i.ak, 3
  br i1 %cond.i.i, label %bb.x, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsaB04DkjCm5a_10aws_config16default_provider6regionNtBL_18DefaultRegionChain6region0ECs9rVkZwOUgsI_13deltalake_aws.exit

bb.x:                                             ; preds = %bb.w
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 2664 ; 3 uses
  invoke void @_RNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtB7_12InstrumentedNtNtNtNtCsaB04DkjCm5a_10aws_config4meta6region6future13ProvideRegionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.al)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNtNtNtNtCsaB04DkjCm5a_10aws_config4meta6region6future13ProvideRegionEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.al) #30
          to label %.body84 unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNtNtNtNtCsaB04DkjCm5a_10aws_config4meta6region6future13ProvideRegionEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.x
end_hunk_4
begin_hunk_5_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtBL_12ConfigLoader4load0ECs9rVkZwOUgsI_13deltalake_aws:bb.a
  %i.fd = load ptr, ptr %i.fc, align 8, !alias.scope !1340, !noundef !7 ; 2 uses
  %i.fe = icmp eq ptr %i.fd, null
  br i1 %i.fe, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider31ignore_configured_endpoint_urls40ignore_configured_endpoint_urls_provider0ECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ff = atomicrmw sub ptr %i.fd, i64 1 release, align 8, !noalias !1341
  %i.fg = icmp eq i64 %i.ff, 1
  br i1 %i.fg, label %bb.ct, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider31ignore_configured_endpoint_urls40ignore_configured_endpoint_urls_provider0ECs9rVkZwOUgsI_13deltalake_aws.exit

bb.ct:                                            ; preds = %bb.cs
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fc) #31
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider31ignore_configured_endpoint_urls40ignore_configured_endpoint_urls_provider0ECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.hc

bb.cu:                                            ; preds = %bb.cq
  %i.fh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.cv:                                            ; preds = %bb.a
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 5576
  %i.fj = load i8, ptr %i.fi, align 8, !range !1201, !noundef !7
  switch i8 %i.fj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCsaB04DkjCm5a_10aws_config16default_provider5tokenNtBO_7Builder5build0ECs9rVkZwOUgsI_13deltalake_aws.exit [
    i8 0, label %bb.cw
    i8 3, label %bb.dl
    i8 4, label %bb.dm
  ]

bb.cw:                                            ; preds = %bb.cv
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 3608
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config7profile5token7BuilderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(984) %i.fk)
          to label %bb.cy unwind label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.fl = landingpad { ptr, i32 }
          cleanup
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 4576
  %.val5.i.i = load ptr, ptr %i.fm, align 8, !alias.scope !1346, !noundef !7
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 4584
  %.val6.i.i = load ptr, ptr %i.fn, align 8, !alias.scope !1346
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EEECs9rVkZwOUgsI_13deltalake_aws(ptr %.val5.i.i, ptr %.val6.i.i) #30
          to label %.body.i.i unwind label %bb.dk

bb.cy:                                            ; preds = %bb.cw
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 4576
  %.val.i.i = load ptr, ptr %i.fo, align 8, !alias.scope !1346, !noundef !7 ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 4584
  %.val4.i.i = load ptr, ptr %i.fp, align 8, !alias.scope !1346 ; 6 uses
  %i.fq = icmp eq ptr %.val.i.i, null
  br i1 %i.fq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i.i) ]
  %i.fr = load ptr, ptr %.val4.i.i, align 8, !invariant.load !7 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i.i, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  invoke void %i.fr(ptr noundef nonnull %.val.i.i)
          to label %bb.db unwind label %bb.dd

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.fs = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 8
  %i.ft = load i64, ptr %i.fs, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.fu = icmp eq i64 %i.ft, 0
  br i1 %i.fu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.fv = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 16
  %i.fw = load i64, ptr %i.fv, align 8, !range !589, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.ft, i64 noundef range(i64 1, 536870913) %i.fw) #22
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.dd:                                            ; preds = %bb.da
  %i.fx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 8
  %i.fz = load i64, ptr %i.fy, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.ga = icmp eq i64 %i.fz, 0
  br i1 %i.ga, label %.body.i.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.gb = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 16
  %i.gc = load i64, ptr %i.gb, align 8, !range !589, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.fz, i64 noundef range(i64 1, 536870913) %i.gc) #22
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.de, %bb.dd, %bb.cx
  %.pn.i.i121 = phi { ptr, i32 } [ %i.fl, %bb.cx ], [ %i.fx, %bb.dd ], [ %i.fx, %bb.de ]
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 3848
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config16default_provider6region7BuilderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(536) %i.gd) #30
          to label %bb.df unwind label %bb.dk

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.dc, %bb.db, %bb.cy
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 3848
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config16default_provider6region7BuilderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(536) %i.ge)
          to label %bb.di unwind label %bb.dh

bb.df:                                            ; preds = %bb.dh, %.body.i.i
  %.pn2.i.i = phi { ptr, i32 } [ %i.gi, %bb.dh ], [ %.pn.i.i121, %.body.i.i ] ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 4384 ; 2 uses
  %i.gg = load i64, ptr %i.gf, align 8, !range !337, !alias.scope !1349, !noundef !7
  %i.gh = icmp eq i64 %i.gg, -9223372036854775808
  br i1 %i.gh, label %.body123, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.gf)
          to label %.body123 unwind label %bb.dk

bb.dh:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.di:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 4384 ; 2 uses
  %i.gk = load i64, ptr %i.gj, align 8, !range !337, !alias.scope !1352, !noundef !7
  %i.gl = icmp eq i64 %i.gk, -9223372036854775808
  br i1 %i.gl, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCsaB04DkjCm5a_10aws_config16default_provider5tokenNtBO_7Builder5build0ECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.gj)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCsaB04DkjCm5a_10aws_config16default_provider5tokenNtBO_7Builder5build0ECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.hd

bb.dk:                                            ; preds = %bb.dg, %.body.i.i, %bb.cx
  %i.gm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.dl:                                            ; preds = %bb.cv
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 5584
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCsaB04DkjCm5a_10aws_config4meta6region6future13ProvideRegionECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.gn)
          to label %bb.ds unwind label %bb.dr

bb.dm:                                            ; preds = %bb.cv
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 5720
  %i.gp = load i8, ptr %i.go, align 8, !range !593, !noundef !7
  %cond.i.i116 = icmp eq i8 %i.gp, 3
  br i1 %cond.i.i116, label %bb.dn, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsaB04DkjCm5a_10aws_config16default_provider6regionNtBL_18DefaultRegionChain6region0ECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.dn:                                            ; preds = %bb.dm
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 5712
  %i.gr = load i8, ptr %i.gq, align 8, !range !593, !noundef !7
  %cond.i.i.i = icmp eq i8 %i.gr, 3
  br i1 %cond.i.i.i, label %bb.do, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsaB04DkjCm5a_10aws_config16default_provider6regionNtBL_18DefaultRegionChain6region0ECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.do:                                            ; preds = %bb.dn
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 5648 ; 3 uses
  invoke void @_RNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtB7_12InstrumentedNtNtNtNtCsaB04DkjCm5a_10aws_config4meta6region6future13ProvideRegionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.gs)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNtNtNtNtCsaB04DkjCm5a_10aws_config4meta6region6future13ProvideRegionEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i unwind label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.gt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.gs) #30
          to label %.body.i119 unwind label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.gu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNtNtNtNtCsaB04DkjCm5a_10aws_config4meta6region6future13ProvideRegionEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.do
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.gs)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsaB04DkjCm5a_10aws_config16default_provider6regionNtBL_18DefaultRegionChain6region0ECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.dz

bb.dr:                                            ; preds = %bb.dl
  %i.gv = landingpad { ptr, i32 }
          cleanup
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 5608
  %.val11.i = load ptr, ptr %i.gw, align 8
  %i.gx = getelementptr i8, ptr %0, i64 5616
  %.val12.i = load ptr, ptr %i.gx, align 8, !nonnull !7, !align !154, !noundef !7
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EECs9rVkZwOUgsI_13deltalake_aws(ptr %.val11.i, ptr nonnull %.val12.i) #30
          to label %.body13.i unwind label %bb.dy

bb.ds:                                            ; preds = %bb.dl
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 5608
  %.val.i = load ptr, ptr %i.gy, align 8          ; 5 uses
  %i.gz = getelementptr i8, ptr %0, i64 5616
  %.val10.i = load ptr, ptr %i.gz, align 8, !nonnull !7, !align !154, !noundef !7 ; 5 uses
  %i.ha = load ptr, ptr %.val10.i, align 8, !invariant.load !7 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ha, null
  br i1 %.not.i.i, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.ha(ptr noundef nonnull %.val.i)
          to label %bb.du unwind label %bb.dw

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.hb = getelementptr inbounds nuw i8, ptr %.val10.i, i64 8
  %i.hc = load i64, ptr %i.hb, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.hd = icmp eq i64 %i.hc, 0
  br i1 %i.hd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.he = getelementptr inbounds nuw i8, ptr %.val10.i, i64 16
  %i.hf = load i64, ptr %i.he, align 8, !range !589, !invariant.load !7
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.hc, i64 noundef range(i64 1, 536870913) %i.hf) #22
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.dw:                                            ; preds = %bb.dt
  %i.hg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.val10.i, i64 8
  %i.hi = load i64, ptr %i.hh, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.hj = icmp eq i64 %i.hi, 0
  br i1 %i.hj, label %.body13.i, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.hk = getelementptr inbounds nuw i8, ptr %.val10.i, i64 16
  %i.hl = load i64, ptr %i.hk, align 8, !range !589, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.hi, i64 noundef range(i64 1, 536870913) %i.hl) #22
  br label %.body13.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config4meta6region19RegionProviderChainECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.dv, %bb.du
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 4592
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config7profile5token7BuilderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(240) %i.hm)
          to label %bb.ee unwind label %bb.ed

bb.dy:                                            ; preds = %bb.eq, %bb.ep, %bb.em, %bb.ej, %.body.i119, %.body13.i, %bb.dr
  %i.hn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

.body13.i:                                        ; preds = %bb.ec, %bb.ea, %.body.i119, %bb.dx, %bb.dw, %bb.dr
  %.pn.i117 = phi { ptr, i32 } [ %eh.lpad-body.i120, %.body.i119 ], [ %i.gv, %bb.dr ], [ %i.hg, %bb.dw ], [ %i.hs, %bb.ea ], [ %i.hg, %bb.dx ], [ %i.hu, %bb.ec ] ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 4592
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config7profile5token7BuilderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(240) %i.ho) #30
          to label %bb.en unwind label %bb.dy

bb.dz:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNtNtNtNtCsaB04DkjCm5a_10aws_config4meta6region6future13ProvideRegionEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i119

.body.i119:                                       ; preds = %bb.dz, %bb.dp
  %eh.lpad-body.i120 = phi { ptr, i32 } [ %i.hp, %bb.dz ], [ %i.gt, %bb.dp ]
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 5584
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config16default_provider6region18DefaultRegionChainECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.hq) #30
          to label %.body13.i unwind label %bb.dy

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsaB04DkjCm5a_10aws_config16default_provider6regionNtBL_18DefaultRegionChain6region0ECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNtNtNtNtCsaB04DkjCm5a_10aws_config4meta6region6future13ProvideRegionEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, %bb.dn, %bb.dm
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 5584 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hr)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config4meta6region19RegionProviderChainECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.ea

bb.ea:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsaB04DkjCm5a_10aws_config16default_provider6regionNtBL_18DefaultRegionChain6region0ECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.hs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hr)
          to label %.body13.i unwind label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.ht = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config4meta6region19RegionProviderChainECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsaB04DkjCm5a_10aws_config16default_provider6regionNtBL_18DefaultRegionChain6region0ECs9rVkZwOUgsI_13deltalake_aws.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hr)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.ec

bb.ec:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config4meta6region19RegionProviderChainECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %.body13.i

bb.ed:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.hv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 5577
  %i.hx = load i8, ptr %i.hw, align 1, !range !235, !noundef !7
  %i.hy = trunc nuw i8 %i.hx to i1
  br i1 %i.hy, label %bb.em, label %bb.ei

bb.ee:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 5577 ; 2 uses
  %i.ia = load i8, ptr %i.hz, align 1, !range !235, !noundef !7
  %i.ib = trunc nuw i8 %i.ia to i1
  br i1 %i.ib, label %bb.eh, label %bb.ef

bb.ef:                                            ; preds = %bb.eh, %bb.ee
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 5368 ; 2 uses
  %i.id = load i64, ptr %i.ic, align 8, !range !337, !alias.scope !1355, !noundef !7
  %i.ie = icmp eq i64 %i.id, -9223372036854775808
  br i1 %i.ie, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.ic)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.el

bb.eh:                                            ; preds = %bb.ee
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 4832
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config16default_provider6region7BuilderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(536) %i.if)
          to label %bb.ef unwind label %bb.ek

bb.ei:                                            ; preds = %bb.em, %bb.ek, %bb.ed
  %.pn4.i118 = phi { ptr, i32 } [ %i.ij, %bb.ek ], [ %i.hv, %bb.em ], [ %i.hv, %bb.ed ] ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 5368 ; 2 uses
  %i.ih = load i64, ptr %i.ig, align 8, !range !337, !alias.scope !1358, !noundef !7
  %i.ii = icmp eq i64 %i.ih, -9223372036854775808
  br i1 %i.ii, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigEECs9rVkZwOUgsI_13deltalake_aws.exit20.i, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.ig)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigEECs9rVkZwOUgsI_13deltalake_aws.exit20.i unwind label %bb.dy

bb.ek:                                            ; preds = %bb.eh
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigEECs9rVkZwOUgsI_13deltalake_aws.exit20.i: ; preds = %bb.ep, %bb.eo, %bb.el, %bb.ej, %bb.ei
  %.pn6.i = phi { ptr, i32 } [ %i.in, %bb.el ], [ %.pn4.i118, %bb.ei ], [ %.pn4.i118, %bb.ej ], [ %.pn.i117, %bb.ep ], [ %.pn.i117, %bb.eo ]
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 5578
  store i8 0, ptr %i.ik, align 2
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 5579
  store i8 0, ptr %i.il, align 1
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 5577
  store i8 0, ptr %i.im, align 1
  br label %.body123

bb.el:                                            ; preds = %bb.eg
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigEECs9rVkZwOUgsI_13deltalake_aws.exit20.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.eg, %bb.ef
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 5578
  store i8 0, ptr %i.io, align 2
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 5579
  store i8 0, ptr %i.ip, align 1
  store i8 0, ptr %i.hz, align 1
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCsaB04DkjCm5a_10aws_config16default_provider5tokenNtBO_7Builder5build0ECs9rVkZwOUgsI_13deltalake_aws.exit

bb.em:                                            ; preds = %bb.ed
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 4832
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config16default_provider6region7BuilderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(536) %i.iq) #30
          to label %bb.ei unwind label %bb.dy

bb.en:                                            ; preds = %.body13.i
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 5577
  %i.is = load i8, ptr %i.ir, align 1, !range !235, !noundef !7
  %i.it = trunc nuw i8 %i.is to i1
  br i1 %i.it, label %bb.eq, label %bb.eo

bb.eo:                                            ; preds = %bb.eq, %bb.en
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 5368 ; 2 uses
  %i.iv = load i64, ptr %i.iu, align 8, !range !337, !alias.scope !1361, !noundef !7
  %i.iw = icmp eq i64 %i.iv, -9223372036854775808
  br i1 %i.iw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigEECs9rVkZwOUgsI_13deltalake_aws.exit20.i, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.iu)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigEECs9rVkZwOUgsI_13deltalake_aws.exit20.i unwind label %bb.dy

bb.eq:                                            ; preds = %bb.en
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 4832
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config16default_provider6region7BuilderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(536) %i.ix) #30
          to label %bb.eo unwind label %bb.dy

bb.er:                                            ; preds = %bb.a
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 3096
  %i.iz = load i8, ptr %i.iy, align 8, !range !593, !noundef !7
  %cond.i125 = icmp eq i8 %i.iz, 3
  br i1 %cond.i125, label %bb.es, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider9checksums37request_checksum_calculation_provider0ECs9rVkZwOUgsI_13deltalake_aws.exit

bb.es:                                            ; preds = %bb.er
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 2616
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.ja)
          to label %bb.ew unwind label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.jb = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 2608 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1367)
  %i.jd = load ptr, ptr %i.jc, align 8, !alias.scope !1370, !noundef !7 ; 2 uses
  %i.je = icmp eq ptr %i.jd, null
  br i1 %i.je, label %.body128, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.jf = atomicrmw sub ptr %i.jd, i64 1 release, align 8, !noalias !1371
  %i.jg = icmp eq i64 %i.jf, 1
  br i1 %i.jg, label %bb.ev, label %.body128

bb.ev:                                            ; preds = %bb.eu
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.jc) #31
          to label %.body128 unwind label %bb.ez

bb.ew:                                            ; preds = %bb.es
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 2608 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1376)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1379)
end_hunk_5
begin_hunk_6_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtBL_12ConfigLoader4load0ECs9rVkZwOUgsI_13deltalake_aws:bb.a
  br i1 %i.jt, label %.body128, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.ju = atomicrmw sub ptr %i.js, i64 1 release, align 8, !noalias !1395
  %i.jv = icmp eq i64 %i.ju, 1
  br i1 %i.jv, label %bb.fe, label %.body128

bb.fe:                                            ; preds = %bb.fd
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.jr) #31
          to label %.body128 unwind label %bb.fi

bb.ff:                                            ; preds = %bb.fb
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 2608 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1400)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1403)
  %i.jx = load ptr, ptr %i.jw, align 8, !alias.scope !1406, !noundef !7 ; 2 uses
  %i.jy = icmp eq ptr %i.jx, null
  br i1 %i.jy, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider9checksums37request_checksum_calculation_provider0ECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.jz = atomicrmw sub ptr %i.jx, i64 1 release, align 8, !noalias !1407
  %i.ka = icmp eq i64 %i.jz, 1
  br i1 %i.ka, label %bb.fh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider9checksums37request_checksum_calculation_provider0ECs9rVkZwOUgsI_13deltalake_aws.exit

bb.fh:                                            ; preds = %bb.fg
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.jw) #31
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider9checksums37request_checksum_calculation_provider0ECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.hj

bb.fi:                                            ; preds = %bb.fe
  %i.kb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.fj:                                            ; preds = %bb.a
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 3096
  %i.kd = load i8, ptr %i.kc, align 8, !range !593, !noundef !7
  %cond.i135 = icmp eq i8 %i.kd, 3
  br i1 %cond.i135, label %bb.fk, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider9checksums37request_checksum_calculation_provider0ECs9rVkZwOUgsI_13deltalake_aws.exit

bb.fk:                                            ; preds = %bb.fj
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 2616
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.ke)
          to label %bb.fo unwind label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.kf = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 2608 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1415)
  %i.kh = load ptr, ptr %i.kg, align 8, !alias.scope !1418, !noundef !7 ; 2 uses
  %i.ki = icmp eq ptr %i.kh, null
  br i1 %i.ki, label %.body128, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.kj = atomicrmw sub ptr %i.kh, i64 1 release, align 8, !noalias !1419
  %i.kk = icmp eq i64 %i.kj, 1
  br i1 %i.kk, label %bb.fn, label %.body128

bb.fn:                                            ; preds = %bb.fm
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.kg) #31
          to label %.body128 unwind label %bb.fr

bb.fo:                                            ; preds = %bb.fk
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 2608 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1427)
  %i.km = load ptr, ptr %i.kl, align 8, !alias.scope !1430, !noundef !7 ; 2 uses
  %i.kn = icmp eq ptr %i.km, null
  br i1 %i.kn, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider9checksums37request_checksum_calculation_provider0ECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.ko = atomicrmw sub ptr %i.km, i64 1 release, align 8, !noalias !1431
  %i.kp = icmp eq i64 %i.ko, 1
  br i1 %i.kp, label %bb.fq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider9checksums37request_checksum_calculation_provider0ECs9rVkZwOUgsI_13deltalake_aws.exit

bb.fq:                                            ; preds = %bb.fp
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.kl) #31
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider9checksums37request_checksum_calculation_provider0ECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.hk

bb.fr:                                            ; preds = %bb.fn
  %i.kq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.fs:                                            ; preds = %bb.a
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 3096
  %i.ks = load i8, ptr %i.kr, align 8, !range !593, !noundef !7
  %cond.i140 = icmp eq i8 %i.ks, 3
  br i1 %cond.i140, label %bb.ft, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider9checksums37request_checksum_calculation_provider0ECs9rVkZwOUgsI_13deltalake_aws.exit

bb.ft:                                            ; preds = %bb.fs
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 2616
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.kt)
          to label %bb.fx unwind label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.ku = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 2608 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1439)
  %i.kw = load ptr, ptr %i.kv, align 8, !alias.scope !1442, !noundef !7 ; 2 uses
  %i.kx = icmp eq ptr %i.kw, null
  br i1 %i.kx, label %.body128, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.ky = atomicrmw sub ptr %i.kw, i64 1 release, align 8, !noalias !1443
  %i.kz = icmp eq i64 %i.ky, 1
  br i1 %i.kz, label %bb.fw, label %.body128

bb.fw:                                            ; preds = %bb.fv
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.kv) #31
          to label %.body128 unwind label %bb.ga

bb.fx:                                            ; preds = %bb.ft
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 2608 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1448)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1451)
  %i.lb = load ptr, ptr %i.la, align 8, !alias.scope !1454, !noundef !7 ; 2 uses
  %i.lc = icmp eq ptr %i.lb, null
  br i1 %i.lc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider9checksums37request_checksum_calculation_provider0ECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.ld = atomicrmw sub ptr %i.lb, i64 1 release, align 8, !noalias !1455
  %i.le = icmp eq i64 %i.ld, 1
  br i1 %i.le, label %bb.fz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider9checksums37request_checksum_calculation_provider0ECs9rVkZwOUgsI_13deltalake_aws.exit

bb.fz:                                            ; preds = %bb.fy
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.la) #31
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider9checksums37request_checksum_calculation_provider0ECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.hl

bb.ga:                                            ; preds = %bb.fw
  %i.lf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.gb:                                            ; preds = %bb.j
  %i.lg = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider8use_fips17use_fips_provider0ECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.r, %bb.q, %bb.l, %bb.s, %bb.i, %bb.h, %bb.c, %bb.j, %bb.io
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 2574 ; 2 uses
  %i.li = load i8, ptr %i.lh, align 2, !range !235, !noundef !7
  %i.lj = trunc nuw i8 %i.li to i1
  br i1 %i.lj, label %bb.iv, label %bb.is

.body:                                            ; preds = %bb.gc, %bb.p, %bb.o, %bb.n, %bb.gb, %bb.g, %bb.f, %bb.e, %bb.iq
  %.pn32 = phi { ptr, i32 } [ %.pn30, %bb.iq ], [ %i.f, %bb.e ], [ %i.lg, %bb.gb ], [ %i.f, %bb.g ], [ %i.f, %bb.f ], [ %i.ln, %bb.gc ], [ %i.u, %bb.p ], [ %i.u, %bb.o ], [ %i.u, %bb.n ] ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 2574
  %i.ll = load i8, ptr %i.lk, align 2, !range !235, !noundef !7
  %i.lm = trunc nuw i8 %i.ll to i1
  br i1 %i.lm, label %bb.ls, label %bb.iw

bb.gc:                                            ; preds = %bb.s
  %i.ln = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.gd:                                            ; preds = %bb.u
  %i.lo = landingpad { ptr, i32 }
          cleanup
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 2624
  %.val76 = load ptr, ptr %i.lp, align 8
  %i.lq = getelementptr i8, ptr %0, i64 2632
  %.val77 = load ptr, ptr %i.lq, align 8, !nonnull !7, !align !154, !noundef !7
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EECs9rVkZwOUgsI_13deltalake_aws(ptr %.val76, ptr nonnull %.val77) #30
          to label %.body145 unwind label %bb.gk

bb.ge:                                            ; preds = %bb.u
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 2624
  %.val74 = load ptr, ptr %i.lr, align 8          ; 5 uses
  %i.ls = getelementptr i8, ptr %0, i64 2632
  %.val75 = load ptr, ptr %i.ls, align 8, !nonnull !7, !align !154, !noundef !7 ; 5 uses
  %i.lt = load ptr, ptr %.val75, align 8, !invariant.load !7 ; 2 uses
  %.not.i = icmp eq ptr %i.lt, null
  br i1 %.not.i, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val74) ]
  invoke void %i.lt(ptr noundef nonnull %.val74)
          to label %bb.gg unwind label %bb.gi

bb.gg:                                            ; preds = %bb.gf, %bb.ge
  %i.lu = getelementptr inbounds nuw i8, ptr %.val75, i64 8
  %i.lv = load i64, ptr %i.lu, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.lw = icmp eq i64 %i.lv, 0
  br i1 %i.lw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.lx = getelementptr inbounds nuw i8, ptr %.val75, i64 16
  %i.ly = load i64, ptr %i.lx, align 8, !range !589, !invariant.load !7
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val74) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val74, i64 noundef range(i64 1, 0) %i.lv, i64 noundef range(i64 1, 536870913) %i.ly) #22
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.gi:                                            ; preds = %bb.gf
  %i.lz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %.val75, i64 8
  %i.mb = load i64, ptr %i.ma, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.mc = icmp eq i64 %i.mb, 0
  br i1 %i.mc, label %.body145, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.md = getelementptr inbounds nuw i8, ptr %.val75, i64 16
  %i.me = load i64, ptr %i.md, align 8, !range !589, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val74, i64 noundef range(i64 1, 0) %i.mb, i64 noundef range(i64 1, 536870913) %i.me) #22
  br label %.body145

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.ij, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i167, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config4meta6region19RegionProviderChainECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.gh, %bb.gg, %bb.ii
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 2567
  store i8 0, ptr %i.mf, align 1
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 2573 ; 2 uses
  %i.mh = load i8, ptr %i.mg, align 1, !range !235, !noundef !7
  %i.mi = trunc nuw i8 %i.mh to i1
  br i1 %i.mi, label %bb.ip, label %bb.io

bb.gk:                                            ; preds = %bb.mt, %bb.mq, %bb.mi, %bb.mf, %bb.mc, %bb.lu, %bb.ln, %bb.lk, %bb.le, %bb.lb, %bb.ky, %bb.iy, %bb.hn, %bb.hi, %bb.ha, %bb.gd, %bb.lh, %bb.mn, %bb.mk, %bb.lz, %bb.lw, %bb.ls, %bb.lr, %bb.lq, %bb.lp, %bb.lo, %bb.lf, %bb.kv, %.body109, %.body88, %.body84
  %i.mj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

.body145:                                         ; preds = %bb.in, %bb.il, %bb.go, %bb.gm, %bb.gj, %bb.gi, %bb.gd, %.body84, %bb.lq, %bb.ig
  %.pn28 = phi { ptr, i32 } [ %.pn26, %bb.ig ], [ %i.lo, %bb.gd ], [ %i.lz, %bb.gi ], [ %eh.lpad-body85, %.body84 ], [ %i.mr, %bb.gm ], [ %.pn26, %bb.lq ], [ %i.qn, %bb.il ], [ %i.lz, %bb.gj ], [ %i.mt, %bb.go ], [ %i.qp, %bb.in ] ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 2567
  store i8 0, ptr %i.mk, align 1
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 2573
  %i.mm = load i8, ptr %i.ml, align 1, !range !235, !noundef !7
  %i.mn = trunc nuw i8 %i.mm to i1
  br i1 %i.mn, label %bb.lr, label %bb.iq

bb.gl:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNtNtNtNtCsaB04DkjCm5a_10aws_config4meta6region6future13ProvideRegionEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.mo = landingpad { ptr, i32 }
          cleanup
  br label %.body84

.body84:                                          ; preds = %bb.y, %bb.gl
  %eh.lpad-body85 = phi { ptr, i32 } [ %i.mo, %bb.gl ], [ %i.am, %bb.y ]
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 2600
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config16default_provider6region18DefaultRegionChainECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.mp) #30
          to label %.body145 unwind label %bb.gk

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsaB04DkjCm5a_10aws_config16default_provider6regionNtBL_18DefaultRegionChain6region0ECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.w, %bb.v, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNtNtNtNtCsaB04DkjCm5a_10aws_config4meta6region6future13ProvideRegionEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 2600 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.mq)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config4meta6region19RegionProviderChainECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.gm

bb.gm:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsaB04DkjCm5a_10aws_config16default_provider6regionNtBL_18DefaultRegionChain6region0ECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.mr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.mq)
          to label %.body145 unwind label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.ms = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config4meta6region19RegionProviderChainECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsaB04DkjCm5a_10aws_config16default_provider6regionNtBL_18DefaultRegionChain6region0ECs9rVkZwOUgsI_13deltalake_aws.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.mq)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.go

bb.go:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config4meta6region19RegionProviderChainECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.mt = landingpad { ptr, i32 }
          cleanup
  br label %.body145

bb.gp:                                            ; preds = %common.ret.sink.split.i
  %i.mu = landingpad { ptr, i32 }
          cleanup
  br label %.body88

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsaB04DkjCm5a_10aws_config16default_provider12retry_configNtBL_7Builder12retry_config0ECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.ab, %bb.aa, %common.ret.sink.split.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsaB04DkjCm5a_10aws_config16default_provider8app_nameNtBL_7Builder8app_name0ECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 1688
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(192) %i.mv)
          to label %bb.ii unwind label %bb.ih

.body88:                                          ; preds = %bb.gp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %.body94
  %.pn24 = phi { ptr, i32 } [ %.pn22, %.body94 ], [ %i.mu, %bb.gp ], [ %.pn.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ]
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 1688
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(192) %i.mw) #30
          to label %bb.ig unwind label %bb.gk

bb.gq:                                            ; preds = %common.ret.sink.split.i92
  %i.mx = landingpad { ptr, i32 }
          cleanup
  br label %.body94

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsaB04DkjCm5a_10aws_config16default_provider8app_nameNtBL_7Builder8app_name0ECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.ib, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, %bb.al, %common.ret.sink.split.i92, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider27disable_request_compression36disable_request_compression_provider0ECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 2572
  store i8 0, ptr %i.my, align 4
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsaB04DkjCm5a_10aws_config16default_provider12retry_configNtBL_7Builder12retry_config0ECs9rVkZwOUgsI_13deltalake_aws.exit

.body94:                                          ; preds = %bb.if, %bb.id, %bb.gq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit10.i, %bb.lp, %.body99
  %.pn22 = phi { ptr, i32 } [ %.pn20, %.body99 ], [ %.pn4.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit10.i ], [ %.pn20, %bb.lp ], [ %i.mx, %bb.gq ], [ %i.qd, %bb.if ], [ %i.qb, %bb.id ]
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 2572
  store i8 0, ptr %i.mz, align 4
  br label %.body88

bb.gr:                                            ; preds = %bb.bq
  %i.na = landingpad { ptr, i32 }
          cleanup
  br label %.body99

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider27disable_request_compression36disable_request_compression_provider0ECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %bb.by, %bb.bx, %bb.bs, %bb.bz, %bb.bp, %bb.bo, %bb.bj, %bb.bq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderEECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 2572
  %i.nc = load i8, ptr %i.nb, align 4, !range !235, !noundef !7
  %i.nd = trunc nuw i8 %i.nc to i1
  br i1 %i.nd, label %bb.ib, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsaB04DkjCm5a_10aws_config16default_provider8app_nameNtBL_7Builder8app_name0ECs9rVkZwOUgsI_13deltalake_aws.exit

.body99:                                          ; preds = %bb.gs, %bb.bw, %bb.bv, %bb.bu, %bb.gr, %bb.bn, %bb.bm, %bb.bl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderEECs9rVkZwOUgsI_13deltalake_aws.exit152
  %.pn20 = phi { ptr, i32 } [ %.pn18, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderEECs9rVkZwOUgsI_13deltalake_aws.exit152 ], [ %i.db, %bb.bl ], [ %i.dq, %bb.bu ], [ %i.na, %bb.gr ], [ %i.db, %bb.bn ], [ %i.db, %bb.bm ], [ %i.nh, %bb.gs ], [ %i.dq, %bb.bw ], [ %i.dq, %bb.bv ] ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 2572
  %i.nf = load i8, ptr %i.ne, align 4, !range !235, !noundef !7
  %i.ng = trunc nuw i8 %i.nf to i1
  br i1 %i.ng, label %bb.lp, label %.body94

bb.gs:                                            ; preds = %bb.bz
  %i.nh = landingpad { ptr, i32 }
          cleanup
  br label %.body99

bb.gt:                                            ; preds = %bb.cb
  %i.ni = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderEECs9rVkZwOUgsI_13deltalake_aws.exit152

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.gw, %bb.gv, %bb.gx, %bb.cb
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 2586
  store i8 0, ptr %i.nj, align 2
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider27disable_request_compression36disable_request_compression_provider0ECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderEECs9rVkZwOUgsI_13deltalake_aws.exit152: ; preds = %bb.gz, %bb.gy, %bb.ha, %bb.ia, %bb.gt
  %.pn18 = phi { ptr, i32 } [ %i.ni, %bb.gt ], [ %i.py, %bb.ia ], [ %.pn16, %bb.ha ], [ %.pn16, %bb.gy ], [ %.pn16, %bb.gz ]
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 2586
  store i8 0, ptr %i.nk, align 2
  br label %.body99

bb.gu:                                            ; preds = %bb.cc
  %i.nl = landingpad { ptr, i32 }
          cleanup
  br label %bb.gy

bb.gv:                                            ; preds = %bb.cc, %bb.hz
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 2080 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1460)
  %i.nn = load ptr, ptr %i.nm, align 8, !alias.scope !1460, !noundef !7 ; 2 uses
  %i.no = icmp eq ptr %i.nn, null
  br i1 %i.no, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.np = atomicrmw sub ptr %i.nn, i64 1 release, align 8, !noalias !1463
  %i.nq = icmp eq i64 %i.np, 1
  br i1 %i.nq, label %bb.gx, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.gx:                                            ; preds = %bb.gw
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_E9drop_slowCsjPG5xYjJYir_9aws_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.nm) #31
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.ia

bb.gy:                                            ; preds = %bb.hx, %bb.gu
  %.pn16 = phi { ptr, i32 } [ %i.nl, %bb.gu ], [ %.pn14, %bb.hx ] ; 3 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 2080 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1470)
  %i.ns = load ptr, ptr %i.nr, align 8, !alias.scope !1470, !noundef !7 ; 2 uses
  %i.nt = icmp eq ptr %i.ns, null
  br i1 %i.nt, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderEECs9rVkZwOUgsI_13deltalake_aws.exit152, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.nu = atomicrmw sub ptr %i.ns, i64 1 release, align 8, !noalias !1473
  %i.nv = icmp eq i64 %i.nu, 1
  br i1 %i.nv, label %bb.ha, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderEECs9rVkZwOUgsI_13deltalake_aws.exit152

bb.ha:                                            ; preds = %bb.gz
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_E9drop_slowCsjPG5xYjJYir_9aws_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.nr) #31
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderEECs9rVkZwOUgsI_13deltalake_aws.exit152 unwind label %bb.gk

bb.hb:                                            ; preds = %bb.ck
  %i.nw = landingpad { ptr, i32 }
          cleanup
  br label %.body109

bb.hc:                                            ; preds = %bb.ct
  %i.nx = landingpad { ptr, i32 }
          cleanup
  br label %.body109

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider31ignore_configured_endpoint_urls40ignore_configured_endpoint_urls_provider0ECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.hs, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.cs, %bb.cr, %bb.cm, %bb.ct, %bb.cj, %bb.ci, %bb.cd, %bb.ck, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCsaB04DkjCm5a_10aws_config16default_provider5tokenNtBO_7Builder5build0ECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 2571
end_hunk_6
begin_hunk_7_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCsaB04DkjCm5a_10aws_config16default_provider11credentialsNtBO_7Builder5build0ECs9rVkZwOUgsI_13deltalake_aws:bb.a
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client3dns10ResolveDnsEL_E9drop_slowCsaB04DkjCm5a_10aws_config(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.o) #31
          to label %.body.i unwind label %bb.q

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.k, %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1737)
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !1740, !noundef !7 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config3ecs7BuilderECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.o

bb.o:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.w = atomicrmw sub ptr %i.u, i64 1 release, align 8, !noalias !1741
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config3ecs7BuilderECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client3dns10ResolveDnsEL_E9drop_slowCsaB04DkjCm5a_10aws_config(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.t) #31
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config3ecs7BuilderECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.r

bb.q:                                             ; preds = %bb.n
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

.body.i:                                          ; preds = %bb.r, %bb.n, %bb.m, %bb.l, %bb.h
  %.pn4.i = phi { ptr, i32 } [ %.pn2.i, %bb.h ], [ %i.ab, %bb.r ], [ %i.n, %bb.n ], [ %i.n, %bb.m ], [ %i.n, %bb.l ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1936
  %.val11.i = load ptr, ptr %i.z, align 8, !alias.scope !1748, !noundef !7
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1944
  %.val12.i = load ptr, ptr %i.aa, align 8, !alias.scope !1748
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EEECs9rVkZwOUgsI_13deltalake_aws(ptr %.val11.i, ptr %.val12.i) #30
          to label %.body13.i unwind label %bb.ad

bb.r:                                             ; preds = %bb.p
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config3ecs7BuilderECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.p, %bb.o, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1936
  %.val.i = load ptr, ptr %i.ac, align 8, !alias.scope !1748, !noundef !7 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1944
  %.val10.i = load ptr, ptr %i.ad, align 8, !alias.scope !1748 ; 6 uses
  %i.ae = icmp eq ptr %.val.i, null
  br i1 %i.ae, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.s

bb.s:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config3ecs7BuilderECs9rVkZwOUgsI_13deltalake_aws.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i) ]
  %i.af = load ptr, ptr %.val10.i, align 8, !invariant.load !7 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void %i.af(ptr noundef nonnull %.val.i)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ag = getelementptr inbounds nuw i8, ptr %.val10.i, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aj = getelementptr inbounds nuw i8, ptr %.val10.i, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !range !589, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.ah, i64 noundef range(i64 1, 536870913) %i.ak) #22
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.w:                                             ; preds = %bb.t
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.val10.i, i64 8
  %i.an = load i64, ptr %i.am, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %.body13.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ap = getelementptr inbounds nuw i8, ptr %.val10.i, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !range !589, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.an, i64 noundef range(i64 1, 536870913) %i.aq) #22
  br label %.body13.i

.body13.i:                                        ; preds = %bb.x, %bb.w, %.body.i
  %.pn6.i = phi { ptr, i32 } [ %.pn4.i, %.body.i ], [ %i.al, %bb.w ], [ %i.al, %bb.x ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1208
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config16default_provider6region7BuilderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(536) %i.ar) #30
          to label %bb.y unwind label %bb.ad

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.v, %bb.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config3ecs7BuilderECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1208
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config16default_provider6region7BuilderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(536) %i.as)
          to label %bb.ab unwind label %bb.aa

bb.y:                                             ; preds = %bb.aa, %.body13.i
  %.pn8.i = phi { ptr, i32 } [ %i.aw, %bb.aa ], [ %.pn6.i, %.body13.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1744 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !range !337, !alias.scope !1749, !noundef !7
  %i.av = icmp eq i64 %i.au, -9223372036854775808
  br i1 %i.av, label %common.resume, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.at)
          to label %common.resume unwind label %bb.ad

bb.aa:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.ab:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1744 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !range !337, !alias.scope !1752, !noundef !7
  %i.az = icmp eq i64 %i.ay, -9223372036854775808
  br i1 %i.az, label %common.ret, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.ax)
  br label %common.ret

bb.ad:                                            ; preds = %bb.z, %.body13.i, %.body.i, %bb.h, %bb.e, %bb.c
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

common.resume:                                    ; preds = %bb.y, %bb.z, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigEECs9rVkZwOUgsI_13deltalake_aws.exit30
  %common.resume.op = phi { ptr, i32 } [ %.pn12, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigEECs9rVkZwOUgsI_13deltalake_aws.exit30 ], [ %.pn8.i, %bb.z ], [ %.pn8.i, %bb.y ]
  resume { ptr, i32 } %common.resume.op

bb.ae:                                            ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 3912
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCsaB04DkjCm5a_10aws_config4meta6region6future13ProvideRegionECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.bb)
          to label %bb.al unwind label %bb.ak

bb.af:                                            ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 4048
  %i.bd = load i8, ptr %i.bc, align 8, !range !593, !noundef !7
  %cond.i = icmp eq i8 %i.bd, 3
  br i1 %cond.i, label %bb.ag, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsaB04DkjCm5a_10aws_config16default_provider6regionNtBL_18DefaultRegionChain6region0ECs9rVkZwOUgsI_13deltalake_aws.exit

bb.ag:                                            ; preds = %bb.af
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 4040
  %i.bf = load i8, ptr %i.be, align 8, !range !593, !noundef !7
  %cond.i.i = icmp eq i8 %i.bf, 3
  br i1 %cond.i.i, label %bb.ah, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsaB04DkjCm5a_10aws_config16default_provider6regionNtBL_18DefaultRegionChain6region0ECs9rVkZwOUgsI_13deltalake_aws.exit

bb.ah:                                            ; preds = %bb.ag
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 3976 ; 3 uses
  invoke void @_RNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtB7_12InstrumentedNtNtNtNtCsaB04DkjCm5a_10aws_config4meta6region6future13ProvideRegionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bg)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNtNtNtNtCsaB04DkjCm5a_10aws_config4meta6region6future13ProvideRegionEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bg) #30
          to label %.body unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNtNtNtNtCsaB04DkjCm5a_10aws_config4meta6region6future13ProvideRegionEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.ah
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bg)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsaB04DkjCm5a_10aws_config16default_provider6regionNtBL_18DefaultRegionChain6region0ECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.as

bb.ak:                                            ; preds = %bb.ae
  %i.bj = landingpad { ptr, i32 }
          cleanup
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 3936
  %.val17 = load ptr, ptr %i.bk, align 8
  %i.bl = getelementptr i8, ptr %0, i64 3944
  %.val18 = load ptr, ptr %i.bl, align 8, !nonnull !7, !align !154, !noundef !7
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EECs9rVkZwOUgsI_13deltalake_aws(ptr %.val17, ptr nonnull %.val18) #30
          to label %.body19 unwind label %bb.ar

bb.al:                                            ; preds = %bb.ae
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 3936
  %.val = load ptr, ptr %i.bm, align 8            ; 5 uses
  %i.bn = getelementptr i8, ptr %0, i64 3944
  %.val16 = load ptr, ptr %i.bn, align 8, !nonnull !7, !align !154, !noundef !7 ; 5 uses
  %i.bo = load ptr, ptr %.val16, align 8, !invariant.load !7 ; 2 uses
  %.not.i = icmp eq ptr %i.bo, null
  br i1 %.not.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.bo(ptr noundef nonnull %.val)
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.bp = getelementptr inbounds nuw i8, ptr %.val16, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.bs = getelementptr inbounds nuw i8, ptr %.val16, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !589, !invariant.load !7
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.bq, i64 noundef range(i64 1, 536870913) %i.bt) #22
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.ap:                                            ; preds = %bb.am
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.val16, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %.body19, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.by = getelementptr inbounds nuw i8, ptr %.val16, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !range !589, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.bw, i64 noundef range(i64 1, 536870913) %i.bz) #22
  br label %.body19

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config4meta6region19RegionProviderChainECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.ao, %bb.an
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 1952
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config7profile11credentials7BuilderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(288) %i.ca)
          to label %bb.ax unwind label %bb.aw

bb.ar:                                            ; preds = %bb.bz, %bb.bq, %bb.ak, %bb.ca, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bb, %bb.ay, %bb.aw, %.body, %.body19
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

.body19:                                          ; preds = %bb.av, %bb.at, %bb.aq, %bb.ap, %bb.ak, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.bj, %bb.ak ], [ %i.bu, %bb.ap ], [ %i.cg, %bb.at ], [ %i.bu, %bb.aq ], [ %i.ci, %bb.av ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1952
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config7profile11credentials7BuilderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(288) %i.cc) #30
          to label %bb.bu unwind label %bb.ar

bb.as:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNtNtNtNtCsaB04DkjCm5a_10aws_config4meta6region6future13ProvideRegionEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ai, %bb.as
  %eh.lpad-body = phi { ptr, i32 } [ %i.cd, %bb.as ], [ %i.bh, %bb.ai ]
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 3912
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config16default_provider6region18DefaultRegionChainECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.ce) #30
          to label %.body19 unwind label %bb.ar

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsaB04DkjCm5a_10aws_config16default_provider6regionNtBL_18DefaultRegionChain6region0ECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.ag, %bb.af, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNtNtNtNtCsaB04DkjCm5a_10aws_config4meta6region6future13ProvideRegionEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 3912 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cf)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config4meta6region19RegionProviderChainECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.at

bb.at:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsaB04DkjCm5a_10aws_config16default_provider6regionNtBL_18DefaultRegionChain6region0ECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cf)
          to label %.body19 unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config4meta6region19RegionProviderChainECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsaB04DkjCm5a_10aws_config16default_provider6regionNtBL_18DefaultRegionChain6region0ECs9rVkZwOUgsI_13deltalake_aws.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cf)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.av

bb.av:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config4meta6region19RegionProviderChainECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %.body19

bb.aw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.cj = landingpad { ptr, i32 }
          cleanup
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 2240
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config18web_identity_token7BuilderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(312) %i.ck) #30
          to label %bb.ay unwind label %bb.ar

bb.ax:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 2240
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config18web_identity_token7BuilderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(312) %i.cl)
          to label %bb.ba unwind label %bb.az

bb.ay:                                            ; preds = %bb.az, %bb.aw
  %.pn4 = phi { ptr, i32 } [ %i.cn, %bb.az ], [ %i.cj, %bb.aw ]
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 2552
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config4imds11credentials7BuilderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(368) %i.cm) #30
          to label %bb.bb unwind label %bb.ar

bb.az:                                            ; preds = %bb.ax
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ba:                                            ; preds = %bb.ax
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 2552
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config4imds11credentials7BuilderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(368) %i.co)
          to label %bb.bd unwind label %bb.bc

bb.bb:                                            ; preds = %bb.bc, %bb.ay
  %.pn6 = phi { ptr, i32 } [ %i.cq, %bb.bc ], [ %.pn4, %bb.ay ]
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 2920
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config3ecs7BuilderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(240) %i.cp) #30
          to label %.body26 unwind label %bb.ar

bb.bc:                                            ; preds = %bb.ba
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.bd:                                            ; preds = %bb.ba
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 2920 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !range !337, !alias.scope !1755, !noundef !7
  %i.ct = icmp eq i64 %i.cs, -9223372036854775808
  br i1 %i.ct, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigEECs9rVkZwOUgsI_13deltalake_aws.exit.i24, label %bb.be

bb.be:                                            ; preds = %bb.bd
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(240) %i.cr)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigEECs9rVkZwOUgsI_13deltalake_aws.exit.i24 unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 3144 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1760)
  %i.cw = load ptr, ptr %i.cv, align 8, !alias.scope !1763, !noundef !7 ; 2 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %.body26, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.cy = atomicrmw sub ptr %i.cw, i64 1 release, align 8, !noalias !1764
  %i.cz = icmp eq i64 %i.cy, 1
  br i1 %i.cz, label %bb.bh, label %.body26

bb.bh:                                            ; preds = %bb.bg
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client3dns10ResolveDnsEL_E9drop_slowCsaB04DkjCm5a_10aws_config(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cv) #31
          to label %.body26 unwind label %bb.bk

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigEECs9rVkZwOUgsI_13deltalake_aws.exit.i24: ; preds = %bb.be, %bb.bd
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 3144 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1771)
  %i.db = load ptr, ptr %i.da, align 8, !alias.scope !1774, !noundef !7 ; 2 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config3ecs7BuilderECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.bi

bb.bi:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigEECs9rVkZwOUgsI_13deltalake_aws.exit.i24
  %i.dd = atomicrmw sub ptr %i.db, i64 1 release, align 8, !noalias !1775
  %i.de = icmp eq i64 %i.dd, 1
  br i1 %i.de, label %bb.bj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config3ecs7BuilderECs9rVkZwOUgsI_13deltalake_aws.exit

bb.bj:                                            ; preds = %bb.bi
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client3dns10ResolveDnsEL_E9drop_slowCsaB04DkjCm5a_10aws_config(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.da) #31
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config3ecs7BuilderECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.bl

bb.bk:                                            ; preds = %bb.bh
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

.body26:                                          ; preds = %bb.bl, %bb.bh, %bb.bg, %bb.bf, %bb.bb
  %.pn8 = phi { ptr, i32 } [ %.pn6, %bb.bb ], [ %i.dj, %bb.bl ], [ %i.cu, %bb.bh ], [ %i.cu, %bb.bg ], [ %i.cu, %bb.bf ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 3905
  %i.dh = load i8, ptr %i.dg, align 1, !range !235, !noundef !7
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.bt, label %bb.bp

bb.bl:                                            ; preds = %bb.bj
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %.body26

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config3ecs7BuilderECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.bi, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigEECs9rVkZwOUgsI_13deltalake_aws.exit.i24, %bb.bj
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 3905 ; 2 uses
  %i.dl = load i8, ptr %i.dk, align 1, !range !235, !noundef !7
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %bb.bo, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config3ecs7BuilderECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 3696 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !range !337, !alias.scope !1782, !noundef !7
  %i.dp = icmp eq i64 %i.do, -9223372036854775808
  br i1 %i.dp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.dn)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.bs

bb.bo:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config3ecs7BuilderECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 3160
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config16default_provider6region7BuilderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(536) %i.dq)
          to label %bb.bm unwind label %bb.br

bb.bp:                                            ; preds = %bb.bt, %.body26, %bb.br
  %.pn10 = phi { ptr, i32 } [ %i.du, %bb.br ], [ %.pn8, %bb.bt ], [ %.pn8, %.body26 ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 3696 ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !range !337, !alias.scope !1785, !noundef !7
  %i.dt = icmp eq i64 %i.ds, -9223372036854775808
end_hunk_7
begin_hunk_8_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0EBM_:bb.a
bb.bm:                                            ; preds = %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %.body37.i, %.body34.i, %.body30.i, %.body24.i, %.body19.i, %.body.i, %bb.ak
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

.body37.i:                                        ; preds = %bb.bh, %bb.bf, %.body34.i
  %.pn11.i = phi { ptr, i32 } [ %.pn9.i, %.body34.i ], [ %i.cv, %bb.bh ], [ %i.ct, %bb.bf ]
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 816
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs9hC3HWJ95bf_11aws_sdk_sts5types4__tag3TagEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.df) #30
          to label %.body40.i unwind label %bb.bm

bb.bn:                                            ; preds = %bb.ak
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 720
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dg) #30
          to label %bb.bo unwind label %bb.bm

bb.bo:                                            ; preds = %bb.bn
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 744
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dh) #30
          to label %bb.bp unwind label %bb.bm

bb.bp:                                            ; preds = %bb.bo
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 768
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.di) #30
          to label %bb.bq unwind label %bb.bm

bb.bq:                                            ; preds = %bb.bp
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 792
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs9hC3HWJ95bf_11aws_sdk_sts5types23__policy_descriptor_type20PolicyDescriptorTypeEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.dj) #30
          to label %bb.br unwind label %bb.bm

bb.br:                                            ; preds = %bb.bq
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 840
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types6region6RegionEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dk) #30
          to label %bb.bs unwind label %bb.bm

bb.bs:                                            ; preds = %bb.br
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 816
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs9hC3HWJ95bf_11aws_sdk_sts5types4__tag3TagEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.dl) #30
          to label %.body40.i unwind label %bb.bm

bb.bt:                                            ; preds = %bb.a
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtBL_12ConfigLoader4load0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.dm)
          to label %bb.bw unwind label %bb.by

bb.bu:                                            ; preds = %bb.b
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %.body6

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config16default_provider11credentials23DefaultCredentialsChainECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCsaB04DkjCm5a_10aws_config4meta11credentials5chain24CredentialsProviderChainECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.b, %bb.bw
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.do, align 8
  br label %common.ret

.body6:                                           ; preds = %bb.cc, %bb.ca, %bb.cd, %bb.bx, %bb.bu
  %.pn4 = phi { ptr, i32 } [ %i.dn, %bb.bu ], [ %.pn, %bb.cd ], [ %.pn, %bb.bx ], [ %i.ef, %bb.cc ], [ %i.ed, %bb.ca ]
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.dp, align 8
  resume { ptr, i32 } %.pn4

bb.bv:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs9hC3HWJ95bf_11aws_sdk_sts5types4__tag3TagEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.af, %.body40.i, %bb.bv
  %eh.lpad-body = phi { ptr, i32 } [ %i.dq, %bb.bv ], [ %.pn13.i, %.body40.i ], [ %i.bc, %bb.af ], [ %.pn10.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ]
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 0, ptr %i.dr, align 2
  br label %bb.bx

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCsaB04DkjCm5a_10aws_config3sts11assume_roleNtBN_25AssumeRoleProviderBuilder5build0ECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs9hC3HWJ95bf_11aws_sdk_sts5types4__tag3TagEEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigEECs9rVkZwOUgsI_13deltalake_aws.exit34.i.i, %bb.c, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs9hC3HWJ95bf_11aws_sdk_sts5types4__tag3TagEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 0, ptr %i.ds, align 2
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bt, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCsaB04DkjCm5a_10aws_config3sts11assume_roleNtBN_25AssumeRoleProviderBuilder5build0ECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 0, ptr %i.dt, align 1
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dv = load i8, ptr %i.du, align 8, !range !235, !noundef !7
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.bz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config16default_provider11credentials23DefaultCredentialsChainECs9rVkZwOUgsI_13deltalake_aws.exit

bb.bx:                                            ; preds = %bb.by, %.body
  %.pn = phi { ptr, i32 } [ %i.eb, %bb.by ], [ %eh.lpad-body, %.body ] ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 0, ptr %i.dx, align 1
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dz = load i8, ptr %i.dy, align 8, !range !235, !noundef !7
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.cd, label %.body6

bb.by:                                            ; preds = %bb.bt
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bz:                                            ; preds = %bb.bw
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTINtNtB7_6borrow3CoweEINtNtB7_5boxed3BoxDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ec)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCsaB04DkjCm5a_10aws_config4meta11credentials5chain24CredentialsProviderChainECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ed = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweEINtNtB7_5boxed3BoxDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ec)
          to label %.body6 unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCsaB04DkjCm5a_10aws_config4meta11credentials5chain24CredentialsProviderChainECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.bz
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweEINtNtB7_5boxed3BoxDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ec)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config16default_provider11credentials23DefaultCredentialsChainECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.cc

bb.cc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCsaB04DkjCm5a_10aws_config4meta11credentials5chain24CredentialsProviderChainECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %.body6

bb.cd:                                            ; preds = %bb.bx
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config16default_provider11credentials23DefaultCredentialsChainECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eg) #30
          to label %.body6 unwind label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.b = load i8, ptr %i.a, align 2, !range !1201, !noundef !7
  switch i8 %i.b, label %common.ret [
    i8 4, label %bb.f
    i8 3, label %bb.b
  ]

common.ret:                                       ; preds = %bb.a, %bb.n
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  invoke void @_RNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtB7_12InstrumentedNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.c)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) #30
          to label %.body unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00EECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.g = load i8, ptr %i.f, align 8, !range !593, !noundef !7
  %cond.i = icmp eq i8 %i.g, 3
  br i1 %cond.i, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.val.i = load ptr, ptr %i.h, align 8           ; 5 uses
  %i.i = getelementptr i8, ptr %0, i64 152
  %.val4.i = load ptr, ptr %i.i, align 8, !nonnull !7, !align !154, !noundef !7 ; 5 uses
  %i.j = load ptr, ptr %.val4.i, align 8, !invariant.load !7 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.j(ptr noundef nonnull %.val.i)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %.val4.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00EECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %.val4.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !589, !invariant.load !7
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #22
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.k:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val4.i, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %.body, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %.val4.i, i64 16
  %i.u = load i64, ptr %i.t, align 8, !range !589, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.r, i64 noundef range(i64 1, 536870913) %i.u) #22
  br label %.body

bb.m:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00EECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.j, %bb.i, %bb.f, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 0, ptr %i.w, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.y = load i8, ptr %i.x, align 8, !range !235, !noundef !7
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.o, label %bb.n

.body:                                            ; preds = %bb.l, %bb.k, %bb.m, %bb.c
  %.pn = phi { ptr, i32 } [ %i.d, %bb.c ], [ %i.v, %bb.m ], [ %i.p, %bb.k ], [ %i.p, %bb.l ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 0, ptr %i.aa, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ac = load i8, ptr %i.ab, align 8, !range !235, !noundef !7
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.r, label %bb.p

bb.n:                                             ; preds = %bb.o, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00EECs9rVkZwOUgsI_13deltalake_aws.exit
  store i8 0, ptr %i.x, align 8
  br label %common.ret

bb.o:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00EECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(40) %i.ae)
          to label %bb.n unwind label %bb.q

bb.p:                                             ; preds = %bb.r, %bb.q, %.body
  %.pn2 = phi { ptr, i32 } [ %i.ag, %bb.q ], [ %.pn, %bb.r ], [ %.pn, %.body ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.af, align 8
  resume { ptr, i32 } %.pn2

bb.q:                                             ; preds = %bb.o
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.r:                                             ; preds = %.body
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(40) %i.ah) #30
          to label %bb.p unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !1835, !noundef !7 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775800
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, 9223372036854775802
  %i.d = icmp ugt i64 %i.a, -9223372036854775803
  %i.e = select i1 %i.d, i64 %i.c, i64 2
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.e
    i64 1, label %bb.k
    i64 2, label %bb.n
    i64 3, label %bb.o
    i64 4, label %bb.v
    i64 5, label %bb.ab
    i64 6, label %bb.ae
    i64 7, label %bb.ah
    i64 8, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit
    i64 9, label %bb.ak
    i64 10, label %bb.an
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

common.resume:                                    ; preds = %bb.bz, %bb.ca, %bb.bt, %bb.bu, %bb.bn, %bb.bo, %bb.bh, %bb.bi, %bb.bb, %bb.bc, %.body58, %.body53, %.body48, %.body43, %.body38, %.body, %bb.au, %bb.av, %bb.z, %bb.aa, %bb.t, %bb.u, %bb.i, %bb.j, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.et, %bb.bt ], [ %i.g, %bb.c ], [ %i.q, %bb.i ], [ %i.ai, %bb.t ], [ %i.aw, %bb.z ], [ %i.cc, %bb.au ], [ %eh.lpad-body59, %.body58 ], [ %i.cu, %bb.bb ], [ %i.dl, %bb.bh ], [ %i.ec, %bb.bn ], [ %i.q, %bb.j ], [ %i.ai, %bb.u ], [ %i.aw, %bb.aa ], [ %i.cc, %bb.av ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body39, %.body38 ], [ %eh.lpad-body44, %.body43 ], [ %eh.lpad-body49, %.body48 ], [ %eh.lpad-body54, %.body53 ], [ %i.cu, %bb.bc ], [ %i.dl, %bb.bi ], [ %i.ec, %bb.bo ], [ %i.et, %bb.bu ], [ %i.fk, %bb.ca ], [ %i.fk, %bb.bz ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val27 = load ptr, ptr %i.i, align 8           ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val28 = load ptr, ptr %i.j, align 8, !nonnull !7, !align !154, !noundef !7 ; 5 uses
  %i.k = load ptr, ptr %.val28, align 8, !invariant.load !7 ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val27) ]
  invoke void %i.k(ptr noundef nonnull %.val27)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.val28, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %.val28, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !589, !invariant.load !7
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val27) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val27, i64 noundef range(i64 1, 0) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #22
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.i:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val28, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %common.resume, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %.val28, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !589, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val27, i64 noundef range(i64 1, 0) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #22
  br label %common.resume

bb.k:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.k
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit32 unwind label %bb.aq

bb.n:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.o:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val29 = load ptr, ptr %i.z, align 8, !noundef !7 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val30 = load ptr, ptr %i.aa, align 8          ; 6 uses
  %i.ab = icmp eq ptr %.val29, null
  br i1 %i.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val30) ]
  %i.ac = load ptr, ptr %.val30, align 8, !invariant.load !7 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void %i.ac(ptr noundef nonnull %.val29)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ad = getelementptr inbounds nuw i8, ptr %.val30, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ag = getelementptr inbounds nuw i8, ptr %.val30, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !589, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val29, i64 noundef range(i64 1, 0) %i.ae, i64 noundef range(i64 1, 536870913) %i.ah) #22
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.t:                                             ; preds = %bb.q
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val30, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %common.resume, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.am = getelementptr inbounds nuw i8, ptr %.val30, i64 16
  %i.an = load i64, ptr %i.am, align 8, !range !589, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val29, i64 noundef range(i64 1, 0) %i.ak, i64 noundef range(i64 1, 536870913) %i.an) #22
  br label %common.resume

bb.v:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val25 = load ptr, ptr %i.ao, align 8          ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val26 = load ptr, ptr %i.ap, align 8, !nonnull !7, !align !154, !noundef !7 ; 5 uses
  %i.aq = load ptr, ptr %.val26, align 8, !invariant.load !7 ; 2 uses
  %.not.i33 = icmp eq ptr %i.aq, null
  br i1 %.not.i33, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25) ]
  invoke void %i.aq(ptr noundef nonnull %.val25)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ar = getelementptr inbounds nuw i8, ptr %.val26, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.au = getelementptr inbounds nuw i8, ptr %.val26, i64 16
  %i.av = load i64, ptr %i.au, align 8, !range !589, !invariant.load !7
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val25, i64 noundef range(i64 1, 0) %i.as, i64 noundef range(i64 1, 536870913) %i.av) #22
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.z:                                             ; preds = %bb.w
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.val26, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %common.resume, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ba = getelementptr inbounds nuw i8, ptr %.val26, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !range !589, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val25, i64 noundef range(i64 1, 0) %i.ay, i64 noundef range(i64 1, 536870913) %i.bb) #22
  br label %common.resume

bb.ab:                                            ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i37 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %.body38 unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i37: ; preds = %bb.ab
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit40 unwind label %bb.ax

bb.ae:                                            ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i42 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %.body43 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i42: ; preds = %bb.ae
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit45 unwind label %bb.bd

bb.ah:                                            ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i47 unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %.body48 unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i47: ; preds = %bb.ah
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit50 unwind label %bb.bj

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.by, %bb.bx, %bb.bs, %bb.br, %bb.bm, %bb.bl, %bb.bg, %bb.bf, %bb.ba, %bb.az, %bb.at, %bb.as, %bb.y, %bb.x, %bb.s, %bb.r, %bb.o, %bb.h, %bb.g, %bb.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.a
  ret void

bb.ak:                                            ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i52 unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %.body53 unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i52: ; preds = %bb.ak
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit55 unwind label %bb.bp

bb.an:                                            ; preds = %bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i57 unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %.body58 unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i57: ; preds = %bb.an
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit60 unwind label %bb.bv

bb.aq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.l, %bb.aq
  %eh.lpad-body = phi { ptr, i32 } [ %i.br, %bb.aq ], [ %i.x, %bb.l ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val23 = load ptr, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val24 = load ptr, ptr %i.bt, align 8, !nonnull !7, !align !154, !noundef !7
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws(ptr %.val23, ptr nonnull %.val24) #30
          to label %common.resume unwind label %bb.aw

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit32: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val21 = load ptr, ptr %i.bu, align 8          ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val22 = load ptr, ptr %i.bv, align 8, !nonnull !7, !align !154, !noundef !7 ; 5 uses
  %i.bw = load ptr, ptr %.val22, align 8, !invariant.load !7 ; 2 uses
  %.not.i61 = icmp eq ptr %i.bw, null
  br i1 %.not.i61, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit32
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val21) ]
  invoke void %i.bw(ptr noundef nonnull %.val21)
          to label %bb.as unwind label %bb.au

bb.as:                                            ; preds = %bb.ar, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit32
  %i.bx = getelementptr inbounds nuw i8, ptr %.val22, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ca = getelementptr inbounds nuw i8, ptr %.val22, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !range !589, !invariant.load !7
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val21) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21, i64 noundef range(i64 1, 0) %i.by, i64 noundef range(i64 1, 536870913) %i.cb) #22
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.au:                                            ; preds = %bb.ar
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.val22, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %common.resume, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cg = getelementptr inbounds nuw i8, ptr %.val22, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !range !589, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21, i64 noundef range(i64 1, 0) %i.ce, i64 noundef range(i64 1, 536870913) %i.ch) #22
  br label %common.resume

bb.aw:                                            ; preds = %.body, %.body38, %.body43, %.body48, %.body53, %.body58
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.ax:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i37
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %.body38

.body38:                                          ; preds = %bb.ac, %bb.ax
  %eh.lpad-body39 = phi { ptr, i32 } [ %i.cj, %bb.ax ], [ %i.bd, %bb.ac ]
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val19 = load ptr, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val20 = load ptr, ptr %i.cl, align 8, !nonnull !7, !align !154, !noundef !7
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws(ptr %.val19, ptr nonnull %.val20) #30
          to label %common.resume unwind label %bb.aw

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit40: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i37
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val17 = load ptr, ptr %i.cm, align 8          ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val18 = load ptr, ptr %i.cn, align 8, !nonnull !7, !align !154, !noundef !7 ; 5 uses
  %i.co = load ptr, ptr %.val18, align 8, !invariant.load !7 ; 2 uses
  %.not.i64 = icmp eq ptr %i.co, null
  br i1 %.not.i64, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit40
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val17) ]
  invoke void %i.co(ptr noundef nonnull %.val17)
          to label %bb.az unwind label %bb.bb

bb.az:                                            ; preds = %bb.ay, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit40
  %i.cp = getelementptr inbounds nuw i8, ptr %.val18, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.cs = getelementptr inbounds nuw i8, ptr %.val18, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !range !589, !invariant.load !7
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val17) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17, i64 noundef range(i64 1, 0) %i.cq, i64 noundef range(i64 1, 536870913) %i.ct) #22
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.bb:                                            ; preds = %bb.ay
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.val18, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %common.resume, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.cy = getelementptr inbounds nuw i8, ptr %.val18, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !range !589, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17, i64 noundef range(i64 1, 0) %i.cw, i64 noundef range(i64 1, 536870913) %i.cz) #22
  br label %common.resume

bb.bd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i42
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %.body43

.body43:                                          ; preds = %bb.af, %bb.bd
  %eh.lpad-body44 = phi { ptr, i32 } [ %i.da, %bb.bd ], [ %i.bg, %bb.af ]
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val15 = load ptr, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val16 = load ptr, ptr %i.dc, align 8, !nonnull !7, !align !154, !noundef !7
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws(ptr %.val15, ptr nonnull %.val16) #30
          to label %common.resume unwind label %bb.aw

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit45: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i42
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val13 = load ptr, ptr %i.dd, align 8          ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val14 = load ptr, ptr %i.de, align 8, !nonnull !7, !align !154, !noundef !7 ; 5 uses
  %i.df = load ptr, ptr %.val14, align 8, !invariant.load !7 ; 2 uses
  %.not.i67 = icmp eq ptr %i.df, null
  br i1 %.not.i67, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit45
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13) ]
  invoke void %i.df(ptr noundef nonnull %.val13)
          to label %bb.bf unwind label %bb.bh

bb.bf:                                            ; preds = %bb.be, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit45
  %i.dg = getelementptr inbounds nuw i8, ptr %.val14, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.dj = getelementptr inbounds nuw i8, ptr %.val14, i64 16
  %i.dk = load i64, ptr %i.dj, align 8, !range !589, !invariant.load !7
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13, i64 noundef range(i64 1, 0) %i.dh, i64 noundef range(i64 1, 536870913) %i.dk) #22
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.bh:                                            ; preds = %bb.be
  %i.dl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.val14, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %common.resume, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.dp = getelementptr inbounds nuw i8, ptr %.val14, i64 16
  %i.dq = load i64, ptr %i.dp, align 8, !range !589, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13, i64 noundef range(i64 1, 0) %i.dn, i64 noundef range(i64 1, 536870913) %i.dq) #22
  br label %common.resume

bb.bj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i47
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %.body48

.body48:                                          ; preds = %bb.ai, %bb.bj
  %eh.lpad-body49 = phi { ptr, i32 } [ %i.dr, %bb.bj ], [ %i.bj, %bb.ai ]
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val11 = load ptr, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val12 = load ptr, ptr %i.dt, align 8, !nonnull !7, !align !154, !noundef !7
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws(ptr %.val11, ptr nonnull %.val12) #30
          to label %common.resume unwind label %bb.aw

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit50: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i47
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val9 = load ptr, ptr %i.du, align 8           ; 5 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val10 = load ptr, ptr %i.dv, align 8, !nonnull !7, !align !154, !noundef !7 ; 5 uses
  %i.dw = load ptr, ptr %.val10, align 8, !invariant.load !7 ; 2 uses
  %.not.i70 = icmp eq ptr %i.dw, null
  br i1 %.not.i70, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit50
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9) ]
  invoke void %i.dw(ptr noundef nonnull %.val9)
          to label %bb.bl unwind label %bb.bn

bb.bl:                                            ; preds = %bb.bk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit50
  %i.dx = getelementptr inbounds nuw i8, ptr %.val10, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ea = getelementptr inbounds nuw i8, ptr %.val10, i64 16
  %i.eb = load i64, ptr %i.ea, align 8, !range !589, !invariant.load !7
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef range(i64 1, 0) %i.dy, i64 noundef range(i64 1, 536870913) %i.eb) #22
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.bn:                                            ; preds = %bb.bk
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.val10, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %common.resume, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.eg = getelementptr inbounds nuw i8, ptr %.val10, i64 16
  %i.eh = load i64, ptr %i.eg, align 8, !range !589, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef range(i64 1, 0) %i.ee, i64 noundef range(i64 1, 536870913) %i.eh) #22
  br label %common.resume

bb.bp:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i52
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %.body53

.body53:                                          ; preds = %bb.al, %bb.bp
  %eh.lpad-body54 = phi { ptr, i32 } [ %i.ei, %bb.bp ], [ %i.bm, %bb.al ]
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val7 = load ptr, ptr %i.ej, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val8 = load ptr, ptr %i.ek, align 8, !nonnull !7, !align !154, !noundef !7
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws(ptr %.val7, ptr nonnull %.val8) #30
          to label %common.resume unwind label %bb.aw

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit55: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i52
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val5 = load ptr, ptr %i.el, align 8           ; 5 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val6 = load ptr, ptr %i.em, align 8, !nonnull !7, !align !154, !noundef !7 ; 5 uses
  %i.en = load ptr, ptr %.val6, align 8, !invariant.load !7 ; 2 uses
  %.not.i73 = icmp eq ptr %i.en, null
  br i1 %.not.i73, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit55
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  invoke void %i.en(ptr noundef nonnull %.val5)
          to label %bb.br unwind label %bb.bt

bb.br:                                            ; preds = %bb.bq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit55
  %i.eo = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.ep = load i64, ptr %i.eo, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.eq = icmp eq i64 %i.ep, 0
  br i1 %i.eq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.er = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.es = load i64, ptr %i.er, align 8, !range !589, !invariant.load !7
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef range(i64 1, 0) %i.ep, i64 noundef range(i64 1, 536870913) %i.es) #22
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.bt:                                            ; preds = %bb.bq
  %i.et = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.ev = load i64, ptr %i.eu, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %common.resume, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ex = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.ey = load i64, ptr %i.ex, align 8, !range !589, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef range(i64 1, 0) %i.ev, i64 noundef range(i64 1, 536870913) %i.ey) #22
  br label %common.resume

bb.bv:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i57
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %.body58

.body58:                                          ; preds = %bb.ao, %bb.bv
  %eh.lpad-body59 = phi { ptr, i32 } [ %i.ez, %bb.bv ], [ %i.bp, %bb.ao ]
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3 = load ptr, ptr %i.fa, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val4 = load ptr, ptr %i.fb, align 8, !nonnull !7, !align !154, !noundef !7
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws(ptr %.val3, ptr nonnull %.val4) #30
          to label %common.resume unwind label %bb.aw

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit60: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i57
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.fc, align 8            ; 5 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val2 = load ptr, ptr %i.fd, align 8, !nonnull !7, !align !154, !noundef !7 ; 5 uses
  %i.fe = load ptr, ptr %.val2, align 8, !invariant.load !7 ; 2 uses
  %.not.i76 = icmp eq ptr %i.fe, null
  br i1 %.not.i76, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit60
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.fe(ptr noundef nonnull %.val)
          to label %bb.bx unwind label %bb.bz

bb.bx:                                            ; preds = %bb.bw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit60
  %i.ff = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.fg = load i64, ptr %i.ff, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.fh = icmp eq i64 %i.fg, 0
  br i1 %i.fh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.fi = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.fj = load i64, ptr %i.fi, align 8, !range !589, !invariant.load !7
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.fg, i64 noundef range(i64 1, 536870913) %i.fj) #22
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.bz:                                            ; preds = %bb.bw
  %i.fk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.fm = load i64, ptr %i.fl, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.fn = icmp eq i64 %i.fm, 0
  br i1 %i.fn, label %common.resume, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.fo = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.fp = load i64, ptr %i.fo, align 8, !range !589, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.fm, i64 noundef range(i64 1, 536870913) %i.fp) #22
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types10config_bag11FrozenLayerECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1836)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1839)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !1842, !nonnull !7, !noundef !7
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !1842
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types10config_bag5LayerEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types10config_bag5LayerE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types10config_bag5LayerEECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types10config_bag5LayerEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types10config_bag14CloneableLayerECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !337, !alias.scope !1843, !noundef !7
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types10config_bag5LayerECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
          to label %.body.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types10config_bag5LayerECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEENtNtNtBT_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxINtNtB4_4hash18BuildHasherDefaultNtNtNtB1X_10config_bag10typeid_map8IdHasherEEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.f

bb.f:                                             ; preds = %.body.i
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxINtNtB4_4hash18BuildHasherDefaultNtNtNtB1X_10config_bag10typeid_map8IdHasherEEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types10config_bag5LayerECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEENtNtNtBT_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !1848, !noundef !7
  switch i64 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit [
    i64 0, label %bb.b
    i64 1, label %bb.e
    i64 2, label %bb.h
    i64 3, label %bb.k
    i64 5, label %bb.n
  ]

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.q, %bb.p, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit7, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit5, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit3, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

common.resume:                                    ; preds = %bb.r, %bb.s, %bb.l, %bb.i, %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.l ], [ %i.c, %bb.c ], [ %i.f, %bb.f ], [ %i.i, %bb.i ], [ %i.v, %bb.s ], [ %i.v, %bb.r ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit3 unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit3: ; preds = %bb.e
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.h:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit5 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit5: ; preds = %bb.h
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.k:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit7 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit7: ; preds = %bb.k
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.n:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.n, align 8             ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.o, align 8, !nonnull !7, !align !154, !noundef !7 ; 5 uses
  %i.p = load ptr, ptr %.val1, align 8, !invariant.load !7 ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.p(ptr noundef nonnull %.val)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.q = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.t = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.u = load i64, ptr %i.t, align 8, !range !589, !invariant.load !7
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.r, i64 noundef range(i64 1, 536870913) %i.u) #22
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.r:                                             ; preds = %bb.o
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %common.resume, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.z = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !589, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.x, i64 noundef range(i64 1, 536870913) %i.aa) #22
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 16 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 16, !range !1849, !noundef !7 ; 8 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775745
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, 9223372036854775787
  %i.d = icmp ugt i64 %i.a, -9223372036854775788
  %i.e = select i1 %i.d, i64 %i.c, i64 42
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.g
    i64 3, label %bb.j
    i64 4, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit
    i64 5, label %bb.m
    i64 6, label %bb.p
    i64 7, label %bb.v
    i64 8, label %bb.w
    i64 9, label %bb.z
    i64 10, label %bb.aa
    i64 11, label %bb.ab
    i64 12, label %bb.ac
    i64 13, label %bb.as
    i64 14, label %bb.av
    i64 15, label %bb.ay
    i64 16, label %bb.bb
    i64 17, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit
    i64 18, label %bb.be
    i64 19, label %bb.bh
    i64 20, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit
    i64 21, label %bb.bk
    i64 22, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit
    i64 23, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit
    i64 24, label %bb.bp
    i64 25, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit
    i64 26, label %bb.bs
    i64 27, label %bb.bv
    i64 28, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit
    i64 29, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit
    i64 30, label %bb.by
    i64 31, label %bb.cb
    i64 32, label %bb.ce
    i64 33, label %bb.ch
    i64 34, label %bb.ck
    i64 35, label %bb.cn
    i64 36, label %bb.cq
    i64 37, label %bb.ct
    i64 38, label %bb.cw
    i64 39, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit
    i64 40, label %bb.dm
    i64 41, label %bb.dp
    i64 42, label %bb.ds
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

common.resume:                                    ; preds = %bb.fk, %.body30, %.body62, %.body, %bb.du, %bb.dx, %bb.eb, %bb.ed, %bb.eh, %bb.ek, %.body.i.i.i70, %bb.es, %.body.i3.i.i, %bb.fb, %bb.dq, %bb.cy, %bb.db, %bb.de, %bb.dh, %bb.dk, %bb.cu, %bb.cr, %bb.co, %bb.cl, %bb.ci, %bb.cf, %bb.cc, %bb.bz, %bb.bw, %bb.bq, %bb.bi, %bb.bf, %bb.bc, %bb.az, %bb.aw, %bb.at, %bb.x, %bb.t, %bb.u, %bb.n, %bb.k, %bb.h, %bb.c, %bb.fg, %bb.bo, %bb.ar
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body63, %.body62 ], [ %i.g, %bb.c ], [ %i.o, %bb.h ], [ %i.r, %bb.k ], [ %i.u, %bb.n ], [ %i.ae, %bb.t ], [ %eh.lpad-body.i.i, %bb.ar ], [ %i.am, %bb.x ], [ %i.ce, %bb.at ], [ %i.ch, %bb.aw ], [ %i.ck, %bb.az ], [ %i.cn, %bb.bc ], [ %i.cq, %bb.bf ], [ %i.db, %bb.bo ], [ %i.ct, %bb.bi ], [ %i.dd, %bb.bq ], [ %i.dj, %bb.bw ], [ %i.dm, %bb.bz ], [ %i.dp, %bb.cc ], [ %i.ds, %bb.cf ], [ %i.dv, %bb.ci ], [ %i.dy, %bb.cl ], [ %i.eb, %bb.co ], [ %i.ee, %bb.cr ], [ %i.eh, %bb.cu ], [ %i.eu, %bb.dk ], [ %i.fa, %bb.dq ], [ %i.hb, %bb.fg ], [ %eh.lpad-body.i4.i.i, %.body.i3.i.i ], [ %i.ae, %bb.u ], [ %i.es, %bb.dh ], [ %i.em, %bb.cy ], [ %i.eo, %bb.db ], [ %i.eq, %bb.de ], [ %i.fk, %bb.dx ], [ %i.fh, %bb.du ], [ %eh.lpad-body.i.i.i, %.body.i.i.i70 ], [ %i.fp, %bb.eb ], [ %i.fw, %bb.eh ], [ %i.fz, %bb.ek ], [ %i.fs, %bb.ed ], [ %i.gi, %bb.es ], [ %i.gv, %bb.fb ], [ %i.k, %.body ], [ %eh.lpad-body31, %.body30 ], [ %i.hj, %bb.fk ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1850)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !1850, !nonnull !7, !noundef !7 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 16 dereferenceable(96) %i.j)
          to label %bb.fe unwind label %.body, !noalias !1850, !inline_history !1853

.body:                                            ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef 96, i64 noundef 16) #22, !noalias !1850
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val6 = load ptr, ptr %i.l, align 16, !nonnull !7, !noundef !7
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECs9rVkZwOUgsI_13deltalake_aws(ptr nonnull %.val6) #30
          to label %common.resume unwind label %bb.fh

bb.f:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(32) %i.m)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.g:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit8 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit8: ; preds = %bb.g
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.j:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit10 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit10: ; preds = %bb.j
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars9ArrayDataECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.em, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars7MapDataECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.dz, %bb.dz, %bb.dz, %bb.dz, %bb.dz, %bb.dz, %bb.dz, %bb.dz, %bb.dz, %bb.dz, %bb.dz, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit2.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.ds, %bb.ds, %bb.s, %bb.r, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit73, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit32, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECs9rVkZwOUgsI_13deltalake_aws.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit67, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel16table_properties11deserialize18ParseIntervalErrorECs9rVkZwOUgsI_13deltalake_aws.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit59, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit56, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit53, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit50, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit47, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit44, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit41, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit38, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit35, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit28, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit26, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit24, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit22, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit20, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit18, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit16, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.ab, %bb.aa, %bb.z, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit14, %bb.v, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit12, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit10, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit8, %bb.f, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  ret void

bb.m:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit12 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %common.resume unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit12: ; preds = %bb.m
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.p:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.w, align 8             ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2 = load ptr, ptr %i.x, align 16, !nonnull !7, !align !154, !noundef !7 ; 5 uses
  %i.y = load ptr, ptr %.val2, align 8, !invariant.load !7 ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.y(ptr noundef nonnull %.val)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.z = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ac = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !589, !invariant.load !7
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #22
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.t:                                             ; preds = %bb.q
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %common.resume, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ai = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !range !589, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.ag, i64 noundef range(i64 1, 536870913) %i.aj) #22
  br label %common.resume

bb.v:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ak)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.w:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit14 unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %common.resume unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit14: ; preds = %bb.w
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.z:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(32) %i.ao)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.aa:                                            ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.ap)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.ab:                                            ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.aq)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.ac:                                            ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.ar, align 8, !nonnull !7, !noundef !7 ; 16 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1854)
  %i.as = getelementptr inbounds nuw i8, ptr %.val3, i64 88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1857)
  %i.at = load i16, ptr %i.as, align 8, !range !1860, !alias.scope !1861, !noundef !7
  %i.au = icmp eq i16 %i.at, 3
  br i1 %i.au, label %bb.ad, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error4KindECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.av = getelementptr inbounds nuw i8, ptr %.val3, i64 96
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1862)
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !1865, !noundef !7 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error4KindECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1866)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1869)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1872)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !1875, !nonnull !7, !noundef !7
  %i.ba = getelementptr inbounds nuw i8, ptr %.val3, i64 120
  %i.bb = getelementptr inbounds nuw i8, ptr %.val3, i64 104
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !1875, !noundef !7
  %i.bd = getelementptr inbounds nuw i8, ptr %.val3, i64 112
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !1875, !noundef !7
  invoke void %i.az(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef %i.bc, i64 noundef %i.be)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error4KindECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i unwind label %bb.af, !inline_history !1876

bb.af:                                            ; preds = %bb.ae
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = getelementptr inbounds nuw i8, ptr %.val3, i64 128
  %.val3.i.i.i = load ptr, ptr %i.bg, align 8, !alias.scope !1854, !noundef !7
  %i.bh = getelementptr inbounds nuw i8, ptr %.val3, i64 136
  %.val4.i.i.i = load ptr, ptr %i.bh, align 8, !alias.scope !1854
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1X_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws(ptr %.val3.i.i.i, ptr %.val4.i.i.i) #30
          to label %.body.i.i.i unwind label %bb.ap

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error4KindECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.bi = getelementptr inbounds nuw i8, ptr %.val3, i64 128
  %.val.i.i.i = load ptr, ptr %i.bi, align 8, !alias.scope !1854, !noundef !7 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.val3, i64 136
  %.val2.i.i.i = load ptr, ptr %i.bj, align 8, !alias.scope !1854 ; 6 uses
  %i.bk = icmp eq ptr %.val.i.i.i, null
  br i1 %i.bk, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1X_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error4KindECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i.i) ]
  %i.bl = load ptr, ptr %.val2.i.i.i, align 8, !invariant.load !7 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void %i.bl(ptr noundef nonnull %.val.i.i.i)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.bm = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1X_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bp = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !range !589, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.bn, i64 noundef range(i64 1, 536870913) %i.bq) #22
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1X_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i

bb.ak:                                            ; preds = %bb.ah
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %.body.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bv = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !range !589, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.bt, i64 noundef range(i64 1, 536870913) %i.bw) #22
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.al, %bb.ak, %bb.af
  %.pn.i.i.i = phi { ptr, i32 } [ %i.bf, %bb.af ], [ %i.br, %bb.ak ], [ %i.br, %bb.al ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCseo6ZV82fEK1_3url3UrlEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(144) %.val3) #30
          to label %bb.ar unwind label %bb.ap

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1X_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.aj, %bb.ai, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error4KindECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %i.bx = load i64, ptr %.val3, align 8, !range !337, !alias.scope !1877, !noundef !7
  %i.by = icmp eq i64 %i.bx, -9223372036854775808
  br i1 %i.by, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.am

bb.am:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1X_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(144) %.val3)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(144) %.val3)
          to label %bb.ar unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i: ; preds = %bb.am
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(144) %.val3)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.aq

bb.ap:                                            ; preds = %.body.i.i.i, %bb.af
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.aq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.an, %.body.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.cc, %bb.aq ], [ %i.bz, %bb.an ], [ %.pn.i.i.i, %.body.i.i.i ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef 144, i64 noundef 8) #22
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1X_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef 144, i64 noundef 8) #22
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.as:                                            ; preds = %bb.a
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cd)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit16 unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ce = landingpad { ptr, i32 }
end_hunk_8
begin_hunk_9_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws:bb.a
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store ptr @69, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !2449
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store ptr %i.b, ptr %.sroa.15.0..sroa_idx.i, align 8, !noalias !2449
  %i.au = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !invariant.load !7, !noalias !2449, !nonnull !7
  invoke void %i.av(ptr noundef %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.d) #35
          to label %.noexc6 unwind label %bb.p, !inline_history !2452

.noexc6:                                          ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2449
  br label %.noexc2

bb.l:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !2449
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.g
  %.sroa.568.sroa.5.0.i = phi i64 [ %i.ax, %bb.l ], [ undef, %bb.g ]
  %.sroa.067.0.i = phi i64 [ 1, %bb.l ], [ 2, %bb.g ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !2449, !noundef !7 ; 2 uses
  %.not75.i = icmp eq ptr %i.az, null
  br i1 %.not75.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.bb = load i64, ptr %i.ba, align 8, !noalias !2449
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.663.sroa.5.0.i = phi i64 [ undef, %bb.m ], [ %i.bb, %bb.n ]
  %.sroa.058.0.i = phi i64 [ 2, %bb.m ], [ 1, %bb.n ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %.sroa.067.0.i, ptr %i.a, align 8, !noalias !2449
  %.sroa.049.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.049.sroa.3.sroa.3.0..sroa.049.sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.049.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.049.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.049.sroa.6.sroa.3.0..sroa.049.sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.551.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.752.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.853.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.954.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.bd = load <2 x i32>, ptr %i.bc, align 8, !noalias !2449
  store ptr %i.ai, ptr %.sroa.049.sroa.3.0..sroa_idx.i, align 8, !noalias !2449
  store i64 %.sroa.568.sroa.5.0.i, ptr %.sroa.049.sroa.3.sroa.3.0..sroa.049.sroa.3.0..sroa_idx.sroa_idx.i, align 8, !noalias !2449
  store i64 %.sroa.058.0.i, ptr %.sroa.049.sroa.4.0..sroa_idx.i, align 8, !noalias !2449
  store ptr %i.az, ptr %.sroa.049.sroa.6.0..sroa_idx.i, align 8, !noalias !2449
  store i64 %.sroa.663.sroa.5.0.i, ptr %.sroa.049.sroa.6.sroa.3.0..sroa.049.sroa.6.0..sroa_idx.sroa_idx.i, align 8, !noalias !2449
  store i64 5, ptr %.sroa.551.0..sroa_idx.i, align 8, !noalias !2449
  store ptr @230, ptr %.sroa.752.0..sroa_idx.i, align 8, !noalias !2449
  store i64 13, ptr %.sroa.853.0..sroa_idx.i, align 8, !noalias !2449
  store <2 x i32> %i.bd, ptr %.sroa.954.0..sroa_idx.i, align 8, !noalias !2449
  %.sroa.1356.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr @229, ptr %.sroa.1356.0..sroa_idx.i, align 8, !noalias !2449
  %.sroa.1557.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %i.g, ptr %.sroa.1557.0..sroa_idx.i, align 8, !noalias !2449
  %i.be = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !invariant.load !7, !noalias !2449, !nonnull !7
  invoke void %i.bf(ptr noundef %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.a) #35
          to label %.noexc7 unwind label %bb.p, !inline_history !2452

.noexc7:                                          ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2449
  br label %.noexc2

.noexc2:                                          ; preds = %.noexc7, %.noexc6, %.noexc5, %switch.lookup.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2446
  br label %_RNvXs7_NtCscTw95cGIolY_7tracing4spanNtB5_4SpanNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit

bb.p:                                             ; preds = %bb.o, %bb.k, %.noexc4, %bb.d, %bb.b
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCscTw95cGIolY_7tracing4span5InnerEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(32) %0) #30
          to label %bb.u unwind label %bb.t

_RNvXs7_NtCscTw95cGIolY_7tracing4spanNtB5_4SpanNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit: ; preds = %.noexc2, %bb.c, %.noexc1
  call void @llvm.experimental.noalias.scope.decl(metadata !2453)
  %i.bh = load i64, ptr %0, align 8, !range !6, !alias.scope !2453, !noundef !7 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 2
  br i1 %i.bi, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCscTw95cGIolY_7tracing4span5InnerEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.q

bb.q:                                             ; preds = %_RNvXs7_NtCscTw95cGIolY_7tracing4spanNtB5_4SpanNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !2456)
  call void @llvm.experimental.noalias.scope.decl(metadata !2459)
  call void @llvm.experimental.noalias.scope.decl(metadata !2462)
  %i.bj = icmp eq i64 %i.bh, 0
  br i1 %i.bj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCscTw95cGIolY_7tracing4span5InnerEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2465)
  call void @llvm.experimental.noalias.scope.decl(metadata !2468)
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !2471, !nonnull !7, !noundef !7
  %i.bm = atomicrmw sub ptr %i.bl, i64 1 release, align 8, !noalias !2471
  %i.bn = icmp eq i64 %i.bm, 1
  br i1 %i.bn, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCscTw95cGIolY_7tracing4span5InnerEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10SubscriberNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bk) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCscTw95cGIolY_7tracing4span5InnerEECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCscTw95cGIolY_7tracing4span5InnerEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RNvXs7_NtCscTw95cGIolY_7tracing4spanNtB5_4SpanNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit, %bb.q, %bb.r, %bb.s
  ret void

bb.t:                                             ; preds = %bb.p
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.u:                                             ; preds = %bb.p
  resume { ptr, i32 } %i.bg
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !2472, !noundef !7 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775796
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 12
  switch i64 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit [
    i64 0, label %bb.b
    i64 1, label %bb.e
    i64 2, label %bb.k
    i64 3, label %bb.n
    i64 4, label %bb.q
    i64 5, label %bb.t
    i64 6, label %bb.w
    i64 8, label %bb.z
    i64 9, label %bb.ac
    i64 10, label %bb.af
    i64 11, label %bb.ai
    i64 12, label %bb.al
    i64 13, label %bb.ao
    i64 14, label %bb.ar
    i64 15, label %bb.au
    i64 16, label %bb.ax
  ]

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.h, %bb.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit21, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit33, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit30, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit27, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit24, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit19, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit17, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit15, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit13, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit11, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit9, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit7, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit5, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit3, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

common.resume:                                    ; preds = %.body, %bb.ay, %bb.av, %bb.as, %bb.ap, %bb.aj, %bb.ag, %bb.ad, %bb.aa, %bb.x, %bb.u, %bb.r, %bb.o, %bb.l, %bb.i, %bb.j, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.bj, %bb.ay ], [ %i.g, %bb.c ], [ %i.q, %bb.i ], [ %i.x, %bb.l ], [ %i.aa, %bb.o ], [ %i.ad, %bb.r ], [ %i.ag, %bb.u ], [ %i.aj, %bb.x ], [ %i.am, %bb.aa ], [ %i.ap, %bb.ad ], [ %i.as, %bb.ag ], [ %i.av, %bb.aj ], [ %i.ba, %bb.ap ], [ %i.bd, %bb.as ], [ %i.bg, %bb.av ], [ %i.q, %bb.j ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.i, align 8             ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.j, align 8, !nonnull !7, !align !154, !noundef !7 ; 5 uses
  %i.k = load ptr, ptr %.val1, align 8, !invariant.load !7 ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.k(ptr noundef nonnull %.val)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !589, !invariant.load !7
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #22
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.i:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %common.resume, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !589, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #22
  br label %common.resume

bb.k:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit3 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit3: ; preds = %bb.k
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.n:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit5 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit5: ; preds = %bb.n
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.q:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit7 unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %common.resume unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit7: ; preds = %bb.q
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.t:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit9 unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %common.resume unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit9: ; preds = %bb.t
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.w:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit11 unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %common.resume unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit11: ; preds = %bb.w
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.z:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit13 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %common.resume unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit13: ; preds = %bb.z
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.ac:                                            ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit15 unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %common.resume unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit15: ; preds = %bb.ac
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.af:                                            ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit17 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %common.resume unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit17: ; preds = %bb.af
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.ai:                                            ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit19 unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %common.resume unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
end_hunk_9
begin_hunk_10_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store6client13ClientOptionsECs9rVkZwOUgsI_13deltalake_aws:bb.a

bb.bo:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i120
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %.body121

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsjyY8HP3IvQ6_12object_store6config11ConfigValuebEECs9rVkZwOUgsI_13deltalake_aws.exit124: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsjyY8HP3IvQ6_12object_store6config11ConfigValueNtNtB4_4time8DurationEEECs9rVkZwOUgsI_13deltalake_aws.exit118, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i120
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 4 uses
  %i.dl = load i64, ptr %i.dk, align 8, !range !356, !alias.scope !2851, !noundef !7
  %switch.i125 = icmp slt i64 %i.dl, -9223372036854775806
  br i1 %switch.i125, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsjyY8HP3IvQ6_12object_store6config11ConfigValuemEEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.bp

bb.bp:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsjyY8HP3IvQ6_12object_store6config11ConfigValuebEECs9rVkZwOUgsI_13deltalake_aws.exit124
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dk)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i127 unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dk)
          to label %.body128 unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i127: ; preds = %bb.bp
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dk)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsjyY8HP3IvQ6_12object_store6config11ConfigValuemEEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.bs

.body128:                                         ; preds = %bb.bs, %bb.bq, %.body121
  %.pn32 = phi { ptr, i32 } [ %.pn30, %.body121 ], [ %i.dp, %bb.bs ], [ %i.dm, %bb.bq ]
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 288
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsjyY8HP3IvQ6_12object_store6config11ConfigValuebEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.do) #30
          to label %.body133 unwind label %bb.ce

bb.bs:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i127
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %.body128

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsjyY8HP3IvQ6_12object_store6config11ConfigValuemEEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsjyY8HP3IvQ6_12object_store6config11ConfigValuebEECs9rVkZwOUgsI_13deltalake_aws.exit124, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i127
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 4 uses
  %i.dr = load i64, ptr %i.dq, align 8, !range !337, !alias.scope !2854, !noundef !7
  %i.ds = icmp eq i64 %i.dr, -9223372036854775808
  br i1 %i.ds, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsjyY8HP3IvQ6_12object_store6config11ConfigValuebEECs9rVkZwOUgsI_13deltalake_aws.exit136, label %bb.bt

bb.bt:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsjyY8HP3IvQ6_12object_store6config11ConfigValuemEEECs9rVkZwOUgsI_13deltalake_aws.exit
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dq)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i132 unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.dt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dq)
          to label %.body133 unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i132: ; preds = %bb.bt
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dq)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsjyY8HP3IvQ6_12object_store6config11ConfigValuebEECs9rVkZwOUgsI_13deltalake_aws.exit136 unwind label %bb.bw

.body133:                                         ; preds = %bb.bw, %bb.bu, %.body128
  %.pn34 = phi { ptr, i32 } [ %.pn32, %.body128 ], [ %i.dw, %bb.bw ], [ %i.dt, %bb.bu ]
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 312
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsjyY8HP3IvQ6_12object_store6config11ConfigValuebEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dv) #30
          to label %.body139 unwind label %bb.ce

bb.bw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i132
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %.body133

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsjyY8HP3IvQ6_12object_store6config11ConfigValuebEECs9rVkZwOUgsI_13deltalake_aws.exit136: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsjyY8HP3IvQ6_12object_store6config11ConfigValuemEEECs9rVkZwOUgsI_13deltalake_aws.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i132
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 4 uses
  %i.dy = load i64, ptr %i.dx, align 8, !range !337, !alias.scope !2857, !noundef !7
  %i.dz = icmp eq i64 %i.dy, -9223372036854775808
  br i1 %i.dz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsjyY8HP3IvQ6_12object_store6config11ConfigValuebEECs9rVkZwOUgsI_13deltalake_aws.exit142, label %bb.bx

bb.bx:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsjyY8HP3IvQ6_12object_store6config11ConfigValuebEECs9rVkZwOUgsI_13deltalake_aws.exit136
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dx)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i138 unwind label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ea = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dx)
          to label %.body139 unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i138: ; preds = %bb.bx
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dx)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsjyY8HP3IvQ6_12object_store6config11ConfigValuebEECs9rVkZwOUgsI_13deltalake_aws.exit142 unwind label %bb.ca

.body139:                                         ; preds = %bb.ca, %bb.by, %.body133
  %.pn36 = phi { ptr, i32 } [ %.pn34, %.body133 ], [ %i.ed, %bb.ca ], [ %i.ea, %bb.by ]
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 336
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsjyY8HP3IvQ6_12object_store6config11ConfigValuebEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ec) #30
          to label %common.resume unwind label %bb.ce

bb.ca:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i138
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %.body139

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsjyY8HP3IvQ6_12object_store6config11ConfigValuebEECs9rVkZwOUgsI_13deltalake_aws.exit142: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsjyY8HP3IvQ6_12object_store6config11ConfigValuebEECs9rVkZwOUgsI_13deltalake_aws.exit136, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i138
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 4 uses
  %i.ef = load i64, ptr %i.ee, align 8, !range !337, !alias.scope !2860, !noundef !7
  %i.eg = icmp eq i64 %i.ef, -9223372036854775808
  br i1 %i.eg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsjyY8HP3IvQ6_12object_store6config11ConfigValuebEECs9rVkZwOUgsI_13deltalake_aws.exit145, label %bb.cb

bb.cb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsjyY8HP3IvQ6_12object_store6config11ConfigValuebEECs9rVkZwOUgsI_13deltalake_aws.exit142
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ee)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i144 unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.eh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ee)
          to label %common.resume unwind label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

common.resume:                                    ; preds = %.body139, %bb.cc
  %common.resume.op = phi { ptr, i32 } [ %i.eh, %bb.cc ], [ %.pn36, %.body139 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i144: ; preds = %bb.cb
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ee)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsjyY8HP3IvQ6_12object_store6config11ConfigValuebEECs9rVkZwOUgsI_13deltalake_aws.exit145

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsjyY8HP3IvQ6_12object_store6config11ConfigValuebEECs9rVkZwOUgsI_13deltalake_aws.exit145: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsjyY8HP3IvQ6_12object_store6config11ConfigValuebEECs9rVkZwOUgsI_13deltalake_aws.exit142, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i144
  ret void

bb.ce:                                            ; preds = %bb.p, %.body40, %.body139, %.body133, %.body128, %.body121, %.body115, %.body108, %.body102, %.body95, %.body88, %.body82, %.body76, %.body71, %.body65, %.body59, %.body53, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapEECs9rVkZwOUgsI_13deltalake_aws.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs9rVkZwOUgsI_13deltalake_aws.exit, %.body
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 4 uses
  %i.a = ptrtoint ptr %.val to i64
  %i.b = and i64 %i.a, 3
  switch i64 %i.b, label %default.unreachable [
    i64 2, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs9rVkZwOUgsI_13deltalake_aws.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs9rVkZwOUgsI_13deltalake_aws.exit
    i64 1, label %bb.c
  ], !prof !2863

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult ptr %.val, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.c)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs9rVkZwOUgsI_13deltalake_aws.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.val, i64 -1      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %.val.i.i.i.i = load ptr, ptr %i.d, align 8     ; 5 uses
  %i.e = getelementptr i8, ptr %.val, i64 7
  %.val1.i.i.i.i = load ptr, ptr %i.e, align 8, !nonnull !7, !align !154, !noundef !7 ; 5 uses
  %i.f = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !7 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.f(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !589, !invariant.load !7
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %i.h, i64 noundef range(i64 1, 536870913) %i.k) #22
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !589, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %i.n, i64 noundef range(i64 1, 536870913) %i.q) #22
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #22
  resume { ptr, i32 } %i.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.f, %bb.e
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #22
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %bb.a, %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std3sys6os_str5bytes3BufECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std3sys6os_str5bytes3BufECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle10ThreadInitECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2864)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2867)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2870)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2873)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !2876, !nonnull !7, !noundef !7
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !2876
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread6thread6ThreadECs9rVkZwOUgsI_13deltalake_aws.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0) #31
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread6thread6ThreadECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3 = load ptr, ptr %i.f, align 8, !nonnull !7, !align !154, !noundef !7
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs9rVkZwOUgsI_13deltalake_aws(ptr %.val2, ptr nonnull %.val3) #30
          to label %common.resume unwind label %bb.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread6thread6ThreadECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.g, align 8             ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.h, align 8, !nonnull !7, !align !154, !noundef !7 ; 5 uses
  %i.i = load ptr, ptr %.val1, align 8, !invariant.load !7 ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread6thread6ThreadECs9rVkZwOUgsI_13deltalake_aws.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.i(ptr noundef nonnull %.val)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread6thread6ThreadECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.j = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !589, !invariant.load !7
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.k, i64 noundef range(i64 1, 536870913) %i.n) #22
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.g:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !589, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.q, i64 noundef range(i64 1, 536870913) %i.t) #22
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %bb.g, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.o, %bb.h ], [ %i.d, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.e, %bb.f
  ret void

bb.i:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread9spawnhook15ChildSpawnHooksECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  invoke void @_RNvXNtNtCs2pqxYH9ZEk8_3std6thread9spawnhookNtB2_10SpawnHooksNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2877)
  %i.c = load ptr, ptr %i.a, align 8, !alias.scope !2880, !noundef !7 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !2883
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %.body

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread9spawnhook9SpawnHookE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #31
          to label %.body unwind label %bb.h

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2888)
  %i.g = load ptr, ptr %i.a, align 8, !alias.scope !2891, !noundef !7 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread9spawnhook10SpawnHooksECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !2892
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread9spawnhook10SpawnHooksECs9rVkZwOUgsI_13deltalake_aws.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread9spawnhook9SpawnHookE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #31
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread9spawnhook10SpawnHooksECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.c, %bb.d, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.l, %bb.i ], [ %i.b, %bb.d ], [ %i.b, %bb.c ], [ %i.b, %bb.b ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %0) #30
          to label %common.resume unwind label %bb.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread9spawnhook10SpawnHooksECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.f, %bb.e, %bb.g
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuEp6OutputuNtNtB15_6marker4SendEL_EENtNtB13_4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread9spawnhook10SpawnHooksECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuEp6OutputuNtNtB1c_6marker4SendEL_EENtNtB1a_4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

common.resume:                                    ; preds = %.body, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.j ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread9spawnhook10SpawnHooksECs9rVkZwOUgsI_13deltalake_aws.exit
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuEp6OutputuNtNtB1c_6marker4SendEL_EENtNtB1a_4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void

bb.l:                                             ; preds = %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val2 = load i64, ptr %i.a, align 8, !noundef !7 ; 2 uses
  %i.b = icmp eq i64 %.val2, 0
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7
  %i.d = shl nuw nsw i64 %.val2, 2
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.d, i64 noundef 2) #22
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtBK_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtBR_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.e

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECs9rVkZwOUgsI_13deltalake_aws.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtBR_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1i_5value11HeaderValueEEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

.body:                                            ; preds = %bb.f, %bb.c
  %.pn = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.i, %bb.f ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtB1i_5value11HeaderValueEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.h) #30
          to label %common.resume unwind label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1i_5value11HeaderValueEEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtB1i_5value11HeaderValueEEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1i_5value11HeaderValueEEECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

common.resume:                                    ; preds = %.body, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.g ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtB1i_5value11HeaderValueEEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1i_5value11HeaderValueEEECs9rVkZwOUgsI_13deltalake_aws.exit
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
  ret void

bb.i:                                             ; preds = %.body
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client14runtime_plugin14RuntimePluginsECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
end_hunk_10
begin_hunk_11_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs9hC3HWJ95bf_11aws_sdk_sts9operation11assume_role18__assume_role_input22AssumeRoleInputBuilderECs9rVkZwOUgsI_13deltalake_aws:bb.a
  br label %.body47

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit50: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit44, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i46
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.be = load i64, ptr %i.bd, align 8, !range !337, !alias.scope !3522, !noundef !7
  %i.bf = icmp eq i64 %i.be, -9223372036854775808
  br i1 %i.bf, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit56, label %bb.ah

bb.ah:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit50
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i52 unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %.body53 unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i52: ; preds = %bb.ah
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit56 unwind label %bb.ak

.body53:                                          ; preds = %bb.ak, %bb.ai, %.body47
  %.pn14 = phi { ptr, i32 } [ %.pn12, %.body47 ], [ %i.bj, %bb.ak ], [ %i.bg, %bb.ai ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 216
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bi) #30
          to label %.body59 unwind label %bb.as

bb.ak:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i52
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body53

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit56: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit50, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i52
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.bl = load i64, ptr %i.bk, align 8, !range !337, !alias.scope !3525, !noundef !7
  %i.bm = icmp eq i64 %i.bl, -9223372036854775808
  br i1 %i.bm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit62, label %bb.al

bb.al:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit56
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bk)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i58 unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bk)
          to label %.body59 unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i58: ; preds = %bb.al
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bk)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit62 unwind label %bb.ao

.body59:                                          ; preds = %bb.ao, %bb.am, %.body53
  %.pn16 = phi { ptr, i32 } [ %.pn14, %.body53 ], [ %i.bq, %bb.ao ], [ %i.bn, %bb.am ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 240
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs9hC3HWJ95bf_11aws_sdk_sts5types17__provided_context15ProvidedContextEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.bp) #30
          to label %common.resume unwind label %bb.as

bb.ao:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i58
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.body59

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit62: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit56, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i58
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 4 uses
  %i.bs = load i64, ptr %i.br, align 8, !range !337, !alias.scope !3528, !noundef !7
  %i.bt = icmp eq i64 %i.bs, -9223372036854775808
  br i1 %i.bt, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs9hC3HWJ95bf_11aws_sdk_sts5types17__provided_context15ProvidedContextEEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.ap

bb.ap:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit62
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs9hC3HWJ95bf_11aws_sdk_sts5types17__provided_context15ProvidedContextENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.br)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs9hC3HWJ95bf_11aws_sdk_sts5types17__provided_context15ProvidedContextEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9hC3HWJ95bf_11aws_sdk_sts5types17__provided_context15ProvidedContextENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.br)
          to label %common.resume unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

common.resume:                                    ; preds = %.body59, %bb.aq
  %common.resume.op = phi { ptr, i32 } [ %i.bu, %bb.aq ], [ %.pn16, %.body59 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs9hC3HWJ95bf_11aws_sdk_sts5types17__provided_context15ProvidedContextEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.ap
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9hC3HWJ95bf_11aws_sdk_sts5types17__provided_context15ProvidedContextENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.br)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs9hC3HWJ95bf_11aws_sdk_sts5types17__provided_context15ProvidedContextEEECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs9hC3HWJ95bf_11aws_sdk_sts5types17__provided_context15ProvidedContextEEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit62, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs9hC3HWJ95bf_11aws_sdk_sts5types17__provided_context15ProvidedContextEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  ret void

bb.as:                                            ; preds = %.body59, %.body53, %.body47, %.body41, %.body36, %.body33, %.body29, %.body24, %.body20, %.body
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCsaB04DkjCm5a_10aws_config4meta11credentials5chain24CredentialsProviderChainECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTINtNtB7_6borrow3CoweEINtNtB7_5boxed3BoxDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTINtNtBL_6borrow3CoweEINtNtBL_5boxed3BoxDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EEEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweEINtNtB7_5boxed3BoxDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecTINtNtBL_6borrow3CoweEINtNtBL_5boxed3BoxDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EEEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecTINtNtBL_6borrow3CoweEINtNtBL_5boxed3BoxDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EEEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTINtNtBL_6borrow3CoweEINtNtBL_5boxed3BoxDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EEEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweEINtNtB7_5boxed3BoxDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCsaB04DkjCm5a_10aws_config4meta6region6future13ProvideRegionECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3531)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3534)
  %i.a = load i64, ptr %0, align 8, !range !263, !alias.scope !3537, !noundef !7 ; 2 uses
  %.not.i.i = icmp eq i64 %i.a, -9223372036854775805
  br i1 %.not.i.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i64 %i.a, -9223372036854775805
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs9PsDcNHE0mC_16aws_smithy_async6future12now_or_later10NowOrLaterINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types6region6RegionEINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputB1Q_NtNtB4_6marker4SendEL_EEEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

common.resume.i.i:                                ; preds = %bb.k, %bb.j, %bb.d
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.m, %bb.k ], [ %i.m, %bb.j ]
  resume { ptr, i32 } %common.resume.op.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i.i: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs9PsDcNHE0mC_16aws_smithy_async6future12now_or_later10NowOrLaterINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types6region6RegionEINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputB1Q_NtNtB4_6marker4SendEL_EEEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.f:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.e, align 8, !alias.scope !3537 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.f, align 8, !alias.scope !3537, !nonnull !7, !align !154, !noundef !7 ; 5 uses
  %i.g = load ptr, ptr %.val1.i.i, align 8, !invariant.load !7, !noalias !3537 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.g(ptr noundef nonnull %.val.i.i)
          to label %bb.h unwind label %bb.j, !noalias !3537

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !450, !invariant.load !7, !noalias !3537 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs9PsDcNHE0mC_16aws_smithy_async6future12now_or_later10NowOrLaterINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types6region6RegionEINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputB1Q_NtNtB4_6marker4SendEL_EEEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !589, !invariant.load !7, !noalias !3537
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #22, !noalias !3537
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs9PsDcNHE0mC_16aws_smithy_async6future12now_or_later10NowOrLaterINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types6region6RegionEINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputB1Q_NtNtB4_6marker4SendEL_EEEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.j:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !450, !invariant.load !7, !noalias !3537 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %common.resume.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !589, !invariant.load !7, !noalias !3537
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #22, !noalias !3537
  br label %common.resume.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs9PsDcNHE0mC_16aws_smithy_async6future12now_or_later10NowOrLaterINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types6region6RegionEINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputB1Q_NtNtB4_6marker4SendEL_EEEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i.i, %bb.h, %bb.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCsjyY8HP3IvQ6_12object_store6client4http10connection23SpawnedReqwestConnectorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3538)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3541)
  %i.a = load i64, ptr %0, align 8, !range !18, !alias.scope !3544, !noundef !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = icmp eq i64 %i.a, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3545)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3548)
  %i.d = load ptr, ptr %i.b, align 8, !alias.scope !3551, !nonnull !7, !noundef !7
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !3551
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs9rVkZwOUgsI_13deltalake_aws.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs9rVkZwOUgsI_13deltalake_aws.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3552)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3555)
  %i.g = load ptr, ptr %i.b, align 8, !alias.scope !3558, !nonnull !7, !noundef !7
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !3558
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs9rVkZwOUgsI_13deltalake_aws.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7current15SetCurrentGuardECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime7context7currentNtB5_15SetCurrentGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(16) %0) #30
          to label %bb.j unwind label %bb.i

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3559)
  %i.b = load i64, ptr %0, align 8, !range !6, !alias.scope !3559, !noundef !7 ; 2 uses
  %i.c = icmp eq i64 %i.b, 2
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3562)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3565)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3568)
  %i.f = load ptr, ptr %i.d, align 8, !alias.scope !3571, !nonnull !7, !noundef !7
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !3571
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.g:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3575)
  %i.i = load ptr, ptr %i.d, align 8, !alias.scope !3578, !nonnull !7, !noundef !7
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !3578
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleEECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g, %bb.h
  ret void

bb.i:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.j:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7runtime17EnterRuntimeGuardECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs_NtNtNtCskQDtHcQtBkN_5tokio7runtime7context7runtimeNtB4_17EnterRuntimeGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7current15SetCurrentGuardECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %0) #30
          to label %common.resume unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime7context7currentNtB5_15SetCurrentGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) #30
          to label %common.resume unwind label %bb.k

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3579)
  %i.c = load i64, ptr %0, align 8, !range !6, !alias.scope !3582, !noundef !7 ; 2 uses
  %i.d = icmp eq i64 %i.c, 2
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7current15SetCurrentGuardECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3585)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3588)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3591)
  %i.g = load ptr, ptr %i.e, align 8, !alias.scope !3594, !nonnull !7, !noundef !7
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !3595
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7current15SetCurrentGuardECs9rVkZwOUgsI_13deltalake_aws.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7current15SetCurrentGuardECs9rVkZwOUgsI_13deltalake_aws.exit

bb.i:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3596)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3599)
  %i.j = load ptr, ptr %i.e, align 8, !alias.scope !3602, !nonnull !7, !noundef !7
  %i.k = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !3603
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7current15SetCurrentGuardECs9rVkZwOUgsI_13deltalake_aws.exit

bb.j:                                             ; preds = %bb.i
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7current15SetCurrentGuardECs9rVkZwOUgsI_13deltalake_aws.exit

bb.k:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.d ], [ %i.a, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7current15SetCurrentGuardECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.e, %bb.g, %bb.h, %bb.i, %bb.j
  ret void

bb.l:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread9CoreGuardECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs8_NtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB5_9CoreGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler7ContextECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(64) %0) #30
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler7ContextECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(64) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler5defer5DeferECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCsbvkFyIu7lgC_4core4task4wake5WakerENtNtNtBL_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_4cell7RefCellINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtB4_4task4wake5WakerEEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCsbvkFyIu7lgC_4core4task4wake5WakerENtNtNtBS_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtNtB4_4task4wake5WakerEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtNtB4_4task4wake5WakerEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_4cell7RefCellINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtB4_4task4wake5WakerEEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCsbvkFyIu7lgC_4core4task4wake5WakerENtNtNtBS_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtNtCsaB04DkjCm5a_10aws_config7profile11credentials4exec5named20NamedProviderFactoryECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(48) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtBU_4sync3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtBM_5boxed3BoxDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !337, !alias.scope !3604, !noundef !7
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2 = load ptr, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3 = load ptr, ptr %i.g, align 8, !nonnull !7, !align !154, !noundef !7
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EECs9rVkZwOUgsI_13deltalake_aws(ptr %.val2, ptr nonnull %.val3) #30
          to label %common.resume unwind label %bb.k

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.h, align 8             ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1 = load ptr, ptr %i.i, align 8, !nonnull !7, !align !154, !noundef !7 ; 5 uses
  %i.j = load ptr, ptr %.val1, align 8, !invariant.load !7 ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.j(ptr noundef nonnull %.val)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.k = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !589, !invariant.load !7
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #22
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.i:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %common.resume, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.u = load i64, ptr %i.t, align 8, !range !589, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.r, i64 noundef range(i64 1, 536870913) %i.u) #22
  br label %common.resume

common.resume:                                    ; preds = %.body, %bb.i, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.i ], [ %i.p, %bb.j ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.g, %bb.h
  ret void

bb.k:                                             ; preds = %.body
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtCs2pqxYH9ZEk8_3std3sys9backtrace28___rust_begin_short_backtraceNCNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB1g_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEs_00uEB1g_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(9936) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [416 x i8], align 16              ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3607)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3607
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !3607, !nonnull !7, !align !154, !noundef !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  call fastcc void @_RINvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB3_6Handle8block_onNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0EB17_(ptr noalias noundef align 16 captures(address) dereferenceable(416) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c, ptr noalias noundef readonly align 8 captures(address) dereferenceable(9920) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52)
  %i.e = load ptr, ptr %0, align 8, !alias.scope !3607, !nonnull !7, !align !3610, !noundef !7 ; 4 uses
  %i.f = load i64, ptr %i.e, align 16, !range !55, !alias.scope !3611, !noalias !3607, !noundef !7
  %i.g = icmp eq i64 %i.f, -9223372036854775806
  br i1 %i.g, label %_RNCNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB8_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEs_00B8_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 16 dereferenceable(416) %i.e)
          to label %_RNCNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB8_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEs_00B8_.exit unwind label %bb.c, !noalias !3607

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(416) %i.e, ptr noundef nonnull align 16 dereferenceable(416) %i.a, i64 416, i1 false), !noalias !3607
  resume { ptr, i32 } %i.h

_RNCNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB8_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEs_00B8_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(416) %i.e, ptr noundef nonnull align 16 dereferenceable(416) %i.a, i64 416, i1 false), !noalias !3607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3607
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !3614
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtCs2pqxYH9ZEk8_3std3sys9backtrace28___rust_begin_short_backtraceNCNCNCINvNtNtB6_6thread9lifecycle15spawn_uncheckedNCNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB24_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEs_00uEs_000uEB24_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3615
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread9spawnhookNtB4_15ChildSpawnHooks3run(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !3615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3615
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !3614
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs2pqxYH9ZEk8_3std6thread6scoped5scopeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtBP_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEs_0uEBP_(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(9936) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [9936 x i8], align 16             ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  %i.g = alloca [8 x i8], align 8                 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke noundef nonnull ptr @_RNvNtNtCs2pqxYH9ZEk8_3std6thread7current18current_or_unnamed()
          to label %bb.b unwind label %.thread41  ; 2 uses

.thread41:                                        ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread37

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 1, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store ptr %i.h, ptr %i.k, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !3618
  %i.l = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 9977) 40, i64 noundef 8) #22, !noalias !3618 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.c, label %bb.g, !prof !60

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #34
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !3621
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.e, label %.thread37

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k) #31
          to label %.thread37 unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.g:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store ptr %i.l, ptr %i.g, align 8
  %.sroa.04.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3634
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9920) %i.r, ptr noundef nonnull align 8 dereferenceable(9920) %.sroa.04.sroa.5.0..sroa_idx, i64 9920, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3634
  %i.s = load <2 x ptr>, ptr %0, align 8
  store <2 x ptr> %i.s, ptr %i.d, align 16, !noalias !3634
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3634
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3634
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 -9223372036854775808, ptr %i.t, align 8, !noalias !3634
  store i64 0, ptr %i.b, align 8, !noalias !3634
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i8 0, ptr %i.u, align 8, !noalias !3634
  invoke void @_RINvMs0_NtNtCs2pqxYH9ZEk8_3std6thread6scopedNtNtB8_7builder7Builder12spawn_scopedNCNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB1q_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEs_00uEB1q_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(9936) %i.d)
          to label %.noexc28 unwind label %bb.s

.noexc28:                                         ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3634
  call void @llvm.experimental.noalias.scope.decl(metadata !3642)
  call void @llvm.experimental.noalias.scope.decl(metadata !3645)
  %i.v = load ptr, ptr %i.c, align 8, !alias.scope !3645, !noalias !3647, !noundef !7
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.h, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtCs2pqxYH9ZEk8_3std6thread6scoped16ScopedJoinHandleuENtNtNtBO_2io5error5ErrorE6expectCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i, !prof !60

bb.h:                                             ; preds = %.noexc28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3648
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !3645, !noalias !3647, !nonnull !7, !noundef !7
  store ptr %i.y, ptr %i.a, align 8, !noalias !3648
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 22, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @68, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #34
          to label %bb.j unwind label %bb.i, !noalias !3649

bb.i:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #30
          to label %.body29 unwind label %bb.k, !noalias !3649

bb.j:                                             ; preds = %bb.h
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32, !noalias !3649
  unreachable

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtCs2pqxYH9ZEk8_3std6thread6scoped16ScopedJoinHandleuENtNtNtBO_2io5error5ErrorE6expectCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i: ; preds = %.noexc28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.c, i64 24, i1 false), !alias.scope !3650, !noalias !3634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3634
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  invoke void @_RNvXs1_NtNtNtCs2pqxYH9ZEk8_3std3sys6thread4unixNtB5_6ThreadNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std3sys6thread4unix6ThreadECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i.i unwind label %bb.l, !noalias !3651

bb.l:                                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtCs2pqxYH9ZEk8_3std6thread6scoped16ScopedJoinHandleuENtNtNtBO_2io5error5ErrorE6expectCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
          catch ptr null                          ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3652)
  call void @llvm.experimental.noalias.scope.decl(metadata !3655)
  call void @llvm.experimental.noalias.scope.decl(metadata !3658)
  call void @llvm.experimental.noalias.scope.decl(metadata !3661)
  %i.ad = load ptr, ptr %i.e, align 8, !alias.scope !3664, !noalias !3634, !nonnull !7, !noundef !7
  %i.ae = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !3669
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread6thread6ThreadECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #31
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread6thread6ThreadECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i.i unwind label %bb.r, !noalias !3651

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std3sys6thread4unix6ThreadECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i.i: ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtCs2pqxYH9ZEk8_3std6thread6scoped16ScopedJoinHandleuENtNtNtBO_2io5error5ErrorE6expectCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3670)
  call void @llvm.experimental.noalias.scope.decl(metadata !3673)
  call void @llvm.experimental.noalias.scope.decl(metadata !3676)
  call void @llvm.experimental.noalias.scope.decl(metadata !3679)
  %i.ag = load ptr, ptr %i.e, align 8, !alias.scope !3682, !noalias !3634, !nonnull !7, !noundef !7
  %i.ah = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !3683
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread6thread6ThreadECs9rVkZwOUgsI_13deltalake_aws.exit3.i.i.i.i.i.i

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std3sys6thread4unix6ThreadECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #31
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread6thread6ThreadECs9rVkZwOUgsI_13deltalake_aws.exit3.i.i.i.i.i.i unwind label %bb.p, !noalias !3651

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread6thread6ThreadECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i.i: ; preds = %bb.p, %bb.m, %bb.l
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.an, %bb.p ], [ %i.ac, %bb.m ], [ %i.ac, %bb.l ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3684)
  call void @llvm.experimental.noalias.scope.decl(metadata !3687)
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !3690, !noalias !3634, !nonnull !7, !noundef !7
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !3691
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.o, label %.body29

bb.o:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread6thread6ThreadECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle6PacketuEE9drop_slowCskQDtHcQtBkN_5tokio(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aj) #31
          to label %.body29 unwind label %bb.r, !noalias !3651

bb.p:                                             ; preds = %bb.n
  %i.an = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread6thread6ThreadECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread6thread6ThreadECs9rVkZwOUgsI_13deltalake_aws.exit3.i.i.i.i.i.i: ; preds = %bb.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std3sys6thread4unix6ThreadECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3692)
  call void @llvm.experimental.noalias.scope.decl(metadata !3695)
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !3698, !noalias !3634, !nonnull !7, !noundef !7
  %i.aq = atomicrmw sub ptr %i.ap, i64 1 release, align 8, !noalias !3699
  %i.ar = icmp eq i64 %i.aq, 1
  br i1 %i.ar, label %bb.q, label %bb.u

bb.q:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread6thread6ThreadECs9rVkZwOUgsI_13deltalake_aws.exit3.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle6PacketuEE9drop_slowCskQDtHcQtBkN_5tokio(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ao) #31
          to label %bb.u unwind label %bb.s

bb.r:                                             ; preds = %bb.o, %bb.m
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32, !noalias !3651
  unreachable

bb.s:                                             ; preds = %bb.q, %bb.g
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  br label %.body29

.body29:                                          ; preds = %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread6thread6ThreadECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i.i, %bb.o, %bb.s
  %eh.lpad-body30 = phi { ptr, i32 } [ %i.at, %bb.s ], [ %i.z, %bb.i ], [ %.pn.i.i.i.i.i.i, %bb.o ], [ %.pn.i.i.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread6thread6ThreadECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i.i ]
  %i.au = extractvalue { ptr, i32 } %eh.lpad-body30, 0
  %i.av = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.au)
          to label %bb.v unwind label %bb.t       ; 2 uses

bb.t:                                             ; preds = %.body29
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #32
  unreachable

bb.u:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread6thread6ThreadECs9rVkZwOUgsI_13deltalake_aws.exit3.i.i.i.i.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3634
  br label %bb.w

bb.v:                                             ; preds = %.body29
  %i.ax = extractvalue { ptr, ptr } %i.av, 0      ; 2 uses
  %i.ay = extractvalue { ptr, ptr } %i.av, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ax), "nonnull"(ptr %i.ay) ]
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.sroa.7.0 = phi ptr [ undef, %bb.u ], [ %i.ay, %bb.v ] ; 4 uses
  %.sroa.0.0 = phi ptr [ null, %bb.u ], [ %i.ax, %bb.v ] ; 4 uses
  br label %bb.y

.thread46:                                        ; preds = %bb.af, %bb.ab
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.x:                                             ; preds = %bb.aa
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not51 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not51, label %bb.ah, label %bb.aj

bb.y:                                             ; preds = %bb.w, %bb.aa
  %i.az = load ptr, ptr %i.g, align 8, !nonnull !7, !noundef !7
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %.not = icmp eq ptr %.sroa.0.0, null
  br i1 %.not, label %bb.ac, label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.bd = load ptr, ptr %i.g, align 8, !nonnull !7, !noundef !7
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  invoke void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.be)
          to label %bb.y unwind label %bb.x

bb.ab:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0) ]
  invoke void @_RNvNtCs2pqxYH9ZEk8_3std5panic13resume_unwind(ptr noundef nonnull %.sroa.0.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.7.0) #34
          to label %bb.ag unwind label %.thread46

bb.ac:                                            ; preds = %bb.z
  %i.bf = load ptr, ptr %i.g, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load atomic i8, ptr %i.bg monotonic, align 1
  %i.bi = icmp eq i8 %i.bh, 0
  br i1 %i.bi, label %bb.ad, label %bb.af, !prof !191

bb.ad:                                            ; preds = %bb.ac
  %i.bj = atomicrmw sub ptr %i.bf, i64 1 release, align 8, !noalias !3700
  %i.bk = icmp eq i64 %i.bj, 1
  br i1 %i.bk, label %bb.ae, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread6scoped5ScopeECs9rVkZwOUgsI_13deltalake_aws.exit

bb.ae:                                            ; preds = %bb.ad
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6scoped9ScopeDataE9drop_slowCskQDtHcQtBkN_5tokio(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread6scoped5ScopeECs9rVkZwOUgsI_13deltalake_aws.exit

bb.af:                                            ; preds = %bb.ac
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @23, ptr noundef nonnull inttoptr (i64 49 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #34
          to label %bb.ag unwind label %.thread46

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread6scoped5ScopeECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.ag:                                            ; preds = %bb.af, %bb.ab
  unreachable

bb.ah:                                            ; preds = %.thread46, %bb.aj, %bb.x
  %lpad.phi50 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread46 ], [ %lpad.thr_comm.split-lp, %bb.aj ], [ %lpad.thr_comm.split-lp, %bb.x ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3707)
  call void @llvm.experimental.noalias.scope.decl(metadata !3710)
  call void @llvm.experimental.noalias.scope.decl(metadata !3713)
  %i.bl = load ptr, ptr %i.g, align 8, !alias.scope !3716, !nonnull !7, !noundef !7
  %i.bm = atomicrmw sub ptr %i.bl, i64 1 release, align 8, !noalias !3716
  %i.bn = icmp eq i64 %i.bm, 1
  br i1 %i.bn, label %bb.ai, label %.thread

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6scoped9ScopeDataE9drop_slowCskQDtHcQtBkN_5tokio(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g) #31
          to label %.thread unwind label %bb.ak

bb.aj:                                            ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0) ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs9rVkZwOUgsI_13deltalake_aws(ptr nonnull %.sroa.0.0, ptr nonnull %.sroa.7.0) #30
          to label %bb.ah unwind label %bb.ak

bb.ak:                                            ; preds = %.thread37, %bb.ai, %bb.aj
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

.thread:                                          ; preds = %.thread37, %bb.ai, %bb.ah
  %.pn36 = phi { ptr, i32 } [ %eh.lpad-body40, %.thread37 ], [ %lpad.phi50, %bb.ai ], [ %lpad.phi50, %bb.ah ]
  resume { ptr, i32 } %.pn36

.thread37:                                        ; preds = %bb.d, %bb.e, %.thread41
  %eh.lpad-body40 = phi { ptr, i32 } [ %i.i, %.thread41 ], [ %i.n, %bb.e ], [ %i.n, %bb.d ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0EBM_(ptr noundef nonnull align 8 %i.bp)
          to label %.thread unwind label %bb.ak
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle15spawn_uncheckedNCNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB15_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEs_00uEB15_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3, i1 noundef zeroext %4, ptr noundef %5, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(9936) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [9976 x i8], align 8              ; 4 uses
  %i.g = alloca [9976 x i8], align 8              ; 9 uses
  %i.h = alloca [8 x i8], align 8                 ; 9 uses
  %i.i = alloca [32 x i8], align 8                ; 10 uses
  %i.j = alloca [8 x i8], align 8                 ; 11 uses
  %i.k = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %5, ptr %i.k, align 8
  %i.l = trunc nuw i64 %2 to i1
  br i1 %i.l, label %_RNCINvNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle15spawn_uncheckedNCNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB17_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEs_00uE0B17_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load atomic i64, ptr @_RNvNCNvNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle15spawn_unchecked03MIN monotonic, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RINvNtCs2pqxYH9ZEk8_3std3env6var_osReECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 14)
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.c
  %i.o = load i64, ptr %i.c, align 8, !range !337, !noundef !7
  %.not.i = icmp eq i64 %i.o, -9223372036854775808
  br i1 %.not.i, label %bb.q, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.p = add i64 %i.m, -1
  br label %_RNCINvNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle15spawn_uncheckedNCNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB17_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEs_00uE0B17_.exit

bb.e:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !3717)
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !3717, !nonnull !7, !noundef !7
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !3717, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3717
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef %i.t)
          to label %bb.g unwind label %bb.f, !noalias !3717

bb.f:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #30
          to label %.body36.thread unwind label %bb.p

bb.g:                                             ; preds = %bb.e
  %i.v = load i64, ptr %i.a, align 8, !range !18, !noalias !3717, !noundef !7
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3717
  br label %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !noalias !3717, !nonnull !7, !noundef !7 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noalias !3717, !noundef !7 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3717
  switch i64 %i.aa, label %thread-pre-split.i.i.i [
    i64 0, label %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit.i.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.ab = load i8, ptr %i.y, align 1, !alias.scope !3720, !noalias !3723, !noundef !7 ; 2 uses
  switch i8 %i.ab, label %bb.k [
    i8 43, label %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit.i.i
    i8 45, label %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit.i.i
  ]

thread-pre-split.i.i.i:                           ; preds = %bb.i
  %.pr.i.i.i = load i8, ptr %i.y, align 1, !alias.scope !3720, !noalias !3723
  br label %bb.k

bb.k:                                             ; preds = %thread-pre-split.i.i.i, %bb.j
  %i.ac = phi i8 [ %.pr.i.i.i, %thread-pre-split.i.i.i ], [ %i.ab, %bb.j ]
  %cond.i.i.i = icmp eq i8 %i.ac, 43              ; 2 uses
  %i.ad = sext i1 %cond.i.i.i to i64
  %.sroa.15.0.i.i.i = add nsw i64 %i.aa, %i.ad    ; 4 uses
  %.sroa.0.0.idx.i.i.i = zext i1 %cond.i.i.i to i64
  %.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sroa.0.0.idx.i.i.i ; 2 uses
  %i.ae = icmp samesign ult i64 %.sroa.15.0.i.i.i, 17
  br i1 %i.ae, label %.preheader.i.i.i, label %.preheader56.i.i.i.preheader
end_hunk_11
begin_hunk_12_@_RINvNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB1u_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B38_EB1u_:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !3883), !noalias !3864
  %i.cr = load ptr, ptr %i.cm, align 8, !alias.scope !3886, !noalias !3864, !nonnull !7, !noundef !7
  %i.cs = atomicrmw sub ptr %i.cr, i64 1 release, align 8, !noalias !3887
  %i.ct = icmp eq i64 %i.cs, 1
  br i1 %i.ct, label %bb.ay, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.ay:                                            ; preds = %bb.ax
  fence acquire, !noalias !3864
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cm) #31
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.az, !noalias !3864

bb.az:                                            ; preds = %bb.ay, %bb.aw
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0EBM_(ptr noundef nonnull align 8 %i.cv) #30
          to label %.body32 unwind label %bb.ba, !noalias !3864

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.av
  %i.cw = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0EBM_(ptr noundef nonnull align 8 %i.cw)
          to label %.body26 unwind label %bb.at

bb.ba:                                            ; preds = %bb.az
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32, !noalias !3864
  unreachable

bb.bb:                                            ; preds = %_RNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB6_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B6_.exit.i
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %.body26

.body26:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs9rVkZwOUgsI_13deltalake_aws.exit.i, %.body.i, %bb.bb
  %eh.lpad-body27 = phi { ptr, i32 } [ %i.cy, %bb.bb ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.thr_comm.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs9rVkZwOUgsI_13deltalake_aws.exit.i ]
  invoke void @_RNvXNvNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker14block_in_placeNtB2_5ResetNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(3) %i.g)
          to label %.thread42 unwind label %bb.bc

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNvNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker14block_in_place5ResetECs9rVkZwOUgsI_13deltalake_aws.exit30: ; preds = %_RNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB6_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B6_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @_RNvXNvNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker14block_in_placeNtB2_5ResetNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(3) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ag

bb.bc:                                            ; preds = %.body26, %.thread38
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

.thread42:                                        ; preds = %.body26, %bb.y, %.thread38
  %.pn37 = phi { ptr, i32 } [ %i.bb, %bb.y ], [ %eh.lpad-body41, %.thread38 ], [ %eh.lpad-body27, %.body26 ]
  resume { ptr, i32 } %.pn37

.thread38:                                        ; preds = %bb.s, %.thread45
  %eh.lpad-body41 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread45 ], [ %lpad.thr_comm.split-lp.i.i.i, %bb.s ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtBN_11credentials19resolve_credentials0INtNtB4_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0EBN_(ptr noundef nonnull align 8 %1) #30
          to label %.thread42 unwind label %bb.bc
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvXs2_NtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iterINtB6_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1Q_8adapters3map8map_foldRB19_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB3y_7BufListB19_ENtNtNtB1d_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1O_5accumjNtB5e_3Sum3sumINtB2Q_3MapBY_B3r_EE0E0ECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !7, !noundef !7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.a, ptr %i.c, align 8, !noalias !3888
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = sub nuw i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 5
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.04.0.i = phi i64 [ 0, %bb.b ], [ %i.n, %bb.c ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %1, %bb.b ], [ %i.m, %bb.c ]
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %.sroa.04.0.i
  %i.m = call noundef i64 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesjjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2d_7BufListB1u_ENtNtNtB1y_3buf8buf_impl3Buf9remaining0NCINvXsK_NtNtBX_6traits5accumjNtB3T_3Sum3sumINtBT_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterB1u_EB26_EE0E0INtB7_5FnMutTjB1t_EE8call_mutCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef %.sroa.02.0.i, ptr noundef nonnull align 8 %i.l) ; 2 uses
  %i.n = add nuw i64 %.sroa.04.0.i, 1             ; 2 uses
  %i.o = icmp eq i64 %i.n, %i.k
  br i1 %i.o, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.c

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c, %bb.a
  %.sroa.0.0.i = phi i64 [ %1, %bb.a ], [ %i.m, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !7, !noundef !7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.a, ptr %i.b, align 8, !noalias !3891
  %i.t = icmp eq ptr %i.q, %i.s
  br i1 %i.t, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECs9rVkZwOUgsI_13deltalake_aws.exit4, label %bb.d

bb.d:                                             ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.q to i64
  %i.w = sub nuw i64 %i.u, %i.v
  %i.x = lshr exact i64 %i.w, 5
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.sroa.04.0.i1 = phi i64 [ 0, %bb.d ], [ %i.aa, %bb.e ] ; 2 uses
  %.sroa.02.0.i2 = phi i64 [ %.sroa.0.0.i, %bb.d ], [ %i.z, %bb.e ]
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %.sroa.04.0.i1
  %i.z = call noundef i64 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesjjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2d_7BufListB1u_ENtNtNtB1y_3buf8buf_impl3Buf9remaining0NCINvXsK_NtNtBX_6traits5accumjNtB3T_3Sum3sumINtBT_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterB1u_EB26_EE0E0INtB7_5FnMutTjB1t_EE8call_mutCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %.sroa.02.0.i2, ptr noundef nonnull align 8 %i.y) ; 2 uses
  %i.aa = add nuw i64 %.sroa.04.0.i1, 1           ; 2 uses
  %i.ab = icmp eq i64 %i.aa, %i.x
  br i1 %i.ab, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECs9rVkZwOUgsI_13deltalake_aws.exit4, label %bb.e

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECs9rVkZwOUgsI_13deltalake_aws.exit4: ; preds = %bb.e, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECs9rVkZwOUgsI_13deltalake_aws.exit
  %.sroa.0.0.i3 = phi i64 [ %.sroa.0.0.i, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECs9rVkZwOUgsI_13deltalake_aws.exit ], [ %i.z, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %.sroa.0.0.i3
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs2_NtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iterINtB6_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1K_3any5checkRB19_NCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB3m_7BufListB19_ENtNtNtB1d_3buf8buf_impl3Buf13has_remaining0E0INtNtNtB1S_3ops12control_flow11ControlFlowuEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3894)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.a, ptr %i.c, align 8, !noalias !3897
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !3899, !noalias !3902, !nonnull !7, !noundef !7
  %.promoted.i = load ptr, ptr %0, align 8, !alias.scope !3899, !noalias !3902
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.f = phi ptr [ %i.g, %bb.c ], [ %.promoted.i, %bb.a ] ; 3 uses
  %.not.not.not.i.not = icmp eq ptr %i.f, %i.e
  br i1 %.not.not.not.i.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !3899, !noalias !3902
  %i.h = call noundef zeroext i1 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2s_7BufListB1L_ENtNtNtB1P_3buf8buf_impl3Buf13has_remaining0E0INtB7_5FnMutTuB1K_EE8call_mutCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 %i.f), !noalias !3894
  br i1 %i.h, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3903)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.a, ptr %i.b, align 8, !noalias !3906
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !3908, !noalias !3911, !nonnull !7, !noundef !7
  %.promoted.i3 = load ptr, ptr %i.i, align 8, !alias.scope !3908, !noalias !3911
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.l = phi ptr [ %i.m, %bb.g ], [ %.promoted.i3, %bb.e ] ; 3 uses
  %.not.not.not.i4.not.not.not.not.not = icmp ne ptr %i.l, %i.k ; 2 uses
  br i1 %.not.not.not.i4.not.not.not.not.not, label %bb.g, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1k_3any5checkRBJ_NCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2G_7BufListBJ_ENtNtNtBN_3buf8buf_impl3Buf13has_remaining0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECs9rVkZwOUgsI_13deltalake_aws.exit5

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  store ptr %i.m, ptr %i.i, align 8, !alias.scope !3908, !noalias !3911
  %i.n = call noundef zeroext i1 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2s_7BufListB1L_ENtNtNtB1P_3buf8buf_impl3Buf13has_remaining0E0INtB7_5FnMutTuB1K_EE8call_mutCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 %i.l), !noalias !3903
  br i1 %i.n, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1k_3any5checkRBJ_NCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2G_7BufListBJ_ENtNtNtBN_3buf8buf_impl3Buf13has_remaining0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECs9rVkZwOUgsI_13deltalake_aws.exit5, label %bb.f

_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1k_3any5checkRBJ_NCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2G_7BufListBJ_ENtNtNtBN_3buf8buf_impl3Buf13has_remaining0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECs9rVkZwOUgsI_13deltalake_aws.exit5: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1k_3any5checkRBJ_NCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2G_7BufListBJ_ENtNtNtBN_3buf8buf_impl3Buf13has_remaining0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECs9rVkZwOUgsI_13deltalake_aws.exit5
  %.sroa.0.0 = phi i1 [ true, %bb.d ], [ %.not.not.not.i4.not.not.not.not.not, %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1k_3any5checkRBJ_NCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2G_7BufListBJ_ENtNtNtBN_3buf8buf_impl3Buf13has_remaining0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECs9rVkZwOUgsI_13deltalake_aws.exit5 ]
  ret i1 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYINtNtCsbvkFyIu7lgC_4core4hash18BuildHasherDefaultNtNtNtCs2DiVQAxFeQE_16aws_smithy_types10config_bag10typeid_map8IdHasherENtB6_11BuildHasher8hash_oneRNtNtB8_3any6TypeIdECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load i64, ptr %i.a, align 8, !noalias !3912
  ret i64 %.val.i
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RNCINvMs0_CsbpcW0ghvIYZ_8fastrandNtB8_3Rng3u32INtNtNtCsbvkFyIu7lgC_4core3ops5range5RangemEE0Cs9rVkZwOUgsI_13deltalake_aws(ptr %.0.val) unnamed_addr #4 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.0.val, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 4
  store i64 1, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.e, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1c_NtNtCsbvkFyIu7lgC_4core3ops5rangeINtB6_5BoundRmENtNtBa_3fmt5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.42.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.g, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1c_NtNtCsbvkFyIu7lgC_4core3ops5rangeINtB6_5BoundRmENtNtBa_3fmt5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @34, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #33
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s1_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #5 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s1_10___CALLSITE, align 8, !nonnull !7, !align !154, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s1_10___CALLSITE, align 8, !nonnull !7, !align !154, !noundef !7 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !7, !noundef !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.k = load i64, ptr %i.j, align 8, !noundef !7
  store i64 1, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.k, ptr %.sroa.5.0..sroa_idx, align 8
  %i.l = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.l, 0        ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.l, 1        ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !invariant.load !7, !nonnull !7
  %i.q = call noundef zeroext i1 %i.p(ptr noundef %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #35
  br i1 %i.q, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.g, ptr noundef nonnull %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #5 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s_10___CALLSITE, align 8, !nonnull !7, !align !154, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 1
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s_10___CALLSITE, align 8, !nonnull !7, !align !154, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 2, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #35
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries0Cs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.416.i = alloca [64 x i8], align 8        ; 8 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 10 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [48 x i8], align 8                ; 10 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  %i.m = alloca [72 x i8], align 8                ; 9 uses
  %i.n = alloca [48 x i8], align 8                ; 10 uses
  %i.o = alloca [16 x i8], align 8                ; 6 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = alloca [32 x i8], align 8                ; 8 uses
  %i.r = alloca [24 x i8], align 8                ; 9 uses
  %i.s = alloca [48 x i8], align 8                ; 10 uses
  %i.t = alloca [16 x i8], align 8                ; 6 uses
  %i.u = alloca [16 x i8], align 8                ; 6 uses
  %i.v = alloca [32 x i8], align 8                ; 9 uses
  %i.w = alloca [16 x i8], align 16               ; 9 uses
  %i.x = alloca [16 x i8], align 8                ; 7 uses
  %i.y = alloca [8 x i8], align 8                 ; 5 uses
  %i.z = alloca [16 x i8], align 8                ; 6 uses
  %i.aa = alloca [48 x i8], align 8               ; 10 uses
  %i.ab = alloca [32 x i8], align 8               ; 8 uses
  %i.ac = alloca [24 x i8], align 8               ; 9 uses
  %i.ad = alloca [8 x i8], align 8                ; 5 uses
  %i.ae = alloca [16 x i8], align 8               ; 6 uses
  %i.af = alloca [48 x i8], align 8               ; 10 uses
  %i.ag = alloca [32 x i8], align 8               ; 8 uses
  %i.ah = alloca [72 x i8], align 8               ; 9 uses
  %i.ai = alloca [16 x i8], align 8               ; 6 uses
  %i.aj = alloca [32 x i8], align 8               ; 8 uses
  %i.ak = alloca [32 x i8], align 8               ; 8 uses
  %i.al = alloca [24 x i8], align 8               ; 9 uses
  %i.am = alloca [16 x i8], align 8               ; 6 uses
  %i.an = alloca [32 x i8], align 8               ; 8 uses
  %i.ao = alloca [32 x i8], align 8               ; 9 uses
  %i.ap = alloca [72 x i8], align 8               ; 7 uses
  %i.aq = alloca [72 x i8], align 8               ; 20 uses
  %.sroa.3 = alloca [64 x i8], align 8            ; 3 uses
  %.sroa.8 = alloca [64 x i8], align 8            ; 7 uses
  %i.ar = alloca [88 x i8], align 16              ; 7 uses
  %i.as = alloca [72 x i8], align 8               ; 7 uses
  %i.at = alloca [128 x i8], align 8              ; 3 uses
  %i.au = alloca [8 x i8], align 8                ; 5 uses
  %i.av = alloca [8 x i8], align 8                ; 5 uses
  %i.aw = alloca [48 x i8], align 8               ; 10 uses
  %i.ax = alloca [32 x i8], align 8               ; 8 uses
  %i.ay = alloca [40 x i8], align 8               ; 8 uses
  %i.az = alloca [8 x i8], align 8                ; 5 uses
  %i.ba = alloca [8 x i8], align 8                ; 5 uses
  %i.bb = alloca [48 x i8], align 8               ; 10 uses
  %i.bc = alloca [32 x i8], align 8               ; 8 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 74 ; 3 uses
  %i.be = load i8, ptr %i.bd, align 2, !range !1201, !noundef !7
  switch i8 %i.be, label %default.unreachable68 [
    i8 0, label %bb.b
    i8 1, label %bb.x
    i8 2, label %bb.y
    i8 3, label %bb.z
    i8 4, label %bb.ai
  ]

default.unreachable68:                            ; preds = %bb.ai, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  store i8 0, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 73 ; 3 uses
  store i8 0, ptr %i.bg, align 1
  %i.bh = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.bi = icmp ult i64 %i.bh, 3
  br i1 %i.bi, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.bj = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries010___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.bk = icmp ult i8 %i.bj, 3
  br i1 %i.bk, label %bb.f, label %bb.d, !prof !3915

bb.d:                                             ; preds = %bb.c
  %i.bl = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries010___CALLSITE) #31
          to label %bb.f unwind label %bb.e

end_hunk_12
begin_hunk_13_@_RNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries0Cs9rVkZwOUgsI_13deltalake_aws:bb.a

bb.v:                                             ; preds = %bb.t
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.de, ptr noundef nonnull align 16 dereferenceable(88) %i.ar, i64 88, i1 false)
  br label %bb.ai

.body:                                            ; preds = %.body35, %bb.aa, %bb.ae, %bb.ah
  %.pn19.pn = phi { ptr, i32 } [ %i.dp, %bb.ah ], [ %i.dn, %bb.ae ], [ %i.dk, %bb.aa ], [ %.pn17, %.body35 ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 73 ; 2 uses
  %i.dg = load i8, ptr %i.df, align 1, !range !235, !noundef !7
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %bb.fz, label %bb.fy

bb.w:                                             ; preds = %bb.e, %bb.r, %bb.j, %bb.h, %bb.ga, %bb.fy, %bb.fx
  %.pn22 = phi { ptr, i32 } [ %i.pb, %bb.fx ], [ %.pn19.pn, %bb.ga ], [ %.pn19.pn, %bb.fy ], [ %i.cs, %bb.r ], [ %i.bm, %bb.e ], [ %i.cf, %bb.j ], [ %i.bq, %bb.h ]
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i8 0, ptr %i.di, align 8
  store i8 2, ptr %i.bd, align 2
  resume { ptr, i32 } %.pn22

bb.x:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #33
  unreachable

bb.y:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #33
  unreachable

bb.z:                                             ; preds = %bb.a, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 5 uses
  invoke void @_RNvXs0_NtCscTw95cGIolY_7tracing10instrumentINtB5_12InstrumentedNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.as, ptr noundef nonnull align 8 %i.dj, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ab unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00EECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.dj) #30
          to label %.body unwind label %bb.p

bb.ab:                                            ; preds = %bb.z
  %i.dl = load i64, ptr %i.as, align 8, !range !2472, !noundef !7 ; 2 uses
  %i.dm = icmp eq i64 %i.dl, -9223372036854775789
  br i1 %i.dm, label %bb.ac, label %bb.ad

common.ret:                                       ; preds = %bb.fv, %bb.ft, %bb.ac
  %.sink = phi i8 [ 1, %bb.fv ], [ 4, %bb.ft ], [ 3, %bb.ac ]
  store i8 %.sink, ptr %i.bd, align 2
  ret void

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  store i64 -9223372036854775789, ptr %0, align 8
  br label %common.ret

bb.ad:                                            ; preds = %bb.ab
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  invoke void @_RNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtB7_12InstrumentedNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.dj)
          to label %bb.af unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.dj) #30
          to label %.body unwind label %bb.ag

bb.af:                                            ; preds = %bb.ad
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.dj)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00EECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00EECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.af, %bb.fu
  %.sroa.044.0 = phi i64 [ %.sroa.013.0245.i51, %bb.fu ], [ %i.dl, %bb.af ]
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 73
  store i8 0, ptr %i.dq, align 1
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ds = load i8, ptr %i.dr, align 8, !range !235, !noundef !7
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.fw, label %bb.fv

bb.ai:                                            ; preds = %bb.a, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.416.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 5 uses
  %i.dw = load i8, ptr %i.dv, align 8, !range !593, !noalias !3933, !noundef !7
  switch i8 %i.dw, label %default.unreachable68 [
    i8 0, label %bb.aj
    i8 1, label %bb.am
    i8 2, label %bb.an
    i8 3, label %bb.ak
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.dy = load <2 x ptr>, ptr %i.du, align 8, !noalias !3933
  store <2 x ptr> %i.dy, ptr %i.dx, align 8, !noalias !3933
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.eb = load i64, ptr %i.ea, align 8, !noalias !3933, !noundef !7 ; 2 uses
  store i64 %i.eb, ptr %i.dz, align 8, !noalias !3933
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i64 1, ptr %i.ec, align 8, !noalias !3933
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !3933
  br label %bb.ap

bb.al:                                            ; preds = %bb.dg, %bb.aj
  %i.ed = phi i64 [ %.pre259.i, %bb.dg ], [ %i.eb, %bb.aj ]
  %i.ee = phi i64 [ %.pre.i, %bb.dg ], [ 1, %bb.aj ]
  %.not.i31 = icmp ugt i64 %i.ee, %i.ed
  br i1 %.not.i31, label %bb.dk, label %bb.di

bb.am:                                            ; preds = %bb.ai
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #33
          to label %.noexc33 unwind label %bb.fr

.noexc33:                                         ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %bb.ai
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #33
          to label %.noexc34 unwind label %bb.fr

.noexc34:                                         ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %bb.ap
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !3933
  %.val100.i = load ptr, ptr %i.eh, align 8, !noalias !3933
  %i.eg = getelementptr i8, ptr %1, i64 152
  %.val101.i = load ptr, ptr %i.eg, align 8, !noalias !3933, !nonnull !7, !align !154, !noundef !7
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws(ptr %.val100.i, ptr nonnull %.val101.i) #30
          to label %.body.i unwind label %bb.dq, !noalias !3937

bb.ap:                                            ; preds = %bb.do, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !3933
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.eh, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.aq unwind label %bb.ao, !noalias !3937

bb.aq:                                            ; preds = %bb.ap
  %i.ei = load i64, ptr %i.ap, align 8, !range !2472, !noalias !3933, !noundef !7
  %i.ej = icmp eq i64 %i.ei, -9223372036854775789
  br i1 %i.ej, label %.thread, label %bb.ar

.thread:                                          ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !3933
  store i8 3, ptr %i.dv, align 8, !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.416.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.ft

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aq, ptr noundef nonnull align 8 dereferenceable(72) %i.ap, i64 72, i1 false), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !3933
  %.val98.i = load ptr, ptr %i.eh, align 8, !noalias !3933 ; 5 uses
  %i.ek = getelementptr i8, ptr %1, i64 152
  %.val99.i = load ptr, ptr %i.ek, align 8, !noalias !3933, !nonnull !7, !align !154, !noundef !7 ; 5 uses
  %i.el = load ptr, ptr %.val99.i, align 8, !invariant.load !7, !noalias !3937 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val98.i) ]
  invoke void %i.el(ptr noundef nonnull %.val98.i)
          to label %bb.at unwind label %bb.av, !noalias !3937

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.em = getelementptr inbounds nuw i8, ptr %.val99.i, i64 8
  %i.en = load i64, ptr %i.em, align 8, !range !450, !invariant.load !7, !noalias !3937 ; 2 uses
  %i.eo = icmp eq i64 %i.en, 0
  br i1 %i.eo, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ep = getelementptr inbounds nuw i8, ptr %.val99.i, i64 16
  %i.eq = load i64, ptr %i.ep, align 8, !range !589, !invariant.load !7, !noalias !3937
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val98.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val98.i, i64 noundef range(i64 1, 0) %i.en, i64 noundef range(i64 1, 536870913) %i.eq) #22, !noalias !3937
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.av:                                            ; preds = %bb.as
  %i.er = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.val99.i, i64 8
  %i.et = load i64, ptr %i.es, align 8, !range !450, !invariant.load !7, !noalias !3937 ; 2 uses
  %i.eu = icmp eq i64 %i.et, 0
  br i1 %i.eu, label %.body.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ev = getelementptr inbounds nuw i8, ptr %.val99.i, i64 16
  %i.ew = load i64, ptr %i.ev, align 8, !range !589, !invariant.load !7, !noalias !3937
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val98.i, i64 noundef range(i64 1, 0) %i.et, i64 noundef range(i64 1, 536870913) %i.ew) #22, !noalias !3937
  br label %.body.i

.body.i:                                          ; preds = %bb.fq, %bb.fp, %bb.fo, %bb.eo, %bb.dn, %bb.bz, %bb.ax, %bb.aw, %bb.av, %bb.ao
  %.pn74.i = phi { ptr, i32 } [ %i.lf, %bb.dn ], [ %.pn70.pn.pn.i, %bb.fp ], [ %.pn70.pn.pn.i, %bb.fq ], [ %.pn70.pn.pn.i, %bb.bz ], [ %i.ef, %bb.ao ], [ %i.ex, %bb.ax ], [ %i.er, %bb.aw ], [ %i.er, %bb.av ], [ %.pn60.pn.pn.i, %bb.fo ], [ %.pn31.pn.pn.i, %bb.eo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !3933
  br label %bb.dm

bb.ax:                                            ; preds = %bb.fm, %bb.dh
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.au, %bb.at
  %i.ey = load i64, ptr %i.aq, align 8, !range !594, !noalias !3933, !noundef !7 ; 4 uses
  %.not24.i = icmp eq i64 %i.ey, -9223372036854775790
  br i1 %.not24.i, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.ez = icmp ne i64 %i.ey, -9223372036854775800
  call void @llvm.assume(i1 %i.ez)
  %i.fa = add nsw i64 %i.ey, 9223372036854775802
  %i.fb = icmp ugt i64 %i.ey, -9223372036854775803
  %i.fc = select i1 %i.fb, i64 %i.fa, i64 2       ; 2 uses
  %i.fd = icmp eq i64 %i.fc, 1
  br i1 %i.fd, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 10 uses
  %i.ff = load i64, ptr %i.fe, align 8, !noalias !3933, !noundef !7
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8, !noalias !3933, !noundef !7
  %i.fi = icmp eq i64 %i.ff, %i.fh
  br i1 %i.fi, label %bb.ep, label %bb.ca

bb.ba:                                            ; preds = %bb.ay, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.fj = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !3933
  %i.fk = icmp ult i64 %i.fj, 2
  br i1 %i.fk, label %bb.bb, label %bb.bi

bb.bb:                                            ; preds = %bb.ba
  %i.fl = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries0010___CALLSITE, i64 16) monotonic, align 8, !noalias !3933 ; 2 uses
  %i.fm = icmp ult i8 %i.fl, 3
  br i1 %i.fm, label %bb.be, label %bb.bc, !prof !3915

bb.bc:                                            ; preds = %bb.bb
  %i.fn = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries0010___CALLSITE) #31
          to label %bb.be unwind label %bb.bd, !noalias !3937

bb.bd:                                            ; preds = %bb.bc
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.be:                                            ; preds = %bb.bc, %bb.bb
  %.sroa.0.0.i.i = phi i8 [ %i.fl, %bb.bb ], [ %i.fn, %bb.bc ] ; 2 uses
  %i.fp = icmp eq i8 %.sroa.0.0.i.i, 0
  br i1 %i.fp, label %bb.bi, label %bb.bg

bb.bf:                                            ; preds = %bb.bg
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.bg:                                            ; preds = %bb.be
  %i.fr = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries0010___CALLSITE, align 8, !noalias !3933, !nonnull !7, !align !154, !noundef !7
  %i.fs = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fr, i8 noundef %.sroa.0.0.i.i)
          to label %bb.bh unwind label %bb.bf, !noalias !3937

bb.bh:                                            ; preds = %bb.bg
  br i1 %i.fs, label %bb.bs, label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.be, %bb.ba
  %i.ft = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !3933
  %.not255.i = icmp eq i8 %i.ft, 0
  br i1 %.not255.i, label %bb.bj, label %bb.by

bb.bj:                                            ; preds = %bb.bi
  %i.fu = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !3933 ; 2 uses
  %i.fv = icmp ult i64 %i.fu, 6
  call void @llvm.assume(i1 %i.fv)
  %i.fw = icmp samesign ugt i64 %i.fu, 3
  br i1 %i.fw, label %bb.bl, label %bb.by

bb.bk:                                            ; preds = %bb.bl
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.bl:                                            ; preds = %bb.bj
  %i.fy = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries0010___CALLSITE, align 8, !noalias !3933, !nonnull !7, !align !154, !noundef !7 ; 3 uses
  %i.fz = getelementptr i8, ptr %i.fy, i64 32
  %.val128.i = load ptr, ptr %i.fz, align 8, !noalias !3937, !nonnull !7, !noundef !7
  %i.ga = getelementptr i8, ptr %i.fy, i64 40
  %.val129.i = load i64, ptr %i.ga, align 8, !noalias !3937, !noundef !7
  store i64 4, ptr %i.al, align 8, !alias.scope !3938, !noalias !3933
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %.val128.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !3938, !noalias !3933
  %.sroa.8194.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 %.val129.i, ptr %.sroa.8194.0..sroa_idx.i, align 8, !alias.scope !3938, !noalias !3933
  %i.gb = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.bm unwind label %bb.bk, !noalias !3937 ; 2 uses

bb.bm:                                            ; preds = %bb.bl
  %i.gc = extractvalue { ptr, ptr } %i.gb, 0      ; 2 uses
  %i.gd = extractvalue { ptr, ptr } %i.gb, 1      ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  %i.gf = load ptr, ptr %i.ge, align 8, !invariant.load !7, !noalias !3937, !nonnull !7
  %i.gg = invoke noundef zeroext i1 %i.gf(ptr noundef %i.gc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.al)
          to label %bb.bo unwind label %bb.bn, !noalias !3937

bb.bn:                                            ; preds = %bb.bm
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.bo:                                            ; preds = %bb.bm
  br i1 %i.gg, label %bb.bp, label %bb.by

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !3933
  %i.gi = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries0010___CALLSITE, align 8, !noalias !3933, !nonnull !7, !align !154, !noundef !7
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !3933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !3933
  store ptr @55, ptr %i.ai, align 8, !noalias !3933
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr inttoptr (i64 53 to ptr), ptr %i.gk, align 8, !noalias !3933
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 136
  store ptr %i.ai, ptr %i.aj, align 8, !noalias !3933
  %i.gm = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr @56, ptr %i.gm, align 8, !noalias !3933
  %i.gn = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %i.gl, ptr %i.gn, align 8, !noalias !3933
  %i.go = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store ptr @57, ptr %i.go, align 8, !noalias !3933
  store i64 1, ptr %i.ak, align 8, !alias.scope !3942, !noalias !3945
  %.sroa.4.0..sroa_idx.i131.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.aj, ptr %.sroa.4.0..sroa_idx.i131.i, align 8, !alias.scope !3942, !noalias !3945
  %.sroa.5.0..sroa_idx.i132.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 2, ptr %.sroa.5.0..sroa_idx.i132.i, align 8, !alias.scope !3942, !noalias !3945
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store ptr %i.gj, ptr %i.gp, align 8, !alias.scope !3942, !noalias !3945
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fy, ptr noundef nonnull %i.gc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.gd, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ak)
          to label %bb.br unwind label %bb.bq, !noalias !3937

bb.bq:                                            ; preds = %bb.bp
  %i.gq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !3933
  br label %bb.bz

bb.br:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !3933
  br label %bb.by

bb.bs:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !3933
  %i.gr = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries0010___CALLSITE, align 8, !noalias !3933, !nonnull !7, !align !154, !noundef !7 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !3933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !3933
  store ptr @55, ptr %i.am, align 8, !noalias !3933
  %i.gt = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr inttoptr (i64 53 to ptr), ptr %i.gt, align 8, !noalias !3933
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 136
  store ptr %i.am, ptr %i.an, align 8, !noalias !3933
  %i.gv = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr @56, ptr %i.gv, align 8, !noalias !3933
  %i.gw = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %i.gu, ptr %i.gw, align 8, !noalias !3933
  %i.gx = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store ptr @57, ptr %i.gx, align 8, !noalias !3933
  store i64 1, ptr %i.ao, align 8, !noalias !3933
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.an, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !3933
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 2, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !3933
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr %i.gs, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !3933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3933
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ao)
end_hunk_13
begin_hunk_14_@_RNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries0Cs9rVkZwOUgsI_13deltalake_aws:bb.a
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !3933
  br label %bb.bz

bb.bx:                                            ; preds = %bb.bv, %.noexc138.i, %bb.bt, %.noexc136.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !3933
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.br, %bb.bo, %bb.bj, %bb.bi
  %i.hp = load i64, ptr %i.aq, align 8, !range !594, !noalias !3933, !noundef !7 ; 3 uses
  %.not257.i = icmp eq i64 %i.hp, -9223372036854775790
  br i1 %.not257.i, label %.thread49, label %bb.fl

bb.bz:                                            ; preds = %.body153.i, %bb.bw, %bb.bq, %bb.bn, %bb.bk, %bb.bf, %bb.bd
  %.pn70.pn.pn.i = phi { ptr, i32 } [ %i.ho, %bb.bw ], [ %i.fo, %bb.bd ], [ %i.gh, %bb.bn ], [ %i.fx, %bb.bk ], [ %.pn50.i, %.body153.i ], [ %i.fq, %bb.bf ], [ %i.gq, %bb.bq ] ; 3 uses
  %i.hq = load i64, ptr %i.aq, align 8, !range !594, !noalias !3933, !noundef !7 ; 3 uses
  %.not256.i = icmp eq i64 %i.hq, -9223372036854775790
  br i1 %.not256.i, label %.body.i, label %bb.fp

bb.ca:                                            ; preds = %bb.az
  %i.hr = icmp eq i64 %i.fc, 0
  br i1 %i.hr, label %bb.cb, label %bb.dr

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !3933
  %i.hs = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8, !noalias !3933, !nonnull !7, !noundef !7
  %i.hu = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.hv = load i64, ptr %i.hu, align 8, !noalias !3933, !noundef !7
  store ptr %i.ht, ptr %i.x, align 8, !noalias !3933
  %i.hw = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %i.hv, ptr %i.hw, align 8, !noalias !3933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !3933
  %i.hx = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.hy = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.hz = load <2 x ptr>, ptr %i.hx, align 8, !noalias !3933
  store <2 x ptr> %i.hz, ptr %i.w, align 16, !noalias !3933
  %i.ia = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !3933
  %i.ib = icmp ult i64 %i.ia, 2
  br i1 %i.ib, label %bb.cc, label %bb.cj

bb.cc:                                            ; preds = %bb.cb
  %i.ic = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s0_10___CALLSITE, i64 16) monotonic, align 8, !noalias !3933 ; 2 uses
  %i.id = icmp ult i8 %i.ic, 3
  br i1 %i.id, label %bb.cf, label %bb.cd, !prof !3915

bb.cd:                                            ; preds = %bb.cc
  %i.ie = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s0_10___CALLSITE) #31
          to label %bb.cf unwind label %bb.ce, !noalias !3937

bb.ce:                                            ; preds = %bb.cd
  %i.if = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.cf:                                            ; preds = %bb.cd, %bb.cc
  %.sroa.0.0.i141.i = phi i8 [ %i.ic, %bb.cc ], [ %i.ie, %bb.cd ] ; 2 uses
  %i.ig = icmp eq i8 %.sroa.0.0.i141.i, 0
  br i1 %i.ig, label %bb.cj, label %bb.ch

bb.cg:                                            ; preds = %bb.ch
  %i.ih = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.ch:                                            ; preds = %bb.cf
  %i.ii = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s0_10___CALLSITE, align 8, !noalias !3933, !nonnull !7, !align !154, !noundef !7
  %i.ij = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ii, i8 noundef %.sroa.0.0.i141.i)
          to label %bb.ci unwind label %bb.cg, !noalias !3937

bb.ci:                                            ; preds = %bb.ch
  br i1 %i.ij, label %bb.cz, label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.cf, %bb.cb
  %i.ik = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !3933
  %.not253.i = icmp eq i8 %i.ik, 0
  br i1 %.not253.i, label %bb.ck, label %bb.ct

bb.ck:                                            ; preds = %bb.cj
  %i.il = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !3933 ; 2 uses
  %i.im = icmp ult i64 %i.il, 6
  call void @llvm.assume(i1 %i.im)
  %i.in = icmp samesign ugt i64 %i.il, 3
  br i1 %i.in, label %bb.cm, label %bb.ct

bb.cl:                                            ; preds = %bb.cm
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.cm:                                            ; preds = %bb.ck
  %i.ip = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s0_10___CALLSITE, align 8, !noalias !3933, !nonnull !7, !align !154, !noundef !7 ; 3 uses
  %i.iq = getelementptr i8, ptr %i.ip, i64 32
  %.val126.i = load ptr, ptr %i.iq, align 8, !noalias !3937, !nonnull !7, !noundef !7
  %i.ir = getelementptr i8, ptr %i.ip, i64 40
  %.val127.i = load i64, ptr %i.ir, align 8, !noalias !3937, !noundef !7
  store i64 4, ptr %i.r, align 8, !alias.scope !3952, !noalias !3933
  %.sroa.6222.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %.val126.i, ptr %.sroa.6222.0..sroa_idx.i, align 8, !alias.scope !3952, !noalias !3933
  %.sroa.8223.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.val127.i, ptr %.sroa.8223.0..sroa_idx.i, align 8, !alias.scope !3952, !noalias !3933
  %i.is = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.cn unwind label %bb.cl, !noalias !3937 ; 2 uses

bb.cn:                                            ; preds = %bb.cm
  %i.it = extractvalue { ptr, ptr } %i.is, 0      ; 2 uses
  %i.iu = extractvalue { ptr, ptr } %i.is, 1      ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 24
  %i.iw = load ptr, ptr %i.iv, align 8, !invariant.load !7, !noalias !3937, !nonnull !7
  %i.ix = invoke noundef zeroext i1 %i.iw(ptr noundef %i.it, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r)
          to label %bb.cp unwind label %bb.co, !noalias !3937

bb.co:                                            ; preds = %bb.cn
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.cp:                                            ; preds = %bb.cn
  br i1 %i.ix, label %bb.cq, label %bb.ct

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !3933
  %i.iz = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s0_10___CALLSITE, align 8, !noalias !3933, !nonnull !7, !align !154, !noundef !7
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !3933
  store ptr %i.fe, ptr %i.n, align 8, !noalias !3933
  %.sroa.5225.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.5225.0..sroa_idx.i, align 8, !noalias !3933
  %i.jb = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.x, ptr %i.jb, align 8, !noalias !3933
  %.sroa.5227.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.5227.0..sroa_idx.i, align 8, !noalias !3933
  %i.jc = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.w, ptr %i.jc, align 8, !noalias !3933
  %.sroa.5229.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr @_RNvXsm_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtBM_3fmt7Display3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.5229.0..sroa_idx.i, align 8, !noalias !3933
  store ptr @58, ptr %i.o, align 8, !noalias !3933
  %i.jd = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.n, ptr %i.jd, align 8, !noalias !3933
  store ptr %i.o, ptr %i.p, align 8, !noalias !3933
  %i.je = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @56, ptr %i.je, align 8, !noalias !3933
  store i64 1, ptr %i.q, align 8, !alias.scope !3956, !noalias !3959
  %.sroa.4.0..sroa_idx.i150.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.p, ptr %.sroa.4.0..sroa_idx.i150.i, align 8, !alias.scope !3956, !noalias !3959
  %.sroa.5.0..sroa_idx.i151.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i151.i, align 8, !alias.scope !3956, !noalias !3959
  %i.jf = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.ja, ptr %i.jf, align 8, !alias.scope !3956, !noalias !3959
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3933
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !3933
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ip, ptr noundef nonnull %i.it, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.iu, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.q)
          to label %bb.cs unwind label %bb.cr, !noalias !3937

bb.cr:                                            ; preds = %bb.cq
  %i.jg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3933
  br label %bb.dp

bb.cs:                                            ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3933
  br label %bb.ct

bb.ct:                                            ; preds = %bb.de, %bb.cs, %bb.cp, %bb.ck, %bb.cj
  %i.jh = load i64, ptr %i.fe, align 8, !noalias !3933, !noundef !7
  %i.ji = add i64 %i.jh, 1
  store i64 %i.ji, ptr %i.fe, align 8, !noalias !3933
  %.val96.i = load ptr, ptr %i.w, align 16, !noalias !3933 ; 5 uses
  %.val97.i = load ptr, ptr %i.hy, align 8, !noalias !3933, !nonnull !7, !align !154, !noundef !7 ; 5 uses
  %i.jj = load ptr, ptr %.val97.i, align 8, !invariant.load !7, !noalias !3937 ; 2 uses
  %.not.i152.i = icmp eq ptr %i.jj, null
  br i1 %.not.i152.i, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val96.i) ]
  invoke void %i.jj(ptr noundef nonnull %.val96.i)
          to label %bb.cv unwind label %bb.cx, !noalias !3937

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.jk = getelementptr inbounds nuw i8, ptr %.val97.i, i64 8
  %i.jl = load i64, ptr %i.jk, align 8, !range !450, !invariant.load !7, !noalias !3937 ; 2 uses
  %i.jm = icmp eq i64 %i.jl, 0
  br i1 %i.jm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.jn = getelementptr inbounds nuw i8, ptr %.val97.i, i64 16
  %i.jo = load i64, ptr %i.jn, align 8, !range !589, !invariant.load !7, !noalias !3937
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val96.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val96.i, i64 noundef range(i64 1, 0) %i.jl, i64 noundef range(i64 1, 536870913) %i.jo) #22, !noalias !3937
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.cx:                                            ; preds = %bb.cu
  %i.jp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.val97.i, i64 8
  %i.jr = load i64, ptr %i.jq, align 8, !range !450, !invariant.load !7, !noalias !3937 ; 2 uses
  %i.js = icmp eq i64 %i.jr, 0
  br i1 %i.js, label %.body153.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.jt = getelementptr inbounds nuw i8, ptr %.val97.i, i64 16
  %i.ju = load i64, ptr %i.jt, align 8, !range !589, !invariant.load !7, !noalias !3937
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val96.i, i64 noundef range(i64 1, 0) %i.jr, i64 noundef range(i64 1, 536870913) %i.ju) #22, !noalias !3937
  br label %.body153.i

bb.cz:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !3933
  %i.jv = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s0_10___CALLSITE, align 8, !noalias !3933, !nonnull !7, !align !154, !noundef !7 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !3933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !3933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !3933
  store ptr %i.fe, ptr %i.s, align 8, !noalias !3933
  %.sroa.5.0..sroa_idx.i32 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.5.0..sroa_idx.i32, align 8, !noalias !3933
  %i.jx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.x, ptr %i.jx, align 8, !noalias !3933
  %.sroa.5215.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.5215.0..sroa_idx.i, align 8, !noalias !3933
  %i.jy = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %i.w, ptr %i.jy, align 8, !noalias !3933
  %.sroa.5217.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store ptr @_RNvXsm_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtBM_3fmt7Display3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.5217.0..sroa_idx.i, align 8, !noalias !3933
  store ptr @58, ptr %i.t, align 8, !noalias !3933
  %i.jz = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.s, ptr %i.jz, align 8, !noalias !3933
  store ptr %i.t, ptr %i.u, align 8, !noalias !3933
  %i.ka = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @56, ptr %i.ka, align 8, !noalias !3933
  store i64 1, ptr %i.v, align 8, !noalias !3933
  %.sroa.6210.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.u, ptr %.sroa.6210.0..sroa_idx.i, align 8, !noalias !3933
  %.sroa.7211.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 1, ptr %.sroa.7211.0..sroa_idx.i, align 8, !noalias !3933
  %.sroa.8212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.jw, ptr %.sroa.8212.0..sroa_idx.i, align 8, !noalias !3933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3933
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.jv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.v)
          to label %.noexc162.i unwind label %bb.dd, !noalias !3937

.noexc162.i:                                      ; preds = %bb.cz
  %i.kb = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !3962
  %i.kc = icmp eq i8 %i.kb, 0
  br i1 %i.kc, label %bb.da, label %bb.de

bb.da:                                            ; preds = %.noexc162.i
  %i.kd = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !3962 ; 2 uses
  %i.ke = icmp ult i64 %i.kd, 6
  call void @llvm.assume(i1 %i.ke)
  %i.kf = icmp samesign ugt i64 %i.kd, 3
  br i1 %i.kf, label %bb.db, label %bb.de

bb.db:                                            ; preds = %bb.da
  %i.kg = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s0_10___CALLSITE, align 8, !noalias !3962, !nonnull !7, !align !154, !noundef !7 ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 32
  %i.ki = load ptr, ptr %i.kh, align 8, !noalias !3937, !nonnull !7, !noundef !7
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kg, i64 40
  %i.kk = load i64, ptr %i.kj, align 8, !noalias !3937, !noundef !7
  store i64 4, ptr %i.a, align 8, !noalias !3962
  %.sroa.3.0..sroa_idx.i160.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ki, ptr %.sroa.3.0..sroa_idx.i160.i, align 8, !noalias !3962
  %.sroa.5.0..sroa_idx.i161.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.kk, ptr %.sroa.5.0..sroa_idx.i161.i, align 8, !noalias !3962
  %i.kl = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc163.i unwind label %bb.dd, !noalias !3937 ; 2 uses

.noexc163.i:                                      ; preds = %bb.db
  %i.km = extractvalue { ptr, ptr } %i.kl, 0      ; 2 uses
  %i.kn = extractvalue { ptr, ptr } %i.kl, 1      ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 24
  %i.kp = load ptr, ptr %i.ko, align 8, !invariant.load !7, !noalias !3937, !nonnull !7
  %i.kq = invoke noundef zeroext i1 %i.kp(ptr noundef %i.km, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #35
          to label %.noexc164.i unwind label %bb.dd, !noalias !3937, !inline_history !3965

.noexc164.i:                                      ; preds = %.noexc163.i
  br i1 %i.kq, label %bb.dc, label %bb.de

bb.dc:                                            ; preds = %.noexc164.i
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.kg, ptr noundef nonnull %i.km, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.kn, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.v)
          to label %bb.de unwind label %bb.dd, !noalias !3937

bb.dd:                                            ; preds = %bb.dc, %.noexc163.i, %bb.db, %bb.cz
  %i.kr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !3933
  br label %bb.dp

bb.de:                                            ; preds = %bb.dc, %.noexc164.i, %bb.da, %.noexc162.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !3933
  br label %bb.ct

.body153.i:                                       ; preds = %bb.dp, %bb.cy, %bb.cx
  %.pn50.i = phi { ptr, i32 } [ %.pn47.pn.i, %bb.dp ], [ %i.jp, %bb.cx ], [ %i.jp, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !3933
  br label %bb.bz

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.cw, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !3933
  %i.ks = load i64, ptr %i.aq, align 8, !range !594, !noalias !3933, !noundef !7 ; 3 uses
  %.not52.i = icmp eq i64 %i.ks, -9223372036854775790
  br i1 %.not52.i, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.kt = icmp ne i64 %i.ks, -9223372036854775800
  call void @llvm.assume(i1 %i.kt)
  %i.ku = icmp eq i64 %i.ks, -9223372036854775802
  br i1 %i.ku, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.dh, %bb.df, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !3933
  %.pre.i = load i64, ptr %i.fe, align 8, !noalias !3933
  %.pre259.i = load i64, ptr %i.fg, align 8, !noalias !3933
  br label %bb.al

bb.dh:                                            ; preds = %bb.df
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.aq)
          to label %bb.dg unwind label %bb.ax, !noalias !3937

bb.di:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !3933
  %i.kv = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.kw = load ptr, ptr %i.kv, align 8, !noalias !3933, !nonnull !7, !noundef !7
  %i.kx = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ky = load ptr, ptr %i.kx, align 8, !noalias !3933, !nonnull !7, !align !154, !noundef !7
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.la = load ptr, ptr %i.kz, align 8, !noalias !3933, !nonnull !7, !align !154, !noundef !7
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ky, i64 120
  %i.lc = load ptr, ptr %i.lb, align 8, !invariant.load !7, !noalias !3937, !nonnull !7
  %i.ld = invoke { ptr, ptr } %i.lc(ptr noundef nonnull %i.kw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.la)
          to label %bb.do unwind label %bb.dn, !noalias !3937 ; 2 uses

bb.dj:                                            ; preds = %bb.dk
  %i.le = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.dk:                                            ; preds = %bb.al
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @59, ptr noundef nonnull inttoptr (i64 211 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #34
          to label %bb.dl unwind label %bb.dj, !noalias !3937

bb.dl:                                            ; preds = %bb.dk
  unreachable

bb.dm:                                            ; preds = %bb.dj, %.body.i
  %.pn74.pn.i = phi { ptr, i32 } [ %.pn74.i, %.body.i ], [ %i.le, %bb.dj ]
  store i8 2, ptr %i.dv, align 8, !noalias !3933
  br label %.body35

bb.dn:                                            ; preds = %bb.di
  %i.lf = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.do:                                            ; preds = %bb.di
  %i.lg = extractvalue { ptr, ptr } %i.ld, 0
  %i.lh = extractvalue { ptr, ptr } %i.ld, 1
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 144
  store ptr %i.lg, ptr %i.li, align 8, !noalias !3933
  %i.lj = getelementptr inbounds nuw i8, ptr %1, i64 152
  store ptr %i.lh, ptr %i.lj, align 8, !noalias !3933
  br label %bb.ap

bb.dp:                                            ; preds = %bb.dd, %bb.cr, %bb.co, %bb.cl, %bb.cg, %bb.ce
  %.pn47.pn.i = phi { ptr, i32 } [ %i.kr, %bb.dd ], [ %i.io, %bb.cl ], [ %i.if, %bb.ce ], [ %i.jg, %bb.cr ], [ %i.iy, %bb.co ], [ %i.ih, %bb.cg ]
  %.val.i = load ptr, ptr %i.w, align 16, !noalias !3933
  %.val95.i = load ptr, ptr %i.hy, align 8, !noalias !3933, !nonnull !7, !align !154, !noundef !7
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws(ptr %.val.i, ptr nonnull %.val95.i) #30
          to label %.body153.i unwind label %bb.dq, !noalias !3937

bb.dq:                                            ; preds = %bb.fq, %bb.fn, %bb.en, %bb.dp, %bb.ao
  %i.lk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32, !noalias !3937
  unreachable

bb.dr:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !3933
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.m, ptr noundef nonnull align 8 dereferenceable(72) %i.aq, i64 72, i1 false), !noalias !3933
  %i.ll = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !3933
end_hunk_14
