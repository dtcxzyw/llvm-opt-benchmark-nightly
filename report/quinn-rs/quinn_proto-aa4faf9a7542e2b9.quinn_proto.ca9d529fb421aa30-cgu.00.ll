Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/quinn_proto-aa4faf9a7542e2b9.quinn_proto.ca9d529fb421aa30-cgu.00?download=true
inline.NumInlined: 1353
inline.NumDeleted: 355
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB2_10Connection13poll_transmit:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gw), !dbg !32341
  br label %bb.ed, !dbg !32339

bb.em:                                            ; preds = %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea), !dbg !32343
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gr), !dbg !32343
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gs), !dbg !32343
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gt), !dbg !32343
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gu), !dbg !32343
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gv), !dbg !32343
  br label %bb.el, !dbg !32343

.thread899:                                       ; preds = %bb.ee
  %i.aeb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ic, ptr noundef nonnull align 8 dereferenceable(120) %i.gq, i64 120, i1 false), !dbg !32350
  br label %.thread, !dbg !32273

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshovLROGBtMy_11quinn_proto10connection14packet_builder13PacketBuilderEEB13_.exit: ; preds = %bb.ed, %bb.ee
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ic, ptr noundef nonnull align 8 dereferenceable(120) %i.gq, i64 120, i1 false), !dbg !32350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gq), !dbg !32351
  br label %.loopexit980, !dbg !32352

.loopexit975:                                     ; preds = %bb.dn, %bb.dj
  %lpad.loopexit977 = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

.loopexit.split-lp976:                            ; preds = %bb.dx, %bb.dy, %bb.eb, %bb.eh, %bb.ei, %bb.ek
  %lpad.loopexit.split-lp978 = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.en:                                            ; preds = %.loopexit.split-lp976, %.loopexit975
  %lpad.phi979 = phi { ptr, i32 } [ %lpad.loopexit977, %.loopexit975 ], [ %lpad.loopexit.split-lp978, %.loopexit.split-lp976 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10connection14packet_builder13PacketBuilderEBH_(ptr noalias nofree noundef align 8 dereferenceable(120) %i.hc) #24
          to label %.thread unwind label %bb.eo, !dbg !32273

bb.eo:                                            ; preds = %bb.vi, %bb.rz, %bb.rx, %bb.vj, %bb.vh, %bb.sz, %bb.rn, %bb.qj, %bb.qf, %bb.en
  %i.aec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !dbg !32353
  unreachable, !dbg !32353

bb.ep:                                            ; preds = %bb.bu, %bb.du
  %.sroa.098.3 = phi i64 [ %.sroa.098.4, %bb.du ], [ %.sroa.098.01515, %bb.bu ], !dbg !30005
  %.sroa.082.3 = phi i64 [ %.sroa.082.4, %bb.du ], [ %.sroa.082.01516, %bb.bu ], !dbg !29843 ; 4 uses
    #dbg_value(i64 %.sroa.082.3, !28713, !DIExpression(), !29846)
    #dbg_value(i64 %.sroa.098.3, !28721, !DIExpression(), !30021)
    #dbg_value(ptr %i.lq, !7332, !DIExpression(), !26581)
    #dbg_value(i8 %i.up, !7334, !DIExpression(), !26581)
  %i.aed = getelementptr inbounds nuw i8, ptr %i.vo, i64 720, !dbg !32354 ; 2 uses
  %i.aee = load i32, ptr %i.aed, align 16, !dbg !32354, !noundef !2226 ; 2 uses
  %i.aef = icmp eq i32 %i.aee, 0, !dbg !32354
  br i1 %i.aef, label %bb.eq, label %bb.er, !dbg !32354

bb.eq:                                            ; preds = %bb.er, %bb.ep
  %.sroa.0106.0 = phi i64 [ %.sroa.082.3, %bb.ep ], [ %..i845, %bb.er ], !dbg !30075
    #dbg_value(i64 %.sroa.0106.0, !28809, !DIExpression(), !30386)
  %i.aeg = add i64 %.sroa.0106.0, %.sroa.098.3, !dbg !32355 ; 2 uses
    #dbg_value(i64 %i.aeg, !28721, !DIExpression(), !30021)
  %i.aeh = load i64, ptr %5, align 8, !dbg !32356, !range !3645, !noundef !2226
  %i.aei = icmp ult i64 %i.aeh, %i.aeg, !dbg !32357
  br i1 %i.aei, label %bb.es, label %bb.et, !dbg !32357

bb.er:                                            ; preds = %bb.ep
    #dbg_value(ptr %i.lq, !7432, !DIExpression(), !26583)
    #dbg_value(i8 %i.up, !7434, !DIExpression(), !26583)
  %i.aej = add i32 %i.aee, -1, !dbg !32358
  store i32 %i.aej, ptr %i.aed, align 16, !dbg !32358
    #dbg_value(i64 %.sroa.082.3, !29638, !DIExpression(), !29641)
    #dbg_value(ptr undef, !7554, !DIExpression(DW_OP_deref), !26585)
    #dbg_value(ptr undef, !7555, !DIExpression(DW_OP_deref), !26585)
  %..i845 = call noundef i64 @llvm.umin.i64(i64 %.sroa.082.3, i64 1200), !dbg !32359
  br label %bb.eq, !dbg !32360

bb.es:                                            ; preds = %bb.eq
  %i.aek = mul i64 %.sroa.082.3, %spec.select, !dbg !32361
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.aek)
          to label %bb.et unwind label %.loopexit973.loopexit, !dbg !32362

bb.et:                                            ; preds = %bb.es, %bb.eq
    #dbg_value(i64 %i.xl, !28711, !DIExpression(), !29842)
  %i.ael = add nuw i64 %i.xl, 1, !dbg !32363
    #dbg_value(i64 %i.ael, !28711, !DIExpression(), !29842)
  store i64 %i.ael, ptr %i.ie, align 8, !dbg !32363
    #dbg_value(i8 1, !28722, !DIExpression(), !30022)
    #dbg_value(i8 0, !28725, !DIExpression(), !30023)
  %i.aem = load i64, ptr %i.ni, align 8, !dbg !32364, !noundef !2226 ; 2 uses
    #dbg_value(i64 %i.aem, !28712, !DIExpression(), !29843)
  %i.aen = icmp sgt i64 %i.aem, -1, !dbg !32365
  call void @llvm.assume(i1 %i.aen), !dbg !32366
  br label %bb.eu, !dbg !32367

bb.eu:                                            ; preds = %bb.bq, %bb.bs, %bb.et
  %.sroa.0107.2 = phi i64 [ %i.aem, %bb.et ], [ %.sroa.0107.01514, %bb.bs ], [ %.sroa.0107.01514, %bb.bq ], !dbg !29842 ; 4 uses
  %.sroa.098.2 = phi i64 [ %i.aeg, %bb.et ], [ %.sroa.098.01515, %bb.bs ], [ %.sroa.098.01515, %bb.bq ], !dbg !30005 ; 4 uses
  %.sroa.082.2 = phi i64 [ %.sroa.082.3, %bb.et ], [ %.sroa.082.01516, %bb.bs ], [ %.sroa.082.01516, %bb.bq ], !dbg !29843 ; 3 uses
  %.sroa.018.2 = phi i8 [ 0, %bb.et ], [ %.sroa.018.01518, %bb.bs ], [ %.sroa.018.01518, %bb.bq ], !dbg !32368
    #dbg_value(i8 poison, !28725, !DIExpression(), !30023)
    #dbg_value(i64 %.sroa.082.2, !28713, !DIExpression(), !29846)
    #dbg_value(i64 %.sroa.098.2, !28721, !DIExpression(), !30021)
    #dbg_value(i64 %.sroa.0107.2, !28712, !DIExpression(), !29843)
    #dbg_value(i8 1, !28722, !DIExpression(), !30022)
    #dbg_value(ptr %i.lq, !7332, !DIExpression(), !26587)
    #dbg_value(i8 0, !7334, !DIExpression(), !26587)
    #dbg_value(ptr %i.lq, !30055, !DIExpression(DW_OP_plus_uconst, 416, DW_OP_stack_value), !30388)
  %i.aeo = load ptr, ptr %i.nz, align 16, !dbg !32369, !noundef !2226
  %.not738 = icmp ne ptr %i.aeo, null, !dbg !32369
    #dbg_value(ptr poison, !7426, !DIExpression(), !26589)
    #dbg_value(ptr poison, !7428, !DIExpression(), !26589)
    #dbg_value(i8 %i.up, !7429, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !26590)
    #dbg_value(i8 1, !7430, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !26591)
  %i.aep = icmp eq i8 %i.up, 1
  %or.cond958 = and i1 %.not738, %i.aep, !dbg !32370
  %.val791 = load i64, ptr %i.oa, align 8, !range !5627
  %i.aeq = icmp ne i64 %.val791, -1
  %or.cond960 = select i1 %or.cond958, i1 %i.aeq, i1 false, !dbg !32370
  br i1 %or.cond960, label %bb.ew, label %bb.ev, !dbg !32370

bb.ev:                                            ; preds = %bb.ew, %bb.eu
  %i.aer = load i32, ptr %i.ob, align 16, !dbg !32371, !range !5495, !noundef !2226
  %.not739 = icmp eq i32 %i.aer, -2, !dbg !32371
  br i1 %.not739, label %bb.ey, label %bb.ex, !dbg !32372

bb.ew:                                            ; preds = %bb.eu
  invoke fastcc void @_RNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB2_10Connection13discard_space(ptr noalias nofree noundef align 16 dereferenceable(6320) %1, i64 noundef %2, i32 noundef %3, i8 noundef 0)
          to label %bb.ev unwind label %.loopexit973.loopexit, !dbg !32373

bb.ex:                                            ; preds = %bb.ev
    #dbg_value(ptr %1, !28816, !DIExpression(DW_OP_plus_uconst, 3584, DW_OP_stack_value), !30389)
  store i8 0, ptr %i.oc, align 8, !dbg !32374
  br label %bb.ey, !dbg !32375

bb.ey:                                            ; preds = %bb.ex, %bb.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gl), !dbg !29401
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gk), !dbg !32376
  invoke void @_RNvMNtCshovLROGBtMy_11quinn_proto9cid_queueNtB2_8CidQueue6active(ptr noalias nofree noundef nonnull sret([21 x i8]) align 1 captures(none) dereferenceable(21) %i.gk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(208) %i.nb)
          to label %bb.ez unwind label %.loopexit973.loopexit, !dbg !32377

bb.ez:                                            ; preds = %bb.ey
  %i.aes = trunc nuw i8 %.sroa.032.1897 to i1, !dbg !32378
  invoke void @_RNvMNtNtCshovLROGBtMy_11quinn_proto10connection14packet_builderNtB2_13PacketBuilder3new(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.gl, i64 noundef %2, i32 noundef %3, i8 noundef %i.up, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(21) %i.gk, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %.sroa.098.2, i64 noundef %.sroa.0107.2, i1 noundef zeroext %i.aes, ptr noalias nofree noundef nonnull align 16 dereferenceable(6320) %1)
          to label %bb.fa unwind label %.loopexit973.loopexit, !dbg !29401

bb.fa:                                            ; preds = %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gk), !dbg !32379
  %i.aet = load i64, ptr %i.gl, align 8, !dbg !32380, !range !7296, !noundef !2226
  %.not740 = icmp eq i64 %i.aet, -1, !dbg !32380
  br i1 %.not740, label %bb.fe, label %bb.fb, !dbg !32381

bb.fb:                                            ; preds = %bb.fa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.gj, ptr noundef nonnull align 8 dereferenceable(120) %i.gl, i64 120, i1 false), !dbg !32382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gl), !dbg !32383
  call void @llvm.experimental.noalias.scope.decl(metadata !30390), !dbg !32384
    #dbg_value(ptr %i.ic, !30391, !DIExpression(), !26596)
    #dbg_value(ptr %i.ic, !30397, !DIExpression(), !26604)
    #dbg_declare(ptr %i.gj, !30395, !DIExpression(), !26605)
    #dbg_value(ptr %i.ic, !30348, !DIExpression(), !26607)
  %i.aeu = load i64, ptr %i.ic, align 8, !dbg !32385, !range !7296, !alias.scope !30412, !noalias !30390, !noundef !2226
  %i.aev = icmp eq i64 %i.aeu, -1, !dbg !32385
  br i1 %i.aev, label %bb.ff, label %bb.fc, !dbg !32385

bb.fc:                                            ; preds = %bb.fb
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10connection14packet_builder13PacketBuilderEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.ic)
          to label %bb.ff unwind label %bb.fd, !dbg !32385, !noalias !30390

bb.fd:                                            ; preds = %bb.fc
  %i.aew = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ic, ptr noundef nonnull readonly align 8 dereferenceable(120) %i.gj, i64 120, i1 false), !dbg !32386, !alias.scope !30413
  br label %.thread, !dbg !32387

bb.fe:                                            ; preds = %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gl), !dbg !32383
  store i64 2, ptr %0, align 8, !dbg !32388
  br label %.thread918, !dbg !32315

.thread918:                                       ; preds = %bb.fe, %bb.qh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hz), !dbg !32389
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ia), !dbg !32390
  br label %bb.vd, !dbg !32094

bb.ff:                                            ; preds = %bb.fb, %bb.fc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ic, ptr noundef nonnull readonly align 8 dereferenceable(120) %i.gj, i64 120, i1 false), !dbg !32386, !alias.scope !30413
    #dbg_value(ptr %i.ic, !28817, !DIExpression(), !30416)
  %i.aex = load i8, ptr %i.od, align 1, !dbg !32391, !range !6644, !noundef !2226
  %i.aey = xor i8 %i.aex, 1, !dbg !32392          ; 2 uses
    #dbg_value(i8 %i.aey, !28722, !DIExpression(), !30022)
    #dbg_value(ptr poison, !7426, !DIExpression(), !26613)
    #dbg_value(ptr poison, !7428, !DIExpression(), !26613)
    #dbg_value(i8 %i.up, !7429, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !26614)
    #dbg_value(i8 0, !7430, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !26615)
  %i.aez = icmp eq i8 %i.up, 0, !dbg !32393
  %.val790 = load i64, ptr %i.oa, align 8, !dbg !32394, !range !5627
  %.not965.not = icmp eq i64 %.val790, -1, !dbg !32394
    #dbg_value(i8 poison, !28735, !DIExpression(), !30059)
  %i.afa = select i1 %.not965.not, i8 %.sroa.032.1897, i8 1, !dbg !32394
  %i.afb = select i1 %i.aez, i8 %i.afa, i8 0, !dbg !32394
  %i.afc = or i8 %i.afb, %.sroa.018.2, !dbg !32395 ; 3 uses
    #dbg_value(i8 %i.afc, !28725, !DIExpression(), !30023)
  br i1 %.sroa.015.0, label %bb.qp, label %bb.fg, !dbg !32396

bb.fg:                                            ; preds = %bb.ff
    #dbg_value(ptr poison, !7426, !DIExpression(), !26617)
    #dbg_value(ptr poison, !7428, !DIExpression(), !26617)
    #dbg_value(i8 %i.up, !7429, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !26618)
    #dbg_value(i8 2, !7430, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !26619)
  %i.afd = load i64, ptr %i.ie, align 8
    #dbg_value(i64 %i.afd, !28711, !DIExpression(), !29842)
  %i.afe = icmp eq i64 %i.afd, 1
  %or.cond9 = select i1 %i.vw, i1 %i.afe, i1 false, !dbg !32397
  br i1 %or.cond9, label %bb.pf, label %bb.fh, !dbg !32397

bb.fh:                                            ; preds = %bb.fg, %bb.pi
  %i.aff = load i64, ptr %i.oh, align 8, !dbg !32398, !noundef !2226 ; 17 uses
  %i.afg = load i64, ptr %i.oi, align 8, !dbg !32399, !noundef !2226
  call void @llvm.experimental.noalias.scope.decl(metadata !30417), !dbg !32400
  call void @llvm.experimental.noalias.scope.decl(metadata !30418), !dbg !32400
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i), !dbg !32401
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i), !dbg !32401
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i), !dbg !32401
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i), !dbg !32401
    #dbg_value(ptr %1, !28931, !DIExpression(), !26623)
    #dbg_value(i64 %2, !28932, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26623)
    #dbg_value(i32 %3, !28932, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !26623)
    #dbg_value(i8 %i.up, !28933, !DIExpression(), !26623)
    #dbg_value(ptr %5, !28934, !DIExpression(), !26623)
    #dbg_value(ptr %5, !30419, !DIExpression(), !26626)
    #dbg_value(ptr %5, !30419, !DIExpression(), !26628)
    #dbg_value(ptr %5, !30419, !DIExpression(), !26630)
    #dbg_value(ptr %5, !30419, !DIExpression(), !26632)
    #dbg_value(ptr %5, !30419, !DIExpression(), !26634)
    #dbg_value(ptr %5, !30419, !DIExpression(), !26636)
    #dbg_value(ptr %5, !30419, !DIExpression(), !26638)
    #dbg_value(ptr %5, !30419, !DIExpression(), !26640)
    #dbg_value(i64 %i.aff, !28935, !DIExpression(), !26623)
    #dbg_value(i64 %i.afg, !28936, !DIExpression(), !26623)
    #dbg_value(i64 %i.afg, !30421, !DIExpression(), !26643)
    #dbg_declare(ptr %i.de, !28937, !DIExpression(), !26644)
    #dbg_declare(ptr %i.da, !28949, !DIExpression(), !26645)
    #dbg_declare(ptr %i.ct, !28961, !DIExpression(), !26646)
    #dbg_declare(ptr %i.cp, !28966, !DIExpression(), !26647)
    #dbg_declare(ptr %i.cp, !30426, !DIExpression(), !26648)
    #dbg_declare(ptr %i.ck, !28976, !DIExpression(), !26649)
    #dbg_declare(ptr %i.ca, !28987, !DIExpression(), !26650)
    #dbg_declare(ptr %i.bz, !28993, !DIExpression(), !26651)
    #dbg_declare(ptr %i.bv, !28999, !DIExpression(), !26652)
    #dbg_declare(ptr %i.bp, !29008, !DIExpression(), !26653)
    #dbg_declare(ptr %i.bo, !29014, !DIExpression(), !26654)
    #dbg_declare(ptr %i.bk, !29020, !DIExpression(), !26655)
    #dbg_declare(ptr %i.bj, !29021, !DIExpression(), !26656)
    #dbg_declare(ptr %i.bh, !29025, !DIExpression(), !26657)
    #dbg_declare(ptr %i.bg, !29026, !DIExpression(), !26658)
    #dbg_declare(ptr %i.bb, !29034, !DIExpression(), !26659)
    #dbg_declare(ptr %i.ba, !29040, !DIExpression(), !26660)
    #dbg_declare(ptr %i.av, !29046, !DIExpression(), !26661)
    #dbg_declare(ptr %i.au, !30428, !DIExpression(), !26664)
    #dbg_declare(ptr %i.at, !30431, !DIExpression(), !26667)
    #dbg_declare(ptr %i.as, !29047, !DIExpression(), !26668)
    #dbg_declare(ptr %i.an, !29058, !DIExpression(), !26669)
    #dbg_declare(ptr %i.ad, !29072, !DIExpression(), !26670)
    #dbg_declare(ptr %i.z, !30435, !DIExpression(), !26673)
    #dbg_declare(ptr %i.y, !29083, !DIExpression(), !26674)
    #dbg_declare(ptr %i.x, !29084, !DIExpression(), !26675)
    #dbg_declare(ptr %i.v, !30438, !DIExpression(), !26678)
    #dbg_value(i8 0, !30440, !DIExpression(), !26681)
    #dbg_value(i8 1, !30446, !DIExpression(), !26684)
    #dbg_value(i8 0, !30440, !DIExpression(), !26686)
    #dbg_value(i8 0, !30449, !DIExpression(), !26691)
    #dbg_value(i8 0, !30453, !DIExpression(), !26696)
    #dbg_value(ptr @_RNvNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB4_10Connection15populate_packet10___CALLSITE, !30459, !DIExpression(), !26699)
    #dbg_value(ptr poison, !30463, !DIExpression(), !26702)
    #dbg_declare(ptr poison, !30468, !DIExpression(), !26721)
    #dbg_value(i8 0, !30487, !DIExpression(), !26726)
    #dbg_value(i8 0, !30449, !DIExpression(), !26730)
    #dbg_declare(ptr poison, !30468, !DIExpression(), !26733)
    #dbg_value(ptr @_RNvNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB4_10Connection15populate_packet10___CALLSITE, !30459, !DIExpression(), !26735)
    #dbg_value(i8 0, !30440, !DIExpression(), !26737)
    #dbg_value(i8 0, !30449, !DIExpression(), !26740)
    #dbg_value(i8 0, !30453, !DIExpression(), !26743)
    #dbg_value(ptr @_RNvNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB4_10Connection15populate_packets_10___CALLSITE, !30459, !DIExpression(), !26745)
    #dbg_value(ptr poison, !30463, !DIExpression(), !26747)
    #dbg_declare(ptr poison, !30468, !DIExpression(), !26749)
    #dbg_value(i8 0, !30487, !DIExpression(), !26752)
    #dbg_value(i8 0, !30449, !DIExpression(), !26755)
    #dbg_declare(ptr poison, !30468, !DIExpression(), !26758)
    #dbg_value(ptr @_RNvNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB4_10Connection15populate_packets_10___CALLSITE, !30459, !DIExpression(), !26760)
    #dbg_value(i8 0, !30440, !DIExpression(), !26762)
    #dbg_value(i8 0, !30449, !DIExpression(), !26765)
    #dbg_value(i8 0, !30453, !DIExpression(), !26768)
    #dbg_value(ptr @_RNvNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB4_10Connection15populate_packets0_10___CALLSITE, !30459, !DIExpression(), !26770)
    #dbg_value(ptr poison, !30463, !DIExpression(), !26772)
    #dbg_declare(ptr poison, !30468, !DIExpression(), !26774)
    #dbg_value(i8 0, !30487, !DIExpression(), !26777)
    #dbg_value(i8 0, !30449, !DIExpression(), !26780)
    #dbg_declare(ptr poison, !30468, !DIExpression(), !26783)
    #dbg_value(ptr @_RNvNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB4_10Connection15populate_packets0_10___CALLSITE, !30459, !DIExpression(), !26785)
    #dbg_value(i64 4611686018427387903, !30521, !DIExpression(), !26794)
    #dbg_value(i8 0, !30449, !DIExpression(), !26797)
    #dbg_value(i8 0, !30453, !DIExpression(), !26800)
    #dbg_value(ptr @_RNvNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB4_10Connection15populate_packets1_10___CALLSITE, !30459, !DIExpression(), !26802)
    #dbg_value(ptr @81, !30548, !DIExpression(), !26805)
    #dbg_value(ptr poison, !30463, !DIExpression(), !26807)
    #dbg_declare(ptr poison, !30468, !DIExpression(), !26809)
    #dbg_value(i8 0, !30487, !DIExpression(), !26812)
    #dbg_value(i8 0, !30449, !DIExpression(), !26815)
    #dbg_declare(ptr poison, !30468, !DIExpression(), !26818)
    #dbg_value(ptr @_RNvNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB4_10Connection15populate_packets1_10___CALLSITE, !30459, !DIExpression(), !26820)
    #dbg_value(ptr @81, !30548, !DIExpression(), !26822)
    #dbg_value(i8 0, !30449, !DIExpression(), !26825)
    #dbg_value(i8 0, !30453, !DIExpression(), !26828)
    #dbg_value(ptr @_RNvNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB4_10Connection15populate_packets2_10___CALLSITE, !30459, !DIExpression(), !26830)
    #dbg_value(ptr @82, !30574, !DIExpression(), !26833)
    #dbg_value(ptr poison, !30463, !DIExpression(), !26835)
    #dbg_declare(ptr poison, !30468, !DIExpression(), !26837)
    #dbg_value(i8 0, !30487, !DIExpression(), !26840)
    #dbg_value(i8 0, !30449, !DIExpression(), !26843)
    #dbg_declare(ptr poison, !30468, !DIExpression(), !26846)
    #dbg_value(ptr @_RNvNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB4_10Connection15populate_packets2_10___CALLSITE, !30459, !DIExpression(), !26848)
    #dbg_value(ptr @82, !30574, !DIExpression(), !26850)
    #dbg_value(i8 0, !30449, !DIExpression(), !26853)
    #dbg_value(i8 0, !30453, !DIExpression(), !26856)
    #dbg_value(ptr @_RNvNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB4_10Connection15populate_packets3_10___CALLSITE, !30459, !DIExpression(), !26858)
    #dbg_value(ptr @83, !30596, !DIExpression(), !26861)
    #dbg_value(ptr poison, !30463, !DIExpression(), !26863)
    #dbg_declare(ptr poison, !30468, !DIExpression(), !26865)
    #dbg_value(i8 0, !30487, !DIExpression(), !26868)
    #dbg_value(i8 0, !30449, !DIExpression(), !26871)
    #dbg_declare(ptr poison, !30468, !DIExpression(), !26874)
    #dbg_value(ptr @_RNvNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB4_10Connection15populate_packets3_10___CALLSITE, !30459, !DIExpression(), !26876)
    #dbg_value(ptr @83, !30596, !DIExpression(), !26878)
    #dbg_value(i64 48, !30610, !DIExpression(), !26887)
    #dbg_value(i8 0, !30449, !DIExpression(), !26890)
    #dbg_value(i8 0, !30453, !DIExpression(), !26893)
    #dbg_value(ptr @_RNvNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB4_10Connection15populate_packets4_10___CALLSITE, !30459, !DIExpression(), !26895)
    #dbg_value(ptr poison, !30463, !DIExpression(), !26897)
    #dbg_declare(ptr poison, !30468, !DIExpression(), !26899)
    #dbg_value(i8 0, !30487, !DIExpression(), !26902)
    #dbg_value(i8 0, !30449, !DIExpression(), !26905)
    #dbg_declare(ptr poison, !30468, !DIExpression(), !26908)
    #dbg_value(ptr @_RNvNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB4_10Connection15populate_packets4_10___CALLSITE, !30459, !DIExpression(), !26910)
    #dbg_value(i64 8, !30610, !DIExpression(), !26918)
    #dbg_value(i8 0, !30449, !DIExpression(), !26921)
    #dbg_value(i8 0, !30453, !DIExpression(), !26924)
    #dbg_value(ptr @_RNvNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB4_10Connection15populate_packets5_10___CALLSITE, !30459, !DIExpression(), !26926)
    #dbg_value(ptr poison, !30463, !DIExpression(), !26928)
    #dbg_declare(ptr poison, !30468, !DIExpression(), !26930)
    #dbg_value(i8 0, !30487, !DIExpression(), !26933)
    #dbg_value(i8 0, !30449, !DIExpression(), !26936)
    #dbg_declare(ptr poison, !30468, !DIExpression(), !26939)
    #dbg_value(ptr @_RNvNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB4_10Connection15populate_packets5_10___CALLSITE, !30459, !DIExpression(), !26941)
    #dbg_value(i64 32, !30610, !DIExpression(), !26953)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !30687, !DIExpression(), !26960)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de), !dbg !32401, !noalias !30701
  call void @llvm.experimental.noalias.scope.decl(metadata !30702), !dbg !32402
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i), !dbg !32403
    #dbg_declare(ptr poison, !7603, !DIExpression(), !26969)
    #dbg_declare(ptr poison, !7611, !DIExpression(), !26970)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !32403, !noalias !30701
  invoke void @_RINvMsm_NtCskKLDkoKarTP_4core5arrayAuj1_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitNtNtCshovLROGBtMy_11quinn_proto5frame10StreamMetaENCINvMBN_BK_10wrap_mut_1uNCNvXNtNtCslrs821VbQCb_7tinyvec5array18const_generic_implAB1r_Bz_NtB2L_5Array7default0E0EB1v_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.l)
          to label %.noexc852 unwind label %.loopexit973.loopexit, !dbg !32404

.noexc852:                                        ; preds = %bb.fh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %.sroa.4.8..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !dbg !32405, !noalias !30703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !32406, !noalias !30701
  store ptr null, ptr %i.oj, align 8, !dbg !32407, !alias.scope !30702, !noalias !30701
  store i64 0, ptr %i.de, align 8, !dbg !32407, !alias.scope !30702, !noalias !30701
  store i16 0, ptr %i.ok, align 8, !dbg !32407, !alias.scope !30702, !noalias !30701
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(38) %.sroa.42.0..sroa_idx.i.i, ptr noundef nonnull align 2 dereferenceable(38) %.sroa.4.i.i, i64 38, i1 false), !dbg !32407, !noalias !30701
  store i8 0, ptr %i.ol, align 8, !dbg !32407, !alias.scope !30702, !noalias !30701
  store i8 0, ptr %i.om, align 1, !dbg !32407, !alias.scope !30702, !noalias !30701
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i), !dbg !32408
    #dbg_value(ptr %i.vo, !28938, !DIExpression(), !26971)
  br i1 %i.vw, label %bb.fj, label %bb.fk, !dbg !32409

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto5frame6CryptoEBF_.exit703.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp, %.body.i, %bb.mt, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto5frame6CryptoEBF_.exit701.i, %bb.ko, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split.loopexit.i, %.loopexit822.i
  %.pn665.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %lpad.phi827.i, %bb.mt ], [ %.pn798.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto5frame6CryptoEBF_.exit701.i ], [ %lpad.thr_comm.split-lp.i, %bb.ko ], [ %lpad.loopexit.i, %.loopexit822.i ], [ %lpad.loopexit.split-lp895.i, %.loopexit.split-lp.loopexit.split.loopexit.split-lp.i ], [ %lpad.loopexit839.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit832.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit835.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit894.i, %.loopexit.split-lp.loopexit.split.loopexit.i ], [ %lpad.loopexit981, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit ], [ %lpad.loopexit.split-lp982, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto10connection10SentFramesEBF_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.de) #24
          to label %.thread unwind label %bb.lq, !dbg !32410, !noalias !30704

.loopexit822.i:                                   ; preds = %bb.nb, %bb.mr, %bb.mq, %bb.mn, %bb.ml, %bb.mj
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto5frame6CryptoEBF_.exit703.i

.loopexit.split-lp.loopexit.split.loopexit.i:     ; preds = %.peel.next.i
  %lpad.loopexit894.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto5frame6CryptoEBF_.exit703.i

.loopexit.split-lp.loopexit.split.loopexit.split-lp.i: ; preds = %.lr.ph866.i
  %lpad.loopexit.split-lp895.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto5frame6CryptoEBF_.exit703.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %bb.oh, %bb.of, %bb.oe, %bb.ob, %bb.nz, %bb.ny, %bb.nv, %bb.nu, %.noexc724.i, %bb.nt, %bb.nr, %bb.no, %bb.nn
  %lpad.loopexit832.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto5frame6CryptoEBF_.exit703.i

end_hunk_0
