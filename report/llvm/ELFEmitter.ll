Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ELFEmitter?download=true
inline.NumInlined: 9996
inline.NumDeleted: 2832
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN12_GLOBAL__N_18ELFStateIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb1EEEE8writeELFERNS1_11raw_ostreamERNS1_7ELFYAML6ObjectENS1_12function_refIFvRKNS1_5TwineEEEEm:bb.a
  br i1 %i.cdo, label %bb.kk, label %_ZN4llvm4yaml25ContiguousBlobAccumulator10writeZerosEm.exit.i.i

bb.kk:                                            ; preds = %.thread588.i
  %i.cdp = trunc i64 %i.cdn to i32
  %i.cdq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream11write_zerosEj(ptr noundef nonnull align 8 dereferenceable(48) %i.ayz, i32 noundef %i.cdp) #20 ; 0 uses
  br label %_ZN4llvm4yaml25ContiguousBlobAccumulator10writeZerosEm.exit.i.i

_ZN4llvm4yaml25ContiguousBlobAccumulator10writeZerosEm.exit.i.i: ; preds = %bb.kk, %.thread588.i
  %i.cdr = load i64, ptr %i.cdl, align 8, !tbaa !41
  br label %_ZL12writeContentRN4llvm4yaml25ContiguousBlobAccumulatorERKSt8optionalINS0_9BinaryRefEERKS3_INS0_5Hex64EE.exit.i

_ZL12writeContentRN4llvm4yaml25ContiguousBlobAccumulatorERKSt8optionalINS0_9BinaryRefEERKS3_INS0_5Hex64EE.exit.i: ; preds = %_ZN4llvm4yaml25ContiguousBlobAccumulator10writeZerosEm.exit.i.i, %bb.kj
  %.010.i.i = phi i64 [ %i.cdr, %_ZN4llvm4yaml25ContiguousBlobAccumulator10writeZerosEm.exit.i.i ], [ %.0.i.i291.i, %bb.kj ]
  %i.cds = getelementptr inbounds nuw i8, ptr %i.bkv, i64 32
  store i64 %.010.i.i, ptr %i.cds, align 1
  %.pre511.i = load i32, ptr %i.bdi, align 8, !tbaa !62
  br label %bb.kl

bb.kl:                                            ; preds = %_ZL12writeContentRN4llvm4yaml25ContiguousBlobAccumulatorERKSt8optionalINS0_9BinaryRefEERKS3_INS0_5Hex64EE.exit.i, %bb.ki
  %i.cdt = phi i32 [ %.pre511.i, %_ZL12writeContentRN4llvm4yaml25ContiguousBlobAccumulatorERKSt8optionalINS0_9BinaryRefEERKS3_INS0_5Hex64EE.exit.i ], [ %i.cby, %bb.ki ] ; 8 uses
  %i.cdu = icmp ne i32 %i.cdt, 2
  %.not196.i = or i1 %.not450.i, %i.cdu
  br i1 %.not196.i, label %bb.ko, label %bb.km

bb.km:                                            ; preds = %bb.kl
  %i.cdv = getelementptr i8, ptr %i.bdh, i64 288
  %.val224.i = load i8, ptr %i.cdv, align 8, !tbaa !124, !range !115, !noundef !116
  %i.cdw = trunc nuw i8 %.val224.i to i1
  br i1 %i.cdw, label %bb.kn, label %_ZN12_GLOBAL__N_18ELFStateIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb1EEEE19writeSectionContentERNS2_13Elf_Shdr_ImplIS5_EERKNS1_7ELFYAML17RawContentSectionERNS1_4yaml25ContiguousBlobAccumulatorE.exit.i

bb.kn:                                            ; preds = %bb.km
  %i.cdx = getelementptr i8, ptr %i.bdh, i64 280
  %.val223.i = load i64, ptr %i.cdx, align 8
  %i.cdy = trunc i64 %.val223.i to i32
  %i.cdz = getelementptr inbounds nuw i8, ptr %i.bkv, i64 44
  store i32 %i.cdy, ptr %i.cdz, align 1
  br label %_ZN12_GLOBAL__N_18ELFStateIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb1EEEE19writeSectionContentERNS2_13Elf_Shdr_ImplIS5_EERKNS1_7ELFYAML17RawContentSectionERNS1_4yaml25ContiguousBlobAccumulatorE.exit.i

bb.ko:                                            ; preds = %bb.kl
  %i.cea = icmp ne i32 %i.cdt, 12
  %.not197.i = or i1 %.not450.i, %i.cea
  br i1 %.not197.i, label %bb.kw, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.ceb = load i8, ptr %i.ccy, align 8, !tbaa !131, !range !115, !noundef !116
  %i.cec = trunc nuw i8 %i.ceb to i1
  br i1 %i.cec, label %bb.kr, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %i.ced = getelementptr inbounds nuw i8, ptr %i.bdh, i64 176
  %i.cee = load i8, ptr %i.ced, align 8, !tbaa !124, !range !115, !noundef !116
  %i.cef = trunc nuw i8 %i.cee to i1
  br i1 %i.cef, label %.thread.i300.i, label %bb.kt

bb.kr:                                            ; preds = %bb.kp
  %i.ceg = getelementptr inbounds nuw i8, ptr %i.bdh, i64 136
  call void @_ZN4llvm4yaml25ContiguousBlobAccumulator13writeAsBinaryERKNS0_9BinaryRefEm(ptr noundef nonnull align 8 dereferenceable(232) %78, ptr noundef nonnull align 8 dereferenceable(32) %i.ceg, i64 noundef -1) #20
  %i.ceh = getelementptr inbounds nuw i8, ptr %i.bdh, i64 152
  %i.cei = load i8, ptr %i.ceh, align 8, !tbaa !249, !range !115, !noundef !116
  %i.cej = getelementptr inbounds nuw i8, ptr %i.bdh, i64 144
  %i.cek = load i64, ptr %i.cej, align 8
  %i.cel = zext nneg i8 %i.cei to i64
  %.0.i.i.i.i = lshr i64 %i.cek, %i.cel           ; 2 uses
  %.phi.trans.insert.i301.i = getelementptr inbounds nuw i8, ptr %i.bdh, i64 176
  %.pre7.i302.i = load i8, ptr %.phi.trans.insert.i301.i, align 8, !tbaa !124, !range !115
  %i.cem = trunc nuw i8 %.pre7.i302.i to i1
  br i1 %i.cem, label %.thread.i300.i, label %.sink.split.i.i

.thread.i300.i:                                   ; preds = %bb.kr, %bb.kq
  %.0.i11.i.i = phi i64 [ %.0.i.i.i.i, %bb.kr ], [ 0, %bb.kq ]
  %i.cen = getelementptr inbounds nuw i8, ptr %i.bdh, i64 168 ; 2 uses
  %i.ceo = load i64, ptr %i.cen, align 8, !tbaa !41
  %i.cep = sub i64 %i.ceo, %.0.i11.i.i            ; 2 uses
  %i.ceq = call noundef zeroext i1 @_ZN4llvm4yaml25ContiguousBlobAccumulator10checkLimitEm(ptr noundef nonnull align 8 dereferenceable(232) %78, i64 noundef %i.cep) #20
  br i1 %i.ceq, label %bb.ks, label %_ZN4llvm4yaml25ContiguousBlobAccumulator10writeZerosEm.exit.i.i.i

bb.ks:                                            ; preds = %.thread.i300.i
  %i.cer = trunc i64 %i.cep to i32
  %i.ces = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream11write_zerosEj(ptr noundef nonnull align 8 dereferenceable(48) %i.ayz, i32 noundef %i.cer) #20 ; 0 uses
  br label %_ZN4llvm4yaml25ContiguousBlobAccumulator10writeZerosEm.exit.i.i.i

_ZN4llvm4yaml25ContiguousBlobAccumulator10writeZerosEm.exit.i.i.i: ; preds = %bb.ks, %.thread.i300.i
  %i.cet = load i64, ptr %i.cen, align 8, !tbaa !41
  br label %.sink.split.i.i

bb.kt:                                            ; preds = %bb.kq
  %i.ceu = getelementptr inbounds nuw i8, ptr %i.bdh, i64 280 ; 2 uses
  %i.cev = getelementptr inbounds nuw i8, ptr %i.bdh, i64 304
  %i.cew = load i8, ptr %i.cev, align 8, !tbaa !309, !range !115, !noundef !116
  %i.cex = trunc nuw i8 %i.cew to i1
  br i1 %i.cex, label %bb.ku, label %_ZN12_GLOBAL__N_18ELFStateIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb1EEEE19writeSectionContentERNS2_13Elf_Shdr_ImplIS5_EERKNS1_7ELFYAML17RawContentSectionERNS1_4yaml25ContiguousBlobAccumulatorE.exit.i

bb.ku:                                            ; preds = %bb.kt
  %i.cey = load ptr, ptr %i.ceu, align 8, !tbaa !310 ; 4 uses
  %i.cez = getelementptr inbounds nuw i8, ptr %i.bdh, i64 288 ; 2 uses
  %i.cfa = load ptr, ptr %i.cez, align 8, !tbaa !310 ; 2 uses
  %.not4.i294.i = icmp eq ptr %i.cey, %i.cfa
  br i1 %.not4.i294.i, label %._crit_edge.i298.i, label %.lr.ph.i295.i

._crit_edge.loopexit.i.i:                         ; preds = %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeIjEEvT_NS_10endiannessE.exit.i.i
  %.pre.i297.i = load ptr, ptr %i.cez, align 8, !tbaa !312
  %.pre6.i.i = load ptr, ptr %i.ceu, align 8, !tbaa !313
  br label %._crit_edge.i298.i

._crit_edge.i298.i:                               ; preds = %._crit_edge.loopexit.i.i, %bb.ku
  %i.cfb = phi ptr [ %.pre6.i.i, %._crit_edge.loopexit.i.i ], [ %i.cey, %bb.ku ]
  %i.cfc = phi ptr [ %.pre.i297.i, %._crit_edge.loopexit.i.i ], [ %i.cey, %bb.ku ]
  %i.cfd = ptrtoint ptr %i.cfc to i64
  %i.cfe = ptrtoint ptr %i.cfb to i64
  %i.cff = sub i64 %i.cfd, %i.cfe
  %i.cfg = ashr exact i64 %i.cff, 2
  %.0.copyload.i.i.i.i299.i = load i64, ptr %i.bmp, align 1
  %i.cfh = mul i64 %i.cfg, %.0.copyload.i.i.i.i299.i
  br label %.sink.split.i.i

.lr.ph.i295.i:                                    ; preds = %bb.ku, %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeIjEEvT_NS_10endiannessE.exit.i.i
  %.sroa.01.05.i.i = phi ptr [ %i.cfl, %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeIjEEvT_NS_10endiannessE.exit.i.i ], [ %i.cey, %bb.ku ] ; 2 uses
  %i.cfi = load i32, ptr %.sroa.01.05.i.i, align 4, !tbaa !63
  %i.cfj = call noundef zeroext i1 @_ZN4llvm4yaml25ContiguousBlobAccumulator10checkLimitEm(ptr noundef nonnull align 8 dereferenceable(232) %78, i64 noundef 4) #20
  br i1 %i.cfj, label %bb.kv, label %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeIjEEvT_NS_10endiannessE.exit.i.i

bb.kv:                                            ; preds = %.lr.ph.i295.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 %i.cfi, ptr %i.f, align 4, !tbaa !63
  %i.cfk = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ayz, ptr noundef nonnull %i.f, i64 noundef 4) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeIjEEvT_NS_10endiannessE.exit.i.i

_ZN4llvm4yaml25ContiguousBlobAccumulator5writeIjEEvT_NS_10endiannessE.exit.i.i: ; preds = %bb.kv, %.lr.ph.i295.i
  %i.cfl = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 4 ; 2 uses
  %.not.i296.i = icmp eq ptr %i.cfl, %i.cfa
  br i1 %.not.i296.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i295.i

.sink.split.i.i:                                  ; preds = %._crit_edge.i298.i, %_ZN4llvm4yaml25ContiguousBlobAccumulator10writeZerosEm.exit.i.i.i, %bb.kr
  %.sink.i.i = phi i64 [ %i.cfh, %._crit_edge.i298.i ], [ %i.cet, %_ZN4llvm4yaml25ContiguousBlobAccumulator10writeZerosEm.exit.i.i.i ], [ %.0.i.i.i.i, %bb.kr ]
  %i.cfm = getelementptr inbounds nuw i8, ptr %i.bkv, i64 32
  store i64 %.sink.i.i, ptr %i.cfm, align 1
  br label %_ZN12_GLOBAL__N_18ELFStateIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb1EEEE19writeSectionContentERNS2_13Elf_Shdr_ImplIS5_EERKNS1_7ELFYAML17RawContentSectionERNS1_4yaml25ContiguousBlobAccumulatorE.exit.i

bb.kw:                                            ; preds = %bb.ko
  %i.cfn = icmp ne i32 %i.cdt, 3
  %.not198.i = or i1 %.not450.i, %i.cfn
  br i1 %.not198.i, label %bb.me, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  %i.cfo = getelementptr inbounds nuw i8, ptr %i.bdh, i64 320
  %i.cfp = load i64, ptr %i.cfo, align 8, !tbaa !69 ; 2 uses
  %i.cfq = icmp eq i64 %i.cfp, 0
  br i1 %i.cfq, label %bb.kz, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.cfr = getelementptr inbounds nuw i8, ptr %i.bdh, i64 312
  %.sroa.055.0.copyload.i.i = load ptr, ptr %i.cfr, align 8, !tbaa !53
  %.sroa.053.0.copyload.i.i = load ptr, ptr %i.bki, align 8, !tbaa !53
  %.sroa.254.0.copyload.i.i = load i64, ptr %.sroa.267.0..sroa_idx.i130, align 8, !tbaa !41
  %i.cfs = call fastcc noundef i32 @_ZN12_GLOBAL__N_18ELFStateIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb1EEEE14toSectionIndexENS1_9StringRefES7_S7_(ptr noundef nonnull align 8 dereferenceable(456) %77, ptr %.sroa.055.0.copyload.i.i, i64 %i.cfp, ptr %.sroa.053.0.copyload.i.i, i64 %.sroa.254.0.copyload.i.i, ptr nonnull @.str, i64 0)
  %i.cft = getelementptr inbounds nuw i8, ptr %i.bkv, i64 44
  store i32 %i.cfs, ptr %i.cft, align 1
  br label %bb.kz

bb.kz:                                            ; preds = %bb.ky, %bb.kx
  %i.cfu = getelementptr inbounds nuw i8, ptr %i.bdh, i64 280 ; 2 uses
  %i.cfv = getelementptr inbounds nuw i8, ptr %i.bdh, i64 304
  %i.cfw = load i8, ptr %i.cfv, align 8, !tbaa !315, !range !115, !noundef !116
  %i.cfx = trunc nuw i8 %i.cfw to i1
  br i1 %i.cfx, label %bb.la, label %_ZN12_GLOBAL__N_18ELFStateIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb1EEEE19writeSectionContentERNS2_13Elf_Shdr_ImplIS5_EERKNS1_7ELFYAML17RawContentSectionERNS1_4yaml25ContiguousBlobAccumulatorE.exit.i

bb.la:                                            ; preds = %bb.kz
  %i.cfy = load i32, ptr %i.bzl, align 4, !tbaa !163
  %.fr155.i.i = freeze i32 %i.cfy                 ; 2 uses
  %i.cfz = icmp eq i32 %.fr155.i.i, 1073741844
  %i.cga = icmp eq i32 %.fr155.i.i, 4
  %i.cgb = load i64, ptr %78, align 8, !tbaa !229
  %i.cgc = load ptr, ptr %i.ayz, align 8, !tbaa !127
  %i.cgd = getelementptr inbounds nuw i8, ptr %i.cgc, i64 80
  %i.cge = load ptr, ptr %i.cgd, align 8
  %i.cgf = call noundef i64 %i.cge(ptr noundef nonnull align 8 dereferenceable(48) %i.ayz) #20, !inline_history !863
  %i.cgg = load ptr, ptr %i.bbi, align 8, !tbaa !243
  %i.cgh = load ptr, ptr %i.azd, align 8, !tbaa !244
  %i.cgi = ptrtoint ptr %i.cgg to i64
  %i.cgj = ptrtoint ptr %i.cgh to i64
  %i.cgk = load ptr, ptr %i.cfu, align 8, !tbaa !317 ; 5 uses
  %i.cgl = getelementptr inbounds nuw i8, ptr %i.bdh, i64 288 ; 2 uses
  %i.cgm = load ptr, ptr %i.cgl, align 8, !tbaa !317 ; 5 uses
  %.not122131.i.i = icmp eq ptr %i.cgk, %i.cgm    ; 2 uses
  br i1 %i.cfz, label %bb.lb, label %.thread.thread.i.i

bb.lb:                                            ; preds = %bb.la
  br i1 %.not122131.i.i, label %.thread.i309.i, label %.lr.ph.i307.i

.lr.ph.i307.i:                                    ; preds = %bb.lb, %.lr.ph.i307.i
  %.0133.i.i = phi i64 [ %i.cgo, %.lr.ph.i307.i ], [ 8, %bb.lb ]
  %.sroa.0109.0132.i.i = phi ptr [ %i.cgp, %.lr.ph.i307.i ], [ %i.cgk, %bb.lb ] ; 2 uses
  %i.cgn = load i64, ptr %.sroa.0109.0132.i.i, align 8, !tbaa !41
  %i.cgo = or i64 %i.cgn, %.0133.i.i              ; 2 uses
  %i.cgp = getelementptr inbounds nuw i8, ptr %.sroa.0109.0132.i.i, i64 48 ; 2 uses
  %.not122.i.i = icmp eq ptr %i.cgp, %i.cgm
  br i1 %.not122.i.i, label %._crit_edge.loopexit.i308.i, label %.lr.ph.i307.i

._crit_edge.loopexit.i308.i:                      ; preds = %.lr.ph.i307.i
  %i.cgq = call range(i64 0, 4) i64 @llvm.cttz.i64(i64 %i.cgo, i1 true)
  br label %.thread.i309.i

.thread.i309.i:                                   ; preds = %._crit_edge.loopexit.i308.i, %bb.lb
  %.0.lcssa.i310.i = phi i64 [ 3, %bb.lb ], [ %i.cgq, %._crit_edge.loopexit.i308.i ] ; 2 uses
  %i.cgr = ptrtoint ptr %i.cgm to i64
  %i.cgs = ptrtoint ptr %i.cgk to i64
  %i.cgt = sub i64 %i.cgr, %i.cgs
  %i.cgu = sdiv exact i64 %i.cgt, 48
  %i.cgv = shl nsw i64 %i.cgu, 3
  %i.cgw = or disjoint i64 %.0.lcssa.i310.i, %i.cgv
  %81 = or disjoint i64 %i.cgw, 4
  %i.cgx = call noundef i32 @_ZN4llvm4yaml25ContiguousBlobAccumulator12writeULEB128Em(ptr noundef nonnull align 8 dereferenceable(232) %78, i64 noundef %81) #20 ; 0 uses
  %i.cgy = load ptr, ptr %i.cfu, align 8, !tbaa !317 ; 2 uses
  %i.cgz = load ptr, ptr %i.cgl, align 8, !tbaa !317 ; 2 uses
  %.not123134.i.i = icmp eq ptr %i.cgy, %i.cgz
  br i1 %.not123134.i.i, label %._crit_edge141.i.i, label %.lr.ph140.split.us.preheader.i.i

.thread.thread.i.i:                               ; preds = %bb.la
  br i1 %.not122131.i.i, label %._crit_edge141.i.i, label %.lr.ph140.split.i.i

.lr.ph140.split.us.preheader.i.i:                 ; preds = %.thread.i309.i
  %i.cha = getelementptr inbounds nuw i8, ptr %i.bdh, i64 88
  %.sroa.216.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bdh, i64 96
  br label %.lr.ph140.split.us.i.i

.lr.ph140.split.us.i.i:                           ; preds = %bb.lp, %.lr.ph140.split.us.preheader.i.i
  %.083139.us.i.i = phi i64 [ %i.cht, %bb.lp ], [ 0, %.lr.ph140.split.us.preheader.i.i ]
  %.085138.us.i.i = phi i64 [ %.2.us.i.i, %bb.lp ], [ 0, %.lr.ph140.split.us.preheader.i.i ] ; 3 uses
  %.087137.us.i.i = phi i32 [ %.188.us.i.i, %bb.lp ], [ 0, %.lr.ph140.split.us.preheader.i.i ] ; 3 uses
  %.090136.us.i.i = phi i32 [ %.191.us.i.i, %bb.lp ], [ 0, %.lr.ph140.split.us.preheader.i.i ] ; 3 uses
  %.sroa.0105.0135.us.i.i = phi ptr [ %i.cjh, %bb.lp ], [ %i.cgy, %.lr.ph140.split.us.preheader.i.i ] ; 7 uses
  %i.chb = load i8, ptr %i.bkw, align 8, !tbaa !114, !range !115, !noundef !116
  %i.chc = trunc nuw i8 %i.chb to i1
  br i1 %i.chc, label %bb.lc, label %_ZN4llvmeqENS_9StringRefES0_.exit.us.i.i

bb.lc:                                            ; preds = %.lr.ph140.split.us.i.i
  %.sroa.216.0.copyload.us.i.i = load i64, ptr %.sroa.216.0..sroa_idx.i.i, align 8, !tbaa !41
  %.not.i.us.i.i = icmp eq i64 %.sroa.216.0.copyload.us.i.i, 7
  br i1 %.not.i.us.i.i, label %bb.ld, label %_ZN4llvmeqENS_9StringRefES0_.exit.us.i.i

bb.ld:                                            ; preds = %bb.lc
  %.sroa.015.0.copyload.us.i.i = load ptr, ptr %i.cha, align 8, !tbaa !53 ; 2 uses
  %i.chd = load i32, ptr %.sroa.015.0.copyload.us.i.i, align 1
  %i.che = xor i32 %i.chd, 1853449262
  %i.chf = getelementptr i8, ptr %.sroa.015.0.copyload.us.i.i, i64 3
  %i.chg = load i32, ptr %i.chf, align 1
  %i.chh = xor i32 %i.chg, 1836675950
  %i.chi = or i32 %i.che, %i.chh
  %i.chj = icmp ne i32 %i.chi, 0
  %i.chk = zext i1 %i.chj to i32
  %i.chl = icmp eq i32 %i.chk, 0
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.us.i.i

_ZN4llvmeqENS_9StringRefES0_.exit.us.i.i:         ; preds = %bb.ld, %bb.lc, %.lr.ph140.split.us.i.i
  %i.chm = phi i1 [ false, %.lr.ph140.split.us.i.i ], [ %i.chl, %bb.ld ], [ false, %bb.lc ]
  %i.chn = getelementptr inbounds nuw i8, ptr %.sroa.0105.0135.us.i.i, i64 40
  %i.cho = load i8, ptr %i.chn, align 8, !tbaa !114, !range !115, !noundef !116
  %i.chp = trunc nuw i8 %i.cho to i1
  br i1 %i.chp, label %bb.le, label %bb.lf

bb.le:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.us.i.i
  %i.chq = getelementptr inbounds nuw i8, ptr %.sroa.0105.0135.us.i.i, i64 24
  %.sroa.08.0.copyload.us.i.i = load ptr, ptr %i.chq, align 8, !tbaa !53
  %.sroa.29.0..sroa_idx.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0105.0135.us.i.i, i64 32
  %.sroa.29.0.copyload.us.i.i = load i64, ptr %.sroa.29.0..sroa_idx.us.i.i, align 8, !tbaa !41
  %.sroa.0.0.copyload.us.i.i = load ptr, ptr %i.bki, align 8, !tbaa !53
  %.sroa.2.0.copyload.us.i.i145 = load i64, ptr %.sroa.267.0..sroa_idx.i130, align 8, !tbaa !41
  %i.chr = call fastcc noundef i32 @_ZN12_GLOBAL__N_18ELFStateIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb1EEEE13toSymbolIndexENS1_9StringRefES7_b(ptr noundef nonnull align 8 dereferenceable(456) %77, ptr %.sroa.08.0.copyload.us.i.i, i64 %.sroa.29.0.copyload.us.i.i, ptr %.sroa.0.0.copyload.us.i.i, i64 %.sroa.2.0.copyload.us.i.i145, i1 noundef zeroext %i.chm)
  br label %bb.lf

bb.lf:                                            ; preds = %bb.le, %_ZN4llvmeqENS_9StringRefES0_.exit.us.i.i
  %i.chs = phi i32 [ %i.chr, %bb.le ], [ 0, %_ZN4llvmeqENS_9StringRefES0_.exit.us.i.i ] ; 3 uses
  %i.cht = load i64, ptr %.sroa.0105.0135.us.i.i, align 8, !tbaa !41 ; 2 uses
  %i.chu = sub i64 %i.cht, %.083139.us.i.i
  %i.chv = lshr i64 %i.chu, %.0.lcssa.i310.i      ; 3 uses
  %i.chw = shl i64 %i.chv, 3
  %i.chx = icmp ne i32 %.087137.us.i.i, %i.chs
  %i.chy = zext i1 %i.chx to i64
  %i.chz = or disjoint i64 %i.chw, %i.chy
  %i.cia = getelementptr inbounds nuw i8, ptr %.sroa.0105.0135.us.i.i, i64 16 ; 3 uses
  %i.cib = load i32, ptr %i.cia, align 8, !tbaa !63
  %.not.us.i.i = icmp eq i32 %.090136.us.i.i, %i.cib
  %i.cic = select i1 %.not.us.i.i, i64 0, i64 2
  %i.cid = or disjoint i64 %i.chz, %i.cic
  %i.cie = getelementptr inbounds nuw i8, ptr %.sroa.0105.0135.us.i.i, i64 8 ; 3 uses
  %i.cif = load i64, ptr %i.cie, align 8, !tbaa !41
  %.not94.us.i.i = icmp eq i64 %.085138.us.i.i, %i.cif
  %i.cig = select i1 %.not94.us.i.i, i64 0, i64 4
  %i.cih = or disjoint i64 %i.cid, %i.cig         ; 3 uses
  %i.cii = icmp ult i64 %i.chv, 16
  %i.cij = call noundef zeroext i1 @_ZN4llvm4yaml25ContiguousBlobAccumulator10checkLimitEm(ptr noundef nonnull align 8 dereferenceable(232) %78, i64 noundef 1) #20 ; 2 uses
  br i1 %i.cii, label %bb.li, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  br i1 %i.cij, label %bb.lh, label %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeEh.exit99.us.i.i

bb.lh:                                            ; preds = %bb.lg
  %i.cik = trunc i64 %i.cih to i8
  %i.cil = or i8 %i.cik, -128
  %i.cim = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.ayz, i8 noundef zeroext %i.cil) #20 ; 0 uses
  br label %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeEh.exit99.us.i.i

_ZN4llvm4yaml25ContiguousBlobAccumulator5writeEh.exit99.us.i.i: ; preds = %bb.lh, %bb.lg
  %i.cin = lshr i64 %i.chv, 4
  %i.cio = call noundef i32 @_ZN4llvm4yaml25ContiguousBlobAccumulator12writeULEB128Em(ptr noundef nonnull align 8 dereferenceable(232) %78, i64 noundef %i.cin) #20 ; 0 uses
  br label %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeEh.exit.us.i.i

bb.li:                                            ; preds = %bb.lf
  br i1 %i.cij, label %bb.lj, label %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeEh.exit.us.i.i

bb.lj:                                            ; preds = %bb.li
  %i.cip = trunc nuw i64 %i.cih to i8
  %i.ciq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.ayz, i8 noundef zeroext %i.cip) #20 ; 0 uses
  br label %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeEh.exit.us.i.i

_ZN4llvm4yaml25ContiguousBlobAccumulator5writeEh.exit.us.i.i: ; preds = %bb.lj, %bb.li, %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeEh.exit99.us.i.i
  %i.cir = trunc i64 %i.cih to i32                ; 3 uses
  %i.cis = and i32 %i.cir, 1
  %.not95.us.i.i = icmp eq i32 %i.cis, 0
  br i1 %.not95.us.i.i, label %bb.ll, label %bb.lk

bb.lk:                                            ; preds = %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeEh.exit.us.i.i
  %i.cit = sub i32 %i.chs, %.087137.us.i.i
  %i.ciu = zext i32 %i.cit to i64
  %i.civ = call noundef i32 @_ZN4llvm4yaml25ContiguousBlobAccumulator12writeSLEB128El(ptr noundef nonnull align 8 dereferenceable(232) %78, i64 noundef %i.ciu) #20 ; 0 uses
  br label %bb.ll

bb.ll:                                            ; preds = %bb.lk, %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeEh.exit.us.i.i
  %.188.us.i.i = phi i32 [ %i.chs, %bb.lk ], [ %.087137.us.i.i, %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeEh.exit.us.i.i ]
  %i.ciw = and i32 %i.cir, 2
  %.not96.us.i.i = icmp eq i32 %i.ciw, 0
  br i1 %.not96.us.i.i, label %bb.ln, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %i.cix = load i32, ptr %i.cia, align 8, !tbaa !63
  %i.ciy = sub i32 %i.cix, %.090136.us.i.i
  %i.ciz = sext i32 %i.ciy to i64
  %i.cja = call noundef i32 @_ZN4llvm4yaml25ContiguousBlobAccumulator12writeSLEB128El(ptr noundef nonnull align 8 dereferenceable(232) %78, i64 noundef %i.ciz) #20 ; 0 uses
  %i.cjb = load i32, ptr %i.cia, align 8, !tbaa !63
  br label %bb.ln

bb.ln:                                            ; preds = %bb.lm, %bb.ll
  %.191.us.i.i = phi i32 [ %i.cjb, %bb.lm ], [ %.090136.us.i.i, %bb.ll ]
  %i.cjc = and i32 %i.cir, 4
  %.not97.us.i.i = icmp eq i32 %i.cjc, 0
  br i1 %.not97.us.i.i, label %bb.lp, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.cjd = load i64, ptr %i.cie, align 8, !tbaa !41
  %i.cje = sub i64 %i.cjd, %.085138.us.i.i
  %i.cjf = call noundef i32 @_ZN4llvm4yaml25ContiguousBlobAccumulator12writeSLEB128El(ptr noundef nonnull align 8 dereferenceable(232) %78, i64 noundef %i.cje) #20 ; 0 uses
  %i.cjg = load i64, ptr %i.cie, align 8, !tbaa !41
  br label %bb.lp

bb.lp:                                            ; preds = %bb.lo, %bb.ln
  %.2.us.i.i = phi i64 [ %.085138.us.i.i, %bb.ln ], [ %i.cjg, %bb.lo ]
  %i.cjh = getelementptr inbounds nuw i8, ptr %.sroa.0105.0135.us.i.i, i64 48 ; 2 uses
  %.not123.us.i.i = icmp eq ptr %i.cjh, %i.cgz
  br i1 %.not123.us.i.i, label %._crit_edge141.i.i, label %.lr.ph140.split.us.i.i

.lr.ph140.split.i.i:                              ; preds = %.thread.thread.i.i
  %i.cji = getelementptr inbounds nuw i8, ptr %i.bdh, i64 88 ; 2 uses
  %.sroa.216.0..sroa_idx167.i.i = getelementptr inbounds nuw i8, ptr %i.bdh, i64 96 ; 2 uses
  br i1 %i.cga, label %.lr.ph140.split.split.us.i.i, label %.lr.ph140.split.split.i.i

.lr.ph140.split.split.us.i.i:                     ; preds = %.lr.ph140.split.i.i, %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeEPKcm.exit.us.i.i
  %.sroa.0105.0135.us142.i.i = phi ptr [ %i.ckz, %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeEPKcm.exit.us.i.i ], [ %i.cgk, %.lr.ph140.split.i.i ] ; 7 uses
  %i.cjj = load i8, ptr %i.bkw, align 8, !tbaa !114, !range !115, !noundef !116
  %i.cjk = trunc nuw i8 %i.cjj to i1
  br i1 %i.cjk, label %bb.lq, label %_ZN4llvmeqENS_9StringRefES0_.exit.us147.i.i

bb.lq:                                            ; preds = %.lr.ph140.split.split.us.i.i
  %.sroa.216.0.copyload.us144.i.i = load i64, ptr %.sroa.216.0..sroa_idx167.i.i, align 8, !tbaa !41
  %.not.i.us145.i.i = icmp eq i64 %.sroa.216.0.copyload.us144.i.i, 7
  br i1 %.not.i.us145.i.i, label %bb.lr, label %_ZN4llvmeqENS_9StringRefES0_.exit.us147.i.i

bb.lr:                                            ; preds = %bb.lq
  %.sroa.015.0.copyload.us143.i.i = load ptr, ptr %i.cji, align 8, !tbaa !53 ; 2 uses
  %i.cjl = load i32, ptr %.sroa.015.0.copyload.us143.i.i, align 1
  %i.cjm = xor i32 %i.cjl, 1853449262
  %i.cjn = getelementptr i8, ptr %.sroa.015.0.copyload.us143.i.i, i64 3
  %i.cjo = load i32, ptr %i.cjn, align 1
  %i.cjp = xor i32 %i.cjo, 1836675950
  %i.cjq = or i32 %i.cjm, %i.cjp
  %i.cjr = icmp ne i32 %i.cjq, 0
  %i.cjs = zext i1 %i.cjr to i32
  %i.cjt = icmp eq i32 %i.cjs, 0
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.us147.i.i

_ZN4llvmeqENS_9StringRefES0_.exit.us147.i.i:      ; preds = %bb.lr, %bb.lq, %.lr.ph140.split.split.us.i.i
  %i.cju = phi i1 [ false, %.lr.ph140.split.split.us.i.i ], [ %i.cjt, %bb.lr ], [ false, %bb.lq ]
  %i.cjv = getelementptr inbounds nuw i8, ptr %.sroa.0105.0135.us142.i.i, i64 40
  %i.cjw = load i8, ptr %i.cjv, align 8, !tbaa !114, !range !115, !noundef !116
  %i.cjx = trunc nuw i8 %i.cjw to i1
  br i1 %i.cjx, label %bb.ls, label %bb.lt

bb.ls:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.us147.i.i
  %i.cjy = getelementptr inbounds nuw i8, ptr %.sroa.0105.0135.us142.i.i, i64 24
  %.sroa.08.0.copyload.us148.i.i = load ptr, ptr %i.cjy, align 8, !tbaa !53
  %.sroa.29.0..sroa_idx.us149.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0105.0135.us142.i.i, i64 32
  %.sroa.29.0.copyload.us150.i.i = load i64, ptr %.sroa.29.0..sroa_idx.us149.i.i, align 8, !tbaa !41
  %.sroa.0.0.copyload.us151.i.i = load ptr, ptr %i.bki, align 8, !tbaa !53
  %.sroa.2.0.copyload.us152.i.i = load i64, ptr %.sroa.267.0..sroa_idx.i130, align 8, !tbaa !41
  %i.cjz = call fastcc noundef i32 @_ZN12_GLOBAL__N_18ELFStateIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb1EEEE13toSymbolIndexENS1_9StringRefES7_b(ptr noundef nonnull align 8 dereferenceable(456) %77, ptr %.sroa.08.0.copyload.us148.i.i, i64 %.sroa.29.0.copyload.us150.i.i, ptr %.sroa.0.0.copyload.us151.i.i, i64 %.sroa.2.0.copyload.us152.i.i, i1 noundef zeroext %i.cju)
  %i.cka = zext i32 %i.cjz to i64
  br label %bb.lt

bb.lt:                                            ; preds = %bb.ls, %_ZN4llvmeqENS_9StringRefES0_.exit.us147.i.i
  %i.ckb = phi i64 [ %i.cka, %bb.ls ], [ 0, %_ZN4llvmeqENS_9StringRefES0_.exit.us147.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #20
  store i64 0, ptr %i.bce, align 8
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_18ELFStateIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE8writeELFERNS1_11raw_ostreamERNS1_7ELFYAML6ObjectENS1_12function_refIFvRKNS1_5TwineEEEEm:bb.a

_ZL12writeContentRN4llvm4yaml25ContiguousBlobAccumulatorERKSt8optionalINS0_9BinaryRefEERKS3_INS0_5Hex64EE.exit.i: ; preds = %_ZN4llvm4yaml25ContiguousBlobAccumulator10writeZerosEm.exit.i.i, %bb.kl
  %.010.i.i = phi i64 [ %i.cey, %_ZN4llvm4yaml25ContiguousBlobAccumulator10writeZerosEm.exit.i.i ], [ %.0.i.i291.i, %bb.kl ]
  %i.cez = getelementptr inbounds nuw i8, ptr %i.bkz, i64 32
  %i.cfa = call i64 @llvm.bswap.i64(i64 %.010.i.i)
  store i64 %i.cfa, ptr %i.cez, align 1
  %.pre511.i = load i32, ptr %i.bdm, align 8, !tbaa !62
  br label %bb.kn

bb.kn:                                            ; preds = %_ZL12writeContentRN4llvm4yaml25ContiguousBlobAccumulatorERKSt8optionalINS0_9BinaryRefEERKS3_INS0_5Hex64EE.exit.i, %bb.kk
  %i.cfb = phi i32 [ %.pre511.i, %_ZL12writeContentRN4llvm4yaml25ContiguousBlobAccumulatorERKSt8optionalINS0_9BinaryRefEERKS3_INS0_5Hex64EE.exit.i ], [ %i.cdc, %bb.kk ] ; 8 uses
  %i.cfc = icmp ne i32 %i.cfb, 2
  %.not196.i = or i1 %.not450.i, %i.cfc
  br i1 %.not196.i, label %bb.kq, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  %i.cfd = getelementptr i8, ptr %i.bdl, i64 288
  %.val224.i = load i8, ptr %i.cfd, align 8, !tbaa !124, !range !115, !noundef !116
  %i.cfe = trunc nuw i8 %.val224.i to i1
  br i1 %i.cfe, label %bb.kp, label %_ZN12_GLOBAL__N_18ELFStateIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE19writeSectionContentERNS2_13Elf_Shdr_ImplIS5_EERKNS1_7ELFYAML17RawContentSectionERNS1_4yaml25ContiguousBlobAccumulatorE.exit.i

bb.kp:                                            ; preds = %bb.ko
  %i.cff = getelementptr i8, ptr %i.bdl, i64 280
  %.val223.i = load i64, ptr %i.cff, align 8
  %i.cfg = trunc i64 %.val223.i to i32
  %i.cfh = getelementptr inbounds nuw i8, ptr %i.bkz, i64 44
  %i.cfi = call i32 @llvm.bswap.i32(i32 %i.cfg)
  store i32 %i.cfi, ptr %i.cfh, align 1
  br label %_ZN12_GLOBAL__N_18ELFStateIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE19writeSectionContentERNS2_13Elf_Shdr_ImplIS5_EERKNS1_7ELFYAML17RawContentSectionERNS1_4yaml25ContiguousBlobAccumulatorE.exit.i

bb.kq:                                            ; preds = %bb.kn
  %i.cfj = icmp ne i32 %i.cfb, 12
  %.not197.i = or i1 %.not450.i, %i.cfj
  br i1 %.not197.i, label %bb.ky, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.cfk = load i8, ptr %i.cef, align 8, !tbaa !131, !range !115, !noundef !116
  %i.cfl = trunc nuw i8 %i.cfk to i1
  br i1 %i.cfl, label %bb.kt, label %bb.ks

bb.ks:                                            ; preds = %bb.kr
  %i.cfm = getelementptr inbounds nuw i8, ptr %i.bdl, i64 176
  %i.cfn = load i8, ptr %i.cfm, align 8, !tbaa !124, !range !115, !noundef !116
  %i.cfo = trunc nuw i8 %i.cfn to i1
  br i1 %i.cfo, label %.thread.i300.i, label %bb.kv

bb.kt:                                            ; preds = %bb.kr
  %i.cfp = getelementptr inbounds nuw i8, ptr %i.bdl, i64 136
  call void @_ZN4llvm4yaml25ContiguousBlobAccumulator13writeAsBinaryERKNS0_9BinaryRefEm(ptr noundef nonnull align 8 dereferenceable(232) %78, ptr noundef nonnull align 8 dereferenceable(32) %i.cfp, i64 noundef -1) #20
  %i.cfq = getelementptr inbounds nuw i8, ptr %i.bdl, i64 152
  %i.cfr = load i8, ptr %i.cfq, align 8, !tbaa !249, !range !115, !noundef !116
  %i.cfs = getelementptr inbounds nuw i8, ptr %i.bdl, i64 144
  %i.cft = load i64, ptr %i.cfs, align 8
  %i.cfu = zext nneg i8 %i.cfr to i64
  %.0.i.i.i.i = lshr i64 %i.cft, %i.cfu           ; 2 uses
  %.phi.trans.insert.i301.i = getelementptr inbounds nuw i8, ptr %i.bdl, i64 176
  %.pre7.i302.i = load i8, ptr %.phi.trans.insert.i301.i, align 8, !tbaa !124, !range !115
  %i.cfv = trunc nuw i8 %.pre7.i302.i to i1
  br i1 %i.cfv, label %.thread.i300.i, label %_ZL12writeContentRN4llvm4yaml25ContiguousBlobAccumulatorERKSt8optionalINS0_9BinaryRefEERKS3_INS0_5Hex64EE.exit.i.i

.thread.i300.i:                                   ; preds = %bb.kt, %bb.ks
  %.0.i11.i.i = phi i64 [ %.0.i.i.i.i, %bb.kt ], [ 0, %bb.ks ]
  %i.cfw = getelementptr inbounds nuw i8, ptr %i.bdl, i64 168 ; 2 uses
  %i.cfx = load i64, ptr %i.cfw, align 8, !tbaa !41
  %i.cfy = sub i64 %i.cfx, %.0.i11.i.i            ; 2 uses
  %i.cfz = call noundef zeroext i1 @_ZN4llvm4yaml25ContiguousBlobAccumulator10checkLimitEm(ptr noundef nonnull align 8 dereferenceable(232) %78, i64 noundef %i.cfy) #20
  br i1 %i.cfz, label %bb.ku, label %_ZN4llvm4yaml25ContiguousBlobAccumulator10writeZerosEm.exit.i.i.i

bb.ku:                                            ; preds = %.thread.i300.i
  %i.cga = trunc i64 %i.cfy to i32
  %i.cgb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream11write_zerosEj(ptr noundef nonnull align 8 dereferenceable(48) %i.azd, i32 noundef %i.cga) #20 ; 0 uses
  br label %_ZN4llvm4yaml25ContiguousBlobAccumulator10writeZerosEm.exit.i.i.i

_ZN4llvm4yaml25ContiguousBlobAccumulator10writeZerosEm.exit.i.i.i: ; preds = %bb.ku, %.thread.i300.i
  %i.cgc = load i64, ptr %i.cfw, align 8, !tbaa !41
  br label %_ZL12writeContentRN4llvm4yaml25ContiguousBlobAccumulatorERKSt8optionalINS0_9BinaryRefEERKS3_INS0_5Hex64EE.exit.i.i

_ZL12writeContentRN4llvm4yaml25ContiguousBlobAccumulatorERKSt8optionalINS0_9BinaryRefEERKS3_INS0_5Hex64EE.exit.i.i: ; preds = %_ZN4llvm4yaml25ContiguousBlobAccumulator10writeZerosEm.exit.i.i.i, %bb.kt
  %.010.i.i.i = phi i64 [ %i.cgc, %_ZN4llvm4yaml25ContiguousBlobAccumulator10writeZerosEm.exit.i.i.i ], [ %.0.i.i.i.i, %bb.kt ]
  %i.cgd = getelementptr inbounds nuw i8, ptr %i.bkz, i64 32
  %i.cge = call i64 @llvm.bswap.i64(i64 %.010.i.i.i)
  store i64 %i.cge, ptr %i.cgd, align 1
  br label %_ZN12_GLOBAL__N_18ELFStateIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE19writeSectionContentERNS2_13Elf_Shdr_ImplIS5_EERKNS1_7ELFYAML17RawContentSectionERNS1_4yaml25ContiguousBlobAccumulatorE.exit.i

bb.kv:                                            ; preds = %bb.ks
  %i.cgf = getelementptr inbounds nuw i8, ptr %i.bdl, i64 280 ; 2 uses
  %i.cgg = getelementptr inbounds nuw i8, ptr %i.bdl, i64 304
  %i.cgh = load i8, ptr %i.cgg, align 8, !tbaa !309, !range !115, !noundef !116
  %i.cgi = trunc nuw i8 %i.cgh to i1
  br i1 %i.cgi, label %bb.kw, label %_ZN12_GLOBAL__N_18ELFStateIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE19writeSectionContentERNS2_13Elf_Shdr_ImplIS5_EERKNS1_7ELFYAML17RawContentSectionERNS1_4yaml25ContiguousBlobAccumulatorE.exit.i

bb.kw:                                            ; preds = %bb.kv
  %i.cgj = load ptr, ptr %i.cgf, align 8, !tbaa !310 ; 4 uses
  %i.cgk = getelementptr inbounds nuw i8, ptr %i.bdl, i64 288 ; 2 uses
  %i.cgl = load ptr, ptr %i.cgk, align 8, !tbaa !310 ; 2 uses
  %.not4.i294.i = icmp eq ptr %i.cgj, %i.cgl
  br i1 %.not4.i294.i, label %._crit_edge.i298.i, label %.lr.ph.i295.i

._crit_edge.loopexit.i.i:                         ; preds = %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeIjEEvT_NS_10endiannessE.exit.i.i
  %.pre.i297.i = load ptr, ptr %i.cgk, align 8, !tbaa !312
  %.pre6.i.i = load ptr, ptr %i.cgf, align 8, !tbaa !313
  br label %._crit_edge.i298.i

._crit_edge.i298.i:                               ; preds = %._crit_edge.loopexit.i.i, %bb.kw
  %i.cgm = phi ptr [ %.pre6.i.i, %._crit_edge.loopexit.i.i ], [ %i.cgj, %bb.kw ]
  %i.cgn = phi ptr [ %.pre.i297.i, %._crit_edge.loopexit.i.i ], [ %i.cgj, %bb.kw ]
  %i.cgo = ptrtoint ptr %i.cgn to i64
  %i.cgp = ptrtoint ptr %i.cgm to i64
  %i.cgq = sub i64 %i.cgo, %i.cgp
  %i.cgr = ashr exact i64 %i.cgq, 2
  %i.cgs = getelementptr inbounds nuw i8, ptr %i.bkz, i64 56
  %.0.copyload.i.i.i.i299.i = load i64, ptr %i.cgs, align 1
  %i.cgt = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.i.i299.i)
  %i.cgu = mul i64 %i.cgr, %i.cgt
  %i.cgv = getelementptr inbounds nuw i8, ptr %i.bkz, i64 32
  %i.cgw = call i64 @llvm.bswap.i64(i64 %i.cgu)
  store i64 %i.cgw, ptr %i.cgv, align 1
  br label %_ZN12_GLOBAL__N_18ELFStateIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE19writeSectionContentERNS2_13Elf_Shdr_ImplIS5_EERKNS1_7ELFYAML17RawContentSectionERNS1_4yaml25ContiguousBlobAccumulatorE.exit.i

.lr.ph.i295.i:                                    ; preds = %bb.kw, %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeIjEEvT_NS_10endiannessE.exit.i.i
  %.sroa.01.05.i.i = phi ptr [ %i.chb, %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeIjEEvT_NS_10endiannessE.exit.i.i ], [ %i.cgj, %bb.kw ] ; 2 uses
  %i.cgx = load i32, ptr %.sroa.01.05.i.i, align 4, !tbaa !63
  %i.cgy = call noundef zeroext i1 @_ZN4llvm4yaml25ContiguousBlobAccumulator10checkLimitEm(ptr noundef nonnull align 8 dereferenceable(232) %78, i64 noundef 4) #20
  br i1 %i.cgy, label %bb.kx, label %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeIjEEvT_NS_10endiannessE.exit.i.i

bb.kx:                                            ; preds = %.lr.ph.i295.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.cgz = call i32 @llvm.bswap.i32(i32 %i.cgx)
  store i32 %i.cgz, ptr %i.f, align 4, !tbaa !63
  %i.cha = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.azd, ptr noundef nonnull %i.f, i64 noundef 4) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeIjEEvT_NS_10endiannessE.exit.i.i

_ZN4llvm4yaml25ContiguousBlobAccumulator5writeIjEEvT_NS_10endiannessE.exit.i.i: ; preds = %bb.kx, %.lr.ph.i295.i
  %i.chb = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 4 ; 2 uses
  %.not.i296.i = icmp eq ptr %i.chb, %i.cgl
  br i1 %.not.i296.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i295.i

bb.ky:                                            ; preds = %bb.kq
  %i.chc = icmp ne i32 %i.cfb, 3
  %.not198.i = or i1 %.not450.i, %i.chc
  br i1 %.not198.i, label %bb.mg, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  %i.chd = getelementptr inbounds nuw i8, ptr %i.bdl, i64 320
  %i.che = load i64, ptr %i.chd, align 8, !tbaa !69 ; 2 uses
  %i.chf = icmp eq i64 %i.che, 0
  br i1 %i.chf, label %bb.lb, label %bb.la

bb.la:                                            ; preds = %bb.kz
  %i.chg = getelementptr inbounds nuw i8, ptr %i.bdl, i64 312
  %.sroa.055.0.copyload.i.i = load ptr, ptr %i.chg, align 8, !tbaa !53
  %.sroa.053.0.copyload.i.i = load ptr, ptr %i.bkm, align 8, !tbaa !53
  %.sroa.254.0.copyload.i.i = load i64, ptr %.sroa.267.0..sroa_idx.i130, align 8, !tbaa !41
  %i.chh = call fastcc noundef i32 @_ZN12_GLOBAL__N_18ELFStateIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE14toSectionIndexENS1_9StringRefES7_S7_(ptr noundef nonnull align 8 dereferenceable(456) %77, ptr %.sroa.055.0.copyload.i.i, i64 %i.che, ptr %.sroa.053.0.copyload.i.i, i64 %.sroa.254.0.copyload.i.i, ptr nonnull @.str, i64 0)
  %i.chi = getelementptr inbounds nuw i8, ptr %i.bkz, i64 44
  %i.chj = call i32 @llvm.bswap.i32(i32 %i.chh)
  store i32 %i.chj, ptr %i.chi, align 1
  br label %bb.lb

bb.lb:                                            ; preds = %bb.la, %bb.kz
  %i.chk = getelementptr inbounds nuw i8, ptr %i.bdl, i64 280 ; 2 uses
  %i.chl = getelementptr inbounds nuw i8, ptr %i.bdl, i64 304
  %i.chm = load i8, ptr %i.chl, align 8, !tbaa !315, !range !115, !noundef !116
  %i.chn = trunc nuw i8 %i.chm to i1
  br i1 %i.chn, label %bb.lc, label %_ZN12_GLOBAL__N_18ELFStateIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE19writeSectionContentERNS2_13Elf_Shdr_ImplIS5_EERKNS1_7ELFYAML17RawContentSectionERNS1_4yaml25ContiguousBlobAccumulatorE.exit.i

bb.lc:                                            ; preds = %bb.lb
  %i.cho = load i32, ptr %i.cai, align 4, !tbaa !163
  %.fr155.i.i = freeze i32 %i.cho                 ; 2 uses
  %i.chp = icmp eq i32 %.fr155.i.i, 1073741844
  %i.chq = icmp eq i32 %.fr155.i.i, 4
  %i.chr = load i64, ptr %78, align 8, !tbaa !229
  %i.chs = load ptr, ptr %i.azd, align 8, !tbaa !127
  %i.cht = getelementptr inbounds nuw i8, ptr %i.chs, i64 80
  %i.chu = load ptr, ptr %i.cht, align 8
  %i.chv = call noundef i64 %i.chu(ptr noundef nonnull align 8 dereferenceable(48) %i.azd) #20, !inline_history !1201
  %i.chw = load ptr, ptr %i.bbm, align 8, !tbaa !243
  %i.chx = load ptr, ptr %i.azh, align 8, !tbaa !244
  %i.chy = ptrtoint ptr %i.chw to i64
  %i.chz = ptrtoint ptr %i.chx to i64
  %i.cia = load ptr, ptr %i.chk, align 8, !tbaa !317 ; 5 uses
  %i.cib = getelementptr inbounds nuw i8, ptr %i.bdl, i64 288 ; 2 uses
  %i.cic = load ptr, ptr %i.cib, align 8, !tbaa !317 ; 5 uses
  %.not122131.i.i = icmp eq ptr %i.cia, %i.cic    ; 2 uses
  br i1 %i.chp, label %bb.ld, label %.thread.thread.i.i

bb.ld:                                            ; preds = %bb.lc
  br i1 %.not122131.i.i, label %.thread.i309.i, label %.lr.ph.i307.i

.lr.ph.i307.i:                                    ; preds = %bb.ld, %.lr.ph.i307.i
  %.0133.i.i = phi i64 [ %i.cie, %.lr.ph.i307.i ], [ 8, %bb.ld ]
  %.sroa.0109.0132.i.i = phi ptr [ %i.cif, %.lr.ph.i307.i ], [ %i.cia, %bb.ld ] ; 2 uses
  %i.cid = load i64, ptr %.sroa.0109.0132.i.i, align 8, !tbaa !41
  %i.cie = or i64 %i.cid, %.0133.i.i              ; 2 uses
  %i.cif = getelementptr inbounds nuw i8, ptr %.sroa.0109.0132.i.i, i64 48 ; 2 uses
  %.not122.i.i = icmp eq ptr %i.cif, %i.cic
  br i1 %.not122.i.i, label %._crit_edge.loopexit.i308.i, label %.lr.ph.i307.i

._crit_edge.loopexit.i308.i:                      ; preds = %.lr.ph.i307.i
  %i.cig = call range(i64 0, 4) i64 @llvm.cttz.i64(i64 %i.cie, i1 true)
  br label %.thread.i309.i

.thread.i309.i:                                   ; preds = %._crit_edge.loopexit.i308.i, %bb.ld
  %.0.lcssa.i310.i = phi i64 [ 3, %bb.ld ], [ %i.cig, %._crit_edge.loopexit.i308.i ] ; 2 uses
  %i.cih = ptrtoint ptr %i.cic to i64
  %i.cii = ptrtoint ptr %i.cia to i64
  %i.cij = sub i64 %i.cih, %i.cii
  %i.cik = sdiv exact i64 %i.cij, 48
  %i.cil = shl nsw i64 %i.cik, 3
  %i.cim = or disjoint i64 %.0.lcssa.i310.i, %i.cil
  %81 = or disjoint i64 %i.cim, 4
  %i.cin = call noundef i32 @_ZN4llvm4yaml25ContiguousBlobAccumulator12writeULEB128Em(ptr noundef nonnull align 8 dereferenceable(232) %78, i64 noundef %81) #20 ; 0 uses
  %i.cio = load ptr, ptr %i.chk, align 8, !tbaa !317 ; 2 uses
  %i.cip = load ptr, ptr %i.cib, align 8, !tbaa !317 ; 2 uses
  %.not123134.i.i = icmp eq ptr %i.cio, %i.cip
  br i1 %.not123134.i.i, label %._crit_edge141.i.i, label %.lr.ph140.split.us.preheader.i.i

.thread.thread.i.i:                               ; preds = %bb.lc
  br i1 %.not122131.i.i, label %._crit_edge141.i.i, label %.lr.ph140.split.i.i

.lr.ph140.split.us.preheader.i.i:                 ; preds = %.thread.i309.i
  %i.ciq = getelementptr inbounds nuw i8, ptr %i.bdl, i64 88
  %.sroa.216.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bdl, i64 96
  br label %.lr.ph140.split.us.i.i

.lr.ph140.split.us.i.i:                           ; preds = %bb.lr, %.lr.ph140.split.us.preheader.i.i
  %.083139.us.i.i = phi i64 [ %i.cjj, %bb.lr ], [ 0, %.lr.ph140.split.us.preheader.i.i ]
  %.085138.us.i.i = phi i64 [ %.2.us.i.i, %bb.lr ], [ 0, %.lr.ph140.split.us.preheader.i.i ] ; 3 uses
  %.087137.us.i.i = phi i32 [ %.188.us.i.i, %bb.lr ], [ 0, %.lr.ph140.split.us.preheader.i.i ] ; 3 uses
  %.090136.us.i.i = phi i32 [ %.191.us.i.i, %bb.lr ], [ 0, %.lr.ph140.split.us.preheader.i.i ] ; 3 uses
  %.sroa.0105.0135.us.i.i = phi ptr [ %i.ckx, %bb.lr ], [ %i.cio, %.lr.ph140.split.us.preheader.i.i ] ; 7 uses
  %i.cir = load i8, ptr %i.bla, align 8, !tbaa !114, !range !115, !noundef !116
  %i.cis = trunc nuw i8 %i.cir to i1
  br i1 %i.cis, label %bb.le, label %_ZN4llvmeqENS_9StringRefES0_.exit.us.i.i

bb.le:                                            ; preds = %.lr.ph140.split.us.i.i
  %.sroa.216.0.copyload.us.i.i = load i64, ptr %.sroa.216.0..sroa_idx.i.i, align 8, !tbaa !41
  %.not.i.us.i.i = icmp eq i64 %.sroa.216.0.copyload.us.i.i, 7
  br i1 %.not.i.us.i.i, label %bb.lf, label %_ZN4llvmeqENS_9StringRefES0_.exit.us.i.i

bb.lf:                                            ; preds = %bb.le
  %.sroa.015.0.copyload.us.i.i = load ptr, ptr %i.ciq, align 8, !tbaa !53 ; 2 uses
  %i.cit = load i32, ptr %.sroa.015.0.copyload.us.i.i, align 1
  %i.ciu = xor i32 %i.cit, 1853449262
  %i.civ = getelementptr i8, ptr %.sroa.015.0.copyload.us.i.i, i64 3
  %i.ciw = load i32, ptr %i.civ, align 1
  %i.cix = xor i32 %i.ciw, 1836675950
  %i.ciy = or i32 %i.ciu, %i.cix
  %i.ciz = icmp ne i32 %i.ciy, 0
  %i.cja = zext i1 %i.ciz to i32
  %i.cjb = icmp eq i32 %i.cja, 0
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.us.i.i

_ZN4llvmeqENS_9StringRefES0_.exit.us.i.i:         ; preds = %bb.lf, %bb.le, %.lr.ph140.split.us.i.i
  %i.cjc = phi i1 [ false, %.lr.ph140.split.us.i.i ], [ %i.cjb, %bb.lf ], [ false, %bb.le ]
  %i.cjd = getelementptr inbounds nuw i8, ptr %.sroa.0105.0135.us.i.i, i64 40
  %i.cje = load i8, ptr %i.cjd, align 8, !tbaa !114, !range !115, !noundef !116
  %i.cjf = trunc nuw i8 %i.cje to i1
  br i1 %i.cjf, label %bb.lg, label %bb.lh

bb.lg:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.us.i.i
  %i.cjg = getelementptr inbounds nuw i8, ptr %.sroa.0105.0135.us.i.i, i64 24
  %.sroa.08.0.copyload.us.i.i = load ptr, ptr %i.cjg, align 8, !tbaa !53
  %.sroa.29.0..sroa_idx.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0105.0135.us.i.i, i64 32
  %.sroa.29.0.copyload.us.i.i = load i64, ptr %.sroa.29.0..sroa_idx.us.i.i, align 8, !tbaa !41
  %.sroa.0.0.copyload.us.i.i = load ptr, ptr %i.bkm, align 8, !tbaa !53
  %.sroa.2.0.copyload.us.i.i145 = load i64, ptr %.sroa.267.0..sroa_idx.i130, align 8, !tbaa !41
  %i.cjh = call fastcc noundef i32 @_ZN12_GLOBAL__N_18ELFStateIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE13toSymbolIndexENS1_9StringRefES7_b(ptr noundef nonnull align 8 dereferenceable(456) %77, ptr %.sroa.08.0.copyload.us.i.i, i64 %.sroa.29.0.copyload.us.i.i, ptr %.sroa.0.0.copyload.us.i.i, i64 %.sroa.2.0.copyload.us.i.i145, i1 noundef zeroext %i.cjc)
  br label %bb.lh

bb.lh:                                            ; preds = %bb.lg, %_ZN4llvmeqENS_9StringRefES0_.exit.us.i.i
  %i.cji = phi i32 [ %i.cjh, %bb.lg ], [ 0, %_ZN4llvmeqENS_9StringRefES0_.exit.us.i.i ] ; 3 uses
  %i.cjj = load i64, ptr %.sroa.0105.0135.us.i.i, align 8, !tbaa !41 ; 2 uses
  %i.cjk = sub i64 %i.cjj, %.083139.us.i.i
  %i.cjl = lshr i64 %i.cjk, %.0.lcssa.i310.i      ; 3 uses
  %i.cjm = shl i64 %i.cjl, 3
  %i.cjn = icmp ne i32 %.087137.us.i.i, %i.cji
  %i.cjo = zext i1 %i.cjn to i64
  %i.cjp = or disjoint i64 %i.cjm, %i.cjo
  %i.cjq = getelementptr inbounds nuw i8, ptr %.sroa.0105.0135.us.i.i, i64 16 ; 3 uses
  %i.cjr = load i32, ptr %i.cjq, align 8, !tbaa !63
  %.not.us.i.i = icmp eq i32 %.090136.us.i.i, %i.cjr
  %i.cjs = select i1 %.not.us.i.i, i64 0, i64 2
  %i.cjt = or disjoint i64 %i.cjp, %i.cjs
  %i.cju = getelementptr inbounds nuw i8, ptr %.sroa.0105.0135.us.i.i, i64 8 ; 3 uses
  %i.cjv = load i64, ptr %i.cju, align 8, !tbaa !41
  %.not94.us.i.i = icmp eq i64 %.085138.us.i.i, %i.cjv
  %i.cjw = select i1 %.not94.us.i.i, i64 0, i64 4
  %i.cjx = or disjoint i64 %i.cjt, %i.cjw         ; 3 uses
  %i.cjy = icmp ult i64 %i.cjl, 16
  %i.cjz = call noundef zeroext i1 @_ZN4llvm4yaml25ContiguousBlobAccumulator10checkLimitEm(ptr noundef nonnull align 8 dereferenceable(232) %78, i64 noundef 1) #20 ; 2 uses
  br i1 %i.cjy, label %bb.lk, label %bb.li

bb.li:                                            ; preds = %bb.lh
  br i1 %i.cjz, label %bb.lj, label %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeEh.exit99.us.i.i

bb.lj:                                            ; preds = %bb.li
  %i.cka = trunc i64 %i.cjx to i8
  %i.ckb = or i8 %i.cka, -128
  %i.ckc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.azd, i8 noundef zeroext %i.ckb) #20 ; 0 uses
  br label %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeEh.exit99.us.i.i

_ZN4llvm4yaml25ContiguousBlobAccumulator5writeEh.exit99.us.i.i: ; preds = %bb.lj, %bb.li
  %i.ckd = lshr i64 %i.cjl, 4
  %i.cke = call noundef i32 @_ZN4llvm4yaml25ContiguousBlobAccumulator12writeULEB128Em(ptr noundef nonnull align 8 dereferenceable(232) %78, i64 noundef %i.ckd) #20 ; 0 uses
  br label %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeEh.exit.us.i.i

bb.lk:                                            ; preds = %bb.lh
  br i1 %i.cjz, label %bb.ll, label %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeEh.exit.us.i.i

bb.ll:                                            ; preds = %bb.lk
  %i.ckf = trunc nuw i64 %i.cjx to i8
  %i.ckg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.azd, i8 noundef zeroext %i.ckf) #20 ; 0 uses
  br label %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeEh.exit.us.i.i

_ZN4llvm4yaml25ContiguousBlobAccumulator5writeEh.exit.us.i.i: ; preds = %bb.ll, %bb.lk, %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeEh.exit99.us.i.i
  %i.ckh = trunc i64 %i.cjx to i32                ; 3 uses
  %i.cki = and i32 %i.ckh, 1
  %.not95.us.i.i = icmp eq i32 %i.cki, 0
  br i1 %.not95.us.i.i, label %bb.ln, label %bb.lm

bb.lm:                                            ; preds = %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeEh.exit.us.i.i
  %i.ckj = sub i32 %i.cji, %.087137.us.i.i
  %i.ckk = zext i32 %i.ckj to i64
  %i.ckl = call noundef i32 @_ZN4llvm4yaml25ContiguousBlobAccumulator12writeSLEB128El(ptr noundef nonnull align 8 dereferenceable(232) %78, i64 noundef %i.ckk) #20 ; 0 uses
  br label %bb.ln

bb.ln:                                            ; preds = %bb.lm, %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeEh.exit.us.i.i
  %.188.us.i.i = phi i32 [ %i.cji, %bb.lm ], [ %.087137.us.i.i, %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeEh.exit.us.i.i ]
  %i.ckm = and i32 %i.ckh, 2
  %.not96.us.i.i = icmp eq i32 %i.ckm, 0
  br i1 %.not96.us.i.i, label %bb.lp, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.ckn = load i32, ptr %i.cjq, align 8, !tbaa !63
  %i.cko = sub i32 %i.ckn, %.090136.us.i.i
  %i.ckp = sext i32 %i.cko to i64
  %i.ckq = call noundef i32 @_ZN4llvm4yaml25ContiguousBlobAccumulator12writeSLEB128El(ptr noundef nonnull align 8 dereferenceable(232) %78, i64 noundef %i.ckp) #20 ; 0 uses
  %i.ckr = load i32, ptr %i.cjq, align 8, !tbaa !63
  br label %bb.lp

bb.lp:                                            ; preds = %bb.lo, %bb.ln
  %.191.us.i.i = phi i32 [ %i.ckr, %bb.lo ], [ %.090136.us.i.i, %bb.ln ]
  %i.cks = and i32 %i.ckh, 4
  %.not97.us.i.i = icmp eq i32 %i.cks, 0
  br i1 %.not97.us.i.i, label %bb.lr, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  %i.ckt = load i64, ptr %i.cju, align 8, !tbaa !41
  %i.cku = sub i64 %i.ckt, %.085138.us.i.i
  %i.ckv = call noundef i32 @_ZN4llvm4yaml25ContiguousBlobAccumulator12writeSLEB128El(ptr noundef nonnull align 8 dereferenceable(232) %78, i64 noundef %i.cku) #20 ; 0 uses
  %i.ckw = load i64, ptr %i.cju, align 8, !tbaa !41
  br label %bb.lr

bb.lr:                                            ; preds = %bb.lq, %bb.lp
  %.2.us.i.i = phi i64 [ %.085138.us.i.i, %bb.lp ], [ %i.ckw, %bb.lq ]
  %i.ckx = getelementptr inbounds nuw i8, ptr %.sroa.0105.0135.us.i.i, i64 48 ; 2 uses
  %.not123.us.i.i = icmp eq ptr %i.ckx, %i.cip
  br i1 %.not123.us.i.i, label %._crit_edge141.i.i, label %.lr.ph140.split.us.i.i

.lr.ph140.split.i.i:                              ; preds = %.thread.thread.i.i
  %i.cky = getelementptr inbounds nuw i8, ptr %i.bdl, i64 88 ; 2 uses
  %.sroa.216.0..sroa_idx167.i.i = getelementptr inbounds nuw i8, ptr %i.bdl, i64 96 ; 2 uses
  br i1 %i.chq, label %.lr.ph140.split.split.us.i.i, label %.lr.ph140.split.split.i.i

.lr.ph140.split.split.us.i.i:                     ; preds = %.lr.ph140.split.i.i, %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeEPKcm.exit.us.i.i
  %.sroa.0105.0135.us142.i.i = phi ptr [ %i.cms, %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeEPKcm.exit.us.i.i ], [ %i.cia, %.lr.ph140.split.i.i ] ; 7 uses
  %i.ckz = load i8, ptr %i.bla, align 8, !tbaa !114, !range !115, !noundef !116
  %i.cla = trunc nuw i8 %i.ckz to i1
  br i1 %i.cla, label %bb.ls, label %_ZN4llvmeqENS_9StringRefES0_.exit.us147.i.i

bb.ls:                                            ; preds = %.lr.ph140.split.split.us.i.i
  %.sroa.216.0.copyload.us144.i.i = load i64, ptr %.sroa.216.0..sroa_idx167.i.i, align 8, !tbaa !41
  %.not.i.us145.i.i = icmp eq i64 %.sroa.216.0.copyload.us144.i.i, 7
  br i1 %.not.i.us145.i.i, label %bb.lt, label %_ZN4llvmeqENS_9StringRefES0_.exit.us147.i.i

bb.lt:                                            ; preds = %bb.ls
  %.sroa.015.0.copyload.us143.i.i = load ptr, ptr %i.cky, align 8, !tbaa !53 ; 2 uses
  %i.clb = load i32, ptr %.sroa.015.0.copyload.us143.i.i, align 1
  %i.clc = xor i32 %i.clb, 1853449262
  %i.cld = getelementptr i8, ptr %.sroa.015.0.copyload.us143.i.i, i64 3
  %i.cle = load i32, ptr %i.cld, align 1
  %i.clf = xor i32 %i.cle, 1836675950
  %i.clg = or i32 %i.clc, %i.clf
  %i.clh = icmp ne i32 %i.clg, 0
  %i.cli = zext i1 %i.clh to i32
  %i.clj = icmp eq i32 %i.cli, 0
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.us147.i.i

_ZN4llvmeqENS_9StringRefES0_.exit.us147.i.i:      ; preds = %bb.lt, %bb.ls, %.lr.ph140.split.split.us.i.i
  %i.clk = phi i1 [ false, %.lr.ph140.split.split.us.i.i ], [ %i.clj, %bb.lt ], [ false, %bb.ls ]
  %i.cll = getelementptr inbounds nuw i8, ptr %.sroa.0105.0135.us142.i.i, i64 40
  %i.clm = load i8, ptr %i.cll, align 8, !tbaa !114, !range !115, !noundef !116
  %i.cln = trunc nuw i8 %i.clm to i1
  br i1 %i.cln, label %bb.lu, label %bb.lv

bb.lu:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.us147.i.i
  %i.clo = getelementptr inbounds nuw i8, ptr %.sroa.0105.0135.us142.i.i, i64 24
  %.sroa.08.0.copyload.us148.i.i = load ptr, ptr %i.clo, align 8, !tbaa !53
  %.sroa.29.0..sroa_idx.us149.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0105.0135.us142.i.i, i64 32
  %.sroa.29.0.copyload.us150.i.i = load i64, ptr %.sroa.29.0..sroa_idx.us149.i.i, align 8, !tbaa !41
  %.sroa.0.0.copyload.us151.i.i = load ptr, ptr %i.bkm, align 8, !tbaa !53
  %.sroa.2.0.copyload.us152.i.i = load i64, ptr %.sroa.267.0..sroa_idx.i130, align 8, !tbaa !41
  %i.clp = call fastcc noundef i32 @_ZN12_GLOBAL__N_18ELFStateIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE13toSymbolIndexENS1_9StringRefES7_b(ptr noundef nonnull align 8 dereferenceable(456) %77, ptr %.sroa.08.0.copyload.us148.i.i, i64 %.sroa.29.0.copyload.us150.i.i, ptr %.sroa.0.0.copyload.us151.i.i, i64 %.sroa.2.0.copyload.us152.i.i, i1 noundef zeroext %i.clk)
  %i.clq = zext i32 %i.clp to i64
  br label %bb.lv

bb.lv:                                            ; preds = %bb.lu, %_ZN4llvmeqENS_9StringRefES0_.exit.us147.i.i
  %i.clr = phi i64 [ %i.clq, %bb.lu ], [ 0, %_ZN4llvmeqENS_9StringRefES0_.exit.us147.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #20
  store i64 0, ptr %i.bci, align 8
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_18ELFStateIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb0EEEE8writeELFERNS1_11raw_ostreamERNS1_7ELFYAML6ObjectENS1_12function_refIFvRKNS1_5TwineEEEEm:bb.a
  %i.ceu = load i64, ptr %i.ceo, align 8, !tbaa !41
  br label %_ZL12writeContentRN4llvm4yaml25ContiguousBlobAccumulatorERKSt8optionalINS0_9BinaryRefEERKS3_INS0_5Hex64EE.exit.i

_ZL12writeContentRN4llvm4yaml25ContiguousBlobAccumulatorERKSt8optionalINS0_9BinaryRefEERKS3_INS0_5Hex64EE.exit.i: ; preds = %_ZN4llvm4yaml25ContiguousBlobAccumulator10writeZerosEm.exit.i.i, %bb.kj
  %.010.i.i = phi i64 [ %i.ceu, %_ZN4llvm4yaml25ContiguousBlobAccumulator10writeZerosEm.exit.i.i ], [ %.0.i.i292.i, %bb.kj ]
  %i.cev = trunc i64 %.010.i.i to i32
  %i.cew = getelementptr inbounds nuw i8, ptr %i.ble, i64 20
  store i32 %i.cev, ptr %i.cew, align 1
  %.pre518.i = load i32, ptr %i.bdr, align 8, !tbaa !62
  br label %bb.kl

bb.kl:                                            ; preds = %_ZL12writeContentRN4llvm4yaml25ContiguousBlobAccumulatorERKSt8optionalINS0_9BinaryRefEERKS3_INS0_5Hex64EE.exit.i, %bb.ki
  %i.cex = phi i32 [ %.pre518.i, %_ZL12writeContentRN4llvm4yaml25ContiguousBlobAccumulatorERKSt8optionalINS0_9BinaryRefEERKS3_INS0_5Hex64EE.exit.i ], [ %i.ccz, %bb.ki ] ; 8 uses
  %i.cey = icmp ne i32 %i.cex, 2
  %.not196.i143 = or i1 %.not457.i, %i.cey
  br i1 %.not196.i143, label %bb.ko, label %bb.km

bb.km:                                            ; preds = %bb.kl
  %i.cez = getelementptr i8, ptr %i.bdq, i64 288
  %.val224.i = load i8, ptr %i.cez, align 8, !tbaa !124, !range !115, !noundef !116
  %i.cfa = trunc nuw i8 %.val224.i to i1
  br i1 %i.cfa, label %bb.kn, label %_ZN12_GLOBAL__N_18ELFStateIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb0EEEE19writeSectionContentERNS2_13Elf_Shdr_ImplIS5_EERKNS1_7ELFYAML17RawContentSectionERNS1_4yaml25ContiguousBlobAccumulatorE.exit.i

bb.kn:                                            ; preds = %bb.km
  %i.cfb = getelementptr i8, ptr %i.bdq, i64 280
  %.val223.i = load i64, ptr %i.cfb, align 8
  %i.cfc = trunc i64 %.val223.i to i32
  %i.cfd = getelementptr inbounds nuw i8, ptr %i.ble, i64 28
  store i32 %i.cfc, ptr %i.cfd, align 1
  br label %_ZN12_GLOBAL__N_18ELFStateIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb0EEEE19writeSectionContentERNS2_13Elf_Shdr_ImplIS5_EERKNS1_7ELFYAML17RawContentSectionERNS1_4yaml25ContiguousBlobAccumulatorE.exit.i

bb.ko:                                            ; preds = %bb.kl
  %i.cfe = icmp ne i32 %i.cex, 12
  %.not197.i = or i1 %.not457.i, %i.cfe
  br i1 %.not197.i, label %bb.kw, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.cff = load i8, ptr %i.ceb, align 8, !tbaa !131, !range !115, !noundef !116
  %i.cfg = trunc nuw i8 %i.cff to i1
  br i1 %i.cfg, label %bb.kr, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %i.cfh = getelementptr inbounds nuw i8, ptr %i.bdq, i64 176
  %i.cfi = load i8, ptr %i.cfh, align 8, !tbaa !124, !range !115, !noundef !116
  %i.cfj = trunc nuw i8 %i.cfi to i1
  br i1 %i.cfj, label %.thread.i301.i, label %bb.kt

bb.kr:                                            ; preds = %bb.kp
  %i.cfk = getelementptr inbounds nuw i8, ptr %i.bdq, i64 136
  call void @_ZN4llvm4yaml25ContiguousBlobAccumulator13writeAsBinaryERKNS0_9BinaryRefEm(ptr noundef nonnull align 8 dereferenceable(232) %80, ptr noundef nonnull align 8 dereferenceable(32) %i.cfk, i64 noundef -1) #20
  %i.cfl = getelementptr inbounds nuw i8, ptr %i.bdq, i64 152
  %i.cfm = load i8, ptr %i.cfl, align 8, !tbaa !249, !range !115, !noundef !116
  %i.cfn = getelementptr inbounds nuw i8, ptr %i.bdq, i64 144
  %i.cfo = load i64, ptr %i.cfn, align 8
  %i.cfp = zext nneg i8 %i.cfm to i64
  %.0.i.i.i.i = lshr i64 %i.cfo, %i.cfp           ; 2 uses
  %.phi.trans.insert.i302.i = getelementptr inbounds nuw i8, ptr %i.bdq, i64 176
  %.pre7.i303.i = load i8, ptr %.phi.trans.insert.i302.i, align 8, !tbaa !124, !range !115
  %i.cfq = trunc nuw i8 %.pre7.i303.i to i1
  br i1 %i.cfq, label %.thread.i301.i, label %_ZL12writeContentRN4llvm4yaml25ContiguousBlobAccumulatorERKSt8optionalINS0_9BinaryRefEERKS3_INS0_5Hex64EE.exit.i.i

.thread.i301.i:                                   ; preds = %bb.kr, %bb.kq
  %.0.i11.i.i = phi i64 [ %.0.i.i.i.i, %bb.kr ], [ 0, %bb.kq ]
  %i.cfr = getelementptr inbounds nuw i8, ptr %i.bdq, i64 168 ; 2 uses
  %i.cfs = load i64, ptr %i.cfr, align 8, !tbaa !41
  %i.cft = sub i64 %i.cfs, %.0.i11.i.i            ; 2 uses
  %i.cfu = call noundef zeroext i1 @_ZN4llvm4yaml25ContiguousBlobAccumulator10checkLimitEm(ptr noundef nonnull align 8 dereferenceable(232) %80, i64 noundef %i.cft) #20
  br i1 %i.cfu, label %bb.ks, label %_ZN4llvm4yaml25ContiguousBlobAccumulator10writeZerosEm.exit.i.i.i

bb.ks:                                            ; preds = %.thread.i301.i
  %i.cfv = trunc i64 %i.cft to i32
  %i.cfw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream11write_zerosEj(ptr noundef nonnull align 8 dereferenceable(48) %i.azb, i32 noundef %i.cfv) #20 ; 0 uses
  br label %_ZN4llvm4yaml25ContiguousBlobAccumulator10writeZerosEm.exit.i.i.i

_ZN4llvm4yaml25ContiguousBlobAccumulator10writeZerosEm.exit.i.i.i: ; preds = %bb.ks, %.thread.i301.i
  %i.cfx = load i64, ptr %i.cfr, align 8, !tbaa !41
  br label %_ZL12writeContentRN4llvm4yaml25ContiguousBlobAccumulatorERKSt8optionalINS0_9BinaryRefEERKS3_INS0_5Hex64EE.exit.i.i

_ZL12writeContentRN4llvm4yaml25ContiguousBlobAccumulatorERKSt8optionalINS0_9BinaryRefEERKS3_INS0_5Hex64EE.exit.i.i: ; preds = %_ZN4llvm4yaml25ContiguousBlobAccumulator10writeZerosEm.exit.i.i.i, %bb.kr
  %.010.i.i.i = phi i64 [ %i.cfx, %_ZN4llvm4yaml25ContiguousBlobAccumulator10writeZerosEm.exit.i.i.i ], [ %.0.i.i.i.i, %bb.kr ]
  %i.cfy = trunc i64 %.010.i.i.i to i32
  br label %.sink.split.i.i

bb.kt:                                            ; preds = %bb.kq
  %i.cfz = getelementptr inbounds nuw i8, ptr %i.bdq, i64 280 ; 2 uses
  %i.cga = getelementptr inbounds nuw i8, ptr %i.bdq, i64 304
  %i.cgb = load i8, ptr %i.cga, align 8, !tbaa !309, !range !115, !noundef !116
  %i.cgc = trunc nuw i8 %i.cgb to i1
  br i1 %i.cgc, label %bb.ku, label %_ZN12_GLOBAL__N_18ELFStateIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb0EEEE19writeSectionContentERNS2_13Elf_Shdr_ImplIS5_EERKNS1_7ELFYAML17RawContentSectionERNS1_4yaml25ContiguousBlobAccumulatorE.exit.i

bb.ku:                                            ; preds = %bb.kt
  %i.cgd = load ptr, ptr %i.cfz, align 8, !tbaa !310 ; 4 uses
  %i.cge = getelementptr inbounds nuw i8, ptr %i.bdq, i64 288 ; 2 uses
  %i.cgf = load ptr, ptr %i.cge, align 8, !tbaa !310 ; 2 uses
  %.not4.i295.i = icmp eq ptr %i.cgd, %i.cgf
  br i1 %.not4.i295.i, label %._crit_edge.i299.i, label %.lr.ph.i296.i

._crit_edge.loopexit.i.i:                         ; preds = %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeIjEEvT_NS_10endiannessE.exit.i.i
  %.pre.i298.i = load ptr, ptr %i.cge, align 8, !tbaa !312
  %.pre6.i.i = load ptr, ptr %i.cfz, align 8, !tbaa !313
  br label %._crit_edge.i299.i

._crit_edge.i299.i:                               ; preds = %._crit_edge.loopexit.i.i, %bb.ku
  %i.cgg = phi ptr [ %.pre6.i.i, %._crit_edge.loopexit.i.i ], [ %i.cgd, %bb.ku ]
  %i.cgh = phi ptr [ %.pre.i298.i, %._crit_edge.loopexit.i.i ], [ %i.cgd, %bb.ku ]
  %i.cgi = ptrtoint ptr %i.cgh to i64
  %i.cgj = ptrtoint ptr %i.cgg to i64
  %i.cgk = sub i64 %i.cgi, %i.cgj
  %i.cgl = lshr exact i64 %i.cgk, 2
  %.0.copyload.i.i.i.i300.i = load i32, ptr %i.bmy, align 1
  %i.cgm = trunc i64 %i.cgl to i32
  %i.cgn = mul i32 %.0.copyload.i.i.i.i300.i, %i.cgm
  br label %.sink.split.i.i

.lr.ph.i296.i:                                    ; preds = %bb.ku, %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeIjEEvT_NS_10endiannessE.exit.i.i
  %.sroa.01.05.i.i = phi ptr [ %i.cgr, %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeIjEEvT_NS_10endiannessE.exit.i.i ], [ %i.cgd, %bb.ku ] ; 2 uses
  %i.cgo = load i32, ptr %.sroa.01.05.i.i, align 4, !tbaa !63
  %i.cgp = call noundef zeroext i1 @_ZN4llvm4yaml25ContiguousBlobAccumulator10checkLimitEm(ptr noundef nonnull align 8 dereferenceable(232) %80, i64 noundef 4) #20
  br i1 %i.cgp, label %bb.kv, label %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeIjEEvT_NS_10endiannessE.exit.i.i

bb.kv:                                            ; preds = %.lr.ph.i296.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 %i.cgo, ptr %i.f, align 4, !tbaa !63
  %i.cgq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.azb, ptr noundef nonnull %i.f, i64 noundef 4) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeIjEEvT_NS_10endiannessE.exit.i.i

_ZN4llvm4yaml25ContiguousBlobAccumulator5writeIjEEvT_NS_10endiannessE.exit.i.i: ; preds = %bb.kv, %.lr.ph.i296.i
  %i.cgr = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 4 ; 2 uses
  %.not.i297.i = icmp eq ptr %i.cgr, %i.cgf
  br i1 %.not.i297.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i296.i

.sink.split.i.i:                                  ; preds = %._crit_edge.i299.i, %_ZL12writeContentRN4llvm4yaml25ContiguousBlobAccumulatorERKSt8optionalINS0_9BinaryRefEERKS3_INS0_5Hex64EE.exit.i.i
  %.sink.i.i = phi i32 [ %i.cgn, %._crit_edge.i299.i ], [ %i.cfy, %_ZL12writeContentRN4llvm4yaml25ContiguousBlobAccumulatorERKSt8optionalINS0_9BinaryRefEERKS3_INS0_5Hex64EE.exit.i.i ]
  %i.cgs = getelementptr inbounds nuw i8, ptr %i.ble, i64 20
  store i32 %.sink.i.i, ptr %i.cgs, align 1
  br label %_ZN12_GLOBAL__N_18ELFStateIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb0EEEE19writeSectionContentERNS2_13Elf_Shdr_ImplIS5_EERKNS1_7ELFYAML17RawContentSectionERNS1_4yaml25ContiguousBlobAccumulatorE.exit.i

bb.kw:                                            ; preds = %bb.ko
  %i.cgt = icmp ne i32 %i.cex, 3
  %.not198.i = or i1 %.not457.i, %i.cgt
  br i1 %.not198.i, label %bb.ly, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  %i.cgu = getelementptr inbounds nuw i8, ptr %i.bdq, i64 320
  %i.cgv = load i64, ptr %i.cgu, align 8, !tbaa !69 ; 2 uses
  %i.cgw = icmp eq i64 %i.cgv, 0
  br i1 %i.cgw, label %bb.kz, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.cgx = getelementptr inbounds nuw i8, ptr %i.bdq, i64 312
  %.sroa.055.0.copyload.i.i = load ptr, ptr %i.cgx, align 8, !tbaa !53
  %.sroa.053.0.copyload.i.i = load ptr, ptr %i.bkr, align 8, !tbaa !53
  %.sroa.254.0.copyload.i.i = load i64, ptr %.sroa.267.0..sroa_idx.i131, align 8, !tbaa !41
  %i.cgy = call fastcc noundef i32 @_ZN12_GLOBAL__N_18ELFStateIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb0EEEE14toSectionIndexENS1_9StringRefES7_S7_(ptr noundef nonnull align 8 dereferenceable(456) %79, ptr %.sroa.055.0.copyload.i.i, i64 %i.cgv, ptr %.sroa.053.0.copyload.i.i, i64 %.sroa.254.0.copyload.i.i, ptr nonnull @.str, i64 0)
  %i.cgz = getelementptr inbounds nuw i8, ptr %i.ble, i64 28
  store i32 %i.cgy, ptr %i.cgz, align 1
  br label %bb.kz

bb.kz:                                            ; preds = %bb.ky, %bb.kx
  %i.cha = getelementptr inbounds nuw i8, ptr %i.bdq, i64 280 ; 2 uses
  %i.chb = getelementptr inbounds nuw i8, ptr %i.bdq, i64 304
  %i.chc = load i8, ptr %i.chb, align 8, !tbaa !315, !range !115, !noundef !116
  %i.chd = trunc nuw i8 %i.chc to i1
  br i1 %i.chd, label %bb.la, label %_ZN12_GLOBAL__N_18ELFStateIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb0EEEE19writeSectionContentERNS2_13Elf_Shdr_ImplIS5_EERKNS1_7ELFYAML17RawContentSectionERNS1_4yaml25ContiguousBlobAccumulatorE.exit.i

bb.la:                                            ; preds = %bb.kz
  %i.che = load i32, ptr %i.cah, align 4, !tbaa !163
  %.fr144.i.i = freeze i32 %i.che                 ; 2 uses
  %i.chf = icmp eq i32 %.fr144.i.i, 1073741844
  %i.chg = icmp eq i32 %.fr144.i.i, 4
  %i.chh = load i64, ptr %80, align 8, !tbaa !229
  %i.chi = load ptr, ptr %i.azb, align 8, !tbaa !127
  %i.chj = getelementptr inbounds nuw i8, ptr %i.chi, i64 80
  %i.chk = load ptr, ptr %i.chj, align 8
  %i.chl = call noundef i64 %i.chk(ptr noundef nonnull align 8 dereferenceable(48) %i.azb) #20, !inline_history !1539
  %i.chm = load ptr, ptr %i.bbk, align 8, !tbaa !243
  %i.chn = load ptr, ptr %i.azf, align 8, !tbaa !244
  %i.cho = ptrtoint ptr %i.chm to i64
  %i.chp = ptrtoint ptr %i.chn to i64
  %i.chq = load ptr, ptr %i.cha, align 8, !tbaa !317 ; 5 uses
  %i.chr = getelementptr inbounds nuw i8, ptr %i.bdq, i64 288 ; 2 uses
  %i.chs = load ptr, ptr %i.chr, align 8, !tbaa !317 ; 5 uses
  %.not113121.i.i = icmp eq ptr %i.chq, %i.chs    ; 2 uses
  br i1 %i.chf, label %bb.lb, label %.thread.thread.i.i

bb.lb:                                            ; preds = %bb.la
  br i1 %.not113121.i.i, label %.thread.i310.i, label %.lr.ph.i308.i

.lr.ph.i308.i:                                    ; preds = %bb.lb, %.lr.ph.i308.i
  %.0123.i.i = phi i32 [ %i.chv, %.lr.ph.i308.i ], [ 8, %bb.lb ]
  %.sroa.0106.0122.i.i = phi ptr [ %i.chw, %.lr.ph.i308.i ], [ %i.chq, %bb.lb ] ; 2 uses
  %i.cht = load i64, ptr %.sroa.0106.0122.i.i, align 8, !tbaa !41
  %i.chu = trunc i64 %i.cht to i32
  %i.chv = or i32 %.0123.i.i, %i.chu              ; 2 uses
  %i.chw = getelementptr inbounds nuw i8, ptr %.sroa.0106.0122.i.i, i64 48 ; 2 uses
  %.not113.i.i = icmp eq ptr %i.chw, %i.chs
  br i1 %.not113.i.i, label %._crit_edge.loopexit.i309.i, label %.lr.ph.i308.i

._crit_edge.loopexit.i309.i:                      ; preds = %.lr.ph.i308.i
  %i.chx = call range(i32 0, 4) i32 @llvm.cttz.i32(i32 %i.chv, i1 true)
  br label %.thread.i310.i

.thread.i310.i:                                   ; preds = %._crit_edge.loopexit.i309.i, %bb.lb
  %.0.lcssa.i311.i = phi i32 [ 3, %bb.lb ], [ %i.chx, %._crit_edge.loopexit.i309.i ] ; 2 uses
  %i.chy = ptrtoint ptr %i.chs to i64
  %i.chz = ptrtoint ptr %i.chq to i64
  %i.cia = sub i64 %i.chy, %i.chz
  %i.cib = sdiv exact i64 %i.cia, 48
  %i.cic = shl nsw i64 %i.cib, 3
  %83 = zext nneg i32 %.0.lcssa.i311.i to i64
  %84 = or disjoint i64 %i.cic, %83
  %85 = or disjoint i64 %84, 4
  %i.cid = call noundef i32 @_ZN4llvm4yaml25ContiguousBlobAccumulator12writeULEB128Em(ptr noundef nonnull align 8 dereferenceable(232) %80, i64 noundef %85) #20 ; 0 uses
  %i.cie = load ptr, ptr %i.cha, align 8, !tbaa !317 ; 2 uses
  %i.cif = load ptr, ptr %i.chr, align 8, !tbaa !317 ; 2 uses
  %.not114124.i.i = icmp eq ptr %i.cie, %i.cif
  br i1 %.not114124.i.i, label %._crit_edge131.i.i, label %.lr.ph130.split.us.preheader.i.i

.thread.thread.i.i:                               ; preds = %bb.la
  br i1 %.not113121.i.i, label %._crit_edge131.i.i, label %.lr.ph130.split.i.i

.lr.ph130.split.us.preheader.i.i:                 ; preds = %.thread.i310.i
  %i.cig = getelementptr inbounds nuw i8, ptr %i.bdq, i64 88
  %.sroa.216.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bdq, i64 96
  br label %.lr.ph130.split.us.i.i

.lr.ph130.split.us.i.i:                           ; preds = %bb.lp, %.lr.ph130.split.us.preheader.i.i
  %.083129.us.i.i = phi i32 [ %i.cja, %bb.lp ], [ 0, %.lr.ph130.split.us.preheader.i.i ]
  %.085128.us.i.i = phi i32 [ %.2.us.i.i, %bb.lp ], [ 0, %.lr.ph130.split.us.preheader.i.i ] ; 3 uses
  %.087127.us.i.i = phi i32 [ %.188.us.i.i, %bb.lp ], [ 0, %.lr.ph130.split.us.preheader.i.i ] ; 3 uses
  %.090126.us.i.i = phi i32 [ %.191.us.i.i, %bb.lp ], [ 0, %.lr.ph130.split.us.preheader.i.i ] ; 3 uses
  %.sroa.0102.0125.us.i.i = phi ptr [ %i.ckp, %bb.lp ], [ %i.cie, %.lr.ph130.split.us.preheader.i.i ] ; 7 uses
  %i.cih = load i8, ptr %i.blf, align 8, !tbaa !114, !range !115, !noundef !116
  %i.cii = trunc nuw i8 %i.cih to i1
  br i1 %i.cii, label %bb.lc, label %_ZN4llvmeqENS_9StringRefES0_.exit.us.i.i

bb.lc:                                            ; preds = %.lr.ph130.split.us.i.i
  %.sroa.216.0.copyload.us.i.i = load i64, ptr %.sroa.216.0..sroa_idx.i.i, align 8, !tbaa !41
  %.not.i.us.i.i = icmp eq i64 %.sroa.216.0.copyload.us.i.i, 7
  br i1 %.not.i.us.i.i, label %bb.ld, label %_ZN4llvmeqENS_9StringRefES0_.exit.us.i.i

bb.ld:                                            ; preds = %bb.lc
  %.sroa.015.0.copyload.us.i.i = load ptr, ptr %i.cig, align 8, !tbaa !53 ; 2 uses
  %i.cij = load i32, ptr %.sroa.015.0.copyload.us.i.i, align 1
  %i.cik = xor i32 %i.cij, 1853449262
  %i.cil = getelementptr i8, ptr %.sroa.015.0.copyload.us.i.i, i64 3
  %i.cim = load i32, ptr %i.cil, align 1
  %i.cin = xor i32 %i.cim, 1836675950
  %i.cio = or i32 %i.cik, %i.cin
  %i.cip = icmp ne i32 %i.cio, 0
  %i.ciq = zext i1 %i.cip to i32
  %i.cir = icmp eq i32 %i.ciq, 0
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.us.i.i

_ZN4llvmeqENS_9StringRefES0_.exit.us.i.i:         ; preds = %bb.ld, %bb.lc, %.lr.ph130.split.us.i.i
  %i.cis = phi i1 [ false, %.lr.ph130.split.us.i.i ], [ %i.cir, %bb.ld ], [ false, %bb.lc ]
  %i.cit = getelementptr inbounds nuw i8, ptr %.sroa.0102.0125.us.i.i, i64 40
  %i.ciu = load i8, ptr %i.cit, align 8, !tbaa !114, !range !115, !noundef !116
  %i.civ = trunc nuw i8 %i.ciu to i1
  br i1 %i.civ, label %bb.le, label %bb.lf

bb.le:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.us.i.i
  %i.ciw = getelementptr inbounds nuw i8, ptr %.sroa.0102.0125.us.i.i, i64 24
  %.sroa.08.0.copyload.us.i.i = load ptr, ptr %i.ciw, align 8, !tbaa !53
  %.sroa.29.0..sroa_idx.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0102.0125.us.i.i, i64 32
  %.sroa.29.0.copyload.us.i.i = load i64, ptr %.sroa.29.0..sroa_idx.us.i.i, align 8, !tbaa !41
  %.sroa.0.0.copyload.us.i.i = load ptr, ptr %i.bkr, align 8, !tbaa !53
  %.sroa.2.0.copyload.us.i.i146 = load i64, ptr %.sroa.267.0..sroa_idx.i131, align 8, !tbaa !41
  %i.cix = call fastcc noundef i32 @_ZN12_GLOBAL__N_18ELFStateIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb0EEEE13toSymbolIndexENS1_9StringRefES7_b(ptr noundef nonnull align 8 dereferenceable(456) %79, ptr %.sroa.08.0.copyload.us.i.i, i64 %.sroa.29.0.copyload.us.i.i, ptr %.sroa.0.0.copyload.us.i.i, i64 %.sroa.2.0.copyload.us.i.i146, i1 noundef zeroext %i.cis)
  br label %bb.lf

bb.lf:                                            ; preds = %bb.le, %_ZN4llvmeqENS_9StringRefES0_.exit.us.i.i
  %i.ciy = phi i32 [ %i.cix, %bb.le ], [ 0, %_ZN4llvmeqENS_9StringRefES0_.exit.us.i.i ] ; 3 uses
  %i.ciz = load i64, ptr %.sroa.0102.0125.us.i.i, align 8, !tbaa !41
  %i.cja = trunc i64 %i.ciz to i32                ; 2 uses
  %i.cjb = sub i32 %i.cja, %.083129.us.i.i
  %i.cjc = lshr i32 %i.cjb, %.0.lcssa.i311.i      ; 3 uses
  %i.cjd = shl i32 %i.cjc, 3
  %i.cje = icmp ne i32 %.087127.us.i.i, %i.ciy    ; 2 uses
  %i.cjf = zext i1 %i.cje to i32
  %i.cjg = or disjoint i32 %i.cjd, %i.cjf
  %i.cjh = getelementptr inbounds nuw i8, ptr %.sroa.0102.0125.us.i.i, i64 16 ; 3 uses
  %i.cji = load i32, ptr %i.cjh, align 8, !tbaa !63
  %.not.us.i.i = icmp eq i32 %.090126.us.i.i, %i.cji ; 2 uses
  %i.cjj = select i1 %.not.us.i.i, i32 0, i32 2
  %i.cjk = getelementptr inbounds nuw i8, ptr %.sroa.0102.0125.us.i.i, i64 8 ; 3 uses
  %i.cjl = load i64, ptr %i.cjk, align 8, !tbaa !41
  %i.cjm = trunc i64 %i.cjl to i32
  %.not94.us.i.i = icmp eq i32 %.085128.us.i.i, %i.cjm ; 2 uses
  %i.cjn = select i1 %.not94.us.i.i, i32 0, i32 4
  %i.cjo = or disjoint i32 %i.cjg, %i.cjj
  %i.cjp = or disjoint i32 %i.cjo, %i.cjn         ; 2 uses
  %i.cjq = icmp ult i32 %i.cjc, 16
  %i.cjr = call noundef zeroext i1 @_ZN4llvm4yaml25ContiguousBlobAccumulator10checkLimitEm(ptr noundef nonnull align 8 dereferenceable(232) %80, i64 noundef 1) #20 ; 2 uses
  br i1 %i.cjq, label %bb.li, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  br i1 %i.cjr, label %bb.lh, label %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeEh.exit98.us.i.i

bb.lh:                                            ; preds = %bb.lg
  %i.cjs = trunc i32 %i.cjp to i8
  %i.cjt = or i8 %i.cjs, -128
  %i.cju = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.azb, i8 noundef zeroext %i.cjt) #20 ; 0 uses
  br label %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeEh.exit98.us.i.i

_ZN4llvm4yaml25ContiguousBlobAccumulator5writeEh.exit98.us.i.i: ; preds = %bb.lh, %bb.lg
  %i.cjv = lshr i32 %i.cjc, 4
  %i.cjw = zext nneg i32 %i.cjv to i64
  %i.cjx = call noundef i32 @_ZN4llvm4yaml25ContiguousBlobAccumulator12writeULEB128Em(ptr noundef nonnull align 8 dereferenceable(232) %80, i64 noundef %i.cjw) #20 ; 0 uses
  br label %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeEh.exit.us.i.i

bb.li:                                            ; preds = %bb.lf
  br i1 %i.cjr, label %bb.lj, label %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeEh.exit.us.i.i

bb.lj:                                            ; preds = %bb.li
  %i.cjy = trunc nuw i32 %i.cjp to i8
  %i.cjz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.azb, i8 noundef zeroext %i.cjy) #20 ; 0 uses
  br label %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeEh.exit.us.i.i

_ZN4llvm4yaml25ContiguousBlobAccumulator5writeEh.exit.us.i.i: ; preds = %bb.lj, %bb.li, %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeEh.exit98.us.i.i
  br i1 %i.cje, label %bb.lk, label %bb.ll

bb.lk:                                            ; preds = %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeEh.exit.us.i.i
  %i.cka = sub i32 %i.ciy, %.087127.us.i.i
  %i.ckb = sext i32 %i.cka to i64
  %i.ckc = call noundef i32 @_ZN4llvm4yaml25ContiguousBlobAccumulator12writeSLEB128El(ptr noundef nonnull align 8 dereferenceable(232) %80, i64 noundef %i.ckb) #20 ; 0 uses
  br label %bb.ll

bb.ll:                                            ; preds = %bb.lk, %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeEh.exit.us.i.i
  %.188.us.i.i = phi i32 [ %i.ciy, %bb.lk ], [ %.087127.us.i.i, %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeEh.exit.us.i.i ]
  br i1 %.not.us.i.i, label %bb.ln, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %i.ckd = load i32, ptr %i.cjh, align 8, !tbaa !63
  %i.cke = sub i32 %i.ckd, %.090126.us.i.i
  %i.ckf = sext i32 %i.cke to i64
  %i.ckg = call noundef i32 @_ZN4llvm4yaml25ContiguousBlobAccumulator12writeSLEB128El(ptr noundef nonnull align 8 dereferenceable(232) %80, i64 noundef %i.ckf) #20 ; 0 uses
  %i.ckh = load i32, ptr %i.cjh, align 8, !tbaa !63
  br label %bb.ln

bb.ln:                                            ; preds = %bb.lm, %bb.ll
  %.191.us.i.i = phi i32 [ %i.ckh, %bb.lm ], [ %.090126.us.i.i, %bb.ll ]
  br i1 %.not94.us.i.i, label %bb.lp, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.cki = load i64, ptr %i.cjk, align 8, !tbaa !41
  %i.ckj = trunc i64 %i.cki to i32
  %i.ckk = sub i32 %i.ckj, %.085128.us.i.i
  %i.ckl = sext i32 %i.ckk to i64
  %i.ckm = call noundef i32 @_ZN4llvm4yaml25ContiguousBlobAccumulator12writeSLEB128El(ptr noundef nonnull align 8 dereferenceable(232) %80, i64 noundef %i.ckl) #20 ; 0 uses
  %i.ckn = load i64, ptr %i.cjk, align 8, !tbaa !41
  %i.cko = trunc i64 %i.ckn to i32
  br label %bb.lp

bb.lp:                                            ; preds = %bb.lo, %bb.ln
  %.2.us.i.i = phi i32 [ %.085128.us.i.i, %bb.ln ], [ %i.cko, %bb.lo ]
  %i.ckp = getelementptr inbounds nuw i8, ptr %.sroa.0102.0125.us.i.i, i64 48 ; 2 uses
  %.not114.us.i.i = icmp eq ptr %i.ckp, %i.cif
  br i1 %.not114.us.i.i, label %._crit_edge131.i.i, label %.lr.ph130.split.us.i.i

.lr.ph130.split.i.i:                              ; preds = %.thread.thread.i.i
  %i.ckq = getelementptr inbounds nuw i8, ptr %i.bdq, i64 88 ; 2 uses
  %.sroa.216.0..sroa_idx157.i.i = getelementptr inbounds nuw i8, ptr %i.bdq, i64 96 ; 2 uses
  br i1 %i.chg, label %.lr.ph130.split.split.us.i.i, label %.lr.ph130.split.split.i.i

.lr.ph130.split.split.us.i.i:                     ; preds = %.lr.ph130.split.i.i, %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeEPKcm.exit.us.i.i
  %.sroa.0102.0125.us132.i.i = phi ptr [ %i.clx, %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeEPKcm.exit.us.i.i ], [ %i.chq, %.lr.ph130.split.i.i ] ; 7 uses
  %i.ckr = load i8, ptr %i.blf, align 8, !tbaa !114, !range !115, !noundef !116
  %i.cks = trunc nuw i8 %i.ckr to i1
  br i1 %i.cks, label %bb.lq, label %_ZN4llvmeqENS_9StringRefES0_.exit.us137.i.i

bb.lq:                                            ; preds = %.lr.ph130.split.split.us.i.i
  %.sroa.216.0.copyload.us134.i.i = load i64, ptr %.sroa.216.0..sroa_idx157.i.i, align 8, !tbaa !41
  %.not.i.us135.i.i = icmp eq i64 %.sroa.216.0.copyload.us134.i.i, 7
  br i1 %.not.i.us135.i.i, label %bb.lr, label %_ZN4llvmeqENS_9StringRefES0_.exit.us137.i.i

bb.lr:                                            ; preds = %bb.lq
  %.sroa.015.0.copyload.us133.i.i = load ptr, ptr %i.ckq, align 8, !tbaa !53 ; 2 uses
  %i.ckt = load i32, ptr %.sroa.015.0.copyload.us133.i.i, align 1
  %i.cku = xor i32 %i.ckt, 1853449262
  %i.ckv = getelementptr i8, ptr %.sroa.015.0.copyload.us133.i.i, i64 3
  %i.ckw = load i32, ptr %i.ckv, align 1
  %i.ckx = xor i32 %i.ckw, 1836675950
  %i.cky = or i32 %i.cku, %i.ckx
  %i.ckz = icmp ne i32 %i.cky, 0
  %i.cla = zext i1 %i.ckz to i32
  %i.clb = icmp eq i32 %i.cla, 0
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.us137.i.i

_ZN4llvmeqENS_9StringRefES0_.exit.us137.i.i:      ; preds = %bb.lr, %bb.lq, %.lr.ph130.split.split.us.i.i
  %i.clc = phi i1 [ false, %.lr.ph130.split.split.us.i.i ], [ %i.clb, %bb.lr ], [ false, %bb.lq ]
  %i.cld = getelementptr inbounds nuw i8, ptr %.sroa.0102.0125.us132.i.i, i64 40
  %i.cle = load i8, ptr %i.cld, align 8, !tbaa !114, !range !115, !noundef !116
  %i.clf = trunc nuw i8 %i.cle to i1
  br i1 %i.clf, label %bb.ls, label %_ZL10isMips64ELRKN4llvm7ELFYAML6ObjectE.exit.us.i.i

bb.ls:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.us137.i.i
  %i.clg = getelementptr inbounds nuw i8, ptr %.sroa.0102.0125.us132.i.i, i64 24
  %.sroa.08.0.copyload.us138.i.i = load ptr, ptr %i.clg, align 8, !tbaa !53
  %.sroa.29.0..sroa_idx.us139.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0102.0125.us132.i.i, i64 32
  %.sroa.29.0.copyload.us140.i.i = load i64, ptr %.sroa.29.0..sroa_idx.us139.i.i, align 8, !tbaa !41
  %.sroa.0.0.copyload.us141.i.i = load ptr, ptr %i.bkr, align 8, !tbaa !53
  %.sroa.2.0.copyload.us142.i.i = load i64, ptr %.sroa.267.0..sroa_idx.i131, align 8, !tbaa !41
  %i.clh = call fastcc noundef i32 @_ZN12_GLOBAL__N_18ELFStateIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb0EEEE13toSymbolIndexENS1_9StringRefES7_b(ptr noundef nonnull align 8 dereferenceable(456) %79, ptr %.sroa.08.0.copyload.us138.i.i, i64 %.sroa.29.0.copyload.us140.i.i, ptr %.sroa.0.0.copyload.us141.i.i, i64 %.sroa.2.0.copyload.us142.i.i, i1 noundef zeroext %i.clc)
  %i.cli = shl i32 %i.clh, 8
  br label %_ZL10isMips64ELRKN4llvm7ELFYAML6ObjectE.exit.us.i.i

_ZL10isMips64ELRKN4llvm7ELFYAML6ObjectE.exit.us.i.i: ; preds = %bb.ls, %_ZN4llvmeqENS_9StringRefES0_.exit.us137.i.i
  %i.clj = phi i32 [ %i.cli, %bb.ls ], [ 0, %_ZN4llvmeqENS_9StringRefES0_.exit.us137.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #20
  store i32 0, ptr %i.bcg, align 4
  %i.clk = load i64, ptr %.sroa.0102.0125.us132.i.i, align 8, !tbaa !41
  %i.cll = trunc i64 %i.clk to i32
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_18ELFStateIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb0EEEE8writeELFERNS1_11raw_ostreamERNS1_7ELFYAML6ObjectENS1_12function_refIFvRKNS1_5TwineEEEEm:bb.a
  %i.cgd = getelementptr inbounds nuw i8, ptr %i.bli, i64 20
  %i.cge = call i32 @llvm.bswap.i32(i32 %i.cgc)
  store i32 %i.cge, ptr %i.cgd, align 1
  %.pre516.i = load i32, ptr %i.bdv, align 8, !tbaa !62
  br label %bb.kn

bb.kn:                                            ; preds = %_ZL12writeContentRN4llvm4yaml25ContiguousBlobAccumulatorERKSt8optionalINS0_9BinaryRefEERKS3_INS0_5Hex64EE.exit.i, %bb.kk
  %i.cgf = phi i32 [ %.pre516.i, %_ZL12writeContentRN4llvm4yaml25ContiguousBlobAccumulatorERKSt8optionalINS0_9BinaryRefEERKS3_INS0_5Hex64EE.exit.i ], [ %i.ced, %bb.kk ] ; 8 uses
  %i.cgg = icmp ne i32 %i.cgf, 2
  %.not196.i144 = or i1 %.not455.i, %i.cgg
  br i1 %.not196.i144, label %bb.kq, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  %i.cgh = getelementptr i8, ptr %i.bdu, i64 288
  %.val224.i = load i8, ptr %i.cgh, align 8, !tbaa !124, !range !115, !noundef !116
  %i.cgi = trunc nuw i8 %.val224.i to i1
  br i1 %i.cgi, label %bb.kp, label %_ZN12_GLOBAL__N_18ELFStateIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb0EEEE19writeSectionContentERNS2_13Elf_Shdr_ImplIS5_EERKNS1_7ELFYAML17RawContentSectionERNS1_4yaml25ContiguousBlobAccumulatorE.exit.i

bb.kp:                                            ; preds = %bb.ko
  %i.cgj = getelementptr i8, ptr %i.bdu, i64 280
  %.val223.i = load i64, ptr %i.cgj, align 8
  %i.cgk = trunc i64 %.val223.i to i32
  %i.cgl = getelementptr inbounds nuw i8, ptr %i.bli, i64 28
  %i.cgm = call i32 @llvm.bswap.i32(i32 %i.cgk)
  store i32 %i.cgm, ptr %i.cgl, align 1
  br label %_ZN12_GLOBAL__N_18ELFStateIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb0EEEE19writeSectionContentERNS2_13Elf_Shdr_ImplIS5_EERKNS1_7ELFYAML17RawContentSectionERNS1_4yaml25ContiguousBlobAccumulatorE.exit.i

bb.kq:                                            ; preds = %bb.kn
  %i.cgn = icmp ne i32 %i.cgf, 12
  %.not197.i = or i1 %.not455.i, %i.cgn
  br i1 %.not197.i, label %bb.ky, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.cgo = load i8, ptr %i.cfi, align 8, !tbaa !131, !range !115, !noundef !116
  %i.cgp = trunc nuw i8 %i.cgo to i1
  br i1 %i.cgp, label %bb.kt, label %bb.ks

bb.ks:                                            ; preds = %bb.kr
  %i.cgq = getelementptr inbounds nuw i8, ptr %i.bdu, i64 176
  %i.cgr = load i8, ptr %i.cgq, align 8, !tbaa !124, !range !115, !noundef !116
  %i.cgs = trunc nuw i8 %i.cgr to i1
  br i1 %i.cgs, label %.thread.i301.i, label %bb.kv

bb.kt:                                            ; preds = %bb.kr
  %i.cgt = getelementptr inbounds nuw i8, ptr %i.bdu, i64 136
  call void @_ZN4llvm4yaml25ContiguousBlobAccumulator13writeAsBinaryERKNS0_9BinaryRefEm(ptr noundef nonnull align 8 dereferenceable(232) %80, ptr noundef nonnull align 8 dereferenceable(32) %i.cgt, i64 noundef -1) #20
  %i.cgu = getelementptr inbounds nuw i8, ptr %i.bdu, i64 152
  %i.cgv = load i8, ptr %i.cgu, align 8, !tbaa !249, !range !115, !noundef !116
  %i.cgw = getelementptr inbounds nuw i8, ptr %i.bdu, i64 144
  %i.cgx = load i64, ptr %i.cgw, align 8
  %i.cgy = zext nneg i8 %i.cgv to i64
  %.0.i.i.i.i = lshr i64 %i.cgx, %i.cgy           ; 2 uses
  %.phi.trans.insert.i302.i = getelementptr inbounds nuw i8, ptr %i.bdu, i64 176
  %.pre7.i303.i = load i8, ptr %.phi.trans.insert.i302.i, align 8, !tbaa !124, !range !115
  %i.cgz = trunc nuw i8 %.pre7.i303.i to i1
  br i1 %i.cgz, label %.thread.i301.i, label %_ZL12writeContentRN4llvm4yaml25ContiguousBlobAccumulatorERKSt8optionalINS0_9BinaryRefEERKS3_INS0_5Hex64EE.exit.i.i

.thread.i301.i:                                   ; preds = %bb.kt, %bb.ks
  %.0.i11.i.i = phi i64 [ %.0.i.i.i.i, %bb.kt ], [ 0, %bb.ks ]
  %i.cha = getelementptr inbounds nuw i8, ptr %i.bdu, i64 168 ; 2 uses
  %i.chb = load i64, ptr %i.cha, align 8, !tbaa !41
  %i.chc = sub i64 %i.chb, %.0.i11.i.i            ; 2 uses
  %i.chd = call noundef zeroext i1 @_ZN4llvm4yaml25ContiguousBlobAccumulator10checkLimitEm(ptr noundef nonnull align 8 dereferenceable(232) %80, i64 noundef %i.chc) #20
  br i1 %i.chd, label %bb.ku, label %_ZN4llvm4yaml25ContiguousBlobAccumulator10writeZerosEm.exit.i.i.i

bb.ku:                                            ; preds = %.thread.i301.i
  %i.che = trunc i64 %i.chc to i32
  %i.chf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream11write_zerosEj(ptr noundef nonnull align 8 dereferenceable(48) %i.azf, i32 noundef %i.che) #20 ; 0 uses
  br label %_ZN4llvm4yaml25ContiguousBlobAccumulator10writeZerosEm.exit.i.i.i

_ZN4llvm4yaml25ContiguousBlobAccumulator10writeZerosEm.exit.i.i.i: ; preds = %bb.ku, %.thread.i301.i
  %i.chg = load i64, ptr %i.cha, align 8, !tbaa !41
  br label %_ZL12writeContentRN4llvm4yaml25ContiguousBlobAccumulatorERKSt8optionalINS0_9BinaryRefEERKS3_INS0_5Hex64EE.exit.i.i

_ZL12writeContentRN4llvm4yaml25ContiguousBlobAccumulatorERKSt8optionalINS0_9BinaryRefEERKS3_INS0_5Hex64EE.exit.i.i: ; preds = %_ZN4llvm4yaml25ContiguousBlobAccumulator10writeZerosEm.exit.i.i.i, %bb.kt
  %.010.i.i.i = phi i64 [ %i.chg, %_ZN4llvm4yaml25ContiguousBlobAccumulator10writeZerosEm.exit.i.i.i ], [ %.0.i.i.i.i, %bb.kt ]
  %i.chh = trunc i64 %.010.i.i.i to i32
  %i.chi = getelementptr inbounds nuw i8, ptr %i.bli, i64 20
  %i.chj = call i32 @llvm.bswap.i32(i32 %i.chh)
  store i32 %i.chj, ptr %i.chi, align 1
  br label %_ZN12_GLOBAL__N_18ELFStateIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb0EEEE19writeSectionContentERNS2_13Elf_Shdr_ImplIS5_EERKNS1_7ELFYAML17RawContentSectionERNS1_4yaml25ContiguousBlobAccumulatorE.exit.i

bb.kv:                                            ; preds = %bb.ks
  %i.chk = getelementptr inbounds nuw i8, ptr %i.bdu, i64 280 ; 2 uses
  %i.chl = getelementptr inbounds nuw i8, ptr %i.bdu, i64 304
  %i.chm = load i8, ptr %i.chl, align 8, !tbaa !309, !range !115, !noundef !116
  %i.chn = trunc nuw i8 %i.chm to i1
  br i1 %i.chn, label %bb.kw, label %_ZN12_GLOBAL__N_18ELFStateIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb0EEEE19writeSectionContentERNS2_13Elf_Shdr_ImplIS5_EERKNS1_7ELFYAML17RawContentSectionERNS1_4yaml25ContiguousBlobAccumulatorE.exit.i

bb.kw:                                            ; preds = %bb.kv
  %i.cho = load ptr, ptr %i.chk, align 8, !tbaa !310 ; 4 uses
  %i.chp = getelementptr inbounds nuw i8, ptr %i.bdu, i64 288 ; 2 uses
  %i.chq = load ptr, ptr %i.chp, align 8, !tbaa !310 ; 2 uses
  %.not4.i295.i = icmp eq ptr %i.cho, %i.chq
  br i1 %.not4.i295.i, label %._crit_edge.i299.i, label %.lr.ph.i296.i

._crit_edge.loopexit.i.i:                         ; preds = %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeIjEEvT_NS_10endiannessE.exit.i.i
  %.pre.i298.i = load ptr, ptr %i.chp, align 8, !tbaa !312
  %.pre6.i.i = load ptr, ptr %i.chk, align 8, !tbaa !313
  br label %._crit_edge.i299.i

._crit_edge.i299.i:                               ; preds = %._crit_edge.loopexit.i.i, %bb.kw
  %i.chr = phi ptr [ %.pre6.i.i, %._crit_edge.loopexit.i.i ], [ %i.cho, %bb.kw ]
  %i.chs = phi ptr [ %.pre.i298.i, %._crit_edge.loopexit.i.i ], [ %i.cho, %bb.kw ]
  %i.cht = ptrtoint ptr %i.chs to i64
  %i.chu = ptrtoint ptr %i.chr to i64
  %i.chv = sub i64 %i.cht, %i.chu
  %i.chw = lshr exact i64 %i.chv, 2
  %i.chx = getelementptr inbounds nuw i8, ptr %i.bli, i64 36
  %.0.copyload.i.i.i.i300.i = load i32, ptr %i.chx, align 1
  %i.chy = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i300.i)
  %i.chz = trunc i64 %i.chw to i32
  %i.cia = mul i32 %i.chy, %i.chz
  %i.cib = getelementptr inbounds nuw i8, ptr %i.bli, i64 20
  %i.cic = call i32 @llvm.bswap.i32(i32 %i.cia)
  store i32 %i.cic, ptr %i.cib, align 1
  br label %_ZN12_GLOBAL__N_18ELFStateIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb0EEEE19writeSectionContentERNS2_13Elf_Shdr_ImplIS5_EERKNS1_7ELFYAML17RawContentSectionERNS1_4yaml25ContiguousBlobAccumulatorE.exit.i

.lr.ph.i296.i:                                    ; preds = %bb.kw, %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeIjEEvT_NS_10endiannessE.exit.i.i
  %.sroa.01.05.i.i = phi ptr [ %i.cih, %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeIjEEvT_NS_10endiannessE.exit.i.i ], [ %i.cho, %bb.kw ] ; 2 uses
  %i.cid = load i32, ptr %.sroa.01.05.i.i, align 4, !tbaa !63
  %i.cie = call noundef zeroext i1 @_ZN4llvm4yaml25ContiguousBlobAccumulator10checkLimitEm(ptr noundef nonnull align 8 dereferenceable(232) %80, i64 noundef 4) #20
  br i1 %i.cie, label %bb.kx, label %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeIjEEvT_NS_10endiannessE.exit.i.i

bb.kx:                                            ; preds = %.lr.ph.i296.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.cif = call i32 @llvm.bswap.i32(i32 %i.cid)
  store i32 %i.cif, ptr %i.f, align 4, !tbaa !63
  %i.cig = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.azf, ptr noundef nonnull %i.f, i64 noundef 4) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeIjEEvT_NS_10endiannessE.exit.i.i

_ZN4llvm4yaml25ContiguousBlobAccumulator5writeIjEEvT_NS_10endiannessE.exit.i.i: ; preds = %bb.kx, %.lr.ph.i296.i
  %i.cih = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 4 ; 2 uses
  %.not.i297.i = icmp eq ptr %i.cih, %i.chq
  br i1 %.not.i297.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i296.i

bb.ky:                                            ; preds = %bb.kq
  %i.cii = icmp ne i32 %i.cgf, 3
  %.not198.i = or i1 %.not455.i, %i.cii
  br i1 %.not198.i, label %bb.ma, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  %i.cij = getelementptr inbounds nuw i8, ptr %i.bdu, i64 320
  %i.cik = load i64, ptr %i.cij, align 8, !tbaa !69 ; 2 uses
  %i.cil = icmp eq i64 %i.cik, 0
  br i1 %i.cil, label %bb.lb, label %bb.la

bb.la:                                            ; preds = %bb.kz
  %i.cim = getelementptr inbounds nuw i8, ptr %i.bdu, i64 312
  %.sroa.055.0.copyload.i.i = load ptr, ptr %i.cim, align 8, !tbaa !53
  %.sroa.053.0.copyload.i.i = load ptr, ptr %i.bkv, align 8, !tbaa !53
  %.sroa.254.0.copyload.i.i = load i64, ptr %.sroa.267.0..sroa_idx.i131, align 8, !tbaa !41
  %i.cin = call fastcc noundef i32 @_ZN12_GLOBAL__N_18ELFStateIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb0EEEE14toSectionIndexENS1_9StringRefES7_S7_(ptr noundef nonnull align 8 dereferenceable(456) %79, ptr %.sroa.055.0.copyload.i.i, i64 %i.cik, ptr %.sroa.053.0.copyload.i.i, i64 %.sroa.254.0.copyload.i.i, ptr nonnull @.str, i64 0)
  %i.cio = getelementptr inbounds nuw i8, ptr %i.bli, i64 28
  %i.cip = call i32 @llvm.bswap.i32(i32 %i.cin)
  store i32 %i.cip, ptr %i.cio, align 1
  br label %bb.lb

bb.lb:                                            ; preds = %bb.la, %bb.kz
  %i.ciq = getelementptr inbounds nuw i8, ptr %i.bdu, i64 280 ; 2 uses
  %i.cir = getelementptr inbounds nuw i8, ptr %i.bdu, i64 304
  %i.cis = load i8, ptr %i.cir, align 8, !tbaa !315, !range !115, !noundef !116
  %i.cit = trunc nuw i8 %i.cis to i1
  br i1 %i.cit, label %bb.lc, label %_ZN12_GLOBAL__N_18ELFStateIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb0EEEE19writeSectionContentERNS2_13Elf_Shdr_ImplIS5_EERKNS1_7ELFYAML17RawContentSectionERNS1_4yaml25ContiguousBlobAccumulatorE.exit.i

bb.lc:                                            ; preds = %bb.lb
  %i.ciu = load i32, ptr %i.cbe, align 4, !tbaa !163
  %.fr144.i.i = freeze i32 %i.ciu                 ; 2 uses
  %i.civ = icmp eq i32 %.fr144.i.i, 1073741844
  %i.ciw = icmp eq i32 %.fr144.i.i, 4
  %i.cix = load i64, ptr %80, align 8, !tbaa !229
  %i.ciy = load ptr, ptr %i.azf, align 8, !tbaa !127
  %i.ciz = getelementptr inbounds nuw i8, ptr %i.ciy, i64 80
  %i.cja = load ptr, ptr %i.ciz, align 8
  %i.cjb = call noundef i64 %i.cja(ptr noundef nonnull align 8 dereferenceable(48) %i.azf) #20, !inline_history !1886
  %i.cjc = load ptr, ptr %i.bbo, align 8, !tbaa !243
  %i.cjd = load ptr, ptr %i.azj, align 8, !tbaa !244
  %i.cje = ptrtoint ptr %i.cjc to i64
  %i.cjf = ptrtoint ptr %i.cjd to i64
  %i.cjg = load ptr, ptr %i.ciq, align 8, !tbaa !317 ; 5 uses
  %i.cjh = getelementptr inbounds nuw i8, ptr %i.bdu, i64 288 ; 2 uses
  %i.cji = load ptr, ptr %i.cjh, align 8, !tbaa !317 ; 5 uses
  %.not113121.i.i = icmp eq ptr %i.cjg, %i.cji    ; 2 uses
  br i1 %i.civ, label %bb.ld, label %.thread.thread.i.i

bb.ld:                                            ; preds = %bb.lc
  br i1 %.not113121.i.i, label %.thread.i310.i, label %.lr.ph.i308.i

.lr.ph.i308.i:                                    ; preds = %bb.ld, %.lr.ph.i308.i
  %.0123.i.i = phi i32 [ %i.cjl, %.lr.ph.i308.i ], [ 8, %bb.ld ]
  %.sroa.0106.0122.i.i = phi ptr [ %i.cjm, %.lr.ph.i308.i ], [ %i.cjg, %bb.ld ] ; 2 uses
  %i.cjj = load i64, ptr %.sroa.0106.0122.i.i, align 8, !tbaa !41
  %i.cjk = trunc i64 %i.cjj to i32
  %i.cjl = or i32 %.0123.i.i, %i.cjk              ; 2 uses
  %i.cjm = getelementptr inbounds nuw i8, ptr %.sroa.0106.0122.i.i, i64 48 ; 2 uses
  %.not113.i.i = icmp eq ptr %i.cjm, %i.cji
  br i1 %.not113.i.i, label %._crit_edge.loopexit.i309.i, label %.lr.ph.i308.i

._crit_edge.loopexit.i309.i:                      ; preds = %.lr.ph.i308.i
  %i.cjn = call range(i32 0, 4) i32 @llvm.cttz.i32(i32 %i.cjl, i1 true)
  br label %.thread.i310.i

.thread.i310.i:                                   ; preds = %._crit_edge.loopexit.i309.i, %bb.ld
  %.0.lcssa.i311.i = phi i32 [ 3, %bb.ld ], [ %i.cjn, %._crit_edge.loopexit.i309.i ] ; 2 uses
  %i.cjo = ptrtoint ptr %i.cji to i64
  %i.cjp = ptrtoint ptr %i.cjg to i64
  %i.cjq = sub i64 %i.cjo, %i.cjp
  %i.cjr = sdiv exact i64 %i.cjq, 48
  %i.cjs = shl nsw i64 %i.cjr, 3
  %83 = zext nneg i32 %.0.lcssa.i311.i to i64
  %84 = or disjoint i64 %i.cjs, %83
  %85 = or disjoint i64 %84, 4
  %i.cjt = call noundef i32 @_ZN4llvm4yaml25ContiguousBlobAccumulator12writeULEB128Em(ptr noundef nonnull align 8 dereferenceable(232) %80, i64 noundef %85) #20 ; 0 uses
  %i.cju = load ptr, ptr %i.ciq, align 8, !tbaa !317 ; 2 uses
  %i.cjv = load ptr, ptr %i.cjh, align 8, !tbaa !317 ; 2 uses
  %.not114124.i.i = icmp eq ptr %i.cju, %i.cjv
  br i1 %.not114124.i.i, label %._crit_edge131.i.i, label %.lr.ph130.split.us.preheader.i.i

.thread.thread.i.i:                               ; preds = %bb.lc
  br i1 %.not113121.i.i, label %._crit_edge131.i.i, label %.lr.ph130.split.i.i

.lr.ph130.split.us.preheader.i.i:                 ; preds = %.thread.i310.i
  %i.cjw = getelementptr inbounds nuw i8, ptr %i.bdu, i64 88
  %.sroa.216.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bdu, i64 96
  br label %.lr.ph130.split.us.i.i

.lr.ph130.split.us.i.i:                           ; preds = %bb.lr, %.lr.ph130.split.us.preheader.i.i
  %.083129.us.i.i = phi i32 [ %i.ckq, %bb.lr ], [ 0, %.lr.ph130.split.us.preheader.i.i ]
  %.085128.us.i.i = phi i32 [ %.2.us.i.i, %bb.lr ], [ 0, %.lr.ph130.split.us.preheader.i.i ] ; 3 uses
  %.087127.us.i.i = phi i32 [ %.188.us.i.i, %bb.lr ], [ 0, %.lr.ph130.split.us.preheader.i.i ] ; 3 uses
  %.090126.us.i.i = phi i32 [ %.191.us.i.i, %bb.lr ], [ 0, %.lr.ph130.split.us.preheader.i.i ] ; 3 uses
  %.sroa.0102.0125.us.i.i = phi ptr [ %i.cmf, %bb.lr ], [ %i.cju, %.lr.ph130.split.us.preheader.i.i ] ; 7 uses
  %i.cjx = load i8, ptr %i.blj, align 8, !tbaa !114, !range !115, !noundef !116
  %i.cjy = trunc nuw i8 %i.cjx to i1
  br i1 %i.cjy, label %bb.le, label %_ZN4llvmeqENS_9StringRefES0_.exit.us.i.i

bb.le:                                            ; preds = %.lr.ph130.split.us.i.i
  %.sroa.216.0.copyload.us.i.i = load i64, ptr %.sroa.216.0..sroa_idx.i.i, align 8, !tbaa !41
  %.not.i.us.i.i = icmp eq i64 %.sroa.216.0.copyload.us.i.i, 7
  br i1 %.not.i.us.i.i, label %bb.lf, label %_ZN4llvmeqENS_9StringRefES0_.exit.us.i.i

bb.lf:                                            ; preds = %bb.le
  %.sroa.015.0.copyload.us.i.i = load ptr, ptr %i.cjw, align 8, !tbaa !53 ; 2 uses
  %i.cjz = load i32, ptr %.sroa.015.0.copyload.us.i.i, align 1
  %i.cka = xor i32 %i.cjz, 1853449262
  %i.ckb = getelementptr i8, ptr %.sroa.015.0.copyload.us.i.i, i64 3
  %i.ckc = load i32, ptr %i.ckb, align 1
  %i.ckd = xor i32 %i.ckc, 1836675950
  %i.cke = or i32 %i.cka, %i.ckd
  %i.ckf = icmp ne i32 %i.cke, 0
  %i.ckg = zext i1 %i.ckf to i32
  %i.ckh = icmp eq i32 %i.ckg, 0
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.us.i.i

_ZN4llvmeqENS_9StringRefES0_.exit.us.i.i:         ; preds = %bb.lf, %bb.le, %.lr.ph130.split.us.i.i
  %i.cki = phi i1 [ false, %.lr.ph130.split.us.i.i ], [ %i.ckh, %bb.lf ], [ false, %bb.le ]
  %i.ckj = getelementptr inbounds nuw i8, ptr %.sroa.0102.0125.us.i.i, i64 40
  %i.ckk = load i8, ptr %i.ckj, align 8, !tbaa !114, !range !115, !noundef !116
  %i.ckl = trunc nuw i8 %i.ckk to i1
  br i1 %i.ckl, label %bb.lg, label %bb.lh

bb.lg:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.us.i.i
  %i.ckm = getelementptr inbounds nuw i8, ptr %.sroa.0102.0125.us.i.i, i64 24
  %.sroa.08.0.copyload.us.i.i = load ptr, ptr %i.ckm, align 8, !tbaa !53
  %.sroa.29.0..sroa_idx.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0102.0125.us.i.i, i64 32
  %.sroa.29.0.copyload.us.i.i = load i64, ptr %.sroa.29.0..sroa_idx.us.i.i, align 8, !tbaa !41
  %.sroa.0.0.copyload.us.i.i = load ptr, ptr %i.bkv, align 8, !tbaa !53
  %.sroa.2.0.copyload.us.i.i147 = load i64, ptr %.sroa.267.0..sroa_idx.i131, align 8, !tbaa !41
  %i.ckn = call fastcc noundef i32 @_ZN12_GLOBAL__N_18ELFStateIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb0EEEE13toSymbolIndexENS1_9StringRefES7_b(ptr noundef nonnull align 8 dereferenceable(456) %79, ptr %.sroa.08.0.copyload.us.i.i, i64 %.sroa.29.0.copyload.us.i.i, ptr %.sroa.0.0.copyload.us.i.i, i64 %.sroa.2.0.copyload.us.i.i147, i1 noundef zeroext %i.cki)
  br label %bb.lh

bb.lh:                                            ; preds = %bb.lg, %_ZN4llvmeqENS_9StringRefES0_.exit.us.i.i
  %i.cko = phi i32 [ %i.ckn, %bb.lg ], [ 0, %_ZN4llvmeqENS_9StringRefES0_.exit.us.i.i ] ; 3 uses
  %i.ckp = load i64, ptr %.sroa.0102.0125.us.i.i, align 8, !tbaa !41
  %i.ckq = trunc i64 %i.ckp to i32                ; 2 uses
  %i.ckr = sub i32 %i.ckq, %.083129.us.i.i
  %i.cks = lshr i32 %i.ckr, %.0.lcssa.i311.i      ; 3 uses
  %i.ckt = shl i32 %i.cks, 3
  %i.cku = icmp ne i32 %.087127.us.i.i, %i.cko    ; 2 uses
  %i.ckv = zext i1 %i.cku to i32
  %i.ckw = or disjoint i32 %i.ckt, %i.ckv
  %i.ckx = getelementptr inbounds nuw i8, ptr %.sroa.0102.0125.us.i.i, i64 16 ; 3 uses
  %i.cky = load i32, ptr %i.ckx, align 8, !tbaa !63
  %.not.us.i.i = icmp eq i32 %.090126.us.i.i, %i.cky ; 2 uses
  %i.ckz = select i1 %.not.us.i.i, i32 0, i32 2
  %i.cla = getelementptr inbounds nuw i8, ptr %.sroa.0102.0125.us.i.i, i64 8 ; 3 uses
  %i.clb = load i64, ptr %i.cla, align 8, !tbaa !41
  %i.clc = trunc i64 %i.clb to i32
  %.not94.us.i.i = icmp eq i32 %.085128.us.i.i, %i.clc ; 2 uses
  %i.cld = select i1 %.not94.us.i.i, i32 0, i32 4
  %i.cle = or disjoint i32 %i.ckw, %i.ckz
  %i.clf = or disjoint i32 %i.cle, %i.cld         ; 2 uses
  %i.clg = icmp ult i32 %i.cks, 16
  %i.clh = call noundef zeroext i1 @_ZN4llvm4yaml25ContiguousBlobAccumulator10checkLimitEm(ptr noundef nonnull align 8 dereferenceable(232) %80, i64 noundef 1) #20 ; 2 uses
  br i1 %i.clg, label %bb.lk, label %bb.li

bb.li:                                            ; preds = %bb.lh
  br i1 %i.clh, label %bb.lj, label %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeEh.exit98.us.i.i

bb.lj:                                            ; preds = %bb.li
  %i.cli = trunc i32 %i.clf to i8
  %i.clj = or i8 %i.cli, -128
  %i.clk = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.azf, i8 noundef zeroext %i.clj) #20 ; 0 uses
  br label %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeEh.exit98.us.i.i

_ZN4llvm4yaml25ContiguousBlobAccumulator5writeEh.exit98.us.i.i: ; preds = %bb.lj, %bb.li
  %i.cll = lshr i32 %i.cks, 4
  %i.clm = zext nneg i32 %i.cll to i64
  %i.cln = call noundef i32 @_ZN4llvm4yaml25ContiguousBlobAccumulator12writeULEB128Em(ptr noundef nonnull align 8 dereferenceable(232) %80, i64 noundef %i.clm) #20 ; 0 uses
  br label %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeEh.exit.us.i.i

bb.lk:                                            ; preds = %bb.lh
  br i1 %i.clh, label %bb.ll, label %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeEh.exit.us.i.i

bb.ll:                                            ; preds = %bb.lk
  %i.clo = trunc nuw i32 %i.clf to i8
  %i.clp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.azf, i8 noundef zeroext %i.clo) #20 ; 0 uses
  br label %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeEh.exit.us.i.i

_ZN4llvm4yaml25ContiguousBlobAccumulator5writeEh.exit.us.i.i: ; preds = %bb.ll, %bb.lk, %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeEh.exit98.us.i.i
  br i1 %i.cku, label %bb.lm, label %bb.ln

bb.lm:                                            ; preds = %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeEh.exit.us.i.i
  %i.clq = sub i32 %i.cko, %.087127.us.i.i
  %i.clr = sext i32 %i.clq to i64
  %i.cls = call noundef i32 @_ZN4llvm4yaml25ContiguousBlobAccumulator12writeSLEB128El(ptr noundef nonnull align 8 dereferenceable(232) %80, i64 noundef %i.clr) #20 ; 0 uses
  br label %bb.ln

bb.ln:                                            ; preds = %bb.lm, %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeEh.exit.us.i.i
  %.188.us.i.i = phi i32 [ %i.cko, %bb.lm ], [ %.087127.us.i.i, %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeEh.exit.us.i.i ]
  br i1 %.not.us.i.i, label %bb.lp, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.clt = load i32, ptr %i.ckx, align 8, !tbaa !63
  %i.clu = sub i32 %i.clt, %.090126.us.i.i
  %i.clv = sext i32 %i.clu to i64
  %i.clw = call noundef i32 @_ZN4llvm4yaml25ContiguousBlobAccumulator12writeSLEB128El(ptr noundef nonnull align 8 dereferenceable(232) %80, i64 noundef %i.clv) #20 ; 0 uses
  %i.clx = load i32, ptr %i.ckx, align 8, !tbaa !63
  br label %bb.lp

bb.lp:                                            ; preds = %bb.lo, %bb.ln
  %.191.us.i.i = phi i32 [ %i.clx, %bb.lo ], [ %.090126.us.i.i, %bb.ln ]
  br i1 %.not94.us.i.i, label %bb.lr, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  %i.cly = load i64, ptr %i.cla, align 8, !tbaa !41
  %i.clz = trunc i64 %i.cly to i32
  %i.cma = sub i32 %i.clz, %.085128.us.i.i
  %i.cmb = sext i32 %i.cma to i64
  %i.cmc = call noundef i32 @_ZN4llvm4yaml25ContiguousBlobAccumulator12writeSLEB128El(ptr noundef nonnull align 8 dereferenceable(232) %80, i64 noundef %i.cmb) #20 ; 0 uses
  %i.cmd = load i64, ptr %i.cla, align 8, !tbaa !41
  %i.cme = trunc i64 %i.cmd to i32
  br label %bb.lr

bb.lr:                                            ; preds = %bb.lq, %bb.lp
  %.2.us.i.i = phi i32 [ %.085128.us.i.i, %bb.lp ], [ %i.cme, %bb.lq ]
  %i.cmf = getelementptr inbounds nuw i8, ptr %.sroa.0102.0125.us.i.i, i64 48 ; 2 uses
  %.not114.us.i.i = icmp eq ptr %i.cmf, %i.cjv
  br i1 %.not114.us.i.i, label %._crit_edge131.i.i, label %.lr.ph130.split.us.i.i

.lr.ph130.split.i.i:                              ; preds = %.thread.thread.i.i
  %i.cmg = getelementptr inbounds nuw i8, ptr %i.bdu, i64 88 ; 2 uses
  %.sroa.216.0..sroa_idx157.i.i = getelementptr inbounds nuw i8, ptr %i.bdu, i64 96 ; 2 uses
  br i1 %i.ciw, label %.lr.ph130.split.split.us.i.i, label %.lr.ph130.split.split.i.i

.lr.ph130.split.split.us.i.i:                     ; preds = %.lr.ph130.split.i.i, %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeEPKcm.exit.us.i.i
  %.sroa.0102.0125.us132.i.i = phi ptr [ %i.cnq, %_ZN4llvm4yaml25ContiguousBlobAccumulator5writeEPKcm.exit.us.i.i ], [ %i.cjg, %.lr.ph130.split.i.i ] ; 7 uses
  %i.cmh = load i8, ptr %i.blj, align 8, !tbaa !114, !range !115, !noundef !116
  %i.cmi = trunc nuw i8 %i.cmh to i1
  br i1 %i.cmi, label %bb.ls, label %_ZN4llvmeqENS_9StringRefES0_.exit.us137.i.i

bb.ls:                                            ; preds = %.lr.ph130.split.split.us.i.i
  %.sroa.216.0.copyload.us134.i.i = load i64, ptr %.sroa.216.0..sroa_idx157.i.i, align 8, !tbaa !41
  %.not.i.us135.i.i = icmp eq i64 %.sroa.216.0.copyload.us134.i.i, 7
  br i1 %.not.i.us135.i.i, label %bb.lt, label %_ZN4llvmeqENS_9StringRefES0_.exit.us137.i.i

bb.lt:                                            ; preds = %bb.ls
  %.sroa.015.0.copyload.us133.i.i = load ptr, ptr %i.cmg, align 8, !tbaa !53 ; 2 uses
  %i.cmj = load i32, ptr %.sroa.015.0.copyload.us133.i.i, align 1
  %i.cmk = xor i32 %i.cmj, 1853449262
  %i.cml = getelementptr i8, ptr %.sroa.015.0.copyload.us133.i.i, i64 3
  %i.cmm = load i32, ptr %i.cml, align 1
  %i.cmn = xor i32 %i.cmm, 1836675950
  %i.cmo = or i32 %i.cmk, %i.cmn
  %i.cmp = icmp ne i32 %i.cmo, 0
  %i.cmq = zext i1 %i.cmp to i32
  %i.cmr = icmp eq i32 %i.cmq, 0
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.us137.i.i

_ZN4llvmeqENS_9StringRefES0_.exit.us137.i.i:      ; preds = %bb.lt, %bb.ls, %.lr.ph130.split.split.us.i.i
  %i.cms = phi i1 [ false, %.lr.ph130.split.split.us.i.i ], [ %i.cmr, %bb.lt ], [ false, %bb.ls ]
  %i.cmt = getelementptr inbounds nuw i8, ptr %.sroa.0102.0125.us132.i.i, i64 40
  %i.cmu = load i8, ptr %i.cmt, align 8, !tbaa !114, !range !115, !noundef !116
  %i.cmv = trunc nuw i8 %i.cmu to i1
  br i1 %i.cmv, label %bb.lu, label %_ZL10isMips64ELRKN4llvm7ELFYAML6ObjectE.exit.us.i.i

bb.lu:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.us137.i.i
  %i.cmw = getelementptr inbounds nuw i8, ptr %.sroa.0102.0125.us132.i.i, i64 24
  %.sroa.08.0.copyload.us138.i.i = load ptr, ptr %i.cmw, align 8, !tbaa !53
  %.sroa.29.0..sroa_idx.us139.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0102.0125.us132.i.i, i64 32
  %.sroa.29.0.copyload.us140.i.i = load i64, ptr %.sroa.29.0..sroa_idx.us139.i.i, align 8, !tbaa !41
  %.sroa.0.0.copyload.us141.i.i = load ptr, ptr %i.bkv, align 8, !tbaa !53
  %.sroa.2.0.copyload.us142.i.i = load i64, ptr %.sroa.267.0..sroa_idx.i131, align 8, !tbaa !41
  %i.cmx = call fastcc noundef i32 @_ZN12_GLOBAL__N_18ELFStateIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb0EEEE13toSymbolIndexENS1_9StringRefES7_b(ptr noundef nonnull align 8 dereferenceable(456) %79, ptr %.sroa.08.0.copyload.us138.i.i, i64 %.sroa.29.0.copyload.us140.i.i, ptr %.sroa.0.0.copyload.us141.i.i, i64 %.sroa.2.0.copyload.us142.i.i, i1 noundef zeroext %i.cms)
  %i.cmy = shl i32 %i.cmx, 8
  br label %_ZL10isMips64ELRKN4llvm7ELFYAML6ObjectE.exit.us.i.i

_ZL10isMips64ELRKN4llvm7ELFYAML6ObjectE.exit.us.i.i: ; preds = %bb.lu, %_ZN4llvmeqENS_9StringRefES0_.exit.us137.i.i
  %i.cmz = phi i32 [ %i.cmy, %bb.lu ], [ 0, %_ZN4llvmeqENS_9StringRefES0_.exit.us137.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #20
  store i32 0, ptr %i.bck, align 4
  %i.cna = load i64, ptr %.sroa.0102.0125.us132.i.i, align 8, !tbaa !41
  %i.cnb = trunc i64 %i.cna to i32
end_hunk_3
