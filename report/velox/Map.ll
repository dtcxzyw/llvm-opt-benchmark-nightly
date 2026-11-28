Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/Map?download=true
inline.NumInlined: 2905
inline.NumDeleted: 1201
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 57
begin_hunk_0_@_ZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a
  %i.dkr = and i8 %i.dkq, 2
  %.not.i816 = icmp eq i8 %i.dkr, 0
  br i1 %.not.i816, label %bb.wx, label %bb.ww, !prof !240

bb.ww:                                            ; preds = %bb.wv
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #27
          to label %.noexc817 unwind label %bb.aax

.noexc817:                                        ; preds = %bb.ww
  unreachable

bb.wx:                                            ; preds = %bb.wv
  %i.dks = getelementptr inbounds nuw i8, ptr %i.dko, i64 16
  %i.dkt = load ptr, ptr %i.dks, align 8, !tbaa !412 ; 31 uses
  %i.dku = ptrtoaddr ptr %i.dkt to i64            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %116) #23
  %i.dkv = load ptr, ptr %4, align 8, !tbaa !293
  %i.dkw = load ptr, ptr %i.dkv, align 8, !tbaa !315
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !798
  store i32 0, ptr %6, align 4, !tbaa !208, !noalias !798
  %i.dkx = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i8 1, ptr %i.dkx, align 4, !tbaa !330, !noalias !798
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %116, i64 noundef %i.dkm, ptr noundef %i.dkw, ptr noundef nonnull align 4 dereferenceable(8) %6, i1 noundef zeroext false)
          to label %bb.wy unwind label %bb.aay

bb.wy:                                            ; preds = %bb.wx
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !798
  %i.dky = load ptr, ptr %116, align 8, !tbaa !338 ; 5 uses
  %i.dkz = getelementptr inbounds nuw i8, ptr %i.dky, i64 44
  %i.dla = load i8, ptr %i.dkz, align 4, !tbaa !411
  %i.dlb = and i8 %i.dla, 2
  %.not.i821 = icmp eq i8 %i.dlb, 0
  br i1 %.not.i821, label %bb.xa, label %bb.wz, !prof !240

bb.wz:                                            ; preds = %bb.wy
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #27
          to label %.noexc822 unwind label %bb.aaz

.noexc822:                                        ; preds = %bb.wz
  unreachable

bb.xa:                                            ; preds = %bb.wy
  %i.dlc = getelementptr inbounds nuw i8, ptr %i.dky, i64 16
  %i.dld = load ptr, ptr %i.dlc, align 8, !tbaa !412 ; 31 uses
  %i.dle = ptrtoaddr ptr %i.dld to i64            ; 5 uses
  %i.dlf = load ptr, ptr %i.gu, align 8, !tbaa !352 ; 11 uses
  %i.dlg = getelementptr inbounds nuw i8, ptr %i.dlf, i64 36 ; 2 uses
  %i.dlh = getelementptr inbounds nuw i8, ptr %i.dlf, i64 37
  %i.dli = load i8, ptr %i.dlh, align 1, !tbaa !351, !range !241, !noundef !242
  %i.dlj = trunc nuw i8 %i.dli to i1
  br i1 %i.dlj, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i871, label %bb.xb

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i871: ; preds = %bb.xa
  %.0.in.pre.i.i872 = load i8, ptr %i.dlg, align 1, !tbaa !232, !range !241
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i826

bb.xb:                                            ; preds = %bb.xa
  %i.dlk = getelementptr inbounds nuw i8, ptr %i.dlf, i64 28
  %i.dll = load i32, ptr %i.dlk, align 4, !tbaa !383
  %i.dlm = icmp eq i32 %i.dll, 0
  br i1 %i.dlm, label %bb.xc, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i824

bb.xc:                                            ; preds = %bb.xb
  %i.dln = getelementptr inbounds nuw i8, ptr %i.dlf, i64 32
  %i.dlo = load i32, ptr %i.dln, align 8, !tbaa !328 ; 6 uses
  %i.dlp = getelementptr inbounds nuw i8, ptr %i.dlf, i64 24
  %i.dlq = load i32, ptr %i.dlp, align 8, !tbaa !384
  %i.dlr = icmp eq i32 %i.dlo, %i.dlq
  br i1 %i.dlr, label %bb.xd, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i824

bb.xd:                                            ; preds = %bb.xc
  %i.dls = load ptr, ptr %i.dlf, align 8, !tbaa !385 ; 2 uses
  %.not.i.i.i863 = icmp sgt i32 %i.dlo, 0
  br i1 %.not.i.i.i863, label %bb.xe, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i824

bb.xe:                                            ; preds = %bb.xd
  %i.dlt = and i32 %i.dlo, 2147483584             ; 3 uses
  %i.dlu = zext nneg i32 %i.dlt to i64
  %.not37.i.i.not.i.i8652032.not = icmp eq i32 %i.dlt, 0
  br i1 %.not37.i.i.not.i.i8652032.not, label %.critedge.i.i.i.i866, label %.lr.ph2034

bb.xf:                                            ; preds = %.lr.ph2034
  %indvars.iv.next.i.i870 = add nuw nsw i64 %indvars.iv.i.i8642033, 64 ; 2 uses
  %.not37.i.i.not.i.i865 = icmp samesign ult i64 %indvars.iv.next.i.i870, %i.dlu
  br i1 %.not37.i.i.not.i.i865, label %.lr.ph2034, label %.critedge.i.i.i.i866, !llvm.loop !11

.lr.ph2034:                                       ; preds = %bb.xe, %bb.xf
  %indvars.iv.i.i8642033 = phi i64 [ %indvars.iv.next.i.i870, %bb.xf ], [ 0, %bb.xe ] ; 2 uses
  %i.dlv = lshr exact i64 %indvars.iv.i.i8642033, 3
  %i.dlw = getelementptr inbounds nuw i8, ptr %i.dls, i64 %i.dlv
  %i.dlx = load i64, ptr %i.dlw, align 8, !tbaa !275
  %i.dly = icmp eq i64 %i.dlx, -1
  br i1 %i.dly, label %bb.xf, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i824, !llvm.loop !11

.critedge.i.i.i.i866:                             ; preds = %bb.xf, %bb.xe
  %.not38.i.i.i.i867 = icmp eq i32 %i.dlo, %i.dlt
  br i1 %.not38.i.i.i.i867, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i824, label %bb.xg

bb.xg:                                            ; preds = %.critedge.i.i.i.i866
  %i.dlz = lshr i32 %i.dlo, 6
  %i.dma = and i32 %i.dlo, 63
  %i.dmb = zext nneg i32 %i.dma to i64
  %notmask.i40.i.i.i.i868 = shl nsw i64 -1, %i.dmb
  %i.dmc = zext nneg i32 %i.dlz to i64
  %i.dmd = getelementptr inbounds nuw [8 x i8], ptr %i.dls, i64 %i.dmc
  %i.dme = load i64, ptr %i.dmd, align 8, !tbaa !275
  %.demorgan.i.i869 = or i64 %i.dme, %notmask.i40.i.i.i.i868
  %i.dmf = icmp eq i64 %.demorgan.i.i869, -1
  %i.dmg = zext i1 %i.dmf to i16
  %i.dmh = or disjoint i16 %i.dmg, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i824

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i824: ; preds = %.lr.ph2034, %bb.xg, %.critedge.i.i.i.i866, %bb.xd, %bb.xc, %bb.xb
  %.sroa.0.0.insert.ext.i.i825 = phi i16 [ 256, %bb.xc ], [ 256, %bb.xb ], [ 257, %bb.xd ], [ 257, %.critedge.i.i.i.i866 ], [ %i.dmh, %bb.xg ], [ 256, %.lr.ph2034 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i825, ptr %i.dlg, align 4
  %i.dmi = trunc i16 %.sroa.0.0.insert.ext.i.i825 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i826

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i826: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i824, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i871
  %.0.in.i.i827 = phi i8 [ %.0.in.pre.i.i872, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i871 ], [ %i.dmi, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i824 ]
  %.0.i.i828 = trunc nuw i8 %.0.in.i.i827 to i1
  br i1 %.0.i.i828, label %bb.xh, label %bb.xj

bb.xh:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i826
  %i.dmj = getelementptr inbounds nuw i8, ptr %i.dlf, i64 32
  %i.dmk = load i32, ptr %i.dmj, align 8, !tbaa !328 ; 2 uses
  %i.dml = getelementptr inbounds nuw i8, ptr %i.dlf, i64 28
  %i.dmm = load i32, ptr %i.dml, align 4, !tbaa !383 ; 2 uses
  %i.dmn = icmp slt i32 %i.dmm, %i.dmk
  br i1 %i.dmn, label %.lr.ph.i856, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit

.lr.ph.i856:                                      ; preds = %bb.xh
  %i.dmo = load ptr, ptr %i.p, align 8, !tbaa !382 ; 2 uses
  %i.dmp = load ptr, ptr %i.n, align 8, !tbaa !397
  %i.dmq = getelementptr inbounds nuw i8, ptr %i.dmo, i64 120
  %i.dmr = load ptr, ptr %i.dmq, align 8, !tbaa !380
  %i.dms = getelementptr inbounds nuw i8, ptr %i.dmo, i64 104
  %i.dmt = load ptr, ptr %i.dms, align 8, !tbaa !379
  %i.dmu = load ptr, ptr %i.q, align 8, !tbaa !382
  %i.dmv = load ptr, ptr %i.o, align 8, !tbaa !397
  %i.dmw = getelementptr inbounds nuw i8, ptr %i.dmu, i64 104
  %i.dmx = load ptr, ptr %i.dmw, align 8, !tbaa !379
  %i.dmy = sext i32 %i.dmm to i64
  %wide.trip.count.i857 = sext i32 %i.dmk to i64
  %i.dmz = sub i64 %i.dle, %i.dku
  %diff.check2341 = icmp ugt i64 %i.dmz, -128
  br label %bb.xi

bb.xi:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i, %.lr.ph.i856
  %.91185 = phi i32 [ 0, %.lr.ph.i856 ], [ %i.dpk, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i ] ; 3 uses
  %indvars.iv.i859 = phi i64 [ %i.dmy, %.lr.ph.i856 ], [ %indvars.iv.next.i860, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i ] ; 5 uses
  %i.dna = getelementptr inbounds [4 x i8], ptr %i.dmp, i64 %indvars.iv.i859 ; 2 uses
  %i.dnb = load i32, ptr %i.dna, align 4, !tbaa !220
  %i.dnc = sext i32 %i.dnb to i64
  %i.dnd = getelementptr inbounds [4 x i8], ptr %i.dmr, i64 %i.dnc
  %i.dne = load i32, ptr %i.dnd, align 4, !tbaa !220 ; 6 uses
  %i.dnf = getelementptr inbounds [4 x i8], ptr %i.djy, i64 %indvars.iv.i859
  store i32 %.91185, ptr %i.dnf, align 4, !tbaa !220
  %i.dng = getelementptr inbounds [4 x i8], ptr %i.dkj, i64 %indvars.iv.i859
  store i32 %i.dne, ptr %i.dng, align 4, !tbaa !220
  %i.dnh = icmp sgt i32 %i.dne, 0
  br i1 %i.dnh, label %iter.check2365, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i

iter.check2365:                                   ; preds = %bb.xi
  %i.dni = getelementptr inbounds [4 x i8], ptr %i.dmv, i64 %indvars.iv.i859
  %i.dnj = load i32, ptr %i.dni, align 4, !tbaa !220
  %i.dnk = sext i32 %i.dnj to i64
  %i.dnl = getelementptr inbounds [4 x i8], ptr %i.dmx, i64 %i.dnk
  %i.dnm = load i32, ptr %i.dnl, align 4, !tbaa !220 ; 5 uses
  %i.dnn = load i32, ptr %i.dna, align 4, !tbaa !220
  %i.dno = sext i32 %i.dnn to i64
  %i.dnp = getelementptr inbounds [4 x i8], ptr %i.dmt, i64 %i.dno
  %i.dnq = load i32, ptr %i.dnp, align 4, !tbaa !220 ; 5 uses
  %i.dnr = sext i32 %.91185 to i64                ; 5 uses
  %i.dns = zext nneg i32 %i.dne to i64            ; 8 uses
  %min.iters.check2339 = icmp ult i32 %i.dne, 8
  %or.cond = select i1 %min.iters.check2339, i1 true, i1 %diff.check2341
  br i1 %or.cond, label %.lr.ph.i.i862.preheader, label %vector.main.loop.iter.check2342

vector.main.loop.iter.check2342:                  ; preds = %iter.check2365
  %min.iters.check2343 = icmp ult i32 %i.dne, 32
  br i1 %min.iters.check2343, label %vec.epilog.ph2369, label %vector.ph2344

vector.ph2344:                                    ; preds = %vector.main.loop.iter.check2342
  %i.dnt = and i64 %i.dns, 24
  %n.vec2345 = and i64 %i.dns, 2147483616         ; 4 uses
  %broadcast.splatinsert2346 = insertelement <8 x i32> poison, i32 %i.dnm, i64 0
  %broadcast.splat2347 = shufflevector <8 x i32> %broadcast.splatinsert2346, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert2348 = insertelement <8 x i32> poison, i32 %i.dnq, i64 0
  %broadcast.splat2349 = shufflevector <8 x i32> %broadcast.splatinsert2348, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op2782 = add <8 x i32> splat (i32 8), %broadcast.splat2349
  %invariant.op2784 = add <8 x i32> splat (i32 16), %broadcast.splat2349
  %invariant.op2786 = add <8 x i32> splat (i32 24), %broadcast.splat2349
  %invariant.op2788 = add <8 x i32> splat (i32 8), %broadcast.splat2347
  %invariant.op2790 = add <8 x i32> splat (i32 16), %broadcast.splat2347
  %invariant.op2792 = add <8 x i32> splat (i32 24), %broadcast.splat2347
  br label %vector.body2350

vector.body2350:                                  ; preds = %vector.ph2344, %vector.body2350
  %index2351 = phi i64 [ 0, %vector.ph2344 ], [ %index.next2360, %vector.body2350 ] ; 2 uses
  %vec.ind2353 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2344 ], [ %vec.ind.next2362, %vector.body2350 ] ; 9 uses
  %i.dnu = add nsw i64 %index2351, %i.dnr         ; 2 uses
  %i.dnv = getelementptr inbounds [4 x i8], ptr %i.dld, i64 %i.dnu ; 4 uses
  %i.dnw = add <8 x i32> %broadcast.splat2349, %vec.ind2353
  %.reass2783 = add <8 x i32> %vec.ind2353, %invariant.op2782
  %.reass2785 = add <8 x i32> %vec.ind2353, %invariant.op2784
  %.reass2787 = add <8 x i32> %vec.ind2353, %invariant.op2786
  %i.dnx = getelementptr inbounds nuw i8, ptr %i.dnv, i64 32
  %i.dny = getelementptr inbounds nuw i8, ptr %i.dnv, i64 64
  %i.dnz = getelementptr inbounds nuw i8, ptr %i.dnv, i64 96
  store <8 x i32> %i.dnw, ptr %i.dnv, align 4, !tbaa !220
  store <8 x i32> %.reass2783, ptr %i.dnx, align 4, !tbaa !220
  store <8 x i32> %.reass2785, ptr %i.dny, align 4, !tbaa !220
  store <8 x i32> %.reass2787, ptr %i.dnz, align 4, !tbaa !220
  %i.doa = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.dnu ; 4 uses
  %i.dob = add <8 x i32> %broadcast.splat2347, %vec.ind2353
  %.reass2789 = add <8 x i32> %vec.ind2353, %invariant.op2788
  %.reass2791 = add <8 x i32> %vec.ind2353, %invariant.op2790
  %.reass2793 = add <8 x i32> %vec.ind2353, %invariant.op2792
  %i.doc = getelementptr inbounds nuw i8, ptr %i.doa, i64 32
  %i.dod = getelementptr inbounds nuw i8, ptr %i.doa, i64 64
  %i.doe = getelementptr inbounds nuw i8, ptr %i.doa, i64 96
  store <8 x i32> %i.dob, ptr %i.doa, align 4, !tbaa !220
  store <8 x i32> %.reass2789, ptr %i.doc, align 4, !tbaa !220
  store <8 x i32> %.reass2791, ptr %i.dod, align 4, !tbaa !220
  store <8 x i32> %.reass2793, ptr %i.doe, align 4, !tbaa !220
  %index.next2360 = add nuw i64 %index2351, 32    ; 2 uses
  %vec.ind.next2362 = add <8 x i32> %vec.ind2353, splat (i32 32)
  %i.dof = icmp eq i64 %index.next2360, %n.vec2345
  br i1 %i.dof, label %middle.block2363, label %vector.body2350, !llvm.loop !717

middle.block2363:                                 ; preds = %vector.body2350
  %cmp.n2364 = icmp eq i64 %n.vec2345, %i.dns
  br i1 %cmp.n2364, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i, label %vec.epilog.iter.check2366

vec.epilog.iter.check2366:                        ; preds = %middle.block2363
  %min.epilog.iters.check2368 = icmp eq i64 %i.dnt, 0
  br i1 %min.epilog.iters.check2368, label %.lr.ph.i.i862.preheader, label %vec.epilog.ph2369, !prof !404

vec.epilog.ph2369:                                ; preds = %vector.main.loop.iter.check2342, %vec.epilog.iter.check2366
  %vec.epilog.resume.val2370 = phi i64 [ %n.vec2345, %vec.epilog.iter.check2366 ], [ 0, %vector.main.loop.iter.check2342 ] ; 2 uses
  %n.vec2371 = and i64 %i.dns, 2147483640         ; 3 uses
  %broadcast.splatinsert2372 = insertelement <8 x i32> poison, i32 %i.dnm, i64 0
  %broadcast.splat2373 = shufflevector <8 x i32> %broadcast.splatinsert2372, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert2374 = insertelement <8 x i32> poison, i32 %i.dnq, i64 0
  %broadcast.splat2375 = shufflevector <8 x i32> %broadcast.splatinsert2374, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.dog = trunc nuw nsw i64 %vec.epilog.resume.val2370 to i32
  %broadcast.splatinsert2376 = insertelement <8 x i32> poison, i32 %i.dog, i64 0
  %broadcast.splat2377 = shufflevector <8 x i32> %broadcast.splatinsert2376, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction2378 = or disjoint <8 x i32> %broadcast.splat2377, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body2379

vec.epilog.vector.body2379:                       ; preds = %vec.epilog.vector.body2379, %vec.epilog.ph2369
  %index2380 = phi i64 [ %vec.epilog.resume.val2370, %vec.epilog.ph2369 ], [ %index.next2383, %vec.epilog.vector.body2379 ] ; 2 uses
  %vec.ind2382 = phi <8 x i32> [ %induction2378, %vec.epilog.ph2369 ], [ %vec.ind.next2385, %vec.epilog.vector.body2379 ] ; 3 uses
  %i.doh = add nsw i64 %index2380, %i.dnr         ; 2 uses
  %i.doi = getelementptr inbounds [4 x i8], ptr %i.dld, i64 %i.doh
  %i.doj = add <8 x i32> %broadcast.splat2375, %vec.ind2382
  store <8 x i32> %i.doj, ptr %i.doi, align 4, !tbaa !220
  %i.dok = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.doh
  %i.dol = add <8 x i32> %broadcast.splat2373, %vec.ind2382
  store <8 x i32> %i.dol, ptr %i.dok, align 4, !tbaa !220
  %index.next2383 = add nuw i64 %index2380, 8     ; 2 uses
  %vec.ind.next2385 = add <8 x i32> %vec.ind2382, splat (i32 8)
  %i.dom = icmp eq i64 %index.next2383, %n.vec2371
  br i1 %i.dom, label %vec.epilog.middle.block2386, label %vec.epilog.vector.body2379, !llvm.loop !718

vec.epilog.middle.block2386:                      ; preds = %vec.epilog.vector.body2379
  %cmp.n2387 = icmp eq i64 %n.vec2371, %i.dns
  br i1 %cmp.n2387, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i, label %.lr.ph.i.i862.preheader

.lr.ph.i.i862.preheader:                          ; preds = %iter.check2365, %vec.epilog.iter.check2366, %vec.epilog.middle.block2386
  %indvars.iv1507.ph = phi i64 [ 0, %iter.check2365 ], [ %n.vec2345, %vec.epilog.iter.check2366 ], [ %n.vec2371, %vec.epilog.middle.block2386 ] ; 6 uses
  %xtraiter2632 = and i64 %i.dns, 1
  %lcmp.mod2633.not = icmp eq i64 %xtraiter2632, 0
  br i1 %lcmp.mod2633.not, label %.lr.ph.i.i862.prol.loopexit, label %.lr.ph.i.i862.prol

.lr.ph.i.i862.prol:                               ; preds = %.lr.ph.i.i862.preheader
  %i.don = add nsw i64 %indvars.iv1507.ph, %i.dnr ; 2 uses
  %i.doo = getelementptr inbounds [4 x i8], ptr %i.dld, i64 %i.don
  %i.dop = trunc nuw nsw i64 %indvars.iv1507.ph to i32
  %i.doq = add i32 %i.dnq, %i.dop
  store i32 %i.doq, ptr %i.doo, align 4, !tbaa !220
  %i.dor = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.don
  %i.dos = trunc nuw nsw i64 %indvars.iv1507.ph to i32
  %i.dot = add i32 %i.dnm, %i.dos
  store i32 %i.dot, ptr %i.dor, align 4, !tbaa !220
  %indvars.iv.next1508.prol = or disjoint i64 %indvars.iv1507.ph, 1
  br label %.lr.ph.i.i862.prol.loopexit

.lr.ph.i.i862.prol.loopexit:                      ; preds = %.lr.ph.i.i862.prol, %.lr.ph.i.i862.preheader
  %indvars.iv1507.unr = phi i64 [ %indvars.iv1507.ph, %.lr.ph.i.i862.preheader ], [ %indvars.iv.next1508.prol, %.lr.ph.i.i862.prol ]
  %i.dou = add nsw i64 %i.dns, -1
  %i.dov = icmp eq i64 %indvars.iv1507.ph, %i.dou
  br i1 %i.dov, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i, label %.lr.ph.i.i862

.lr.ph.i.i862:                                    ; preds = %.lr.ph.i.i862.prol.loopexit, %.lr.ph.i.i862
  %indvars.iv1507 = phi i64 [ %indvars.iv.next1508.1, %.lr.ph.i.i862 ], [ %indvars.iv1507.unr, %.lr.ph.i.i862.prol.loopexit ] ; 5 uses
  %i.dow = add nsw i64 %indvars.iv1507, %i.dnr    ; 2 uses
  %i.dox = getelementptr inbounds [4 x i8], ptr %i.dld, i64 %i.dow
  %i.doy = trunc i64 %indvars.iv1507 to i32
  %i.doz = add i32 %i.dnq, %i.doy
  store i32 %i.doz, ptr %i.dox, align 4, !tbaa !220
  %i.dpa = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.dow
  %i.dpb = trunc i64 %indvars.iv1507 to i32
  %i.dpc = add i32 %i.dnm, %i.dpb
  store i32 %i.dpc, ptr %i.dpa, align 4, !tbaa !220
  %indvars.iv.next1508 = add nuw nsw i64 %indvars.iv1507, 1 ; 3 uses
  %i.dpd = add nsw i64 %indvars.iv.next1508, %i.dnr ; 2 uses
  %i.dpe = getelementptr inbounds [4 x i8], ptr %i.dld, i64 %i.dpd
  %i.dpf = trunc i64 %indvars.iv.next1508 to i32
  %i.dpg = add i32 %i.dnq, %i.dpf
  store i32 %i.dpg, ptr %i.dpe, align 4, !tbaa !220
  %i.dph = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.dpd
  %i.dpi = trunc i64 %indvars.iv.next1508 to i32
  %i.dpj = add i32 %i.dnm, %i.dpi
  store i32 %i.dpj, ptr %i.dph, align 4, !tbaa !220
  %indvars.iv.next1508.1 = add nuw nsw i64 %indvars.iv1507, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next1508.1, %i.dns
  br i1 %exitcond.not.i.i.1, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i, label %.lr.ph.i.i862, !llvm.loop !719

_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i: ; preds = %.lr.ph.i.i862.prol.loopexit, %.lr.ph.i.i862, %middle.block2363, %vec.epilog.middle.block2386, %bb.xi
  %i.dpk = add nsw i32 %i.dne, %.91185
  %indvars.iv.next.i860 = add nsw i64 %indvars.iv.i859, 1 ; 2 uses
  %exitcond.not.i861 = icmp eq i64 %indvars.iv.next.i860, %wide.trip.count.i857
  br i1 %exitcond.not.i861, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit, label %bb.xi, !llvm.loop !720

bb.xj:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i826
  %i.dpl = load ptr, ptr %i.dlf, align 8, !tbaa !385 ; 4 uses
  %i.dpm = getelementptr inbounds nuw i8, ptr %i.dlf, i64 28
  %i.dpn = load i32, ptr %i.dpm, align 4, !tbaa !383 ; 6 uses
  %i.dpo = getelementptr inbounds nuw i8, ptr %i.dlf, i64 32
  %i.dpp = load i32, ptr %i.dpo, align 8, !tbaa !328 ; 7 uses
  %.not.i.i.i.i834 = icmp slt i32 %i.dpn, %i.dpp
  br i1 %.not.i.i.i.i834, label %bb.xk, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit

bb.xk:                                            ; preds = %bb.xj
  %i.dpq = add i32 %i.dpn, 63                     ; 2 uses
  %i.dpr = srem i32 %i.dpq, 64
  %i.dps = sub nsw i32 %i.dpq, %i.dpr             ; 6 uses
  %i.dpt = and i32 %i.dpp, -64                    ; 6 uses
  %i.dpu = icmp slt i32 %i.dpt, %i.dps
  br i1 %i.dpu, label %bb.xl, label %bb.xn

bb.xl:                                            ; preds = %bb.xk
  %i.dpv = ashr i32 %i.dpp, 6
  %i.dpw = and i32 %i.dpp, 63
  %i.dpx = zext nneg i32 %i.dpw to i64
  %notmask.i.i.i.i.i848 = shl nsw i64 -1, %i.dpx
  %i.dpy = xor i64 %notmask.i.i.i.i.i848, -1
  %i.dpz = sub nsw i32 %i.dps, %i.dpn             ; 2 uses
  %i.dqa = zext nneg i32 %i.dpz to i64
  %notmask.i.i.i.i.i.i849 = shl nsw i64 -1, %i.dqa
  %i.dqb = xor i64 %notmask.i.i.i.i.i.i849, -1
  %i.dqc = sub nsw i32 64, %i.dpz
  %i.dqd = zext nneg i32 %i.dqc to i64
  %i.dqe = shl i64 %i.dqb, %i.dqd
  %i.dqf = and i64 %i.dqe, %i.dpy
  %i.dqg = sext i32 %i.dpv to i64
  %i.dqh = getelementptr inbounds [8 x i8], ptr %i.dpl, i64 %i.dqg
  %i.dqi = load i64, ptr %i.dqh, align 8, !tbaa !275
  %i.dqj = and i64 %i.dqf, %i.dqi                 ; 2 uses
  %.not.i.i.i.i.i850 = icmp eq i64 %i.dqj, 0
  br i1 %.not.i.i.i.i.i850, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit, label %.preheader.i.i.i.i.i851

.preheader.i.i.i.i.i851:                          ; preds = %bb.xl
  %i.dqk = load ptr, ptr %i.p, align 8, !tbaa !382 ; 2 uses
  %i.dql = load ptr, ptr %i.n, align 8, !tbaa !397
  %i.dqm = sext i32 %i.dpt to i64
  %i.dqn = getelementptr inbounds nuw i8, ptr %i.dqk, i64 120
  %i.dqo = load ptr, ptr %i.dqn, align 8, !tbaa !380
  %i.dqp = getelementptr inbounds nuw i8, ptr %i.dqk, i64 104
  %i.dqq = load ptr, ptr %i.dqp, align 8, !tbaa !379
  %i.dqr = load ptr, ptr %i.q, align 8, !tbaa !382
  %i.dqs = load ptr, ptr %i.o, align 8, !tbaa !397
  %i.dqt = getelementptr inbounds nuw i8, ptr %i.dqr, i64 104
  %i.dqu = load ptr, ptr %i.dqt, align 8, !tbaa !379
  %i.dqv = sub i64 %i.dle, %i.dku
  %diff.check2289 = icmp ugt i64 %i.dqv, -128
  br label %bb.xm

bb.xm:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i, %.preheader.i.i.i.i.i851
  %.81184 = phi i32 [ 0, %.preheader.i.i.i.i.i851 ], [ %i.dti, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i ] ; 3 uses
  %.011.i.i.i.i.i853 = phi i64 [ %i.dqj, %.preheader.i.i.i.i.i851 ], [ %i.dtk, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i ] ; 3 uses
  %i.dqw = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i853, i1 true)
  %i.dqx = or disjoint i64 %i.dqw, %i.dqm         ; 4 uses
  %i.dqy = getelementptr inbounds [4 x i8], ptr %i.dql, i64 %i.dqx ; 2 uses
  %i.dqz = load i32, ptr %i.dqy, align 4, !tbaa !220
  %i.dra = sext i32 %i.dqz to i64
  %i.drb = getelementptr inbounds [4 x i8], ptr %i.dqo, i64 %i.dra
  %i.drc = load i32, ptr %i.drb, align 4, !tbaa !220 ; 6 uses
  %i.drd = getelementptr inbounds [4 x i8], ptr %i.djy, i64 %i.dqx
  store i32 %.81184, ptr %i.drd, align 4, !tbaa !220
  %i.dre = getelementptr inbounds [4 x i8], ptr %i.dkj, i64 %i.dqx
  store i32 %i.drc, ptr %i.dre, align 4, !tbaa !220
  %i.drf = icmp sgt i32 %i.drc, 0
  br i1 %i.drf, label %iter.check2313, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i

iter.check2313:                                   ; preds = %bb.xm
  %i.drg = getelementptr inbounds [4 x i8], ptr %i.dqs, i64 %i.dqx
  %i.drh = load i32, ptr %i.drg, align 4, !tbaa !220
  %i.dri = sext i32 %i.drh to i64
  %i.drj = getelementptr inbounds [4 x i8], ptr %i.dqu, i64 %i.dri
  %i.drk = load i32, ptr %i.drj, align 4, !tbaa !220 ; 5 uses
  %i.drl = load i32, ptr %i.dqy, align 4, !tbaa !220
  %i.drm = sext i32 %i.drl to i64
  %i.drn = getelementptr inbounds [4 x i8], ptr %i.dqq, i64 %i.drm
  %i.dro = load i32, ptr %i.drn, align 4, !tbaa !220 ; 5 uses
  %i.drp = sext i32 %.81184 to i64                ; 5 uses
  %i.drq = zext nneg i32 %i.drc to i64            ; 8 uses
  %min.iters.check2287 = icmp ult i32 %i.drc, 8
  %or.cond2462 = select i1 %min.iters.check2287, i1 true, i1 %diff.check2289
  br i1 %or.cond2462, label %.lr.ph.i.i.i.i.i.i855.preheader, label %vector.main.loop.iter.check2290

vector.main.loop.iter.check2290:                  ; preds = %iter.check2313
  %min.iters.check2291 = icmp ult i32 %i.drc, 32
  br i1 %min.iters.check2291, label %vec.epilog.ph2317, label %vector.ph2292

vector.ph2292:                                    ; preds = %vector.main.loop.iter.check2290
  %i.drr = and i64 %i.drq, 24
  %n.vec2293 = and i64 %i.drq, 2147483616         ; 4 uses
  %broadcast.splatinsert2294 = insertelement <8 x i32> poison, i32 %i.drk, i64 0
  %broadcast.splat2295 = shufflevector <8 x i32> %broadcast.splatinsert2294, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert2296 = insertelement <8 x i32> poison, i32 %i.dro, i64 0
  %broadcast.splat2297 = shufflevector <8 x i32> %broadcast.splatinsert2296, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op2770 = add <8 x i32> splat (i32 8), %broadcast.splat2297
  %invariant.op2772 = add <8 x i32> splat (i32 16), %broadcast.splat2297
  %invariant.op2774 = add <8 x i32> splat (i32 24), %broadcast.splat2297
  %invariant.op2776 = add <8 x i32> splat (i32 8), %broadcast.splat2295
  %invariant.op2778 = add <8 x i32> splat (i32 16), %broadcast.splat2295
  %invariant.op2780 = add <8 x i32> splat (i32 24), %broadcast.splat2295
  br label %vector.body2298

vector.body2298:                                  ; preds = %vector.ph2292, %vector.body2298
  %index2299 = phi i64 [ 0, %vector.ph2292 ], [ %index.next2308, %vector.body2298 ] ; 2 uses
  %vec.ind2301 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2292 ], [ %vec.ind.next2310, %vector.body2298 ] ; 9 uses
  %i.drs = add nsw i64 %index2299, %i.drp         ; 2 uses
  %i.drt = getelementptr inbounds [4 x i8], ptr %i.dld, i64 %i.drs ; 4 uses
  %i.dru = add <8 x i32> %broadcast.splat2297, %vec.ind2301
  %.reass2771 = add <8 x i32> %vec.ind2301, %invariant.op2770
  %.reass2773 = add <8 x i32> %vec.ind2301, %invariant.op2772
  %.reass2775 = add <8 x i32> %vec.ind2301, %invariant.op2774
  %i.drv = getelementptr inbounds nuw i8, ptr %i.drt, i64 32
  %i.drw = getelementptr inbounds nuw i8, ptr %i.drt, i64 64
  %i.drx = getelementptr inbounds nuw i8, ptr %i.drt, i64 96
  store <8 x i32> %i.dru, ptr %i.drt, align 4, !tbaa !220
  store <8 x i32> %.reass2771, ptr %i.drv, align 4, !tbaa !220
  store <8 x i32> %.reass2773, ptr %i.drw, align 4, !tbaa !220
  store <8 x i32> %.reass2775, ptr %i.drx, align 4, !tbaa !220
  %i.dry = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.drs ; 4 uses
  %i.drz = add <8 x i32> %broadcast.splat2295, %vec.ind2301
  %.reass2777 = add <8 x i32> %vec.ind2301, %invariant.op2776
  %.reass2779 = add <8 x i32> %vec.ind2301, %invariant.op2778
  %.reass2781 = add <8 x i32> %vec.ind2301, %invariant.op2780
  %i.dsa = getelementptr inbounds nuw i8, ptr %i.dry, i64 32
  %i.dsb = getelementptr inbounds nuw i8, ptr %i.dry, i64 64
  %i.dsc = getelementptr inbounds nuw i8, ptr %i.dry, i64 96
  store <8 x i32> %i.drz, ptr %i.dry, align 4, !tbaa !220
  store <8 x i32> %.reass2777, ptr %i.dsa, align 4, !tbaa !220
  store <8 x i32> %.reass2779, ptr %i.dsb, align 4, !tbaa !220
  store <8 x i32> %.reass2781, ptr %i.dsc, align 4, !tbaa !220
  %index.next2308 = add nuw i64 %index2299, 32    ; 2 uses
  %vec.ind.next2310 = add <8 x i32> %vec.ind2301, splat (i32 32)
  %i.dsd = icmp eq i64 %index.next2308, %n.vec2293
  br i1 %i.dsd, label %middle.block2311, label %vector.body2298, !llvm.loop !721

middle.block2311:                                 ; preds = %vector.body2298
  %cmp.n2312 = icmp eq i64 %n.vec2293, %i.drq
  br i1 %cmp.n2312, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i, label %vec.epilog.iter.check2314

vec.epilog.iter.check2314:                        ; preds = %middle.block2311
  %min.epilog.iters.check2316 = icmp eq i64 %i.drr, 0
  br i1 %min.epilog.iters.check2316, label %.lr.ph.i.i.i.i.i.i855.preheader, label %vec.epilog.ph2317, !prof !404

vec.epilog.ph2317:                                ; preds = %vector.main.loop.iter.check2290, %vec.epilog.iter.check2314
  %vec.epilog.resume.val2318 = phi i64 [ %n.vec2293, %vec.epilog.iter.check2314 ], [ 0, %vector.main.loop.iter.check2290 ] ; 2 uses
  %n.vec2319 = and i64 %i.drq, 2147483640         ; 3 uses
  %broadcast.splatinsert2320 = insertelement <8 x i32> poison, i32 %i.drk, i64 0
  %broadcast.splat2321 = shufflevector <8 x i32> %broadcast.splatinsert2320, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert2322 = insertelement <8 x i32> poison, i32 %i.dro, i64 0
  %broadcast.splat2323 = shufflevector <8 x i32> %broadcast.splatinsert2322, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.dse = trunc nuw nsw i64 %vec.epilog.resume.val2318 to i32
  %broadcast.splatinsert2324 = insertelement <8 x i32> poison, i32 %i.dse, i64 0
  %broadcast.splat2325 = shufflevector <8 x i32> %broadcast.splatinsert2324, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction2326 = or disjoint <8 x i32> %broadcast.splat2325, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body2327

vec.epilog.vector.body2327:                       ; preds = %vec.epilog.vector.body2327, %vec.epilog.ph2317
  %index2328 = phi i64 [ %vec.epilog.resume.val2318, %vec.epilog.ph2317 ], [ %index.next2331, %vec.epilog.vector.body2327 ] ; 2 uses
  %vec.ind2330 = phi <8 x i32> [ %induction2326, %vec.epilog.ph2317 ], [ %vec.ind.next2333, %vec.epilog.vector.body2327 ] ; 3 uses
  %i.dsf = add nsw i64 %index2328, %i.drp         ; 2 uses
  %i.dsg = getelementptr inbounds [4 x i8], ptr %i.dld, i64 %i.dsf
  %i.dsh = add <8 x i32> %broadcast.splat2323, %vec.ind2330
  store <8 x i32> %i.dsh, ptr %i.dsg, align 4, !tbaa !220
  %i.dsi = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.dsf
  %i.dsj = add <8 x i32> %broadcast.splat2321, %vec.ind2330
  store <8 x i32> %i.dsj, ptr %i.dsi, align 4, !tbaa !220
  %index.next2331 = add nuw i64 %index2328, 8     ; 2 uses
  %vec.ind.next2333 = add <8 x i32> %vec.ind2330, splat (i32 8)
  %i.dsk = icmp eq i64 %index.next2331, %n.vec2319
  br i1 %i.dsk, label %vec.epilog.middle.block2334, label %vec.epilog.vector.body2327, !llvm.loop !722

vec.epilog.middle.block2334:                      ; preds = %vec.epilog.vector.body2327
  %cmp.n2335 = icmp eq i64 %n.vec2319, %i.drq
  br i1 %cmp.n2335, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i855.preheader

.lr.ph.i.i.i.i.i.i855.preheader:                  ; preds = %iter.check2313, %vec.epilog.iter.check2314, %vec.epilog.middle.block2334
  %indvars.iv1504.ph = phi i64 [ 0, %iter.check2313 ], [ %n.vec2293, %vec.epilog.iter.check2314 ], [ %n.vec2319, %vec.epilog.middle.block2334 ] ; 6 uses
  %xtraiter2630 = and i64 %i.drq, 1
  %lcmp.mod2631.not = icmp eq i64 %xtraiter2630, 0
  br i1 %lcmp.mod2631.not, label %.lr.ph.i.i.i.i.i.i855.prol.loopexit, label %.lr.ph.i.i.i.i.i.i855.prol

.lr.ph.i.i.i.i.i.i855.prol:                       ; preds = %.lr.ph.i.i.i.i.i.i855.preheader
  %i.dsl = add nsw i64 %indvars.iv1504.ph, %i.drp ; 2 uses
  %i.dsm = getelementptr inbounds [4 x i8], ptr %i.dld, i64 %i.dsl
  %i.dsn = trunc nuw nsw i64 %indvars.iv1504.ph to i32
  %i.dso = add i32 %i.dro, %i.dsn
  store i32 %i.dso, ptr %i.dsm, align 4, !tbaa !220
  %i.dsp = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.dsl
  %i.dsq = trunc nuw nsw i64 %indvars.iv1504.ph to i32
  %i.dsr = add i32 %i.drk, %i.dsq
  store i32 %i.dsr, ptr %i.dsp, align 4, !tbaa !220
  %indvars.iv.next1505.prol = or disjoint i64 %indvars.iv1504.ph, 1
  br label %.lr.ph.i.i.i.i.i.i855.prol.loopexit

.lr.ph.i.i.i.i.i.i855.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i.i.i855.prol, %.lr.ph.i.i.i.i.i.i855.preheader
  %indvars.iv1504.unr = phi i64 [ %indvars.iv1504.ph, %.lr.ph.i.i.i.i.i.i855.preheader ], [ %indvars.iv.next1505.prol, %.lr.ph.i.i.i.i.i.i855.prol ]
  %i.dss = add nsw i64 %i.drq, -1
  %i.dst = icmp eq i64 %indvars.iv1504.ph, %i.dss
  br i1 %i.dst, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i855

.lr.ph.i.i.i.i.i.i855:                            ; preds = %.lr.ph.i.i.i.i.i.i855.prol.loopexit, %.lr.ph.i.i.i.i.i.i855
  %indvars.iv1504 = phi i64 [ %indvars.iv.next1505.1, %.lr.ph.i.i.i.i.i.i855 ], [ %indvars.iv1504.unr, %.lr.ph.i.i.i.i.i.i855.prol.loopexit ] ; 5 uses
  %i.dsu = add nsw i64 %indvars.iv1504, %i.drp    ; 2 uses
  %i.dsv = getelementptr inbounds [4 x i8], ptr %i.dld, i64 %i.dsu
  %i.dsw = trunc i64 %indvars.iv1504 to i32
  %i.dsx = add i32 %i.dro, %i.dsw
  store i32 %i.dsx, ptr %i.dsv, align 4, !tbaa !220
  %i.dsy = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.dsu
  %i.dsz = trunc i64 %indvars.iv1504 to i32
  %i.dta = add i32 %i.drk, %i.dsz
  store i32 %i.dta, ptr %i.dsy, align 4, !tbaa !220
  %indvars.iv.next1505 = add nuw nsw i64 %indvars.iv1504, 1 ; 3 uses
  %i.dtb = add nsw i64 %indvars.iv.next1505, %i.drp ; 2 uses
  %i.dtc = getelementptr inbounds [4 x i8], ptr %i.dld, i64 %i.dtb
  %i.dtd = trunc i64 %indvars.iv.next1505 to i32
  %i.dte = add i32 %i.dro, %i.dtd
  store i32 %i.dte, ptr %i.dtc, align 4, !tbaa !220
  %i.dtf = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.dtb
  %i.dtg = trunc i64 %indvars.iv.next1505 to i32
  %i.dth = add i32 %i.drk, %i.dtg
  store i32 %i.dth, ptr %i.dtf, align 4, !tbaa !220
  %indvars.iv.next1505.1 = add nuw nsw i64 %indvars.iv1504, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %indvars.iv.next1505.1, %i.drq
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i855, !llvm.loop !723

_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i855.prol.loopexit, %.lr.ph.i.i.i.i.i.i855, %middle.block2311, %vec.epilog.middle.block2334, %bb.xm
  %i.dti = add nsw i32 %i.drc, %.81184
  %i.dtj = add nuw i64 %.011.i.i.i.i.i853, 9223372036854775807
  %i.dtk = and i64 %i.dtj, %.011.i.i.i.i.i853     ; 2 uses
  %.not10.i.i.i.i.i854 = icmp eq i64 %i.dtk, 0
  br i1 %.not10.i.i.i.i.i854, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit, label %bb.xm, !llvm.loop !724

bb.xn:                                            ; preds = %bb.xk
  %.not32.i.i.i.i835 = icmp eq i32 %i.dpn, %i.dps
  br i1 %.not32.i.i.i.i835, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUlimE_clEim.exit45.i.i.i.i, label %bb.xo

bb.xo:                                            ; preds = %bb.xn
  %i.dtl = sdiv i32 %i.dpn, 64                    ; 2 uses
  %i.dtm = sub nsw i32 %i.dps, %i.dpn             ; 2 uses
  %i.dtn = zext nneg i32 %i.dtm to i64
  %notmask.i.i35.i.i.i.i836 = shl nsw i64 -1, %i.dtn
  %i.dto = xor i64 %notmask.i.i35.i.i.i.i836, -1
  %i.dtp = sub nsw i32 64, %i.dtm
  %i.dtq = zext nneg i32 %i.dtp to i64
  %i.dtr = shl i64 %i.dto, %i.dtq
  %i.dts = sext i32 %i.dtl to i64
  %i.dtt = getelementptr inbounds [8 x i8], ptr %i.dpl, i64 %i.dts
  %i.dtu = load i64, ptr %i.dtt, align 8, !tbaa !275
  %i.dtv = and i64 %i.dtu, %i.dtr                 ; 2 uses
  %.not.i36.i.i.i.i837 = icmp eq i64 %i.dtv, 0
  br i1 %.not.i36.i.i.i.i837, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUlimE_clEim.exit45.i.i.i.i, label %.preheader.i37.i.i.i.i838

.preheader.i37.i.i.i.i838:                        ; preds = %bb.xo
  %i.dtw = shl nsw i32 %i.dtl, 6
  %i.dtx = load ptr, ptr %i.p, align 8, !tbaa !382 ; 2 uses
  %i.dty = load ptr, ptr %i.n, align 8, !tbaa !397
  %i.dtz = sext i32 %i.dtw to i64
  %i.dua = getelementptr inbounds nuw i8, ptr %i.dtx, i64 120
  %i.dub = load ptr, ptr %i.dua, align 8, !tbaa !380
  %i.duc = getelementptr inbounds nuw i8, ptr %i.dtx, i64 104
  %i.dud = load ptr, ptr %i.duc, align 8, !tbaa !379
  %i.due = load ptr, ptr %i.q, align 8, !tbaa !382
  %i.duf = load ptr, ptr %i.o, align 8, !tbaa !397
  %i.dug = getelementptr inbounds nuw i8, ptr %i.due, i64 104
  %i.duh = load ptr, ptr %i.dug, align 8, !tbaa !379
  %i.dui = sub i64 %i.dle, %i.dku
  %diff.check = icmp ugt i64 %i.dui, -128
  br label %bb.xp

bb.xp:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i, %.preheader.i37.i.i.i.i838
  %.01176 = phi i32 [ 0, %.preheader.i37.i.i.i.i838 ], [ %i.dwv, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i ] ; 3 uses
  %.011.i39.i.i.i.i840 = phi i64 [ %i.dtv, %.preheader.i37.i.i.i.i838 ], [ %i.dwx, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i ] ; 3 uses
  %i.duj = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i39.i.i.i.i840, i1 true)
  %i.duk = or disjoint i64 %i.duj, %i.dtz         ; 4 uses
  %i.dul = getelementptr inbounds [4 x i8], ptr %i.dty, i64 %i.duk ; 2 uses
  %i.dum = load i32, ptr %i.dul, align 4, !tbaa !220
  %i.dun = sext i32 %i.dum to i64
  %i.duo = getelementptr inbounds [4 x i8], ptr %i.dub, i64 %i.dun
  %i.dup = load i32, ptr %i.duo, align 4, !tbaa !220 ; 6 uses
  %i.duq = getelementptr inbounds [4 x i8], ptr %i.djy, i64 %i.duk
  store i32 %.01176, ptr %i.duq, align 4, !tbaa !220
  %i.dur = getelementptr inbounds [4 x i8], ptr %i.dkj, i64 %i.duk
  store i32 %i.dup, ptr %i.dur, align 4, !tbaa !220
  %i.dus = icmp sgt i32 %i.dup, 0
  br i1 %i.dus, label %iter.check2106, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i

iter.check2106:                                   ; preds = %bb.xp
  %i.dut = getelementptr inbounds [4 x i8], ptr %i.duf, i64 %i.duk
  %i.duu = load i32, ptr %i.dut, align 4, !tbaa !220
  %i.duv = sext i32 %i.duu to i64
  %i.duw = getelementptr inbounds [4 x i8], ptr %i.duh, i64 %i.duv
  %i.dux = load i32, ptr %i.duw, align 4, !tbaa !220 ; 5 uses
  %i.duy = load i32, ptr %i.dul, align 4, !tbaa !220
  %i.duz = sext i32 %i.duy to i64
  %i.dva = getelementptr inbounds [4 x i8], ptr %i.dud, i64 %i.duz
  %i.dvb = load i32, ptr %i.dva, align 4, !tbaa !220 ; 5 uses
  %i.dvc = sext i32 %.01176 to i64                ; 5 uses
  %i.dvd = zext nneg i32 %i.dup to i64            ; 8 uses
  %min.iters.check2089 = icmp ult i32 %i.dup, 8
  %or.cond2463 = select i1 %min.iters.check2089, i1 true, i1 %diff.check
  br i1 %or.cond2463, label %.lr.ph.i.i42.i.i.i.i.preheader, label %vector.main.loop.iter.check2090

vector.main.loop.iter.check2090:                  ; preds = %iter.check2106
  %min.iters.check2091 = icmp ult i32 %i.dup, 32
  br i1 %min.iters.check2091, label %vec.epilog.ph2110, label %vector.ph2092

vector.ph2092:                                    ; preds = %vector.main.loop.iter.check2090
  %i.dve = and i64 %i.dvd, 24
  %n.vec2093 = and i64 %i.dvd, 2147483616         ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.dux, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert2094 = insertelement <8 x i32> poison, i32 %i.dvb, i64 0
  %broadcast.splat2095 = shufflevector <8 x i32> %broadcast.splatinsert2094, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op = add <8 x i32> splat (i32 8), %broadcast.splat2095
  %invariant.op2724.a = add <8 x i32> splat (i32 16), %broadcast.splat2095
  %invariant.op2726.a = add <8 x i32> splat (i32 24), %broadcast.splat2095
  %invariant.op2728 = add <8 x i32> splat (i32 8), %broadcast.splat
  %invariant.op2730 = add <8 x i32> splat (i32 16), %broadcast.splat
  %invariant.op2732 = add <8 x i32> splat (i32 24), %broadcast.splat
  br label %vector.body2096

vector.body2096:                                  ; preds = %vector.ph2092, %vector.body2096
  %index2097 = phi i64 [ 0, %vector.ph2092 ], [ %index.next2102, %vector.body2096 ] ; 2 uses
  %vec.ind2098 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2092 ], [ %vec.ind.next2103, %vector.body2096 ] ; 9 uses
  %i.dvf = add nsw i64 %index2097, %i.dvc         ; 2 uses
  %i.dvg = getelementptr inbounds [4 x i8], ptr %i.dld, i64 %i.dvf ; 4 uses
  %i.dvh = add <8 x i32> %broadcast.splat2095, %vec.ind2098
  %.reass = add <8 x i32> %vec.ind2098, %invariant.op
  %.reass2725.a = add <8 x i32> %vec.ind2098, %invariant.op2724.a
  %.reass2727.a = add <8 x i32> %vec.ind2098, %invariant.op2726.a
  %i.dvi = getelementptr inbounds nuw i8, ptr %i.dvg, i64 32
  %i.dvj = getelementptr inbounds nuw i8, ptr %i.dvg, i64 64
  %i.dvk = getelementptr inbounds nuw i8, ptr %i.dvg, i64 96
  store <8 x i32> %i.dvh, ptr %i.dvg, align 4, !tbaa !220
  store <8 x i32> %.reass, ptr %i.dvi, align 4, !tbaa !220
  store <8 x i32> %.reass2725.a, ptr %i.dvj, align 4, !tbaa !220
  store <8 x i32> %.reass2727.a, ptr %i.dvk, align 4, !tbaa !220
  %i.dvl = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.dvf ; 4 uses
  %i.dvm = add <8 x i32> %broadcast.splat, %vec.ind2098
  %.reass2729 = add <8 x i32> %vec.ind2098, %invariant.op2728
  %.reass2731 = add <8 x i32> %vec.ind2098, %invariant.op2730
  %.reass2733 = add <8 x i32> %vec.ind2098, %invariant.op2732
  %i.dvn = getelementptr inbounds nuw i8, ptr %i.dvl, i64 32
  %i.dvo = getelementptr inbounds nuw i8, ptr %i.dvl, i64 64
  %i.dvp = getelementptr inbounds nuw i8, ptr %i.dvl, i64 96
  store <8 x i32> %i.dvm, ptr %i.dvl, align 4, !tbaa !220
  store <8 x i32> %.reass2729, ptr %i.dvn, align 4, !tbaa !220
  store <8 x i32> %.reass2731, ptr %i.dvo, align 4, !tbaa !220
  store <8 x i32> %.reass2733, ptr %i.dvp, align 4, !tbaa !220
  %index.next2102 = add nuw i64 %index2097, 32    ; 2 uses
  %vec.ind.next2103 = add <8 x i32> %vec.ind2098, splat (i32 32)
  %i.dvq = icmp eq i64 %index.next2102, %n.vec2093
  br i1 %i.dvq, label %middle.block2104, label %vector.body2096, !llvm.loop !725

middle.block2104:                                 ; preds = %vector.body2096
  %cmp.n2105 = icmp eq i64 %n.vec2093, %i.dvd
  br i1 %cmp.n2105, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i, label %vec.epilog.iter.check2107

vec.epilog.iter.check2107:                        ; preds = %middle.block2104
  %min.epilog.iters.check2109 = icmp eq i64 %i.dve, 0
  br i1 %min.epilog.iters.check2109, label %.lr.ph.i.i42.i.i.i.i.preheader, label %vec.epilog.ph2110, !prof !404

vec.epilog.ph2110:                                ; preds = %vector.main.loop.iter.check2090, %vec.epilog.iter.check2107
  %vec.epilog.resume.val2111 = phi i64 [ %n.vec2093, %vec.epilog.iter.check2107 ], [ 0, %vector.main.loop.iter.check2090 ] ; 2 uses
  %n.vec2112 = and i64 %i.dvd, 2147483640         ; 3 uses
  %broadcast.splatinsert2113 = insertelement <8 x i32> poison, i32 %i.dux, i64 0
  %broadcast.splat2114 = shufflevector <8 x i32> %broadcast.splatinsert2113, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert2115 = insertelement <8 x i32> poison, i32 %i.dvb, i64 0
  %broadcast.splat2116 = shufflevector <8 x i32> %broadcast.splatinsert2115, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.dvr = trunc nuw nsw i64 %vec.epilog.resume.val2111 to i32
  %broadcast.splatinsert2117 = insertelement <8 x i32> poison, i32 %i.dvr, i64 0
  %broadcast.splat2118 = shufflevector <8 x i32> %broadcast.splatinsert2117, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = or disjoint <8 x i32> %broadcast.splat2118, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body2119

vec.epilog.vector.body2119:                       ; preds = %vec.epilog.vector.body2119, %vec.epilog.ph2110
  %index2120 = phi i64 [ %vec.epilog.resume.val2111, %vec.epilog.ph2110 ], [ %index.next2123, %vec.epilog.vector.body2119 ] ; 2 uses
  %vec.ind2122 = phi <8 x i32> [ %induction, %vec.epilog.ph2110 ], [ %vec.ind.next2125, %vec.epilog.vector.body2119 ] ; 3 uses
  %i.dvs = add nsw i64 %index2120, %i.dvc         ; 2 uses
  %i.dvt = getelementptr inbounds [4 x i8], ptr %i.dld, i64 %i.dvs
  %i.dvu = add <8 x i32> %broadcast.splat2116, %vec.ind2122
  store <8 x i32> %i.dvu, ptr %i.dvt, align 4, !tbaa !220
  %i.dvv = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.dvs
  %i.dvw = add <8 x i32> %broadcast.splat2114, %vec.ind2122
  store <8 x i32> %i.dvw, ptr %i.dvv, align 4, !tbaa !220
  %index.next2123 = add nuw i64 %index2120, 8     ; 2 uses
  %vec.ind.next2125 = add <8 x i32> %vec.ind2122, splat (i32 8)
  %i.dvx = icmp eq i64 %index.next2123, %n.vec2112
  br i1 %i.dvx, label %vec.epilog.middle.block2126, label %vec.epilog.vector.body2119, !llvm.loop !726

vec.epilog.middle.block2126:                      ; preds = %vec.epilog.vector.body2119
  %cmp.n2127 = icmp eq i64 %n.vec2112, %i.dvd
  br i1 %cmp.n2127, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i, label %.lr.ph.i.i42.i.i.i.i.preheader

.lr.ph.i.i42.i.i.i.i.preheader:                   ; preds = %iter.check2106, %vec.epilog.iter.check2107, %vec.epilog.middle.block2126
  %indvars.iv.ph = phi i64 [ 0, %iter.check2106 ], [ %n.vec2093, %vec.epilog.iter.check2107 ], [ %n.vec2112, %vec.epilog.middle.block2126 ] ; 6 uses
  %xtraiter = and i64 %i.dvd, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i42.i.i.i.i.prol.loopexit, label %.lr.ph.i.i42.i.i.i.i.prol

.lr.ph.i.i42.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i42.i.i.i.i.preheader
  %i.dvy = add nsw i64 %indvars.iv.ph, %i.dvc     ; 2 uses
  %i.dvz = getelementptr inbounds [4 x i8], ptr %i.dld, i64 %i.dvy
  %i.dwa = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.dwb = add i32 %i.dvb, %i.dwa
  store i32 %i.dwb, ptr %i.dvz, align 4, !tbaa !220
  %i.dwc = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.dvy
  %i.dwd = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.dwe = add i32 %i.dux, %i.dwd
  store i32 %i.dwe, ptr %i.dwc, align 4, !tbaa !220
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.i.i42.i.i.i.i.prol.loopexit

.lr.ph.i.i42.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i42.i.i.i.i.prol, %.lr.ph.i.i42.i.i.i.i.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.i.i42.i.i.i.i.preheader ], [ %indvars.iv.next.prol, %.lr.ph.i.i42.i.i.i.i.prol ]
  %i.dwf = add nsw i64 %i.dvd, -1
  %i.dwg = icmp eq i64 %indvars.iv.ph, %i.dwf
  br i1 %i.dwg, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i, label %.lr.ph.i.i42.i.i.i.i

.lr.ph.i.i42.i.i.i.i:                             ; preds = %.lr.ph.i.i42.i.i.i.i.prol.loopexit, %.lr.ph.i.i42.i.i.i.i
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.i.i42.i.i.i.i ], [ %indvars.iv.unr, %.lr.ph.i.i42.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.dwh = add nsw i64 %indvars.iv, %i.dvc        ; 2 uses
  %i.dwi = getelementptr inbounds [4 x i8], ptr %i.dld, i64 %i.dwh
  %i.dwj = trunc i64 %indvars.iv to i32
  %i.dwk = add i32 %i.dvb, %i.dwj
  store i32 %i.dwk, ptr %i.dwi, align 4, !tbaa !220
  %i.dwl = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.dwh
  %i.dwm = trunc i64 %indvars.iv to i32
  %i.dwn = add i32 %i.dux, %i.dwm
  store i32 %i.dwn, ptr %i.dwl, align 4, !tbaa !220
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.dwo = add nsw i64 %indvars.iv.next, %i.dvc   ; 2 uses
  %i.dwp = getelementptr inbounds [4 x i8], ptr %i.dld, i64 %i.dwo
  %i.dwq = trunc i64 %indvars.iv.next to i32
  %i.dwr = add i32 %i.dvb, %i.dwq
  store i32 %i.dwr, ptr %i.dwp, align 4, !tbaa !220
  %i.dws = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.dwo
  %i.dwt = trunc i64 %indvars.iv.next to i32
  %i.dwu = add i32 %i.dux, %i.dwt
  store i32 %i.dwu, ptr %i.dws, align 4, !tbaa !220
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.i.i44.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.1, %i.dvd
  br i1 %exitcond.not.i.i44.i.i.i.i.1, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i, label %.lr.ph.i.i42.i.i.i.i, !llvm.loop !727

_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i: ; preds = %.lr.ph.i.i42.i.i.i.i.prol.loopexit, %.lr.ph.i.i42.i.i.i.i, %middle.block2104, %vec.epilog.middle.block2126, %bb.xp
  %i.dwv = add nsw i32 %i.dup, %.01176            ; 2 uses
  %i.dww = add i64 %.011.i39.i.i.i.i840, -1
  %i.dwx = and i64 %i.dww, %.011.i39.i.i.i.i840   ; 2 uses
  %.not10.i41.i.i.i.i = icmp eq i64 %i.dwx, 0
  br i1 %.not10.i41.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUlimE_clEim.exit45.i.i.i.i, label %bb.xp, !llvm.loop !724

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUlimE_clEim.exit45.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i, %bb.xo, %bb.xn
  %.11177 = phi i32 [ 0, %bb.xn ], [ 0, %bb.xo ], [ %i.dwv, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i ] ; 2 uses
  %i.dwy = add nsw i32 %i.dps, 64                 ; 2 uses
  %.not3365.i.i.i.i = icmp sgt i32 %i.dwy, %i.dpt
  br i1 %.not3365.i.i.i.i, label %._crit_edge.i.i.i.i843, label %.lr.ph.i.i.i.i841.preheader

.lr.ph.i.i.i.i841.preheader:                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUlimE_clEim.exit45.i.i.i.i
  %i.dwz = load ptr, ptr %i.p, align 8            ; 2 uses
  %i.dxa = load ptr, ptr %i.n, align 8            ; 2 uses
  %i.dxb = getelementptr inbounds nuw i8, ptr %i.dwz, i64 120 ; 2 uses
  %i.dxc = getelementptr inbounds nuw i8, ptr %i.dwz, i64 104 ; 2 uses
  %i.dxd = load ptr, ptr %i.q, align 8
  %i.dxe = load ptr, ptr %i.o, align 8            ; 2 uses
  %i.dxf = getelementptr inbounds nuw i8, ptr %i.dxd, i64 104 ; 2 uses
  %i.dxg = sub i64 %i.dku, %i.dle                 ; 2 uses
  %i.dxh = add i64 %i.dxg, -1
  %diff.check2185 = icmp ult i64 %i.dxh, 127
  %i.dxi = add i64 %i.dxg, -1
  %diff.check2133 = icmp ult i64 %i.dxi, 127
  br label %.lr.ph.i.i.i.i841

._crit_edge.i.i.i.i843:                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUlimE_clEim.exit45.i.i.i.i
  %.41180 = phi i32 [ %.11177, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUlimE_clEim.exit45.i.i.i.i ], [ %.31179, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ]
  %.not34.i.i.i.i844 = icmp eq i32 %i.dpp, %i.dpt
  br i1 %.not34.i.i.i.i844, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit, label %bb.xt

.lr.ph.i.i.i.i841:                                ; preds = %.lr.ph.i.i.i.i841.preheader, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  %.21178 = phi i32 [ %.31179, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %.11177, %.lr.ph.i.i.i.i841.preheader ] ; 4 uses
  %i.dxj = phi i32 [ %i.ede, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %i.dwy, %.lr.ph.i.i.i.i841.preheader ] ; 2 uses
  %.066.i.i.i.i = phi i32 [ %i.dxj, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %i.dps, %.lr.ph.i.i.i.i841.preheader ] ; 2 uses
  %i.dxk = sdiv i32 %.066.i.i.i.i, 64             ; 3 uses
  %i.dxl = sext i32 %i.dxk to i64
  %i.dxm = getelementptr inbounds [8 x i8], ptr %i.dpl, i64 %i.dxl
  %i.dxn = load i64, ptr %i.dxm, align 8, !tbaa !275 ; 2 uses
  switch i64 %i.dxn, label %.lr.ph.i.i.i.i.i847 [
    i64 -1, label %bb.xq
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  ]

.lr.ph.i.i.i.i.i847:                              ; preds = %.lr.ph.i.i.i.i841
  %i.dxo = shl nsw i32 %i.dxk, 6
  %i.dxp = sext i32 %i.dxo to i64
  %i.dxq = load ptr, ptr %i.dxb, align 8, !tbaa !380
  %i.dxr = load ptr, ptr %i.dxc, align 8, !tbaa !379
  %i.dxs = load ptr, ptr %i.dxf, align 8, !tbaa !379
  br label %bb.xs

bb.xq:                                            ; preds = %.lr.ph.i.i.i.i841
  %i.dxt = shl nsw i32 %i.dxk, 6                  ; 2 uses
  %i.dxu = add i32 %i.dxt, 64
  %i.dxv = sext i32 %i.dxu to i64
  %.0.off.i.i.i.i846 = add i32 %.066.i.i.i.i, 127
  %.not26.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i846, 64
  br i1 %.not26.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %.lr.ph25.i.i.i.i.i

.lr.ph25.i.i.i.i.i:                               ; preds = %bb.xq
  %i.dxw = sext i32 %i.dxt to i64
  %i.dxx = load ptr, ptr %i.dxb, align 8, !tbaa !380
  %i.dxy = load ptr, ptr %i.dxc, align 8, !tbaa !379
  %i.dxz = load ptr, ptr %i.dxf, align 8, !tbaa !379
  br label %bb.xr

bb.xr:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i, %.lr.ph25.i.i.i.i.i
  %.61182 = phi i32 [ %.21178, %.lr.ph25.i.i.i.i.i ], [ %i.eam, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i ] ; 3 uses
  %.024.i.i.i.i.i = phi i64 [ %i.dxw, %.lr.ph25.i.i.i.i.i ], [ %i.ean, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i ] ; 2 uses
  %i.dya = shl i64 %.024.i.i.i.i.i, 32
  %i.dyb = ashr exact i64 %i.dya, 32              ; 4 uses
  %i.dyc = getelementptr inbounds [4 x i8], ptr %i.dxa, i64 %i.dyb ; 2 uses
  %i.dyd = load i32, ptr %i.dyc, align 4, !tbaa !220
  %i.dye = sext i32 %i.dyd to i64
  %i.dyf = getelementptr inbounds [4 x i8], ptr %i.dxx, i64 %i.dye
  %i.dyg = load i32, ptr %i.dyf, align 4, !tbaa !220 ; 6 uses
  %i.dyh = getelementptr inbounds [4 x i8], ptr %i.djy, i64 %i.dyb
  store i32 %.61182, ptr %i.dyh, align 4, !tbaa !220
  %i.dyi = getelementptr inbounds [4 x i8], ptr %i.dkj, i64 %i.dyb
  store i32 %i.dyg, ptr %i.dyi, align 4, !tbaa !220
  %i.dyj = icmp sgt i32 %i.dyg, 0
  br i1 %i.dyj, label %iter.check2209, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i

iter.check2209:                                   ; preds = %bb.xr
  %i.dyk = getelementptr inbounds [4 x i8], ptr %i.dxe, i64 %i.dyb
  %i.dyl = load i32, ptr %i.dyk, align 4, !tbaa !220
  %i.dym = sext i32 %i.dyl to i64
  %i.dyn = getelementptr inbounds [4 x i8], ptr %i.dxz, i64 %i.dym
  %i.dyo = load i32, ptr %i.dyn, align 4, !tbaa !220 ; 5 uses
  %i.dyp = load i32, ptr %i.dyc, align 4, !tbaa !220
  %i.dyq = sext i32 %i.dyp to i64
  %i.dyr = getelementptr inbounds [4 x i8], ptr %i.dxy, i64 %i.dyq
  %i.dys = load i32, ptr %i.dyr, align 4, !tbaa !220 ; 5 uses
  %i.dyt = sext i32 %.61182 to i64                ; 5 uses
  %i.dyu = zext nneg i32 %i.dyg to i64            ; 8 uses
  %min.iters.check2183 = icmp ult i32 %i.dyg, 8
  %or.cond2464 = select i1 %min.iters.check2183, i1 true, i1 %diff.check2185
  br i1 %or.cond2464, label %.lr.ph.i.i48.i.i.i.i.preheader, label %vector.main.loop.iter.check2186

vector.main.loop.iter.check2186:                  ; preds = %iter.check2209
  %min.iters.check2187 = icmp ult i32 %i.dyg, 32
  br i1 %min.iters.check2187, label %vec.epilog.ph2213, label %vector.ph2188

vector.ph2188:                                    ; preds = %vector.main.loop.iter.check2186
  %i.dyv = and i64 %i.dyu, 24
  %n.vec2189 = and i64 %i.dyu, 2147483616         ; 4 uses
  %broadcast.splatinsert2190 = insertelement <8 x i32> poison, i32 %i.dyo, i64 0
  %broadcast.splat2191 = shufflevector <8 x i32> %broadcast.splatinsert2190, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert2192 = insertelement <8 x i32> poison, i32 %i.dys, i64 0
  %broadcast.splat2193 = shufflevector <8 x i32> %broadcast.splatinsert2192, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op2734 = add <8 x i32> splat (i32 8), %broadcast.splat2193
  %invariant.op2736 = add <8 x i32> splat (i32 16), %broadcast.splat2193
  %invariant.op2738 = add <8 x i32> splat (i32 24), %broadcast.splat2193
  %invariant.op2740 = add <8 x i32> splat (i32 8), %broadcast.splat2191
  %invariant.op2742 = add <8 x i32> splat (i32 16), %broadcast.splat2191
  %invariant.op2744 = add <8 x i32> splat (i32 24), %broadcast.splat2191
  br label %vector.body2194

vector.body2194:                                  ; preds = %vector.ph2188, %vector.body2194
  %index2195 = phi i64 [ 0, %vector.ph2188 ], [ %index.next2204, %vector.body2194 ] ; 2 uses
  %vec.ind2197 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2188 ], [ %vec.ind.next2206, %vector.body2194 ] ; 9 uses
  %i.dyw = add nsw i64 %index2195, %i.dyt         ; 2 uses
  %i.dyx = getelementptr inbounds [4 x i8], ptr %i.dld, i64 %i.dyw ; 4 uses
  %i.dyy = add <8 x i32> %broadcast.splat2193, %vec.ind2197
  %.reass2735 = add <8 x i32> %vec.ind2197, %invariant.op2734
  %.reass2737 = add <8 x i32> %vec.ind2197, %invariant.op2736
  %.reass2739 = add <8 x i32> %vec.ind2197, %invariant.op2738
  %i.dyz = getelementptr inbounds nuw i8, ptr %i.dyx, i64 32
  %i.dza = getelementptr inbounds nuw i8, ptr %i.dyx, i64 64
  %i.dzb = getelementptr inbounds nuw i8, ptr %i.dyx, i64 96
  store <8 x i32> %i.dyy, ptr %i.dyx, align 4, !tbaa !220
  store <8 x i32> %.reass2735, ptr %i.dyz, align 4, !tbaa !220
  store <8 x i32> %.reass2737, ptr %i.dza, align 4, !tbaa !220
  store <8 x i32> %.reass2739, ptr %i.dzb, align 4, !tbaa !220
  %i.dzc = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.dyw ; 4 uses
  %i.dzd = add <8 x i32> %broadcast.splat2191, %vec.ind2197
  %.reass2741 = add <8 x i32> %vec.ind2197, %invariant.op2740
  %.reass2743 = add <8 x i32> %vec.ind2197, %invariant.op2742
  %.reass2745 = add <8 x i32> %vec.ind2197, %invariant.op2744
  %i.dze = getelementptr inbounds nuw i8, ptr %i.dzc, i64 32
  %i.dzf = getelementptr inbounds nuw i8, ptr %i.dzc, i64 64
  %i.dzg = getelementptr inbounds nuw i8, ptr %i.dzc, i64 96
  store <8 x i32> %i.dzd, ptr %i.dzc, align 4, !tbaa !220
  store <8 x i32> %.reass2741, ptr %i.dze, align 4, !tbaa !220
  store <8 x i32> %.reass2743, ptr %i.dzf, align 4, !tbaa !220
  store <8 x i32> %.reass2745, ptr %i.dzg, align 4, !tbaa !220
  %index.next2204 = add nuw i64 %index2195, 32    ; 2 uses
  %vec.ind.next2206 = add <8 x i32> %vec.ind2197, splat (i32 32)
  %i.dzh = icmp eq i64 %index.next2204, %n.vec2189
  br i1 %i.dzh, label %middle.block2207, label %vector.body2194, !llvm.loop !728

middle.block2207:                                 ; preds = %vector.body2194
  %cmp.n2208 = icmp eq i64 %n.vec2189, %i.dyu
  br i1 %cmp.n2208, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i, label %vec.epilog.iter.check2210

vec.epilog.iter.check2210:                        ; preds = %middle.block2207
  %min.epilog.iters.check2212 = icmp eq i64 %i.dyv, 0
  br i1 %min.epilog.iters.check2212, label %.lr.ph.i.i48.i.i.i.i.preheader, label %vec.epilog.ph2213, !prof !404

vec.epilog.ph2213:                                ; preds = %vector.main.loop.iter.check2186, %vec.epilog.iter.check2210
  %vec.epilog.resume.val2214 = phi i64 [ %n.vec2189, %vec.epilog.iter.check2210 ], [ 0, %vector.main.loop.iter.check2186 ] ; 2 uses
  %n.vec2215 = and i64 %i.dyu, 2147483640         ; 3 uses
  %broadcast.splatinsert2216 = insertelement <8 x i32> poison, i32 %i.dyo, i64 0
  %broadcast.splat2217 = shufflevector <8 x i32> %broadcast.splatinsert2216, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert2218 = insertelement <8 x i32> poison, i32 %i.dys, i64 0
  %broadcast.splat2219 = shufflevector <8 x i32> %broadcast.splatinsert2218, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.dzi = trunc nuw nsw i64 %vec.epilog.resume.val2214 to i32
  %broadcast.splatinsert2220 = insertelement <8 x i32> poison, i32 %i.dzi, i64 0
  %broadcast.splat2221 = shufflevector <8 x i32> %broadcast.splatinsert2220, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction2222 = or disjoint <8 x i32> %broadcast.splat2221, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body2223

vec.epilog.vector.body2223:                       ; preds = %vec.epilog.vector.body2223, %vec.epilog.ph2213
  %index2224 = phi i64 [ %vec.epilog.resume.val2214, %vec.epilog.ph2213 ], [ %index.next2227, %vec.epilog.vector.body2223 ] ; 2 uses
  %vec.ind2226 = phi <8 x i32> [ %induction2222, %vec.epilog.ph2213 ], [ %vec.ind.next2229, %vec.epilog.vector.body2223 ] ; 3 uses
  %i.dzj = add nsw i64 %index2224, %i.dyt         ; 2 uses
  %i.dzk = getelementptr inbounds [4 x i8], ptr %i.dld, i64 %i.dzj
  %i.dzl = add <8 x i32> %broadcast.splat2219, %vec.ind2226
  store <8 x i32> %i.dzl, ptr %i.dzk, align 4, !tbaa !220
  %i.dzm = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.dzj
  %i.dzn = add <8 x i32> %broadcast.splat2217, %vec.ind2226
  store <8 x i32> %i.dzn, ptr %i.dzm, align 4, !tbaa !220
  %index.next2227 = add nuw i64 %index2224, 8     ; 2 uses
  %vec.ind.next2229 = add <8 x i32> %vec.ind2226, splat (i32 8)
  %i.dzo = icmp eq i64 %index.next2227, %n.vec2215
  br i1 %i.dzo, label %vec.epilog.middle.block2230, label %vec.epilog.vector.body2223, !llvm.loop !729

vec.epilog.middle.block2230:                      ; preds = %vec.epilog.vector.body2223
  %cmp.n2231 = icmp eq i64 %n.vec2215, %i.dyu
  br i1 %cmp.n2231, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i, label %.lr.ph.i.i48.i.i.i.i.preheader

.lr.ph.i.i48.i.i.i.i.preheader:                   ; preds = %iter.check2209, %vec.epilog.iter.check2210, %vec.epilog.middle.block2230
  %indvars.iv1495.ph = phi i64 [ 0, %iter.check2209 ], [ %n.vec2189, %vec.epilog.iter.check2210 ], [ %n.vec2215, %vec.epilog.middle.block2230 ] ; 6 uses
  %xtraiter2624 = and i64 %i.dyu, 1
  %lcmp.mod2625.not = icmp eq i64 %xtraiter2624, 0
  br i1 %lcmp.mod2625.not, label %.lr.ph.i.i48.i.i.i.i.prol.loopexit, label %.lr.ph.i.i48.i.i.i.i.prol

.lr.ph.i.i48.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i48.i.i.i.i.preheader
  %i.dzp = add nsw i64 %indvars.iv1495.ph, %i.dyt ; 2 uses
  %i.dzq = getelementptr inbounds [4 x i8], ptr %i.dld, i64 %i.dzp
  %i.dzr = trunc nuw nsw i64 %indvars.iv1495.ph to i32
  %i.dzs = add i32 %i.dys, %i.dzr
  store i32 %i.dzs, ptr %i.dzq, align 4, !tbaa !220
  %i.dzt = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.dzp
  %i.dzu = trunc nuw nsw i64 %indvars.iv1495.ph to i32
  %i.dzv = add i32 %i.dyo, %i.dzu
  store i32 %i.dzv, ptr %i.dzt, align 4, !tbaa !220
  %indvars.iv.next1496.prol = or disjoint i64 %indvars.iv1495.ph, 1
  br label %.lr.ph.i.i48.i.i.i.i.prol.loopexit

.lr.ph.i.i48.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i48.i.i.i.i.prol, %.lr.ph.i.i48.i.i.i.i.preheader
  %indvars.iv1495.unr = phi i64 [ %indvars.iv1495.ph, %.lr.ph.i.i48.i.i.i.i.preheader ], [ %indvars.iv.next1496.prol, %.lr.ph.i.i48.i.i.i.i.prol ]
  %i.dzw = add nsw i64 %i.dyu, -1
  %i.dzx = icmp eq i64 %indvars.iv1495.ph, %i.dzw
  br i1 %i.dzx, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i, label %.lr.ph.i.i48.i.i.i.i

.lr.ph.i.i48.i.i.i.i:                             ; preds = %.lr.ph.i.i48.i.i.i.i.prol.loopexit, %.lr.ph.i.i48.i.i.i.i
  %indvars.iv1495 = phi i64 [ %indvars.iv.next1496.1, %.lr.ph.i.i48.i.i.i.i ], [ %indvars.iv1495.unr, %.lr.ph.i.i48.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.dzy = add nsw i64 %indvars.iv1495, %i.dyt    ; 2 uses
  %i.dzz = getelementptr inbounds [4 x i8], ptr %i.dld, i64 %i.dzy
  %i.eaa = trunc i64 %indvars.iv1495 to i32
  %i.eab = add i32 %i.dys, %i.eaa
  store i32 %i.eab, ptr %i.dzz, align 4, !tbaa !220
  %i.eac = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.dzy
  %i.ead = trunc i64 %indvars.iv1495 to i32
  %i.eae = add i32 %i.dyo, %i.ead
  store i32 %i.eae, ptr %i.eac, align 4, !tbaa !220
  %indvars.iv.next1496 = add nuw nsw i64 %indvars.iv1495, 1 ; 3 uses
  %i.eaf = add nsw i64 %indvars.iv.next1496, %i.dyt ; 2 uses
  %i.eag = getelementptr inbounds [4 x i8], ptr %i.dld, i64 %i.eaf
  %i.eah = trunc i64 %indvars.iv.next1496 to i32
  %i.eai = add i32 %i.dys, %i.eah
  store i32 %i.eai, ptr %i.eag, align 4, !tbaa !220
  %i.eaj = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.eaf
  %i.eak = trunc i64 %indvars.iv.next1496 to i32
  %i.eal = add i32 %i.dyo, %i.eak
  store i32 %i.eal, ptr %i.eaj, align 4, !tbaa !220
  %indvars.iv.next1496.1 = add nuw nsw i64 %indvars.iv1495, 2 ; 2 uses
  %exitcond.not.i.i50.i.i.i.i.1 = icmp eq i64 %indvars.iv.next1496.1, %i.dyu
  br i1 %exitcond.not.i.i50.i.i.i.i.1, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i, label %.lr.ph.i.i48.i.i.i.i, !llvm.loop !730

_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i: ; preds = %.lr.ph.i.i48.i.i.i.i.prol.loopexit, %.lr.ph.i.i48.i.i.i.i, %middle.block2207, %vec.epilog.middle.block2230, %bb.xr
  %i.eam = add nsw i32 %i.dyg, %.61182            ; 2 uses
  %i.ean = add nuw i64 %.024.i.i.i.i.i, 1         ; 2 uses
  %i.eao = icmp ult i64 %i.ean, %i.dxv
  br i1 %i.eao, label %bb.xr, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, !llvm.loop !731

bb.xs:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i, %.lr.ph.i.i.i.i.i847
  %.71183 = phi i32 [ %.21178, %.lr.ph.i.i.i.i.i847 ], [ %i.edb, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i ] ; 3 uses
  %.01523.i.i.i.i.i = phi i64 [ %i.dxn, %.lr.ph.i.i.i.i.i847 ], [ %i.edd, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i ] ; 3 uses
  %i.eap = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01523.i.i.i.i.i, i1 true)
  %i.eaq = or disjoint i64 %i.eap, %i.dxp         ; 4 uses
  %i.ear = getelementptr inbounds [4 x i8], ptr %i.dxa, i64 %i.eaq ; 2 uses
  %i.eas = load i32, ptr %i.ear, align 4, !tbaa !220
  %i.eat = sext i32 %i.eas to i64
  %i.eau = getelementptr inbounds [4 x i8], ptr %i.dxq, i64 %i.eat
  %i.eav = load i32, ptr %i.eau, align 4, !tbaa !220 ; 6 uses
  %i.eaw = getelementptr inbounds [4 x i8], ptr %i.djy, i64 %i.eaq
  store i32 %.71183, ptr %i.eaw, align 4, !tbaa !220
  %i.eax = getelementptr inbounds [4 x i8], ptr %i.dkj, i64 %i.eaq
  store i32 %i.eav, ptr %i.eax, align 4, !tbaa !220
  %i.eay = icmp sgt i32 %i.eav, 0
  br i1 %i.eay, label %iter.check2157, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i

iter.check2157:                                   ; preds = %bb.xs
  %i.eaz = getelementptr inbounds [4 x i8], ptr %i.dxe, i64 %i.eaq
  %i.eba = load i32, ptr %i.eaz, align 4, !tbaa !220
  %i.ebb = sext i32 %i.eba to i64
  %i.ebc = getelementptr inbounds [4 x i8], ptr %i.dxs, i64 %i.ebb
  %i.ebd = load i32, ptr %i.ebc, align 4, !tbaa !220 ; 5 uses
  %i.ebe = load i32, ptr %i.ear, align 4, !tbaa !220
  %i.ebf = sext i32 %i.ebe to i64
  %i.ebg = getelementptr inbounds [4 x i8], ptr %i.dxr, i64 %i.ebf
  %i.ebh = load i32, ptr %i.ebg, align 4, !tbaa !220 ; 5 uses
  %i.ebi = sext i32 %.71183 to i64                ; 5 uses
  %i.ebj = zext nneg i32 %i.eav to i64            ; 8 uses
  %min.iters.check2131 = icmp ult i32 %i.eav, 8
  %or.cond2465 = select i1 %min.iters.check2131, i1 true, i1 %diff.check2133
  br i1 %or.cond2465, label %.lr.ph.i17.i.i.i.i.i.preheader, label %vector.main.loop.iter.check2134

vector.main.loop.iter.check2134:                  ; preds = %iter.check2157
  %min.iters.check2135 = icmp ult i32 %i.eav, 32
  br i1 %min.iters.check2135, label %vec.epilog.ph2161, label %vector.ph2136

vector.ph2136:                                    ; preds = %vector.main.loop.iter.check2134
  %i.ebk = and i64 %i.ebj, 24
  %n.vec2137 = and i64 %i.ebj, 2147483616         ; 4 uses
  %broadcast.splatinsert2138 = insertelement <8 x i32> poison, i32 %i.ebd, i64 0
  %broadcast.splat2139 = shufflevector <8 x i32> %broadcast.splatinsert2138, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert2140 = insertelement <8 x i32> poison, i32 %i.ebh, i64 0
  %broadcast.splat2141 = shufflevector <8 x i32> %broadcast.splatinsert2140, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op2746 = add <8 x i32> splat (i32 8), %broadcast.splat2141
  %invariant.op2748 = add <8 x i32> splat (i32 16), %broadcast.splat2141
  %invariant.op2750 = add <8 x i32> splat (i32 24), %broadcast.splat2141
  %invariant.op2752 = add <8 x i32> splat (i32 8), %broadcast.splat2139
  %invariant.op2754 = add <8 x i32> splat (i32 16), %broadcast.splat2139
  %invariant.op2756 = add <8 x i32> splat (i32 24), %broadcast.splat2139
  br label %vector.body2142

vector.body2142:                                  ; preds = %vector.ph2136, %vector.body2142
  %index2143 = phi i64 [ 0, %vector.ph2136 ], [ %index.next2152, %vector.body2142 ] ; 2 uses
  %vec.ind2145 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2136 ], [ %vec.ind.next2154, %vector.body2142 ] ; 9 uses
  %i.ebl = add nsw i64 %index2143, %i.ebi         ; 2 uses
  %i.ebm = getelementptr inbounds [4 x i8], ptr %i.dld, i64 %i.ebl ; 4 uses
  %i.ebn = add <8 x i32> %broadcast.splat2141, %vec.ind2145
  %.reass2747 = add <8 x i32> %vec.ind2145, %invariant.op2746
  %.reass2749 = add <8 x i32> %vec.ind2145, %invariant.op2748
  %.reass2751 = add <8 x i32> %vec.ind2145, %invariant.op2750
  %i.ebo = getelementptr inbounds nuw i8, ptr %i.ebm, i64 32
  %i.ebp = getelementptr inbounds nuw i8, ptr %i.ebm, i64 64
  %i.ebq = getelementptr inbounds nuw i8, ptr %i.ebm, i64 96
  store <8 x i32> %i.ebn, ptr %i.ebm, align 4, !tbaa !220
  store <8 x i32> %.reass2747, ptr %i.ebo, align 4, !tbaa !220
  store <8 x i32> %.reass2749, ptr %i.ebp, align 4, !tbaa !220
  store <8 x i32> %.reass2751, ptr %i.ebq, align 4, !tbaa !220
  %i.ebr = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.ebl ; 4 uses
  %i.ebs = add <8 x i32> %broadcast.splat2139, %vec.ind2145
  %.reass2753 = add <8 x i32> %vec.ind2145, %invariant.op2752
  %.reass2755 = add <8 x i32> %vec.ind2145, %invariant.op2754
  %.reass2757 = add <8 x i32> %vec.ind2145, %invariant.op2756
  %i.ebt = getelementptr inbounds nuw i8, ptr %i.ebr, i64 32
  %i.ebu = getelementptr inbounds nuw i8, ptr %i.ebr, i64 64
  %i.ebv = getelementptr inbounds nuw i8, ptr %i.ebr, i64 96
  store <8 x i32> %i.ebs, ptr %i.ebr, align 4, !tbaa !220
  store <8 x i32> %.reass2753, ptr %i.ebt, align 4, !tbaa !220
  store <8 x i32> %.reass2755, ptr %i.ebu, align 4, !tbaa !220
  store <8 x i32> %.reass2757, ptr %i.ebv, align 4, !tbaa !220
  %index.next2152 = add nuw i64 %index2143, 32    ; 2 uses
  %vec.ind.next2154 = add <8 x i32> %vec.ind2145, splat (i32 32)
  %i.ebw = icmp eq i64 %index.next2152, %n.vec2137
  br i1 %i.ebw, label %middle.block2155, label %vector.body2142, !llvm.loop !732

middle.block2155:                                 ; preds = %vector.body2142
  %cmp.n2156 = icmp eq i64 %n.vec2137, %i.ebj
  br i1 %cmp.n2156, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i, label %vec.epilog.iter.check2158

vec.epilog.iter.check2158:                        ; preds = %middle.block2155
  %min.epilog.iters.check2160 = icmp eq i64 %i.ebk, 0
  br i1 %min.epilog.iters.check2160, label %.lr.ph.i17.i.i.i.i.i.preheader, label %vec.epilog.ph2161, !prof !404

vec.epilog.ph2161:                                ; preds = %vector.main.loop.iter.check2134, %vec.epilog.iter.check2158
  %vec.epilog.resume.val2162 = phi i64 [ %n.vec2137, %vec.epilog.iter.check2158 ], [ 0, %vector.main.loop.iter.check2134 ] ; 2 uses
  %n.vec2163 = and i64 %i.ebj, 2147483640         ; 3 uses
  %broadcast.splatinsert2164 = insertelement <8 x i32> poison, i32 %i.ebd, i64 0
  %broadcast.splat2165 = shufflevector <8 x i32> %broadcast.splatinsert2164, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert2166 = insertelement <8 x i32> poison, i32 %i.ebh, i64 0
  %broadcast.splat2167 = shufflevector <8 x i32> %broadcast.splatinsert2166, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ebx = trunc nuw nsw i64 %vec.epilog.resume.val2162 to i32
  %broadcast.splatinsert2168 = insertelement <8 x i32> poison, i32 %i.ebx, i64 0
  %broadcast.splat2169 = shufflevector <8 x i32> %broadcast.splatinsert2168, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction2170 = or disjoint <8 x i32> %broadcast.splat2169, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body2171

vec.epilog.vector.body2171:                       ; preds = %vec.epilog.vector.body2171, %vec.epilog.ph2161
  %index2172 = phi i64 [ %vec.epilog.resume.val2162, %vec.epilog.ph2161 ], [ %index.next2175, %vec.epilog.vector.body2171 ] ; 2 uses
  %vec.ind2174 = phi <8 x i32> [ %induction2170, %vec.epilog.ph2161 ], [ %vec.ind.next2177, %vec.epilog.vector.body2171 ] ; 3 uses
  %i.eby = add nsw i64 %index2172, %i.ebi         ; 2 uses
  %i.ebz = getelementptr inbounds [4 x i8], ptr %i.dld, i64 %i.eby
  %i.eca = add <8 x i32> %broadcast.splat2167, %vec.ind2174
  store <8 x i32> %i.eca, ptr %i.ebz, align 4, !tbaa !220
  %i.ecb = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.eby
  %i.ecc = add <8 x i32> %broadcast.splat2165, %vec.ind2174
  store <8 x i32> %i.ecc, ptr %i.ecb, align 4, !tbaa !220
  %index.next2175 = add nuw i64 %index2172, 8     ; 2 uses
  %vec.ind.next2177 = add <8 x i32> %vec.ind2174, splat (i32 8)
  %i.ecd = icmp eq i64 %index.next2175, %n.vec2163
  br i1 %i.ecd, label %vec.epilog.middle.block2178, label %vec.epilog.vector.body2171, !llvm.loop !733

vec.epilog.middle.block2178:                      ; preds = %vec.epilog.vector.body2171
  %cmp.n2179 = icmp eq i64 %n.vec2163, %i.ebj
  br i1 %cmp.n2179, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.preheader

.lr.ph.i17.i.i.i.i.i.preheader:                   ; preds = %iter.check2157, %vec.epilog.iter.check2158, %vec.epilog.middle.block2178
  %indvars.iv1498.ph = phi i64 [ 0, %iter.check2157 ], [ %n.vec2137, %vec.epilog.iter.check2158 ], [ %n.vec2163, %vec.epilog.middle.block2178 ] ; 6 uses
  %xtraiter2626 = and i64 %i.ebj, 1
  %lcmp.mod2627.not = icmp eq i64 %xtraiter2626, 0
  br i1 %lcmp.mod2627.not, label %.lr.ph.i17.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i17.i.i.i.i.i.preheader
  %i.ece = add nsw i64 %indvars.iv1498.ph, %i.ebi ; 2 uses
  %i.ecf = getelementptr inbounds [4 x i8], ptr %i.dld, i64 %i.ece
  %i.ecg = trunc nuw nsw i64 %indvars.iv1498.ph to i32
  %i.ech = add i32 %i.ebh, %i.ecg
  store i32 %i.ech, ptr %i.ecf, align 4, !tbaa !220
  %i.eci = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.ece
  %i.ecj = trunc nuw nsw i64 %indvars.iv1498.ph to i32
  %i.eck = add i32 %i.ebd, %i.ecj
  store i32 %i.eck, ptr %i.eci, align 4, !tbaa !220
  %indvars.iv.next1499.prol = or disjoint i64 %indvars.iv1498.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i17.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.preheader
  %indvars.iv1498.unr = phi i64 [ %indvars.iv1498.ph, %.lr.ph.i17.i.i.i.i.i.preheader ], [ %indvars.iv.next1499.prol, %.lr.ph.i17.i.i.i.i.i.prol ]
  %i.ecl = add nsw i64 %i.ebj, -1
  %i.ecm = icmp eq i64 %indvars.iv1498.ph, %i.ecl
  br i1 %i.ecm, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i:                             ; preds = %.lr.ph.i17.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i
  %indvars.iv1498 = phi i64 [ %indvars.iv.next1499.1, %.lr.ph.i17.i.i.i.i.i ], [ %indvars.iv1498.unr, %.lr.ph.i17.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.ecn = add nsw i64 %indvars.iv1498, %i.ebi    ; 2 uses
  %i.eco = getelementptr inbounds [4 x i8], ptr %i.dld, i64 %i.ecn
  %i.ecp = trunc i64 %indvars.iv1498 to i32
  %i.ecq = add i32 %i.ebh, %i.ecp
  store i32 %i.ecq, ptr %i.eco, align 4, !tbaa !220
  %i.ecr = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.ecn
  %i.ecs = trunc i64 %indvars.iv1498 to i32
  %i.ect = add i32 %i.ebd, %i.ecs
  store i32 %i.ect, ptr %i.ecr, align 4, !tbaa !220
  %indvars.iv.next1499 = add nuw nsw i64 %indvars.iv1498, 1 ; 3 uses
  %i.ecu = add nsw i64 %indvars.iv.next1499, %i.ebi ; 2 uses
  %i.ecv = getelementptr inbounds [4 x i8], ptr %i.dld, i64 %i.ecu
  %i.ecw = trunc i64 %indvars.iv.next1499 to i32
  %i.ecx = add i32 %i.ebh, %i.ecw
  store i32 %i.ecx, ptr %i.ecv, align 4, !tbaa !220
  %i.ecy = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.ecu
  %i.ecz = trunc i64 %indvars.iv.next1499 to i32
  %i.eda = add i32 %i.ebd, %i.ecz
  store i32 %i.eda, ptr %i.ecy, align 4, !tbaa !220
  %indvars.iv.next1499.1 = add nuw nsw i64 %indvars.iv1498, 2 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.1 = icmp eq i64 %indvars.iv.next1499.1, %i.ebj
  br i1 %exitcond.not.i19.i.i.i.i.i.1, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i, !llvm.loop !734

_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i: ; preds = %.lr.ph.i17.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i, %middle.block2155, %vec.epilog.middle.block2178, %bb.xs
  %i.edb = add nsw i32 %i.eav, %.71183            ; 2 uses
  %i.edc = add i64 %.01523.i.i.i.i.i, -1
  %i.edd = and i64 %i.edc, %.01523.i.i.i.i.i      ; 2 uses
  %.not.i51.i.i.i.i = icmp eq i64 %i.edd, 0
  br i1 %.not.i51.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %bb.xs, !llvm.loop !735

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i, %bb.xq, %.lr.ph.i.i.i.i841
  %.31179 = phi i32 [ %.21178, %.lr.ph.i.i.i.i841 ], [ %.21178, %bb.xq ], [ %i.edb, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i ], [ %i.eam, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i ] ; 2 uses
  %i.ede = add nsw i32 %i.dxj, 64                 ; 2 uses
  %.not33.i.i.i.i842 = icmp sgt i32 %i.ede, %i.dpt
  br i1 %.not33.i.i.i.i842, label %._crit_edge.i.i.i.i843, label %.lr.ph.i.i.i.i841, !llvm.loop !736

bb.xt:                                            ; preds = %._crit_edge.i.i.i.i843
  %i.edf = ashr i32 %i.dpp, 6
  %i.edg = and i32 %i.dpp, 63
  %i.edh = zext nneg i32 %i.edg to i64
  %notmask.i52.i.i.i.i = shl nsw i64 -1, %i.edh
  %i.edi = xor i64 %notmask.i52.i.i.i.i, -1
  %i.edj = sext i32 %i.edf to i64
  %i.edk = getelementptr inbounds [8 x i8], ptr %i.dpl, i64 %i.edj
  %i.edl = load i64, ptr %i.edk, align 8, !tbaa !275
  %i.edm = and i64 %i.edl, %i.edi                 ; 2 uses
  %.not.i53.i.i.i.i845 = icmp eq i64 %i.edm, 0
  br i1 %.not.i53.i.i.i.i845, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit, label %.preheader.i54.i.i.i.i

.preheader.i54.i.i.i.i:                           ; preds = %bb.xt
  %i.edn = load ptr, ptr %i.p, align 8, !tbaa !382 ; 2 uses
  %i.edo = load ptr, ptr %i.n, align 8, !tbaa !397
  %i.edp = sext i32 %i.dpt to i64
  %i.edq = getelementptr inbounds nuw i8, ptr %i.edn, i64 120
  %i.edr = load ptr, ptr %i.edq, align 8, !tbaa !380
  %i.eds = getelementptr inbounds nuw i8, ptr %i.edn, i64 104
  %i.edt = load ptr, ptr %i.eds, align 8, !tbaa !379
  %i.edu = load ptr, ptr %i.q, align 8, !tbaa !382
  %i.edv = load ptr, ptr %i.o, align 8, !tbaa !397
  %i.edw = getelementptr inbounds nuw i8, ptr %i.edu, i64 104
  %i.edx = load ptr, ptr %i.edw, align 8, !tbaa !379
  %i.edy = sub i64 %i.dle, %i.dku
  %diff.check2237 = icmp ugt i64 %i.edy, -128
  br label %bb.xu

bb.xu:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i, %.preheader.i54.i.i.i.i
  %.51181 = phi i32 [ %.41180, %.preheader.i54.i.i.i.i ], [ %i.egl, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i ] ; 3 uses
  %.011.i56.i.i.i.i = phi i64 [ %i.edm, %.preheader.i54.i.i.i.i ], [ %i.egn, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i ] ; 3 uses
  %i.edz = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i56.i.i.i.i, i1 true)
  %i.eea = or disjoint i64 %i.edz, %i.edp         ; 4 uses
  %i.eeb = getelementptr inbounds [4 x i8], ptr %i.edo, i64 %i.eea ; 2 uses
  %i.eec = load i32, ptr %i.eeb, align 4, !tbaa !220
  %i.eed = sext i32 %i.eec to i64
  %i.eee = getelementptr inbounds [4 x i8], ptr %i.edr, i64 %i.eed
  %i.eef = load i32, ptr %i.eee, align 4, !tbaa !220 ; 6 uses
  %i.eeg = getelementptr inbounds [4 x i8], ptr %i.djy, i64 %i.eea
  store i32 %.51181, ptr %i.eeg, align 4, !tbaa !220
  %i.eeh = getelementptr inbounds [4 x i8], ptr %i.dkj, i64 %i.eea
  store i32 %i.eef, ptr %i.eeh, align 4, !tbaa !220
  %i.eei = icmp sgt i32 %i.eef, 0
  br i1 %i.eei, label %iter.check2261, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i

iter.check2261:                                   ; preds = %bb.xu
  %i.eej = getelementptr inbounds [4 x i8], ptr %i.edv, i64 %i.eea
  %i.eek = load i32, ptr %i.eej, align 4, !tbaa !220
  %i.eel = sext i32 %i.eek to i64
  %i.eem = getelementptr inbounds [4 x i8], ptr %i.edx, i64 %i.eel
  %i.een = load i32, ptr %i.eem, align 4, !tbaa !220 ; 5 uses
  %i.eeo = load i32, ptr %i.eeb, align 4, !tbaa !220
  %i.eep = sext i32 %i.eeo to i64
  %i.eeq = getelementptr inbounds [4 x i8], ptr %i.edt, i64 %i.eep
  %i.eer = load i32, ptr %i.eeq, align 4, !tbaa !220 ; 5 uses
  %i.ees = sext i32 %.51181 to i64                ; 5 uses
  %i.eet = zext nneg i32 %i.eef to i64            ; 8 uses
  %min.iters.check2235 = icmp ult i32 %i.eef, 8
  %or.cond2466 = select i1 %min.iters.check2235, i1 true, i1 %diff.check2237
  br i1 %or.cond2466, label %.lr.ph.i.i59.i.i.i.i.preheader, label %vector.main.loop.iter.check2238

vector.main.loop.iter.check2238:                  ; preds = %iter.check2261
  %min.iters.check2239 = icmp ult i32 %i.eef, 32
  br i1 %min.iters.check2239, label %vec.epilog.ph2265, label %vector.ph2240

vector.ph2240:                                    ; preds = %vector.main.loop.iter.check2238
  %i.eeu = and i64 %i.eet, 24
  %n.vec2241.a = and i64 %i.eet, 2147483616       ; 4 uses
  %broadcast.splatinsert2242.a = insertelement <8 x i32> poison, i32 %i.een, i64 0
  %broadcast.splat2243.a = shufflevector <8 x i32> %broadcast.splatinsert2242.a, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert2244.a = insertelement <8 x i32> poison, i32 %i.eer, i64 0
  %broadcast.splat2245.a = shufflevector <8 x i32> %broadcast.splatinsert2244.a, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op2758 = add <8 x i32> splat (i32 8), %broadcast.splat2245.a
  %invariant.op2760 = add <8 x i32> splat (i32 16), %broadcast.splat2245.a
  %invariant.op2762 = add <8 x i32> splat (i32 24), %broadcast.splat2245.a
  %invariant.op2764 = add <8 x i32> splat (i32 8), %broadcast.splat2243.a
  %invariant.op2766 = add <8 x i32> splat (i32 16), %broadcast.splat2243.a
  %invariant.op2768 = add <8 x i32> splat (i32 24), %broadcast.splat2243.a
  br label %vector.body2246

vector.body2246:                                  ; preds = %vector.ph2240, %vector.body2246
  %index2247 = phi i64 [ 0, %vector.ph2240 ], [ %index.next2256, %vector.body2246 ] ; 2 uses
  %vec.ind2249 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2240 ], [ %vec.ind.next2258, %vector.body2246 ] ; 9 uses
  %i.eev = add nsw i64 %index2247, %i.ees         ; 2 uses
  %i.eew = getelementptr inbounds [4 x i8], ptr %i.dld, i64 %i.eev ; 4 uses
  %i.eex = add <8 x i32> %broadcast.splat2245.a, %vec.ind2249
  %.reass2759 = add <8 x i32> %vec.ind2249, %invariant.op2758
  %.reass2761 = add <8 x i32> %vec.ind2249, %invariant.op2760
  %.reass2763 = add <8 x i32> %vec.ind2249, %invariant.op2762
  %i.eey = getelementptr inbounds nuw i8, ptr %i.eew, i64 32
  %i.eez = getelementptr inbounds nuw i8, ptr %i.eew, i64 64
  %i.efa = getelementptr inbounds nuw i8, ptr %i.eew, i64 96
  store <8 x i32> %i.eex, ptr %i.eew, align 4, !tbaa !220
  store <8 x i32> %.reass2759, ptr %i.eey, align 4, !tbaa !220
  store <8 x i32> %.reass2761, ptr %i.eez, align 4, !tbaa !220
  store <8 x i32> %.reass2763, ptr %i.efa, align 4, !tbaa !220
  %i.efb = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.eev ; 4 uses
  %i.efc = add <8 x i32> %broadcast.splat2243.a, %vec.ind2249
  %.reass2765 = add <8 x i32> %vec.ind2249, %invariant.op2764
  %.reass2767 = add <8 x i32> %vec.ind2249, %invariant.op2766
  %.reass2769 = add <8 x i32> %vec.ind2249, %invariant.op2768
  %i.efd = getelementptr inbounds nuw i8, ptr %i.efb, i64 32
  %i.efe = getelementptr inbounds nuw i8, ptr %i.efb, i64 64
  %i.eff = getelementptr inbounds nuw i8, ptr %i.efb, i64 96
  store <8 x i32> %i.efc, ptr %i.efb, align 4, !tbaa !220
  store <8 x i32> %.reass2765, ptr %i.efd, align 4, !tbaa !220
  store <8 x i32> %.reass2767, ptr %i.efe, align 4, !tbaa !220
  store <8 x i32> %.reass2769, ptr %i.eff, align 4, !tbaa !220
  %index.next2256 = add nuw i64 %index2247, 32    ; 2 uses
  %vec.ind.next2258 = add <8 x i32> %vec.ind2249, splat (i32 32)
  %i.efg = icmp eq i64 %index.next2256, %n.vec2241.a
  br i1 %i.efg, label %middle.block2259, label %vector.body2246, !llvm.loop !737

middle.block2259:                                 ; preds = %vector.body2246
  %cmp.n2260 = icmp eq i64 %n.vec2241.a, %i.eet
  br i1 %cmp.n2260, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i, label %vec.epilog.iter.check2262

vec.epilog.iter.check2262:                        ; preds = %middle.block2259
  %min.epilog.iters.check2264 = icmp eq i64 %i.eeu, 0
  br i1 %min.epilog.iters.check2264, label %.lr.ph.i.i59.i.i.i.i.preheader, label %vec.epilog.ph2265, !prof !404

vec.epilog.ph2265:                                ; preds = %vector.main.loop.iter.check2238, %vec.epilog.iter.check2262
  %vec.epilog.resume.val2266 = phi i64 [ %n.vec2241.a, %vec.epilog.iter.check2262 ], [ 0, %vector.main.loop.iter.check2238 ] ; 2 uses
  %n.vec2267 = and i64 %i.eet, 2147483640         ; 3 uses
  %broadcast.splatinsert2268 = insertelement <8 x i32> poison, i32 %i.een, i64 0
  %broadcast.splat2269 = shufflevector <8 x i32> %broadcast.splatinsert2268, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert2270 = insertelement <8 x i32> poison, i32 %i.eer, i64 0
  %broadcast.splat2271 = shufflevector <8 x i32> %broadcast.splatinsert2270, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.efh = trunc nuw nsw i64 %vec.epilog.resume.val2266 to i32
  %broadcast.splatinsert2272 = insertelement <8 x i32> poison, i32 %i.efh, i64 0
  %broadcast.splat2273 = shufflevector <8 x i32> %broadcast.splatinsert2272, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction2274 = or disjoint <8 x i32> %broadcast.splat2273, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body2275

vec.epilog.vector.body2275:                       ; preds = %vec.epilog.vector.body2275, %vec.epilog.ph2265
  %index2276 = phi i64 [ %vec.epilog.resume.val2266, %vec.epilog.ph2265 ], [ %index.next2279, %vec.epilog.vector.body2275 ] ; 2 uses
  %vec.ind2278 = phi <8 x i32> [ %induction2274, %vec.epilog.ph2265 ], [ %vec.ind.next2281, %vec.epilog.vector.body2275 ] ; 3 uses
  %i.efi = add nsw i64 %index2276, %i.ees         ; 2 uses
  %i.efj = getelementptr inbounds [4 x i8], ptr %i.dld, i64 %i.efi
  %i.efk = add <8 x i32> %broadcast.splat2271, %vec.ind2278
  store <8 x i32> %i.efk, ptr %i.efj, align 4, !tbaa !220
  %i.efl = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.efi
  %i.efm = add <8 x i32> %broadcast.splat2269, %vec.ind2278
  store <8 x i32> %i.efm, ptr %i.efl, align 4, !tbaa !220
  %index.next2279 = add nuw i64 %index2276, 8     ; 2 uses
  %vec.ind.next2281 = add <8 x i32> %vec.ind2278, splat (i32 8)
  %i.efn = icmp eq i64 %index.next2279, %n.vec2267
  br i1 %i.efn, label %vec.epilog.middle.block2282, label %vec.epilog.vector.body2275, !llvm.loop !738

vec.epilog.middle.block2282:                      ; preds = %vec.epilog.vector.body2275
  %cmp.n2283 = icmp eq i64 %n.vec2267, %i.eet
  br i1 %cmp.n2283, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i, label %.lr.ph.i.i59.i.i.i.i.preheader

.lr.ph.i.i59.i.i.i.i.preheader:                   ; preds = %iter.check2261, %vec.epilog.iter.check2262, %vec.epilog.middle.block2282
  %indvars.iv1501.ph = phi i64 [ 0, %iter.check2261 ], [ %n.vec2241.a, %vec.epilog.iter.check2262 ], [ %n.vec2267, %vec.epilog.middle.block2282 ] ; 6 uses
  %xtraiter2628 = and i64 %i.eet, 1
  %lcmp.mod2629.not = icmp eq i64 %xtraiter2628, 0
  br i1 %lcmp.mod2629.not, label %.lr.ph.i.i59.i.i.i.i.prol.loopexit, label %.lr.ph.i.i59.i.i.i.i.prol

.lr.ph.i.i59.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i59.i.i.i.i.preheader
  %i.efo = add nsw i64 %indvars.iv1501.ph, %i.ees ; 2 uses
  %i.efp = getelementptr inbounds [4 x i8], ptr %i.dld, i64 %i.efo
  %i.efq = trunc nuw nsw i64 %indvars.iv1501.ph to i32
  %i.efr = add i32 %i.eer, %i.efq
  store i32 %i.efr, ptr %i.efp, align 4, !tbaa !220
  %i.efs = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.efo
  %i.eft = trunc nuw nsw i64 %indvars.iv1501.ph to i32
  %i.efu = add i32 %i.een, %i.eft
  store i32 %i.efu, ptr %i.efs, align 4, !tbaa !220
  %indvars.iv.next1502.prol = or disjoint i64 %indvars.iv1501.ph, 1
  br label %.lr.ph.i.i59.i.i.i.i.prol.loopexit

.lr.ph.i.i59.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i59.i.i.i.i.prol, %.lr.ph.i.i59.i.i.i.i.preheader
  %indvars.iv1501.unr = phi i64 [ %indvars.iv1501.ph, %.lr.ph.i.i59.i.i.i.i.preheader ], [ %indvars.iv.next1502.prol, %.lr.ph.i.i59.i.i.i.i.prol ]
  %i.efv = add nsw i64 %i.eet, -1
  %i.efw = icmp eq i64 %indvars.iv1501.ph, %i.efv
  br i1 %i.efw, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i, label %.lr.ph.i.i59.i.i.i.i

.lr.ph.i.i59.i.i.i.i:                             ; preds = %.lr.ph.i.i59.i.i.i.i.prol.loopexit, %.lr.ph.i.i59.i.i.i.i
  %indvars.iv1501 = phi i64 [ %indvars.iv.next1502.1, %.lr.ph.i.i59.i.i.i.i ], [ %indvars.iv1501.unr, %.lr.ph.i.i59.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.efx = add nsw i64 %indvars.iv1501, %i.ees    ; 2 uses
  %i.efy = getelementptr inbounds [4 x i8], ptr %i.dld, i64 %i.efx
  %i.efz = trunc i64 %indvars.iv1501 to i32
  %i.ega = add i32 %i.eer, %i.efz
  store i32 %i.ega, ptr %i.efy, align 4, !tbaa !220
  %i.egb = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.efx
  %i.egc = trunc i64 %indvars.iv1501 to i32
  %i.egd = add i32 %i.een, %i.egc
  store i32 %i.egd, ptr %i.egb, align 4, !tbaa !220
  %indvars.iv.next1502 = add nuw nsw i64 %indvars.iv1501, 1 ; 3 uses
  %i.ege = add nsw i64 %indvars.iv.next1502, %i.ees ; 2 uses
  %i.egf = getelementptr inbounds [4 x i8], ptr %i.dld, i64 %i.ege
  %i.egg = trunc i64 %indvars.iv.next1502 to i32
  %i.egh = add i32 %i.eer, %i.egg
  store i32 %i.egh, ptr %i.egf, align 4, !tbaa !220
  %i.egi = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.ege
  %i.egj = trunc i64 %indvars.iv.next1502 to i32
  %i.egk = add i32 %i.een, %i.egj
  store i32 %i.egk, ptr %i.egi, align 4, !tbaa !220
  %indvars.iv.next1502.1 = add nuw nsw i64 %indvars.iv1501, 2 ; 2 uses
  %exitcond.not.i.i61.i.i.i.i.1 = icmp eq i64 %indvars.iv.next1502.1, %i.eet
  br i1 %exitcond.not.i.i61.i.i.i.i.1, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i, label %.lr.ph.i.i59.i.i.i.i, !llvm.loop !739

_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i: ; preds = %.lr.ph.i.i59.i.i.i.i.prol.loopexit, %.lr.ph.i.i59.i.i.i.i, %middle.block2259, %vec.epilog.middle.block2282, %bb.xu
  %i.egl = add nsw i32 %i.eef, %.51181
  %i.egm = add nuw i64 %.011.i56.i.i.i.i, 9223372036854775807
  %i.egn = and i64 %i.egm, %.011.i56.i.i.i.i      ; 2 uses
  %.not10.i58.i.i.i.i = icmp eq i64 %i.egn, 0
  br i1 %.not10.i58.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit, label %bb.xu, !llvm.loop !724

_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i, %bb.xt, %._crit_edge.i.i.i.i843, %bb.xl, %bb.xj, %bb.xh
  call void @llvm.lifetime.start.p0(ptr nonnull %117) #23
  store ptr null, ptr %118, align 8, !tbaa !338
  store ptr %i.dky, ptr %119, align 8, !tbaa !338
  %.not.i873 = icmp eq ptr %i.dky, null
  br i1 %.not.i873, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit874, label %bb.xv

bb.xv:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit
  %i.ego = getelementptr inbounds nuw i8, ptr %i.dky, i64 40
  %i.egp = atomicrmw add ptr %i.ego, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit874

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit874: ; preds = %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit, %bb.xv
  %i.egq = load ptr, ptr %i.p, align 8, !tbaa !382 ; 2 uses
  %i.egr = getelementptr inbounds nuw i8, ptr %i.egq, i64 128
  %i.egs = getelementptr inbounds nuw i8, ptr %120, i64 8
  %i.egt = getelementptr inbounds nuw i8, ptr %i.egq, i64 136
  %i.egu = load ptr, ptr %i.egt, align 8, !tbaa !218 ; 2 uses
  %i.egv = load <2 x ptr>, ptr %i.egr, align 8, !tbaa !219
  store <2 x ptr> %i.egv, ptr %120, align 16, !tbaa !219
  %.not.i.i.i875 = icmp eq ptr %i.egu, null
  br i1 %.not.i.i.i875, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit877, label %bb.xw

bb.xw:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit874
  %i.egw = getelementptr inbounds nuw i8, ptr %i.egu, i64 8 ; 3 uses
  %i.egx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !208
  %.not.i.i.i.i876 = icmp eq i8 %i.egx, 0
  br i1 %.not.i.i.i.i876, label %bb.xy, label %bb.xx

bb.xx:                                            ; preds = %bb.xw
  %i.egy = load i32, ptr %i.egw, align 4, !tbaa !220
  %i.egz = add nsw i32 %i.egy, 1
  store i32 %i.egz, ptr %i.egw, align 4, !tbaa !220
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit877

bb.xy:                                            ; preds = %bb.xw
  %i.eha = atomicrmw volatile add ptr %i.egw, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit877

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit877: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit874, %bb.xx, %bb.xy
  invoke void @_ZN8facebook5velox10BaseVector16wrapInDictionaryEN5boost13intrusive_ptrINS0_6BufferEEES5_iSt10shared_ptrIS1_Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.95") align 8 %117, ptr noundef nonnull align 8 %118, ptr noundef nonnull align 8 %119, i32 noundef %.41175, ptr noundef nonnull align 8 %120, i1 noundef zeroext false)
          to label %bb.xz unwind label %bb.aba

bb.xz:                                            ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit877
  %i.ehb = load ptr, ptr %i.egs, align 8, !tbaa !218 ; 8 uses
  %.not.i.i878 = icmp eq ptr %i.ehb, null
  br i1 %.not.i.i878, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit882, label %bb.ya

bb.ya:                                            ; preds = %bb.xz
  %i.ehc = getelementptr inbounds nuw i8, ptr %i.ehb, i64 8 ; 4 uses
  %i.ehd = load atomic i64, ptr %i.ehc acquire, align 8 ; 2 uses
  %i.ehe = icmp eq i64 %i.ehd, 4294967297
  %i.ehf = trunc i64 %i.ehd to i32                ; 2 uses
  br i1 %i.ehe, label %bb.yb, label %bb.yc

bb.yb:                                            ; preds = %bb.ya
  store i32 0, ptr %i.ehc, align 8, !tbaa !223
  %i.ehg = getelementptr inbounds nuw i8, ptr %i.ehb, i64 12
  store i32 0, ptr %i.ehg, align 4, !tbaa !224
  %i.ehh = load ptr, ptr %i.ehb, align 8, !tbaa !226
  %i.ehi = getelementptr inbounds nuw i8, ptr %i.ehh, i64 16
  %i.ehj = load ptr, ptr %i.ehi, align 8
  call void %i.ehj(ptr noundef nonnull align 8 dereferenceable(16) %i.ehb) #23, !inline_history !8
  %i.ehk = load ptr, ptr %i.ehb, align 8, !tbaa !226
  %i.ehl = getelementptr inbounds nuw i8, ptr %i.ehk, i64 24
  %i.ehm = load ptr, ptr %i.ehl, align 8
  call void %i.ehm(ptr noundef nonnull align 8 dereferenceable(16) %i.ehb) #23, !inline_history !8
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit882

bb.yc:                                            ; preds = %bb.ya
  %i.ehn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !208
  %.not.i.i.i879 = icmp eq i8 %i.ehn, 0
  br i1 %.not.i.i.i879, label %bb.ye, label %bb.yd

bb.yd:                                            ; preds = %bb.yc
  %i.eho = add nsw i32 %i.ehf, -1
  store i32 %i.eho, ptr %i.ehc, align 8, !tbaa !220
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i880

bb.ye:                                            ; preds = %bb.yc
  %i.ehp = atomicrmw volatile add ptr %i.ehc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i880

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i880: ; preds = %bb.ye, %bb.yd
  %.0.i.i.i.i881 = phi i32 [ %i.ehf, %bb.yd ], [ %i.ehp, %bb.ye ]
  %i.ehq = icmp eq i32 %.0.i.i.i.i881, 1
  br i1 %i.ehq, label %bb.yf, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit882, !prof !227

bb.yf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i880
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ehb) #23
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit882

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit882: ; preds = %bb.xz, %bb.yb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i880, %bb.yf
  %i.ehr = load ptr, ptr %119, align 8, !tbaa !338 ; 7 uses
  %.not.i883 = icmp eq ptr %i.ehr, null
  br i1 %.not.i883, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit888, label %bb.yg

bb.yg:                                            ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit882
  %i.ehs = getelementptr inbounds nuw i8, ptr %i.ehr, i64 40
  %i.eht = atomicrmw add ptr %i.ehs, i32 -1 acq_rel, align 4
  %i.ehu = icmp eq i32 %i.eht, 1
  br i1 %i.ehu, label %.sink.split.i.i884, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit888

.sink.split.i.i884:                               ; preds = %bb.yg
  %i.ehv = load ptr, ptr %i.ehr, align 8, !tbaa !226
  %i.ehw = getelementptr inbounds nuw i8, ptr %i.ehv, i64 64
  %i.ehx = load ptr, ptr %i.ehw, align 8
  invoke void %i.ehx(ptr noundef nonnull align 8 dereferenceable(64) %i.ehr)
          to label %.noexc.i885 unwind label %bb.yh, !inline_history !9

.noexc.i885:                                      ; preds = %.sink.split.i.i884
  %i.ehy = getelementptr inbounds nuw i8, ptr %i.ehr, i64 8
  %i.ehz = load ptr, ptr %i.ehy, align 8, !tbaa !343
  %.not.i.i886 = icmp eq ptr %i.ehz, null
  %i.eia = load ptr, ptr %i.ehr, align 8, !tbaa !226
  %..i.i887 = select i1 %.not.i.i886, i64 8, i64 48
  %i.eib = getelementptr inbounds nuw i8, ptr %i.eia, i64 %..i.i887
  %i.eic = load ptr, ptr %i.eib, align 8
  invoke void %i.eic(ptr noundef nonnull align 8 dereferenceable(64) %i.ehr)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit888 unwind label %bb.yh, !inline_history !9

bb.yh:                                            ; preds = %.noexc.i885, %.sink.split.i.i884
  %i.eid = landingpad { ptr, i32 }
          catch ptr null
  %i.eie = extractvalue { ptr, i32 } %i.eid, 0
  call void @__clang_call_terminate(ptr %i.eie) #26
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit888: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit882, %bb.yg, %.noexc.i885
  %i.eif = load ptr, ptr %118, align 8, !tbaa !338 ; 7 uses
  %.not.i889 = icmp eq ptr %i.eif, null
  br i1 %.not.i889, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit894, label %bb.yi

bb.yi:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit888
  %i.eig = getelementptr inbounds nuw i8, ptr %i.eif, i64 40
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a
  %i.dil = and i8 %i.dik, 2
  %.not.i797 = icmp eq i8 %i.dil, 0
  br i1 %.not.i797, label %bb.wp, label %bb.wo, !prof !240

bb.wo:                                            ; preds = %bb.wn
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #27
          to label %.noexc798 unwind label %bb.aan

.noexc798:                                        ; preds = %bb.wo
  unreachable

bb.wp:                                            ; preds = %bb.wn
  %i.dim = getelementptr inbounds nuw i8, ptr %i.dii, i64 16
  %i.din = load ptr, ptr %i.dim, align 8, !tbaa !412 ; 31 uses
  %i.dio = ptrtoaddr ptr %i.din to i64            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %113) #23
  %i.dip = load ptr, ptr %4, align 8, !tbaa !293
  %i.diq = load ptr, ptr %i.dip, align 8, !tbaa !315
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !1381
  store i32 0, ptr %6, align 4, !tbaa !208, !noalias !1381
  %i.dir = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i8 1, ptr %i.dir, align 4, !tbaa !330, !noalias !1381
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %113, i64 noundef %i.dig, ptr noundef %i.diq, ptr noundef nonnull align 4 dereferenceable(8) %6, i1 noundef zeroext false)
          to label %bb.wq unwind label %bb.aao

bb.wq:                                            ; preds = %bb.wp
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !1381
  %i.dis = load ptr, ptr %113, align 8, !tbaa !338 ; 5 uses
  %i.dit = getelementptr inbounds nuw i8, ptr %i.dis, i64 44
  %i.diu = load i8, ptr %i.dit, align 4, !tbaa !411
  %i.div = and i8 %i.diu, 2
  %.not.i802 = icmp eq i8 %i.div, 0
  br i1 %.not.i802, label %bb.ws, label %bb.wr, !prof !240

bb.wr:                                            ; preds = %bb.wq
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #27
          to label %.noexc803 unwind label %bb.aap

.noexc803:                                        ; preds = %bb.wr
  unreachable

bb.ws:                                            ; preds = %bb.wq
  %i.diw = getelementptr inbounds nuw i8, ptr %i.dis, i64 16
  %i.dix = load ptr, ptr %i.diw, align 8, !tbaa !412 ; 31 uses
  %i.diy = ptrtoaddr ptr %i.dix to i64            ; 5 uses
  %i.diz = load ptr, ptr %i.gu, align 8, !tbaa !352 ; 11 uses
  %i.dja = getelementptr inbounds nuw i8, ptr %i.diz, i64 36 ; 2 uses
  %i.djb = getelementptr inbounds nuw i8, ptr %i.diz, i64 37
  %i.djc = load i8, ptr %i.djb, align 1, !tbaa !351, !range !241, !noundef !242
  %i.djd = trunc nuw i8 %i.djc to i1
  br i1 %i.djd, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i852, label %bb.wt

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i852: ; preds = %bb.ws
  %.0.in.pre.i.i853 = load i8, ptr %i.dja, align 1, !tbaa !232, !range !241
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i807

bb.wt:                                            ; preds = %bb.ws
  %i.dje = getelementptr inbounds nuw i8, ptr %i.diz, i64 28
  %i.djf = load i32, ptr %i.dje, align 4, !tbaa !383
  %i.djg = icmp eq i32 %i.djf, 0
  br i1 %i.djg, label %bb.wu, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i805

bb.wu:                                            ; preds = %bb.wt
  %i.djh = getelementptr inbounds nuw i8, ptr %i.diz, i64 32
  %i.dji = load i32, ptr %i.djh, align 8, !tbaa !328 ; 6 uses
  %i.djj = getelementptr inbounds nuw i8, ptr %i.diz, i64 24
  %i.djk = load i32, ptr %i.djj, align 8, !tbaa !384
  %i.djl = icmp eq i32 %i.dji, %i.djk
  br i1 %i.djl, label %bb.wv, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i805

bb.wv:                                            ; preds = %bb.wu
  %i.djm = load ptr, ptr %i.diz, align 8, !tbaa !385 ; 2 uses
  %.not.i.i.i844 = icmp sgt i32 %i.dji, 0
  br i1 %.not.i.i.i844, label %bb.ww, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i805

bb.ww:                                            ; preds = %bb.wv
  %i.djn = and i32 %i.dji, 2147483584             ; 3 uses
  %i.djo = zext nneg i32 %i.djn to i64
  %.not37.i.i.not.i.i8461988.not = icmp eq i32 %i.djn, 0
  br i1 %.not37.i.i.not.i.i8461988.not, label %.critedge.i.i.i.i847, label %.lr.ph1990

bb.wx:                                            ; preds = %.lr.ph1990
  %indvars.iv.next.i.i851 = add nuw nsw i64 %indvars.iv.i.i8451989, 64 ; 2 uses
  %.not37.i.i.not.i.i846 = icmp samesign ult i64 %indvars.iv.next.i.i851, %i.djo
  br i1 %.not37.i.i.not.i.i846, label %.lr.ph1990, label %.critedge.i.i.i.i847, !llvm.loop !11

.lr.ph1990:                                       ; preds = %bb.ww, %bb.wx
  %indvars.iv.i.i8451989 = phi i64 [ %indvars.iv.next.i.i851, %bb.wx ], [ 0, %bb.ww ] ; 2 uses
  %i.djp = lshr exact i64 %indvars.iv.i.i8451989, 3
  %i.djq = getelementptr inbounds nuw i8, ptr %i.djm, i64 %i.djp
  %i.djr = load i64, ptr %i.djq, align 8, !tbaa !275
  %i.djs = icmp eq i64 %i.djr, -1
  br i1 %i.djs, label %bb.wx, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i805, !llvm.loop !11

.critedge.i.i.i.i847:                             ; preds = %bb.wx, %bb.ww
  %.not38.i.i.i.i848 = icmp eq i32 %i.dji, %i.djn
  br i1 %.not38.i.i.i.i848, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i805, label %bb.wy

bb.wy:                                            ; preds = %.critedge.i.i.i.i847
  %i.djt = lshr i32 %i.dji, 6
  %i.dju = and i32 %i.dji, 63
  %i.djv = zext nneg i32 %i.dju to i64
  %notmask.i40.i.i.i.i849 = shl nsw i64 -1, %i.djv
  %i.djw = zext nneg i32 %i.djt to i64
  %i.djx = getelementptr inbounds nuw [8 x i8], ptr %i.djm, i64 %i.djw
  %i.djy = load i64, ptr %i.djx, align 8, !tbaa !275
  %.demorgan.i.i850 = or i64 %i.djy, %notmask.i40.i.i.i.i849
  %i.djz = icmp eq i64 %.demorgan.i.i850, -1
  %i.dka = zext i1 %i.djz to i16
  %i.dkb = or disjoint i16 %i.dka, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i805

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i805: ; preds = %.lr.ph1990, %bb.wy, %.critedge.i.i.i.i847, %bb.wv, %bb.wu, %bb.wt
  %.sroa.0.0.insert.ext.i.i806 = phi i16 [ 256, %bb.wu ], [ 256, %bb.wt ], [ 257, %bb.wv ], [ 257, %.critedge.i.i.i.i847 ], [ %i.dkb, %bb.wy ], [ 256, %.lr.ph1990 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i806, ptr %i.dja, align 4
  %i.dkc = trunc i16 %.sroa.0.0.insert.ext.i.i806 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i807

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i807: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i805, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i852
  %.0.in.i.i808 = phi i8 [ %.0.in.pre.i.i853, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i852 ], [ %i.dkc, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i805 ]
  %.0.i.i809 = trunc nuw i8 %.0.in.i.i808 to i1
  br i1 %.0.i.i809, label %bb.wz, label %bb.xb

bb.wz:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i807
  %i.dkd = getelementptr inbounds nuw i8, ptr %i.diz, i64 32
  %i.dke = load i32, ptr %i.dkd, align 8, !tbaa !328 ; 2 uses
  %i.dkf = getelementptr inbounds nuw i8, ptr %i.diz, i64 28
  %i.dkg = load i32, ptr %i.dkf, align 4, !tbaa !383 ; 2 uses
  %i.dkh = icmp slt i32 %i.dkg, %i.dke
  br i1 %i.dkh, label %.lr.ph.i837, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit

.lr.ph.i837:                                      ; preds = %bb.wz
  %i.dki = load ptr, ptr %i.p, align 8, !tbaa !382 ; 2 uses
  %i.dkj = load ptr, ptr %i.n, align 8, !tbaa !397
  %i.dkk = getelementptr inbounds nuw i8, ptr %i.dki, i64 120
  %i.dkl = load ptr, ptr %i.dkk, align 8, !tbaa !380
  %i.dkm = getelementptr inbounds nuw i8, ptr %i.dki, i64 104
  %i.dkn = load ptr, ptr %i.dkm, align 8, !tbaa !379
  %i.dko = load ptr, ptr %i.q, align 8, !tbaa !382
  %i.dkp = load ptr, ptr %i.o, align 8, !tbaa !397
  %i.dkq = getelementptr inbounds nuw i8, ptr %i.dko, i64 104
  %i.dkr = load ptr, ptr %i.dkq, align 8, !tbaa !379
  %i.dks = sext i32 %i.dkg to i64
  %wide.trip.count.i838 = sext i32 %i.dke to i64
  %i.dkt = sub i64 %i.diy, %i.dio
  %diff.check2297 = icmp ugt i64 %i.dkt, -128
  br label %bb.xa

bb.xa:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i, %.lr.ph.i837
  %.91166 = phi i32 [ 0, %.lr.ph.i837 ], [ %i.dne, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i ] ; 3 uses
  %indvars.iv.i840 = phi i64 [ %i.dks, %.lr.ph.i837 ], [ %indvars.iv.next.i841, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i ] ; 5 uses
  %i.dku = getelementptr inbounds [4 x i8], ptr %i.dkj, i64 %indvars.iv.i840 ; 2 uses
  %i.dkv = load i32, ptr %i.dku, align 4, !tbaa !220
  %i.dkw = sext i32 %i.dkv to i64
  %i.dkx = getelementptr inbounds [4 x i8], ptr %i.dkl, i64 %i.dkw
  %i.dky = load i32, ptr %i.dkx, align 4, !tbaa !220 ; 6 uses
  %i.dkz = getelementptr inbounds [4 x i8], ptr %i.dhs, i64 %indvars.iv.i840
  store i32 %.91166, ptr %i.dkz, align 4, !tbaa !220
  %i.dla = getelementptr inbounds [4 x i8], ptr %i.did, i64 %indvars.iv.i840
  store i32 %i.dky, ptr %i.dla, align 4, !tbaa !220
  %i.dlb = icmp sgt i32 %i.dky, 0
  br i1 %i.dlb, label %iter.check2321, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i

iter.check2321:                                   ; preds = %bb.xa
  %i.dlc = getelementptr inbounds [4 x i8], ptr %i.dkp, i64 %indvars.iv.i840
  %i.dld = load i32, ptr %i.dlc, align 4, !tbaa !220
  %i.dle = sext i32 %i.dld to i64
  %i.dlf = getelementptr inbounds [4 x i8], ptr %i.dkr, i64 %i.dle
  %i.dlg = load i32, ptr %i.dlf, align 4, !tbaa !220 ; 5 uses
  %i.dlh = load i32, ptr %i.dku, align 4, !tbaa !220
  %i.dli = sext i32 %i.dlh to i64
  %i.dlj = getelementptr inbounds [4 x i8], ptr %i.dkn, i64 %i.dli
  %i.dlk = load i32, ptr %i.dlj, align 4, !tbaa !220 ; 5 uses
  %i.dll = sext i32 %.91166 to i64                ; 5 uses
  %i.dlm = zext nneg i32 %i.dky to i64            ; 8 uses
  %min.iters.check2295 = icmp ult i32 %i.dky, 8
  %or.cond = select i1 %min.iters.check2295, i1 true, i1 %diff.check2297
  br i1 %or.cond, label %.lr.ph.i.i843.preheader, label %vector.main.loop.iter.check2298

vector.main.loop.iter.check2298:                  ; preds = %iter.check2321
  %min.iters.check2299 = icmp ult i32 %i.dky, 32
  br i1 %min.iters.check2299, label %vec.epilog.ph2325, label %vector.ph2300

vector.ph2300:                                    ; preds = %vector.main.loop.iter.check2298
  %i.dln = and i64 %i.dlm, 24
  %n.vec2301 = and i64 %i.dlm, 2147483616         ; 4 uses
  %broadcast.splatinsert2302 = insertelement <8 x i32> poison, i32 %i.dlg, i64 0
  %broadcast.splat2303 = shufflevector <8 x i32> %broadcast.splatinsert2302, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert2304 = insertelement <8 x i32> poison, i32 %i.dlk, i64 0
  %broadcast.splat2305 = shufflevector <8 x i32> %broadcast.splatinsert2304, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op2729 = add <8 x i32> splat (i32 8), %broadcast.splat2305
  %invariant.op2731 = add <8 x i32> splat (i32 16), %broadcast.splat2305
  %invariant.op2733 = add <8 x i32> splat (i32 24), %broadcast.splat2305
  %invariant.op2735 = add <8 x i32> splat (i32 8), %broadcast.splat2303
  %invariant.op2737 = add <8 x i32> splat (i32 16), %broadcast.splat2303
  %invariant.op2739 = add <8 x i32> splat (i32 24), %broadcast.splat2303
  br label %vector.body2306

vector.body2306:                                  ; preds = %vector.ph2300, %vector.body2306
  %index2307 = phi i64 [ 0, %vector.ph2300 ], [ %index.next2316, %vector.body2306 ] ; 2 uses
  %vec.ind2309 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2300 ], [ %vec.ind.next2318, %vector.body2306 ] ; 9 uses
  %i.dlo = add nsw i64 %index2307, %i.dll         ; 2 uses
  %i.dlp = getelementptr inbounds [4 x i8], ptr %i.dix, i64 %i.dlo ; 4 uses
  %i.dlq = add <8 x i32> %broadcast.splat2305, %vec.ind2309
  %.reass2730 = add <8 x i32> %vec.ind2309, %invariant.op2729
  %.reass2732 = add <8 x i32> %vec.ind2309, %invariant.op2731
  %.reass2734 = add <8 x i32> %vec.ind2309, %invariant.op2733
  %i.dlr = getelementptr inbounds nuw i8, ptr %i.dlp, i64 32
  %i.dls = getelementptr inbounds nuw i8, ptr %i.dlp, i64 64
  %i.dlt = getelementptr inbounds nuw i8, ptr %i.dlp, i64 96
  store <8 x i32> %i.dlq, ptr %i.dlp, align 4, !tbaa !220
  store <8 x i32> %.reass2730, ptr %i.dlr, align 4, !tbaa !220
  store <8 x i32> %.reass2732, ptr %i.dls, align 4, !tbaa !220
  store <8 x i32> %.reass2734, ptr %i.dlt, align 4, !tbaa !220
  %i.dlu = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.dlo ; 4 uses
  %i.dlv = add <8 x i32> %broadcast.splat2303, %vec.ind2309
  %.reass2736 = add <8 x i32> %vec.ind2309, %invariant.op2735
  %.reass2738 = add <8 x i32> %vec.ind2309, %invariant.op2737
  %.reass2740 = add <8 x i32> %vec.ind2309, %invariant.op2739
  %i.dlw = getelementptr inbounds nuw i8, ptr %i.dlu, i64 32
  %i.dlx = getelementptr inbounds nuw i8, ptr %i.dlu, i64 64
  %i.dly = getelementptr inbounds nuw i8, ptr %i.dlu, i64 96
  store <8 x i32> %i.dlv, ptr %i.dlu, align 4, !tbaa !220
  store <8 x i32> %.reass2736, ptr %i.dlw, align 4, !tbaa !220
  store <8 x i32> %.reass2738, ptr %i.dlx, align 4, !tbaa !220
  store <8 x i32> %.reass2740, ptr %i.dly, align 4, !tbaa !220
  %index.next2316 = add nuw i64 %index2307, 32    ; 2 uses
  %vec.ind.next2318 = add <8 x i32> %vec.ind2309, splat (i32 32)
  %i.dlz = icmp eq i64 %index.next2316, %n.vec2301
  br i1 %i.dlz, label %middle.block2319, label %vector.body2306, !llvm.loop !1301

middle.block2319:                                 ; preds = %vector.body2306
  %cmp.n2320 = icmp eq i64 %n.vec2301, %i.dlm
  br i1 %cmp.n2320, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i, label %vec.epilog.iter.check2322

vec.epilog.iter.check2322:                        ; preds = %middle.block2319
  %min.epilog.iters.check2324 = icmp eq i64 %i.dln, 0
  br i1 %min.epilog.iters.check2324, label %.lr.ph.i.i843.preheader, label %vec.epilog.ph2325, !prof !404

vec.epilog.ph2325:                                ; preds = %vector.main.loop.iter.check2298, %vec.epilog.iter.check2322
  %vec.epilog.resume.val2326 = phi i64 [ %n.vec2301, %vec.epilog.iter.check2322 ], [ 0, %vector.main.loop.iter.check2298 ] ; 2 uses
  %n.vec2327 = and i64 %i.dlm, 2147483640         ; 3 uses
  %broadcast.splatinsert2328 = insertelement <8 x i32> poison, i32 %i.dlg, i64 0
  %broadcast.splat2329 = shufflevector <8 x i32> %broadcast.splatinsert2328, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert2330 = insertelement <8 x i32> poison, i32 %i.dlk, i64 0
  %broadcast.splat2331 = shufflevector <8 x i32> %broadcast.splatinsert2330, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.dma = trunc nuw nsw i64 %vec.epilog.resume.val2326 to i32
  %broadcast.splatinsert2332 = insertelement <8 x i32> poison, i32 %i.dma, i64 0
  %broadcast.splat2333 = shufflevector <8 x i32> %broadcast.splatinsert2332, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction2334 = or disjoint <8 x i32> %broadcast.splat2333, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body2335

vec.epilog.vector.body2335:                       ; preds = %vec.epilog.vector.body2335, %vec.epilog.ph2325
  %index2336 = phi i64 [ %vec.epilog.resume.val2326, %vec.epilog.ph2325 ], [ %index.next2339, %vec.epilog.vector.body2335 ] ; 2 uses
  %vec.ind2338 = phi <8 x i32> [ %induction2334, %vec.epilog.ph2325 ], [ %vec.ind.next2341, %vec.epilog.vector.body2335 ] ; 3 uses
  %i.dmb = add nsw i64 %index2336, %i.dll         ; 2 uses
  %i.dmc = getelementptr inbounds [4 x i8], ptr %i.dix, i64 %i.dmb
  %i.dmd = add <8 x i32> %broadcast.splat2331, %vec.ind2338
  store <8 x i32> %i.dmd, ptr %i.dmc, align 4, !tbaa !220
  %i.dme = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.dmb
  %i.dmf = add <8 x i32> %broadcast.splat2329, %vec.ind2338
  store <8 x i32> %i.dmf, ptr %i.dme, align 4, !tbaa !220
  %index.next2339 = add nuw i64 %index2336, 8     ; 2 uses
  %vec.ind.next2341 = add <8 x i32> %vec.ind2338, splat (i32 8)
  %i.dmg = icmp eq i64 %index.next2339, %n.vec2327
  br i1 %i.dmg, label %vec.epilog.middle.block2342, label %vec.epilog.vector.body2335, !llvm.loop !1302

vec.epilog.middle.block2342:                      ; preds = %vec.epilog.vector.body2335
  %cmp.n2343 = icmp eq i64 %n.vec2327, %i.dlm
  br i1 %cmp.n2343, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i, label %.lr.ph.i.i843.preheader

.lr.ph.i.i843.preheader:                          ; preds = %iter.check2321, %vec.epilog.iter.check2322, %vec.epilog.middle.block2342
  %indvars.iv1476.ph = phi i64 [ 0, %iter.check2321 ], [ %n.vec2301, %vec.epilog.iter.check2322 ], [ %n.vec2327, %vec.epilog.middle.block2342 ] ; 6 uses
  %xtraiter2581 = and i64 %i.dlm, 1
  %lcmp.mod2582.not = icmp eq i64 %xtraiter2581, 0
  br i1 %lcmp.mod2582.not, label %.lr.ph.i.i843.prol.loopexit, label %.lr.ph.i.i843.prol

.lr.ph.i.i843.prol:                               ; preds = %.lr.ph.i.i843.preheader
  %i.dmh = add nsw i64 %indvars.iv1476.ph, %i.dll ; 2 uses
  %i.dmi = getelementptr inbounds [4 x i8], ptr %i.dix, i64 %i.dmh
  %i.dmj = trunc nuw nsw i64 %indvars.iv1476.ph to i32
  %i.dmk = add i32 %i.dlk, %i.dmj
  store i32 %i.dmk, ptr %i.dmi, align 4, !tbaa !220
  %i.dml = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.dmh
  %i.dmm = trunc nuw nsw i64 %indvars.iv1476.ph to i32
  %i.dmn = add i32 %i.dlg, %i.dmm
  store i32 %i.dmn, ptr %i.dml, align 4, !tbaa !220
  %indvars.iv.next1477.prol = or disjoint i64 %indvars.iv1476.ph, 1
  br label %.lr.ph.i.i843.prol.loopexit

.lr.ph.i.i843.prol.loopexit:                      ; preds = %.lr.ph.i.i843.prol, %.lr.ph.i.i843.preheader
  %indvars.iv1476.unr = phi i64 [ %indvars.iv1476.ph, %.lr.ph.i.i843.preheader ], [ %indvars.iv.next1477.prol, %.lr.ph.i.i843.prol ]
  %i.dmo = add nsw i64 %i.dlm, -1
  %i.dmp = icmp eq i64 %indvars.iv1476.ph, %i.dmo
  br i1 %i.dmp, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i, label %.lr.ph.i.i843

.lr.ph.i.i843:                                    ; preds = %.lr.ph.i.i843.prol.loopexit, %.lr.ph.i.i843
  %indvars.iv1476 = phi i64 [ %indvars.iv.next1477.1, %.lr.ph.i.i843 ], [ %indvars.iv1476.unr, %.lr.ph.i.i843.prol.loopexit ] ; 5 uses
  %i.dmq = add nsw i64 %indvars.iv1476, %i.dll    ; 2 uses
  %i.dmr = getelementptr inbounds [4 x i8], ptr %i.dix, i64 %i.dmq
  %i.dms = trunc i64 %indvars.iv1476 to i32
  %i.dmt = add i32 %i.dlk, %i.dms
  store i32 %i.dmt, ptr %i.dmr, align 4, !tbaa !220
  %i.dmu = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.dmq
  %i.dmv = trunc i64 %indvars.iv1476 to i32
  %i.dmw = add i32 %i.dlg, %i.dmv
  store i32 %i.dmw, ptr %i.dmu, align 4, !tbaa !220
  %indvars.iv.next1477 = add nuw nsw i64 %indvars.iv1476, 1 ; 3 uses
  %i.dmx = add nsw i64 %indvars.iv.next1477, %i.dll ; 2 uses
  %i.dmy = getelementptr inbounds [4 x i8], ptr %i.dix, i64 %i.dmx
  %i.dmz = trunc i64 %indvars.iv.next1477 to i32
  %i.dna = add i32 %i.dlk, %i.dmz
  store i32 %i.dna, ptr %i.dmy, align 4, !tbaa !220
  %i.dnb = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.dmx
  %i.dnc = trunc i64 %indvars.iv.next1477 to i32
  %i.dnd = add i32 %i.dlg, %i.dnc
  store i32 %i.dnd, ptr %i.dnb, align 4, !tbaa !220
  %indvars.iv.next1477.1 = add nuw nsw i64 %indvars.iv1476, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next1477.1, %i.dlm
  br i1 %exitcond.not.i.i.1, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i, label %.lr.ph.i.i843, !llvm.loop !1303

_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i: ; preds = %.lr.ph.i.i843.prol.loopexit, %.lr.ph.i.i843, %middle.block2319, %vec.epilog.middle.block2342, %bb.xa
  %i.dne = add nsw i32 %i.dky, %.91166
  %indvars.iv.next.i841 = add nsw i64 %indvars.iv.i840, 1 ; 2 uses
  %exitcond.not.i842 = icmp eq i64 %indvars.iv.next.i841, %wide.trip.count.i838
  br i1 %exitcond.not.i842, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit, label %bb.xa, !llvm.loop !1304

bb.xb:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i807
  %i.dnf = load ptr, ptr %i.diz, align 8, !tbaa !385 ; 4 uses
  %i.dng = getelementptr inbounds nuw i8, ptr %i.diz, i64 28
  %i.dnh = load i32, ptr %i.dng, align 4, !tbaa !383 ; 6 uses
  %i.dni = getelementptr inbounds nuw i8, ptr %i.diz, i64 32
  %i.dnj = load i32, ptr %i.dni, align 8, !tbaa !328 ; 7 uses
  %.not.i.i.i.i815 = icmp slt i32 %i.dnh, %i.dnj
  br i1 %.not.i.i.i.i815, label %bb.xc, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit

bb.xc:                                            ; preds = %bb.xb
  %i.dnk = add i32 %i.dnh, 63                     ; 2 uses
  %i.dnl = srem i32 %i.dnk, 64
  %i.dnm = sub nsw i32 %i.dnk, %i.dnl             ; 6 uses
  %i.dnn = and i32 %i.dnj, -64                    ; 6 uses
  %i.dno = icmp slt i32 %i.dnn, %i.dnm
  br i1 %i.dno, label %bb.xd, label %bb.xf

bb.xd:                                            ; preds = %bb.xc
  %i.dnp = ashr i32 %i.dnj, 6
  %i.dnq = and i32 %i.dnj, 63
  %i.dnr = zext nneg i32 %i.dnq to i64
  %notmask.i.i.i.i.i829 = shl nsw i64 -1, %i.dnr
  %i.dns = xor i64 %notmask.i.i.i.i.i829, -1
  %i.dnt = sub nsw i32 %i.dnm, %i.dnh             ; 2 uses
  %i.dnu = zext nneg i32 %i.dnt to i64
  %notmask.i.i.i.i.i.i830 = shl nsw i64 -1, %i.dnu
  %i.dnv = xor i64 %notmask.i.i.i.i.i.i830, -1
  %i.dnw = sub nsw i32 64, %i.dnt
  %i.dnx = zext nneg i32 %i.dnw to i64
  %i.dny = shl i64 %i.dnv, %i.dnx
  %i.dnz = and i64 %i.dny, %i.dns
  %i.doa = sext i32 %i.dnp to i64
  %i.dob = getelementptr inbounds [8 x i8], ptr %i.dnf, i64 %i.doa
  %i.doc = load i64, ptr %i.dob, align 8, !tbaa !275
  %i.dod = and i64 %i.dnz, %i.doc                 ; 2 uses
  %.not.i.i.i.i.i831 = icmp eq i64 %i.dod, 0
  br i1 %.not.i.i.i.i.i831, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit, label %.preheader.i.i.i.i.i832

.preheader.i.i.i.i.i832:                          ; preds = %bb.xd
  %i.doe = load ptr, ptr %i.p, align 8, !tbaa !382 ; 2 uses
  %i.dof = load ptr, ptr %i.n, align 8, !tbaa !397
  %i.dog = sext i32 %i.dnn to i64
  %i.doh = getelementptr inbounds nuw i8, ptr %i.doe, i64 120
  %i.doi = load ptr, ptr %i.doh, align 8, !tbaa !380
  %i.doj = getelementptr inbounds nuw i8, ptr %i.doe, i64 104
  %i.dok = load ptr, ptr %i.doj, align 8, !tbaa !379
  %i.dol = load ptr, ptr %i.q, align 8, !tbaa !382
  %i.dom = load ptr, ptr %i.o, align 8, !tbaa !397
  %i.don = getelementptr inbounds nuw i8, ptr %i.dol, i64 104
  %i.doo = load ptr, ptr %i.don, align 8, !tbaa !379
  %i.dop = sub i64 %i.diy, %i.dio
  %diff.check2245 = icmp ugt i64 %i.dop, -128
  br label %bb.xe

bb.xe:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i, %.preheader.i.i.i.i.i832
  %.81165 = phi i32 [ 0, %.preheader.i.i.i.i.i832 ], [ %i.drc, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i ] ; 3 uses
  %.011.i.i.i.i.i834 = phi i64 [ %i.dod, %.preheader.i.i.i.i.i832 ], [ %i.dre, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i ] ; 3 uses
  %i.doq = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i834, i1 true)
  %i.dor = or disjoint i64 %i.doq, %i.dog         ; 4 uses
  %i.dos = getelementptr inbounds [4 x i8], ptr %i.dof, i64 %i.dor ; 2 uses
  %i.dot = load i32, ptr %i.dos, align 4, !tbaa !220
  %i.dou = sext i32 %i.dot to i64
  %i.dov = getelementptr inbounds [4 x i8], ptr %i.doi, i64 %i.dou
  %i.dow = load i32, ptr %i.dov, align 4, !tbaa !220 ; 6 uses
  %i.dox = getelementptr inbounds [4 x i8], ptr %i.dhs, i64 %i.dor
  store i32 %.81165, ptr %i.dox, align 4, !tbaa !220
  %i.doy = getelementptr inbounds [4 x i8], ptr %i.did, i64 %i.dor
  store i32 %i.dow, ptr %i.doy, align 4, !tbaa !220
  %i.doz = icmp sgt i32 %i.dow, 0
  br i1 %i.doz, label %iter.check2269, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i

iter.check2269:                                   ; preds = %bb.xe
  %i.dpa = getelementptr inbounds [4 x i8], ptr %i.dom, i64 %i.dor
  %i.dpb = load i32, ptr %i.dpa, align 4, !tbaa !220
  %i.dpc = sext i32 %i.dpb to i64
  %i.dpd = getelementptr inbounds [4 x i8], ptr %i.doo, i64 %i.dpc
  %i.dpe = load i32, ptr %i.dpd, align 4, !tbaa !220 ; 5 uses
  %i.dpf = load i32, ptr %i.dos, align 4, !tbaa !220
  %i.dpg = sext i32 %i.dpf to i64
  %i.dph = getelementptr inbounds [4 x i8], ptr %i.dok, i64 %i.dpg
  %i.dpi = load i32, ptr %i.dph, align 4, !tbaa !220 ; 5 uses
  %i.dpj = sext i32 %.81165 to i64                ; 5 uses
  %i.dpk = zext nneg i32 %i.dow to i64            ; 8 uses
  %min.iters.check2243 = icmp ult i32 %i.dow, 8
  %or.cond2418 = select i1 %min.iters.check2243, i1 true, i1 %diff.check2245
  br i1 %or.cond2418, label %.lr.ph.i.i.i.i.i.i836.preheader, label %vector.main.loop.iter.check2246

vector.main.loop.iter.check2246:                  ; preds = %iter.check2269
  %min.iters.check2247 = icmp ult i32 %i.dow, 32
  br i1 %min.iters.check2247, label %vec.epilog.ph2273, label %vector.ph2248

vector.ph2248:                                    ; preds = %vector.main.loop.iter.check2246
  %i.dpl = and i64 %i.dpk, 24
  %n.vec2249 = and i64 %i.dpk, 2147483616         ; 4 uses
  %broadcast.splatinsert2250 = insertelement <8 x i32> poison, i32 %i.dpe, i64 0
  %broadcast.splat2251 = shufflevector <8 x i32> %broadcast.splatinsert2250, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert2252 = insertelement <8 x i32> poison, i32 %i.dpi, i64 0
  %broadcast.splat2253 = shufflevector <8 x i32> %broadcast.splatinsert2252, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op2717 = add <8 x i32> splat (i32 8), %broadcast.splat2253
  %invariant.op2719 = add <8 x i32> splat (i32 16), %broadcast.splat2253
  %invariant.op2721 = add <8 x i32> splat (i32 24), %broadcast.splat2253
  %invariant.op2723 = add <8 x i32> splat (i32 8), %broadcast.splat2251
  %invariant.op2725 = add <8 x i32> splat (i32 16), %broadcast.splat2251
  %invariant.op2727 = add <8 x i32> splat (i32 24), %broadcast.splat2251
  br label %vector.body2254

vector.body2254:                                  ; preds = %vector.ph2248, %vector.body2254
  %index2255 = phi i64 [ 0, %vector.ph2248 ], [ %index.next2264, %vector.body2254 ] ; 2 uses
  %vec.ind2257 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2248 ], [ %vec.ind.next2266, %vector.body2254 ] ; 9 uses
  %i.dpm = add nsw i64 %index2255, %i.dpj         ; 2 uses
  %i.dpn = getelementptr inbounds [4 x i8], ptr %i.dix, i64 %i.dpm ; 4 uses
  %i.dpo = add <8 x i32> %broadcast.splat2253, %vec.ind2257
  %.reass2718 = add <8 x i32> %vec.ind2257, %invariant.op2717
  %.reass2720 = add <8 x i32> %vec.ind2257, %invariant.op2719
  %.reass2722 = add <8 x i32> %vec.ind2257, %invariant.op2721
  %i.dpp = getelementptr inbounds nuw i8, ptr %i.dpn, i64 32
  %i.dpq = getelementptr inbounds nuw i8, ptr %i.dpn, i64 64
  %i.dpr = getelementptr inbounds nuw i8, ptr %i.dpn, i64 96
  store <8 x i32> %i.dpo, ptr %i.dpn, align 4, !tbaa !220
  store <8 x i32> %.reass2718, ptr %i.dpp, align 4, !tbaa !220
  store <8 x i32> %.reass2720, ptr %i.dpq, align 4, !tbaa !220
  store <8 x i32> %.reass2722, ptr %i.dpr, align 4, !tbaa !220
  %i.dps = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.dpm ; 4 uses
  %i.dpt = add <8 x i32> %broadcast.splat2251, %vec.ind2257
  %.reass2724 = add <8 x i32> %vec.ind2257, %invariant.op2723
  %.reass2726 = add <8 x i32> %vec.ind2257, %invariant.op2725
  %.reass2728 = add <8 x i32> %vec.ind2257, %invariant.op2727
  %i.dpu = getelementptr inbounds nuw i8, ptr %i.dps, i64 32
  %i.dpv = getelementptr inbounds nuw i8, ptr %i.dps, i64 64
  %i.dpw = getelementptr inbounds nuw i8, ptr %i.dps, i64 96
  store <8 x i32> %i.dpt, ptr %i.dps, align 4, !tbaa !220
  store <8 x i32> %.reass2724, ptr %i.dpu, align 4, !tbaa !220
  store <8 x i32> %.reass2726, ptr %i.dpv, align 4, !tbaa !220
  store <8 x i32> %.reass2728, ptr %i.dpw, align 4, !tbaa !220
  %index.next2264 = add nuw i64 %index2255, 32    ; 2 uses
  %vec.ind.next2266 = add <8 x i32> %vec.ind2257, splat (i32 32)
  %i.dpx = icmp eq i64 %index.next2264, %n.vec2249
  br i1 %i.dpx, label %middle.block2267, label %vector.body2254, !llvm.loop !1305

middle.block2267:                                 ; preds = %vector.body2254
  %cmp.n2268 = icmp eq i64 %n.vec2249, %i.dpk
  br i1 %cmp.n2268, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i, label %vec.epilog.iter.check2270

vec.epilog.iter.check2270:                        ; preds = %middle.block2267
  %min.epilog.iters.check2272 = icmp eq i64 %i.dpl, 0
  br i1 %min.epilog.iters.check2272, label %.lr.ph.i.i.i.i.i.i836.preheader, label %vec.epilog.ph2273, !prof !404

vec.epilog.ph2273:                                ; preds = %vector.main.loop.iter.check2246, %vec.epilog.iter.check2270
  %vec.epilog.resume.val2274 = phi i64 [ %n.vec2249, %vec.epilog.iter.check2270 ], [ 0, %vector.main.loop.iter.check2246 ] ; 2 uses
  %n.vec2275 = and i64 %i.dpk, 2147483640         ; 3 uses
  %broadcast.splatinsert2276 = insertelement <8 x i32> poison, i32 %i.dpe, i64 0
  %broadcast.splat2277 = shufflevector <8 x i32> %broadcast.splatinsert2276, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert2278 = insertelement <8 x i32> poison, i32 %i.dpi, i64 0
  %broadcast.splat2279 = shufflevector <8 x i32> %broadcast.splatinsert2278, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.dpy = trunc nuw nsw i64 %vec.epilog.resume.val2274 to i32
  %broadcast.splatinsert2280 = insertelement <8 x i32> poison, i32 %i.dpy, i64 0
  %broadcast.splat2281 = shufflevector <8 x i32> %broadcast.splatinsert2280, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction2282 = or disjoint <8 x i32> %broadcast.splat2281, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body2283

vec.epilog.vector.body2283:                       ; preds = %vec.epilog.vector.body2283, %vec.epilog.ph2273
  %index2284 = phi i64 [ %vec.epilog.resume.val2274, %vec.epilog.ph2273 ], [ %index.next2287, %vec.epilog.vector.body2283 ] ; 2 uses
  %vec.ind2286 = phi <8 x i32> [ %induction2282, %vec.epilog.ph2273 ], [ %vec.ind.next2289, %vec.epilog.vector.body2283 ] ; 3 uses
  %i.dpz = add nsw i64 %index2284, %i.dpj         ; 2 uses
  %i.dqa = getelementptr inbounds [4 x i8], ptr %i.dix, i64 %i.dpz
  %i.dqb = add <8 x i32> %broadcast.splat2279, %vec.ind2286
  store <8 x i32> %i.dqb, ptr %i.dqa, align 4, !tbaa !220
  %i.dqc = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.dpz
  %i.dqd = add <8 x i32> %broadcast.splat2277, %vec.ind2286
  store <8 x i32> %i.dqd, ptr %i.dqc, align 4, !tbaa !220
  %index.next2287 = add nuw i64 %index2284, 8     ; 2 uses
  %vec.ind.next2289 = add <8 x i32> %vec.ind2286, splat (i32 8)
  %i.dqe = icmp eq i64 %index.next2287, %n.vec2275
  br i1 %i.dqe, label %vec.epilog.middle.block2290, label %vec.epilog.vector.body2283, !llvm.loop !1306

vec.epilog.middle.block2290:                      ; preds = %vec.epilog.vector.body2283
  %cmp.n2291 = icmp eq i64 %n.vec2275, %i.dpk
  br i1 %cmp.n2291, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i836.preheader

.lr.ph.i.i.i.i.i.i836.preheader:                  ; preds = %iter.check2269, %vec.epilog.iter.check2270, %vec.epilog.middle.block2290
  %indvars.iv1473.ph = phi i64 [ 0, %iter.check2269 ], [ %n.vec2249, %vec.epilog.iter.check2270 ], [ %n.vec2275, %vec.epilog.middle.block2290 ] ; 6 uses
  %xtraiter2579 = and i64 %i.dpk, 1
  %lcmp.mod2580.not = icmp eq i64 %xtraiter2579, 0
  br i1 %lcmp.mod2580.not, label %.lr.ph.i.i.i.i.i.i836.prol.loopexit, label %.lr.ph.i.i.i.i.i.i836.prol

.lr.ph.i.i.i.i.i.i836.prol:                       ; preds = %.lr.ph.i.i.i.i.i.i836.preheader
  %i.dqf = add nsw i64 %indvars.iv1473.ph, %i.dpj ; 2 uses
  %i.dqg = getelementptr inbounds [4 x i8], ptr %i.dix, i64 %i.dqf
  %i.dqh = trunc nuw nsw i64 %indvars.iv1473.ph to i32
  %i.dqi = add i32 %i.dpi, %i.dqh
  store i32 %i.dqi, ptr %i.dqg, align 4, !tbaa !220
  %i.dqj = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.dqf
  %i.dqk = trunc nuw nsw i64 %indvars.iv1473.ph to i32
  %i.dql = add i32 %i.dpe, %i.dqk
  store i32 %i.dql, ptr %i.dqj, align 4, !tbaa !220
  %indvars.iv.next1474.prol = or disjoint i64 %indvars.iv1473.ph, 1
  br label %.lr.ph.i.i.i.i.i.i836.prol.loopexit

.lr.ph.i.i.i.i.i.i836.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i.i.i836.prol, %.lr.ph.i.i.i.i.i.i836.preheader
  %indvars.iv1473.unr = phi i64 [ %indvars.iv1473.ph, %.lr.ph.i.i.i.i.i.i836.preheader ], [ %indvars.iv.next1474.prol, %.lr.ph.i.i.i.i.i.i836.prol ]
  %i.dqm = add nsw i64 %i.dpk, -1
  %i.dqn = icmp eq i64 %indvars.iv1473.ph, %i.dqm
  br i1 %i.dqn, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i836

.lr.ph.i.i.i.i.i.i836:                            ; preds = %.lr.ph.i.i.i.i.i.i836.prol.loopexit, %.lr.ph.i.i.i.i.i.i836
  %indvars.iv1473 = phi i64 [ %indvars.iv.next1474.1, %.lr.ph.i.i.i.i.i.i836 ], [ %indvars.iv1473.unr, %.lr.ph.i.i.i.i.i.i836.prol.loopexit ] ; 5 uses
  %i.dqo = add nsw i64 %indvars.iv1473, %i.dpj    ; 2 uses
  %i.dqp = getelementptr inbounds [4 x i8], ptr %i.dix, i64 %i.dqo
  %i.dqq = trunc i64 %indvars.iv1473 to i32
  %i.dqr = add i32 %i.dpi, %i.dqq
  store i32 %i.dqr, ptr %i.dqp, align 4, !tbaa !220
  %i.dqs = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.dqo
  %i.dqt = trunc i64 %indvars.iv1473 to i32
  %i.dqu = add i32 %i.dpe, %i.dqt
  store i32 %i.dqu, ptr %i.dqs, align 4, !tbaa !220
  %indvars.iv.next1474 = add nuw nsw i64 %indvars.iv1473, 1 ; 3 uses
  %i.dqv = add nsw i64 %indvars.iv.next1474, %i.dpj ; 2 uses
  %i.dqw = getelementptr inbounds [4 x i8], ptr %i.dix, i64 %i.dqv
  %i.dqx = trunc i64 %indvars.iv.next1474 to i32
  %i.dqy = add i32 %i.dpi, %i.dqx
  store i32 %i.dqy, ptr %i.dqw, align 4, !tbaa !220
  %i.dqz = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.dqv
  %i.dra = trunc i64 %indvars.iv.next1474 to i32
  %i.drb = add i32 %i.dpe, %i.dra
  store i32 %i.drb, ptr %i.dqz, align 4, !tbaa !220
  %indvars.iv.next1474.1 = add nuw nsw i64 %indvars.iv1473, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %indvars.iv.next1474.1, %i.dpk
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i836, !llvm.loop !1307

_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i836.prol.loopexit, %.lr.ph.i.i.i.i.i.i836, %middle.block2267, %vec.epilog.middle.block2290, %bb.xe
  %i.drc = add nsw i32 %i.dow, %.81165
  %i.drd = add nuw i64 %.011.i.i.i.i.i834, 9223372036854775807
  %i.dre = and i64 %i.drd, %.011.i.i.i.i.i834     ; 2 uses
  %.not10.i.i.i.i.i835 = icmp eq i64 %i.dre, 0
  br i1 %.not10.i.i.i.i.i835, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit, label %bb.xe, !llvm.loop !1308

bb.xf:                                            ; preds = %bb.xc
  %.not32.i.i.i.i816 = icmp eq i32 %i.dnh, %i.dnm
  br i1 %.not32.i.i.i.i816, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUlimE_clEim.exit45.i.i.i.i, label %bb.xg

bb.xg:                                            ; preds = %bb.xf
  %i.drf = sdiv i32 %i.dnh, 64                    ; 2 uses
  %i.drg = sub nsw i32 %i.dnm, %i.dnh             ; 2 uses
  %i.drh = zext nneg i32 %i.drg to i64
  %notmask.i.i35.i.i.i.i817 = shl nsw i64 -1, %i.drh
  %i.dri = xor i64 %notmask.i.i35.i.i.i.i817, -1
  %i.drj = sub nsw i32 64, %i.drg
  %i.drk = zext nneg i32 %i.drj to i64
  %i.drl = shl i64 %i.dri, %i.drk
  %i.drm = sext i32 %i.drf to i64
  %i.drn = getelementptr inbounds [8 x i8], ptr %i.dnf, i64 %i.drm
  %i.dro = load i64, ptr %i.drn, align 8, !tbaa !275
  %i.drp = and i64 %i.dro, %i.drl                 ; 2 uses
  %.not.i36.i.i.i.i818 = icmp eq i64 %i.drp, 0
  br i1 %.not.i36.i.i.i.i818, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUlimE_clEim.exit45.i.i.i.i, label %.preheader.i37.i.i.i.i819

.preheader.i37.i.i.i.i819:                        ; preds = %bb.xg
  %i.drq = shl nsw i32 %i.drf, 6
  %i.drr = load ptr, ptr %i.p, align 8, !tbaa !382 ; 2 uses
  %i.drs = load ptr, ptr %i.n, align 8, !tbaa !397
  %i.drt = sext i32 %i.drq to i64
  %i.dru = getelementptr inbounds nuw i8, ptr %i.drr, i64 120
  %i.drv = load ptr, ptr %i.dru, align 8, !tbaa !380
  %i.drw = getelementptr inbounds nuw i8, ptr %i.drr, i64 104
  %i.drx = load ptr, ptr %i.drw, align 8, !tbaa !379
  %i.dry = load ptr, ptr %i.q, align 8, !tbaa !382
  %i.drz = load ptr, ptr %i.o, align 8, !tbaa !397
  %i.dsa = getelementptr inbounds nuw i8, ptr %i.dry, i64 104
  %i.dsb = load ptr, ptr %i.dsa, align 8, !tbaa !379
  %i.dsc = sub i64 %i.diy, %i.dio
  %diff.check = icmp ugt i64 %i.dsc, -128
  br label %bb.xh

bb.xh:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i, %.preheader.i37.i.i.i.i819
  %.01157 = phi i32 [ 0, %.preheader.i37.i.i.i.i819 ], [ %i.dup, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i ] ; 3 uses
  %.011.i39.i.i.i.i821 = phi i64 [ %i.drp, %.preheader.i37.i.i.i.i819 ], [ %i.dur, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i ] ; 3 uses
  %i.dsd = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i39.i.i.i.i821, i1 true)
  %i.dse = or disjoint i64 %i.dsd, %i.drt         ; 4 uses
  %i.dsf = getelementptr inbounds [4 x i8], ptr %i.drs, i64 %i.dse ; 2 uses
  %i.dsg = load i32, ptr %i.dsf, align 4, !tbaa !220
  %i.dsh = sext i32 %i.dsg to i64
  %i.dsi = getelementptr inbounds [4 x i8], ptr %i.drv, i64 %i.dsh
  %i.dsj = load i32, ptr %i.dsi, align 4, !tbaa !220 ; 6 uses
  %i.dsk = getelementptr inbounds [4 x i8], ptr %i.dhs, i64 %i.dse
  store i32 %.01157, ptr %i.dsk, align 4, !tbaa !220
  %i.dsl = getelementptr inbounds [4 x i8], ptr %i.did, i64 %i.dse
  store i32 %i.dsj, ptr %i.dsl, align 4, !tbaa !220
  %i.dsm = icmp sgt i32 %i.dsj, 0
  br i1 %i.dsm, label %iter.check2062, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i

iter.check2062:                                   ; preds = %bb.xh
  %i.dsn = getelementptr inbounds [4 x i8], ptr %i.drz, i64 %i.dse
  %i.dso = load i32, ptr %i.dsn, align 4, !tbaa !220
  %i.dsp = sext i32 %i.dso to i64
  %i.dsq = getelementptr inbounds [4 x i8], ptr %i.dsb, i64 %i.dsp
  %i.dsr = load i32, ptr %i.dsq, align 4, !tbaa !220 ; 5 uses
  %i.dss = load i32, ptr %i.dsf, align 4, !tbaa !220
  %i.dst = sext i32 %i.dss to i64
  %i.dsu = getelementptr inbounds [4 x i8], ptr %i.drx, i64 %i.dst
  %i.dsv = load i32, ptr %i.dsu, align 4, !tbaa !220 ; 5 uses
  %i.dsw = sext i32 %.01157 to i64                ; 5 uses
  %i.dsx = zext nneg i32 %i.dsj to i64            ; 8 uses
  %min.iters.check2045 = icmp ult i32 %i.dsj, 8
  %or.cond2419 = select i1 %min.iters.check2045, i1 true, i1 %diff.check
  br i1 %or.cond2419, label %.lr.ph.i.i42.i.i.i.i.preheader, label %vector.main.loop.iter.check2046

vector.main.loop.iter.check2046:                  ; preds = %iter.check2062
  %min.iters.check2047 = icmp ult i32 %i.dsj, 32
  br i1 %min.iters.check2047, label %vec.epilog.ph2066, label %vector.ph2048

vector.ph2048:                                    ; preds = %vector.main.loop.iter.check2046
  %i.dsy = and i64 %i.dsx, 24
  %n.vec2049 = and i64 %i.dsx, 2147483616         ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.dsr, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert2050 = insertelement <8 x i32> poison, i32 %i.dsv, i64 0
  %broadcast.splat2051 = shufflevector <8 x i32> %broadcast.splatinsert2050, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op = add <8 x i32> splat (i32 8), %broadcast.splat2051
  %invariant.op2671.a = add <8 x i32> splat (i32 16), %broadcast.splat2051
  %invariant.op2673.a = add <8 x i32> splat (i32 24), %broadcast.splat2051
  %invariant.op2675 = add <8 x i32> splat (i32 8), %broadcast.splat
  %invariant.op2677 = add <8 x i32> splat (i32 16), %broadcast.splat
  %invariant.op2679 = add <8 x i32> splat (i32 24), %broadcast.splat
  br label %vector.body2052

vector.body2052:                                  ; preds = %vector.ph2048, %vector.body2052
  %index2053 = phi i64 [ 0, %vector.ph2048 ], [ %index.next2058, %vector.body2052 ] ; 2 uses
  %vec.ind2054 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2048 ], [ %vec.ind.next2059, %vector.body2052 ] ; 9 uses
  %i.dsz = add nsw i64 %index2053, %i.dsw         ; 2 uses
  %i.dta = getelementptr inbounds [4 x i8], ptr %i.dix, i64 %i.dsz ; 4 uses
  %i.dtb = add <8 x i32> %broadcast.splat2051, %vec.ind2054
  %.reass = add <8 x i32> %vec.ind2054, %invariant.op
  %.reass2672.a = add <8 x i32> %vec.ind2054, %invariant.op2671.a
  %.reass2674.a = add <8 x i32> %vec.ind2054, %invariant.op2673.a
  %i.dtc = getelementptr inbounds nuw i8, ptr %i.dta, i64 32
  %i.dtd = getelementptr inbounds nuw i8, ptr %i.dta, i64 64
  %i.dte = getelementptr inbounds nuw i8, ptr %i.dta, i64 96
  store <8 x i32> %i.dtb, ptr %i.dta, align 4, !tbaa !220
  store <8 x i32> %.reass, ptr %i.dtc, align 4, !tbaa !220
  store <8 x i32> %.reass2672.a, ptr %i.dtd, align 4, !tbaa !220
  store <8 x i32> %.reass2674.a, ptr %i.dte, align 4, !tbaa !220
  %i.dtf = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.dsz ; 4 uses
  %i.dtg = add <8 x i32> %broadcast.splat, %vec.ind2054
  %.reass2676 = add <8 x i32> %vec.ind2054, %invariant.op2675
  %.reass2678 = add <8 x i32> %vec.ind2054, %invariant.op2677
  %.reass2680 = add <8 x i32> %vec.ind2054, %invariant.op2679
  %i.dth = getelementptr inbounds nuw i8, ptr %i.dtf, i64 32
  %i.dti = getelementptr inbounds nuw i8, ptr %i.dtf, i64 64
  %i.dtj = getelementptr inbounds nuw i8, ptr %i.dtf, i64 96
  store <8 x i32> %i.dtg, ptr %i.dtf, align 4, !tbaa !220
  store <8 x i32> %.reass2676, ptr %i.dth, align 4, !tbaa !220
  store <8 x i32> %.reass2678, ptr %i.dti, align 4, !tbaa !220
  store <8 x i32> %.reass2680, ptr %i.dtj, align 4, !tbaa !220
  %index.next2058 = add nuw i64 %index2053, 32    ; 2 uses
  %vec.ind.next2059 = add <8 x i32> %vec.ind2054, splat (i32 32)
  %i.dtk = icmp eq i64 %index.next2058, %n.vec2049
  br i1 %i.dtk, label %middle.block2060, label %vector.body2052, !llvm.loop !1309

middle.block2060:                                 ; preds = %vector.body2052
  %cmp.n2061 = icmp eq i64 %n.vec2049, %i.dsx
  br i1 %cmp.n2061, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i, label %vec.epilog.iter.check2063

vec.epilog.iter.check2063:                        ; preds = %middle.block2060
  %min.epilog.iters.check2065 = icmp eq i64 %i.dsy, 0
  br i1 %min.epilog.iters.check2065, label %.lr.ph.i.i42.i.i.i.i.preheader, label %vec.epilog.ph2066, !prof !404

vec.epilog.ph2066:                                ; preds = %vector.main.loop.iter.check2046, %vec.epilog.iter.check2063
  %vec.epilog.resume.val2067 = phi i64 [ %n.vec2049, %vec.epilog.iter.check2063 ], [ 0, %vector.main.loop.iter.check2046 ] ; 2 uses
  %n.vec2068 = and i64 %i.dsx, 2147483640         ; 3 uses
  %broadcast.splatinsert2069 = insertelement <8 x i32> poison, i32 %i.dsr, i64 0
  %broadcast.splat2070 = shufflevector <8 x i32> %broadcast.splatinsert2069, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert2071 = insertelement <8 x i32> poison, i32 %i.dsv, i64 0
  %broadcast.splat2072 = shufflevector <8 x i32> %broadcast.splatinsert2071, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.dtl = trunc nuw nsw i64 %vec.epilog.resume.val2067 to i32
  %broadcast.splatinsert2073 = insertelement <8 x i32> poison, i32 %i.dtl, i64 0
  %broadcast.splat2074 = shufflevector <8 x i32> %broadcast.splatinsert2073, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = or disjoint <8 x i32> %broadcast.splat2074, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body2075

vec.epilog.vector.body2075:                       ; preds = %vec.epilog.vector.body2075, %vec.epilog.ph2066
  %index2076 = phi i64 [ %vec.epilog.resume.val2067, %vec.epilog.ph2066 ], [ %index.next2079, %vec.epilog.vector.body2075 ] ; 2 uses
  %vec.ind2078 = phi <8 x i32> [ %induction, %vec.epilog.ph2066 ], [ %vec.ind.next2081, %vec.epilog.vector.body2075 ] ; 3 uses
  %i.dtm = add nsw i64 %index2076, %i.dsw         ; 2 uses
  %i.dtn = getelementptr inbounds [4 x i8], ptr %i.dix, i64 %i.dtm
  %i.dto = add <8 x i32> %broadcast.splat2072, %vec.ind2078
  store <8 x i32> %i.dto, ptr %i.dtn, align 4, !tbaa !220
  %i.dtp = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.dtm
  %i.dtq = add <8 x i32> %broadcast.splat2070, %vec.ind2078
  store <8 x i32> %i.dtq, ptr %i.dtp, align 4, !tbaa !220
  %index.next2079 = add nuw i64 %index2076, 8     ; 2 uses
  %vec.ind.next2081 = add <8 x i32> %vec.ind2078, splat (i32 8)
  %i.dtr = icmp eq i64 %index.next2079, %n.vec2068
  br i1 %i.dtr, label %vec.epilog.middle.block2082, label %vec.epilog.vector.body2075, !llvm.loop !1310

vec.epilog.middle.block2082:                      ; preds = %vec.epilog.vector.body2075
  %cmp.n2083 = icmp eq i64 %n.vec2068, %i.dsx
  br i1 %cmp.n2083, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i, label %.lr.ph.i.i42.i.i.i.i.preheader

.lr.ph.i.i42.i.i.i.i.preheader:                   ; preds = %iter.check2062, %vec.epilog.iter.check2063, %vec.epilog.middle.block2082
  %indvars.iv.ph = phi i64 [ 0, %iter.check2062 ], [ %n.vec2049, %vec.epilog.iter.check2063 ], [ %n.vec2068, %vec.epilog.middle.block2082 ] ; 6 uses
  %xtraiter = and i64 %i.dsx, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i42.i.i.i.i.prol.loopexit, label %.lr.ph.i.i42.i.i.i.i.prol

.lr.ph.i.i42.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i42.i.i.i.i.preheader
  %i.dts = add nsw i64 %indvars.iv.ph, %i.dsw     ; 2 uses
  %i.dtt = getelementptr inbounds [4 x i8], ptr %i.dix, i64 %i.dts
  %i.dtu = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.dtv = add i32 %i.dsv, %i.dtu
  store i32 %i.dtv, ptr %i.dtt, align 4, !tbaa !220
  %i.dtw = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.dts
  %i.dtx = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.dty = add i32 %i.dsr, %i.dtx
  store i32 %i.dty, ptr %i.dtw, align 4, !tbaa !220
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.i.i42.i.i.i.i.prol.loopexit

.lr.ph.i.i42.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i42.i.i.i.i.prol, %.lr.ph.i.i42.i.i.i.i.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.i.i42.i.i.i.i.preheader ], [ %indvars.iv.next.prol, %.lr.ph.i.i42.i.i.i.i.prol ]
  %i.dtz = add nsw i64 %i.dsx, -1
  %i.dua = icmp eq i64 %indvars.iv.ph, %i.dtz
  br i1 %i.dua, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i, label %.lr.ph.i.i42.i.i.i.i

.lr.ph.i.i42.i.i.i.i:                             ; preds = %.lr.ph.i.i42.i.i.i.i.prol.loopexit, %.lr.ph.i.i42.i.i.i.i
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.i.i42.i.i.i.i ], [ %indvars.iv.unr, %.lr.ph.i.i42.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.dub = add nsw i64 %indvars.iv, %i.dsw        ; 2 uses
  %i.duc = getelementptr inbounds [4 x i8], ptr %i.dix, i64 %i.dub
  %i.dud = trunc i64 %indvars.iv to i32
  %i.due = add i32 %i.dsv, %i.dud
  store i32 %i.due, ptr %i.duc, align 4, !tbaa !220
  %i.duf = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.dub
  %i.dug = trunc i64 %indvars.iv to i32
  %i.duh = add i32 %i.dsr, %i.dug
  store i32 %i.duh, ptr %i.duf, align 4, !tbaa !220
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.dui = add nsw i64 %indvars.iv.next, %i.dsw   ; 2 uses
  %i.duj = getelementptr inbounds [4 x i8], ptr %i.dix, i64 %i.dui
  %i.duk = trunc i64 %indvars.iv.next to i32
  %i.dul = add i32 %i.dsv, %i.duk
  store i32 %i.dul, ptr %i.duj, align 4, !tbaa !220
  %i.dum = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.dui
  %i.dun = trunc i64 %indvars.iv.next to i32
  %i.duo = add i32 %i.dsr, %i.dun
  store i32 %i.duo, ptr %i.dum, align 4, !tbaa !220
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.i.i44.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.1, %i.dsx
  br i1 %exitcond.not.i.i44.i.i.i.i.1, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i, label %.lr.ph.i.i42.i.i.i.i, !llvm.loop !1311

_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i: ; preds = %.lr.ph.i.i42.i.i.i.i.prol.loopexit, %.lr.ph.i.i42.i.i.i.i, %middle.block2060, %vec.epilog.middle.block2082, %bb.xh
  %i.dup = add nsw i32 %i.dsj, %.01157            ; 2 uses
  %i.duq = add i64 %.011.i39.i.i.i.i821, -1
  %i.dur = and i64 %i.duq, %.011.i39.i.i.i.i821   ; 2 uses
  %.not10.i41.i.i.i.i = icmp eq i64 %i.dur, 0
  br i1 %.not10.i41.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUlimE_clEim.exit45.i.i.i.i, label %bb.xh, !llvm.loop !1308

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUlimE_clEim.exit45.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i, %bb.xg, %bb.xf
  %.11158 = phi i32 [ 0, %bb.xf ], [ 0, %bb.xg ], [ %i.dup, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i ] ; 2 uses
  %i.dus = add nsw i32 %i.dnm, 64                 ; 2 uses
  %.not3365.i.i.i.i = icmp sgt i32 %i.dus, %i.dnn
  br i1 %.not3365.i.i.i.i, label %._crit_edge.i.i.i.i824, label %.lr.ph.i.i.i.i822.preheader

.lr.ph.i.i.i.i822.preheader:                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUlimE_clEim.exit45.i.i.i.i
  %i.dut = load ptr, ptr %i.p, align 8            ; 2 uses
  %i.duu = load ptr, ptr %i.n, align 8            ; 2 uses
  %i.duv = getelementptr inbounds nuw i8, ptr %i.dut, i64 120 ; 2 uses
  %i.duw = getelementptr inbounds nuw i8, ptr %i.dut, i64 104 ; 2 uses
  %i.dux = load ptr, ptr %i.q, align 8
  %i.duy = load ptr, ptr %i.o, align 8            ; 2 uses
  %i.duz = getelementptr inbounds nuw i8, ptr %i.dux, i64 104 ; 2 uses
  %i.dva = sub i64 %i.dio, %i.diy                 ; 2 uses
  %i.dvb = add i64 %i.dva, -1
  %diff.check2141 = icmp ult i64 %i.dvb, 127
  %i.dvc = add i64 %i.dva, -1
  %diff.check2089 = icmp ult i64 %i.dvc, 127
  br label %.lr.ph.i.i.i.i822

._crit_edge.i.i.i.i824:                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUlimE_clEim.exit45.i.i.i.i
  %.41161 = phi i32 [ %.11158, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUlimE_clEim.exit45.i.i.i.i ], [ %.31160, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ]
  %.not34.i.i.i.i825 = icmp eq i32 %i.dnj, %i.dnn
  br i1 %.not34.i.i.i.i825, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit, label %bb.xl

.lr.ph.i.i.i.i822:                                ; preds = %.lr.ph.i.i.i.i822.preheader, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  %.21159 = phi i32 [ %.31160, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %.11158, %.lr.ph.i.i.i.i822.preheader ] ; 4 uses
  %i.dvd = phi i32 [ %i.eay, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %i.dus, %.lr.ph.i.i.i.i822.preheader ] ; 2 uses
  %.066.i.i.i.i = phi i32 [ %i.dvd, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %i.dnm, %.lr.ph.i.i.i.i822.preheader ] ; 2 uses
  %i.dve = sdiv i32 %.066.i.i.i.i, 64             ; 3 uses
  %i.dvf = sext i32 %i.dve to i64
  %i.dvg = getelementptr inbounds [8 x i8], ptr %i.dnf, i64 %i.dvf
  %i.dvh = load i64, ptr %i.dvg, align 8, !tbaa !275 ; 2 uses
  switch i64 %i.dvh, label %.lr.ph.i.i.i.i.i828 [
    i64 -1, label %bb.xi
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  ]

.lr.ph.i.i.i.i.i828:                              ; preds = %.lr.ph.i.i.i.i822
  %i.dvi = shl nsw i32 %i.dve, 6
  %i.dvj = sext i32 %i.dvi to i64
  %i.dvk = load ptr, ptr %i.duv, align 8, !tbaa !380
  %i.dvl = load ptr, ptr %i.duw, align 8, !tbaa !379
  %i.dvm = load ptr, ptr %i.duz, align 8, !tbaa !379
  br label %bb.xk

bb.xi:                                            ; preds = %.lr.ph.i.i.i.i822
  %i.dvn = shl nsw i32 %i.dve, 6                  ; 2 uses
  %i.dvo = add i32 %i.dvn, 64
  %i.dvp = sext i32 %i.dvo to i64
  %.0.off.i.i.i.i827 = add i32 %.066.i.i.i.i, 127
  %.not26.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i827, 64
  br i1 %.not26.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %.lr.ph25.i.i.i.i.i

.lr.ph25.i.i.i.i.i:                               ; preds = %bb.xi
  %i.dvq = sext i32 %i.dvn to i64
  %i.dvr = load ptr, ptr %i.duv, align 8, !tbaa !380
  %i.dvs = load ptr, ptr %i.duw, align 8, !tbaa !379
  %i.dvt = load ptr, ptr %i.duz, align 8, !tbaa !379
  br label %bb.xj

bb.xj:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i, %.lr.ph25.i.i.i.i.i
  %.61163 = phi i32 [ %.21159, %.lr.ph25.i.i.i.i.i ], [ %i.dyg, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i ] ; 3 uses
  %.024.i.i.i.i.i = phi i64 [ %i.dvq, %.lr.ph25.i.i.i.i.i ], [ %i.dyh, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i ] ; 2 uses
  %i.dvu = shl i64 %.024.i.i.i.i.i, 32
  %i.dvv = ashr exact i64 %i.dvu, 32              ; 4 uses
  %i.dvw = getelementptr inbounds [4 x i8], ptr %i.duu, i64 %i.dvv ; 2 uses
  %i.dvx = load i32, ptr %i.dvw, align 4, !tbaa !220
  %i.dvy = sext i32 %i.dvx to i64
  %i.dvz = getelementptr inbounds [4 x i8], ptr %i.dvr, i64 %i.dvy
  %i.dwa = load i32, ptr %i.dvz, align 4, !tbaa !220 ; 6 uses
  %i.dwb = getelementptr inbounds [4 x i8], ptr %i.dhs, i64 %i.dvv
  store i32 %.61163, ptr %i.dwb, align 4, !tbaa !220
  %i.dwc = getelementptr inbounds [4 x i8], ptr %i.did, i64 %i.dvv
  store i32 %i.dwa, ptr %i.dwc, align 4, !tbaa !220
  %i.dwd = icmp sgt i32 %i.dwa, 0
  br i1 %i.dwd, label %iter.check2165, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i

iter.check2165:                                   ; preds = %bb.xj
  %i.dwe = getelementptr inbounds [4 x i8], ptr %i.duy, i64 %i.dvv
  %i.dwf = load i32, ptr %i.dwe, align 4, !tbaa !220
  %i.dwg = sext i32 %i.dwf to i64
  %i.dwh = getelementptr inbounds [4 x i8], ptr %i.dvt, i64 %i.dwg
  %i.dwi = load i32, ptr %i.dwh, align 4, !tbaa !220 ; 5 uses
  %i.dwj = load i32, ptr %i.dvw, align 4, !tbaa !220
  %i.dwk = sext i32 %i.dwj to i64
  %i.dwl = getelementptr inbounds [4 x i8], ptr %i.dvs, i64 %i.dwk
  %i.dwm = load i32, ptr %i.dwl, align 4, !tbaa !220 ; 5 uses
  %i.dwn = sext i32 %.61163 to i64                ; 5 uses
  %i.dwo = zext nneg i32 %i.dwa to i64            ; 8 uses
  %min.iters.check2139 = icmp ult i32 %i.dwa, 8
  %or.cond2420 = select i1 %min.iters.check2139, i1 true, i1 %diff.check2141
  br i1 %or.cond2420, label %.lr.ph.i.i48.i.i.i.i.preheader, label %vector.main.loop.iter.check2142

vector.main.loop.iter.check2142:                  ; preds = %iter.check2165
  %min.iters.check2143 = icmp ult i32 %i.dwa, 32
  br i1 %min.iters.check2143, label %vec.epilog.ph2169, label %vector.ph2144

vector.ph2144:                                    ; preds = %vector.main.loop.iter.check2142
  %i.dwp = and i64 %i.dwo, 24
  %n.vec2145 = and i64 %i.dwo, 2147483616         ; 4 uses
  %broadcast.splatinsert2146 = insertelement <8 x i32> poison, i32 %i.dwi, i64 0
  %broadcast.splat2147 = shufflevector <8 x i32> %broadcast.splatinsert2146, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert2148 = insertelement <8 x i32> poison, i32 %i.dwm, i64 0
  %broadcast.splat2149 = shufflevector <8 x i32> %broadcast.splatinsert2148, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op2681 = add <8 x i32> splat (i32 8), %broadcast.splat2149
  %invariant.op2683 = add <8 x i32> splat (i32 16), %broadcast.splat2149
  %invariant.op2685 = add <8 x i32> splat (i32 24), %broadcast.splat2149
  %invariant.op2687 = add <8 x i32> splat (i32 8), %broadcast.splat2147
  %invariant.op2689 = add <8 x i32> splat (i32 16), %broadcast.splat2147
  %invariant.op2691 = add <8 x i32> splat (i32 24), %broadcast.splat2147
  br label %vector.body2150

vector.body2150:                                  ; preds = %vector.ph2144, %vector.body2150
  %index2151 = phi i64 [ 0, %vector.ph2144 ], [ %index.next2160, %vector.body2150 ] ; 2 uses
  %vec.ind2153 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2144 ], [ %vec.ind.next2162, %vector.body2150 ] ; 9 uses
  %i.dwq = add nsw i64 %index2151, %i.dwn         ; 2 uses
  %i.dwr = getelementptr inbounds [4 x i8], ptr %i.dix, i64 %i.dwq ; 4 uses
  %i.dws = add <8 x i32> %broadcast.splat2149, %vec.ind2153
  %.reass2682 = add <8 x i32> %vec.ind2153, %invariant.op2681
  %.reass2684 = add <8 x i32> %vec.ind2153, %invariant.op2683
  %.reass2686 = add <8 x i32> %vec.ind2153, %invariant.op2685
  %i.dwt = getelementptr inbounds nuw i8, ptr %i.dwr, i64 32
  %i.dwu = getelementptr inbounds nuw i8, ptr %i.dwr, i64 64
  %i.dwv = getelementptr inbounds nuw i8, ptr %i.dwr, i64 96
  store <8 x i32> %i.dws, ptr %i.dwr, align 4, !tbaa !220
  store <8 x i32> %.reass2682, ptr %i.dwt, align 4, !tbaa !220
  store <8 x i32> %.reass2684, ptr %i.dwu, align 4, !tbaa !220
  store <8 x i32> %.reass2686, ptr %i.dwv, align 4, !tbaa !220
  %i.dww = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.dwq ; 4 uses
  %i.dwx = add <8 x i32> %broadcast.splat2147, %vec.ind2153
  %.reass2688 = add <8 x i32> %vec.ind2153, %invariant.op2687
  %.reass2690 = add <8 x i32> %vec.ind2153, %invariant.op2689
  %.reass2692 = add <8 x i32> %vec.ind2153, %invariant.op2691
  %i.dwy = getelementptr inbounds nuw i8, ptr %i.dww, i64 32
  %i.dwz = getelementptr inbounds nuw i8, ptr %i.dww, i64 64
  %i.dxa = getelementptr inbounds nuw i8, ptr %i.dww, i64 96
  store <8 x i32> %i.dwx, ptr %i.dww, align 4, !tbaa !220
  store <8 x i32> %.reass2688, ptr %i.dwy, align 4, !tbaa !220
  store <8 x i32> %.reass2690, ptr %i.dwz, align 4, !tbaa !220
  store <8 x i32> %.reass2692, ptr %i.dxa, align 4, !tbaa !220
  %index.next2160 = add nuw i64 %index2151, 32    ; 2 uses
  %vec.ind.next2162 = add <8 x i32> %vec.ind2153, splat (i32 32)
  %i.dxb = icmp eq i64 %index.next2160, %n.vec2145
  br i1 %i.dxb, label %middle.block2163, label %vector.body2150, !llvm.loop !1312

middle.block2163:                                 ; preds = %vector.body2150
  %cmp.n2164 = icmp eq i64 %n.vec2145, %i.dwo
  br i1 %cmp.n2164, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i, label %vec.epilog.iter.check2166

vec.epilog.iter.check2166:                        ; preds = %middle.block2163
  %min.epilog.iters.check2168 = icmp eq i64 %i.dwp, 0
  br i1 %min.epilog.iters.check2168, label %.lr.ph.i.i48.i.i.i.i.preheader, label %vec.epilog.ph2169, !prof !404

vec.epilog.ph2169:                                ; preds = %vector.main.loop.iter.check2142, %vec.epilog.iter.check2166
  %vec.epilog.resume.val2170 = phi i64 [ %n.vec2145, %vec.epilog.iter.check2166 ], [ 0, %vector.main.loop.iter.check2142 ] ; 2 uses
  %n.vec2171 = and i64 %i.dwo, 2147483640         ; 3 uses
  %broadcast.splatinsert2172 = insertelement <8 x i32> poison, i32 %i.dwi, i64 0
  %broadcast.splat2173 = shufflevector <8 x i32> %broadcast.splatinsert2172, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert2174 = insertelement <8 x i32> poison, i32 %i.dwm, i64 0
  %broadcast.splat2175 = shufflevector <8 x i32> %broadcast.splatinsert2174, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.dxc = trunc nuw nsw i64 %vec.epilog.resume.val2170 to i32
  %broadcast.splatinsert2176 = insertelement <8 x i32> poison, i32 %i.dxc, i64 0
  %broadcast.splat2177 = shufflevector <8 x i32> %broadcast.splatinsert2176, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction2178 = or disjoint <8 x i32> %broadcast.splat2177, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body2179

vec.epilog.vector.body2179:                       ; preds = %vec.epilog.vector.body2179, %vec.epilog.ph2169
  %index2180 = phi i64 [ %vec.epilog.resume.val2170, %vec.epilog.ph2169 ], [ %index.next2183, %vec.epilog.vector.body2179 ] ; 2 uses
  %vec.ind2182 = phi <8 x i32> [ %induction2178, %vec.epilog.ph2169 ], [ %vec.ind.next2185, %vec.epilog.vector.body2179 ] ; 3 uses
  %i.dxd = add nsw i64 %index2180, %i.dwn         ; 2 uses
  %i.dxe = getelementptr inbounds [4 x i8], ptr %i.dix, i64 %i.dxd
  %i.dxf = add <8 x i32> %broadcast.splat2175, %vec.ind2182
  store <8 x i32> %i.dxf, ptr %i.dxe, align 4, !tbaa !220
  %i.dxg = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.dxd
  %i.dxh = add <8 x i32> %broadcast.splat2173, %vec.ind2182
  store <8 x i32> %i.dxh, ptr %i.dxg, align 4, !tbaa !220
  %index.next2183 = add nuw i64 %index2180, 8     ; 2 uses
  %vec.ind.next2185 = add <8 x i32> %vec.ind2182, splat (i32 8)
  %i.dxi = icmp eq i64 %index.next2183, %n.vec2171
  br i1 %i.dxi, label %vec.epilog.middle.block2186, label %vec.epilog.vector.body2179, !llvm.loop !1313

vec.epilog.middle.block2186:                      ; preds = %vec.epilog.vector.body2179
  %cmp.n2187 = icmp eq i64 %n.vec2171, %i.dwo
  br i1 %cmp.n2187, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i, label %.lr.ph.i.i48.i.i.i.i.preheader

.lr.ph.i.i48.i.i.i.i.preheader:                   ; preds = %iter.check2165, %vec.epilog.iter.check2166, %vec.epilog.middle.block2186
  %indvars.iv1464.ph = phi i64 [ 0, %iter.check2165 ], [ %n.vec2145, %vec.epilog.iter.check2166 ], [ %n.vec2171, %vec.epilog.middle.block2186 ] ; 6 uses
  %xtraiter2573 = and i64 %i.dwo, 1
  %lcmp.mod2574.not = icmp eq i64 %xtraiter2573, 0
  br i1 %lcmp.mod2574.not, label %.lr.ph.i.i48.i.i.i.i.prol.loopexit, label %.lr.ph.i.i48.i.i.i.i.prol

.lr.ph.i.i48.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i48.i.i.i.i.preheader
  %i.dxj = add nsw i64 %indvars.iv1464.ph, %i.dwn ; 2 uses
  %i.dxk = getelementptr inbounds [4 x i8], ptr %i.dix, i64 %i.dxj
  %i.dxl = trunc nuw nsw i64 %indvars.iv1464.ph to i32
  %i.dxm = add i32 %i.dwm, %i.dxl
  store i32 %i.dxm, ptr %i.dxk, align 4, !tbaa !220
  %i.dxn = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.dxj
  %i.dxo = trunc nuw nsw i64 %indvars.iv1464.ph to i32
  %i.dxp = add i32 %i.dwi, %i.dxo
  store i32 %i.dxp, ptr %i.dxn, align 4, !tbaa !220
  %indvars.iv.next1465.prol = or disjoint i64 %indvars.iv1464.ph, 1
  br label %.lr.ph.i.i48.i.i.i.i.prol.loopexit

.lr.ph.i.i48.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i48.i.i.i.i.prol, %.lr.ph.i.i48.i.i.i.i.preheader
  %indvars.iv1464.unr = phi i64 [ %indvars.iv1464.ph, %.lr.ph.i.i48.i.i.i.i.preheader ], [ %indvars.iv.next1465.prol, %.lr.ph.i.i48.i.i.i.i.prol ]
  %i.dxq = add nsw i64 %i.dwo, -1
  %i.dxr = icmp eq i64 %indvars.iv1464.ph, %i.dxq
  br i1 %i.dxr, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i, label %.lr.ph.i.i48.i.i.i.i

.lr.ph.i.i48.i.i.i.i:                             ; preds = %.lr.ph.i.i48.i.i.i.i.prol.loopexit, %.lr.ph.i.i48.i.i.i.i
  %indvars.iv1464 = phi i64 [ %indvars.iv.next1465.1, %.lr.ph.i.i48.i.i.i.i ], [ %indvars.iv1464.unr, %.lr.ph.i.i48.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.dxs = add nsw i64 %indvars.iv1464, %i.dwn    ; 2 uses
  %i.dxt = getelementptr inbounds [4 x i8], ptr %i.dix, i64 %i.dxs
  %i.dxu = trunc i64 %indvars.iv1464 to i32
  %i.dxv = add i32 %i.dwm, %i.dxu
  store i32 %i.dxv, ptr %i.dxt, align 4, !tbaa !220
  %i.dxw = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.dxs
  %i.dxx = trunc i64 %indvars.iv1464 to i32
  %i.dxy = add i32 %i.dwi, %i.dxx
  store i32 %i.dxy, ptr %i.dxw, align 4, !tbaa !220
  %indvars.iv.next1465 = add nuw nsw i64 %indvars.iv1464, 1 ; 3 uses
  %i.dxz = add nsw i64 %indvars.iv.next1465, %i.dwn ; 2 uses
  %i.dya = getelementptr inbounds [4 x i8], ptr %i.dix, i64 %i.dxz
  %i.dyb = trunc i64 %indvars.iv.next1465 to i32
  %i.dyc = add i32 %i.dwm, %i.dyb
  store i32 %i.dyc, ptr %i.dya, align 4, !tbaa !220
  %i.dyd = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.dxz
  %i.dye = trunc i64 %indvars.iv.next1465 to i32
  %i.dyf = add i32 %i.dwi, %i.dye
  store i32 %i.dyf, ptr %i.dyd, align 4, !tbaa !220
  %indvars.iv.next1465.1 = add nuw nsw i64 %indvars.iv1464, 2 ; 2 uses
  %exitcond.not.i.i50.i.i.i.i.1 = icmp eq i64 %indvars.iv.next1465.1, %i.dwo
  br i1 %exitcond.not.i.i50.i.i.i.i.1, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i, label %.lr.ph.i.i48.i.i.i.i, !llvm.loop !1314

_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i: ; preds = %.lr.ph.i.i48.i.i.i.i.prol.loopexit, %.lr.ph.i.i48.i.i.i.i, %middle.block2163, %vec.epilog.middle.block2186, %bb.xj
  %i.dyg = add nsw i32 %i.dwa, %.61163            ; 2 uses
  %i.dyh = add nuw i64 %.024.i.i.i.i.i, 1         ; 2 uses
  %i.dyi = icmp ult i64 %i.dyh, %i.dvp
  br i1 %i.dyi, label %bb.xj, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, !llvm.loop !1315

bb.xk:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i, %.lr.ph.i.i.i.i.i828
  %.71164 = phi i32 [ %.21159, %.lr.ph.i.i.i.i.i828 ], [ %i.eav, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i ] ; 3 uses
  %.01523.i.i.i.i.i = phi i64 [ %i.dvh, %.lr.ph.i.i.i.i.i828 ], [ %i.eax, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i ] ; 3 uses
  %i.dyj = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01523.i.i.i.i.i, i1 true)
  %i.dyk = or disjoint i64 %i.dyj, %i.dvj         ; 4 uses
  %i.dyl = getelementptr inbounds [4 x i8], ptr %i.duu, i64 %i.dyk ; 2 uses
  %i.dym = load i32, ptr %i.dyl, align 4, !tbaa !220
  %i.dyn = sext i32 %i.dym to i64
  %i.dyo = getelementptr inbounds [4 x i8], ptr %i.dvk, i64 %i.dyn
  %i.dyp = load i32, ptr %i.dyo, align 4, !tbaa !220 ; 6 uses
  %i.dyq = getelementptr inbounds [4 x i8], ptr %i.dhs, i64 %i.dyk
  store i32 %.71164, ptr %i.dyq, align 4, !tbaa !220
  %i.dyr = getelementptr inbounds [4 x i8], ptr %i.did, i64 %i.dyk
  store i32 %i.dyp, ptr %i.dyr, align 4, !tbaa !220
  %i.dys = icmp sgt i32 %i.dyp, 0
  br i1 %i.dys, label %iter.check2113, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i

iter.check2113:                                   ; preds = %bb.xk
  %i.dyt = getelementptr inbounds [4 x i8], ptr %i.duy, i64 %i.dyk
  %i.dyu = load i32, ptr %i.dyt, align 4, !tbaa !220
  %i.dyv = sext i32 %i.dyu to i64
  %i.dyw = getelementptr inbounds [4 x i8], ptr %i.dvm, i64 %i.dyv
  %i.dyx = load i32, ptr %i.dyw, align 4, !tbaa !220 ; 5 uses
  %i.dyy = load i32, ptr %i.dyl, align 4, !tbaa !220
  %i.dyz = sext i32 %i.dyy to i64
  %i.dza = getelementptr inbounds [4 x i8], ptr %i.dvl, i64 %i.dyz
  %i.dzb = load i32, ptr %i.dza, align 4, !tbaa !220 ; 5 uses
  %i.dzc = sext i32 %.71164 to i64                ; 5 uses
  %i.dzd = zext nneg i32 %i.dyp to i64            ; 8 uses
  %min.iters.check2087 = icmp ult i32 %i.dyp, 8
  %or.cond2421 = select i1 %min.iters.check2087, i1 true, i1 %diff.check2089
  br i1 %or.cond2421, label %.lr.ph.i17.i.i.i.i.i.preheader, label %vector.main.loop.iter.check2090

vector.main.loop.iter.check2090:                  ; preds = %iter.check2113
  %min.iters.check2091 = icmp ult i32 %i.dyp, 32
  br i1 %min.iters.check2091, label %vec.epilog.ph2117, label %vector.ph2092

vector.ph2092:                                    ; preds = %vector.main.loop.iter.check2090
  %i.dze = and i64 %i.dzd, 24
  %n.vec2093 = and i64 %i.dzd, 2147483616         ; 4 uses
  %broadcast.splatinsert2094 = insertelement <8 x i32> poison, i32 %i.dyx, i64 0
  %broadcast.splat2095 = shufflevector <8 x i32> %broadcast.splatinsert2094, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert2096 = insertelement <8 x i32> poison, i32 %i.dzb, i64 0
  %broadcast.splat2097 = shufflevector <8 x i32> %broadcast.splatinsert2096, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op2693 = add <8 x i32> splat (i32 8), %broadcast.splat2097
  %invariant.op2695 = add <8 x i32> splat (i32 16), %broadcast.splat2097
  %invariant.op2697 = add <8 x i32> splat (i32 24), %broadcast.splat2097
  %invariant.op2699 = add <8 x i32> splat (i32 8), %broadcast.splat2095
  %invariant.op2701 = add <8 x i32> splat (i32 16), %broadcast.splat2095
  %invariant.op2703 = add <8 x i32> splat (i32 24), %broadcast.splat2095
  br label %vector.body2098

vector.body2098:                                  ; preds = %vector.ph2092, %vector.body2098
  %index2099 = phi i64 [ 0, %vector.ph2092 ], [ %index.next2108, %vector.body2098 ] ; 2 uses
  %vec.ind2101 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2092 ], [ %vec.ind.next2110, %vector.body2098 ] ; 9 uses
  %i.dzf = add nsw i64 %index2099, %i.dzc         ; 2 uses
  %i.dzg = getelementptr inbounds [4 x i8], ptr %i.dix, i64 %i.dzf ; 4 uses
  %i.dzh = add <8 x i32> %broadcast.splat2097, %vec.ind2101
  %.reass2694 = add <8 x i32> %vec.ind2101, %invariant.op2693
  %.reass2696 = add <8 x i32> %vec.ind2101, %invariant.op2695
  %.reass2698 = add <8 x i32> %vec.ind2101, %invariant.op2697
  %i.dzi = getelementptr inbounds nuw i8, ptr %i.dzg, i64 32
  %i.dzj = getelementptr inbounds nuw i8, ptr %i.dzg, i64 64
  %i.dzk = getelementptr inbounds nuw i8, ptr %i.dzg, i64 96
  store <8 x i32> %i.dzh, ptr %i.dzg, align 4, !tbaa !220
  store <8 x i32> %.reass2694, ptr %i.dzi, align 4, !tbaa !220
  store <8 x i32> %.reass2696, ptr %i.dzj, align 4, !tbaa !220
  store <8 x i32> %.reass2698, ptr %i.dzk, align 4, !tbaa !220
  %i.dzl = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.dzf ; 4 uses
  %i.dzm = add <8 x i32> %broadcast.splat2095, %vec.ind2101
  %.reass2700 = add <8 x i32> %vec.ind2101, %invariant.op2699
  %.reass2702 = add <8 x i32> %vec.ind2101, %invariant.op2701
  %.reass2704 = add <8 x i32> %vec.ind2101, %invariant.op2703
  %i.dzn = getelementptr inbounds nuw i8, ptr %i.dzl, i64 32
  %i.dzo = getelementptr inbounds nuw i8, ptr %i.dzl, i64 64
  %i.dzp = getelementptr inbounds nuw i8, ptr %i.dzl, i64 96
  store <8 x i32> %i.dzm, ptr %i.dzl, align 4, !tbaa !220
  store <8 x i32> %.reass2700, ptr %i.dzn, align 4, !tbaa !220
  store <8 x i32> %.reass2702, ptr %i.dzo, align 4, !tbaa !220
  store <8 x i32> %.reass2704, ptr %i.dzp, align 4, !tbaa !220
  %index.next2108 = add nuw i64 %index2099, 32    ; 2 uses
  %vec.ind.next2110 = add <8 x i32> %vec.ind2101, splat (i32 32)
  %i.dzq = icmp eq i64 %index.next2108, %n.vec2093
  br i1 %i.dzq, label %middle.block2111, label %vector.body2098, !llvm.loop !1316

middle.block2111:                                 ; preds = %vector.body2098
  %cmp.n2112 = icmp eq i64 %n.vec2093, %i.dzd
  br i1 %cmp.n2112, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i, label %vec.epilog.iter.check2114

vec.epilog.iter.check2114:                        ; preds = %middle.block2111
  %min.epilog.iters.check2116 = icmp eq i64 %i.dze, 0
  br i1 %min.epilog.iters.check2116, label %.lr.ph.i17.i.i.i.i.i.preheader, label %vec.epilog.ph2117, !prof !404

vec.epilog.ph2117:                                ; preds = %vector.main.loop.iter.check2090, %vec.epilog.iter.check2114
  %vec.epilog.resume.val2118 = phi i64 [ %n.vec2093, %vec.epilog.iter.check2114 ], [ 0, %vector.main.loop.iter.check2090 ] ; 2 uses
  %n.vec2119 = and i64 %i.dzd, 2147483640         ; 3 uses
  %broadcast.splatinsert2120 = insertelement <8 x i32> poison, i32 %i.dyx, i64 0
  %broadcast.splat2121 = shufflevector <8 x i32> %broadcast.splatinsert2120, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert2122 = insertelement <8 x i32> poison, i32 %i.dzb, i64 0
  %broadcast.splat2123 = shufflevector <8 x i32> %broadcast.splatinsert2122, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.dzr = trunc nuw nsw i64 %vec.epilog.resume.val2118 to i32
  %broadcast.splatinsert2124 = insertelement <8 x i32> poison, i32 %i.dzr, i64 0
  %broadcast.splat2125 = shufflevector <8 x i32> %broadcast.splatinsert2124, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction2126 = or disjoint <8 x i32> %broadcast.splat2125, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body2127

vec.epilog.vector.body2127:                       ; preds = %vec.epilog.vector.body2127, %vec.epilog.ph2117
  %index2128 = phi i64 [ %vec.epilog.resume.val2118, %vec.epilog.ph2117 ], [ %index.next2131, %vec.epilog.vector.body2127 ] ; 2 uses
  %vec.ind2130 = phi <8 x i32> [ %induction2126, %vec.epilog.ph2117 ], [ %vec.ind.next2133, %vec.epilog.vector.body2127 ] ; 3 uses
  %i.dzs = add nsw i64 %index2128, %i.dzc         ; 2 uses
  %i.dzt = getelementptr inbounds [4 x i8], ptr %i.dix, i64 %i.dzs
  %i.dzu = add <8 x i32> %broadcast.splat2123, %vec.ind2130
  store <8 x i32> %i.dzu, ptr %i.dzt, align 4, !tbaa !220
  %i.dzv = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.dzs
  %i.dzw = add <8 x i32> %broadcast.splat2121, %vec.ind2130
  store <8 x i32> %i.dzw, ptr %i.dzv, align 4, !tbaa !220
  %index.next2131 = add nuw i64 %index2128, 8     ; 2 uses
  %vec.ind.next2133 = add <8 x i32> %vec.ind2130, splat (i32 8)
  %i.dzx = icmp eq i64 %index.next2131, %n.vec2119
  br i1 %i.dzx, label %vec.epilog.middle.block2134, label %vec.epilog.vector.body2127, !llvm.loop !1317

vec.epilog.middle.block2134:                      ; preds = %vec.epilog.vector.body2127
  %cmp.n2135 = icmp eq i64 %n.vec2119, %i.dzd
  br i1 %cmp.n2135, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.preheader

.lr.ph.i17.i.i.i.i.i.preheader:                   ; preds = %iter.check2113, %vec.epilog.iter.check2114, %vec.epilog.middle.block2134
  %indvars.iv1467.ph = phi i64 [ 0, %iter.check2113 ], [ %n.vec2093, %vec.epilog.iter.check2114 ], [ %n.vec2119, %vec.epilog.middle.block2134 ] ; 6 uses
  %xtraiter2575 = and i64 %i.dzd, 1
  %lcmp.mod2576.not = icmp eq i64 %xtraiter2575, 0
  br i1 %lcmp.mod2576.not, label %.lr.ph.i17.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i17.i.i.i.i.i.preheader
  %i.dzy = add nsw i64 %indvars.iv1467.ph, %i.dzc ; 2 uses
  %i.dzz = getelementptr inbounds [4 x i8], ptr %i.dix, i64 %i.dzy
  %i.eaa = trunc nuw nsw i64 %indvars.iv1467.ph to i32
  %i.eab = add i32 %i.dzb, %i.eaa
  store i32 %i.eab, ptr %i.dzz, align 4, !tbaa !220
  %i.eac = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.dzy
  %i.ead = trunc nuw nsw i64 %indvars.iv1467.ph to i32
  %i.eae = add i32 %i.dyx, %i.ead
  store i32 %i.eae, ptr %i.eac, align 4, !tbaa !220
  %indvars.iv.next1468.prol = or disjoint i64 %indvars.iv1467.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i17.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.preheader
  %indvars.iv1467.unr = phi i64 [ %indvars.iv1467.ph, %.lr.ph.i17.i.i.i.i.i.preheader ], [ %indvars.iv.next1468.prol, %.lr.ph.i17.i.i.i.i.i.prol ]
  %i.eaf = add nsw i64 %i.dzd, -1
  %i.eag = icmp eq i64 %indvars.iv1467.ph, %i.eaf
  br i1 %i.eag, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i:                             ; preds = %.lr.ph.i17.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i
  %indvars.iv1467 = phi i64 [ %indvars.iv.next1468.1, %.lr.ph.i17.i.i.i.i.i ], [ %indvars.iv1467.unr, %.lr.ph.i17.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.eah = add nsw i64 %indvars.iv1467, %i.dzc    ; 2 uses
  %i.eai = getelementptr inbounds [4 x i8], ptr %i.dix, i64 %i.eah
  %i.eaj = trunc i64 %indvars.iv1467 to i32
  %i.eak = add i32 %i.dzb, %i.eaj
  store i32 %i.eak, ptr %i.eai, align 4, !tbaa !220
  %i.eal = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.eah
  %i.eam = trunc i64 %indvars.iv1467 to i32
  %i.ean = add i32 %i.dyx, %i.eam
  store i32 %i.ean, ptr %i.eal, align 4, !tbaa !220
  %indvars.iv.next1468 = add nuw nsw i64 %indvars.iv1467, 1 ; 3 uses
  %i.eao = add nsw i64 %indvars.iv.next1468, %i.dzc ; 2 uses
  %i.eap = getelementptr inbounds [4 x i8], ptr %i.dix, i64 %i.eao
  %i.eaq = trunc i64 %indvars.iv.next1468 to i32
  %i.ear = add i32 %i.dzb, %i.eaq
  store i32 %i.ear, ptr %i.eap, align 4, !tbaa !220
  %i.eas = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.eao
  %i.eat = trunc i64 %indvars.iv.next1468 to i32
  %i.eau = add i32 %i.dyx, %i.eat
  store i32 %i.eau, ptr %i.eas, align 4, !tbaa !220
  %indvars.iv.next1468.1 = add nuw nsw i64 %indvars.iv1467, 2 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.1 = icmp eq i64 %indvars.iv.next1468.1, %i.dzd
  br i1 %exitcond.not.i19.i.i.i.i.i.1, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i, !llvm.loop !1318

_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i: ; preds = %.lr.ph.i17.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i, %middle.block2111, %vec.epilog.middle.block2134, %bb.xk
  %i.eav = add nsw i32 %i.dyp, %.71164            ; 2 uses
  %i.eaw = add i64 %.01523.i.i.i.i.i, -1
  %i.eax = and i64 %i.eaw, %.01523.i.i.i.i.i      ; 2 uses
  %.not.i51.i.i.i.i = icmp eq i64 %i.eax, 0
  br i1 %.not.i51.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %bb.xk, !llvm.loop !1319

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i, %bb.xi, %.lr.ph.i.i.i.i822
  %.31160 = phi i32 [ %.21159, %.lr.ph.i.i.i.i822 ], [ %.21159, %bb.xi ], [ %i.eav, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i ], [ %i.dyg, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i ] ; 2 uses
  %i.eay = add nsw i32 %i.dvd, 64                 ; 2 uses
  %.not33.i.i.i.i823 = icmp sgt i32 %i.eay, %i.dnn
  br i1 %.not33.i.i.i.i823, label %._crit_edge.i.i.i.i824, label %.lr.ph.i.i.i.i822, !llvm.loop !1320

bb.xl:                                            ; preds = %._crit_edge.i.i.i.i824
  %i.eaz = ashr i32 %i.dnj, 6
  %i.eba = and i32 %i.dnj, 63
  %i.ebb = zext nneg i32 %i.eba to i64
  %notmask.i52.i.i.i.i = shl nsw i64 -1, %i.ebb
  %i.ebc = xor i64 %notmask.i52.i.i.i.i, -1
  %i.ebd = sext i32 %i.eaz to i64
  %i.ebe = getelementptr inbounds [8 x i8], ptr %i.dnf, i64 %i.ebd
  %i.ebf = load i64, ptr %i.ebe, align 8, !tbaa !275
  %i.ebg = and i64 %i.ebf, %i.ebc                 ; 2 uses
  %.not.i53.i.i.i.i826 = icmp eq i64 %i.ebg, 0
  br i1 %.not.i53.i.i.i.i826, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit, label %.preheader.i54.i.i.i.i

.preheader.i54.i.i.i.i:                           ; preds = %bb.xl
  %i.ebh = load ptr, ptr %i.p, align 8, !tbaa !382 ; 2 uses
  %i.ebi = load ptr, ptr %i.n, align 8, !tbaa !397
  %i.ebj = sext i32 %i.dnn to i64
  %i.ebk = getelementptr inbounds nuw i8, ptr %i.ebh, i64 120
  %i.ebl = load ptr, ptr %i.ebk, align 8, !tbaa !380
  %i.ebm = getelementptr inbounds nuw i8, ptr %i.ebh, i64 104
  %i.ebn = load ptr, ptr %i.ebm, align 8, !tbaa !379
  %i.ebo = load ptr, ptr %i.q, align 8, !tbaa !382
  %i.ebp = load ptr, ptr %i.o, align 8, !tbaa !397
  %i.ebq = getelementptr inbounds nuw i8, ptr %i.ebo, i64 104
  %i.ebr = load ptr, ptr %i.ebq, align 8, !tbaa !379
  %i.ebs = sub i64 %i.diy, %i.dio
  %diff.check2193 = icmp ugt i64 %i.ebs, -128
  br label %bb.xm

bb.xm:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i, %.preheader.i54.i.i.i.i
  %.51162 = phi i32 [ %.41161, %.preheader.i54.i.i.i.i ], [ %i.eef, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i ] ; 3 uses
  %.011.i56.i.i.i.i = phi i64 [ %i.ebg, %.preheader.i54.i.i.i.i ], [ %i.eeh, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i ] ; 3 uses
  %i.ebt = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i56.i.i.i.i, i1 true)
  %i.ebu = or disjoint i64 %i.ebt, %i.ebj         ; 4 uses
  %i.ebv = getelementptr inbounds [4 x i8], ptr %i.ebi, i64 %i.ebu ; 2 uses
  %i.ebw = load i32, ptr %i.ebv, align 4, !tbaa !220
  %i.ebx = sext i32 %i.ebw to i64
  %i.eby = getelementptr inbounds [4 x i8], ptr %i.ebl, i64 %i.ebx
  %i.ebz = load i32, ptr %i.eby, align 4, !tbaa !220 ; 6 uses
  %i.eca = getelementptr inbounds [4 x i8], ptr %i.dhs, i64 %i.ebu
  store i32 %.51162, ptr %i.eca, align 4, !tbaa !220
  %i.ecb = getelementptr inbounds [4 x i8], ptr %i.did, i64 %i.ebu
  store i32 %i.ebz, ptr %i.ecb, align 4, !tbaa !220
  %i.ecc = icmp sgt i32 %i.ebz, 0
  br i1 %i.ecc, label %iter.check2217, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i

iter.check2217:                                   ; preds = %bb.xm
  %i.ecd = getelementptr inbounds [4 x i8], ptr %i.ebp, i64 %i.ebu
  %i.ece = load i32, ptr %i.ecd, align 4, !tbaa !220
  %i.ecf = sext i32 %i.ece to i64
  %i.ecg = getelementptr inbounds [4 x i8], ptr %i.ebr, i64 %i.ecf
  %i.ech = load i32, ptr %i.ecg, align 4, !tbaa !220 ; 5 uses
  %i.eci = load i32, ptr %i.ebv, align 4, !tbaa !220
  %i.ecj = sext i32 %i.eci to i64
  %i.eck = getelementptr inbounds [4 x i8], ptr %i.ebn, i64 %i.ecj
  %i.ecl = load i32, ptr %i.eck, align 4, !tbaa !220 ; 5 uses
  %i.ecm = sext i32 %.51162 to i64                ; 5 uses
  %i.ecn = zext nneg i32 %i.ebz to i64            ; 8 uses
  %min.iters.check2191 = icmp ult i32 %i.ebz, 8
  %or.cond2422 = select i1 %min.iters.check2191, i1 true, i1 %diff.check2193
  br i1 %or.cond2422, label %.lr.ph.i.i59.i.i.i.i.preheader, label %vector.main.loop.iter.check2194

vector.main.loop.iter.check2194:                  ; preds = %iter.check2217
  %min.iters.check2195 = icmp ult i32 %i.ebz, 32
  br i1 %min.iters.check2195, label %vec.epilog.ph2221, label %vector.ph2196

vector.ph2196:                                    ; preds = %vector.main.loop.iter.check2194
  %i.eco = and i64 %i.ecn, 24
  %n.vec2197.a = and i64 %i.ecn, 2147483616       ; 4 uses
  %broadcast.splatinsert2198.a = insertelement <8 x i32> poison, i32 %i.ech, i64 0
  %broadcast.splat2199.a = shufflevector <8 x i32> %broadcast.splatinsert2198.a, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert2200.a = insertelement <8 x i32> poison, i32 %i.ecl, i64 0
  %broadcast.splat2201.a = shufflevector <8 x i32> %broadcast.splatinsert2200.a, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op2705 = add <8 x i32> splat (i32 8), %broadcast.splat2201.a
  %invariant.op2707 = add <8 x i32> splat (i32 16), %broadcast.splat2201.a
  %invariant.op2709 = add <8 x i32> splat (i32 24), %broadcast.splat2201.a
  %invariant.op2711 = add <8 x i32> splat (i32 8), %broadcast.splat2199.a
  %invariant.op2713 = add <8 x i32> splat (i32 16), %broadcast.splat2199.a
  %invariant.op2715 = add <8 x i32> splat (i32 24), %broadcast.splat2199.a
  br label %vector.body2202

vector.body2202:                                  ; preds = %vector.ph2196, %vector.body2202
  %index2203 = phi i64 [ 0, %vector.ph2196 ], [ %index.next2212, %vector.body2202 ] ; 2 uses
  %vec.ind2205 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2196 ], [ %vec.ind.next2214, %vector.body2202 ] ; 9 uses
  %i.ecp = add nsw i64 %index2203, %i.ecm         ; 2 uses
  %i.ecq = getelementptr inbounds [4 x i8], ptr %i.dix, i64 %i.ecp ; 4 uses
  %i.ecr = add <8 x i32> %broadcast.splat2201.a, %vec.ind2205
  %.reass2706 = add <8 x i32> %vec.ind2205, %invariant.op2705
  %.reass2708 = add <8 x i32> %vec.ind2205, %invariant.op2707
  %.reass2710 = add <8 x i32> %vec.ind2205, %invariant.op2709
  %i.ecs = getelementptr inbounds nuw i8, ptr %i.ecq, i64 32
  %i.ect = getelementptr inbounds nuw i8, ptr %i.ecq, i64 64
  %i.ecu = getelementptr inbounds nuw i8, ptr %i.ecq, i64 96
  store <8 x i32> %i.ecr, ptr %i.ecq, align 4, !tbaa !220
  store <8 x i32> %.reass2706, ptr %i.ecs, align 4, !tbaa !220
  store <8 x i32> %.reass2708, ptr %i.ect, align 4, !tbaa !220
  store <8 x i32> %.reass2710, ptr %i.ecu, align 4, !tbaa !220
  %i.ecv = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.ecp ; 4 uses
  %i.ecw = add <8 x i32> %broadcast.splat2199.a, %vec.ind2205
  %.reass2712 = add <8 x i32> %vec.ind2205, %invariant.op2711
  %.reass2714 = add <8 x i32> %vec.ind2205, %invariant.op2713
  %.reass2716 = add <8 x i32> %vec.ind2205, %invariant.op2715
  %i.ecx = getelementptr inbounds nuw i8, ptr %i.ecv, i64 32
  %i.ecy = getelementptr inbounds nuw i8, ptr %i.ecv, i64 64
  %i.ecz = getelementptr inbounds nuw i8, ptr %i.ecv, i64 96
  store <8 x i32> %i.ecw, ptr %i.ecv, align 4, !tbaa !220
  store <8 x i32> %.reass2712, ptr %i.ecx, align 4, !tbaa !220
  store <8 x i32> %.reass2714, ptr %i.ecy, align 4, !tbaa !220
  store <8 x i32> %.reass2716, ptr %i.ecz, align 4, !tbaa !220
  %index.next2212 = add nuw i64 %index2203, 32    ; 2 uses
  %vec.ind.next2214 = add <8 x i32> %vec.ind2205, splat (i32 32)
  %i.eda = icmp eq i64 %index.next2212, %n.vec2197.a
  br i1 %i.eda, label %middle.block2215, label %vector.body2202, !llvm.loop !1321

middle.block2215:                                 ; preds = %vector.body2202
  %cmp.n2216 = icmp eq i64 %n.vec2197.a, %i.ecn
  br i1 %cmp.n2216, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i, label %vec.epilog.iter.check2218

vec.epilog.iter.check2218:                        ; preds = %middle.block2215
  %min.epilog.iters.check2220 = icmp eq i64 %i.eco, 0
  br i1 %min.epilog.iters.check2220, label %.lr.ph.i.i59.i.i.i.i.preheader, label %vec.epilog.ph2221, !prof !404

vec.epilog.ph2221:                                ; preds = %vector.main.loop.iter.check2194, %vec.epilog.iter.check2218
  %vec.epilog.resume.val2222 = phi i64 [ %n.vec2197.a, %vec.epilog.iter.check2218 ], [ 0, %vector.main.loop.iter.check2194 ] ; 2 uses
  %n.vec2223 = and i64 %i.ecn, 2147483640         ; 3 uses
  %broadcast.splatinsert2224 = insertelement <8 x i32> poison, i32 %i.ech, i64 0
  %broadcast.splat2225 = shufflevector <8 x i32> %broadcast.splatinsert2224, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert2226 = insertelement <8 x i32> poison, i32 %i.ecl, i64 0
  %broadcast.splat2227 = shufflevector <8 x i32> %broadcast.splatinsert2226, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.edb = trunc nuw nsw i64 %vec.epilog.resume.val2222 to i32
  %broadcast.splatinsert2228 = insertelement <8 x i32> poison, i32 %i.edb, i64 0
  %broadcast.splat2229 = shufflevector <8 x i32> %broadcast.splatinsert2228, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction2230 = or disjoint <8 x i32> %broadcast.splat2229, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body2231

vec.epilog.vector.body2231:                       ; preds = %vec.epilog.vector.body2231, %vec.epilog.ph2221
  %index2232 = phi i64 [ %vec.epilog.resume.val2222, %vec.epilog.ph2221 ], [ %index.next2235, %vec.epilog.vector.body2231 ] ; 2 uses
  %vec.ind2234 = phi <8 x i32> [ %induction2230, %vec.epilog.ph2221 ], [ %vec.ind.next2237, %vec.epilog.vector.body2231 ] ; 3 uses
  %i.edc = add nsw i64 %index2232, %i.ecm         ; 2 uses
  %i.edd = getelementptr inbounds [4 x i8], ptr %i.dix, i64 %i.edc
  %i.ede = add <8 x i32> %broadcast.splat2227, %vec.ind2234
  store <8 x i32> %i.ede, ptr %i.edd, align 4, !tbaa !220
  %i.edf = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.edc
  %i.edg = add <8 x i32> %broadcast.splat2225, %vec.ind2234
  store <8 x i32> %i.edg, ptr %i.edf, align 4, !tbaa !220
  %index.next2235 = add nuw i64 %index2232, 8     ; 2 uses
  %vec.ind.next2237 = add <8 x i32> %vec.ind2234, splat (i32 8)
  %i.edh = icmp eq i64 %index.next2235, %n.vec2223
  br i1 %i.edh, label %vec.epilog.middle.block2238, label %vec.epilog.vector.body2231, !llvm.loop !1322

vec.epilog.middle.block2238:                      ; preds = %vec.epilog.vector.body2231
  %cmp.n2239 = icmp eq i64 %n.vec2223, %i.ecn
  br i1 %cmp.n2239, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i, label %.lr.ph.i.i59.i.i.i.i.preheader

.lr.ph.i.i59.i.i.i.i.preheader:                   ; preds = %iter.check2217, %vec.epilog.iter.check2218, %vec.epilog.middle.block2238
  %indvars.iv1470.ph = phi i64 [ 0, %iter.check2217 ], [ %n.vec2197.a, %vec.epilog.iter.check2218 ], [ %n.vec2223, %vec.epilog.middle.block2238 ] ; 6 uses
  %xtraiter2577 = and i64 %i.ecn, 1
  %lcmp.mod2578.not = icmp eq i64 %xtraiter2577, 0
  br i1 %lcmp.mod2578.not, label %.lr.ph.i.i59.i.i.i.i.prol.loopexit, label %.lr.ph.i.i59.i.i.i.i.prol

.lr.ph.i.i59.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i59.i.i.i.i.preheader
  %i.edi = add nsw i64 %indvars.iv1470.ph, %i.ecm ; 2 uses
  %i.edj = getelementptr inbounds [4 x i8], ptr %i.dix, i64 %i.edi
  %i.edk = trunc nuw nsw i64 %indvars.iv1470.ph to i32
  %i.edl = add i32 %i.ecl, %i.edk
  store i32 %i.edl, ptr %i.edj, align 4, !tbaa !220
  %i.edm = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.edi
  %i.edn = trunc nuw nsw i64 %indvars.iv1470.ph to i32
  %i.edo = add i32 %i.ech, %i.edn
  store i32 %i.edo, ptr %i.edm, align 4, !tbaa !220
  %indvars.iv.next1471.prol = or disjoint i64 %indvars.iv1470.ph, 1
  br label %.lr.ph.i.i59.i.i.i.i.prol.loopexit

.lr.ph.i.i59.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i59.i.i.i.i.prol, %.lr.ph.i.i59.i.i.i.i.preheader
  %indvars.iv1470.unr = phi i64 [ %indvars.iv1470.ph, %.lr.ph.i.i59.i.i.i.i.preheader ], [ %indvars.iv.next1471.prol, %.lr.ph.i.i59.i.i.i.i.prol ]
  %i.edp = add nsw i64 %i.ecn, -1
  %i.edq = icmp eq i64 %indvars.iv1470.ph, %i.edp
  br i1 %i.edq, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i, label %.lr.ph.i.i59.i.i.i.i

.lr.ph.i.i59.i.i.i.i:                             ; preds = %.lr.ph.i.i59.i.i.i.i.prol.loopexit, %.lr.ph.i.i59.i.i.i.i
  %indvars.iv1470 = phi i64 [ %indvars.iv.next1471.1, %.lr.ph.i.i59.i.i.i.i ], [ %indvars.iv1470.unr, %.lr.ph.i.i59.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.edr = add nsw i64 %indvars.iv1470, %i.ecm    ; 2 uses
  %i.eds = getelementptr inbounds [4 x i8], ptr %i.dix, i64 %i.edr
  %i.edt = trunc i64 %indvars.iv1470 to i32
  %i.edu = add i32 %i.ecl, %i.edt
  store i32 %i.edu, ptr %i.eds, align 4, !tbaa !220
  %i.edv = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.edr
  %i.edw = trunc i64 %indvars.iv1470 to i32
  %i.edx = add i32 %i.ech, %i.edw
  store i32 %i.edx, ptr %i.edv, align 4, !tbaa !220
  %indvars.iv.next1471 = add nuw nsw i64 %indvars.iv1470, 1 ; 3 uses
  %i.edy = add nsw i64 %indvars.iv.next1471, %i.ecm ; 2 uses
  %i.edz = getelementptr inbounds [4 x i8], ptr %i.dix, i64 %i.edy
  %i.eea = trunc i64 %indvars.iv.next1471 to i32
  %i.eeb = add i32 %i.ecl, %i.eea
  store i32 %i.eeb, ptr %i.edz, align 4, !tbaa !220
  %i.eec = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.edy
  %i.eed = trunc i64 %indvars.iv.next1471 to i32
  %i.eee = add i32 %i.ech, %i.eed
  store i32 %i.eee, ptr %i.eec, align 4, !tbaa !220
  %indvars.iv.next1471.1 = add nuw nsw i64 %indvars.iv1470, 2 ; 2 uses
  %exitcond.not.i.i61.i.i.i.i.1 = icmp eq i64 %indvars.iv.next1471.1, %i.ecn
  br i1 %exitcond.not.i.i61.i.i.i.i.1, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i, label %.lr.ph.i.i59.i.i.i.i, !llvm.loop !1323

_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i: ; preds = %.lr.ph.i.i59.i.i.i.i.prol.loopexit, %.lr.ph.i.i59.i.i.i.i, %middle.block2215, %vec.epilog.middle.block2238, %bb.xm
  %i.eef = add nsw i32 %i.ebz, %.51162
  %i.eeg = add nuw i64 %.011.i56.i.i.i.i, 9223372036854775807
  %i.eeh = and i64 %i.eeg, %.011.i56.i.i.i.i      ; 2 uses
  %.not10.i58.i.i.i.i = icmp eq i64 %i.eeh, 0
  br i1 %.not10.i58.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit, label %bb.xm, !llvm.loop !1308

_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i, %bb.xl, %._crit_edge.i.i.i.i824, %bb.xd, %bb.xb, %bb.wz
  call void @llvm.lifetime.start.p0(ptr nonnull %114) #23
  store ptr null, ptr %115, align 8, !tbaa !338
  store ptr %i.dis, ptr %116, align 8, !tbaa !338
  %.not.i854 = icmp eq ptr %i.dis, null
  br i1 %.not.i854, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit855, label %bb.xn

bb.xn:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit
  %i.eei = getelementptr inbounds nuw i8, ptr %i.dis, i64 40
  %i.eej = atomicrmw add ptr %i.eei, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit855

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit855: ; preds = %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit, %bb.xn
  %i.eek = load ptr, ptr %i.p, align 8, !tbaa !382 ; 2 uses
  %i.eel = getelementptr inbounds nuw i8, ptr %i.eek, i64 128
  %i.eem = getelementptr inbounds nuw i8, ptr %117, i64 8
  %i.een = getelementptr inbounds nuw i8, ptr %i.eek, i64 136
  %i.eeo = load ptr, ptr %i.een, align 8, !tbaa !218 ; 2 uses
  %i.eep = load <2 x ptr>, ptr %i.eel, align 8, !tbaa !219
  store <2 x ptr> %i.eep, ptr %117, align 16, !tbaa !219
  %.not.i.i.i856 = icmp eq ptr %i.eeo, null
  br i1 %.not.i.i.i856, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit858, label %bb.xo

bb.xo:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit855
  %i.eeq = getelementptr inbounds nuw i8, ptr %i.eeo, i64 8 ; 3 uses
  %i.eer = load i8, ptr @__libc_single_threaded, align 1, !tbaa !208
  %.not.i.i.i.i857 = icmp eq i8 %i.eer, 0
  br i1 %.not.i.i.i.i857, label %bb.xq, label %bb.xp

bb.xp:                                            ; preds = %bb.xo
  %i.ees = load i32, ptr %i.eeq, align 4, !tbaa !220
  %i.eet = add nsw i32 %i.ees, 1
  store i32 %i.eet, ptr %i.eeq, align 4, !tbaa !220
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit858

bb.xq:                                            ; preds = %bb.xo
  %i.eeu = atomicrmw volatile add ptr %i.eeq, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit858

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit858: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit855, %bb.xp, %bb.xq
  invoke void @_ZN8facebook5velox10BaseVector16wrapInDictionaryEN5boost13intrusive_ptrINS0_6BufferEEES5_iSt10shared_ptrIS1_Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.95") align 8 %114, ptr noundef nonnull align 8 %115, ptr noundef nonnull align 8 %116, i32 noundef %.41156, ptr noundef nonnull align 8 %117, i1 noundef zeroext false)
          to label %bb.xr unwind label %bb.aaq

bb.xr:                                            ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit858
  %i.eev = load ptr, ptr %i.eem, align 8, !tbaa !218 ; 8 uses
  %.not.i.i859 = icmp eq ptr %i.eev, null
  br i1 %.not.i.i859, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit863, label %bb.xs

bb.xs:                                            ; preds = %bb.xr
  %i.eew = getelementptr inbounds nuw i8, ptr %i.eev, i64 8 ; 4 uses
  %i.eex = load atomic i64, ptr %i.eew acquire, align 8 ; 2 uses
  %i.eey = icmp eq i64 %i.eex, 4294967297
  %i.eez = trunc i64 %i.eex to i32                ; 2 uses
  br i1 %i.eey, label %bb.xt, label %bb.xu

bb.xt:                                            ; preds = %bb.xs
  store i32 0, ptr %i.eew, align 8, !tbaa !223
  %i.efa = getelementptr inbounds nuw i8, ptr %i.eev, i64 12
  store i32 0, ptr %i.efa, align 4, !tbaa !224
  %i.efb = load ptr, ptr %i.eev, align 8, !tbaa !226
  %i.efc = getelementptr inbounds nuw i8, ptr %i.efb, i64 16
  %i.efd = load ptr, ptr %i.efc, align 8
  call void %i.efd(ptr noundef nonnull align 8 dereferenceable(16) %i.eev) #23, !inline_history !8
  %i.efe = load ptr, ptr %i.eev, align 8, !tbaa !226
  %i.eff = getelementptr inbounds nuw i8, ptr %i.efe, i64 24
  %i.efg = load ptr, ptr %i.eff, align 8
  call void %i.efg(ptr noundef nonnull align 8 dereferenceable(16) %i.eev) #23, !inline_history !8
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit863

bb.xu:                                            ; preds = %bb.xs
  %i.efh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !208
  %.not.i.i.i860 = icmp eq i8 %i.efh, 0
  br i1 %.not.i.i.i860, label %bb.xw, label %bb.xv

bb.xv:                                            ; preds = %bb.xu
  %i.efi = add nsw i32 %i.eez, -1
  store i32 %i.efi, ptr %i.eew, align 8, !tbaa !220
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i861

bb.xw:                                            ; preds = %bb.xu
  %i.efj = atomicrmw volatile add ptr %i.eew, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i861

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i861: ; preds = %bb.xw, %bb.xv
  %.0.i.i.i.i862 = phi i32 [ %i.eez, %bb.xv ], [ %i.efj, %bb.xw ]
  %i.efk = icmp eq i32 %.0.i.i.i.i862, 1
  br i1 %i.efk, label %bb.xx, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit863, !prof !227

bb.xx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i861
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eev) #23
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit863

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit863: ; preds = %bb.xr, %bb.xt, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i861, %bb.xx
  %i.efl = load ptr, ptr %116, align 8, !tbaa !338 ; 7 uses
  %.not.i864 = icmp eq ptr %i.efl, null
  br i1 %.not.i864, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit869, label %bb.xy

bb.xy:                                            ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit863
  %i.efm = getelementptr inbounds nuw i8, ptr %i.efl, i64 40
  %i.efn = atomicrmw add ptr %i.efm, i32 -1 acq_rel, align 4
  %i.efo = icmp eq i32 %i.efn, 1
  br i1 %i.efo, label %.sink.split.i.i865, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit869

.sink.split.i.i865:                               ; preds = %bb.xy
  %i.efp = load ptr, ptr %i.efl, align 8, !tbaa !226
  %i.efq = getelementptr inbounds nuw i8, ptr %i.efp, i64 64
  %i.efr = load ptr, ptr %i.efq, align 8
  invoke void %i.efr(ptr noundef nonnull align 8 dereferenceable(64) %i.efl)
          to label %.noexc.i866 unwind label %bb.xz, !inline_history !9

.noexc.i866:                                      ; preds = %.sink.split.i.i865
  %i.efs = getelementptr inbounds nuw i8, ptr %i.efl, i64 8
  %i.eft = load ptr, ptr %i.efs, align 8, !tbaa !343
  %.not.i.i867 = icmp eq ptr %i.eft, null
  %i.efu = load ptr, ptr %i.efl, align 8, !tbaa !226
  %..i.i868 = select i1 %.not.i.i867, i64 8, i64 48
  %i.efv = getelementptr inbounds nuw i8, ptr %i.efu, i64 %..i.i868
  %i.efw = load ptr, ptr %i.efv, align 8
  invoke void %i.efw(ptr noundef nonnull align 8 dereferenceable(64) %i.efl)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit869 unwind label %bb.xz, !inline_history !9

bb.xz:                                            ; preds = %.noexc.i866, %.sink.split.i.i865
  %i.efx = landingpad { ptr, i32 }
          catch ptr null
  %i.efy = extractvalue { ptr, i32 } %i.efx, 0
  call void @__clang_call_terminate(ptr %i.efy) #26
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit869: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit863, %bb.xy, %.noexc.i866
  %i.efz = load ptr, ptr %115, align 8, !tbaa !338 ; 7 uses
  %.not.i870 = icmp eq ptr %i.efz, null
  br i1 %.not.i870, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit875, label %bb.ya

bb.ya:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit869
  %i.ega = getelementptr inbounds nuw i8, ptr %i.efz, i64 40
end_hunk_1
