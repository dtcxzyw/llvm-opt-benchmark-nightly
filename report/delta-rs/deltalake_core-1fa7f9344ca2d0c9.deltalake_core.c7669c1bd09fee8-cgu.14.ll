inline.NumInlined: 8054
inline.NumDeleted: 3226
begin_hunk_0_@_RNvXs4_NtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifierINtB5_10SimplifierNtNtCs8VI8w5SIoU4_15datafusion_expr8simplify15SimplifyContextENtNtCsjhHCjzi9uUI_17datafusion_common9tree_node16TreeNodeRewriter4f_upCs14kWLkQVSKO_14deltalake_core:bb.a

.thread7025:                                      ; preds = %bb.arb, %bb.aqp, %bb.arf
  %i.bry = phi ptr [ %i.brq, %bb.arf ], [ %i.bmt, %bb.aqp ], [ %i.bmt, %bb.arb ] ; 8 uses
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTINtNtB9_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBX_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ez)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTINtNtBN_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1v_EEECs14kWLkQVSKO_14deltalake_core.exit6299 unwind label %bb.arg

_RNvNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions5utils7is_true.exit6297: ; preds = %bb.aqs
  %i.brz = getelementptr inbounds nuw i8, ptr %i.bro, i64 32
  %i.bsa = load i8, ptr %i.brz, align 16, !range !470, !alias.scope !14476, !noundef !12
  %i.bsb = trunc i8 %i.bsa to i1
  br i1 %i.bsb, label %bb.aqu, label %bb.aqt

bb.aqt:                                           ; preds = %_RNvNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions5utils7is_true.exit6297
  %i.bsc = getelementptr inbounds nuw i8, ptr %i.bro, i64 32
  %i.bsd = load i8, ptr %i.bsc, align 16, !range !470, !alias.scope !14479, !noundef !12
  %.not7324 = icmp eq i8 %i.bsd, 0
  br i1 %.not7324, label %bb.aqy, label %_RNvNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions5utils8is_false.exit6302.thread

bb.aqu:                                           ; preds = %_RNvNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions5utils7is_true.exit6297
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(8) %i.fd)
          to label %bb.are unwind label %.body6303

_RNvNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions5utils8is_false.exit6302.thread: ; preds = %bb.aqs, %bb.aqr, %bb.aqt
  call void @llvm.experimental.noalias.scope.decl(metadata !14482)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bro, ptr %i.a, align 8, !noalias !14485
  store ptr %i.brq, ptr %i.brj, align 8, !noalias !14485
  %i.bse = load i64, ptr %i.brc, align 8, !alias.scope !14482, !noalias !14488, !noundef !12 ; 3 uses
  %i.bsf = load i64, ptr %i.fa, align 8, !range !378, !alias.scope !14482, !noalias !14488, !noundef !12
  %i.bsg = icmp eq i64 %i.bse, %i.bsf
  br i1 %i.bsg, label %bb.aqv, label %bb.ara

bb.aqv:                                           ; preds = %_RNvNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions5utils8is_false.exit6302.thread
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTINtNtB7_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBN_EE8grow_oneCscYNcALI69lp_20datafusion_optimizer(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fa)
          to label %bb.ara unwind label %bb.aqw

bb.aqw:                                           ; preds = %bb.aqv
  %i.bsh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBH_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.a) #53
          to label %.body6308 unwind label %bb.aqx

bb.aqx:                                           ; preds = %bb.aqw
  %i.bsi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #54
  unreachable

bb.aqy:                                           ; preds = %bb.aqt
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.brq) #58
          to label %bb.arc unwind label %bb.aqz, !noalias !14489, !inline_history !507

bb.aqz:                                           ; preds = %bb.aqy
  %i.bsj = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.brq, i64 noundef 112, i64 noundef 16) #52, !noalias !14489, !inline_history !507
  br label %.thread7033

bb.ara:                                           ; preds = %bb.aqv, %_RNvNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions5utils8is_false.exit6302.thread
  %i.bsk = load ptr, ptr %i.brb, align 8, !alias.scope !14482, !noalias !14488, !nonnull !12, !noundef !12
  %i.bsl = getelementptr inbounds nuw [16 x i8], ptr %i.bsk, i64 %i.bse ; 2 uses
  store ptr %i.bro, ptr %i.bsl, align 8
  %i.bsm = getelementptr inbounds nuw i8, ptr %i.bsl, i64 8
  store ptr %i.brq, ptr %i.bsm, align 8
  %i.bsn = add i64 %i.bse, 1
  store i64 %i.bsn, ptr %i.brc, align 8, !alias.scope !14482, !noalias !14488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.arb

bb.arb:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit6310, %bb.ara
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ey)
  %i.bso = load ptr, ptr %.sroa.4679.0..sroa_idx, align 8, !alias.scope !14492, !nonnull !12, !noundef !12
  %i.bsp = load ptr, ptr %.sroa.2677.0..sroa_idx, align 8, !alias.scope !14492, !nonnull !12, !noundef !12 ; 2 uses
  %i.bsq = icmp eq ptr %i.bsp, %i.bso
  br i1 %i.bsq, label %.thread7025, label %bb.aqr

.body6303:                                        ; preds = %bb.aqu
  %i.bsr = landingpad { ptr, i32 }
          cleanup
  store ptr %i.brq, ptr %i.fd, align 8
  br label %.thread7033

bb.arc:                                           ; preds = %bb.aqy
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.brq, i64 noundef 112, i64 noundef 16) #52, !noalias !14489, !inline_history !507
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.bro) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit6310 unwind label %bb.ard, !noalias !14494, !inline_history !507

bb.ard:                                           ; preds = %bb.arc
  %i.bss = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bro, i64 noundef 112, i64 noundef 16) #52, !noalias !14494, !inline_history !507
  br label %.body6308

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit6310: ; preds = %bb.arc
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bro, i64 noundef 112, i64 noundef 16) #52, !noalias !14494, !inline_history !507
  br label %bb.arb

bb.are:                                           ; preds = %bb.aqu
  store ptr %i.brq, ptr %i.fd, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(8) %i.ey)
          to label %bb.arf unwind label %bb.aqq

bb.arf:                                           ; preds = %bb.are
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ey)
  br label %.thread7025

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTINtNtBN_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1v_EEECs14kWLkQVSKO_14deltalake_core.exit6295: ; preds = %.body6308, %bb.arg
  %i.bst = phi ptr [ %i.bry, %bb.arg ], [ %i.brk, %.body6308 ]
  %.pn5894 = phi { ptr, i32 } [ %i.bsu, %bb.arg ], [ %.pn5891, %.body6308 ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTINtNtBL_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1e_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.fa) #53
          to label %bb.aql unwind label %bb.bt

bb.arg:                                           ; preds = %.thread7025, %bb.ark
  %i.bsu = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTINtNtBN_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1v_EEECs14kWLkQVSKO_14deltalake_core.exit6295

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTINtNtBN_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1v_EEECs14kWLkQVSKO_14deltalake_core.exit6299: ; preds = %.thread7025
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ez)
  %i.bsv = load i64, ptr %i.brc, align 8, !noundef !12 ; 3 uses
  %i.bsw = icmp ult i64 %i.bsv, 576460752303423488
  call void @llvm.assume(i1 %i.bsw)
  %i.bsx = icmp eq i64 %i.bsv, 0
  br i1 %i.bsx, label %bb.arh, label %bb.ari

bb.arh:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTINtNtBN_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1v_EEECs14kWLkQVSKO_14deltalake_core.exit6299
  %.not5893 = icmp eq ptr %i.bry, null
  br i1 %.not5893, label %bb.ark, label %bb.arj

bb.ari:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTINtNtBN_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1v_EEECs14kWLkQVSKO_14deltalake_core.exit6299
  %.sroa.04059.0.copyload = load i64, ptr %i.fa, align 8
  %.sroa.44060.0.copyload = load i64, ptr %i.brb, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fa)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.fc)
          to label %bb.art unwind label %.thread7041

bb.arj:                                           ; preds = %bb.arh
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %0, ptr noundef nonnull align 16 dereferenceable(112) %i.bry, i64 112, i1 false)
  %.sroa.4685.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 1, ptr %.sroa.4685.0..sroa_idx, align 16
  %.sroa.5686.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 113
  store i8 0, ptr %.sroa.5686.0..sroa_idx, align 1
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bry, i64 noundef 112, i64 noundef 16) #52
  br label %bb.arl

bb.ark:                                           ; preds = %bb.arh
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6694)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ex)
  invoke void @_RNvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB5_11ScalarValue12try_new_null(ptr noalias noundef nonnull sret([64 x i8]) align 16 captures(none) dereferenceable(64) %i.ex, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fc)
          to label %bb.arm unwind label %bb.arg

bb.arl:                                           ; preds = %bb.aro, %bb.arn, %bb.arj
  %.sroa.04759.10 = phi i8 [ 0, %bb.arj ], [ 1, %bb.arn ], [ 1, %bb.aro ] ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTINtNtBL_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1e_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.fa)
          to label %bb.arp unwind label %bb.aqm

bb.arm:                                           ; preds = %bb.ark
  %i.bsy = load i128, ptr %i.ex, align 16, !range !14370, !noundef !12 ; 2 uses
  %i.bsz = icmp eq i128 %i.bsy, 50
  %i.bta = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.6694, ptr noundef nonnull align 16 dereferenceable(40) %i.bta, i64 40, i1 false)
  br i1 %i.bsz, label %bb.arn, label %bb.aro

bb.arn:                                           ; preds = %bb.arm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ex)
  %i.btb = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.btb, ptr noundef nonnull align 16 dereferenceable(40) %.sroa.6694, i64 40, i1 false)
  store i64 37, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6694)
  br label %bb.arl

bb.aro:                                           ; preds = %bb.arm
  %.sroa.65508.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ex, i64 56
  %.sroa.65508.0.copyload = load i64, ptr %.sroa.65508.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ex)
  %.sroa.6705.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.6705.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(40) %.sroa.6694, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6694)
  store i64 7, ptr %0, align 16
  %.sroa.5704.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i128 %i.bsy, ptr %.sroa.5704.0..sroa_idx, align 16
  %.sroa.7706.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.65508.0.copyload, ptr %.sroa.7706.0..sroa_idx, align 8
  %.sroa.8707.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr null, ptr %.sroa.8707.0..sroa_idx, align 16
  %.sroa.10709.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 1, ptr %.sroa.10709.0..sroa_idx, align 16
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 113
  store i8 0, ptr %.sroa.11.0..sroa_idx, align 1
  br label %bb.arl

bb.arp:                                           ; preds = %bb.arl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fa)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.fc)
          to label %bb.arq unwind label %.thread7020

bb.arq:                                           ; preds = %bb.arp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fc)
  %i.btc = icmp ne ptr %i.bry, null
  %i.btd = trunc nuw i8 %.sroa.04759.10 to i1
  %or.cond5 = and i1 %i.btc, %i.btd
  br i1 %or.cond5, label %bb.ars, label %.thread7039

.thread7039:                                      ; preds = %bb.arq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fd)
  br label %bb.arx

bb.arr:                                           ; preds = %bb.ars
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fd)
  %i.bte = trunc nuw i8 %.sroa.04761.5 to i1
  br i1 %i.bte, label %bb.ary, label %bb.arx

bb.ars:                                           ; preds = %bb.arq, %bb.aqj
  %.sroa.04761.5 = phi i8 [ 1, %bb.aqj ], [ 0, %bb.arq ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(8) %i.fd)
          to label %bb.arr unwind label %bb.arw

bb.art:                                           ; preds = %bb.ari
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fe)
  br label %bb.apf

bb.aru:                                           ; preds = %bb.apf, %bb.auv, %bb.qn
  %.sroa.04744.9 = phi i8 [ %.sroa.04744.5, %bb.qn ], [ 1, %bb.auv ], [ 1, %bb.apf ] ; 2 uses
  %i.btf = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !14497)
  %i.btg = load ptr, ptr %i.btf, align 8, !alias.scope !14497, !nonnull !12, !noundef !12 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.btg) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit6313 unwind label %.body6311, !noalias !14497, !inline_history !507

.body6311:                                        ; preds = %bb.aru
  %i.bth = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.btg, i64 noundef 112, i64 noundef 16) #52, !noalias !14497, !inline_history !507
  %i.bti = trunc nuw i8 %.sroa.04744.9 to i1
  br i1 %i.bti, label %bb.aws, label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit6313: ; preds = %bb.aru
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.btg, i64 noundef 112, i64 noundef 16) #52, !noalias !14497, !inline_history !507
  br label %bb.aig

.thread7033:                                      ; preds = %.body6303, %bb.aqz
  %.pn5888.pn7036 = phi { ptr, i32 } [ %i.bsr, %.body6303 ], [ %i.bsj, %bb.aqz ]
  %i.btj = phi ptr [ %i.brq, %.body6303 ], [ %i.bmt, %bb.aqz ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(8) %i.ey) #53
          to label %.body6308 unwind label %bb.bt

bb.arv:                                           ; preds = %bb.arz, %.thread7008, %bb.arw
  %.sroa.04761.6 = phi i8 [ %.sroa.04761.5, %bb.arw ], [ %.sroa.04761.07014, %bb.arz ], [ %.sroa.04761.07014, %.thread7008 ]
  %.pn5900 = phi { ptr, i32 } [ %i.btl, %bb.arw ], [ %.pn5896.pn7015, %bb.arz ], [ %.pn5896.pn7015, %.thread7008 ] ; 2 uses
  %i.btk = trunc nuw i8 %.sroa.04761.6 to i1
  br i1 %i.btk, label %bb.asa, label %.thread6569

bb.arw:                                           ; preds = %bb.ars
  %i.btl = landingpad { ptr, i32 }
          cleanup
  br label %bb.arv

bb.arx:                                           ; preds = %.thread7039, %bb.ary, %bb.arr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fe)
  br label %bb.awd

bb.ary:                                           ; preds = %.thread7037, %bb.arr
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTINtNtBL_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1e_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.fe)
          to label %bb.arx unwind label %.thread6581

.thread7008:                                      ; preds = %bb.aql, %.thread7020
  %.pn5896.pn7015 = phi { ptr, i32 } [ %lpad.thr_comm7018, %.thread7020 ], [ %.pn5896, %bb.aql ] ; 2 uses
  %.sroa.04761.07014 = phi i8 [ %.sroa.04761.1.ph, %.thread7020 ], [ %.sroa.04761.2, %bb.aql ] ; 2 uses
  %.sroa.04759.07013 = phi i8 [ %.sroa.04759.1.ph, %.thread7020 ], [ %.sroa.04759.2, %bb.aql ]
  %i.btm = phi ptr [ %.ph, %.thread7020 ], [ %i.bqq, %bb.aql ]
  %i.btn = icmp ne ptr %i.btm, null
  %i.bto = trunc nuw i8 %.sroa.04759.07013 to i1
  %or.cond7 = select i1 %i.btn, i1 %i.bto, i1 false
  br i1 %or.cond7, label %bb.arz, label %bb.arv

bb.arz:                                           ; preds = %.thread7008
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(8) %i.fd) #53
          to label %bb.arv unwind label %bb.bt

bb.asa:                                           ; preds = %bb.arv
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTINtNtBL_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1e_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.fe) #53
          to label %.thread6569 unwind label %bb.bt

bb.asb:                                           ; preds = %bb.m
  %i.btp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14500)
  call void @llvm.experimental.noalias.scope.decl(metadata !14503)
  %i.btq = load ptr, ptr %i.dm, align 8, !alias.scope !14506, !nonnull !12, !noundef !12
  %i.btr = atomicrmw sub ptr %i.btq, i64 1 release, align 8, !noalias !14506
  %i.bts = icmp eq i64 %i.btr, 1
  br i1 %i.bts, label %bb.asc, label %.thread6569

bb.asc:                                           ; preds = %bb.asb
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dm) #55
          to label %.thread6569 unwind label %bb.bt

bb.asd:                                           ; preds = %bb.m
  %i.btt = load i64, ptr %i.dk, align 16, !range !14507, !noundef !12 ; 4 uses
  %i.btu = icmp eq i64 %i.btt, 38
  %i.btv = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.sroa.05566.0.copyload = load i64, ptr %i.btv, align 8 ; 2 uses
  %.sroa.55567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %.sroa.65568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %.sroa.65568.0.copyload = load i64, ptr %.sroa.65568.0..sroa_idx, align 8 ; 6 uses
  %.sroa.75569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  %.sroa.55567.0.copyload = load i64, ptr %.sroa.55567.0..sroa_idx, align 16 ; 2 uses
  %i.btw = load <2 x ptr>, ptr %.sroa.75569.0..sroa_idx, align 16 ; 3 uses
  br i1 %i.btu, label %bb.ase, label %bb.asg

bb.ase:                                           ; preds = %bb.asd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  %i.btx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.05566.0.copyload, ptr %i.btx, align 8
  %.sroa.25572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.55567.0.copyload, ptr %.sroa.25572.0..sroa_idx, align 16
  %.sroa.35573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.65568.0.copyload, ptr %.sroa.35573.0..sroa_idx, align 8
  %.sroa.45574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x ptr> %i.btw, ptr %.sroa.45574.0..sroa_idx, align 16
  store i64 37, ptr %0, align 16
  call void @llvm.experimental.noalias.scope.decl(metadata !14508)
  call void @llvm.experimental.noalias.scope.decl(metadata !14511)
  %i.bty = load ptr, ptr %i.dm, align 8, !alias.scope !14514, !nonnull !12, !noundef !12
  %i.btz = atomicrmw sub ptr %i.bty, i64 1 release, align 8, !noalias !14514
  %i.bua = icmp eq i64 %i.btz, 1
  br i1 %i.bua, label %bb.asf, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs14kWLkQVSKO_14deltalake_core.exit6316

bb.asf:                                           ; preds = %bb.ase
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dm) #55
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs14kWLkQVSKO_14deltalake_core.exit6316 unwind label %.thread6581

bb.asg:                                           ; preds = %bb.asd
  %.sroa.105556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.5770.sroa.0, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.105556.0..sroa_idx, i64 16, i1 false)
  %.sroa.115557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 64
  %.sroa.115557.0.copyload = load ptr, ptr %.sroa.115557.0..sroa_idx, align 16 ; 2 uses
  %.sroa.125558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 72
  %.sroa.125558.0.copyload = load i64, ptr %.sroa.125558.0..sroa_idx, align 8 ; 3 uses
  %.sroa.135559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 80
  %.sroa.135559.0.copyload = load ptr, ptr %.sroa.135559.0..sroa_idx, align 16 ; 2 uses
  %.sroa.145560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5770.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.145560.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  %i.bub = icmp eq i64 %i.btt, 37
  br i1 %i.bub, label %bb.ash, label %bb.asi

bb.ash:                                           ; preds = %bb.asg
  %i.buc = load ptr, ptr %i.dm, align 8, !nonnull !12, !noundef !12
  %i.bud = insertelement <2 x ptr> <ptr poison, ptr undef>, ptr %i.buc, i64 0
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs14kWLkQVSKO_14deltalake_core.exit6318

bb.asi:                                           ; preds = %bb.asg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.208, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.5770.sroa.0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.251, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5770.sroa.5, i64 24, i1 false)
  %.sroa.224.sroa.105.0.extract.shift2796 = lshr i64 %.sroa.125558.0.copyload, 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14515)
  call void @llvm.experimental.noalias.scope.decl(metadata !14518)
  %i.bue = load ptr, ptr %i.dm, align 8, !alias.scope !14521, !nonnull !12, !noundef !12
  %i.buf = atomicrmw sub ptr %i.bue, i64 1 release, align 8, !noalias !14521
  %i.bug = icmp eq i64 %i.buf, 1
  br i1 %i.bug, label %bb.asj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs14kWLkQVSKO_14deltalake_core.exit6318

bb.asj:                                           ; preds = %bb.asi
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dm) #55
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs14kWLkQVSKO_14deltalake_core.exit6318 unwind label %.thread6581

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs14kWLkQVSKO_14deltalake_core.exit6318: ; preds = %bb.asi, %bb.asj, %bb.ash
  %.sroa.0973.18 = phi i64 [ 25, %bb.ash ], [ %i.btt, %bb.asj ], [ %i.btt, %bb.asi ]
  %.sroa.2231919.18 = phi ptr [ undef, %bb.ash ], [ %.sroa.115557.0.copyload, %bb.asj ], [ %.sroa.115557.0.copyload, %bb.asi ]
  %.sroa.238.18 = phi ptr [ undef, %bb.ash ], [ %.sroa.135559.0.copyload, %bb.asj ], [ %.sroa.135559.0.copyload, %bb.asi ]
  %.sroa.263.18 = phi i8 [ 0, %bb.ash ], [ 1, %bb.asj ], [ 1, %bb.asi ]
  %.sroa.224.sroa.0.18 = phi i64 [ 0, %bb.ash ], [ %.sroa.125558.0.copyload, %bb.asj ], [ %.sroa.125558.0.copyload, %bb.asi ]
  %.sroa.224.sroa.105.sroa.0.18 = phi i64 [ 0, %bb.ash ], [ %.sroa.224.sroa.105.0.extract.shift2796, %bb.asj ], [ %.sroa.224.sroa.105.0.extract.shift2796, %bb.asi ]
  %i.buh = phi <2 x ptr> [ %i.bud, %bb.ash ], [ %i.btw, %bb.asj ], [ %i.btw, %bb.asi ]
  %.sroa.156.sroa.0.sroa.105.sroa.0.18.in.in = trunc i64 %.sroa.65568.0.copyload to i32
  %.sroa.156.sroa.0.sroa.105.sroa.0.18.in = lshr i32 %.sroa.156.sroa.0.sroa.105.sroa.0.18.in.in, 8
  %.sroa.156.sroa.0.sroa.105.sroa.0.18 = trunc nuw i32 %.sroa.156.sroa.0.sroa.105.sroa.0.18.in to i24
  %.sroa.156.sroa.0.sroa.0.18 = trunc i64 %.sroa.65568.0.copyload to i8
  %.sroa.156.sroa.109.18.in = lshr i64 %.sroa.65568.0.copyload, 48
  %.sroa.156.sroa.109.18 = trunc nuw i64 %.sroa.156.sroa.109.18.in to i16
  %.sroa.156.sroa.108.18.in = lshr i64 %.sroa.65568.0.copyload, 40
  %.sroa.156.sroa.108.18 = trunc i64 %.sroa.156.sroa.108.18.in to i8
  %.sroa.156.sroa.107.18.in = lshr i64 %.sroa.65568.0.copyload, 32
  %.sroa.156.sroa.107.18 = trunc i64 %.sroa.156.sroa.107.18.in to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  br label %bb.qn

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs14kWLkQVSKO_14deltalake_core.exit6316: ; preds = %bb.ase, %bb.asf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  br label %bb.ct

bb.ask:                                           ; preds = %bb.awd, %bb.ct
  %i.bui = getelementptr inbounds nuw i8, ptr %2, i64 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(8) %i.bui)
          to label %bb.awf unwind label %bb.awe
end_hunk_0
begin_hunk_1_@_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern15is_contained_in:bb.a
  br i1 %.not.i.not.i.i, label %bb.i, label %bb.k

bb.k:                                             ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.ac = add nuw nsw i64 %1, 15
  %i.ad = icmp ult i64 %3, %i.ac
  br i1 %i.ad, label %.lr.ph.split.us.i.i, label %bb.l

.thread.i:                                        ; preds = %bb.g
  %i.ae = icmp ult i64 %3, 17
  br i1 %i.ae, label %.lr.ph.split.us.i.i, label %.thread93.i

.thread93.i:                                      ; preds = %.thread.i
  %i.af = insertelement <16 x i8> poison, i8 %i.r, i64 0
  %i.ag = shufflevector <16 x i8> %i.af, <16 x i8> poison, <16 x i32> zeroinitializer
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !alias.scope !17424, !noalias !17427
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ah = insertelement <16 x i8> poison, i8 %i.r, i64 0
  %i.ai = shufflevector <16 x i8> %i.ah, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.m

.lr.ph.split.us.i.i:                              ; preds = %bb.k, %.thread.i
  %bcmp.i.i.us23.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 2, 24) %1), !alias.scope !17438, !noalias !17439
  %i.aj = icmp eq i32 %bcmp.i.i.us23.i.i, 0
  br i1 %i.aj, label %.loopexit, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i.preheader

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i.preheader: ; preds = %.lr.ph.split.us.i.i
  %i.ak = add i64 %3, -1                          ; 2 uses
  %.not28.i.i46 = icmp ugt i64 %1, %i.ak
  br i1 %.not28.i.i46, label %.loopexit, label %.lr.ph48

.lr.ph48:                                         ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i.preheader, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i
  %i.al = phi i64 [ %i.ao, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i ], [ %i.ak, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i.preheader ]
  %.pn.i47 = phi ptr [ %i.am, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i ], [ %2, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i.preheader ]
  %i.am = getelementptr inbounds nuw i8, ptr %.pn.i47, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.am, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 2, 24) %1), !alias.scope !17438, !noalias !17439
  %i.an = icmp eq i32 %bcmp.i.i.us.i.i, 0
  br i1 %i.an, label %.loopexit, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i: ; preds = %.lr.ph48
  %i.ao = add i64 %i.al, -1                       ; 2 uses
  %.not28.i.i = icmp ugt i64 %1, %i.ao
  br i1 %.not28.i.i, label %.loopexit, label %.lr.ph48

bb.m:                                             ; preds = %bb.l, %.thread93.i
  %i.ap = phi i8 [ %.pre.i, %.thread93.i ], [ %i.ab, %bb.l ]
  %i.aq = phi <16 x i8> [ %i.ag, %.thread93.i ], [ %i.ai, %bb.l ] ; 6 uses
  %storemerge9295.i = phi i64 [ 1, %.thread93.i ], [ %i.y, %bb.l ] ; 6 uses
  %i.ar = insertelement <16 x i8> poison, i8 %i.ap, i64 0
  %i.as = shufflevector <16 x i8> %i.ar, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17438
  store ptr %2, ptr %i.a, align 8, !noalias !17438
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.au, align 8, !noalias !17438
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.at, ptr %i.av, align 8, !noalias !17438
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.s, ptr %i.aw, align 8, !noalias !17438
  %i.ax = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i5 = icmp ult i64 %i.ax, %3
  br i1 %.not.i5, label %.lr.ph.i8, label %.preheader.i6

.preheader.i6:                                    ; preds = %bb.q, %bb.m
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.m ], [ %i.ct, %bb.q ] ; 2 uses
  %.sroa.014.0.lcssa.i = phi i8 [ 0, %bb.m ], [ %.sroa.014.2.3.i, %bb.q ] ; 2 uses
  %i.ay = add nuw nsw i64 %1, 15                  ; 2 uses
  %i.az = add i64 %.sroa.06.0.lcssa.i, %i.ay
  %i.ba = icmp uge i64 %i.az, %3
  %i.bb = trunc nuw i8 %.sroa.014.0.lcssa.i to i1 ; 2 uses
  %or.cond3105.i = select i1 %i.ba, i1 true, i1 %i.bb
  br i1 %or.cond3105.i, label %._crit_edge.i7, label %.lr.ph107.i

.lr.ph.i8:                                        ; preds = %bb.m, %bb.q
  %.sroa.06.0103.i = phi i64 [ %i.ct, %bb.q ], [ 0, %bb.m ] ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.0103.i ; 5 uses
  %.sroa.0.0.copyload.i.i = load <16 x i8>, ptr %i.bc, align 1, !alias.scope !17427, !noalias !17443
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i.i = load <16 x i8>, ptr %i.bd, align 1, !alias.scope !17427, !noalias !17443
  %i.be = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i, %i.aq
  %i.bf = icmp eq <16 x i8> %.sroa.02.0.copyload.i.i, %i.as
  %i.bg = and <16 x i1> %i.be, %i.bf
  %i.bh = bitcast <16 x i1> %i.bg to i16          ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i = load <16 x i8>, ptr %i.bi, align 1, !alias.scope !17427, !noalias !17443
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i.1.i = load <16 x i8>, ptr %i.bj, align 1, !alias.scope !17427, !noalias !17443
  %i.bk = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i, %i.aq
  %i.bl = icmp eq <16 x i8> %.sroa.02.0.copyload.i.1.i, %i.as
  %i.bm = and <16 x i1> %i.bk, %i.bl
  %i.bn = bitcast <16 x i1> %i.bm to i16          ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bc, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i = load <16 x i8>, ptr %i.bo, align 1, !alias.scope !17427, !noalias !17443
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i.2.i = load <16 x i8>, ptr %i.bp, align 1, !alias.scope !17427, !noalias !17443
  %i.bq = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i, %i.aq
  %i.br = icmp eq <16 x i8> %.sroa.02.0.copyload.i.2.i, %i.as
  %i.bs = and <16 x i1> %i.bq, %i.br
  %i.bt = bitcast <16 x i1> %i.bs to i16          ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bc, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i = load <16 x i8>, ptr %i.bu, align 1, !alias.scope !17427, !noalias !17443
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i.3.i = load <16 x i8>, ptr %i.bv, align 1, !alias.scope !17427, !noalias !17443
  %i.bw = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i, %i.aq
  %i.bx = icmp eq <16 x i8> %.sroa.02.0.copyload.i.3.i, %i.as
  %i.by = and <16 x i1> %i.bw, %i.bx
  %i.bz = bitcast <16 x i1> %i.by to i16          ; 2 uses
  %i.ca = icmp eq i16 %i.bh, 0
  br i1 %i.ca, label %.preheader96.1.i, label %bb.r

.preheader96.1.i:                                 ; preds = %bb.r, %.lr.ph.i8
  %.sroa.014.2.i = phi i8 [ 0, %.lr.ph.i8 ], [ %i.cy, %bb.r ] ; 2 uses
  %i.cb = icmp eq i16 %i.bn, 0
  br i1 %i.cb, label %.preheader96.2.i, label %bb.n

bb.n:                                             ; preds = %.preheader96.1.i
  %i.cc = or disjoint i64 %.sroa.06.0103.i, 16
  %i.cd = trunc nuw i8 %.sroa.014.2.i to i1       ; 2 uses
  %i.ce = call fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cc, i16 noundef %i.bn, i1 noundef zeroext %i.cd) #56
  %i.cf = or i1 %i.ce, %i.cd
  %i.cg = zext i1 %i.cf to i8
  br label %.preheader96.2.i

.preheader96.2.i:                                 ; preds = %bb.n, %.preheader96.1.i
  %.sroa.014.2.1.i = phi i8 [ %.sroa.014.2.i, %.preheader96.1.i ], [ %i.cg, %bb.n ] ; 2 uses
  %i.ch = icmp eq i16 %i.bt, 0
  br i1 %i.ch, label %.preheader96.3.i, label %bb.o

bb.o:                                             ; preds = %.preheader96.2.i
  %i.ci = or disjoint i64 %.sroa.06.0103.i, 32
  %i.cj = trunc nuw i8 %.sroa.014.2.1.i to i1     ; 2 uses
  %i.ck = call fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.ci, i16 noundef %i.bt, i1 noundef zeroext %i.cj) #56
  %i.cl = or i1 %i.ck, %i.cj
  %i.cm = zext i1 %i.cl to i8
  br label %.preheader96.3.i

.preheader96.3.i:                                 ; preds = %bb.o, %.preheader96.2.i
  %.sroa.014.2.2.i = phi i8 [ %.sroa.014.2.1.i, %.preheader96.2.i ], [ %i.cm, %bb.o ] ; 2 uses
  %i.cn = icmp eq i16 %i.bz, 0
  br i1 %i.cn, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.preheader96.3.i
  %i.co = or disjoint i64 %.sroa.06.0103.i, 48
  %i.cp = trunc nuw i8 %.sroa.014.2.2.i to i1     ; 2 uses
  %i.cq = call fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.co, i16 noundef %i.bz, i1 noundef zeroext %i.cp) #56
  %i.cr = or i1 %i.cq, %i.cp
  %i.cs = zext i1 %i.cr to i8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.preheader96.3.i
  %.sroa.014.2.3.i = phi i8 [ %.sroa.014.2.2.i, %.preheader96.3.i ], [ %i.cs, %bb.p ] ; 2 uses
  %i.ct = add i64 %.sroa.06.0103.i, 64            ; 3 uses
  %i.cu = add i64 %i.ct, %i.ax
  %i.cv = icmp uge i64 %i.cu, %3
  %i.cw = trunc nuw i8 %.sroa.014.2.3.i to i1
  %or.cond.i = select i1 %i.cv, i1 true, i1 %i.cw
  br i1 %or.cond.i, label %.preheader.i6, label %.lr.ph.i8

bb.r:                                             ; preds = %.lr.ph.i8
  %i.cx = call fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.0103.i, i16 noundef %i.bh, i1 noundef zeroext false) #56
  %i.cy = zext i1 %i.cx to i8
  br label %.preheader96.1.i

._crit_edge.i7:                                   ; preds = %bb.s, %.preheader.i6
  %.sroa.014.3.lcssa.i = phi i8 [ %.sroa.014.0.lcssa.i, %.preheader.i6 ], [ %.sroa.014.4.i, %bb.s ]
  %.lcssa.i = phi i1 [ %i.bb, %.preheader.i6 ], [ %i.ds, %bb.s ] ; 2 uses
  %i.cz = sub i64 %3, %i.s
  %i.da = add i64 %i.cz, -16                      ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 %i.da ; 2 uses
  %.sroa.0.0.copyload.i58.i = load <16 x i8>, ptr %i.db, align 1, !alias.scope !17427, !noalias !17446
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i59.i = load <16 x i8>, ptr %i.dc, align 1, !alias.scope !17427, !noalias !17446
  %i.dd = icmp eq <16 x i8> %.sroa.0.0.copyload.i58.i, %i.aq
  %i.de = icmp eq <16 x i8> %.sroa.02.0.copyload.i59.i, %i.as
  %i.df = and <16 x i1> %i.dd, %i.de
  %i.dg = bitcast <16 x i1> %i.df to i16          ; 2 uses
  %i.dh = icmp eq i16 %i.dg, 0
  br i1 %i.dh, label %bb.u, label %bb.v

.lr.ph107.i:                                      ; preds = %.preheader.i6, %bb.s
  %.sroa.06.1106.i = phi i64 [ %i.dp, %bb.s ], [ %.sroa.06.0.lcssa.i, %.preheader.i6 ] ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.1106.i ; 2 uses
  %.sroa.0.0.copyload.i60.i = load <16 x i8>, ptr %i.di, align 1, !alias.scope !17427, !noalias !17449
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i61.i = load <16 x i8>, ptr %i.dj, align 1, !alias.scope !17427, !noalias !17449
  %i.dk = icmp eq <16 x i8> %.sroa.0.0.copyload.i60.i, %i.aq
  %i.dl = icmp eq <16 x i8> %.sroa.02.0.copyload.i61.i, %i.as
  %i.dm = and <16 x i1> %i.dk, %i.dl
  %i.dn = bitcast <16 x i1> %i.dm to i16          ; 2 uses
  %i.do = icmp eq i16 %i.dn, 0
  br i1 %i.do, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.t, %.lr.ph107.i
  %.sroa.014.4.i = phi i8 [ 0, %.lr.ph107.i ], [ %i.du, %bb.t ] ; 2 uses
  %i.dp = add i64 %.sroa.06.1106.i, 16            ; 2 uses
  %i.dq = add i64 %i.dp, %i.ay
  %i.dr = icmp uge i64 %i.dq, %3
  %i.ds = trunc nuw i8 %.sroa.014.4.i to i1       ; 2 uses
  %or.cond3.i = or i1 %i.dr, %i.ds
  br i1 %or.cond3.i, label %._crit_edge.i7, label %.lr.ph107.i

bb.t:                                             ; preds = %.lr.ph107.i
  %i.dt = call fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.1106.i, i16 noundef %i.dn, i1 noundef zeroext false) #56
  %i.du = zext i1 %i.dt to i8
  br label %bb.s

bb.u:                                             ; preds = %bb.v, %._crit_edge.i7
  %.sroa.014.5.i = phi i8 [ %.sroa.014.3.lcssa.i, %._crit_edge.i7 ], [ %i.dx, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17438
  br label %.loopexit

bb.v:                                             ; preds = %._crit_edge.i7
  %i.dv = call fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.da, i16 noundef %i.dg, i1 noundef zeroext %.lcssa.i) #56
  %i.dw = or i1 %.lcssa.i, %i.dv
  %i.dx = zext i1 %i.dw to i8
  br label %bb.u

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsu_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  call fastcc void @_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef align 8 dereferenceable(104) %i.b) #56
  %i.dy = load i64, ptr %i.c, align 8, !range !49, !noundef !12
  %i.dz = trunc nuw nsw i64 %i.dy to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit

bb.w:                                             ; preds = %bb.c
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %2, i64 %1)
  %i.ea = icmp eq i32 %bcmp, 0
  %i.eb = zext i1 %i.ea to i8
  br label %.loopexit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXsuH_NtCs4lawaffTVVK_9sqlparser3astNtB6_15MacroDefinitionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !5008, !noundef !12
  %i.b = icmp eq i64 %i.a, 69                     ; 2 uses
  %i.c = zext i1 %i.b to i8
  %i.d = load i64, ptr %1, align 8, !range !5008, !noundef !12
  %i.e = icmp eq i64 %i.d, 69                     ; 3 uses
  %.neg = sext i1 %i.e to i8
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.g, label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = add nsw i8 %.neg, %i.c
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.g = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %1) #56
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e, %bb.d
  %.sroa.0.0 = phi i8 [ %i.l, %bb.g ], [ %i.f, %bb.d ], [ %i.g, %bb.e ]
  ret i8 %.sroa.0.0

bb.g:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !12, !noundef !12
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !12, !noundef !12
  %i.l = tail call fastcc noundef i8 @_RNvXs1w_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_5QueryNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.k) #56
  br label %bb.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXsuR_NtCs4lawaffTVVK_9sqlparser3astNtB6_10SchemaNameNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !157, !noundef !12 ; 2 uses
  %i.b = xor i64 %i.a, -9223372036854775808
  %i.c = icmp slt i64 %i.a, 0
  %i.d = select i1 %i.c, i64 %i.b, i64 2          ; 3 uses
  %i.e = load i64, ptr %1, align 8, !range !157, !noundef !12 ; 2 uses
  %i.f = xor i64 %i.e, -9223372036854775808
  %i.g = icmp slt i64 %i.e, 0
  %i.h = select i1 %i.g, i64 %i.f, i64 2          ; 2 uses
  %.not = icmp eq i64 %i.d, %i.h
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  switch i64 %i.d, label %bb.d [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.g
  ]

bb.c:                                             ; preds = %bb.a
  %i.i = tail call i8 @llvm.scmp.i8.i64(i64 %i.d, i64 %i.h)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val8 = load ptr, ptr %i.j, align 8, !nonnull !12, !noundef !12
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val9 = load i64, ptr %i.k, align 8, !noundef !12
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val10 = load ptr, ptr %i.l, align 8, !nonnull !12, !noundef !12
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val11 = load i64, ptr %i.m, align 8, !noundef !12
  %i.n = tail call noundef range(i8 -1, 3) i8 @_RNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB5_15SlicePartialOrd15partial_compareCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val8, i64 noundef %.val9, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val10, i64 noundef %.val11)
  br label %bb.h

bb.f:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.p)
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.r, align 8, !nonnull !12, !noundef !12
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5 = load i64, ptr %i.s, align 8, !noundef !12
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val6 = load ptr, ptr %i.t, align 8, !nonnull !12, !noundef !12
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val7 = load i64, ptr %i.u, align 8, !noundef !12
  %i.v = tail call noundef range(i8 -1, 3) i8 @_RNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB5_15SlicePartialOrd15partial_compareCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val, i64 noundef %.val5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val6, i64 noundef %.val7) ; 2 uses
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.i, %bb.f, %bb.e, %bb.c
  %.sroa.0.0 = phi i8 [ %i.i, %bb.c ], [ %i.n, %bb.e ], [ %i.q, %bb.f ], [ %i.z, %bb.i ], [ %i.v, %bb.g ]
  ret i8 %.sroa.0.0

bb.i:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.x)
  br label %bb.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXsud_NtCs4lawaffTVVK_9sqlparser3astNtB6_18CreateFunctionBodyNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2432) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2432) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !5879, !noundef !12 ; 2 uses
  %i.b = add nsw i64 %i.a, -70
  %i.c = icmp samesign ugt i64 %i.a, 69
  %i.d = select i1 %i.c, i64 %i.b, i64 5          ; 3 uses
  %i.e = load i64, ptr %1, align 8, !range !5879, !noundef !12 ; 2 uses
  %i.f = add nsw i64 %i.e, -70
  %i.g = icmp samesign ugt i64 %i.e, 69
  %i.h = select i1 %i.g, i64 %i.f, i64 5          ; 2 uses
  %.not = icmp eq i64 %i.d, %i.h
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  switch i64 %i.d, label %bb.d [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.g
    i64 3, label %bb.i
    i64 4, label %bb.j
    i64 5, label %bb.k
  ]

bb.c:                                             ; preds = %bb.a
  %i.i = tail call i8 @llvm.scmp.i8.i64(i64 %i.d, i64 %i.h)
  br label %_RNvXsac_NtCs4lawaffTVVK_9sqlparser3astNtB6_18BeginEndStatementsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.k) #56
  br label %_RNvXsac_NtCs4lawaffTVVK_9sqlparser3astNtB6_18BeginEndStatementsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.f:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.n) #56
  br label %_RNvXsac_NtCs4lawaffTVVK_9sqlparser3astNtB6_18BeginEndStatementsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.g:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17455)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !17452, !noalias !17455, !nonnull !12, !noundef !12
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !17452, !noalias !17455, !noundef !12 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !17455, !noalias !17452, !nonnull !12, !noundef !12
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !17455, !noalias !17452, !noundef !12 ; 2 uses
  %.sroa.0.0.i.i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 0, 3431314001806093) %i.w, i64 range(i64 0, 3431314001806093) %i.s) ; 2 uses
  %exitcond.not7 = icmp eq i64 %.sroa.0.0.i.i, 0
end_hunk_1
