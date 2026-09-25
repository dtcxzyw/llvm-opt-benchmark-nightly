Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.14?download=true
inline.NumInlined: 8054
inline.NumDeleted: 3226
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvXs4_NtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifierINtB5_10SimplifierNtNtCs8VI8w5SIoU4_15datafusion_expr8simplify15SimplifyContextENtNtCsjhHCjzi9uUI_17datafusion_common9tree_node16TreeNodeRewriter4f_upCs14kWLkQVSKO_14deltalake_core:bb.a
  %i.bhp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsonPGffhQyS_5regex5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #52
          to label %.body6132 unwind label %bb.ajt, !noalias !14484

bb.ajs:                                           ; preds = %bb.ajq
  unreachable

bb.ajt:                                           ; preds = %bb.ajr
  %i.bhq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !14484
  unreachable

bb.aju:                                           ; preds = %bb.ajp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cd, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.cc, i64 32, i1 false), !alias.scope !14484, !noalias !14485
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  invoke fastcc void @_RINvMs3_NtNtCsonPGffhQyS_5regex5regex6stringNtB6_5Regex8replacenReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.ce, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cd, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bgx, i64 noundef %i.bgz)
          to label %bb.ajx unwind label %bb.ajw

bb.ajv:                                           ; preds = %bb.ajy, %bb.ajw
  %.pn5919 = phi { ptr, i32 } [ %i.bhw, %bb.ajy ], [ %i.bhr, %bb.ajw ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsonPGffhQyS_5regex5regex6string5RegexECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %i.cd) #52
          to label %.body6132 unwind label %bb.bs

bb.ajw:                                           ; preds = %bb.aju
  %i.bhr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ajv

bb.ajx:                                           ; preds = %bb.aju
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.bht = load ptr, ptr %i.bhs, align 8, !nonnull !29
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.bhv = load i64, ptr %i.bhu, align 8          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %i.bhv, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ajz unwind label %bb.ajy

bb.ajy:                                           ; preds = %bb.aka, %bb.ajx
  %i.bhw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.ce) #52
          to label %bb.ajv unwind label %bb.bs

bb.ajz:                                           ; preds = %bb.ajx
  %i.bhx = load i64, ptr %i.f, align 8, !range !30, !noundef !29
  %i.bhy = trunc nuw i64 %i.bhx to i1
  %i.bhz = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bia = load i64, ptr %i.bhz, align 8, !range !31, !noundef !29 ; 3 uses
  %i.bib = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.bhy, label %bb.aka, label %bb.akb, !prof !32

bb.aka:                                           ; preds = %bb.ajz
  %i.bic = load i64, ptr %i.bib, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.bia, i64 %i.bic) #50
          to label %bb.mi unwind label %bb.ajy

bb.akb:                                           ; preds = %bb.ajz
  %i.bid = load ptr, ptr %i.bib, align 8, !nonnull !29, !noundef !29 ; 2 uses
  %i.bie = icmp ule i64 %i.bhv, %i.bia
  call void @llvm.assume(i1 %i.bie)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.not5916 = icmp eq i64 %i.bhv, 0
  br i1 %.not5916, label %bb.akc, label %bb.akd

bb.akc:                                           ; preds = %bb.akd, %bb.akb
  store i64 %i.bia, ptr %i.cf, align 8
  %.sroa.45666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr %i.bid, ptr %.sroa.45666.0..sroa_idx, align 8
  %.sroa.65667.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store i64 %i.bhv, ptr %.sroa.65667.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.ce)
          to label %bb.akf unwind label %bb.ake

bb.akd:                                           ; preds = %bb.akb
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bid, ptr nonnull align 1 %i.bht, i64 %i.bhv, i1 false)
  br label %bb.akc

bb.ake:                                           ; preds = %bb.akc
  %i.bif = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsonPGffhQyS_5regex5regex6string5RegexECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %i.cd) #52
          to label %.thread6822 unwind label %bb.bs

bb.akf:                                           ; preds = %bb.akc
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsonPGffhQyS_5regex5regex6string5RegexECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %i.cd)
          to label %bb.akh unwind label %.thread6829

.thread6829:                                      ; preds = %bb.akf
  %i.big = landingpad { ptr, i32 }
          cleanup
  br label %.thread6822

bb.akg:                                           ; preds = %bb.akh
  %i.bih = landingpad { ptr, i32 }
          cleanup
  br label %.body6132

bb.akh:                                           ; preds = %bb.akf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %i.cf, i64 24, i1 false)
  invoke void @_RNvNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifier16to_string_scalar(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.cb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cn, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ca)
          to label %bb.aki unwind label %bb.akg

bb.aki:                                           ; preds = %bb.akh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  %i.bii = invoke fastcc noundef ptr @_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit(i64 noundef 16, i64 noundef 112)
          to label %bb.akl unwind label %bb.akj, !noalias !14486 ; 2 uses

bb.akj:                                           ; preds = %bb.aki
  %i.bij = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.cb) #52
          to label %.body6132 unwind label %bb.akk

bb.akk:                                           ; preds = %bb.akj
  %i.bik = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.akl:                                           ; preds = %bb.aki
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.bii, ptr noundef nonnull align 16 dereferenceable(112) %i.cb, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  %i.bil = getelementptr inbounds nuw i8, ptr %i.co, i64 20
  %i.bim = load i8, ptr %i.bil, align 4, !range !38, !noundef !29
  %i.bin = load ptr, ptr %i.co, align 8, !nonnull !29, !align !49, !noundef !29
  %i.bio = getelementptr inbounds nuw i8, ptr %i.co, i64 21
  %i.bip = load i8, ptr %i.bio, align 1, !range !38, !noundef !29
  %i.biq = ptrtoint ptr %i.bin to i64
  %i.bir = ptrtoint ptr %i.bii to i64
  %.sroa.156.sroa.0.sroa.0.0.extract.trunc = trunc i32 %i.my to i8
  %.sroa.156.sroa.0.sroa.105.0.extract.shift = lshr i32 %i.my, 8
  %.sroa.156.sroa.0.sroa.105.0.extract.trunc = trunc nuw nsw i32 %.sroa.156.sroa.0.sroa.105.0.extract.shift to i24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  br label %bb.akm

bb.akm:                                           ; preds = %bb.als, %bb.akt, %bb.akl
  %.sroa.156.sroa.0.sroa.105.sroa.0.14 = phi i24 [ 0, %bb.als ], [ %.sroa.156.sroa.0.sroa.105.0.extract.trunc3996, %bb.akt ], [ %.sroa.156.sroa.0.sroa.105.0.extract.trunc, %bb.akl ] ; 2 uses
  %.sroa.156.sroa.0.sroa.0.14 = phi i8 [ 1, %bb.als ], [ %.sroa.156.sroa.0.sroa.0.0.extract.trunc3802, %bb.akt ], [ %.sroa.156.sroa.0.sroa.0.0.extract.trunc, %bb.akl ] ; 2 uses
  %.sroa.156.sroa.109.14 = phi i16 [ 0, %bb.als ], [ %.sroa.156.sroa.109.0.extract.trunc3676, %bb.akt ], [ undef, %bb.akl ] ; 2 uses
  %.sroa.156.sroa.108.14 = phi i8 [ 0, %bb.als ], [ %.sroa.156.sroa.108.0.extract.trunc3467, %bb.akt ], [ %i.bip, %bb.akl ] ; 2 uses
  %.sroa.156.sroa.107.14 = phi i8 [ 0, %bb.als ], [ %.sroa.156.sroa.107.0.extract.trunc3258, %bb.akt ], [ %i.bim, %bb.akl ] ; 2 uses
  %.sroa.263.14 = phi i1 [ true, %bb.als ], [ false, %bb.akt ], [ true, %bb.akl ] ; 2 uses
  %.sroa.178.14 = phi ptr [ %i.bjj, %bb.als ], [ undef, %bb.akt ], [ undef, %bb.akl ] ; 2 uses
  %.sroa.139.14 = phi i64 [ %i.bjx, %bb.als ], [ %i.ne, %bb.akt ], [ %i.bir, %bb.akl ] ; 2 uses
  %.sroa.105.14 = phi i64 [ 1, %bb.als ], [ %.sroa.04037.0.copyload, %bb.akt ], [ %i.biq, %bb.akl ] ; 2 uses
  %.sroa.0973.14 = phi i64 [ 22, %bb.als ], [ 9, %bb.akt ], [ 9, %bb.akl ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.cn)
          to label %bb.alg unwind label %bb.alw

.thread6822:                                      ; preds = %bb.ake, %.thread6829
  %.pn59176825 = phi { ptr, i32 } [ %i.big, %.thread6829 ], [ %i.bif, %bb.ake ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cf) #52
          to label %.body6132 unwind label %bb.bs

bb.akn:                                           ; preds = %bb.ajm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  store i32 37, ptr %i.bz, align 4
  %i.bis = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  store i32 95, ptr %i.bis, align 4
  %i.bit = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i32 %., ptr %i.bit, align 4
  %i.biu = call fastcc noundef zeroext i1 @_RNvYINtNtNtCsbvkFyIu7lgC_4core3str7pattern18MultiCharEqPatternRScENtB5_7Pattern15is_contained_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.bz, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bgx, i64 noundef %i.bgz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  br i1 %i.biu, label %bb.akt, label %bb.ako

bb.ako:                                           ; preds = %bb.akn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  %i.biv = invoke fastcc noundef nonnull align 16 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.co)
          to label %bb.akp unwind label %bb.aje   ; 2 uses

bb.akp:                                           ; preds = %bb.ako
  store ptr %i.biv, ptr %i.by, align 8
  %i.biw = getelementptr inbounds nuw i8, ptr %i.co, i64 20
  %i.bix = load i8, ptr %i.biw, align 4, !range !38, !noundef !29
  %i.biy = invoke fastcc noundef nonnull align 16 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.mz)
          to label %bb.akr unwind label %bb.akq

bb.akq:                                           ; preds = %bb.akp
  %i.biz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(8) %i.by) #52
          to label %.body6132 unwind label %bb.bs

bb.akr:                                           ; preds = %bb.akp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  %i.bja = ptrtoint ptr %i.biv to i64
  br label %bb.aks

bb.aks:                                           ; preds = %bb.ala, %bb.akr
  %.sroa.156.sroa.0.sroa.105.sroa.0.15 = phi i24 [ %.sroa.156.sroa.0.sroa.105.0.extract.trunc4026, %bb.ala ], [ undef, %bb.akr ]
  %.sroa.156.sroa.0.sroa.0.15 = phi i8 [ %.sroa.156.sroa.0.sroa.0.0.extract.trunc3817, %bb.ala ], [ %i.bix, %bb.akr ]
  %.sroa.156.sroa.109.15 = phi i16 [ %.sroa.156.sroa.109.0.extract.trunc3706, %bb.ala ], [ undef, %bb.akr ]
  %.sroa.156.sroa.108.15 = phi i8 [ %.sroa.156.sroa.108.0.extract.trunc3497, %bb.ala ], [ undef, %bb.akr ]
  %.sroa.156.sroa.107.15 = phi i8 [ %.sroa.156.sroa.107.0.extract.trunc3288, %bb.ala ], [ undef, %bb.akr ]
  %.sroa.201.15 = phi ptr [ %.sroa.8817.sroa.9.0.copyload.a, %bb.ala ], [ undef, %bb.akr ]
  %.sroa.224.sroa.105.sroa.0.15 = phi i64 [ %.sroa.224.sroa.105.0.extract.shift2804, %bb.ala ], [ 0, %bb.akr ]
  %.sroa.224.sroa.0.15 = phi i64 [ %.sroa.9820.sroa.9.0.copyload, %bb.ala ], [ 0, %bb.akr ]
  %.sroa.238.15 = phi ptr [ %.sroa.9820.sroa.11.0.copyload, %bb.ala ], [ undef, %bb.akr ]
  %.sroa.2231919.15 = phi ptr [ %.sroa.9820.sroa.7.0.copyload, %bb.ala ], [ undef, %bb.akr ]
  %.sroa.178.15 = phi ptr [ %.sroa.8817.sroa.8.0.copyload, %bb.ala ], [ undef, %bb.akr ]
  %.sroa.139.15.in = phi ptr [ %.sroa.8817.sroa.0.sroa.8.0.copyload, %bb.ala ], [ %i.biy, %bb.akr ]
  %.sroa.105.15 = phi i64 [ %.sroa.8817.sroa.0.sroa.0.0.copyload, %bb.ala ], [ %i.bja, %bb.akr ]
  %.sroa.0973.15 = phi i64 [ %.sroa.0814.0.copyload, %bb.ala ], [ 8, %bb.akr ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.cn)
          to label %bb.ale unwind label %.split6807.thread

bb.akt:                                           ; preds = %bb.akn, %bb.ajm
  %.sroa.04037.0.copyload = load i64, ptr %i.co, align 8
  %.sroa.54039.0.copyload = load i64, ptr %i.mx, align 8 ; 5 uses
  %.sroa.156.sroa.0.0.extract.trunc3065 = trunc i64 %.sroa.54039.0.copyload to i32
  %.sroa.156.sroa.0.sroa.0.0.extract.trunc3802 = trunc i64 %.sroa.54039.0.copyload to i8
  %.sroa.156.sroa.0.sroa.105.0.extract.shift3995 = lshr i32 %.sroa.156.sroa.0.0.extract.trunc3065, 8
  %.sroa.156.sroa.0.sroa.105.0.extract.trunc3996 = trunc nuw i32 %.sroa.156.sroa.0.sroa.105.0.extract.shift3995 to i24
  %.sroa.156.sroa.107.0.extract.shift3257 = lshr i64 %.sroa.54039.0.copyload, 32
  %.sroa.156.sroa.107.0.extract.trunc3258 = trunc i64 %.sroa.156.sroa.107.0.extract.shift3257 to i8
  %.sroa.156.sroa.108.0.extract.shift3466 = lshr i64 %.sroa.54039.0.copyload, 40
  %.sroa.156.sroa.108.0.extract.trunc3467 = trunc i64 %.sroa.156.sroa.108.0.extract.shift3466 to i8
  %.sroa.156.sroa.109.0.extract.shift3675 = lshr i64 %.sroa.54039.0.copyload, 48
  %.sroa.156.sroa.109.0.extract.trunc3676 = trunc nuw i64 %.sroa.156.sroa.109.0.extract.shift3675 to i16
  br label %bb.akm

bb.aku:                                           ; preds = %bb.ajj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl)
  %i.bjb = load ptr, ptr %i.co, align 8, !nonnull !29, !noundef !29 ; 2 uses
  invoke void @_RNvXs_NtCs8VI8w5SIoU4_15datafusion_expr8simplifyNtB4_15SimplifyContextNtB4_12SimplifyInfo8nullable(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.cl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.mn, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.bjb)
          to label %bb.akx unwind label %bb.akw

bb.akv:                                           ; preds = %bb.ali
  br i1 %.sroa.04795.1, label %.thread6831, label %.body6132

bb.akw:                                           ; preds = %bb.aku
  %i.bjc = landingpad { ptr, i32 }
          cleanup
  br label %.thread6831

bb.akx:                                           ; preds = %bb.aku
  %i.bjd = load i64, ptr %i.cl, align 8, !range !53, !noundef !29 ; 2 uses
  %.not5921 = icmp eq i64 %i.bjd, 20
  %i.bje = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.bjf = load i8, ptr %i.bje, align 8           ; 2 uses
  br i1 %.not5921, label %bb.akz, label %bb.aky

bb.aky:                                           ; preds = %bb.akx
  %.sroa.65659.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 9
  %.sroa.35662.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.35662.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.65659.0..sroa_idx, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  %i.bjg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bjd, ptr %i.bjg, align 8
  %.sroa.25661.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.bjf, ptr %.sroa.25661.0..sroa_idx, align 16
  store i64 37, ptr %0, align 16
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.cm)
          to label %bb.alt unwind label %bb.aje

bb.akz:                                           ; preds = %bb.akx
  %i.bjh = trunc nuw i8 %i.bjf to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  br i1 %i.bjh, label %bb.alb, label %bb.ala

bb.ala:                                           ; preds = %bb.akz
  %.sroa.0814.0.copyload = load i64, ptr %i.cm, align 16
  %.sroa.8817.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %.sroa.8817.sroa.0.sroa.0.0.copyload = load i64, ptr %.sroa.8817.0..sroa_idx, align 8
  %.sroa.8817.sroa.0.sroa.8.0..sroa.8817.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %.sroa.8817.sroa.0.sroa.8.0.copyload = load ptr, ptr %.sroa.8817.sroa.0.sroa.8.0..sroa.8817.0..sroa_idx.sroa_idx, align 16
  %.sroa.8817.sroa.0.sroa.9.0..sroa.8817.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %.sroa.8817.sroa.0.sroa.9.0.copyload = load i64, ptr %.sroa.8817.sroa.0.sroa.9.0..sroa.8817.0..sroa_idx.sroa_idx, align 8 ; 5 uses
  %.sroa.8817.sroa.8.0..sroa.8817.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %.sroa.8817.sroa.9.0..sroa.8817.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %.sroa.8817.sroa.9.0.copyload.a = load ptr, ptr %.sroa.8817.sroa.9.0..sroa.8817.0..sroa_idx.sroa_idx, align 8
  %.sroa.8817.sroa.8.0.copyload = load ptr, ptr %.sroa.8817.sroa.8.0..sroa.8817.0..sroa_idx.sroa_idx, align 16
  %.sroa.9820.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 48
  %.sroa.9820.sroa.7.0..sroa.9820.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 64
  %.sroa.9820.sroa.7.0.copyload = load ptr, ptr %.sroa.9820.sroa.7.0..sroa.9820.0..sroa_idx.sroa_idx, align 16
  %.sroa.9820.sroa.9.0..sroa.9820.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 72
  %.sroa.9820.sroa.9.0.copyload = load i64, ptr %.sroa.9820.sroa.9.0..sroa.9820.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.9820.sroa.11.0..sroa.9820.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 80
  %.sroa.9820.sroa.11.0.copyload = load ptr, ptr %.sroa.9820.sroa.11.0..sroa.9820.0..sroa_idx.sroa_idx, align 16
  %.sroa.9820.sroa.13.0..sroa.9820.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 88
  %.sroa.156.sroa.0.0.extract.trunc3080 = trunc i64 %.sroa.8817.sroa.0.sroa.9.0.copyload to i32
  %.sroa.156.sroa.0.sroa.0.0.extract.trunc3817 = trunc i64 %.sroa.8817.sroa.0.sroa.9.0.copyload to i8
  %.sroa.156.sroa.0.sroa.105.0.extract.shift4025 = lshr i32 %.sroa.156.sroa.0.0.extract.trunc3080, 8
  %.sroa.156.sroa.0.sroa.105.0.extract.trunc4026 = trunc nuw i32 %.sroa.156.sroa.0.sroa.105.0.extract.shift4025 to i24
  %.sroa.156.sroa.107.0.extract.shift3287 = lshr i64 %.sroa.8817.sroa.0.sroa.9.0.copyload, 32
  %.sroa.156.sroa.107.0.extract.trunc3288 = trunc i64 %.sroa.156.sroa.107.0.extract.shift3287 to i8
  %.sroa.156.sroa.108.0.extract.shift3496 = lshr i64 %.sroa.8817.sroa.0.sroa.9.0.copyload, 40
  %.sroa.156.sroa.108.0.extract.trunc3497 = trunc i64 %.sroa.156.sroa.108.0.extract.shift3496 to i8
  %.sroa.156.sroa.109.0.extract.shift3705 = lshr i64 %.sroa.8817.sroa.0.sroa.9.0.copyload, 48
  %.sroa.156.sroa.109.0.extract.trunc3706 = trunc nuw i64 %.sroa.156.sroa.109.0.extract.shift3705 to i16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.208, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.9820.0..sroa_idx, i64 16, i1 false)
  %.sroa.224.sroa.105.0.extract.shift2804 = lshr i64 %.sroa.9820.sroa.9.0.copyload, 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.251, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9820.sroa.13.0..sroa.9820.0..sroa_idx.sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  br label %bb.aks

bb.alb:                                           ; preds = %bb.akz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj)
  %i.bji = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %i.bjb, ptr %i.bji, align 8
  store i64 12, ptr %i.cj, align 16
  %i.bjj = invoke fastcc noundef ptr @_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit(i64 noundef 16, i64 noundef 112)
          to label %bb.alh unwind label %bb.alc, !noalias !14487 ; 3 uses

bb.alc:                                           ; preds = %bb.alb
  %i.bjk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.cj) #52
          to label %.thread6831 unwind label %bb.ald

bb.ald:                                           ; preds = %bb.alc
  %i.bjl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.ale:                                           ; preds = %bb.aks
  %.sroa.139.15 = ptrtoint ptr %.sroa.139.15.in to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(8) %i.co)
          to label %.thread6837 unwind label %bb.alf

bb.alf:                                           ; preds = %bb.ale
  %i.bjm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(8) %i.mz) #52
          to label %.thread6574 unwind label %bb.bs

bb.alg:                                           ; preds = %bb.akm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  br i1 %.sroa.263.14, label %.thread6837, label %bb.ajc

bb.alh:                                           ; preds = %bb.alb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.bjj, ptr noundef nonnull align 16 dereferenceable(112) %i.cj, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  store ptr %i.bjj, ptr %i.ck, align 8
  %i.bjn = invoke fastcc noundef ptr @_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 16)
          to label %bb.alk unwind label %bb.alj   ; 4 uses

bb.ali:                                           ; preds = %.body6117, %bb.alj
  %.sroa.04795.1 = phi i1 [ %.sroa.04795.2, %.body6117 ], [ true, %bb.alj ]
  %.pn5922.pn = phi { ptr, i32 } [ %.pn5922, %.body6117 ], [ %i.bjo, %bb.alj ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(8) %i.ck) #52
          to label %bb.akv unwind label %bb.bs

bb.alj:                                           ; preds = %bb.alh
  %i.bjo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ali

bb.alk:                                           ; preds = %bb.alh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch)
  invoke void @_RINvNtCs8VI8w5SIoU4_15datafusion_expr7literal3litbECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.ch, i1 noundef zeroext true)
          to label %bb.alm unwind label %bb.all

.body6117:                                        ; preds = %bb.aln, %bb.all, %.body
  %.sroa.04795.2 = phi i1 [ false, %.body ], [ true, %bb.all ], [ true, %bb.aln ]
  %.pn5922 = phi { ptr, i32 } [ %i.bju, %.body ], [ %i.bjp, %bb.all ], [ %i.bjr, %bb.aln ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bjn, i64 noundef 16, i64 noundef 8) #51
  br label %bb.ali

bb.all:                                           ; preds = %bb.alk
  %i.bjp = landingpad { ptr, i32 }
          cleanup
  br label %.body6117

bb.alm:                                           ; preds = %bb.alk
  %i.bjq = invoke fastcc noundef ptr @_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit(i64 noundef 16, i64 noundef 112)
          to label %bb.alp unwind label %bb.aln, !noalias !14488 ; 3 uses

bb.aln:                                           ; preds = %bb.alm
  %i.bjr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.ch) #52
          to label %.body6117 unwind label %bb.alo

bb.alo:                                           ; preds = %bb.aln
  %i.bjs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.alp:                                           ; preds = %bb.alm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.bjq, ptr noundef nonnull align 16 dereferenceable(112) %i.ch, i64 112, i1 false)
  store ptr %i.bjq, ptr %i.ci, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.cg, ptr noundef nonnull align 16 dereferenceable(112) %i.cm, i64 112, i1 false)
  %i.bjt = invoke fastcc noundef ptr @_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit(i64 noundef 16, i64 noundef 112)
          to label %bb.als unwind label %bb.alq, !noalias !14489 ; 2 uses

bb.alq:                                           ; preds = %bb.alp
  %i.bju = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.cg) #52
          to label %.body unwind label %bb.alr

bb.alr:                                           ; preds = %bb.alq
  %i.bjv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

.body:                                            ; preds = %bb.alq
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(8) %i.ci) #52
          to label %.body6117 unwind label %bb.bs

bb.als:                                           ; preds = %bb.alp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.bjt, ptr noundef nonnull align 16 dereferenceable(112) %i.cg, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  store ptr %i.bjq, ptr %i.bjn, align 8
  %i.bjw = getelementptr inbounds nuw i8, ptr %i.bjn, i64 8
  store ptr %i.bjt, ptr %i.bjw, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  %i.bjx = ptrtoint ptr %i.bjn to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  br label %bb.akm

.thread6837:                                      ; preds = %bb.ale, %bb.alg
  %.sroa.0973.166867 = phi i64 [ %.sroa.0973.14, %bb.alg ], [ %.sroa.0973.15, %bb.ale ]
  %.sroa.105.166866 = phi i64 [ %.sroa.105.14, %bb.alg ], [ %.sroa.105.15, %bb.ale ]
  %.sroa.139.166865 = phi i64 [ %.sroa.139.14, %bb.alg ], [ %.sroa.139.15, %bb.ale ]
  %.sroa.178.166864 = phi ptr [ %.sroa.178.14, %bb.alg ], [ %.sroa.178.15, %bb.ale ]
  %.sroa.2231919.166863 = phi ptr [ undef, %bb.alg ], [ %.sroa.2231919.15, %bb.ale ]
  %.sroa.238.166862 = phi ptr [ undef, %bb.alg ], [ %.sroa.238.15, %bb.ale ]
  %.sroa.224.sroa.0.166860 = phi i64 [ 0, %bb.alg ], [ %.sroa.224.sroa.0.15, %bb.ale ]
  %.sroa.224.sroa.105.sroa.0.166859 = phi i64 [ 0, %bb.alg ], [ %.sroa.224.sroa.105.sroa.0.15, %bb.ale ]
  %.sroa.201.166858 = phi ptr [ null, %bb.alg ], [ %.sroa.201.15, %bb.ale ]
  %.sroa.156.sroa.107.166857 = phi i8 [ %.sroa.156.sroa.107.14, %bb.alg ], [ %.sroa.156.sroa.107.15, %bb.ale ]
  %.sroa.156.sroa.108.166856 = phi i8 [ %.sroa.156.sroa.108.14, %bb.alg ], [ %.sroa.156.sroa.108.15, %bb.ale ]
  %.sroa.156.sroa.109.166855 = phi i16 [ %.sroa.156.sroa.109.14, %bb.alg ], [ %.sroa.156.sroa.109.15, %bb.ale ]
  %.sroa.156.sroa.0.sroa.0.166854 = phi i8 [ %.sroa.156.sroa.0.sroa.0.14, %bb.alg ], [ %.sroa.156.sroa.0.sroa.0.15, %bb.ale ]
  %.sroa.156.sroa.0.sroa.105.sroa.0.166853 = phi i24 [ %.sroa.156.sroa.0.sroa.105.sroa.0.14, %bb.alg ], [ %.sroa.156.sroa.0.sroa.105.sroa.0.15, %bb.ale ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(8) %i.mz)
          to label %bb.ajc unwind label %.thread6586

bb.alt:                                           ; preds = %bb.aky
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  br label %bb.ajg

bb.alu:                                           ; preds = %bb.ajg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4LikeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.co)
          to label %bb.alv unwind label %.thread6586

bb.alv:                                           ; preds = %bb.alu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  br label %bb.cs

.thread6831:                                      ; preds = %bb.alc, %bb.akw, %bb.akv
  %.pn5922.pn.pn6836 = phi { ptr, i32 } [ %.pn5922.pn, %bb.akv ], [ %i.bjc, %bb.akw ], [ %i.bjk, %bb.alc ]
  %.sroa.04735.46835 = phi i1 [ false, %bb.akv ], [ true, %bb.akw ], [ false, %bb.alc ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.cm) #52
          to label %.body6132 unwind label %bb.bs

bb.alw:                                           ; preds = %bb.akm
  %lpad.thr_comm.split-lp6813 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.sroa.263.14, label %.thread6869, label %.thread6574

bb.alx:                                           ; preds = %.split6807.thread, %bb.ajb
  %.pn59286811 = phi { ptr, i32 } [ %lpad.thr_comm6812, %.split6807.thread ], [ %.pn5926, %bb.ajb ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(8) %i.co) #52
          to label %.thread6869 unwind label %bb.bs

.thread6869:                                      ; preds = %bb.ajb, %bb.alx, %bb.alw
  %.pn592868106872 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp6813, %bb.alw ], [ %.pn5926, %bb.ajb ], [ %.pn59286811, %bb.alx ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(8) %i.mz) #52
          to label %.thread6574 unwind label %bb.bs
end_hunk_0
