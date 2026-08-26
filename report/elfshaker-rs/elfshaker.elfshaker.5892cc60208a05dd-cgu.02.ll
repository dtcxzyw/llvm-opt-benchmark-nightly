Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker.elfshaker.5892cc60208a05dd-cgu.02?download=true
begin_hunk_0_@_RNvNtCs7BtpbLEd5q3_9elfshaker2gc3run:bb.a
  br i1 %i.bn, label %bb.x, label %bb.cw, !prof !590

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #26
          to label %.noexc162 unwind label %bb.y

.noexc162:                                        ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.h) #24
          to label %.body147 unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.aa:                                            ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.613, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.613)
  br i1 %i.am, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEECs7BtpbLEd5q3_9elfshaker.exit168, %bb.aa
  %.sroa.020.0 = phi i64 [ %.sroa.020.1.lcssa, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEECs7BtpbLEd5q3_9elfshaker.exit168 ], [ 0, %bb.aa ] ; 4 uses
  br i1 %i.an, label %bb.an, label %bb.am

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  invoke void @_RNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB5_10Repository26find_redundant_loose_packs(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.aa, ptr noundef nonnull align 8 %i.ae)
          to label %bb.ae unwind label %bb.ad

.body150:                                         ; preds = %bb.bc, %bb.ad, %bb.ba
  %.sroa.074.0 = phi i8 [ %.sroa.074.2, %bb.ba ], [ %.sroa.074.2, %bb.bc ], [ %.sroa.074.1, %bb.ad ]
  %.pn134 = phi { ptr, i32 } [ %i.ep, %bb.ba ], [ %i.eq, %bb.bc ], [ %i.br, %bb.ad ] ; 2 uses
  %i.bq = trunc nuw i8 %.sroa.074.0 to i1
  br i1 %i.bq, label %.thread202, label %.body147

bb.ad:                                            ; preds = %bb.cq, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker.exit.i, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit.thread, %bb.ap, %bb.ao, %bb.am, %bb.ac
  %.sroa.074.1 = phi i8 [ 1, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit.thread ], [ 1, %bb.cq ], [ 1, %bb.ac ], [ %.sroa.074.2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker.exit.i ], [ %.sroa.074.2, %bb.am ], [ 0, %bb.ap ], [ 1, %bb.ao ]
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.body150

bb.ae:                                            ; preds = %bb.ac
  %i.bs = load i64, ptr %i.aa, align 8, !range !208, !noundef !6 ; 2 uses
  %.not126 = icmp eq i64 %i.bs, -2
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.087.0.copyload = load i64, ptr %i.bt, align 8 ; 3 uses
  %.sroa.488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.488.0.copyload = load ptr, ptr %.sroa.488.0..sroa_idx, align 8 ; 5 uses
  %.sroa.589.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %.sroa.589.0.copyload = load i64, ptr %.sroa.589.0..sroa_idx, align 8 ; 4 uses
  br i1 %.not126, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.sroa.799.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.531.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.799.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  store i64 %i.bs, ptr %i.g, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.sroa.087.0.copyload, ptr %.sroa.430.0..sroa_idx, align 8
  %.sroa.430.sroa.4.0..sroa.430.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %.sroa.488.0.copyload, ptr %.sroa.430.sroa.4.0..sroa.430.0..sroa_idx.sroa_idx, align 8
  %.sroa.430.sroa.5.0..sroa.430.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %.sroa.589.0.copyload, ptr %.sroa.430.sroa.5.0..sroa.430.0..sroa_idx.sroa_idx, align 8
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !597
  %i.bu = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 57) 56, i64 noundef 8) #23, !noalias !597 ; 3 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.ag, label %bb.cv, !prof !590

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #26
          to label %.noexc164 unwind label %bb.ah

.noexc164:                                        ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.ag
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.g) #24
          to label %.thread202 unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.aj:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.by = icmp ult i64 %.sroa.589.0.copyload, 384307168202282326
  call void @llvm.assume(i1 %i.by)
  %.idx263 = mul nuw nsw i64 %.sroa.589.0.copyload, 24
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.488.0.copyload, i64 %.idx263
  %i.ca = icmp sgt i64 %.sroa.087.0.copyload, -1
  call void @llvm.assume(i1 %i.ca)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr %.sroa.488.0.copyload, ptr %i.z, align 8
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  store ptr %.sroa.488.0.copyload, ptr %.sroa.540.0..sroa_idx, align 8
  %.sroa.641.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %.sroa.087.0.copyload, ptr %.sroa.641.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  store ptr %i.bz, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8193)
  %i.cb = icmp eq i64 %.sroa.589.0.copyload, 0
  br i1 %i.cb, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit.thread, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit.lr.ph

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit.lr.ph: ; preds = %bb.aj
  %.sroa.8193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.4103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  br label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit

.body183:                                         ; preds = %.loopexit231, %.loopexit.split-lp232, %bb.ci, %.body
  %.pn132 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.fy, %bb.ci ], [ %lpad.loopexit233, %.loopexit231 ], [ %lpad.loopexit.split-lp234, %.loopexit.split-lp232 ]
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %.thread202 unwind label %bb.bh

.loopexit231:                                     ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit.i182
  %lpad.loopexit233 = landingpad { ptr, i32 }
          cleanup
  br label %.body183

.loopexit.split-lp232:                            ; preds = %bb.cp
  %lpad.loopexit.split-lp234 = landingpad { ptr, i32 }
          cleanup
  br label %.body183

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit.lr.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdECs7BtpbLEd5q3_9elfshaker.exit186
  %i.cf = phi ptr [ %.sroa.488.0.copyload, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit.lr.ph ], [ %i.ge, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdECs7BtpbLEd5q3_9elfshaker.exit186 ] ; 3 uses
  %.sroa.020.1255 = phi i64 [ 0, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit.lr.ph ], [ %i.fw, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdECs7BtpbLEd5q3_9elfshaker.exit186 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !600)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  store ptr %i.cg, ptr %.sroa.540.0..sroa_idx, align 8, !alias.scope !600, !noalias !603
  %.sroa.0.0.copyload192 = load i64, ptr %i.cf, align 8, !noalias !600 ; 2 uses
  %.sroa.8193.0..sroa_idx194 = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8193, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8193.0..sroa_idx194, i64 16, i1 false), !noalias !600
  %.not127 = icmp eq i64 %.sroa.0.0.copyload192, -1
  br i1 %.not127, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store i64 %.sroa.0.0.copyload192, ptr %i.y, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8193.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8193, i64 16, i1 false)
  %i.ch = load ptr, ptr %i.cc, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.ci = load i64, ptr %i.cd, align 8, !noundef !6 ; 3 uses
  %.idx = mul nuw nsw i64 %i.ci, 24
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.idx
  call void @llvm.experimental.noalias.scope.decl(metadata !605)
  %i.ck = icmp eq i64 %i.ci, 0
  br i1 %i.ck, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ak
  %i.cl = load i64, ptr %i.ce, align 8, !alias.scope !605, !noalias !608, !noundef !6 ; 2 uses
  %i.cm = load ptr, ptr %.sroa.8193.0..sroa_idx, align 8, !alias.scope !605, !noalias !608, !nonnull !6
  br label %bb.al

bb.al:                                            ; preds = %_RNCNvNtCs7BtpbLEd5q3_9elfshaker2gc3run0B5_.exit.thread.i, %.lr.ph.i
  %.sroa.02.010.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ct, %_RNCNvNtCs7BtpbLEd5q3_9elfshaker2gc3run0B5_.exit.thread.i ] ; 3 uses
  %i.cn = phi ptr [ %i.ch, %.lr.ph.i ], [ %i.co, %_RNCNvNtCs7BtpbLEd5q3_9elfshaker2gc3run0B5_.exit.thread.i ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24 ; 2 uses
  %i.cp = getelementptr i8, ptr %i.cn, i64 16
  %.val7.i = load i64, ptr %i.cp, align 8, !noalias !610, !noundef !6
  %i.cq = icmp eq i64 %.val7.i, %i.cl
  br i1 %i.cq, label %_RNCNvNtCs7BtpbLEd5q3_9elfshaker2gc3run0B5_.exit.i, label %_RNCNvNtCs7BtpbLEd5q3_9elfshaker2gc3run0B5_.exit.thread.i

_RNCNvNtCs7BtpbLEd5q3_9elfshaker2gc3run0B5_.exit.i: ; preds = %bb.al
  %i.cr = getelementptr i8, ptr %i.cn, i64 8
  %.val6.i = load ptr, ptr %i.cr, align 8, !noalias !610, !nonnull !6, !noundef !6
  %bcmp.i.i = call i32 @bcmp(ptr nonnull readonly %.val6.i, ptr nonnull %i.cm, i64 %i.cl), !noalias !610
  %i.cs = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.cs, label %bb.bv, label %_RNCNvNtCs7BtpbLEd5q3_9elfshaker2gc3run0B5_.exit.thread.i

_RNCNvNtCs7BtpbLEd5q3_9elfshaker2gc3run0B5_.exit.thread.i: ; preds = %_RNCNvNtCs7BtpbLEd5q3_9elfshaker2gc3run0B5_.exit.i, %bb.al
  %i.ct = add nuw nsw i64 %.sroa.02.010.i, 1
  %i.cu = icmp eq ptr %i.co, %i.cj
  br i1 %i.cu, label %.loopexit, label %bb.al

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit.thread: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdECs7BtpbLEd5q3_9elfshaker.exit186, %bb.aj
  %.sroa.020.1.lcssa = phi i64 [ 0, %bb.aj ], [ %i.fw, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdECs7BtpbLEd5q3_9elfshaker.exit186 ], [ %.sroa.020.1255, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8193)
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEECs7BtpbLEd5q3_9elfshaker.exit168 unwind label %bb.ad

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEECs7BtpbLEd5q3_9elfshaker.exit168: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.ab

bb.am:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterAhj14_EECs7BtpbLEd5q3_9elfshaker.exit171, %bb.ab
  %.sroa.020.2 = phi i64 [ %.sroa.020.3.lcssa, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterAhj14_EECs7BtpbLEd5q3_9elfshaker.exit171 ], [ %.sroa.020.0, %bb.ab ]
  %.sroa.074.2 = phi i8 [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterAhj14_EECs7BtpbLEd5q3_9elfshaker.exit171 ], [ 1, %bb.ab ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RNvNtCs7BtpbLEd5q3_9elfshaker5utils11format_size(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, i64 noundef %.sroa.020.2)
          to label %bb.az unwind label %bb.ad

bb.an:                                            ; preds = %bb.ab
  %i.cv = load atomic i64, ptr @_RNvCse7cAXHj51Pq_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.cw = icmp ult i64 %i.cv, 6
  call void @llvm.assume(i1 %i.cw)
  %i.cx = icmp samesign ugt i64 %i.cv, 2
  br i1 %i.cx, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr %i.ac, ptr %i.u, align 8
  %.sroa.4107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @_RNvXsr_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCs7BtpbLEd5q3_9elfshaker, ptr %.sroa.4107.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr @10, ptr %i.t, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 13, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr @10, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i64 13, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store ptr @15, ptr %i.db, align 8
  invoke void @_RINvNtCse7cAXHj51Pq_3log13___private_api3loguNtB2_12GlobalLoggerECs7BtpbLEd5q3_9elfshaker(ptr noundef nonnull @14, ptr noundef nonnull %i.u, i64 noundef 3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.t)
          to label %bb.aq unwind label %bb.ad

bb.ap:                                            ; preds = %bb.an, %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.655)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.de = load i64, ptr %i.ac, align 8, !range !16, !noundef !6
  %i.df = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.dg = load i64, ptr %i.df, align 8, !noundef !6 ; 2 uses
  %i.dh = icmp ult i64 %i.dg, 384307168202282326
  call void @llvm.assume(i1 %i.dh)
  %i.di = getelementptr inbounds nuw [24 x i8], ptr %i.dd, i64 %i.dg
  store ptr %i.dd, ptr %i.q, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.de, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.dd, ptr %i.dk, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.di, ptr %i.dl, align 8
  invoke void @_RINvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB6_10Repository25find_unreferenced_objectsINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtB8_4pack6PackIdEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.r, ptr noundef nonnull align 8 %i.ae, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.q)
          to label %bb.ar unwind label %bb.ad

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.ap

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.dm = load i64, ptr %i.r, align 8, !range !208, !noundef !6 ; 2 uses
  %.not128 = icmp eq i64 %i.dm, -2
  %i.dn = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.655, ptr noundef nonnull align 8 dereferenceable(24) %i.dn, i64 24, i1 false)
  br i1 %.not128, label %bb.av, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.sroa.5113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.561.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5113.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.460.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.655, i64 24, i1 false)
  store i64 %i.dm, ptr %i.f, align 8
  %i.do = invoke fastcc noundef ptr @_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit(i64 noundef 56)
          to label %bb.bu unwind label %bb.at     ; 2 uses

bb.at:                                            ; preds = %bb.as
  %i.dp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.f) #24
          to label %.body147 unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.av:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.655, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.655)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ds = load i64, ptr %i.dr, align 8, !noundef !6 ; 4 uses
  store i64 %i.ds, ptr %i.p, align 8
  %i.dt = icmp ult i64 %i.ds, 461168601842738791
  call void @llvm.assume(i1 %i.dt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.p, ptr %i.o, align 8
  %.sroa.4117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4117.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std2io5stdio6__print(ptr noundef nonnull @16, ptr noundef nonnull %i.o)
          to label %bb.aw unwind label %bb.bt

.thread213:                                       ; preds = %bb.br, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterAhj14_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body147

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.du = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !nonnull !6, !noundef !6 ; 5 uses
  %i.dw = load i64, ptr %i.s, align 8, !range !16, !noundef !6
  %.idx264 = mul nuw nsw i64 %i.ds, 20
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.dv, ptr %i.n, align 8
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 5 uses
  store ptr %i.dv, ptr %.sroa.563.0..sroa_idx, align 8
  %.sroa.664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %i.dw, ptr %.sroa.664.0..sroa_idx, align 8
  %.sroa.765.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 3 uses
  store ptr %i.dx, ptr %.sroa.765.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6198)
  %i.dy = icmp eq i64 %i.ds, 0
  br i1 %i.dy, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterAhj14_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aw
  br i1 %i.al, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.ay
  %i.dz = phi ptr [ %i.ei, %bb.ay ], [ %i.dv, %.lr.ph ] ; 2 uses
  %.sroa.020.3257.us = phi i64 [ %i.eg, %bb.ay ], [ %.sroa.020.0, %.lr.ph ]
  call void @llvm.experimental.noalias.scope.decl(metadata !611)
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 20
  store ptr %i.ea, ptr %.sroa.563.0..sroa_idx, align 8, !alias.scope !611, !noalias !614
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %.sroa.6198, ptr noundef nonnull align 1 dereferenceable(20) %i.dz, i64 20, i1 false), !noalias !611
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.m, ptr noundef nonnull align 1 dereferenceable(20) %.sroa.6198, i64 20, i1 false)
  %i.eb = invoke { i64, ptr } @_RNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB5_10Repository21get_object_disk_stats(ptr noundef nonnull align 8 %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(20) %i.m)
          to label %bb.ax unwind label %.split.us ; 2 uses

bb.ax:                                            ; preds = %.lr.ph.split.us
  %i.ec = extractvalue { i64, ptr } %i.eb, 0
  %i.ed = extractvalue { i64, ptr } %i.eb, 1      ; 2 uses
  %i.ee = trunc nuw i64 %i.ec to i1
  br i1 %i.ee, label %.split260.us, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ef = ptrtoint ptr %i.ed to i64
  %i.eg = add i64 %.sroa.020.3257.us, %i.ef       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6198)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6198)
  %i.eh = load ptr, ptr %.sroa.765.0..sroa_idx, align 8, !alias.scope !616, !noalias !614, !nonnull !6, !noundef !6
  %i.ei = load ptr, ptr %.sroa.563.0..sroa_idx, align 8, !alias.scope !616, !noalias !614, !nonnull !6, !noundef !6 ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.eh
  br i1 %i.ej, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterAhj14_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit, label %.lr.ph.split.us

.split.us:                                        ; preds = %.lr.ph.split.us
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %.body141

.split:                                           ; preds = %bb.bl, %.lr.ph.split
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %.body141

.body141:                                         ; preds = %.split, %.split.us, %bb.bp, %bb.bj
  %eh.lpad-body142 = phi { ptr, i32 } [ %i.fa, %bb.bj ], [ %i.fj, %bb.bp ], [ %i.el, %.split ], [ %i.ek, %.split.us ]
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterAhj14_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %.body147 unwind label %bb.bh

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.bm
  %i.em = phi ptr [ %i.fg, %bb.bm ], [ %i.dv, %.lr.ph ] ; 2 uses
  %.sroa.020.3257 = phi i64 [ %i.fd, %bb.bm ], [ %.sroa.020.0, %.lr.ph ]
  call void @llvm.experimental.noalias.scope.decl(metadata !611)
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 20
  store ptr %i.en, ptr %.sroa.563.0..sroa_idx, align 8, !alias.scope !611, !noalias !614
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %.sroa.6198, ptr noundef nonnull align 1 dereferenceable(20) %i.em, i64 20, i1 false), !noalias !611
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.m, ptr noundef nonnull align 1 dereferenceable(20) %.sroa.6198, i64 20, i1 false)
  %i.eo = invoke { i64, ptr } @_RNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB5_10Repository21get_object_disk_stats(ptr noundef nonnull align 8 %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(20) %i.m)
          to label %bb.bi unwind label %.split    ; 2 uses

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterAhj14_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.bm, %bb.ay, %bb.aw
  %.sroa.020.3.lcssa = phi i64 [ %.sroa.020.0, %bb.aw ], [ %i.eg, %bb.ay ], [ %i.fd, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6198)
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterAhj14_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterAhj14_EECs7BtpbLEd5q3_9elfshaker.exit171 unwind label %.thread213

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterAhj14_EECs7BtpbLEd5q3_9elfshaker.exit171: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterAhj14_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.am
end_hunk_0
