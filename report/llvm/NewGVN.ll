Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/NewGVN?download=true
inline.NumInlined: 9406
inline.NumDeleted: 4636
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN12_GLOBAL__N_16NewGVN6runGVNEv:bb.a
_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E6lookupES4_.exit.i: ; preds = %bb.ee, %bb.ef, %bb.ed, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPNS_7PHINodeENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E6lookupES4_.exit.thread96.i
  %i.bne = phi i32 [ %i.bnd, %bb.ef ], [ 0, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPNS_7PHINodeENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E6lookupES4_.exit.thread96.i ], [ 0, %bb.ed ], [ 0, %bb.ee ]
  %i.bnf = getelementptr inbounds nuw i8, ptr %i.blv, i64 4
  %i.bng = load i32, ptr %i.bnf, align 4          ; 2 uses
  %i.bnh = and i32 %i.bng, 268435455              ; 3 uses
  %.not213.i = icmp eq i32 %i.bne, %i.bnh
  br i1 %.not213.i, label %.preheader.i.i, label %bb.eg

bb.eg:                                            ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E6lookupES4_.exit.i
  %i.bni = and i32 %i.bng, 1073741824
  %.not.i.i.i.i.i.i.i152 = icmp eq i32 %i.bni, 0
  br i1 %.not.i.i.i.i.i.i.i152, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.bnj = getelementptr inbounds i8, ptr %i.blv, i64 -8
  %i.bnk = load ptr, ptr %i.bnj, align 8, !tbaa !406
  %.pre1.i.i.i.i.i = zext nneg i32 %i.bnh to i64
  br label %_ZN4llvm7PHINode15incoming_valuesEv.exit.i.i

bb.ei:                                            ; preds = %bb.eg
  %i.bnl = zext nneg i32 %i.bnh to i64            ; 2 uses
  %i.bnm = sub nsw i64 0, %i.bnl
  %i.bnn = getelementptr inbounds [32 x i8], ptr %i.blv, i64 %i.bnm
  br label %_ZN4llvm7PHINode15incoming_valuesEv.exit.i.i

_ZN4llvm7PHINode15incoming_valuesEv.exit.i.i:     ; preds = %bb.ei, %bb.eh
  %i.bno = phi ptr [ %i.bnk, %bb.eh ], [ %i.bnn, %bb.ei ] ; 2 uses
  %.pre-phi2.i.i.i.i.i = phi i64 [ %.pre1.i.i.i.i.i, %bb.eh ], [ %i.bnl, %bb.ei ] ; 2 uses
  %.idx.i.i153 = shl nuw nsw i64 %.pre-phi2.i.i.i.i.i, 5
  %i.bnp = getelementptr inbounds nuw i8, ptr %i.bno, i64 %.idx.i.i153
  %.not6.i.i = icmp eq i64 %.pre-phi2.i.i.i.i.i, 0
  br i1 %.not6.i.i, label %.preheader.i.i, label %.lr.ph.i.i154

.lr.ph.i.i154:                                    ; preds = %_ZN4llvm7PHINode15incoming_valuesEv.exit.i.i
  %i.bnq = getelementptr inbounds i8, ptr %i.blv, i64 -8
  %i.bnr = getelementptr inbounds nuw i8, ptr %i.blv, i64 76
  %i.bns = ptrtoint ptr %i.blw to i64
  %i.bnt = mul i64 %i.bns, -4658895280553007687   ; 2 uses
  %i.bnu = lshr i64 %i.bnt, 31
  %i.bnv = xor i64 %i.bnu, %i.bnt
  %i.bnw = trunc i64 %i.bnv to i32
  %i.bnx = getelementptr inbounds nuw i8, ptr %i.blv, i64 8
  br label %bb.ej

bb.ej:                                            ; preds = %_ZNK4llvm6detail12DenseSetImplINS_14BasicBlockEdgeENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE5countERKS2_.exit.i.i, %.lr.ph.i.i154
  %.07.i.i = phi ptr [ %i.bno, %.lr.ph.i.i154 ], [ %i.bqg, %_ZNK4llvm6detail12DenseSetImplINS_14BasicBlockEdgeENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE5countERKS2_.exit.i.i ] ; 7 uses
  %i.bny = load ptr, ptr %i.bnq, align 8, !tbaa !406 ; 2 uses
  %i.bnz = ptrtoint ptr %.07.i.i to i64
  %i.boa = ptrtoint ptr %i.bny to i64
  %i.bob = sub i64 %i.bnz, %i.boa
  %i.boc = lshr exact i64 %i.bob, 5
  %i.bod = load i32, ptr %i.bnr, align 4, !tbaa !445
  %i.boe = zext i32 %i.bod to i64
  %i.bof = getelementptr inbounds nuw [32 x i8], ptr %i.bny, i64 %i.boe
  %i.bog = and i64 %i.boc, 4294967295
  %i.boh = getelementptr inbounds nuw [8 x i8], ptr %i.bof, i64 %i.bog
  %i.boi = load ptr, ptr %i.boh, align 8, !tbaa !321 ; 2 uses
  %i.boj = load ptr, ptr %i.bdv, align 8, !tbaa !242, !noalias !995
  %i.bok = load ptr, ptr %i.bdx, align 8, !tbaa !417, !noalias !995 ; 2 uses
  %i.bol = load i32, ptr %i.bdz, align 4, !tbaa !241, !noalias !995 ; 2 uses
  %i.bom = icmp eq i32 %i.bol, 0
  br i1 %i.bom, label %.loopexit.i.i, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.bon = add i32 %i.bol, -1                     ; 2 uses
  %i.boo = ptrtoint ptr %i.boi to i64
  %i.bop = mul i64 %i.boo, -4658895280553007687   ; 2 uses
  %i.boq = lshr i64 %i.bop, 31
  %i.bor = xor i64 %i.boq, %i.bop
  %i.bos = trunc i64 %i.bor to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store i32 %i.bos, ptr %8, align 4
  store i32 %i.bnw, ptr %i.bft, align 4
  %i.bot = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %8, i64 noundef 8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.bou = trunc i64 %i.bot to i32
  %i.bov = xor i32 %i.bou, -313160499
  %.017.i.i.i.i.i.i = and i32 %i.bov, %i.bon      ; 3 uses
  %i.bow = zext i32 %.017.i.i.i.i.i.i to i64      ; 2 uses
  %i.box = lshr i64 %i.bow, 5
  %i.boy = getelementptr inbounds nuw [4 x i8], ptr %i.bok, i64 %i.box
  %i.boz = load i32, ptr %i.boy, align 4, !tbaa !254
  %i.bpa = and i32 %.017.i.i.i.i.i.i, 31
  %i.bpb = lshr i32 %i.boz, %i.bpa
  %i.bpc = trunc i32 %i.bpb to i1
  br i1 %i.bpc, label %.lr.ph.i.i.i.i.i.i156, label %.loopexit.i.i, !prof !362

bb.el:                                            ; preds = %.lr.ph.i.i.i.i.i.i156
  %i.bpd = add nuw i32 %.018.i.i.i.i.i.i, 1
  %.0.i.i.i.i.i.i = and i32 %i.bpd, %i.bon        ; 3 uses
  %i.bpe = zext i32 %.0.i.i.i.i.i.i to i64        ; 2 uses
  %i.bpf = lshr i64 %i.bpe, 5
  %i.bpg = getelementptr inbounds nuw [4 x i8], ptr %i.bok, i64 %i.bpf
  %i.bph = load i32, ptr %i.bpg, align 4, !tbaa !254
  %i.bpi = and i32 %.0.i.i.i.i.i.i, 31
  %i.bpj = lshr i32 %i.bph, %i.bpi
  %i.bpk = trunc i32 %i.bpj to i1
  br i1 %i.bpk, label %.lr.ph.i.i.i.i.i.i156, label %.loopexit.i.i, !prof !363

.lr.ph.i.i.i.i.i.i156:                            ; preds = %bb.ek, %bb.el
  %i.bpl = phi i64 [ %i.bpe, %bb.el ], [ %i.bow, %bb.ek ]
  %.018.i.i.i.i.i.i = phi i32 [ %.0.i.i.i.i.i.i, %bb.el ], [ %.017.i.i.i.i.i.i, %bb.ek ]
  %i.bpm = getelementptr inbounds nuw [16 x i8], ptr %i.boj, i64 %i.bpl ; 2 uses
  %i.bpn = load ptr, ptr %i.bpm, align 8, !tbaa !446
  %i.bpo = icmp eq ptr %i.boi, %i.bpn
  %i.bpp = getelementptr inbounds nuw i8, ptr %i.bpm, i64 8
  %i.bpq = load ptr, ptr %i.bpp, align 8
  %i.bpr = icmp eq ptr %i.blw, %i.bpq
  %i.bps = select i1 %i.bpo, i1 %i.bpr, i1 false
  br i1 %i.bps, label %_ZNK4llvm6detail12DenseSetImplINS_14BasicBlockEdgeENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE5countERKS2_.exit.i.i, label %bb.el, !prof !316

.loopexit.i.i:                                    ; preds = %bb.el, %bb.ek, %bb.ej
  %i.bpt = load ptr, ptr %i.bnx, align 8, !tbaa !92
  %i.bpu = call noundef ptr @_ZN4llvm11PoisonValue3getEPNS_4TypeE(ptr noundef %i.bpt) #25 ; 4 uses
  %i.bpv = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 16 ; 3 uses
  %i.bpw = load ptr, ptr %i.bpv, align 8, !tbaa !447 ; 3 uses
  %.not.i.i.i268.i = icmp eq ptr %i.bpw, null
  br i1 %.not.i.i.i268.i, label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i, label %bb.em

bb.em:                                            ; preds = %.loopexit.i.i
  %i.bpx = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.bpy = load ptr, ptr %i.bpx, align 8, !tbaa !448 ; 3 uses
  store ptr %i.bpy, ptr %i.bpw, align 8, !tbaa !406
  %.not2.i.i.i.i = icmp eq ptr %i.bpy, null
  br i1 %.not2.i.i.i.i, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.bpz = getelementptr inbounds nuw i8, ptr %i.bpy, i64 16
  store ptr %i.bpw, ptr %i.bpz, align 8, !tbaa !447
  store ptr null, ptr %i.bpx, align 8, !tbaa !448
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  store ptr null, ptr %i.bpv, align 8, !tbaa !447
  br label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i

_ZN4llvm3Use14removeFromListEv.exit.i.i.i:        ; preds = %bb.eo, %.loopexit.i.i
  store ptr %i.bpu, ptr %.07.i.i, align 8, !tbaa !449
  %.not.i.i269.i = icmp eq ptr %i.bpu, null
  br i1 %.not.i.i269.i, label %_ZNK4llvm6detail12DenseSetImplINS_14BasicBlockEdgeENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE5countERKS2_.exit.i.i, label %bb.ep

bb.ep:                                            ; preds = %_ZN4llvm3Use14removeFromListEv.exit.i.i.i
  %i.bqa = load i8, ptr %i.bpu, align 8, !tbaa !391
  %i.bqb = icmp ugt i8 %i.bqa, 10
  br i1 %i.bqb, label %bb.eq, label %_ZNK4llvm6detail12DenseSetImplINS_14BasicBlockEdgeENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE5countERKS2_.exit.i.i

bb.eq:                                            ; preds = %bb.ep
  %i.bqc = getelementptr inbounds nuw i8, ptr %i.bpu, i64 16 ; 3 uses
  %i.bqd = load ptr, ptr %i.bqc, align 8, !tbaa !406 ; 3 uses
  %i.bqe = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  store ptr %i.bqd, ptr %i.bqe, align 8, !tbaa !448
  %.not.i.i.i.i270.i = icmp eq ptr %i.bqd, null
  br i1 %.not.i.i.i.i270.i, label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.bqf = getelementptr inbounds nuw i8, ptr %i.bqd, i64 16
  store ptr %i.bqe, ptr %i.bqf, align 8, !tbaa !447
  br label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i

_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i:        ; preds = %bb.er, %bb.eq
  store ptr %i.bqc, ptr %i.bpv, align 8, !tbaa !447
  store ptr %.07.i.i, ptr %i.bqc, align 8, !tbaa !406
  br label %_ZNK4llvm6detail12DenseSetImplINS_14BasicBlockEdgeENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE5countERKS2_.exit.i.i

_ZNK4llvm6detail12DenseSetImplINS_14BasicBlockEdgeENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE5countERKS2_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i156, %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i, %bb.ep, %_ZN4llvm3Use14removeFromListEv.exit.i.i.i
  %i.bqg = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 32 ; 2 uses
  %.not.i.i155 = icmp eq ptr %i.bqg, %i.bnp
  br i1 %.not.i.i155, label %.preheader.i.i, label %bb.ej

.preheader.i.i:                                   ; preds = %bb.ec, %_ZNK4llvm6detail12DenseSetImplINS_14BasicBlockEdgeENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE5countERKS2_.exit.i.i, %_ZN4llvm7PHINode15incoming_valuesEv.exit.i.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E6lookupES4_.exit.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPNS_7PHINodeENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E6lookupES4_.exit.i, %bb.eb, %bb.ea
  %i.bqh = add i32 %.sroa.12.1217.i, 1            ; 2 uses
  %i.bqi = lshr i64 %.sroa.28.1216.i, 1           ; 3 uses
  %.not16.i.i = icmp ne i64 %i.bqi, 0
  %i.bqj = and i64 %.sroa.28.1216.i, 2
  %.not717.i.i = icmp eq i64 %i.bqj, 0
  %or.cond18.i.i = and i1 %.not16.i.i, %.not717.i.i
  br i1 %or.cond18.i.i, label %.lr.ph.i591.i, label %.critedge.i.i113

.lr.ph.i591.i:                                    ; preds = %.preheader.i.i, %.lr.ph.i591.i
  %i.bqk = phi i32 [ %i.bqn, %.lr.ph.i591.i ], [ %i.bqh, %.preheader.i.i ]
  %i.bql = phi i64 [ %i.bqm, %.lr.ph.i591.i ], [ %i.bqi, %.preheader.i.i ] ; 3 uses
  %i.bqm = lshr exact i64 %i.bql, 1               ; 2 uses
  %i.bqn = add i32 %i.bqk, 1                      ; 2 uses
  %.not.i592.i = icmp ne i64 %i.bql, 0
  %i.bqo = and i64 %i.bql, 2
  %.not7.i.i = icmp eq i64 %i.bqo, 0
  %or.cond.i593.i = and i1 %.not.i592.i, %.not7.i.i
  br i1 %or.cond.i593.i, label %.lr.ph.i591.i, label %.critedge.i.i113, !llvm.loop !20

.critedge.i.i113:                                 ; preds = %.lr.ph.i591.i, %.preheader.i.i
  %.sroa.28.2.i = phi i64 [ %i.bqi, %.preheader.i.i ], [ %i.bqm, %.lr.ph.i591.i ] ; 2 uses
  %.sroa.12.2.i = phi i32 [ %i.bqh, %.preheader.i.i ], [ %i.bqn, %.lr.ph.i591.i ] ; 4 uses
  %.not8.i.i = icmp eq i64 %.sroa.28.2.i, 0
  br i1 %.not8.i.i, label %bb.es, label %.lr.ph219.i.backedge

bb.es:                                            ; preds = %.critedge.i.i113
  %i.bqp = and i32 %.sroa.12.2.i, 127             ; 2 uses
  %i.bqq = lshr i32 %i.bqp, 6                     ; 2 uses
  %i.bqr = and i32 %.sroa.12.2.i, 63
  %i.bqs = zext nneg i32 %i.bqq to i64
  %i.bqt = getelementptr inbounds nuw [8 x i8], ptr %i.bsb, i64 %i.bqs
  %i.bqu = load i64, ptr %i.bqt, align 8, !tbaa !305
  %i.bqv = zext nneg i32 %i.bqr to i64
  %i.bqw = shl nsw i64 -1, %i.bqv
  %i.bqx = and i64 %i.bqu, %i.bqw                 ; 2 uses
  %.not.i.i588.i = icmp eq i64 %i.bqx, 0
  br i1 %.not.i.i588.i, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.bqy = and i32 %.sroa.12.2.i, 64
  %i.bqz = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bqx, i1 true)
  %i.bra = trunc nuw nsw i64 %i.bqz to i32
  %i.brb = or disjoint i32 %i.bqy, %i.bra
  br label %bb.ew

bb.eu:                                            ; preds = %bb.es
  %i.brc = load i64, ptr %i.bsc, align 8
  %.fr.i.i.i = freeze i64 %i.brc                  ; 2 uses
  %.not22.i.i589.i = icmp ne i64 %.fr.i.i.i, 0
  %i.brd = icmp eq i32 %i.bqq, 0
  %or.cond.i.i590.i = and i1 %i.brd, %.not22.i.i589.i
  br i1 %or.cond.i.i590.i, label %bb.ev, label %_ZNK4llvm22SparseBitVectorElementILj128EE9find_nextEj.exit.i.i, !llvm.loop !21

bb.ev:                                            ; preds = %bb.eu
  %i.bre = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.fr.i.i.i, i1 true)
  %i.brf = trunc nuw nsw i64 %i.bre to i32
  %i.brg = or disjoint i32 %i.brf, 64
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.et
  %.2.i.ph.i.i = phi i32 [ %i.brg, %bb.ev ], [ %i.brb, %bb.et ]
  %i.brh = icmp eq i32 %i.bqp, 0
  br i1 %i.brh, label %_ZNK4llvm22SparseBitVectorElementILj128EE9find_nextEj.exit.i.i, label %bb.ez

_ZNK4llvm22SparseBitVectorElementILj128EE9find_nextEj.exit.i.i: ; preds = %bb.ew, %bb.eu
  %i.bri = load ptr, ptr %.sroa.969.0218.i.ph, align 8, !tbaa !264 ; 4 uses
  %i.brj = icmp eq ptr %i.bri, %i.biz
  br i1 %i.brj, label %_ZNK4llvm15SparseBitVectorILj128EE23SparseBitVectorIteratorneERKS2_.exit.i, label %bb.ex

bb.ex:                                            ; preds = %_ZNK4llvm22SparseBitVectorElementILj128EE9find_nextEj.exit.i.i
  %i.brk = getelementptr inbounds nuw i8, ptr %i.bri, i64 16
  %i.brl = load i32, ptr %i.brk, align 8, !tbaa !423
  %i.brm = getelementptr inbounds nuw i8, ptr %i.bri, i64 24
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ey, %bb.ex
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.ey ], [ 0, %bb.ex ] ; 4 uses
  %i.brn = icmp samesign ult i64 %indvars.iv.i.i.i, 2
  call void @llvm.assume(i1 %i.brn)
  %i.bro = getelementptr inbounds nuw [8 x i8], ptr %i.brm, i64 %indvars.iv.i.i.i
  %i.brp = load i64, ptr %i.bro, align 8, !tbaa !305 ; 3 uses
  %.not.i9.i.i = icmp eq i64 %i.brp, 0
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1
  br i1 %.not.i9.i.i, label %bb.ey, label %_ZNK4llvm22SparseBitVectorElementILj128EE10find_firstEv.exit.i.i, !llvm.loop !19

_ZNK4llvm22SparseBitVectorElementILj128EE10find_firstEv.exit.i.i: ; preds = %bb.ey
  %i.brq = shl i32 %i.brl, 7
  %i.brr = trunc nuw nsw i64 %indvars.iv.i.i.i to i32
  %i.brs = shl nuw nsw i32 %i.brr, 6
  %i.brt = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.brp, i1 true)
  %i.bru = trunc nuw nsw i64 %i.brt to i32
  %i.brv = or disjoint i32 %i.brs, %i.bru
  %.frozen.i.i = freeze i32 %i.brv                ; 4 uses
  %i.brw = add nuw nsw i32 %.frozen.i.i, %i.brq
  %.urem.i.i = add i32 %.frozen.i.i, -64
  %.cmp.i.i = icmp ult i32 %.frozen.i.i, 64
  %i.brx = select i1 %.cmp.i.i, i32 %.frozen.i.i, i32 %.urem.i.i
  %i.bry = zext nneg i32 %i.brx to i64
  %i.brz = lshr i64 %i.brp, %i.bry
  br label %.lr.ph219.i.outer

.lr.ph219.i.outer:                                ; preds = %_ZNK4llvm22SparseBitVectorElementILj128EE10find_firstEv.exit.i.i, %.lr.ph219.preheader.i
  %.sroa.969.0218.i.ph = phi ptr [ %i.bri, %_ZNK4llvm22SparseBitVectorElementILj128EE10find_firstEv.exit.i.i ], [ %i.bja, %.lr.ph219.preheader.i ] ; 4 uses
  %.sroa.12.1217.i.ph = phi i32 [ %i.brw, %_ZNK4llvm22SparseBitVectorElementILj128EE10find_firstEv.exit.i.i ], [ %i.bjo, %.lr.ph219.preheader.i ]
  %.sroa.28.1216.i.ph = phi i64 [ %i.brz, %_ZNK4llvm22SparseBitVectorElementILj128EE10find_firstEv.exit.i.i ], [ %i.bjp, %.lr.ph219.preheader.i ]
  %i.bsa = getelementptr inbounds nuw i8, ptr %.sroa.969.0218.i.ph, i64 16
  %i.bsb = getelementptr inbounds nuw i8, ptr %.sroa.969.0218.i.ph, i64 24 ; 2 uses
  %i.bsc = getelementptr inbounds nuw i8, ptr %.sroa.969.0218.i.ph, i64 32
  br label %.lr.ph219.i

bb.ez:                                            ; preds = %bb.ew
  %.2.i.ph.frozen.i.i = freeze i32 %.2.i.ph.i.i   ; 5 uses
  %i.bsd = lshr i32 %.2.i.ph.frozen.i.i, 6
  %i.bse = zext nneg i32 %i.bsd to i64
  %i.bsf = getelementptr inbounds nuw [8 x i8], ptr %i.bsb, i64 %i.bse
  %i.bsg = load i64, ptr %i.bsf, align 8, !tbaa !305
  %.urem12.i.i = add i32 %.2.i.ph.frozen.i.i, -64
  %.cmp13.i.i = icmp ult i32 %.2.i.ph.frozen.i.i, 64
  %i.bsh = select i1 %.cmp13.i.i, i32 %.2.i.ph.frozen.i.i, i32 %.urem12.i.i
  %i.bsi = zext nneg i32 %i.bsh to i64
  %i.bsj = lshr i64 %i.bsg, %i.bsi
  %i.bsk = load i32, ptr %i.bsa, align 8, !tbaa !423
  %i.bsl = shl i32 %i.bsk, 7
  %i.bsm = add nuw i32 %i.bsl, %.2.i.ph.frozen.i.i
  br label %.lr.ph219.i.backedge

.lr.ph219.i.backedge:                             ; preds = %bb.ez, %.critedge.i.i113
  %.sroa.12.1217.i.be = phi i32 [ %.sroa.12.2.i, %.critedge.i.i113 ], [ %i.bsm, %bb.ez ]
  %.sroa.28.1216.i.be = phi i64 [ %.sroa.28.2.i, %.critedge.i.i113 ], [ %i.bsj, %bb.ez ]
  br label %.lr.ph219.i

._crit_edge265.i:                                 ; preds = %_ZN4llvm11SmallVectorIN12_GLOBAL__N_16NewGVN8ValueDFSELj8EED2Ev.exit586.i
  %.pre348.i = load i32, ptr %i.bii, align 4, !tbaa !235 ; 2 uses
  %i.bsn = icmp eq i32 %.pre348.i, 0
  br i1 %i.bsn, label %_ZN4llvm8DenseMapIPKNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEED2Ev.exit.i, label %bb.fa

bb.fa:                                            ; preds = %._crit_edge265.i
  %i.bso = load ptr, ptr %10, align 8, !tbaa !236
  %i.bsp = zext i32 %.pre348.i to i64             ; 2 uses
  %i.bsq = shl nuw nsw i64 %i.bsp, 4
  %i.bsr = add nuw nsw i64 %i.bsp, 31
  %i.bss = lshr i64 %i.bsr, 3
  %i.bst = and i64 %i.bss, 1073741820
  %i.bsu = add nuw nsw i64 %i.bst, %i.bsq
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bso, i64 noundef %i.bsu, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapIPKNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEED2Ev.exit.i

_ZN4llvm8DenseMapIPKNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEED2Ev.exit.i: ; preds = %bb.fa, %._crit_edge265.i, %._crit_edge223.i
  %.0.lcssa549.i = phi i1 [ %.9.i, %bb.fa ], [ %.9.i, %._crit_edge265.i ], [ false, %._crit_edge223.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.bsv = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.bsw = load i32, ptr %i.bsv, align 4, !tbaa !435 ; 2 uses
  %i.bsx = icmp eq i32 %i.bsw, 0
  br i1 %i.bsx, label %_ZN12_GLOBAL__N_16NewGVN21eliminateInstructionsERN4llvm8FunctionE.exit, label %bb.fb

bb.fb:                                            ; preds = %_ZN4llvm8DenseMapIPKNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEED2Ev.exit.i
  %i.bsy = load ptr, ptr %9, align 8, !tbaa !433
  %i.bsz = zext i32 %i.bsw to i64                 ; 2 uses
  %i.bta = shl nuw nsw i64 %i.bsz, 4
  %i.btb = add nuw nsw i64 %i.bsz, 31
  %i.btc = lshr i64 %i.btb, 3
  %i.btd = and i64 %i.btc, 1073741820
  %i.bte = add nuw nsw i64 %i.btd, %i.bta
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bsy, i64 noundef %i.bte, i64 noundef 8) #25
  br label %_ZN12_GLOBAL__N_16NewGVN21eliminateInstructionsERN4llvm8FunctionE.exit

bb.fc:                                            ; preds = %_ZN4llvm11SmallVectorIN12_GLOBAL__N_16NewGVN8ValueDFSELj8EED2Ev.exit586.i, %.lr.ph264.i
  %.0262.i = phi i1 [ false, %.lr.ph264.i ], [ %.9.i, %_ZN4llvm11SmallVectorIN12_GLOBAL__N_16NewGVN8ValueDFSELj8EED2Ev.exit586.i ] ; 11 uses
  %.sroa.056.0261.i = phi ptr [ %.val222.i, %.lr.ph264.i ], [ %i.btf, %_ZN4llvm11SmallVectorIN12_GLOBAL__N_16NewGVN8ValueDFSELj8EED2Ev.exit586.i ]
  %i.btf = getelementptr inbounds i8, ptr %.sroa.056.0261.i, i64 -8 ; 3 uses
  %i.btg = load ptr, ptr %i.btf, align 8, !tbaa !386 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  store ptr %i.bgx, ptr %11, align 8, !tbaa !56
  store i32 0, ptr %i.bgy, align 8, !tbaa !227
  store i32 8, ptr %i.bgz, align 4, !tbaa !228
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  store ptr %i.bha, ptr %12, align 8, !tbaa !65
  store i32 8, ptr %i.bhb, align 8, !tbaa !230
  store i32 0, ptr %i.bhc, align 4, !tbaa !231
  store i8 1, ptr %i.bhd, align 8, !tbaa !62
  %i.bth = getelementptr i8, ptr %i.btg, i64 76   ; 9 uses
  %.val229.i = load i32, ptr %i.bth, align 4, !tbaa !231 ; 3 uses
  %i.bti = icmp eq i32 %.val229.i, 0
  br i1 %i.bti, label %.loopexit.i124, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.btj = load ptr, ptr %i.xx, align 8, !tbaa !374
  %i.btk = icmp eq ptr %i.btg, %i.btj
  br i1 %i.btk, label %bb.fe, label %bb.fn

bb.fe:                                            ; preds = %bb.fd
  %i.btl = getelementptr inbounds nuw i8, ptr %i.btg, i64 64
  %i.btm = load ptr, ptr %i.btl, align 8, !tbaa !65 ; 4 uses
  %i.btn = getelementptr inbounds nuw i8, ptr %i.btg, i64 80
  %i.bto = load i8, ptr %i.btn, align 8, !tbaa !62, !range !63, !noundef !64
  %i.btp = trunc nuw i8 %i.bto to i1
  %i.btq = getelementptr inbounds nuw i8, ptr %i.btg, i64 72
  %i.btr = load i32, ptr %i.btq, align 8
  %.v.v.i.i.i.i.i = select i1 %i.btp, i32 %.val229.i, i32 %i.btr ; 2 uses
  %.v.i.i.i.i.i = zext i32 %.v.v.i.i.i.i.i to i64 ; 2 uses
  %.idx.i.i271.i = shl nuw nsw i64 %.v.i.i.i.i.i, 3
  %i.bts = getelementptr i8, ptr %i.btm, i64 %.idx.i.i271.i ; 4 uses
  %.not1.i.i.i.i.i.i.i = icmp eq i32 %.v.v.i.i.i.i.i, 0
  br i1 %.not1.i.i.i.i.i.i.i, label %_ZNK12_GLOBAL__N_115CongruenceClass5beginEv.exit.i, label %.lr.ph.i.i.i.i.i.i.i144

.lr.ph.i.i.i.i.i.i.i144:                          ; preds = %bb.fe, %bb.ff
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.btv, %bb.ff ], [ %i.btm, %bb.fe ] ; 3 uses
  %i.btt = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !tbaa !293
  %i.btu = icmp eq ptr %i.btt, inttoptr (i64 -1 to ptr)
  br i1 %i.btu, label %bb.ff, label %_ZNK12_GLOBAL__N_115CongruenceClass5beginEv.exit.i

bb.ff:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i144
  %i.btv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i272.i = icmp eq ptr %i.btv, %i.bts
  br i1 %.not.i.i.i.i.i.i272.i, label %_ZNK12_GLOBAL__N_115CongruenceClass5beginEv.exit.i, label %.lr.ph.i.i.i.i.i.i.i144, !llvm.loop !22

_ZNK12_GLOBAL__N_115CongruenceClass5beginEv.exit.i: ; preds = %bb.ff, %.lr.ph.i.i.i.i.i.i.i144, %bb.fe
  %.sroa.0.1.i.i.i.i = phi ptr [ %i.btm, %bb.fe ], [ %.sroa.0.0.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i144 ], [ %i.bts, %bb.ff ] ; 2 uses
  %i.btw = getelementptr inbounds nuw [8 x i8], ptr %i.btm, i64 %.v.i.i.i.i.i ; 2 uses
  %.not152257.i = icmp eq ptr %.sroa.0.1.i.i.i.i, %i.btw
  br i1 %.not152257.i, label %.loopexit.i124, label %.lr.ph259.i

.lr.ph259.i:                                      ; preds = %_ZNK12_GLOBAL__N_115CongruenceClass5beginEv.exit.i, %_ZN4llvm19SmallPtrSetIteratorIPNS_5ValueEEppEv.exit.i
  %.sroa.051.0258.i = phi ptr [ %.sroa.051.2.i, %_ZN4llvm19SmallPtrSetIteratorIPNS_5ValueEEppEv.exit.i ], [ %.sroa.0.1.i.i.i.i, %_ZNK12_GLOBAL__N_115CongruenceClass5beginEv.exit.i ] ; 2 uses
  %i.btx = load ptr, ptr %.sroa.051.0258.i, align 8, !tbaa !293 ; 5 uses
  %i.bty = load ptr, ptr %i.bhw, align 8, !tbaa !282, !noalias !996
  %i.btz = load ptr, ptr %i.bhx, align 8, !tbaa !450, !noalias !996 ; 2 uses
  %i.bua = load i32, ptr %i.bhy, align 4, !tbaa !281, !noalias !996 ; 2 uses
  %i.bub = icmp eq i32 %i.bua, 0
  br i1 %i.bub, label %_ZN12_GLOBAL__N_16NewGVN26markInstructionForDeletionEPN4llvm11InstructionE.exit.i, label %bb.fg

bb.fg:                                            ; preds = %.lr.ph259.i
  %i.buc = add i32 %i.bua, -1                     ; 2 uses
  %i.bud = ptrtoint ptr %i.btx to i64
  %i.bue = mul i64 %i.bud, -4658895280553007687   ; 2 uses
  %i.buf = lshr i64 %i.bue, 31
  %i.bug = xor i64 %i.buf, %i.bue
  %i.buh = trunc i64 %i.bug to i32
  %i.bui = and i32 %i.buc, %i.buh                 ; 3 uses
  %i.buj = zext i32 %i.bui to i64                 ; 2 uses
  %i.buk = lshr i64 %i.buj, 5
  %i.bul = getelementptr inbounds nuw [4 x i8], ptr %i.btz, i64 %i.buk
  %i.bum = load i32, ptr %i.bul, align 4, !tbaa !254
  %i.bun = and i32 %i.bui, 31
  %i.buo = lshr i32 %i.bum, %i.bun
  %i.bup = trunc i32 %i.buo to i1
  br i1 %i.bup, label %.lr.ph.i.i276.i, label %_ZN12_GLOBAL__N_16NewGVN26markInstructionForDeletionEPN4llvm11InstructionE.exit.i, !prof !362

.lr.ph.i.i276.i:                                  ; preds = %bb.fg, %bb.fh
  %i.buq = phi i64 [ %i.buw, %bb.fh ], [ %i.buj, %bb.fg ]
  %.017.i.i277.i = phi i32 [ %i.buv, %bb.fh ], [ %i.bui, %bb.fg ]
  %i.bur = getelementptr inbounds nuw [16 x i8], ptr %i.bty, i64 %i.buq ; 2 uses
  %i.bus = load ptr, ptr %i.bur, align 8, !tbaa !319
  %i.but = icmp eq ptr %i.btx, %i.bus
  br i1 %i.but, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEPKNS_13GVNExpression10ExpressionENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E6lookupEPKS2_.exit.i, label %bb.fh, !prof !316

bb.fh:                                            ; preds = %.lr.ph.i.i276.i
  %i.buu = add nuw i32 %.017.i.i277.i, 1
  %i.buv = and i32 %i.buu, %i.buc                 ; 3 uses
  %i.buw = zext i32 %i.buv to i64                 ; 2 uses
  %i.bux = lshr i64 %i.buw, 5
  %i.buy = getelementptr inbounds nuw [4 x i8], ptr %i.btz, i64 %i.bux
  %i.buz = load i32, ptr %i.buy, align 4, !tbaa !254
  %i.bva = and i32 %i.buv, 31
  %i.bvb = lshr i32 %i.buz, %i.bva
  %i.bvc = trunc i32 %i.bvb to i1
  br i1 %i.bvc, label %.lr.ph.i.i276.i, label %_ZN12_GLOBAL__N_16NewGVN26markInstructionForDeletionEPN4llvm11InstructionE.exit.i, !prof !363

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEPKNS_13GVNExpression10ExpressionENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E6lookupEPKS2_.exit.i: ; preds = %.lr.ph.i.i276.i
  %i.bvd = getelementptr inbounds nuw i8, ptr %i.bur, i64 8
  %i.bve = load ptr, ptr %i.bvd, align 8, !tbaa !451 ; 2 uses
  %.not210.i = icmp eq ptr %i.bve, null
  br i1 %.not210.i, label %_ZN12_GLOBAL__N_16NewGVN26markInstructionForDeletionEPN4llvm11InstructionE.exit.i, label %bb.fi

bb.fi:                                            ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEPKNS_13GVNExpression10ExpressionENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E6lookupEPKS2_.exit.i
  %i.bvf = getelementptr inbounds nuw i8, ptr %i.bve, i64 8
  %i.bvg = load i32, ptr %i.bvf, align 8, !tbaa !70
  %i.bvh = icmp eq i32 %i.bvg, 3
  br i1 %i.bvh, label %bb.fj, label %_ZN12_GLOBAL__N_16NewGVN26markInstructionForDeletionEPN4llvm11InstructionE.exit.i

bb.fj:                                            ; preds = %bb.fi
  %i.bvi = load i8, ptr %i.ek, align 8, !tbaa !62, !range !63, !noalias !997, !noundef !64
  %i.bvj = trunc nuw i8 %i.bvi to i1
  br i1 %i.bvj, label %bb.fk, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i145

bb.fk:                                            ; preds = %bb.fj
  %i.bvk = load ptr, ptr %i.ej, align 8, !tbaa !65, !noalias !997 ; 2 uses
  %i.bvl = load i32, ptr %i.el, align 4, !tbaa !231, !noalias !997 ; 4 uses
  %i.bvm = zext i32 %i.bvl to i64
  %.idx.i.i.i278.i = shl nuw nsw i64 %i.bvm, 3
  %i.bvn = getelementptr inbounds nuw i8, ptr %i.bvk, i64 %.idx.i.i.i278.i ; 2 uses
  %.not22.i.i.i.i146 = icmp eq i32 %i.bvl, 0
  br i1 %.not22.i.i.i.i146, label %._crit_edge.i.i.i281.i, label %.lr.ph.i.i.i279.i

.lr.ph.i.i.i279.i:                                ; preds = %bb.fk, %.critedge.i.i.i.i149
  %.023.i.i.i.i147 = phi ptr [ %i.bvp, %.critedge.i.i.i.i149 ], [ %i.bvk, %bb.fk ] ; 2 uses
  %i.bvo = load ptr, ptr %.023.i.i.i.i147, align 8, !tbaa !293, !noalias !997
  %.not15.i.i.i.i148 = icmp eq ptr %i.bvo, %i.btx
  br i1 %.not15.i.i.i.i148, label %_ZN12_GLOBAL__N_16NewGVN26markInstructionForDeletionEPN4llvm11InstructionE.exit.i, label %.critedge.i.i.i.i149

.critedge.i.i.i.i149:                             ; preds = %.lr.ph.i.i.i279.i
  %i.bvp = getelementptr inbounds nuw i8, ptr %.023.i.i.i.i147, i64 8 ; 2 uses
  %.not.i.i.i280.i = icmp eq ptr %i.bvp, %i.bvn
  br i1 %.not.i.i.i280.i, label %._crit_edge.i.i.i281.i, label %.lr.ph.i.i.i279.i

._crit_edge.i.i.i281.i:                           ; preds = %.critedge.i.i.i.i149, %bb.fk
  %i.bvq = load i32, ptr %i.em, align 8, !tbaa !230, !noalias !997
  %i.bvr = icmp ult i32 %i.bvl, %i.bvq
  br i1 %i.bvr, label %bb.fl, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i145

bb.fl:                                            ; preds = %._crit_edge.i.i.i281.i
  %i.bvs = add nuw i32 %i.bvl, 1
  store i32 %i.bvs, ptr %i.el, align 4, !tbaa !231, !noalias !997
  store ptr %i.btx, ptr %i.bvn, align 8, !tbaa !293, !noalias !997
  br label %_ZN12_GLOBAL__N_16NewGVN26markInstructionForDeletionEPN4llvm11InstructionE.exit.i

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i145: ; preds = %._crit_edge.i.i.i281.i, %bb.fj
  %i.bvt = call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.ej, ptr noundef %i.btx) #25, !noalias !997 ; 0 uses
  br label %_ZN12_GLOBAL__N_16NewGVN26markInstructionForDeletionEPN4llvm11InstructionE.exit.i

_ZN12_GLOBAL__N_16NewGVN26markInstructionForDeletionEPN4llvm11InstructionE.exit.i: ; preds = %bb.fh, %.lr.ph.i.i.i279.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i145, %bb.fl, %bb.fi, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEPKNS_13GVNExpression10ExpressionENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E6lookupEPKS2_.exit.i, %bb.fg, %.lr.ph259.i
  %i.bvu = getelementptr inbounds nuw i8, ptr %.sroa.051.0258.i, i64 8 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN4llvm12DenseMapBaseINS_8DenseMapINS_14BasicBlockEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E4growEj:bb.a
bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapINS_14BasicBlockEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEED2Ev.exit

_ZN4llvm8DenseMapINS_14BasicBlockEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_14BasicBlockEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array", align 4       ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !242
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !417
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !241  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !417  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !242
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !241
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i20 = icmp eq i64 %i.n, 0
  br i1 %.not.i20, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_14BasicBlockEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph23, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph23 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !254  ; 2 uses
  %.not11.i18 = icmp eq i32 %i.q, 0
  br i1 %.not11.i18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.r = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_14BasicBlockEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i19 = phi i32 [ %i.q, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_14BasicBlockEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.s = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i19, i1 true)
  %i.t = or disjoint i32 %i.s, %i.r
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.u ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !446
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = mul i64 %i.x, -4658895280553007687       ; 2 uses
  %i.z = lshr i64 %i.y, 31
  %i.aa = xor i64 %i.z, %i.y
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !421
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = mul i64 %i.ae, -4658895280553007687     ; 2 uses
  %i.ag = lshr i64 %i.af, 31
  %i.ah = xor i64 %i.ag, %i.af
  %i.ai = trunc i64 %i.ah to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store i32 %i.ab, ptr %2, align 4
  store i32 %i.ai, ptr %i.o, align 4
  %i.aj = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.ak = trunc i64 %i.aj to i32
  %i.al = xor i32 %i.ak, -313160499
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.pn.i = phi i32 [ %i.al, %bb.c ], [ %i.at, %bb.d ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.am = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.an = lshr i64 %i.am, 5                       ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !254
  %i.aq = and i32 %.0.i7, 31                      ; 2 uses
  %i.ar = lshr i32 %i.ap, %i.aq
  %i.as = trunc i32 %i.ar to i1
  %i.at = add i32 %.0.i7, 1
  br i1 %i.as, label %bb.d, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_14BasicBlockEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit, !llvm.loop !2666

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_14BasicBlockEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %bb.d
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.an ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false), !tbaa.struct !610
  %i.aw = shl nuw i32 1, %i.aq
  %i.ax = load i32, ptr %i.au, align 4, !tbaa !254
  %i.ay = or i32 %i.ax, %i.aw
  store i32 %i.ay, ptr %i.au, align 4, !tbaa !254
  %i.az = add i32 %.0.i19, -1
  %i.ba = and i32 %i.az, %.0.i19                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !2667

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_14BasicBlockEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_14BasicBlockEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !2668

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_14BasicBlockEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !241
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_14BasicBlockEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_14BasicBlockEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_14BasicBlockEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_14BasicBlockEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !418
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !418
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapINS_14BasicBlockEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE4killEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_14BasicBlockEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.bg = load ptr, ptr %1, align 8, !tbaa !242
  %i.bh = zext i32 %i.bb to i64                   ; 2 uses
  %i.bi = shl nuw nsw i64 %i.bh, 4
  %i.bj = add nuw nsw i64 %i.bh, 31
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = and i64 %i.bk, 1073741820
  %i.bm = add nuw nsw i64 %i.bl, %i.bi
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bg, i64 noundef %i.bm, i64 noundef 8) #25
  store i32 0, ptr %i.d, align 4, !tbaa !241
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_14BasicBlockEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE4killEv.exit

_ZN4llvm8DenseMapINS_14BasicBlockEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_14BasicBlockEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm15SparseBitVectorILj128EE23SparseBitVectorIterator20AdvanceToNextNonZeroEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !605, !range !63, !noundef !64
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.l, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %.promoted = load i64, ptr %i.c, align 8, !tbaa !608 ; 4 uses
  %.not16 = icmp ne i64 %.promoted, 0
  %i.d = and i64 %.promoted, 1
  %.not717 = icmp eq i64 %i.d, 0
  %or.cond18 = and i1 %.not16, %.not717
  br i1 %or.cond18, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.promoted21 = load i32, ptr %i.e, align 8, !tbaa !606
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.f = phi i32 [ %.promoted21, %.lr.ph ], [ %i.i, %bb.b ]
  %i.g = phi i64 [ %.promoted, %.lr.ph ], [ %i.h, %bb.b ] ; 3 uses
  %i.h = lshr exact i64 %i.g, 1                   ; 3 uses
  %i.i = add i32 %i.f, 1                          ; 2 uses
  %.not = icmp ne i64 %i.g, 0
  %i.j = and i64 %i.g, 2
  %.not7 = icmp eq i64 %i.j, 0
  %or.cond = and i1 %.not, %.not7
  br i1 %or.cond, label %bb.b, label %..critedge_crit_edge, !llvm.loop !20

..critedge_crit_edge:                             ; preds = %bb.b
  store i64 %i.h, ptr %i.c, align 8, !tbaa !608
  store i32 %i.i, ptr %i.e, align 8, !tbaa !606
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %.preheader
  %.lcssa14 = phi i64 [ %i.h, %..critedge_crit_edge ], [ %.promoted, %.preheader ]
  %.not8 = icmp eq i64 %.lcssa14, 0
  br i1 %.not8, label %bb.c, label %bb.l

bb.c:                                             ; preds = %.critedge
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2669 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !606  ; 3 uses
  %i.p = and i32 %i.o, 127                        ; 2 uses
  %i.q = lshr i32 %i.p, 6                         ; 2 uses
  %i.r = and i32 %i.o, 63
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.t = zext nneg i32 %i.q to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !305
  %i.w = zext nneg i32 %i.r to i64
  %i.x = shl nsw i64 -1, %i.w
  %i.y = and i64 %i.x, %i.v                       ; 2 uses
  %.not.i = icmp eq i64 %i.y, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = and i32 %i.o, 64
  %i.aa = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.y, i1 true)
  %i.ab = trunc nuw nsw i64 %i.aa to i32
  %i.ac = or disjoint i32 %i.z, %i.ab
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.ae = load i64, ptr %i.ad, align 8
  %.fr.i = freeze i64 %i.ae                       ; 2 uses
  %.not22.i = icmp ne i64 %.fr.i, 0
  %i.af = icmp eq i32 %i.q, 0
  %or.cond.i = and i1 %i.af, %.not22.i
  br i1 %or.cond.i, label %bb.f, label %_ZNK4llvm22SparseBitVectorElementILj128EE9find_nextEj.exit, !llvm.loop !21

bb.f:                                             ; preds = %bb.e
  %i.ag = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.fr.i, i1 true)
  %i.ah = trunc nuw nsw i64 %i.ag to i32
  %i.ai = or disjoint i32 %i.ah, 64
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f
  %.2.i.ph = phi i32 [ %i.ai, %bb.f ], [ %i.ac, %bb.d ]
  %i.aj = icmp eq i32 %i.p, 0
  br i1 %i.aj, label %_ZNK4llvm22SparseBitVectorElementILj128EE9find_nextEj.exit, label %bb.k

_ZNK4llvm22SparseBitVectorElementILj128EE9find_nextEj.exit: ; preds = %bb.e, %bb.g
  %i.ak = load ptr, ptr %i.l, align 8, !tbaa !264 ; 4 uses
  store ptr %i.ak, ptr %i.k, align 8, !tbaa !2669
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  store i32 0, ptr %i.al, align 4, !tbaa !607
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !604
  %i.ao = icmp eq ptr %i.ak, %i.an
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK4llvm22SparseBitVectorElementILj128EE9find_nextEj.exit
  store i8 1, ptr %0, align 8, !tbaa !605
  br label %bb.l

bb.i:                                             ; preds = %_ZNK4llvm22SparseBitVectorElementILj128EE9find_nextEj.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !423
  %i.ar = shl i32 %i.aq, 7
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.j ], [ 0, %bb.i ] ; 4 uses
  %i.at = icmp samesign ult i64 %indvars.iv.i, 2
  tail call void @llvm.assume(i1 %i.at)
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.i
  %i.av = load i64, ptr %i.au, align 8, !tbaa !305 ; 3 uses
  %.not.i9 = icmp eq i64 %i.av, 0
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %.not.i9, label %bb.j, label %_ZNK4llvm22SparseBitVectorElementILj128EE10find_firstEv.exit, !llvm.loop !19

_ZNK4llvm22SparseBitVectorElementILj128EE10find_firstEv.exit: ; preds = %bb.j
  %i.aw = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.ax = shl nuw nsw i32 %i.aw, 6
  %i.ay = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.av, i1 true)
  %i.az = trunc nuw nsw i64 %i.ay to i32
  %i.ba = or disjoint i32 %i.ax, %i.az
  %.frozen = freeze i32 %i.ba                     ; 4 uses
  %i.bb = or disjoint i32 %.frozen, %i.ar
  store i32 %i.bb, ptr %i.n, align 8, !tbaa !606
  store i32 %i.aw, ptr %i.al, align 4, !tbaa !607
  %.urem = add i32 %.frozen, -64
  %.cmp = icmp ult i32 %.frozen, 64
  %i.bc = select i1 %.cmp, i32 %.frozen, i32 %.urem
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = lshr i64 %i.av, %i.bd
  store i64 %i.be, ptr %i.c, align 8, !tbaa !608
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %.2.i.ph.frozen = freeze i32 %.2.i.ph           ; 5 uses
  %i.bf = lshr i32 %.2.i.ph.frozen, 6             ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !607
  %i.bh = zext nneg i32 %i.bf to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !305
  %.urem12 = add i32 %.2.i.ph.frozen, -64
  %.cmp13 = icmp ult i32 %.2.i.ph.frozen, 64
  %i.bk = select i1 %.cmp13, i32 %.2.i.ph.frozen, i32 %.urem12
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = lshr i64 %i.bj, %i.bl
  store i64 %i.bm, ptr %i.c, align 8, !tbaa !608
  %i.bn = load i32, ptr %i.m, align 8, !tbaa !423
  %i.bo = shl i32 %i.bn, 7
  %i.bp = add nuw i32 %i.bo, %.2.i.ph.frozen
  store i32 %i.bp, ptr %i.n, align 8, !tbaa !606
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %_ZNK4llvm22SparseBitVectorElementILj128EE10find_firstEv.exit, %bb.a, %.critedge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZN4llvm7find_ifINS_14iterator_rangeINS_10SwitchInst16CaseIteratorImplINS2_14CaseHandleImplIKS2_KNS_11ConstantIntEKNS_10BasicBlockEEEEEEEZNKS2_13findCaseValueEPS7_EUlRKSA_E_EEDaOT_T0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1) local_unnamed_addr #3 comdat {
bb.a:
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %0, align 8 ; 15 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i8 = load ptr, ptr %i.a, align 8
  %.sroa.2.0..sroa_idx.i.i.i9 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0.copyload.i.i.i10 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i9, align 8 ; 3 uses
  %i.b = sub nsw i64 %.sroa.2.0.copyload.i.i.i10, %.sroa.2.0.copyload.i.i.i ; 2 uses
  %i.c = ashr i64 %i.b, 2                         ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i, i64 -8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !406
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 72
  %i.h = load i32, ptr %i.g, align 8, !tbaa !2672
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.i ; 4 uses
  %i.k = and i64 %i.b, -4
  %i.l = add i64 %i.k, %.sroa.2.0.copyload.i.i.i
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %.077.i.i.i = phi i64 [ %i.c, %.lr.ph.i.i.i ], [ %i.ac, %bb.f ] ; 2 uses
  %.sroa.15.076.i.i.i = phi i64 [ %.sroa.2.0.copyload.i.i.i, %.lr.ph.i.i.i ], [ %i.ab, %bb.f ] ; 6 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %i.j, i64 %.sroa.15.076.i.i.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2674
  %i.o = icmp eq ptr %i.n, %1
  br i1 %i.o, label %_ZSt7find_ifIN4llvm10SwitchInst16CaseIteratorImplINS1_14CaseHandleImplIKS1_KNS0_11ConstantIntEKNS0_10BasicBlockEEEEEZNKS1_13findCaseValueEPS6_EUlRKS9_E_ET_SF_SF_T0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = add nsw i64 %.sroa.15.076.i.i.i, 1       ; 2 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !2674
  %i.s = icmp eq ptr %i.r, %1
  br i1 %i.s, label %_ZSt7find_ifIN4llvm10SwitchInst16CaseIteratorImplINS1_14CaseHandleImplIKS1_KNS0_11ConstantIntEKNS0_10BasicBlockEEEEEZNKS1_13findCaseValueEPS6_EUlRKS9_E_ET_SF_SF_T0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = add nsw i64 %.sroa.15.076.i.i.i, 2       ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !2674
  %i.w = icmp eq ptr %i.v, %1
  br i1 %i.w, label %_ZSt7find_ifIN4llvm10SwitchInst16CaseIteratorImplINS1_14CaseHandleImplIKS1_KNS0_11ConstantIntEKNS0_10BasicBlockEEEEEZNKS1_13findCaseValueEPS6_EUlRKS9_E_ET_SF_SF_T0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = add nsw i64 %.sroa.15.076.i.i.i, 3       ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !2674
  %i.aa = icmp eq ptr %i.z, %1
  br i1 %i.aa, label %_ZSt7find_ifIN4llvm10SwitchInst16CaseIteratorImplINS1_14CaseHandleImplIKS1_KNS0_11ConstantIntEKNS0_10BasicBlockEEEEEZNKS1_13findCaseValueEPS6_EUlRKS9_E_ET_SF_SF_T0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = add nsw i64 %.sroa.15.076.i.i.i, 4
  %i.ac = add nsw i64 %.077.i.i.i, -1
  %i.ad = icmp sgt i64 %.077.i.i.i, 1
  br i1 %i.ad, label %bb.b, label %._crit_edge.i.i.i, !llvm.loop !2670

._crit_edge.i.i.i:                                ; preds = %bb.f, %bb.a
  %.sroa.15.0.lcssa.i.i.i = phi i64 [ %.sroa.2.0.copyload.i.i.i, %bb.a ], [ %i.l, %bb.f ] ; 6 uses
  %i.ae = sub nsw i64 %.sroa.2.0.copyload.i.i.i10, %.sroa.15.0.lcssa.i.i.i
  switch i64 %i.ae, label %bb.l [
    i64 3, label %bb.g
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge80.i.i.i
  ]

._crit_edge._crit_edge80.i.i.i:                   ; preds = %._crit_edge.i.i.i
  %.phi.trans.insert81.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i, i64 -8
  %.pre82.i.i.i = load ptr, ptr %.phi.trans.insert81.i.i.i, align 8, !tbaa !406
  %.phi.trans.insert83.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 72
  %.pre84.i.i.i = load i32, ptr %.phi.trans.insert83.i.i.i, align 8, !tbaa !2672
  %.pre86.i.i.i = zext i32 %.pre84.i.i.i to i64
  br label %bb.k

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i, i64 -8
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !406
  %.phi.trans.insert78.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 72
  %.pre79.i.i.i = load i32, ptr %.phi.trans.insert78.i.i.i, align 8, !tbaa !2672
  %.pre85.i.i.i = zext i32 %.pre79.i.i.i to i64
  br label %bb.i

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.af = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i, i64 -8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !406 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 72
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !2672
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.ag, i64 %i.aj
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %.sroa.15.0.lcssa.i.i.i
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !2674
  %i.an = icmp eq ptr %i.am, %1
  br i1 %i.an, label %_ZSt7find_ifIN4llvm10SwitchInst16CaseIteratorImplINS1_14CaseHandleImplIKS1_KNS0_11ConstantIntEKNS0_10BasicBlockEEEEEZNKS1_13findCaseValueEPS6_EUlRKS9_E_ET_SF_SF_T0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = add nsw i64 %.sroa.15.0.lcssa.i.i.i, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge._crit_edge.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %.pre85.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %i.aj, %bb.h ] ; 2 uses
  %i.ap = phi ptr [ %.pre.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %i.ag, %bb.h ] ; 2 uses
  %.sroa.15.1.i.i.i = phi i64 [ %.sroa.15.0.lcssa.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %i.ao, %bb.h ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.ap, i64 %.pre-phi.i.i.i
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %.sroa.15.1.i.i.i
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !2674
  %i.at = icmp eq ptr %i.as, %1
  br i1 %i.at, label %_ZSt7find_ifIN4llvm10SwitchInst16CaseIteratorImplINS1_14CaseHandleImplIKS1_KNS0_11ConstantIntEKNS0_10BasicBlockEEEEEZNKS1_13findCaseValueEPS6_EUlRKS9_E_ET_SF_SF_T0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = add nsw i64 %.sroa.15.1.i.i.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge._crit_edge80.i.i.i
  %.pre-phi87.i.i.i = phi i64 [ %.pre86.i.i.i, %._crit_edge._crit_edge80.i.i.i ], [ %.pre-phi.i.i.i, %bb.j ]
  %i.av = phi ptr [ %.pre82.i.i.i, %._crit_edge._crit_edge80.i.i.i ], [ %i.ap, %bb.j ]
  %.sroa.15.2.i.i.i = phi i64 [ %.sroa.15.0.lcssa.i.i.i, %._crit_edge._crit_edge80.i.i.i ], [ %i.au, %bb.j ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %i.av, i64 %.pre-phi87.i.i.i
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %.sroa.15.2.i.i.i
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !2674
  %i.az = icmp eq ptr %i.ay, %1
  br i1 %i.az, label %_ZSt7find_ifIN4llvm10SwitchInst16CaseIteratorImplINS1_14CaseHandleImplIKS1_KNS0_11ConstantIntEKNS0_10BasicBlockEEEEEZNKS1_13findCaseValueEPS6_EUlRKS9_E_ET_SF_SF_T0_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i.i
  br label %_ZSt7find_ifIN4llvm10SwitchInst16CaseIteratorImplINS1_14CaseHandleImplIKS1_KNS0_11ConstantIntEKNS0_10BasicBlockEEEEEZNKS1_13findCaseValueEPS6_EUlRKS9_E_ET_SF_SF_T0_.exit
end_hunk_1
