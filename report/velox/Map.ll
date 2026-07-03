inline.NumInlined: 2906
inline.NumDeleted: 1200
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 57
begin_hunk_0_@_ZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #27
          to label %.noexc811 unwind label %bb.aaw

.noexc811:                                        ; preds = %bb.wt
  unreachable

bb.wu:                                            ; preds = %bb.ws
  %i.djv = getelementptr inbounds nuw i8, ptr %i.djr, i64 16
  %i.djw = load ptr, ptr %i.djv, align 8, !tbaa !385 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %114) #23
  %i.djx = load i32, ptr %i.djl, align 8, !tbaa !196
  %i.djy = load ptr, ptr %4, align 8, !tbaa !155
  %i.djz = load ptr, ptr %i.djy, align 8, !tbaa !171
  %i.dka = sext i32 %i.djx to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !462
  store i32 0, ptr %8, align 4, !tbaa !30, !noalias !462
  %i.dkb = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i8 1, ptr %i.dkb, align 4, !tbaa !209, !noalias !462
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %114, i64 noundef %i.dka, ptr noundef %i.djz, ptr noundef nonnull align 4 dereferenceable(8) %8, i1 noundef zeroext false)
          to label %bb.wv unwind label %bb.aax

bb.wv:                                            ; preds = %bb.wu
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !462
  %i.dkc = load ptr, ptr %114, align 8, !tbaa !237 ; 2 uses
  %i.dkd = getelementptr inbounds nuw i8, ptr %i.dkc, i64 44
  %i.dke = load i8, ptr %i.dkd, align 4, !tbaa !384
  %i.dkf = and i8 %i.dke, 2
  %.not.i815 = icmp eq i8 %i.dkf, 0
  br i1 %.not.i815, label %bb.wx, label %bb.ww, !prof !78

bb.ww:                                            ; preds = %bb.wv
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #27
          to label %.noexc816 unwind label %bb.aay

.noexc816:                                        ; preds = %bb.ww
  unreachable

bb.wx:                                            ; preds = %bb.wv
  %i.dkg = getelementptr inbounds nuw i8, ptr %i.dkc, i64 16
  %i.dkh = load ptr, ptr %i.dkg, align 8, !tbaa !385 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %115) #23
  %i.dki = load ptr, ptr %4, align 8, !tbaa !155
  %i.dkj = load ptr, ptr %i.dki, align 8, !tbaa !171
  %i.dkk = sext i32 %.41180 to i64                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23, !noalias !465
  store i32 0, ptr %7, align 4, !tbaa !30, !noalias !465
  %i.dkl = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i8 1, ptr %i.dkl, align 4, !tbaa !209, !noalias !465
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %115, i64 noundef %i.dkk, ptr noundef %i.dkj, ptr noundef nonnull align 4 dereferenceable(8) %7, i1 noundef zeroext false)
          to label %bb.wy unwind label %bb.aaz

bb.wy:                                            ; preds = %bb.wx
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23, !noalias !465
  %i.dkm = load ptr, ptr %115, align 8, !tbaa !237 ; 2 uses
  %i.dkn = getelementptr inbounds nuw i8, ptr %i.dkm, i64 44
  %i.dko = load i8, ptr %i.dkn, align 4, !tbaa !384
  %i.dkp = and i8 %i.dko, 2
  %.not.i820 = icmp eq i8 %i.dkp, 0
  br i1 %.not.i820, label %bb.xa, label %bb.wz, !prof !78

bb.wz:                                            ; preds = %bb.wy
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #27
          to label %.noexc821 unwind label %bb.aba

.noexc821:                                        ; preds = %bb.wz
  unreachable

bb.xa:                                            ; preds = %bb.wy
  %i.dkq = getelementptr inbounds nuw i8, ptr %i.dkm, i64 16
  %i.dkr = load ptr, ptr %i.dkq, align 8, !tbaa !385 ; 31 uses
  %i.dks = ptrtoaddr ptr %i.dkr to i64            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %116) #23
  %i.dkt = load ptr, ptr %4, align 8, !tbaa !155
  %i.dku = load ptr, ptr %i.dkt, align 8, !tbaa !171
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !468
  store i32 0, ptr %6, align 4, !tbaa !30, !noalias !468
  %i.dkv = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i8 1, ptr %i.dkv, align 4, !tbaa !209, !noalias !468
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %116, i64 noundef %i.dkk, ptr noundef %i.dku, ptr noundef nonnull align 4 dereferenceable(8) %6, i1 noundef zeroext false)
          to label %bb.xb unwind label %bb.abb

bb.xb:                                            ; preds = %bb.xa
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !468
  %i.dkw = load ptr, ptr %116, align 8, !tbaa !237 ; 5 uses
  %i.dkx = getelementptr inbounds nuw i8, ptr %i.dkw, i64 44
  %i.dky = load i8, ptr %i.dkx, align 4, !tbaa !384
  %i.dkz = and i8 %i.dky, 2
  %.not.i825 = icmp eq i8 %i.dkz, 0
  br i1 %.not.i825, label %bb.xd, label %bb.xc, !prof !78

bb.xc:                                            ; preds = %bb.xb
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #27
          to label %.noexc826 unwind label %bb.abc

.noexc826:                                        ; preds = %bb.xc
  unreachable

bb.xd:                                            ; preds = %bb.xb
  %i.dla = getelementptr inbounds nuw i8, ptr %i.dkw, i64 16
  %i.dlb = load ptr, ptr %i.dla, align 8, !tbaa !385 ; 31 uses
  %i.dlc = ptrtoaddr ptr %i.dlb to i64            ; 5 uses
  %i.dld = load ptr, ptr %i.gt, align 8, !tbaa !267 ; 11 uses
  %i.dle = getelementptr inbounds nuw i8, ptr %i.dld, i64 36 ; 2 uses
  %i.dlf = getelementptr inbounds nuw i8, ptr %i.dld, i64 37
  %i.dlg = load i8, ptr %i.dlf, align 1, !tbaa !263, !range !82, !noundef !83
  %i.dlh = trunc nuw i8 %i.dlg to i1
  br i1 %i.dlh, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i876, label %bb.xe

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i876: ; preds = %bb.xd
  %.0.in.pre.i.i877 = load i8, ptr %i.dle, align 1, !tbaa !56, !range !82
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i830

bb.xe:                                            ; preds = %bb.xd
  %i.dli = getelementptr inbounds nuw i8, ptr %i.dld, i64 28
  %i.dlj = load i32, ptr %i.dli, align 4, !tbaa !312
  %i.dlk = icmp eq i32 %i.dlj, 0
  br i1 %i.dlk, label %bb.xf, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i828

bb.xf:                                            ; preds = %bb.xe
  %i.dll = getelementptr inbounds nuw i8, ptr %i.dld, i64 32
  %i.dlm = load i32, ptr %i.dll, align 8, !tbaa !196 ; 6 uses
  %i.dln = getelementptr inbounds nuw i8, ptr %i.dld, i64 24
  %i.dlo = load i32, ptr %i.dln, align 8, !tbaa !313
  %i.dlp = icmp eq i32 %i.dlm, %i.dlo
  br i1 %i.dlp, label %bb.xg, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i828

bb.xg:                                            ; preds = %bb.xf
  %i.dlq = load ptr, ptr %i.dld, align 8, !tbaa !314 ; 2 uses
  %.not.i.i.i868 = icmp sgt i32 %i.dlm, 0
  br i1 %.not.i.i.i868, label %bb.xh, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i828

bb.xh:                                            ; preds = %bb.xg
  %i.dlr = and i32 %i.dlm, 2147483584             ; 3 uses
  %i.dls = zext nneg i32 %i.dlr to i64
  %.not37.i.i.not.i.i8701943.not = icmp eq i32 %i.dlr, 0
  br i1 %.not37.i.i.not.i.i8701943.not, label %.critedge.i.i.i.i871, label %.lr.ph1945

bb.xi:                                            ; preds = %.lr.ph1945
  %indvars.iv.next.i.i875 = add nuw nsw i64 %indvars.iv.i.i8691944, 64 ; 2 uses
  %.not37.i.i.not.i.i870 = icmp samesign ult i64 %indvars.iv.next.i.i875, %i.dls
  br i1 %.not37.i.i.not.i.i870, label %.lr.ph1945, label %.critedge.i.i.i.i871, !llvm.loop !315

.lr.ph1945:                                       ; preds = %bb.xh, %bb.xi
  %indvars.iv.i.i8691944 = phi i64 [ %indvars.iv.next.i.i875, %bb.xi ], [ 0, %bb.xh ] ; 2 uses
  %i.dlt = lshr exact i64 %indvars.iv.i.i8691944, 3
  %i.dlu = getelementptr inbounds nuw i8, ptr %i.dlq, i64 %i.dlt
  %i.dlv = load i64, ptr %i.dlu, align 8, !tbaa !145
  %i.dlw = icmp eq i64 %i.dlv, -1
  br i1 %i.dlw, label %bb.xi, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i828, !llvm.loop !315

.critedge.i.i.i.i871:                             ; preds = %bb.xi, %bb.xh
  %.not38.i.i.i.i872 = icmp eq i32 %i.dlm, %i.dlr
  br i1 %.not38.i.i.i.i872, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i828, label %bb.xj

bb.xj:                                            ; preds = %.critedge.i.i.i.i871
  %i.dlx = lshr i32 %i.dlm, 6
  %i.dly = and i32 %i.dlm, 63
  %i.dlz = zext nneg i32 %i.dly to i64
  %notmask.i40.i.i.i.i873 = shl nsw i64 -1, %i.dlz
  %i.dma = zext nneg i32 %i.dlx to i64
  %i.dmb = getelementptr inbounds nuw [8 x i8], ptr %i.dlq, i64 %i.dma
  %i.dmc = load i64, ptr %i.dmb, align 8, !tbaa !145
  %.demorgan.i.i874 = or i64 %i.dmc, %notmask.i40.i.i.i.i873
  %i.dmd = icmp eq i64 %.demorgan.i.i874, -1
  %i.dme = zext i1 %i.dmd to i16
  %i.dmf = or disjoint i16 %i.dme, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i828

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i828: ; preds = %.lr.ph1945, %bb.xj, %.critedge.i.i.i.i871, %bb.xg, %bb.xf, %bb.xe
  %.sroa.0.0.insert.ext.i.i829 = phi i16 [ 256, %bb.xf ], [ 256, %bb.xe ], [ 257, %bb.xg ], [ 257, %.critedge.i.i.i.i871 ], [ %i.dmf, %bb.xj ], [ 256, %.lr.ph1945 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i829, ptr %i.dle, align 4
  %i.dmg = trunc i16 %.sroa.0.0.insert.ext.i.i829 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i830

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i830: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i828, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i876
  %.0.in.i.i831 = phi i8 [ %.0.in.pre.i.i877, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i876 ], [ %i.dmg, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i828 ]
  %.0.i.i832 = trunc nuw i8 %.0.in.i.i831 to i1
  br i1 %.0.i.i832, label %bb.xk, label %bb.xm

bb.xk:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i830
  %i.dmh = getelementptr inbounds nuw i8, ptr %i.dld, i64 32
  %i.dmi = load i32, ptr %i.dmh, align 8, !tbaa !196 ; 2 uses
  %i.dmj = getelementptr inbounds nuw i8, ptr %i.dld, i64 28
  %i.dmk = load i32, ptr %i.dmj, align 4, !tbaa !312 ; 2 uses
  %i.dml = icmp slt i32 %i.dmk, %i.dmi
  br i1 %i.dml, label %.lr.ph.i861, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit

.lr.ph.i861:                                      ; preds = %bb.xk
  %i.dmm = load ptr, ptr %i.p, align 8, !tbaa !310 ; 2 uses
  %i.dmn = load ptr, ptr %i.n, align 8, !tbaa !342
  %i.dmo = getelementptr inbounds nuw i8, ptr %i.dmm, i64 120
  %i.dmp = load ptr, ptr %i.dmo, align 8, !tbaa !308
  %i.dmq = getelementptr inbounds nuw i8, ptr %i.dmm, i64 104
  %i.dmr = load ptr, ptr %i.dmq, align 8, !tbaa !306
  %i.dms = load ptr, ptr %i.q, align 8, !tbaa !310
  %i.dmt = load ptr, ptr %i.o, align 8, !tbaa !342
  %i.dmu = getelementptr inbounds nuw i8, ptr %i.dms, i64 104
  %i.dmv = load ptr, ptr %i.dmu, align 8, !tbaa !306
  %i.dmw = sext i32 %i.dmk to i64
  %wide.trip.count.i862 = sext i32 %i.dmi to i64
  %i.dmx = sub i64 %i.dlc, %i.dks
  %diff.check2254 = icmp ugt i64 %i.dmx, -128
  br label %bb.xl

bb.xl:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i, %.lr.ph.i861
  %.9 = phi i32 [ 0, %.lr.ph.i861 ], [ %i.dph, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i ] ; 3 uses
  %indvars.iv.i864 = phi i64 [ %i.dmw, %.lr.ph.i861 ], [ %indvars.iv.next.i865, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i ] ; 5 uses
  %i.dmy = getelementptr inbounds [4 x i8], ptr %i.dmn, i64 %indvars.iv.i864 ; 2 uses
  %i.dmz = load i32, ptr %i.dmy, align 4, !tbaa !3
  %i.dna = sext i32 %i.dmz to i64
  %i.dnb = getelementptr inbounds [4 x i8], ptr %i.dmp, i64 %i.dna
  %i.dnc = load i32, ptr %i.dnb, align 4, !tbaa !3 ; 6 uses
  %i.dnd = getelementptr inbounds [4 x i8], ptr %i.djw, i64 %indvars.iv.i864
  store i32 %.9, ptr %i.dnd, align 4, !tbaa !3
  %i.dne = getelementptr inbounds [4 x i8], ptr %i.dkh, i64 %indvars.iv.i864
  store i32 %i.dnc, ptr %i.dne, align 4, !tbaa !3
  %i.dnf = icmp sgt i32 %i.dnc, 0
  br i1 %i.dnf, label %iter.check2281, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i

iter.check2281:                                   ; preds = %bb.xl
  %i.dng = getelementptr inbounds [4 x i8], ptr %i.dmt, i64 %indvars.iv.i864
  %i.dnh = load i32, ptr %i.dng, align 4, !tbaa !3
  %i.dni = sext i32 %i.dnh to i64
  %i.dnj = getelementptr inbounds [4 x i8], ptr %i.dmv, i64 %i.dni
  %i.dnk = load i32, ptr %i.dnj, align 4, !tbaa !3 ; 5 uses
  %i.dnl = load i32, ptr %i.dmy, align 4, !tbaa !3
  %i.dnm = sext i32 %i.dnl to i64
  %i.dnn = getelementptr inbounds [4 x i8], ptr %i.dmr, i64 %i.dnm
  %i.dno = load i32, ptr %i.dnn, align 4, !tbaa !3 ; 5 uses
  %i.dnp = sext i32 %.9 to i64                    ; 5 uses
  %i.dnq = zext nneg i32 %i.dnc to i64            ; 8 uses
  %min.iters.check2255 = icmp ult i32 %i.dnc, 4
  %or.cond = select i1 %min.iters.check2255, i1 true, i1 %diff.check2254
  br i1 %or.cond, label %.lr.ph.i.i867.preheader, label %vector.main.loop.iter.check2256

vector.main.loop.iter.check2256:                  ; preds = %iter.check2281
  %min.iters.check2257 = icmp ult i32 %i.dnc, 32
  br i1 %min.iters.check2257, label %vec.epilog.ph2285, label %vector.ph2258

vector.ph2258:                                    ; preds = %vector.main.loop.iter.check2256
  %n.mod.vf2259 = and i64 %i.dnq, 28
  %n.vec2260 = and i64 %i.dnq, 2147483616         ; 4 uses
  %broadcast.splatinsert2261 = insertelement <8 x i32> poison, i32 %i.dnk, i64 0
  %broadcast.splat2262 = shufflevector <8 x i32> %broadcast.splatinsert2261, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert2263 = insertelement <8 x i32> poison, i32 %i.dno, i64 0
  %broadcast.splat2264 = shufflevector <8 x i32> %broadcast.splatinsert2263, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op2663 = add <8 x i32> splat (i32 8), %broadcast.splat2264
  %invariant.op2665 = add <8 x i32> splat (i32 16), %broadcast.splat2264
  %invariant.op2667 = add <8 x i32> splat (i32 24), %broadcast.splat2264
  %invariant.op2669 = add <8 x i32> splat (i32 8), %broadcast.splat2262
  %invariant.op2671 = add <8 x i32> splat (i32 16), %broadcast.splat2262
  %invariant.op2673 = add <8 x i32> splat (i32 24), %broadcast.splat2262
  br label %vector.body2265

vector.body2265:                                  ; preds = %vector.body2265, %vector.ph2258
  %index2266 = phi i64 [ 0, %vector.ph2258 ], [ %index.next2275, %vector.body2265 ] ; 2 uses
  %vec.ind2267 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2258 ], [ %vec.ind.next2276, %vector.body2265 ] ; 5 uses
  %vec.ind2268 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2258 ], [ %vec.ind.next2277, %vector.body2265 ] ; 5 uses
  %i.dnr = add nsw i64 %index2266, %i.dnp         ; 2 uses
  %i.dns = getelementptr inbounds [4 x i8], ptr %i.dlb, i64 %i.dnr ; 4 uses
  %i.dnt = add <8 x i32> %broadcast.splat2264, %vec.ind2267
  %.reass2664 = add <8 x i32> %vec.ind2267, %invariant.op2663
  %.reass2666 = add <8 x i32> %vec.ind2267, %invariant.op2665
  %.reass2668 = add <8 x i32> %vec.ind2267, %invariant.op2667
  %i.dnu = getelementptr inbounds nuw i8, ptr %i.dns, i64 32
  %i.dnv = getelementptr inbounds nuw i8, ptr %i.dns, i64 64
  %i.dnw = getelementptr inbounds nuw i8, ptr %i.dns, i64 96
  store <8 x i32> %i.dnt, ptr %i.dns, align 4, !tbaa !3
  store <8 x i32> %.reass2664, ptr %i.dnu, align 4, !tbaa !3
  store <8 x i32> %.reass2666, ptr %i.dnv, align 4, !tbaa !3
  store <8 x i32> %.reass2668, ptr %i.dnw, align 4, !tbaa !3
  %i.dnx = getelementptr inbounds [4 x i8], ptr %i.dkr, i64 %i.dnr ; 4 uses
  %i.dny = add <8 x i32> %broadcast.splat2262, %vec.ind2268
  %.reass2670 = add <8 x i32> %vec.ind2268, %invariant.op2669
  %.reass2672 = add <8 x i32> %vec.ind2268, %invariant.op2671
  %.reass2674 = add <8 x i32> %vec.ind2268, %invariant.op2673
  %i.dnz = getelementptr inbounds nuw i8, ptr %i.dnx, i64 32
  %i.doa = getelementptr inbounds nuw i8, ptr %i.dnx, i64 64
  %i.dob = getelementptr inbounds nuw i8, ptr %i.dnx, i64 96
  store <8 x i32> %i.dny, ptr %i.dnx, align 4, !tbaa !3
  store <8 x i32> %.reass2670, ptr %i.dnz, align 4, !tbaa !3
  store <8 x i32> %.reass2672, ptr %i.doa, align 4, !tbaa !3
  store <8 x i32> %.reass2674, ptr %i.dob, align 4, !tbaa !3
  %index.next2275 = add nuw i64 %index2266, 32    ; 2 uses
  %vec.ind.next2276 = add <8 x i32> %vec.ind2267, splat (i32 32)
  %vec.ind.next2277 = add <8 x i32> %vec.ind2268, splat (i32 32)
  %i.doc = icmp eq i64 %index.next2275, %n.vec2260
  br i1 %i.doc, label %middle.block2278, label %vector.body2265, !llvm.loop !471

middle.block2278:                                 ; preds = %vector.body2265
  %cmp.n2279 = icmp eq i64 %n.vec2260, %i.dnq
  br i1 %cmp.n2279, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i, label %vec.epilog.iter.check2283

vec.epilog.iter.check2283:                        ; preds = %middle.block2278
  %min.epilog.iters.check2284 = icmp eq i64 %n.mod.vf2259, 0
  br i1 %min.epilog.iters.check2284, label %.lr.ph.i.i867.preheader, label %vec.epilog.ph2285, !prof !472

vec.epilog.ph2285:                                ; preds = %vector.main.loop.iter.check2256, %vec.epilog.iter.check2283
  %vec.epilog.resume.val2280 = phi i64 [ %n.vec2260, %vec.epilog.iter.check2283 ], [ 0, %vector.main.loop.iter.check2256 ] ; 2 uses
  %n.vec2287 = and i64 %i.dnq, 2147483644         ; 3 uses
  %broadcast.splatinsert2288 = insertelement <4 x i32> poison, i32 %i.dnk, i64 0
  %broadcast.splat2289 = shufflevector <4 x i32> %broadcast.splatinsert2288, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2290 = insertelement <4 x i32> poison, i32 %i.dno, i64 0
  %broadcast.splat2291 = shufflevector <4 x i32> %broadcast.splatinsert2290, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.dod = trunc nuw nsw i64 %vec.epilog.resume.val2280 to i32
  %broadcast.splatinsert2292 = insertelement <4 x i32> poison, i32 %i.dod, i64 0
  %broadcast.splat2293 = shufflevector <4 x i32> %broadcast.splatinsert2292, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction2294 = or disjoint <4 x i32> %broadcast.splat2293, <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  br label %vec.epilog.vector.body2295

vec.epilog.vector.body2295:                       ; preds = %vec.epilog.vector.body2295, %vec.epilog.ph2285
  %index2296 = phi i64 [ %vec.epilog.resume.val2280, %vec.epilog.ph2285 ], [ %index.next2299, %vec.epilog.vector.body2295 ] ; 2 uses
  %vec.ind2297 = phi <4 x i32> [ %induction2294, %vec.epilog.ph2285 ], [ %vec.ind.next2300, %vec.epilog.vector.body2295 ] ; 2 uses
  %vec.ind2298 = phi <4 x i32> [ %induction2294, %vec.epilog.ph2285 ], [ %vec.ind.next2301, %vec.epilog.vector.body2295 ] ; 2 uses
  %i.doe = add nsw i64 %index2296, %i.dnp         ; 2 uses
  %i.dof = getelementptr inbounds [4 x i8], ptr %i.dlb, i64 %i.doe
  %i.dog = add <4 x i32> %broadcast.splat2291, %vec.ind2297
  store <4 x i32> %i.dog, ptr %i.dof, align 4, !tbaa !3
  %i.doh = getelementptr inbounds [4 x i8], ptr %i.dkr, i64 %i.doe
  %i.doi = add <4 x i32> %broadcast.splat2289, %vec.ind2298
  store <4 x i32> %i.doi, ptr %i.doh, align 4, !tbaa !3
  %index.next2299 = add nuw i64 %index2296, 4     ; 2 uses
  %vec.ind.next2300 = add <4 x i32> %vec.ind2297, splat (i32 4)
  %vec.ind.next2301 = add <4 x i32> %vec.ind2298, splat (i32 4)
  %i.doj = icmp eq i64 %index.next2299, %n.vec2287
  br i1 %i.doj, label %vec.epilog.middle.block2302, label %vec.epilog.vector.body2295, !llvm.loop !473

vec.epilog.middle.block2302:                      ; preds = %vec.epilog.vector.body2295
  %cmp.n2303 = icmp eq i64 %n.vec2287, %i.dnq
  br i1 %cmp.n2303, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i, label %.lr.ph.i.i867.preheader

.lr.ph.i.i867.preheader:                          ; preds = %iter.check2281, %vec.epilog.iter.check2283, %vec.epilog.middle.block2302
  %indvars.iv1461.ph = phi i64 [ 0, %iter.check2281 ], [ %n.vec2260, %vec.epilog.iter.check2283 ], [ %n.vec2287, %vec.epilog.middle.block2302 ] ; 6 uses
  %xtraiter2513 = and i64 %i.dnq, 1
  %lcmp.mod2514.not = icmp eq i64 %xtraiter2513, 0
  br i1 %lcmp.mod2514.not, label %.lr.ph.i.i867.prol.loopexit, label %.lr.ph.i.i867.prol

.lr.ph.i.i867.prol:                               ; preds = %.lr.ph.i.i867.preheader
  %i.dok = add nsw i64 %indvars.iv1461.ph, %i.dnp ; 2 uses
  %i.dol = getelementptr inbounds [4 x i8], ptr %i.dlb, i64 %i.dok
  %i.dom = trunc nuw nsw i64 %indvars.iv1461.ph to i32
  %i.don = add i32 %i.dno, %i.dom
  store i32 %i.don, ptr %i.dol, align 4, !tbaa !3
  %i.doo = getelementptr inbounds [4 x i8], ptr %i.dkr, i64 %i.dok
  %i.dop = trunc nuw nsw i64 %indvars.iv1461.ph to i32
  %i.doq = add i32 %i.dnk, %i.dop
  store i32 %i.doq, ptr %i.doo, align 4, !tbaa !3
  %indvars.iv.next1462.prol = or disjoint i64 %indvars.iv1461.ph, 1
  br label %.lr.ph.i.i867.prol.loopexit

.lr.ph.i.i867.prol.loopexit:                      ; preds = %.lr.ph.i.i867.prol, %.lr.ph.i.i867.preheader
  %indvars.iv1461.unr = phi i64 [ %indvars.iv1461.ph, %.lr.ph.i.i867.preheader ], [ %indvars.iv.next1462.prol, %.lr.ph.i.i867.prol ]
  %i.dor = add nsw i64 %i.dnq, -1
  %i.dos = icmp eq i64 %indvars.iv1461.ph, %i.dor
  br i1 %i.dos, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i, label %.lr.ph.i.i867

.lr.ph.i.i867:                                    ; preds = %.lr.ph.i.i867.prol.loopexit, %.lr.ph.i.i867
  %indvars.iv1461 = phi i64 [ %indvars.iv.next1462.1, %.lr.ph.i.i867 ], [ %indvars.iv1461.unr, %.lr.ph.i.i867.prol.loopexit ] ; 5 uses
  %i.dot = add nsw i64 %indvars.iv1461, %i.dnp    ; 2 uses
  %i.dou = getelementptr inbounds [4 x i8], ptr %i.dlb, i64 %i.dot
  %i.dov = trunc i64 %indvars.iv1461 to i32
  %i.dow = add i32 %i.dno, %i.dov
  store i32 %i.dow, ptr %i.dou, align 4, !tbaa !3
  %i.dox = getelementptr inbounds [4 x i8], ptr %i.dkr, i64 %i.dot
  %i.doy = trunc i64 %indvars.iv1461 to i32
  %i.doz = add i32 %i.dnk, %i.doy
  store i32 %i.doz, ptr %i.dox, align 4, !tbaa !3
  %indvars.iv.next1462 = add nuw nsw i64 %indvars.iv1461, 1 ; 3 uses
  %i.dpa = add nsw i64 %indvars.iv.next1462, %i.dnp ; 2 uses
  %i.dpb = getelementptr inbounds [4 x i8], ptr %i.dlb, i64 %i.dpa
  %i.dpc = trunc i64 %indvars.iv.next1462 to i32
  %i.dpd = add i32 %i.dno, %i.dpc
  store i32 %i.dpd, ptr %i.dpb, align 4, !tbaa !3
  %i.dpe = getelementptr inbounds [4 x i8], ptr %i.dkr, i64 %i.dpa
  %i.dpf = trunc i64 %indvars.iv.next1462 to i32
  %i.dpg = add i32 %i.dnk, %i.dpf
  store i32 %i.dpg, ptr %i.dpe, align 4, !tbaa !3
  %indvars.iv.next1462.1 = add nuw nsw i64 %indvars.iv1461, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next1462.1, %i.dnq
  br i1 %exitcond.not.i.i.1, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i, label %.lr.ph.i.i867, !llvm.loop !474

_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i: ; preds = %.lr.ph.i.i867.prol.loopexit, %.lr.ph.i.i867, %middle.block2278, %vec.epilog.middle.block2302, %bb.xl
  %i.dph = add nsw i32 %i.dnc, %.9
  %indvars.iv.next.i865 = add nsw i64 %indvars.iv.i864, 1 ; 2 uses
  %exitcond.not.i866 = icmp eq i64 %indvars.iv.next.i865, %wide.trip.count.i862
  br i1 %exitcond.not.i866, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit, label %bb.xl, !llvm.loop !475

bb.xm:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i830
  %i.dpi = load ptr, ptr %i.dld, align 8, !tbaa !314 ; 4 uses
  %i.dpj = getelementptr inbounds nuw i8, ptr %i.dld, i64 28
  %i.dpk = load i32, ptr %i.dpj, align 4, !tbaa !312 ; 6 uses
  %i.dpl = getelementptr inbounds nuw i8, ptr %i.dld, i64 32
  %i.dpm = load i32, ptr %i.dpl, align 8, !tbaa !196 ; 7 uses
  %.not.i.i.i.i838 = icmp slt i32 %i.dpk, %i.dpm
  br i1 %.not.i.i.i.i838, label %bb.xn, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit

bb.xn:                                            ; preds = %bb.xm
  %i.dpn = add i32 %i.dpk, 63                     ; 2 uses
  %i.dpo = srem i32 %i.dpn, 64
  %i.dpp = sub nsw i32 %i.dpn, %i.dpo             ; 6 uses
  %i.dpq = and i32 %i.dpm, -64                    ; 6 uses
  %i.dpr = icmp slt i32 %i.dpq, %i.dpp
  br i1 %i.dpr, label %bb.xo, label %bb.xq

bb.xo:                                            ; preds = %bb.xn
  %i.dps = ashr i32 %i.dpm, 6
  %i.dpt = and i32 %i.dpm, 63
  %i.dpu = zext nneg i32 %i.dpt to i64
  %notmask.i.i.i.i.i853 = shl nsw i64 -1, %i.dpu
  %i.dpv = xor i64 %notmask.i.i.i.i.i853, -1
  %i.dpw = sub nsw i32 %i.dpp, %i.dpk             ; 2 uses
  %i.dpx = zext nneg i32 %i.dpw to i64
  %notmask.i.i.i.i.i.i854 = shl nsw i64 -1, %i.dpx
  %i.dpy = xor i64 %notmask.i.i.i.i.i.i854, -1
  %i.dpz = sub nsw i32 64, %i.dpw
  %i.dqa = zext nneg i32 %i.dpz to i64
  %i.dqb = shl i64 %i.dpy, %i.dqa
  %i.dqc = and i64 %i.dqb, %i.dpv
  %i.dqd = sext i32 %i.dps to i64
  %i.dqe = getelementptr inbounds [8 x i8], ptr %i.dpi, i64 %i.dqd
  %i.dqf = load i64, ptr %i.dqe, align 8, !tbaa !145
  %i.dqg = and i64 %i.dqc, %i.dqf                 ; 2 uses
  %.not.i.i.i.i.i855 = icmp eq i64 %i.dqg, 0
  br i1 %.not.i.i.i.i.i855, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit, label %.preheader.i.i.i.i.i856

.preheader.i.i.i.i.i856:                          ; preds = %bb.xo
  %i.dqh = load ptr, ptr %i.p, align 8, !tbaa !310 ; 2 uses
  %i.dqi = load ptr, ptr %i.n, align 8, !tbaa !342
  %i.dqj = sext i32 %i.dpq to i64
  %i.dqk = getelementptr inbounds nuw i8, ptr %i.dqh, i64 120
  %i.dql = load ptr, ptr %i.dqk, align 8, !tbaa !308
  %i.dqm = getelementptr inbounds nuw i8, ptr %i.dqh, i64 104
  %i.dqn = load ptr, ptr %i.dqm, align 8, !tbaa !306
  %i.dqo = load ptr, ptr %i.q, align 8, !tbaa !310
  %i.dqp = load ptr, ptr %i.o, align 8, !tbaa !342
  %i.dqq = getelementptr inbounds nuw i8, ptr %i.dqo, i64 104
  %i.dqr = load ptr, ptr %i.dqq, align 8, !tbaa !306
  %i.dqs = sub i64 %i.dlc, %i.dks
  %diff.check2202 = icmp ugt i64 %i.dqs, -128
  br label %bb.xp

bb.xp:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i, %.preheader.i.i.i.i.i856
  %.8 = phi i32 [ 0, %.preheader.i.i.i.i.i856 ], [ %i.dte, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i ] ; 3 uses
  %.011.i.i.i.i.i858 = phi i64 [ %i.dqg, %.preheader.i.i.i.i.i856 ], [ %i.dtg, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i ] ; 3 uses
  %i.dqt = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i858, i1 true)
  %i.dqu = or disjoint i64 %i.dqt, %i.dqj         ; 4 uses
  %i.dqv = getelementptr inbounds [4 x i8], ptr %i.dqi, i64 %i.dqu ; 2 uses
  %i.dqw = load i32, ptr %i.dqv, align 4, !tbaa !3
  %i.dqx = sext i32 %i.dqw to i64
  %i.dqy = getelementptr inbounds [4 x i8], ptr %i.dql, i64 %i.dqx
  %i.dqz = load i32, ptr %i.dqy, align 4, !tbaa !3 ; 6 uses
  %i.dra = getelementptr inbounds [4 x i8], ptr %i.djw, i64 %i.dqu
  store i32 %.8, ptr %i.dra, align 4, !tbaa !3
  %i.drb = getelementptr inbounds [4 x i8], ptr %i.dkh, i64 %i.dqu
  store i32 %i.dqz, ptr %i.drb, align 4, !tbaa !3
  %i.drc = icmp sgt i32 %i.dqz, 0
  br i1 %i.drc, label %iter.check2229, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i

iter.check2229:                                   ; preds = %bb.xp
  %i.drd = getelementptr inbounds [4 x i8], ptr %i.dqp, i64 %i.dqu
  %i.dre = load i32, ptr %i.drd, align 4, !tbaa !3
  %i.drf = sext i32 %i.dre to i64
  %i.drg = getelementptr inbounds [4 x i8], ptr %i.dqr, i64 %i.drf
  %i.drh = load i32, ptr %i.drg, align 4, !tbaa !3 ; 5 uses
  %i.dri = load i32, ptr %i.dqv, align 4, !tbaa !3
  %i.drj = sext i32 %i.dri to i64
  %i.drk = getelementptr inbounds [4 x i8], ptr %i.dqn, i64 %i.drj
  %i.drl = load i32, ptr %i.drk, align 4, !tbaa !3 ; 5 uses
  %i.drm = sext i32 %.8 to i64                    ; 5 uses
  %i.drn = zext nneg i32 %i.dqz to i64            ; 8 uses
  %min.iters.check2203 = icmp ult i32 %i.dqz, 4
  %or.cond2387 = select i1 %min.iters.check2203, i1 true, i1 %diff.check2202
  br i1 %or.cond2387, label %.lr.ph.i.i.i.i.i.i860.preheader, label %vector.main.loop.iter.check2204

vector.main.loop.iter.check2204:                  ; preds = %iter.check2229
  %min.iters.check2205 = icmp ult i32 %i.dqz, 32
  br i1 %min.iters.check2205, label %vec.epilog.ph2233, label %vector.ph2206

vector.ph2206:                                    ; preds = %vector.main.loop.iter.check2204
  %n.mod.vf2207 = and i64 %i.drn, 28
  %n.vec2208 = and i64 %i.drn, 2147483616         ; 4 uses
  %broadcast.splatinsert2209 = insertelement <8 x i32> poison, i32 %i.drh, i64 0
  %broadcast.splat2210 = shufflevector <8 x i32> %broadcast.splatinsert2209, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert2211 = insertelement <8 x i32> poison, i32 %i.drl, i64 0
  %broadcast.splat2212 = shufflevector <8 x i32> %broadcast.splatinsert2211, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op2651 = add <8 x i32> splat (i32 8), %broadcast.splat2212
  %invariant.op2653 = add <8 x i32> splat (i32 16), %broadcast.splat2212
  %invariant.op2655 = add <8 x i32> splat (i32 24), %broadcast.splat2212
  %invariant.op2657 = add <8 x i32> splat (i32 8), %broadcast.splat2210
  %invariant.op2659 = add <8 x i32> splat (i32 16), %broadcast.splat2210
  %invariant.op2661 = add <8 x i32> splat (i32 24), %broadcast.splat2210
  br label %vector.body2213

vector.body2213:                                  ; preds = %vector.body2213, %vector.ph2206
  %index2214 = phi i64 [ 0, %vector.ph2206 ], [ %index.next2223, %vector.body2213 ] ; 2 uses
  %vec.ind2215 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2206 ], [ %vec.ind.next2224, %vector.body2213 ] ; 5 uses
  %vec.ind2216 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2206 ], [ %vec.ind.next2225, %vector.body2213 ] ; 5 uses
  %i.dro = add nsw i64 %index2214, %i.drm         ; 2 uses
  %i.drp = getelementptr inbounds [4 x i8], ptr %i.dlb, i64 %i.dro ; 4 uses
  %i.drq = add <8 x i32> %broadcast.splat2212, %vec.ind2215
  %.reass2652 = add <8 x i32> %vec.ind2215, %invariant.op2651
  %.reass2654 = add <8 x i32> %vec.ind2215, %invariant.op2653
  %.reass2656 = add <8 x i32> %vec.ind2215, %invariant.op2655
  %i.drr = getelementptr inbounds nuw i8, ptr %i.drp, i64 32
  %i.drs = getelementptr inbounds nuw i8, ptr %i.drp, i64 64
  %i.drt = getelementptr inbounds nuw i8, ptr %i.drp, i64 96
  store <8 x i32> %i.drq, ptr %i.drp, align 4, !tbaa !3
  store <8 x i32> %.reass2652, ptr %i.drr, align 4, !tbaa !3
  store <8 x i32> %.reass2654, ptr %i.drs, align 4, !tbaa !3
  store <8 x i32> %.reass2656, ptr %i.drt, align 4, !tbaa !3
  %i.dru = getelementptr inbounds [4 x i8], ptr %i.dkr, i64 %i.dro ; 4 uses
  %i.drv = add <8 x i32> %broadcast.splat2210, %vec.ind2216
  %.reass2658 = add <8 x i32> %vec.ind2216, %invariant.op2657
  %.reass2660 = add <8 x i32> %vec.ind2216, %invariant.op2659
  %.reass2662 = add <8 x i32> %vec.ind2216, %invariant.op2661
  %i.drw = getelementptr inbounds nuw i8, ptr %i.dru, i64 32
  %i.drx = getelementptr inbounds nuw i8, ptr %i.dru, i64 64
  %i.dry = getelementptr inbounds nuw i8, ptr %i.dru, i64 96
  store <8 x i32> %i.drv, ptr %i.dru, align 4, !tbaa !3
  store <8 x i32> %.reass2658, ptr %i.drw, align 4, !tbaa !3
  store <8 x i32> %.reass2660, ptr %i.drx, align 4, !tbaa !3
  store <8 x i32> %.reass2662, ptr %i.dry, align 4, !tbaa !3
  %index.next2223 = add nuw i64 %index2214, 32    ; 2 uses
  %vec.ind.next2224 = add <8 x i32> %vec.ind2215, splat (i32 32)
  %vec.ind.next2225 = add <8 x i32> %vec.ind2216, splat (i32 32)
  %i.drz = icmp eq i64 %index.next2223, %n.vec2208
  br i1 %i.drz, label %middle.block2226, label %vector.body2213, !llvm.loop !476

middle.block2226:                                 ; preds = %vector.body2213
  %cmp.n2227 = icmp eq i64 %n.vec2208, %i.drn
  br i1 %cmp.n2227, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i, label %vec.epilog.iter.check2231

vec.epilog.iter.check2231:                        ; preds = %middle.block2226
  %min.epilog.iters.check2232 = icmp eq i64 %n.mod.vf2207, 0
  br i1 %min.epilog.iters.check2232, label %.lr.ph.i.i.i.i.i.i860.preheader, label %vec.epilog.ph2233, !prof !472

vec.epilog.ph2233:                                ; preds = %vector.main.loop.iter.check2204, %vec.epilog.iter.check2231
  %vec.epilog.resume.val2228 = phi i64 [ %n.vec2208, %vec.epilog.iter.check2231 ], [ 0, %vector.main.loop.iter.check2204 ] ; 2 uses
  %n.vec2235 = and i64 %i.drn, 2147483644         ; 3 uses
  %broadcast.splatinsert2236 = insertelement <4 x i32> poison, i32 %i.drh, i64 0
  %broadcast.splat2237 = shufflevector <4 x i32> %broadcast.splatinsert2236, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2238 = insertelement <4 x i32> poison, i32 %i.drl, i64 0
  %broadcast.splat2239 = shufflevector <4 x i32> %broadcast.splatinsert2238, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.dsa = trunc nuw nsw i64 %vec.epilog.resume.val2228 to i32
  %broadcast.splatinsert2240 = insertelement <4 x i32> poison, i32 %i.dsa, i64 0
  %broadcast.splat2241 = shufflevector <4 x i32> %broadcast.splatinsert2240, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction2242 = or disjoint <4 x i32> %broadcast.splat2241, <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  br label %vec.epilog.vector.body2243

vec.epilog.vector.body2243:                       ; preds = %vec.epilog.vector.body2243, %vec.epilog.ph2233
  %index2244 = phi i64 [ %vec.epilog.resume.val2228, %vec.epilog.ph2233 ], [ %index.next2247, %vec.epilog.vector.body2243 ] ; 2 uses
  %vec.ind2245 = phi <4 x i32> [ %induction2242, %vec.epilog.ph2233 ], [ %vec.ind.next2248, %vec.epilog.vector.body2243 ] ; 2 uses
  %vec.ind2246 = phi <4 x i32> [ %induction2242, %vec.epilog.ph2233 ], [ %vec.ind.next2249, %vec.epilog.vector.body2243 ] ; 2 uses
  %i.dsb = add nsw i64 %index2244, %i.drm         ; 2 uses
  %i.dsc = getelementptr inbounds [4 x i8], ptr %i.dlb, i64 %i.dsb
  %i.dsd = add <4 x i32> %broadcast.splat2239, %vec.ind2245
  store <4 x i32> %i.dsd, ptr %i.dsc, align 4, !tbaa !3
  %i.dse = getelementptr inbounds [4 x i8], ptr %i.dkr, i64 %i.dsb
  %i.dsf = add <4 x i32> %broadcast.splat2237, %vec.ind2246
  store <4 x i32> %i.dsf, ptr %i.dse, align 4, !tbaa !3
  %index.next2247 = add nuw i64 %index2244, 4     ; 2 uses
  %vec.ind.next2248 = add <4 x i32> %vec.ind2245, splat (i32 4)
  %vec.ind.next2249 = add <4 x i32> %vec.ind2246, splat (i32 4)
  %i.dsg = icmp eq i64 %index.next2247, %n.vec2235
  br i1 %i.dsg, label %vec.epilog.middle.block2250, label %vec.epilog.vector.body2243, !llvm.loop !477

vec.epilog.middle.block2250:                      ; preds = %vec.epilog.vector.body2243
  %cmp.n2251 = icmp eq i64 %n.vec2235, %i.drn
  br i1 %cmp.n2251, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i860.preheader

.lr.ph.i.i.i.i.i.i860.preheader:                  ; preds = %iter.check2229, %vec.epilog.iter.check2231, %vec.epilog.middle.block2250
  %indvars.iv1458.ph = phi i64 [ 0, %iter.check2229 ], [ %n.vec2208, %vec.epilog.iter.check2231 ], [ %n.vec2235, %vec.epilog.middle.block2250 ] ; 6 uses
  %xtraiter2511 = and i64 %i.drn, 1
  %lcmp.mod2512.not = icmp eq i64 %xtraiter2511, 0
  br i1 %lcmp.mod2512.not, label %.lr.ph.i.i.i.i.i.i860.prol.loopexit, label %.lr.ph.i.i.i.i.i.i860.prol

.lr.ph.i.i.i.i.i.i860.prol:                       ; preds = %.lr.ph.i.i.i.i.i.i860.preheader
  %i.dsh = add nsw i64 %indvars.iv1458.ph, %i.drm ; 2 uses
  %i.dsi = getelementptr inbounds [4 x i8], ptr %i.dlb, i64 %i.dsh
  %i.dsj = trunc nuw nsw i64 %indvars.iv1458.ph to i32
  %i.dsk = add i32 %i.drl, %i.dsj
  store i32 %i.dsk, ptr %i.dsi, align 4, !tbaa !3
  %i.dsl = getelementptr inbounds [4 x i8], ptr %i.dkr, i64 %i.dsh
  %i.dsm = trunc nuw nsw i64 %indvars.iv1458.ph to i32
  %i.dsn = add i32 %i.drh, %i.dsm
  store i32 %i.dsn, ptr %i.dsl, align 4, !tbaa !3
  %indvars.iv.next1459.prol = or disjoint i64 %indvars.iv1458.ph, 1
  br label %.lr.ph.i.i.i.i.i.i860.prol.loopexit

.lr.ph.i.i.i.i.i.i860.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i.i.i860.prol, %.lr.ph.i.i.i.i.i.i860.preheader
  %indvars.iv1458.unr = phi i64 [ %indvars.iv1458.ph, %.lr.ph.i.i.i.i.i.i860.preheader ], [ %indvars.iv.next1459.prol, %.lr.ph.i.i.i.i.i.i860.prol ]
  %i.dso = add nsw i64 %i.drn, -1
  %i.dsp = icmp eq i64 %indvars.iv1458.ph, %i.dso
  br i1 %i.dsp, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i860

.lr.ph.i.i.i.i.i.i860:                            ; preds = %.lr.ph.i.i.i.i.i.i860.prol.loopexit, %.lr.ph.i.i.i.i.i.i860
  %indvars.iv1458 = phi i64 [ %indvars.iv.next1459.1, %.lr.ph.i.i.i.i.i.i860 ], [ %indvars.iv1458.unr, %.lr.ph.i.i.i.i.i.i860.prol.loopexit ] ; 5 uses
  %i.dsq = add nsw i64 %indvars.iv1458, %i.drm    ; 2 uses
  %i.dsr = getelementptr inbounds [4 x i8], ptr %i.dlb, i64 %i.dsq
  %i.dss = trunc i64 %indvars.iv1458 to i32
  %i.dst = add i32 %i.drl, %i.dss
  store i32 %i.dst, ptr %i.dsr, align 4, !tbaa !3
  %i.dsu = getelementptr inbounds [4 x i8], ptr %i.dkr, i64 %i.dsq
  %i.dsv = trunc i64 %indvars.iv1458 to i32
  %i.dsw = add i32 %i.drh, %i.dsv
  store i32 %i.dsw, ptr %i.dsu, align 4, !tbaa !3
  %indvars.iv.next1459 = add nuw nsw i64 %indvars.iv1458, 1 ; 3 uses
  %i.dsx = add nsw i64 %indvars.iv.next1459, %i.drm ; 2 uses
  %i.dsy = getelementptr inbounds [4 x i8], ptr %i.dlb, i64 %i.dsx
  %i.dsz = trunc i64 %indvars.iv.next1459 to i32
  %i.dta = add i32 %i.drl, %i.dsz
  store i32 %i.dta, ptr %i.dsy, align 4, !tbaa !3
  %i.dtb = getelementptr inbounds [4 x i8], ptr %i.dkr, i64 %i.dsx
  %i.dtc = trunc i64 %indvars.iv.next1459 to i32
  %i.dtd = add i32 %i.drh, %i.dtc
  store i32 %i.dtd, ptr %i.dtb, align 4, !tbaa !3
  %indvars.iv.next1459.1 = add nuw nsw i64 %indvars.iv1458, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %indvars.iv.next1459.1, %i.drn
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i860, !llvm.loop !478

_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i860.prol.loopexit, %.lr.ph.i.i.i.i.i.i860, %middle.block2226, %vec.epilog.middle.block2250, %bb.xp
  %i.dte = add nsw i32 %i.dqz, %.8
  %i.dtf = add nsw i64 %.011.i.i.i.i.i858, -1
  %i.dtg = and i64 %i.dtf, %.011.i.i.i.i.i858     ; 2 uses
  %.not10.i.i.i.i.i859 = icmp eq i64 %i.dtg, 0
  br i1 %.not10.i.i.i.i.i859, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit, label %bb.xp, !llvm.loop !479

bb.xq:                                            ; preds = %bb.xn
  %.not32.i.i.i.i839 = icmp eq i32 %i.dpk, %i.dpp
  br i1 %.not32.i.i.i.i839, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUlimE_clEim.exit45.i.i.i.i, label %bb.xr

bb.xr:                                            ; preds = %bb.xq
  %i.dth = sdiv i32 %i.dpk, 64                    ; 2 uses
  %i.dti = sub nsw i32 %i.dpp, %i.dpk             ; 2 uses
  %i.dtj = zext nneg i32 %i.dti to i64
  %notmask.i.i35.i.i.i.i840 = shl nsw i64 -1, %i.dtj
  %i.dtk = xor i64 %notmask.i.i35.i.i.i.i840, -1
  %i.dtl = sub nsw i32 64, %i.dti
  %i.dtm = zext nneg i32 %i.dtl to i64
  %i.dtn = shl i64 %i.dtk, %i.dtm
  %i.dto = sext i32 %i.dth to i64
  %i.dtp = getelementptr inbounds [8 x i8], ptr %i.dpi, i64 %i.dto
  %i.dtq = load i64, ptr %i.dtp, align 8, !tbaa !145
  %i.dtr = and i64 %i.dtq, %i.dtn                 ; 2 uses
  %.not.i36.i.i.i.i841 = icmp eq i64 %i.dtr, 0
  br i1 %.not.i36.i.i.i.i841, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUlimE_clEim.exit45.i.i.i.i, label %.preheader.i37.i.i.i.i842

.preheader.i37.i.i.i.i842:                        ; preds = %bb.xr
  %i.dts = shl nsw i32 %i.dth, 6
  %i.dtt = load ptr, ptr %i.p, align 8, !tbaa !310 ; 2 uses
  %i.dtu = load ptr, ptr %i.n, align 8, !tbaa !342
  %i.dtv = sext i32 %i.dts to i64
  %i.dtw = getelementptr inbounds nuw i8, ptr %i.dtt, i64 120
  %i.dtx = load ptr, ptr %i.dtw, align 8, !tbaa !308
  %i.dty = getelementptr inbounds nuw i8, ptr %i.dtt, i64 104
  %i.dtz = load ptr, ptr %i.dty, align 8, !tbaa !306
  %i.dua = load ptr, ptr %i.q, align 8, !tbaa !310
  %i.dub = load ptr, ptr %i.o, align 8, !tbaa !342
  %i.duc = getelementptr inbounds nuw i8, ptr %i.dua, i64 104
  %i.dud = load ptr, ptr %i.duc, align 8, !tbaa !306
  %i.due = sub i64 %i.dlc, %i.dks
  %diff.check = icmp ugt i64 %i.due, -128
  br label %bb.xs

bb.xs:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i, %.preheader.i37.i.i.i.i842
  %.0 = phi i32 [ 0, %.preheader.i37.i.i.i.i842 ], [ %i.dwq, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i ] ; 3 uses
  %.011.i39.i.i.i.i844 = phi i64 [ %i.dtr, %.preheader.i37.i.i.i.i842 ], [ %i.dws, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i ] ; 3 uses
  %i.duf = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i39.i.i.i.i844, i1 true)
  %i.dug = or disjoint i64 %i.duf, %i.dtv         ; 4 uses
  %i.duh = getelementptr inbounds [4 x i8], ptr %i.dtu, i64 %i.dug ; 2 uses
  %i.dui = load i32, ptr %i.duh, align 4, !tbaa !3
  %i.duj = sext i32 %i.dui to i64
  %i.duk = getelementptr inbounds [4 x i8], ptr %i.dtx, i64 %i.duj
  %i.dul = load i32, ptr %i.duk, align 4, !tbaa !3 ; 6 uses
  %i.dum = getelementptr inbounds [4 x i8], ptr %i.djw, i64 %i.dug
  store i32 %.0, ptr %i.dum, align 4, !tbaa !3
  %i.dun = getelementptr inbounds [4 x i8], ptr %i.dkh, i64 %i.dug
  store i32 %i.dul, ptr %i.dun, align 4, !tbaa !3
  %i.duo = icmp sgt i32 %i.dul, 0
  br i1 %i.duo, label %iter.check2023, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i

iter.check2023:                                   ; preds = %bb.xs
  %i.dup = getelementptr inbounds [4 x i8], ptr %i.dub, i64 %i.dug
  %i.duq = load i32, ptr %i.dup, align 4, !tbaa !3
  %i.dur = sext i32 %i.duq to i64
  %i.dus = getelementptr inbounds [4 x i8], ptr %i.dud, i64 %i.dur
  %i.dut = load i32, ptr %i.dus, align 4, !tbaa !3 ; 5 uses
  %i.duu = load i32, ptr %i.duh, align 4, !tbaa !3
  %i.duv = sext i32 %i.duu to i64
  %i.duw = getelementptr inbounds [4 x i8], ptr %i.dtz, i64 %i.duv
  %i.dux = load i32, ptr %i.duw, align 4, !tbaa !3 ; 5 uses
  %i.duy = sext i32 %.0 to i64                    ; 5 uses
  %i.duz = zext nneg i32 %i.dul to i64            ; 8 uses
  %min.iters.check2004 = icmp ult i32 %i.dul, 4
  %or.cond2388 = select i1 %min.iters.check2004, i1 true, i1 %diff.check
  br i1 %or.cond2388, label %.lr.ph.i.i42.i.i.i.i.preheader, label %vector.main.loop.iter.check2005

vector.main.loop.iter.check2005:                  ; preds = %iter.check2023
  %min.iters.check2006 = icmp ult i32 %i.dul, 32
  br i1 %min.iters.check2006, label %vec.epilog.ph2027, label %vector.ph2007

vector.ph2007:                                    ; preds = %vector.main.loop.iter.check2005
  %n.mod.vf2008 = and i64 %i.duz, 28
  %n.vec2009 = and i64 %i.duz, 2147483616         ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.dut, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert2010 = insertelement <8 x i32> poison, i32 %i.dux, i64 0
  %broadcast.splat2011 = shufflevector <8 x i32> %broadcast.splatinsert2010, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op = add <8 x i32> splat (i32 8), %broadcast.splat2011
  %invariant.op2605 = add <8 x i32> splat (i32 16), %broadcast.splat2011
  %invariant.op2607 = add <8 x i32> splat (i32 24), %broadcast.splat2011
  %invariant.op2609 = add <8 x i32> splat (i32 8), %broadcast.splat
  %invariant.op2611 = add <8 x i32> splat (i32 16), %broadcast.splat
  %invariant.op2613 = add <8 x i32> splat (i32 24), %broadcast.splat
  br label %vector.body2012

vector.body2012:                                  ; preds = %vector.body2012, %vector.ph2007
  %index2013 = phi i64 [ 0, %vector.ph2007 ], [ %index.next2018, %vector.body2012 ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2007 ], [ %vec.ind.next, %vector.body2012 ] ; 5 uses
  %vec.ind2014 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2007 ], [ %vec.ind.next2019, %vector.body2012 ] ; 5 uses
  %i.dva = add nsw i64 %index2013, %i.duy         ; 2 uses
  %i.dvb = getelementptr inbounds [4 x i8], ptr %i.dlb, i64 %i.dva ; 4 uses
  %i.dvc = add <8 x i32> %broadcast.splat2011, %vec.ind
  %.reass = add <8 x i32> %vec.ind, %invariant.op
  %.reass2606 = add <8 x i32> %vec.ind, %invariant.op2605
  %.reass2608 = add <8 x i32> %vec.ind, %invariant.op2607
  %i.dvd = getelementptr inbounds nuw i8, ptr %i.dvb, i64 32
  %i.dve = getelementptr inbounds nuw i8, ptr %i.dvb, i64 64
  %i.dvf = getelementptr inbounds nuw i8, ptr %i.dvb, i64 96
  store <8 x i32> %i.dvc, ptr %i.dvb, align 4, !tbaa !3
  store <8 x i32> %.reass, ptr %i.dvd, align 4, !tbaa !3
  store <8 x i32> %.reass2606, ptr %i.dve, align 4, !tbaa !3
  store <8 x i32> %.reass2608, ptr %i.dvf, align 4, !tbaa !3
  %i.dvg = getelementptr inbounds [4 x i8], ptr %i.dkr, i64 %i.dva ; 4 uses
  %i.dvh = add <8 x i32> %broadcast.splat, %vec.ind2014
  %.reass2610 = add <8 x i32> %vec.ind2014, %invariant.op2609
  %.reass2612 = add <8 x i32> %vec.ind2014, %invariant.op2611
  %.reass2614 = add <8 x i32> %vec.ind2014, %invariant.op2613
  %i.dvi = getelementptr inbounds nuw i8, ptr %i.dvg, i64 32
  %i.dvj = getelementptr inbounds nuw i8, ptr %i.dvg, i64 64
  %i.dvk = getelementptr inbounds nuw i8, ptr %i.dvg, i64 96
  store <8 x i32> %i.dvh, ptr %i.dvg, align 4, !tbaa !3
  store <8 x i32> %.reass2610, ptr %i.dvi, align 4, !tbaa !3
  store <8 x i32> %.reass2612, ptr %i.dvj, align 4, !tbaa !3
  store <8 x i32> %.reass2614, ptr %i.dvk, align 4, !tbaa !3
  %index.next2018 = add nuw i64 %index2013, 32    ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %vec.ind.next2019 = add <8 x i32> %vec.ind2014, splat (i32 32)
  %i.dvl = icmp eq i64 %index.next2018, %n.vec2009
  br i1 %i.dvl, label %middle.block2020, label %vector.body2012, !llvm.loop !480

middle.block2020:                                 ; preds = %vector.body2012
  %cmp.n2021 = icmp eq i64 %n.vec2009, %i.duz
  br i1 %cmp.n2021, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i, label %vec.epilog.iter.check2025

vec.epilog.iter.check2025:                        ; preds = %middle.block2020
  %min.epilog.iters.check2026 = icmp eq i64 %n.mod.vf2008, 0
  br i1 %min.epilog.iters.check2026, label %.lr.ph.i.i42.i.i.i.i.preheader, label %vec.epilog.ph2027, !prof !472

vec.epilog.ph2027:                                ; preds = %vector.main.loop.iter.check2005, %vec.epilog.iter.check2025
  %vec.epilog.resume.val2022 = phi i64 [ %n.vec2009, %vec.epilog.iter.check2025 ], [ 0, %vector.main.loop.iter.check2005 ] ; 2 uses
  %n.vec2029 = and i64 %i.duz, 2147483644         ; 3 uses
  %broadcast.splatinsert2030 = insertelement <4 x i32> poison, i32 %i.dut, i64 0
  %broadcast.splat2031 = shufflevector <4 x i32> %broadcast.splatinsert2030, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2032 = insertelement <4 x i32> poison, i32 %i.dux, i64 0
  %broadcast.splat2033 = shufflevector <4 x i32> %broadcast.splatinsert2032, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.dvm = trunc nuw nsw i64 %vec.epilog.resume.val2022 to i32
  %broadcast.splatinsert2034 = insertelement <4 x i32> poison, i32 %i.dvm, i64 0
  %broadcast.splat2035 = shufflevector <4 x i32> %broadcast.splatinsert2034, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat2035, <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  br label %vec.epilog.vector.body2036

vec.epilog.vector.body2036:                       ; preds = %vec.epilog.vector.body2036, %vec.epilog.ph2027
  %index2037 = phi i64 [ %vec.epilog.resume.val2022, %vec.epilog.ph2027 ], [ %index.next2040, %vec.epilog.vector.body2036 ] ; 2 uses
  %vec.ind2038 = phi <4 x i32> [ %induction, %vec.epilog.ph2027 ], [ %vec.ind.next2041, %vec.epilog.vector.body2036 ] ; 2 uses
  %vec.ind2039 = phi <4 x i32> [ %induction, %vec.epilog.ph2027 ], [ %vec.ind.next2042, %vec.epilog.vector.body2036 ] ; 2 uses
  %i.dvn = add nsw i64 %index2037, %i.duy         ; 2 uses
  %i.dvo = getelementptr inbounds [4 x i8], ptr %i.dlb, i64 %i.dvn
  %i.dvp = add <4 x i32> %broadcast.splat2033, %vec.ind2038
  store <4 x i32> %i.dvp, ptr %i.dvo, align 4, !tbaa !3
  %i.dvq = getelementptr inbounds [4 x i8], ptr %i.dkr, i64 %i.dvn
  %i.dvr = add <4 x i32> %broadcast.splat2031, %vec.ind2039
  store <4 x i32> %i.dvr, ptr %i.dvq, align 4, !tbaa !3
  %index.next2040 = add nuw i64 %index2037, 4     ; 2 uses
  %vec.ind.next2041 = add <4 x i32> %vec.ind2038, splat (i32 4)
  %vec.ind.next2042 = add <4 x i32> %vec.ind2039, splat (i32 4)
  %i.dvs = icmp eq i64 %index.next2040, %n.vec2029
  br i1 %i.dvs, label %vec.epilog.middle.block2043, label %vec.epilog.vector.body2036, !llvm.loop !481

vec.epilog.middle.block2043:                      ; preds = %vec.epilog.vector.body2036
  %cmp.n2044 = icmp eq i64 %n.vec2029, %i.duz
  br i1 %cmp.n2044, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i, label %.lr.ph.i.i42.i.i.i.i.preheader

.lr.ph.i.i42.i.i.i.i.preheader:                   ; preds = %iter.check2023, %vec.epilog.iter.check2025, %vec.epilog.middle.block2043
  %indvars.iv.ph = phi i64 [ 0, %iter.check2023 ], [ %n.vec2009, %vec.epilog.iter.check2025 ], [ %n.vec2029, %vec.epilog.middle.block2043 ] ; 6 uses
  %xtraiter = and i64 %i.duz, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i42.i.i.i.i.prol.loopexit, label %.lr.ph.i.i42.i.i.i.i.prol

.lr.ph.i.i42.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i42.i.i.i.i.preheader
  %i.dvt = add nsw i64 %indvars.iv.ph, %i.duy     ; 2 uses
  %i.dvu = getelementptr inbounds [4 x i8], ptr %i.dlb, i64 %i.dvt
  %i.dvv = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.dvw = add i32 %i.dux, %i.dvv
  store i32 %i.dvw, ptr %i.dvu, align 4, !tbaa !3
  %i.dvx = getelementptr inbounds [4 x i8], ptr %i.dkr, i64 %i.dvt
  %i.dvy = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.dvz = add i32 %i.dut, %i.dvy
  store i32 %i.dvz, ptr %i.dvx, align 4, !tbaa !3
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.i.i42.i.i.i.i.prol.loopexit

.lr.ph.i.i42.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i42.i.i.i.i.prol, %.lr.ph.i.i42.i.i.i.i.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.i.i42.i.i.i.i.preheader ], [ %indvars.iv.next.prol, %.lr.ph.i.i42.i.i.i.i.prol ]
  %i.dwa = add nsw i64 %i.duz, -1
  %i.dwb = icmp eq i64 %indvars.iv.ph, %i.dwa
  br i1 %i.dwb, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i, label %.lr.ph.i.i42.i.i.i.i

.lr.ph.i.i42.i.i.i.i:                             ; preds = %.lr.ph.i.i42.i.i.i.i.prol.loopexit, %.lr.ph.i.i42.i.i.i.i
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.i.i42.i.i.i.i ], [ %indvars.iv.unr, %.lr.ph.i.i42.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.dwc = add nsw i64 %indvars.iv, %i.duy        ; 2 uses
  %i.dwd = getelementptr inbounds [4 x i8], ptr %i.dlb, i64 %i.dwc
  %i.dwe = trunc i64 %indvars.iv to i32
  %i.dwf = add i32 %i.dux, %i.dwe
  store i32 %i.dwf, ptr %i.dwd, align 4, !tbaa !3
  %i.dwg = getelementptr inbounds [4 x i8], ptr %i.dkr, i64 %i.dwc
  %i.dwh = trunc i64 %indvars.iv to i32
  %i.dwi = add i32 %i.dut, %i.dwh
  store i32 %i.dwi, ptr %i.dwg, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.dwj = add nsw i64 %indvars.iv.next, %i.duy   ; 2 uses
  %i.dwk = getelementptr inbounds [4 x i8], ptr %i.dlb, i64 %i.dwj
  %i.dwl = trunc i64 %indvars.iv.next to i32
  %i.dwm = add i32 %i.dux, %i.dwl
  store i32 %i.dwm, ptr %i.dwk, align 4, !tbaa !3
  %i.dwn = getelementptr inbounds [4 x i8], ptr %i.dkr, i64 %i.dwj
  %i.dwo = trunc i64 %indvars.iv.next to i32
  %i.dwp = add i32 %i.dut, %i.dwo
  store i32 %i.dwp, ptr %i.dwn, align 4, !tbaa !3
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.i.i44.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.1, %i.duz
  br i1 %exitcond.not.i.i44.i.i.i.i.1, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i, label %.lr.ph.i.i42.i.i.i.i, !llvm.loop !482

_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i: ; preds = %.lr.ph.i.i42.i.i.i.i.prol.loopexit, %.lr.ph.i.i42.i.i.i.i, %middle.block2020, %vec.epilog.middle.block2043, %bb.xs
  %i.dwq = add nsw i32 %i.dul, %.0                ; 2 uses
  %i.dwr = add i64 %.011.i39.i.i.i.i844, -1
  %i.dws = and i64 %i.dwr, %.011.i39.i.i.i.i844   ; 2 uses
  %.not10.i41.i.i.i.i = icmp eq i64 %i.dws, 0
  br i1 %.not10.i41.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUlimE_clEim.exit45.i.i.i.i, label %bb.xs, !llvm.loop !479

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUlimE_clEim.exit45.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i, %bb.xr, %bb.xq
  %.1 = phi i32 [ 0, %bb.xq ], [ 0, %bb.xr ], [ %i.dwq, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i ] ; 2 uses
  %i.dwt = add nsw i32 %i.dpp, 64                 ; 2 uses
  %.not3365.i.i.i.i = icmp sgt i32 %i.dwt, %i.dpq
  br i1 %.not3365.i.i.i.i, label %._crit_edge.i.i.i.i847, label %.lr.ph.i.i.i.i845.preheader

.lr.ph.i.i.i.i845.preheader:                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUlimE_clEim.exit45.i.i.i.i
  %i.dwu = load ptr, ptr %i.p, align 8            ; 2 uses
  %i.dwv = load ptr, ptr %i.n, align 8            ; 2 uses
  %i.dww = getelementptr inbounds nuw i8, ptr %i.dwu, i64 120 ; 2 uses
  %i.dwx = getelementptr inbounds nuw i8, ptr %i.dwu, i64 104 ; 2 uses
  %i.dwy = load ptr, ptr %i.q, align 8
  %i.dwz = load ptr, ptr %i.o, align 8            ; 2 uses
  %i.dxa = getelementptr inbounds nuw i8, ptr %i.dwy, i64 104 ; 2 uses
  %i.dxb = sub i64 %i.dks, %i.dlc                 ; 2 uses
  %127 = add i64 %i.dxb, -1
  %diff.check2098 = icmp ult i64 %127, 127
  %128 = add i64 %i.dxb, -1
  %diff.check2046 = icmp ult i64 %128, 127
  br label %.lr.ph.i.i.i.i845

._crit_edge.i.i.i.i847:                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUlimE_clEim.exit45.i.i.i.i
  %.4 = phi i32 [ %.1, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUlimE_clEim.exit45.i.i.i.i ], [ %.3, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ]
  %.not34.i.i.i.i848 = icmp eq i32 %i.dpm, %i.dpq
  br i1 %.not34.i.i.i.i848, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit, label %bb.xw

.lr.ph.i.i.i.i845:                                ; preds = %.lr.ph.i.i.i.i845.preheader, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  %.2 = phi i32 [ %.3, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %.1, %.lr.ph.i.i.i.i845.preheader ] ; 4 uses
  %i.dxc = phi i32 [ %i.ecu, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %i.dwt, %.lr.ph.i.i.i.i845.preheader ] ; 2 uses
  %.066.i.i.i.i = phi i32 [ %i.dxc, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %i.dpp, %.lr.ph.i.i.i.i845.preheader ] ; 2 uses
  %i.dxd = sdiv i32 %.066.i.i.i.i, 64             ; 3 uses
  %i.dxe = sext i32 %i.dxd to i64
  %i.dxf = getelementptr inbounds [8 x i8], ptr %i.dpi, i64 %i.dxe
  %i.dxg = load i64, ptr %i.dxf, align 8, !tbaa !145 ; 2 uses
  switch i64 %i.dxg, label %.lr.ph.i.i.i.i.i852 [
    i64 -1, label %bb.xt
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  ]

.lr.ph.i.i.i.i.i852:                              ; preds = %.lr.ph.i.i.i.i845
  %i.dxh = shl nsw i32 %i.dxd, 6
  %i.dxi = sext i32 %i.dxh to i64
  %i.dxj = load ptr, ptr %i.dww, align 8, !tbaa !308
  %i.dxk = load ptr, ptr %i.dwx, align 8, !tbaa !306
  %i.dxl = load ptr, ptr %i.dxa, align 8, !tbaa !306
  br label %bb.xv

bb.xt:                                            ; preds = %.lr.ph.i.i.i.i845
  %i.dxm = shl nsw i32 %i.dxd, 6                  ; 2 uses
  %i.dxn = add i32 %i.dxm, 64
  %i.dxo = sext i32 %i.dxn to i64
  %.0.off.i.i.i.i850 = add i32 %.066.i.i.i.i, 127
  %.not26.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i850, 64
  br i1 %.not26.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %.lr.ph25.i.i.i.i.i

.lr.ph25.i.i.i.i.i:                               ; preds = %bb.xt
  %i.dxp = sext i32 %i.dxm to i64
  %i.dxq = load ptr, ptr %i.dww, align 8, !tbaa !308
  %i.dxr = load ptr, ptr %i.dwx, align 8, !tbaa !306
  %i.dxs = load ptr, ptr %i.dxa, align 8, !tbaa !306
  br label %bb.xu

bb.xu:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i, %.lr.ph25.i.i.i.i.i
  %.6 = phi i32 [ %.2, %.lr.ph25.i.i.i.i.i ], [ %i.ead, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i ] ; 3 uses
  %.024.i.i.i.i.i = phi i64 [ %i.dxp, %.lr.ph25.i.i.i.i.i ], [ %i.eae, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i ] ; 2 uses
  %sext.i.i.i.i.i851 = shl i64 %.024.i.i.i.i.i, 32
  %i.dxt = ashr exact i64 %sext.i.i.i.i.i851, 32  ; 4 uses
  %i.dxu = getelementptr inbounds [4 x i8], ptr %i.dwv, i64 %i.dxt ; 2 uses
  %i.dxv = load i32, ptr %i.dxu, align 4, !tbaa !3
  %i.dxw = sext i32 %i.dxv to i64
  %i.dxx = getelementptr inbounds [4 x i8], ptr %i.dxq, i64 %i.dxw
  %i.dxy = load i32, ptr %i.dxx, align 4, !tbaa !3 ; 6 uses
  %i.dxz = getelementptr inbounds [4 x i8], ptr %i.djw, i64 %i.dxt
  store i32 %.6, ptr %i.dxz, align 4, !tbaa !3
  %i.dya = getelementptr inbounds [4 x i8], ptr %i.dkh, i64 %i.dxt
  store i32 %i.dxy, ptr %i.dya, align 4, !tbaa !3
  %i.dyb = icmp sgt i32 %i.dxy, 0
  br i1 %i.dyb, label %iter.check2125, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i

iter.check2125:                                   ; preds = %bb.xu
  %i.dyc = getelementptr inbounds [4 x i8], ptr %i.dwz, i64 %i.dxt
  %i.dyd = load i32, ptr %i.dyc, align 4, !tbaa !3
  %i.dye = sext i32 %i.dyd to i64
  %i.dyf = getelementptr inbounds [4 x i8], ptr %i.dxs, i64 %i.dye
  %i.dyg = load i32, ptr %i.dyf, align 4, !tbaa !3 ; 5 uses
  %i.dyh = load i32, ptr %i.dxu, align 4, !tbaa !3
  %i.dyi = sext i32 %i.dyh to i64
  %i.dyj = getelementptr inbounds [4 x i8], ptr %i.dxr, i64 %i.dyi
  %i.dyk = load i32, ptr %i.dyj, align 4, !tbaa !3 ; 5 uses
  %i.dyl = sext i32 %.6 to i64                    ; 5 uses
  %i.dym = zext nneg i32 %i.dxy to i64            ; 8 uses
  %min.iters.check2099 = icmp ult i32 %i.dxy, 4
  %or.cond2389 = select i1 %min.iters.check2099, i1 true, i1 %diff.check2098
  br i1 %or.cond2389, label %.lr.ph.i.i48.i.i.i.i.preheader, label %vector.main.loop.iter.check2100

vector.main.loop.iter.check2100:                  ; preds = %iter.check2125
  %min.iters.check2101 = icmp ult i32 %i.dxy, 32
  br i1 %min.iters.check2101, label %vec.epilog.ph2129, label %vector.ph2102

vector.ph2102:                                    ; preds = %vector.main.loop.iter.check2100
  %n.mod.vf2103 = and i64 %i.dym, 28
  %n.vec2104 = and i64 %i.dym, 2147483616         ; 4 uses
  %broadcast.splatinsert2105 = insertelement <8 x i32> poison, i32 %i.dyg, i64 0
  %broadcast.splat2106 = shufflevector <8 x i32> %broadcast.splatinsert2105, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert2107 = insertelement <8 x i32> poison, i32 %i.dyk, i64 0
  %broadcast.splat2108 = shufflevector <8 x i32> %broadcast.splatinsert2107, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op2615 = add <8 x i32> splat (i32 8), %broadcast.splat2108
  %invariant.op2617 = add <8 x i32> splat (i32 16), %broadcast.splat2108
  %invariant.op2619 = add <8 x i32> splat (i32 24), %broadcast.splat2108
  %invariant.op2621 = add <8 x i32> splat (i32 8), %broadcast.splat2106
  %invariant.op2623 = add <8 x i32> splat (i32 16), %broadcast.splat2106
  %invariant.op2625 = add <8 x i32> splat (i32 24), %broadcast.splat2106
  br label %vector.body2109

vector.body2109:                                  ; preds = %vector.body2109, %vector.ph2102
  %index2110 = phi i64 [ 0, %vector.ph2102 ], [ %index.next2119, %vector.body2109 ] ; 2 uses
  %vec.ind2111 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2102 ], [ %vec.ind.next2120, %vector.body2109 ] ; 5 uses
  %vec.ind2112 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2102 ], [ %vec.ind.next2121, %vector.body2109 ] ; 5 uses
  %i.dyn = add nsw i64 %index2110, %i.dyl         ; 2 uses
  %i.dyo = getelementptr inbounds [4 x i8], ptr %i.dlb, i64 %i.dyn ; 4 uses
  %i.dyp = add <8 x i32> %broadcast.splat2108, %vec.ind2111
  %.reass2616 = add <8 x i32> %vec.ind2111, %invariant.op2615
  %.reass2618 = add <8 x i32> %vec.ind2111, %invariant.op2617
  %.reass2620 = add <8 x i32> %vec.ind2111, %invariant.op2619
  %i.dyq = getelementptr inbounds nuw i8, ptr %i.dyo, i64 32
  %i.dyr = getelementptr inbounds nuw i8, ptr %i.dyo, i64 64
  %i.dys = getelementptr inbounds nuw i8, ptr %i.dyo, i64 96
  store <8 x i32> %i.dyp, ptr %i.dyo, align 4, !tbaa !3
  store <8 x i32> %.reass2616, ptr %i.dyq, align 4, !tbaa !3
  store <8 x i32> %.reass2618, ptr %i.dyr, align 4, !tbaa !3
  store <8 x i32> %.reass2620, ptr %i.dys, align 4, !tbaa !3
  %i.dyt = getelementptr inbounds [4 x i8], ptr %i.dkr, i64 %i.dyn ; 4 uses
  %i.dyu = add <8 x i32> %broadcast.splat2106, %vec.ind2112
  %.reass2622 = add <8 x i32> %vec.ind2112, %invariant.op2621
  %.reass2624 = add <8 x i32> %vec.ind2112, %invariant.op2623
  %.reass2626 = add <8 x i32> %vec.ind2112, %invariant.op2625
  %i.dyv = getelementptr inbounds nuw i8, ptr %i.dyt, i64 32
  %i.dyw = getelementptr inbounds nuw i8, ptr %i.dyt, i64 64
  %i.dyx = getelementptr inbounds nuw i8, ptr %i.dyt, i64 96
  store <8 x i32> %i.dyu, ptr %i.dyt, align 4, !tbaa !3
  store <8 x i32> %.reass2622, ptr %i.dyv, align 4, !tbaa !3
  store <8 x i32> %.reass2624, ptr %i.dyw, align 4, !tbaa !3
  store <8 x i32> %.reass2626, ptr %i.dyx, align 4, !tbaa !3
  %index.next2119 = add nuw i64 %index2110, 32    ; 2 uses
  %vec.ind.next2120 = add <8 x i32> %vec.ind2111, splat (i32 32)
  %vec.ind.next2121 = add <8 x i32> %vec.ind2112, splat (i32 32)
  %i.dyy = icmp eq i64 %index.next2119, %n.vec2104
  br i1 %i.dyy, label %middle.block2122, label %vector.body2109, !llvm.loop !483

middle.block2122:                                 ; preds = %vector.body2109
  %cmp.n2123 = icmp eq i64 %n.vec2104, %i.dym
  br i1 %cmp.n2123, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i, label %vec.epilog.iter.check2127

vec.epilog.iter.check2127:                        ; preds = %middle.block2122
  %min.epilog.iters.check2128 = icmp eq i64 %n.mod.vf2103, 0
  br i1 %min.epilog.iters.check2128, label %.lr.ph.i.i48.i.i.i.i.preheader, label %vec.epilog.ph2129, !prof !472

vec.epilog.ph2129:                                ; preds = %vector.main.loop.iter.check2100, %vec.epilog.iter.check2127
  %vec.epilog.resume.val2124 = phi i64 [ %n.vec2104, %vec.epilog.iter.check2127 ], [ 0, %vector.main.loop.iter.check2100 ] ; 2 uses
  %n.vec2131 = and i64 %i.dym, 2147483644         ; 3 uses
  %broadcast.splatinsert2132 = insertelement <4 x i32> poison, i32 %i.dyg, i64 0
  %broadcast.splat2133 = shufflevector <4 x i32> %broadcast.splatinsert2132, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2134 = insertelement <4 x i32> poison, i32 %i.dyk, i64 0
  %broadcast.splat2135 = shufflevector <4 x i32> %broadcast.splatinsert2134, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.dyz = trunc nuw nsw i64 %vec.epilog.resume.val2124 to i32
  %broadcast.splatinsert2136 = insertelement <4 x i32> poison, i32 %i.dyz, i64 0
  %broadcast.splat2137 = shufflevector <4 x i32> %broadcast.splatinsert2136, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction2138 = or disjoint <4 x i32> %broadcast.splat2137, <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  br label %vec.epilog.vector.body2139

vec.epilog.vector.body2139:                       ; preds = %vec.epilog.vector.body2139, %vec.epilog.ph2129
  %index2140 = phi i64 [ %vec.epilog.resume.val2124, %vec.epilog.ph2129 ], [ %index.next2143, %vec.epilog.vector.body2139 ] ; 2 uses
  %vec.ind2141 = phi <4 x i32> [ %induction2138, %vec.epilog.ph2129 ], [ %vec.ind.next2144, %vec.epilog.vector.body2139 ] ; 2 uses
  %vec.ind2142 = phi <4 x i32> [ %induction2138, %vec.epilog.ph2129 ], [ %vec.ind.next2145, %vec.epilog.vector.body2139 ] ; 2 uses
  %i.dza = add nsw i64 %index2140, %i.dyl         ; 2 uses
  %i.dzb = getelementptr inbounds [4 x i8], ptr %i.dlb, i64 %i.dza
  %i.dzc = add <4 x i32> %broadcast.splat2135, %vec.ind2141
  store <4 x i32> %i.dzc, ptr %i.dzb, align 4, !tbaa !3
  %i.dzd = getelementptr inbounds [4 x i8], ptr %i.dkr, i64 %i.dza
  %i.dze = add <4 x i32> %broadcast.splat2133, %vec.ind2142
  store <4 x i32> %i.dze, ptr %i.dzd, align 4, !tbaa !3
  %index.next2143 = add nuw i64 %index2140, 4     ; 2 uses
  %vec.ind.next2144 = add <4 x i32> %vec.ind2141, splat (i32 4)
  %vec.ind.next2145 = add <4 x i32> %vec.ind2142, splat (i32 4)
  %i.dzf = icmp eq i64 %index.next2143, %n.vec2131
  br i1 %i.dzf, label %vec.epilog.middle.block2146, label %vec.epilog.vector.body2139, !llvm.loop !484

vec.epilog.middle.block2146:                      ; preds = %vec.epilog.vector.body2139
  %cmp.n2147 = icmp eq i64 %n.vec2131, %i.dym
  br i1 %cmp.n2147, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i, label %.lr.ph.i.i48.i.i.i.i.preheader

.lr.ph.i.i48.i.i.i.i.preheader:                   ; preds = %iter.check2125, %vec.epilog.iter.check2127, %vec.epilog.middle.block2146
  %indvars.iv1449.ph = phi i64 [ 0, %iter.check2125 ], [ %n.vec2104, %vec.epilog.iter.check2127 ], [ %n.vec2131, %vec.epilog.middle.block2146 ] ; 6 uses
  %xtraiter2505 = and i64 %i.dym, 1
  %lcmp.mod2506.not = icmp eq i64 %xtraiter2505, 0
  br i1 %lcmp.mod2506.not, label %.lr.ph.i.i48.i.i.i.i.prol.loopexit, label %.lr.ph.i.i48.i.i.i.i.prol

.lr.ph.i.i48.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i48.i.i.i.i.preheader
  %i.dzg = add nsw i64 %indvars.iv1449.ph, %i.dyl ; 2 uses
  %i.dzh = getelementptr inbounds [4 x i8], ptr %i.dlb, i64 %i.dzg
  %i.dzi = trunc nuw nsw i64 %indvars.iv1449.ph to i32
  %i.dzj = add i32 %i.dyk, %i.dzi
  store i32 %i.dzj, ptr %i.dzh, align 4, !tbaa !3
  %i.dzk = getelementptr inbounds [4 x i8], ptr %i.dkr, i64 %i.dzg
  %i.dzl = trunc nuw nsw i64 %indvars.iv1449.ph to i32
  %i.dzm = add i32 %i.dyg, %i.dzl
  store i32 %i.dzm, ptr %i.dzk, align 4, !tbaa !3
  %indvars.iv.next1450.prol = or disjoint i64 %indvars.iv1449.ph, 1
  br label %.lr.ph.i.i48.i.i.i.i.prol.loopexit

.lr.ph.i.i48.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i48.i.i.i.i.prol, %.lr.ph.i.i48.i.i.i.i.preheader
  %indvars.iv1449.unr = phi i64 [ %indvars.iv1449.ph, %.lr.ph.i.i48.i.i.i.i.preheader ], [ %indvars.iv.next1450.prol, %.lr.ph.i.i48.i.i.i.i.prol ]
  %i.dzn = add nsw i64 %i.dym, -1
  %i.dzo = icmp eq i64 %indvars.iv1449.ph, %i.dzn
  br i1 %i.dzo, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i, label %.lr.ph.i.i48.i.i.i.i

.lr.ph.i.i48.i.i.i.i:                             ; preds = %.lr.ph.i.i48.i.i.i.i.prol.loopexit, %.lr.ph.i.i48.i.i.i.i
  %indvars.iv1449 = phi i64 [ %indvars.iv.next1450.1, %.lr.ph.i.i48.i.i.i.i ], [ %indvars.iv1449.unr, %.lr.ph.i.i48.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.dzp = add nsw i64 %indvars.iv1449, %i.dyl    ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a
iter.check2073:                                   ; preds = %bb.xv
  %i.eaq = getelementptr inbounds [4 x i8], ptr %i.dwz, i64 %i.eah
  %i.ear = load i32, ptr %i.eaq, align 4, !tbaa !3
  %i.eas = sext i32 %i.ear to i64
  %i.eat = getelementptr inbounds [4 x i8], ptr %i.dxl, i64 %i.eas
  %i.eau = load i32, ptr %i.eat, align 4, !tbaa !3 ; 5 uses
  %i.eav = load i32, ptr %i.eai, align 4, !tbaa !3
  %i.eaw = sext i32 %i.eav to i64
  %i.eax = getelementptr inbounds [4 x i8], ptr %i.dxk, i64 %i.eaw
  %i.eay = load i32, ptr %i.eax, align 4, !tbaa !3 ; 5 uses
  %i.eaz = sext i32 %.7 to i64                    ; 5 uses
  %i.eba = zext nneg i32 %i.eam to i64            ; 8 uses
  %min.iters.check2047 = icmp ult i32 %i.eam, 4
  %or.cond2390 = select i1 %min.iters.check2047, i1 true, i1 %diff.check2046
  br i1 %or.cond2390, label %.lr.ph.i17.i.i.i.i.i.preheader, label %vector.main.loop.iter.check2048

vector.main.loop.iter.check2048:                  ; preds = %iter.check2073
  %min.iters.check2049 = icmp ult i32 %i.eam, 32
  br i1 %min.iters.check2049, label %vec.epilog.ph2077, label %vector.ph2050

vector.ph2050:                                    ; preds = %vector.main.loop.iter.check2048
  %n.mod.vf2051 = and i64 %i.eba, 28
  %n.vec2052 = and i64 %i.eba, 2147483616         ; 4 uses
  %broadcast.splatinsert2053 = insertelement <8 x i32> poison, i32 %i.eau, i64 0
  %broadcast.splat2054 = shufflevector <8 x i32> %broadcast.splatinsert2053, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert2055 = insertelement <8 x i32> poison, i32 %i.eay, i64 0
  %broadcast.splat2056 = shufflevector <8 x i32> %broadcast.splatinsert2055, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op2627 = add <8 x i32> splat (i32 8), %broadcast.splat2056
  %invariant.op2629 = add <8 x i32> splat (i32 16), %broadcast.splat2056
  %invariant.op2631 = add <8 x i32> splat (i32 24), %broadcast.splat2056
  %invariant.op2633 = add <8 x i32> splat (i32 8), %broadcast.splat2054
  %invariant.op2635 = add <8 x i32> splat (i32 16), %broadcast.splat2054
  %invariant.op2637 = add <8 x i32> splat (i32 24), %broadcast.splat2054
  br label %vector.body2057

vector.body2057:                                  ; preds = %vector.body2057, %vector.ph2050
  %index2058 = phi i64 [ 0, %vector.ph2050 ], [ %index.next2067, %vector.body2057 ] ; 2 uses
  %vec.ind2059 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2050 ], [ %vec.ind.next2068, %vector.body2057 ] ; 5 uses
  %vec.ind2060 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2050 ], [ %vec.ind.next2069, %vector.body2057 ] ; 5 uses
  %i.ebb = add nsw i64 %index2058, %i.eaz         ; 2 uses
  %i.ebc = getelementptr inbounds [4 x i8], ptr %i.dlb, i64 %i.ebb ; 4 uses
  %i.ebd = add <8 x i32> %broadcast.splat2056, %vec.ind2059
  %.reass2628 = add <8 x i32> %vec.ind2059, %invariant.op2627
  %.reass2630 = add <8 x i32> %vec.ind2059, %invariant.op2629
  %.reass2632 = add <8 x i32> %vec.ind2059, %invariant.op2631
  %i.ebe = getelementptr inbounds nuw i8, ptr %i.ebc, i64 32
  %i.ebf = getelementptr inbounds nuw i8, ptr %i.ebc, i64 64
  %i.ebg = getelementptr inbounds nuw i8, ptr %i.ebc, i64 96
  store <8 x i32> %i.ebd, ptr %i.ebc, align 4, !tbaa !3
  store <8 x i32> %.reass2628, ptr %i.ebe, align 4, !tbaa !3
  store <8 x i32> %.reass2630, ptr %i.ebf, align 4, !tbaa !3
  store <8 x i32> %.reass2632, ptr %i.ebg, align 4, !tbaa !3
  %i.ebh = getelementptr inbounds [4 x i8], ptr %i.dkr, i64 %i.ebb ; 4 uses
  %i.ebi = add <8 x i32> %broadcast.splat2054, %vec.ind2060
  %.reass2634 = add <8 x i32> %vec.ind2060, %invariant.op2633
  %.reass2636 = add <8 x i32> %vec.ind2060, %invariant.op2635
  %.reass2638 = add <8 x i32> %vec.ind2060, %invariant.op2637
  %i.ebj = getelementptr inbounds nuw i8, ptr %i.ebh, i64 32
  %i.ebk = getelementptr inbounds nuw i8, ptr %i.ebh, i64 64
  %i.ebl = getelementptr inbounds nuw i8, ptr %i.ebh, i64 96
  store <8 x i32> %i.ebi, ptr %i.ebh, align 4, !tbaa !3
  store <8 x i32> %.reass2634, ptr %i.ebj, align 4, !tbaa !3
  store <8 x i32> %.reass2636, ptr %i.ebk, align 4, !tbaa !3
  store <8 x i32> %.reass2638, ptr %i.ebl, align 4, !tbaa !3
  %index.next2067 = add nuw i64 %index2058, 32    ; 2 uses
  %vec.ind.next2068 = add <8 x i32> %vec.ind2059, splat (i32 32)
  %vec.ind.next2069 = add <8 x i32> %vec.ind2060, splat (i32 32)
  %i.ebm = icmp eq i64 %index.next2067, %n.vec2052
  br i1 %i.ebm, label %middle.block2070, label %vector.body2057, !llvm.loop !487

middle.block2070:                                 ; preds = %vector.body2057
  %cmp.n2071 = icmp eq i64 %n.vec2052, %i.eba
  br i1 %cmp.n2071, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i, label %vec.epilog.iter.check2075

vec.epilog.iter.check2075:                        ; preds = %middle.block2070
  %min.epilog.iters.check2076 = icmp eq i64 %n.mod.vf2051, 0
  br i1 %min.epilog.iters.check2076, label %.lr.ph.i17.i.i.i.i.i.preheader, label %vec.epilog.ph2077, !prof !472

vec.epilog.ph2077:                                ; preds = %vector.main.loop.iter.check2048, %vec.epilog.iter.check2075
  %vec.epilog.resume.val2072 = phi i64 [ %n.vec2052, %vec.epilog.iter.check2075 ], [ 0, %vector.main.loop.iter.check2048 ] ; 2 uses
  %n.vec2079 = and i64 %i.eba, 2147483644         ; 3 uses
  %broadcast.splatinsert2080 = insertelement <4 x i32> poison, i32 %i.eau, i64 0
  %broadcast.splat2081 = shufflevector <4 x i32> %broadcast.splatinsert2080, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2082 = insertelement <4 x i32> poison, i32 %i.eay, i64 0
  %broadcast.splat2083 = shufflevector <4 x i32> %broadcast.splatinsert2082, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ebn = trunc nuw nsw i64 %vec.epilog.resume.val2072 to i32
  %broadcast.splatinsert2084 = insertelement <4 x i32> poison, i32 %i.ebn, i64 0
  %broadcast.splat2085 = shufflevector <4 x i32> %broadcast.splatinsert2084, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction2086 = or disjoint <4 x i32> %broadcast.splat2085, <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  br label %vec.epilog.vector.body2087

vec.epilog.vector.body2087:                       ; preds = %vec.epilog.vector.body2087, %vec.epilog.ph2077
  %index2088 = phi i64 [ %vec.epilog.resume.val2072, %vec.epilog.ph2077 ], [ %index.next2091, %vec.epilog.vector.body2087 ] ; 2 uses
  %vec.ind2089 = phi <4 x i32> [ %induction2086, %vec.epilog.ph2077 ], [ %vec.ind.next2092, %vec.epilog.vector.body2087 ] ; 2 uses
  %vec.ind2090 = phi <4 x i32> [ %induction2086, %vec.epilog.ph2077 ], [ %vec.ind.next2093, %vec.epilog.vector.body2087 ] ; 2 uses
  %i.ebo = add nsw i64 %index2088, %i.eaz         ; 2 uses
  %i.ebp = getelementptr inbounds [4 x i8], ptr %i.dlb, i64 %i.ebo
  %i.ebq = add <4 x i32> %broadcast.splat2083, %vec.ind2089
  store <4 x i32> %i.ebq, ptr %i.ebp, align 4, !tbaa !3
  %i.ebr = getelementptr inbounds [4 x i8], ptr %i.dkr, i64 %i.ebo
  %i.ebs = add <4 x i32> %broadcast.splat2081, %vec.ind2090
  store <4 x i32> %i.ebs, ptr %i.ebr, align 4, !tbaa !3
  %index.next2091 = add nuw i64 %index2088, 4     ; 2 uses
  %vec.ind.next2092 = add <4 x i32> %vec.ind2089, splat (i32 4)
  %vec.ind.next2093 = add <4 x i32> %vec.ind2090, splat (i32 4)
  %i.ebt = icmp eq i64 %index.next2091, %n.vec2079
  br i1 %i.ebt, label %vec.epilog.middle.block2094, label %vec.epilog.vector.body2087, !llvm.loop !488

vec.epilog.middle.block2094:                      ; preds = %vec.epilog.vector.body2087
  %cmp.n2095 = icmp eq i64 %n.vec2079, %i.eba
  br i1 %cmp.n2095, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.preheader

.lr.ph.i17.i.i.i.i.i.preheader:                   ; preds = %iter.check2073, %vec.epilog.iter.check2075, %vec.epilog.middle.block2094
  %indvars.iv1452.ph = phi i64 [ 0, %iter.check2073 ], [ %n.vec2052, %vec.epilog.iter.check2075 ], [ %n.vec2079, %vec.epilog.middle.block2094 ] ; 6 uses
  %xtraiter2507 = and i64 %i.eba, 1
  %lcmp.mod2508.not = icmp eq i64 %xtraiter2507, 0
  br i1 %lcmp.mod2508.not, label %.lr.ph.i17.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i17.i.i.i.i.i.preheader
  %i.ebu = add nsw i64 %indvars.iv1452.ph, %i.eaz ; 2 uses
  %i.ebv = getelementptr inbounds [4 x i8], ptr %i.dlb, i64 %i.ebu
  %i.ebw = trunc nuw nsw i64 %indvars.iv1452.ph to i32
  %i.ebx = add i32 %i.eay, %i.ebw
  store i32 %i.ebx, ptr %i.ebv, align 4, !tbaa !3
  %i.eby = getelementptr inbounds [4 x i8], ptr %i.dkr, i64 %i.ebu
  %i.ebz = trunc nuw nsw i64 %indvars.iv1452.ph to i32
  %i.eca = add i32 %i.eau, %i.ebz
  store i32 %i.eca, ptr %i.eby, align 4, !tbaa !3
  %indvars.iv.next1453.prol = or disjoint i64 %indvars.iv1452.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i17.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.preheader
  %indvars.iv1452.unr = phi i64 [ %indvars.iv1452.ph, %.lr.ph.i17.i.i.i.i.i.preheader ], [ %indvars.iv.next1453.prol, %.lr.ph.i17.i.i.i.i.i.prol ]
  %i.ecb = add nsw i64 %i.eba, -1
  %i.ecc = icmp eq i64 %indvars.iv1452.ph, %i.ecb
  br i1 %i.ecc, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i:                             ; preds = %.lr.ph.i17.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i
  %indvars.iv1452 = phi i64 [ %indvars.iv.next1453.1, %.lr.ph.i17.i.i.i.i.i ], [ %indvars.iv1452.unr, %.lr.ph.i17.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.ecd = add nsw i64 %indvars.iv1452, %i.eaz    ; 2 uses
  %i.ece = getelementptr inbounds [4 x i8], ptr %i.dlb, i64 %i.ecd
  %i.ecf = trunc i64 %indvars.iv1452 to i32
  %i.ecg = add i32 %i.eay, %i.ecf
  store i32 %i.ecg, ptr %i.ece, align 4, !tbaa !3
  %i.ech = getelementptr inbounds [4 x i8], ptr %i.dkr, i64 %i.ecd
  %i.eci = trunc i64 %indvars.iv1452 to i32
  %i.ecj = add i32 %i.eau, %i.eci
  store i32 %i.ecj, ptr %i.ech, align 4, !tbaa !3
  %indvars.iv.next1453 = add nuw nsw i64 %indvars.iv1452, 1 ; 3 uses
  %i.eck = add nsw i64 %indvars.iv.next1453, %i.eaz ; 2 uses
  %i.ecl = getelementptr inbounds [4 x i8], ptr %i.dlb, i64 %i.eck
  %i.ecm = trunc i64 %indvars.iv.next1453 to i32
  %i.ecn = add i32 %i.eay, %i.ecm
  store i32 %i.ecn, ptr %i.ecl, align 4, !tbaa !3
  %i.eco = getelementptr inbounds [4 x i8], ptr %i.dkr, i64 %i.eck
  %i.ecp = trunc i64 %indvars.iv.next1453 to i32
  %i.ecq = add i32 %i.eau, %i.ecp
  store i32 %i.ecq, ptr %i.eco, align 4, !tbaa !3
  %indvars.iv.next1453.1 = add nuw nsw i64 %indvars.iv1452, 2 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.1 = icmp eq i64 %indvars.iv.next1453.1, %i.eba
  br i1 %exitcond.not.i19.i.i.i.i.i.1, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i, !llvm.loop !489

_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i: ; preds = %.lr.ph.i17.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i, %middle.block2070, %vec.epilog.middle.block2094, %bb.xv
  %i.ecr = add nsw i32 %i.eam, %.7                ; 2 uses
  %i.ecs = add i64 %.01523.i.i.i.i.i, -1
  %i.ect = and i64 %i.ecs, %.01523.i.i.i.i.i      ; 2 uses
  %.not.i51.i.i.i.i = icmp eq i64 %i.ect, 0
  br i1 %.not.i51.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %bb.xv, !llvm.loop !490

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i, %bb.xt, %.lr.ph.i.i.i.i845
  %.3 = phi i32 [ %.2, %.lr.ph.i.i.i.i845 ], [ %.2, %bb.xt ], [ %i.ecr, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i ], [ %i.ead, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i ] ; 2 uses
  %i.ecu = add nsw i32 %i.dxc, 64                 ; 2 uses
  %.not33.i.i.i.i846 = icmp sgt i32 %i.ecu, %i.dpq
  br i1 %.not33.i.i.i.i846, label %._crit_edge.i.i.i.i847, label %.lr.ph.i.i.i.i845, !llvm.loop !491

bb.xw:                                            ; preds = %._crit_edge.i.i.i.i847
  %i.ecv = ashr i32 %i.dpm, 6
  %i.ecw = and i32 %i.dpm, 63
  %i.ecx = zext nneg i32 %i.ecw to i64
  %notmask.i52.i.i.i.i = shl nsw i64 -1, %i.ecx
  %i.ecy = xor i64 %notmask.i52.i.i.i.i, -1
  %i.ecz = sext i32 %i.ecv to i64
  %i.eda = getelementptr inbounds [8 x i8], ptr %i.dpi, i64 %i.ecz
  %i.edb = load i64, ptr %i.eda, align 8, !tbaa !145
  %i.edc = and i64 %i.edb, %i.ecy                 ; 2 uses
  %.not.i53.i.i.i.i849 = icmp eq i64 %i.edc, 0
  br i1 %.not.i53.i.i.i.i849, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit, label %.preheader.i54.i.i.i.i

.preheader.i54.i.i.i.i:                           ; preds = %bb.xw
  %i.edd = load ptr, ptr %i.p, align 8, !tbaa !310 ; 2 uses
  %i.ede = load ptr, ptr %i.n, align 8, !tbaa !342
  %i.edf = sext i32 %i.dpq to i64
  %i.edg = getelementptr inbounds nuw i8, ptr %i.edd, i64 120
  %i.edh = load ptr, ptr %i.edg, align 8, !tbaa !308
  %i.edi = getelementptr inbounds nuw i8, ptr %i.edd, i64 104
  %i.edj = load ptr, ptr %i.edi, align 8, !tbaa !306
  %i.edk = load ptr, ptr %i.q, align 8, !tbaa !310
  %i.edl = load ptr, ptr %i.o, align 8, !tbaa !342
  %i.edm = getelementptr inbounds nuw i8, ptr %i.edk, i64 104
  %i.edn = load ptr, ptr %i.edm, align 8, !tbaa !306
  %i.edo = sub i64 %i.dlc, %i.dks
  %diff.check2150 = icmp ugt i64 %i.edo, -128
  br label %bb.xx

bb.xx:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i, %.preheader.i54.i.i.i.i
  %.5 = phi i32 [ %.4, %.preheader.i54.i.i.i.i ], [ %i.ega, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i ] ; 3 uses
  %.011.i56.i.i.i.i = phi i64 [ %i.edc, %.preheader.i54.i.i.i.i ], [ %i.egc, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i ] ; 3 uses
  %i.edp = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i56.i.i.i.i, i1 true)
  %i.edq = or disjoint i64 %i.edp, %i.edf         ; 4 uses
  %i.edr = getelementptr inbounds [4 x i8], ptr %i.ede, i64 %i.edq ; 2 uses
  %i.eds = load i32, ptr %i.edr, align 4, !tbaa !3
  %i.edt = sext i32 %i.eds to i64
  %i.edu = getelementptr inbounds [4 x i8], ptr %i.edh, i64 %i.edt
  %i.edv = load i32, ptr %i.edu, align 4, !tbaa !3 ; 6 uses
  %i.edw = getelementptr inbounds [4 x i8], ptr %i.djw, i64 %i.edq
  store i32 %.5, ptr %i.edw, align 4, !tbaa !3
  %i.edx = getelementptr inbounds [4 x i8], ptr %i.dkh, i64 %i.edq
  store i32 %i.edv, ptr %i.edx, align 4, !tbaa !3
  %i.edy = icmp sgt i32 %i.edv, 0
  br i1 %i.edy, label %iter.check2177, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i

iter.check2177:                                   ; preds = %bb.xx
  %i.edz = getelementptr inbounds [4 x i8], ptr %i.edl, i64 %i.edq
  %i.eea = load i32, ptr %i.edz, align 4, !tbaa !3
  %i.eeb = sext i32 %i.eea to i64
  %i.eec = getelementptr inbounds [4 x i8], ptr %i.edn, i64 %i.eeb
  %i.eed = load i32, ptr %i.eec, align 4, !tbaa !3 ; 5 uses
  %i.eee = load i32, ptr %i.edr, align 4, !tbaa !3
  %i.eef = sext i32 %i.eee to i64
  %i.eeg = getelementptr inbounds [4 x i8], ptr %i.edj, i64 %i.eef
  %i.eeh = load i32, ptr %i.eeg, align 4, !tbaa !3 ; 5 uses
  %i.eei = sext i32 %.5 to i64                    ; 5 uses
  %i.eej = zext nneg i32 %i.edv to i64            ; 8 uses
  %min.iters.check2151 = icmp ult i32 %i.edv, 4
  %or.cond2391 = select i1 %min.iters.check2151, i1 true, i1 %diff.check2150
  br i1 %or.cond2391, label %.lr.ph.i.i59.i.i.i.i.preheader, label %vector.main.loop.iter.check2152

vector.main.loop.iter.check2152:                  ; preds = %iter.check2177
  %min.iters.check2153 = icmp ult i32 %i.edv, 32
  br i1 %min.iters.check2153, label %vec.epilog.ph2181, label %vector.ph2154

vector.ph2154:                                    ; preds = %vector.main.loop.iter.check2152
  %n.mod.vf2155 = and i64 %i.eej, 28
  %n.vec2156 = and i64 %i.eej, 2147483616         ; 4 uses
  %broadcast.splatinsert2157 = insertelement <8 x i32> poison, i32 %i.eed, i64 0
  %broadcast.splat2158 = shufflevector <8 x i32> %broadcast.splatinsert2157, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert2159 = insertelement <8 x i32> poison, i32 %i.eeh, i64 0
  %broadcast.splat2160 = shufflevector <8 x i32> %broadcast.splatinsert2159, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op2639 = add <8 x i32> splat (i32 8), %broadcast.splat2160
  %invariant.op2641 = add <8 x i32> splat (i32 16), %broadcast.splat2160
  %invariant.op2643 = add <8 x i32> splat (i32 24), %broadcast.splat2160
  %invariant.op2645 = add <8 x i32> splat (i32 8), %broadcast.splat2158
  %invariant.op2647 = add <8 x i32> splat (i32 16), %broadcast.splat2158
  %invariant.op2649 = add <8 x i32> splat (i32 24), %broadcast.splat2158
  br label %vector.body2161

vector.body2161:                                  ; preds = %vector.body2161, %vector.ph2154
  %index2162 = phi i64 [ 0, %vector.ph2154 ], [ %index.next2171, %vector.body2161 ] ; 2 uses
  %vec.ind2163 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2154 ], [ %vec.ind.next2172, %vector.body2161 ] ; 5 uses
  %vec.ind2164 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2154 ], [ %vec.ind.next2173, %vector.body2161 ] ; 5 uses
  %i.eek = add nsw i64 %index2162, %i.eei         ; 2 uses
  %i.eel = getelementptr inbounds [4 x i8], ptr %i.dlb, i64 %i.eek ; 4 uses
  %i.eem = add <8 x i32> %broadcast.splat2160, %vec.ind2163
  %.reass2640 = add <8 x i32> %vec.ind2163, %invariant.op2639
  %.reass2642 = add <8 x i32> %vec.ind2163, %invariant.op2641
  %.reass2644 = add <8 x i32> %vec.ind2163, %invariant.op2643
  %i.een = getelementptr inbounds nuw i8, ptr %i.eel, i64 32
  %i.eeo = getelementptr inbounds nuw i8, ptr %i.eel, i64 64
  %i.eep = getelementptr inbounds nuw i8, ptr %i.eel, i64 96
  store <8 x i32> %i.eem, ptr %i.eel, align 4, !tbaa !3
  store <8 x i32> %.reass2640, ptr %i.een, align 4, !tbaa !3
  store <8 x i32> %.reass2642, ptr %i.eeo, align 4, !tbaa !3
  store <8 x i32> %.reass2644, ptr %i.eep, align 4, !tbaa !3
  %i.eeq = getelementptr inbounds [4 x i8], ptr %i.dkr, i64 %i.eek ; 4 uses
  %i.eer = add <8 x i32> %broadcast.splat2158, %vec.ind2164
  %.reass2646 = add <8 x i32> %vec.ind2164, %invariant.op2645
  %.reass2648 = add <8 x i32> %vec.ind2164, %invariant.op2647
  %.reass2650 = add <8 x i32> %vec.ind2164, %invariant.op2649
  %i.ees = getelementptr inbounds nuw i8, ptr %i.eeq, i64 32
  %i.eet = getelementptr inbounds nuw i8, ptr %i.eeq, i64 64
  %i.eeu = getelementptr inbounds nuw i8, ptr %i.eeq, i64 96
  store <8 x i32> %i.eer, ptr %i.eeq, align 4, !tbaa !3
  store <8 x i32> %.reass2646, ptr %i.ees, align 4, !tbaa !3
  store <8 x i32> %.reass2648, ptr %i.eet, align 4, !tbaa !3
  store <8 x i32> %.reass2650, ptr %i.eeu, align 4, !tbaa !3
  %index.next2171 = add nuw i64 %index2162, 32    ; 2 uses
  %vec.ind.next2172 = add <8 x i32> %vec.ind2163, splat (i32 32)
  %vec.ind.next2173 = add <8 x i32> %vec.ind2164, splat (i32 32)
  %i.eev = icmp eq i64 %index.next2171, %n.vec2156
  br i1 %i.eev, label %middle.block2174, label %vector.body2161, !llvm.loop !492

middle.block2174:                                 ; preds = %vector.body2161
  %cmp.n2175 = icmp eq i64 %n.vec2156, %i.eej
  br i1 %cmp.n2175, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i, label %vec.epilog.iter.check2179

vec.epilog.iter.check2179:                        ; preds = %middle.block2174
  %min.epilog.iters.check2180 = icmp eq i64 %n.mod.vf2155, 0
  br i1 %min.epilog.iters.check2180, label %.lr.ph.i.i59.i.i.i.i.preheader, label %vec.epilog.ph2181, !prof !472

vec.epilog.ph2181:                                ; preds = %vector.main.loop.iter.check2152, %vec.epilog.iter.check2179
  %vec.epilog.resume.val2176 = phi i64 [ %n.vec2156, %vec.epilog.iter.check2179 ], [ 0, %vector.main.loop.iter.check2152 ] ; 2 uses
  %n.vec2183 = and i64 %i.eej, 2147483644         ; 3 uses
  %broadcast.splatinsert2184 = insertelement <4 x i32> poison, i32 %i.eed, i64 0
  %broadcast.splat2185 = shufflevector <4 x i32> %broadcast.splatinsert2184, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2186 = insertelement <4 x i32> poison, i32 %i.eeh, i64 0
  %broadcast.splat2187 = shufflevector <4 x i32> %broadcast.splatinsert2186, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.eew = trunc nuw nsw i64 %vec.epilog.resume.val2176 to i32
  %broadcast.splatinsert2188 = insertelement <4 x i32> poison, i32 %i.eew, i64 0
  %broadcast.splat2189 = shufflevector <4 x i32> %broadcast.splatinsert2188, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction2190 = or disjoint <4 x i32> %broadcast.splat2189, <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  br label %vec.epilog.vector.body2191

vec.epilog.vector.body2191:                       ; preds = %vec.epilog.vector.body2191, %vec.epilog.ph2181
  %index2192 = phi i64 [ %vec.epilog.resume.val2176, %vec.epilog.ph2181 ], [ %index.next2195, %vec.epilog.vector.body2191 ] ; 2 uses
  %vec.ind2193 = phi <4 x i32> [ %induction2190, %vec.epilog.ph2181 ], [ %vec.ind.next2196, %vec.epilog.vector.body2191 ] ; 2 uses
  %vec.ind2194 = phi <4 x i32> [ %induction2190, %vec.epilog.ph2181 ], [ %vec.ind.next2197, %vec.epilog.vector.body2191 ] ; 2 uses
  %i.eex = add nsw i64 %index2192, %i.eei         ; 2 uses
  %i.eey = getelementptr inbounds [4 x i8], ptr %i.dlb, i64 %i.eex
  %i.eez = add <4 x i32> %broadcast.splat2187, %vec.ind2193
  store <4 x i32> %i.eez, ptr %i.eey, align 4, !tbaa !3
  %i.efa = getelementptr inbounds [4 x i8], ptr %i.dkr, i64 %i.eex
  %i.efb = add <4 x i32> %broadcast.splat2185, %vec.ind2194
  store <4 x i32> %i.efb, ptr %i.efa, align 4, !tbaa !3
  %index.next2195 = add nuw i64 %index2192, 4     ; 2 uses
  %vec.ind.next2196 = add <4 x i32> %vec.ind2193, splat (i32 4)
  %vec.ind.next2197 = add <4 x i32> %vec.ind2194, splat (i32 4)
  %i.efc = icmp eq i64 %index.next2195, %n.vec2183
  br i1 %i.efc, label %vec.epilog.middle.block2198, label %vec.epilog.vector.body2191, !llvm.loop !493

vec.epilog.middle.block2198:                      ; preds = %vec.epilog.vector.body2191
  %cmp.n2199 = icmp eq i64 %n.vec2183, %i.eej
  br i1 %cmp.n2199, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i, label %.lr.ph.i.i59.i.i.i.i.preheader

.lr.ph.i.i59.i.i.i.i.preheader:                   ; preds = %iter.check2177, %vec.epilog.iter.check2179, %vec.epilog.middle.block2198
  %indvars.iv1455.ph = phi i64 [ 0, %iter.check2177 ], [ %n.vec2156, %vec.epilog.iter.check2179 ], [ %n.vec2183, %vec.epilog.middle.block2198 ] ; 6 uses
  %xtraiter2509 = and i64 %i.eej, 1
  %lcmp.mod2510.not = icmp eq i64 %xtraiter2509, 0
  br i1 %lcmp.mod2510.not, label %.lr.ph.i.i59.i.i.i.i.prol.loopexit, label %.lr.ph.i.i59.i.i.i.i.prol

.lr.ph.i.i59.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i59.i.i.i.i.preheader
  %i.efd = add nsw i64 %indvars.iv1455.ph, %i.eei ; 2 uses
  %i.efe = getelementptr inbounds [4 x i8], ptr %i.dlb, i64 %i.efd
  %i.eff = trunc nuw nsw i64 %indvars.iv1455.ph to i32
  %i.efg = add i32 %i.eeh, %i.eff
  store i32 %i.efg, ptr %i.efe, align 4, !tbaa !3
  %i.efh = getelementptr inbounds [4 x i8], ptr %i.dkr, i64 %i.efd
  %i.efi = trunc nuw nsw i64 %indvars.iv1455.ph to i32
  %i.efj = add i32 %i.eed, %i.efi
  store i32 %i.efj, ptr %i.efh, align 4, !tbaa !3
  %indvars.iv.next1456.prol = or disjoint i64 %indvars.iv1455.ph, 1
  br label %.lr.ph.i.i59.i.i.i.i.prol.loopexit

.lr.ph.i.i59.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i59.i.i.i.i.prol, %.lr.ph.i.i59.i.i.i.i.preheader
  %indvars.iv1455.unr = phi i64 [ %indvars.iv1455.ph, %.lr.ph.i.i59.i.i.i.i.preheader ], [ %indvars.iv.next1456.prol, %.lr.ph.i.i59.i.i.i.i.prol ]
  %i.efk = add nsw i64 %i.eej, -1
  %i.efl = icmp eq i64 %indvars.iv1455.ph, %i.efk
  br i1 %i.efl, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i, label %.lr.ph.i.i59.i.i.i.i

.lr.ph.i.i59.i.i.i.i:                             ; preds = %.lr.ph.i.i59.i.i.i.i.prol.loopexit, %.lr.ph.i.i59.i.i.i.i
  %indvars.iv1455 = phi i64 [ %indvars.iv.next1456.1, %.lr.ph.i.i59.i.i.i.i ], [ %indvars.iv1455.unr, %.lr.ph.i.i59.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.efm = add nsw i64 %indvars.iv1455, %i.eei    ; 2 uses
  %i.efn = getelementptr inbounds [4 x i8], ptr %i.dlb, i64 %i.efm
  %i.efo = trunc i64 %indvars.iv1455 to i32
  %i.efp = add i32 %i.eeh, %i.efo
  store i32 %i.efp, ptr %i.efn, align 4, !tbaa !3
  %i.efq = getelementptr inbounds [4 x i8], ptr %i.dkr, i64 %i.efm
  %i.efr = trunc i64 %indvars.iv1455 to i32
  %i.efs = add i32 %i.eed, %i.efr
  store i32 %i.efs, ptr %i.efq, align 4, !tbaa !3
  %indvars.iv.next1456 = add nuw nsw i64 %indvars.iv1455, 1 ; 3 uses
  %i.eft = add nsw i64 %indvars.iv.next1456, %i.eei ; 2 uses
  %i.efu = getelementptr inbounds [4 x i8], ptr %i.dlb, i64 %i.eft
  %i.efv = trunc i64 %indvars.iv.next1456 to i32
  %i.efw = add i32 %i.eeh, %i.efv
  store i32 %i.efw, ptr %i.efu, align 4, !tbaa !3
  %i.efx = getelementptr inbounds [4 x i8], ptr %i.dkr, i64 %i.eft
  %i.efy = trunc i64 %indvars.iv.next1456 to i32
  %i.efz = add i32 %i.eed, %i.efy
  store i32 %i.efz, ptr %i.efx, align 4, !tbaa !3
  %indvars.iv.next1456.1 = add nuw nsw i64 %indvars.iv1455, 2 ; 2 uses
  %exitcond.not.i.i61.i.i.i.i.1 = icmp eq i64 %indvars.iv.next1456.1, %i.eej
  br i1 %exitcond.not.i.i61.i.i.i.i.1, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i, label %.lr.ph.i.i59.i.i.i.i, !llvm.loop !494

_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i: ; preds = %.lr.ph.i.i59.i.i.i.i.prol.loopexit, %.lr.ph.i.i59.i.i.i.i, %middle.block2174, %vec.epilog.middle.block2198, %bb.xx
  %i.ega = add nsw i32 %i.edv, %.5
  %i.egb = add nsw i64 %.011.i56.i.i.i.i, -1
  %i.egc = and i64 %i.egb, %.011.i56.i.i.i.i      ; 2 uses
  %.not10.i58.i.i.i.i = icmp eq i64 %i.egc, 0
  br i1 %.not10.i58.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit, label %bb.xx, !llvm.loop !479

_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i, %bb.xw, %._crit_edge.i.i.i.i847, %bb.xo, %bb.xm, %bb.xk
  call void @llvm.lifetime.start.p0(ptr nonnull %117) #23
  store ptr null, ptr %118, align 8, !tbaa !237
  store ptr %i.dkw, ptr %119, align 8, !tbaa !237
  %.not.i878 = icmp eq ptr %i.dkw, null
  br i1 %.not.i878, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit879, label %bb.xy

bb.xy:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit
  %i.egd = getelementptr inbounds nuw i8, ptr %i.dkw, i64 40
  %i.ege = atomicrmw add ptr %i.egd, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit879

end_hunk_1
begin_hunk_2_@_ZN3fmt3v116detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_:bb.a
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !618, !nonnull !83, !align !356
  store i32 %.021, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !620, !nonnull !83, !align !621
  store i32 1, ptr %i.aj, align 4, !tbaa !609
  %i.ak = load ptr, ptr %2, align 8, !tbaa !622, !nonnull !83, !align !356
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !612
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %bb.l, label %_ZN3fmt3v116detail20dynamic_spec_handlerIcE8on_indexEi.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.45) #27
  unreachable

_ZN3fmt3v116detail20dynamic_spec_handlerIcE8on_indexEi.exit: ; preds = %bb.k
  store i32 -1, ptr %i.al, align 8, !tbaa !612
  br label %bb.o

bb.m:                                             ; preds = %bb.a
  %i.ao = and i8 %i.c, -33
  %i.ap = add i8 %i.ao, -65
  %or.cond10.i = icmp ult i8 %i.ap, 26
  %i.aq = icmp eq i8 %i.c, 95
  %i.ar = or i1 %i.aq, %or.cond10.i
  br i1 %i.ar, label %.critedge4.preheader, label %bb.n

.critedge4.preheader:                             ; preds = %bb.m
  %i.as = sub i64 %i.b, %i.a
  %scevgep = getelementptr i8, ptr %0, i64 %i.as  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not45 = icmp eq ptr %i.at, %1
  br i1 %.not45, label %.critedge, label %.lr.ph

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.43) #27
  unreachable

.critedge4:                                       ; preds = %.lr.ph
  %i.au = getelementptr inbounds nuw i8, ptr %i.av, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.au, %1
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !623

.lr.ph:                                           ; preds = %.critedge4.preheader, %.critedge4
  %i.av = phi ptr [ %i.au, %.critedge4 ], [ %i.at, %.critedge4.preheader ] ; 3 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !30  ; 3 uses
  %i.ax = and i8 %i.aw, -33
  %i.ay = add i8 %i.ax, -65
  %or.cond10.i32 = icmp ult i8 %i.ay, 26
  %i.az = icmp eq i8 %i.aw, 95
  %i.ba = or i1 %i.az, %or.cond10.i32
  %i.bb = add i8 %i.aw, -48
  %or.cond31 = icmp ult i8 %i.bb, 10
  %or.cond38 = or i1 %or.cond31, %i.ba
  br i1 %or.cond38, label %.critedge4, label %..critedge_crit_edge, !llvm.loop !623

..critedge_crit_edge:                             ; preds = %.lr.ph
  br label %.critedge, !llvm.loop !623

.critedge:                                        ; preds = %.critedge4, %..critedge_crit_edge, %.critedge4.preheader
  %.lcssa40 = phi ptr [ %i.av, %..critedge_crit_edge ], [ %scevgep, %.critedge4.preheader ], [ %scevgep, %.critedge4 ] ; 2 uses
  %i.bc = ptrtoint ptr %.lcssa40 to i64
  %i.bd = sub i64 %i.bc, %i.a
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !618, !nonnull !83, !align !356 ; 2 uses
  store ptr %0, ptr %i.bf, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i64 %i.bd, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !30
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !620, !nonnull !83, !align !621
  store i32 2, ptr %i.bh, align 4, !tbaa !609
  %i.bi = load ptr, ptr %2, align 8, !tbaa !622, !nonnull !83, !align !356
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store i32 -1, ptr %i.bj, align 8, !tbaa !612
  br label %bb.o

bb.o:                                             ; preds = %.critedge, %_ZN3fmt3v116detail20dynamic_spec_handlerIcE8on_indexEi.exit
  %.022 = phi ptr [ %.037, %_ZN3fmt3v116detail20dynamic_spec_handlerIcE8on_indexEi.exit ], [ %.lcssa40, %.critedge ]
  ret ptr %.022
}

declare { i64, ptr } @_ZN8facebook5velox12TypeKindName6toNameENS0_8TypeKindE(i8 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsE(ptr %0, ptr %1, i64 %2, ptr noundef nonnull align 4 dereferenceable(16) %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %4 = alloca %class.anon.164, align 8            ; 5 uses
  %i.b = alloca [7 x i8], align 1                 ; 11 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %5 = alloca %class.anon.160, align 8            ; 6 uses
  %6 = alloca %"class.fmt::v11::detail::counting_buffer", align 8 ; 9 uses
  %7 = alloca %class.anon.159, align 8            ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !601  ; 2 uses
  %i.i = icmp sgt i32 %i.h, -1
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = zext nneg i32 %i.h to i64                ; 2 uses
  %i.k = icmp ugt i64 %2, %i.j
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 %i.j, ptr %i.e, align 8, !tbaa !145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  store i64 %2, ptr %i.f, align 8, !tbaa !145
  store ptr %1, ptr %5, align 8, !tbaa !624
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.e, ptr %i.l, align 8, !tbaa !626
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.f, ptr %i.m, align 8, !tbaa !626
  call void @_ZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_(ptr %1, i64 %2, ptr noundef nonnull byval(%class.anon.160) align 8 %5)
  %i.n = load i64, ptr %i.f, align 8, !tbaa !145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i64 [ %i.n, %bb.c ], [ %2, %bb.b ], [ %2, %bb.a ] ; 6 uses
  %i.o = load i32, ptr %3, align 4, !tbaa !599
  %i.p = and i32 %i.o, 7
  %i.q = icmp eq i32 %i.p, 1                      ; 2 uses
  br i1 %i.q, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.r, ptr %6, align 8, !tbaa !627
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.s, align 8, !tbaa !629
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 256, ptr %i.t, align 8, !tbaa !630
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr @_ZN3fmt3v116detail15counting_bufferIcE4growERNS1_6bufferIcEEm, ptr %i.u, align 8, !tbaa !631
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 288 ; 2 uses
  store i64 0, ptr %i.v, align 8, !tbaa !632
  %i.w = call ptr @_ZN3fmt3v116detail20write_escaped_stringIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EE(ptr nonnull %6, ptr %1, i64 %2) ; 0 uses
  %i.x = load i64, ptr %i.v, align 8, !tbaa !632
  %i.y = load i64, ptr %i.s, align 8, !tbaa !629
  %i.z = add i64 %i.y, %i.x                       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !634
  %.not30 = icmp eq i32 %i.ab, 0
  %.mux32 = select i1 %.not30, i64 0, i64 %i.z
  br label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !634
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i64 0, ptr %i.d, align 8, !tbaa !145
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %i.d, ptr %4, align 8, !tbaa !626
  %i.ae = icmp ugt i64 %.0, 3
  br i1 %i.ae, label %bb.g, label %.loopexit.i.i

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.0
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -3
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.0.i.i = phi ptr [ %1, %bb.g ], [ %i.ah, %bb.i ] ; 4 uses
  %.not30.i.i = icmp ult ptr %.0.i.i, %i.ag
  br i1 %.not30.i.i, label %bb.i, label %.loopexit.i.i

bb.i:                                             ; preds = %bb.h
  %i.ah = call noundef ptr @_ZZN3fmt3v116detail18for_each_codepointIZNS1_13compute_widthENS0_17basic_string_viewIcEEE17count_code_pointsEEvS4_T_ENKUlPKcS8_E_clES8_S8_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %.0.i.i, ptr noundef %.0.i.i) ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %_ZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEE.exit, label %bb.h, !llvm.loop !635

.loopexit.i.i:                                    ; preds = %bb.h, %bb.f
  %.2.i.i = phi ptr [ %1, %bb.f ], [ %.0.i.i, %bb.h ] ; 8 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %.0 ; 3 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %.2.i.i to i64             ; 2 uses
  %i.al = sub i64 %i.aj, %i.ak                    ; 8 uses
  %i.am = icmp eq ptr %i.ai, %.2.i.i
  br i1 %i.am, label %_ZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEE.exit, label %iter.check

iter.check:                                       ; preds = %.loopexit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.b, i8 0, i64 7, i1 false)
  %min.iters.check = icmp ult i64 %i.al, 8
  %i.an = sub i64 %i.ak, %i.c
  %diff.check = icmp ugt i64 %i.an, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check43 = icmp ult i64 %i.al, 128
  br i1 %min.iters.check43, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.al, 120
  %n.vec = and i64 %i.al, -128                    ; 5 uses
  %i.ao = getelementptr i8, ptr %i.b, i64 %n.vec
  %i.ap = getelementptr i8, ptr %.2.i.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %index ; 4 uses
  %next.gep44 = getelementptr i8, ptr %.2.i.i, i64 %index ; 4 uses
  %i.aq = getelementptr i8, ptr %next.gep44, i64 32
  %i.ar = getelementptr i8, ptr %next.gep44, i64 64
  %i.as = getelementptr i8, ptr %next.gep44, i64 96
  %wide.load = load <32 x i8>, ptr %next.gep44, align 1, !tbaa !30
  %wide.load45 = load <32 x i8>, ptr %i.aq, align 1, !tbaa !30
  %wide.load46 = load <32 x i8>, ptr %i.ar, align 1, !tbaa !30
  %wide.load47 = load <32 x i8>, ptr %i.as, align 1, !tbaa !30
  %i.at = getelementptr i8, ptr %next.gep, i64 32
  %i.au = getelementptr i8, ptr %next.gep, i64 64
  %i.av = getelementptr i8, ptr %next.gep, i64 96
  store <32 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !30
  store <32 x i8> %wide.load45, ptr %i.at, align 1, !tbaa !30
  store <32 x i8> %wide.load46, ptr %i.au, align 1, !tbaa !30
  store <32 x i8> %wide.load47, ptr %i.av, align 1, !tbaa !30
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !636

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !637

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec50 = and i64 %i.al, -8                    ; 4 uses
  %i.ax = getelementptr i8, ptr %i.b, i64 %n.vec50
  %i.ay = getelementptr i8, ptr %.2.i.i, i64 %n.vec50
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index51 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next55, %vec.epilog.vector.body ] ; 3 uses
  %next.gep52 = getelementptr i8, ptr %i.b, i64 %index51
  %next.gep53 = getelementptr i8, ptr %.2.i.i, i64 %index51
  %wide.load54 = load <8 x i8>, ptr %next.gep53, align 1, !tbaa !30
  store <8 x i8> %wide.load54, ptr %next.gep52, align 1, !tbaa !30
  %index.next55 = add nuw i64 %index51, 8         ; 2 uses
  %i.az = icmp eq i64 %index.next55, %n.vec50
  br i1 %i.az, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !638

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n56 = icmp eq i64 %i.al, %n.vec50
  br i1 %cmp.n56, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.i.i.ph = phi ptr [ %i.b, %iter.check ], [ %i.ao, %vec.epilog.iter.check ], [ %i.ax, %vec.epilog.middle.block ] ; 2 uses
  %.057.i.i.i.ph = phi ptr [ %.2.i.i, %iter.check ], [ %i.ap, %vec.epilog.iter.check ], [ %i.ay, %vec.epilog.middle.block ] ; 3 uses
  %i.ba = add i64 %.0, %i.a                       ; 2 uses
  %.057.i.i.i.ph60 = ptrtoint ptr %.057.i.i.i.ph to i64 ; 2 uses
  %i.bb = sub i64 %i.ba, %.057.i.i.i.ph60
  %xtraiter = and i64 %i.bb, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.08.i.i.i.prol = phi ptr [ %i.be, %.lr.ph.i.i.i.prol ], [ %.08.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.057.i.i.i.prol = phi ptr [ %i.bc, %.lr.ph.i.i.i.prol ], [ %.057.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.057.i.i.i.prol, i64 1 ; 2 uses
  %i.bd = load i8, ptr %.057.i.i.i.prol, align 1, !tbaa !30
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 1 ; 2 uses
  store i8 %i.bd, ptr %.08.i.i.i.prol, align 1, !tbaa !30
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !639

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.08.i.i.i.unr = phi ptr [ %.08.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.be, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi ptr [ %.057.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.bc, %.lr.ph.i.i.i.prol ]
  %i.bf = sub i64 %.057.i.i.i.ph60, %i.ba
  %i.bg = icmp ugt i64 %i.bf, -8
  br i1 %i.bg, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.057.i.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 1
  %i.bi = load i8, ptr %.057.i.i.i, align 1, !tbaa !30
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 1
  store i8 %i.bi, ptr %.08.i.i.i, align 1, !tbaa !30
  %i.bk = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 2
  %i.bl = load i8, ptr %i.bh, align 1, !tbaa !30
  %i.bm = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 2
  store i8 %i.bl, ptr %i.bj, align 1, !tbaa !30
  %i.bn = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 3
  %i.bo = load i8, ptr %i.bk, align 1, !tbaa !30
  %i.bp = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 3
  store i8 %i.bo, ptr %i.bm, align 1, !tbaa !30
  %i.bq = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 4
  %i.br = load i8, ptr %i.bn, align 1, !tbaa !30
  %i.bs = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 4
  store i8 %i.br, ptr %i.bp, align 1, !tbaa !30
  %i.bt = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 5
  %i.bu = load i8, ptr %i.bq, align 1, !tbaa !30
  %i.bv = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 5
  store i8 %i.bu, ptr %i.bs, align 1, !tbaa !30
  %i.bw = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 6
  %i.bx = load i8, ptr %i.bt, align 1, !tbaa !30
  %i.by = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 6
  store i8 %i.bx, ptr %i.bv, align 1, !tbaa !30
  %i.bz = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 7
  %i.ca = load i8, ptr %i.bw, align 1, !tbaa !30
  %i.cb = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 7
  store i8 %i.ca, ptr %i.by, align 1, !tbaa !30
  %i.cc = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 8 ; 2 uses
  %i.cd = load i8, ptr %i.bz, align 1, !tbaa !30
  %i.ce = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 8
  store i8 %i.cd, ptr %i.cb, align 1, !tbaa !30
  %.not.i.i.i.7 = icmp eq ptr %i.cc, %i.ai
  br i1 %.not.i.i.i.7, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader.i.i, label %.lr.ph.i.i.i, !llvm.loop !641

_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader.i.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.al
  br label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.i.i

_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.i.i: ; preds = %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.i.i, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader.i.i
  %.022.i.i = phi ptr [ %.123.i.i, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.i.i ], [ %i.b, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader.i.i ] ; 3 uses
  %.3.i.i = phi ptr [ %.4.i.i, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.i.i ], [ %.2.i.i, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader.i.i ] ; 2 uses
  %i.cg = call noundef ptr @_ZZN3fmt3v116detail18for_each_codepointIZNS1_13compute_widthENS0_17basic_string_viewIcEEE17count_code_pointsEEvS4_T_ENKUlPKcS8_E_clES8_S8_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %.022.i.i, ptr noundef %.3.i.i) ; 3 uses
  %.not31.not.i.i = icmp ne ptr %i.cg, null       ; 3 uses
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = ptrtoint ptr %.022.i.i to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %.123.i.i = select i1 %.not31.not.i.i, ptr %i.cg, ptr %.022.i.i ; 2 uses
  %.4.idx.i.i = select i1 %.not31.not.i.i, i64 %i.cj, i64 0
  %.4.i.i = getelementptr inbounds i8, ptr %.3.i.i, i64 %.4.idx.i.i
  %i.ck = icmp ult ptr %.123.i.i, %i.cf
  %or.cond.i.i = select i1 %.not31.not.i.i, i1 %i.ck, i1 false
  br i1 %or.cond.i.i, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.i.i, label %bb.j, !llvm.loop !642

bb.j:                                             ; preds = %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %_ZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEE.exit

_ZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEE.exit: ; preds = %bb.i, %.loopexit.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.cl = load i64, ptr %i.d, align 8, !tbaa !145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.e, %_ZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEE.exit
  %.133 = phi i64 [ %.0, %bb.e ], [ %.0, %_ZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEE.exit ], [ %i.z, %.thread ] ; 2 uses
  %.022 = phi i64 [ 0, %bb.e ], [ %i.cl, %_ZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEE.exit ], [ %.mux32, %.thread ]
  %i.cm = zext i1 %i.q to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store i8 %i.cm, ptr %7, align 8, !tbaa !643
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %1, ptr %i.cn, align 8, !tbaa !645
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !145
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %1, ptr %i.co, align 8, !tbaa !646
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 %.133, ptr %i.cp, align 8, !tbaa !647
  %i.cq = call ptr @_ZN3fmt3v116detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEEZNS1_5writeIcS5_EET0_S7_NS0_17basic_string_viewIT_EERKNS0_12format_specsEEUlS5_E_EET1_SF_SD_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 noundef %.133, i64 noundef %.022, ptr noundef nonnull align 8 dereferenceable(40) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  ret ptr %i.cq
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN3fmt3v116detail20write_escaped_stringIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EE(ptr %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::find_escape_result", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !629  ; 2 uses
  %i.c = add i64 %i.b, 1                          ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !630
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !631
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.c), !inline_history !648
  %.pre.i.i = load i64, ptr %i.a, align 8, !tbaa !629 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit

_ZN3fmt3v1114basic_appenderIcEaSEc.exit:          ; preds = %bb.a, %bb.b
  %.pre-phi.i.i = phi i64 [ %i.c, %bb.a ], [ %.pre2.i.i, %bb.b ]
  %i.i = phi i64 [ %i.b, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.j = load ptr, ptr %0, align 8, !tbaa !627
  store i64 %.pre-phi.i.i, ptr %i.a, align 8, !tbaa !629
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.i
  store i8 34, ptr %i.k, align 1, !tbaa !30
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = ptrtoint ptr %i.l to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit
  %.sroa.022.0 = phi ptr [ %0, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit ], [ %i.bx, %bb.f ] ; 7 uses
  %.0 = phi ptr [ %1, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit ], [ %i.bw, %bb.f ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %i.l, ptr %3, align 8, !tbaa !649, !alias.scope !651
  store ptr null, ptr %i.m, align 8, !tbaa !654, !alias.scope !651
  store i32 0, ptr %i.n, align 8, !tbaa !655, !alias.scope !651
  %i.p = ptrtoint ptr %.0 to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_(ptr %.0, i64 %i.q, ptr nonnull align 8 %3)
  %i.r = load ptr, ptr %3, align 8, !tbaa !649    ; 3 uses
  %.not24.i.i = icmp eq ptr %.0, %i.r
  br i1 %.not24.i.i, label %_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %bb.c
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.022.0, i64 8 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.022.0, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.022.0, i64 24
  %.pre.i.i13 = load i64, ptr %i.t, align 8, !tbaa !629
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.w = phi i64 [ %.pre.i.i13, %.lr.ph27.i.i ], [ %i.be, %._crit_edge.i.i ] ; 2 uses
  %.01825.i.i = phi ptr [ %.0, %.lr.ph27.i.i ], [ %i.bf, %._crit_edge.i.i ] ; 9 uses
  %i.x = ptrtoint ptr %.01825.i.i to i64          ; 2 uses
  %i.y = sub i64 %i.s, %i.x                       ; 2 uses
  %i.z = add i64 %i.y, %i.w                       ; 2 uses
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !630 ; 2 uses
  %i.ab = icmp ugt i64 %i.z, %i.aa
  br i1 %i.ab, label %bb.e, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !631
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.022.0, i64 noundef %i.z), !inline_history !656
  %.pre30.i.i = load i64, ptr %i.u, align 8, !tbaa !630
  %.pre31.i.i = load i64, ptr %i.t, align 8, !tbaa !629
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.e, %bb.d
  %i.ad = phi i64 [ %i.w, %bb.d ], [ %.pre31.i.i, %bb.e ] ; 4 uses
  %i.ae = phi i64 [ %i.aa, %bb.d ], [ %.pre30.i.i, %bb.e ]
  %i.af = sub i64 %i.ae, %i.ad
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.af, i64 %i.y) ; 13 uses
  %i.ag = load ptr, ptr %.sroa.022.0, align 8, !tbaa !627 ; 2 uses
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ad ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aj = add i64 %i.ad, %i.ah
  %i.ak = sub i64 %i.x, %i.aj
  %diff.check = icmp ugt i64 %i.ak, -128
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check40 = icmp ult i64 %spec.select.i.i, 128
  br i1 %min.iters.check40, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %spec.select.i.i, 120
  %n.vec = and i64 %spec.select.i.i, -128         ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %index ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  %wide.load = load <32 x i8>, ptr %i.al, align 1, !tbaa !30
  %wide.load41 = load <32 x i8>, ptr %i.am, align 1, !tbaa !30
  %wide.load42 = load <32 x i8>, ptr %i.an, align 1, !tbaa !30
  %wide.load43 = load <32 x i8>, ptr %i.ao, align 1, !tbaa !30
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 %index ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 96
  store <32 x i8> %wide.load, ptr %i.ap, align 1, !tbaa !30
  store <32 x i8> %wide.load41, ptr %i.aq, align 1, !tbaa !30
  store <32 x i8> %wide.load42, ptr %i.ar, align 1, !tbaa !30
  store <32 x i8> %wide.load43, ptr %i.as, align 1, !tbaa !30
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !657

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !637

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec45 = and i64 %spec.select.i.i, -8         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index46 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next48, %vec.epilog.vector.body ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %index46
  %wide.load47 = load <8 x i8>, ptr %i.au, align 1, !tbaa !30
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 %index46
  store <8 x i8> %wide.load47, ptr %i.av, align 1, !tbaa !30
  %index.next48 = add nuw i64 %index46, 8         ; 2 uses
  %i.aw = icmp eq i64 %index.next48, %n.vec45
  br i1 %i.aw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !658

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n49 = icmp eq i64 %spec.select.i.i, %n.vec45
  br i1 %cmp.n49, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec45, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.ba, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %.023.i.i.prol
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !30
  %i.az = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.023.i.i.prol
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !30
  %i.ba = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !659

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ba, %.lr.ph.i.i.prol ]
  %i.bb = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.bc = icmp ugt i64 %i.bb, -4
  br i1 %i.bc, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.t, align 8, !tbaa !629
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.bd = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.ad, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.be = add i64 %i.bd, %spec.select.i.i         ; 2 uses
  store i64 %i.be, ptr %i.t, align 8, !tbaa !629
  %i.bf = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bf, %i.r
  br i1 %.not.i.i, label %_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit, label %bb.d, !llvm.loop !660

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.bv, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %.023.i.i
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !30
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.023.i.i
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !30
  %i.bj = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !30
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bj
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !30
  %i.bn = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !30
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bn
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !30
  %i.br = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !30
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.br
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !30
  %i.bv = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bv, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !661

_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit: ; preds = %._crit_edge.i.i, %bb.c
  %i.bw = load ptr, ptr %i.m, align 8, !tbaa !654 ; 3 uses
  %.not = icmp eq ptr %i.bw, null
  br i1 %.not, label %.thread, label %bb.f

.thread:                                          ; preds = %_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %.loopexit

bb.f:                                             ; preds = %_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit
  %i.bx = call ptr @_ZN3fmt3v116detail16write_escaped_cpINS0_14basic_appenderIcEEcEET_S5_RKNS1_18find_escape_resultIT0_EE(ptr %.sroa.022.0, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %.not12 = icmp eq ptr %i.bw, %i.l
  br i1 %.not12, label %.loopexit, label %bb.c, !llvm.loop !662

.loopexit:                                        ; preds = %bb.f, %.thread
  %.sroa.022.127 = phi ptr [ %.sroa.022.0, %.thread ], [ %i.bx, %bb.f ] ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.022.127, i64 8 ; 3 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !629 ; 2 uses
  %i.ca = add i64 %i.bz, 1                        ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.022.127, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !630
  %i.cd = icmp ugt i64 %i.ca, %i.cc
  br i1 %i.cd, label %bb.g, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit18

bb.g:                                             ; preds = %.loopexit
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.022.127, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !631
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.022.127, i64 noundef %i.ca), !inline_history !648
  %.pre.i.i16 = load i64, ptr %i.by, align 8, !tbaa !629 ; 2 uses
  %.pre2.i.i17 = add i64 %.pre.i.i16, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit18

_ZN3fmt3v1114basic_appenderIcEaSEc.exit18:        ; preds = %.loopexit, %bb.g
  %.pre-phi.i.i15 = phi i64 [ %i.ca, %.loopexit ], [ %.pre2.i.i17, %bb.g ]
  %i.cg = phi i64 [ %i.bz, %.loopexit ], [ %.pre.i.i16, %bb.g ]
  %i.ch = load ptr, ptr %.sroa.022.127, align 8, !tbaa !627
  store i64 %.pre-phi.i.i15, ptr %i.by, align 8, !tbaa !629
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cg
  store i8 34, ptr %i.ci, align 1, !tbaa !30
  ret ptr %.sroa.022.127
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN3fmt3v116detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEEZNS1_5writeIcS5_EET0_S7_NS0_17basic_string_viewIT_EERKNS0_12format_specsEEUlS5_E_EET1_SF_SD_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !634
  %i.c = zext i32 %i.b to i64
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 %3) ; 4 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !599    ; 2 uses
  %i.f = lshr i32 %i.e, 3
  %i.g = and i32 %i.f, 7
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @.str.51, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !30
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
  %i.r = mul nuw nsw i64 %i.d, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !629
  %i.u = add i64 %i.t, %2
  %i.v = add i64 %i.u, %i.r                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !630
  %i.y = icmp ugt i64 %i.v, %i.x
  br i1 %i.y, label %bb.b, label %_ZN3fmt3v116detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !631
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.v), !inline_history !663
  br label %_ZN3fmt3v116detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v116detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.a, %bb.b
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v116detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.ab = tail call ptr @_ZN3fmt3v116detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %0, i64 noundef %i.m, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN3fmt3v116detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %.sroa.09.0 = phi ptr [ %i.ab, %bb.c ], [ %0, %_ZN3fmt3v116detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit ] ; 8 uses
  %i.ac = load i8, ptr %4, align 8, !tbaa !643, !range !82, !noundef !83
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.01.0.copyload.i = load ptr, ptr %i.ae, align 8, !tbaa !645
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !145
  %i.af = tail call ptr @_ZN3fmt3v116detail20write_escaped_stringIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EE(ptr %.sroa.09.0, ptr %.sroa.01.0.copyload.i, i64 %.sroa.2.0.copyload.i)
  br label %_ZZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit

bb.f:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !646 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !647 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.aj ; 2 uses
  %.not24.i.i.i = icmp samesign eq i64 %i.aj, 0
  br i1 %.not24.i.i.i, label %_ZZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit, label %.lr.ph27.i.i.i

.lr.ph27.i.i.i:                                   ; preds = %bb.f
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 8 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 24
  %.pre.i.i.i = load i64, ptr %i.am, align 8, !tbaa !629
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.i, %.lr.ph27.i.i.i
  %i.ap = phi i64 [ %.pre.i.i.i, %.lr.ph27.i.i.i ], [ %i.bx, %._crit_edge.i.i.i ] ; 2 uses
  %.01825.i.i.i = phi ptr [ %i.ah, %.lr.ph27.i.i.i ], [ %i.by, %._crit_edge.i.i.i ] ; 9 uses
  %i.aq = ptrtoint ptr %.01825.i.i.i to i64       ; 2 uses
  %i.ar = sub i64 %i.al, %i.aq                    ; 2 uses
  %i.as = add i64 %i.ar, %i.ap                    ; 2 uses
  %i.at = load i64, ptr %i.an, align 8, !tbaa !630 ; 2 uses
  %i.au = icmp ugt i64 %i.as, %i.at
  br i1 %i.au, label %bb.h, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.av = load ptr, ptr %i.ao, align 8, !tbaa !631
  tail call void %i.av(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0, i64 noundef %i.as), !inline_history !664
  %.pre30.i.i.i = load i64, ptr %i.an, align 8, !tbaa !630
  %.pre31.i.i.i = load i64, ptr %i.am, align 8, !tbaa !629
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i: ; preds = %bb.h, %bb.g
  %i.aw = phi i64 [ %i.ap, %bb.g ], [ %.pre31.i.i.i, %bb.h ] ; 4 uses
  %i.ax = phi i64 [ %i.at, %bb.g ], [ %.pre30.i.i.i, %bb.h ]
  %i.ay = sub i64 %i.ax, %i.aw
  %spec.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ay, i64 %i.ar) ; 13 uses
  %i.az = load ptr, ptr %.sroa.09.0, align 8, !tbaa !627 ; 2 uses
  %i.ba = ptrtoaddr ptr %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.aw ; 7 uses
  %.not29.i.i.i = icmp eq i64 %spec.select.i.i.i, 0
  br i1 %.not29.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bc = add i64 %i.aw, %i.ba
  %i.bd = sub i64 %i.aq, %i.bc
  %diff.check = icmp ugt i64 %i.bd, -128
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check36 = icmp ult i64 %spec.select.i.i.i, 128
  br i1 %min.iters.check36, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %spec.select.i.i.i, 120
  %n.vec = and i64 %spec.select.i.i.i, -128       ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.01825.i.i.i, i64 %index ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 96
  %wide.load = load <32 x i8>, ptr %i.be, align 1, !tbaa !30
  %wide.load37 = load <32 x i8>, ptr %i.bf, align 1, !tbaa !30
  %wide.load38 = load <32 x i8>, ptr %i.bg, align 1, !tbaa !30
  %wide.load39 = load <32 x i8>, ptr %i.bh, align 1, !tbaa !30
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 %index ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 96
  store <32 x i8> %wide.load, ptr %i.bi, align 1, !tbaa !30
  store <32 x i8> %wide.load37, ptr %i.bj, align 1, !tbaa !30
  store <32 x i8> %wide.load38, ptr %i.bk, align 1, !tbaa !30
  store <32 x i8> %wide.load39, ptr %i.bl, align 1, !tbaa !30
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !665

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !637

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec41 = and i64 %spec.select.i.i.i, -8       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index42 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next44, %vec.epilog.vector.body ] ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.01825.i.i.i, i64 %index42
  %wide.load43 = load <8 x i8>, ptr %i.bn, align 1, !tbaa !30
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bb, i64 %index42
  store <8 x i8> %wide.load43, ptr %i.bo, align 1, !tbaa !30
  %index.next44 = add nuw i64 %index42, 8         ; 2 uses
  %i.bp = icmp eq i64 %index.next44, %n.vec41
  br i1 %i.bp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !666

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n45 = icmp eq i64 %spec.select.i.i.i, %n.vec41
  br i1 %cmp.n45, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec41, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.023.i.i.i.prol = phi i64 [ %i.bt, %.lr.ph.i.i.i.prol ], [ %.023.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.01825.i.i.i, i64 %.023.i.i.i.prol
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !30
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.023.i.i.i.prol
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !30
  %i.bt = add nuw i64 %.023.i.i.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !667

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.023.i.i.i.unr = phi i64 [ %.023.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.bt, %.lr.ph.i.i.i.prol ]
  %i.bu = sub i64 %.023.i.i.i.ph, %spec.select.i.i.i
  %i.bv = icmp ugt i64 %i.bu, -4
  br i1 %i.bv, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i.i = load i64, ptr %i.am, align 8, !tbaa !629
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i
  %i.bw = phi i64 [ %.pre32.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.aw, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i ]
  %i.bx = add i64 %i.bw, %spec.select.i.i.i       ; 2 uses
  store i64 %i.bx, ptr %i.am, align 8, !tbaa !629
  %i.by = getelementptr inbounds nuw i8, ptr %.01825.i.i.i, i64 %spec.select.i.i.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.by, %i.ak
  br i1 %.not.i.i.i, label %_ZZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit, label %bb.g, !llvm.loop !660

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.023.i.i.i = phi i64 [ %i.co, %.lr.ph.i.i.i ], [ %.023.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.01825.i.i.i, i64 %.023.i.i.i
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !30
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.023.i.i.i
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !30
  %i.cc = add nuw i64 %.023.i.i.i, 1              ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.01825.i.i.i, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !30
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.cc
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !30
  %i.cg = add nuw i64 %.023.i.i.i, 2              ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.01825.i.i.i, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !30
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.cg
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !30
  %i.ck = add nuw i64 %.023.i.i.i, 3              ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.01825.i.i.i, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !30
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ck
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !30
  %i.co = add nuw i64 %.023.i.i.i, 4              ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.co, %spec.select.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !668

_ZZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %.sroa.04.0.i = phi ptr [ %i.af, %bb.e ], [ %.sroa.09.0, %bb.f ], [ %.sroa.09.0, %._crit_edge.i.i.i ] ; 2 uses
  %.not31 = icmp eq i64 %i.d, %i.m
  br i1 %.not31, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit
  %i.cp = tail call ptr @_ZN3fmt3v116detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr %.sroa.04.0.i, i64 noundef %i.n, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit
  %.sroa.09.1 = phi ptr [ %i.cp, %bb.i ], [ %.sroa.04.0.i, %_ZZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit ]
  ret ptr %.sroa.09.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_(ptr %0, i64 %1, ptr noundef byval(%class.anon.160) align 8 %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = alloca [7 x i8], align 1                 ; 11 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !645 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !626 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !626 ; 2 uses
  %i.d = icmp ugt i64 %1, 3
  br i1 %i.d, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -3
  %i.g = ptrtoint ptr %.sroa.0.0.copyload to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit, %bb.b
  %.0 = phi ptr [ %0, %bb.b ], [ %i.br, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit ] ; 8 uses
  %.not30 = icmp ult ptr %.0, %i.f
  br i1 %.not30, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.h = load i8, ptr %.0, align 1, !tbaa !30
  %i.i = zext i8 %i.h to i32                      ; 2 uses
  %i.j = lshr i32 %i.i, 3                         ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr @.str.48, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !30
  %i.n = sext i8 %i.m to i64                      ; 5 uses
  %i.o = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.masks, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3
  %i.q = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !30    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.t = load i8, ptr %i.s, align 1, !tbaa !30    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0, i64 3
  %i.v = load i8, ptr %i.u, align 1, !tbaa !30    ; 2 uses
  %i.w = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.n
  %i.x = load i32, ptr %i.w, align 4, !tbaa !3
  %i.y = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.mins, i64 %i.n
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3
  %i.aa = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shifte, i64 %i.n
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ac = load i64, ptr %.sroa.5.0.copyload, align 8, !tbaa !145 ; 2 uses
  %.not.i8.not.i = icmp eq i64 %i.ac, 0           ; 2 uses
  br i1 %.not.i8.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = add i64 %i.ac, -1
  store i64 %i.ad, ptr %.sroa.5.0.copyload, align 8, !tbaa !145
  br label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit

bb.f:                                             ; preds = %bb.d
  %i.ae = ptrtoint ptr %.0 to i64
  %i.af = sub i64 %i.ae, %i.g
  store i64 %i.af, ptr %.sroa.7.0.copyload, align 8, !tbaa !145
  br label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit

_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit: ; preds = %bb.e, %bb.f
  %i.ag = and i8 %i.t, 63
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = shl nuw nsw i32 %i.ah, 6
  %i.aj = and i8 %i.r, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = shl nuw nsw i32 %i.ak, 12
  %i.am = and i32 %i.p, %i.i
  %i.an = shl nuw nsw i32 %i.am, 18
  %i.ao = or disjoint i32 %i.al, %i.an
  %i.ap = or disjoint i32 %i.ai, %i.ao
  %i.aq = and i8 %i.v, 63
  %i.ar = zext nneg i8 %i.aq to i32
  %i.as = or disjoint i32 %i.ap, %i.ar
  %i.at = lshr i32 %i.as, %i.x                    ; 3 uses
  %i.au = icmp ult i32 %i.at, %i.z
  %i.av = select i1 %i.au, i32 64, i32 0
  %i.aw = lshr i8 %i.t, 4
  %i.ax = and i8 %i.aw, 12
  %i.ay = lshr i8 %i.r, 2
  %i.az = and i8 %i.ay, 48
  %i.ba = or disjoint i8 %i.ax, %i.az
  %i.bb = lshr i8 %i.v, 6
  %i.bc = or disjoint i8 %i.ba, %i.bb
  %i.bd = zext nneg i8 %i.bc to i32
  %i.be = or disjoint i32 %i.av, %i.bd
  %i.bf = icmp samesign ugt i32 %i.at, 1114111
  %i.bg = select i1 %i.bf, i32 256, i32 0
  %i.bh = or disjoint i32 %i.be, %i.bg
  %.mask.i.i = and i32 %i.at, 2147481600
  %i.bi = icmp eq i32 %.mask.i.i, 55296
  %i.bj = select i1 %i.bi, i32 128, i32 0
  %i.bk = or disjoint i32 %i.bh, %i.bj
  %i.bl = xor i32 %i.bk, 42
  %i.bm = lshr i32 %i.bl, %i.ab
  %.not.i = icmp eq i32 %i.bm, 0
  %i.bn = getelementptr inbounds i8, ptr %.0, i64 %i.n
  %.not.i.i = lshr i32 -2130771968, %i.j
  %i.bo = and i32 %.not.i.i, 1
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bp
  %i.br = select i1 %.not.i, ptr %i.bq, ptr %i.q
  br i1 %.not.i8.not.i, label %.thread, label %bb.c, !llvm.loop !669

.loopexit:                                        ; preds = %bb.c, %bb.a
  %.2 = phi ptr [ %0, %bb.a ], [ %.0, %bb.c ]     ; 8 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %.2 to i64                 ; 2 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 8 uses
  %i.bw = icmp eq ptr %i.bs, %.2
  br i1 %i.bw, label %.thread, label %iter.check

iter.check:                                       ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.b, i8 0, i64 7, i1 false)
  %min.iters.check = icmp ult i64 %i.bv, 8
  %i.bx = sub i64 %i.bu, %i.c
  %diff.check = icmp ugt i64 %i.bx, -128
  %or.cond71 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond71, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check55 = icmp ult i64 %i.bv, 128
  br i1 %min.iters.check55, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.bv, 120
  %n.vec = and i64 %i.bv, -128                    ; 5 uses
  %i.by = getelementptr i8, ptr %i.b, i64 %n.vec
  %i.bz = getelementptr i8, ptr %.2, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %index ; 4 uses
  %next.gep56 = getelementptr i8, ptr %.2, i64 %index ; 4 uses
  %i.ca = getelementptr i8, ptr %next.gep56, i64 32
  %i.cb = getelementptr i8, ptr %next.gep56, i64 64
  %i.cc = getelementptr i8, ptr %next.gep56, i64 96
  %wide.load = load <32 x i8>, ptr %next.gep56, align 1, !tbaa !30
  %wide.load57 = load <32 x i8>, ptr %i.ca, align 1, !tbaa !30
  %wide.load58 = load <32 x i8>, ptr %i.cb, align 1, !tbaa !30
  %wide.load59 = load <32 x i8>, ptr %i.cc, align 1, !tbaa !30
  %i.cd = getelementptr i8, ptr %next.gep, i64 32
  %i.ce = getelementptr i8, ptr %next.gep, i64 64
  %i.cf = getelementptr i8, ptr %next.gep, i64 96
  store <32 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !30
  store <32 x i8> %wide.load57, ptr %i.cd, align 1, !tbaa !30
  store <32 x i8> %wide.load58, ptr %i.ce, align 1, !tbaa !30
  store <32 x i8> %wide.load59, ptr %i.cf, align 1, !tbaa !30
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !670

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bv, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !637

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec62 = and i64 %i.bv, -8                    ; 4 uses
  %i.ch = getelementptr i8, ptr %i.b, i64 %n.vec62
  %i.ci = getelementptr i8, ptr %.2, i64 %n.vec62
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index63 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next67, %vec.epilog.vector.body ] ; 3 uses
  %next.gep64 = getelementptr i8, ptr %i.b, i64 %index63
  %next.gep65 = getelementptr i8, ptr %.2, i64 %index63
  %wide.load66 = load <8 x i8>, ptr %next.gep65, align 1, !tbaa !30
  store <8 x i8> %wide.load66, ptr %next.gep64, align 1, !tbaa !30
  %index.next67 = add nuw i64 %index63, 8         ; 2 uses
  %i.cj = icmp eq i64 %index.next67, %n.vec62
  br i1 %i.cj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !671

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n68 = icmp eq i64 %i.bv, %n.vec62
  br i1 %cmp.n68, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.ph = phi ptr [ %i.b, %iter.check ], [ %i.by, %vec.epilog.iter.check ], [ %i.ch, %vec.epilog.middle.block ] ; 2 uses
  %.057.i.ph = phi ptr [ %.2, %iter.check ], [ %i.bz, %vec.epilog.iter.check ], [ %i.ci, %vec.epilog.middle.block ] ; 3 uses
  %i.ck = add i64 %1, %i.a                        ; 2 uses
  %.057.i.ph73 = ptrtoint ptr %.057.i.ph to i64   ; 2 uses
  %i.cl = sub i64 %i.ck, %.057.i.ph73
  %xtraiter = and i64 %i.cl, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.08.i.prol = phi ptr [ %i.co, %.lr.ph.i.prol ], [ %.08.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.057.i.prol = phi ptr [ %i.cm, %.lr.ph.i.prol ], [ %.057.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.057.i.prol, i64 1 ; 2 uses
  %i.cn = load i8, ptr %.057.i.prol, align 1, !tbaa !30
  %i.co = getelementptr inbounds nuw i8, ptr %.08.i.prol, i64 1 ; 2 uses
  store i8 %i.cn, ptr %.08.i.prol, align 1, !tbaa !30
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !672

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.08.i.unr = phi ptr [ %.08.i.ph, %.lr.ph.i.preheader ], [ %i.co, %.lr.ph.i.prol ]
  %.057.i.unr = phi ptr [ %.057.i.ph, %.lr.ph.i.preheader ], [ %i.cm, %.lr.ph.i.prol ]
  %i.cp = sub i64 %.057.i.ph73, %i.ck
  %i.cq = icmp ugt i64 %i.cp, -8
  br i1 %i.cq, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.08.i = phi ptr [ %i.do, %.lr.ph.i ], [ %.08.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.057.i = phi ptr [ %i.dm, %.lr.ph.i ], [ %.057.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.057.i, i64 1
  %i.cs = load i8, ptr %.057.i, align 1, !tbaa !30
  %i.ct = getelementptr inbounds nuw i8, ptr %.08.i, i64 1
  store i8 %i.cs, ptr %.08.i, align 1, !tbaa !30
  %i.cu = getelementptr inbounds nuw i8, ptr %.057.i, i64 2
  %i.cv = load i8, ptr %i.cr, align 1, !tbaa !30
  %i.cw = getelementptr inbounds nuw i8, ptr %.08.i, i64 2
  store i8 %i.cv, ptr %i.ct, align 1, !tbaa !30
  %i.cx = getelementptr inbounds nuw i8, ptr %.057.i, i64 3
  %i.cy = load i8, ptr %i.cu, align 1, !tbaa !30
  %i.cz = getelementptr inbounds nuw i8, ptr %.08.i, i64 3
  store i8 %i.cy, ptr %i.cw, align 1, !tbaa !30
  %i.da = getelementptr inbounds nuw i8, ptr %.057.i, i64 4
  %i.db = load i8, ptr %i.cx, align 1, !tbaa !30
  %i.dc = getelementptr inbounds nuw i8, ptr %.08.i, i64 4
  store i8 %i.db, ptr %i.cz, align 1, !tbaa !30
  %i.dd = getelementptr inbounds nuw i8, ptr %.057.i, i64 5
  %i.de = load i8, ptr %i.da, align 1, !tbaa !30
  %i.df = getelementptr inbounds nuw i8, ptr %.08.i, i64 5
  store i8 %i.de, ptr %i.dc, align 1, !tbaa !30
  %i.dg = getelementptr inbounds nuw i8, ptr %.057.i, i64 6
  %i.dh = load i8, ptr %i.dd, align 1, !tbaa !30
  %i.di = getelementptr inbounds nuw i8, ptr %.08.i, i64 6
  store i8 %i.dh, ptr %i.df, align 1, !tbaa !30
  %i.dj = getelementptr inbounds nuw i8, ptr %.057.i, i64 7
  %i.dk = load i8, ptr %i.dg, align 1, !tbaa !30
  %i.dl = getelementptr inbounds nuw i8, ptr %.08.i, i64 7
  store i8 %i.dk, ptr %i.di, align 1, !tbaa !30
  %i.dm = getelementptr inbounds nuw i8, ptr %.057.i, i64 8 ; 2 uses
  %i.dn = load i8, ptr %i.dj, align 1, !tbaa !30
  %i.do = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  store i8 %i.dn, ptr %i.dl, align 1, !tbaa !30
  %.not.i33.7 = icmp eq ptr %i.dm, %i.bs
  br i1 %.not.i33.7, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, label %.lr.ph.i, !llvm.loop !673

_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bv
  %i.dq = ptrtoint ptr %.sroa.0.0.copyload to i64
  br label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit

_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit: ; preds = %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit38
  %.022 = phi ptr [ %.123, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit38 ], [ %i.b, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader ] ; 7 uses
  %.3 = phi ptr [ %.4, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit38 ], [ %.2, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader ] ; 2 uses
  %i.dr = load i8, ptr %.022, align 1, !tbaa !30
  %i.ds = zext i8 %i.dr to i32                    ; 2 uses
  %i.dt = lshr i32 %i.ds, 3                       ; 2 uses
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr @.str.48, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !30
  %i.dx = sext i8 %i.dw to i64                    ; 5 uses
  %i.dy = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.masks, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !3
  %i.ea = getelementptr inbounds nuw i8, ptr %.022, i64 1 ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !30  ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.022, i64 2
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !30  ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.022, i64 3
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !30  ; 2 uses
  %i.eg = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.dx
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !3
  %i.ei = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.mins, i64 %i.dx
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !3
  %i.ek = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shifte, i64 %i.dx
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !3
  %i.em = load i64, ptr %.sroa.5.0.copyload, align 8, !tbaa !145 ; 2 uses
  %.not.i8.not.i34 = icmp ne i64 %i.em, 0         ; 4 uses
  br i1 %.not.i8.not.i34, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit
  %i.en = add i64 %i.em, -1
  store i64 %i.en, ptr %.sroa.5.0.copyload, align 8, !tbaa !145
  br label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit38

bb.h:                                             ; preds = %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit
  %i.eo = ptrtoint ptr %.3 to i64
  %i.ep = sub i64 %i.eo, %i.dq
  store i64 %i.ep, ptr %.sroa.7.0.copyload, align 8, !tbaa !145
  br label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit38

_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit38: ; preds = %bb.g, %bb.h
  %i.eq = and i8 %i.ed, 63
  %i.er = zext nneg i8 %i.eq to i32
  %i.es = shl nuw nsw i32 %i.er, 6
  %i.et = and i8 %i.eb, 63
  %i.eu = zext nneg i8 %i.et to i32
  %i.ev = shl nuw nsw i32 %i.eu, 12
  %i.ew = and i32 %i.dz, %i.ds
  %i.ex = shl nuw nsw i32 %i.ew, 18
  %i.ey = or disjoint i32 %i.ev, %i.ex
  %i.ez = or disjoint i32 %i.es, %i.ey
  %i.fa = and i8 %i.ef, 63
  %i.fb = zext nneg i8 %i.fa to i32
  %i.fc = or disjoint i32 %i.ez, %i.fb
  %i.fd = lshr i32 %i.fc, %i.eh                   ; 3 uses
  %i.fe = icmp ult i32 %i.fd, %i.ej
  %i.ff = select i1 %i.fe, i32 64, i32 0
  %i.fg = lshr i8 %i.ed, 4
  %i.fh = and i8 %i.fg, 12
  %i.fi = lshr i8 %i.eb, 2
  %i.fj = and i8 %i.fi, 48
  %i.fk = or disjoint i8 %i.fh, %i.fj
  %i.fl = lshr i8 %i.ef, 6
  %i.fm = or disjoint i8 %i.fk, %i.fl
end_hunk_2
begin_hunk_3_@_ZN3fmt3v116detail16write_escaped_cpINS0_14basic_appenderIcEEcEET_S5_RKNS1_18find_escape_resultIT0_EE:bb.a
  store i64 %.pre-phi.i.i37, ptr %i.ak, align 8, !tbaa !629
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.as
  store i8 92, ptr %i.au, align 1, !tbaa !30
  br label %bb.q

bb.j:                                             ; preds = %bb.a
  %i.av = icmp ult i32 %i.b, 256
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aw = tail call ptr @_ZN3fmt3v116detail15write_codepointILm2EcNS0_14basic_appenderIcEEEET1_S5_cj(ptr %0, i8 noundef signext 120, i32 noundef %i.b)
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.ax = icmp ult i32 %i.b, 65536
  br i1 %i.ax, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ay = tail call ptr @_ZN3fmt3v116detail15write_codepointILm4EcNS0_14basic_appenderIcEEEET1_S5_cj(ptr %0, i8 noundef signext 117, i32 noundef %i.b)
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  %i.az = icmp ult i32 %i.b, 1114112
  br i1 %i.az, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ba = tail call ptr @_ZN3fmt3v116detail15write_codepointILm8EcNS0_14basic_appenderIcEEEET1_S5_cj(ptr %0, i8 noundef signext 85, i32 noundef %i.b)
  br label %.loopexit

bb.p:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %1, align 8, !tbaa !649   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !654 ; 2 uses
  %.not53 = icmp eq ptr %i.bb, %i.bd
  br i1 %.not53, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p, %.lr.ph
  %.02455 = phi ptr [ %i.bh, %.lr.ph ], [ %i.bb, %bb.p ] ; 2 uses
  %.sroa.052.054 = phi ptr [ %i.bg, %.lr.ph ], [ %0, %bb.p ]
  %i.be = load i8, ptr %.02455, align 1, !tbaa !30
  %i.bf = zext i8 %i.be to i32
  %i.bg = tail call ptr @_ZN3fmt3v116detail15write_codepointILm2EcNS0_14basic_appenderIcEEEET1_S5_cj(ptr %.sroa.052.054, i8 noundef signext 120, i32 noundef %i.bf) ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.02455, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.bh, %i.bd
  br i1 %.not, label %.loopexit, label %.lr.ph

bb.q:                                             ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit40, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit35, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit30, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit
  %.0 = phi i8 [ 110, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit ], [ 114, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit30 ], [ 116, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit35 ], [ %i.aj, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit40 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !629 ; 2 uses
  %i.bk = add i64 %i.bj, 1                        ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !630
  %i.bn = icmp ugt i64 %i.bk, %i.bm
  br i1 %i.bn, label %bb.r, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit45

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !631
  tail call void %i.bp(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bk), !inline_history !648
  %.pre.i.i43 = load i64, ptr %i.bi, align 8, !tbaa !629 ; 2 uses
  %.pre2.i.i44 = add i64 %.pre.i.i43, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit45

_ZN3fmt3v1114basic_appenderIcEaSEc.exit45:        ; preds = %bb.q, %bb.r
  %.pre-phi.i.i42 = phi i64 [ %i.bk, %bb.q ], [ %.pre2.i.i44, %bb.r ]
  %i.bq = phi i64 [ %i.bj, %bb.q ], [ %.pre.i.i43, %bb.r ]
  %i.br = load ptr, ptr %0, align 8, !tbaa !627
  store i64 %.pre-phi.i.i42, ptr %i.bi, align 8, !tbaa !629
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bq
  store i8 %.0, ptr %i.bs, align 1, !tbaa !30
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.p, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit45, %bb.o, %bb.m, %bb.k
  %.sroa.022.0 = phi ptr [ %i.aw, %bb.k ], [ %i.ay, %bb.m ], [ %i.ba, %bb.o ], [ %0, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit45 ], [ %0, %bb.p ], [ %i.bg, %.lr.ph ]
  ret ptr %.sroa.022.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_(ptr %0, i64 %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = alloca [7 x i8], align 1                 ; 11 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = icmp ugt i64 %1, 3
  br i1 %i.d, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 %1
  %i.f = getelementptr i8, ptr %i.e, i64 -3
  %.not3054 = icmp sgt i64 %1, 3
  br i1 %.not3054, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit
  %.055 = phi ptr [ %i.bs, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit ], [ %0, %bb.b ] ; 7 uses
  %i.g = load i8, ptr %.055, align 1, !tbaa !30
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = lshr i32 %i.h, 3                         ; 2 uses
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @.str.48, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !30
  %i.m = sext i8 %i.l to i64                      ; 6 uses
  %i.n = getelementptr inbounds i8, ptr %.055, i64 %i.m
  %.not.i.i = lshr i32 -2130771968, %i.i
  %i.o = and i32 %.not.i.i, 1
  %i.p = zext nneg i32 %i.o to i64                ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
  %i.r = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.masks, i64 %i.m
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3
  %i.t = and i32 %i.s, %i.h
  %i.u = shl nuw nsw i32 %i.t, 18
  %i.v = getelementptr inbounds nuw i8, ptr %.055, i64 1 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !30    ; 2 uses
  %i.x = and i8 %i.w, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 12
  %i.aa = or disjoint i32 %i.z, %i.u
  %i.ab = getelementptr inbounds nuw i8, ptr %.055, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !30  ; 2 uses
  %i.ad = and i8 %i.ac, 63
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = shl nuw nsw i32 %i.ae, 6
  %i.ag = or disjoint i32 %i.af, %i.aa
  %i.ah = getelementptr inbounds nuw i8, ptr %.055, i64 3
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !30  ; 2 uses
  %i.aj = and i8 %i.ai, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ag, %i.ak
  %i.am = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.m
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = lshr i32 %i.al, %i.an                   ; 4 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.mins, i64 %i.m
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3
  %i.ar = icmp ult i32 %i.ao, %i.aq
  %i.as = select i1 %i.ar, i32 64, i32 0
  %.mask.i.i = and i32 %i.ao, 2147481600
  %i.at = icmp eq i32 %.mask.i.i, 55296
  %i.au = select i1 %i.at, i32 128, i32 0
  %i.av = icmp samesign ugt i32 %i.ao, 1114111
  %i.aw = select i1 %i.av, i32 256, i32 0
  %i.ax = lshr i8 %i.w, 2
  %i.ay = and i8 %i.ax, 48
  %i.az = lshr i8 %i.ac, 4
  %i.ba = and i8 %i.az, 12
  %i.bb = lshr i8 %i.ai, 6
  %i.bc = or disjoint i8 %i.ba, %i.ay
  %i.bd = or disjoint i8 %i.bc, %i.bb
  %i.be = zext nneg i8 %i.bd to i32
  %i.bf = or disjoint i32 %i.as, %i.be
  %i.bg = or disjoint i32 %i.bf, %i.aw
  %i.bh = or disjoint i32 %i.bg, %i.au
  %i.bi = xor i32 %i.bh, 42
  %i.bj = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shifte, i64 %i.m
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !3
  %i.bl = lshr i32 %i.bi, %i.bk
  %.not.i = icmp eq i32 %i.bl, 0                  ; 3 uses
  %i.bm = select i1 %.not.i, i32 %i.ao, i32 -1    ; 4 uses
  %i.bn = icmp ult i32 %i.bm, 32
  br i1 %i.bn, label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread, label %switch.early.test.i.i.i

switch.early.test.i.i.i:                          ; preds = %.lr.ph
  switch i32 %i.bm, label %_ZN3fmt3v116detail12needs_escapeEj.exit.i.i [
    i32 127, label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread
    i32 92, label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread
    i32 34, label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread
  ]

_ZN3fmt3v116detail12needs_escapeEj.exit.i.i:      ; preds = %switch.early.test.i.i.i
  %i.bo = tail call noundef zeroext i1 @_ZN3fmt3v116detail12is_printableEj(i32 noundef %i.bm)
  br i1 %i.bo, label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit, label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread

_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread: ; preds = %.lr.ph, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %_ZN3fmt3v116detail12needs_escapeEj.exit.i.i
  %i.bp = add nsw i64 %i.p, %i.m
  %i.bq = select i1 %.not.i, i64 %i.bp, i64 1
  %i.br = getelementptr inbounds nuw i8, ptr %.055, i64 %i.bq
  store ptr %.055, ptr %2, align 8, !tbaa !645
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.br, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !645
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.bm, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !3
  br label %.thread

_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit: ; preds = %_ZN3fmt3v116detail12needs_escapeEj.exit.i.i
  %i.bs = select i1 %.not.i, ptr %i.q, ptr %i.v   ; 3 uses
  %.not30 = icmp ult ptr %i.bs, %i.f
  br i1 %.not30, label %.lr.ph, label %.loopexit, !llvm.loop !675

.loopexit:                                        ; preds = %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit, %bb.b, %bb.a
  %.2 = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %i.bs, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit ] ; 8 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %.2 to i64                 ; 2 uses
  %i.bw = sub i64 %i.bu, %i.bv                    ; 8 uses
  %i.bx = icmp eq ptr %i.bt, %.2
  br i1 %i.bx, label %.thread, label %iter.check

iter.check:                                       ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.b, i8 0, i64 7, i1 false)
  %min.iters.check = icmp ult i64 %i.bw, 8
  %i.by = sub i64 %i.bv, %i.c
  %diff.check = icmp ugt i64 %i.by, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check105 = icmp ult i64 %i.bw, 128
  br i1 %min.iters.check105, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.bw, 120
  %n.vec = and i64 %i.bw, -128                    ; 5 uses
  %i.bz = getelementptr i8, ptr %i.b, i64 %n.vec
  %i.ca = getelementptr i8, ptr %.2, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %index ; 4 uses
  %next.gep106 = getelementptr i8, ptr %.2, i64 %index ; 4 uses
  %i.cb = getelementptr i8, ptr %next.gep106, i64 32
  %i.cc = getelementptr i8, ptr %next.gep106, i64 64
  %i.cd = getelementptr i8, ptr %next.gep106, i64 96
  %wide.load = load <32 x i8>, ptr %next.gep106, align 1, !tbaa !30
  %wide.load107 = load <32 x i8>, ptr %i.cb, align 1, !tbaa !30
  %wide.load108 = load <32 x i8>, ptr %i.cc, align 1, !tbaa !30
  %wide.load109 = load <32 x i8>, ptr %i.cd, align 1, !tbaa !30
  %i.ce = getelementptr i8, ptr %next.gep, i64 32
  %i.cf = getelementptr i8, ptr %next.gep, i64 64
  %i.cg = getelementptr i8, ptr %next.gep, i64 96
  store <32 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !30
  store <32 x i8> %wide.load107, ptr %i.ce, align 1, !tbaa !30
  store <32 x i8> %wide.load108, ptr %i.cf, align 1, !tbaa !30
  store <32 x i8> %wide.load109, ptr %i.cg, align 1, !tbaa !30
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !676

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bw, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !637

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec112 = and i64 %i.bw, -8                   ; 4 uses
  %i.ci = getelementptr i8, ptr %i.b, i64 %n.vec112
  %i.cj = getelementptr i8, ptr %.2, i64 %n.vec112
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index113 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next117, %vec.epilog.vector.body ] ; 3 uses
  %next.gep114 = getelementptr i8, ptr %i.b, i64 %index113
  %next.gep115 = getelementptr i8, ptr %.2, i64 %index113
  %wide.load116 = load <8 x i8>, ptr %next.gep115, align 1, !tbaa !30
  store <8 x i8> %wide.load116, ptr %next.gep114, align 1, !tbaa !30
  %index.next117 = add nuw i64 %index113, 8       ; 2 uses
  %i.ck = icmp eq i64 %index.next117, %n.vec112
  br i1 %i.ck, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !677

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n118 = icmp eq i64 %i.bw, %n.vec112
  br i1 %cmp.n118, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.ph = phi ptr [ %i.b, %iter.check ], [ %i.bz, %vec.epilog.iter.check ], [ %i.ci, %vec.epilog.middle.block ] ; 2 uses
  %.057.i.ph = phi ptr [ %.2, %iter.check ], [ %i.ca, %vec.epilog.iter.check ], [ %i.cj, %vec.epilog.middle.block ] ; 3 uses
  %i.cl = add i64 %1, %i.a                        ; 2 uses
  %.057.i.ph137 = ptrtoint ptr %.057.i.ph to i64  ; 2 uses
  %i.cm = sub i64 %i.cl, %.057.i.ph137
  %xtraiter = and i64 %i.cm, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.08.i.prol = phi ptr [ %i.cp, %.lr.ph.i.prol ], [ %.08.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.057.i.prol = phi ptr [ %i.cn, %.lr.ph.i.prol ], [ %.057.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.057.i.prol, i64 1 ; 2 uses
  %i.co = load i8, ptr %.057.i.prol, align 1, !tbaa !30
  %i.cp = getelementptr inbounds nuw i8, ptr %.08.i.prol, i64 1 ; 2 uses
  store i8 %i.co, ptr %.08.i.prol, align 1, !tbaa !30
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !678

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.08.i.unr = phi ptr [ %.08.i.ph, %.lr.ph.i.preheader ], [ %i.cp, %.lr.ph.i.prol ]
  %.057.i.unr = phi ptr [ %.057.i.ph, %.lr.ph.i.preheader ], [ %i.cn, %.lr.ph.i.prol ]
  %i.cq = sub i64 %.057.i.ph137, %i.cl
  %i.cr = icmp ugt i64 %i.cq, -8
  br i1 %i.cr, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.08.i = phi ptr [ %i.dp, %.lr.ph.i ], [ %.08.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.057.i = phi ptr [ %i.dn, %.lr.ph.i ], [ %.057.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.057.i, i64 1
  %i.ct = load i8, ptr %.057.i, align 1, !tbaa !30
  %i.cu = getelementptr inbounds nuw i8, ptr %.08.i, i64 1
  store i8 %i.ct, ptr %.08.i, align 1, !tbaa !30
  %i.cv = getelementptr inbounds nuw i8, ptr %.057.i, i64 2
  %i.cw = load i8, ptr %i.cs, align 1, !tbaa !30
  %i.cx = getelementptr inbounds nuw i8, ptr %.08.i, i64 2
  store i8 %i.cw, ptr %i.cu, align 1, !tbaa !30
  %i.cy = getelementptr inbounds nuw i8, ptr %.057.i, i64 3
  %i.cz = load i8, ptr %i.cv, align 1, !tbaa !30
  %i.da = getelementptr inbounds nuw i8, ptr %.08.i, i64 3
  store i8 %i.cz, ptr %i.cx, align 1, !tbaa !30
  %i.db = getelementptr inbounds nuw i8, ptr %.057.i, i64 4
  %i.dc = load i8, ptr %i.cy, align 1, !tbaa !30
  %i.dd = getelementptr inbounds nuw i8, ptr %.08.i, i64 4
  store i8 %i.dc, ptr %i.da, align 1, !tbaa !30
  %i.de = getelementptr inbounds nuw i8, ptr %.057.i, i64 5
  %i.df = load i8, ptr %i.db, align 1, !tbaa !30
  %i.dg = getelementptr inbounds nuw i8, ptr %.08.i, i64 5
  store i8 %i.df, ptr %i.dd, align 1, !tbaa !30
  %i.dh = getelementptr inbounds nuw i8, ptr %.057.i, i64 6
  %i.di = load i8, ptr %i.de, align 1, !tbaa !30
  %i.dj = getelementptr inbounds nuw i8, ptr %.08.i, i64 6
  store i8 %i.di, ptr %i.dg, align 1, !tbaa !30
  %i.dk = getelementptr inbounds nuw i8, ptr %.057.i, i64 7
  %i.dl = load i8, ptr %i.dh, align 1, !tbaa !30
  %i.dm = getelementptr inbounds nuw i8, ptr %.08.i, i64 7
  store i8 %i.dl, ptr %i.dj, align 1, !tbaa !30
  %i.dn = getelementptr inbounds nuw i8, ptr %.057.i, i64 8 ; 2 uses
  %i.do = load i8, ptr %i.dk, align 1, !tbaa !30
  %i.dp = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  store i8 %i.do, ptr %i.dm, align 1, !tbaa !30
  %.not.i33.7 = icmp eq ptr %i.dn, %i.bt
  br i1 %.not.i33.7, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, label %.lr.ph.i, !llvm.loop !679

_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.sroa.4.0..sroa_idx.i.i39 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0..sroa_idx.i.i40 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bw
  br label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit

_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit: ; preds = %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42
  %.022 = phi ptr [ %i.gd, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42 ], [ %i.b, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader ] ; 6 uses
  %.3 = phi ptr [ %.4, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42 ], [ %.2, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader ] ; 3 uses
  %i.dr = load i8, ptr %.022, align 1, !tbaa !30
  %i.ds = zext i8 %i.dr to i32                    ; 2 uses
  %i.dt = lshr i32 %i.ds, 3                       ; 2 uses
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr @.str.48, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !30
  %i.dx = sext i8 %i.dw to i64                    ; 6 uses
  %i.dy = getelementptr inbounds i8, ptr %.022, i64 %i.dx
  %.not.i.i34 = lshr i32 -2130771968, %i.dt
  %i.dz = and i32 %.not.i.i34, 1
  %i.ea = zext nneg i32 %i.dz to i64              ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.ea
  %i.ec = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.masks, i64 %i.dx
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !3
  %i.ee = and i32 %i.ed, %i.ds
  %i.ef = shl nuw nsw i32 %i.ee, 18
  %i.eg = getelementptr inbounds nuw i8, ptr %.022, i64 1 ; 2 uses
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !30  ; 2 uses
  %i.ei = and i8 %i.eh, 63
  %i.ej = zext nneg i8 %i.ei to i32
  %i.ek = shl nuw nsw i32 %i.ej, 12
  %i.el = or disjoint i32 %i.ek, %i.ef
  %i.em = getelementptr inbounds nuw i8, ptr %.022, i64 2
  %i.en = load i8, ptr %i.em, align 1, !tbaa !30  ; 2 uses
  %i.eo = and i8 %i.en, 63
  %i.ep = zext nneg i8 %i.eo to i32
  %i.eq = shl nuw nsw i32 %i.ep, 6
  %i.er = or disjoint i32 %i.eq, %i.el
  %i.es = getelementptr inbounds nuw i8, ptr %.022, i64 3
  %i.et = load i8, ptr %i.es, align 1, !tbaa !30  ; 2 uses
  %i.eu = and i8 %i.et, 63
  %i.ev = zext nneg i8 %i.eu to i32
  %i.ew = or disjoint i32 %i.er, %i.ev
  %i.ex = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.dx
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !3
  %i.ez = lshr i32 %i.ew, %i.ey                   ; 4 uses
  %i.fa = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.mins, i64 %i.dx
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !3
  %i.fc = icmp ult i32 %i.ez, %i.fb
  %i.fd = select i1 %i.fc, i32 64, i32 0
  %.mask.i.i35 = and i32 %i.ez, 2147481600
  %i.fe = icmp eq i32 %.mask.i.i35, 55296
  %i.ff = select i1 %i.fe, i32 128, i32 0
  %i.fg = icmp samesign ugt i32 %i.ez, 1114111
  %i.fh = select i1 %i.fg, i32 256, i32 0
  %i.fi = lshr i8 %i.eh, 2
  %i.fj = and i8 %i.fi, 48
  %i.fk = lshr i8 %i.en, 4
  %i.fl = and i8 %i.fk, 12
  %i.fm = lshr i8 %i.et, 6
  %i.fn = or disjoint i8 %i.fl, %i.fj
  %i.fo = or disjoint i8 %i.fn, %i.fm
  %i.fp = zext nneg i8 %i.fo to i32
  %i.fq = or disjoint i32 %i.fd, %i.fp
  %i.fr = or disjoint i32 %i.fq, %i.fh
  %i.fs = or disjoint i32 %i.fr, %i.ff
  %i.ft = xor i32 %i.fs, 42
  %i.fu = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shifte, i64 %i.dx
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !3
end_hunk_3
begin_hunk_4_@_ZZN3fmt3v116detail18for_each_codepointIZNS1_13compute_widthENS0_17basic_string_viewIcEEE17count_code_pointsEEvS4_T_ENKUlPKcS8_E_clES8_S8_:bb.a
  %i.h = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.masks, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !3
  %i.j = and i32 %i.i, %i.b
  %i.k = shl nuw nsw i32 %i.j, 18
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !30    ; 2 uses
  %i.n = and i8 %i.m, 63
  %i.o = zext nneg i8 %i.n to i32
  %i.p = shl nuw nsw i32 %i.o, 12
  %i.q = or disjoint i32 %i.p, %i.k
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !30    ; 2 uses
  %i.t = and i8 %i.s, 63
  %i.u = zext nneg i8 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 6
  %i.w = or disjoint i32 %i.v, %i.q
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.y = load i8, ptr %i.x, align 1, !tbaa !30    ; 2 uses
  %i.z = and i8 %i.y, 63
  %i.aa = zext nneg i8 %i.z to i32
  %i.ab = or disjoint i32 %i.w, %i.aa
  %i.ac = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.g
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !3
  %i.ae = lshr i32 %i.ab, %i.ad                   ; 4 uses
  %i.af = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.mins, i64 %i.g
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3
  %i.ah = icmp ult i32 %i.ae, %i.ag
  %i.ai = select i1 %i.ah, i32 64, i32 0
  %.mask.i = and i32 %i.ae, 2147481600
  %i.aj = icmp eq i32 %.mask.i, 55296
  %i.ak = select i1 %i.aj, i32 128, i32 0
  %i.al = icmp samesign ugt i32 %i.ae, 1114111
  %i.am = select i1 %i.al, i32 256, i32 0
  %i.an = lshr i8 %i.m, 2
  %i.ao = and i8 %i.an, 48
  %i.ap = lshr i8 %i.s, 4
  %i.aq = and i8 %i.ap, 12
  %i.ar = lshr i8 %i.y, 6
  %i.as = or disjoint i8 %i.aq, %i.ao
  %i.at = or disjoint i8 %i.as, %i.ar
  %i.au = zext nneg i8 %i.at to i32
  %i.av = or disjoint i32 %i.ai, %i.au
  %i.aw = or disjoint i32 %i.av, %i.am
  %i.ax = or disjoint i32 %i.aw, %i.ak
  %i.ay = xor i32 %i.ax, 42
  %i.az = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shifte, i64 %i.g
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3
  %i.bb = lshr i32 %i.ay, %i.ba
  %.not = icmp eq i32 %i.bb, 0                    ; 2 uses
  %i.bc = select i1 %.not, i32 %i.ae, i32 -1      ; 7 uses
  %i.bd = icmp ugt i32 %i.bc, 4351
  br i1 %i.bd, label %bb.b, label %_ZZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEEENK17count_code_pointsclEjS3_.exit

bb.b:                                             ; preds = %bb.a
  %i.be = icmp ult i32 %i.bc, 4448
  %i.bf = add nsw i32 %i.bc, -9001
  %i.bg = icmp ult i32 %i.bf, 2
  %or.cond3.i = or i1 %i.be, %i.bg
  br i1 %or.cond3.i, label %_ZZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEEENK17count_code_pointsclEjS3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bh = add nsw i32 %i.bc, -11904
  %or.cond5.i = icmp ult i32 %i.bh, 30288
  %i.bi = icmp ne i32 %i.bc, 12351
  %or.cond7.i = and i1 %i.bi, %or.cond5.i
  %i.bj = insertelement <2 x i32> poison, i32 %i.bc, i64 0
  %i.bk = shufflevector <2 x i32> %i.bj, <2 x i32> poison, <8 x i32> zeroinitializer
  %i.bl = and <8 x i32> %i.bk, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -65538, i32 -1>
  %i.bm = add <8 x i32> %i.bl, <i32 -44032, i32 -63744, i32 -65040, i32 -65072, i32 -65280, i32 -65504, i32 -131072, i32 -127744>
  %i.bn = icmp ult <8 x i32> %i.bm, <i32 11172, i32 512, i32 10, i32 64, i32 97, i32 7, i32 65534, i32 848>
  %i.bo = bitcast <8 x i1> %i.bn to i8
  %i.bp = icmp ne i8 %i.bo, 0
  %op.rdx = or i1 %i.bp, %or.cond7.i
  br i1 %op.rdx, label %_ZZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEEENK17count_code_pointsclEjS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bq = and i32 %i.bc, -256
  %i.br = icmp eq i32 %i.bq, 129280
  %i.bs = select i1 %i.br, i64 2, i64 1
  br label %_ZZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEEENK17count_code_pointsclEjS3_.exit

_ZZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEEENK17count_code_pointsclEjS3_.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.bt = phi i64 [ 1, %bb.a ], [ 2, %bb.c ], [ 2, %bb.b ], [ %i.bs, %bb.d ]
  %i.bu = getelementptr inbounds i8, ptr %1, i64 %i.g
  %.not.i = lshr i32 -2130771968, %i.c
  %i.bv = and i32 %.not.i, 1
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bw
  %i.by = load ptr, ptr %0, align 8, !tbaa !683   ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !145
  %i.ca = add i64 %i.bz, %i.bt
  store i64 %i.ca, ptr %i.by, align 8, !tbaa !145
  %i.cb = select i1 %.not, ptr %i.bx, ptr %i.l
  ret ptr %i.cb
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr ptr @_ZN3fmt3v116detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #16 comdat {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !599
  %i.b = lshr i32 %i.a, 15
  %i.c = and i32 %i.b, 7                          ; 3 uses
  %i.d = zext nneg i32 %i.c to i64
  %i.e = icmp eq i32 %i.c, 1
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = load i8, ptr %i.f, align 4, !tbaa !30
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i, %.lr.ph.i
  %.04.i = phi i64 [ 0, %.lr.ph.i ], [ %i.s, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i ]
  %i.k = load i64, ptr %i.h, align 8, !tbaa !629  ; 2 uses
  %i.l = add i64 %i.k, 1                          ; 3 uses
  %i.m = load i64, ptr %i.i, align 8, !tbaa !630
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.d, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !631
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.l), !inline_history !685
  %.pre.i.i.i = load i64, ptr %i.h, align 8, !tbaa !629 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i:        ; preds = %bb.d, %bb.c
  %.pre-phi.i.i.i = phi i64 [ %i.l, %bb.c ], [ %.pre2.i.i.i, %bb.d ]
  %i.p = phi i64 [ %i.k, %bb.c ], [ %.pre.i.i.i, %bb.d ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !627
  store i64 %.pre-phi.i.i.i, ptr %i.h, align 8, !tbaa !629
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  store i8 %i.g, ptr %i.r, align 1, !tbaa !30
  %i.s = add nuw i64 %.04.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.s, %1
  br i1 %exitcond.not.i, label %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit, label %bb.c, !llvm.loop !686

bb.e:                                             ; preds = %bb.a
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d ; 2 uses
  %.not24.i.i = icmp eq i32 %i.c, 0
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  br i1 %.not24.i.i, label %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit, label %.lr.ph27.i.i.preheader

.lr.ph27.i.i.preheader:                           ; preds = %.lr.ph
  %.pre.i.i.pre = load i64, ptr %i.v, align 8, !tbaa !629
  br label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %.lr.ph27.i.i.preheader, %_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit
  %.pre.i.i = phi i64 [ %i.bg, %_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit ], [ %.pre.i.i.pre, %.lr.ph27.i.i.preheader ]
  %.018 = phi i64 [ %i.by, %_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit ], [ 0, %.lr.ph27.i.i.preheader ]
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.y = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.bg, %._crit_edge.i.i ] ; 2 uses
  %.01825.i.i = phi ptr [ %i.f, %.lr.ph27.i.i ], [ %i.bh, %._crit_edge.i.i ] ; 9 uses
  %i.z = ptrtoint ptr %.01825.i.i to i64          ; 2 uses
  %i.aa = sub i64 %i.u, %i.z                      ; 2 uses
  %i.ab = add i64 %i.aa, %i.y                     ; 2 uses
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !630 ; 2 uses
  %i.ad = icmp ugt i64 %i.ab, %i.ac
  br i1 %i.ad, label %bb.g, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !631
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ab), !inline_history !656
  %.pre30.i.i = load i64, ptr %i.w, align 8, !tbaa !630
  %.pre31.i.i = load i64, ptr %i.v, align 8, !tbaa !629
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.g, %bb.f
  %i.af = phi i64 [ %i.y, %bb.f ], [ %.pre31.i.i, %bb.g ] ; 4 uses
  %i.ag = phi i64 [ %i.ac, %bb.f ], [ %.pre30.i.i, %bb.g ]
  %i.ah = sub i64 %i.ag, %i.af
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 %i.aa) ; 13 uses
  %i.ai = load ptr, ptr %0, align 8, !tbaa !627   ; 2 uses
  %i.aj = ptrtoaddr ptr %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.af ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.al = add i64 %i.af, %i.aj
  %i.am = sub i64 %i.z, %i.al
  %diff.check = icmp ugt i64 %i.am, -128
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check31 = icmp ult i64 %spec.select.i.i, 128
  br i1 %min.iters.check31, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %spec.select.i.i, 120
  %n.vec = and i64 %spec.select.i.i, -128         ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %index ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 96
  %wide.load = load <32 x i8>, ptr %i.an, align 1, !tbaa !30
  %wide.load32 = load <32 x i8>, ptr %i.ao, align 1, !tbaa !30
  %wide.load33 = load <32 x i8>, ptr %i.ap, align 1, !tbaa !30
  %wide.load34 = load <32 x i8>, ptr %i.aq, align 1, !tbaa !30
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 %index ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 96
  store <32 x i8> %wide.load, ptr %i.ar, align 1, !tbaa !30
  store <32 x i8> %wide.load32, ptr %i.as, align 1, !tbaa !30
  store <32 x i8> %wide.load33, ptr %i.at, align 1, !tbaa !30
  store <32 x i8> %wide.load34, ptr %i.au, align 1, !tbaa !30
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !687

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !637

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec36 = and i64 %spec.select.i.i, -8         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index37 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next39, %vec.epilog.vector.body ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %index37
  %wide.load38 = load <8 x i8>, ptr %i.aw, align 1, !tbaa !30
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ak, i64 %index37
  store <8 x i8> %wide.load38, ptr %i.ax, align 1, !tbaa !30
  %index.next39 = add nuw i64 %index37, 8         ; 2 uses
  %i.ay = icmp eq i64 %index.next39, %n.vec36
  br i1 %i.ay, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !688

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n40 = icmp eq i64 %spec.select.i.i, %n.vec36
  br i1 %cmp.n40, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec36, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.bc, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.az = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %.023.i.i.prol
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !30
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.023.i.i.prol
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !30
  %i.bc = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !689

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bc, %.lr.ph.i.i.prol ]
  %i.bd = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.be = icmp ugt i64 %i.bd, -4
  br i1 %i.be, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.v, align 8, !tbaa !629
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.bf = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.af, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.bg = add i64 %i.bf, %spec.select.i.i         ; 3 uses
  store i64 %i.bg, ptr %i.v, align 8, !tbaa !629
  %i.bh = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bh, %i.t
  br i1 %.not.i.i, label %_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit, label %bb.f, !llvm.loop !660

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.bx, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %.023.i.i
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !30
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.023.i.i
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !30
  %i.bl = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !30
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bl
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !30
  %i.bp = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !30
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bp
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !30
  %i.bt = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !30
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bt
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !30
  %i.bx = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bx, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !690

_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit: ; preds = %._crit_edge.i.i
  %i.by = add nuw i64 %.018, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.by, %1
  br i1 %exitcond.not, label %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit, label %.lr.ph27.i.i, !llvm.loop !691

_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit: ; preds = %_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i, %bb.e, %.lr.ph, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN3fmt3v116detail16get_dynamic_specINS0_7contextEEEiNS0_11arg_id_kindERKNS1_7arg_refINT_9char_typeEEERS6_(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i32 %0, 1
  br i1 %i.a, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 8, !tbaa !30     ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !692, !noalias !695 ; 3 uses
  %i.e = icmp sgt i64 %i.d, -1
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = trunc i64 %i.d to i32
  %i.g = icmp slt i32 %i.b, %i.f
  br i1 %i.g, label %bb.d, label %_ZNK3fmt3v117context3argEi.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30, !noalias !695
  %i.j = sext i32 %i.b to i64
  %i.k = getelementptr inbounds [32 x i8], ptr %i.i, i64 %i.j
  br label %_ZNK3fmt3v117context3argEi.exit

bb.e:                                             ; preds = %bb.b
  %i.l = icmp ugt i32 %i.b, 14
  br i1 %i.l, label %_ZNK3fmt3v117context3argEi.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = shl nuw nsw i32 %i.b, 2
  %i.n = zext nneg i32 %i.m to i64
  %i.o = lshr i64 %i.d, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = and i32 %i.p, 15                         ; 2 uses
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %_ZNK3fmt3v117context3argEi.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !30, !noalias !695
  br label %_ZNK3fmt3v117context3argEi.exit.thread35.sink.split

bb.h:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !tbaa !645
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !145 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !692, !noalias !700 ; 5 uses
  %i.v = and i64 %i.u, 4611686018427387904
  %.not13.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not13.i.i.i, label %_ZNK3fmt3v117context3argEi.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !noalias !700 ; 3 uses
  %i.y = icmp slt i64 %i.u, 0
  %.v.i.i.i = select i1 %i.y, i64 -32, i64 -16
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 %.v.i.i.i ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !705, !noalias !700 ; 2 uses
  %.not14.not.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not14.not.i.i.i, label %_ZNK3fmt3v117context3argEi.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !708, !noalias !700
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.ad = add nuw i64 %.01115.i.i.i, 1            ; 2 uses
end_hunk_4
begin_hunk_5_@_ZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #27
          to label %.noexc792 unwind label %bb.aam

.noexc792:                                        ; preds = %bb.wl
  unreachable

bb.wm:                                            ; preds = %bb.wk
  %i.dhp = getelementptr inbounds nuw i8, ptr %i.dhl, i64 16
  %i.dhq = load ptr, ptr %i.dhp, align 8, !tbaa !385 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %111) #23
  %i.dhr = load i32, ptr %i.dhf, align 8, !tbaa !196
  %i.dhs = load ptr, ptr %4, align 8, !tbaa !155
  %i.dht = load ptr, ptr %i.dhs, align 8, !tbaa !171
  %i.dhu = sext i32 %i.dhr to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !1057
  store i32 0, ptr %8, align 4, !tbaa !30, !noalias !1057
  %i.dhv = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i8 1, ptr %i.dhv, align 4, !tbaa !209, !noalias !1057
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %111, i64 noundef %i.dhu, ptr noundef %i.dht, ptr noundef nonnull align 4 dereferenceable(8) %8, i1 noundef zeroext false)
          to label %bb.wn unwind label %bb.aan

bb.wn:                                            ; preds = %bb.wm
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !1057
  %i.dhw = load ptr, ptr %111, align 8, !tbaa !237 ; 2 uses
  %i.dhx = getelementptr inbounds nuw i8, ptr %i.dhw, i64 44
  %i.dhy = load i8, ptr %i.dhx, align 4, !tbaa !384
  %i.dhz = and i8 %i.dhy, 2
  %.not.i796 = icmp eq i8 %i.dhz, 0
  br i1 %.not.i796, label %bb.wp, label %bb.wo, !prof !78

bb.wo:                                            ; preds = %bb.wn
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #27
          to label %.noexc797 unwind label %bb.aao

.noexc797:                                        ; preds = %bb.wo
  unreachable

bb.wp:                                            ; preds = %bb.wn
  %i.dia = getelementptr inbounds nuw i8, ptr %i.dhw, i64 16
  %i.dib = load ptr, ptr %i.dia, align 8, !tbaa !385 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %112) #23
  %i.dic = load ptr, ptr %4, align 8, !tbaa !155
  %i.did = load ptr, ptr %i.dic, align 8, !tbaa !171
  %i.die = sext i32 %.41161 to i64                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23, !noalias !1060
  store i32 0, ptr %7, align 4, !tbaa !30, !noalias !1060
  %i.dif = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i8 1, ptr %i.dif, align 4, !tbaa !209, !noalias !1060
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %112, i64 noundef %i.die, ptr noundef %i.did, ptr noundef nonnull align 4 dereferenceable(8) %7, i1 noundef zeroext false)
          to label %bb.wq unwind label %bb.aap

bb.wq:                                            ; preds = %bb.wp
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23, !noalias !1060
  %i.dig = load ptr, ptr %112, align 8, !tbaa !237 ; 2 uses
  %i.dih = getelementptr inbounds nuw i8, ptr %i.dig, i64 44
  %i.dii = load i8, ptr %i.dih, align 4, !tbaa !384
  %i.dij = and i8 %i.dii, 2
  %.not.i801 = icmp eq i8 %i.dij, 0
  br i1 %.not.i801, label %bb.ws, label %bb.wr, !prof !78

bb.wr:                                            ; preds = %bb.wq
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #27
          to label %.noexc802 unwind label %bb.aaq

.noexc802:                                        ; preds = %bb.wr
  unreachable

bb.ws:                                            ; preds = %bb.wq
  %i.dik = getelementptr inbounds nuw i8, ptr %i.dig, i64 16
  %i.dil = load ptr, ptr %i.dik, align 8, !tbaa !385 ; 31 uses
  %i.dim = ptrtoaddr ptr %i.dil to i64            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %113) #23
  %i.din = load ptr, ptr %4, align 8, !tbaa !155
  %i.dio = load ptr, ptr %i.din, align 8, !tbaa !171
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !1063
  store i32 0, ptr %6, align 4, !tbaa !30, !noalias !1063
  %i.dip = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i8 1, ptr %i.dip, align 4, !tbaa !209, !noalias !1063
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %113, i64 noundef %i.die, ptr noundef %i.dio, ptr noundef nonnull align 4 dereferenceable(8) %6, i1 noundef zeroext false)
          to label %bb.wt unwind label %bb.aar

bb.wt:                                            ; preds = %bb.ws
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !1063
  %i.diq = load ptr, ptr %113, align 8, !tbaa !237 ; 5 uses
  %i.dir = getelementptr inbounds nuw i8, ptr %i.diq, i64 44
  %i.dis = load i8, ptr %i.dir, align 4, !tbaa !384
  %i.dit = and i8 %i.dis, 2
  %.not.i806 = icmp eq i8 %i.dit, 0
  br i1 %.not.i806, label %bb.wv, label %bb.wu, !prof !78

bb.wu:                                            ; preds = %bb.wt
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #27
          to label %.noexc807 unwind label %bb.aas

.noexc807:                                        ; preds = %bb.wu
  unreachable

bb.wv:                                            ; preds = %bb.wt
  %i.diu = getelementptr inbounds nuw i8, ptr %i.diq, i64 16
  %i.div = load ptr, ptr %i.diu, align 8, !tbaa !385 ; 31 uses
  %i.diw = ptrtoaddr ptr %i.div to i64            ; 5 uses
  %i.dix = load ptr, ptr %i.gt, align 8, !tbaa !267 ; 11 uses
  %i.diy = getelementptr inbounds nuw i8, ptr %i.dix, i64 36 ; 2 uses
  %i.diz = getelementptr inbounds nuw i8, ptr %i.dix, i64 37
  %i.dja = load i8, ptr %i.diz, align 1, !tbaa !263, !range !82, !noundef !83
  %i.djb = trunc nuw i8 %i.dja to i1
  br i1 %i.djb, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i857, label %bb.ww

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i857: ; preds = %bb.wv
  %.0.in.pre.i.i858 = load i8, ptr %i.diy, align 1, !tbaa !56, !range !82
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i811

bb.ww:                                            ; preds = %bb.wv
  %i.djc = getelementptr inbounds nuw i8, ptr %i.dix, i64 28
  %i.djd = load i32, ptr %i.djc, align 4, !tbaa !312
  %i.dje = icmp eq i32 %i.djd, 0
  br i1 %i.dje, label %bb.wx, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i809

bb.wx:                                            ; preds = %bb.ww
  %i.djf = getelementptr inbounds nuw i8, ptr %i.dix, i64 32
  %i.djg = load i32, ptr %i.djf, align 8, !tbaa !196 ; 6 uses
  %i.djh = getelementptr inbounds nuw i8, ptr %i.dix, i64 24
  %i.dji = load i32, ptr %i.djh, align 8, !tbaa !313
  %i.djj = icmp eq i32 %i.djg, %i.dji
  br i1 %i.djj, label %bb.wy, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i809

bb.wy:                                            ; preds = %bb.wx
  %i.djk = load ptr, ptr %i.dix, align 8, !tbaa !314 ; 2 uses
  %.not.i.i.i849 = icmp sgt i32 %i.djg, 0
  br i1 %.not.i.i.i849, label %bb.wz, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i809

bb.wz:                                            ; preds = %bb.wy
  %i.djl = and i32 %i.djg, 2147483584             ; 3 uses
  %i.djm = zext nneg i32 %i.djl to i64
  %.not37.i.i.not.i.i8511905.not = icmp eq i32 %i.djl, 0
  br i1 %.not37.i.i.not.i.i8511905.not, label %.critedge.i.i.i.i852, label %.lr.ph1907

bb.xa:                                            ; preds = %.lr.ph1907
  %indvars.iv.next.i.i856 = add nuw nsw i64 %indvars.iv.i.i8501906, 64 ; 2 uses
  %.not37.i.i.not.i.i851 = icmp samesign ult i64 %indvars.iv.next.i.i856, %i.djm
  br i1 %.not37.i.i.not.i.i851, label %.lr.ph1907, label %.critedge.i.i.i.i852, !llvm.loop !315

.lr.ph1907:                                       ; preds = %bb.wz, %bb.xa
  %indvars.iv.i.i8501906 = phi i64 [ %indvars.iv.next.i.i856, %bb.xa ], [ 0, %bb.wz ] ; 2 uses
  %i.djn = lshr exact i64 %indvars.iv.i.i8501906, 3
  %i.djo = getelementptr inbounds nuw i8, ptr %i.djk, i64 %i.djn
  %i.djp = load i64, ptr %i.djo, align 8, !tbaa !145
  %i.djq = icmp eq i64 %i.djp, -1
  br i1 %i.djq, label %bb.xa, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i809, !llvm.loop !315

.critedge.i.i.i.i852:                             ; preds = %bb.xa, %bb.wz
  %.not38.i.i.i.i853 = icmp eq i32 %i.djg, %i.djl
  br i1 %.not38.i.i.i.i853, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i809, label %bb.xb

bb.xb:                                            ; preds = %.critedge.i.i.i.i852
  %i.djr = lshr i32 %i.djg, 6
  %i.djs = and i32 %i.djg, 63
  %i.djt = zext nneg i32 %i.djs to i64
  %notmask.i40.i.i.i.i854 = shl nsw i64 -1, %i.djt
  %i.dju = zext nneg i32 %i.djr to i64
  %i.djv = getelementptr inbounds nuw [8 x i8], ptr %i.djk, i64 %i.dju
  %i.djw = load i64, ptr %i.djv, align 8, !tbaa !145
  %.demorgan.i.i855 = or i64 %i.djw, %notmask.i40.i.i.i.i854
  %i.djx = icmp eq i64 %.demorgan.i.i855, -1
  %i.djy = zext i1 %i.djx to i16
  %i.djz = or disjoint i16 %i.djy, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i809

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i809: ; preds = %.lr.ph1907, %bb.xb, %.critedge.i.i.i.i852, %bb.wy, %bb.wx, %bb.ww
  %.sroa.0.0.insert.ext.i.i810 = phi i16 [ 256, %bb.wx ], [ 256, %bb.ww ], [ 257, %bb.wy ], [ 257, %.critedge.i.i.i.i852 ], [ %i.djz, %bb.xb ], [ 256, %.lr.ph1907 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i810, ptr %i.diy, align 4
  %i.dka = trunc i16 %.sroa.0.0.insert.ext.i.i810 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i811

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i811: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i809, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i857
  %.0.in.i.i812 = phi i8 [ %.0.in.pre.i.i858, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i857 ], [ %i.dka, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i809 ]
  %.0.i.i813 = trunc nuw i8 %.0.in.i.i812 to i1
  br i1 %.0.i.i813, label %bb.xc, label %bb.xe

bb.xc:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i811
  %i.dkb = getelementptr inbounds nuw i8, ptr %i.dix, i64 32
  %i.dkc = load i32, ptr %i.dkb, align 8, !tbaa !196 ; 2 uses
  %i.dkd = getelementptr inbounds nuw i8, ptr %i.dix, i64 28
  %i.dke = load i32, ptr %i.dkd, align 4, !tbaa !312 ; 2 uses
  %i.dkf = icmp slt i32 %i.dke, %i.dkc
  br i1 %i.dkf, label %.lr.ph.i842, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit

.lr.ph.i842:                                      ; preds = %bb.xc
  %i.dkg = load ptr, ptr %i.p, align 8, !tbaa !310 ; 2 uses
  %i.dkh = load ptr, ptr %i.n, align 8, !tbaa !342
  %i.dki = getelementptr inbounds nuw i8, ptr %i.dkg, i64 120
  %i.dkj = load ptr, ptr %i.dki, align 8, !tbaa !308
  %i.dkk = getelementptr inbounds nuw i8, ptr %i.dkg, i64 104
  %i.dkl = load ptr, ptr %i.dkk, align 8, !tbaa !306
  %i.dkm = load ptr, ptr %i.q, align 8, !tbaa !310
  %i.dkn = load ptr, ptr %i.o, align 8, !tbaa !342
  %i.dko = getelementptr inbounds nuw i8, ptr %i.dkm, i64 104
  %i.dkp = load ptr, ptr %i.dko, align 8, !tbaa !306
  %i.dkq = sext i32 %i.dke to i64
  %wide.trip.count.i843 = sext i32 %i.dkc to i64
  %i.dkr = sub i64 %i.diw, %i.dim
  %diff.check2216 = icmp ugt i64 %i.dkr, -128
  br label %bb.xd

bb.xd:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i, %.lr.ph.i842
  %.9 = phi i32 [ 0, %.lr.ph.i842 ], [ %i.dnb, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i ] ; 3 uses
  %indvars.iv.i845 = phi i64 [ %i.dkq, %.lr.ph.i842 ], [ %indvars.iv.next.i846, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i ] ; 5 uses
  %i.dks = getelementptr inbounds [4 x i8], ptr %i.dkh, i64 %indvars.iv.i845 ; 2 uses
  %i.dkt = load i32, ptr %i.dks, align 4, !tbaa !3
  %i.dku = sext i32 %i.dkt to i64
  %i.dkv = getelementptr inbounds [4 x i8], ptr %i.dkj, i64 %i.dku
  %i.dkw = load i32, ptr %i.dkv, align 4, !tbaa !3 ; 6 uses
  %i.dkx = getelementptr inbounds [4 x i8], ptr %i.dhq, i64 %indvars.iv.i845
  store i32 %.9, ptr %i.dkx, align 4, !tbaa !3
  %i.dky = getelementptr inbounds [4 x i8], ptr %i.dib, i64 %indvars.iv.i845
  store i32 %i.dkw, ptr %i.dky, align 4, !tbaa !3
  %i.dkz = icmp sgt i32 %i.dkw, 0
  br i1 %i.dkz, label %iter.check2243, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i

iter.check2243:                                   ; preds = %bb.xd
  %i.dla = getelementptr inbounds [4 x i8], ptr %i.dkn, i64 %indvars.iv.i845
  %i.dlb = load i32, ptr %i.dla, align 4, !tbaa !3
  %i.dlc = sext i32 %i.dlb to i64
  %i.dld = getelementptr inbounds [4 x i8], ptr %i.dkp, i64 %i.dlc
  %i.dle = load i32, ptr %i.dld, align 4, !tbaa !3 ; 5 uses
  %i.dlf = load i32, ptr %i.dks, align 4, !tbaa !3
  %i.dlg = sext i32 %i.dlf to i64
  %i.dlh = getelementptr inbounds [4 x i8], ptr %i.dkl, i64 %i.dlg
  %i.dli = load i32, ptr %i.dlh, align 4, !tbaa !3 ; 5 uses
  %i.dlj = sext i32 %.9 to i64                    ; 5 uses
  %i.dlk = zext nneg i32 %i.dkw to i64            ; 8 uses
  %min.iters.check2217 = icmp ult i32 %i.dkw, 4
  %or.cond = select i1 %min.iters.check2217, i1 true, i1 %diff.check2216
  br i1 %or.cond, label %.lr.ph.i.i848.preheader, label %vector.main.loop.iter.check2218

vector.main.loop.iter.check2218:                  ; preds = %iter.check2243
  %min.iters.check2219 = icmp ult i32 %i.dkw, 32
  br i1 %min.iters.check2219, label %vec.epilog.ph2247, label %vector.ph2220

vector.ph2220:                                    ; preds = %vector.main.loop.iter.check2218
  %n.mod.vf2221 = and i64 %i.dlk, 28
  %n.vec2222 = and i64 %i.dlk, 2147483616         ; 4 uses
  %broadcast.splatinsert2223 = insertelement <8 x i32> poison, i32 %i.dle, i64 0
  %broadcast.splat2224 = shufflevector <8 x i32> %broadcast.splatinsert2223, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert2225 = insertelement <8 x i32> poison, i32 %i.dli, i64 0
  %broadcast.splat2226 = shufflevector <8 x i32> %broadcast.splatinsert2225, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op2621 = add <8 x i32> splat (i32 8), %broadcast.splat2226
  %invariant.op2623 = add <8 x i32> splat (i32 16), %broadcast.splat2226
  %invariant.op2625 = add <8 x i32> splat (i32 24), %broadcast.splat2226
  %invariant.op2627 = add <8 x i32> splat (i32 8), %broadcast.splat2224
  %invariant.op2629 = add <8 x i32> splat (i32 16), %broadcast.splat2224
  %invariant.op2631 = add <8 x i32> splat (i32 24), %broadcast.splat2224
  br label %vector.body2227

vector.body2227:                                  ; preds = %vector.body2227, %vector.ph2220
  %index2228 = phi i64 [ 0, %vector.ph2220 ], [ %index.next2237, %vector.body2227 ] ; 2 uses
  %vec.ind2229 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2220 ], [ %vec.ind.next2238, %vector.body2227 ] ; 5 uses
  %vec.ind2230 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2220 ], [ %vec.ind.next2239, %vector.body2227 ] ; 5 uses
  %i.dll = add nsw i64 %index2228, %i.dlj         ; 2 uses
  %i.dlm = getelementptr inbounds [4 x i8], ptr %i.div, i64 %i.dll ; 4 uses
  %i.dln = add <8 x i32> %broadcast.splat2226, %vec.ind2229
  %.reass2622 = add <8 x i32> %vec.ind2229, %invariant.op2621
  %.reass2624 = add <8 x i32> %vec.ind2229, %invariant.op2623
  %.reass2626 = add <8 x i32> %vec.ind2229, %invariant.op2625
  %i.dlo = getelementptr inbounds nuw i8, ptr %i.dlm, i64 32
  %i.dlp = getelementptr inbounds nuw i8, ptr %i.dlm, i64 64
  %i.dlq = getelementptr inbounds nuw i8, ptr %i.dlm, i64 96
  store <8 x i32> %i.dln, ptr %i.dlm, align 4, !tbaa !3
  store <8 x i32> %.reass2622, ptr %i.dlo, align 4, !tbaa !3
  store <8 x i32> %.reass2624, ptr %i.dlp, align 4, !tbaa !3
  store <8 x i32> %.reass2626, ptr %i.dlq, align 4, !tbaa !3
  %i.dlr = getelementptr inbounds [4 x i8], ptr %i.dil, i64 %i.dll ; 4 uses
  %i.dls = add <8 x i32> %broadcast.splat2224, %vec.ind2230
  %.reass2628 = add <8 x i32> %vec.ind2230, %invariant.op2627
  %.reass2630 = add <8 x i32> %vec.ind2230, %invariant.op2629
  %.reass2632 = add <8 x i32> %vec.ind2230, %invariant.op2631
  %i.dlt = getelementptr inbounds nuw i8, ptr %i.dlr, i64 32
  %i.dlu = getelementptr inbounds nuw i8, ptr %i.dlr, i64 64
  %i.dlv = getelementptr inbounds nuw i8, ptr %i.dlr, i64 96
  store <8 x i32> %i.dls, ptr %i.dlr, align 4, !tbaa !3
  store <8 x i32> %.reass2628, ptr %i.dlt, align 4, !tbaa !3
  store <8 x i32> %.reass2630, ptr %i.dlu, align 4, !tbaa !3
  store <8 x i32> %.reass2632, ptr %i.dlv, align 4, !tbaa !3
  %index.next2237 = add nuw i64 %index2228, 32    ; 2 uses
  %vec.ind.next2238 = add <8 x i32> %vec.ind2229, splat (i32 32)
  %vec.ind.next2239 = add <8 x i32> %vec.ind2230, splat (i32 32)
  %i.dlw = icmp eq i64 %index.next2237, %n.vec2222
  br i1 %i.dlw, label %middle.block2240, label %vector.body2227, !llvm.loop !1066

middle.block2240:                                 ; preds = %vector.body2227
  %cmp.n2241 = icmp eq i64 %n.vec2222, %i.dlk
  br i1 %cmp.n2241, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i, label %vec.epilog.iter.check2245

vec.epilog.iter.check2245:                        ; preds = %middle.block2240
  %min.epilog.iters.check2246 = icmp eq i64 %n.mod.vf2221, 0
  br i1 %min.epilog.iters.check2246, label %.lr.ph.i.i848.preheader, label %vec.epilog.ph2247, !prof !472

vec.epilog.ph2247:                                ; preds = %vector.main.loop.iter.check2218, %vec.epilog.iter.check2245
  %vec.epilog.resume.val2242 = phi i64 [ %n.vec2222, %vec.epilog.iter.check2245 ], [ 0, %vector.main.loop.iter.check2218 ] ; 2 uses
  %n.vec2249 = and i64 %i.dlk, 2147483644         ; 3 uses
  %broadcast.splatinsert2250 = insertelement <4 x i32> poison, i32 %i.dle, i64 0
  %broadcast.splat2251 = shufflevector <4 x i32> %broadcast.splatinsert2250, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2252 = insertelement <4 x i32> poison, i32 %i.dli, i64 0
  %broadcast.splat2253 = shufflevector <4 x i32> %broadcast.splatinsert2252, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.dlx = trunc nuw nsw i64 %vec.epilog.resume.val2242 to i32
  %broadcast.splatinsert2254 = insertelement <4 x i32> poison, i32 %i.dlx, i64 0
  %broadcast.splat2255 = shufflevector <4 x i32> %broadcast.splatinsert2254, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction2256 = or disjoint <4 x i32> %broadcast.splat2255, <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  br label %vec.epilog.vector.body2257

vec.epilog.vector.body2257:                       ; preds = %vec.epilog.vector.body2257, %vec.epilog.ph2247
  %index2258 = phi i64 [ %vec.epilog.resume.val2242, %vec.epilog.ph2247 ], [ %index.next2261, %vec.epilog.vector.body2257 ] ; 2 uses
  %vec.ind2259 = phi <4 x i32> [ %induction2256, %vec.epilog.ph2247 ], [ %vec.ind.next2262, %vec.epilog.vector.body2257 ] ; 2 uses
  %vec.ind2260 = phi <4 x i32> [ %induction2256, %vec.epilog.ph2247 ], [ %vec.ind.next2263, %vec.epilog.vector.body2257 ] ; 2 uses
  %i.dly = add nsw i64 %index2258, %i.dlj         ; 2 uses
  %i.dlz = getelementptr inbounds [4 x i8], ptr %i.div, i64 %i.dly
  %i.dma = add <4 x i32> %broadcast.splat2253, %vec.ind2259
  store <4 x i32> %i.dma, ptr %i.dlz, align 4, !tbaa !3
  %i.dmb = getelementptr inbounds [4 x i8], ptr %i.dil, i64 %i.dly
  %i.dmc = add <4 x i32> %broadcast.splat2251, %vec.ind2260
  store <4 x i32> %i.dmc, ptr %i.dmb, align 4, !tbaa !3
  %index.next2261 = add nuw i64 %index2258, 4     ; 2 uses
  %vec.ind.next2262 = add <4 x i32> %vec.ind2259, splat (i32 4)
  %vec.ind.next2263 = add <4 x i32> %vec.ind2260, splat (i32 4)
  %i.dmd = icmp eq i64 %index.next2261, %n.vec2249
  br i1 %i.dmd, label %vec.epilog.middle.block2264, label %vec.epilog.vector.body2257, !llvm.loop !1067

vec.epilog.middle.block2264:                      ; preds = %vec.epilog.vector.body2257
  %cmp.n2265 = icmp eq i64 %n.vec2249, %i.dlk
  br i1 %cmp.n2265, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i, label %.lr.ph.i.i848.preheader

.lr.ph.i.i848.preheader:                          ; preds = %iter.check2243, %vec.epilog.iter.check2245, %vec.epilog.middle.block2264
  %indvars.iv1433.ph = phi i64 [ 0, %iter.check2243 ], [ %n.vec2222, %vec.epilog.iter.check2245 ], [ %n.vec2249, %vec.epilog.middle.block2264 ] ; 6 uses
  %xtraiter2473 = and i64 %i.dlk, 1
  %lcmp.mod2474.not = icmp eq i64 %xtraiter2473, 0
  br i1 %lcmp.mod2474.not, label %.lr.ph.i.i848.prol.loopexit, label %.lr.ph.i.i848.prol

.lr.ph.i.i848.prol:                               ; preds = %.lr.ph.i.i848.preheader
  %i.dme = add nsw i64 %indvars.iv1433.ph, %i.dlj ; 2 uses
  %i.dmf = getelementptr inbounds [4 x i8], ptr %i.div, i64 %i.dme
  %i.dmg = trunc nuw nsw i64 %indvars.iv1433.ph to i32
  %i.dmh = add i32 %i.dli, %i.dmg
  store i32 %i.dmh, ptr %i.dmf, align 4, !tbaa !3
  %i.dmi = getelementptr inbounds [4 x i8], ptr %i.dil, i64 %i.dme
  %i.dmj = trunc nuw nsw i64 %indvars.iv1433.ph to i32
  %i.dmk = add i32 %i.dle, %i.dmj
  store i32 %i.dmk, ptr %i.dmi, align 4, !tbaa !3
  %indvars.iv.next1434.prol = or disjoint i64 %indvars.iv1433.ph, 1
  br label %.lr.ph.i.i848.prol.loopexit

.lr.ph.i.i848.prol.loopexit:                      ; preds = %.lr.ph.i.i848.prol, %.lr.ph.i.i848.preheader
  %indvars.iv1433.unr = phi i64 [ %indvars.iv1433.ph, %.lr.ph.i.i848.preheader ], [ %indvars.iv.next1434.prol, %.lr.ph.i.i848.prol ]
  %i.dml = add nsw i64 %i.dlk, -1
  %i.dmm = icmp eq i64 %indvars.iv1433.ph, %i.dml
  br i1 %i.dmm, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i, label %.lr.ph.i.i848

.lr.ph.i.i848:                                    ; preds = %.lr.ph.i.i848.prol.loopexit, %.lr.ph.i.i848
  %indvars.iv1433 = phi i64 [ %indvars.iv.next1434.1, %.lr.ph.i.i848 ], [ %indvars.iv1433.unr, %.lr.ph.i.i848.prol.loopexit ] ; 5 uses
  %i.dmn = add nsw i64 %indvars.iv1433, %i.dlj    ; 2 uses
  %i.dmo = getelementptr inbounds [4 x i8], ptr %i.div, i64 %i.dmn
  %i.dmp = trunc i64 %indvars.iv1433 to i32
  %i.dmq = add i32 %i.dli, %i.dmp
  store i32 %i.dmq, ptr %i.dmo, align 4, !tbaa !3
  %i.dmr = getelementptr inbounds [4 x i8], ptr %i.dil, i64 %i.dmn
  %i.dms = trunc i64 %indvars.iv1433 to i32
  %i.dmt = add i32 %i.dle, %i.dms
  store i32 %i.dmt, ptr %i.dmr, align 4, !tbaa !3
  %indvars.iv.next1434 = add nuw nsw i64 %indvars.iv1433, 1 ; 3 uses
  %i.dmu = add nsw i64 %indvars.iv.next1434, %i.dlj ; 2 uses
  %i.dmv = getelementptr inbounds [4 x i8], ptr %i.div, i64 %i.dmu
  %i.dmw = trunc i64 %indvars.iv.next1434 to i32
  %i.dmx = add i32 %i.dli, %i.dmw
  store i32 %i.dmx, ptr %i.dmv, align 4, !tbaa !3
  %i.dmy = getelementptr inbounds [4 x i8], ptr %i.dil, i64 %i.dmu
  %i.dmz = trunc i64 %indvars.iv.next1434 to i32
  %i.dna = add i32 %i.dle, %i.dmz
  store i32 %i.dna, ptr %i.dmy, align 4, !tbaa !3
  %indvars.iv.next1434.1 = add nuw nsw i64 %indvars.iv1433, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next1434.1, %i.dlk
  br i1 %exitcond.not.i.i.1, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i, label %.lr.ph.i.i848, !llvm.loop !1068

_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i: ; preds = %.lr.ph.i.i848.prol.loopexit, %.lr.ph.i.i848, %middle.block2240, %vec.epilog.middle.block2264, %bb.xd
  %i.dnb = add nsw i32 %i.dkw, %.9
  %indvars.iv.next.i846 = add nsw i64 %indvars.iv.i845, 1 ; 2 uses
  %exitcond.not.i847 = icmp eq i64 %indvars.iv.next.i846, %wide.trip.count.i843
  br i1 %exitcond.not.i847, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit, label %bb.xd, !llvm.loop !1069

bb.xe:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i811
  %i.dnc = load ptr, ptr %i.dix, align 8, !tbaa !314 ; 4 uses
  %i.dnd = getelementptr inbounds nuw i8, ptr %i.dix, i64 28
  %i.dne = load i32, ptr %i.dnd, align 4, !tbaa !312 ; 6 uses
  %i.dnf = getelementptr inbounds nuw i8, ptr %i.dix, i64 32
  %i.dng = load i32, ptr %i.dnf, align 8, !tbaa !196 ; 7 uses
  %.not.i.i.i.i819 = icmp slt i32 %i.dne, %i.dng
  br i1 %.not.i.i.i.i819, label %bb.xf, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit

bb.xf:                                            ; preds = %bb.xe
  %i.dnh = add i32 %i.dne, 63                     ; 2 uses
  %i.dni = srem i32 %i.dnh, 64
  %i.dnj = sub nsw i32 %i.dnh, %i.dni             ; 6 uses
  %i.dnk = and i32 %i.dng, -64                    ; 6 uses
  %i.dnl = icmp slt i32 %i.dnk, %i.dnj
  br i1 %i.dnl, label %bb.xg, label %bb.xi

bb.xg:                                            ; preds = %bb.xf
  %i.dnm = ashr i32 %i.dng, 6
  %i.dnn = and i32 %i.dng, 63
  %i.dno = zext nneg i32 %i.dnn to i64
  %notmask.i.i.i.i.i834 = shl nsw i64 -1, %i.dno
  %i.dnp = xor i64 %notmask.i.i.i.i.i834, -1
  %i.dnq = sub nsw i32 %i.dnj, %i.dne             ; 2 uses
  %i.dnr = zext nneg i32 %i.dnq to i64
  %notmask.i.i.i.i.i.i835 = shl nsw i64 -1, %i.dnr
  %i.dns = xor i64 %notmask.i.i.i.i.i.i835, -1
  %i.dnt = sub nsw i32 64, %i.dnq
  %i.dnu = zext nneg i32 %i.dnt to i64
  %i.dnv = shl i64 %i.dns, %i.dnu
  %i.dnw = and i64 %i.dnv, %i.dnp
  %i.dnx = sext i32 %i.dnm to i64
  %i.dny = getelementptr inbounds [8 x i8], ptr %i.dnc, i64 %i.dnx
  %i.dnz = load i64, ptr %i.dny, align 8, !tbaa !145
  %i.doa = and i64 %i.dnw, %i.dnz                 ; 2 uses
  %.not.i.i.i.i.i836 = icmp eq i64 %i.doa, 0
  br i1 %.not.i.i.i.i.i836, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit, label %.preheader.i.i.i.i.i837

.preheader.i.i.i.i.i837:                          ; preds = %bb.xg
  %i.dob = load ptr, ptr %i.p, align 8, !tbaa !310 ; 2 uses
  %i.doc = load ptr, ptr %i.n, align 8, !tbaa !342
  %i.dod = sext i32 %i.dnk to i64
  %i.doe = getelementptr inbounds nuw i8, ptr %i.dob, i64 120
  %i.dof = load ptr, ptr %i.doe, align 8, !tbaa !308
  %i.dog = getelementptr inbounds nuw i8, ptr %i.dob, i64 104
  %i.doh = load ptr, ptr %i.dog, align 8, !tbaa !306
  %i.doi = load ptr, ptr %i.q, align 8, !tbaa !310
  %i.doj = load ptr, ptr %i.o, align 8, !tbaa !342
  %i.dok = getelementptr inbounds nuw i8, ptr %i.doi, i64 104
  %i.dol = load ptr, ptr %i.dok, align 8, !tbaa !306
  %i.dom = sub i64 %i.diw, %i.dim
  %diff.check2164 = icmp ugt i64 %i.dom, -128
  br label %bb.xh

bb.xh:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i, %.preheader.i.i.i.i.i837
  %.8 = phi i32 [ 0, %.preheader.i.i.i.i.i837 ], [ %i.dqy, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i ] ; 3 uses
  %.011.i.i.i.i.i839 = phi i64 [ %i.doa, %.preheader.i.i.i.i.i837 ], [ %i.dra, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i ] ; 3 uses
  %i.don = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i839, i1 true)
  %i.doo = or disjoint i64 %i.don, %i.dod         ; 4 uses
  %i.dop = getelementptr inbounds [4 x i8], ptr %i.doc, i64 %i.doo ; 2 uses
  %i.doq = load i32, ptr %i.dop, align 4, !tbaa !3
  %i.dor = sext i32 %i.doq to i64
  %i.dos = getelementptr inbounds [4 x i8], ptr %i.dof, i64 %i.dor
  %i.dot = load i32, ptr %i.dos, align 4, !tbaa !3 ; 6 uses
  %i.dou = getelementptr inbounds [4 x i8], ptr %i.dhq, i64 %i.doo
  store i32 %.8, ptr %i.dou, align 4, !tbaa !3
  %i.dov = getelementptr inbounds [4 x i8], ptr %i.dib, i64 %i.doo
  store i32 %i.dot, ptr %i.dov, align 4, !tbaa !3
  %i.dow = icmp sgt i32 %i.dot, 0
  br i1 %i.dow, label %iter.check2191, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i

iter.check2191:                                   ; preds = %bb.xh
  %i.dox = getelementptr inbounds [4 x i8], ptr %i.doj, i64 %i.doo
  %i.doy = load i32, ptr %i.dox, align 4, !tbaa !3
  %i.doz = sext i32 %i.doy to i64
  %i.dpa = getelementptr inbounds [4 x i8], ptr %i.dol, i64 %i.doz
  %i.dpb = load i32, ptr %i.dpa, align 4, !tbaa !3 ; 5 uses
  %i.dpc = load i32, ptr %i.dop, align 4, !tbaa !3
  %i.dpd = sext i32 %i.dpc to i64
  %i.dpe = getelementptr inbounds [4 x i8], ptr %i.doh, i64 %i.dpd
  %i.dpf = load i32, ptr %i.dpe, align 4, !tbaa !3 ; 5 uses
  %i.dpg = sext i32 %.8 to i64                    ; 5 uses
  %i.dph = zext nneg i32 %i.dot to i64            ; 8 uses
  %min.iters.check2165 = icmp ult i32 %i.dot, 4
  %or.cond2349 = select i1 %min.iters.check2165, i1 true, i1 %diff.check2164
  br i1 %or.cond2349, label %.lr.ph.i.i.i.i.i.i841.preheader, label %vector.main.loop.iter.check2166

vector.main.loop.iter.check2166:                  ; preds = %iter.check2191
  %min.iters.check2167 = icmp ult i32 %i.dot, 32
  br i1 %min.iters.check2167, label %vec.epilog.ph2195, label %vector.ph2168

vector.ph2168:                                    ; preds = %vector.main.loop.iter.check2166
  %n.mod.vf2169 = and i64 %i.dph, 28
  %n.vec2170 = and i64 %i.dph, 2147483616         ; 4 uses
  %broadcast.splatinsert2171 = insertelement <8 x i32> poison, i32 %i.dpb, i64 0
  %broadcast.splat2172 = shufflevector <8 x i32> %broadcast.splatinsert2171, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert2173 = insertelement <8 x i32> poison, i32 %i.dpf, i64 0
  %broadcast.splat2174 = shufflevector <8 x i32> %broadcast.splatinsert2173, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op2609 = add <8 x i32> splat (i32 8), %broadcast.splat2174
  %invariant.op2611 = add <8 x i32> splat (i32 16), %broadcast.splat2174
  %invariant.op2613 = add <8 x i32> splat (i32 24), %broadcast.splat2174
  %invariant.op2615 = add <8 x i32> splat (i32 8), %broadcast.splat2172
  %invariant.op2617 = add <8 x i32> splat (i32 16), %broadcast.splat2172
  %invariant.op2619 = add <8 x i32> splat (i32 24), %broadcast.splat2172
  br label %vector.body2175

vector.body2175:                                  ; preds = %vector.body2175, %vector.ph2168
  %index2176 = phi i64 [ 0, %vector.ph2168 ], [ %index.next2185, %vector.body2175 ] ; 2 uses
  %vec.ind2177 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2168 ], [ %vec.ind.next2186, %vector.body2175 ] ; 5 uses
  %vec.ind2178 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2168 ], [ %vec.ind.next2187, %vector.body2175 ] ; 5 uses
  %i.dpi = add nsw i64 %index2176, %i.dpg         ; 2 uses
  %i.dpj = getelementptr inbounds [4 x i8], ptr %i.div, i64 %i.dpi ; 4 uses
  %i.dpk = add <8 x i32> %broadcast.splat2174, %vec.ind2177
  %.reass2610 = add <8 x i32> %vec.ind2177, %invariant.op2609
  %.reass2612 = add <8 x i32> %vec.ind2177, %invariant.op2611
  %.reass2614 = add <8 x i32> %vec.ind2177, %invariant.op2613
  %i.dpl = getelementptr inbounds nuw i8, ptr %i.dpj, i64 32
  %i.dpm = getelementptr inbounds nuw i8, ptr %i.dpj, i64 64
  %i.dpn = getelementptr inbounds nuw i8, ptr %i.dpj, i64 96
  store <8 x i32> %i.dpk, ptr %i.dpj, align 4, !tbaa !3
  store <8 x i32> %.reass2610, ptr %i.dpl, align 4, !tbaa !3
  store <8 x i32> %.reass2612, ptr %i.dpm, align 4, !tbaa !3
  store <8 x i32> %.reass2614, ptr %i.dpn, align 4, !tbaa !3
  %i.dpo = getelementptr inbounds [4 x i8], ptr %i.dil, i64 %i.dpi ; 4 uses
  %i.dpp = add <8 x i32> %broadcast.splat2172, %vec.ind2178
  %.reass2616 = add <8 x i32> %vec.ind2178, %invariant.op2615
  %.reass2618 = add <8 x i32> %vec.ind2178, %invariant.op2617
  %.reass2620 = add <8 x i32> %vec.ind2178, %invariant.op2619
  %i.dpq = getelementptr inbounds nuw i8, ptr %i.dpo, i64 32
  %i.dpr = getelementptr inbounds nuw i8, ptr %i.dpo, i64 64
  %i.dps = getelementptr inbounds nuw i8, ptr %i.dpo, i64 96
  store <8 x i32> %i.dpp, ptr %i.dpo, align 4, !tbaa !3
  store <8 x i32> %.reass2616, ptr %i.dpq, align 4, !tbaa !3
  store <8 x i32> %.reass2618, ptr %i.dpr, align 4, !tbaa !3
  store <8 x i32> %.reass2620, ptr %i.dps, align 4, !tbaa !3
  %index.next2185 = add nuw i64 %index2176, 32    ; 2 uses
  %vec.ind.next2186 = add <8 x i32> %vec.ind2177, splat (i32 32)
  %vec.ind.next2187 = add <8 x i32> %vec.ind2178, splat (i32 32)
  %i.dpt = icmp eq i64 %index.next2185, %n.vec2170
  br i1 %i.dpt, label %middle.block2188, label %vector.body2175, !llvm.loop !1070

middle.block2188:                                 ; preds = %vector.body2175
  %cmp.n2189 = icmp eq i64 %n.vec2170, %i.dph
  br i1 %cmp.n2189, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i, label %vec.epilog.iter.check2193

vec.epilog.iter.check2193:                        ; preds = %middle.block2188
  %min.epilog.iters.check2194 = icmp eq i64 %n.mod.vf2169, 0
  br i1 %min.epilog.iters.check2194, label %.lr.ph.i.i.i.i.i.i841.preheader, label %vec.epilog.ph2195, !prof !472

vec.epilog.ph2195:                                ; preds = %vector.main.loop.iter.check2166, %vec.epilog.iter.check2193
  %vec.epilog.resume.val2190 = phi i64 [ %n.vec2170, %vec.epilog.iter.check2193 ], [ 0, %vector.main.loop.iter.check2166 ] ; 2 uses
  %n.vec2197 = and i64 %i.dph, 2147483644         ; 3 uses
  %broadcast.splatinsert2198 = insertelement <4 x i32> poison, i32 %i.dpb, i64 0
  %broadcast.splat2199 = shufflevector <4 x i32> %broadcast.splatinsert2198, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2200 = insertelement <4 x i32> poison, i32 %i.dpf, i64 0
  %broadcast.splat2201 = shufflevector <4 x i32> %broadcast.splatinsert2200, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.dpu = trunc nuw nsw i64 %vec.epilog.resume.val2190 to i32
  %broadcast.splatinsert2202 = insertelement <4 x i32> poison, i32 %i.dpu, i64 0
  %broadcast.splat2203 = shufflevector <4 x i32> %broadcast.splatinsert2202, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction2204 = or disjoint <4 x i32> %broadcast.splat2203, <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  br label %vec.epilog.vector.body2205

vec.epilog.vector.body2205:                       ; preds = %vec.epilog.vector.body2205, %vec.epilog.ph2195
  %index2206 = phi i64 [ %vec.epilog.resume.val2190, %vec.epilog.ph2195 ], [ %index.next2209, %vec.epilog.vector.body2205 ] ; 2 uses
  %vec.ind2207 = phi <4 x i32> [ %induction2204, %vec.epilog.ph2195 ], [ %vec.ind.next2210, %vec.epilog.vector.body2205 ] ; 2 uses
  %vec.ind2208 = phi <4 x i32> [ %induction2204, %vec.epilog.ph2195 ], [ %vec.ind.next2211, %vec.epilog.vector.body2205 ] ; 2 uses
  %i.dpv = add nsw i64 %index2206, %i.dpg         ; 2 uses
  %i.dpw = getelementptr inbounds [4 x i8], ptr %i.div, i64 %i.dpv
  %i.dpx = add <4 x i32> %broadcast.splat2201, %vec.ind2207
  store <4 x i32> %i.dpx, ptr %i.dpw, align 4, !tbaa !3
  %i.dpy = getelementptr inbounds [4 x i8], ptr %i.dil, i64 %i.dpv
  %i.dpz = add <4 x i32> %broadcast.splat2199, %vec.ind2208
  store <4 x i32> %i.dpz, ptr %i.dpy, align 4, !tbaa !3
  %index.next2209 = add nuw i64 %index2206, 4     ; 2 uses
  %vec.ind.next2210 = add <4 x i32> %vec.ind2207, splat (i32 4)
  %vec.ind.next2211 = add <4 x i32> %vec.ind2208, splat (i32 4)
  %i.dqa = icmp eq i64 %index.next2209, %n.vec2197
  br i1 %i.dqa, label %vec.epilog.middle.block2212, label %vec.epilog.vector.body2205, !llvm.loop !1071

vec.epilog.middle.block2212:                      ; preds = %vec.epilog.vector.body2205
  %cmp.n2213 = icmp eq i64 %n.vec2197, %i.dph
  br i1 %cmp.n2213, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i841.preheader

.lr.ph.i.i.i.i.i.i841.preheader:                  ; preds = %iter.check2191, %vec.epilog.iter.check2193, %vec.epilog.middle.block2212
  %indvars.iv1430.ph = phi i64 [ 0, %iter.check2191 ], [ %n.vec2170, %vec.epilog.iter.check2193 ], [ %n.vec2197, %vec.epilog.middle.block2212 ] ; 6 uses
  %xtraiter2471 = and i64 %i.dph, 1
  %lcmp.mod2472.not = icmp eq i64 %xtraiter2471, 0
  br i1 %lcmp.mod2472.not, label %.lr.ph.i.i.i.i.i.i841.prol.loopexit, label %.lr.ph.i.i.i.i.i.i841.prol

.lr.ph.i.i.i.i.i.i841.prol:                       ; preds = %.lr.ph.i.i.i.i.i.i841.preheader
  %i.dqb = add nsw i64 %indvars.iv1430.ph, %i.dpg ; 2 uses
  %i.dqc = getelementptr inbounds [4 x i8], ptr %i.div, i64 %i.dqb
  %i.dqd = trunc nuw nsw i64 %indvars.iv1430.ph to i32
  %i.dqe = add i32 %i.dpf, %i.dqd
  store i32 %i.dqe, ptr %i.dqc, align 4, !tbaa !3
  %i.dqf = getelementptr inbounds [4 x i8], ptr %i.dil, i64 %i.dqb
  %i.dqg = trunc nuw nsw i64 %indvars.iv1430.ph to i32
  %i.dqh = add i32 %i.dpb, %i.dqg
  store i32 %i.dqh, ptr %i.dqf, align 4, !tbaa !3
  %indvars.iv.next1431.prol = or disjoint i64 %indvars.iv1430.ph, 1
  br label %.lr.ph.i.i.i.i.i.i841.prol.loopexit

.lr.ph.i.i.i.i.i.i841.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i.i.i841.prol, %.lr.ph.i.i.i.i.i.i841.preheader
  %indvars.iv1430.unr = phi i64 [ %indvars.iv1430.ph, %.lr.ph.i.i.i.i.i.i841.preheader ], [ %indvars.iv.next1431.prol, %.lr.ph.i.i.i.i.i.i841.prol ]
  %i.dqi = add nsw i64 %i.dph, -1
  %i.dqj = icmp eq i64 %indvars.iv1430.ph, %i.dqi
  br i1 %i.dqj, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i841

.lr.ph.i.i.i.i.i.i841:                            ; preds = %.lr.ph.i.i.i.i.i.i841.prol.loopexit, %.lr.ph.i.i.i.i.i.i841
  %indvars.iv1430 = phi i64 [ %indvars.iv.next1431.1, %.lr.ph.i.i.i.i.i.i841 ], [ %indvars.iv1430.unr, %.lr.ph.i.i.i.i.i.i841.prol.loopexit ] ; 5 uses
  %i.dqk = add nsw i64 %indvars.iv1430, %i.dpg    ; 2 uses
  %i.dql = getelementptr inbounds [4 x i8], ptr %i.div, i64 %i.dqk
  %i.dqm = trunc i64 %indvars.iv1430 to i32
  %i.dqn = add i32 %i.dpf, %i.dqm
  store i32 %i.dqn, ptr %i.dql, align 4, !tbaa !3
  %i.dqo = getelementptr inbounds [4 x i8], ptr %i.dil, i64 %i.dqk
  %i.dqp = trunc i64 %indvars.iv1430 to i32
  %i.dqq = add i32 %i.dpb, %i.dqp
  store i32 %i.dqq, ptr %i.dqo, align 4, !tbaa !3
  %indvars.iv.next1431 = add nuw nsw i64 %indvars.iv1430, 1 ; 3 uses
  %i.dqr = add nsw i64 %indvars.iv.next1431, %i.dpg ; 2 uses
  %i.dqs = getelementptr inbounds [4 x i8], ptr %i.div, i64 %i.dqr
  %i.dqt = trunc i64 %indvars.iv.next1431 to i32
  %i.dqu = add i32 %i.dpf, %i.dqt
  store i32 %i.dqu, ptr %i.dqs, align 4, !tbaa !3
  %i.dqv = getelementptr inbounds [4 x i8], ptr %i.dil, i64 %i.dqr
  %i.dqw = trunc i64 %indvars.iv.next1431 to i32
  %i.dqx = add i32 %i.dpb, %i.dqw
  store i32 %i.dqx, ptr %i.dqv, align 4, !tbaa !3
  %indvars.iv.next1431.1 = add nuw nsw i64 %indvars.iv1430, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %indvars.iv.next1431.1, %i.dph
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i841, !llvm.loop !1072

_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i841.prol.loopexit, %.lr.ph.i.i.i.i.i.i841, %middle.block2188, %vec.epilog.middle.block2212, %bb.xh
  %i.dqy = add nsw i32 %i.dot, %.8
  %i.dqz = add nsw i64 %.011.i.i.i.i.i839, -1
  %i.dra = and i64 %i.dqz, %.011.i.i.i.i.i839     ; 2 uses
  %.not10.i.i.i.i.i840 = icmp eq i64 %i.dra, 0
  br i1 %.not10.i.i.i.i.i840, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit, label %bb.xh, !llvm.loop !1073

bb.xi:                                            ; preds = %bb.xf
  %.not32.i.i.i.i820 = icmp eq i32 %i.dne, %i.dnj
  br i1 %.not32.i.i.i.i820, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUlimE_clEim.exit45.i.i.i.i, label %bb.xj

bb.xj:                                            ; preds = %bb.xi
  %i.drb = sdiv i32 %i.dne, 64                    ; 2 uses
  %i.drc = sub nsw i32 %i.dnj, %i.dne             ; 2 uses
  %i.drd = zext nneg i32 %i.drc to i64
  %notmask.i.i35.i.i.i.i821 = shl nsw i64 -1, %i.drd
  %i.dre = xor i64 %notmask.i.i35.i.i.i.i821, -1
  %i.drf = sub nsw i32 64, %i.drc
  %i.drg = zext nneg i32 %i.drf to i64
  %i.drh = shl i64 %i.dre, %i.drg
  %i.dri = sext i32 %i.drb to i64
  %i.drj = getelementptr inbounds [8 x i8], ptr %i.dnc, i64 %i.dri
  %i.drk = load i64, ptr %i.drj, align 8, !tbaa !145
  %i.drl = and i64 %i.drk, %i.drh                 ; 2 uses
  %.not.i36.i.i.i.i822 = icmp eq i64 %i.drl, 0
  br i1 %.not.i36.i.i.i.i822, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUlimE_clEim.exit45.i.i.i.i, label %.preheader.i37.i.i.i.i823

.preheader.i37.i.i.i.i823:                        ; preds = %bb.xj
  %i.drm = shl nsw i32 %i.drb, 6
  %i.drn = load ptr, ptr %i.p, align 8, !tbaa !310 ; 2 uses
  %i.dro = load ptr, ptr %i.n, align 8, !tbaa !342
  %i.drp = sext i32 %i.drm to i64
  %i.drq = getelementptr inbounds nuw i8, ptr %i.drn, i64 120
  %i.drr = load ptr, ptr %i.drq, align 8, !tbaa !308
  %i.drs = getelementptr inbounds nuw i8, ptr %i.drn, i64 104
  %i.drt = load ptr, ptr %i.drs, align 8, !tbaa !306
  %i.dru = load ptr, ptr %i.q, align 8, !tbaa !310
  %i.drv = load ptr, ptr %i.o, align 8, !tbaa !342
  %i.drw = getelementptr inbounds nuw i8, ptr %i.dru, i64 104
  %i.drx = load ptr, ptr %i.drw, align 8, !tbaa !306
  %i.dry = sub i64 %i.diw, %i.dim
  %diff.check = icmp ugt i64 %i.dry, -128
  br label %bb.xk

bb.xk:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i, %.preheader.i37.i.i.i.i823
  %.0 = phi i32 [ 0, %.preheader.i37.i.i.i.i823 ], [ %i.duk, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i ] ; 3 uses
  %.011.i39.i.i.i.i825 = phi i64 [ %i.drl, %.preheader.i37.i.i.i.i823 ], [ %i.dum, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i ] ; 3 uses
  %i.drz = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i39.i.i.i.i825, i1 true)
  %i.dsa = or disjoint i64 %i.drz, %i.drp         ; 4 uses
  %i.dsb = getelementptr inbounds [4 x i8], ptr %i.dro, i64 %i.dsa ; 2 uses
  %i.dsc = load i32, ptr %i.dsb, align 4, !tbaa !3
  %i.dsd = sext i32 %i.dsc to i64
  %i.dse = getelementptr inbounds [4 x i8], ptr %i.drr, i64 %i.dsd
  %i.dsf = load i32, ptr %i.dse, align 4, !tbaa !3 ; 6 uses
  %i.dsg = getelementptr inbounds [4 x i8], ptr %i.dhq, i64 %i.dsa
  store i32 %.0, ptr %i.dsg, align 4, !tbaa !3
  %i.dsh = getelementptr inbounds [4 x i8], ptr %i.dib, i64 %i.dsa
  store i32 %i.dsf, ptr %i.dsh, align 4, !tbaa !3
  %i.dsi = icmp sgt i32 %i.dsf, 0
  br i1 %i.dsi, label %iter.check1985, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i

iter.check1985:                                   ; preds = %bb.xk
  %i.dsj = getelementptr inbounds [4 x i8], ptr %i.drv, i64 %i.dsa
  %i.dsk = load i32, ptr %i.dsj, align 4, !tbaa !3
  %i.dsl = sext i32 %i.dsk to i64
  %i.dsm = getelementptr inbounds [4 x i8], ptr %i.drx, i64 %i.dsl
  %i.dsn = load i32, ptr %i.dsm, align 4, !tbaa !3 ; 5 uses
  %i.dso = load i32, ptr %i.dsb, align 4, !tbaa !3
  %i.dsp = sext i32 %i.dso to i64
  %i.dsq = getelementptr inbounds [4 x i8], ptr %i.drt, i64 %i.dsp
  %i.dsr = load i32, ptr %i.dsq, align 4, !tbaa !3 ; 5 uses
  %i.dss = sext i32 %.0 to i64                    ; 5 uses
  %i.dst = zext nneg i32 %i.dsf to i64            ; 8 uses
  %min.iters.check1966 = icmp ult i32 %i.dsf, 4
  %or.cond2350 = select i1 %min.iters.check1966, i1 true, i1 %diff.check
  br i1 %or.cond2350, label %.lr.ph.i.i42.i.i.i.i.preheader, label %vector.main.loop.iter.check1967

vector.main.loop.iter.check1967:                  ; preds = %iter.check1985
  %min.iters.check1968 = icmp ult i32 %i.dsf, 32
  br i1 %min.iters.check1968, label %vec.epilog.ph1989, label %vector.ph1969

vector.ph1969:                                    ; preds = %vector.main.loop.iter.check1967
  %n.mod.vf1970 = and i64 %i.dst, 28
  %n.vec1971 = and i64 %i.dst, 2147483616         ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.dsn, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1972 = insertelement <8 x i32> poison, i32 %i.dsr, i64 0
  %broadcast.splat1973 = shufflevector <8 x i32> %broadcast.splatinsert1972, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op = add <8 x i32> splat (i32 8), %broadcast.splat1973
  %invariant.op2563 = add <8 x i32> splat (i32 16), %broadcast.splat1973
  %invariant.op2565 = add <8 x i32> splat (i32 24), %broadcast.splat1973
  %invariant.op2567 = add <8 x i32> splat (i32 8), %broadcast.splat
  %invariant.op2569 = add <8 x i32> splat (i32 16), %broadcast.splat
  %invariant.op2571 = add <8 x i32> splat (i32 24), %broadcast.splat
  br label %vector.body1974

vector.body1974:                                  ; preds = %vector.body1974, %vector.ph1969
  %index1975 = phi i64 [ 0, %vector.ph1969 ], [ %index.next1980, %vector.body1974 ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph1969 ], [ %vec.ind.next, %vector.body1974 ] ; 5 uses
  %vec.ind1976 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph1969 ], [ %vec.ind.next1981, %vector.body1974 ] ; 5 uses
  %i.dsu = add nsw i64 %index1975, %i.dss         ; 2 uses
  %i.dsv = getelementptr inbounds [4 x i8], ptr %i.div, i64 %i.dsu ; 4 uses
  %i.dsw = add <8 x i32> %broadcast.splat1973, %vec.ind
  %.reass = add <8 x i32> %vec.ind, %invariant.op
  %.reass2564 = add <8 x i32> %vec.ind, %invariant.op2563
  %.reass2566 = add <8 x i32> %vec.ind, %invariant.op2565
  %i.dsx = getelementptr inbounds nuw i8, ptr %i.dsv, i64 32
  %i.dsy = getelementptr inbounds nuw i8, ptr %i.dsv, i64 64
  %i.dsz = getelementptr inbounds nuw i8, ptr %i.dsv, i64 96
  store <8 x i32> %i.dsw, ptr %i.dsv, align 4, !tbaa !3
  store <8 x i32> %.reass, ptr %i.dsx, align 4, !tbaa !3
  store <8 x i32> %.reass2564, ptr %i.dsy, align 4, !tbaa !3
  store <8 x i32> %.reass2566, ptr %i.dsz, align 4, !tbaa !3
  %i.dta = getelementptr inbounds [4 x i8], ptr %i.dil, i64 %i.dsu ; 4 uses
  %i.dtb = add <8 x i32> %broadcast.splat, %vec.ind1976
  %.reass2568 = add <8 x i32> %vec.ind1976, %invariant.op2567
  %.reass2570 = add <8 x i32> %vec.ind1976, %invariant.op2569
  %.reass2572 = add <8 x i32> %vec.ind1976, %invariant.op2571
  %i.dtc = getelementptr inbounds nuw i8, ptr %i.dta, i64 32
  %i.dtd = getelementptr inbounds nuw i8, ptr %i.dta, i64 64
  %i.dte = getelementptr inbounds nuw i8, ptr %i.dta, i64 96
  store <8 x i32> %i.dtb, ptr %i.dta, align 4, !tbaa !3
  store <8 x i32> %.reass2568, ptr %i.dtc, align 4, !tbaa !3
  store <8 x i32> %.reass2570, ptr %i.dtd, align 4, !tbaa !3
  store <8 x i32> %.reass2572, ptr %i.dte, align 4, !tbaa !3
  %index.next1980 = add nuw i64 %index1975, 32    ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %vec.ind.next1981 = add <8 x i32> %vec.ind1976, splat (i32 32)
  %i.dtf = icmp eq i64 %index.next1980, %n.vec1971
  br i1 %i.dtf, label %middle.block1982, label %vector.body1974, !llvm.loop !1074

middle.block1982:                                 ; preds = %vector.body1974
  %cmp.n1983 = icmp eq i64 %n.vec1971, %i.dst
  br i1 %cmp.n1983, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i, label %vec.epilog.iter.check1987

vec.epilog.iter.check1987:                        ; preds = %middle.block1982
  %min.epilog.iters.check1988 = icmp eq i64 %n.mod.vf1970, 0
  br i1 %min.epilog.iters.check1988, label %.lr.ph.i.i42.i.i.i.i.preheader, label %vec.epilog.ph1989, !prof !472

vec.epilog.ph1989:                                ; preds = %vector.main.loop.iter.check1967, %vec.epilog.iter.check1987
  %vec.epilog.resume.val1984 = phi i64 [ %n.vec1971, %vec.epilog.iter.check1987 ], [ 0, %vector.main.loop.iter.check1967 ] ; 2 uses
  %n.vec1991 = and i64 %i.dst, 2147483644         ; 3 uses
  %broadcast.splatinsert1992 = insertelement <4 x i32> poison, i32 %i.dsn, i64 0
  %broadcast.splat1993 = shufflevector <4 x i32> %broadcast.splatinsert1992, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1994 = insertelement <4 x i32> poison, i32 %i.dsr, i64 0
  %broadcast.splat1995 = shufflevector <4 x i32> %broadcast.splatinsert1994, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.dtg = trunc nuw nsw i64 %vec.epilog.resume.val1984 to i32
  %broadcast.splatinsert1996 = insertelement <4 x i32> poison, i32 %i.dtg, i64 0
  %broadcast.splat1997 = shufflevector <4 x i32> %broadcast.splatinsert1996, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat1997, <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  br label %vec.epilog.vector.body1998

vec.epilog.vector.body1998:                       ; preds = %vec.epilog.vector.body1998, %vec.epilog.ph1989
  %index1999 = phi i64 [ %vec.epilog.resume.val1984, %vec.epilog.ph1989 ], [ %index.next2002, %vec.epilog.vector.body1998 ] ; 2 uses
  %vec.ind2000 = phi <4 x i32> [ %induction, %vec.epilog.ph1989 ], [ %vec.ind.next2003, %vec.epilog.vector.body1998 ] ; 2 uses
  %vec.ind2001 = phi <4 x i32> [ %induction, %vec.epilog.ph1989 ], [ %vec.ind.next2004, %vec.epilog.vector.body1998 ] ; 2 uses
  %i.dth = add nsw i64 %index1999, %i.dss         ; 2 uses
  %i.dti = getelementptr inbounds [4 x i8], ptr %i.div, i64 %i.dth
  %i.dtj = add <4 x i32> %broadcast.splat1995, %vec.ind2000
  store <4 x i32> %i.dtj, ptr %i.dti, align 4, !tbaa !3
  %i.dtk = getelementptr inbounds [4 x i8], ptr %i.dil, i64 %i.dth
  %i.dtl = add <4 x i32> %broadcast.splat1993, %vec.ind2001
  store <4 x i32> %i.dtl, ptr %i.dtk, align 4, !tbaa !3
  %index.next2002 = add nuw i64 %index1999, 4     ; 2 uses
  %vec.ind.next2003 = add <4 x i32> %vec.ind2000, splat (i32 4)
  %vec.ind.next2004 = add <4 x i32> %vec.ind2001, splat (i32 4)
  %i.dtm = icmp eq i64 %index.next2002, %n.vec1991
  br i1 %i.dtm, label %vec.epilog.middle.block2005, label %vec.epilog.vector.body1998, !llvm.loop !1075

vec.epilog.middle.block2005:                      ; preds = %vec.epilog.vector.body1998
  %cmp.n2006 = icmp eq i64 %n.vec1991, %i.dst
  br i1 %cmp.n2006, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i, label %.lr.ph.i.i42.i.i.i.i.preheader

.lr.ph.i.i42.i.i.i.i.preheader:                   ; preds = %iter.check1985, %vec.epilog.iter.check1987, %vec.epilog.middle.block2005
  %indvars.iv.ph = phi i64 [ 0, %iter.check1985 ], [ %n.vec1971, %vec.epilog.iter.check1987 ], [ %n.vec1991, %vec.epilog.middle.block2005 ] ; 6 uses
  %xtraiter = and i64 %i.dst, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i42.i.i.i.i.prol.loopexit, label %.lr.ph.i.i42.i.i.i.i.prol

.lr.ph.i.i42.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i42.i.i.i.i.preheader
  %i.dtn = add nsw i64 %indvars.iv.ph, %i.dss     ; 2 uses
  %i.dto = getelementptr inbounds [4 x i8], ptr %i.div, i64 %i.dtn
  %i.dtp = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.dtq = add i32 %i.dsr, %i.dtp
  store i32 %i.dtq, ptr %i.dto, align 4, !tbaa !3
  %i.dtr = getelementptr inbounds [4 x i8], ptr %i.dil, i64 %i.dtn
  %i.dts = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.dtt = add i32 %i.dsn, %i.dts
  store i32 %i.dtt, ptr %i.dtr, align 4, !tbaa !3
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.i.i42.i.i.i.i.prol.loopexit

.lr.ph.i.i42.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i42.i.i.i.i.prol, %.lr.ph.i.i42.i.i.i.i.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.i.i42.i.i.i.i.preheader ], [ %indvars.iv.next.prol, %.lr.ph.i.i42.i.i.i.i.prol ]
  %i.dtu = add nsw i64 %i.dst, -1
  %i.dtv = icmp eq i64 %indvars.iv.ph, %i.dtu
  br i1 %i.dtv, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i, label %.lr.ph.i.i42.i.i.i.i

.lr.ph.i.i42.i.i.i.i:                             ; preds = %.lr.ph.i.i42.i.i.i.i.prol.loopexit, %.lr.ph.i.i42.i.i.i.i
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.i.i42.i.i.i.i ], [ %indvars.iv.unr, %.lr.ph.i.i42.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.dtw = add nsw i64 %indvars.iv, %i.dss        ; 2 uses
  %i.dtx = getelementptr inbounds [4 x i8], ptr %i.div, i64 %i.dtw
  %i.dty = trunc i64 %indvars.iv to i32
  %i.dtz = add i32 %i.dsr, %i.dty
  store i32 %i.dtz, ptr %i.dtx, align 4, !tbaa !3
  %i.dua = getelementptr inbounds [4 x i8], ptr %i.dil, i64 %i.dtw
  %i.dub = trunc i64 %indvars.iv to i32
  %i.duc = add i32 %i.dsn, %i.dub
  store i32 %i.duc, ptr %i.dua, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.dud = add nsw i64 %indvars.iv.next, %i.dss   ; 2 uses
  %i.due = getelementptr inbounds [4 x i8], ptr %i.div, i64 %i.dud
  %i.duf = trunc i64 %indvars.iv.next to i32
  %i.dug = add i32 %i.dsr, %i.duf
  store i32 %i.dug, ptr %i.due, align 4, !tbaa !3
  %i.duh = getelementptr inbounds [4 x i8], ptr %i.dil, i64 %i.dud
  %i.dui = trunc i64 %indvars.iv.next to i32
  %i.duj = add i32 %i.dsn, %i.dui
  store i32 %i.duj, ptr %i.duh, align 4, !tbaa !3
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.i.i44.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.1, %i.dst
  br i1 %exitcond.not.i.i44.i.i.i.i.1, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i, label %.lr.ph.i.i42.i.i.i.i, !llvm.loop !1076

_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i: ; preds = %.lr.ph.i.i42.i.i.i.i.prol.loopexit, %.lr.ph.i.i42.i.i.i.i, %middle.block1982, %vec.epilog.middle.block2005, %bb.xk
  %i.duk = add nsw i32 %i.dsf, %.0                ; 2 uses
  %i.dul = add i64 %.011.i39.i.i.i.i825, -1
  %i.dum = and i64 %i.dul, %.011.i39.i.i.i.i825   ; 2 uses
  %.not10.i41.i.i.i.i = icmp eq i64 %i.dum, 0
  br i1 %.not10.i41.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUlimE_clEim.exit45.i.i.i.i, label %bb.xk, !llvm.loop !1073

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUlimE_clEim.exit45.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i, %bb.xj, %bb.xi
  %.1 = phi i32 [ 0, %bb.xi ], [ 0, %bb.xj ], [ %i.duk, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i ] ; 2 uses
  %i.dun = add nsw i32 %i.dnj, 64                 ; 2 uses
  %.not3365.i.i.i.i = icmp sgt i32 %i.dun, %i.dnk
  br i1 %.not3365.i.i.i.i, label %._crit_edge.i.i.i.i828, label %.lr.ph.i.i.i.i826.preheader

.lr.ph.i.i.i.i826.preheader:                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUlimE_clEim.exit45.i.i.i.i
  %i.duo = load ptr, ptr %i.p, align 8            ; 2 uses
  %i.dup = load ptr, ptr %i.n, align 8            ; 2 uses
  %i.duq = getelementptr inbounds nuw i8, ptr %i.duo, i64 120 ; 2 uses
  %i.dur = getelementptr inbounds nuw i8, ptr %i.duo, i64 104 ; 2 uses
  %i.dus = load ptr, ptr %i.q, align 8
  %i.dut = load ptr, ptr %i.o, align 8            ; 2 uses
  %i.duu = getelementptr inbounds nuw i8, ptr %i.dus, i64 104 ; 2 uses
  %i.duv = sub i64 %i.dim, %i.diw                 ; 2 uses
  %124 = add i64 %i.duv, -1
  %diff.check2060 = icmp ult i64 %124, 127
  %125 = add i64 %i.duv, -1
  %diff.check2008 = icmp ult i64 %125, 127
  br label %.lr.ph.i.i.i.i826

._crit_edge.i.i.i.i828:                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUlimE_clEim.exit45.i.i.i.i
  %.4 = phi i32 [ %.1, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUlimE_clEim.exit45.i.i.i.i ], [ %.3, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ]
  %.not34.i.i.i.i829 = icmp eq i32 %i.dng, %i.dnk
  br i1 %.not34.i.i.i.i829, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit, label %bb.xo

.lr.ph.i.i.i.i826:                                ; preds = %.lr.ph.i.i.i.i826.preheader, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  %.2 = phi i32 [ %.3, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %.1, %.lr.ph.i.i.i.i826.preheader ] ; 4 uses
  %i.duw = phi i32 [ %i.eao, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %i.dun, %.lr.ph.i.i.i.i826.preheader ] ; 2 uses
  %.066.i.i.i.i = phi i32 [ %i.duw, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %i.dnj, %.lr.ph.i.i.i.i826.preheader ] ; 2 uses
  %i.dux = sdiv i32 %.066.i.i.i.i, 64             ; 3 uses
  %i.duy = sext i32 %i.dux to i64
  %i.duz = getelementptr inbounds [8 x i8], ptr %i.dnc, i64 %i.duy
  %i.dva = load i64, ptr %i.duz, align 8, !tbaa !145 ; 2 uses
  switch i64 %i.dva, label %.lr.ph.i.i.i.i.i833 [
    i64 -1, label %bb.xl
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  ]

.lr.ph.i.i.i.i.i833:                              ; preds = %.lr.ph.i.i.i.i826
  %i.dvb = shl nsw i32 %i.dux, 6
  %i.dvc = sext i32 %i.dvb to i64
  %i.dvd = load ptr, ptr %i.duq, align 8, !tbaa !308
  %i.dve = load ptr, ptr %i.dur, align 8, !tbaa !306
  %i.dvf = load ptr, ptr %i.duu, align 8, !tbaa !306
  br label %bb.xn

bb.xl:                                            ; preds = %.lr.ph.i.i.i.i826
  %i.dvg = shl nsw i32 %i.dux, 6                  ; 2 uses
  %i.dvh = add i32 %i.dvg, 64
  %i.dvi = sext i32 %i.dvh to i64
  %.0.off.i.i.i.i831 = add i32 %.066.i.i.i.i, 127
  %.not26.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i831, 64
  br i1 %.not26.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %.lr.ph25.i.i.i.i.i

.lr.ph25.i.i.i.i.i:                               ; preds = %bb.xl
  %i.dvj = sext i32 %i.dvg to i64
  %i.dvk = load ptr, ptr %i.duq, align 8, !tbaa !308
  %i.dvl = load ptr, ptr %i.dur, align 8, !tbaa !306
  %i.dvm = load ptr, ptr %i.duu, align 8, !tbaa !306
  br label %bb.xm

bb.xm:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i, %.lr.ph25.i.i.i.i.i
  %.6 = phi i32 [ %.2, %.lr.ph25.i.i.i.i.i ], [ %i.dxx, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i ] ; 3 uses
  %.024.i.i.i.i.i = phi i64 [ %i.dvj, %.lr.ph25.i.i.i.i.i ], [ %i.dxy, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i ] ; 2 uses
  %sext.i.i.i.i.i832 = shl i64 %.024.i.i.i.i.i, 32
  %i.dvn = ashr exact i64 %sext.i.i.i.i.i832, 32  ; 4 uses
  %i.dvo = getelementptr inbounds [4 x i8], ptr %i.dup, i64 %i.dvn ; 2 uses
  %i.dvp = load i32, ptr %i.dvo, align 4, !tbaa !3
  %i.dvq = sext i32 %i.dvp to i64
  %i.dvr = getelementptr inbounds [4 x i8], ptr %i.dvk, i64 %i.dvq
  %i.dvs = load i32, ptr %i.dvr, align 4, !tbaa !3 ; 6 uses
  %i.dvt = getelementptr inbounds [4 x i8], ptr %i.dhq, i64 %i.dvn
  store i32 %.6, ptr %i.dvt, align 4, !tbaa !3
  %i.dvu = getelementptr inbounds [4 x i8], ptr %i.dib, i64 %i.dvn
  store i32 %i.dvs, ptr %i.dvu, align 4, !tbaa !3
  %i.dvv = icmp sgt i32 %i.dvs, 0
  br i1 %i.dvv, label %iter.check2087, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i

iter.check2087:                                   ; preds = %bb.xm
  %i.dvw = getelementptr inbounds [4 x i8], ptr %i.dut, i64 %i.dvn
  %i.dvx = load i32, ptr %i.dvw, align 4, !tbaa !3
  %i.dvy = sext i32 %i.dvx to i64
  %i.dvz = getelementptr inbounds [4 x i8], ptr %i.dvm, i64 %i.dvy
  %i.dwa = load i32, ptr %i.dvz, align 4, !tbaa !3 ; 5 uses
  %i.dwb = load i32, ptr %i.dvo, align 4, !tbaa !3
  %i.dwc = sext i32 %i.dwb to i64
  %i.dwd = getelementptr inbounds [4 x i8], ptr %i.dvl, i64 %i.dwc
  %i.dwe = load i32, ptr %i.dwd, align 4, !tbaa !3 ; 5 uses
  %i.dwf = sext i32 %.6 to i64                    ; 5 uses
  %i.dwg = zext nneg i32 %i.dvs to i64            ; 8 uses
  %min.iters.check2061 = icmp ult i32 %i.dvs, 4
  %or.cond2351 = select i1 %min.iters.check2061, i1 true, i1 %diff.check2060
  br i1 %or.cond2351, label %.lr.ph.i.i48.i.i.i.i.preheader, label %vector.main.loop.iter.check2062

vector.main.loop.iter.check2062:                  ; preds = %iter.check2087
  %min.iters.check2063 = icmp ult i32 %i.dvs, 32
  br i1 %min.iters.check2063, label %vec.epilog.ph2091, label %vector.ph2064

vector.ph2064:                                    ; preds = %vector.main.loop.iter.check2062
  %n.mod.vf2065 = and i64 %i.dwg, 28
  %n.vec2066 = and i64 %i.dwg, 2147483616         ; 4 uses
  %broadcast.splatinsert2067 = insertelement <8 x i32> poison, i32 %i.dwa, i64 0
  %broadcast.splat2068 = shufflevector <8 x i32> %broadcast.splatinsert2067, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert2069 = insertelement <8 x i32> poison, i32 %i.dwe, i64 0
  %broadcast.splat2070 = shufflevector <8 x i32> %broadcast.splatinsert2069, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op2573 = add <8 x i32> splat (i32 8), %broadcast.splat2070
  %invariant.op2575 = add <8 x i32> splat (i32 16), %broadcast.splat2070
  %invariant.op2577 = add <8 x i32> splat (i32 24), %broadcast.splat2070
  %invariant.op2579 = add <8 x i32> splat (i32 8), %broadcast.splat2068
  %invariant.op2581 = add <8 x i32> splat (i32 16), %broadcast.splat2068
  %invariant.op2583 = add <8 x i32> splat (i32 24), %broadcast.splat2068
  br label %vector.body2071

vector.body2071:                                  ; preds = %vector.body2071, %vector.ph2064
  %index2072 = phi i64 [ 0, %vector.ph2064 ], [ %index.next2081, %vector.body2071 ] ; 2 uses
  %vec.ind2073 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2064 ], [ %vec.ind.next2082, %vector.body2071 ] ; 5 uses
  %vec.ind2074 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2064 ], [ %vec.ind.next2083, %vector.body2071 ] ; 5 uses
  %i.dwh = add nsw i64 %index2072, %i.dwf         ; 2 uses
  %i.dwi = getelementptr inbounds [4 x i8], ptr %i.div, i64 %i.dwh ; 4 uses
  %i.dwj = add <8 x i32> %broadcast.splat2070, %vec.ind2073
  %.reass2574 = add <8 x i32> %vec.ind2073, %invariant.op2573
  %.reass2576 = add <8 x i32> %vec.ind2073, %invariant.op2575
  %.reass2578 = add <8 x i32> %vec.ind2073, %invariant.op2577
  %i.dwk = getelementptr inbounds nuw i8, ptr %i.dwi, i64 32
  %i.dwl = getelementptr inbounds nuw i8, ptr %i.dwi, i64 64
  %i.dwm = getelementptr inbounds nuw i8, ptr %i.dwi, i64 96
  store <8 x i32> %i.dwj, ptr %i.dwi, align 4, !tbaa !3
  store <8 x i32> %.reass2574, ptr %i.dwk, align 4, !tbaa !3
  store <8 x i32> %.reass2576, ptr %i.dwl, align 4, !tbaa !3
  store <8 x i32> %.reass2578, ptr %i.dwm, align 4, !tbaa !3
  %i.dwn = getelementptr inbounds [4 x i8], ptr %i.dil, i64 %i.dwh ; 4 uses
  %i.dwo = add <8 x i32> %broadcast.splat2068, %vec.ind2074
  %.reass2580 = add <8 x i32> %vec.ind2074, %invariant.op2579
  %.reass2582 = add <8 x i32> %vec.ind2074, %invariant.op2581
  %.reass2584 = add <8 x i32> %vec.ind2074, %invariant.op2583
  %i.dwp = getelementptr inbounds nuw i8, ptr %i.dwn, i64 32
  %i.dwq = getelementptr inbounds nuw i8, ptr %i.dwn, i64 64
  %i.dwr = getelementptr inbounds nuw i8, ptr %i.dwn, i64 96
  store <8 x i32> %i.dwo, ptr %i.dwn, align 4, !tbaa !3
  store <8 x i32> %.reass2580, ptr %i.dwp, align 4, !tbaa !3
  store <8 x i32> %.reass2582, ptr %i.dwq, align 4, !tbaa !3
  store <8 x i32> %.reass2584, ptr %i.dwr, align 4, !tbaa !3
  %index.next2081 = add nuw i64 %index2072, 32    ; 2 uses
  %vec.ind.next2082 = add <8 x i32> %vec.ind2073, splat (i32 32)
  %vec.ind.next2083 = add <8 x i32> %vec.ind2074, splat (i32 32)
  %i.dws = icmp eq i64 %index.next2081, %n.vec2066
  br i1 %i.dws, label %middle.block2084, label %vector.body2071, !llvm.loop !1077

middle.block2084:                                 ; preds = %vector.body2071
  %cmp.n2085 = icmp eq i64 %n.vec2066, %i.dwg
  br i1 %cmp.n2085, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i, label %vec.epilog.iter.check2089

vec.epilog.iter.check2089:                        ; preds = %middle.block2084
  %min.epilog.iters.check2090 = icmp eq i64 %n.mod.vf2065, 0
  br i1 %min.epilog.iters.check2090, label %.lr.ph.i.i48.i.i.i.i.preheader, label %vec.epilog.ph2091, !prof !472

vec.epilog.ph2091:                                ; preds = %vector.main.loop.iter.check2062, %vec.epilog.iter.check2089
  %vec.epilog.resume.val2086 = phi i64 [ %n.vec2066, %vec.epilog.iter.check2089 ], [ 0, %vector.main.loop.iter.check2062 ] ; 2 uses
  %n.vec2093 = and i64 %i.dwg, 2147483644         ; 3 uses
  %broadcast.splatinsert2094 = insertelement <4 x i32> poison, i32 %i.dwa, i64 0
  %broadcast.splat2095 = shufflevector <4 x i32> %broadcast.splatinsert2094, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2096 = insertelement <4 x i32> poison, i32 %i.dwe, i64 0
  %broadcast.splat2097 = shufflevector <4 x i32> %broadcast.splatinsert2096, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.dwt = trunc nuw nsw i64 %vec.epilog.resume.val2086 to i32
  %broadcast.splatinsert2098 = insertelement <4 x i32> poison, i32 %i.dwt, i64 0
  %broadcast.splat2099 = shufflevector <4 x i32> %broadcast.splatinsert2098, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction2100 = or disjoint <4 x i32> %broadcast.splat2099, <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  br label %vec.epilog.vector.body2101

vec.epilog.vector.body2101:                       ; preds = %vec.epilog.vector.body2101, %vec.epilog.ph2091
  %index2102 = phi i64 [ %vec.epilog.resume.val2086, %vec.epilog.ph2091 ], [ %index.next2105, %vec.epilog.vector.body2101 ] ; 2 uses
  %vec.ind2103 = phi <4 x i32> [ %induction2100, %vec.epilog.ph2091 ], [ %vec.ind.next2106, %vec.epilog.vector.body2101 ] ; 2 uses
  %vec.ind2104 = phi <4 x i32> [ %induction2100, %vec.epilog.ph2091 ], [ %vec.ind.next2107, %vec.epilog.vector.body2101 ] ; 2 uses
  %i.dwu = add nsw i64 %index2102, %i.dwf         ; 2 uses
  %i.dwv = getelementptr inbounds [4 x i8], ptr %i.div, i64 %i.dwu
  %i.dww = add <4 x i32> %broadcast.splat2097, %vec.ind2103
  store <4 x i32> %i.dww, ptr %i.dwv, align 4, !tbaa !3
  %i.dwx = getelementptr inbounds [4 x i8], ptr %i.dil, i64 %i.dwu
  %i.dwy = add <4 x i32> %broadcast.splat2095, %vec.ind2104
  store <4 x i32> %i.dwy, ptr %i.dwx, align 4, !tbaa !3
  %index.next2105 = add nuw i64 %index2102, 4     ; 2 uses
  %vec.ind.next2106 = add <4 x i32> %vec.ind2103, splat (i32 4)
  %vec.ind.next2107 = add <4 x i32> %vec.ind2104, splat (i32 4)
  %i.dwz = icmp eq i64 %index.next2105, %n.vec2093
  br i1 %i.dwz, label %vec.epilog.middle.block2108, label %vec.epilog.vector.body2101, !llvm.loop !1078

vec.epilog.middle.block2108:                      ; preds = %vec.epilog.vector.body2101
  %cmp.n2109 = icmp eq i64 %n.vec2093, %i.dwg
  br i1 %cmp.n2109, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i, label %.lr.ph.i.i48.i.i.i.i.preheader

.lr.ph.i.i48.i.i.i.i.preheader:                   ; preds = %iter.check2087, %vec.epilog.iter.check2089, %vec.epilog.middle.block2108
  %indvars.iv1421.ph = phi i64 [ 0, %iter.check2087 ], [ %n.vec2066, %vec.epilog.iter.check2089 ], [ %n.vec2093, %vec.epilog.middle.block2108 ] ; 6 uses
  %xtraiter2465 = and i64 %i.dwg, 1
  %lcmp.mod2466.not = icmp eq i64 %xtraiter2465, 0
  br i1 %lcmp.mod2466.not, label %.lr.ph.i.i48.i.i.i.i.prol.loopexit, label %.lr.ph.i.i48.i.i.i.i.prol

.lr.ph.i.i48.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i48.i.i.i.i.preheader
  %i.dxa = add nsw i64 %indvars.iv1421.ph, %i.dwf ; 2 uses
  %i.dxb = getelementptr inbounds [4 x i8], ptr %i.div, i64 %i.dxa
  %i.dxc = trunc nuw nsw i64 %indvars.iv1421.ph to i32
  %i.dxd = add i32 %i.dwe, %i.dxc
  store i32 %i.dxd, ptr %i.dxb, align 4, !tbaa !3
  %i.dxe = getelementptr inbounds [4 x i8], ptr %i.dil, i64 %i.dxa
  %i.dxf = trunc nuw nsw i64 %indvars.iv1421.ph to i32
  %i.dxg = add i32 %i.dwa, %i.dxf
  store i32 %i.dxg, ptr %i.dxe, align 4, !tbaa !3
  %indvars.iv.next1422.prol = or disjoint i64 %indvars.iv1421.ph, 1
  br label %.lr.ph.i.i48.i.i.i.i.prol.loopexit

.lr.ph.i.i48.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i48.i.i.i.i.prol, %.lr.ph.i.i48.i.i.i.i.preheader
  %indvars.iv1421.unr = phi i64 [ %indvars.iv1421.ph, %.lr.ph.i.i48.i.i.i.i.preheader ], [ %indvars.iv.next1422.prol, %.lr.ph.i.i48.i.i.i.i.prol ]
  %i.dxh = add nsw i64 %i.dwg, -1
  %i.dxi = icmp eq i64 %indvars.iv1421.ph, %i.dxh
  br i1 %i.dxi, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i, label %.lr.ph.i.i48.i.i.i.i

.lr.ph.i.i48.i.i.i.i:                             ; preds = %.lr.ph.i.i48.i.i.i.i.prol.loopexit, %.lr.ph.i.i48.i.i.i.i
  %indvars.iv1421 = phi i64 [ %indvars.iv.next1422.1, %.lr.ph.i.i48.i.i.i.i ], [ %indvars.iv1421.unr, %.lr.ph.i.i48.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.dxj = add nsw i64 %indvars.iv1421, %i.dwf    ; 2 uses
end_hunk_5
begin_hunk_6_@_ZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a
iter.check2035:                                   ; preds = %bb.xn
  %i.dyk = getelementptr inbounds [4 x i8], ptr %i.dut, i64 %i.dyb
  %i.dyl = load i32, ptr %i.dyk, align 4, !tbaa !3
  %i.dym = sext i32 %i.dyl to i64
  %i.dyn = getelementptr inbounds [4 x i8], ptr %i.dvf, i64 %i.dym
  %i.dyo = load i32, ptr %i.dyn, align 4, !tbaa !3 ; 5 uses
  %i.dyp = load i32, ptr %i.dyc, align 4, !tbaa !3
  %i.dyq = sext i32 %i.dyp to i64
  %i.dyr = getelementptr inbounds [4 x i8], ptr %i.dve, i64 %i.dyq
  %i.dys = load i32, ptr %i.dyr, align 4, !tbaa !3 ; 5 uses
  %i.dyt = sext i32 %.7 to i64                    ; 5 uses
  %i.dyu = zext nneg i32 %i.dyg to i64            ; 8 uses
  %min.iters.check2009 = icmp ult i32 %i.dyg, 4
  %or.cond2352 = select i1 %min.iters.check2009, i1 true, i1 %diff.check2008
  br i1 %or.cond2352, label %.lr.ph.i17.i.i.i.i.i.preheader, label %vector.main.loop.iter.check2010

vector.main.loop.iter.check2010:                  ; preds = %iter.check2035
  %min.iters.check2011 = icmp ult i32 %i.dyg, 32
  br i1 %min.iters.check2011, label %vec.epilog.ph2039, label %vector.ph2012

vector.ph2012:                                    ; preds = %vector.main.loop.iter.check2010
  %n.mod.vf2013 = and i64 %i.dyu, 28
  %n.vec2014 = and i64 %i.dyu, 2147483616         ; 4 uses
  %broadcast.splatinsert2015 = insertelement <8 x i32> poison, i32 %i.dyo, i64 0
  %broadcast.splat2016 = shufflevector <8 x i32> %broadcast.splatinsert2015, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert2017 = insertelement <8 x i32> poison, i32 %i.dys, i64 0
  %broadcast.splat2018 = shufflevector <8 x i32> %broadcast.splatinsert2017, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op2585 = add <8 x i32> splat (i32 8), %broadcast.splat2018
  %invariant.op2587 = add <8 x i32> splat (i32 16), %broadcast.splat2018
  %invariant.op2589 = add <8 x i32> splat (i32 24), %broadcast.splat2018
  %invariant.op2591 = add <8 x i32> splat (i32 8), %broadcast.splat2016
  %invariant.op2593 = add <8 x i32> splat (i32 16), %broadcast.splat2016
  %invariant.op2595 = add <8 x i32> splat (i32 24), %broadcast.splat2016
  br label %vector.body2019

vector.body2019:                                  ; preds = %vector.body2019, %vector.ph2012
  %index2020 = phi i64 [ 0, %vector.ph2012 ], [ %index.next2029, %vector.body2019 ] ; 2 uses
  %vec.ind2021 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2012 ], [ %vec.ind.next2030, %vector.body2019 ] ; 5 uses
  %vec.ind2022 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2012 ], [ %vec.ind.next2031, %vector.body2019 ] ; 5 uses
  %i.dyv = add nsw i64 %index2020, %i.dyt         ; 2 uses
  %i.dyw = getelementptr inbounds [4 x i8], ptr %i.div, i64 %i.dyv ; 4 uses
  %i.dyx = add <8 x i32> %broadcast.splat2018, %vec.ind2021
  %.reass2586 = add <8 x i32> %vec.ind2021, %invariant.op2585
  %.reass2588 = add <8 x i32> %vec.ind2021, %invariant.op2587
  %.reass2590 = add <8 x i32> %vec.ind2021, %invariant.op2589
  %i.dyy = getelementptr inbounds nuw i8, ptr %i.dyw, i64 32
  %i.dyz = getelementptr inbounds nuw i8, ptr %i.dyw, i64 64
  %i.dza = getelementptr inbounds nuw i8, ptr %i.dyw, i64 96
  store <8 x i32> %i.dyx, ptr %i.dyw, align 4, !tbaa !3
  store <8 x i32> %.reass2586, ptr %i.dyy, align 4, !tbaa !3
  store <8 x i32> %.reass2588, ptr %i.dyz, align 4, !tbaa !3
  store <8 x i32> %.reass2590, ptr %i.dza, align 4, !tbaa !3
  %i.dzb = getelementptr inbounds [4 x i8], ptr %i.dil, i64 %i.dyv ; 4 uses
  %i.dzc = add <8 x i32> %broadcast.splat2016, %vec.ind2022
  %.reass2592 = add <8 x i32> %vec.ind2022, %invariant.op2591
  %.reass2594 = add <8 x i32> %vec.ind2022, %invariant.op2593
  %.reass2596 = add <8 x i32> %vec.ind2022, %invariant.op2595
  %i.dzd = getelementptr inbounds nuw i8, ptr %i.dzb, i64 32
  %i.dze = getelementptr inbounds nuw i8, ptr %i.dzb, i64 64
  %i.dzf = getelementptr inbounds nuw i8, ptr %i.dzb, i64 96
  store <8 x i32> %i.dzc, ptr %i.dzb, align 4, !tbaa !3
  store <8 x i32> %.reass2592, ptr %i.dzd, align 4, !tbaa !3
  store <8 x i32> %.reass2594, ptr %i.dze, align 4, !tbaa !3
  store <8 x i32> %.reass2596, ptr %i.dzf, align 4, !tbaa !3
  %index.next2029 = add nuw i64 %index2020, 32    ; 2 uses
  %vec.ind.next2030 = add <8 x i32> %vec.ind2021, splat (i32 32)
  %vec.ind.next2031 = add <8 x i32> %vec.ind2022, splat (i32 32)
  %i.dzg = icmp eq i64 %index.next2029, %n.vec2014
  br i1 %i.dzg, label %middle.block2032, label %vector.body2019, !llvm.loop !1081

middle.block2032:                                 ; preds = %vector.body2019
  %cmp.n2033 = icmp eq i64 %n.vec2014, %i.dyu
  br i1 %cmp.n2033, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i, label %vec.epilog.iter.check2037

vec.epilog.iter.check2037:                        ; preds = %middle.block2032
  %min.epilog.iters.check2038 = icmp eq i64 %n.mod.vf2013, 0
  br i1 %min.epilog.iters.check2038, label %.lr.ph.i17.i.i.i.i.i.preheader, label %vec.epilog.ph2039, !prof !472

vec.epilog.ph2039:                                ; preds = %vector.main.loop.iter.check2010, %vec.epilog.iter.check2037
  %vec.epilog.resume.val2034 = phi i64 [ %n.vec2014, %vec.epilog.iter.check2037 ], [ 0, %vector.main.loop.iter.check2010 ] ; 2 uses
  %n.vec2041 = and i64 %i.dyu, 2147483644         ; 3 uses
  %broadcast.splatinsert2042 = insertelement <4 x i32> poison, i32 %i.dyo, i64 0
  %broadcast.splat2043 = shufflevector <4 x i32> %broadcast.splatinsert2042, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2044 = insertelement <4 x i32> poison, i32 %i.dys, i64 0
  %broadcast.splat2045 = shufflevector <4 x i32> %broadcast.splatinsert2044, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.dzh = trunc nuw nsw i64 %vec.epilog.resume.val2034 to i32
  %broadcast.splatinsert2046 = insertelement <4 x i32> poison, i32 %i.dzh, i64 0
  %broadcast.splat2047 = shufflevector <4 x i32> %broadcast.splatinsert2046, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction2048 = or disjoint <4 x i32> %broadcast.splat2047, <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  br label %vec.epilog.vector.body2049

vec.epilog.vector.body2049:                       ; preds = %vec.epilog.vector.body2049, %vec.epilog.ph2039
  %index2050 = phi i64 [ %vec.epilog.resume.val2034, %vec.epilog.ph2039 ], [ %index.next2053, %vec.epilog.vector.body2049 ] ; 2 uses
  %vec.ind2051 = phi <4 x i32> [ %induction2048, %vec.epilog.ph2039 ], [ %vec.ind.next2054, %vec.epilog.vector.body2049 ] ; 2 uses
  %vec.ind2052 = phi <4 x i32> [ %induction2048, %vec.epilog.ph2039 ], [ %vec.ind.next2055, %vec.epilog.vector.body2049 ] ; 2 uses
  %i.dzi = add nsw i64 %index2050, %i.dyt         ; 2 uses
  %i.dzj = getelementptr inbounds [4 x i8], ptr %i.div, i64 %i.dzi
  %i.dzk = add <4 x i32> %broadcast.splat2045, %vec.ind2051
  store <4 x i32> %i.dzk, ptr %i.dzj, align 4, !tbaa !3
  %i.dzl = getelementptr inbounds [4 x i8], ptr %i.dil, i64 %i.dzi
  %i.dzm = add <4 x i32> %broadcast.splat2043, %vec.ind2052
  store <4 x i32> %i.dzm, ptr %i.dzl, align 4, !tbaa !3
  %index.next2053 = add nuw i64 %index2050, 4     ; 2 uses
  %vec.ind.next2054 = add <4 x i32> %vec.ind2051, splat (i32 4)
  %vec.ind.next2055 = add <4 x i32> %vec.ind2052, splat (i32 4)
  %i.dzn = icmp eq i64 %index.next2053, %n.vec2041
  br i1 %i.dzn, label %vec.epilog.middle.block2056, label %vec.epilog.vector.body2049, !llvm.loop !1082

vec.epilog.middle.block2056:                      ; preds = %vec.epilog.vector.body2049
  %cmp.n2057 = icmp eq i64 %n.vec2041, %i.dyu
  br i1 %cmp.n2057, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.preheader

.lr.ph.i17.i.i.i.i.i.preheader:                   ; preds = %iter.check2035, %vec.epilog.iter.check2037, %vec.epilog.middle.block2056
  %indvars.iv1424.ph = phi i64 [ 0, %iter.check2035 ], [ %n.vec2014, %vec.epilog.iter.check2037 ], [ %n.vec2041, %vec.epilog.middle.block2056 ] ; 6 uses
  %xtraiter2467 = and i64 %i.dyu, 1
  %lcmp.mod2468.not = icmp eq i64 %xtraiter2467, 0
  br i1 %lcmp.mod2468.not, label %.lr.ph.i17.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i17.i.i.i.i.i.preheader
  %i.dzo = add nsw i64 %indvars.iv1424.ph, %i.dyt ; 2 uses
  %i.dzp = getelementptr inbounds [4 x i8], ptr %i.div, i64 %i.dzo
  %i.dzq = trunc nuw nsw i64 %indvars.iv1424.ph to i32
  %i.dzr = add i32 %i.dys, %i.dzq
  store i32 %i.dzr, ptr %i.dzp, align 4, !tbaa !3
  %i.dzs = getelementptr inbounds [4 x i8], ptr %i.dil, i64 %i.dzo
  %i.dzt = trunc nuw nsw i64 %indvars.iv1424.ph to i32
  %i.dzu = add i32 %i.dyo, %i.dzt
  store i32 %i.dzu, ptr %i.dzs, align 4, !tbaa !3
  %indvars.iv.next1425.prol = or disjoint i64 %indvars.iv1424.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i17.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.preheader
  %indvars.iv1424.unr = phi i64 [ %indvars.iv1424.ph, %.lr.ph.i17.i.i.i.i.i.preheader ], [ %indvars.iv.next1425.prol, %.lr.ph.i17.i.i.i.i.i.prol ]
  %i.dzv = add nsw i64 %i.dyu, -1
  %i.dzw = icmp eq i64 %indvars.iv1424.ph, %i.dzv
  br i1 %i.dzw, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i:                             ; preds = %.lr.ph.i17.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i
  %indvars.iv1424 = phi i64 [ %indvars.iv.next1425.1, %.lr.ph.i17.i.i.i.i.i ], [ %indvars.iv1424.unr, %.lr.ph.i17.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.dzx = add nsw i64 %indvars.iv1424, %i.dyt    ; 2 uses
  %i.dzy = getelementptr inbounds [4 x i8], ptr %i.div, i64 %i.dzx
  %i.dzz = trunc i64 %indvars.iv1424 to i32
  %i.eaa = add i32 %i.dys, %i.dzz
  store i32 %i.eaa, ptr %i.dzy, align 4, !tbaa !3
  %i.eab = getelementptr inbounds [4 x i8], ptr %i.dil, i64 %i.dzx
  %i.eac = trunc i64 %indvars.iv1424 to i32
  %i.ead = add i32 %i.dyo, %i.eac
  store i32 %i.ead, ptr %i.eab, align 4, !tbaa !3
  %indvars.iv.next1425 = add nuw nsw i64 %indvars.iv1424, 1 ; 3 uses
  %i.eae = add nsw i64 %indvars.iv.next1425, %i.dyt ; 2 uses
  %i.eaf = getelementptr inbounds [4 x i8], ptr %i.div, i64 %i.eae
  %i.eag = trunc i64 %indvars.iv.next1425 to i32
  %i.eah = add i32 %i.dys, %i.eag
  store i32 %i.eah, ptr %i.eaf, align 4, !tbaa !3
  %i.eai = getelementptr inbounds [4 x i8], ptr %i.dil, i64 %i.eae
  %i.eaj = trunc i64 %indvars.iv.next1425 to i32
  %i.eak = add i32 %i.dyo, %i.eaj
  store i32 %i.eak, ptr %i.eai, align 4, !tbaa !3
  %indvars.iv.next1425.1 = add nuw nsw i64 %indvars.iv1424, 2 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.1 = icmp eq i64 %indvars.iv.next1425.1, %i.dyu
  br i1 %exitcond.not.i19.i.i.i.i.i.1, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i, !llvm.loop !1083

_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i: ; preds = %.lr.ph.i17.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i, %middle.block2032, %vec.epilog.middle.block2056, %bb.xn
  %i.eal = add nsw i32 %i.dyg, %.7                ; 2 uses
  %i.eam = add i64 %.01523.i.i.i.i.i, -1
  %i.ean = and i64 %i.eam, %.01523.i.i.i.i.i      ; 2 uses
  %.not.i51.i.i.i.i = icmp eq i64 %i.ean, 0
  br i1 %.not.i51.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %bb.xn, !llvm.loop !1084

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i, %bb.xl, %.lr.ph.i.i.i.i826
  %.3 = phi i32 [ %.2, %.lr.ph.i.i.i.i826 ], [ %.2, %bb.xl ], [ %i.eal, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i ], [ %i.dxx, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i ] ; 2 uses
  %i.eao = add nsw i32 %i.duw, 64                 ; 2 uses
  %.not33.i.i.i.i827 = icmp sgt i32 %i.eao, %i.dnk
  br i1 %.not33.i.i.i.i827, label %._crit_edge.i.i.i.i828, label %.lr.ph.i.i.i.i826, !llvm.loop !1085

bb.xo:                                            ; preds = %._crit_edge.i.i.i.i828
  %i.eap = ashr i32 %i.dng, 6
  %i.eaq = and i32 %i.dng, 63
  %i.ear = zext nneg i32 %i.eaq to i64
  %notmask.i52.i.i.i.i = shl nsw i64 -1, %i.ear
  %i.eas = xor i64 %notmask.i52.i.i.i.i, -1
  %i.eat = sext i32 %i.eap to i64
  %i.eau = getelementptr inbounds [8 x i8], ptr %i.dnc, i64 %i.eat
  %i.eav = load i64, ptr %i.eau, align 8, !tbaa !145
  %i.eaw = and i64 %i.eav, %i.eas                 ; 2 uses
  %.not.i53.i.i.i.i830 = icmp eq i64 %i.eaw, 0
  br i1 %.not.i53.i.i.i.i830, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit, label %.preheader.i54.i.i.i.i

.preheader.i54.i.i.i.i:                           ; preds = %bb.xo
  %i.eax = load ptr, ptr %i.p, align 8, !tbaa !310 ; 2 uses
  %i.eay = load ptr, ptr %i.n, align 8, !tbaa !342
  %i.eaz = sext i32 %i.dnk to i64
  %i.eba = getelementptr inbounds nuw i8, ptr %i.eax, i64 120
  %i.ebb = load ptr, ptr %i.eba, align 8, !tbaa !308
  %i.ebc = getelementptr inbounds nuw i8, ptr %i.eax, i64 104
  %i.ebd = load ptr, ptr %i.ebc, align 8, !tbaa !306
  %i.ebe = load ptr, ptr %i.q, align 8, !tbaa !310
  %i.ebf = load ptr, ptr %i.o, align 8, !tbaa !342
  %i.ebg = getelementptr inbounds nuw i8, ptr %i.ebe, i64 104
  %i.ebh = load ptr, ptr %i.ebg, align 8, !tbaa !306
  %i.ebi = sub i64 %i.diw, %i.dim
  %diff.check2112 = icmp ugt i64 %i.ebi, -128
  br label %bb.xp

bb.xp:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i, %.preheader.i54.i.i.i.i
  %.5 = phi i32 [ %.4, %.preheader.i54.i.i.i.i ], [ %i.edu, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i ] ; 3 uses
  %.011.i56.i.i.i.i = phi i64 [ %i.eaw, %.preheader.i54.i.i.i.i ], [ %i.edw, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i ] ; 3 uses
  %i.ebj = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i56.i.i.i.i, i1 true)
  %i.ebk = or disjoint i64 %i.ebj, %i.eaz         ; 4 uses
  %i.ebl = getelementptr inbounds [4 x i8], ptr %i.eay, i64 %i.ebk ; 2 uses
  %i.ebm = load i32, ptr %i.ebl, align 4, !tbaa !3
  %i.ebn = sext i32 %i.ebm to i64
  %i.ebo = getelementptr inbounds [4 x i8], ptr %i.ebb, i64 %i.ebn
  %i.ebp = load i32, ptr %i.ebo, align 4, !tbaa !3 ; 6 uses
  %i.ebq = getelementptr inbounds [4 x i8], ptr %i.dhq, i64 %i.ebk
  store i32 %.5, ptr %i.ebq, align 4, !tbaa !3
  %i.ebr = getelementptr inbounds [4 x i8], ptr %i.dib, i64 %i.ebk
  store i32 %i.ebp, ptr %i.ebr, align 4, !tbaa !3
  %i.ebs = icmp sgt i32 %i.ebp, 0
  br i1 %i.ebs, label %iter.check2139, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i

iter.check2139:                                   ; preds = %bb.xp
  %i.ebt = getelementptr inbounds [4 x i8], ptr %i.ebf, i64 %i.ebk
  %i.ebu = load i32, ptr %i.ebt, align 4, !tbaa !3
  %i.ebv = sext i32 %i.ebu to i64
  %i.ebw = getelementptr inbounds [4 x i8], ptr %i.ebh, i64 %i.ebv
  %i.ebx = load i32, ptr %i.ebw, align 4, !tbaa !3 ; 5 uses
  %i.eby = load i32, ptr %i.ebl, align 4, !tbaa !3
  %i.ebz = sext i32 %i.eby to i64
  %i.eca = getelementptr inbounds [4 x i8], ptr %i.ebd, i64 %i.ebz
  %i.ecb = load i32, ptr %i.eca, align 4, !tbaa !3 ; 5 uses
  %i.ecc = sext i32 %.5 to i64                    ; 5 uses
  %i.ecd = zext nneg i32 %i.ebp to i64            ; 8 uses
  %min.iters.check2113 = icmp ult i32 %i.ebp, 4
  %or.cond2353 = select i1 %min.iters.check2113, i1 true, i1 %diff.check2112
  br i1 %or.cond2353, label %.lr.ph.i.i59.i.i.i.i.preheader, label %vector.main.loop.iter.check2114

vector.main.loop.iter.check2114:                  ; preds = %iter.check2139
  %min.iters.check2115 = icmp ult i32 %i.ebp, 32
  br i1 %min.iters.check2115, label %vec.epilog.ph2143, label %vector.ph2116

vector.ph2116:                                    ; preds = %vector.main.loop.iter.check2114
  %n.mod.vf2117 = and i64 %i.ecd, 28
  %n.vec2118 = and i64 %i.ecd, 2147483616         ; 4 uses
  %broadcast.splatinsert2119 = insertelement <8 x i32> poison, i32 %i.ebx, i64 0
  %broadcast.splat2120 = shufflevector <8 x i32> %broadcast.splatinsert2119, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert2121 = insertelement <8 x i32> poison, i32 %i.ecb, i64 0
  %broadcast.splat2122 = shufflevector <8 x i32> %broadcast.splatinsert2121, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op2597 = add <8 x i32> splat (i32 8), %broadcast.splat2122
  %invariant.op2599 = add <8 x i32> splat (i32 16), %broadcast.splat2122
  %invariant.op2601 = add <8 x i32> splat (i32 24), %broadcast.splat2122
  %invariant.op2603 = add <8 x i32> splat (i32 8), %broadcast.splat2120
  %invariant.op2605 = add <8 x i32> splat (i32 16), %broadcast.splat2120
  %invariant.op2607 = add <8 x i32> splat (i32 24), %broadcast.splat2120
  br label %vector.body2123

vector.body2123:                                  ; preds = %vector.body2123, %vector.ph2116
  %index2124 = phi i64 [ 0, %vector.ph2116 ], [ %index.next2133, %vector.body2123 ] ; 2 uses
  %vec.ind2125 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2116 ], [ %vec.ind.next2134, %vector.body2123 ] ; 5 uses
  %vec.ind2126 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2116 ], [ %vec.ind.next2135, %vector.body2123 ] ; 5 uses
  %i.ece = add nsw i64 %index2124, %i.ecc         ; 2 uses
  %i.ecf = getelementptr inbounds [4 x i8], ptr %i.div, i64 %i.ece ; 4 uses
  %i.ecg = add <8 x i32> %broadcast.splat2122, %vec.ind2125
  %.reass2598 = add <8 x i32> %vec.ind2125, %invariant.op2597
  %.reass2600 = add <8 x i32> %vec.ind2125, %invariant.op2599
  %.reass2602 = add <8 x i32> %vec.ind2125, %invariant.op2601
  %i.ech = getelementptr inbounds nuw i8, ptr %i.ecf, i64 32
  %i.eci = getelementptr inbounds nuw i8, ptr %i.ecf, i64 64
  %i.ecj = getelementptr inbounds nuw i8, ptr %i.ecf, i64 96
  store <8 x i32> %i.ecg, ptr %i.ecf, align 4, !tbaa !3
  store <8 x i32> %.reass2598, ptr %i.ech, align 4, !tbaa !3
  store <8 x i32> %.reass2600, ptr %i.eci, align 4, !tbaa !3
  store <8 x i32> %.reass2602, ptr %i.ecj, align 4, !tbaa !3
  %i.eck = getelementptr inbounds [4 x i8], ptr %i.dil, i64 %i.ece ; 4 uses
  %i.ecl = add <8 x i32> %broadcast.splat2120, %vec.ind2126
  %.reass2604 = add <8 x i32> %vec.ind2126, %invariant.op2603
  %.reass2606 = add <8 x i32> %vec.ind2126, %invariant.op2605
  %.reass2608 = add <8 x i32> %vec.ind2126, %invariant.op2607
  %i.ecm = getelementptr inbounds nuw i8, ptr %i.eck, i64 32
  %i.ecn = getelementptr inbounds nuw i8, ptr %i.eck, i64 64
  %i.eco = getelementptr inbounds nuw i8, ptr %i.eck, i64 96
  store <8 x i32> %i.ecl, ptr %i.eck, align 4, !tbaa !3
  store <8 x i32> %.reass2604, ptr %i.ecm, align 4, !tbaa !3
  store <8 x i32> %.reass2606, ptr %i.ecn, align 4, !tbaa !3
  store <8 x i32> %.reass2608, ptr %i.eco, align 4, !tbaa !3
  %index.next2133 = add nuw i64 %index2124, 32    ; 2 uses
  %vec.ind.next2134 = add <8 x i32> %vec.ind2125, splat (i32 32)
  %vec.ind.next2135 = add <8 x i32> %vec.ind2126, splat (i32 32)
  %i.ecp = icmp eq i64 %index.next2133, %n.vec2118
  br i1 %i.ecp, label %middle.block2136, label %vector.body2123, !llvm.loop !1086

middle.block2136:                                 ; preds = %vector.body2123
  %cmp.n2137 = icmp eq i64 %n.vec2118, %i.ecd
  br i1 %cmp.n2137, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i, label %vec.epilog.iter.check2141

vec.epilog.iter.check2141:                        ; preds = %middle.block2136
  %min.epilog.iters.check2142 = icmp eq i64 %n.mod.vf2117, 0
  br i1 %min.epilog.iters.check2142, label %.lr.ph.i.i59.i.i.i.i.preheader, label %vec.epilog.ph2143, !prof !472

vec.epilog.ph2143:                                ; preds = %vector.main.loop.iter.check2114, %vec.epilog.iter.check2141
  %vec.epilog.resume.val2138 = phi i64 [ %n.vec2118, %vec.epilog.iter.check2141 ], [ 0, %vector.main.loop.iter.check2114 ] ; 2 uses
  %n.vec2145 = and i64 %i.ecd, 2147483644         ; 3 uses
  %broadcast.splatinsert2146 = insertelement <4 x i32> poison, i32 %i.ebx, i64 0
  %broadcast.splat2147 = shufflevector <4 x i32> %broadcast.splatinsert2146, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2148 = insertelement <4 x i32> poison, i32 %i.ecb, i64 0
  %broadcast.splat2149 = shufflevector <4 x i32> %broadcast.splatinsert2148, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ecq = trunc nuw nsw i64 %vec.epilog.resume.val2138 to i32
  %broadcast.splatinsert2150 = insertelement <4 x i32> poison, i32 %i.ecq, i64 0
  %broadcast.splat2151 = shufflevector <4 x i32> %broadcast.splatinsert2150, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction2152 = or disjoint <4 x i32> %broadcast.splat2151, <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  br label %vec.epilog.vector.body2153

vec.epilog.vector.body2153:                       ; preds = %vec.epilog.vector.body2153, %vec.epilog.ph2143
  %index2154 = phi i64 [ %vec.epilog.resume.val2138, %vec.epilog.ph2143 ], [ %index.next2157, %vec.epilog.vector.body2153 ] ; 2 uses
  %vec.ind2155 = phi <4 x i32> [ %induction2152, %vec.epilog.ph2143 ], [ %vec.ind.next2158, %vec.epilog.vector.body2153 ] ; 2 uses
  %vec.ind2156 = phi <4 x i32> [ %induction2152, %vec.epilog.ph2143 ], [ %vec.ind.next2159, %vec.epilog.vector.body2153 ] ; 2 uses
  %i.ecr = add nsw i64 %index2154, %i.ecc         ; 2 uses
  %i.ecs = getelementptr inbounds [4 x i8], ptr %i.div, i64 %i.ecr
  %i.ect = add <4 x i32> %broadcast.splat2149, %vec.ind2155
  store <4 x i32> %i.ect, ptr %i.ecs, align 4, !tbaa !3
  %i.ecu = getelementptr inbounds [4 x i8], ptr %i.dil, i64 %i.ecr
  %i.ecv = add <4 x i32> %broadcast.splat2147, %vec.ind2156
  store <4 x i32> %i.ecv, ptr %i.ecu, align 4, !tbaa !3
  %index.next2157 = add nuw i64 %index2154, 4     ; 2 uses
  %vec.ind.next2158 = add <4 x i32> %vec.ind2155, splat (i32 4)
  %vec.ind.next2159 = add <4 x i32> %vec.ind2156, splat (i32 4)
  %i.ecw = icmp eq i64 %index.next2157, %n.vec2145
  br i1 %i.ecw, label %vec.epilog.middle.block2160, label %vec.epilog.vector.body2153, !llvm.loop !1087

vec.epilog.middle.block2160:                      ; preds = %vec.epilog.vector.body2153
  %cmp.n2161 = icmp eq i64 %n.vec2145, %i.ecd
  br i1 %cmp.n2161, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i, label %.lr.ph.i.i59.i.i.i.i.preheader

.lr.ph.i.i59.i.i.i.i.preheader:                   ; preds = %iter.check2139, %vec.epilog.iter.check2141, %vec.epilog.middle.block2160
  %indvars.iv1427.ph = phi i64 [ 0, %iter.check2139 ], [ %n.vec2118, %vec.epilog.iter.check2141 ], [ %n.vec2145, %vec.epilog.middle.block2160 ] ; 6 uses
  %xtraiter2469 = and i64 %i.ecd, 1
  %lcmp.mod2470.not = icmp eq i64 %xtraiter2469, 0
  br i1 %lcmp.mod2470.not, label %.lr.ph.i.i59.i.i.i.i.prol.loopexit, label %.lr.ph.i.i59.i.i.i.i.prol

.lr.ph.i.i59.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i59.i.i.i.i.preheader
  %i.ecx = add nsw i64 %indvars.iv1427.ph, %i.ecc ; 2 uses
  %i.ecy = getelementptr inbounds [4 x i8], ptr %i.div, i64 %i.ecx
  %i.ecz = trunc nuw nsw i64 %indvars.iv1427.ph to i32
  %i.eda = add i32 %i.ecb, %i.ecz
  store i32 %i.eda, ptr %i.ecy, align 4, !tbaa !3
  %i.edb = getelementptr inbounds [4 x i8], ptr %i.dil, i64 %i.ecx
  %i.edc = trunc nuw nsw i64 %indvars.iv1427.ph to i32
  %i.edd = add i32 %i.ebx, %i.edc
  store i32 %i.edd, ptr %i.edb, align 4, !tbaa !3
  %indvars.iv.next1428.prol = or disjoint i64 %indvars.iv1427.ph, 1
  br label %.lr.ph.i.i59.i.i.i.i.prol.loopexit

.lr.ph.i.i59.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i59.i.i.i.i.prol, %.lr.ph.i.i59.i.i.i.i.preheader
  %indvars.iv1427.unr = phi i64 [ %indvars.iv1427.ph, %.lr.ph.i.i59.i.i.i.i.preheader ], [ %indvars.iv.next1428.prol, %.lr.ph.i.i59.i.i.i.i.prol ]
  %i.ede = add nsw i64 %i.ecd, -1
  %i.edf = icmp eq i64 %indvars.iv1427.ph, %i.ede
  br i1 %i.edf, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i, label %.lr.ph.i.i59.i.i.i.i

.lr.ph.i.i59.i.i.i.i:                             ; preds = %.lr.ph.i.i59.i.i.i.i.prol.loopexit, %.lr.ph.i.i59.i.i.i.i
  %indvars.iv1427 = phi i64 [ %indvars.iv.next1428.1, %.lr.ph.i.i59.i.i.i.i ], [ %indvars.iv1427.unr, %.lr.ph.i.i59.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.edg = add nsw i64 %indvars.iv1427, %i.ecc    ; 2 uses
  %i.edh = getelementptr inbounds [4 x i8], ptr %i.div, i64 %i.edg
  %i.edi = trunc i64 %indvars.iv1427 to i32
  %i.edj = add i32 %i.ecb, %i.edi
  store i32 %i.edj, ptr %i.edh, align 4, !tbaa !3
  %i.edk = getelementptr inbounds [4 x i8], ptr %i.dil, i64 %i.edg
  %i.edl = trunc i64 %indvars.iv1427 to i32
  %i.edm = add i32 %i.ebx, %i.edl
  store i32 %i.edm, ptr %i.edk, align 4, !tbaa !3
  %indvars.iv.next1428 = add nuw nsw i64 %indvars.iv1427, 1 ; 3 uses
  %i.edn = add nsw i64 %indvars.iv.next1428, %i.ecc ; 2 uses
  %i.edo = getelementptr inbounds [4 x i8], ptr %i.div, i64 %i.edn
  %i.edp = trunc i64 %indvars.iv.next1428 to i32
  %i.edq = add i32 %i.ecb, %i.edp
  store i32 %i.edq, ptr %i.edo, align 4, !tbaa !3
  %i.edr = getelementptr inbounds [4 x i8], ptr %i.dil, i64 %i.edn
  %i.eds = trunc i64 %indvars.iv.next1428 to i32
  %i.edt = add i32 %i.ebx, %i.eds
  store i32 %i.edt, ptr %i.edr, align 4, !tbaa !3
  %indvars.iv.next1428.1 = add nuw nsw i64 %indvars.iv1427, 2 ; 2 uses
  %exitcond.not.i.i61.i.i.i.i.1 = icmp eq i64 %indvars.iv.next1428.1, %i.ecd
  br i1 %exitcond.not.i.i61.i.i.i.i.1, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i, label %.lr.ph.i.i59.i.i.i.i, !llvm.loop !1088

_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i: ; preds = %.lr.ph.i.i59.i.i.i.i.prol.loopexit, %.lr.ph.i.i59.i.i.i.i, %middle.block2136, %vec.epilog.middle.block2160, %bb.xp
  %i.edu = add nsw i32 %i.ebp, %.5
  %i.edv = add nsw i64 %.011.i56.i.i.i.i, -1
  %i.edw = and i64 %i.edv, %.011.i56.i.i.i.i      ; 2 uses
  %.not10.i58.i.i.i.i = icmp eq i64 %i.edw, 0
  br i1 %.not10.i58.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit, label %bb.xp, !llvm.loop !1073

_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i, %bb.xo, %._crit_edge.i.i.i.i828, %bb.xg, %bb.xe, %bb.xc
  call void @llvm.lifetime.start.p0(ptr nonnull %114) #23
  store ptr null, ptr %115, align 8, !tbaa !237
  store ptr %i.diq, ptr %116, align 8, !tbaa !237
  %.not.i859 = icmp eq ptr %i.diq, null
  br i1 %.not.i859, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit860, label %bb.xq

bb.xq:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit
  %i.edx = getelementptr inbounds nuw i8, ptr %i.diq, i64 40
  %i.edy = atomicrmw add ptr %i.edx, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit860

end_hunk_6
